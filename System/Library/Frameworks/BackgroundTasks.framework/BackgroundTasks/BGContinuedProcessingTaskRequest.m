@interface BGContinuedProcessingTaskRequest
+ (id)_requestFromActivity:(id)a3;
- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5;
- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 onBehalfOf:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_activity;
@end

@implementation BGContinuedProcessingTaskRequest

- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = BGContinuedProcessingTaskRequest;
  v10 = [(BGTaskRequest *)&v17 _initWithIdentifier:a3];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [v9 copy];
    subtitle = v10->_subtitle;
    v10->_subtitle = v13;

    representedApplicationBundleIdentifier = v10->_representedApplicationBundleIdentifier;
    v10->_representedApplicationBundleIdentifier = 0;

    v10->_strategy = 1;
    v10->_requiredResources = 0;
  }

  return v10;
}

- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 onBehalfOf:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = BGContinuedProcessingTaskRequest;
  v13 = [(BGTaskRequest *)&v21 _initWithIdentifier:a3];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v16;

    v18 = [v12 copy];
    representedApplicationBundleIdentifier = v13->_representedApplicationBundleIdentifier;
    v13->_representedApplicationBundleIdentifier = v18;

    v13->_strategy = 1;
    v13->_requiredResources = 0;
  }

  return v13;
}

+ (id)_requestFromActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 launchReason];
  v6 = [v5 isEqualToString:*MEMORY[0x1E699A558]];

  if (v6)
  {
    v7 = [a1 alloc];
    v8 = [v4 clientProvidedIdentifier];
    v9 = [v4 continuedProcessingWrapper];
    v10 = [v9 title];
    v11 = [v4 continuedProcessingWrapper];
    v12 = [v11 subtitle];
    v13 = [v4 relatedApplications];
    v14 = [v13 firstObject];
    v15 = [v7 initWithIdentifier:v8 title:v10 subtitle:v12 onBehalfOf:v14];

    v16 = [v4 continuedProcessingWrapper];
    [v15 setStrategy:{objc_msgSend(v16, "submissionStrategy")}];

    v17 = [v4 continuedProcessingWrapper];
    [v15 setRequiredResources:{objc_msgSend(v17, "resources")}];

    v18 = [v4 clientProvidedStartDate];
    [v15 setEarliestBeginDate:v18];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  requiredResources = self->_requiredResources;
  if (requiredResources)
  {
    if ((requiredResources & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [v3 addObject:@"Default"];
  if (self->_requiredResources)
  {
LABEL_3:
    [v4 addObject:@"GPU"];
  }

LABEL_4:
  strategy = self->_strategy;
  v7 = @"Queue";
  if (strategy != 1)
  {
    v7 = 0;
  }

  if (strategy)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Fail";
  }

  representedApplicationBundleIdentifier = self->_representedApplicationBundleIdentifier;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(BGTaskRequest *)self identifier];
  v12 = [(BGContinuedProcessingTaskRequest *)self title];
  v13 = [(BGContinuedProcessingTaskRequest *)self subtitle];
  v14 = [v4 componentsJoinedByString:{@", "}];
  v15 = v14;
  if (representedApplicationBundleIdentifier)
  {
    v16 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
    v17 = [v10 stringWithFormat:@"<BGContinuedProcessingTaskRequest: %@, (title: %@, subtitle: %@, resources: %@, submissionStrategy: %@, applicationBundleIdentifier: %@)>", v11, v12, v13, v15, v8, v16];
  }

  else
  {
    v17 = [v10 stringWithFormat:@"<BGContinuedProcessingTaskRequest: %@, (title: %@, subtitle: %@, resources: %@, submissionStrategy: %@)>", v11, v12, v13, v14, v8];
  }

  return v17;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgContinuedProcessing-%@", v4];

  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [MEMORY[0x1E699A488] activityWithName:v5 priority:*MEMORY[0x1E699A5A0] duration:*MEMORY[0x1E699A4D8] startingAfter:v6 startingBefore:v6];
  [v7 setLaunchReason:*MEMORY[0x1E699A558]];
  v8 = [(BGTaskRequest *)self identifier];
  [v7 setClientProvidedIdentifier:v8];

  [v7 setGroupName:*MEMORY[0x1E699A538]];
  v9 = [(BGTaskRequest *)self earliestBeginDate];
  [v7 setClientProvidedStartDate:v9];

  v10 = objc_alloc(MEMORY[0x1E699A498]);
  v11 = [(BGContinuedProcessingTaskRequest *)self title];
  v12 = [(BGContinuedProcessingTaskRequest *)self subtitle];
  v13 = [v10 initWithTitle:v11 subtitle:v12 resources:-[BGContinuedProcessingTaskRequest requiredResources](self submissionStrategy:{"requiredResources"), -[BGContinuedProcessingTaskRequest strategy](self, "strategy")}];
  [v7 setContinuedProcessingWrapper:v13];

  v14 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  v15 = [v7 continuedProcessingWrapper];
  [v15 setIsForegroundAppProxy:v14 != 0];

  v16 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  if (v16)
  {
    v17 = MEMORY[0x1E695DEC8];
    v18 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
    v19 = [v17 arrayWithObject:v18];
    [v7 setRelatedApplications:v19];
  }

  else
  {
    [v7 setRelatedApplications:0];
  }

  v20 = [(BGContinuedProcessingTaskRequest *)self title];
  if (v20 && (v21 = v20, [(BGContinuedProcessingTaskRequest *)self subtitle], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
  {
    v23 = v7;
  }

  else
  {
    v24 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [(BGContinuedProcessingTaskRequest *)v24 _activity];
    }

    v23 = 0;
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [(BGTaskRequest *)self identifier];
  v4 = [v3 hash];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [v5 hash]);
  v7 = [(BGContinuedProcessingTaskRequest *)self title];
  v8 = v6 ^ (4 * [v7 hash]);
  v9 = v8 ^ (8 * [(BGContinuedProcessingTaskRequest *)self requiredResources]);
  v10 = v9 ^ (16 * [(BGContinuedProcessingTaskRequest *)self strategy]);
  v11 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  v12 = v10 ^ (32 * [v11 hash]);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BGTaskRequest *)v5 identifier];
      v7 = [(BGTaskRequest *)self identifier];
      if (v6 != v7)
      {
        v8 = [(BGTaskRequest *)v5 identifier];
        v9 = [(BGTaskRequest *)self identifier];
        if (![v8 isEqual:v9])
        {
          v10 = 0;
          goto LABEL_28;
        }

        v31 = v9;
        v32 = v8;
      }

      v11 = [(BGTaskRequest *)v5 earliestBeginDate];
      v12 = [(BGTaskRequest *)self earliestBeginDate];
      if (v11 != v12)
      {
        v13 = [(BGTaskRequest *)v5 earliestBeginDate];
        v14 = [(BGTaskRequest *)self earliestBeginDate];
        if (![v13 isEqual:v14])
        {
          v10 = 0;
LABEL_26:

LABEL_27:
          v9 = v31;
          v8 = v32;
          if (v6 == v7)
          {
LABEL_29:

            goto LABEL_30;
          }

LABEL_28:

          goto LABEL_29;
        }

        v29 = v14;
        v30 = v13;
      }

      v15 = [(BGContinuedProcessingTaskRequest *)v5 title];
      v16 = [(BGContinuedProcessingTaskRequest *)self title];
      if (v15 != v16)
      {
        v17 = [(BGContinuedProcessingTaskRequest *)v5 title];
        v28 = [(BGContinuedProcessingTaskRequest *)self title];
        if (![v17 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }

        v27 = v17;
      }

      v18 = [(BGContinuedProcessingTaskRequest *)v5 requiredResources];
      if (v18 == [(BGContinuedProcessingTaskRequest *)self requiredResources]&& (v19 = [(BGContinuedProcessingTaskRequest *)v5 strategy], v19 == [(BGContinuedProcessingTaskRequest *)self strategy]))
      {
        v20 = [(BGContinuedProcessingTaskRequest *)v5 representedApplicationBundleIdentifier];
        v21 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
        if (v20 == v21)
        {

          v10 = 1;
        }

        else
        {
          v25 = v21;
          v26 = [(BGContinuedProcessingTaskRequest *)v5 representedApplicationBundleIdentifier];
          [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
          v22 = v24 = v20;
          v10 = [v26 isEqual:v22];
        }
      }

      else
      {
        v10 = 0;
      }

      v17 = v27;
      if (v15 == v16)
      {
LABEL_25:

        v14 = v29;
        v13 = v30;
        if (v11 == v12)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_24:

      goto LABEL_25;
    }

    v10 = 0;
  }

LABEL_30:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = BGContinuedProcessingTaskRequest;
  v4 = [(BGTaskRequest *)&v10 copyWithZone:a3];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:v5];

  v6 = [(BGContinuedProcessingTaskRequest *)self title];
  [v4 setTitle:v6];

  v7 = [(BGContinuedProcessingTaskRequest *)self subtitle];
  [v4 setSubtitle:v7];

  [v4 setRequiredResources:{-[BGContinuedProcessingTaskRequest requiredResources](self, "requiredResources")}];
  [v4 setStrategy:{-[BGContinuedProcessingTaskRequest strategy](self, "strategy")}];
  v8 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  [v4 setRepresentedApplicationBundleIdentifier:v8];

  return v4;
}

- (void)_activity
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 title];
  v5 = [a2 subtitle];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

@end