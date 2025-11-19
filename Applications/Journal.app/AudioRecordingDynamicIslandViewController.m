@interface AudioRecordingDynamicIslandViewController
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (UIColor)keyColor;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation AudioRecordingDynamicIslandViewController

- (void)setActiveLayoutMode:(int64_t)a3
{
  v4 = self;
  sub_1007DFF2C(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1007E07E4();
}

- (SBUISystemApertureAccessoryView)leadingView
{
  v2 = self;
  v3 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView, sub_1007E0098);

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  v2 = self;
  v3 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView, sub_1007E0288);

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  v2 = self;
  v3 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalAccessoryView, sub_1007E0608);

  return v3;
}

- (UIColor)keyColor
{
  v3 = type metadata accessor for ColorResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD4C70);
  v7 = qword_100AD0CB0;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_10000617C(v3, qword_100B31520);
  (*(v4 + 16))(v6, v9, v3);
  v10 = UIColor.init(resource:)();
  v11 = [(AudioRecordingDynamicIslandViewController *)v8 traitCollection];
  v12 = [v10 resolvedColorWithTraitCollection:v11];

  return v12;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_1007E1DC0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1002E6808;
  v8[3] = &unk_100A7F990;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();
  v7 = self;

  [a3 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

@end