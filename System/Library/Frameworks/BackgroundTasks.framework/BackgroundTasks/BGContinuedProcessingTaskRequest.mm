@interface BGContinuedProcessingTaskRequest
+ (id)_requestFromActivity:(id)activity;
- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle;
- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle onBehalfOf:(id)of;
- (BOOL)isEqual:(id)equal;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_activity;
@end

@implementation BGContinuedProcessingTaskRequest

- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v17.receiver = self;
  v17.super_class = BGContinuedProcessingTaskRequest;
  v10 = [(BGTaskRequest *)&v17 _initWithIdentifier:identifier];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [subtitleCopy copy];
    subtitle = v10->_subtitle;
    v10->_subtitle = v13;

    representedApplicationBundleIdentifier = v10->_representedApplicationBundleIdentifier;
    v10->_representedApplicationBundleIdentifier = 0;

    v10->_strategy = 1;
    v10->_requiredResources = 0;
  }

  return v10;
}

- (BGContinuedProcessingTaskRequest)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle onBehalfOf:(id)of
{
  titleCopy = title;
  subtitleCopy = subtitle;
  ofCopy = of;
  v21.receiver = self;
  v21.super_class = BGContinuedProcessingTaskRequest;
  v13 = [(BGTaskRequest *)&v21 _initWithIdentifier:identifier];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [subtitleCopy copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v16;

    v18 = [ofCopy copy];
    representedApplicationBundleIdentifier = v13->_representedApplicationBundleIdentifier;
    v13->_representedApplicationBundleIdentifier = v18;

    v13->_strategy = 1;
    v13->_requiredResources = 0;
  }

  return v13;
}

+ (id)_requestFromActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  v6 = [launchReason isEqualToString:*MEMORY[0x1E699A558]];

  if (v6)
  {
    v7 = [self alloc];
    clientProvidedIdentifier = [activityCopy clientProvidedIdentifier];
    continuedProcessingWrapper = [activityCopy continuedProcessingWrapper];
    title = [continuedProcessingWrapper title];
    continuedProcessingWrapper2 = [activityCopy continuedProcessingWrapper];
    subtitle = [continuedProcessingWrapper2 subtitle];
    relatedApplications = [activityCopy relatedApplications];
    firstObject = [relatedApplications firstObject];
    v15 = [v7 initWithIdentifier:clientProvidedIdentifier title:title subtitle:subtitle onBehalfOf:firstObject];

    continuedProcessingWrapper3 = [activityCopy continuedProcessingWrapper];
    [v15 setStrategy:{objc_msgSend(continuedProcessingWrapper3, "submissionStrategy")}];

    continuedProcessingWrapper4 = [activityCopy continuedProcessingWrapper];
    [v15 setRequiredResources:{objc_msgSend(continuedProcessingWrapper4, "resources")}];

    clientProvidedStartDate = [activityCopy clientProvidedStartDate];
    [v15 setEarliestBeginDate:clientProvidedStartDate];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  requiredResources = self->_requiredResources;
  if (requiredResources)
  {
    if ((requiredResources & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [array addObject:@"Default"];
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
  identifier = [(BGTaskRequest *)self identifier];
  title = [(BGContinuedProcessingTaskRequest *)self title];
  subtitle = [(BGContinuedProcessingTaskRequest *)self subtitle];
  v14 = [v4 componentsJoinedByString:{@", "}];
  v15 = v14;
  if (representedApplicationBundleIdentifier)
  {
    representedApplicationBundleIdentifier = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
    v17 = [v10 stringWithFormat:@"<BGContinuedProcessingTaskRequest: %@, (title: %@, subtitle: %@, resources: %@, submissionStrategy: %@, applicationBundleIdentifier: %@)>", identifier, title, subtitle, v15, v8, representedApplicationBundleIdentifier];
  }

  else
  {
    v17 = [v10 stringWithFormat:@"<BGContinuedProcessingTaskRequest: %@, (title: %@, subtitle: %@, resources: %@, submissionStrategy: %@)>", identifier, title, subtitle, v14, v8];
  }

  return v17;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgContinuedProcessing-%@", identifier];

  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [MEMORY[0x1E699A488] activityWithName:v5 priority:*MEMORY[0x1E699A5A0] duration:*MEMORY[0x1E699A4D8] startingAfter:v6 startingBefore:v6];
  [v7 setLaunchReason:*MEMORY[0x1E699A558]];
  identifier2 = [(BGTaskRequest *)self identifier];
  [v7 setClientProvidedIdentifier:identifier2];

  [v7 setGroupName:*MEMORY[0x1E699A538]];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v7 setClientProvidedStartDate:earliestBeginDate];

  v10 = objc_alloc(MEMORY[0x1E699A498]);
  title = [(BGContinuedProcessingTaskRequest *)self title];
  subtitle = [(BGContinuedProcessingTaskRequest *)self subtitle];
  v13 = [v10 initWithTitle:title subtitle:subtitle resources:-[BGContinuedProcessingTaskRequest requiredResources](self submissionStrategy:{"requiredResources"), -[BGContinuedProcessingTaskRequest strategy](self, "strategy")}];
  [v7 setContinuedProcessingWrapper:v13];

  representedApplicationBundleIdentifier = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  continuedProcessingWrapper = [v7 continuedProcessingWrapper];
  [continuedProcessingWrapper setIsForegroundAppProxy:representedApplicationBundleIdentifier != 0];

  representedApplicationBundleIdentifier2 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  if (representedApplicationBundleIdentifier2)
  {
    v17 = MEMORY[0x1E695DEC8];
    representedApplicationBundleIdentifier3 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
    v19 = [v17 arrayWithObject:representedApplicationBundleIdentifier3];
    [v7 setRelatedApplications:v19];
  }

  else
  {
    [v7 setRelatedApplications:0];
  }

  title2 = [(BGContinuedProcessingTaskRequest *)self title];
  if (title2 && (v21 = title2, [(BGContinuedProcessingTaskRequest *)self subtitle], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
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
  identifier = [(BGTaskRequest *)self identifier];
  v4 = [identifier hash];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [earliestBeginDate hash]);
  title = [(BGContinuedProcessingTaskRequest *)self title];
  v8 = v6 ^ (4 * [title hash]);
  v9 = v8 ^ (8 * [(BGContinuedProcessingTaskRequest *)self requiredResources]);
  v10 = v9 ^ (16 * [(BGContinuedProcessingTaskRequest *)self strategy]);
  representedApplicationBundleIdentifier = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  v12 = v10 ^ (32 * [representedApplicationBundleIdentifier hash]);

  return v12;
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
      v5 = equalCopy;
      identifier = [(BGTaskRequest *)v5 identifier];
      identifier2 = [(BGTaskRequest *)self identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(BGTaskRequest *)v5 identifier];
        identifier4 = [(BGTaskRequest *)self identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_28;
        }

        v31 = identifier4;
        v32 = identifier3;
      }

      earliestBeginDate = [(BGTaskRequest *)v5 earliestBeginDate];
      earliestBeginDate2 = [(BGTaskRequest *)self earliestBeginDate];
      if (earliestBeginDate != earliestBeginDate2)
      {
        earliestBeginDate3 = [(BGTaskRequest *)v5 earliestBeginDate];
        earliestBeginDate4 = [(BGTaskRequest *)self earliestBeginDate];
        if (![earliestBeginDate3 isEqual:earliestBeginDate4])
        {
          v10 = 0;
LABEL_26:

LABEL_27:
          identifier4 = v31;
          identifier3 = v32;
          if (identifier == identifier2)
          {
LABEL_29:

            goto LABEL_30;
          }

LABEL_28:

          goto LABEL_29;
        }

        v29 = earliestBeginDate4;
        v30 = earliestBeginDate3;
      }

      title = [(BGContinuedProcessingTaskRequest *)v5 title];
      title2 = [(BGContinuedProcessingTaskRequest *)self title];
      if (title != title2)
      {
        title3 = [(BGContinuedProcessingTaskRequest *)v5 title];
        title4 = [(BGContinuedProcessingTaskRequest *)self title];
        if (![title3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }

        v27 = title3;
      }

      requiredResources = [(BGContinuedProcessingTaskRequest *)v5 requiredResources];
      if (requiredResources == [(BGContinuedProcessingTaskRequest *)self requiredResources]&& (v19 = [(BGContinuedProcessingTaskRequest *)v5 strategy], v19 == [(BGContinuedProcessingTaskRequest *)self strategy]))
      {
        representedApplicationBundleIdentifier = [(BGContinuedProcessingTaskRequest *)v5 representedApplicationBundleIdentifier];
        representedApplicationBundleIdentifier2 = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
        if (representedApplicationBundleIdentifier == representedApplicationBundleIdentifier2)
        {

          v10 = 1;
        }

        else
        {
          v25 = representedApplicationBundleIdentifier2;
          representedApplicationBundleIdentifier3 = [(BGContinuedProcessingTaskRequest *)v5 representedApplicationBundleIdentifier];
          [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
          v22 = v24 = representedApplicationBundleIdentifier;
          v10 = [representedApplicationBundleIdentifier3 isEqual:v22];
        }
      }

      else
      {
        v10 = 0;
      }

      title3 = v27;
      if (title == title2)
      {
LABEL_25:

        earliestBeginDate4 = v29;
        earliestBeginDate3 = v30;
        if (earliestBeginDate == earliestBeginDate2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = BGContinuedProcessingTaskRequest;
  v4 = [(BGTaskRequest *)&v10 copyWithZone:zone];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:earliestBeginDate];

  title = [(BGContinuedProcessingTaskRequest *)self title];
  [v4 setTitle:title];

  subtitle = [(BGContinuedProcessingTaskRequest *)self subtitle];
  [v4 setSubtitle:subtitle];

  [v4 setRequiredResources:{-[BGContinuedProcessingTaskRequest requiredResources](self, "requiredResources")}];
  [v4 setStrategy:{-[BGContinuedProcessingTaskRequest strategy](self, "strategy")}];
  representedApplicationBundleIdentifier = [(BGContinuedProcessingTaskRequest *)self representedApplicationBundleIdentifier];
  [v4 setRepresentedApplicationBundleIdentifier:representedApplicationBundleIdentifier];

  return v4;
}

- (void)_activity
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  title = [a2 title];
  subtitle = [a2 subtitle];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

@end