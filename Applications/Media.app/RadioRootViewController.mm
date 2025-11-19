@interface RadioRootViewController
- (_TtC5Media23RadioRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doneEditingFavorites;
- (void)editFavorites;
- (void)invalidate;
- (void)nowPlayingTapped;
- (void)segmentedControlChangedWithSender:(id)a3;
- (void)segmentedControlKnobSelectWithSender:(id)a3;
- (void)showSettings;
- (void)showSoundSettings;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RadioRootViewController

- (void)viewDidLoad
{
  v2 = self;
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10009568C(a3);
}

- (void)invalidate
{
  v2 = self;
  sub_1000957C0();
}

- (void)editFavorites
{
  v2 = self;
  sub_100098240();
}

- (void)doneEditingFavorites
{
  v2 = self;
  sub_100098290();
}

- (void)segmentedControlChangedWithSender:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl);
  v4 = self;
  sub_1000963F8([v3 selectedSegmentIndex] == 1);
}

- (void)segmentedControlKnobSelectWithSender:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl);
  v4 = self;
  sub_1000963F8([v3 selectedSegmentIndex] == 0);
}

- (void)showSettings
{
  v2 = self;
  sub_1000984AC();
}

- (void)showSoundSettings
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_100010424(0);
  }
}

- (void)nowPlayingTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_100010040();
  }
}

- (_TtC5Media23RadioRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end