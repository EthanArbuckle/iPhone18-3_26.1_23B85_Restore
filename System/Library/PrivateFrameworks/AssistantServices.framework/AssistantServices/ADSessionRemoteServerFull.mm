@interface ADSessionRemoteServerFull
- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context;
@end

@implementation ADSessionRemoteServerFull

- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context
{
  v15.receiver = self;
  v15.super_class = ADSessionRemoteServerFull;
  v9 = [(ADSessionRemoteServer *)&v15 initOnQueue:queue withAccount:account languageCode:code connectionMode:mode sharedUserIdentifier:identifier loggingSharedUserIdentifier:userIdentifier instanceContext:context];
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