@interface OpportuneSpeakingModelService
- (OpportuneSpeakingModelService)init;
- (void)createModelWithType:(int64_t)type completion:(id)completion;
- (void)recordFeedbackOfType:(int64_t)type forSpeakableId:(id)id;
- (void)recordNotificationUsageForSpeakableId:(id)id withStartDate:(id)date withEndDate:(id)endDate withCompletion:(id)completion;
- (void)recordRecommendedAction:(id)action forSpeakableId:(id)id withModelIdentifier:(id)identifier;
@end

@implementation OpportuneSpeakingModelService

- (void)recordNotificationUsageForSpeakableId:(id)id withStartDate:(id)date withEndDate:(id)endDate withCompletion:(id)completion
{
  idCopy = id;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  v14 = dispatch_time(0, 90000000000);
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000725C;
  v20[3] = &unk_100010620;
  v21 = idCopy;
  v22 = dateCopy;
  v23 = endDateCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  v19 = idCopy;
  dispatch_after(v14, queue, v20);
}

- (void)recordRecommendedAction:(id)action forSpeakableId:(id)id withModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idCopy = id;
  actionCopy = action;
  v10 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
  [v10 logRecommendedAction:actionCopy forSpeakableId:idCopy withModelId:identifierCopy];
}

- (void)recordFeedbackOfType:(int64_t)type forSpeakableId:(id)id
{
  if (type == 2)
  {
    v6 = [OSMBackgroundFeatureManager sharedBackgroundFeatureManager:type];
    feedbackManager = [v6 feedbackManager];
    [feedbackManager setLastNegativeFeedbackForContact:0];
  }
}

- (void)createModelWithType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  modelsByType = self->_modelsByType;
  v7 = [NSNumber numberWithInteger:type];
  v8 = [(NSMutableDictionary *)modelsByType objectForKey:v7];

  modelIdentifier = [v8 modelIdentifier];
  if (!v8)
  {
    if (type == 2)
    {
      v10 = &off_100010208;
    }

    else
    {
      if (type != 3)
      {
        v8 = 0;
LABEL_8:
        modelIdentifier2 = [v8 modelIdentifier];

        if (modelIdentifier2)
        {
          v12 = self->_modelsByType;
          v13 = [NSNumber numberWithInteger:type];
          [(NSMutableDictionary *)v12 setObject:v8 forKey:v13];

          [(NSMutableDictionary *)self->_modelsByIdentifier setObject:v8 forKey:modelIdentifier2];
          modelIdentifier = modelIdentifier2;
        }

        else
        {
          modelIdentifier = 0;
        }

        goto LABEL_11;
      }

      v10 = off_100010200;
    }

    v8 = objc_alloc_init(*v10);
    goto LABEL_8;
  }

LABEL_11:
  completionCopy[2](completionCopy, v8, modelIdentifier);
}

- (OpportuneSpeakingModelService)init
{
  v12.receiver = self;
  v12.super_class = OpportuneSpeakingModelService;
  v2 = [(OpportuneSpeakingModelService *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("OpportuneSpeakingModelService", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[NSMutableDictionary alloc] initWithCapacity:4];
    modelsByType = v2->_modelsByType;
    v2->_modelsByType = v7;

    v9 = [[NSMutableDictionary alloc] initWithCapacity:4];
    modelsByIdentifier = v2->_modelsByIdentifier;
    v2->_modelsByIdentifier = v9;
  }

  return v2;
}

@end