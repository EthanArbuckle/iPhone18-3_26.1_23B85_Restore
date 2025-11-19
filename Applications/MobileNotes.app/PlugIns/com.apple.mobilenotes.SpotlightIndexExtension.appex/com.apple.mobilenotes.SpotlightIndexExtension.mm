void sub_1000017DC(id a1)
{
  [ICNoteContext startSharedContextWithOptions:8456256];
  v5 = +[ICSearchIndexer sharedIndexer];
  v1 = +[ICNoteContext sharedContext];
  v2 = [v1 persistentContainer];
  v3 = [ICNoteContext initializeSearchIndexerDataSourceWithPersistentContainer:v2];
  [v5 addDataSource:v3];

  v4 = objc_alloc_init(ICHTMLSearchIndexerDataSource);
  [v5 addDataSource:v4];
  [v5 setRetryOnErrors:0];
}

void sub_1000018F4(id a1)
{
  v1 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  byte_10000C5E8 = [v1 BOOLForKey:@"EnableIndexInExtension"];
}

void sub_100001B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000044E0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100004554();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100001BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100004588();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000045FC();
  }

  v6 = +[NSDistributedNotificationCenter defaultCenter];
  [v6 postNotificationName:ICReindexRequestedNotification object:0 userInfo:0];

  (*(*(a1 + 32) + 16))();
}

void sub_100001D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000046A8(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100004748(a1, v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002420(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

Swift::Int sub_100002498()
{
  v1 = *v0;
  sub_100004950();
  sub_100004960(v1);
  return sub_100004970();
}

Swift::Int sub_10000250C()
{
  v1 = *v0;
  sub_100004950();
  sub_100004960(v1);
  return sub_100004970();
}

unint64_t sub_100002550@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100003D10(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.__allocating_init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  if (!a2)
  {

    a1 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = a3;
  v11 = a2;
  v12 = sub_100003B54(v11, v10);
  if (v13)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = [v9 initWithType:v12 object:a1 fromParentObject:v11 toParentObject:v10 isCopy:a4 & 1];

  return v15;
}

id ICCloudSyncingObject.MoveAction.init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v6 = a1;
  if (!a2)
  {

    v6 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v9 = a3;
  v10 = a2;
  v11 = sub_100003B54(v10, v9);
  if (v12)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = [v4 initWithType:v11 object:v6 fromParentObject:v10 toParentObject:v9 isCopy:a4 & 1];

  return v14;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = [a1 parent];
  if (!v9)
  {
    v9 = [a1 account];
  }

  v10 = [v8 initWithObject:a1 fromParentObject:v9 toParentObject:a2 isCopy:a3 & 1];

  return v10;
}

id ICCloudSyncingObject.MoveAction.init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [a1 parent];
  if (!v8)
  {
    v8 = [a1 account];
  }

  v9 = [v4 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [a1 folder];
  v9 = [v7 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = [a1 folder];
  v8 = [v3 initWithObject:a1 fromParentObject:v7 toParentObject:a2 isCopy:a3 & 1];

  return v8;
}

id ICCloudSyncingObject.MoveAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICCloudSyncingObject.MoveAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000033B4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100004930();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100003A44(v3, 0);
  sub_100003890(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100003530(unsigned int *a1)
{
  v22 = a1;
  v23 = sub_100004860();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004870();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000041D0(&qword_10000C590, &qword_1000051C8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_100004890();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  sub_100004880();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1000042D0(v14, &qword_10000C590, &qword_1000051C8);
  }

  (*(v16 + 32))(v19, v14, v15);
  (*(v16 + 16))(v10, v19, v15);
  (*(v7 + 104))(v10, *v22, v6);
  sub_100004850();

  (*(v2 + 8))(v5, v23);
  (*(v7 + 8))(v10, v6);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_100003890(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100004930();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100004930();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000043BC(&qword_10000C5C8, &qword_10000C568, &qword_1000051C0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000041D0(&qword_10000C568, &qword_1000051C0);
            v9 = sub_100003ACC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100004408(0, &qword_10000C580, CKShareParticipant_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100003A44(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000041D0(&qword_10000C5D0, "X\r");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void (*sub_100003ACC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100004920();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100003B4C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100003B54(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && [v4 isTrashFolder] || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) && objc_msgSend(v5, "isTrashFolder"))
  {

    return 0;
  }

  if ([a1 isSharedViaICloud] && objc_msgSend(a2, "isSharedViaICloud"))
  {
    v7 = [a1 sharedRootObject];
    v8 = [a2 sharedRootObject];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
        sub_100004408(0, &qword_10000C5D8, ICCloudSyncingObject_ptr);
        v10 = sub_100004910();

        if ((v10 & 1) == 0)
        {
          return 2;
        }

        return 3;
      }

      v9 = a2;
    }

    else
    {

      if (!v9)
      {
        return 3;
      }
    }

    return 2;
  }

  if ([a1 isSharedViaICloud])
  {
    v11 = [a2 isSharedViaICloud];

    if (v11)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else
  {

    return 1;
  }
}

unint64_t sub_100003D10(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void _sSo20ICCloudSyncingObjectC45com_apple_mobilenotes_SpotlightIndexExtensionE29undoablyPersistActivityEvents3for03oldC003newC0yAbCE10MoveActionC_ABSgAJtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return;
    }

    if (v3 != 1)
    {
      goto LABEL_39;
    }

    if (!a3)
    {
      return;
    }

    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    v30 = a3;
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (!a3)
      {
        return;
      }

      v4 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v5 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
      v30 = a3;
      if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v6 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
        v7 = a3;
        v8 = [v7 persistCopyActivityEventForObject:v7 originalObject:v6 fromParentObject:v4 toParentObject:v5];
      }

      else
      {
        v21 = a3;
        v8 = [v21 persistMoveActivityEventForObject:v21 fromParentObject:v4 toParentObject:v5];
      }

      goto LABEL_32;
    }

    if (v3 == 4)
    {
      if (!a2)
      {
        return;
      }

      v16 = a1;
      v17 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v30 = a2;
      v18 = [v17 sharedRootObject];
      if (!v18)
      {
        v22 = v30;
LABEL_34:

        return;
      }

      v19 = v18;
      if (*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v20 = [v18 persistCopyActivityEventForObject:v30 originalObject:*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v17 toParentObject:0];
      }

      else
      {
        v20 = [v18 persistMoveActivityEventForObject:v30 fromParentObject:v17 toParentObject:0];
      }

      v28 = v20;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v19];

LABEL_33:
      v22 = v29;
      goto LABEL_34;
    }

LABEL_39:
    v31 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type);
    sub_100004940();
    __break(1u);
    return;
  }

  v30 = a3;
  if (a2)
  {
    v10 = a1;
    v11 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
    v12 = a2;
    v13 = [v11 sharedRootObject];
    if (v13)
    {
      v14 = v13;
      if (*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v15 = [v13 persistCopyActivityEventForObject:v12 originalObject:*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v11 toParentObject:0];
      }

      else
      {
        v15 = [v13 persistMoveActivityEventForObject:v12 fromParentObject:v11 toParentObject:0];
      }

      v23 = v15;
      v24 = [objc_opt_self() shared];
      [v24 registerUndoForCloudSyncingObjectActivityEvent:v23 cloudSyncingObject:v14];

      v12 = v24;
    }

    a1 = v10;
    a3 = v30;
  }

  if (a3)
  {
    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
LABEL_29:
      v25 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
      v26 = a3;
      v8 = [v26 persistCopyActivityEventForObject:v26 originalObject:v25 fromParentObject:0 toParentObject:v9];
LABEL_32:
      v28 = v8;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v30];
      goto LABEL_33;
    }

LABEL_31:
    v27 = a3;
    v8 = [v27 persistMoveActivityEventForObject:v27 fromParentObject:0 toParentObject:v9];
    goto LABEL_32;
  }
}

uint64_t sub_1000041D0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004218(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004260()
{
  result = qword_10000C578;
  if (!qword_10000C578)
  {
    sub_100004408(255, &qword_10000C580, CKShareParticipant_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C578);
  }

  return result;
}

uint64_t sub_1000042D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000041D0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100004334()
{
  result = qword_10000C598;
  if (!qword_10000C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C598);
  }

  return result;
}

uint64_t sub_1000043BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004218(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004408(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100004630(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Index extension reindexing objectIDURIs: %@", &v2, 0xCu);
}

void sub_1000046A8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6[0] = 67109378;
  v6[1] = v5;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error reindexing %d searchable items in extension: %@", v6, 0x12u);
}

void sub_100004748(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) count];
  v4[0] = 67109120;
  v4[1] = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Index extension did reindex %d items", v4, 8u);
}

void sub_1000047D8()
{
  sub_100002414();
  sub_10000243C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100004814()
{
  sub_100002414();
  sub_10000243C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}