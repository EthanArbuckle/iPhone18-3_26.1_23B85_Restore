@interface SHHapticsServerURLBuilder
- (void)loadHapticsEndpointForClientIdentifier:(id)a3 callback:(id)a4;
@end

@implementation SHHapticsServerURLBuilder

- (void)loadHapticsEndpointForClientIdentifier:(id)a3 callback:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SHRemoteConfiguration sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000402A0;
  v10[3] = &unk_10007E028;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  [v7 hapticsWithCompletion:v10];
}

@end