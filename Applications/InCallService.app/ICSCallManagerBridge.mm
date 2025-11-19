@interface ICSCallManagerBridge
- (BOOL)isInBackground;
- (PHAudioCallViewController)audioCallViewController;
- (TUCall)presentedFullScreenedCall;
- (UINavigationController)audioCallNavController;
- (void)cleanUp;
- (void)createAudioCallViewControllerWithCall:(id)a3;
- (void)prioritizeCall:(id)a3;
- (void)setIsInBackground:(BOOL)a3;
- (void)updateWithCall:(id)a3;
@end

@implementation ICSCallManagerBridge

- (void)updateWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017014();
}

- (void)createAudioCallViewControllerWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000E4A0(v4);
}

- (PHAudioCallViewController)audioCallViewController
{
  v2 = self;
  v3 = sub_10000CE48();

  return v3;
}

- (UINavigationController)audioCallNavController
{
  v2 = self;
  v3 = sub_10000C8E8();

  return v3;
}

- (void)prioritizeCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100034CA0();
}

- (TUCall)presentedFullScreenedCall
{
  v2 = self;
  v3 = sub_10024296C();

  return v3;
}

- (BOOL)isInBackground
{
  v2 = self;
  sub_100242A88();
  v4 = v3;

  return v4 & 1;
}

- (void)setIsInBackground:(BOOL)a3
{
  v3 = self;
  sub_100242B28();
}

- (void)cleanUp
{
  v2 = self;
  sub_100242ECC();
}

@end