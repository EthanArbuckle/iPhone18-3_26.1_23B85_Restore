@interface AppController
- (BOOL)isMyPodcastsTabSelected;
- (BOOL)isUnplayedTabSelected;
- (UITabBarController)tabBarController;
- (UIViewController)rootViewController;
- (_TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController)init;
- (id)selectSearchTabAndFocusSearchField;
- (void)dismissMigration;
- (void)dismissNowPlayingAnimated:(BOOL)a3;
- (void)dismissNowPlayingAnimated:(BOOL)a3 completion:(id)a4;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)presentLibraryPicker:(id)a3;
- (void)presentMigration;
- (void)presentNowPlayingAnimated:(BOOL)a3;
- (void)presentPodcast:(id)a3 episode:(id)a4 podcastTab:(unint64_t)a5 startPlayback:(BOOL)a6 animated:(BOOL)a7;
- (void)presentPodcast:(id)a3 episodeUuid:(id)a4 episodeNotAvailable:(BOOL)a5 podcastTab:(unint64_t)a6 startPlayback:(BOOL)a7 animated:(BOOL)a8;
- (void)presentStation:(id)a3 new:(BOOL)a4;
- (void)selectFeaturedTabAndPopToRoot:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)selectMyPodcastsTabAndPopToRoot:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)selectUnplayedTabAndPopToRoot:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)showDownloadsControllerAnimated:(BOOL)a3;
- (void)showSearchControllerWithSearchText:(id)a3;
- (void)switchToLibrary;
@end

@implementation AppController

- (void)switchToLibrary
{
  v1 = a1;
  sub_100055150();
}

- (UIViewController)rootViewController
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v4 = objc_opt_self();
  v5 = self;
  v6 = v3;
  v7 = [v4 sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    if ([v8 respondsToSelector:"window"])
    {
      v9 = [v8 window];
    }

    else
    {
      v9 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 rootViewController];

  return v10;
}

- (UITabBarController)tabBarController
{
  v2 = self;
  v3 = sub_100309D80();

  return v3;
}

- (void)showSearchControllerWithSearchText:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = self;
  sub_10030D400();
}

- (void)showDownloadsControllerAnimated:(BOOL)a3
{
  v3 = self;
  sub_10030D638();
}

- (void)presentStation:(id)a3 new:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10030A104(v6, a4);
}

- (void)presentPodcast:(id)a3 episode:(id)a4 podcastTab:(unint64_t)a5 startPlayback:(BOOL)a6 animated:(BOOL)a7
{
  v7 = a6;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_10030D9F8(v10, a4, v7);
}

- (void)presentPodcast:(id)a3 episodeUuid:(id)a4 episodeNotAvailable:(BOOL)a5 podcastTab:(unint64_t)a6 startPlayback:(BOOL)a7 animated:(BOOL)a8
{
  v8 = a7;
  v9 = a5;
  if (a4)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a3;
  v16 = self;
  sub_10030E15C(v15, v12, v14, v9, v8);
}

- (BOOL)isUnplayedTabSelected
{
  v2 = self;
  NavigationTab.intValue.getter();
  sub_10030E928();
  v4 = v3;

  return v4 & 1;
}

- (void)selectUnplayedTabAndPopToRoot:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a3;
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10030F41C;
  }

  v8 = self;
  sub_10030EC70(v5, v7);
  sub_1000112B4(v7);
}

- (BOOL)isMyPodcastsTabSelected
{
  sub_100004428(self + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appTraits, v10);
  v3 = v11;
  v4 = v12;
  sub_1000044A0(v10, v11);
  v5 = *(v4 + 16);
  v6 = self;
  v7 = v5(v3, v4);
  NavigationTab.intValue.getter();
  sub_10002ACE0(v7);
  sub_100004590(v10);
  sub_10030E928();
  LOBYTE(v7) = v8;

  return v7 & 1;
}

- (void)selectMyPodcastsTabAndPopToRoot:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a3;
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10030F41C;
  }

  v8 = self;
  sub_10030EAA0(v5, v7);
  sub_1000112B4(v7);
}

- (void)selectFeaturedTabAndPopToRoot:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a3;
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10030F41C;
  }

  v8 = self;
  sub_10030EC70(v5, v7);
  sub_1000112B4(v7);
}

- (void)presentNowPlayingAnimated:(BOOL)a3
{
  sub_100168088(&unk_10057AB00);
  v4 = self;

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(v5, v5[3]);
  dispatch thunk of EpisodeControllerProtocol.presentNowPlaying(animated:)();
  sub_100004590(v5);
}

- (void)dismissNowPlayingAnimated:(BOOL)a3
{
  sub_100168088(&unk_10057AB00);
  v4 = self;

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(v5, v5[3]);
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  sub_100004590(v5);
}

- (void)dismissNowPlayingAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_10019C604;
  }

  sub_100168088(&unk_10057AB00);
  v6 = self;

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(v7, v7[3]);
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  sub_1000112B4(v5);
  sub_100004590(v7);
}

- (void)presentMigration
{
  v2 = self;
  sub_10030B1AC();
}

- (void)dismissMigration
{
  v2 = self;
  sub_10030BCF8();
}

- (void)presentLibraryPicker:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10030C448(sub_10030F3FC, v5);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10030EFEC(v6);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10030F298();
}

- (_TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)selectSearchTabAndFocusSearchField
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  result = [objc_opt_self() searchUrlForSearchText:0];
  if (result)
  {
    v7 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v5, v3, v0);
    v8 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_10016A31C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10000E584(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 openURL:v11 options:isa completionHandler:0];

    return (*(v1 + 8))(v5, v0);
  }

  return result;
}

@end