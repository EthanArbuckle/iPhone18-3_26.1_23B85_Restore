@interface BKAudiobookNowPlayingMiniTouchViewController
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)addSpringLoadedInteractionWith:(id)with;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)loadView;
- (void)setHelper:(id)helper completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willUndock;
@end

@implementation BKAudiobookNowPlayingMiniTouchViewController

- (void)loadView
{
  selfCopy = self;
  v2 = sub_100388DCC();
  [(BKAudiobookNowPlayingMiniTouchViewController *)selfCopy setView:v2];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100389174();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v6 viewDidAppear:appearCopy];
  v5 = sub_100388DCC();
  [*&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer] setMarqueeEnabled:1 withOptions:{0, v6.receiver, v6.super_class}];
  [*&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer] setMarqueeEnabled:1 withOptions:0];
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  v6 = sub_100388DCC();
  sub_100388E8C(v8);
  sub_1005BD790(v8);
  sub_10038DFDC(v8);

  sub_1000074E0(v7);
}

- (void)setHelper:(id)helper completion:(id)completion
{
  v6 = _Block_copy(completion);
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  if (Strong)
  {
    sub_1003EFF64(helper, Strong, v6);
    swift_unknownObjectRelease();
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10038ADA8(v9);
  sub_100007840(v9, &qword_100AD4FA0);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_10000A7C4(0, &unk_100ADF0E0);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  v7 = sub_10051E99C(0, 0, 0, sub_10038DEB0, v5);

  return v7;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v6 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  selfCopy = self;
  sub_100796B74();
  v10 = sub_100796BB4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate;
  swift_beginAccess();
  sub_100217AB4(v8, selfCopy + v11);
  swift_endAccess();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10038DA90();

  swift_unknownObjectRelease();
}

- (void)addSpringLoadedInteractionWith:(id)with
{
  v5 = swift_allocObject();
  *(v5 + 16) = with;
  v6 = objc_allocWithZone(UISpringLoadedInteraction);
  v11[4] = sub_10038D440;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10038D3B8;
  v11[3] = &unk_100A185B8;
  v7 = _Block_copy(v11);
  withCopy = with;
  selfCopy = self;
  v10 = [v6 initWithActivationHandler:v7];
  _Block_release(v7);

  sub_10038B330(v10);
}

- (void)willUndock
{
  selfCopy = self;
  sub_10038D218();
}

@end