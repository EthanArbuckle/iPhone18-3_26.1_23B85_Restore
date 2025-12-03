@interface SleepScoreOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (BOOL)infographicSupportedForDisplayType:(id)type healthStore:(id)store;
- (_TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index;
@end

@implementation SleepScoreOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  optionsCopy = options;
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v28 - v18;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (date)
  {
    sub_29E74ECD8();
    v20 = sub_29E74ED28();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {
    v21 = sub_29E74ED28();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  if (types)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    typesCopy = sub_29E7543F8();
  }

  factoryCopy = factory;
  itemsCopy = items;
  activityCopy = activity;
  modelCopy = model;
  v26 = sub_29E6164B0(itemsCopy, v19, activity, typesCopy, optionsCopy);

  sub_29E617214(v19);

  return v26;
}

- (_TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v20 - v12;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (date)
  {
    sub_29E74ECD8();
    v14 = sub_29E74ED28();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_29E74ED28();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (types)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v16 = sub_29E7543F8();
  }

  else
  {
    v16 = 0;
  }

  itemsCopy = items;
  v18 = sub_29E616AB8(v13, itemsCopy, v16, mode);

  return v18;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType);
  selfCopy = self;
  localization = [v4 localization];
  displayName = [localization displayName];

  if (displayName)
  {
  }

  else
  {
    sub_29E7541D8();
    displayName = sub_29E754198();
  }

  return displayName;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType);

  return v4;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  itemsCopy = items;
  controllerCopy = controller;
  selfCopy = self;
  sub_29E616E54(mode, itemsCopy);

  sub_29E609B5C(0, &qword_2A1856EB0, 0x29EDC47B0);
  v12 = sub_29E7543D8();

  return v12;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v19 - v11;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (date)
  {
    sub_29E74ECD8();
    v13 = sub_29E74ED28();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_29E74ED28();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  itemsCopy = items;
  selfCopy = self;
  v17 = sub_29E6152DC(mode, v12, itemsCopy);

  sub_29E617214(v12);

  return v17;
}

- (id)createChartOverlayViewController
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = sub_29E6158E8();

  return v4;
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  rangeCopy = range;
  selfCopy = self;
  chartController = [(HKOverlayRoomViewController *)selfCopy chartController];
  if (chartController && (v10 = chartController, v11 = [(HKInteractiveChartOverlayViewController *)chartController stringForValueRange:rangeCopy timeScope:scope], v10, v11))
  {
    sub_29E7541D8();

    v12 = sub_29E754198();

    v13 = v12;
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (BOOL)infographicSupportedForDisplayType:(id)type healthStore:(id)store
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  typeCopy = type;
  storeCopy = store;
  selfCopy = self;
  v10 = sub_29E617058(storeCopy);

  return v10;
}

- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

@end