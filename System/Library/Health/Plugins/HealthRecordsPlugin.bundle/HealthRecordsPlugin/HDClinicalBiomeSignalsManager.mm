@interface HDClinicalBiomeSignalsManager
+ (void)lazilySendEvent:(id)event context:(id)context;
+ (void)sendEvent:(id)event context:(id)context;
@end

@implementation HDClinicalBiomeSignalsManager

+ (void)sendEvent:(id)event context:(id)context
{
  contextCopy = context;
  eventCopy = event;
  if (![eventCopy length])
  {
    sub_9E4CC(a2, self);
  }

  v9 = BiomeLibrary();
  discoverability = [v9 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v12 = [BMDiscoverabilitySignals alloc];
  v13 = +[NSProcessInfo processInfo];
  operatingSystemVersionString = [v13 operatingSystemVersionString];
  v15 = [v12 initWithContentIdentifier:eventCopy context:contextCopy osBuild:operatingSystemVersionString userInfo:0];

  [source sendEvent:v15];
}

+ (void)lazilySendEvent:(id)event context:(id)context
{
  eventCopy = event;
  contextCopy = context;
  v8 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E6E4;
  block[3] = &unk_106720;
  v13 = contextCopy;
  selfCopy = self;
  v12 = eventCopy;
  v9 = contextCopy;
  v10 = eventCopy;
  dispatch_async(v8, block);
}

@end