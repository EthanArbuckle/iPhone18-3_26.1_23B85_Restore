@interface LastMenstrualPeriodTileViewController
- (NSString)title;
- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation LastMenstrualPeriodTileViewController

- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v8 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    v9 = a4;
    a3 = sub_29E2C33A4();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(LastMenstrualPeriodViewController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (_TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(LastMenstrualPeriodViewController *)&v10 initWithCoder:v7];

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