@interface CarPlayNowPlayingController
- (void)dealloc;
- (void)nowPlayingTemplateAlbumArtistButtonTapped:(id)tapped;
- (void)nowPlayingTemplateUpNextButtonTapped:(id)tapped;
@end

@implementation CarPlayNowPlayingController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
  selfCopy = self;
  [v4 removeObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(CarPlayNowPlayingController *)&v6 dealloc];
}

- (void)nowPlayingTemplateAlbumArtistButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1002E82D0();
}

- (void)nowPlayingTemplateUpNextButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1002E8D9C();
}

@end