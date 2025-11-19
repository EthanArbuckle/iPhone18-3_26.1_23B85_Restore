@interface SeymourCatalogItemDataProvider
- (BOOL)isSeymourWorkout:(id)a3;
- (_TtC10FitnessApp30SeymourCatalogItemDataProvider)init;
- (void)deleteArchivedSessionForWorkout:(id)a3;
- (void)fetchCatalogArtworkForCatalogItemViewModel:(id)a3 imageSize:(CGSize)a4 completion:(id)a5;
- (void)fetchCatalogItemViewModelForWorkout:(id)a3 completion:(id)a4;
- (void)fetchScoreSummaryForWorkout:(id)a3 healthStore:(id)a4 completion:(id)a5;
@end

@implementation SeymourCatalogItemDataProvider

- (BOOL)isSeymourWorkout:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10069885C(v4);

  return v6 & 1;
}

- (void)fetchCatalogItemViewModelForWorkout:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v8 = a3;
  v7 = self;
  sub_100424FD0(v8, v7, v6);
  _Block_release(v6);

  _Block_release(v6);
}

- (void)deleteArchivedSessionForWorkout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002898DC(v4, v5);
}

- (void)fetchCatalogArtworkForCatalogItemViewModel:(id)a3 imageSize:(CGSize)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = self;
  sub_100419358(v9, sub_10042BCC0, v8);
}

- (void)fetchScoreSummaryForWorkout:(id)a3 healthStore:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_100429360(v11, v12, sub_1001FE648, v9, v11, v10);
}

- (_TtC10FitnessApp30SeymourCatalogItemDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end