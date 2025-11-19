@interface MTMediaContentSourceiOSMusicLibrary
+ (id)sharedInstance;
- (MTMediaContentSourceiOSMusicLibrary)init;
- (void)determineiTunesMatchEnabledWithCompletion:(id)a3;
@end

@implementation MTMediaContentSourceiOSMusicLibrary

+ (id)sharedInstance
{
  if (qword_100583D60 != -1)
  {
    sub_100008460();
  }

  v3 = qword_100583D68;

  return v3;
}

- (MTMediaContentSourceiOSMusicLibrary)init
{
  v7.receiver = self;
  v7.super_class = MTMediaContentSourceiOSMusicLibrary;
  v2 = [(MTMediaContentSourceiOSMusicLibrary *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -15);
    v4 = dispatch_queue_create("MTMediaContentSourceiOSMusicLibrary", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

- (void)determineiTunesMatchEnabledWithCompletion:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100142D38;
  v10[3] = &unk_1004DDB00;
  v11 = a3;
  v4 = v11;
  v5 = objc_retainBlock(v10);
  v6 = [(MTMediaContentSourceiOSMusicLibrary *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142D50;
  block[3] = &unk_1004D8520;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

@end