@interface CNDuplicateContactsManager
+ (BOOL)applyMergeResultToSaveRequest:(id)request signatures:(id)signatures;
+ (void)duplicatesCountsWithCompletionHandler:(id)handler;
+ (void)refreshManagedDuplicatesWithCompletionHandler:(id)handler;
- (BOOL)applyMergeResultToSaveRequest:(id)request;
- (CNDuplicateContactsManager)init;
- (CNDuplicateContactsManager)initWithContactStore:(id)store;
- (NSArray)duplicates;
@end

@implementation CNDuplicateContactsManager

+ (void)refreshManagedDuplicatesWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1954C1094(ObjCClassMetadata, v3);

  _Block_release(v3);
}

+ (void)duplicatesCountsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
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
  selfCopy = self;
  sub_1956328A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
  v3 = sub_19565D3EC();

  return v3;
}

- (CNDuplicateContactsManager)initWithContactStore:(id)store
{
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_contacts) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_findResult) = 0;
  v4 = (&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_didPerformMerge) = 0;
  *(&self->super.isa + OBJC_IVAR___CNDuplicateContactsManager_contactStore) = store;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DuplicateContactsManager();
  storeCopy = store;
  return [(CNDuplicateContactsManager *)&v7 init];
}

- (BOOL)applyMergeResultToSaveRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  LOBYTE(self) = sub_1956337FC(requestCopy);

  return self & 1;
}

+ (BOOL)applyMergeResultToSaveRequest:(id)request signatures:(id)signatures
{
  v5 = sub_19565D3FC();
  requestCopy = request;
  v7 = _s8Contacts09DuplicateA7ManagerC29applyMergeResultToSaveRequest_10signaturesSbSo06CNSaveI0C_SaySSGtFZ_0(requestCopy, v5);

  return v7 & 1;
}

- (CNDuplicateContactsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end