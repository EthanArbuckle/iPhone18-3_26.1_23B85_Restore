@interface SuggestedRouteConnectedViewController
- (NSString)associatedAppBundleIdentifier;
- (UIColor)keyColor;
- (void)handleCompactOrMinimalViewTapEvent;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5;
@end

@implementation SuggestedRouteConnectedViewController

- (NSString)associatedAppBundleIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration);
  v3 = self;
  v4 = [v2 bundleIdentifierAffinity];
  if (v4)
  {
    v5 = v4;
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
  v2 = [objc_opt_self() systemTealColor];

  return v2;
}

- (void)handleCompactOrMinimalViewTapEvent
{
  v2 = self;
  sub_100026510();
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  v5 = self;
  sub_100026AD8();
  sub_1000266E0();
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  v5 = self;
  sub_1000266E0();
}

@end