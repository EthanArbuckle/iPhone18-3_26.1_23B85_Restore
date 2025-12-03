@interface SuggestedRouteConnectedViewController
- (NSString)associatedAppBundleIdentifier;
- (UIColor)keyColor;
- (void)handleCompactOrMinimalViewTapEvent;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info;
@end

@implementation SuggestedRouteConnectedViewController

- (NSString)associatedAppBundleIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration);
  selfCopy = self;
  bundleIdentifierAffinity = [v2 bundleIdentifierAffinity];
  if (bundleIdentifierAffinity)
  {
    v5 = bundleIdentifierAffinity;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (UIColor)keyColor
{
  systemTealColor = [objc_opt_self() systemTealColor];

  return systemTealColor;
}

- (void)handleCompactOrMinimalViewTapEvent
{
  selfCopy = self;
  sub_100026510();
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  selfCopy = self;
  sub_100026AD8();
  sub_1000266E0();
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info
{
  selfCopy = self;
  sub_1000266E0();
}

@end