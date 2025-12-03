@interface SHHapticsServerURLBuilder
- (void)loadHapticsEndpointForClientIdentifier:(id)identifier callback:(id)callback;
@end

@implementation SHHapticsServerURLBuilder

- (void)loadHapticsEndpointForClientIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v7 = +[SHRemoteConfiguration sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000402A0;
  v10[3] = &unk_10007E028;
  v11 = identifierCopy;
  v12 = callbackCopy;
  v8 = identifierCopy;
  v9 = callbackCopy;
  [v7 hapticsWithCompletion:v10];
}

@end