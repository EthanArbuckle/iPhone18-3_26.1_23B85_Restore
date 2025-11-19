@interface ADOpportuneSpeakingVoiceActivityModel
- (ADOpportuneSpeakingVoiceActivityModel)initWithQueue:(id)a3 stateManager:(id)a4;
- (id)_detector;
- (void)setSpeakable:(id)a3;
- (void)stop;
@end

@implementation ADOpportuneSpeakingVoiceActivityModel

- (void)stop
{
  delegate = self->_delegate;
  self->_delegate = 0;

  detector = self->_detector;
  self->_detector = 0;
}

- (void)setSpeakable:(id)a3
{
  v4 = a3;
  v5 = +[AFPreferences sharedPreferences];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  [v5 opportuneSpeakingPauseInterval];
  v15[3] = v6;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  [v5 opportuneSpeakingTimeoutInterval];
  v14[3] = v7;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100156C1C;
  v10[3] = &unk_1005137F0;
  v10[4] = self;
  v11 = v4;
  v12 = v15;
  v13 = v14;
  v9 = v4;
  dispatch_async(queue, v10);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

- (id)_detector
{
  detector = self->_detector;
  if (!detector)
  {
    v4 = [[ADOpportuneSpeakingModuleEdgeDetector alloc] initWithQueue:self->_queue stateManager:self->_stateManager];
    v5 = self->_detector;
    self->_detector = v4;

    detector = self->_detector;
  }

  return detector;
}

- (ADOpportuneSpeakingVoiceActivityModel)initWithQueue:(id)a3 stateManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ADOpportuneSpeakingVoiceActivityModel;
  v9 = [(ADOpportuneSpeakingVoiceActivityModel *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_stateManager, a4);
    modelIdentifier = v10->_modelIdentifier;
    v10->_modelIdentifier = @"Voice Activity";

    v12 = v10;
  }

  return v10;
}

@end