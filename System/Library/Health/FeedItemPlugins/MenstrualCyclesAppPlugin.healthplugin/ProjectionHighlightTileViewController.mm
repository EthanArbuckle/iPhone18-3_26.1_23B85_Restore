@interface ProjectionHighlightTileViewController
- (NSString)title;
- (_TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)todayDidChange;
- (void)viewDidLoad;
@end

@implementation ProjectionHighlightTileViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29DF7B9E8();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x29EDB8CA8] object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ProjectionHighlightTileViewController();
  [(ProjectionHighlightTileViewController *)&v6 dealloc];
}

- (void)todayDidChange
{
  selfCopy = self;
  sub_29DF7DA24();
}

- (_TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29DF7E1EC(v5, v7, bundle);
}

- (NSString)title
{
  v2 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel;
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel);
  if (v3)
  {
    v5 = *(v2 + 1);
    v4 = *(v2 + 2);
    selfCopy = self;
    sub_29DF80AF0(v3, v5, v4);
    sub_29DFAEF58(v3, v5 & 1);

    v3 = sub_29E2C33A4();
  }

  return v3;
}

@end