@interface HDClinicalBiomeSignalsManager
+ (void)lazilySendEvent:(id)a3 context:(id)a4;
+ (void)sendEvent:(id)a3 context:(id)a4;
@end

@implementation HDClinicalBiomeSignalsManager

+ (void)sendEvent:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (![v8 length])
  {
    sub_9E4CC(a2, a1);
  }

  v9 = BiomeLibrary();
  v10 = [v9 Discoverability];
  v16 = [v10 Signals];

  v11 = [v16 source];
  v12 = [BMDiscoverabilitySignals alloc];
  v13 = +[NSProcessInfo processInfo];
  v14 = [v13 operatingSystemVersionString];
  v15 = [v12 initWithContentIdentifier:v8 context:v7 osBuild:v14 userInfo:0];

  [v11 sendEvent:v15];
}

+ (void)lazilySendEvent:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E6E4;
  block[3] = &unk_106720;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end