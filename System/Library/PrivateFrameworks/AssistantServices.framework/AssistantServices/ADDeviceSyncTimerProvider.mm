@interface ADDeviceSyncTimerProvider
- (ADDeviceSyncTimerProvider)initWithDelegate:(id)delegate;
- (void)clockTimerObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to;
- (void)clockTimerObserver:(id)observer timerDidDismiss:(id)dismiss;
- (void)clockTimerObserver:(id)observer timerDidFire:(id)fire;
- (void)getGenerationWithCompletion:(id)completion;
- (void)getIncrementalChangesAfterGeneration:(unint64_t)generation limit:(unint64_t)limit completion:(id)completion;
- (void)getSnapshotWithCompletion:(id)completion;
@end

@implementation ADDeviceSyncTimerProvider

- (void)getSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADDeviceSyncTimerProvider getSnapshotWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (completionCopy)
  {
    v5 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADDeviceSyncTimerProvider getSnapshotWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetching local timer snapshot...", buf, 0xCu);
    }

    v6 = +[SOClockTimerObserver sharedObserver];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D6184;
    v7[3] = &unk_10051A310;
    v8 = completionCopy;
    [v6 getTimerSnapshotWithCompletion:v7];
  }
}

- (void)getIncrementalChangesAfterGeneration:(unint64_t)generation limit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v9 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADDeviceSyncTimerProvider getIncrementalChangesAfterGeneration:limit:completion:]";
    v19 = 2048;
    generationCopy = generation;
    v21 = 2048;
    limitCopy = limit;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s generation = %llu, limit = %llu", buf, 0x20u);
  }

  if (completionCopy)
  {
    v10 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      v15 = v10;
      type = [(ADDeviceSyncTimerProvider *)self type];
      *buf = 136315394;
      v18 = "[ADDeviceSyncTimerProvider getIncrementalChangesAfterGeneration:limit:completion:]";
      v19 = 2112;
      generationCopy = type;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Delta pulling mode is not supported for type %@.", buf, 0x16u);
    }

    v11 = [NSString alloc];
    type2 = [(ADDeviceSyncTimerProvider *)self type];
    v13 = [v11 initWithFormat:@"Delta pulling mode is not supported for type %@.", type2];
    v14 = [AFError errorWithCode:2415 description:v13 underlyingError:0];
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)getGenerationWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADDeviceSyncTimerProvider getGenerationWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (completionCopy)
  {
    v5 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADDeviceSyncTimerProvider getGenerationWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Loading local timer generation...", buf, 0xCu);
    }

    v6 = +[SOClockTimerObserver sharedObserver];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D6880;
    v7[3] = &unk_10051A310;
    v8 = completionCopy;
    [v6 getTimerSnapshotWithCompletion:v7];
  }
}

- (void)clockTimerObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to
{
  observerCopy = observer;
  fromCopy = from;
  toCopy = to;
  v11 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADDeviceSyncTimerProvider clockTimerObserver:snapshotDidUpdateFrom:to:]";
    v15 = 2112;
    v16 = fromCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s fromSnapshot = %@", &v13, 0x16u);
    v11 = AFSiriLogContextDeviceSync;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADDeviceSyncTimerProvider clockTimerObserver:snapshotDidUpdateFrom:to:]";
    v15 = 2112;
    v16 = toCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s toSnapshot = %@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deviceSyncDataProviderDidUpdate:self];
}

- (void)clockTimerObserver:(id)observer timerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADDeviceSyncTimerProvider clockTimerObserver:timerDidDismiss:]";
    v8 = 2112;
    v9 = dismissCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s dismissedTimerID = %@", &v6, 0x16u);
  }
}

- (void)clockTimerObserver:(id)observer timerDidFire:(id)fire
{
  fireCopy = fire;
  v5 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADDeviceSyncTimerProvider clockTimerObserver:timerDidFire:]";
    v8 = 2112;
    v9 = fireCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s firedTimerID = %@", &v6, 0x16u);
  }
}

- (ADDeviceSyncTimerProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ADDeviceSyncTimerProvider;
  v5 = [(ADDeviceSyncTimerProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[SOClockTimerObserver sharedObserver];
    [v7 addListener:v6];
  }

  return v6;
}

@end