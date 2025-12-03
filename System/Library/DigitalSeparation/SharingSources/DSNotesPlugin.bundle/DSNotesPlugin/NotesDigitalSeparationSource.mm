@interface NotesDigitalSeparationSource
- (BOOL)cloudContext:(id)context hasContextOptions:(unint64_t)options;
- (id)accountIDsForCloudContext:(id)context managedObjectContext:(id)objectContext;
- (id)persistentStoreCoordinatorForCloudContext:(id)context;
- (void)cloudContext:(id)context sharedZoneWasDeleted:(id)deleted accountID:(id)d;
- (void)dealloc;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(DSSharedResource *)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(DSParticipation *)participant completion:(id)completion;
@end

@implementation NotesDigitalSeparationSource

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  [v4 clearSharedContext];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(NotesDigitalSeparationSource *)&v6 dealloc];
}

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_5B60(sub_CA9C, v5);
}

- (void)stopSharing:(DSSharedResource *)sharing withCompletion:(id)completion
{
  v7 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = sharing;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1138C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_127D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_127D8;
  v14[5] = v13;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_A158(0, 0, v9, &unk_127E0, v14);
}

- (void)stopSharingWithParticipant:(DSParticipation *)participant completion:(id)completion
{
  v7 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = participant;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1138C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_127A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_127A8;
  v14[5] = v13;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_A158(0, 0, v9, &unk_127B0, v14);
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  v5 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1138C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_126E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_126F8;
  v12[5] = v11;
  selfCopy = self;
  sub_A158(0, 0, v7, &unk_12708, v12);
}

- (void)cloudContext:(id)context sharedZoneWasDeleted:(id)deleted accountID:(id)d
{
  v8 = sub_112BC();
  v10 = v9;
  contextCopy = context;
  deletedCopy = deleted;
  selfCopy = self;
  sub_BC54(deletedCopy, v8, v10);
}

- (id)accountIDsForCloudContext:(id)context managedObjectContext:(id)objectContext
{
  contextCopy = context;
  objectContextCopy = objectContext;
  selfCopy = self;
  sub_BD68(objectContextCopy);

  v9.super.isa = sub_1131C().super.isa;

  return v9.super.isa;
}

- (id)persistentStoreCoordinatorForCloudContext:(id)context
{
  v5 = objc_opt_self();
  contextCopy = context;
  selfCopy = self;
  sharedContext = [v5 sharedContext];
  if (!sharedContext || (v9 = sharedContext, v10 = [sharedContext persistentStoreCoordinator], v9, !v10))
  {
    v10 = [objc_allocWithZone(NSPersistentStoreCoordinator) init];
  }

  return v10;
}

- (BOOL)cloudContext:(id)context hasContextOptions:(unint64_t)options
{
  sharedContext = [objc_opt_self() sharedContext];
  if (sharedContext)
  {
    v6 = sharedContext;
    v7 = [sharedContext hasContextOptions:options];

    LOBYTE(sharedContext) = v7;
  }

  return sharedContext;
}

@end