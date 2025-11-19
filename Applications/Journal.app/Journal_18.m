void *sub_1001F7C94()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset);
  v2 = v1;
  return v1;
}

id sub_1001F7D38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityAssetView()
{
  result = qword_100AD8730;
  if (!qword_100AD8730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F7E44()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001F7EF8(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1001F66C4(a1, v7, v1 + v4, v8);
}

void sub_1001F7FD0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1001F6B6C(v5, v6, v0 + v2, v7);
}

uint64_t sub_1001F80B0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD8748);
  v1 = sub_10000617C(v0, qword_100AD8748);
  if (qword_100AD0188 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001F8178()
{
  v0 = type metadata accessor for UUID();
  sub_100006118(v0, qword_100AD8760);
  sub_10000617C(v0, qword_100AD8760);
  return UUID.init()();
}

uint64_t sub_1001F81C4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_1004959AC(&off_100A58788);
  PassthroughSubject.send(_:)();

  sub_1000082B4(a1, v4, &qword_100AD1420);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100004F84(v4, &qword_100AD1420);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v11 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v10 postNotificationName:v11 object:isa];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001F8424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1000F24EC(&qword_100AD1420);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[12] = v8;
  v5[13] = v10;

  return _swift_task_switch(sub_1001F856C, v8, v10);
}

uint64_t sub_1001F856C()
{
  *(v0 + 112) = CFAbsoluteTimeGetCurrent();
  v1 = AssetPlacement.sortIndex.getter();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1001F8624;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_1001F8F70(v5, v3, v4, v1, 0);
}

uint64_t sub_1001F8624()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001F8744, v3, v2);
}

uint64_t sub_1001F8744()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  *(v0 + 128) = *(*(v0 + 48) + 24);
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  swift_weakInit();
  *(v0 + 192) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v4 = *(v2 + 104);
  *(v0 + 144) = v4;
  *(v0 + 152) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v1);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1001F887C;
  v6 = *(v0 + 88);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v5, v6, sub_1002050FC, v3, &type metadata for () + 8);
}

uint64_t sub_1001F887C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[11];
    v5 = v2[8];
    v6 = v2[9];
    v7 = *(v6 + 8);
    v2[21] = v7;
    v2[22] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[12];
    v9 = v2[13];

    return _swift_task_switch(sub_1001F89CC, v8, v9);
  }
}

uint64_t sub_1001F89CC()
{
  (*(v0 + 144))(*(v0 + 80), *(v0 + 192), *(v0 + 64));

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1001F8AAC;
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_100205118, v3, &type metadata for () + 8);
}

uint64_t sub_1001F8AAC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 168))(*(v2 + 80), *(v2 + 64));

    v4 = *(v2 + 96);
    v5 = *(v2 + 104);

    return _swift_task_switch(sub_1001F8BF8, v4, v5);
  }
}

uint64_t sub_1001F8BF8()
{
  v1 = v0[14];
  v2 = *(v0 + 7);
  v3 = *(v0 + 4);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, &v3[v4], v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_1001F81C4(v2);
  sub_100004F84(v2, &qword_100AD1420);
  sub_1001F8D44(v3, v1);

  v7 = *(v0 + 1);

  return v7();
}

void sub_1001F8D44(void *a1, double a2)
{
  if (qword_100ACFAB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AD8748);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2082;
    type metadata accessor for UUID();
    sub_10004B900(&qword_100AE19B0, &type metadata accessor for UUID);
    v10 = v5;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_100008458(v11, v12, &v15);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2048;
    *(v7 + 24) = CFAbsoluteTimeGetCurrent() - a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "EntryViewModel.addAsset(%@) [assetId: %{public}s] %f seconds", v7, 0x20u);
    sub_100004F84(v8, &unk_100AD4BB0);

    sub_10000BA7C(v9);
  }
}

uint64_t sub_1001F8F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 316) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  sub_1000F24EC(&qword_100AD1420);
  *(v6 + 104) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 176) = v10;
  *(v6 + 184) = *(v10 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v6 + 208) = v11;
  *(v6 + 216) = v13;

  return _swift_task_switch(sub_1001F918C, v11, v13);
}

uint64_t sub_1001F918C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 88);
  v4 = *(v0 + 316);
  v5 = *(v0 + 80);
  *(v0 + 224) = *(*(v0 + 96) + 24);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4 & 1;
  *(v0 + 312) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v8 = *(v2 + 104);
  *(v0 + 240) = v8;
  *(v0 + 248) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1);
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_1001F930C;
  v11 = *(v0 + 200);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100205B04, v7, &type metadata for () + 8);
}

uint64_t sub_1001F930C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[25];
    v5 = v2[22];
    v6 = v2[23];
    v7 = *(v6 + 8);
    v2[33] = v7;
    v2[34] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[26];
    v9 = v2[27];

    return _swift_task_switch(sub_1001F945C, v8, v9);
  }
}

uint64_t sub_1001F945C()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_1001F9508;
  v2 = *(v0 + 64);

  return sub_1001DA5A8(v2);
}

uint64_t sub_1001F9508()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_1001F9628, v3, v2);
}

uint64_t sub_1001F9628()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 312);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 80);
  v6 = swift_allocObject();
  *(v0 + 288) = v6;
  *(v6 + 16) = v5;
  v1(v3, v2, v4);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_1001F9748;
  v9 = *(v0 + 192);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_100205B28, v6, &type metadata for () + 8);
}

uint64_t sub_1001F9748()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 264))(*(v2 + 192), *(v2 + 176));

    v4 = *(v2 + 208);
    v5 = *(v2 + 216);

    return _swift_task_switch(sub_1001F9898, v4, v5);
  }
}

uint64_t sub_1001F9898()
{
  v61 = v0;
  v1 = v0[12];
  v2 = v0[10] + OBJC_IVAR____TtC7Journal5Asset_id;
  v3 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;

  v6 = sub_100068DDC(sub_1000695D4, v5, v4);

  if (v6)
  {
    if (qword_100ACFAB8 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v7 = type metadata accessor for Logger();
      sub_10000617C(v7, qword_100AD8748);
      v8 = v6;

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {

        goto LABEL_26;
      }

      v47 = v10;
      log = v9;
      v12 = v0[20];
      v11 = v0[21];
      v13 = v0[19];
      v53 = v0[15];
      v55 = v0[14];
      v57 = v0[18];
      v14 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v14 = 136315650;
      (*(v12 + 16))(v11, v8 + OBJC_IVAR____TtC7Journal5Asset_type, v13);
      sub_10004B900(&qword_100AD8780, &type metadata accessor for AssetType);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_100008458(v15, v17, v60);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v49 = v8;
      v59 = *(v53 + 16);
      v59(v57, v8 + OBJC_IVAR____TtC7Journal5Asset_id, v55);
      sub_10004B900(&qword_100AE19B0, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v53 + 8))(v57, v55);
      v22 = sub_100008458(v19, v21, v60);

      *(v14 + 14) = v22;
      buf = v14;
      *(v14 + 22) = 2082;
      v23 = *(v1 + v3);
      v24 = v23 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v24)
      {
        break;
      }

      v3 = 0;
      v25 = v0[15];
      v56 = v23 & 0xFFFFFFFFFFFFFF8;
      v58 = v23 & 0xC000000000000001;
      v52 = (v25 + 48);
      v54 = (v25 + 56);
      v50 = v25;
      v6 = (v25 + 32);
      v26 = _swiftEmptyArrayStorage;
      v51 = v23;
      while (1)
      {
        if (v58)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v56 + 16))
          {
            goto LABEL_30;
          }

          v27 = *(v23 + 8 * v3 + 32);
        }

        v28 = v27;
        v29 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v1 = v0[13];
        v30 = v0[14];
        v59(v1, &v27[OBJC_IVAR____TtC7Journal5Asset_id], v30);
        (*v54)(v1, 0, 1, v30);

        if ((*v52)(v1, 1, v30) == 1)
        {
          sub_100004F84(v0[13], &qword_100AD1420);
        }

        else
        {
          v32 = v0[16];
          v31 = v0[17];
          v1 = v0[14];
          v33 = *v6;
          (*v6)(v31, v0[13], v1);
          v33(v32, v31, v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_100055CEC(0, *(v26 + 2) + 1, 1, v26);
          }

          v35 = *(v26 + 2);
          v34 = *(v26 + 3);
          if (v35 >= v34 >> 1)
          {
            v26 = sub_100055CEC(v34 > 1, v35 + 1, 1, v26);
          }

          v36 = v0[16];
          v37 = v0[14];
          *(v26 + 2) = v35 + 1;
          v33(v26 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v35, v36, v37);
          v23 = v51;
        }

        ++v3;
        if (v29 == v24)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }

LABEL_25:

    v40 = Array.description.getter();
    v42 = v41;

    v43 = sub_100008458(v40, v42, v60);

    *(buf + 3) = v43;
    _os_log_impl(&_mh_execute_header, log, v47, "Asset already exists in allAssets. Won't add %s asset with id %{public}s. AllAssets: %{public}s", buf, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v38 = v0[10];
    swift_beginAccess();
    v39 = v38;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10003A5DC();
  }

LABEL_26:

  v44 = v0[1];

  return v44();
}

void sub_1001F9FC0(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v40 = a4;
  v41 = a3;
  v43 = type metadata accessor for UUID();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FileStoreConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v39 = v4;
    v17 = *(Strong + 24);
    v18 = sub_10028376C(v17);

    [*(v16 + 32) addAssetsObject:v18];
    v19 = sub_1008250F4();
    v20 = &a2[OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath];
    *v20 = v19;
    *(v20 + 1) = v21;

    v38 = v18;
    sub_1008250F4();
    if (v22)
    {
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:isDirectory:)();

      (*(v9 + 8))(v11, v8);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v14, v23, 1, v24);
    v25 = OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryURL;
    swift_beginAccess();
    sub_100014318(v14, &a2[v25], &unk_100AD6DD0);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27)
    {
      v28 = v27;
      v29 = a2;
      sub_10078C26C(ObjectType, v28);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v30 = a2;
      sub_1001D8A9C();
    }

    v31 = *(v16 + 32);
    v32 = JournalEntryMO.assetOrderingDictionary.getter();

    v33 = v42;
    v34 = v43;
    (*(v42 + 16))(v7, &a2[OBJC_IVAR____TtC7Journal5Asset_id], v43);
    if (v40)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v41;
    }

    sub_100205B44(v32, v7, v35);

    (*(v33 + 8))(v7, v34);
    v36 = *(v16 + 32);
    JournalEntryMO.assetOrderingDictionary.setter();

    [*(v16 + 32) setIsUploadedToCloud:0];
  }
}

void sub_1001FA408()
{
  sub_100059FA4();
  if (qword_100ACFAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AD8748);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    if (qword_100ACFAC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for UUID();
    sub_10000617C(v5, qword_100AD8760);
    sub_10004B900(&qword_100AE19B0, &type metadata accessor for UUID);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_100008458(v6, v7, &v9);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s (addAsset) Done adding asset to viewModel", v3, 0xCu);
    sub_10000BA7C(v4);
  }
}

uint64_t sub_1001FA5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v6 = type metadata accessor for UUID();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[38] = v8;
  v4[39] = v10;

  return _swift_task_switch(sub_1001FA744, v8, v10);
}

uint64_t sub_1001FA744()
{
  v19 = v0;
  if (qword_100ACFAB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD8748);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    sub_10004B900(&qword_100AD4B40, &type metadata accessor for UUID);
    v6 = Set.description.getter();
    v8 = sub_100008458(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "EntryViewModel.removeAssetsLegacy(%s", v4, 0xCu);
    sub_10000BA7C(v5);
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 280);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  *(v0 + 320) = *(v11 + 24);
  v13 = swift_allocObject();
  *(v0 + 328) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v0 + 400) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v14 = *(v10 + 104);
  *(v0 + 336) = v14;
  *(v0 + 344) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v9);

  v15 = swift_task_alloc();
  *(v0 + 352) = v15;
  *v15 = v0;
  v15[1] = sub_1001FA9F8;
  v16 = *(v0 + 296);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 404, v16, sub_100206400, v13, &type metadata for Bool);
}

uint64_t sub_1001FA9F8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[37];
    v5 = v2[34];
    v6 = v2[35];
    v7 = *(v6 + 8);
    v2[45] = v7;
    v2[46] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[38];
    v9 = v2[39];

    return _swift_task_switch(sub_1001FAB48, v8, v9);
  }
}

uint64_t sub_1001FAB48()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 400);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = swift_allocObject();
  *(v0 + 376) = v5;
  swift_weakInit();
  v1(v3, v2, v4);
  v6 = swift_task_alloc();
  *(v0 + 384) = v6;
  *v6 = v0;
  v6[1] = sub_1001FAC68;
  v7 = *(v0 + 288);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v6, v7, sub_100206E78, v5, &type metadata for () + 8);
}

uint64_t sub_1001FAC68()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 360))(*(v2 + 288), *(v2 + 272));

    v4 = *(v2 + 304);
    v5 = *(v2 + 312);

    return _swift_task_switch(sub_1001FADB4, v4, v5);
  }
}

uint64_t sub_1001FADB4()
{
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_1001FAE4C;
  v2 = *(v0 + 216);

  return sub_1001FB328(v2);
}

uint64_t sub_1001FAE4C()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_1001FAF6C, v3, v2);
}

void sub_1001FAF6C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  *(v0 + 208) = sub_1004959AC(&off_100A586E8);
  PassthroughSubject.send(_:)();

  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;
  v31 = v0 + 48;
  v28 = v2;
  v29 = v1;
  v27 = (v1 + 32);

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
      v10 = v0 + 120;
LABEL_9:
      (*(v29 + 16))(*(v0 + 264), *(v28 + 48) + *(v29 + 72) * (__clz(__rbit64(v6)) | (v9 << 6)), *(v0 + 248));
      v30 = [objc_opt_self() defaultCenter];
      if (qword_100ACFFB0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 264);
      v12 = *(v0 + 248);
      v13 = qword_100B2FBA0;
      *(v0 + 192) = 0x44497465737361;
      *(v0 + 200) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      *(v0 + 112) = v12;
      v14 = sub_10001A770((v0 + 88));
      (*v27)(v14, v11, v12);
      sub_1000F24EC(&qword_100AD8788);
      v15 = static _DictionaryStorage.allocate(capacity:)();
      sub_1000082B4(v31, v10, &unk_100AD5810);
      v16 = sub_100361EDC(v10);
      if (v17)
      {
        break;
      }

      v15[(v16 >> 6) + 8] |= 1 << v16;
      v18 = v15[6] + 40 * v16;
      v19 = *v10;
      v20 = *(v10 + 16);
      *(v18 + 32) = *(v10 + 32);
      *v18 = v19;
      *(v18 + 16) = v20;
      sub_10002432C((v0 + 160), (v15[7] + 32 * v16));
      v21 = v15[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v6 &= v6 - 1;
      v24 = *(v0 + 240);
      v15[2] = v23;
      sub_100004F84(v31, &unk_100AD5810);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v30 postNotificationName:v13 object:v24 userInfo:isa];

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v0 + 120;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    v26 = *(v0 + 8);

    v26();
  }
}

uint64_t sub_1001FB328(uint64_t a1)
{
  v2[17] = v1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v2[21] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v2[27] = v6;
  v2[28] = v8;

  return _swift_task_switch(sub_1001FB4FC, v6, v8);
}

uint64_t sub_1001FB4FC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[17];
  v5 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId;
  swift_beginAccess();
  sub_1000082B4(v4 + v5, v3, &qword_100AD1420);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[23], &qword_100AD1420);
LABEL_5:

    v15 = v0[1];

    return v15();
  }

  v6 = v0[26];
  v7 = v0[17];
  (*(v0[25] + 32))(v6, v0[23], v0[24]);
  v8 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = swift_task_alloc();
  *(v10 + 16) = v6;

  v11 = sub_100068DDC(sub_1002063C4, v10, v9);

  if (v11)
  {
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[24];

    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[19];
  v20 = v0[17];
  v28 = v0[18];
  v29 = v0[20];
  (*(v0[25] + 56))(v17, 1, 1, v0[24]);
  swift_beginAccess();
  sub_100014318(v17, v4 + v5, &qword_100AD1420);
  swift_endAccess();
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);
  v22(v18, 1, 1, v21);
  v23 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
  swift_beginAccess();
  sub_100014318(v18, v20 + v23, &unk_100AD4790);
  swift_endAccess();
  v22(v18, 1, 1, v21);
  v24 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate;
  swift_beginAccess();
  sub_100014318(v18, v20 + v24, &unk_100AD4790);
  swift_endAccess();
  v25 = swift_allocObject();
  v0[29] = v25;
  swift_weakInit();
  (*(v19 + 104))(v29, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v28);
  v26 = swift_task_alloc();
  v0[30] = v26;
  *v26 = v0;
  v26[1] = sub_1001FB924;
  v27 = v0[20];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v26, v27, sub_1002063E4, v25, &type metadata for () + 8);
}

uint64_t sub_1001FB924()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v4 = v2[27];
    v5 = v2[28];

    return _swift_task_switch(sub_1001FBA78, v4, v5);
  }
}

uint64_t sub_1001FBA78()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001FBB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[7] = v7;
  v4[8] = v9;

  return _swift_task_switch(sub_1001FBC1C, v7, v9);
}

uint64_t sub_1001FBC1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1000F24EC(&unk_100AE1A40);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100940080;
  (*(v7 + 16))(v9 + v8, v5 + OBJC_IVAR____TtC7Journal5Asset_id, v6);
  v10 = sub_1004960D4(v9);
  v0[9] = v10;
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = v4;
  *(v11 + 24) = v10;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1001FBE60;
  v13 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 12, v13, sub_100206E54, v11, &type metadata for Bool);
}

uint64_t sub_1001FBE60()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];

    (*(v5 + 8))(v4, v6);
    v7 = v2[7];
    v8 = v2[8];

    return _swift_task_switch(sub_1001FBFC8, v7, v8);
  }
}

uint64_t sub_1001FBFC8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001FC030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v61 = a3;
  v74 = type metadata accessor for UUID();
  v66 = *(v74 - 8);
  v7 = __chkstk_darwin(v74);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v59 - v9;
  v11 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v64 = a1;
  v60 = v11;
  v12 = *(a1 + v11);
  v76 = _swiftEmptyArrayStorage;
  if (v12 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = v4;

    v75 = a2;
    v63 = v12;
    if (!i)
    {
      break;
    }

    v14 = 0;
    v69 = v12 & 0xFFFFFFFFFFFFFF8;
    v70 = v12 & 0xC000000000000001;
    v67 = i;
    v68 = (v12 + 32);
    v72 = v66 + 16;
    v73 = a2 + 56;
    v4 = (v66 + 8);
    while (1)
    {
      if (v70)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v69 + 16))
        {
          goto LABEL_35;
        }

        v15 = *&v68[8 * v14];
      }

      v77 = v15;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      if (*(a2 + 16))
      {
        v71 = v14;
        v17 = OBJC_IVAR____TtC7Journal5Asset_id;
        sub_10004B900(&qword_100AD4B40, &type metadata accessor for UUID);
        v12 = &v77[v17];
        v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(a2 + 32);
        v20 = v18 & ~v19;
        if ((*(v73 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          v22 = *(v66 + 72);
          v23 = *(v66 + 16);
          while (1)
          {
            v12 = v74;
            v23(v10, *(v75 + 48) + v22 * v20, v74);
            sub_10004B900(&qword_100AD9220, &type metadata accessor for UUID);
            v24 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v4)(v10, v12);
            if (v24)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v73 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v12 = &v76;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
LABEL_15:
        }

        a2 = v75;
        i = v67;
        v14 = v71;
        if (v71 == v67)
        {
LABEL_20:
          v25 = v76;
          goto LABEL_22;
        }
      }

      else
      {

        if (v14 == i)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_22:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == *(a2 + 16))
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v27 = result;
      if (result)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

LABEL_53:

    v53 = 0;
LABEL_57:
    *v61 = v53;
    return result;
  }

  v27 = *(v25 + 16);
  if (v27 != *(a2 + 16))
  {
    goto LABEL_53;
  }

  if (v27)
  {
LABEL_26:
    if (v27 < 1)
    {
      goto LABEL_61;
    }

    for (j = 0; j != v27; ++j)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v25 + 8 * j + 32);
      }

      v30 = v29;
      v31 = *&v29[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      if (v31)
      {
        v32 = v31;
        [v32 setIsUndoablyDeleted:1];
      }
    }
  }

LABEL_39:

  v70 = *(v64 + 32);
  v77 = JournalEntryMO.assetOrderingDictionary.getter();
  v33 = a2 + 56;
  v34 = 1 << *(a2 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a2 + 56);
  v37 = (v34 + 63) >> 6;
  v72 = v66 + 16;
  v73 = v66 + 8;

  v38 = 0;
  v39 = v74;
  while (v36)
  {
    v40 = v75;
LABEL_49:
    v42 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v43 = *(v40 + 48);
    v44 = v65;
    v45 = v66;
    v46 = *(v66 + 72);
    (*(v66 + 16))(v65, v43 + v46 * (v42 | (v38 << 6)), v39);
    v71 = sub_100361E08(v44);
    v48 = v47;
    v49 = *(v45 + 8);
    v49(v44, v39);
    if (v48)
    {
      v50 = v71;
      v51 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v51;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100821358();
        v51 = v76;
      }

      v49(v51[6] + v50 * v46, v74);
      v77 = v51;
      sub_1002006DC(v50, v51);
    }
  }

  v40 = v75;
  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_59:
      result = _CocoaArrayWrapper.endIndex.getter();
      v58 = result;
      if (result >= v36)
      {
        goto LABEL_56;
      }

      goto LABEL_60;
    }

    if (v41 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v41);
    ++v38;
    if (v36)
    {
      v38 = v41;
      goto LABEL_49;
    }
  }

  v54 = v70;
  JournalEntryMO.assetOrderingDictionary.setter();
  [v54 setIsUploadedToCloud:0];
  v55 = v64;
  v56 = v60;
  swift_beginAccess();

  v36 = sub_10020641C((v55 + v56), v40);

  v57 = *(v55 + v56);
  if (v57 >> 62)
  {
    goto LABEL_59;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v58 >= v36)
  {
LABEL_56:
    sub_100206D58(v36, v58, sub_1006B6514, sub_10019D8AC);
    swift_endAccess();

    result = sub_10003A5DC();
    v53 = 1;
    goto LABEL_57;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void sub_1001FC728()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 32);
    v2 = JournalEntryMO.assetOrderingDictionary.getter();
    sub_10020548C(v2);

    JournalEntryMO.assetOrderingDictionary.setter();
  }
}

uint64_t sub_1001FC7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_1000F24EC(&qword_100AD1420);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[15] = v8;
  v5[16] = v10;

  return _swift_task_switch(sub_1001FC90C, v8, v10);
}

uint64_t sub_1001FC90C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  *(v0 + 136) = *(v3 + 24);
  v5 = swift_allocObject();
  *(v0 + 144) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v0 + 28) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v6 = *(v2 + 104);
  *(v0 + 152) = v6;
  *(v0 + 160) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);

  v7 = v4;
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  v9 = sub_1000F24EC(&qword_100AD8790);
  *v8 = v0;
  v8[1] = sub_1001FCA6C;
  v10 = *(v0 + 112);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v10, sub_10020691C, v5, v9);
}

uint64_t sub_1001FCA6C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[14];
    v5 = v2[11];
    v6 = v2[12];
    v7 = *(v6 + 8);
    v2[22] = v7;
    v2[23] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[15];
    v9 = v2[16];

    return _swift_task_switch(sub_1001FCBBC, v8, v9);
  }
}

uint64_t sub_1001FCBBC()
{
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1001FCC68;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  return sub_1001FBB20(v4, v2, v3);
}

uint64_t sub_1001FCC68(char a1)
{
  v2 = *v1;
  *(*v1 + 26) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_1001FCD90, v4, v3);
}

uint64_t sub_1001FCD90()
{
  if (*(v0 + 26) == 1)
  {
    v1 = *(v0 + 25);
    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_1001FCFE4;
    v3 = *(v0 + 192);
    v4 = *(v0 + 64);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);

    return sub_1001F8F70(v6, v5, v4, v3, v1);
  }

  else
  {
    if (qword_100ACFAB8 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100AD8748);
    v11 = v8;
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v16;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v15;
      *v18 = v16;
      v18[1] = v15;
      v19 = v16;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v13, v14, "EntryViewModel.replaceAsset exiting early because remove failed. oldAsset=%@ newAsset=%@", v17, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    v21 = *(v0 + 8);
    v22 = *(v0 + 26);

    return v21(v22);
  }
}

uint64_t sub_1001FCFE4()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1001FD104, v3, v2);
}

uint64_t sub_1001FD104()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 28);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = swift_allocObject();
  *(v0 + 216) = v5;
  swift_weakInit();
  v1(v3, v2, v4);
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_1001FD224;
  v7 = *(v0 + 104);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v6, v7, sub_100206E78, v5, &type metadata for () + 8);
}

uint64_t sub_1001FD224()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 176))(*(v2 + 104), *(v2 + 88));

    v4 = *(v2 + 120);
    v5 = *(v2 + 128);

    return _swift_task_switch(sub_1001FD370, v4, v5);
  }
}

uint64_t sub_1001FD370()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1001FD408;
  v2 = *(v0 + 40);

  return sub_1001FB328(v2);
}

uint64_t sub_1001FD408()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1001FD528, v3, v2);
}

uint64_t sub_1001FD528()
{
  v29 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  *(v0 + 32) = sub_1004959AC(&off_100A587B0);
  PassthroughSubject.send(_:)();

  v3 = OBJC_IVAR____TtC7Journal5Asset_id;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  sub_1001F81C4(v1);
  sub_100004F84(v1, &qword_100AD1420);
  if (qword_100ACFAB8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = type metadata accessor for Logger();
  sub_10000617C(v8, qword_100AD8748);
  v9 = v7;
  v10 = v6;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 138413058;
    *(v15 + 4) = v13;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v14;
    *v16 = v13;
    v16[1] = v14;
    *(v15 + 22) = 2080;
    sub_10004B900(&qword_100AE19B0, &type metadata accessor for UUID);
    v17 = v13;
    v18 = v14;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_100008458(v19, v20, &v28);

    *(v15 + 24) = v21;
    *(v15 + 32) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = sub_100008458(v22, v23, &v28);

    *(v15 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "EntryViewModel.replaceAsset(old: %@, new: %@ [oldAssetId: %s, newAssetId: %s]", v15, 0x2Au);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v25 = *(v0 + 8);
  v26 = *(v0 + 26);

  return v25(v26);
}

uint64_t sub_1001FD8C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = JournalEntryMO.assetOrderingDictionary.getter();
  if (*(v4 + 16) && (v5 = sub_100361E08(a1 + OBJC_IVAR____TtC7Journal5Asset_id), (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_1001FD958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v8 = type metadata accessor for IndexSet();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v5[10] = *(v9 + 64);
  v5[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[12] = v10;
  v5[13] = v12;

  return _swift_task_switch(sub_1001FDABC, v10, v12);
}

uint64_t sub_1001FDABC()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v13 = v0[5];
  v14 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v6, v3);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v5;
  (*(v2 + 32))(v9 + v8, v1, v3);
  (*(v4 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v13);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1001FDC64;
  v11 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100206B18, v9, &type metadata for () + 8);
}

uint64_t sub_1001FDC64()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[12];
    v5 = v2[13];

    return _swift_task_switch(sub_1001FDDB8, v4, v5);
  }
}

uint64_t sub_1001FDDB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FDE24(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v36 = *(isUniquelyReferenced_nonNull_native - 8);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v43 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = IndexSet.first.getter();
    v35[1] = v2;
    if ((v9 & 1) == 0 && v8 < a2 && __OFADD__(a2, 1))
    {
      __break(1u);
LABEL_35:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
      v45 = *&v7[OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets];

      sub_1000F24EC(&qword_100ADC660);
      sub_100206BE0();
      MutableCollection.move(fromOffsets:toOffset:)();
      v10 = JournalEntryMO.assetOrderingDictionary.getter();
      v11 = v45;
      if (v45 >> 62)
      {
        goto LABEL_31;
      }

      v12 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (v35[0] = v7; v12; v35[0] = v7)
      {
        v13 = 0;
        v39 = v11 & 0xFFFFFFFFFFFFFF8;
        v40 = v11 & 0xC000000000000001;
        v41 = (v36 + 16);
        v37 = v12;
        v38 = (v36 + 8);
        while (v40)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_27;
          }

LABEL_13:
          v42 = v15;
          v16 = *v41;
          v7 = v14;
          v17 = v43;
          v18 = isUniquelyReferenced_nonNull_native;
          (*v41)(v43, &v14[OBJC_IVAR____TtC7Journal5Asset_id], isUniquelyReferenced_nonNull_native);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v10;
          v20 = sub_100361E08(v17);
          v21 = v10[2];
          v22 = (v19 & 1) == 0;
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            goto LABEL_29;
          }

          v24 = v19;
          if (v10[3] >= v23)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v10 = v44;
              if (v19)
              {
                goto LABEL_8;
              }
            }

            else
            {
              sub_100821358();
              v10 = v44;
              if (v24)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
            sub_10081BC14(v23, isUniquelyReferenced_nonNull_native);
            v25 = sub_100361E08(v43);
            if ((v24 & 1) != (v26 & 1))
            {
              goto LABEL_35;
            }

            v20 = v25;
            v10 = v44;
            if (v24)
            {
LABEL_8:
              *(v10[7] + 8 * v20) = v13;

              isUniquelyReferenced_nonNull_native = v18;
              (*v38)(v43, v18);
              goto LABEL_9;
            }
          }

          v27 = v11;
          v10[(v20 >> 6) + 8] |= 1 << v20;
          v28 = v36;
          v11 = v43;
          v16(v10[6] + *(v36 + 72) * v20, v43, v18);
          *(v10[7] + 8 * v20) = v13;

          v29 = *(v28 + 8);
          isUniquelyReferenced_nonNull_native = v18;
          v29(v11, v18);
          v30 = v10[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_30;
          }

          v10[2] = v32;
          v11 = v27;
LABEL_9:
          ++v13;
          if (v42 == v37)
          {
            goto LABEL_32;
          }
        }

        if (v13 >= *(v39 + 16))
        {
          goto LABEL_28;
        }

        v14 = *(v11 + 8 * v13 + 32);
        v15 = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          goto LABEL_13;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_32:

      v33 = v35[0];
      v34 = *(v35[0] + 32);
      sub_10020548C(v10);

      JournalEntryMO.assetOrderingDictionary.setter();

      [*(v33 + 32) setIsUploadedToCloud:0];
      sub_10003A464();
      v44 = sub_1004959AC(&off_100A587D8);
      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1001FE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v8 = type metadata accessor for AssetPlacement();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v5[10] = *(v9 + 64);
  v5[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[12] = v10;
  v5[13] = v12;

  return _swift_task_switch(sub_1001FE3F4, v10, v12);
}

uint64_t sub_1001FE3F4()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v14 = v0[5];
  v15 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v5, v3);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  (*(v2 + 32))(v9 + v8, v1, v3);
  (*(v4 + 104))(v15, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v14);
  v10 = v6;
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_1001FE5A4;
  v12 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, sub_100206978, v9, &type metadata for () + 8);
}

uint64_t sub_1001FE5A4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[12];
    v5 = v2[13];

    return _swift_task_switch(sub_100206E6C, v4, v5);
  }
}

uint64_t sub_1001FE6F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 32);
    v6 = JournalEntryMO.assetOrderingDictionary.getter();

    v7 = OBJC_IVAR____TtC7Journal5Asset_id;
    v8 = AssetPlacement.sortIndex.getter();
    sub_100205B44(v6, a2 + v7, v8);

    v9 = *(v4 + 32);
    JournalEntryMO.assetOrderingDictionary.setter();

    [*(v4 + 32) setIsUploadedToCloud:0];
    sub_10003A464();
    sub_1004959AC(&off_100A58800);
    PassthroughSubject.send(_:)();
  }

  return result;
}

void *sub_1001FE828(void *a1)
{
  v107 = type metadata accessor for PhotoLibraryAssetMetadata();
  v4 = *(v107 - 8);
  __chkstk_darwin(v107 - 8);
  v103 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v6 - 8);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v98 = &v89 - v9;
  __chkstk_darwin(v10);
  v93 = &v89 - v11;
  __chkstk_darwin(v12);
  v99 = &v89 - v13;
  __chkstk_darwin(v14);
  v94 = &v89 - v15;
  __chkstk_darwin(v16);
  v100 = &v89 - v17;
  v18 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v110 = OBJC_IVAR____TtC7Journal5Asset_id;

  if (!v20)
  {
LABEL_72:

    return 0;
  }

  v21 = 0;
  v108 = v19 & 0xFFFFFFFFFFFFFF8;
  v109 = v19 & 0xC000000000000001;
  v105 = v19;
  v106 = (v4 + 48);
  v101 = (v4 + 8);
  v102 = (v4 + 16);
  v104 = v20;
  v97 = a1;
  while (1)
  {
    if (v109)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v108 + 16))
      {
        goto LABEL_77;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:

      v88 = v95;
      goto LABEL_81;
    }

    if (static UUID.== infix(_:_:)())
    {

      return v24;
    }

    type metadata accessor for PhotoAsset();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v2 = v26;
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        if (*(v2 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
        {
          v28 = v27;
          v29 = v24;
          v30 = a1;

          v31 = v100;
          sub_100046ADC(v100);
          v32 = v31;

          v33 = *v106;
          v34 = v31;
          v35 = v107;
          if ((*v106)(v34, 1, v107))
          {

            sub_100004F84(v32, &qword_100AD5B20);
LABEL_18:
            v20 = v104;
            v19 = v105;
            a1 = v97;
            goto LABEL_31;
          }

          v96 = v29;
          v36 = v103;
          v90 = *v102;
          (v90)(v103, v32, v35);
          sub_100004F84(v32, &qword_100AD5B20);
          v89 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
          v38 = v37;
          v39 = v36;
          v40 = *v101;
          (*v101)(v39, v35);
          if (!v38)
          {

            goto LABEL_18;
          }

          v91 = v38;
          v95 = v30;
          a1 = v97;
          if (!*(v28 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
          {
            goto LABEL_29;
          }

          v41 = v94;
          sub_100046ADC(v94);

          v42 = v107;
          if (v33(v41, 1, v107))
          {

            sub_100004F84(v41, &qword_100AD5B20);
LABEL_30:
            v20 = v104;
            v19 = v105;
            goto LABEL_31;
          }

          v43 = v103;
          (v90)(v103, v41, v42);
          sub_100004F84(v41, &qword_100AD5B20);
          v44 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
          v46 = v45;
          v40(v43, v42);
          if (!v46)
          {
LABEL_29:

            goto LABEL_30;
          }

          v20 = v104;
          v19 = v105;
          if (v89 == v44 && v91 == v46)
          {
            goto LABEL_78;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v47)
          {
            goto LABEL_82;
          }
        }
      }
    }

LABEL_31:
    type metadata accessor for LivePhotoAsset();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      goto LABEL_45;
    }

    v2 = v48;
    v49 = swift_dynamicCastClass();
    if (!v49 || !*(v2 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
    {
      goto LABEL_45;
    }

    v96 = v49;
    v50 = v24;
    v51 = a1;

    v52 = v99;
    sub_100046ADC(v99);
    v53 = v52;

    v54 = *v106;
    v55 = v52;
    v56 = v107;
    if ((*v106)(v55, 1, v107))
    {

LABEL_36:
      sub_100004F84(v53, &qword_100AD5B20);
LABEL_44:
      v20 = v104;
      v19 = v105;
      goto LABEL_45;
    }

    v95 = v50;
    v57 = v103;
    v90 = *v102;
    (v90)(v103, v53, v56);
    sub_100004F84(v53, &qword_100AD5B20);
    v89 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
    v59 = v58;
    v60 = v57;
    v61 = *v101;
    (*v101)(v60, v56);
    if (!v59)
    {

LABEL_43:
      goto LABEL_44;
    }

    v91 = v59;
    v62 = v51;
    if (!*&v96[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata])
    {

      goto LABEL_43;
    }

    v63 = v93;
    sub_100046ADC(v93);
    v53 = v63;

    v64 = v63;
    v65 = v107;
    if (v54(v64, 1, v107))
    {

      goto LABEL_36;
    }

    v96 = v62;
    v78 = v103;
    (v90)(v103, v53, v65);
    sub_100004F84(v53, &qword_100AD5B20);
    v90 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
    v80 = v79;
    v61(v78, v65);
    v20 = v104;
    v19 = v105;
    if (!v80)
    {

      goto LABEL_45;
    }

    v81 = v95;
    if (v89 == v90 && v91 == v80)
    {
      break;
    }

    LODWORD(v90) = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v90)
    {
      goto LABEL_82;
    }

LABEL_45:
    type metadata accessor for VideoAsset();
    v66 = swift_dynamicCastClass();
    if (v66)
    {
      v2 = v66;
      v67 = swift_dynamicCastClass();
      if (v67)
      {
        if (*(v2 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
        {
          v96 = v67;
          v68 = a1;

          v69 = v98;
          sub_100046ADC(v98);

          v70 = v107;
          v71 = *v106;
          if ((*v106)(v69, 1, v107))
          {

            v72 = v69;
LABEL_50:
            sub_100004F84(v72, &qword_100AD5B20);
            goto LABEL_58;
          }

          v73 = v103;
          v95 = *v102;
          (v95)(v103, v69, v70);
          sub_100004F84(v69, &qword_100AD5B20);
          v90 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
          v75 = v74;
          v91 = *v101;
          v91(v73, v70);
          if (!v75)
          {
            goto LABEL_56;
          }

          if (!*&v96[OBJC_IVAR____TtC7Journal10VideoAsset_metadata])
          {

LABEL_56:

LABEL_57:
LABEL_58:
            v20 = v104;
            v19 = v105;
            goto LABEL_7;
          }

          v96 = v68;

          v76 = v92;
          sub_100046ADC(v92);

          v77 = v107;
          if (v71(v76, 1, v107))
          {

            v72 = v76;
            goto LABEL_50;
          }

          v82 = v103;
          (v95)(v103, v76, v77);
          sub_100004F84(v76, &qword_100AD5B20);
          v83 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
          v85 = v84;
          v91(v82, v77);
          if (!v85)
          {

            goto LABEL_57;
          }

          v86 = v90 == v83;
          v20 = v104;
          v19 = v105;
          if (v86 && v75 == v85)
          {

            goto LABEL_80;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_82;
          }
        }
      }
    }

LABEL_7:
    ++v21;
    if (v25 == v20)
    {
      goto LABEL_72;
    }
  }

LABEL_80:
  v88 = v96;
LABEL_81:

LABEL_82:

  return v2;
}

uint64_t sub_1001FF3C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return _swift_task_switch(sub_1001FF4C8, v6, v8);
}

uint64_t sub_1001FF4C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = swift_allocObject();
  v0[10] = v4;
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1001FF5E8;
  v6 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v5, v6, sub_100206C44, v4, &type metadata for () + 8);
}

uint64_t sub_1001FF5E8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[8];
    v5 = v2[9];

    return _swift_task_switch(sub_1001FF73C, v4, v5);
  }
}

uint64_t sub_1001FF73C()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1001FF7D4;
  v2 = *(v0 + 16);

  return sub_1001FB328(v2);
}

uint64_t sub_1001FF7D4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1001FF8F4, v3, v2);
}

uint64_t sub_1001FF8F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FF954()
{
  v58 = type metadata accessor for UUID();
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v54 = v0;
    v9 = [*(result + 32) assets];
    v56 = v2;
    v61 = v8;
    if (v9)
    {
      v10 = v9;
      NSSet.makeIterator()();

      sub_10004B900(&qword_100AD87A0, &type metadata accessor for NSFastEnumerationIterator);
      dispatch thunk of IteratorProtocol.next()();
      if (v65)
      {
        v11 = _swiftEmptyArrayStorage;
        do
        {
          sub_10002432C(&v64, v66);
          sub_10000BA20(v66, &v64);
          type metadata accessor for JournalEntryAssetMO();
          if (swift_dynamicCast() && (v12 = v63, v13 = [v63 isUndoablyDeleted], v12, (v13 & 1) != 0))
          {
            sub_10002432C(v66, &v64);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67 = v11;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10002430C(0, v11[2] + 1, 1);
              v11 = v67;
            }

            v16 = v11[2];
            v15 = v11[3];
            if (v16 >= v15 >> 1)
            {
              sub_10002430C((v15 > 1), v16 + 1, 1);
              v11 = v67;
            }

            v11[2] = v16 + 1;
            sub_10002432C(&v64, &v11[4 * v16 + 4]);
            v8 = v61;
          }

          else
          {
            sub_10000BA7C(v66);
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v65);
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
      }

      (*(v4 + 8))(v6, v3);
      sub_100004F84(&v64, &qword_100AD13D0);
      v2 = v56;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    if (qword_100ACFAB8 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v17 = type metadata accessor for Logger();
      sub_10000617C(v17, qword_100AD8748);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138543874;
        v22 = v8;
        v23 = *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
        *(v20 + 4) = v23;
        *v21 = v23;
        *(v20 + 12) = 2048;
        v24 = *(v22 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
        if (v24 >> 62)
        {
          v25 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = v23;
        v8 = v61;

        *(v20 + 14) = v25;

        *(v20 + 22) = 2048;
        v27 = v11[2];

        *(v20 + 24) = v27;

        _os_log_impl(&_mh_execute_header, v18, v19, "%{public}@ (removeUndoablyDeletedAssets) assets.count: %ld  assetsToRemove.count:%ld", v20, 0x20u);
        sub_100004F84(v21, &unk_100AD4BB0);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v28 = v11;
      v11 = v11[2];
      if (!v11)
      {
      }

      v29 = JournalEntryMO.assetOrderingDictionary.getter();
      v30 = 0;
      v62 = v28;
      v31 = v28 + 4;
      v57 = (v55 + 8);
      v32 = &selRef_initWithName_managedObjectModel_;
      v59 = v31;
      v60 = v29;
      while (v30 < v62[2])
      {
        sub_10000BA20(&v31[4 * v30], v66);
        type metadata accessor for JournalEntryAssetMO();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        v33 = v64;
        [v64 v32[91]];
        [v33 setIsUploadedToCloud:1];
        sub_1007D7788();
        sub_1006EF5D4();
        v34 = [v33 fileAttachments];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 allObjects];

          v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = sub_100584ADC(v37);

          if (v38)
          {
            if (v38 >> 62)
            {
              v39 = _CocoaArrayWrapper.endIndex.getter();
              if (v39)
              {
LABEL_34:
                if (v39 < 1)
                {
                  goto LABEL_51;
                }

                for (i = 0; i != v39; ++i)
                {
                  if ((v38 & 0xC000000000000001) != 0)
                  {
                    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v41 = *(v38 + 8 * i + 32);
                  }

                  v42 = v41;
                  [v41 v32[91]];
                }
              }
            }

            else
            {
              v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v39)
              {
                goto LABEL_34;
              }
            }

            v2 = v56;
            v8 = v61;
          }
        }

        [*(v8 + 32) removeAssetsObject:v33];
        v43 = [v33 id];
        if (v43)
        {
          v44 = v43;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v45 = v60;
          v46 = sub_100361E08(v2);
          if (v47)
          {
            v48 = v46;
            v49 = swift_isUniquelyReferenced_nonNull_native();
            *&v66[0] = v45;
            v50 = v45;
            if (!v49)
            {
              sub_100821358();
              v50 = *&v66[0];
            }

            v51 = *(v55 + 8);
            v52 = v58;
            v51(*(v50 + 48) + *(v55 + 72) * v48, v58);
            v60 = v50;
            sub_1002006DC(v48, v50);

            v51(v2, v52);
            v8 = v61;
            v31 = v59;
            v32 = &selRef_initWithName_managedObjectModel_;
            goto LABEL_27;
          }

          (*v57)(v2, v58);
        }

        v31 = v59;
LABEL_27:
        if (++v30 == v11)
        {

          v53 = *(v8 + 32);
          JournalEntryMO.assetOrderingDictionary.setter();

          [*(v8 + 32) setIsUploadedToCloud:0];
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_100200178(uint64_t *a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AEEE20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_1000F24EC(&qword_100AD1420);
  v11 = __chkstk_darwin(v10 - 8);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  swift_beginAccess();
  (*(v4 + 16))(v14, v26, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_1000082B4(v15 + v16, v9, &qword_100AD1420);
  sub_1000082B4(v14, &v9[v17], &qword_100AD1420);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v25;
    sub_1000082B4(v9, v25, &qword_100AD1420);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v24;
      (*(v4 + 32))(v24, &v9[v17], v3);
      sub_10004B900(&qword_100AD9220, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_100004F84(v14, &qword_100AD1420);
      v22(v20, v3);
      sub_100004F84(v9, &qword_100AD1420);
      return v19 & 1;
    }

    sub_100004F84(v14, &qword_100AD1420);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_100004F84(v14, &qword_100AD1420);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_100004F84(v9, &unk_100AEEE20);
    v19 = 0;
    return v19 & 1;
  }

  sub_100004F84(v9, &qword_100AD1420);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_10020058C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + 32) setBundleId:0];
    [*(v1 + 32) setBundleDate:0];
    [*(v1 + 32) setBundleEndDate:0];
  }

  return result;
}

Swift::Int sub_100200628(void **a1)
{
  v2 = *(sub_1000F24EC(&qword_100AD1428) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10020505C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100203944(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_1002006DC(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10004B900(&qword_100AD4B40, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1002009FC(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10004B900(&qword_100AD4B40, &type metadata accessor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = v26 + v25;
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100200CFC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_100200EC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100201074(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100201224(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1002013B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for AttributedString() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100201678(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      if (v10 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v10;
      }

      Hasher._combine(_:)(*&v12);
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v11;
      }

      Hasher._combine(_:)(*&v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v14)
      {
LABEL_16:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100201838(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100201AC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100201C80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100361E08(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_100821358();
    goto LABEL_7;
  }

  sub_10081BC14(result, a3 & 1);
  result = sub_100361E08(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_100203250(v14, v11, a1, v20);
}

uint64_t sub_100201E1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100361E08(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_100821380();
      goto LABEL_9;
    }

    sub_10081BFD4(v16, a3 & 1);
    v19 = sub_100361E08(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_100203308(v13, v10, a1, v21);
  }
}

id sub_100202000(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100361F20(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_10081C448(v15, a4 & 1);
      v10 = sub_100361F20(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_1000065A8(0, &unk_100AD2BF0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_1008217F4();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

_OWORD *sub_10020218C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100094E98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100821978();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10081C6C8(v16, a4 & 1);
    v11 = sub_100094E98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000BA7C(v22);

    return sub_10002432C(a1, v22);
  }

  else
  {
    sub_1002033E4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1002022DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AssetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100362044(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100821DC4();
      goto LABEL_7;
    }

    sub_10081D118(v17, a3 & 1);
    v22 = sub_100362044(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100203450(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1002024A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100094E98(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10081DB68(v18, a5 & 1);
      v13 = sub_100094E98(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10082245C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_100202630(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003623A4(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 < v16 || (a2 & 1) != 0)
    {
      sub_10081F710(v16, a2 & 1);
      v11 = sub_1003623A4(a3, a4);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for CGSize(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1008239B8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a3;
    v24[1] = a4;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

unint64_t sub_10020278C(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10009D0BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10081F9C8(v14, a3 & 1);
      result = sub_10009D0BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100823B18();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_1002028D8(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  v9 = sub_10036259C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10081FD4C(v14, a3 & 1);
      v9 = sub_10036259C(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_100823C74();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = v8;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

uint64_t sub_100202A78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100094E98(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_100094E98(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

void sub_100202C3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_100362658(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_100824230();
      goto LABEL_7;
    }

    sub_100820560(v18, a4 & 1);
    v25 = sub_100362658(a3);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100206C60(a3, v12);
      sub_1002037B4(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  v23 = v22[1];
  v28 = *v22;
  *v22 = a1;
  v22[1] = a2;

  v24 = v28;
}

void sub_100202DE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100094E98(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1008208FC(v18, a5 & 1);
      v13 = sub_100094E98(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10082447C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = v23[7] + 16 * v13;
  *v27 = a1;
  *(v27 + 8) = a2 & 1;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_100202F80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000B8DAC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100820BC0(v16, a4 & 1);
      v11 = sub_1000B8DAC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1008245F8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v24 = (v21[7] + 16 * v11);
    *v24 = a1;
    v24[1] = a2;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

unint64_t sub_1002030E0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_1003627B0(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1008210F0(v15, a4 & 1);
      result = sub_1003627B0(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_1000065A8(0, &qword_100ADFF70);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = result;
      sub_1008248E0();
      result = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * result);
    *v21 = a1;
    v21[1] = a2;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a3;
  v22 = (v20[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v24;

  return a3;
}

uint64_t sub_100203250(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100203308(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_1002033E4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10002432C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100203450(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AssetType();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100203508(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6];
  v13 = type metadata accessor for IndexPath();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a5[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4 & 1;
  *(v15 + 16) = a6;
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

unint64_t sub_1002035E4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_100203680(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_100206CC4(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_100203728(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_100203770(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1002037B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  result = sub_100206CC4(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for CanvasBarItemCoordinator.ItemKey);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_100203870(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1003E4B08(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_10019B5E0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

Swift::Int sub_100203944(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F24EC(&qword_100AD1428);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_1000F24EC(&qword_100AD1428) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100203CFC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100203A88(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100203A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000F24EC(&qword_100AD1428);
  v9 = __chkstk_darwin(v8);
  v41 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v32 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v32 - v15;
  v34 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v39 = -v17;
    v40 = v16;
    v19 = a1 - a3;
    v33 = v17;
    v20 = v16 + v17 * a3;
    v21 = &qword_100AD1428;
    v42 = v8;
LABEL_5:
    v37 = v18;
    v38 = a3;
    v35 = v20;
    v36 = v19;
    while (1)
    {
      v22 = v43;
      sub_1000082B4(v20, v43, v21);
      v23 = v21;
      v24 = v44;
      sub_1000082B4(v18, v44, v23);
      v25 = *(v8 + 48);
      v26 = *(v22 + v25);
      v27 = *(v24 + v25);
      v28 = v24;
      v21 = v23;
      sub_100004F84(v28, v23);
      result = sub_100004F84(v22, v23);
      v29 = v26 < v27;
      v8 = v42;
      if (!v29)
      {
LABEL_4:
        a3 = v38 + 1;
        v18 = v37 + v33;
        v19 = v36 - 1;
        v20 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v30 = v41;
      sub_100021CEC(v20, v41, v23);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100021CEC(v30, v18, v23);
      v18 += v39;
      v20 += v39;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100203CFC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v108 = a1;
  v124 = sub_1000F24EC(&qword_100AD1428);
  v118 = *(v124 - 8);
  v7 = __chkstk_darwin(v124);
  v111 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v121 = &v105 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v105 - v12;
  result = __chkstk_darwin(v11);
  v122 = &v105 - v14;
  v15 = *(a3 + 8);
  v109 = a3;
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_98:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_137;
    }

    v4 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v114;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v4;
LABEL_101:
      v125 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (1)
        {
          v101 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          a3 = *(result + 16 * v4);
          v102 = result;
          v103 = *(result + 16 * (v4 - 1) + 40);
          sub_100204684(v101 + *(v118 + 72) * a3, v101 + *(v118 + 72) * *(result + 16 * (v4 - 1) + 32), v101 + *(v118 + 72) * v103, a4);
          if (v34)
          {
          }

          if (v103 < a3)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_100204C44(v102);
          }

          if (v4 - 2 >= *(v102 + 2))
          {
            goto LABEL_125;
          }

          v104 = &v102[16 * v4];
          *v104 = a3;
          *(v104 + 1) = v103;
          v125 = v102;
          sub_100204BB8(v4 - 1);
          result = v125;
          v4 = *(v125 + 16);
          a3 = v109;
          if (v4 <= 1)
          {
          }
        }
      }
    }

LABEL_131:
    result = sub_100204C44(v4);
    goto LABEL_101;
  }

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v107 = a4;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v112 = v17;
    if (v19 >= v15)
    {
      v33 = v19;
      v34 = v114;
    }

    else
    {
      v20 = *a3;
      v21 = *(v118 + 72);
      v22 = *a3 + v21 * v19;
      v23 = v122;
      v4 = &qword_100AD1428;
      sub_1000082B4(v22, v122, &qword_100AD1428);
      v24 = v123;
      sub_1000082B4(v20 + v21 * v18, v123, &qword_100AD1428);
      v25 = *(v124 + 48);
      v26 = *(v23 + v25);
      v116 = *(v24 + v25);
      v117 = v26;
      sub_100004F84(v24, &qword_100AD1428);
      result = sub_100004F84(v23, &qword_100AD1428);
      v106 = v18;
      v27 = v18 + 2;
      v119 = v21;
      v28 = v20 + v21 * v27;
      while (v15 != v27)
      {
        LODWORD(v120) = v117 < v116;
        v29 = v122;
        sub_1000082B4(v28, v122, &qword_100AD1428);
        v30 = v123;
        sub_1000082B4(v22, v123, &qword_100AD1428);
        v31 = *(v124 + 48);
        v32 = *(v29 + v31);
        v4 = *(v30 + v31);
        sub_100004F84(v30, &qword_100AD1428);
        result = sub_100004F84(v29, &qword_100AD1428);
        ++v27;
        v28 += v119;
        v22 += v119;
        if (((v120 ^ (v32 >= v4)) & 1) == 0)
        {
          v33 = v27 - 1;
          goto LABEL_11;
        }
      }

      v33 = v15;
LABEL_11:
      v18 = v106;
      a4 = v107;
      a3 = v109;
      v34 = v114;
      if (v117 < v116)
      {
        if (v33 < v106)
        {
          goto LABEL_128;
        }

        if (v106 < v33)
        {
          v4 = v119 * (v33 - 1);
          v35 = v33 * v119;
          v117 = v33;
          v36 = v33;
          v37 = v106 * v119;
          do
          {
            if (v18 != --v36)
            {
              v114 = v34;
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              sub_100021CEC(v38 + v37, v111, &qword_100AD1428);
              if (v37 < v4 || v38 + v37 >= (v38 + v35))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100021CEC(v111, v38 + v4, &qword_100AD1428);
              v34 = v114;
            }

            ++v18;
            v4 -= v119;
            v35 -= v119;
            v37 += v119;
          }

          while (v18 < v36);
          v18 = v106;
          a4 = v107;
          v33 = v117;
        }
      }
    }

    v39 = *(a3 + 8);
    if (v33 >= v39)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v33, v18))
    {
      goto LABEL_127;
    }

    if (v33 - v18 >= a4)
    {
LABEL_34:
      v41 = v33;
      if (v33 < v18)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_129;
    }

    if ((v18 + a4) >= v39)
    {
      v40 = *(a3 + 8);
    }

    else
    {
      v40 = v18 + a4;
    }

    if (v40 < v18)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v33 == v40)
    {
      goto LABEL_34;
    }

    v113 = v40;
    v114 = v34;
    v87 = *a3;
    v88 = *(v118 + 72);
    v89 = *a3 + v88 * (v33 - 1);
    v90 = -v88;
    v106 = v18;
    v91 = v18 - v33;
    v120 = v87;
    v110 = v88;
    a4 = v87 + v33 * v88;
    v92 = v124;
LABEL_88:
    v116 = v91;
    v117 = v33;
    v115 = a4;
    v119 = v89;
    v93 = v89;
LABEL_89:
    v4 = v122;
    sub_1000082B4(a4, v122, &qword_100AD1428);
    v94 = v123;
    sub_1000082B4(v93, v123, &qword_100AD1428);
    v95 = *(v92 + 48);
    v96 = *(v4 + v95);
    v97 = *(v94 + v95);
    sub_100004F84(v94, &qword_100AD1428);
    result = sub_100004F84(v4, &qword_100AD1428);
    if (v96 < v97)
    {
      break;
    }

    v92 = v124;
LABEL_87:
    v33 = v117 + 1;
    v89 = v119 + v110;
    v91 = v116 - 1;
    a4 = v115 + v110;
    v41 = v113;
    if (v117 + 1 != v113)
    {
      goto LABEL_88;
    }

    v34 = v114;
    a3 = v109;
    v18 = v106;
    if (v113 < v106)
    {
      goto LABEL_126;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v112;
    }

    else
    {
      result = sub_1003E4B80(0, *(v112 + 2) + 1, 1, v112);
      v17 = result;
    }

    v4 = *(v17 + 2);
    v42 = *(v17 + 3);
    a4 = v4 + 1;
    if (v4 >= v42 >> 1)
    {
      result = sub_1003E4B80((v42 > 1), v4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = a4;
    v43 = &v17[16 * v4];
    *(v43 + 4) = v18;
    *(v43 + 5) = v41;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_136;
    }

    v113 = v41;
    if (v4)
    {
      v45 = v44;
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v17 + 4);
          v48 = *(v17 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_55:
          if (v50)
          {
            goto LABEL_115;
          }

          v63 = &v17[16 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_118;
          }

          v69 = &v17[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_122;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v73 = &v17[16 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_69:
        if (v68)
        {
          goto LABEL_117;
        }

        v76 = &v17[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_120;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_76:
        v4 = v46 - 1;
        if (v46 - 1 >= a4)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v84 = v17;
        a4 = *&v17[16 * v4 + 32];
        v85 = *&v17[16 * v46 + 40];
        sub_100204684(*a3 + *(v118 + 72) * a4, *a3 + *(v118 + 72) * *&v17[16 * v46 + 32], *a3 + *(v118 + 72) * v85, v45);
        if (v34)
        {
        }

        if (v85 < a4)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_100204C44(v84);
        }

        if (v4 >= *(v84 + 2))
        {
          goto LABEL_112;
        }

        v86 = &v84[16 * v4];
        *(v86 + 4) = a4;
        *(v86 + 5) = v85;
        v125 = v84;
        v4 = &v125;
        result = sub_100204BB8(v46);
        v17 = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v17[16 * a4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_113;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_114;
      }

      v58 = &v17[16 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_116;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_119;
      }

      if (v62 >= v54)
      {
        v80 = &v17[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_123;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v114 = v34;
    v15 = *(a3 + 8);
    v16 = v113;
    a4 = v107;
    if (v113 >= v15)
    {
      goto LABEL_98;
    }
  }

  if (v120)
  {
    v98 = v121;
    sub_100021CEC(a4, v121, &qword_100AD1428);
    v92 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_100021CEC(v98, v93, &qword_100AD1428);
    v93 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_100204684(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = sub_1000F24EC(&qword_100AD1428);
  v8 = __chkstk_darwin(v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v45 = &v37 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v29 = a4 + v17;
    }

    else
    {
      v27 = -v13;
      v28 = a4 + v17;
      v29 = a4 + v17;
      v40 = a1;
      v41 = a4;
      v39 = v27;
      do
      {
        v37 = v29;
        v30 = a2 + v27;
        v42 = a2;
        v43 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v37;
            goto LABEL_58;
          }

          v31 = a3;
          v38 = v29;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v45;
          sub_1000082B4(v28 + v27, v45, &qword_100AD1428);
          v34 = v46;
          sub_1000082B4(v30, v46, &qword_100AD1428);
          v35 = *(v47 + 48);
          v44 = *(v33 + v35);
          v36 = *(v34 + v35);
          sub_100004F84(v34, &qword_100AD1428);
          sub_100004F84(v33, &qword_100AD1428);
          if (v44 < v36)
          {
            break;
          }

          v29 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v43;
            v27 = v39;
            a1 = v40;
          }

          else
          {
            v30 = v43;
            v27 = v39;
            a1 = v40;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          a2 = v42;
          if (v32 <= v41)
          {
            goto LABEL_56;
          }
        }

        if (v31 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v39;
          a1 = v40;
          v29 = v38;
        }

        else
        {
          a2 = v43;
          v27 = v39;
          a1 = v40;
          v29 = v38;
          if (v31 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_56:
    v50 = a2;
    v48 = v29;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a3;
    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v13;
      do
      {
        v19 = v45;
        v20 = a2;
        sub_1000082B4(a2, v45, &qword_100AD1428);
        v21 = v46;
        sub_1000082B4(a4, v46, &qword_100AD1428);
        v22 = *(v47 + 48);
        v23 = *(v19 + v22);
        v24 = *(v21 + v22);
        sub_100004F84(v21, &qword_100AD1428);
        sub_100004F84(v19, &qword_100AD1428);
        if (v23 >= v24)
        {
          v25 = v42;
          v26 = a4 + v42;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v26;
          a4 += v25;
        }

        else
        {
          v25 = v42;
          a2 += v42;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v25;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_100204CF4(&v50, &v49, &v48, &qword_100AD1428);
  return 1;
}

uint64_t sub_100204BB8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100204C44(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100204CF4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = sub_1000F24EC(a4);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100204E0C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_100204EF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD8778);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_10020516C(unint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_21:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v22 = a1 & 0xC000000000000001;
  v18[1] = a1;
  v20 = a1 + 32;
  v25 = v19 + 16;
  v26 = v27 + 56;
  v7 = (v19 + 8);
  while (1)
  {
    if (v6 == v23)
    {
      return 0;
    }

    v24 = v6;
    if (v22)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v21 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = *(v20 + 8 * v6);
    }

    v28 = v8;
    if (*(v27 + 16))
    {
      v9 = OBJC_IVAR____TtC7Journal5Asset_id;
      v10 = v27;
      sub_10004B900(&qword_100AD4B40, &type metadata accessor for UUID);
      a1 = &v28[v9];
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = -1 << *(v10 + 32);
      v13 = v11 & ~v12;
      if ((*(v26 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        break;
      }
    }

LABEL_4:

    v6 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_20;
    }
  }

  v14 = ~v12;
  v15 = *(v19 + 72);
  v16 = *(v19 + 16);
  while (1)
  {
    v16(v5, *(v27 + 48) + v15 * v13, v3);
    sub_10004B900(&qword_100AD9220, &type metadata accessor for UUID);
    a1 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v7)(v5, v3);
    if (a1)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v26 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return v24;
}

void *sub_10020548C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1428);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v64 - v7;
  v8 = __chkstk_darwin(v6);
  v74 = &v64 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v64 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v64 - v14;
  v16 = *(a1 + 16);
  v72 = v13;
  v65 = &v64 - v14;
  if (v16)
  {
    v17 = sub_1003E7610(v16, 0);
    v76 = sub_1001C1C38(&v77, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v16, a1);

    sub_100014FF8();
    if (v76 != v16)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v72;
    v15 = v65;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v77 = v17;
  sub_100200628(&v77);
  v18 = v77;
  v71 = v77[2];
  if (v71)
  {
    v19 = 0;
    v20 = 0;
    v21 = v2;
    v70 = *(v2 + 48);
    v22 = *(v3 + 80);
    v23 = &_swiftEmptyDictionarySingleton;
    v68 = v3;
    v69 = v77 + ((v22 + 32) & ~v22);
    v67 = v77;
    v64 = v12;
    while (v20 < v18[2])
    {
      v75 = v19;
      sub_1000082B4(&v69[*(v3 + 72) * v20], v15, &qword_100AD1428);
      v27 = *&v15[v70];
      v28 = *(v21 + 48);
      v29 = type metadata accessor for UUID();
      v30 = *(v29 - 8);
      v31 = *(v30 + 32);
      v76 = v29;
      v31(v12, v15);
      *&v12[v28] = v27;
      if (v27 < 0)
      {
        v42 = v73;
        sub_1000082B4(v12, v73, &qword_100AD1428);
        v43 = v66;
        sub_1000082B4(v12, v66, &qword_100AD1428);
        v44 = *(v43 + *(v21 + 48));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v23;
        v46 = sub_100361E08(v42);
        v48 = v23[2];
        v49 = (v47 & 1) == 0;
        v26 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v26)
        {
          goto LABEL_38;
        }

        v51 = v47;
        if (v23[3] >= v50)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v62 = v46;
            sub_100821358();
            v46 = v62;
          }
        }

        else
        {
          sub_10081BC14(v50, isUniquelyReferenced_nonNull_native);
          v46 = sub_100361E08(v73);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_42;
          }
        }

        v12 = v64;
        v15 = v65;
        v23 = v77;
        if (v51)
        {
          *(v77[7] + 8 * v46) = v44;
          sub_100004F84(v12, &qword_100AD1428);
        }

        else
        {
          v77[(v46 >> 6) + 8] |= 1 << v46;
          v57 = v46;
          (*(v30 + 16))(v23[6] + *(v30 + 72) * v46, v73, v76);
          *(v23[7] + 8 * v57) = v44;
          sub_100004F84(v12, &qword_100AD1428);
          v58 = v23[2];
          v26 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v26)
          {
            goto LABEL_40;
          }

          v23[2] = v59;
        }

        v60 = *(v30 + 8);
        v61 = v76;
        v60(v73, v76);
        v60(v66, v61);
        v21 = v72;
        v19 = v75;
      }

      else
      {
        v32 = v74;
        sub_1000082B4(v12, v74, &qword_100AD1428);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v77 = v23;
        v35 = sub_100361E08(v32);
        v36 = v23[2];
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_36;
        }

        v39 = v34;
        if (v23[3] >= v38)
        {
          if ((v33 & 1) == 0)
          {
            sub_100821358();
          }
        }

        else
        {
          sub_10081BC14(v38, v33);
          v40 = sub_100361E08(v74);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_42;
          }

          v35 = v40;
        }

        v21 = v72;
        v53 = v76;
        v23 = v77;
        if (v39)
        {
          v24 = v75;
          *(v77[7] + 8 * v35) = v75;
          v25 = v24;
          sub_100004F84(v12, &qword_100AD1428);
        }

        else
        {
          v77[(v35 >> 6) + 8] |= 1 << v35;
          (*(v30 + 16))(v23[6] + *(v30 + 72) * v35, v74, v53);
          v54 = v75;
          *(v23[7] + 8 * v35) = v75;
          v25 = v54;
          sub_100004F84(v12, &qword_100AD1428);
          v55 = v23[2];
          v26 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v26)
          {
            goto LABEL_39;
          }

          v23[2] = v56;
        }

        (*(v30 + 8))(v74, v53);
        v26 = __OFADD__(v25, 1);
        v19 = v25 + 1;
        if (v26)
        {
          goto LABEL_37;
        }
      }

      ++v20;
      v18 = v67;
      v3 = v68;
      if (v71 == v20)
      {

        return v23;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100205B44(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t))
{
  v105 = a3;
  v92 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v93 = &v84 - v10;
  v11 = __chkstk_darwin(v9);
  v100 = &v84 - v12;
  __chkstk_darwin(v11);
  v98 = &v84 - v13;
  v14 = sub_1000F24EC(&qword_100AD1418);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = type metadata accessor for AssetPlacement();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (&v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v84 - v25;

  AssetPlacement.init(_:)();
  (*(v21 + 16))(v24, v26, v20);
  if ((*(v21 + 88))(v24, v20) == enum case for AssetPlacement.grid(_:))
  {
    v87 = v26;
    v88 = v21;
    v89 = v20;
    v90 = v8;
    (*(v21 + 96))(v24, v20);
    v103 = *v24;
    v27 = *(a1 + 64);
    v94 = a1 + 64;
    v28 = 1 << *(a1 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v99 = (v5 + 16);
    v105 = (v5 + 32);
    v102 = (v5 + 8);

    v32 = 0;
    v96 = v17;
    v97 = a1;
    v91 = a1;
    v104 = v4;
    v33 = v5;
    v101 = v5;
    v34 = v100;
    v95 = v19;
    while (2)
    {
      v35 = v32;
      if (v30)
      {
        while (1)
        {
          v36 = v35;
LABEL_14:
          v38 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          v39 = v38 | (v36 << 6);
          v40 = v97;
          v41 = v33;
          (*(v33 + 16))(v98, *(v97 + 48) + *(v33 + 72) * v39, v4);
          v42 = *(*(v40 + 56) + 8 * v39);
          v43 = sub_1000F24EC(&qword_100AD1428);
          v44 = *(v43 + 48);
          v17 = v96;
          (*(v41 + 32))();
          *&v17[v44] = v42;
          (*(*(v43 - 8) + 56))(v17, 0, 1, v43);
          v32 = v36;
          v34 = v100;
          v19 = v95;
LABEL_15:
          sub_100021CEC(v17, v19, &qword_100AD1418);
          v45 = sub_1000F24EC(&qword_100AD1428);
          if ((*(*(v45 - 8) + 48))(v19, 1, v45) == 1)
          {
            v76 = v97;

            v77 = v90;
            v78 = v104;
            (*v99)(v90, v92, v104);
            if (*(v76 + 16) >= v103)
            {
              v79 = v103;
            }

            else
            {
              v79 = *(v76 + 16);
            }

            v80 = v91;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v106 = v80;
            sub_100201C80(v79, v77, isUniquelyReferenced_nonNull_native);
            (*v102)(v77, v78);
            v75 = v106;
            v21 = v88;
            v20 = v89;
            v26 = v87;
            goto LABEL_36;
          }

          v46 = *&v19[*(v45 + 48)];
          v4 = v104;
          (*v105)(v34, v19, v104);
          if (v46 >= v103)
          {
            break;
          }

          (*v102)(v34, v4);
          v35 = v32;
          v33 = v101;
          if (!v30)
          {
            goto LABEL_7;
          }
        }

        v48 = *v99;
        v49 = v34;
        v50 = v93;
        (*v99)(v93, v49, v4);
        v51 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_38;
        }

        v52 = v91;
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v52;
        v54 = sub_100361E08(v50);
        v55 = v52[2];
        v56 = (v53 & 1) == 0;
        v57 = v55 + v56;
        if (!__OFADD__(v55, v56))
        {
          v58 = v52[3];
          v85 = v51;
          if (v58 >= v57)
          {
            if ((v86 & 1) == 0)
            {
              v72 = v53;
              sub_100821358();
              LOBYTE(v53) = v72;
            }
          }

          else
          {
            LODWORD(v91) = v53;
            sub_10081BC14(v57, v86);
            v59 = sub_100361E08(v93);
            v60 = v53 & 1;
            LOBYTE(v53) = v91;
            if ((v91 & 1) != v60)
            {
              goto LABEL_41;
            }

            v54 = v59;
          }

          v61 = v93;
          v62 = v106;
          v91 = v106;
          if (v53)
          {
            *(v106[7] + 8 * v54) = v85;
            v63 = *v102;
            (*v102)(v61, v4);
            v34 = v100;
            v63(v100, v4);
            v33 = v101;
            continue;
          }

          v106[(v54 >> 6) + 8] |= 1 << v54;
          v64 = v54;
          v65 = v101;
          v66 = v48;
          v67 = v61;
          v66(v62[6] + *(v101 + 72) * v64, v61, v4);
          *(v62[7] + 8 * v64) = v85;
          v68 = *(v65 + 8);
          v68(v67, v4);
          v34 = v100;
          v68(v100, v4);
          v69 = v62[2];
          v70 = __OFADD__(v69, 1);
          v71 = v69 + 1;
          if (!v70)
          {
            v62[2] = v71;
            v33 = v101;
            continue;
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_7:
        if (v31 <= v35 + 1)
        {
          v37 = v35 + 1;
        }

        else
        {
          v37 = v31;
        }

        v32 = v37 - 1;
        while (1)
        {
          v36 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v36 >= v31)
          {
            v47 = sub_1000F24EC(&qword_100AD1428);
            (*(*(v47 - 8) + 56))(v17, 1, 1, v47);
            v30 = 0;
            goto LABEL_15;
          }

          v30 = *(v94 + 8 * v36);
          ++v35;
          if (v30)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
      }

      break;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  (*(v21 + 8))(v24, v20);
  v73 = AssetPlacement.sortIndex.getter();
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v106 = a1;
  sub_100201C80(v73, v92, v74);
  v75 = v106;
LABEL_36:
  v82 = sub_10020548C(v75);

  (*(v21 + 8))(v26, v20);
  return v82;
}

unint64_t sub_10020641C(unint64_t *a1, uint64_t a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = sub_10020516C(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v38 = a1;
  v46 = a2;
  if (v12)
  {
    if (v10 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  v36 = 0;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v13 = v46;
  v44 = v7 + 16;
  v45 = v46 + 56;
  v43 = (v7 + 8);
  v37 = v7;
  v14 = result + 1;
  while (1)
  {
    if (v10 >> 62)
    {
      if (v14 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v3;
      }
    }

    else if (v14 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v41 = v10;
    v42 = v3;
    v39 = v10 & 0xC000000000000001;
    v40 = v14;
    if ((v10 & 0xC000000000000001) == 0)
    {
      break;
    }

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v16 = v15;
    if (*(v13 + 16) && (sub_10004B900(&qword_100AD4B40, &type metadata accessor for UUID), v17 = dispatch thunk of Hashable._rawHashValue(seed:)(), v13 = v46, v18 = -1 << *(v46 + 32), v19 = v17 & ~v18, ((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
    {
      v20 = ~v18;
      v21 = *(v37 + 72);
      v22 = *(v37 + 16);
      while (1)
      {
        v22(v9, *(v13 + 48) + v21 * v19, v6);
        sub_10004B900(&qword_100AD9220, &type metadata accessor for UUID);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v43)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        v13 = v46;
        if (((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v13 = v46;
      v10 = v41;
      v3 = v42;
      v24 = v40;
    }

    else
    {
LABEL_21:

      v3 = v42;
      v24 = v40;
      if (v42 == v40)
      {
        v10 = v41;
        v3 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v10 = v41;
        if (v39)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v27 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42 >= v27)
          {
            goto LABEL_54;
          }

          if (v40 >= v27)
          {
            goto LABEL_55;
          }

          v28 = *(v41 + 32 + 8 * v40);
          v25 = *(v41 + 32 + 8 * v42);
          v26 = v28;
        }

        v29 = v26;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
        {
          v10 = sub_100692B10(v10);
          v30 = (v10 >> 62) & 1;
        }

        else
        {
          LODWORD(v30) = 0;
        }

        v31 = v10 & 0xFFFFFFFFFFFFFF8;
        v32 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v29;

        if ((v10 & 0x8000000000000000) != 0 || v30)
        {
          v10 = sub_100692B10(v10);
          v31 = v10 & 0xFFFFFFFFFFFFFF8;
          if ((v24 & 0x8000000000000000) != 0)
          {
LABEL_46:
            __break(1u);
            return v3;
          }
        }

        else if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v24 >= *(v31 + 16))
        {
          goto LABEL_52;
        }

        v33 = v31 + 8 * v24;
        v34 = *(v33 + 32);
        *(v33 + 32) = v25;

        *v38 = v10;
        v13 = v46;
        v35 = __OFADD__(v3++, 1);
        if (v35)
        {
          goto LABEL_51;
        }
      }
    }

    v35 = __OFADD__(v24, 1);
    v14 = v24 + 1;
    if (v35)
    {
      goto LABEL_50;
    }
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v15 = *(v10 + 8 * v14 + 32);
    goto LABEL_16;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1002068D0()
{

  return swift_deallocObject();
}

uint64_t sub_100206938()
{

  return swift_deallocObject();
}

uint64_t sub_100206A10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

unint64_t sub_100206BE0()
{
  result = qword_100AD8798;
  if (!qword_100AD8798)
  {
    sub_1000F2A18(&qword_100ADC660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8798);
  }

  return result;
}

uint64_t sub_100206C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100206D58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

void sub_100206E90(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v72 = a1;
  v64 = a2;
  v2 = sub_1000F24EC(&qword_100AD8858);
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v71 = (&v60 - v3);
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v75 = &v60 - v5;
  v74 = type metadata accessor for URL();
  v63 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for JournalEntryAssetMO();
  v65 = static JournalEntryAssetMO.fetchRequest()();
  v67 = sub_1000321B0();
  sub_1000F24EC(&unk_100AD5B10);
  v11 = swift_allocObject();
  v66 = xmmword_100940050;
  *(v11 + 16) = xmmword_100940050;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_100031B20();
  *(v11 + 64) = v12;
  *(v11 + 32) = 0x7079547465737361;
  *(v11 + 40) = 0xE900000000000065;
  (*(v8 + 104))(v10, enum case for AssetType.audio(_:), v7);
  v13 = AssetType.rawValue.getter();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v12;
  *(v11 + 72) = v13;
  *(v11 + 80) = v15;
  v16 = v67;
  v17 = NSPredicate.init(format:_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v66;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v12;
  strcpy((v18 + 32), "isBeingEdited");
  *(v18 + 46) = -4864;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v12;
  v19 = v65;
  *(v18 + 72) = 0x6E65646469487369;
  *(v18 + 80) = 0xE800000000000000;
  v20 = v16;
  v21 = NSPredicate.init(format:_:)();
  sub_1000F24EC(&unk_100AD4780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100941D60;
  *(v22 + 32) = v17;
  *(v22 + 40) = v21;
  v23 = v17;
  v24 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v19 setPredicate:v26];
  v27 = v76;
  NSManagedObjectContext.fetch<A>(_:)();
  if (v27)
  {
    if (qword_100ACFAC8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000617C(v28, qword_100AD87A8);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v24;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to fetch audio that needs metadata calculations: %@", v32, 0xCu);
      sub_100004F84(v33, &unk_100AD4BB0);
    }

    else
    {
    }

    v45 = _swiftEmptyArrayStorage;
  }

  else
  {
    v35 = v63;
    v60 = 0;
    v61 = v24;
    v36 = qword_100ACFAC8;

    if (v36 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000617C(v38, qword_100AD87A8);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v37 >> 62;
    v43 = v71;
    if (!v41)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v42)
    {
      goto LABEL_38;
    }

    for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      *(v20 + 4) = i;

      _os_log_impl(&_mh_execute_header, v39, v40, "Fetched audio that needs metadata calculations: %ld", v20, 0xCu);

LABEL_15:
      v62 = v23;
      if (v42)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (!v23)
        {
LABEL_34:
          v45 = _swiftEmptyArrayStorage;
          goto LABEL_35;
        }
      }

      else
      {
        v23 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_34;
        }
      }

      if (v23 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_38:
      ;
    }

    v46 = 0;
    v76 = v37 & 0xC000000000000001;
    v72 = (v35 + 48);
    v67 = (v35 + 16);
    v68 = (v35 + 32);
    v45 = _swiftEmptyArrayStorage;
    *&v66 = v35 + 8;
    do
    {
      if (v76)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v37 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = sub_100039CE0();
      type metadata accessor for AudioAsset();
      if (swift_dynamicCastClass())
      {
        v50 = v37;
        v51 = v75;
        sub_100093C08(v75);
        v52 = v51;
        v53 = v74;
        if ((*v72)(v52, 1, v74) == 1)
        {

          sub_100004F84(v52, &unk_100AD6DD0);
        }

        else
        {
          v54 = v73;
          (*v68)();
          v55 = [v48 objectID];
          v56 = *(v70 + 48);
          *v43 = v55;
          (*v67)(v43 + v56, v54, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1003E50C0(0, v45[2] + 1, 1, v45);
          }

          v58 = v45[2];
          v57 = v45[3];
          if (v58 >= v57 >> 1)
          {
            v45 = sub_1003E50C0(v57 > 1, v58 + 1, 1, v45);
          }

          (*v66)(v73, v53);
          v45[2] = v58 + 1;
          v59 = v45 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v58;
          v43 = v71;
          sub_10020950C(v71, v59);
        }

        v37 = v50;
      }

      else
      {
      }

      ++v46;
    }

    while (v23 != v46);
LABEL_35:
  }

  *v64 = v45;
}

uint64_t sub_1002077F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_1002080B0;
  }

  else
  {

    v4 = sub_100207918;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100207918()
{
  sub_1000F24EC(&qword_100AD8860);
  v1 = static AVPartialAsyncProperty<A>.duration.getter();
  *(v0 + 184) = v1;
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_1002079E4;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 208, v1, 0, 0);
}

uint64_t sub_1002079E4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_100208560;
  }

  else
  {
    v2 = sub_100207B28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100207B28()
{
  v60 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 200);
  CMTime.seconds.getter();
  v6 = v5;
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v6;
  v7[5] = v1;
  NSManagedObjectContext.performAndWait<A>(_:)();
  v8 = *(v0 + 152);
  if (v4)
  {
    (*(*(v0 + 24) + 8))(*(v0 + 32), *(v0 + 16));

    if (qword_100ACFAC8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 144);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AD87A8);
    (*(v13 + 16))(v10, v11, v12);
    v15 = v9;
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 144);
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    if (v18)
    {
      v57 = *(v0 + 64);
      v24 = swift_slowAlloc();
      v54 = v17;
      v25 = v23;
      v26 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v24 = 138412802;
      *(v24 + 4) = v19;
      *v26 = v19;
      *(v24 + 12) = 2080;
      sub_100209458();
      v56 = v19;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v30 = *(v22 + 8);
      v30(v20, v25);
      v31 = sub_100008458(v27, v29, &v59);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v32;
      v26[1] = v32;
      _os_log_impl(&_mh_execute_header, v16, v54, "failed to save intensity and duration for audio asset %@ at %s: %@", v24, 0x20u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();

      sub_10000BA7C(v55);

      v30(v57, v25);
    }

    else
    {

      v39 = *(v22 + 8);
      v39(v20, v23);
      v39(v21, v23);
    }
  }

  else
  {
    v33 = *(v0 + 144);
    v58 = *(v0 + 64);
    v34 = *(v0 + 40);
    v35 = *(v0 + 48);
    v36 = *(v0 + 24);
    v37 = *(v0 + 32);
    v38 = *(v0 + 16);

    (*(v36 + 8))(v37, v38);
    (*(v35 + 8))(v58, v34);
  }

  v40 = *(v0 + 136) + 1;
  if (v40 == *(v0 + 120))
  {

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    *(v0 + 136) = v40;
    v43 = *(v0 + 232);
    v44 = *(v0 + 88);
    v45 = *(v0 + 64);
    v46 = *(v0 + 40);
    v47 = *(v0 + 48);
    sub_1002093E8(*(v0 + 104) + ((*(v0 + 236) + 32) & ~*(v0 + 236)) + *(v0 + 128) * v40, v44);
    *(v0 + 144) = *v44;
    (*(v47 + 32))(v45, &v44[v43], v46);
    AudioIntensityProcessor.init()();
    v48 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    v52 = [v48 initWithURL:v50 options:0];
    *(v0 + 152) = v52;

    v53 = swift_task_alloc();
    *(v0 + 160) = v53;
    *v53 = v0;
    v53[1] = sub_1002077F8;

    return AudioIntensityProcessor.readAudioIntensityLevels(from:)(0, 0, v52);
  }
}

uint64_t sub_1002080B0()
{
  v48 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  (*(v2 + 8))(v1, v3);
  if (qword_100ACFAC8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 144);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = type metadata accessor for Logger();
  sub_10000617C(v9, qword_100AD87A8);
  (*(v8 + 16))(v6, v5, v7);
  v10 = v4;
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 144);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  if (v13)
  {
    v43 = v12;
    v19 = *(v0 + 40);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v20 = 138412802;
    *(v20 + 4) = v14;
    *v21 = v14;
    *(v20 + 12) = 2080;
    sub_100209458();
    v46 = v16;
    v45 = v14;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v17 + 8);
    v25(v15, v19);
    v26 = sub_100008458(v22, v24, &v47);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v27;
    v21[1] = v27;
    _os_log_impl(&_mh_execute_header, v11, v43, "failed to save intensity and duration for audio asset %@ at %s: %@", v20, 0x20u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();

    sub_10000BA7C(v44);

    v25(v46, v19);
  }

  else
  {

    v28 = *(v17 + 8);
    v28(v15, v18);
    v28(v16, v18);
  }

  v29 = *(v0 + 136) + 1;
  if (v29 == *(v0 + 120))
  {

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    *(v0 + 136) = v29;
    v32 = *(v0 + 232);
    v33 = *(v0 + 88);
    v34 = *(v0 + 64);
    v35 = *(v0 + 40);
    v36 = *(v0 + 48);
    sub_1002093E8(*(v0 + 104) + ((*(v0 + 236) + 32) & ~*(v0 + 236)) + *(v0 + 128) * v29, v33);
    *(v0 + 144) = *v33;
    (*(v36 + 32))(v34, &v33[v32], v35);
    AudioIntensityProcessor.init()();
    v37 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    v41 = [v37 initWithURL:v39 options:0];
    *(v0 + 152) = v41;

    v42 = swift_task_alloc();
    *(v0 + 160) = v42;
    *v42 = v0;
    v42[1] = sub_1002077F8;

    return AudioIntensityProcessor.readAudioIntensityLevels(from:)(0, 0, v41);
  }
}

uint64_t sub_100208560()
{
  v48 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  (*(v2 + 8))(v1, v3);
  if (qword_100ACFAC8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 144);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = type metadata accessor for Logger();
  sub_10000617C(v9, qword_100AD87A8);
  (*(v8 + 16))(v6, v5, v7);
  v10 = v4;
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 144);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  if (v13)
  {
    v43 = v12;
    v19 = *(v0 + 40);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v20 = 138412802;
    *(v20 + 4) = v14;
    *v21 = v14;
    *(v20 + 12) = 2080;
    sub_100209458();
    v46 = v16;
    v45 = v14;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v17 + 8);
    v25(v15, v19);
    v26 = sub_100008458(v22, v24, &v47);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v27;
    v21[1] = v27;
    _os_log_impl(&_mh_execute_header, v11, v43, "failed to save intensity and duration for audio asset %@ at %s: %@", v20, 0x20u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();

    sub_10000BA7C(v44);

    v25(v46, v19);
  }

  else
  {

    v28 = *(v17 + 8);
    v28(v15, v18);
    v28(v16, v18);
  }

  v29 = *(v0 + 136) + 1;
  if (v29 == *(v0 + 120))
  {

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    *(v0 + 136) = v29;
    v32 = *(v0 + 232);
    v33 = *(v0 + 88);
    v34 = *(v0 + 64);
    v35 = *(v0 + 40);
    v36 = *(v0 + 48);
    sub_1002093E8(*(v0 + 104) + ((*(v0 + 236) + 32) & ~*(v0 + 236)) + *(v0 + 128) * v29, v33);
    *(v0 + 144) = *v33;
    (*(v36 + 32))(v34, &v33[v32], v35);
    AudioIntensityProcessor.init()();
    v37 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    v41 = [v37 initWithURL:v39 options:0];
    *(v0 + 152) = v41;

    v42 = swift_task_alloc();
    *(v0 + 160) = v42;
    *v42 = v0;
    v42[1] = sub_1002077F8;

    return AudioIntensityProcessor.readAudioIntensityLevels(from:)(0, 0, v41);
  }
}

void sub_100208A10(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = type metadata accessor for ProtectedData.ProtectedDataState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v46 = 0;
  v16 = [a1 existingObjectWithID:a2 error:&v46];
  v17 = v46;
  if (!v16)
  {
    v36 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v18 = v16;
  v45 = a3;
  type metadata accessor for JournalEntryAssetMO();
  v19 = swift_dynamicCastClass();
  v20 = v17;
  if (v19)
  {
    v44 = v4;
    isa = sub_100039CE0();
    type metadata accessor for AudioAsset();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v43 = isa;
      sub_10021A71C(*&a4, 0, v45, 0);
      sub_10077998C();
      v24 = [v19 setIsBeingEdited:0];
      *(v23 + OBJC_IVAR____TtC7Journal5Asset_isHidden) = 0;
      v25 = *(v23 + OBJC_IVAR____TtC7Journal5Asset_context);
      if (v25)
      {
        v42 = &v40;
        __chkstk_darwin(v24);
        *(&v40 - 2) = v23;
        v41 = v43;
        v26 = v25;
        sub_1000F24EC(&qword_100AD38E0);
        v27 = v44;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v44 = v27;
      }

      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      type metadata accessor for ProtectedData();
      static ProtectedData.shared.getter();
      ProtectedData.state.getter();

      (*(v10 + 104))(v13, enum case for ProtectedData.ProtectedDataState.available(_:), v9);
      v28 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
      v29 = *(v10 + 8);
      v29(v13, v9);
      v29(v15, v9);
      v30 = v45;
      if (v28)
      {
        v46 = 0;
        if (![a1 save:&v46])
        {
          v39 = v46;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_22;
        }

        v31 = v46;
      }

      if (qword_100ACFAC8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000617C(v32, qword_100AD87A8);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134218240;
        *(v35 + 4) = a4;
        *(v35 + 12) = 2048;
        *(v35 + 14) = *(v30 + 16);

        _os_log_impl(&_mh_execute_header, v33, v34, "Updated metadata for audio asset with duration: %f and intensity count: %ld", v35, 0x16u);
      }

      else
      {
      }

      v37 = [objc_opt_self() defaultCenter];
      if (qword_100ACFFA8 != -1)
      {
        swift_once();
      }

      v38 = qword_100B2FB98;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v37 postNotificationName:v38 object:isa];
    }

    else
    {
      v37 = v18;
    }

    v18 = isa;
  }

LABEL_22:
}

uint64_t sub_100208F9C(uint64_t a1)
{
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[6] = v4;
  v1[7] = v6;

  return _swift_task_switch(sub_100209088, v4, v6);
}

uint64_t sub_100209088()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[8] = v4;
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4;
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_1000F24EC(&qword_100AD8868);
  *v6 = v0;
  v6[1] = sub_100209220;
  v8 = v0[5];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v8, sub_1002094F0, v5, v7);
}

uint64_t sub_100209220()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v4 = v2[6];
    v5 = v2[7];

    return _swift_task_switch(sub_100209374, v4, v5);
  }
}

uint64_t sub_100209374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002093E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD8858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100209458()
{
  result = qword_100ADEFD0;
  if (!qword_100ADEFD0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEFD0);
  }

  return result;
}

uint64_t sub_10020950C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD8858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020957C(uint64_t a1)
{
  sub_1000082B4(a1, &v24, &qword_100AD13D0);
  v3 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v4 = sub_10000CA14(&v24, *(&v25 + 1));
    v5 = *(v3 - 8);
    __chkstk_darwin(v4);
    v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v3);
    sub_10000BA7C(&v24);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for GalleryCollectionViewLayout.Attributes();
  v20.receiver = v1;
  v20.super_class = v9;
  v10 = objc_msgSendSuper2(&v20, "isEqual:", v8);
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_1000082B4(a1, &v24, &qword_100AD13D0);
    if (*(&v25 + 1))
    {
      if (swift_dynamicCast())
      {
        v11 = v21;
        if (*&v1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition] == *(v21 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition) && (v12 = *&v1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 16], v21 = *&v1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform], v22 = v12, v23 = *&v1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 32], v24 = *&v11[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform], v25 = *&v11[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 16], v26 = *&v11[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 32], (static CGAffineTransform.== infix(_:_:)() & 1) != 0))
        {
          v13 = *&v1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins];
          v18 = *&v1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 16];
          v19 = v13;
          v14 = *&v11[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins];
          v16 = *&v11[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 16];
          v17 = v14;

          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, v17), vceqq_f64(v18, v16)))))
          {
            return 1;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_100004F84(&v24, &qword_100AD13D0);
    }
  }

  return 0;
}

__n128 sub_100209890@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GalleryCollectionViewLayout.Attributes();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  *(v12 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition) = *&v2[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition];
  v6 = (v12 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform);
  v7 = *&v2[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 16];
  v8 = *&v2[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 32];
  *v6 = *&v2[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform];
  v6[1] = v7;
  v6[2] = v8;
  v9 = v12 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins;
  result = *&v2[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins];
  v11 = *&v2[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 16];
  *v9 = result;
  *(v9 + 16) = v11;
  a2[3] = ObjectType;
  *a2 = v12;
  return result;
}

uint64_t sub_100209A44()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for GalleryCollectionViewLayout.Attributes();
  v1 = objc_msgSendSuper2(&v9, "debugDescription");
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003C1CF8(1);

  v2 = static String._fromSubstring(_:)();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  v5._object = 0x80000001008E60E0;
  v5._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v10;
}

char *sub_100209C3C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state;
  type metadata accessor for GalleryCollectionViewLayout.SectionProviderState();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 88) = 0;
  *(v6 + 72) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 96) = xmmword_1009481C0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 1;
  *(v6 + 128) = &_swiftEmptyDictionarySingleton;
  *&v2[v5] = v6;
  v2[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset] = 0;
  aBlock[4] = sub_10020D72C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029CCC;
  aBlock[3] = &unk_100A61598;
  v7 = _Block_copy(aBlock);

  v13.receiver = v2;
  v13.super_class = type metadata accessor for GalleryCollectionViewLayout();
  v8 = objc_msgSendSuper2(&v13, "initWithSectionProvider:", v7);
  _Block_release(v7);
  v9 = *&v8[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state];
  v10 = *(v9 + 16);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11 = v8;

  sub_100004DF8(v10);

  swift_unknownObjectWeakAssign();

  return v11;
}

uint64_t sub_100209E78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v6, &unk_100ADFB90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(a1, &unk_100ADFB90);
    return sub_100004F84(v6, &unk_100ADFB90);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (!IndexPath.section.getter())
    {
      v12 = *&v2[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state];
      *(v12 + 112) = IndexPath.item.getter();
      *(v12 + 120) = 0;
      if ((*(v12 + 121) & 1) != 0 || (v13 = [v2 collectionView]) == 0)
      {
        v14 = 1;
      }

      else
      {

        v14 = 0;
      }

      *(v12 + 121) = v14;
      v15 = [v2 collectionView];
      if (v15)
      {
        v16 = v15;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v16 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }
    }

    sub_100004F84(a1, &unk_100ADFB90);
    return (*(v8 + 8))(v10, v7);
  }
}

size_t sub_10020A0E4()
{
  v52 = type metadata accessor for IndexPath();
  v1 = *(v52 - 8);
  v2 = __chkstk_darwin(v52);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v49 = &v46 - v5;
  v6 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
  v7 = [v0 collectionView];
  if (!v7)
  {
    return v6;
  }

  isa = v7;
  [(objc_class *)v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = type metadata accessor for GalleryCollectionViewLayout();
  v54.receiver = v0;
  v54.super_class = v17;
  v18 = objc_msgSendSuper2(&v54, "layoutAttributesForElementsInRect:", v10, v12, v14, v16);
  if (!v18)
  {
LABEL_38:

    return v6;
  }

  v19 = v18;
  v51 = v4;
  v46 = isa;
  v47 = v6;
  sub_1000065A8(0, &qword_100AD8A70);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v20;
  v53 = _swiftEmptyArrayStorage;
  v48 = v1;
  if (v20 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = v49;
    if (!i)
    {
      break;
    }

    v24 = 0;
    v25 = v21 & 0xC000000000000001;
    v26 = v21 & 0xFFFFFFFFFFFFFF8;
    v50 = (v48 + 8);
    while (1)
    {
      if (v25)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v26 + 16))
        {
          goto LABEL_34;
        }

        v27 = *(v21 + 8 * v24 + 32);
      }

      v28 = v27;
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ([v27 representedElementCategory])
      {
      }

      else
      {
        v30 = i;
        v31 = v21;
        v32 = [v28 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = IndexPath.section.getter();
        (*v50)(v23, v52);
        if (v33)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v23 = v49;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v21 = v31;
        i = v30;
      }

      ++v24;
      if (v29 == i)
      {
        v34 = v53;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_21:

  v35 = v48;
  if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
  {
    v36 = *(v34 + 16);
    if (v36)
    {
      goto LABEL_24;
    }

LABEL_37:

    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = v47;
    [v47 invalidateItemsAtIndexPaths:isa];

    goto LABEL_38;
  }

  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (!v36)
  {
    goto LABEL_37;
  }

LABEL_24:
  v53 = _swiftEmptyArrayStorage;
  result = sub_100199B50(0, v36 & ~(v36 >> 63), 0);
  if ((v36 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v53;
    v40 = v51;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v34 + 8 * v38 + 32);
      }

      v42 = v41;
      v43 = [v42 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = v39;
      v45 = v39[2];
      v44 = v39[3];
      if (v45 >= v44 >> 1)
      {
        sub_100199B50(v44 > 1, v45 + 1, 1);
        v39 = v53;
      }

      ++v38;
      v39[2] = v45 + 1;
      (*(v35 + 32))(v39 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v45, v40, v52);
    }

    while (v36 != v38);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void sub_10020A59C()
{
  v1 = sub_1000F24EC(&unk_100ADFB90);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - v6;
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = type metadata accessor for GalleryCollectionViewLayout();
  v36.receiver = v0;
  v36.super_class = v17;
  objc_msgSendSuper2(&v36, "prepareLayout");
  v18 = *&v0[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state];
  if (*(v18 + 121) == 1)
  {
    v19 = [v0 collectionView];
    if (v19)
    {
      v20 = v19;
      if ([v20 isTracking] & 1) != 0 || (objc_msgSend(v20, "isDecelerating"))
      {

LABEL_6:
        return;
      }

      v35 = v11;
      v21 = [v20 isScrollAnimating];

      if (v21)
      {
        goto LABEL_6;
      }

      if (*(v18 + 120))
      {
        v22 = 1;
      }

      else
      {
        v23 = *(v18 + 112);
        sub_1000F24EC(&unk_100AD8A90);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_100940050;
        *(v24 + 32) = 0;
        *(v24 + 40) = v23;
        IndexPath.init(arrayLiteral:)();
        v22 = 0;
      }

      v25 = v35;
      v32 = *(v35 + 56);
      v33 = v35 + 56;
      v32(v7, v22, 1, v10);
      sub_1000082B4(v7, v4, &unk_100ADFB90);
      v27 = *(v25 + 48);
      v26 = v25 + 48;
      v34 = v27;
      if (v27(v4, 1, v10) == 1)
      {
        v28 = v0;
        sub_100004F84(v7, &unk_100ADFB90);
        v32(v9, 1, 1, v10);
        v29 = v35;
      }

      else
      {
        v33 = v26;
        v30 = v35;
        (*(v35 + 32))(v14, v4, v10);
        sub_10020A9D8(v0, v14, v9);
        (*(v30 + 8))(v14, v10);
        sub_100004F84(v7, &unk_100ADFB90);
        v29 = v30;
      }

      if (v34(v9, 1, v10) == 1)
      {

        sub_100004F84(v9, &unk_100ADFB90);
      }

      else
      {
        (*(v29 + 32))(v16, v9, v10);
        *(v18 + 121) = 0;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v20 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];

        (*(v29 + 8))(v16, v10);
      }
    }
  }
}

void sub_10020A9D8(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v5 = [a1 collectionView];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = IndexPath.section.getter();
  v8 = [v6 numberOfSections];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 & 0x8000000000000000) != 0 || v7 >= v8)
  {

LABEL_10:
    v16 = type metadata accessor for IndexPath();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
    goto LABEL_11;
  }

  v9 = IndexPath.item.getter();
  v10 = [v6 numberOfItemsInSection:IndexPath.section.getter()];

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (v9 < 0 || v9 >= v10)
  {
    goto LABEL_10;
  }

  v11 = type metadata accessor for IndexPath();
  v17 = *(v11 - 8);
  (*(v17 + 16))(a3, a2, v11);
  v12 = *(v17 + 56);
  v13 = a3;
  v14 = 0;
  v15 = v11;
LABEL_11:

  v12(v13, v14, 1, v15);
}

void sub_10020AB78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 collectionView];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = IndexPath.section.getter();
  v9 = [v7 numberOfSections];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 & 0x8000000000000000) != 0 || v8 >= v9)
  {

LABEL_10:
    v17 = type metadata accessor for IndexPath();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
    goto LABEL_11;
  }

  v10 = IndexPath.item.getter();
  v11 = [v7 numberOfItemsInSection:IndexPath.section.getter()];

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (v10 < 0 || v10 >= v11)
  {
    goto LABEL_10;
  }

  v12 = type metadata accessor for IndexPath();
  v18 = *(v12 - 8);
  (*(v18 + 16))(a2, a1, v12);
  v13 = *(v18 + 56);
  v14 = a2;
  v15 = 0;
  v16 = v12;
LABEL_11:

  v13(v14, v15, 1, v16);
}

uint64_t sub_10020AE40(double a1, double a2, double a3, double a4)
{
  v17.receiver = v4;
  v17.super_class = type metadata accessor for GalleryCollectionViewLayout();
  v9 = objc_msgSendSuper2(&v17, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v9)
  {
    return v9;
  }

  sub_1000065A8(0, &qword_100AD8A70);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100584AF4(v10);

  if (!v9)
  {
    return v9;
  }

  if (!(v9 >> 62))
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_14:

    if (v9 >> 62)
    {
      v16 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      return v16;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    return v9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v12 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * i + 32);
      }

      v15 = v14;
      if (![v14 representedElementCategory])
      {
        sub_10020B00C(v15);
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

CGAffineTransform *sub_10020B00C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state);
  v9 = [a1 indexPath];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v10 = *(v8 + 128);
  if (!*(v10 + 16))
  {
    goto LABEL_6;
  }

  v11 = sub_1003622D0(v7);
  if ((v12 & 1) == 0)
  {

LABEL_6:
    (*(v5 + 8))(v7, v4);
    v16 = 0.0;
    goto LABEL_7;
  }

  v13 = *(v10 + 56) + 24 * v11;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  (*(v5 + 8))(v7, v4);

  if (v15 == 1)
  {
LABEL_7:
    [a1 size];
    v14 = v17;
  }

  *&a1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition] = v16;
  v18 = &a1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins];
  v19 = *(v8 + 56);
  *v18 = *(v8 + 40);
  *(v18 + 1) = v19;
  if (*(v2 + OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset) == 1)
  {
    result = CGAffineTransformMakeTranslation(&t1, v16 * (*(v8 + 88) + *(v8 + 72)), 0.0);
    v21 = *&t1.a;
    v22 = *&t1.c;
    v23 = *&t1.tx;
  }

  else
  {
    [a1 size];
    v25 = (v24 - v14) * -0.5 * v16;
    v26 = 1.0 - *(v8 + 96);
    v27 = 1.0 - fabs(v16) * v26;
    [a1 bounds];
    v28 = -(v16 * (v26 * CGRectGetMidX(v48)));
    CGAffineTransformMakeTranslation(&t1, v25, 0.0);
    v29 = *&t1.a;
    v30 = *&t1.c;
    v31 = *&t1.tx;
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = 0.0;
    t1.ty = 0.0;
    *&t2.a = v29;
    *&t2.c = v30;
    *&t2.tx = v31;
    CGAffineTransformConcat(&v45, &t1, &t2);
    tx = v45.tx;
    ty = v45.ty;
    v44 = *&v45.a;
    v43 = *&v45.c;
    CGAffineTransformMakeScale(&t1, v27, v27);
    v34 = *&t1.a;
    v35 = *&t1.c;
    v36 = *&t1.tx;
    *&t1.a = v44;
    *&t1.c = v43;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v34;
    *&t2.c = v35;
    *&t2.tx = v36;
    CGAffineTransformConcat(&v45, &t1, &t2);
    v37 = v45.tx;
    v38 = v45.ty;
    v44 = *&v45.a;
    v43 = *&v45.c;
    CGAffineTransformMakeTranslation(&t1, v28, 0.0);
    v39 = *&t1.a;
    v40 = *&t1.c;
    v41 = *&t1.tx;
    *&t1.a = v44;
    *&t1.c = v43;
    t1.tx = v37;
    t1.ty = v38;
    *&t2.a = v39;
    *&t2.c = v40;
    *&t2.tx = v41;
    result = CGAffineTransformConcat(&v45, &t1, &t2);
    v21 = *&v45.a;
    v22 = *&v45.c;
    v23 = *&v45.tx;
  }

  v42 = &a1[OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform];
  *v42 = v21;
  *(v42 + 1) = v22;
  *(v42 + 2) = v23;
  return result;
}

uint64_t sub_10020B5D0(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - v11;
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  if ([a2 representedElementCategory] || (v15 = objc_msgSend(a2, "indexPath"), static IndexPath._unconditionallyBridgeFromObjectiveC(_:)(), v15, v16 = IndexPath.section.getter(), v17 = *(v7 + 8), v17(v14, v6), v16))
  {
    v18 = type metadata accessor for GalleryCollectionViewLayout();
    v49.receiver = v3;
    v49.super_class = v18;
    return objc_msgSendSuper2(&v49, "shouldInvalidateLayoutForPreferredLayoutAttributes:withOriginalAttributes:", a1, a2);
  }

  v45 = v17;
  [a1 size];
  v21 = v20;
  [a2 size];
  if (v21 == v22)
  {
    return 0;
  }

  [a1 size];
  v24 = *&v3[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state];
  if (*(v24 + 104) >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = *(v24 + 104);
  }

  v26 = [a2 indexPath];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v27 = *(v24 + 128);
  if (!*(v27 + 16))
  {
    goto LABEL_15;
  }

  v28 = sub_1003622D0(v12);
  if ((v29 & 1) == 0)
  {

LABEL_15:
    v45(v12, v6);
    goto LABEL_16;
  }

  v30 = *(v27 + 56) + 24 * v28;
  v31 = *v30;
  v32 = *(v30 + 8);
  v45(v12, v6);

  if ((v32 & 1) == 0 && v25 == v31)
  {
    return 0;
  }

LABEL_16:
  v33 = [a2 indexPath];
  v34 = v46;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v24 + 128);
  v36 = v48;
  *(v24 + 128) = 0x8000000000000000;
  v38 = sub_1003622D0(v34);
  v39 = v36[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v12) = v37;
  if (v36[3] >= v41)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v24 + 128) = v36;
      if (v37)
      {
LABEL_24:
        v44 = v36[7] + 24 * v38;
        *v44 = v25;
        *(v44 + 8) = 0;
        v45(v46, v6);
        swift_endAccess();
        return 1;
      }

LABEL_23:
      v47 = 1;
      (*(v7 + 16))(v14, v46, v6);
      sub_100203508(v38, v14, 0, v47, v36, 0.0);
      goto LABEL_24;
    }

LABEL_26:
    sub_100822B24();
    v36 = v48;
    *(v24 + 128) = v48;
    if (v12)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  sub_10081E73C(v41, isUniquelyReferenced_nonNull_native);
  v36 = v48;
  v42 = sub_1003622D0(v46);
  if ((v12 & 1) == (v43 & 1))
  {
    v38 = v42;
    *(v24 + 128) = v36;
    if (v12)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10020B9F4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
}

id sub_10020BA6C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&unk_100ADFB90);
  v66 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v57 - v10;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v68 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v57 - v16;
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  if ([a2 representedElementCategory] || (v20 = objc_msgSend(a2, "indexPath"), static IndexPath._unconditionallyBridgeFromObjectiveC(_:)(), v20, v21 = IndexPath.section.getter(), v63 = *(v12 + 8), v64 = v12 + 8, v63(v19, v11), v21))
  {
    v22 = type metadata accessor for GalleryCollectionViewLayout();
    v70.receiver = v3;
    v70.super_class = v22;
    v23 = objc_msgSendSuper2(&v70, "invalidationContextForPreferredLayoutAttributes:withOriginalAttributes:", a1, a2);

    return v23;
  }

  v65 = v12;
  v62 = v3;
  v58 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
  sub_1000F24EC(&unk_100AD8AA0);
  v25 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v67 = *(v66 + 72);
  v61 = v25;
  v66 = swift_allocObject();
  v60 = sub_1000F24EC(&unk_100AD8A90);
  v26 = swift_allocObject();
  v59 = xmmword_100940050;
  *(v26 + 16) = xmmword_100940050;
  v27 = [a2 indexPath];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = IndexPath.section.getter();
  v29 = v63;
  v63(v19, v11);
  *(v26 + 32) = v28;
  v30 = [a2 indexPath];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = IndexPath.item.getter();
  result = v29(v17, v11);
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v57 = v6;
  v32 = v66 + v61;
  *(v26 + 40) = v31 - 1;
  IndexPath.init(arrayLiteral:)();
  sub_10020AB78(v19, v32);
  v63(v19, v11);
  v33 = [a2 indexPath];
  v34 = v67;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v65;
  v36 = *(v65 + 56);
  v61 = v32;
  v36(v32 + v34, 0, 1, v11);
  v37 = swift_allocObject();
  *(v37 + 16) = v59;
  v38 = [a2 indexPath];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = IndexPath.section.getter();
  v40 = v63;
  v63(v19, v11);
  *(v37 + 32) = v39;
  v41 = [a2 indexPath];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = IndexPath.item.getter();
  result = v40(v17, v11);
  if (__OFADD__(v42, 1))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v43 = v61;
  v44 = v61 + 2 * v67;
  *(v37 + 40) = v42 + 1;
  IndexPath.init(arrayLiteral:)();
  sub_10020AB78(v19, v44);
  v63(v19, v11);
  v45 = (v35 + 48);
  v46 = (v35 + 32);
  v47 = _swiftEmptyArrayStorage;
  v48 = 3;
  v49 = v11;
  v64 = v11;
  do
  {
    v50 = v69;
    sub_1000082B4(v43, v69, &unk_100ADFB90);
    sub_10020D78C(v50, v9);
    if ((*v45)(v9, 1, v49) == 1)
    {
      sub_100004F84(v9, &unk_100ADFB90);
    }

    else
    {
      v51 = *v46;
      (*v46)(v68, v9, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1003E4B58(0, v47[2] + 1, 1, v47);
      }

      v53 = v47[2];
      v52 = v47[3];
      if (v53 >= v52 >> 1)
      {
        v47 = sub_1003E4B58(v52 > 1, v53 + 1, 1, v47);
      }

      v47[2] = v53 + 1;
      v54 = v47 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v53;
      v49 = v64;
      v51(v54, v68, v64);
    }

    v43 += v67;
    --v48;
  }

  while (v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v56 = v58;
  [v58 invalidateItemsAtIndexPaths:isa];

  return v56;
}

id sub_10020C314(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10020C3A4(uint64_t a1, id a2)
{
  v3 = v2;
  [objc_msgSend(a2 "container")];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  if (v8)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_10020D740;
  }

  else
  {
    v11 = sub_10020C84C;
  }

  v44 = a2;
  sub_100021E80(v8);
  v11(&aBlock, &v44);

  v12 = v40;
  v45 = aBlock;
  v46 = v40;
  v14 = v41;
  v13 = v42;
  v15 = v43;
  v16 = v7 - v41 - (*&v15 + *&v15);
  if (v16 <= 0.0)
  {
    v16 = 0.0;
  }

  if (v7 - v41 - (v42 + v42) > v16)
  {
    v17 = v7 - v41 - (v42 + v42);
  }

  else
  {
    v17 = v16;
  }

  *(v3 + 40) = aBlock;
  *(v3 + 56) = v12;
  *(v3 + 72) = v14;
  *(v3 + 80) = v13;
  *(v3 + 88) = v15;
  *(v3 + 104) = v17;
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 fractionalHeightDimension:1.0];
  v21 = objc_opt_self();
  v22 = [v21 sizeWithWidthDimension:v19 heightDimension:v20];

  v23 = [objc_opt_self() itemWithLayoutSize:v22];
  v24 = [v18 fractionalWidthDimension:v17 / v7];
  v25 = [v18 fractionalHeightDimension:1.0];
  v26 = [v21 sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100941D50;
  *(v28 + 32) = v23;
  sub_1000065A8(0, &unk_100AD8A80);
  v29 = v23;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v31 = [v27 verticalGroupWithLayoutSize:v26 subitems:isa];

  v32 = [objc_opt_self() sectionWithGroup:v31];
  [v32 setInterGroupSpacing:v14];
  [v32 setOrthogonalScrollingBehavior:5];
  v33 = [v32 orthogonalScrollingProperties];
  [v33 setBounce:1];

  v34 = [v32 orthogonalScrollingProperties];
  [v34 setDecelerationRate:UICollectionLayoutSectionOrthogonalScrollingDecelerationRateFast];

  v35 = swift_allocObject();
  swift_weakInit();
  *&v36 = COERCE_DOUBLE(swift_allocObject());
  *(v36 + 16) = v35;
  *(v36 + 24) = v7;
  *(v36 + 32) = a1;
  v41 = COERCE_DOUBLE(sub_10020D730);
  v42 = *&v36;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_1004D7B54;
  *(&v40 + 1) = &unk_100A61610;
  v37 = _Block_copy(&aBlock);

  [v32 setVisibleItemsInvalidationHandler:v37];
  _Block_release(v37);

  return v32;
}

double sub_10020C84C@<D0>(_OWORD *a1@<X8>)
{
  v2 = swift_unknownObjectRetain();
  sub_100886C0C(v2, v6);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_10020C894(unint64_t a1, void *a2, double a3, double a4, double a5, uint64_t a6, void (**a7)(uint64_t, unint64_t))
{
  v103 = a1;
  v11 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v11 - 8);
  v13 = &Strong - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v102 = &Strong - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &Strong - v19;
  __chkstk_darwin(v18);
  v97 = &Strong - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v23 = result;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v96 = v13;
  [objc_msgSend(a2 "container")];
  v25 = v24;
  swift_unknownObjectRelease();
  v26 = v25 - a5 + a3;
  v27 = v26 + a5;
  v28 = v26 + v26 + a5;
  v29 = 0.5;
  v98 = v15;
  v100 = v103 >> 62;
  v99 = a7;
  if (v103 >> 62)
  {
    goto LABEL_110;
  }

  v30 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v28 = v28 * v29;
  v101 = v14;
  if (!v30)
  {
    goto LABEL_35;
  }

  v31 = 0;
  v32 = v103 & 0xC000000000000001;
  v33 = v103 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v32)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
LABEL_15:
        __break(1u);
      }
    }

    else
    {
      if (v31 >= *(v33 + 16))
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        v30 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_5;
      }

      v34 = *(v103 + 8 * v31 + 32);
      swift_unknownObjectRetain();
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_15;
      }
    }

    if (![v34 representedElementCategory])
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v31;
    if (v35 == v30)
    {
      goto LABEL_35;
    }
  }

  if (v35 == v30)
  {
    goto LABEL_33;
  }

LABEL_18:
  v36 = v34;
  v14 = v35;
  if (v32)
  {
LABEL_19:
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v35 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_106;
    }

    goto LABEL_25;
  }

  while (1)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_108;
    }

    if (v14 >= *(v33 + 16))
    {
      goto LABEL_109;
    }

    v34 = *(v103 + 8 * v14 + 32);
    swift_unknownObjectRetain();
    v35 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_106;
    }

LABEL_25:
    if (![v34 representedElementCategory])
    {
      [v34 center];
      v29 = vabdd_f64(v37, v28);
      [v36 center];
      if (v29 < vabdd_f64(v38, v28))
      {
        swift_unknownObjectRelease();
        v14 = v101;
        if (v35 == v30)
        {
          goto LABEL_33;
        }

        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    if (v35 == v30)
    {
      break;
    }

    ++v14;
    if (v32)
    {
      goto LABEL_19;
    }
  }

  v34 = v36;
  v14 = v101;
LABEL_33:
  if (v34)
  {
    v39 = [swift_unknownObjectRetain() indexPath];
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    goto LABEL_40;
  }

LABEL_35:
  if (v27 < 0.0)
  {
LABEL_38:
    IndexPath.init(item:section:)();
  }

  else
  {
    v40 = v96;
    sub_10020D3AC(v99, v96);
    v41 = v98;
    if ((*(v98 + 48))(v40, 1, v14) == 1)
    {
      sub_100004F84(v40, &unk_100ADFB90);
      goto LABEL_38;
    }

    (*(v41 + 32))(v20, v40, v14);
  }

LABEL_40:
  v42 = v97;
  (*(v98 + 32))(v97, v20, v14);
  swift_beginAccess();
  v43 = *(v23 + 128);
  if (!*(v43 + 16))
  {
    goto LABEL_45;
  }

  v44 = sub_1003622D0(v42);
  if ((v45 & 1) == 0)
  {

    goto LABEL_45;
  }

  v46 = *(v43 + 56) + 24 * v44;
  v47 = *v46;
  v48 = *(v46 + 8);

  if (v48)
  {
LABEL_45:
    v47 = *(v23 + 104);
  }

  if (v100)
  {
    v49 = v103;
    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (!v50)
    {
      goto LABEL_82;
    }

LABEL_48:
    v51 = 0;
    v52 = 0;
    v14 = v49 & 0xC000000000000001;
    v100 = v49 & 0xFFFFFFFFFFFFFF8;
    v27 = 0.5;
    v29 = v47 * 0.5;
    v96 = (v98 + 16);
    v99 = (v98 + 8);
    while (1)
    {
      if (v14)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (v51 >= *(v100 + 16))
        {
          goto LABEL_101;
        }

        v53 = *(v49 + 8 * v51 + 32);
        swift_unknownObjectRetain();
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }
      }

      if (![v53 representedElementCategory])
      {
        break;
      }

LABEL_50:
      swift_unknownObjectRelease();
      ++v51;
      if (v54 == v50)
      {
        goto LABEL_83;
      }
    }

    [v53 bounds];
    v55 = *(v23 + 72) + v29 + CGRectGetWidth(v105) * 0.5;
    [v53 center];
    v57 = (v56 - v28) / v55;
    v58 = v57 > -1.0;
    if (v57 <= -1.0)
    {
      v59 = -1.0;
    }

    else
    {
      v59 = v57;
    }

    v60 = v59 <= 1.0;
    if (v59 > 1.0)
    {
      v61 = 1.0;
    }

    else
    {
      v61 = v59;
    }

    v62 = 1.0 - fabs(v57);
    v63 = v62 * 10000.0;
    v64 = v58 && v60;
    if (v64)
    {
      v65 = v62 * 10000.0;
    }

    else
    {
      v65 = 0.0;
    }

    if (v64 && (*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_102;
    }

    if (v65 <= -9.22337204e18)
    {
      goto LABEL_103;
    }

    if (v65 >= 9.22337204e18)
    {
      goto LABEL_104;
    }

    [v53 setZIndex:v65];
    v66 = [v53 indexPath];
    v20 = v102;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_100004DF8(v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v23 + 128);
    v68 = v104;
    *(v23 + 128) = 0x8000000000000000;
    v69 = sub_1003622D0(v20);
    v71 = v68[2];
    v72 = (v70 & 1) == 0;
    v73 = __OFADD__(v71, v72);
    v74 = v71 + v72;
    if (v73)
    {
      goto LABEL_105;
    }

    v20 = v70;
    if (v68[3] >= v74)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = v69;
        sub_100822B24();
        v69 = v80;
        v68 = v104;
        *(v23 + 128) = v104;
        if ((v20 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_49;
      }
    }

    else
    {
      sub_10081E73C(v74, isUniquelyReferenced_nonNull_native);
      v68 = v104;
      v69 = sub_1003622D0(v102);
      if ((v20 & 1) != (v75 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    *(v23 + 128) = v68;
    if ((v20 & 1) == 0)
    {
LABEL_77:
      v20 = 1;
      v68[(v69 >> 6) + 8] |= 1 << v69;
      v76 = v69;
      (*(v98 + 16))(v68[6] + *(v98 + 72) * v69, v102, v101);
      v77 = v68[7] + 24 * v76;
      *v77 = 0;
      *(v77 + 8) = 1;
      *(v77 + 16) = 0;
      v78 = v68[2];
      v73 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v73)
      {
        goto LABEL_107;
      }

      v69 = v76;
      v68[2] = v79;
    }

LABEL_49:
    *(v68[7] + 24 * v69 + 16) = v61;
    (*v99)(v102, v101);
    swift_endAccess();
    v52 = sub_10020B9F4;
    v49 = v103;
    goto LABEL_50;
  }

  v49 = v103;
  v50 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v50)
  {
    goto LABEL_48;
  }

LABEL_82:
  v52 = 0;
LABEL_83:
  if (*(v23 + 121))
  {
    (*(v98 + 8))(v97, v101);

    swift_unknownObjectRelease();
    v81 = v52;
    return sub_100004DF8(v81);
  }

  v82 = v52;
  v83 = *(v23 + 112);
  v84 = *(v23 + 120);
  v85 = v97;
  v86 = IndexPath.item.getter();
  v87 = v101;
  v88 = Strong;
  if (v84)
  {
    *(v23 + 112) = IndexPath.item.getter();
    *(v23 + 120) = 0;
    v89 = v85;
    goto LABEL_88;
  }

  v90 = v86;
  *(v23 + 112) = IndexPath.item.getter();
  *(v23 + 120) = 0;
  v89 = v85;
  if (v83 != v90)
  {
LABEL_88:
    v91 = [v88 collectionView];
    if (v91)
    {
      v92 = v91;
      if ([v91 delegate])
      {
        ObjectType = swift_getObjectType();
        v94 = swift_conformsToProtocol2();
        if (v94)
        {
          (*(v94 + 8))(v92, v88, v89, ObjectType, v94);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        (*(v98 + 8))(v89, v87);
      }

      else
      {
        (*(v98 + 8))(v89, v87);
        swift_unknownObjectRelease();
      }

      goto LABEL_96;
    }
  }

  (*(v98 + 8))(v89, v87);

  swift_unknownObjectRelease();
LABEL_96:
  v81 = v82;
  return sub_100004DF8(v81);
}