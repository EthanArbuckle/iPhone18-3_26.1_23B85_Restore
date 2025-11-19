@interface BKAudiobookNowPlayingMiniTouchViewController
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)addSpringLoadedInteractionWith:(id)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)loadView;
- (void)setHelper:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willUndock;
@end

@implementation BKAudiobookNowPlayingMiniTouchViewController

- (void)loadView
{
  v3 = self;
  v2 = sub_100388DCC();
  [(BKAudiobookNowPlayingMiniTouchViewController *)v3 setView:v2];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100389174();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v6 viewDidAppear:v3];
  v5 = sub_100388DCC();
  [*&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer] setMarqueeEnabled:1 withOptions:{0, v6.receiver, v6.super_class}];
  [*&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer] setMarqueeEnabled:1 withOptions:0];
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  v6 = sub_100388DCC();
  sub_100388E8C(v8);
  sub_1005BD790(v8);
  sub_10038DFDC(v8);

  sub_1000074E0(v7);
}

- (void)setHelper:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v8 = self;
  if (Strong)
  {
    sub_1003EFF64(a3, Strong, v6);
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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  sub_10000A7C4(0, &unk_100ADF0E0);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v6 = self;
  v7 = sub_10051E99C(0, 0, 0, sub_10038DEB0, v5);

  return v7;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = self;
  sub_100796B74();
  v10 = sub_100796BB4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate;
  swift_beginAccess();
  sub_100217AB4(v8, v9 + v11);
  swift_endAccess();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_10038DA90();

  swift_unknownObjectRelease();
}

- (void)addSpringLoadedInteractionWith:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = objc_allocWithZone(UISpringLoadedInteraction);
  v11[4] = sub_10038D440;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10038D3B8;
  v11[3] = &unk_100A185B8;
  v7 = _Block_copy(v11);
  v8 = a3;
  v9 = self;
  v10 = [v6 initWithActivationHandler:v7];
  _Block_release(v7);

  sub_10038B330(v10);
}

- (void)willUndock
{
  v2 = self;
  sub_10038D218();
}

@end