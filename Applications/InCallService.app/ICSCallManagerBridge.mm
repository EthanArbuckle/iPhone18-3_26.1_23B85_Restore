@interface ICSCallManagerBridge
- (BOOL)isInBackground;
- (PHAudioCallViewController)audioCallViewController;
- (TUCall)presentedFullScreenedCall;
- (UINavigationController)audioCallNavController;
- (void)cleanUp;
- (void)createAudioCallViewControllerWithCall:(id)call;
- (void)prioritizeCall:(id)call;
- (void)setIsInBackground:(BOOL)background;
- (void)updateWithCall:(id)call;
@end

@implementation ICSCallManagerBridge

- (void)updateWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_100017014();
}

- (void)createAudioCallViewControllerWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10000E4A0(callCopy);
}

- (PHAudioCallViewController)audioCallViewController
{
  selfCopy = self;
  v3 = sub_10000CE48();

  return v3;
}

- (UINavigationController)audioCallNavController
{
  selfCopy = self;
  v3 = sub_10000C8E8();

  return v3;
}

- (void)prioritizeCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_100034CA0();
}

- (TUCall)presentedFullScreenedCall
{
  selfCopy = self;
  v3 = sub_10024296C();

  return v3;
}

- (BOOL)isInBackground
{
  selfCopy = self;
  sub_100242A88();
  v4 = v3;

  return v4 & 1;
}

- (void)setIsInBackground:(BOOL)background
{
  selfCopy = self;
  sub_100242B28();
}

- (void)cleanUp
{
  selfCopy = self;
  sub_100242ECC();
}

@end