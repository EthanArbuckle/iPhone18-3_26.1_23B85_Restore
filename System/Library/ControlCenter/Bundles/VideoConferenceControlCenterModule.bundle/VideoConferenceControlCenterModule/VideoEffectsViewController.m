@interface VideoEffectsViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldLoadFromSensor;
- (CCUIContentModuleContext)contentModuleContext;
- (NSArray)requiredVisualStyleCategories;
- (_TtC34VideoConferenceControlCenterModule26VideoEffectsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)compactContinuousCornerRadius;
- (double)preferredExpandedContentHeight;
- (void)buttonDownWithSender:(id)a3;
- (void)buttonTappedWithSender:(id)a3;
- (void)effectsDidUpdate;
- (void)expandTappedWithSender:(id)a3;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentModuleContext:(id)a3;
- (void)setRequiredVisualStyleCategories:(id)a3;
- (void)setShouldLoadFromSensor:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)sliderChangedWithSender:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VideoEffectsViewController

- (BOOL)shouldLoadFromSensor
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldLoadFromSensor:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CCUIContentModuleContext)contentModuleContext
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentModuleContext:(id)a3
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_A2CC();
}

- (double)preferredExpandedContentHeight
{
  v2 = *(&stru_248.offset + (swift_isaMask & *self));
  v3 = self;
  v4 = v2();

  return v4;
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = *(&stru_B8.flags + (swift_isaMask & *self));
  v7 = self;
  v8 = v6();
  [v8 _setContinuousCornerRadius:*(self + v5) + -10.0];
}

- (NSArray)requiredVisualStyleCategories
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_requiredVisualStyleCategories;
  swift_beginAccess();
  if (*(self + v3))
  {
    sub_14548(0, &qword_2F838, NSNumber_ptr);

    v4.super.isa = sub_1F034().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setRequiredVisualStyleCategories:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_14548(0, &qword_2F838, NSNumber_ptr);
    v3 = sub_1F044();
  }

  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_requiredVisualStyleCategories;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v2 = *(&stru_108.reloff + (swift_isaMask & *self));
  v3 = self;
  LOBYTE(v2) = v2();

  return (v2 & 1) == 0;
}

- (void)buttonDownWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_A76C(v4);
}

- (void)buttonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_AB94(v4);
}

- (void)sliderChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_B1D0(v4);
}

- (void)expandTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_B428(v4);
}

- (void)loadView
{
  v2 = self;
  sub_D62C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_DB84();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_EA0C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_EE50(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_F120(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_F2D8(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_F490(a3);
}

- (_TtC34VideoConferenceControlCenterModule26VideoEffectsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1F004();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_F6C0(v5, v7, a4);
}

- (void)effectsDidUpdate
{
  v2 = self;
  sub_10150();
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_103D8(a3, a4);
}

@end