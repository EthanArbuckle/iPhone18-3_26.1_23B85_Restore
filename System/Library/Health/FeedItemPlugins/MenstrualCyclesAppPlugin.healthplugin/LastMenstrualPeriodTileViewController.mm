@interface LastMenstrualPeriodTileViewController
- (NSString)title;
- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation LastMenstrualPeriodTileViewController

- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v8 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    bundleCopy = bundle;
    name = sub_29E2C33A4();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(LastMenstrualPeriodViewController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(LastMenstrualPeriodViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (NSString)title
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel))
  {
    sub_29E0CAD08();
    v2 = sub_29E2C33A4();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end