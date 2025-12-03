@interface _BGContinuedProcessingTaskRequest
+ (id)_requestFromActivity:(id)activity;
- (BOOL)isEqual:(id)equal;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier iconBundleIdentifier:(id)bundleIdentifier;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier iconBundleIdentifier:(id)bundleIdentifier applicationBundleIdentifier:(id)applicationBundleIdentifier;
- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier iconBundleIdentifier:(id)bundleIdentifier onBehalfOf:(id)of linkToBundleIdentifier:(id)toBundleIdentifier;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_activity;
@end

@implementation _BGContinuedProcessingTaskRequest

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = _BGContinuedProcessingTaskRequest;
  v3 = [(BGTaskRequest *)&v8 _initWithIdentifier:identifier];
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

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier iconBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  v12.receiver = self;
  v12.super_class = _BGContinuedProcessingTaskRequest;
  v8 = [(BGTaskRequest *)&v12 _initWithIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, bundleIdentifier);
    applicationBundleIdentifier = v9->_applicationBundleIdentifier;
    v9->_applicationBundleIdentifier = 0;
  }

  return v9;
}

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier iconBundleIdentifier:(id)bundleIdentifier applicationBundleIdentifier:(id)applicationBundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  applicationBundleIdentifierCopy = applicationBundleIdentifier;
  v14.receiver = self;
  v14.super_class = _BGContinuedProcessingTaskRequest;
  v11 = [(BGTaskRequest *)&v14 _initWithIdentifier:identifier];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 5, bundleIdentifier);
    objc_storeStrong(&v12->_applicationBundleIdentifier, applicationBundleIdentifier);
  }

  return v12;
}

- (_BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier iconBundleIdentifier:(id)bundleIdentifier onBehalfOf:(id)of linkToBundleIdentifier:(id)toBundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  ofCopy = of;
  toBundleIdentifierCopy = toBundleIdentifier;
  v17.receiver = self;
  v17.super_class = _BGContinuedProcessingTaskRequest;
  v14 = [(BGTaskRequest *)&v17 _initWithIdentifier:identifier];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 5, bundleIdentifier);
    objc_storeStrong(&v15->_applicationBundleIdentifier, of);
    objc_storeStrong(&v15->_linkToBundleIdentifier, toBundleIdentifier);
  }

  return v15;
}

+ (id)_requestFromActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  v6 = [launchReason isEqualToString:*MEMORY[0x1E699A560]];

  if (v6)
  {
    v7 = [self alloc];
    clientProvidedIdentifier = [activityCopy clientProvidedIdentifier];
    v9 = [v7 initWithIdentifier:clientProvidedIdentifier];

    clientProvidedStartDate = [activityCopy clientProvidedStartDate];
    [v9 setEarliestBeginDate:clientProvidedStartDate];

    continuedProcessingWrapper = [activityCopy continuedProcessingWrapper];
    title = [continuedProcessingWrapper title];
    [v9 setTitle:title];

    continuedProcessingWrapper2 = [activityCopy continuedProcessingWrapper];
    subtitle = [continuedProcessingWrapper2 subtitle];
    [v9 setReason:subtitle];

    continuedProcessingWrapper3 = [activityCopy continuedProcessingWrapper];
    iconBundleIdentifier = [continuedProcessingWrapper3 iconBundleIdentifier];
    [v9 setIconBundleIdentifier:iconBundleIdentifier];

    continuedProcessingWrapper4 = [activityCopy continuedProcessingWrapper];
    linkToBundleIdentifier = [continuedProcessingWrapper4 linkToBundleIdentifier];
    [v9 setLinkToBundleIdentifier:linkToBundleIdentifier];

    relatedApplications = [activityCopy relatedApplications];
    firstObject = [relatedApplications firstObject];
    [v9 setApplicationBundleIdentifier:firstObject];
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
  identifier = [(BGTaskRequest *)self identifier];
  title = [(_BGContinuedProcessingTaskRequest *)self title];
  reason = [(_BGContinuedProcessingTaskRequest *)self reason];
  iconBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  applicationBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  v9 = [v3 stringWithFormat:@"<_BGContinuedProcessingTaskRequest: %@, title: %@, reason: %@, iconBundle: %@, applicationBundle: %@>", identifier, title, reason, iconBundleIdentifier, applicationBundleIdentifier];

  return v9;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgContinuedProcessing-%@", identifier];

  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [MEMORY[0x1E699A488] activityWithName:v5 priority:*MEMORY[0x1E699A5A0] duration:*MEMORY[0x1E699A4D8] startingAfter:v6 startingBefore:v6];
  [v7 setLaunchReason:*MEMORY[0x1E699A560]];
  identifier2 = [(BGTaskRequest *)self identifier];
  [v7 setClientProvidedIdentifier:identifier2];

  [v7 setGroupName:*MEMORY[0x1E699A538]];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v7 setClientProvidedStartDate:earliestBeginDate];

  v10 = objc_alloc(MEMORY[0x1E699A498]);
  title = [(_BGContinuedProcessingTaskRequest *)self title];
  reason = [(_BGContinuedProcessingTaskRequest *)self reason];
  iconBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  linkToBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
  v15 = [v10 initWithTitle:title subtitle:reason iconBundleIdentifier:iconBundleIdentifier linkToBundleIdentifier:linkToBundleIdentifier resources:0];
  [v7 setContinuedProcessingWrapper:v15];

  continuedProcessingWrapper = [v7 continuedProcessingWrapper];
  [continuedProcessingWrapper setIsForegroundAppProxy:1];

  applicationBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v18 = MEMORY[0x1E695DEC8];
    applicationBundleIdentifier2 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
    v20 = [v18 arrayWithObject:applicationBundleIdentifier2];
    [v7 setRelatedApplications:v20];
  }

  else
  {
    [v7 setRelatedApplications:0];
  }

  title2 = [(_BGContinuedProcessingTaskRequest *)self title];
  if (title2 && (v22 = title2, [(_BGContinuedProcessingTaskRequest *)self reason], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
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
  identifier = [(BGTaskRequest *)self identifier];
  v4 = [identifier hash];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [earliestBeginDate hash]);
  title = [(_BGContinuedProcessingTaskRequest *)self title];
  v8 = v6 ^ (4 * [title hash]);
  reason = [(_BGContinuedProcessingTaskRequest *)self reason];
  v10 = v8 ^ (8 * [reason hash]);
  iconBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  v12 = v10 ^ (16 * [iconBundleIdentifier hash]);
  applicationBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  v14 = v12 ^ (32 * [applicationBundleIdentifier hash]);
  linkToBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
  v16 = v14 ^ ([linkToBundleIdentifier hash] << 6);

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      identifier = [(BGTaskRequest *)v6 identifier];
      identifier2 = [(BGTaskRequest *)self identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(BGTaskRequest *)v6 identifier];
        identifier4 = [(BGTaskRequest *)self identifier];
        v58 = identifier3;
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_56;
        }
      }

      earliestBeginDate = [(BGTaskRequest *)v6 earliestBeginDate];
      earliestBeginDate2 = [(BGTaskRequest *)self earliestBeginDate];
      if (earliestBeginDate != earliestBeginDate2)
      {
        earliestBeginDate3 = [(BGTaskRequest *)v6 earliestBeginDate];
        earliestBeginDate4 = [(BGTaskRequest *)self earliestBeginDate];
        if (([earliestBeginDate3 isEqual:earliestBeginDate4] & 1) == 0)
        {

          v10 = 0;
          goto LABEL_55;
        }

        v53 = earliestBeginDate4;
        v54 = earliestBeginDate3;
      }

      v56 = earliestBeginDate;
      title = [(_BGContinuedProcessingTaskRequest *)v6 title];
      title2 = [(_BGContinuedProcessingTaskRequest *)self title];
      v57 = title;
      if (title != title2)
      {
        v17 = identifier4;
        title3 = [(_BGContinuedProcessingTaskRequest *)v6 title];
        title4 = [(_BGContinuedProcessingTaskRequest *)self title];
        if (([title3 isEqual:title4] & 1) == 0)
        {

          if (v56 != earliestBeginDate2)
          {
          }

          v10 = 0;
          identifier4 = v17;
          if (identifier == identifier2)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        v50 = title4;
        v51 = title3;
        identifier4 = v17;
      }

      reason = [(_BGContinuedProcessingTaskRequest *)v6 reason];
      if (reason && ([(_BGContinuedProcessingTaskRequest *)self reason], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v52 = v20;
        v48 = 0;
      }

      else
      {
        reason2 = [(_BGContinuedProcessingTaskRequest *)v6 reason];
        if (reason2)
        {
          v52 = 0;
          v10 = 0;
LABEL_44:

          if (!reason)
          {
LABEL_49:

            goto LABEL_50;
          }

          v29 = v52;
LABEL_48:

          goto LABEL_49;
        }

        reason3 = [(_BGContinuedProcessingTaskRequest *)self reason];
        if (reason3)
        {

          v10 = 0;
          if (reason)
          {
            v29 = 0;
            goto LABEL_48;
          }

LABEL_50:
          if (v57 != title2)
          {
          }

          if (v56 != earliestBeginDate2)
          {
          }

LABEL_55:
          if (identifier == identifier2)
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

      iconBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)v6 iconBundleIdentifier];
      iconBundleIdentifier2 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
      v49 = iconBundleIdentifier;
      v23 = iconBundleIdentifier == iconBundleIdentifier2;
      v24 = iconBundleIdentifier2;
      if (!v23)
      {
        iconBundleIdentifier3 = [(_BGContinuedProcessingTaskRequest *)v6 iconBundleIdentifier];
        iconBundleIdentifier4 = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
        v45 = iconBundleIdentifier3;
        if (![iconBundleIdentifier3 isEqual:?])
        {
          v10 = 0;
          v26 = v49;
          goto LABEL_42;
        }
      }

      applicationBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)v6 applicationBundleIdentifier];
      applicationBundleIdentifier2 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
      v47 = v24;
      if (applicationBundleIdentifier == applicationBundleIdentifier2)
      {
        v43 = identifier4;
      }

      else
      {
        v39 = applicationBundleIdentifier;
        applicationBundleIdentifier3 = [(_BGContinuedProcessingTaskRequest *)v6 applicationBundleIdentifier];
        applicationBundleIdentifier4 = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
        v42 = applicationBundleIdentifier3;
        if (![applicationBundleIdentifier3 isEqual:?])
        {
          v10 = 0;
          v36 = applicationBundleIdentifier2;
          applicationBundleIdentifier = v39;
          goto LABEL_40;
        }

        v43 = identifier4;
        applicationBundleIdentifier = v39;
      }

      linkToBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)v6 linkToBundleIdentifier];
      linkToBundleIdentifier2 = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
      if (linkToBundleIdentifier == linkToBundleIdentifier2)
      {

        v10 = 1;
      }

      else
      {
        v38 = linkToBundleIdentifier2;
        linkToBundleIdentifier3 = [(_BGContinuedProcessingTaskRequest *)v6 linkToBundleIdentifier];
        [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
        v35 = v40 = linkToBundleIdentifier;
        v10 = [linkToBundleIdentifier3 isEqual:v35];
      }

      v36 = applicationBundleIdentifier2;
      identifier4 = v43;
      if (applicationBundleIdentifier == applicationBundleIdentifier2)
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
          if (reason)
          {
            goto LABEL_48;
          }

          goto LABEL_50;
        }

LABEL_42:

        if (v48)
        {
LABEL_43:
          reason2 = 0;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = _BGContinuedProcessingTaskRequest;
  v4 = [(BGTaskRequest *)&v12 copyWithZone:zone];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:earliestBeginDate];

  title = [(_BGContinuedProcessingTaskRequest *)self title];
  [v4 setTitle:title];

  reason = [(_BGContinuedProcessingTaskRequest *)self reason];
  [v4 setReason:reason];

  iconBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self iconBundleIdentifier];
  [v4 setIconBundleIdentifier:iconBundleIdentifier];

  applicationBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self applicationBundleIdentifier];
  [v4 setApplicationBundleIdentifier:applicationBundleIdentifier];

  linkToBundleIdentifier = [(_BGContinuedProcessingTaskRequest *)self linkToBundleIdentifier];
  [v4 setLinkToBundleIdentifier:linkToBundleIdentifier];

  return v4;
}

- (void)_activity
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  title = [a2 title];
  reason = [a2 reason];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

@end