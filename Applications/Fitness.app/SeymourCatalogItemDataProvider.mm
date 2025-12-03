@interface SeymourCatalogItemDataProvider
- (BOOL)isSeymourWorkout:(id)workout;
- (_TtC10FitnessApp30SeymourCatalogItemDataProvider)init;
- (void)deleteArchivedSessionForWorkout:(id)workout;
- (void)fetchCatalogArtworkForCatalogItemViewModel:(id)model imageSize:(CGSize)size completion:(id)completion;
- (void)fetchCatalogItemViewModelForWorkout:(id)workout completion:(id)completion;
- (void)fetchScoreSummaryForWorkout:(id)workout healthStore:(id)store completion:(id)completion;
@end

@implementation SeymourCatalogItemDataProvider

- (BOOL)isSeymourWorkout:(id)workout
{
  workoutCopy = workout;
  selfCopy = self;
  v6 = sub_10069885C(workoutCopy);

  return v6 & 1;
}

- (void)fetchCatalogItemViewModelForWorkout:(id)workout completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  workoutCopy = workout;
  selfCopy = self;
  sub_100424FD0(workoutCopy, selfCopy, v6);
  _Block_release(v6);

  _Block_release(v6);
}

- (void)deleteArchivedSessionForWorkout:(id)workout
{
  workoutCopy = workout;
  selfCopy = self;
  sub_1002898DC(workoutCopy, selfCopy);
}

- (void)fetchCatalogArtworkForCatalogItemViewModel:(id)model imageSize:(CGSize)size completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  modelCopy = model;
  selfCopy = self;
  sub_100419358(modelCopy, sub_10042BCC0, v8);
}

- (void)fetchScoreSummaryForWorkout:(id)workout healthStore:(id)store completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  workoutCopy = workout;
  storeCopy = store;
  selfCopy = self;
  sub_100429360(workoutCopy, storeCopy, sub_1001FE648, v9, workoutCopy, v10);
}

- (_TtC10FitnessApp30SeymourCatalogItemDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end