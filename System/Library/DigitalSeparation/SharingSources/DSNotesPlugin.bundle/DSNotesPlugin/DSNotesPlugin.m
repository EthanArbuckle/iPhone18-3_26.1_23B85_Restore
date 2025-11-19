uint64_t sub_1B28()
{
  v0 = sub_1125C();
  sub_C174(v0, qword_1D298);
  sub_C094(v0, qword_1D298);
  return sub_1123C();
}

uint64_t sub_1B84()
{
  ObjectType = swift_getObjectType();
  v2 = DSSourceNameNotes;
  *&v0[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_name] = DSSourceNameNotes;
  v3 = OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext;
  *&v0[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext] = 0;
  *&v0[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext] = 0;
  *&v0[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_collaborationController] = 0;
  *&v0[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = objc_opt_self();
  v5 = v2;
  if ([v4 isRunningUnitTests])
  {
    v6 = 4915760;
  }

  else
  {
    v6 = 1573396;
  }

  v7 = objc_opt_self();
  [v7 startSharedContextWithOptions:v6];
  v8 = [v7 sharedContext];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 managedObjectContext];
  }

  else
  {
    v10 = 0;
  }

  *&v0[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_viewContext] = v10;
  v11 = [v7 sharedContext];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 workerManagedObjectContext];
  }

  else
  {
    v13 = 0;
  }

  v14 = *&v0[v3];
  *&v0[v3] = v13;

  v33.receiver = v0;
  v33.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v33, "init");
  v16 = [objc_opt_self() sharedContext];
  v17 = OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext;
  v18 = *&v15[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext];
  *&v15[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext] = v16;

  v19 = *&v15[v17];
  if (v19)
  {
    [v19 setCloudContextDelegate:v15];
  }

  v20 = [objc_opt_self() sharedInstance];
  v21 = OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_collaborationController;
  v22 = *&v15[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_collaborationController];
  *&v15[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_collaborationController] = v20;

  v23 = *&v15[v21];
  if (v23)
  {
    [v23 setCollaborationControllerDelegate:v15];
  }

  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v24 = sub_1125C();
  sub_C094(v24, qword_1D298);
  v25 = sub_1124C();
  v26 = sub_113CC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "init :: Perform and wait on viewContext", v27, 2u);
  }

  v28 = *&v15[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_viewContext];
  if (!v28)
  {
    goto LABEL_20;
  }

  v32[4] = sub_2074;
  v32[5] = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = sub_20A0;
  v32[3] = &unk_18E40;
  v29 = _Block_copy(v32);
  v30 = v28;

  [v30 performBlockAndWait:v29];

  _Block_release(v29);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_20C8();
    return v15;
  }

  return result;
}

void sub_1F50()
{
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v0 = sub_1125C();
  sub_C094(v0, qword_1D298);
  v1 = sub_1124C();
  v2 = sub_113CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "init :: Calling ICNoteContext refreshAll", v3, 2u);
  }

  v4 = [objc_opt_self() sharedContext];
  [v4 refreshAll];
}

uint64_t sub_20C8()
{
  v1 = v0;
  [objc_opt_self() setSuppressWritingPaperKitBundles:1];
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v2 = sub_1125C();
  sub_C094(v2, qword_1D298);
  v3 = sub_1124C();
  v4 = sub_113CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "commonInit :: Perform and wait on MOC", v5, 2u);
  }

  v6 = *&v0[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext];
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = swift_allocObject();
    v9 = sub_CDC8;
    *(v8 + 16) = sub_CDC8;
    *(v8 + 24) = v7;
    v20[4] = sub_D38C;
    v20[5] = v8;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_20A0;
    v20[3] = &unk_18EB8;
    v10 = _Block_copy(v20);
    v11 = v6;
    v12 = v0;

    [v11 performBlockAndWait:v10];

    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v9 = 0;
LABEL_9:
  v13 = sub_1124C();
  v14 = sub_113CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "commonInit :: Setting up cloudContext", v15, 2u);
  }

  v16 = OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext;
  v17 = *&v1[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext];
  if (v17)
  {
    [v17 setQualityOfService:33];
    v18 = *&v1[v16];
    if (v18)
    {
      [v18 setDisableRetryTimer:1];
    }
  }

  return sub_CDE0(v9);
}

id sub_23E8(uint64_t a1)
{
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v2 = sub_1125C();
  sub_C094(v2, qword_1D298);
  v3 = sub_1124C();
  v4 = sub_113CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "commonInit :: Setting staleness interval on MOC to 0", v5, 2u);
  }

  result = *(a1 + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext);
  if (result)
  {

    return [result setStalenessInterval:0.0];
  }

  return result;
}

id sub_2500()
{
  ObjectType = swift_getObjectType();
  [objc_opt_self() clearSharedContext];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_26A0()
{
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v1 = sub_1125C();
  v0[19] = sub_C094(v1, qword_1D298);
  v2 = sub_1124C();
  v3 = sub_113CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "refreshCloudContext :: call sync on ICCloudContext", v4, 2u);
  }

  v5 = v0[18];

  if (v5)
  {
    v6 = v0[18];
    v7 = sub_1128C();
    v0[20] = v7;
    v0[2] = v0;
    v0[3] = sub_294C;
    v8 = swift_continuation_init();
    v0[17] = sub_BF58(&unk_1D7A0, &qword_12758);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_2BA8;
    v0[13] = &unk_18E18;
    v0[14] = v8;
    [v6 syncWithReason:v7 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v9 = v0[19];
    v10 = sub_1124C();
    v11 = sub_113CC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "refreshCloudContext :: sync finished", v12, 2u);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_294C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2B38;
  }

  else
  {
    v3 = sub_2A5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2A5C()
{
  v1 = *(v0 + 152);
  v2 = sub_1124C();
  v3 = sub_113CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "refreshCloudContext :: sync finished", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2B38()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_2BA8(uint64_t a1, void *a2)
{
  v3 = sub_C64C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_BF58(&qword_1D5A8, &qword_12768);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_2C54(uint64_t a1, uint64_t a2)
{
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v4 = sub_1125C();
  sub_C094(v4, qword_1D298);
  v5 = sub_1124C();
  v6 = sub_113CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "allSharedCloudObjects :: Starting fetch of cloud objects", v7, 2u);
  }

  v8 = objc_opt_self();
  sub_C04C(0, &qword_1D4D0, NSPredicate_ptr);
  v9 = sub_113AC();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_C6E0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_C6E8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3048;
  aBlock[3] = &unk_18C38;
  v12 = _Block_copy(aBlock);

  [v8 enumerateAllCloudObjectsInContext:a1 predicate:v9 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 batchSize:10 saveAfterBatch:0 usingBlock:v12];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2ED4(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();
    if ([v5 isSharedRootObject] && (objc_msgSend(v5, "isDeleted") & 1) == 0 && ((objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass())))
    {
      v6 = type metadata accessor for DSCloudObject();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject] = v5;
      v9.receiver = v7;
      v9.super_class = v6;
      swift_unknownObjectRetain();
      objc_msgSendSuper2(&v9, "init");
      sub_1130C();
      if (*(&dword_10 + (*a3 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v8 = *(&dword_10 + (*a3 & 0xFFFFFFFFFFFFFF8));
        sub_1134C();
      }

      sub_1135C();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_3048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void *sub_30A4(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_1156C();
    sub_1152C();
    v5 = sub_1156C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    sub_1152C();
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_114EC();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1150C();
        v9 = _swiftEmptyArrayStorage[2];
        sub_1153C();
        sub_1154C();
        sub_1151C();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_321C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  sub_1152C();
  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1156C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_114EC();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1150C();
      v8 = _swiftEmptyArrayStorage[2];
      sub_1153C();
      sub_1154C();
      sub_1151C();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1156C();
    sub_1152C();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_3384(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  return _swift_task_switch(sub_33A8, 0, 0);
}

uint64_t sub_33A8()
{
  v1 = v0[43];
  v2 = swift_allocObject();
  v0[46] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];

  v4 = swift_task_alloc();
  v0[47] = v4;
  v5 = sub_BF58(&qword_1D588, &qword_12748);
  *v4 = v0;
  v4[1] = sub_34AC;
  v6 = v0[44];

  return NSManagedObjectContext.perform<A>(_:)(v0 + 40, sub_C5F4, v2, v5);
}

uint64_t sub_34AC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 368);

    return _swift_task_switch(sub_35E8, 0, 0);
  }
}

uint64_t sub_35E8()
{
  v1 = v0[40];
  v0[48] = v1;
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    v0[49] = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_23:
    v26 = v0[48];

    v27 = v0[1];

    return v27();
  }

LABEL_22:
  v25 = sub_1156C();
  v0[49] = v25;
  if (!v25)
  {
    goto LABEL_23;
  }

LABEL_3:
  v3 = 0;
  v4 = OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_collaborationController;
  v0[50] = OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext;
  v0[51] = v4;
  while (1)
  {
    v5 = v0[48];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = sub_114EC();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v6 = *(v5 + 8 * v3 + 32);
    }

    v7 = v6;
    v0[52] = v6;
    v0[53] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(&v6->isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
    v0[54] = v8;
    v9 = v8;
    v10 = [v9 managedObjectContext];
    v0[55] = v10;
    if (v10)
    {
      break;
    }

    if (qword_1D290 != -1)
    {
      swift_once();
    }

    v11 = sub_1125C();
    sub_C094(v11, qword_1D298);
    v12 = v9;
    v13 = sub_1124C();
    v14 = sub_113DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_0, v13, v14, "Delete of share for %@ failed due to nil managedObjectContext", v15, 0xCu);
      sub_C450(v16, &qword_1D500, &qword_126C8);

      v18 = v13;
      v13 = v17;
    }

    else
    {
      v18 = v7;
      v7 = v12;
    }

    v19 = v0[53];
    v20 = v0[49];

    if (v19 == v20)
    {
      goto LABEL_23;
    }

    v3 = v0[53];
  }

  v21 = swift_allocObject();
  v0[56] = v21;
  *(v21 + 16) = v9;
  v22 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
  v23 = v9;
  v24 = swift_task_alloc();
  v0[57] = v24;
  *v24 = v0;
  v24[1] = sub_3960;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 64, sub_C610, v21, &type metadata for Bool);
}

uint64_t sub_3960()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 448);

    return _swift_task_switch(sub_3A9C, 0, 0);
  }
}

uint64_t sub_3A9C()
{
  if (*(v0 + 512))
  {
    v1 = *(*(v0 + 360) + *(v0 + 408));
    *(v0 + 488) = v1;
    if (v1)
    {
      v2 = v0 + 80;
      v3 = *(v0 + 432);
      v4 = v1;
      v5 = [v3 objectID];
      *(v0 + 496) = v5;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 513;
      *(v0 + 88) = sub_49D8;
      v6 = swift_continuation_init();
      *(v0 + 264) = sub_BF58(&qword_1D5A0, &qword_12760);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_54DC;
      *(v0 + 232) = &unk_18B48;
      *(v0 + 240) = v6;
      [v4 removeShareIfNeededWithOwnedObjectID:v5 countParticipants:0 completionHandler:v0 + 208];
LABEL_6:

      return _swift_continuation_await(v2);
    }
  }

  else
  {
    v7 = *(*(v0 + 360) + *(v0 + 400));
    *(v0 + 464) = v7;
    if (v7)
    {
      v2 = v0 + 16;
      v8 = *(v0 + 432);
      sub_BF58(&unk_1D590, &qword_12750);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_124B0;
      *(v9 + 32) = v8;
      sub_C04C(0, &qword_1D4E8, ICCloudSyncingObject_ptr);
      v10 = v8;
      v11 = v7;
      isa = sub_1131C().super.isa;
      *(v0 + 472) = isa;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_407C;
      v13 = swift_continuation_init();
      *(v0 + 200) = sub_BF58(&unk_1D7A0, &qword_12758);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_2BA8;
      *(v0 + 168) = &unk_18B20;
      *(v0 + 176) = v13;
      [v11 deleteSharesForObjects:isa completionHandler:v0 + 144];
      goto LABEL_6;
    }
  }

  v14 = *(v0 + 416);

  v15 = *(v0 + 424);
  v16 = *(v0 + 392);

  if (v15 == v16)
  {
LABEL_10:
    v20 = *(v0 + 384);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    while (1)
    {
      v29 = *(v0 + 424);
      v30 = *(v0 + 384);
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = *(v0 + 424);
        v17 = sub_114EC();
      }

      else
      {
        if (v29 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v17 = *(v30 + 8 * v29 + 32);
      }

      v32 = v17;
      *(v0 + 416) = v17;
      *(v0 + 424) = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return NSManagedObjectContext.perform<A>(_:)(v17, v30, v18, v19);
      }

      v33 = *(&v17->isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
      *(v0 + 432) = v33;
      v34 = v33;
      v35 = [v34 managedObjectContext];
      *(v0 + 440) = v35;
      if (v35)
      {
        break;
      }

      if (qword_1D290 != -1)
      {
        swift_once();
      }

      v36 = sub_1125C();
      sub_C094(v36, qword_1D298);
      v37 = v34;
      v26 = sub_1124C();
      v38 = sub_113DC();

      if (os_log_type_enabled(v26, v38))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v37;
        *v23 = v37;
        v24 = v37;
        _os_log_impl(&dword_0, v26, v38, "Delete of share for %@ failed due to nil managedObjectContext", v22, 0xCu);
        sub_C450(v23, &qword_1D500, &qword_126C8);

        v25 = v26;
        v26 = v24;
      }

      else
      {
        v25 = v32;
        v32 = v37;
      }

      v27 = *(v0 + 424);
      v28 = *(v0 + 392);

      if (v27 == v28)
      {
        goto LABEL_10;
      }
    }

    v39 = swift_allocObject();
    *(v0 + 448) = v39;
    *(v39 + 16) = v34;
    v40 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
    v41 = v34;
    v42 = swift_task_alloc();
    *(v0 + 456) = v42;
    *v42 = v0;
    v42[1] = sub_3960;
    v19 = &type metadata for Bool;
    v30 = sub_C610;
    v17 = (v0 + 512);
    v18 = v39;

    return NSManagedObjectContext.perform<A>(_:)(v17, v30, v18, v19);
  }
}

uint64_t sub_407C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 480) = v2;
  if (v2)
  {
    v3 = sub_44E4;
  }

  else
  {
    v3 = sub_418C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_418C()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);

  if (v3 == v4)
  {
LABEL_2:
    v8 = *(v0 + 384);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    while (1)
    {
      v18 = *(v0 + 424);
      v19 = *(v0 + 384);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = *(v0 + 424);
        v5 = sub_114EC();
      }

      else
      {
        if (v18 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v5 = *(v19 + 8 * v18 + 32);
      }

      v21 = v5;
      *(v0 + 416) = v5;
      *(v0 + 424) = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return NSManagedObjectContext.perform<A>(_:)(v5, v19, v6, v7);
      }

      v22 = *(&v5->isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
      *(v0 + 432) = v22;
      v23 = v22;
      v24 = [v23 managedObjectContext];
      *(v0 + 440) = v24;
      if (v24)
      {
        break;
      }

      if (qword_1D290 != -1)
      {
        swift_once();
      }

      v25 = sub_1125C();
      sub_C094(v25, qword_1D298);
      v26 = v23;
      v15 = sub_1124C();
      v27 = sub_113DC();

      if (os_log_type_enabled(v15, v27))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v26;
        *v12 = v26;
        v13 = v26;
        _os_log_impl(&dword_0, v15, v27, "Delete of share for %@ failed due to nil managedObjectContext", v11, 0xCu);
        sub_C450(v12, &qword_1D500, &qword_126C8);

        v14 = v15;
        v15 = v13;
      }

      else
      {
        v14 = v21;
        v21 = v26;
      }

      v16 = *(v0 + 424);
      v17 = *(v0 + 392);

      if (v16 == v17)
      {
        goto LABEL_2;
      }
    }

    v28 = swift_allocObject();
    *(v0 + 448) = v28;
    *(v28 + 16) = v23;
    v29 = *(&async function pointer to NSManagedObjectContext.perform<A>(_:) + 1);
    v30 = v23;
    v31 = swift_task_alloc();
    *(v0 + 456) = v31;
    *v31 = v0;
    v31[1] = sub_3960;
    v7 = &type metadata for Bool;
    v19 = sub_C610;
    v5 = (v0 + 512);
    v6 = v28;

    return NSManagedObjectContext.perform<A>(_:)(v5, v19, v6, v7);
  }
}

uint64_t sub_44E4()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  swift_willThrow();

  swift_getErrorValue();
  v4 = *(v0 + 272);
  if (sub_55A8(*(v0 + 280), *(v0 + 288)))
  {
    v5 = *(v0 + 384);

    if (qword_1D290 != -1)
    {
LABEL_29:
      swift_once();
    }

    v6 = *(v0 + 480);
    v7 = sub_1125C();
    sub_C094(v7, qword_1D298);
    swift_errorRetain();
    v8 = sub_1124C();
    v9 = sub_113DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 480);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_0, v8, v9, "Error occurred while deleting unowned share: %@", v11, 0xCu);
      sub_C450(v12, &qword_1D500, &qword_126C8);
    }

    v14 = *(v0 + 480);
    v15 = *(v0 + 432);
    v16 = *(v0 + 416);

    swift_willThrow();
    v17 = *(v0 + 480);

    v18 = *(v0 + 8);
    goto LABEL_8;
  }

  v19 = *(v0 + 480);

  v20 = *(v0 + 416);

  v21 = *(v0 + 424);
  v22 = *(v0 + 392);

  if (v21 == v22)
  {
LABEL_7:
    v23 = *(v0 + 384);

    v18 = *(v0 + 8);
LABEL_8:

    return v18();
  }

  while (1)
  {
    v32 = *(v0 + 424);
    v33 = *(v0 + 384);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = *(v0 + 424);
      v35 = sub_114EC();
    }

    else
    {
      if (v32 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v35 = *(v33 + 8 * v32 + 32);
    }

    v36 = v35;
    *(v0 + 416) = v35;
    *(v0 + 424) = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v37 = *(&v35->isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
    *(v0 + 432) = v37;
    v38 = v37;
    v39 = [v38 managedObjectContext];
    *(v0 + 440) = v39;
    if (v39)
    {
      break;
    }

    if (qword_1D290 != -1)
    {
      swift_once();
    }

    v40 = sub_1125C();
    sub_C094(v40, qword_1D298);
    v41 = v38;
    v29 = sub_1124C();
    v42 = sub_113DC();

    if (os_log_type_enabled(v29, v42))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v41;
      *v26 = v41;
      v27 = v41;
      _os_log_impl(&dword_0, v29, v42, "Delete of share for %@ failed due to nil managedObjectContext", v25, 0xCu);
      sub_C450(v26, &qword_1D500, &qword_126C8);

      v28 = v29;
      v29 = v27;
    }

    else
    {
      v28 = v36;
      v36 = v41;
    }

    v30 = *(v0 + 424);
    v31 = *(v0 + 392);

    if (v30 == v31)
    {
      goto LABEL_7;
    }
  }

  v43 = swift_allocObject();
  *(v0 + 448) = v43;
  *(v43 + 16) = v38;
  v44 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
  v45 = v38;
  v46 = swift_task_alloc();
  *(v0 + 456) = v46;
  *v46 = v0;
  v46[1] = sub_3960;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 512, sub_C610, v43, &type metadata for Bool);
}

uint64_t sub_49D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_4E44;
  }

  else
  {
    v3 = sub_4AE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4AE8()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 416);

  v3 = *(v0 + 424);
  v4 = *(v0 + 392);

  if (v3 == v4)
  {
LABEL_2:
    v8 = *(v0 + 384);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    while (1)
    {
      v18 = *(v0 + 424);
      v19 = *(v0 + 384);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = *(v0 + 424);
        v5 = sub_114EC();
      }

      else
      {
        if (v18 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v5 = *(v19 + 8 * v18 + 32);
      }

      v21 = v5;
      *(v0 + 416) = v5;
      *(v0 + 424) = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return NSManagedObjectContext.perform<A>(_:)(v5, v19, v6, v7);
      }

      v22 = *(&v5->isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
      *(v0 + 432) = v22;
      v23 = v22;
      v24 = [v23 managedObjectContext];
      *(v0 + 440) = v24;
      if (v24)
      {
        break;
      }

      if (qword_1D290 != -1)
      {
        swift_once();
      }

      v25 = sub_1125C();
      sub_C094(v25, qword_1D298);
      v26 = v23;
      v15 = sub_1124C();
      v27 = sub_113DC();

      if (os_log_type_enabled(v15, v27))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v26;
        *v12 = v26;
        v13 = v26;
        _os_log_impl(&dword_0, v15, v27, "Delete of share for %@ failed due to nil managedObjectContext", v11, 0xCu);
        sub_C450(v12, &qword_1D500, &qword_126C8);

        v14 = v15;
        v15 = v13;
      }

      else
      {
        v14 = v21;
        v21 = v26;
      }

      v16 = *(v0 + 424);
      v17 = *(v0 + 392);

      if (v16 == v17)
      {
        goto LABEL_2;
      }
    }

    v28 = swift_allocObject();
    *(v0 + 448) = v28;
    *(v28 + 16) = v23;
    v29 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
    v30 = v23;
    v31 = swift_task_alloc();
    *(v0 + 456) = v31;
    *v31 = v0;
    v31[1] = sub_3960;
    v7 = &type metadata for Bool;
    v19 = sub_C610;
    v5 = (v0 + 512);
    v6 = v28;

    return NSManagedObjectContext.perform<A>(_:)(v5, v19, v6, v7);
  }
}

uint64_t sub_4E44()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  swift_willThrow();

  swift_getErrorValue();
  v3 = *(v0 + 296);
  if (sub_55A8(*(v0 + 304), *(v0 + 312)))
  {
    v4 = *(v0 + 384);

    if (qword_1D290 != -1)
    {
LABEL_29:
      swift_once();
    }

    v5 = *(v0 + 504);
    v6 = sub_1125C();
    sub_C094(v6, qword_1D298);
    swift_errorRetain();
    v7 = sub_1124C();
    v8 = sub_113DC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 504);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v7, v8, "Error occurred while removing owned share: %@", v10, 0xCu);
      sub_C450(v11, &qword_1D500, &qword_126C8);
    }

    v13 = *(v0 + 504);
    v15 = *(v0 + 432);
    v14 = *(v0 + 440);
    v16 = *(v0 + 416);

    swift_willThrow();
    v17 = *(v0 + 504);

    v18 = *(v0 + 8);
    goto LABEL_8;
  }

  v19 = *(v0 + 504);

  v20 = *(v0 + 488);
  v21 = *(v0 + 416);

  v22 = *(v0 + 424);
  v23 = *(v0 + 392);

  if (v22 == v23)
  {
LABEL_7:
    v24 = *(v0 + 384);

    v18 = *(v0 + 8);
LABEL_8:

    return v18();
  }

  while (1)
  {
    v33 = *(v0 + 424);
    v34 = *(v0 + 384);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = *(v0 + 424);
      v36 = sub_114EC();
    }

    else
    {
      if (v33 >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v36 = *(v34 + 8 * v33 + 32);
    }

    v37 = v36;
    *(v0 + 416) = v36;
    *(v0 + 424) = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v38 = *(&v36->isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
    *(v0 + 432) = v38;
    v39 = v38;
    v40 = [v39 managedObjectContext];
    *(v0 + 440) = v40;
    if (v40)
    {
      break;
    }

    if (qword_1D290 != -1)
    {
      swift_once();
    }

    v41 = sub_1125C();
    sub_C094(v41, qword_1D298);
    v42 = v39;
    v30 = sub_1124C();
    v43 = sub_113DC();

    if (os_log_type_enabled(v30, v43))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v42;
      *v27 = v42;
      v28 = v42;
      _os_log_impl(&dword_0, v30, v43, "Delete of share for %@ failed due to nil managedObjectContext", v26, 0xCu);
      sub_C450(v27, &qword_1D500, &qword_126C8);

      v29 = v30;
      v30 = v28;
    }

    else
    {
      v29 = v37;
      v37 = v42;
    }

    v31 = *(v0 + 424);
    v32 = *(v0 + 392);

    if (v31 == v32)
    {
      goto LABEL_7;
    }
  }

  v44 = swift_allocObject();
  *(v0 + 448) = v44;
  *(v44 + 16) = v39;
  v45 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
  v46 = v39;
  v47 = swift_task_alloc();
  *(v0 + 456) = v47;
  *v47 = v0;
  v47[1] = sub_3960;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 512, sub_C610, v44, &type metadata for Bool);
}

unint64_t sub_533C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_30A4(a1, type metadata accessor for DSCloudObject);
  v4 = _swiftEmptyArrayStorage;
  if (result)
  {
    v5 = result;
    v6 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_19;
    }

    for (i = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)); i; i = sub_1156C())
    {
      v17 = a2;
      v8 = 0;
      v4 = (v5 & 0xC000000000000001);
      v9 = &NotesDigitalSeparationSource;
      while (1)
      {
        if (v4)
        {
          v15 = sub_114EC();
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_18;
          }

          v15 = *(v5 + 8 * v8 + 32);
        }

        v16 = v15;
        a2 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([*&v15[OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject] v9[40].name])
        {
        }

        else
        {
          sub_1150C();
          v10 = v4;
          v11 = i;
          v12 = v5;
          v13 = v6;
          v14 = _swiftEmptyArrayStorage[2];
          sub_1153C();
          v6 = v13;
          v5 = v12;
          i = v11;
          v4 = v10;
          v9 = &NotesDigitalSeparationSource;
          sub_1154C();
          sub_1151C();
        }

        ++v8;
        if (a2 == i)
        {
          v4 = _swiftEmptyArrayStorage;
          a2 = v17;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_15:
  }

  *a2 = v4;
  return result;
}

uint64_t sub_54DC(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_C64C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_BF58(&qword_1D5A8, &qword_12768);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_55A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v57 = *(v6 + 16);
  v57(&v53 - v17, v3, a1);
  if (sub_1159C())
  {
    (*(v6 + 8))(v18, a1);
  }

  else
  {
    swift_allocError();
    (*(v6 + 32))(v19, v18, a1);
  }

  v20 = sub_1121C();

  IsCode = CKErrorIsCode();

  if (!IsCode)
  {
    goto LABEL_27;
  }

  v57(v16, v3, a1);
  v22 = sub_1159C();
  v55 = v13;
  if (v22)
  {
    (*(v6 + 8))(v16, a1);
  }

  else
  {
    swift_allocError();
    (*(v6 + 32))(v23, v16, a1);
  }

  v24 = sub_1121C();

  v25 = [v24 userInfo];

  v26 = sub_1126C();
  v27 = sub_112BC();
  if (!*(v26 + 16))
  {

    goto LABEL_27;
  }

  v56 = a2;
  v29 = sub_AD28(v27, v28, sub_9BEC);
  v31 = v30;

  if ((v31 & 1) == 0)
  {

LABEL_27:
    v57(v10, v3, a1);
    v49 = sub_1159C();
    if (v49)
    {
      v48 = v49;
      (*(v6 + 8))(v10, a1);
    }

    else
    {
      v48 = swift_allocError();
      (*(v6 + 32))(v50, v10, a1);
    }

    return v48;
  }

  sub_C118(*(v26 + 56) + 32 * v29, v59);

  sub_BF58(&qword_1D5B0, &unk_12770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v32 = 0;
  v34 = v58 + 64;
  v33 = *(v58 + 64);
  v53 = v3;
  v54 = v58;
  v35 = 1 << *(v58 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33;
  v38 = (v35 + 63) >> 6;
  while (1)
  {
    if (!v37)
    {
      while (1)
      {
        v39 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v39 >= v38)
        {

          return 0;
        }

        v37 = *(v34 + 8 * v39);
        ++v32;
        if (v37)
        {
          v32 = v39;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_20:
    v40 = *(*(v54 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v37)))));
    swift_errorRetain();
    v41 = sub_1121C();
    v42 = CKErrorIsCode();

    if ((v42 & 1) == 0)
    {
      v43 = sub_1121C();
      v44 = CKErrorIsCode();

      if ((v44 & 1) == 0)
      {
        v45 = sub_1121C();
        v46 = CKErrorIsCode();

        if (!v46)
        {
          break;
        }
      }
    }

    v37 &= v37 - 1;
  }

  v37 = v55;
  v57(v55, v53, a1);
  v47 = sub_1159C();
  if (v47)
  {
    v48 = v47;
    (*(v6 + 8))(v37, a1);
    goto LABEL_34;
  }

LABEL_33:
  v48 = swift_allocError();
  (*(v6 + 32))(v52, v37, a1);
LABEL_34:

  return v48;
}

uint64_t sub_5B60(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18 - v8;
  sub_AEF0();
  v11 = *&v3[OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext];
  if (v11)
  {
    v12 = sub_1138C();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v3;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = v11;
    v13[8] = ObjectType;
    v14 = v11;
    v15 = v3;

    sub_623C(0, 0, v9, &unk_127F8, v13);

    return sub_C450(v9, &qword_1D510, &qword_126D8);
  }

  else
  {
    sub_C568();
    v16 = swift_allocError();
    *v17 = 0;
    a1(&_swiftEmptyArrayStorage, v16);
  }
}

uint64_t sub_5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_5DA0, 0, 0);
}

uint64_t sub_5DA0()
{
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v1 = sub_1125C();
  v0[10] = sub_C094(v1, qword_1D298);
  v2 = sub_1124C();
  v3 = sub_113CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "fetchSharedResources :: Calling refreshCloudContext", v4, 2u);
  }

  v5 = v0[6];

  v6 = *(v5 + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext);
  v0[11] = v6;
  v7 = v6;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_5F0C;

  return sub_B294(v6);
}

uint64_t sub_5F0C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_617C;
  }

  else
  {

    v4 = sub_6028;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6028()
{
  v1 = v0[10];
  v2 = sub_1124C();
  v3 = sub_113CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "fetchSharedResources :: refreshCloudContext finished", v4, 2u);
  }

  v5 = v0[9];

  v6 = sub_B74C(v5);
  if (v6 >> 62)
  {
    sub_BF58(&qword_1D580, &qword_12738);
    v7 = sub_1155C();
  }

  else
  {

    sub_115BC();
    v7 = v6;
  }

  v9 = v0[7];
  v8 = v0[8];

  v9(v7, 0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_617C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  swift_getErrorValue();
  v4 = *(v0 + 16);
  v5 = sub_55A8(*(v0 + 24), *(v0 + 32));
  v3(_swiftEmptyArrayStorage, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_C724(a3, v26 - v10, &qword_1D510, &qword_126D8);
  v12 = sub_1138C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_C450(v11, &qword_1D510, &qword_126D8);
  }

  else
  {
    sub_1137C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1136C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_112CC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_6588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_BF58(&qword_1D580, &qword_12738);
  v5.super.isa = sub_1131C().super.isa;
  if (a2)
  {
    v6 = sub_1121C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_662C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_664C, 0, 0);
}

uint64_t sub_664C()
{
  sub_AEF0();
  v3 = *(v0[3] + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext);
  v0[4] = v3;
  if (v3)
  {
    v4 = v0[2];
    sub_BF58(&unk_1D590, &qword_12750);
    v5 = swift_allocObject();
    v0[5] = v5;
    *(v5 + 16) = xmmword_124B0;
    *(v5 + 32) = v4;
    v6 = v3;
    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_67D4;
    v8 = v0[3];

    return sub_3384(v5, v6);
  }

  else
  {
    sub_C568();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_67D4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_6954;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_68F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_68F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6954()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[7];
  v4 = v0[1];

  return v4();
}

uint64_t sub_6B48(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_D348;

  return sub_662C(a1);
}

uint64_t sub_6C0C(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_6C2C, 0, 0);
}

unint64_t sub_6C2C()
{
  sub_AEF0();
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext);
  v0[8] = v2;
  if (!v2)
  {
    sub_C568();
    swift_allocError();
    *v16 = 0;
LABEL_14:
    swift_willThrow();
    v19 = v0[1];
LABEL_15:

    return v19();
  }

  v3 = v0[6];
  type metadata accessor for DSParticipant();
  v4 = swift_dynamicCastClass();
  v0[9] = v4;
  if (!v4)
  {
    sub_C568();
    swift_allocError();
    v18 = 4;
LABEL_13:
    *v17 = v18;
    goto LABEL_14;
  }

  v5 = *(v1 + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_cloudContext);
  v0[10] = v5;
  if (!v5)
  {
    sub_C568();
    swift_allocError();
    v18 = 1;
    goto LABEL_13;
  }

  v6 = *(v1 + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_collaborationController);
  v0[11] = v6;
  if (!v6)
  {
    sub_C568();
    swift_allocError();
    v18 = 2;
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v2;
  swift_unknownObjectRetain();
  v9 = v5;
  v10 = v6;
  result = sub_B9DC(v7, v8);
  v0[12] = result;
  if (result >> 62)
  {
    v29 = result;
    v30 = sub_1156C();
    result = v29;
    v0[13] = v30;
    if (v30)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  v12 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  v0[13] = v12;
  if (!v12)
  {
LABEL_24:

    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[6];
    swift_unknownObjectRelease();

    v19 = v0[1];
    goto LABEL_15;
  }

LABEL_7:
  v13 = OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant;
  v0[14] = OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant;
  v14 = v0[12];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_114EC();
    v13 = v0[14];
  }

  else
  {
    if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v0[15] = v15;
  v0[16] = 1;
  v20 = v0[10];
  v21 = v0[11];
  v22 = v0[9];
  v23 = OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject;
  v0[17] = OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject;
  v24 = *&v15[v23];
  sub_BF58(&unk_1D590, &qword_12750);
  v25 = swift_allocObject();
  v0[18] = v25;
  *(v25 + 16) = xmmword_124B0;
  v26 = *(v22 + v13);
  *(v25 + 32) = v26;
  v27 = v26;
  v28 = swift_task_alloc();
  v0[19] = v28;
  *v28 = v0;
  v28[1] = sub_6F7C;

  return sub_D488(v25, v20, v21);
}

uint64_t sub_6F7C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v9 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v6 = sub_7278;
  }

  else
  {
    v7 = *(v4 + 144);

    v6 = sub_70A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_70A8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);

  if (v1 == v2)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 80);

    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    swift_unknownObjectRelease();

    v8 = *(v0 + 8);

    v8();
    return;
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 96);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = *(v0 + 128);
    v12 = sub_114EC();
  }

  else
  {
    if (v9 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v12 = *(v10 + 8 * v9 + 32);
  }

  *(v0 + 120) = v12;
  *(v0 + 128) = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(v0 + 112);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v17 = OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject;
  *(v0 + 136) = OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject;
  v18 = *&v12[v17];
  sub_BF58(&unk_1D590, &qword_12750);
  v19 = swift_allocObject();
  *(v0 + 144) = v19;
  *(v19 + 16) = xmmword_124B0;
  v20 = *(v16 + v13);
  *(v19 + 32) = v20;
  v21 = v20;
  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  *v22 = v0;
  v22[1] = sub_6F7C;

  sub_D488(v19, v14, v15);
}

uint64_t sub_7278()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  swift_getErrorValue();
  v3 = *(v0 + 16);
  if (sub_55A8(*(v0 + 24), *(v0 + 32)))
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);

    v7 = [*(v5 + v4) managedObjectContext];
    *(v0 + 168) = v7;
    v8 = *(v0 + 160);
    v9 = *(v0 + 120);
    if (v7)
    {
      v10 = swift_allocObject();
      *(v0 + 176) = v10;
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      v11 = v9;
      swift_errorRetain();
      v12 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
      v13 = swift_task_alloc();
      *(v0 + 184) = v13;
      *v13 = v0;
      v13[1] = sub_75CC;
      v14 = sub_C894;
      v15 = &type metadata for () + 8;
      v16 = v10;

      return NSManagedObjectContext.perform<A>(_:)(v13, v14, v16, v15);
    }

    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);
    swift_willThrow();
    swift_unknownObjectRelease();

    v30 = *(v0 + 160);
    v25 = *(v0 + 8);
    goto LABEL_9;
  }

  v17 = *(v0 + 160);

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  if (v18 == v19)
  {
    v20 = *(v0 + 96);
    v21 = *(v0 + 80);

    v22 = *(v0 + 88);
    v23 = *(v0 + 64);
    v24 = *(v0 + 48);
    swift_unknownObjectRelease();

    v25 = *(v0 + 8);
LABEL_9:

    return v25();
  }

  v32 = *(v0 + 128);
  v14 = *(v0 + 96);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v33 = *(v0 + 128);
    v13 = sub_114EC();
  }

  else
  {
    if (v32 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_21:
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v13, v14, v16, v15);
    }

    v13 = *(v14 + v32 + 4);
  }

  *(v0 + 120) = v13;
  *(v0 + 128) = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v34 = *(v0 + 112);
  v35 = *(v0 + 80);
  v36 = *(v0 + 88);
  v37 = *(v0 + 72);
  v38 = OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject;
  *(v0 + 136) = OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject;
  v39 = *(v13 + v38);
  sub_BF58(&unk_1D590, &qword_12750);
  v40 = swift_allocObject();
  *(v0 + 144) = v40;
  *(v40 + 16) = xmmword_124B0;
  v41 = *(v37 + v34);
  *(v40 + 32) = v41;
  v42 = v41;
  v43 = swift_task_alloc();
  *(v0 + 152) = v43;
  *v43 = v0;
  v43[1] = sub_6F7C;

  return sub_D488(v40, v35, v36);
}

uint64_t sub_75CC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v7 = *(v2 + 168);
    v6 = *(v2 + 176);

    return _swift_task_switch(sub_770C, 0, 0);
  }
}

uint64_t sub_770C()
{
  v1 = v0[20];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[6];
  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = v0[20];
  v8 = v0[1];

  return v8();
}

void sub_77B0(void *a1)
{
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v2 = sub_1125C();
  sub_C094(v2, qword_1D298);
  v3 = a1;
  swift_errorRetain();
  v4 = sub_1124C();
  v5 = sub_113DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    v8 = *&v3[OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject];
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = v8;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&dword_0, v4, v5, "Removing participant failed for object %@ with error %@", v6, 0x16u);
    sub_BF58(&qword_1D500, &qword_126C8);
    swift_arrayDestroy();
  }
}

uint64_t sub_7ADC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_7BA0;

  return sub_6C0C(a1);
}

uint64_t sub_7BA0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  swift_unknownObjectRelease();

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_1121C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_7D60()
{
  sub_AEF0();
  v3 = *(v0[2] + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext);
  v0[3] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = sub_B74C(v4);
    if (v5 >> 62)
    {
      sub_BF58(&qword_1D580, &qword_12738);
      v6 = sub_1155C();
    }

    else
    {

      sub_115BC();
      v6 = v5;
    }

    v0[4] = v6;

    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_7F04;
    v8 = v0[2];

    return sub_3384(v6, v4);
  }

  else
  {
    sub_C568();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_7F04()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_8084;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_8020;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8020()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8084()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[6];
  v4 = v0[1];

  return v4();
}

uint64_t sub_8260(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_8308;

  return sub_7D40();
}

uint64_t sub_8308()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_1121C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

void sub_848C(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_C04C(0, &qword_1D4D0, NSPredicate_ptr);
  sub_BF58(&qword_1D4D8, &qword_126C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_124C0;
  v53 = a1;
  v8 = [a1 ownerName];
  v9 = sub_112BC();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_BFF8();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v51 = sub_113AC();
  sub_C04C(0, &qword_1D4E8, ICCloudSyncingObject_ptr);
  v12 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v51 context:a2];
  sub_C04C(0, &qword_1D4F0, NSManagedObject_ptr);
  v13 = sub_1132C();

  v14 = sub_321C(v13);

  if (v14)
  {
    v56 = a4;
    v57 = _swiftEmptyArrayStorage;
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      goto LABEL_21;
    }

    v16 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    for (i = a2; v16; i = a2)
    {
      v17 = 0;
      a2 = v14 & 0xC000000000000001;
      v18 = &NotesDigitalSeparationSource;
      v52 = v14;
      while (1)
      {
        if (a2)
        {
          v19 = sub_114EC();
        }

        else
        {
          if (v17 >= *(v15 + 16))
          {
            goto LABEL_20;
          }

          v19 = *(v14 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v22 = [v19 v18[39].name];
        if (v22 && (v23 = v22, v24 = [v22 zoneID], v23, v24))
        {
          v25 = v16;
          v26 = a2;
          v27 = v15;
          v28 = v18;
          sub_C04C(0, &qword_1D4F8, CKRecordZoneID_ptr);
          v29 = v53;
          v30 = sub_1141C();

          if (v30)
          {
            sub_1150C();
            v31 = v57[2];
            sub_1153C();
            sub_1154C();
            sub_1151C();
          }

          else
          {
          }

          v18 = v28;
          v15 = v27;
          a2 = v26;
          v16 = v25;
          v14 = v52;
        }

        else
        {
        }

        ++v17;
        if (v21 == v16)
        {
          v32 = v57;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v16 = sub_1156C();
    }

    v32 = _swiftEmptyArrayStorage;
LABEL_23:

    if ((v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
    {
      goto LABEL_40;
    }

    for (j = *(v32 + 16); j; j = sub_1156C())
    {
      v34 = 0;
      v35 = v32 & 0xC000000000000001;
      v36 = &selRef_allCloudObjectIDsInContext_passingTest_;
      v54 = v32;
      while (1)
      {
        if (v35)
        {
          v37 = sub_114EC();
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_39;
          }

          v37 = *(v32 + 8 * v34 + 32);
        }

        v38 = v37;
        v39 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v36[82] != -1)
        {
          swift_once();
        }

        v40 = sub_1125C();
        sub_C094(v40, qword_1D298);
        v41 = v38;

        v42 = sub_1124C();
        v43 = sub_113CC();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = j;
          v46 = swift_slowAlloc();
          v47 = v35;
          v48 = swift_slowAlloc();
          v57 = v48;
          *v44 = 138412546;
          *(v44 + 4) = v41;
          *v46 = v41;
          *(v44 + 12) = 2080;
          v49 = v41;
          *(v44 + 14) = sub_A658(a3, v56, &v57);
          _os_log_impl(&dword_0, v42, v43, "Deleting shared %@ for accountID %s from local database", v44, 0x16u);
          sub_C450(v46, &qword_1D500, &qword_126C8);
          j = v45;

          sub_C0CC(v48);
          v35 = v47;
          v32 = v54;

          v36 = &selRef_allCloudObjectIDsInContext_passingTest_;
        }

        [v41 deleteFromLocalDatabase];
        ++v34;
        if (v39 == j)
        {

          [i ic_save];
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }
  }

LABEL_42:
}

uint64_t sub_8A0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_8AE0(char **a1, uint64_t a2)
{
  v3 = [objc_opt_self() allCloudKitAccountsInContext:a2];
  sub_C04C(0, &qword_1D4C0, ICAccount_ptr);
  v4 = sub_1132C();

  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

LABEL_22:
  v5 = sub_1156C();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = sub_114EC();
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v9 = *(v4 + 8 * v8 + 32);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 identifier];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v21 = a1;
    v12 = v11;
    v13 = sub_112BC();
    v20 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_A54C(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_A54C((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    a1 = v21;
    *(v17 + 4) = v13;
    *(v17 + 5) = v20;
  }

  while (v6 != v5);
LABEL_24:

  v18 = *a1;
  *a1 = v7;
}

id sub_8E68(void *a1, uint64_t a2, void *a3, SEL *a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = a3;
  v11 = a1;
  v12 = [v9 sharedContext];
  if (!v12 || (v13 = v12, v14 = [v12 *a4], v13, !v14))
  {
    v14 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:a5];
  }

  return v14;
}

Swift::Int sub_8FDC()
{
  v1 = *v0;
  sub_1163C();
  sub_1164C(v1);
  return sub_1165C();
}

Swift::Int sub_9050()
{
  v1 = *v0;
  sub_1163C();
  sub_1164C(v1);
  return sub_1165C();
}

id sub_90CC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [objc_opt_self() sharedContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_9178(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1128C();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1122C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_9254(uint64_t a1, id *a2)
{
  result = sub_1129C();
  *a2 = 0;
  return result;
}

uint64_t sub_92CC(uint64_t a1, id *a2)
{
  v3 = sub_112AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_934C@<X0>(void *a1@<X8>)
{
  sub_112BC();
  v2 = sub_1128C();

  *a1 = v2;
  return result;
}

uint64_t sub_9390(uint64_t a1)
{
  v2 = sub_9938(&qword_1D658, type metadata accessor for DSSourceError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_93FC(uint64_t a1)
{
  v2 = sub_9938(&qword_1D658, type metadata accessor for DSSourceError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_9468(uint64_t a1)
{
  v2 = sub_9938(&qword_1D618, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_9500(uint64_t a1)
{
  v2 = sub_9938(&qword_1D618, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_956C(uint64_t a1)
{
  v2 = sub_9938(&qword_1D618, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_95D8(void *a1, uint64_t a2)
{
  v4 = sub_9938(&qword_1D618, type metadata accessor for DSSourceError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_968C(uint64_t a1, uint64_t a2)
{
  v4 = sub_9938(&qword_1D618, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_9708()
{
  v2 = *v0;
  sub_1163C();
  sub_1127C();
  return sub_1165C();
}

void *sub_9768@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_9778@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1128C();

  *a2 = v5;
  return result;
}

uint64_t sub_97C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_112BC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_97EC(uint64_t a1)
{
  v2 = sub_9938(&qword_1D450, type metadata accessor for DSSourceName);
  v3 = sub_9938(&qword_1D458, type metadata accessor for DSSourceName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_9938(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_9980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_9938(&qword_1D618, type metadata accessor for DSSourceError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_9A18()
{
  v1 = *v0;
  sub_112BC();
  v2 = sub_112FC();

  return v2;
}

uint64_t sub_9A54()
{
  v1 = *v0;
  sub_112BC();
  sub_112DC();
}

Swift::Int sub_9AA8()
{
  v1 = *v0;
  sub_112BC();
  sub_1163C();
  sub_112DC();
  v2 = sub_1165C();

  return v2;
}

uint64_t sub_9B1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_112BC();
  v6 = v5;
  if (v4 == sub_112BC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_115AC();
  }

  return v9 & 1;
}

unint64_t sub_9BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_115AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_9CA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_9D9C;

  return v7(a1);
}

uint64_t sub_9D9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_9E94(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_D380;

  return v7();
}

uint64_t sub_9F7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_A064;

  return v8();
}

uint64_t sub_A064()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_BF58(&qword_1D510, &qword_126D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_C724(a3, v24 - v10, &qword_1D510, &qword_126D8);
  v12 = sub_1138C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_C450(v11, &qword_1D510, &qword_126D8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1137C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1136C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_112CC() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_C450(a3, &qword_1D510, &qword_126D8);

    return v22;
  }

LABEL_8:
  sub_C450(a3, &qword_1D510, &qword_126D8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_A454(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_D384;

  return v7(a1);
}

char *sub_A54C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_BF58(&qword_1D4C8, &qword_126B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_A658(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_A724(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_C118(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_C0CC(v11);
  return v7;
}

unint64_t sub_A724(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_A830(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_114FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_A830(uint64_t a1, unint64_t a2)
{
  v4 = sub_A87C(a1, a2);
  sub_A9AC(&off_188F0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_A87C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_AA98(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_114FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_112EC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_AA98(v10, 0);
        result = sub_114DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_A9AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_AB0C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_AA98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_BF58(&qword_1D508, &qword_126D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_AB0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_BF58(&qword_1D508, &qword_126D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_AC00(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_114EC();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1156C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_AD28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_1163C();
  sub_112DC();
  v7 = sub_1165C();

  return a3(a1, a2, v7);
}

unint64_t sub_ADAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BF58(&qword_1D620, &qword_12780);
    v3 = sub_1157C();
    v4 = a1 + 32;

    while (1)
    {
      sub_C724(v4, &v13, &qword_1D628, &qword_12788);
      v5 = v13;
      v6 = v14;
      result = sub_AD28(v13, v14, sub_9BEC);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_C78C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_AEF0()
{
  v1 = ICNotesAppBundleIdentifier();
  v2 = sub_112BC();
  v4 = v3;

  v5 = objc_allocWithZone(LSApplicationRecord);
  v6 = sub_9178(v2, v4, 0);
  if (v0)
  {
    if (qword_1D290 != -1)
    {
      swift_once();
    }

    v7 = sub_1125C();
    sub_C094(v7, qword_1D298);
    swift_errorRetain();
    v8 = sub_1124C();
    v9 = sub_113DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "appInstalledCheck :: application record lookup failure with error: %@", v10, 0xCu);
      sub_C450(v11, &qword_1D500, &qword_126C8);
    }

    type metadata accessor for DSSourceError(0);
    sub_ADAC(&_swiftEmptyArrayStorage);
    sub_9938(&qword_1D618, type metadata accessor for DSSourceError);
    sub_1120C();
    swift_willThrow();
  }

  else
  {

    if (qword_1D290 != -1)
    {
      swift_once();
    }

    v13 = sub_1125C();
    sub_C094(v13, qword_1D298);
    v14 = sub_1124C();
    v15 = sub_113CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "appInstalledCheck :: appplication record lookup success", v16, 2u);
    }

    v17 = [objc_opt_self() sharedReachabilityForInternetConnection];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 currentReachabilityStatus];

      if (!v19)
      {
        type metadata accessor for DSSourceError(0);
        sub_ADAC(&_swiftEmptyArrayStorage);
        sub_9938(&qword_1D618, type metadata accessor for DSSourceError);
        sub_1120C();
        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_B2B4()
{
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v1 = sub_1125C();
  v0[7] = sub_C094(v1, qword_1D298);
  v2 = sub_1124C();
  v3 = sub_113CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "refreshCloudContext :: call updateState on ICCloudContext", v4, 2u);
  }

  v5 = v0[6];

  [v5 updateCloudContextState];
  v6 = sub_1124C();
  v7 = sub_113CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "refreshCloudContext :: updateState finished", v8, 2u);
  }

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_B488;
  v10 = v0[6];

  return sub_2680(v10);
}

uint64_t sub_B488()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B5BC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_B5BC()
{
  v1 = v0[9];
  swift_getErrorValue();
  v2 = v0[2];
  v3 = sub_55A8(v0[3], v0[4]);
  v4 = v0[9];
  if (v3)
  {
    v5 = v0[7];

    swift_errorRetain();
    v6 = sub_1124C();
    v7 = sub_113DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[9];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_0, v6, v7, "Error occurred while syncing iCloud context: %@", v9, 0xCu);
      sub_C450(v10, &qword_1D500, &qword_126C8);
    }

    v12 = v0[9];

    swift_willThrow();
    v13 = v0[1];
    v14 = v0[9];
  }

  else
  {
    v15 = v0[9];

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_B74C(void *a1)
{
  v16 = _swiftEmptyArrayStorage;
  if (qword_1D290 != -1)
  {
    swift_once();
  }

  v2 = sub_1125C();
  sub_C094(v2, qword_1D298);
  v3 = sub_1124C();
  v4 = sub_113CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "allSharedCloudObjects :: Perform and wait on MOC", v5, 2u);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = &v16;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_C6C8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_D38C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20A0;
  aBlock[3] = &unk_18BC0;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  [v9 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_1124C();
    v12 = sub_113CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "allSharedCloudObjects :: Finished fetch of cloud objects", v13, 2u);
    }

    v14 = v16;

    return v14;
  }

  return result;
}

void *sub_B9DC(void *a1, void *a2)
{
  v20 = a1;
  v2 = sub_B74C(a2);
  v3 = v2;
  v24 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1156C())
  {
    v5 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v6 = 0;
    v21 = v3 & 0xFFFFFFFFFFFFFF8;
    v22 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v7 = sub_114EC();
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [*&v7[OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject] managedObjectContext];
      if (v10)
      {
        v11 = v10;
        __chkstk_darwin(v10);
        v19 = v8;
        sub_BF58(&qword_1D630, &qword_127C0);
        sub_113FC();

        if (v23)
        {
          v12 = v23;
        }

        else
        {
          v12 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v13 = sub_30A4(v12, type metadata accessor for DSParticipant);

      if (v13 && (v23 = v20, __chkstk_darwin(v14), v19 = &v23, v15 = sub_AC00(sub_C8B0, &v18, v13), , (v15 & 1) != 0))
      {
        sub_1150C();
        v16 = v24[2];
        sub_1153C();
        sub_1154C();
        sub_1151C();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v5 = v24;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:

  return v5;
}

void sub_BC54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC13DSNotesPlugin28NotesDigitalSeparationSource_managedObjectContext);
  if (v4)
  {
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = v4;
    v8[4] = a2;
    v8[5] = a3;
    v12[4] = sub_BFEC;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_8A0C;
    v12[3] = &unk_189E0;
    v9 = _Block_copy(v12);
    v10 = v4;
    v11 = a1;

    [v10 performBlock:v9];
    _Block_release(v9);
  }
}

uint64_t sub_BD68(void *a1)
{
  v9 = _swiftEmptyArrayStorage;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_BF10;
  *(v3 + 24) = v2;
  aBlock[4] = sub_BF18;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20A0;
  aBlock[3] = &unk_18990;
  v4 = _Block_copy(aBlock);
  v5 = a1;

  [v5 performBlockAndWait:v4];
  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_BED8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BF18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_BF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_BF58(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_BFA4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_BFF8()
{
  result = qword_1D4E0;
  if (!qword_1D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D4E0);
  }

  return result;
}

uint64_t sub_C04C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_C094(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_C0CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_C118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_C174(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_C1D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C218()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_D380;

  return sub_8260(v2, v3);
}

uint64_t sub_C2C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_D380;

  return sub_9E94(v2, v3, v5);
}

uint64_t sub_C384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_D380;

  return sub_9F7C(a1, v4, v5, v7);
}

uint64_t sub_C450(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_BF58(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_C4B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_D380;

  return sub_A454(a1, v5);
}

unint64_t sub_C568()
{
  result = qword_1D518;
  if (!qword_1D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D518);
  }

  return result;
}

uint64_t sub_C5BC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

id sub_C610@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 16) isOwnedByCurrentUser];
  *a1 = result;
  return result;
}

void *sub_C64C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_C690()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C6E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_C724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BF58(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_C78C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_C7A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_A064;

  return sub_7ADC(v2, v3, v4);
}

uint64_t sub_C854()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C8B0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for DSParticipant();
  return sub_1141C() & 1;
}

uint64_t sub_C924()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_C96C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_D380;

  return sub_6B48(v2, v3, v4);
}

uint64_t sub_CA24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_CA64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CAA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_CAF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_D380;

  return sub_5D7C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_CBD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CC08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_D380;

  return sub_9CA4(a1, v5);
}

uint64_t sub_CCC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_A064;

  return sub_9CA4(a1, v5);
}

uint64_t sub_CD90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CDE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotesDigitalSeparationSource.NotesDigitalSeparationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotesDigitalSeparationSource.NotesDigitalSeparationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_CF90()
{
  result = qword_1D640;
  if (!qword_1D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D640);
  }

  return result;
}

void sub_D1A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_D240()
{
  result = qword_1D680;
  if (!qword_1D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D680);
  }

  return result;
}

void *sub_D3AC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject) managedObjectContext];
  if (!v1 || (v2 = v1, __chkstk_darwin(v1), sub_BF58(&qword_1D630, &qword_127C0), sub_113FC(), v2, (result = v4) == 0))
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_D488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[37] = a1;
  v4[38] = a2;
  return _swift_task_switch(sub_D4AC, 0, 0);
}

uint64_t sub_D4AC()
{
  v1 = [*(v0 + 320) managedObjectContext];
  *(v0 + 328) = v1;
  if (!v1)
  {
LABEL_19:
    v19 = *(v0 + 8);

    return v19(0);
  }

  v2 = v1;
  v3 = *(v0 + 320);
  *(swift_task_alloc() + 16) = v3;
  sub_BF58(&qword_1D770, &qword_12BC8);
  sub_113FC();

  if (*(v0 + 416))
  {
    if ((*(v0 + 417) & 1) == 0)
    {
      v4 = [objc_opt_self() serverShareIfRootObject:*(v0 + 320) managedObjectContext:v2];
      *(v0 + 360) = v4;
      if (v4)
      {
        v5 = v4;
        v6 = *(v0 + 296);
        if (v6 >> 62)
        {
          if (v6 < 0)
          {
            v20 = *(v0 + 296);
          }

          v4 = sub_1156C();
          v7 = v4;
          if (!v4)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
          if (!v7)
          {
            goto LABEL_25;
          }
        }

        if (v7 < 1)
        {
          __break(1u);
          return _swift_continuation_await(v4);
        }

        v8 = 0;
        v24 = *(v0 + 296) + 32;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = *(v0 + 296);
            v10 = sub_114EC();
          }

          else
          {
            v10 = *(v24 + 8 * v8);
          }

          v11 = v10;
          v12 = [v5 participants];
          sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
          v13 = sub_1132C();

          v14 = sub_F4A0(v11, v13);

          if (v14)
          {
            [v5 removeParticipant:v14];
          }

          ++v8;
        }

        while (v7 != v8);
LABEL_25:
        v22 = *(v0 + 312);
        v21 = *(v0 + 320);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 272;
        *(v0 + 24) = sub_DC7C;
        v23 = swift_continuation_init();
        *(v0 + 136) = sub_BF58(&unk_1D778, &qword_12BE0);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_F598;
        *(v0 + 104) = &unk_18FB8;
        *(v0 + 112) = v23;
        [v22 prepareShare:v5 forObject:v21 qualityOfService:33 completionHandler:v0 + 80];
        v4 = (v0 + 16);

        return _swift_continuation_await(v4);
      }
    }

    goto LABEL_19;
  }

  v15 = swift_task_alloc();
  *(v0 + 336) = v15;
  *v15 = v0;
  v15[1] = sub_D88C;
  v16 = *(v0 + 320);
  v17 = *(v0 + 304);

  return sub_EFA4(v17, v16);
}

uint64_t sub_D88C()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_DA08;
  }

  else
  {
    v3 = sub_D9A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_D9A0()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_DA08()
{
  v1 = *(v0 + 344);
  swift_getErrorValue();
  v2 = *(v0 + 192);
  if (sub_55A8(*(v0 + 200), *(v0 + 208)))
  {

    v3 = swift_task_alloc();
    *(v0 + 352) = v3;
    *v3 = v0;
    v3[1] = sub_DB0C;
    v4 = *(v0 + 344);
    v5 = *(v0 + 320);

    return sub_F2C8(v4, v5);
  }

  else
  {
    v7 = *(v0 + 344);

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_DB0C()
{
  v1 = *(*v0 + 352);
  v3 = *v0;

  return _swift_task_switch(sub_DC08, 0, 0);
}

uint64_t sub_DC08()
{
  v1 = *(v0 + 344);
  swift_willThrow();
  v2 = *(v0 + 344);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_DC7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_DD8C;
  }

  else
  {
    v3 = sub_DFB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_DD8C()
{
  v1 = *(v0 + 368);
  swift_willThrow();
  swift_getErrorValue();
  v2 = *(v0 + 216);
  if (sub_55A8(*(v0 + 224), *(v0 + 232)))
  {

    if (qword_1D2B0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 368);
    v4 = sub_1125C();
    sub_C094(v4, qword_1D700);
    swift_errorRetain();
    v5 = sub_1124C();
    v6 = sub_113DC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 368);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_0, v5, v6, "Error occurred while preparing share: %@", v8, 0xCu);
      sub_C450(v9, &qword_1D500, &qword_126C8);
    }

    v11 = *(v0 + 360);
    v12 = *(v0 + 368);

    swift_willThrow();
    v13 = *(v0 + 368);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);

    v18 = *(v0 + 8);

    return v18(0);
  }
}

uint64_t sub_DFB4()
{
  v1 = v0[37];
  v2 = v0[34];
  v0[47] = v2;
  v3 = [v2 ic_nonCurrentUserParticipants];
  sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
  v4 = sub_1132C();

  v5 = sub_109B8(v4);

  LOBYTE(v1) = sub_FE48(v1, v5);

  if (v1)
  {
    v7 = v0[40];
    v6 = v0[41];
    v8 = v0[37];
    v9 = swift_allocObject();
    v0[48] = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10B38;
    *(v10 + 24) = v9;
    v0[22] = sub_10B50;
    v0[23] = v10;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_20A0;
    v0[21] = &unk_19030;
    v11 = _Block_copy(v0 + 18);
    v12 = v0[23];

    v13 = v7;

    [v6 performBlockAndWait:v11];
    _Block_release(v11);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      if ([v2 ic_nonOwnerInvitedParticipantsCount] || (objc_msgSend(v2, "ic_isPublicShare") & 1) != 0)
      {

        v14 = v0[1];

        return v14(v2);
      }

      else
      {
        if (qword_1D2B0 != -1)
        {
          swift_once();
        }

        v23 = sub_1125C();
        v0[49] = sub_C094(v23, qword_1D700);
        v24 = v2;
        v25 = sub_1124C();
        v26 = sub_113CC();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v28 = v2;
          v29 = v24;
          _os_log_impl(&dword_0, v25, v26, "No non-owner participants left on share, removing share %@", v27, 0xCu);
          sub_C450(v28, &qword_1D500, &qword_126C8);
        }

        v30 = swift_task_alloc();
        v0[50] = v30;
        *v30 = v0;
        v30[1] = sub_E4E4;
        v32 = v0[39];
        v31 = v0[40];

        return sub_F870(v32, v31);
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_1D2B0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v16 = sub_1125C();
  sub_C094(v16, qword_1D700);
  v17 = sub_1124C();
  v18 = sub_113DC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Specified participants are not all removed from the share", v19, 2u);
  }

  v20 = v0[45];

  sub_C568();
  swift_allocError();
  *v21 = 5;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_E4E4()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_E678;
  }

  else
  {
    v3 = sub_E5F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_E5F8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_E678()
{
  v1 = *(v0 + 408);
  swift_getErrorValue();
  v2 = *(v0 + 240);
  v3 = sub_55A8(*(v0 + 248), *(v0 + 256));
  v4 = *(v0 + 408);
  if (v3)
  {
    v5 = *(v0 + 392);

    swift_errorRetain();
    v6 = sub_1124C();
    v7 = sub_113DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 408);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_0, v6, v7, "Error occurred while removing owned share: %@", v9, 0xCu);
      sub_C450(v10, &qword_1D500, &qword_126C8);
    }

    v12 = *(v0 + 408);
    v14 = *(v0 + 376);
    v13 = *(v0 + 384);
    v15 = *(v0 + 360);

    swift_willThrow();

    v16 = *(v0 + 408);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 408);

    v20 = *(v0 + 376);
    v21 = *(v0 + 384);

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_E878()
{
  v0 = sub_1125C();
  sub_C174(v0, qword_1D700);
  sub_C094(v0, qword_1D700);
  return sub_1123C();
}

uint64_t sub_E8C4(uint64_t a1)
{
  swift_getObjectType();
  sub_EED8(a1, v8);
  if (!v9)
  {
    sub_C450(v8, &qword_1D760, &qword_12BB8);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  sub_C04C(0, &qword_1D768, NSObject_ptr);
  v3 = *(v1 + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
  v4 = *&v7[OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject];
  v5 = sub_1141C();

  return v5 & 1;
}

id sub_EBF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*(a1 + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject) serverShare];
  if (!result)
  {
    v14 = 0;
LABEL_18:
    *a2 = v14;
    return result;
  }

  v4 = result;
  v5 = [result participants];

  sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
  v6 = sub_1132C();

  if (v6 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!v7)
  {
LABEL_17:

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  while (1)
  {
    v17 = _swiftEmptyArrayStorage;
    result = sub_1152C();
    if (v7 < 0)
    {
      break;
    }

    v15 = a2;
    v8 = 0;
    a2 = &OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_114EC();
        goto LABEL_7;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_15;
      }

      v9 = *(v6 + 8 * v8 + 32);
LABEL_7:
      v10 = v9;
      ++v8;
      v11 = type metadata accessor for DSParticipant();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant] = v10;
      v16.receiver = v12;
      v16.super_class = v11;
      objc_msgSendSuper2(&v16, "init");
      sub_1150C();
      v13 = v17[2];
      sub_1153C();
      sub_1154C();
      sub_1151C();
      if (v7 == v8)
      {

        v14 = v17;
        a2 = v15;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v7 = sub_1156C();
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

id sub_EE6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BF58(&qword_1D760, &qword_12BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_EF48@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = [v3 isOwnedByCurrentUser];
  result = [v3 isDeleted];
  a1[1] = result;
  return result;
}

uint64_t sub_EFA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_EFC4, 0, 0);
}

uint64_t sub_EFC4()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_BF58(&unk_1D590, &qword_12750);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_124B0;
  *(v3 + 32) = v2;
  sub_C04C(0, &qword_1D4E8, ICCloudSyncingObject_ptr);
  v4 = v2;
  isa = sub_1131C().super.isa;
  v0[20] = isa;

  v0[2] = v0;
  v0[3] = sub_F154;
  v6 = swift_continuation_init();
  v0[17] = sub_BF58(&unk_1D7A0, &qword_12758);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_2BA8;
  v0[13] = &unk_19080;
  v0[14] = v6;
  [v1 deleteSharesForObjects:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_F154()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2B38;
  }

  else
  {
    v3 = sub_F264;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_F264()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F2C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_F2E8, 0, 0);
}

uint64_t sub_F2E8()
{
  if (qword_1D2B0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1125C();
  sub_C094(v3, qword_1D700);
  v4 = v2;
  swift_errorRetain();
  v5 = sub_1124C();
  v6 = sub_113DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&dword_0, v5, v6, "Remote delete of share for %@ failed with error %@", v9, 0x16u);
    sub_BF58(&qword_1D500, &qword_126C8);
    swift_arrayDestroy();
  }

  v13 = v0[1];

  return v13();
}

void *sub_F4A0(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1156C())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = sub_114EC();
      }

      else
      {
        if (j >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = v6;
      if (sub_F9D8(&v10, a1))
      {
        return v7;
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

uint64_t sub_F598(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_C64C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_BF58(&qword_1D5A8, &qword_12768);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_F688(uint64_t a1, void *a2)
{
  if (qword_1D2B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1125C();
  sub_C094(v3, qword_1D700);

  v4 = a2;
  oslog = sub_1124C();
  v5 = sub_113BC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315394;
    sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
    v9 = sub_1133C();
    v11 = sub_A658(v9, v10, &v14);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v4;
    *v7 = v4;
    v12 = v4;
    _os_log_impl(&dword_0, oslog, v5, "Successfully removed %s from shared resource %@", v6, 0x16u);
    sub_C450(v7, &qword_1D500, &qword_126C8);

    sub_C0CC(v8);
  }
}

uint64_t sub_F870(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_F890, 0, 0);
}

uint64_t sub_F890()
{
  v1 = *(v0 + 144);
  v2 = [*(v0 + 152) objectID];
  *(v0 + 160) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_F154;
  v3 = swift_continuation_init();
  *(v0 + 136) = sub_BF58(&qword_1D5A0, &qword_12760);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_54DC;
  *(v0 + 104) = &unk_19058;
  *(v0 + 112) = v3;
  [v1 removeShareIfNeededWithOwnedObjectID:v2 countParticipants:0 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_F9D8(void **a1, id a2)
{
  v3 = *a1;
  v4 = [a2 ic_emailAddress];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = [v3 ic_emailAddress];
  if (v5)
  {
    v6 = v5;
    v7 = sub_112BC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a2 ic_emailAddress];
  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_31;
    }

    goto LABEL_14;
  }

  v11 = v10;
  v12 = sub_112BC();
  v14 = v13;

  if (!v9)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_14;
  }

  if (!v14)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v7 == v12 && v9 == v14)
  {
LABEL_25:

    v21 = 1;
LABEL_33:

    return v21 & 1;
  }

  v27 = sub_115AC();

  if (v27)
  {
    goto LABEL_31;
  }

LABEL_15:
  v15 = [a2 ic_phoneNumber];
  if (v15)
  {

    v16 = [v3 ic_phoneNumber];
    if (v16)
    {
      v17 = v16;
      v18 = sub_112BC();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v22 = [a2 ic_phoneNumber];
    if (v22)
    {
      v23 = v22;
      v24 = sub_112BC();
      v26 = v25;

      if (v20)
      {
        if (v26)
        {
          if (v18 != v24 || v20 != v26)
          {
            v21 = sub_115AC();

            goto LABEL_33;
          }

          goto LABEL_25;
        }

LABEL_27:
        v21 = 0;
        goto LABEL_33;
      }

      if (v26)
      {
        v21 = 0;
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      goto LABEL_27;
    }

LABEL_31:
    v21 = 1;
    return v21 & 1;
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t sub_FC10(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1147C();

    if (v9)
    {

      sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_1146C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10048(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10238(v21 + 1);
    }

    v19 = v8;
    sub_10460(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
  v11 = sub_1140C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_104E4(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1141C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_FE48(unint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_1146C())
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1156C())
  {
    sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
    if (!i)
    {
      break;
    }

    v6 = 0;
    v7 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = a1 + 32;
    v9 = a2 + 56;
    v20 = a1 & 0xC000000000000001;
    v21 = i;
    while (1)
    {
      if (v7)
      {
        v10 = sub_114EC();
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_28;
        }

        v10 = *(v22 + 8 * v6);
      }

      v11 = v10;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      if (v4)
      {
        a1 = sub_1149C();

        if (a1)
        {
          return 0;
        }

        if (v6 == i)
        {
          return 1;
        }
      }

      else
      {
        if (*(a2 + 16))
        {
          a1 = v10;
          v13 = sub_1140C(*(a2 + 40));
          v14 = -1 << *(a2 + 32);
          v15 = v13 & ~v14;
          if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            v16 = ~v14;
            while (1)
            {
              v17 = *(*(a2 + 48) + 8 * v15);
              a1 = sub_1141C();

              if (a1)
              {
                break;
              }

              v15 = (v15 + 1) & v16;
              if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            return 0;
          }
        }

LABEL_21:

        v4 = 0;
        v7 = v20;
        i = v21;
        v8 = v19;
        if (v6 == v21)
        {
          return 1;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return 1;
}

Swift::Int sub_10048(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_BF58(&unk_1D790, &unk_12BF0);
    v2 = sub_114CC();
    v15 = v2;
    sub_1145C();
    if (sub_1148C())
    {
      sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10238(v9 + 1);
        }

        v2 = v15;
        result = sub_1140C(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1148C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_BF58(&unk_1D790, &unk_12BF0);
  result = sub_114BC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_1140C(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10460(uint64_t a1, uint64_t a2)
{
  sub_1140C(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_1144C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_104E4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10238(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10654();
      goto LABEL_12;
    }

    sub_107A4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1140C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1141C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_115CC();
  __break(1u);
}

id sub_10654()
{
  v1 = v0;
  sub_BF58(&unk_1D790, &unk_12BF0);
  v2 = *v0;
  v3 = sub_114AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_107A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_BF58(&unk_1D790, &unk_12BF0);
  result = sub_114BC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1140C(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_109B8(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    sub_C04C(0, &qword_1D758, CKShareParticipant_ptr);
    sub_10B70();
    result = sub_1139C();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_114EC();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_FC10(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1156C();
  }

  v6 = result;
  v5 = sub_1156C();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10AF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10B70()
{
  result = qword_1D788;
  if (!qword_1D788)
  {
    sub_C04C(255, &qword_1D758, CKShareParticipant_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D788);
  }

  return result;
}

uint64_t sub_10BF0(uint64_t a1)
{
  swift_getObjectType();
  sub_EED8(a1, v8);
  if (!v9)
  {
    sub_110F8(v8);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  sub_11160();
  v3 = *(v1 + OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant);
  v4 = *&v7[OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant];
  v5 = sub_1141C();

  return v5 & 1;
}

uint64_t CKUserIdentity.unifiedContactIdentifier.getter()
{
  v1 = [v0 contactIdentifiers];
  v2 = sub_1132C();

  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10F84(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 lookupInfo];
  if (v5 && (v6 = v5, v7 = [v5 *a3], v6, v7))
  {
    sub_112BC();

    v8 = sub_1128C();

    v9 = v8;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

id sub_11048(SEL *a1)
{
  result = [v1 lookupInfo];
  if (result)
  {
    v4 = result;
    v5 = [result *a1];

    if (v5)
    {
      v6 = sub_112BC();

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_110F8(uint64_t a1)
{
  v2 = sub_BF58(&qword_1D760, &qword_12BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_11160()
{
  result = qword_1D768;
  if (!qword_1D768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1D768);
  }

  return result;
}