@interface SleepScoreOverlayContext
- (_TtC20SleepHealthAppPlugin24SleepScoreOverlayContext)init;
- (id)baseDisplayTypeForOverlay:(int64_t)overlay;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)sampleTypeForDateRangeUpdates;
- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution;
- (void)updateContextItemForDateInterval:(NSDateInterval *)interval overlayController:(HKInteractiveChartOverlayViewController *)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation SleepScoreOverlayContext

- (id)sampleTypeForDateRangeUpdates
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (id)baseDisplayTypeForOverlay:(int64_t)overlay
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType);

  return v4;
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)scope
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_overlayDisplayType);

  return v4;
}

- (void)updateContextItemForDateInterval:(NSDateInterval *)interval overlayController:(HKInteractiveChartOverlayViewController *)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  sub_29E66A714(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v25 - v15;
  v17 = _Block_copy(completion);
  v18 = swift_allocObject();
  v18[2] = interval;
  v18[3] = controller;
  v18[4] = scope;
  v18[5] = resolution;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_29E7544F8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_29E7677D8;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_29E7677E8;
  v21[5] = v20;
  intervalCopy = interval;
  controllerCopy = controller;
  selfCopy = self;
  sub_29E6680B0(0, 0, v16, &unk_29E7677F8, v21);
}

- (id)contextItemForLastUpdate
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
  }

  else
  {
    v6 = *&self->itemProvider[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider];
    v7 = *&self->itemProvider[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 8];
    sub_29E601938((&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider), v6);
    v8 = *(v7 + 8);
    selfCopy2 = self;
    v5 = v8(MEMORY[0x29EDCA190], 0, 1, v6, v7);
    v3 = 0;
  }

  v10 = v3;

  return v5;
}

- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (_TtC20SleepHealthAppPlugin24SleepScoreOverlayContext)init
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end