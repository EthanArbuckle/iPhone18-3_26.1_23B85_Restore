@interface CarPlayNowPlayingController
- (void)dealloc;
- (void)nowPlayingTemplateAlbumArtistButtonTapped:(id)a3;
- (void)nowPlayingTemplateUpNextButtonTapped:(id)a3;
@end

@implementation CarPlayNowPlayingController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
  v5 = self;
  [v4 removeObserver:v5];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(CarPlayNowPlayingController *)&v6 dealloc];
}

- (void)nowPlayingTemplateAlbumArtistButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002E82D0();
}

- (void)nowPlayingTemplateUpNextButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002E8D9C();
}

@end