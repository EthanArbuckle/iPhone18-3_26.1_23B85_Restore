@interface SuggestedRouteBaseBannerViewController
- (_TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController)initWithCoder:(id)coder;
- (void)actionButtonTappedWithSender:(id)sender;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info;
@end

@implementation SuggestedRouteBaseBannerViewController

- (_TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController)initWithCoder:(id)coder
{
  *&self->_TtC13MediaRemoteUI24BannerBaseViewController_opaque[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  controllerCopy = controller;
  endpointControllerCopy = endpointController;
  routeCopy = route;
  selfCopy = self;
  sub_1000257A8();
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork
{
  v5 = *&self->_TtC13MediaRemoteUI24BannerBaseViewController_opaque[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_controller];
  selfCopy = self;
  metadataController = [v5 metadataController];
  artwork = [metadataController artwork];

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = static Published.subscript.modify();
  v11 = *(v10 + 104);
  *(v10 + 104) = artwork;

  v9(&v12, 0);
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info
{
  selfCopy = self;
  sub_100024C98();
}

- (void)actionButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100025968();
}

@end