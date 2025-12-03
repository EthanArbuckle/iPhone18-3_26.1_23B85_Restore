@interface HDClinicalIngestionAnalyticsAccumulator
- (HDClinicalIngestionAnalyticsAccumulator)init;
- (void)accumulateIngestionAnalyticsFromTaskStates:(id)states gateway:(id)gateway completion:(id)completion;
- (void)consumeMetricsFromHandler:(id)handler completion:(id)completion;
- (void)enumerateForCoreAnalyticsAndResetWithBlock:(id)block completion:(id)completion;
@end

@implementation HDClinicalIngestionAnalyticsAccumulator

- (HDClinicalIngestionAnalyticsAccumulator)init
{
  ObjectType = swift_getObjectType();
  sub_A9F58();
  *(&self->super.isa + OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator) = sub_A9F48();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(HDClinicalIngestionAnalyticsAccumulator *)&v5 init];
}

- (void)accumulateIngestionAnalyticsFromTaskStates:(id)states gateway:(id)gateway completion:(id)completion
{
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_9BD84;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A9FF8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = states;
  v16[6] = gateway;
  v16[7] = v13;
  v16[8] = v14;
  statesCopy = states;
  gatewayCopy = gateway;
  selfCopy = self;
  sub_9A140(0, 0, v12, &unk_E4228, v16);
}

- (void)consumeMetricsFromHandler:(id)handler completion:(id)completion
{
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_A9FF8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = handler;
  v14[5] = self;
  v14[6] = sub_9BB7C;
  v14[7] = v12;
  handlerCopy = handler;
  selfCopy = self;
  sub_9A140(0, 0, v10, &unk_E4218, v14);
}

- (void)enumerateForCoreAnalyticsAndResetWithBlock:(id)block completion:(id)completion
{
  v6 = _Block_copy(block);
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_9AB44(sub_9B378, v8, sub_9B380, v9);
}

@end