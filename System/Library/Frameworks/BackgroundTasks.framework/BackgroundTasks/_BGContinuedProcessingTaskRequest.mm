@interface _BGContinuedProcessingTaskRequest
+ (id)_requestFromActivity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 iconBundleIdentifier:(id)a4;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 iconBundleIdentifier:(id)a4 applicationBundleIdentifier:(id)a5;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 iconBundleIdentifier:(id)a4 onBehalfOf:(id)a5 linkToBundleIdentifier:(id)a6;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_activity;
@end

@implementation _BGContinuedProcessingTaskRequest

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = _BGContinuedProcessingTaskRequest;
  v3 = [(BGTaskRequest *)&v8 _initWithIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    iconBundleIdentifier = v3->_iconBundleIdentifier;
    v3->_iconBundleIdentifier = 0;

    applicationBundleIdentifier = v4->_applicationBundleIdentifier;
    v4->_applicationBundleIdentifier = 0;
  }

  return v4;
}

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 iconBundleIdentifier:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _BGContinuedProcessingTaskRequest;
  v8 = [(BGTaskRequest *)&v12 _initWithIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a4);
    applicationBundleIdentifier = v9->_applicationBundleIdentifier;
    v9->_applicationBundleIdentifier = 0;
  }

  return v9;
}

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 iconBundleIdentifier:(id)a4 applicationBundleIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _BGContinuedProcessingTaskRequest;
  v11 = [(BGTaskRequest *)&v14 _initWithIdentifier:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 5, a4);
    objc_storeStrong(&v12->_applicationBundleIdentifier, a5);
  }

  return v12;
}

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 iconBundleIdentifier:(id)a4 onBehalfOf:(id)a5 linkToBundleIdentifier:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _BGContinuedProcessingTaskRequest;
  v14 = [(BGTaskRequest *)&v17 _initWithIdentifier:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 5, a4);
    objc_storeStrong(&v15->_applicationBundleIdentifier, a5);
    objc_storeStrong(&v15->_linkToBundleIdentifier, a6);
  }

  return v15;
}

+ (id)_requestFromActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 launchReason];
  v6 = [v5 isEqualToString:*MEMORY[0x1E699A560]];

  if (v6)
  {
    v7 = [a1 alloc];
    v8 = [v4 clientProvidedIdentifier];
    v9 = [v7 initWithIdentifier:v8];

    v10 = [v4 clientProvidedStartDate];
    [v9 setEarliestBeginDate:v10];

    v11 = [v4 continuedProcessingWrapper];
    v12 = [v11 title];
    [v9 setTitle:v12];

    v13 = [v4 continuedProcessingWrapper];
    v14 = [v13 subtitle];
    [v9 setReason:v14];

    v15 = [v4 continuedProcessingWrapper];
    v16 = [v15 iconBundleIdentifier];
    [v9 setIconBundleIdentifier:v16];

    v17 = [v4 continuedProcessingWrapper];
    v18 = [v17 linkToBundleIdentifier];
    [v9 setLinkToBundleIdentifier:v18];

    v19 = [v4 relatedApplications];
    v20 = [v19 firstObject];
    [v9 setApplicationBundleIdentifier:v20];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BGTaskRequest *)self identifier];
  v5 = [(_BGContinuedProcessingTaskRequest *)self title];
  v6 = [(_BGContinuedProcessingTaskRequest *)self reason];
  v7 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  v8 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  v9 = [v3 stringWithFormat:@"<_BGContinuedProcessingTaskRequest: %@, title: %@, reason: %@, iconBundle: %@, applicationBundle: %@>", v4, v5, v6, v7, v8];

  return v9;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgContinuedProcessing-%@", v4];

  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [MEMORY[0x1E699A488] activityWithName:v5 priority:*MEMORY[0x1E699A5A0] duration:*MEMORY[0x1E699A4D8] startingAfter:v6 startingBefore:v6];
  [v7 setLaunchReason:*MEMORY[0x1E699A560]];
  v8 = [(BGTaskRequest *)self identifier];
  [v7 setClientProvidedIdentifier:v8];

  [v7 setGroupName:*MEMORY[0x1E699A538]];
  v9 = [(BGTaskRequest *)self earliestBeginDate];
  [v7 setClientProvidedStartDate:v9];

  v10 = objc_alloc(MEMORY[0x1E699A498]);
  v11 = [(_BGContinuedProcessingTaskRequest *)self title];
  v12 = [(_BGContinuedProcessingTaskRequest *)self reason];
  v13 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  v14 = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
  v15 = [v10 initWithTitle:v11 subtitle:v12 iconBundleIdentifier:v13 linkToBundleIdentifier:v14 resources:0];
  [v7 setContinuedProcessingWrapper:v15];

  v16 = [v7 continuedProcessingWrapper];
  [v16 setIsForegroundAppProxy:1];

  v17 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  if (v17)
  {
    v18 = MEMORY[0x1E695DEC8];
    v19 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
    v20 = [v18 arrayWithObject:v19];
    [v7 setRelatedApplications:v20];
  }

  else
  {
    [v7 setRelatedApplications:0];
  }

  v21 = [(_BGContinuedProcessingTaskRequest *)self title];
  if (v21 && (v22 = v21, [(_BGContinuedProcessingTaskRequest *)self reason], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    v24 = v7;
  }

  else
  {
    v25 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [(_BGContinuedProcessingTaskRequest *)v25 _activity];
    }

    v24 = 0;
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(BGTaskRequest *)self identifier];
  v4 = [v3 hash];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [v5 hash]);
  v7 = [(_BGContinuedProcessingTaskRequest *)self title];
  v8 = v6 ^ (4 * [v7 hash]);
  v9 = [(_BGContinuedProcessingTaskRequest *)self reason];
  v10 = v8 ^ (8 * [v9 hash]);
  v11 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  v12 = v10 ^ (16 * [v11 hash]);
  v13 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  v14 = v12 ^ (32 * [v13 hash]);
  v15 = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
  v16 = v14 ^ ([v15 hash] << 6);

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(BGTaskRequest *)v6 identifier];
      v8 = [(BGTaskRequest *)self identifier];
      if (v7 != v8)
      {
        v9 = [(BGTaskRequest *)v6 identifier];
        v3 = [(BGTaskRequest *)self identifier];
        v58 = v9;
        if (![v9 isEqual:v3])
        {
          v10 = 0;
          goto LABEL_56;
        }
      }

      v11 = [(BGTaskRequest *)v6 earliestBeginDate];
      v12 = [(BGTaskRequest *)self earliestBeginDate];
      if (v11 != v12)
      {
        v13 = [(BGTaskRequest *)v6 earliestBeginDate];
        v14 = [(BGTaskRequest *)self earliestBeginDate];
        if (([v13 isEqual:v14] & 1) == 0)
        {

          v10 = 0;
          goto LABEL_55;
        }

        v53 = v14;
        v54 = v13;
      }

      v56 = v11;
      v15 = [(_BGContinuedProcessingTaskRequest *)v6 title];
      v16 = [(_BGContinuedProcessingTaskRequest *)self title];
      v57 = v15;
      if (v15 != v16)
      {
        v17 = v3;
        v18 = [(_BGContinuedProcessingTaskRequest *)v6 title];
        v19 = [(_BGContinuedProcessingTaskRequest *)self title];
        if (([v18 isEqual:v19] & 1) == 0)
        {

          if (v56 != v12)
          {
          }

          v10 = 0;
          v3 = v17;
          if (v7 == v8)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        v50 = v19;
        v51 = v18;
        v3 = v17;
      }

      v55 = [(_BGContinuedProcessingTaskRequest *)v6 reason];
      if (v55 && ([(_BGContinuedProcessingTaskRequest *)self reason], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v52 = v20;
        v48 = 0;
      }

      else
      {
        v27 = [(_BGContinuedProcessingTaskRequest *)v6 reason];
        if (v27)
        {
          v52 = 0;
          v10 = 0;
LABEL_44:

          if (!v55)
          {
LABEL_49:

            goto LABEL_50;
          }

          v29 = v52;
LABEL_48:

          goto LABEL_49;
        }

        v28 = [(_BGContinuedProcessingTaskRequest *)self reason];
        if (v28)
        {

          v10 = 0;
          if (v55)
          {
            v29 = 0;
            goto LABEL_48;
          }

LABEL_50:
          if (v57 != v16)
          {
          }

          if (v56 != v12)
          {
          }

LABEL_55:
          if (v7 == v8)
          {
LABEL_57:

            goto LABEL_58;
          }

LABEL_56:

          goto LABEL_57;
        }

        v52 = 0;
        v48 = 1;
      }

      v21 = [(_BGContinuedProcessingTaskRequest *)v6 iconBundleIdentifier];
      v22 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
      v49 = v21;
      v23 = v21 == v22;
      v24 = v22;
      if (!v23)
      {
        v25 = [(_BGContinuedProcessingTaskRequest *)v6 iconBundleIdentifier];
        v44 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
        v45 = v25;
        if (![v25 isEqual:?])
        {
          v10 = 0;
          v26 = v49;
          goto LABEL_42;
        }
      }

      v30 = [(_BGContinuedProcessingTaskRequest *)v6 applicationBundleIdentifier];
      v46 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
      v47 = v24;
      if (v30 == v46)
      {
        v43 = v3;
      }

      else
      {
        v39 = v30;
        v31 = [(_BGContinuedProcessingTaskRequest *)v6 applicationBundleIdentifier];
        v41 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
        v42 = v31;
        if (![v31 isEqual:?])
        {
          v10 = 0;
          v36 = v46;
          v30 = v39;
          goto LABEL_40;
        }

        v43 = v3;
        v30 = v39;
      }

      v32 = [(_BGContinuedProcessingTaskRequest *)v6 linkToBundleIdentifier];
      v33 = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
      if (v32 == v33)
      {

        v10 = 1;
      }

      else
      {
        v38 = v33;
        v34 = [(_BGContinuedProcessingTaskRequest *)v6 linkToBundleIdentifier];
        [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
        v35 = v40 = v32;
        v10 = [v34 isEqual:v35];
      }

      v36 = v46;
      v3 = v43;
      if (v30 == v46)
      {
LABEL_41:

        v26 = v49;
        v24 = v47;
        if (v49 == v47)
        {

          if (v48)
          {
            goto LABEL_43;
          }

LABEL_47:
          v29 = v52;
          if (v55)
          {
            goto LABEL_48;
          }

          goto LABEL_50;
        }

LABEL_42:

        if (v48)
        {
LABEL_43:
          v27 = 0;
          goto LABEL_44;
        }

        goto LABEL_47;
      }

LABEL_40:

      goto LABEL_41;
    }

    v10 = 0;
  }

LABEL_58:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = _BGContinuedProcessingTaskRequest;
  v4 = [(BGTaskRequest *)&v12 copyWithZone:a3];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:v5];

  v6 = [(_BGContinuedProcessingTaskRequest *)self title];
  [v4 setTitle:v6];

  v7 = [(_BGContinuedProcessingTaskRequest *)self reason];
  [v4 setReason:v7];

  v8 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  [v4 setIconBundleIdentifier:v8];

  v9 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  [v4 setApplicationBundleIdentifier:v9];

  v10 = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
  [v4 setLinkToBundleIdentifier:v10];

  return v4;
}

- (void)_activity
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 title];
  v5 = [a2 reason];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

@end