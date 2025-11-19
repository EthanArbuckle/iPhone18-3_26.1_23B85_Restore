@interface LockScreenCoordinator
+ (_TtC13MediaRemoteUI21LockScreenCoordinator)shared;
- (BOOL)canBeExpanded;
- (BOOL)handlePlatterTap;
- (BOOL)isCurrentOrientationSupported;
- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4;
- (void)dealloc;
- (void)handleBackgroundTapAt:(CGPoint)a3;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5;
- (void)platterDidUpdatePreferredContentSize:(CGSize)a3;
- (void)platterViewSizeWillTransitionTo:(CGSize)a3;
- (void)setBackdropScene:(id)a3;
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
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 1;
  }

  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 activeInterfaceOrientation];

  return sub_10001D540(v6);
}

- (BOOL)canBeExpanded
{
  v2 = self;
  v3 = sub_10002B3A0();

  return v3 & 1;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_wallpaperService);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for LockScreenCoordinator();
  [(LockScreenCoordinator *)&v4 dealloc];
}

- (void)platterDidUpdatePreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_10002C180(width, height);
}

- (void)platterViewSizeWillTransitionTo:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_10002C288(width);
}

- (void)handleBackgroundTapAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_10002C38C(x, y);
}

- (BOOL)handlePlatterTap
{
  v2 = self;
  v3 = sub_10002C658();

  return v3 & 1;
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork) = a5;
  v7 = a5;
  v8 = self;

  sub_10002B204();
}

- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
  if (v4)
  {
    v7 = self;
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 invalidateAllTimelinesForReason:v6];
  }
}

- (void)setBackdropScene:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002EABC(v4);
}

@end