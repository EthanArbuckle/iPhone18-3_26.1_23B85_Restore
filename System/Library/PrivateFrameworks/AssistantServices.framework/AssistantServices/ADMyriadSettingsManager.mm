@interface ADMyriadSettingsManager
+ (id)sharedSettingsManager;
- (NSString)treatmentId;
- (id)_init;
- (void)_setupTrialRefresh;
- (void)getSidekickBoostsFileWithCompletion:(id)completion;
- (void)getTrialEnables:(id)enables doubleFactors:(id)factors withCompletion:(id)completion;
- (void)refreshTrial;
- (void)setTrialTreatmentMultiDeviceConsensus:(BOOL)consensus;
@end

@implementation ADMyriadSettingsManager

- (void)getSidekickBoostsFileWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100268954;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)getTrialEnables:(id)enables doubleFactors:(id)factors withCompletion:(id)completion
{
  enablesCopy = enables;
  factorsCopy = factors;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100268E08;
  v15[3] = &unk_10051E0D8;
  v16 = factorsCopy;
  v17 = enablesCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = enablesCopy;
  v13 = factorsCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

- (void)refreshTrial
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100269560;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setupTrialRefresh
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADMyriadSettingsManager _setupTrialRefresh]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Registering update handler", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002697CC;
  v6[3] = &unk_10051D478;
  objc_copyWeak(&v7, buf);
  v4 = objc_retainBlock(v6);
  v5 = [(TRIClient *)self->_trialClient addUpdateHandlerForNamespaceName:@"MYRIAD_BOOSTS" queue:self->_queue usingBlock:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)setTrialTreatmentMultiDeviceConsensus:(BOOL)consensus
{
  consensusCopy = consensus;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    trialTreatmentMultiDeviceConsensus = self->_trialTreatmentMultiDeviceConsensus;
    v7 = 136315650;
    v8 = "[ADMyriadSettingsManager setTrialTreatmentMultiDeviceConsensus:]";
    v9 = 1024;
    v10 = trialTreatmentMultiDeviceConsensus;
    v11 = 1024;
    v12 = consensusCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Consensus Updated From: %d To: %d", &v7, 0x18u);
  }

  if (self->_trialTreatmentMultiDeviceConsensus != consensusCopy)
  {
    self->_trialTreatmentMultiDeviceConsensus = consensusCopy;
    [(ADMyriadSettingsManager *)self refreshTrial];
  }
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = ADMyriadSettingsManager;
  v2 = [(ADMyriadSettingsManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADMyriadSettingsManager", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [TRIClient clientWithIdentifier:294];
    trialClient = v2->_trialClient;
    v2->_trialClient = v6;

    v2->_trialTreatmentMultiDeviceConsensus = 0;
    if (+[AFFeatureFlags isSCDATrialEnabled])
    {
      [(ADMyriadSettingsManager *)v2 _setupTrialRefresh];
    }
  }

  return v2;
}

- (NSString)treatmentId
{
  v2 = [(TRIClient *)self->_trialClient treatmentIdWithNamespaceName:@"MYRIAD_BOOSTS"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_10051F508;
  }

  v5 = v4;

  return &v4->isa;
}

+ (id)sharedSettingsManager
{
  if (qword_100590720 != -1)
  {
    dispatch_once(&qword_100590720, &stru_100518188);
  }

  v3 = qword_100590718;

  return v3;
}

@end