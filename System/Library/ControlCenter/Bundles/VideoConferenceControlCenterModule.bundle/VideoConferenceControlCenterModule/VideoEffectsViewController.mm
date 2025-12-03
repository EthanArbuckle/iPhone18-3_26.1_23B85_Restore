@interface VideoEffectsViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldLoadFromSensor;
- (CCUIContentModuleContext)contentModuleContext;
- (NSArray)requiredVisualStyleCategories;
- (_TtC34VideoConferenceControlCenterModule26VideoEffectsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)compactContinuousCornerRadius;
- (double)preferredExpandedContentHeight;
- (void)buttonDownWithSender:(id)sender;
- (void)buttonTappedWithSender:(id)sender;
- (void)effectsDidUpdate;
- (void)expandTappedWithSender:(id)sender;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentModuleContext:(id)context;
- (void)setRequiredVisualStyleCategories:(id)categories;
- (void)setShouldLoadFromSensor:(BOOL)sensor;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)sliderChangedWithSender:(id)sender;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VideoEffectsViewController

- (BOOL)shouldLoadFromSensor
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldLoadFromSensor:(BOOL)sensor
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  *(self + v5) = sensor;
}

- (CCUIContentModuleContext)contentModuleContext
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentModuleContext:(id)context
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = context;
  contextCopy = context;
  selfCopy = self;

  sub_A2CC();
}

- (double)preferredExpandedContentHeight
{
  v2 = *(&stru_248.offset + (swift_isaMask & *self));
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCompactContinuousCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(self + v5) = radius;
  v6 = *(&stru_B8.flags + (swift_isaMask & *self));
  selfCopy = self;
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

- (void)setRequiredVisualStyleCategories:(id)categories
{
  categoriesCopy = categories;
  if (categories)
  {
    sub_14548(0, &qword_2F838, NSNumber_ptr);
    categoriesCopy = sub_1F044();
  }

  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_requiredVisualStyleCategories;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = categoriesCopy;
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v2 = *(&stru_108.reloff + (swift_isaMask & *self));
  selfCopy = self;
  LOBYTE(v2) = v2();

  return (v2 & 1) == 0;
}

- (void)buttonDownWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_A76C(senderCopy);
}

- (void)buttonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_AB94(senderCopy);
}

- (void)sliderChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_B1D0(senderCopy);
}

- (void)expandTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_B428(senderCopy);
}

- (void)loadView
{
  selfCopy = self;
  sub_D62C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_DB84();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_EA0C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_EE50(disappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_F120(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_F2D8(disappear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_F490(appearing);
}

- (_TtC34VideoConferenceControlCenterModule26VideoEffectsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1F004();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_F6C0(v5, v7, bundle);
}

- (void)effectsDidUpdate
{
  selfCopy = self;
  sub_10150();
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  selfCopy = self;
  sub_103D8(provider, category);
}

@end