@interface PLBUIChartViewController
+ (NSString)chartIdentifier10Days;
+ (NSString)chartIdentifier24Hrs;
+ (double)graphHeightWithTraitCollection:(id)a3;
+ (void)reloadLocale;
- (_TtC14BatteryUsageUI24PLBUIChartViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP14BatteryUsageUI32PLBUIChartViewControllerDelegate_)delegate;
- (void)beginUpdate;
- (void)endUpdate;
- (void)setActiveChart:(id)a3;
- (void)setContainerBackgroundColor:(id)a3;
- (void)setDataset:(id)a3 endOfDay:(id)a4;
- (void)setMarginWithTop:(double)a3 bottom:(double)a4;
- (void)setTappedIndex:(id)a3;
@end

@implementation PLBUIChartViewController

+ (double)graphHeightWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = sub_5A754();
  swift_beginAccess();
  v6 = *(**v5 + 624);

  v6(a3);

  sub_B9CEC();
  v8 = v7;

  return v8;
}

+ (NSString)chartIdentifier24Hrs
{
  v2 = sub_117170();

  return v2;
}

+ (NSString)chartIdentifier10Days
{
  v2 = sub_117170();

  return v2;
}

- (_TtP14BatteryUsageUI32PLBUIChartViewControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)reloadLocale
{
  v2 = sub_5A754();
  type metadata accessor for BUIChartViewConfig();
  v3 = sub_59600();
  swift_beginAccess();
  v4 = *v2;
  *v2 = v3;
}

- (void)beginUpdate
{
  v2 = *(&stru_B8.size + (swift_isaMask & *self));
  v3 = self;
  v2(1);
}

- (void)endUpdate
{
  v2 = *(&stru_B8.size + (swift_isaMask & *self));
  v3 = self;
  v2(0);
  (*&stru_108.segname[(swift_isaMask & *v3) + 16])();
}

- (void)setActiveChart:(id)a3
{
  v4 = sub_1171B0();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PLBUIChartViewController.setActiveChart(_:)(v8);
}

- (void)setTappedIndex:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  PLBUIChartViewController.setTappedIndex(_:)(v9);
}

- (void)setDataset:(id)a3 endOfDay:(id)a4
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115730();
  v11 = a3;
  v12 = self;
  PLBUIChartViewController.setDataset(_:endOfDay:)(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)setMarginWithTop:(double)a3 bottom:(double)a4
{
  v6 = *(&stru_68.flags + (swift_isaMask & *self));
  v10 = self;
  v7 = v6();
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(*v7 + 296))(v7, a3);

  v9 = (v6)(v8);
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(*v9 + 344))(v9, a4);
}

- (void)setContainerBackgroundColor:(id)a3
{
  v4 = *(&stru_68.flags + (swift_isaMask & *self));
  v5 = a3;
  v7 = self;
  v6 = v4();
  if (v6)
  {
    (*(*v6 + 392))(v5);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC14BatteryUsageUI24PLBUIChartViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1171B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return PLBUIChartViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end