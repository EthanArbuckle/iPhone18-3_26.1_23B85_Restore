@interface AppController
- (BOOL)isMyPodcastsTabSelected;
- (BOOL)isUnplayedTabSelected;
- (UITabBarController)tabBarController;
- (UIViewController)rootViewController;
- (_TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController)init;
- (id)selectSearchTabAndFocusSearchField;
- (void)dismissMigration;
- (void)dismissNowPlayingAnimated:(BOOL)animated;
- (void)dismissNowPlayingAnimated:(BOOL)animated completion:(id)completion;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)presentLibraryPicker:(id)picker;
- (void)presentMigration;
- (void)presentNowPlayingAnimated:(BOOL)animated;
- (void)presentPodcast:(id)podcast episode:(id)episode podcastTab:(unint64_t)tab startPlayback:(BOOL)playback animated:(BOOL)animated;
- (void)presentPodcast:(id)podcast episodeUuid:(id)uuid episodeNotAvailable:(BOOL)available podcastTab:(unint64_t)tab startPlayback:(BOOL)playback animated:(BOOL)animated;
- (void)presentStation:(id)station new:(BOOL)new;
- (void)selectFeaturedTabAndPopToRoot:(BOOL)root animated:(BOOL)animated completion:(id)completion;
- (void)selectMyPodcastsTabAndPopToRoot:(BOOL)root animated:(BOOL)animated completion:(id)completion;
- (void)selectUnplayedTabAndPopToRoot:(BOOL)root animated:(BOOL)animated completion:(id)completion;
- (void)showDownloadsControllerAnimated:(BOOL)animated;
- (void)showSearchControllerWithSearchText:(id)text;
- (void)switchToLibrary;
@end

@implementation AppController

- (void)switchToLibrary
{
  selfCopy = self;
  sub_100055150();
}

- (UIViewController)rootViewController
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v4 = objc_opt_self();
  selfCopy = self;
  v6 = v3;
  sharedApplication = [v4 sharedApplication];
  delegate = [sharedApplication delegate];

  if (delegate)
  {
    if ([delegate respondsToSelector:"window"])
    {
      window = [delegate window];
    }

    else
    {
      window = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    window = 0;
  }

  rootViewController = [window rootViewController];

  return rootViewController;
}

- (UITabBarController)tabBarController
{
  selfCopy = self;
  v3 = sub_100309D80();

  return v3;
}

- (void)showSearchControllerWithSearchText:(id)text
{
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_10030D400();
}

- (void)showDownloadsControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_10030D638();
}

- (void)presentStation:(id)station new:(BOOL)new
{
  stationCopy = station;
  selfCopy = self;
  sub_10030A104(stationCopy, new);
}

- (void)presentPodcast:(id)podcast episode:(id)episode podcastTab:(unint64_t)tab startPlayback:(BOOL)playback animated:(BOOL)animated
{
  playbackCopy = playback;
  podcastCopy = podcast;
  episodeCopy = episode;
  selfCopy = self;
  sub_10030D9F8(podcastCopy, episode, playbackCopy);
}

- (void)presentPodcast:(id)podcast episodeUuid:(id)uuid episodeNotAvailable:(BOOL)available podcastTab:(unint64_t)tab startPlayback:(BOOL)playback animated:(BOOL)animated
{
  playbackCopy = playback;
  availableCopy = available;
  if (uuid)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  podcastCopy = podcast;
  selfCopy = self;
  sub_10030E15C(podcastCopy, v12, v14, availableCopy, playbackCopy);
}

- (BOOL)isUnplayedTabSelected
{
  selfCopy = self;
  NavigationTab.intValue.getter();
  sub_10030E928();
  v4 = v3;

  return v4 & 1;
}

- (void)selectUnplayedTabAndPopToRoot:(BOOL)root animated:(BOOL)animated completion:(id)completion
{
  rootCopy = root;
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10030F41C;
  }

  selfCopy = self;
  sub_10030EC70(rootCopy, v7);
  sub_1000112B4(v7);
}

- (BOOL)isMyPodcastsTabSelected
{
  sub_100004428(self + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appTraits, v10);
  v3 = v11;
  v4 = v12;
  sub_1000044A0(v10, v11);
  v5 = *(v4 + 16);
  selfCopy = self;
  v7 = v5(v3, v4);
  NavigationTab.intValue.getter();
  sub_10002ACE0(v7);
  sub_100004590(v10);
  sub_10030E928();
  LOBYTE(v7) = v8;

  return v7 & 1;
}

- (void)selectMyPodcastsTabAndPopToRoot:(BOOL)root animated:(BOOL)animated completion:(id)completion
{
  rootCopy = root;
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10030F41C;
  }

  selfCopy = self;
  sub_10030EAA0(rootCopy, v7);
  sub_1000112B4(v7);
}

- (void)selectFeaturedTabAndPopToRoot:(BOOL)root animated:(BOOL)animated completion:(id)completion
{
  rootCopy = root;
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10030F41C;
  }

  selfCopy = self;
  sub_10030EC70(rootCopy, v7);
  sub_1000112B4(v7);
}

- (void)presentNowPlayingAnimated:(BOOL)animated
{
  sub_100168088(&unk_10057AB00);
  selfCopy = self;

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(v5, v5[3]);
  dispatch thunk of EpisodeControllerProtocol.presentNowPlaying(animated:)();
  sub_100004590(v5);
}

- (void)dismissNowPlayingAnimated:(BOOL)animated
{
  sub_100168088(&unk_10057AB00);
  selfCopy = self;

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(v5, v5[3]);
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  sub_100004590(v5);
}

- (void)dismissNowPlayingAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_10019C604;
  }

  sub_100168088(&unk_10057AB00);
  selfCopy = self;

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(v7, v7[3]);
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  sub_1000112B4(v5);
  sub_100004590(v7);
}

- (void)presentMigration
{
  selfCopy = self;
  sub_10030B1AC();
}

- (void)dismissMigration
{
  selfCopy = self;
  sub_10030BCF8();
}

- (void)presentLibraryPicker:(id)picker
{
  v4 = _Block_copy(picker);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10030C448(sub_10030F3FC, v5);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_10030EFEC(v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
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
    sharedApplication = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_10016A31C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10000E584(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [sharedApplication openURL:v11 options:isa completionHandler:0];

    return (*(v1 + 8))(v5, v0);
  }

  return result;
}

@end