@interface LockScreenCoordinator
+ (_TtC13MediaRemoteUI21LockScreenCoordinator)shared;
- (BOOL)canBeExpanded;
- (BOOL)handlePlatterTap;
- (BOOL)isCurrentOrientationSupported;
- (void)artworkView:(id)view didChangeArtworkImage:(id)image;
- (void)dealloc;
- (void)handleBackgroundTapAt:(CGPoint)at;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork;
- (void)platterDidUpdatePreferredContentSize:(CGSize)size;
- (void)platterViewSizeWillTransitionTo:(CGSize)to;
- (void)setBackdropScene:(id)scene;
@end

@implementation LockScreenCoordinator

+ (_TtC13MediaRemoteUI21LockScreenCoordinator)shared
{
  if (qword_10006FFA0 != -1)
  {
    swift_once();
  }

  v3 = qword_100073810;

  return v3;
}

- (BOOL)isCurrentOrientationSupported
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 1;
  }

  sharedApplication = [objc_opt_self() sharedApplication];
  activeInterfaceOrientation = [sharedApplication activeInterfaceOrientation];

  return sub_10001D540(activeInterfaceOrientation);
}

- (BOOL)canBeExpanded
{
  selfCopy = self;
  v3 = sub_10002B3A0();

  return v3 & 1;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_wallpaperService);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for LockScreenCoordinator();
  [(LockScreenCoordinator *)&v4 dealloc];
}

- (void)platterDidUpdatePreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_10002C180(width, height);
}

- (void)platterViewSizeWillTransitionTo:(CGSize)to
{
  width = to.width;
  selfCopy = self;
  sub_10002C288(width);
}

- (void)handleBackgroundTapAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  selfCopy = self;
  sub_10002C38C(x, y);
}

- (BOOL)handlePlatterTap
{
  selfCopy = self;
  v3 = sub_10002C658();

  return v3 & 1;
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork) = artwork;
  artworkCopy = artwork;
  selfCopy = self;

  sub_10002B204();
}

- (void)artworkView:(id)view didChangeArtworkImage:(id)image
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
  if (v4)
  {
    selfCopy = self;
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 invalidateAllTimelinesForReason:v6];
  }
}

- (void)setBackdropScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  sub_10002EABC(sceneCopy);
}

@end