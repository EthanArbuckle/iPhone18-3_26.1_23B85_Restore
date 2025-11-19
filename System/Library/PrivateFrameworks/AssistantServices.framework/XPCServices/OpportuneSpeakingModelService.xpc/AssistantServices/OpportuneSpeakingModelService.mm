@interface OpportuneSpeakingModelService
- (OpportuneSpeakingModelService)init;
- (void)createModelWithType:(int64_t)a3 completion:(id)a4;
- (void)recordFeedbackOfType:(int64_t)a3 forSpeakableId:(id)a4;
- (void)recordNotificationUsageForSpeakableId:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5 withCompletion:(id)a6;
- (void)recordRecommendedAction:(id)a3 forSpeakableId:(id)a4 withModelIdentifier:(id)a5;
@end

@implementation OpportuneSpeakingModelService

- (void)recordNotificationUsageForSpeakableId:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_time(0, 90000000000);
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000725C;
  v20[3] = &unk_100010620;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_after(v14, queue, v20);
}

- (void)recordRecommendedAction:(id)a3 forSpeakableId:(id)a4 withModelIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
  [v10 logRecommendedAction:v9 forSpeakableId:v8 withModelId:v7];
}

- (void)recordFeedbackOfType:(int64_t)a3 forSpeakableId:(id)a4
{
  if (a3 == 2)
  {
    v6 = [OSMBackgroundFeatureManager sharedBackgroundFeatureManager:a3];
    v5 = [v6 feedbackManager];
    [v5 setLastNegativeFeedbackForContact:0];
  }
}

- (void)createModelWithType:(int64_t)a3 completion:(id)a4
{
  v14 = a4;
  modelsByType = self->_modelsByType;
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)modelsByType objectForKey:v7];

  v9 = [v8 modelIdentifier];
  if (!v8)
  {
    if (a3 == 2)
    {
      v10 = &off_100010208;
    }

    else
    {
      if (a3 != 3)
      {
        v8 = 0;
LABEL_8:
        v11 = [v8 modelIdentifier];

        if (v11)
        {
          v12 = self->_modelsByType;
          v13 = [NSNumber numberWithInteger:a3];
          [(NSMutableDictionary *)v12 setObject:v8 forKey:v13];

          [(NSMutableDictionary *)self->_modelsByIdentifier setObject:v8 forKey:v11];
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_11;
      }

      v10 = off_100010200;
    }

    v8 = objc_alloc_init(*v10);
    goto LABEL_8;
  }

LABEL_11:
  v14[2](v14, v8, v9);
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