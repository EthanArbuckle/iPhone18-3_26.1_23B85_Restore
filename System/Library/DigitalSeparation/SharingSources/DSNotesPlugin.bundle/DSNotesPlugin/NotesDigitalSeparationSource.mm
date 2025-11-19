@interface NotesDigitalSeparationSource
- (BOOL)cloudContext:(id)a3 hasContextOptions:(unint64_t)a4;
- (id)accountIDsForCloudContext:(id)a3 managedObjectContext:(id)a4;
- (id)persistentStoreCoordinatorForCloudContext:(id)a3;
- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5;
- (void)dealloc;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(DSSharedResource *)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(DSParticipation *)a3 completion:(id)a4;
@end

@implementation NotesDigitalSeparationSource

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  [v4 clearSharedContext];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(NotesDigitalSeparationSource *)&v6 dealloc];
}

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_5B60(sub_CA9C, v5);
}

- (void)stopSharing:(DSSharedResource *)a3 withCompletion:(id)a4
{
  v7 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = self;
  sub_A158(0, 0, v9, &unk_127E0, v14);
}

- (void)stopSharingWithParticipant:(DSParticipation *)a3 completion:(id)a4
{
  v7 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = self;
  sub_A158(0, 0, v9, &unk_127B0, v14);
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v5 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_A158(0, 0, v7, &unk_12708, v12);
}

- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5
{
  v8 = sub_112BC();
  v10 = v9;
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_BC54(v12, v8, v10);
}

- (id)accountIDsForCloudContext:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_BD68(v7);

  v9.super.isa = sub_1131C().super.isa;

  return v9.super.isa;
}

- (id)persistentStoreCoordinatorForCloudContext:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v7 = self;
  v8 = [v5 sharedContext];
  if (!v8 || (v9 = v8, v10 = [v8 persistentStoreCoordinator], v9, !v10))
  {
    v10 = [objc_allocWithZone(NSPersistentStoreCoordinator) init];
  }

  return v10;
}

- (BOOL)cloudContext:(id)a3 hasContextOptions:(unint64_t)a4
{
  v5 = [objc_opt_self() sharedContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 hasContextOptions:a4];

    LOBYTE(v5) = v7;
  }

  return v5;
}

@end