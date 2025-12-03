@interface RadioRootViewController
- (_TtC5Media23RadioRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneEditingFavorites;
- (void)editFavorites;
- (void)invalidate;
- (void)nowPlayingTapped;
- (void)segmentedControlChangedWithSender:(id)sender;
- (void)segmentedControlKnobSelectWithSender:(id)sender;
- (void)showSettings;
- (void)showSoundSettings;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RadioRootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000943C0();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RadioRootViewController();
  v2 = v3.receiver;
  [(RadioRootViewController *)&v3 viewDidLayoutSubviews];
  sub_100096720();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10009568C(appear);
}

- (void)invalidate
{
  selfCopy = self;
  sub_1000957C0();
}

- (void)editFavorites
{
  selfCopy = self;
  sub_100098240();
}

- (void)doneEditingFavorites
{
  selfCopy = self;
  sub_100098290();
}

- (void)segmentedControlChangedWithSender:(id)sender
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl);
  selfCopy = self;
  sub_1000963F8([v3 selectedSegmentIndex] == 1);
}

- (void)segmentedControlKnobSelectWithSender:(id)sender
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl);
  selfCopy = self;
  sub_1000963F8([v3 selectedSegmentIndex] == 0);
}

- (void)showSettings
{
  selfCopy = self;
  sub_1000984AC();
}

- (void)showSoundSettings
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_100010424(0);
  }
}

- (void)nowPlayingTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_100010040();
  }
}

- (_TtC5Media23RadioRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end