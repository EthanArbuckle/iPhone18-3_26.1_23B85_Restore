@interface PLBUIChartViewController
+ (NSString)chartIdentifier10Days;
+ (NSString)chartIdentifier24Hrs;
+ (double)graphHeightWithTraitCollection:(id)collection;
+ (void)reloadLocale;
- (_TtC14BatteryUsageUI24PLBUIChartViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP14BatteryUsageUI32PLBUIChartViewControllerDelegate_)delegate;
- (void)beginUpdate;
- (void)endUpdate;
- (void)setActiveChart:(id)chart;
- (void)setContainerBackgroundColor:(id)color;
- (void)setDataset:(id)dataset endOfDay:(id)day;
- (void)setMarginWithTop:(double)top bottom:(double)bottom;
- (void)setTappedIndex:(id)index;
@end

@implementation PLBUIChartViewController

+ (double)graphHeightWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = sub_5A754();
  swift_beginAccess();
  v6 = *(**v5 + 624);

  v6(collection);

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
  selfCopy = self;
  v2(1);
}

- (void)endUpdate
{
  v2 = *(&stru_B8.size + (swift_isaMask & *self));
  selfCopy = self;
  v2(0);
  (*&stru_108.segname[(swift_isaMask & *selfCopy) + 16])();
}

- (void)setActiveChart:(id)chart
{
  v4 = sub_1171B0();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PLBUIChartViewController.setActiveChart(_:)(v8);
}

- (void)setTappedIndex:(id)index
{
  indexCopy = index;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = index;
  PLBUIChartViewController.setTappedIndex(_:)(v9);
}

- (void)setDataset:(id)dataset endOfDay:(id)day
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115730();
  datasetCopy = dataset;
  selfCopy = self;
  PLBUIChartViewController.setDataset(_:endOfDay:)(datasetCopy);

  (*(v7 + 8))(v10, v6);
}

- (void)setMarginWithTop:(double)top bottom:(double)bottom
{
  v6 = *(&stru_68.flags + (swift_isaMask & *self));
  selfCopy = self;
  v7 = v6();
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(*v7 + 296))(v7, top);

  v9 = (v6)(v8);
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(*v9 + 344))(v9, bottom);
}

- (void)setContainerBackgroundColor:(id)color
{
  v4 = *(&stru_68.flags + (swift_isaMask & *self));
  colorCopy = color;
  selfCopy = self;
  v6 = v4();
  if (v6)
  {
    (*(*v6 + 392))(colorCopy);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC14BatteryUsageUI24PLBUIChartViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1171B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return PLBUIChartViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end