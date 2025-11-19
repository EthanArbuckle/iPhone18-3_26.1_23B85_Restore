@interface ADSessionRemoteServerFull
- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9;
@end

@implementation ADSessionRemoteServerFull

- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9
{
  v15.receiver = self;
  v15.super_class = ADSessionRemoteServerFull;
  v9 = [(ADSessionRemoteServer *)&v15 initOnQueue:a3 withAccount:a4 languageCode:a5 connectionMode:a6 sharedUserIdentifier:a7 loggingSharedUserIdentifier:a8 instanceContext:a9];
  v10 = v9;
  if (v9)
  {
    [v9 setSessionType:0];
    v11 = [NSString alloc];
    v12 = [NSNumber numberWithUnsignedInt:arc4random()];
    v13 = [v11 initWithFormat:@"%@.%@", &off_100533878, v12];
    [v10 _setSessionId:v13];
  }

  return v10;
}

@end