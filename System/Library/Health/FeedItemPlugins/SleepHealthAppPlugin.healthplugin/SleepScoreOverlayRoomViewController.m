@interface SleepScoreOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4;
- (_TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4;
@end

@implementation SleepScoreOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v15 = a10;
  v29 = a11;
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

  if (a6)
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

  if (a10)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v15 = sub_29E7543F8();
  }

  v22 = a4;
  v23 = a5;
  v24 = a8;
  v25 = a9;
  v26 = sub_29E6164B0(v23, v19, a8, v15, v29);

  sub_29E617214(v19);

  return v26;
}

- (_TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6
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

  if (a3)
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

  if (a5)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v16 = sub_29E7543F8();
  }

  else
  {
    v16 = 0;
  }

  v17 = a4;
  v18 = sub_29E616AB8(v13, v17, v16, a6);

  return v18;
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType);
  v5 = self;
  v6 = [v4 localization];
  v7 = [v6 displayName];

  if (v7)
  {
  }

  else
  {
    sub_29E7541D8();
    v7 = sub_29E754198();
  }

  return v7;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
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

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_29E616E54(a3, v9);

  sub_29E609B5C(0, &qword_2A1856EB0, 0x29EDC47B0);
  v12 = sub_29E7543D8();

  return v12;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
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

  if (a4)
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

  v15 = a5;
  v16 = self;
  v17 = sub_29E6152DC(a3, v12, v15);

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

  v3 = self;
  v4 = sub_29E6158E8();

  return v4;
}

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  v9 = [(HKOverlayRoomViewController *)v8 chartController];
  if (v9 && (v10 = v9, v11 = [(HKInteractiveChartOverlayViewController *)v9 stringForValueRange:v7 timeScope:a4], v10, v11))
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

- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4
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

- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_29E617058(v8);

  return v10;
}

- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4
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