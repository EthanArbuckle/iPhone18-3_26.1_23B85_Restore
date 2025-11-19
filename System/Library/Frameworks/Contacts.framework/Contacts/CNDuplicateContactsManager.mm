@interface CNDuplicateContactsManager
+ (BOOL)applyMergeResultToSaveRequest:(id)a3 signatures:(id)a4;
+ (void)duplicatesCountsWithCompletionHandler:(id)a3;
+ (void)refreshManagedDuplicatesWithCompletionHandler:(id)a3;
- (BOOL)applyMergeResultToSaveRequest:(id)a3;
- (CNDuplicateContactsManager)init;
- (CNDuplicateContactsManager)initWithContactStore:(id)a3;
- (NSArray)duplicates;
@end

@implementation CNDuplicateContactsManager

+ (void)refreshManagedDuplicatesWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1954C1094(ObjCClassMetadata, v3);

  _Block_release(v3);
}

+ (void)duplicatesCountsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_19565D56C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_19567D378;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_19567BE20;
  v12[5] = v11;
  sub_1956346D0(0, 0, v7, &unk_19567BE28, v12);
}

- (NSArray)duplicates
{
  v2 = self;
  sub_1956328A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
  v3 = sub_19565D3EC();

  return v3;
}

- (CNDuplicateContactsManager)initWithContactStore:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_contacts) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_findResult) = 0;
  v4 = (&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_didPerformMerge) = 0;
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_contactStore) = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DuplicateContactsManager();
  v5 = a3;
  return [(CNDuplicateContactsManager *)&v7 init];
}

- (BOOL)applyMergeResultToSaveRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1956337FC(v4);

  return self & 1;
}

+ (BOOL)applyMergeResultToSaveRequest:(id)a3 signatures:(id)a4
{
  v5 = sub_19565D3FC();
  v6 = a3;
  v7 = _s8Contacts09DuplicateA7ManagerC29applyMergeResultToSaveRequest_10signaturesSbSo06CNSaveI0C_SaySSGtFZ_0(v6, v5);

  return v7 & 1;
}

- (CNDuplicateContactsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end