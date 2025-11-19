@interface RadioNowPlayingViewController
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3;
- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4;
- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7;
- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)a3;
- (BOOL)nowPlayingViewControllerIsPlaying:(id)a3;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3;
- (_TtC5Media29RadioNowPlayingViewController)initWithBundleIdentifier:(id)a3 dataSource:(id)a4 delegate:(id)a5;
- (_TtC5Media29RadioNowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)backgroundArtForNowPlayingController:(id)a3;
- (id)badgeAnnotationViewForNowPlayingViewController:(id)a3;
- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)a3;
- (id)nowPlayingViewControllerGetPlaybackRate:(id)a3;
- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)a3;
- (int64_t)overrideRenderingModeForNowPlayingViewController:(id)a3;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3;
- (void)hideDialer;
- (void)invalidate;
- (void)nowPlayingService:(id)a3 didUpdateArtwork:(id)a4;
- (void)nowPlayingService:(id)a3 didUpdateCurrentMediaSourceIdentifier:(id)a4;
- (void)nowPlayingServiceDidUpdateSetArtistSongNotification:(id)a3;
- (void)nowPlayingViewController:(id)a3 didSelectButton:(id)a4;
- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5;
- (void)setArtistSongNotification;
- (void)showSoundSettings;
- (void)viewDidLoad;
@end

@implementation RadioNowPlayingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10009C6EC();
}

- (void)invalidate
{
  v2 = self;
  sub_10009C354();
  v3 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
  swift_beginAccess();
  v4 = *&v2->CPUINowPlayingViewController_opaque[v3];
  *&v2->CPUINowPlayingViewController_opaque[v3] = &_swiftEmptySetSingleton;
}

- (id)backgroundArtForNowPlayingController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000A4F20();

  return v6;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3
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

- (BOOL)nowPlayingViewControllerIsPlaying:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000A5390();

  return self & 1;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000A5528();

  return v6;
}

- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
    v7 = Strong;

    v8 = a3;
    v9 = self;

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

- (int64_t)overrideRenderingModeForNowPlayingViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000A5614();

  return v6;
}

- (id)badgeAnnotationViewForNowPlayingViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A571C();
  v7 = v6;

  return v7;
}

- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  LOBYTE(a4) = sub_1000A6540(a4);

  return a4 & 1;
}

- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7
{
  v10 = a3;
  v11 = self;
  LOBYTE(a5) = sub_1000A6744(a4, a5);

  return a5 & 1;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000A6EB8();

  return self & 1;
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000A713C();

  return self & 1;
}

- (id)nowPlayingViewControllerGetPlaybackRate:(id)a3
{
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:1.0];

  return v3;
}

- (void)nowPlayingViewController:(id)a3 didSelectButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000A71F4();
}

- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A7564();

  sub_100005A50(0, &qword_1000EEE78, UIButton_ptr);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_1000A7F38(a4, a5);
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
  v5 = self;

  [(RadioNowPlayingViewController *)v5 dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (void)showSoundSettings
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_100010424(1);
  }
}

- (void)setArtistSongNotification
{
  v2 = self;
  sub_1000A14FC();
}

- (_TtC5Media29RadioNowPlayingViewController)initWithBundleIdentifier:(id)a3 dataSource:(id)a4 delegate:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1000A1694(v7, v9, a4, a5);
}

- (_TtC5Media29RadioNowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000A18A0(v5, v7, a4);
}

- (void)nowPlayingService:(id)a3 didUpdateCurrentMediaSourceIdentifier:(id)a4
{
  v4 = self;
  sub_10009CA74();
}

- (void)nowPlayingService:(id)a3 didUpdateArtwork:(id)a4
{
  v6 = a4;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100072620(v4, v5);
}

- (void)nowPlayingServiceDidUpdateSetArtistSongNotification:(id)a3
{
  v3 = self;
  sub_10009CA74();
}

@end