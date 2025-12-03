@interface GlobalActionController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController)init;
- (uint64_t)presentPreferences;
- (void)addPodcastAction;
- (void)alternatePlayPause;
- (void)cancelVolumeEvent;
- (void)dealloc;
- (void)decreaseVolume;
- (void)didChangeStoreAccount:(id)account;
- (void)focusSearchField;
- (void)goToCurrentShow;
- (void)increaseVolume;
- (void)jumpBackwards;
- (void)jumpForwards;
- (void)mainWindowDidChangeKey:(id)key;
- (void)manageAccount;
- (void)manageFavoriteCategories;
- (void)menuBarNewStation;
- (void)nextTrack;
- (void)perShowSettingsDidChange:(id)change;
- (void)playPause;
- (void)previousTrack;
- (void)refreshCommand;
- (void)reportAConcern;
- (void)resetIdentifier;
- (void)setFasterPlaybackSpeed;
- (void)setPlaybackSpeed:(id)speed;
- (void)setSlowerPlaybackSpeed;
- (void)showMainWindow;
- (void)showNotificationSettings;
- (void)showPrivacyInfo;
- (void)toggleCustomShowSettings:(id)settings;
- (void)validateCommand:(id)command;
@end

@implementation GlobalActionController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(GlobalActionController *)&v7 dealloc];
}

- (void)addPodcastAction
{
  v3 = type metadata accessor for TextFieldAlertAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  static TextFieldAlertAction.followShowByURL(initialText:then:)();
  memset(v8, 0, sizeof(v8));
  sub_100251430(v6, v8, 0, selfCopy, &type metadata accessor for TextFieldAlertAction, &qword_100579A18, &type metadata accessor for TextFieldAlertAction);

  sub_100009104(v8, &unk_1005783D0);
  (*(v4 + 8))(v6, v3);
}

- (void)focusSearchField
{
  selfCopy = self;
  sub_10024A654();
}

- (void)refreshCommand
{
  swift_getObjectType();
  selfCopy = self;
  dispatch thunk of LibraryDataProviderProtocol.libraryActionController.getter();
  sub_1000044A0(v4, v4[3]);
  dispatch thunk of LibraryActionControllerProtocol.updateAllFeeds()();

  sub_100004590(v4);
  [*(&selfCopy->super.super.isa + OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_syncController) syncEverything];
}

- (void)goToCurrentShow
{
  selfCopy = self;
  sub_10024B104();
}

- (void)showNotificationSettings
{
  selfCopy = self;
  sub_10024B864();
}

- (void)playPause
{
  v3 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  selfCopy = self;
  if (_UIAccessibilityFullKeyboardAccessEnabled() || sub_100256714())
  {
    v6 = selfCopy;
  }

  else
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = selfCopy;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    sub_10023EE80(0, 0, v5, &unk_100406CE8, v10);
  }
}

- (void)alternatePlayPause
{
  v3 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  selfCopy = self;
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = selfCopy;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_10023EE80(0, 0, v5, &unk_100406CD8, v9);
  }

  else
  {
    v10 = selfCopy;
  }
}

- (void)nextTrack
{
  selfCopy = self;
  sub_10024C418(&enum case for PlaybackController.TransportCommand.moveToNextTrack(_:), &unk_1004E7478, &unk_100406CC8);
}

- (void)previousTrack
{
  selfCopy = self;
  sub_10024C418(&enum case for PlaybackController.TransportCommand.moveToPreviousTrack(_:), &unk_1004E7450, &unk_100406CC0);
}

- (void)jumpForwards
{
  selfCopy = self;
  sub_10024C418(&enum case for PlaybackController.TransportCommand.jumpForward(_:), &unk_1004E7428, &unk_100406CB8);
}

- (void)jumpBackwards
{
  selfCopy = self;
  sub_10024C418(&enum case for PlaybackController.TransportCommand.jumpBackward(_:), &unk_1004E7400, &unk_100406CB0);
}

- (void)setPlaybackSpeed:(id)speed
{
  speedCopy = speed;
  selfCopy = self;
  sub_10024C7A4(speedCopy);
}

- (void)setFasterPlaybackSpeed
{
  selfCopy = self;
  sub_10024CD28(&enum case for PlaybackController.TransportCommand.increasePlaybackSpeed(_:), &unk_1004E73B0, &unk_100406CA0);
}

- (void)setSlowerPlaybackSpeed
{
  selfCopy = self;
  sub_10024CD28(&enum case for PlaybackController.TransportCommand.decreasePlaybackSpeed(_:), &unk_1004E7388, &unk_100406C98);
}

- (void)toggleCustomShowSettings:(id)settings
{
  settingsCopy = settings;
  selfCopy = self;
  sub_1002568D4();
}

- (void)perShowSettingsDidChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10024D03C(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)increaseVolume
{
  selfCopy = self;
  dispatch thunk of PlaybackController.increaseVolume()();
}

- (void)decreaseVolume
{
  selfCopy = self;
  dispatch thunk of PlaybackController.decreaseVolume()();
}

- (void)cancelVolumeEvent
{
  selfCopy = self;
  dispatch thunk of PlaybackController.cancelVolumeEvent()();
}

- (void)didChangeStoreAccount:(id)account
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_opt_self();
  isa = Notification._bridgeToObjectiveC()().super.isa;
  LODWORD(v7) = [v7 iTunesAccountDidChangeForACAccountNotification:isa];

  if (v7)
  {
    mainSystem = [objc_opt_self() mainSystem];
    [mainSystem setNeedsRebuild];
  }

  (*(v4 + 8))(v6, v3);
}

- (void)mainWindowDidChangeKey:(id)key
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  mainSystem = [objc_opt_self() mainSystem];
  [mainSystem setNeedsRebuild];

  (*(v4 + 8))(v6, v3);
}

- (void)manageAccount
{
  selfCopy = self;
  sub_10024E330();
}

- (void)manageFavoriteCategories
{
  v3 = type metadata accessor for ActionMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowAction();
  selfCopy = self;
  static ActionMetrics.notInstrumented.getter();
  v8 = static FlowAction.manageCategoriesPage(actionMetrics:pushPresentationContext:)();
  (*(v4 + 8))(v6, v3);
  memset(v10, 0, sizeof(v10));
  v9 = UIResponder.firstViewInResponderChain.getter();
  sub_1002516A8(v8, v10, v9, selfCopy, &type metadata accessor for FlowAction, &unk_10057A0D0, &type metadata accessor for FlowAction);

  sub_100009104(v10, &unk_1005783D0);
}

- (void)reportAConcern
{
  sharedInstance = [objc_opt_self() sharedInstance];
  v4[4] = sub_10024E918;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1002355D0;
  v4[3] = &unk_1004E72D8;
  v3 = _Block_copy(v4);
  [sharedInstance reportAConcernURLWithCompletion:v3];
  _Block_release(v3);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10024EA68(action, v10);

  sub_100009104(v10, &unk_1005783D0);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_10024ECD8(commandCopy);
}

- (_TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)menuBarNewStation
{
  v3 = type metadata accessor for TextFieldAlertAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  static TextFieldAlertAction.newStation(then:)();
  memset(v8, 0, sizeof(v8));
  sub_100251430(v6, v8, 0, selfCopy, &type metadata accessor for TextFieldAlertAction, &qword_100579A18, &type metadata accessor for TextFieldAlertAction);

  sub_100009104(v8, &unk_1005783D0);
  (*(v4 + 8))(v6, v3);
}

- (uint64_t)presentPreferences
{
  v0 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.init(string:)();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100009104(v2, &qword_100574040);
  }

  (*(v4 + 32))(v6, v2, v3);
  sharedApplication = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  sub_10016A31C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100252880(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [sharedApplication openURL:v11 options:isa completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

- (void)showPrivacyInfo
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v0];

  v1 = v7;
  if (v7)
  {
    v2 = objc_opt_self();
    v3 = v7;
    sharedApplication = [v2 sharedApplication];
    delegate = [sharedApplication delegate];

    if (delegate)
    {
      if ([delegate respondsToSelector:"window"])
      {
        window = [delegate window];
        swift_unknownObjectRelease();
        delegate = [window rootViewController];
      }

      else
      {
        swift_unknownObjectRelease();
        delegate = 0;
      }
    }

    [v3 setPresentingViewController:delegate];

    v1 = v7;
  }

  [v1 present];
}

- (void)showMainWindow
{
  v0 = objc_opt_self();
  sharedApplication = [v0 sharedApplication];
  connectedScenes = [sharedApplication connectedScenes];

  sub_100009F1C(0, &qword_100579A38);
  sub_100024384(&qword_100579A40, &qword_100579A38);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = v0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = v27[4];
    v4 = v27[5];
    v5 = v27[6];
    v6 = v27[7];
    v7 = v27[8];
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17 || (v26 = v17, swift_dynamicCast(), v16 = v27[0], v14 = v6, v15 = v7, !v27[0]))
    {
LABEL_25:
      sub_1000319D8();

      session2 = 0;
      goto LABEL_26;
    }

LABEL_19:
    session = [v16 session];
    userInfo = [session userInfo];

    if (userInfo)
    {
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16) && (v21 = sub_10000F9A8(0xD000000000000018, 0x800000010046B110), (v22 & 1) != 0))
      {
        sub_10001B944(*(v20 + 56) + 32 * v21, v27);

        if (swift_dynamicCast() & 1) != 0 && (v26)
        {
          sub_1000319D8();

          session2 = [v16 session];

LABEL_26:
          sharedApplication2 = [v25 sharedApplication];
          [sharedApplication2 requestSceneSessionActivation:session2 userActivity:0 options:0 errorHandler:0];

          return;
        }
      }

      else
      {
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_25;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

- (void)resetIdentifier
{
  v0 = objc_opt_self();
  mainBundle = [v0 mainBundle];
  v26._object = 0x800000010046B050;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v2._object = 0x800000010046B030;
  v26._countAndFlagsBits = 0xD000000000000011;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, mainBundle, v3, v26);

  mainBundle2 = [v0 mainBundle];
  v27._object = 0x800000010046B090;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v5._object = 0x800000010046B070;
  v27._countAndFlagsBits = 0xD00000000000002ALL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, mainBundle2, v6, v27);

  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  mainBundle3 = [v0 mainBundle];
  v28._object = 0x800000010046B0F0;
  v11._countAndFlagsBits = 0xD000000000000024;
  v11._object = 0x800000010046B0C0;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, mainBundle3, v12, v28);

  v13 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10024E8C0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E8240;
  aBlock[3] = &unk_1004E7300;
  v14 = _Block_copy(aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:2 handler:v14];
  _Block_release(v14);

  [v9 addAction:v16];
  mainBundle4 = [v0 mainBundle];
  v29._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x6C65636E6143;
  v18._object = 0xE600000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, mainBundle4, v19, v29);

  v20 = String._bridgeToObjectiveC()();

  v21 = [v15 actionWithTitle:v20 style:1 handler:0];

  [v9 addAction:v21];
  sharedApplication = [objc_opt_self() sharedApplication];
  v23 = sub_1002D3F10();
  rootViewController = [v23 rootViewController];

  if (rootViewController)
  {
    [rootViewController presentViewController:v9 animated:0 completion:0];
  }
}

@end