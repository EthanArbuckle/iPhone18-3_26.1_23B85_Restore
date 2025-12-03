@interface RadioNowPlayingViewController
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller;
- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active;
- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted;
- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)art;
- (BOOL)nowPlayingViewControllerIsPlaying:(id)playing;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive;
- (_TtC5Media29RadioNowPlayingViewController)initWithBundleIdentifier:(id)identifier dataSource:(id)source delegate:(id)delegate;
- (_TtC5Media29RadioNowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)backgroundArtForNowPlayingController:(id)controller;
- (id)badgeAnnotationViewForNowPlayingViewController:(id)controller;
- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)controller;
- (id)nowPlayingViewControllerGetPlaybackRate:(id)rate;
- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)controller;
- (int64_t)overrideRenderingModeForNowPlayingViewController:(id)controller;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller;
- (void)hideDialer;
- (void)invalidate;
- (void)nowPlayingService:(id)service didUpdateArtwork:(id)artwork;
- (void)nowPlayingService:(id)service didUpdateCurrentMediaSourceIdentifier:(id)identifier;
- (void)nowPlayingServiceDidUpdateSetArtistSongNotification:(id)notification;
- (void)nowPlayingViewController:(id)controller didSelectButton:(id)button;
- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state;
- (void)setArtistSongNotification;
- (void)showSoundSettings;
- (void)viewDidLoad;
@end

@implementation RadioNowPlayingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10009C6EC();
}

- (void)invalidate
{
  selfCopy = self;
  sub_10009C354();
  v3 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
  swift_beginAccess();
  v4 = *&selfCopy->CPUINowPlayingViewController_opaque[v3];
  *&selfCopy->CPUINowPlayingViewController_opaque[v3] = &_swiftEmptySetSingleton;
}

- (id)backgroundArtForNowPlayingController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1000A4F20();

  return v6;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller
{
  retstr->var4 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *&retstr->var5 = _D0;
  *&retstr->var7 = 1;
  retstr->var9 = 0;
  return self;
}

- (BOOL)nowPlayingViewControllerIsPlaying:(id)playing
{
  playingCopy = playing;
  selfCopy = self;
  LOBYTE(self) = sub_1000A5390();

  return self & 1;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1000A5528();

  return v6;
}

- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
    v7 = Strong;

    controllerCopy = controller;
    selfCopy = self;

    if (v6)
    {
      sub_10006957C();
      v11 = v10;

      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();

        Strong = v12;
        goto LABEL_7;
      }
    }

    else
    {
    }

    Strong = 0;
  }

LABEL_7:

  return Strong;
}

- (int64_t)overrideRenderingModeForNowPlayingViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1000A5614();

  return v6;
}

- (id)badgeAnnotationViewForNowPlayingViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000A571C();
  v7 = v6;

  return v7;
}

- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(active) = sub_1000A6540(active);

  return active & 1;
}

- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(image) = sub_1000A6744(button, image);

  return image & 1;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)art
{
  artCopy = art;
  selfCopy = self;
  LOBYTE(self) = sub_1000A6EB8();

  return self & 1;
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive
{
  driveCopy = drive;
  selfCopy = self;
  LOBYTE(self) = sub_1000A713C();

  return self & 1;
}

- (id)nowPlayingViewControllerGetPlaybackRate:(id)rate
{
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:1.0];

  return v3;
}

- (void)nowPlayingViewController:(id)controller didSelectButton:(id)button
{
  controllerCopy = controller;
  buttonCopy = button;
  selfCopy = self;
  sub_1000A71F4();
}

- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000A7564();

  sub_100005A50(0, &qword_1000EEE78, UIButton_ptr);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000A7F38(action, state);
}

- (void)hideDialer
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v6[4] = sub_1000A9170;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100064D70;
  v6[3] = &unk_1000E2AF0;
  v4 = _Block_copy(v6);
  selfCopy = self;

  [(RadioNowPlayingViewController *)selfCopy dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (void)showSoundSettings
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_100010424(1);
  }
}

- (void)setArtistSongNotification
{
  selfCopy = self;
  sub_1000A14FC();
}

- (_TtC5Media29RadioNowPlayingViewController)initWithBundleIdentifier:(id)identifier dataSource:(id)source delegate:(id)delegate
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1000A1694(v7, v9, source, delegate);
}

- (_TtC5Media29RadioNowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000A18A0(v5, v7, bundle);
}

- (void)nowPlayingService:(id)service didUpdateCurrentMediaSourceIdentifier:(id)identifier
{
  selfCopy = self;
  sub_10009CA74();
}

- (void)nowPlayingService:(id)service didUpdateArtwork:(id)artwork
{
  artworkCopy = artwork;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100072620(v4, v5);
}

- (void)nowPlayingServiceDidUpdateSetArtistSongNotification:(id)notification
{
  selfCopy = self;
  sub_10009CA74();
}

@end