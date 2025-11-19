@interface SuggestedRouteBaseBannerViewController
- (_TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController)initWithCoder:(id)a3;
- (void)actionButtonTappedWithSender:(id)a3;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5;
@end

@implementation SuggestedRouteBaseBannerViewController

- (_TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController)initWithCoder:(id)a3
{
  *&self->_TtC13MediaRemoteUI24BannerBaseViewController_opaque[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000257A8();
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5
{
  v5 = *&self->_TtC13MediaRemoteUI24BannerBaseViewController_opaque[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_controller];
  v6 = self;
  v7 = [v5 metadataController];
  v8 = [v7 artwork];

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = static Published.subscript.modify();
  v11 = *(v10 + 104);
  *(v10 + 104) = v8;

  v9(&v12, 0);
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  v5 = self;
  sub_100024C98();
}

- (void)actionButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100025968();
}

@end