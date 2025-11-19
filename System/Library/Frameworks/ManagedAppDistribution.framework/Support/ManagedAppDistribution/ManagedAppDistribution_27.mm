uint64_t sub_1003CDBFC()
{
  v1 = *(v0 + 248);

  sub_1003D470C(v1, type metadata accessor for DDMDeclaration);
  sub_10000710C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CDCC0()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CDD5C()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003CDDF8(void **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v20 = *a1;
    type metadata accessor for MarketplaceUpdateEntity.Entity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = sub_100213FA0(&qword_10077F9E8, &qword_10077F9E0);
    v4 = (a2 + 40);
    while (1)
    {
      v21 = v4;
      v22 = v2;
      v6 = *(v4 - 1);
      v5 = *v4;
      v25 = sub_1001F0C48(&qword_10077F9E0);
      v26 = v18;
      LOWORD(aBlock) = 2;
      *(&aBlock + 1) = v6;
      v24 = v5;
      sub_1001F0C48(&qword_10077F9F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      sub_1001DFDBC(&aBlock, inited + 32);
      sub_1001F0C48(&qword_10077F9F8);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10069E680;
      *(v8 + 32) = inited;
      swift_bridgeObjectRetain_n();
      v9 = sub_1005AEA0C(v8);
      swift_setDeallocating();
      sub_1000032A8(v8 + 32, &qword_10077FA00);
      v28 = 0;
      v10 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:ObjCClassFromMetadata memoryEntityClass:0];
      v11 = sub_10047EDB4(0, v9);
      [v10 setPredicate:v11];

      v12 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:v20 descriptor:v10];
      v13 = swift_allocObject();
      v13[2] = &v28;
      v13[3] = sub_1003D3B74;
      v13[4] = 0;
      v13[5] = v20;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1002398F8;
      *(v14 + 24) = v13;
      v26 = sub_100302FA4;
      v27 = v14;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v24 = sub_10047E468;
      v25 = &unk_100763920;
      v15 = _Block_copy(&aBlock);
      v16 = v20;

      [v12 enumeratePersistentIDsUsingBlock:v15];

      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        break;
      }

      v17 = v28;

      if (v17)
      {
        [v17 deleteFromDatabase];
      }

      v4 = v21 + 2;
      v2 = v22 - 1;
      if (v22 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1003CE180(void **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v21 = *a1;
    type metadata accessor for LicenseStorageEntity.Entity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = sub_100213FA0(&qword_1007813C8, &qword_1007813C0);
    for (i = (a2 + 40); ; i += 2)
    {
      v22 = v2;
      v5 = *(i - 1);
      v6 = *i;
      v25 = sub_1001F0C48(&qword_1007813C0);
      v26 = v19;
      LOWORD(aBlock) = 1;
      *(&aBlock + 1) = v5;
      v24 = v6;
      sub_1001F0C48(&qword_1007813D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      sub_1001DFDBC(&aBlock, inited + 32);
      sub_1001F0C48(&qword_1007813D8);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10069E680;
      *(v8 + 32) = inited;
      swift_bridgeObjectRetain_n();
      v9 = sub_1005AEA84(v8);
      swift_setDeallocating();
      sub_1000032A8(v8 + 32, &qword_10077FA00);
      v28 = 0;
      v10 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:ObjCClassFromMetadata memoryEntityClass:0];
      v11 = sub_10047EDB4(0, v9);
      [v10 setPredicate:v11];

      v12 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:v21 descriptor:v10];
      v13 = swift_allocObject();
      v13[2] = &v28;
      v13[3] = sub_1005138AC;
      v13[4] = 0;
      v13[5] = v21;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1002398F8;
      *(v14 + 24) = v13;
      v26 = sub_100239904;
      v27 = v14;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v24 = sub_10047E468;
      v25 = &unk_1007638A8;
      v15 = _Block_copy(&aBlock);
      v16 = v21;

      [v12 enumeratePersistentIDsUsingBlock:v15];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v18 = v28;

      if (v18)
      {
        sub_100512350(v18);
      }

      v2 = v22 - 1;
      if (v22 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003CE524(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003CE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = a6;
  *(v6 + 232) = a5;
  *(v6 + 96) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1003CE76C, 0, 0);
}

uint64_t sub_1003CE76C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  (*(*(v0 + 128) + 56))(*(v0 + 168), 1, 1, *(v0 + 120));
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;

  return _swift_task_switch(sub_1003CE840, 0, 0);
}

uint64_t sub_1003CE840()
{
  sub_100005934(v0[10].opaque[1], v0[10].opaque[0], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[11].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "LaunchServicesObserver.postStateChangesIfNeeded", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 5);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[1].opaque[1];
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  v0[12].opaque[0] = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v0[12].opaque[1] = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = v0[9].opaque[1];
  v8 = v0[7].opaque[1];
  v7 = v0[8].opaque[0];
  sub_100005934(v0[10].opaque[0], v6, &unk_10077F8E0);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = v0[10].opaque[0];
  if (v9 == 1)
  {
    sub_1000032A8(v0[10].opaque[0], &unk_10077F8E0);

    v11 = 0;
  }

  else
  {
    v12 = v0[9].opaque[0];
    v13 = v0[8].opaque[0];
    v14 = v0[8].opaque[1];
    v15 = v0[7].opaque[1];
    (*(v13 + 32))(v12, v0[9].opaque[1], v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v11 = sub_1005AD4D8("LaunchServicesObserver.postStateChangesIfNeeded", 47, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0);
  }

  v0[13].opaque[0] = v11;
  v16 = v0[11].opaque[0];
  v0[3].opaque[0] = v1;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v4;
  v0[4].opaque[1] = v11;
  v17 = swift_task_alloc();
  v0[13].opaque[1] = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006A9138;
  v17[8] = v16;

  v18 = swift_task_alloc();
  v0[14].opaque[0] = v18;
  *v18 = v0;
  v18[1] = sub_1003CED20;
  v19 = v0[6].opaque[0];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v19, &v0[3], &unk_10069F3A0, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1003CED20()
{

  if (v0)
  {

    v1 = sub_10023B26C;
  }

  else
  {

    v1 = sub_1003CEEE0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1003CEEE0()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CEFFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 716) = a3;
  *(v4 + 328) = a2;
  *(v4 + 336) = a4;
  v5 = type metadata accessor for RegisteredXPCClient();
  *(v4 + 344) = v5;
  *(v4 + 352) = *(v5 - 8);
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F378);
  *(v4 + 384) = v6;
  *(v4 + 392) = *(v6 - 8);
  *(v4 + 400) = swift_task_alloc();
  v7 = type metadata accessor for AppState();
  *(v4 + 408) = v7;
  *(v4 + 416) = *(v7 - 8);
  *(v4 + 424) = swift_task_alloc();
  updated = type metadata accessor for AppStateUpdateIdentifier();
  *(v4 + 432) = updated;
  *(v4 + 440) = *(updated - 8);
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v4 + 464) = v9;
  *(v4 + 472) = *(v9 - 8);
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();

  return _swift_task_switch(sub_1003CF298, 0, 0);
}

uint64_t sub_1003CF298()
{
  v119 = v0;
  v1 = *(*(v0 + 328) + 16);
  os_unfair_lock_lock(v1 + 22);
  sub_100005934(&v1[4], v0 + 88, &qword_1007833F8);
  if (!*(v0 + 112))
  {
LABEL_112:
    __break(1u);
  }

  sub_10026FEE4(v0 + 88, v0 + 16);
  os_unfair_lock_unlock(v1 + 22);
  static Logger.library.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  if (v4)
  {
    v8 = *(v0 + 716);
    v115 = *(v0 + 488);
    v9 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v9 = 136315394;
    if (v8)
    {
      v10 = 0x6465646461;
    }

    else
    {
      v10 = 0x6465766F6D6572;
    }

    if (v8)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_1002346CC(v10, v11, &v118);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = Set.description.getter();
    v15 = sub_1002346CC(v13, v14, &v118);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posting state changes for %s apps: %s", v9, 0x16u);
    swift_arrayDestroy();

    v18 = *(v6 + 8);
    v16 = v6 + 8;
    v17 = v18;
    v18(v115, v7);
  }

  else
  {

    v19 = *(v6 + 8);
    v16 = v6 + 8;
    v17 = v19;
    v19(v5, v7);
  }

  *(v0 + 496) = v16;
  *(v0 + 504) = v17;
  v20 = *(v0 + 336);
  v21 = *(v20 + 32);
  *(v0 + 717) = v21;
  v22 = -1;
  v23 = -1 << v21;
  if (-(-1 << v21) < 64)
  {
    v22 = ~(-1 << -(-1 << v21));
  }

  v24 = v22 & *(v20 + 56);
  *(v0 + 712) = enum case for AppStateUpdateIdentifier.managedAppDistribution(_:);
  *(v0 + 512) = _swiftEmptyArrayStorage;

  if (v24)
  {
    v26 = 0;
LABEL_18:
    *(v0 + 528) = v26;
    *(v0 + 520) = v24;
    v28 = (*(v25 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
    *(v0 + 536) = *v28;
    *(v0 + 544) = v28[1];
    v29 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 552) = v29;

    return _swift_task_switch(sub_1003D00DC, v29, 0);
  }

  v27 = 0;
  while (((63 - v23) >> 6) - 1 != v27)
  {
    v26 = v27 + 1;
    v24 = *(v25 + 8 * v27++ + 64);
    if (v24)
    {
      goto LABEL_18;
    }
  }

  v30 = *(v0 + 716);

  sub_100006D8C((v0 + 16), *(v0 + 40));

  sub_10066969C(_swiftEmptyArrayStorage);

  if ((v30 & 1) == 0)
  {
    *(v0 + 688) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v71 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v0 + 696) = v71;

    v72 = swift_task_alloc();
    *(v0 + 704) = v72;
    *v72 = v0;
    v72[1] = sub_1003D38A0;

    return sub_10066B8F0(v71);
  }

  v31 = *(v0 + 336);
  v32 = -1;
  v33 = -1 << *(v31 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v31 + 56);
  v35 = (63 - v33) >> 6;

  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_25:
  v113 = v37;
  *(v0 + 616) = v37;
LABEL_27:
  if (v34)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v41 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (v41 >= v35)
    {
      break;
    }

    v34 = *(*(v0 + 336) + 8 * v41 + 56);
    ++v36;
    if (v34)
    {
      v36 = v41;
LABEL_32:
      v34 &= v34 - 1;
      v42 = objc_allocWithZone(v38[437]);

      v43 = String._bridgeToObjectiveC()();

      *(v0 + 312) = 0;
      v44 = [v42 p_name[301]];

      v45 = *(v0 + 312);
      if (v44)
      {
        v46 = v45;
        v47 = [v44 iTunesMetadata];
        v48 = [v47 distributorInfo];

        v49 = [v48 distributorID];
        if (!v49)
        {
          goto LABEL_52;
        }

        v50 = v49;
        v51 = v44;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v116 = v51;
        v55 = [v51 bundleIdentifier];
        if (!v55)
        {
          goto LABEL_40;
        }

        v56 = v55;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        if (v52 == v57 && v54 == v59)
        {
        }

        else
        {
          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          if ((v61 & 1) == 0)
          {
LABEL_40:
            *(v0 + 240) = &type metadata for NativeDistributor;
            v62 = sub_1003000A4();
            goto LABEL_44;
          }
        }

        v63 = [v48 domain];
        v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        p_name = (&stru_100779FF8 + 8);
        v44 = v116;
        if (!v63)
        {
LABEL_52:

          *(v0 + 248) = 0;
          *(v0 + 232) = 0u;
          *(v0 + 216) = 0u;

          sub_1000032A8(v0 + 216, &unk_10077FA50);
          goto LABEL_27;
        }

        v64 = v63;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v65;

        *(v0 + 240) = &type metadata for WebDistributor;
        v62 = sub_100231E84();
LABEL_44:
        *(v0 + 248) = v62;

        *(v0 + 216) = v52;
        *(v0 + 224) = v54;
        sub_1001F0C48(&qword_10077E970);
        if ((swift_dynamicCast() & 1) == 0)
        {

          p_name = (&stru_100779FF8 + 8);
          goto LABEL_27;
        }

        v67 = *(v0 + 296);
        v66 = *(v0 + 304);
        p_name = (&stru_100779FF8 + 8);
        if (v67 == 0xD000000000000012 && 0x80000001006C2DF0 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v67 == 0xD000000000000014 && 0x80000001006C47D0 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          goto LABEL_27;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_100363B64(0, *(v113 + 2) + 1, 1, v113);
        }

        v69 = *(v113 + 2);
        v68 = *(v113 + 3);
        if (v69 >= v68 >> 1)
        {
          v113 = sub_100363B64((v68 > 1), v69 + 1, 1, v113);
        }

        *(v113 + 2) = v69 + 1;
        v70 = &v113[16 * v69];
        *(v70 + 4) = v67;
        *(v70 + 5) = v66;
        v37 = v113;
        v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        goto LABEL_25;
      }

      v40 = v45;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      goto LABEL_27;
    }
  }

  v73 = *(v113 + 2);
  *(v0 + 624) = v73;
  if (!v73)
  {

    sub_10000710C(v0 + 16);

    v108 = *(v0 + 8);

    return v108();
  }

  *(v0 + 632) = 0;
  v74 = *(v0 + 616);
  if (!v74[2])
  {
    goto LABEL_111;
  }

  v75 = v74[5];
  v112 = v74[4];
  *(v0 + 640) = v75;
  v76 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 648) = v76;
  v77 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v0 + 656) = v77;
  v117 = v75;

  v111 = v77;

  os_unfair_lock_lock((v76 + 16));
  v110 = v76;
  v78 = *(v76 + 24);
  v79 = v78 + 64;
  v80 = -1;
  v81 = -1 << *(v78 + 32);
  if (-v81 < 64)
  {
    v80 = ~(-1 << -v81);
  }

  v82 = v80 & *(v78 + 64);
  v83 = (63 - v81) >> 6;
  v114 = v78;

  v84 = 0;
  v85 = _swiftEmptyArrayStorage;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  if (v82)
  {
    while (1)
    {
      while (1)
      {
LABEL_74:
        v88 = *(v0 + 368);
        v87 = *(v0 + 376);
        v89 = *(v0 + 344);
        v90 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
        v91 = *(*(v0 + 352) + 72);
        sub_1003D4640(*(v114 + 56) + v91 * (v90 | (v84 << 6)), v88);
        sub_1003D46A4(v88, v87, type metadata accessor for RegisteredXPCClient);
        v92 = (v87 + *(v89 + 24));
        v93 = v92[1];
        if (v93 <= 2)
        {
          if (!v93)
          {
            goto LABEL_69;
          }

          if ((v93 - 1) < 2)
          {
            goto LABEL_97;
          }

LABEL_90:
          v100 = v112 == *v92 && v93 == v117;
          if (v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_97;
          }

          goto LABEL_69;
        }

        if (v93 == 3)
        {
          break;
        }

        if (v93 != 4)
        {
          goto LABEL_90;
        }

LABEL_97:
        sub_1003D46A4(*(v0 + 376), *(v0 + 360), type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 320) = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v85[2] + 1, 1);
          v85 = *(v0 + 320);
        }

        v103 = v85[2];
        v102 = v85[3];
        if (v103 >= v102 >> 1)
        {
          sub_10052642C(v102 > 1, v103 + 1, 1);
          v85 = *(v0 + 320);
        }

        v105 = *(v0 + 352);
        v104 = *(v0 + 360);
        v85[2] = v103 + 1;
        sub_1003D46A4(v104, v85 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + v103 * v91, type metadata accessor for RegisteredXPCClient);
        *(v0 + 664) = v85;
        if (!v82)
        {
          goto LABEL_70;
        }
      }

      *(v0 + 280) = &type metadata for NativeDistributor;
      *(v0 + 288) = sub_1003000A4();
      *(v0 + 256) = v112;
      *(v0 + 264) = v117;
      v94 = sub_100006D8C((v0 + 256), &type metadata for NativeDistributor);
      v96 = *v94;
      v95 = v94[1];
      v97 = *v94 == 0xD000000000000012 && 0x80000001006C2DF0 == v95;
      if (v97 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v96 == 0xD000000000000014 ? (v98 = 0x80000001006C47D0 == v95) : (v98 = 0), v98))
      {

        sub_10000710C(v0 + 256);
        goto LABEL_97;
      }

      v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C(v0 + 256);
      if (v99)
      {
        goto LABEL_97;
      }

LABEL_69:
      sub_1003D470C(*(v0 + 376), type metadata accessor for RegisteredXPCClient);
      *(v0 + 664) = v85;
      if (!v82)
      {
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
LABEL_70:
    v86 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_110;
    }

    if (v86 >= v83)
    {
      break;
    }

    v82 = *(v79 + 8 * v86);
    ++v84;
    if (v82)
    {
      v84 = v86;
      goto LABEL_74;
    }
  }

  os_unfair_lock_unlock(v110 + 4);
  v106 = swift_task_alloc();
  *(v0 + 672) = v106;
  v106[2] = v85;
  v106[3] = v111;
  v106[4] = 0;
  v106[5] = 0;
  v107 = swift_task_alloc();
  *(v0 + 680) = v107;
  *v107 = v0;
  v107[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D00DC()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = *(v0[69] + 112);
  v4 = swift_task_alloc();
  v0[70] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_1003D01F0;

  return sub_1003AE648(sub_1002716D8, v4, v3);
}

uint64_t sub_1003D01F0(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 552);
  if (v1)
  {

    v7 = sub_1003D1490;
  }

  else
  {
    *(v5 + 718) = a1 & 1;

    v7 = sub_1003D0390;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003D0390()
{

  return _swift_task_switch(sub_1003D0424, 0, 0);
}

uint64_t sub_1003D0424()
{
  v144 = v0;
  v1 = *(v0 + 544);
  if ((*(v0 + 718) & 1) == 0)
  {
    v12 = *(v0 + 536);
    v13 = *(v0 + 40);
    v14 = *(v0 + 56);
    v140 = *(v0 + 72);
    v15 = sub_100006D8C((v0 + 16), v13);
    *(v0 + 184) = v13;
    *(v0 + 192) = v14;
    *(v0 + 200) = v140;
    v16 = sub_10020A748((v0 + 160));
    (*(*(v13 - 8) + 16))(v16, v15, v13);
    sub_100235E64();
    v17 = sub_10060BC54(v12, v1, 0, 0, 2);
    if (v17)
    {
      v18 = v17;
      v19 = [v18 iTunesMetadata];
      v20 = [v19 storeItemIdentifier];

      if (v20)
      {
        v21 = [v18 iTunesMetadata];
        v22 = [v21 storeItemIdentifier];
      }

      else
      {
        v22 = 0;
      }

      v39 = v20 == 0;

      v40 = *(v0 + 544);
      v42 = *(v0 + 440);
      v41 = *(v0 + 448);
      *v41 = *(v0 + 536);
      *(v41 + 8) = v40;
      *(v41 + 16) = v22;
      *(v41 + 24) = v39;
      (*(v42 + 104))();

      v43 = [v18 iTunesMetadata];
      v44 = [v43 distributorInfo];

      v45 = [v44 distributorID];
      if (!v45)
      {
        v32 = 0;
        v33 = 0;
        v34 = -1;
        v35 = 3;
        goto LABEL_23;
      }

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = v47;
      v34 = 0;
      v35 = v48;
      v33 = v48;
    }

    else
    {
      v29 = *(v0 + 544);
      v31 = *(v0 + 440);
      v30 = *(v0 + 448);
      *v30 = *(v0 + 536);
      *(v30 + 8) = v29;
      *(v30 + 16) = 0;
      *(v30 + 24) = 1;
      (*(v31 + 104))();
      v18 = 0;
      v32 = 0;
      v33 = 0;
      v34 = -1;
      v35 = 3;
    }

LABEL_23:
    *(v0 + 719) = v34;
    *(v0 + 600) = v33;
    *(v0 + 592) = v35;
    *(v0 + 584) = v32;
    *(v0 + 576) = v18;
    v49 = *(v0 + 544);
    v50 = swift_task_alloc();
    *(v0 + 608) = v50;
    *v50 = v0;
    v50[1] = sub_1003D2294;
    v51 = *(v0 + 536);
    v52 = *(v0 + 424);
    v146 = v35;

    return sub_10060FC18(v52, v51, v49, 1, 0, 0, v0 + 160, v32);
  }

  static Logger.library.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 544);
  if (v4)
  {
    v6 = *(v0 + 536);
    v139 = *(v0 + 504);
    v7 = *(v0 + 480);
    v8 = *(v0 + 464);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v143 = v10;
    *v9 = 136315138;
    v11 = sub_1002346CC(v6, v5, &v143);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ignoring state change for active install of %s", v9, 0xCu);
    sub_10000710C(v10);

    v139(v7, v8);
  }

  else
  {
    v23 = *(v0 + 504);
    v24 = *(v0 + 480);
    v25 = *(v0 + 464);

    v23(v24, v25);
  }

  v26 = *(v0 + 528);
  v27 = (*(v0 + 520) - 1) & *(v0 + 520);
  if (v27)
  {
    v28 = *(v0 + 336);
LABEL_15:
    *(v0 + 528) = v26;
    *(v0 + 520) = v27;
    v37 = (*(v28 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v27)))));
    *(v0 + 536) = *v37;
    *(v0 + 544) = v37[1];
    v38 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 552) = v38;

    return _swift_task_switch(sub_1003D00DC, v38, 0);
  }

  while (1)
  {
    v36 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v36 >= (((1 << *(v0 + 717)) + 63) >> 6))
    {
      break;
    }

    v28 = *(v0 + 336);
    v27 = *(v28 + 8 * v36 + 56);
    ++v26;
    if (v27)
    {
      v26 = v36;
      goto LABEL_15;
    }
  }

  v53 = *(v0 + 512);
  v54 = *(v0 + 716);

  sub_100006D8C((v0 + 16), *(v0 + 40));

  sub_10066969C(v53);

  if ((v54 & 1) == 0)
  {
    *(v0 + 688) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v95 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v0 + 696) = v95;

    v96 = swift_task_alloc();
    *(v0 + 704) = v96;
    *v96 = v0;
    v96[1] = sub_1003D38A0;

    return sub_10066B8F0(v95);
  }

  v55 = *(v0 + 336);
  v56 = -1;
  v57 = -1 << *(v55 + 32);
  if (-v57 < 64)
  {
    v56 = ~(-1 << -v57);
  }

  v58 = v56 & *(v55 + 56);
  v59 = (63 - v57) >> 6;

  v60 = 0;
  v61 = _swiftEmptyArrayStorage;
  v62 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_30:
  v137 = v61;
  *(v0 + 616) = v61;
  while (2)
  {
    if (v58)
    {
LABEL_37:
      v58 &= v58 - 1;
      v66 = objc_allocWithZone(v62[437]);

      v67 = String._bridgeToObjectiveC()();

      *(v0 + 312) = 0;
      v68 = [v66 p_name[301]];

      v69 = *(v0 + 312);
      if (!v68)
      {
        v64 = v69;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        continue;
      }

      v70 = v69;
      v71 = [v68 iTunesMetadata];
      v72 = [v71 distributorInfo];

      v73 = [v72 distributorID];
      if (!v73)
      {
LABEL_57:

        *(v0 + 248) = 0;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;

        sub_1000032A8(v0 + 216, &unk_10077FA50);
        continue;
      }

      v74 = v73;
      v75 = v68;
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v141 = v75;
      v79 = [v75 bundleIdentifier];
      if (!v79)
      {
        goto LABEL_45;
      }

      v80 = v79;
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      if (v76 == v81 && v78 == v83)
      {
      }

      else
      {
        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v62 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        if ((v85 & 1) == 0)
        {
LABEL_45:
          *(v0 + 240) = &type metadata for NativeDistributor;
          v86 = sub_1003000A4();
LABEL_49:
          *(v0 + 248) = v86;

          *(v0 + 216) = v76;
          *(v0 + 224) = v78;
          sub_1001F0C48(&qword_10077E970);
          if (swift_dynamicCast())
          {
            v91 = *(v0 + 296);
            v90 = *(v0 + 304);
            p_name = (&stru_100779FF8 + 8);
            if ((v91 != 0xD000000000000012 || 0x80000001006C2DF0 != v90) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v91 != 0xD000000000000014 || 0x80000001006C47D0 != v90) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v137 = sub_100363B64(0, *(v137 + 2) + 1, 1, v137);
              }

              v93 = *(v137 + 2);
              v92 = *(v137 + 3);
              if (v93 >= v92 >> 1)
              {
                v137 = sub_100363B64((v92 > 1), v93 + 1, 1, v137);
              }

              *(v137 + 2) = v93 + 1;
              v94 = &v137[16 * v93];
              *(v94 + 4) = v91;
              *(v94 + 5) = v90;
              v61 = v137;
              v62 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
              goto LABEL_30;
            }

            v62 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          }

          else
          {

            p_name = (&stru_100779FF8 + 8);
          }

          continue;
        }
      }

      v87 = [v72 domain];
      v62 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
      p_name = (&stru_100779FF8 + 8);
      v68 = v141;
      if (!v87)
      {
        goto LABEL_57;
      }

      v88 = v87;
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v89;

      *(v0 + 240) = &type metadata for WebDistributor;
      v86 = sub_100231E84();
      goto LABEL_49;
    }

    break;
  }

  while (1)
  {
    v65 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_115;
    }

    if (v65 >= v59)
    {
      break;
    }

    v58 = *(*(v0 + 336) + 8 * v65 + 56);
    ++v60;
    if (v58)
    {
      v60 = v65;
      goto LABEL_37;
    }
  }

  v97 = *(v137 + 2);
  *(v0 + 624) = v97;
  if (!v97)
  {

    sub_10000710C(v0 + 16);

    v132 = *(v0 + 8);

    return v132();
  }

  *(v0 + 632) = 0;
  v98 = *(v0 + 616);
  if (!v98[2])
  {
LABEL_117:
    __break(1u);
  }

  v99 = v98[5];
  v136 = v98[4];
  *(v0 + 640) = v99;
  v100 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 648) = v100;
  v101 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v0 + 656) = v101;
  v142 = v99;

  v135 = v101;

  os_unfair_lock_lock((v100 + 16));
  v134 = v100;
  v102 = *(v100 + 24);
  v103 = v102 + 64;
  v104 = -1;
  v105 = -1 << *(v102 + 32);
  if (-v105 < 64)
  {
    v104 = ~(-1 << -v105);
  }

  v106 = v104 & *(v102 + 64);
  v107 = (63 - v105) >> 6;
  v138 = v102;

  v108 = 0;
  v109 = _swiftEmptyArrayStorage;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  if (v106)
  {
    while (1)
    {
      while (1)
      {
LABEL_79:
        v112 = *(v0 + 368);
        v111 = *(v0 + 376);
        v113 = *(v0 + 344);
        v114 = __clz(__rbit64(v106));
        v106 &= v106 - 1;
        v115 = *(*(v0 + 352) + 72);
        sub_1003D4640(*(v138 + 56) + v115 * (v114 | (v108 << 6)), v112);
        sub_1003D46A4(v112, v111, type metadata accessor for RegisteredXPCClient);
        v116 = (v111 + *(v113 + 24));
        v117 = v116[1];
        if (v117 <= 2)
        {
          if (!v117)
          {
            goto LABEL_74;
          }

          if ((v117 - 1) < 2)
          {
            goto LABEL_102;
          }

LABEL_95:
          v124 = v136 == *v116 && v117 == v142;
          if (v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_102;
          }

          goto LABEL_74;
        }

        if (v117 == 3)
        {
          break;
        }

        if (v117 != 4)
        {
          goto LABEL_95;
        }

LABEL_102:
        sub_1003D46A4(*(v0 + 376), *(v0 + 360), type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 320) = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v109[2] + 1, 1);
          v109 = *(v0 + 320);
        }

        v127 = v109[2];
        v126 = v109[3];
        if (v127 >= v126 >> 1)
        {
          sub_10052642C(v126 > 1, v127 + 1, 1);
          v109 = *(v0 + 320);
        }

        v129 = *(v0 + 352);
        v128 = *(v0 + 360);
        v109[2] = v127 + 1;
        sub_1003D46A4(v128, v109 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + v127 * v115, type metadata accessor for RegisteredXPCClient);
        *(v0 + 664) = v109;
        if (!v106)
        {
          goto LABEL_75;
        }
      }

      *(v0 + 280) = &type metadata for NativeDistributor;
      *(v0 + 288) = sub_1003000A4();
      *(v0 + 256) = v136;
      *(v0 + 264) = v142;
      v118 = sub_100006D8C((v0 + 256), &type metadata for NativeDistributor);
      v120 = *v118;
      v119 = v118[1];
      v121 = *v118 == 0xD000000000000012 && 0x80000001006C2DF0 == v119;
      if (v121 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v120 == 0xD000000000000014 ? (v122 = 0x80000001006C47D0 == v119) : (v122 = 0), v122))
      {

        sub_10000710C(v0 + 256);
        goto LABEL_102;
      }

      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C(v0 + 256);
      if (v123)
      {
        goto LABEL_102;
      }

LABEL_74:
      sub_1003D470C(*(v0 + 376), type metadata accessor for RegisteredXPCClient);
      *(v0 + 664) = v109;
      if (!v106)
      {
        goto LABEL_75;
      }
    }
  }

  while (1)
  {
LABEL_75:
    v110 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      goto LABEL_116;
    }

    if (v110 >= v107)
    {
      break;
    }

    v106 = *(v103 + 8 * v110);
    ++v108;
    if (v106)
    {
      v108 = v110;
      goto LABEL_79;
    }
  }

  os_unfair_lock_unlock(v134 + 4);
  v130 = swift_task_alloc();
  *(v0 + 672) = v130;
  v130[2] = v109;
  v130[3] = v135;
  v130[4] = 0;
  v130[5] = 0;
  v131 = swift_task_alloc();
  *(v0 + 680) = v131;
  *v131 = v0;
  v131[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D1490()
{

  return _swift_task_switch(sub_1003D1524, 0, 0);
}

uint64_t sub_1003D1524()
{
  v110 = v0;
  static Logger.library.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 544);
  if (v3)
  {
    v5 = *(v0 + 536);
    v106 = *(v0 + 504);
    v6 = *(v0 + 480);
    v7 = *(v0 + 464);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v109 = v9;
    *v8 = 136315138;
    v10 = sub_1002346CC(v5, v4, &v109);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ignoring state change for active install of %s", v8, 0xCu);
    sub_10000710C(v9);

    v106(v6, v7);
  }

  else
  {
    v11 = *(v0 + 504);
    v12 = *(v0 + 480);
    v13 = *(v0 + 464);

    v11(v12, v13);
  }

  v14 = *(v0 + 528);
  v15 = (*(v0 + 520) - 1) & *(v0 + 520);
  if (v15)
  {
    v16 = *(v0 + 336);
LABEL_10:
    *(v0 + 528) = v14;
    *(v0 + 520) = v15;
    v18 = (*(v16 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v15)))));
    *(v0 + 536) = *v18;
    *(v0 + 544) = v18[1];
    v19 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 552) = v19;

    return _swift_task_switch(sub_1003D00DC, v19, 0);
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v17 >= (((1 << *(v0 + 717)) + 63) >> 6))
    {
      break;
    }

    v16 = *(v0 + 336);
    v15 = *(v16 + 8 * v17 + 56);
    ++v14;
    if (v15)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  v20 = *(v0 + 512);
  v21 = *(v0 + 716);

  sub_100006D8C((v0 + 16), *(v0 + 40));

  sub_10066969C(v20);

  if ((v21 & 1) == 0)
  {
    *(v0 + 688) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v62 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v0 + 696) = v62;

    v63 = swift_task_alloc();
    *(v0 + 704) = v63;
    *v63 = v0;
    v63[1] = sub_1003D38A0;

    return sub_10066B8F0(v62);
  }

  v22 = *(v0 + 336);
  v23 = -1;
  v24 = -1 << *(v22 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(v22 + 56);
  v26 = (63 - v24) >> 6;

  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v29 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_17:
  v104 = v28;
  *(v0 + 616) = v28;
  while (2)
  {
    if (v25)
    {
LABEL_24:
      v25 &= v25 - 1;
      v33 = objc_allocWithZone(v29[437]);

      v34 = String._bridgeToObjectiveC()();

      *(v0 + 312) = 0;
      v35 = [v33 p_name[301]];

      v36 = *(v0 + 312);
      if (!v35)
      {
        v31 = v36;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        continue;
      }

      v37 = v36;
      v38 = [v35 iTunesMetadata];
      v39 = [v38 distributorInfo];

      v40 = [v39 distributorID];
      if (!v40)
      {
LABEL_44:

        *(v0 + 248) = 0;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;

        sub_1000032A8(v0 + 216, &unk_10077FA50);
        continue;
      }

      v41 = v40;
      v42 = v35;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v107 = v42;
      v46 = [v42 bundleIdentifier];
      if (!v46)
      {
        goto LABEL_32;
      }

      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      if (v43 == v48 && v45 == v50)
      {
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v29 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        if ((v52 & 1) == 0)
        {
LABEL_32:
          *(v0 + 240) = &type metadata for NativeDistributor;
          v53 = sub_1003000A4();
LABEL_36:
          *(v0 + 248) = v53;

          *(v0 + 216) = v43;
          *(v0 + 224) = v45;
          sub_1001F0C48(&qword_10077E970);
          if (swift_dynamicCast())
          {
            v58 = *(v0 + 296);
            v57 = *(v0 + 304);
            p_name = (&stru_100779FF8 + 8);
            if ((v58 != 0xD000000000000012 || 0x80000001006C2DF0 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v58 != 0xD000000000000014 || 0x80000001006C47D0 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v104 = sub_100363B64(0, *(v104 + 2) + 1, 1, v104);
              }

              v60 = *(v104 + 2);
              v59 = *(v104 + 3);
              if (v60 >= v59 >> 1)
              {
                v104 = sub_100363B64((v59 > 1), v60 + 1, 1, v104);
              }

              *(v104 + 2) = v60 + 1;
              v61 = &v104[16 * v60];
              *(v61 + 4) = v58;
              *(v61 + 5) = v57;
              v28 = v104;
              v29 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
              goto LABEL_17;
            }

            v29 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          }

          else
          {

            p_name = (&stru_100779FF8 + 8);
          }

          continue;
        }
      }

      v54 = [v39 domain];
      v29 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
      p_name = (&stru_100779FF8 + 8);
      v35 = v107;
      if (!v54)
      {
        goto LABEL_44;
      }

      v55 = v54;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v56;

      *(v0 + 240) = &type metadata for WebDistributor;
      v53 = sub_100231E84();
      goto LABEL_36;
    }

    break;
  }

  while (1)
  {
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_102;
    }

    if (v32 >= v26)
    {
      break;
    }

    v25 = *(*(v0 + 336) + 8 * v32 + 56);
    ++v27;
    if (v25)
    {
      v27 = v32;
      goto LABEL_24;
    }
  }

  v64 = *(v104 + 2);
  *(v0 + 624) = v64;
  if (!v64)
  {

    sub_10000710C(v0 + 16);

    v99 = *(v0 + 8);

    return v99();
  }

  *(v0 + 632) = 0;
  v65 = *(v0 + 616);
  if (!v65[2])
  {
LABEL_104:
    __break(1u);
  }

  v66 = v65[5];
  v103 = v65[4];
  *(v0 + 640) = v66;
  v67 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 648) = v67;
  v68 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v0 + 656) = v68;
  v108 = v66;

  v102 = v68;

  os_unfair_lock_lock((v67 + 16));
  v101 = v67;
  v69 = *(v67 + 24);
  v70 = v69 + 64;
  v71 = -1;
  v72 = -1 << *(v69 + 32);
  if (-v72 < 64)
  {
    v71 = ~(-1 << -v72);
  }

  v73 = v71 & *(v69 + 64);
  v74 = (63 - v72) >> 6;
  v105 = v69;

  v75 = 0;
  v76 = _swiftEmptyArrayStorage;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  if (v73)
  {
    while (1)
    {
      while (1)
      {
LABEL_66:
        v79 = *(v0 + 368);
        v78 = *(v0 + 376);
        v80 = *(v0 + 344);
        v81 = __clz(__rbit64(v73));
        v73 &= v73 - 1;
        v82 = *(*(v0 + 352) + 72);
        sub_1003D4640(*(v105 + 56) + v82 * (v81 | (v75 << 6)), v79);
        sub_1003D46A4(v79, v78, type metadata accessor for RegisteredXPCClient);
        v83 = (v78 + *(v80 + 24));
        v84 = v83[1];
        if (v84 <= 2)
        {
          if (!v84)
          {
            goto LABEL_61;
          }

          if ((v84 - 1) < 2)
          {
            goto LABEL_89;
          }

LABEL_82:
          v91 = v103 == *v83 && v84 == v108;
          if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_89;
          }

          goto LABEL_61;
        }

        if (v84 == 3)
        {
          break;
        }

        if (v84 != 4)
        {
          goto LABEL_82;
        }

LABEL_89:
        sub_1003D46A4(*(v0 + 376), *(v0 + 360), type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 320) = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v76[2] + 1, 1);
          v76 = *(v0 + 320);
        }

        v94 = v76[2];
        v93 = v76[3];
        if (v94 >= v93 >> 1)
        {
          sub_10052642C(v93 > 1, v94 + 1, 1);
          v76 = *(v0 + 320);
        }

        v96 = *(v0 + 352);
        v95 = *(v0 + 360);
        v76[2] = v94 + 1;
        sub_1003D46A4(v95, v76 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v94 * v82, type metadata accessor for RegisteredXPCClient);
        *(v0 + 664) = v76;
        if (!v73)
        {
          goto LABEL_62;
        }
      }

      *(v0 + 280) = &type metadata for NativeDistributor;
      *(v0 + 288) = sub_1003000A4();
      *(v0 + 256) = v103;
      *(v0 + 264) = v108;
      v85 = sub_100006D8C((v0 + 256), &type metadata for NativeDistributor);
      v87 = *v85;
      v86 = v85[1];
      v88 = *v85 == 0xD000000000000012 && 0x80000001006C2DF0 == v86;
      if (v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v87 == 0xD000000000000014 ? (v89 = 0x80000001006C47D0 == v86) : (v89 = 0), v89))
      {

        sub_10000710C(v0 + 256);
        goto LABEL_89;
      }

      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C(v0 + 256);
      if (v90)
      {
        goto LABEL_89;
      }

LABEL_61:
      sub_1003D470C(*(v0 + 376), type metadata accessor for RegisteredXPCClient);
      *(v0 + 664) = v76;
      if (!v73)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v77 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_103;
    }

    if (v77 >= v74)
    {
      break;
    }

    v73 = *(v70 + 8 * v77);
    ++v75;
    if (v73)
    {
      v75 = v77;
      goto LABEL_66;
    }
  }

  os_unfair_lock_unlock(v101 + 4);
  v97 = swift_task_alloc();
  *(v0 + 672) = v97;
  v97[2] = v76;
  v97[3] = v102;
  v97[4] = 0;
  v97[5] = 0;
  v98 = swift_task_alloc();
  *(v0 + 680) = v98;
  *v98 = v0;
  v98[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D2294()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);

  sub_1002706F8(v2, v1);

  return _swift_task_switch(sub_1003D23F8, 0, 0);
}

uint64_t sub_1003D23F8()
{
  v106 = *(v0 + 719);
  v1 = *(v0 + 576);
  v103 = *(v0 + 600);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 416);
  v100 = *(v0 + 424);
  v101 = *(v0 + 584);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 384);

  v10 = *(v4 + 32);
  v10(v2, v3, v5);
  sub_10000710C(v0 + 160);
  v11 = *(v9 + 48);
  v12 = v8 + *(v9 + 64);
  v10(v8, v2, v5);
  (*(v6 + 32))(v8 + v11, v100, v7);
  *v12 = v101;
  *(v12 + 8) = v103;
  *(v12 + 16) = v106;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_104:
    v14 = sub_10036313C(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10036313C(v15 > 1, v16 + 1, 1, v14);
  }

  v18 = *(v0 + 392);
  v17 = *(v0 + 400);
  *(v14 + 16) = v16 + 1;
  sub_1003D45D0(v17, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
  v19 = *(v0 + 528);
  v20 = *(v0 + 520);
  *(v0 + 512) = v14;
  v21 = (v20 - 1) & v20;
  if (v21)
  {
    v22 = *(v0 + 336);
LABEL_10:
    *(v0 + 528) = v19;
    *(v0 + 520) = v21;
    v24 = (*(v22 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v21)))));
    *(v0 + 536) = *v24;
    *(v0 + 544) = v24[1];
    v25 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 552) = v25;

    return _swift_task_switch(sub_1003D00DC, v25, 0);
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v22 = *(v0 + 336);
    if (v23 >= (((1 << *(v0 + 717)) + 63) >> 6))
    {
      break;
    }

    v21 = *(v22 + 8 * v23 + 56);
    ++v19;
    if (v21)
    {
      v19 = v23;
      goto LABEL_10;
    }
  }

  v26 = *(v0 + 716);

  sub_100006D8C((v0 + 16), *(v0 + 40));

  sub_10066969C(v14);

  if ((v26 & 1) == 0)
  {
    *(v0 + 688) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v62 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v0 + 696) = v62;

    v63 = swift_task_alloc();
    *(v0 + 704) = v63;
    *v63 = v0;
    v63[1] = sub_1003D38A0;

    return sub_10066B8F0(v62);
  }

  v27 = *(v0 + 336);
  v28 = -1;
  v29 = -1 << *(v27 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v27 + 56);
  v31 = (63 - v29) >> 6;

  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_17:
  v104 = v33;
  *(v0 + 616) = v33;
  while (v30)
  {
LABEL_24:
    v30 &= v30 - 1;
    v38 = objc_allocWithZone(v34[437]);

    v39 = String._bridgeToObjectiveC()();

    *(v0 + 312) = 0;
    v40 = [v38 p_name[301]];

    v41 = *(v0 + 312);
    if (v40)
    {
      v42 = v41;
      v14 = [v40 iTunesMetadata];
      v43 = [v14 distributorInfo];

      v44 = [v43 distributorID];
      if (!v44)
      {
        goto LABEL_44;
      }

      v14 = v44;
      v45 = v40;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v107 = v45;
      v49 = [v45 bundleIdentifier];
      if (v49)
      {
        v50 = v49;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        if (v46 == v14 && v48 == v52)
        {
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          if ((v14 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v55 = [v43 domain];
        v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        p_name = (&stru_100779FF8 + 8);
        v40 = v107;
        if (v55)
        {
          v14 = v55;
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v56;

          *(v0 + 240) = &type metadata for WebDistributor;
          v54 = sub_100231E84();
          goto LABEL_36;
        }

LABEL_44:

        *(v0 + 248) = 0;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;

        sub_1000032A8(v0 + 216, &unk_10077FA50);
      }

      else
      {
LABEL_32:
        *(v0 + 240) = &type metadata for NativeDistributor;
        v54 = sub_1003000A4();
LABEL_36:
        *(v0 + 248) = v54;

        *(v0 + 216) = v46;
        *(v0 + 224) = v48;
        sub_1001F0C48(&qword_10077E970);
        if (swift_dynamicCast())
        {
          v58 = *(v0 + 296);
          v57 = *(v0 + 304);
          p_name = (&stru_100779FF8 + 8);
          v14 = v107;
          if ((v58 != 0xD000000000000012 || 0x80000001006C2DF0 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v58 != 0xD000000000000014 || 0x80000001006C47D0 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v104 = sub_100363B64(0, *(v104 + 2) + 1, 1, v104);
            }

            v60 = *(v104 + 2);
            v59 = *(v104 + 3);
            v14 = v60 + 1;
            if (v60 >= v59 >> 1)
            {
              v104 = sub_100363B64((v59 > 1), v60 + 1, 1, v104);
            }

            *(v104 + 2) = v14;
            v61 = &v104[16 * v60];
            *(v61 + 4) = v58;
            *(v61 + 5) = v57;
            v33 = v104;
            v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
            goto LABEL_17;
          }

          v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        }

        else
        {

          p_name = (&stru_100779FF8 + 8);
        }
      }
    }

    else
    {
      v36 = v41;
      v14 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  while (1)
  {
    v37 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_102;
    }

    if (v37 >= v31)
    {
      break;
    }

    v30 = *(*(v0 + 336) + 8 * v37 + 56);
    ++v32;
    if (v30)
    {
      v32 = v37;
      goto LABEL_24;
    }
  }

  v64 = *(v104 + 2);
  *(v0 + 624) = v64;
  if (!v64)
  {

    sub_10000710C(v0 + 16);

    v96 = *(v0 + 8);

    return v96();
  }

  *(v0 + 632) = 0;
  v65 = *(v0 + 616);
  if (!v65[2])
  {
    __break(1u);
  }

  v66 = v65[5];
  v102 = v65[4];
  *(v0 + 640) = v66;
  v67 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 648) = v67;
  v14 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v0 + 656) = v14;
  v108 = v66;

  v99 = v14;

  os_unfair_lock_lock((v67 + 16));
  v98 = v67;
  v68 = *(v67 + 24);
  v69 = v68 + 64;
  v70 = -1;
  v71 = -1 << *(v68 + 32);
  if (-v71 < 64)
  {
    v70 = ~(-1 << -v71);
  }

  v72 = v70 & *(v68 + 64);
  v73 = (63 - v71) >> 6;
  v105 = v68;

  v74 = 0;
  v75 = _swiftEmptyArrayStorage;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  if (v72)
  {
    while (1)
    {
      while (1)
      {
LABEL_66:
        v77 = *(v0 + 368);
        v14 = *(v0 + 376);
        v78 = *(v0 + 344);
        v79 = __clz(__rbit64(v72));
        v72 &= v72 - 1;
        v80 = *(*(v0 + 352) + 72);
        sub_1003D4640(*(v105 + 56) + v80 * (v79 | (v74 << 6)), v77);
        sub_1003D46A4(v77, v14, type metadata accessor for RegisteredXPCClient);
        v81 = (v14 + *(v78 + 24));
        v82 = v81[1];
        if (v82 <= 2)
        {
          if (!v82)
          {
            goto LABEL_61;
          }

          if ((v82 - 1) < 2)
          {
            goto LABEL_89;
          }

LABEL_82:
          v88 = v102 == *v81 && v82 == v108;
          if (v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_89;
          }

          goto LABEL_61;
        }

        if (v82 == 3)
        {
          break;
        }

        if (v82 != 4)
        {
          goto LABEL_82;
        }

LABEL_89:
        sub_1003D46A4(*(v0 + 376), *(v0 + 360), type metadata accessor for RegisteredXPCClient);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 320) = v75;
        if ((v89 & 1) == 0)
        {
          sub_10052642C(0, v75[2] + 1, 1);
          v75 = *(v0 + 320);
        }

        v91 = v75[2];
        v90 = v75[3];
        v14 = v91 + 1;
        if (v91 >= v90 >> 1)
        {
          sub_10052642C(v90 > 1, v91 + 1, 1);
          v75 = *(v0 + 320);
        }

        v93 = *(v0 + 352);
        v92 = *(v0 + 360);
        v75[2] = v14;
        sub_1003D46A4(v92, v75 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + v91 * v80, type metadata accessor for RegisteredXPCClient);
        *(v0 + 664) = v75;
        if (!v72)
        {
          goto LABEL_62;
        }
      }

      *(v0 + 280) = &type metadata for NativeDistributor;
      *(v0 + 288) = sub_1003000A4();
      *(v0 + 256) = v102;
      *(v0 + 264) = v108;
      v83 = sub_100006D8C((v0 + 256), &type metadata for NativeDistributor);
      v85 = *v83;
      v84 = v83[1];
      v86 = *v83 == 0xD000000000000012 && 0x80000001006C2DF0 == v84;
      if (v86 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v85 == 0xD000000000000014 ? (v87 = 0x80000001006C47D0 == v84) : (v87 = 0), v87))
      {

        sub_10000710C(v0 + 256);
        goto LABEL_89;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C(v0 + 256);
      if (v14)
      {
        goto LABEL_89;
      }

LABEL_61:
      sub_1003D470C(*(v0 + 376), type metadata accessor for RegisteredXPCClient);
      *(v0 + 664) = v75;
      if (!v72)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v76 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_103;
    }

    if (v76 >= v73)
    {
      break;
    }

    v72 = *(v69 + 8 * v76);
    ++v74;
    if (v72)
    {
      v74 = v76;
      goto LABEL_66;
    }
  }

  os_unfair_lock_unlock(v98 + 4);
  v94 = swift_task_alloc();
  *(v0 + 672) = v94;
  v94[2] = v75;
  v94[3] = v99;
  v94[4] = 0;
  v94[5] = 0;
  v95 = swift_task_alloc();
  *(v0 + 680) = v95;
  *v95 = v0;
  v95[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D315C()
{

  return _swift_task_switch(sub_1003D32C4, 0, 0);
}

uint64_t sub_1003D32C4()
{
  v1 = v0[79];
  v2 = v0[78];

  if (v1 + 1 == v2)
  {

    sub_10000710C((v0 + 2));

    v3 = v0[1];

    return v3();
  }

  v5 = v0[79] + 1;
  v0[79] = v5;
  v6 = v0[77];
  if (v5 >= *(v6 + 16))
  {
LABEL_49:
    __break(1u);
  }

  v7 = v6 + 16 * v5;
  v8 = *(v7 + 40);
  v45 = *(v7 + 32);
  v0[80] = v8;
  v9 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  v0[81] = v9;
  v10 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  v0[82] = v10;
  v47 = v8;

  v44 = v10;

  os_unfair_lock_lock((v9 + 16));
  v43 = v9;
  v11 = *(v9 + 24);
  v14 = *(v11 + 64);
  v13 = v11 + 64;
  v12 = v14;
  v15 = -1;
  v16 = -1 << *(*(v9 + 24) + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & v12;
  v18 = (63 - v16) >> 6;
  v46 = *(v9 + 24);

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v0[83] = _swiftEmptyArrayStorage;
  if (v17)
  {
    while (1)
    {
      while (1)
      {
LABEL_16:
        v23 = v0[46];
        v22 = v0[47];
        v24 = v0[43];
        v25 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v26 = *(v0[44] + 72);
        sub_1003D4640(*(v46 + 56) + v26 * (v25 | (v19 << 6)), v23);
        sub_1003D46A4(v23, v22, type metadata accessor for RegisteredXPCClient);
        v27 = (v22 + *(v24 + 24));
        v28 = v27[1];
        if (v28 <= 2)
        {
          if (!v28)
          {
            goto LABEL_11;
          }

          if ((v28 - 1) < 2)
          {
            goto LABEL_39;
          }

LABEL_32:
          v35 = v45 == *v27 && v28 == v47;
          if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_39;
          }

          goto LABEL_11;
        }

        if (v28 == 3)
        {
          break;
        }

        if (v28 != 4)
        {
          goto LABEL_32;
        }

LABEL_39:
        sub_1003D46A4(v0[47], v0[45], type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[40] = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v20[2] + 1, 1);
          v20 = v0[40];
        }

        v38 = v20[2];
        v37 = v20[3];
        if (v38 >= v37 >> 1)
        {
          sub_10052642C(v37 > 1, v38 + 1, 1);
          v20 = v0[40];
        }

        v40 = v0[44];
        v39 = v0[45];
        v20[2] = v38 + 1;
        sub_1003D46A4(v39, v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + v38 * v26, type metadata accessor for RegisteredXPCClient);
        v0[83] = v20;
        if (!v17)
        {
          goto LABEL_12;
        }
      }

      v0[35] = &type metadata for NativeDistributor;
      v0[36] = sub_1003000A4();
      v0[32] = v45;
      v0[33] = v47;
      v29 = sub_100006D8C(v0 + 32, &type metadata for NativeDistributor);
      v31 = *v29;
      v30 = v29[1];
      v32 = *v29 == 0xD000000000000012 && 0x80000001006C2DF0 == v30;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v31 == 0xD000000000000014 ? (v33 = 0x80000001006C47D0 == v30) : (v33 = 0), v33))
      {

        sub_10000710C((v0 + 32));
        goto LABEL_39;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C((v0 + 32));
      if (v34)
      {
        goto LABEL_39;
      }

LABEL_11:
      sub_1003D470C(v0[47], type metadata accessor for RegisteredXPCClient);
      v0[83] = v20;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v13 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_16;
    }
  }

  os_unfair_lock_unlock(v43 + 4);
  v41 = swift_task_alloc();
  v0[84] = v41;
  v41[2] = v20;
  v41[3] = v44;
  v41[4] = 0;
  v41[5] = 0;
  v42 = swift_task_alloc();
  v0[85] = v42;
  *v42 = v0;
  v42[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D38A0()
{

  return _swift_task_switch(sub_1003D3A08, 0, 0);
}

uint64_t sub_1003D3A08()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D3B18()
{

  return swift_deallocClassInstance();
}

void sub_1003D3B74(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for MarketplaceUpdateEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_1003D3BE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50 = 0;
  type metadata accessor for MarketplaceUpdateEntity.Entity();
  v12 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v13 = sub_10047EDB4(a2 & 1, a3);
  [v12 setPredicate:v13];

  if (a1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v46 = a4;
      v47 = a5;
      v48 = v12;

      v15 = (a1 + 33);
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
      while (1)
      {
        v18 = *(v15 - 1);
        if (*v15)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          if (v23 >= v22 >> 1)
          {
            v16 = sub_100009530((v22 > 1), v23 + 1, 1, v16);
          }

          *(v16 + 2) = v23 + 1;
          v24 = &v16[16 * v23];
          *(v24 + 4) = v19;
          *(v24 + 5) = v21;
          if (v18 <= 3)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v31 = *(v16 + 2);
          v30 = *(v16 + 3);
          if (v31 >= v30 >> 1)
          {
            v16 = sub_100009530((v30 > 1), v31 + 1, 1, v16);
          }

          *(v16 + 2) = v31 + 1;
          v32 = &v16[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          if (v18 <= 3)
          {
LABEL_19:
            if (v18 > 1)
            {
              if (v18 == 2)
              {
                v26 = 0x695F656C646E7562;
                v25 = 0xE900000000000064;
              }

              else
              {
                v26 = 0x765F656C646E7562;
                v25 = 0xEE006E6F69737265;
              }
            }

            else
            {
              v26 = 0x5F746E756F636361;
              v25 = 0xEA00000000006469;
              if (v18)
              {
                v26 = 0x726168735F707061;
                v25 = 0xED00006C72755F65;
              }
            }

            goto LABEL_30;
          }
        }

        if (v18 <= 5)
        {
          if (v18 == 4)
          {
            v25 = 0xE700000000000000;
            v26 = 0x6C72755F706461;
          }

          else
          {
            v26 = 0xD00000000000001ALL;
            v25 = 0x80000001006C2BB0;
          }
        }

        else if (v18 == 6)
        {
          v26 = 0xD000000000000014;
          v25 = 0x80000001006C3EA0;
        }

        else if (v18 == 7)
        {
          v25 = 0xE700000000000000;
          v26 = 0x64695F6D657469;
        }

        else
        {
          v26 = 0x5F6E6F6973726576;
          v25 = 0xEA00000000006469;
        }

LABEL_30:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
        }

        v34 = *(v17 + 2);
        v33 = *(v17 + 3);
        if (v34 >= v33 >> 1)
        {
          v17 = sub_100009530((v33 > 1), v34 + 1, 1, v17);
        }

        *(v17 + 2) = v34 + 1;
        v35 = &v17[16 * v34];
        *(v35 + 4) = v26;
        *(v35 + 5) = v25;
        v15 += 2;
        if (!--v14)
        {

          v12 = v48;
          a4 = v46;
          a5 = v47;
          goto LABEL_37;
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage;
LABEL_37:
    sub_100235974(v16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingDirections:isa];

    sub_100235974(v17);

    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingProperties:v37];
  }

  v38 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v12];
  v39 = swift_allocObject();
  v39[2] = &v50;
  v39[3] = a4;
  v39[4] = a5;
  v39[5] = a6;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1003D47BC;
  *(v40 + 24) = v39;
  aBlock[4] = sub_100302FA4;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_100763998;
  v41 = _Block_copy(aBlock);
  v42 = a6;

  [v38 enumeratePersistentIDsUsingBlock:v41];

  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v45 = v50;

    return v45;
  }

  return result;
}

uint64_t sub_1003D41C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1003D4268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_1003CE61C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003D4334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1003CB8E4(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D43F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_1004606B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003D4518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1003CEFFC(a1, v4, v5, v6);
}

uint64_t sub_1003D45D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F378);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D4640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteredXPCClient();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D46A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003D470C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003D476C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1003D47C8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_lockedCachedValues];
  v5 = sub_1003D53C0();
  *v4 = 0;
  *(v4 + 1) = v5;
  v6 = &v1[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_clientRegistry] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = objc_opt_self();
  v9 = v7;
  result = [v8 sharedConnection];
  if (result)
  {
    v11 = result;
    [result registerObserver:v9];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003D48C0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask]);
  if (*(v2 + 1))
  {
    Task.cancel()();
  }

  *(v2 + 1) = 0;

  os_unfair_lock_unlock(v2);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    [result unregisterObserver:v0];

    v5.receiver = v0;
    v5.super_class = ObjectType;
    return objc_msgSendSuper2(&v5, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D4A14(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask;
  os_unfair_lock_lock(v8);
  if (*(v8 + 8))
  {
    Task.cancel()();
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;

  *(v8 + 8) = sub_1004A673C(0, 0, v7, &unk_1006A91A0, v10);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1003D4B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003D4C3C, 0, 0);
}

uint64_t sub_1003D4C3C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1003D4D08;

  return sub_10049E724(1500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003D4D08()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003D4FEC;
  }

  else
  {
    v5 = sub_1003D4E78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003D4E78()
{
  *(v0 + 72) = type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003D4F10, v2, v1);
}

uint64_t sub_1003D4F10()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    (*(v0 + 16))();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D4FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003D5054()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003D53C0();
  v7 = v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_lockedCachedValues;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_lockedCachedValues));
  if (*(v7 + 8) != v6)
  {
    static Logger.library.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "[DeviceConfigurationObserver] Notifying clients about age rating change: %ld", v10, 0xCu);
    }

    (*(v3 + 8))(v5, v2);
    sub_10066C170();
  }

  *(v7 + 8) = v6;
  os_unfair_lock_unlock(v7);
}

uint64_t sub_1003D5300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_1003D4B7C(a1, v4, v5, v7, v6);
}

id sub_1003D53C0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005F5804();
  static Logger.library.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "[DeviceConfigurationObserver] Received age rating: %ld", v7, 0xCu);
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1003D5514(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_1007834A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id *sub_1003D557C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v96 = *v4;
  v91 = type metadata accessor for Logger();
  v90 = *(v91 - 8);
  v12 = __chkstk_darwin(v91);
  v89 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v77 = &v74[-v14];
  v15 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v15 - 8);
  v86 = &v74[-v16];
  v85 = sub_1001F0C48(&qword_1007835A0);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v74[-v17];
  v83 = sub_1001F0C48(&qword_1007835A8);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v88 = &v74[-v18];
  v80 = sub_1001F0C48(&qword_1007835B0);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v74[-v19];
  v20 = type metadata accessor for UUID();
  v93 = *(v20 - 8);
  v94 = v20;
  __chkstk_darwin(v20);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001F0C48(&qword_1007835B8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10069E990;
  *(v23 + 32) = 0;
  *(v23 + 40) = type metadata accessor for IPA_PreambleTask();
  *(v23 + 48) = &off_10075FAA8;
  *(v23 + 56) = 1;
  *(v23 + 64) = type metadata accessor for IPA_DownloadTask();
  *(v23 + 72) = &off_10076F370;
  *(v23 + 80) = 2;
  *(v23 + 88) = type metadata accessor for IPA_InstallTask();
  *(v23 + 96) = &off_1007609E0;
  *(v23 + 104) = 3;
  *(v23 + 112) = type metadata accessor for IPA_PostambleTask();
  *(v23 + 120) = &off_100770100;
  *(v23 + 128) = 7;
  v24 = type metadata accessor for IPA_FailTask();
  *(v23 + 136) = v24;
  *(v23 + 144) = &off_10076D518;
  *(v23 + 152) = 4;
  *(v23 + 160) = v24;
  *(v23 + 168) = &off_10076D518;
  v25 = a3[3];
  v100 = a3;
  v26 = *(*sub_100006D8C(a3, v25) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  v95 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_progressCache;
  *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_progressCache) = v26;
  type metadata accessor for AppInstallEntity.Entity();
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v92 = a1;
  v28 = [v27 initWithPersistentID:a1 onConnection:a2];
  if (([v28 existsInDatabase] & 1) == 0)
  {

    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v31 = a4;
    goto LABEL_5;
  }

  v87 = a4;
  v29 = sub_100533460(5, v28);
  if (!v6)
  {
    v33 = (v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID);
    *v33 = v29;
    v33[1] = v30;
    sub_1005335D8(14, v28, v22);
    v34 = a2;
    v35 = *(v93 + 32);
    v76 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
    v35(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID, v22, v94);
    *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority) = sub_100533870(31, v28);
    v36 = sub_100533A20(22, v28);
    v37 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey;
    *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey) = v36;
    v38 = sub_1005AFEA0(a2, v92);
    if (v38)
    {
      v39 = v38;
      v40 = sub_100533B84(7, v38);
      v89 = v39;
      if (v40)
      {
        v75 = v40;
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v51 & 1) == 0)
        {
          v92 = v37;

          v52 = v77;
          static Logger.install.getter();

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v86 = v56;
            v88 = swift_slowAlloc();
            v98[0] = v88;
            *v55 = 138412546;
            v57 = *(v7 + v92);
            *(v55 + 4) = v57;
            *v56 = v57;
            *(v55 + 12) = 2082;
            v97[0] = v75 & 1;
            v58 = v57;
            v59 = String.init<A>(describing:)();
            v61 = sub_1002346CC(v59, v60, v98);

            *(v55 + 14) = v61;
            _os_log_impl(&_mh_execute_header, v53, v54, "[%@] Expected package format 'ipa' but found '%{public}s'", v55, 0x16u);
            sub_1000032A8(v86, &qword_10077F920);
            v34 = a2;

            sub_10000710C(v88);

            (*(v90 + 8))(v77, v91);
          }

          else
          {

            (*(v90 + 8))(v52, v91);
          }

          v73 = v87;
          type metadata accessor for InternalError();
          sub_100274098();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v50 = v73;
LABEL_13:
          sub_10000710C(v50);
          (*(v93 + 8))(v7 + v76, v94);

          goto LABEL_6;
        }
      }

      else
      {
      }

      sub_100231CE8(v100, v98);
      v62 = *(v7 + v37);
      v96 = a2;
      sub_10020A980(v87, v97);
      type metadata accessor for AppInstallEngine(0);
      v63 = swift_allocObject();
      v64 = v62;
      v95 = v64;
      swift_defaultActor_initialize();
      (*(v93 + 56))(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_coordinatorID, 1, 1, v94);
      *(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentDownload) = 0;
      *(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask) = 0;
      v63[34] = v23;
      v63[14] = v92;
      v63[15] = v64;
      sub_10020A980(v97, (v63 + 16));
      sub_100231CE8(v98, (v63 + 22));
      v94 = *(*sub_100006D8C(v98, v99) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
      v63[21] = v94;
      v65 = *(*sub_100006D8C(v98, v99) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
      v63[38] = type metadata accessor for AppInstallScheduler(0);
      v63[39] = &off_1007697A8;
      v63[35] = v65;
      type metadata accessor for AppInstallEngine.Event(0);
      v66 = v84;
      v67 = v81;
      v68 = v85;
      (*(v84 + 104))(v81, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v85);
      v95 = v95;

      v69 = v78;
      static AsyncStream.makeStream(of:bufferingPolicy:)();
      (*(v66 + 8))(v67, v68);
      (*(v79 + 32))(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_eventStream, v69, v80);
      (*(v82 + 32))(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_eventContinuation, v88, v83);
      v70 = type metadata accessor for TaskPriority();
      v71 = v86;
      (*(*(v70 - 8) + 56))(v86, 1, 1, v70);
      v72 = swift_allocObject();
      v72[2] = 0;
      v72[3] = 0;
      v72[4] = v63;

      sub_1004F8754(0xD00000000000001BLL, 0x80000001006CAD40, v71, &unk_1006A9240, v72);

      sub_10000710C(v87);
      sub_1000032A8(v71, &unk_100780380);
      sub_10000710C(v97);
      sub_10000710C(v98);
      *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) = v63;
      goto LABEL_7;
    }

    v41 = v89;
    static Logger.install.getter();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v37;
      v47 = v45;
      *v44 = 138412290;
      v48 = *(v7 + v46);
      *(v44 + 4) = v48;
      *v45 = v48;
      v49 = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Attempted to start installation with no packages", v44, 0xCu);
      sub_1000032A8(v47, &qword_10077F920);
    }

    (*(v90 + 8))(v41, v91);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v50 = v87;
    goto LABEL_13;
  }

  v31 = v87;
LABEL_5:
  sub_10000710C(v31);
LABEL_6:

  swift_deallocPartialClassInstance();
LABEL_7:
  sub_10000710C(v100);
  return v7;
}

uint64_t sub_1003D63F8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for URL();
  v2[6] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003D6528, 0, 0);
}

uint64_t sub_1003D6528()
{
  v59 = v0;
  v1 = v0[4];
  static Logger.install.getter();
  v0[2] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v0[12] = v3;
  v4 = *(v1 + 24);
  v0[13] = v4;
  v5 = *(v1 + 32);
  v0[14] = v5;
  v6 = *(v1 + 40);

  sub_1003D7F98((v0 + 2), (v0 + 3));
  v7 = v2;
  sub_1003D8008(v3, v4, v5, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  sub_1000032A8((v0 + 2), &qword_1007835C0);

  v57 = v4;
  v10 = v4;
  v11 = v5;
  sub_1003D802C(v3, v10, v5, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v58 = v15;
    *v13 = 138412546;
    v16 = *(*(v12 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2080;
    v55 = v15;
    v56 = v3;
    if (v6 <= 1)
    {
      if (v6)
      {
        v18 = 0x64656C696166;
      }

      else
      {
        v18 = 0x6574656C706D6F63;
      }

      if (v6)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xE900000000000064;
      }
    }

    else if (v6 == 2)
    {
      v17 = 0xE800000000000000;
      v18 = 0x73736572676F7270;
    }

    else if (v6 == 3)
    {
      v17 = 0xEB00000000726564;
      v18 = 0x6C6F686563616C70;
    }

    else
    {
      v32 = v11 | v57;
      if (v11 | v57 | v3)
      {
        if (v3 != 1 || v32)
        {
          v36 = v32 == 0;
          v37 = v3 == 2;
          if (v37 && v36)
          {
            v18 = 0x64656D75736572;
          }

          else
          {
            v18 = 0x697469726F697270;
          }

          if (v37 && v36)
          {
            v17 = 0xE700000000000000;
          }

          else
          {
            v17 = 0xEB0000000064657ALL;
          }
        }

        else
        {
          v17 = 0xE600000000000000;
          v18 = 0x646573756170;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        v18 = 0x64656C65636E6163;
      }
    }

    v38 = v0[10];
    v53 = v0[9];
    v54 = v0[11];
    v39 = v16;
    v40 = sub_1002346CC(v18, v17, &v58);

    *(v13 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Handling coordinator event '%s'", v13, 0x16u);
    sub_1000032A8(v14, &qword_10077F920);

    sub_10000710C(v55);

    (*(v38 + 8))(v54, v53);
    v3 = v56;
    if (v6 <= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];

    (*(v19 + 8))(v20, v21);
    if (v6 <= 1)
    {
LABEL_49:
      if (!v6)
      {
        if (!v3)
        {
          v49 = v0[8];
          v50 = type metadata accessor for FilePath();
          (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
          goto LABEL_58;
        }

        v41 = v0[7];
        sub_1003D8008(v3, v57, v11, 0);
        v42 = [v3 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        FilePath.init(_:)();
        v43 = type metadata accessor for FilePath();
        v44 = *(v43 - 8);
        v29 = (*(v44 + 48))(v41, 1, v43);
        if (v29 != 1)
        {
          v47 = v0[7];
          v46 = v0[8];
          sub_1003D802C(v3, v57, v11, 0);
          (*(v44 + 32))(v46, v47, v43);
          (*(v44 + 56))(v46, 0, 1, v43);
LABEL_58:
          v51 = swift_task_alloc();
          v0[21] = v51;
          *v51 = v0;
          v51[1] = sub_1003D72A0;
          v52 = v0[8];

          return sub_100636928(v52);
        }

        __break(1u);
        return _swift_task_switch(v29, v27, v45);
      }

      v48 = *(v0[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine);
      v0[16] = v48;
      swift_errorRetain();
      v29 = sub_1003D6FB4;
      v27 = v48;
LABEL_54:
      v45 = 0;

      return _swift_task_switch(v29, v27, v45);
    }
  }

  if (v6 == 2)
  {
    v27 = *(v0[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_progressCache);
    v28 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
    v0[19] = v27;
    v0[20] = v28;
    v29 = sub_1003D71F8;
    goto LABEL_54;
  }

  if (v6 == 3)
  {
    v22 = v0[5];
    v23 = *(v22 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey);
    v24 = *(v22 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority);
    sub_1003D8008(v3, v57, v11, 3);
    sub_100625400(v3, v24, v23);
    sub_1003D802C(v3, v57, v11, 3);

    v25 = v0[1];

    return v25();
  }

  else
  {
    v30 = v11 | v57;
    if (v11 | v57 | v3)
    {
      if (v3 != 1 || v30)
      {
        if (v3 != 2 || v30)
        {
          v35 = swift_task_alloc();
          v0[15] = v35;
          *v35 = v0;
          v35[1] = sub_1003D6E48;

          return sub_10063AE3C();
        }

        else
        {
          v34 = swift_task_alloc();
          v0[26] = v34;
          *v34 = v0;
          v34[1] = sub_1003D7B2C;

          return sub_10063877C();
        }
      }

      else
      {
        sub_100624AC0(*(v0[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID), *(v0[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID + 8), *(v0[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority), *(v0[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey));
        v31 = swift_task_alloc();
        v0[24] = v31;
        *v31 = v0;
        v31[1] = sub_1003D7810;

        return sub_1006378C4();
      }
    }

    else
    {
      v33 = swift_task_alloc();
      v0[22] = v33;
      *v33 = v0;
      v33[1] = sub_1003D7460;

      return sub_1006371A4();
    }
  }
}

uint64_t sub_1003D6E48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003D6FB4()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1003D709C;

  return (sub_10052F328)();
}

uint64_t sub_1003D709C()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {

    v4 = sub_1003D77F4;
  }

  else
  {

    v4 = sub_1003D75CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003D71F8()
{
  sub_100384BD0(*(v0 + 40) + *(v0 + 160), *(v0 + 112) / 100.0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D72A0()
{
  v1 = *(*v0 + 64);

  sub_1000032A8(v1, &qword_10077E958);

  return _swift_task_switch(sub_1003D73C8, 0, 0);
}

uint64_t sub_1003D73C8()
{
  sub_1003D802C(*(v0 + 96), *(v0 + 104), *(v0 + 112), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D7460()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003D75CC()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1003D7660;

  return sub_10063C2D0(7);
}

uint64_t sub_1003D7660()
{

  return _swift_task_switch(sub_1003D775C, 0, 0);
}

uint64_t sub_1003D775C()
{
  sub_1003D802C(*(v0 + 96), *(v0 + 104), *(v0 + 112), 1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D7810()
{

  return _swift_task_switch(sub_1003D790C, 0, 0);
}

uint64_t sub_1003D790C()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_1003D79C0;

  return sub_10038505C(v1 + v2);
}

uint64_t sub_1003D79C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003D7B2C(char a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1003D7C2C, 0, 0);
}

uint64_t sub_1003D7C2C()
{
  if (*(v0 + 216) == 1)
  {
    sub_100624F60(*(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID), *(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID + 8), *(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority), *(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey));
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D7CF0()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IPA_AppInstall()
{
  result = qword_1007834F0;
  if (!qword_1007834F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D7E24()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003D7EE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_10063E48C();
}

uint64_t sub_1003D7F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_1007835C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003D8008(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
    return result;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    return result;
  }

  return swift_errorRetain();
}

void sub_1003D802C(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
LABEL_4:

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1003D8070(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 909455955;
  }

  else
  {
    v3 = 0x6E69616C70;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 909455955;
  }

  else
  {
    v5 = 0x6E69616C70;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003D810C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003D8184()
{
  String.hash(into:)();
}

Swift::Int sub_1003D81E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003D825C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100759FA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003D82BC(uint64_t *a1@<X8>)
{
  v2 = 909455955;
  if (!*v1)
  {
    v2 = 0x6E69616C70;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1003D82FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003D83D8()
{
  String.hash(into:)();
}

Swift::Int sub_1003D84A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003D8578@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DB30C(*a1);
  *a2 = result;
  return result;
}

void sub_1003D85A8(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746963696C706D69;
  v4 = 0xED00006E656B6F74;
  v5 = 0x5F68736572666572;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000002FLL;
    v4 = 0x80000001006C3700;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001006C36D0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

Swift::Int sub_1003D8640()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003D869C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003D86E4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A120, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1003D8760()
{
  String.hash(into:)();
}

unint64_t sub_1003D8874@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DB470(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003D88A4@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00746E696F7064;
  v4 = 0x6E655F6E656B6F74;
  v5 = 0x80000001006C3780;
  v6 = 0xD000000000000015;
  v7 = 0x80000001006C37A0;
  v8 = 0xD000000000000020;
  result = 0xD000000000000018;
  if (v2 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001006C37D0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001006C3760;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001006C3730;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
  return result;
}

unint64_t sub_1003D8980()
{
  v1 = *v0;
  v2 = 0x6E655F6E656B6F74;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000020;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003D8A58@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DB470(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003D8A80(uint64_t a1)
{
  v2 = sub_1003DB150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003D8ABC(uint64_t a1)
{
  v2 = sub_1003DB150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003D8AF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_1001F0C48(&unk_1007809F0);
  v4 = __chkstk_darwin(v3 - 8);
  v111 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v113 = &v100 - v6;
  v115 = type metadata accessor for URL();
  v112 = *(v115 - 8);
  v7 = __chkstk_darwin(v115);
  v110 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v100 - v9;
  v11 = sub_1001F0C48(&qword_1007836A8);
  v114 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v100 - v12;
  v14 = type metadata accessor for OAuthServerMetadata();
  __chkstk_darwin(v14);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D8C(a1, a1[3]);
  sub_1003DB150();
  v17 = v116;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000710C(a1);
  }

  v19 = v115;
  v20 = v113;
  v116 = v10;
  v107 = v16;
  v108 = a1;
  v106 = v14;
  LOBYTE(v118) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v105 = 0;
  URL.init(string:)();

  v21 = v112;
  v22 = v19;
  v23 = v112[6];
  v24 = v23(v20, 1, v22);
  a1 = v108;
  v25 = v114;
  if (v24 == 1)
  {
    sub_10038B5B4(v20);
    type metadata accessor for InternalError();
    sub_1003DAE40(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v25 + 8))(v13, v11);
    return sub_10000710C(a1);
  }

  v26 = v116;
  v113 = v21[4];
  (v113)(v116, v20, v22);
  v104 = v21[2];
  v104(v107, v26, v22);
  LOBYTE(v118) = 1;
  v27 = v11;
  v28 = v105;
  KeyedDecodingContainer.decode(_:forKey:)();
  v105 = v28;
  if (v28)
  {
    v29 = v21[1];
    v29(v26, v115);
    (*(v114 + 8))(v13, v11);
LABEL_9:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_10;
  }

  v30 = v113;
  v102 = v13;
  v103 = v27;
  v31 = v111;
  URL.init(string:)();

  v32 = v23(v31, 1, v115);
  v33 = v114;
  if (v32 == 1)
  {
    sub_10038B5B4(v31);
    type metadata accessor for InternalError();
    sub_1003DAE40(&qword_10077F900, type metadata accessor for InternalError);
    v34 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v105 = v34;
    swift_willThrow();
    v29 = v112[1];
    v29(v116, v115);
    (*(v33 + 8))(v102, v103);
    goto LABEL_9;
  }

  v40 = v110;
  v41 = v115;
  (v30)(v110, v31, v115);
  v42 = v106;
  v104(&v107[v106[5]], v40, v41);
  v43 = sub_1001F0C48(&unk_10077FB40);
  v117 = 2;
  v44 = sub_100006DD0(&qword_100780CA8);
  v45 = v102;
  v46 = v103;
  v47 = v105;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v48 = v41;
  v49 = v116;
  if (v47)
  {
    v105 = v47;
    v29 = v112[1];
    v29(v40, v48);
    v29(v49, v48);
    (*(v114 + 8))(v45, v46);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v35 = 1;
    goto LABEL_10;
  }

  *&v107[v42[6]] = v118;
  v117 = 3;
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v105 = 0;
  v50 = v118;
  if (!v118)
  {
    v64 = &off_10075A1D8;
    v63 = v107;
LABEL_35:
    v65 = v105;
    *&v63[v106[7]] = v64;
    v117 = 4;
    v66 = v103;
    result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = v114;
    v68 = v116;
    v105 = v65;
    if (v65)
    {
      v29 = v112[1];
      v29(v40, v48);
      v29(v68, v48);
      (*(v67 + 8))(v45, v66);
      v38 = 0;
      v35 = 1;
      v36 = 1;
      v37 = 1;
    }

    else
    {
      v69 = v118;
      if (v118)
      {
        v104 = v44;
        v111 = v43;
        v70 = 0;
        v71 = *(v118 + 16);
        v101 = v118 + 40;
        v113 = _swiftEmptyArrayStorage;
LABEL_39:
        v72 = (v101 + 16 * v70);
        while (v71 != v70)
        {
          if (v70 >= *(v69 + 16))
          {
            goto LABEL_65;
          }

          ++v70;
          v73 = *(v72 - 1);
          v74 = *v72;

          v75._countAndFlagsBits = v73;
          v75._object = v74;
          v76 = _findStringSwitchCase(cases:string:)(&off_10075A200, v75);

          if (v76)
          {
            v72 += 2;
            if (v76 != 1)
            {
              continue;
            }
          }

          v77 = v113;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1003637F0(0, *(v77 + 2) + 1, 1, v77);
            v77 = result;
          }

          v79 = *(v77 + 2);
          v78 = *(v77 + 3);
          if (v79 >= v78 >> 1)
          {
            result = sub_1003637F0((v78 > 1), v79 + 1, 1, v77);
            v77 = result;
          }

          *(v77 + 2) = v79 + 1;
          v113 = v77;
          v77[v79 + 32] = v76;
          goto LABEL_39;
        }

        v67 = v114;
        v48 = v115;
        v80 = v107;
      }

      else
      {
        v113 = 0;
        v80 = v107;
      }

      v81 = v105;
      *&v80[v106[8]] = v113;
      v117 = 5;
      v82 = v103;
      result = KeyedDecodingContainer.decode<A>(_:forKey:)();
      v83 = v116;
      v105 = v81;
      if (!v81)
      {
        v84 = 0;
        v85 = v118;
        v86 = *(v118 + 16);
        v87 = (v118 + 40);
        v113 = _swiftEmptyArrayStorage;
        v111 = (v118 + 40);
LABEL_54:
        v88 = &v87[16 * v84];
        while (v86 != v84)
        {
          if (v84 >= *(v85 + 16))
          {
            goto LABEL_66;
          }

          ++v84;
          v89 = v88 + 2;
          v90 = *(v88 - 1);
          v91 = *v88;

          v92._countAndFlagsBits = v90;
          v92._object = v91;
          v93 = _findStringSwitchCase(cases:string:)(&off_10075A250, v92);

          v88 = v89;
          v48 = v115;
          v83 = v116;
          if (!v93)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1003636FC(0, *(v113 + 2) + 1, 1, v113);
              v113 = result;
            }

            v95 = *(v113 + 2);
            v94 = *(v113 + 3);
            v96 = v95 + 1;
            if (v95 >= v94 >> 1)
            {
              result = sub_1003636FC((v94 > 1), v95 + 1, 1, v113);
              v113 = result;
            }

            *(v113 + 2) = v96;
            v87 = v111;
            goto LABEL_54;
          }
        }

        v97 = v40;
        v98 = v112[1];
        v98(v97, v48);
        v98(v83, v48);
        (*(v114 + 8))(v45, v103);
        v99 = v107;
        *&v107[v106[9]] = v113;
        sub_1003DB1A4(v99, v109);
        sub_10000710C(v108);
        return sub_1003DB208(v99);
      }

      v29 = v112[1];
      v29(v40, v48);
      v29(v83, v48);
      (*(v67 + 8))(v45, v82);
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 1;
    }

LABEL_10:
    v39 = v107;
    sub_10000710C(v108);
    result = (v29)(v39, v115);
    if (v35)
    {
      result = (v29)(&v39[v106[5]], v115);
      if (!v36)
      {
LABEL_12:
        if (!v37)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    else if (!v36)
    {
      goto LABEL_12;
    }

    if (!v37)
    {
LABEL_13:
      if (!v38)
      {
        return result;
      }
    }

LABEL_17:

    if (!v38)
    {
      return result;
    }
  }

  v104 = v44;
  v111 = v43;
  v51 = 0;
  v52 = *(v118 + 16);
  v53 = v118 + 40;
  v113 = _swiftEmptyArrayStorage;
  v101 = v118 + 40;
LABEL_24:
  v54 = (v53 + 16 * v51);
  while (1)
  {
    if (v52 == v51)
    {

      v63 = v107;
      v43 = v111;
      v44 = v104;
      v64 = v113;
      goto LABEL_35;
    }

    if (v51 >= *(v50 + 16))
    {
      break;
    }

    ++v51;
    v55 = v54 + 2;
    v56 = *(v54 - 1);
    v57 = *v54;

    v58._countAndFlagsBits = v56;
    v58._object = v57;
    v59 = _findStringSwitchCase(cases:string:)(&off_10075A158, v58);

    v54 = v55;
    v48 = v115;
    if (v59 < 4)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1003638E4(0, *(v113 + 2) + 1, 1, v113);
        v113 = result;
      }

      v60 = v113;
      v62 = *(v113 + 2);
      v61 = *(v113 + 3);
      if (v62 >= v61 >> 1)
      {
        result = sub_1003638E4((v61 > 1), v62 + 1, 1, v113);
        v60 = result;
      }

      *(v60 + 2) = v62 + 1;
      v113 = v60;
      v60[v62 + 32] = v59;
      v53 = v101;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1003D97CC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1001F0C48(&qword_1007836B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  sub_100006D8C(a1, a1[3]);
  sub_1003DB150();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  URL.absoluteString.getter();
  LOBYTE(v54) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
  }

  v11 = type metadata accessor for OAuthServerMetadata();
  URL.absoluteString.getter();
  LOBYTE(v54) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();

  v54 = *(v4 + v11[6]);
  v53 = 2;
  sub_1001F0C48(&qword_100784430);
  sub_1003DB264();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = v11[7];
  v49 = v4;
  v13 = *(v4 + v12);
  v14 = *(v13 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v47 = v11;
    v48 = v6;
    v50 = 0;
    v51 = v7;
    v52 = v9;
    v54 = _swiftEmptyArrayStorage;
    sub_100526304(0, v14, 0);
    v15 = v54;
    v16 = (v13 + 32);
    v17 = 0x80000001006C3700;
    do
    {
      v19 = *v16++;
      v18 = v19;
      v20 = 0xD00000000000002FLL;
      if (v19 == 2)
      {
        v20 = 0x5F68736572666572;
        v21 = 0xED00006E656B6F74;
      }

      else
      {
        v21 = v17;
      }

      if (v18)
      {
        v22 = 0x746963696C706D69;
      }

      else
      {
        v22 = 0xD000000000000012;
      }

      if (v18)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0x80000001006C36D0;
      }

      if (v18 <= 1)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (v18 <= 1)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      v54 = v15;
      v27 = v15[2];
      v26 = v15[3];
      if (v27 >= v26 >> 1)
      {
        v29 = v17;
        sub_100526304((v26 > 1), v27 + 1, 1);
        v17 = v29;
        v15 = v54;
      }

      v15[2] = v27 + 1;
      v28 = &v15[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      --v14;
    }

    while (v14);
    v11 = v47;
    v6 = v48;
    v7 = v51;
    v9 = v52;
    v3 = v50;
  }

  v54 = v15;
  v53 = 3;
  v30 = sub_1001F0C48(&unk_10077FB40);
  v31 = sub_100006DD0(&qword_100780CC0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v3)
  {

    return (*(v7 + 8))(v9, v6);
  }

  v48 = v31;

  v32 = *(v49 + v11[8]);
  if (!v32)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v52 = v9;
  v33 = *(v32 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    v49 = v30;
    v50 = 0;
    v51 = v7;
    v54 = _swiftEmptyArrayStorage;
    sub_100526304(0, v33, 0);
    v34 = v54;
    v35 = (v32 + 32);
    v36 = v54[2];
    v37 = 2 * v36;
    v38 = 0x6E69616C70;
    do
    {
      if (*v35)
      {
        v39 = 909455955;
      }

      else
      {
        v39 = v38;
      }

      if (*v35)
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      v54 = v34;
      v41 = v34[3];
      v42 = v36 + 1;
      if (v36 >= v41 >> 1)
      {
        v44 = v38;
        sub_100526304((v41 > 1), v36 + 1, 1);
        v38 = v44;
        v34 = v54;
      }

      v34[2] = v42;
      v43 = &v34[v37];
      v43[4] = v39;
      v43[5] = v40;
      v37 += 2;
      ++v35;
      v36 = v42;
      --v33;
    }

    while (v33);
    v7 = v51;
  }

  v54 = v34;
  v53 = 4;
  v45 = v52;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v7 + 8))(v45, v6);
}

uint64_t sub_1003D9D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003D9F54, 0, 0);
}

uint64_t sub_1003D9F54()
{
  if (os_variant_has_internal_content())
  {
    *(v0 + 240) = 0;
    v1 = String._bridgeToObjectiveC()();
    v2 = String._bridgeToObjectiveC()();
    CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 240));
  }

  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  sub_1005D6FB4(v7, v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10038B5B4(*(v0 + 112));
    type metadata accessor for InternalError();
    sub_1003DAE40(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = *(v0 + 96);
    v24 = *(v0 + 88);
    v25 = *(v0 + 80);
    v26 = *(v0 + 40);
    (*(v13 + 32))(v11, *(v0 + 112), v14);
    v17 = *(v13 + 16);
    *(v0 + 168) = v17;
    *(v0 + 176) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v10, v11, v14);
    v17(v12, v10, v14);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    URLRequest.httpBody.setter();
    v18 = *(v13 + 8);
    *(v0 + 184) = v18;
    *(v0 + 192) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v10, v14);
    (*(v24 + 16))(v16, v15, v25);
    v19.value._countAndFlagsBits = sub_10051E4A4(*(v26 + 24));
    v20._countAndFlagsBits = 0x6567412D72657355;
    v20._object = 0xEA0000000000746ELL;
    URLRequest.setValue(_:forHTTPHeaderField:)(v19, v20);

    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    URLRequest.httpShouldHandleCookies.setter();
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_1003DA3BC;
    v22 = *(v0 + 96);
    v23 = *(v0 + 48);

    return sub_10051E728(v22, v23);
  }
}

uint64_t sub_1003DA3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[26] = a1;
  v5[27] = a2;
  v5[28] = a3;
  v5[29] = v3;

  if (v3)
  {
    v6 = sub_1003DAA68;
  }

  else
  {
    v6 = sub_1003DA500;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003DA500()
{
  v53 = v0;
  v1 = v0[28];
  v2 = v0[13];
  v3 = v0[10];
  v4 = *(v0[11] + 8);
  v4(v0[12], v3);
  v4(v2, v3);
  if ([v1 statusCode] != 200)
  {
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    v15 = [v12 statusCode];
    sub_10039403C();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    swift_willThrow();

    v10 = v14;
    v11 = v13;
    goto LABEL_5;
  }

  v5 = v0[29];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v6 = type metadata accessor for OAuthServerMetadata();
  sub_1003DAE40(&qword_100782870, type metadata accessor for OAuthServerMetadata);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  if (v5)
  {

    v10 = v9;
    v11 = v7;
LABEL_5:
    sub_100007158(v10, v11);
    v17 = v0[21];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[15];
    v21 = v0[6];
    static Logger.general.getter();
    v17(v19, v18, v20);
    v22 = v21;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[23];
    v27 = v0[17];
    v28 = v0[15];
    v29 = v0[8];
    v30 = v0[9];
    v31 = v0[7];
    if (v25)
    {
      log = v23;
      v32 = v0[6];
      v51 = v0[9];
      v33 = swift_slowAlloc();
      v47 = v24;
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      *v33 = 138412802;
      *(v33 + 4) = v32;
      *v34 = v32;
      *(v33 + 12) = 2082;
      v35 = v32;
      v36 = URL.absoluteString.getter();
      v50 = v31;
      v38 = v37;
      v26(v27, v28);
      v39 = sub_1002346CC(v36, v38, &v52);

      *(v33 + 14) = v39;
      *(v33 + 22) = 2114;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v40;
      v34[1] = v40;
      _os_log_impl(&_mh_execute_header, log, v47, "[%@] Error trying to load OAuth endpoints from: %{public}s: %{public}@", v33, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v49);

      (*(v29 + 8))(v51, v50);
    }

    else
    {

      v26(v27, v28);
      (*(v29 + 8))(v30, v31);
    }

    v41 = v0[23];
    v42 = v0[20];
    v43 = v0[15];
    swift_willThrow();
    v41(v42, v43);

    v44 = v0[1];
    goto LABEL_9;
  }

  v46 = v0[2];
  (v0[23])(v0[20], v0[15]);

  sub_100007158(v9, v7);
  (*(*(v6 - 8) + 56))(v46, 0, 1, v6);

  v44 = v0[1];
LABEL_9:

  return v44();
}

uint64_t sub_1003DAA68()
{
  v38 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[12], v2);
  v3(v1, v2);
  v4 = v0[21];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[15];
  v8 = v0[6];
  static Logger.general.getter();
  v4(v6, v5, v7);
  v9 = v8;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.error.getter();

  v36 = v5;
  v11 = os_log_type_enabled(v10, v5);
  v12 = v0[23];
  v13 = v0[17];
  v14 = v0[15];
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[7];
  if (v11)
  {
    log = v10;
    v18 = v0[6];
    v35 = v0[9];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v19 = 138412802;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2082;
    v21 = v18;
    v22 = URL.absoluteString.getter();
    v34 = v17;
    v24 = v23;
    v12(v13, v14);
    v25 = sub_1002346CC(v22, v24, &v37);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v26;
    v20[1] = v26;
    _os_log_impl(&_mh_execute_header, log, v36, "[%@] Error trying to load OAuth endpoints from: %{public}s: %{public}@", v19, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v33);

    (*(v15 + 8))(v35, v34);
  }

  else
  {

    v12(v13, v14);
    (*(v15 + 8))(v16, v17);
  }

  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[15];
  swift_willThrow();
  v27(v28, v29);

  v30 = v0[1];

  return v30();
}

uint64_t type metadata accessor for OAuthServerMetadata()
{
  result = qword_100783620;
  if (!qword_100783620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DAE40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003DAEB0()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10037F848(319, &qword_100783630, &unk_10077FB40);
    if (v1 <= 0x3F)
    {
      sub_1003DAFCC(319, &qword_100783638);
      if (v2 <= 0x3F)
      {
        sub_10037F848(319, &qword_100783640, &qword_100783648);
        if (v3 <= 0x3F)
        {
          sub_1003DAFCC(319, &unk_100783650);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003DAFCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1003DB04C()
{
  result = qword_100783690;
  if (!qword_100783690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783690);
  }

  return result;
}

unint64_t sub_1003DB0A4()
{
  result = qword_100783698;
  if (!qword_100783698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783698);
  }

  return result;
}

unint64_t sub_1003DB0FC()
{
  result = qword_1007836A0;
  if (!qword_1007836A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007836A0);
  }

  return result;
}

unint64_t sub_1003DB150()
{
  result = qword_1007836B0;
  if (!qword_1007836B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007836B0);
  }

  return result;
}

uint64_t sub_1003DB1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthServerMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DB208(uint64_t a1)
{
  v2 = type metadata accessor for OAuthServerMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DB264()
{
  result = qword_1007836C0;
  if (!qword_1007836C0)
  {
    sub_1001F76D0(&qword_100784430);
    sub_100006DD0(&qword_100780CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007836C0);
  }

  return result;
}

unint64_t sub_1003DB30C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759FF0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003DB36C()
{
  result = qword_1007836C8;
  if (!qword_1007836C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007836C8);
  }

  return result;
}

unint64_t sub_1003DB3C4()
{
  result = qword_1007836D0;
  if (!qword_1007836D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007836D0);
  }

  return result;
}

unint64_t sub_1003DB41C()
{
  result = qword_1007836D8;
  if (!qword_1007836D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007836D8);
  }

  return result;
}

unint64_t sub_1003DB470(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A070, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003DB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a3;
  v4[46] = a4;
  v4[43] = a1;
  v4[44] = a2;
  sub_1001F0C48(&qword_10077F380);
  v4[47] = swift_task_alloc();
  v5 = type metadata accessor for ManagedAppStatus.Reason();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsInstallStateResult();
  v4[52] = v6;
  v4[53] = *(v6 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_10077F388);
  v4[58] = v7;
  v4[59] = *(v7 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsScope();
  v4[62] = v8;
  v4[63] = *(v8 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v9 = type metadata accessor for DMCAppsClient();
  v4[70] = v9;
  v4[71] = *(v9 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[75] = v10;
  v4[76] = *(v10 - 8);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();

  return _swift_task_switch(sub_1003DB874, 0, 0);
}

uint64_t sub_1003DB874()
{
  v50 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  static Logger.ddm.getter();
  v3 = v2;
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 672);
  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  if (v7)
  {
    v47 = *(v0 + 672);
    v11 = *(v0 + 368);
    v12 = *(v0 + 352);
    v46 = *(v0 + 600);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49 = v15;
    *v13 = 138412546;
    *(v13 + 4) = v11;
    *v14 = v11;
    *(v13 + 12) = 2082;
    v16 = v12 == 0;
    if (v12)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v16)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = v11;
    v20 = sub_1002346CC(v17, v18, &v49);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] DMC: configurationApplied, appAlreadyPresent = %{public}s", v13, 0x16u);
    sub_1000032A8(v14, &qword_10077F920);

    sub_10000710C(v15);

    v21 = *(v9 + 8);
    v21(v47, v46);
  }

  else
  {

    v21 = *(v9 + 8);
    v21(v8, v10);
  }

  *(v0 + 680) = v21;
  v22 = *(v0 + 552);
  v23 = *(v0 + 544);
  v25 = *(v0 + 496);
  v24 = *(v0 + 504);
  v26 = *(v0 + 488);
  v27 = *(v0 + 472);
  v48 = *(v0 + 464);
  v29 = *(v0 + 344);
  v28 = *(v0 + 352);
  v30 = *(v29 + *(type metadata accessor for DDMDeclaration(0) + 76));
  *(v0 + 872) = v30;
  v31 = *(v24 + 104);
  *(v0 + 688) = v31;
  if (v30)
  {
    v32 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v32 = &enum case for DMCAppsScope.system(_:);
  }

  v31(v23, *v32, v25);
  v33 = *(v24 + 32);
  *(v0 + 696) = v33;
  *(v0 + 704) = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v33(v22, v23, v25);
  DMCAppsClient.init(scope:)();
  v34 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v29, v34, v35, v28, v26);

  *(v0 + 40) = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *(v0 + 712) = OpaqueTypeConformance2;
  *(v0 + 48) = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  *(v0 + 720) = v37;
  *(v0 + 56) = v37;
  v38 = swift_getOpaqueTypeConformance2();
  *(v0 + 728) = v38;
  *(v0 + 64) = v38;
  v39 = swift_getOpaqueTypeConformance2();
  *(v0 + 736) = v39;
  *(v0 + 72) = v39;
  v40 = swift_getOpaqueTypeConformance2();
  *(v0 + 744) = v40;
  *(v0 + 80) = v40;
  v41 = sub_10020A748((v0 + 16));
  v42 = *(v27 + 16);
  *(v0 + 752) = v42;
  *(v0 + 760) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v41, v26, v48);
  v43 = swift_task_alloc();
  *(v0 + 768) = v43;
  *v43 = v0;
  v43[1] = sub_1003DBC70;
  v44 = *(v0 + 456);

  return DMCAppsClient.configurationApplied(_:appAlreadyPresent:)(v44, v0 + 16, v28 != 0);
}

uint64_t sub_1003DBC70()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003DBD74, 0, 0);
}

uint64_t sub_1003DBD74()
{
  v198 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 416);
  v4 = *(v0 + 424);
  v5 = *(v0 + 368);
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 680);
  v12 = *(v0 + 664);
  v189 = v6;
  v13 = *(v0 + 600);
  v14 = *(v0 + 448);
  if (v10)
  {
    v181 = *(v0 + 600);
    v184 = *(v0 + 680);
    v15 = *(v0 + 440);
    v16 = *(v0 + 416);
    v17 = *(v0 + 424);
    v175 = v9;
    v18 = *(v0 + 368);
    v178 = *(v0 + 664);
    v19 = swift_slowAlloc();
    logb = v8;
    v20 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v197[0] = v172;
    *v19 = 138412546;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2082;
    v6(v15, v14, v16);
    v21 = v18;
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = *(v17 + 8);
    v25(v14, v16);
    v26 = sub_1002346CC(v22, v24, v197);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, logb, v175, "[%@] DMC: configurationApplied -> %{public}s", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v172);

    v184(v178, v181);
  }

  else
  {
    v27 = *(v0 + 416);
    v28 = *(v0 + 424);

    v25 = *(v28 + 8);
    v25(v14, v27);
    v11(v12, v13);
  }

  *(v0 + 776) = v25;
  v30 = *(v0 + 424);
  v29 = *(v0 + 432);
  v31 = *(v0 + 416);
  v189(v29, *(v0 + 456), v31);
  v32 = (*(v30 + 88))(v29, v31);
  if (v32 == enum case for DMCAppsInstallStateResult.failInternalError(_:))
  {
    v33 = *(v0 + 432);
    v34 = *(v0 + 368);
    (*(*(v0 + 424) + 96))(v33, *(v0 + 416));
    v35 = *v33;
    *(v0 + 848) = *v33;
    v36 = v33[1];
    *(v0 + 856) = v36;
    static Logger.ddm.getter();
    v37 = v34;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 680);
    v42 = *(v0 + 616);
    v43 = *(v0 + 600);
    if (v40)
    {
      v194 = *(v0 + 680);
      v44 = *(v0 + 368);
      v190 = *(v0 + 616);
      v45 = swift_slowAlloc();
      v185 = v43;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v197[0] = v47;
      *v45 = 138412546;
      *(v45 + 4) = v44;
      *v46 = v44;
      *(v45 + 12) = 2082;
      v48 = v44;
      *(v45 + 14) = sub_1002346CC(v35, v36, v197);
      _os_log_impl(&_mh_execute_header, v38, v39, "[%@] An internal error ocurred: %{public}s", v45, 0x16u);
      sub_1000032A8(v46, &qword_10077F920);

      sub_10000710C(v47);

      v194(v190, v185);
    }

    else
    {

      v41(v42, v43);
    }

    (*(*(v0 + 392) + 56))(*(v0 + 376), 1, 1, *(v0 + 384));
    v64 = swift_task_alloc();
    *(v0 + 864) = v64;
    *v64 = v0;
    v65 = sub_1003DEC34;
LABEL_15:
    v64[1] = v65;
    v67 = *(v0 + 368);
    v66 = *(v0 + 376);
    v68 = *(v0 + 344);

    return sub_10030B39C(v68, v66, 1, v67);
  }

  if (v32 == enum case for DMCAppsInstallStateResult.optional(_:))
  {
    v49 = *(v0 + 368);
    static Logger.ddm.getter();
    v50 = v49;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 368);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v53;
      *v55 = v53;
      v56 = v53;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%@] Optional", v54, 0xCu);
      sub_1000032A8(v55, &qword_10077F920);
    }

    v57 = *(v0 + 680);
    v58 = *(v0 + 656);
    v59 = *(v0 + 600);

    v57(v58, v59);
    v60 = swift_task_alloc();
    *(v0 + 784) = v60;
    *v60 = v0;
    v60[1] = sub_1003DD33C;
    v61 = *(v0 + 368);
    v62 = *(v0 + 344);

    return sub_100305BE8(v62, 1, v61);
  }

  if (v32 == enum case for DMCAppsInstallStateResult.notPresent(_:))
  {
    v69 = *(v0 + 592);
    v70 = v25;
    v71 = *(v0 + 568);
    v72 = *(v0 + 560);
    v73 = *(v0 + 488);
    v74 = *(v0 + 464);
    v75 = *(v0 + 472);
    v76 = *(v0 + 456);
    v77 = *(v0 + 416);
    v195 = 0xD000000000000030;
    *(v0 + 328) = 0xD000000000000030;
    *(v0 + 336) = 0x80000001006CAE00;
    v186 = v69;
    v191 = 0x80000001006CAE00;
    sub_100270870();
LABEL_20:
    swift_willThrowTypedImpl();
    v70(v76, v77);
    (*(v75 + 8))(v73, v74);
    (*(v71 + 8))(v186, v72);

    v78 = *(v0 + 8);

    return v78(v195, v191);
  }

  if (v32 == enum case for DMCAppsInstallStateResult.install(_:))
  {
    v79 = *(v0 + 352);
    if (v79)
    {
      if (sub_1003EC948(v79, *(v0 + 368)))
      {
        v80 = (v0 + 352);
        v81 = 2;
LABEL_27:
        v196 = v81;

LABEL_36:
        v84 = *(v0 + 592);
        v85 = *(v0 + 568);
        v86 = *(v0 + 560);
        v87 = *(v0 + 488);
        v88 = *(v0 + 464);
        v89 = *(v0 + 472);
        (*(v0 + 776))();
        (*(v89 + 8))(v87, v88);
        (*(v85 + 8))(v84, v86);

        v90 = *(v0 + 8);

        return v90(v196);
      }

      v91 = *(v0 + 368);
      (*(*(v0 + 392) + 104))(*(v0 + 408), enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), *(v0 + 384));
      static Logger.ddm.getter();
      v92 = v91;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = *(v0 + 368);
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v96 = 138412290;
        *(v96 + 4) = v95;
        *v97 = v95;
        v98 = v95;
        _os_log_impl(&_mh_execute_header, v93, v94, "[%@] DMC: installFailed", v96, 0xCu);
        sub_1000032A8(v97, &qword_10077F920);
      }

      v192 = *(v0 + 752);
      v187 = *(v0 + 744);
      v167 = *(v0 + 696);
      v165 = *(v0 + 688);
      v163 = *(v0 + 872);
      v99 = *(v0 + 680);
      v100 = *(v0 + 648);
      v101 = *(v0 + 600);
      v102 = *(v0 + 536);
      v103 = *(v0 + 528);
      v104 = *(v0 + 496);
      v173 = *(v0 + 480);
      v182 = *(v0 + 464);
      log = *(v0 + 344);
      v179 = *(v0 + 712);
      v176 = *(v0 + 728);

      v99(v100, v101);
      v105 = &enum case for DMCAppsScope.user(_:);
      if (!v163)
      {
        v105 = &enum case for DMCAppsScope.system(_:);
      }

      v165(v103, *v105, v104);
      v167(v102, v103, v104);
      DMCAppsClient.init(scope:)();
      v106 = DMCAppsClient.organizationName.getter();
      sub_1003E92D4(log, v106, v107, 0, v173);

      *(v0 + 184) = v182;
      *(v0 + 192) = v179;
      *(v0 + 208) = v176;
      *(v0 + 224) = v187;
      v108 = sub_10020A748((v0 + 160));
      v192(v108, v173, v182);
      v109 = swift_task_alloc();
      *(v0 + 792) = v109;
      *v109 = v0;
      v109[1] = sub_1003DD66C;
      v110 = v0 + 160;
LABEL_44:

      return DMCAppsClient.installFailed(_:)(v110);
    }

    v82 = 2;
    goto LABEL_35;
  }

  if (v32 == enum case for DMCAppsInstallStateResult.installPromptConsent(_:))
  {
    v82 = 3;
    goto LABEL_35;
  }

  if (v32 == enum case for DMCAppsInstallStateResult.installPromptTakeOver(_:))
  {
    v83 = *(v0 + 352);
    if (v83)
    {
      if (sub_1003EC948(v83, *(v0 + 368)))
      {
        v80 = (v0 + 352);
        v81 = 4;
        goto LABEL_27;
      }

      v129 = *(v0 + 368);
      (*(*(v0 + 392) + 104))(*(v0 + 400), enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), *(v0 + 384));
      static Logger.ddm.getter();
      v130 = v129;
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = *(v0 + 368);
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *v134 = 138412290;
        *(v134 + 4) = v133;
        *v135 = v133;
        v136 = v133;
        _os_log_impl(&_mh_execute_header, v131, v132, "[%@] DMC: installFailed", v134, 0xCu);
        sub_1000032A8(v135, &qword_10077F920);
      }

      v193 = *(v0 + 752);
      v188 = *(v0 + 744);
      v168 = *(v0 + 696);
      v166 = *(v0 + 688);
      v164 = *(v0 + 872);
      v137 = *(v0 + 680);
      v138 = *(v0 + 640);
      v139 = *(v0 + 600);
      v140 = *(v0 + 520);
      v141 = *(v0 + 512);
      v142 = *(v0 + 496);
      v174 = *(v0 + 480);
      v183 = *(v0 + 464);
      loga = *(v0 + 344);
      v180 = *(v0 + 712);
      v177 = *(v0 + 728);

      v137(v138, v139);
      v143 = &enum case for DMCAppsScope.user(_:);
      if (!v164)
      {
        v143 = &enum case for DMCAppsScope.system(_:);
      }

      v166(v141, *v143, v142);
      v168(v140, v141, v142);
      DMCAppsClient.init(scope:)();
      v144 = DMCAppsClient.organizationName.getter();
      sub_1003E92D4(loga, v144, v145, 0, v174);

      *(v0 + 112) = v183;
      *(v0 + 120) = v180;
      *(v0 + 136) = v177;
      *(v0 + 152) = v188;
      v146 = sub_10020A748((v0 + 88));
      v193(v146, v174, v183);
      v147 = swift_task_alloc();
      *(v0 + 808) = v147;
      *v147 = v0;
      v147[1] = sub_1003DDC3C;
      v110 = v0 + 88;
      goto LABEL_44;
    }

    v82 = 4;
LABEL_35:
    v196 = v82;
    goto LABEL_36;
  }

  if (v32 != enum case for DMCAppsInstallStateResult.updated(_:))
  {
    if (v32 == enum case for DMCAppsInstallStateResult.failCannotTakeOverManagement(_:))
    {
      v115 = *(v0 + 368);
      static Logger.ddm.getter();
      v116 = v115;
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = *(v0 + 368);
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v120 = 138412290;
        *(v120 + 4) = v119;
        *v121 = v119;
        v122 = v119;
        _os_log_impl(&_mh_execute_header, v117, v118, "[%@] Cannot take over management", v120, 0xCu);
        sub_1000032A8(v121, &qword_10077F920);
      }

      v123 = *(v0 + 680);
      v124 = *(v0 + 632);
      v125 = *(v0 + 600);
      v126 = *(v0 + 384);
      v127 = *(v0 + 392);
      v128 = *(v0 + 376);

      v123(v124, v125);
      (*(v127 + 104))(v128, enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), v126);
      (*(v127 + 56))(v128, 0, 1, v126);
      v64 = swift_task_alloc();
      *(v0 + 832) = v64;
      *v64 = v0;
      v65 = sub_1003DE538;
      goto LABEL_15;
    }

    if (v32 == enum case for DMCAppsInstallStateResult.failSystemApp(_:))
    {
      v148 = *(v0 + 368);
      static Logger.ddm.getter();
      v149 = v148;
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = *(v0 + 368);
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        *v153 = 138412290;
        *(v153 + 4) = v152;
        *v154 = v152;
        v155 = v152;
        _os_log_impl(&_mh_execute_header, v150, v151, "[%@] Cannot manage system app", v153, 0xCu);
        sub_1000032A8(v154, &qword_10077F920);
      }

      v156 = *(v0 + 680);
      v157 = *(v0 + 624);
      v158 = *(v0 + 600);
      v159 = *(v0 + 384);
      v160 = *(v0 + 392);
      v161 = *(v0 + 376);

      v156(v157, v158);
      (*(v160 + 104))(v161, enum case for ManagedAppStatus.Reason.isSystemApp(_:), v159);
      (*(v160 + 56))(v161, 0, 1, v159);
      v64 = swift_task_alloc();
      *(v0 + 840) = v64;
      *v64 = v0;
      v65 = sub_1003DE8B8;
      goto LABEL_15;
    }

    if (v32 != enum case for DMCAppsInstallStateResult.failInvalidCodeSignature(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v162 = *(v0 + 592);
    v70 = v25;
    v71 = *(v0 + 568);
    v72 = *(v0 + 560);
    v73 = *(v0 + 488);
    v74 = *(v0 + 464);
    v75 = *(v0 + 472);
    v76 = *(v0 + 456);
    v77 = *(v0 + 416);
    v195 = 0xD00000000000003ELL;
    *(v0 + 248) = 0xD00000000000003ELL;
    *(v0 + 256) = 0x80000001006CADC0;
    v186 = v162;
    v191 = 0x80000001006CADC0;
    sub_100270870();
    goto LABEL_20;
  }

  v111 = swift_task_alloc();
  *(v0 + 824) = v111;
  *v111 = v0;
  v111[1] = sub_1003DE208;
  v112 = *(v0 + 368);
  v114 = *(v0 + 344);
  v113 = *(v0 + 352);

  return sub_1003088B8(v114, v113, 1, v112);
}

uint64_t sub_1003DD33C()
{

  return _swift_task_switch(sub_1003DD438, 0, 0);
}

uint64_t sub_1003DD438()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 488);
  v5 = *(v0 + 464);
  v6 = *(v0 + 472);
  (*(v0 + 776))();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1003DD66C()
{
  v1 = *v0;

  sub_10000710C(v1 + 160);

  return _swift_task_switch(sub_1003DD770, 0, 0);
}

uint64_t sub_1003DD770()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  (*(v2 + 16))(v3, v0[51], v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  v4[1] = sub_1003DD860;
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[43];

  return sub_10030B39C(v7, v5, 1, v6);
}

uint64_t sub_1003DD860()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003DD988, 0, 0);
}

uint64_t sub_1003DD988()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[70];
  v16 = v0[61];
  v17 = v0[74];
  v13 = v0[58];
  v15 = v0[57];
  v4 = v0[53];
  v14 = v0[52];
  v5 = v0[51];
  v7 = v0[48];
  v6 = v0[49];
  v11 = v0[44];
  v12 = *(v0[59] + 8);
  (v12)(v0[60]);
  v8 = *(v2 + 8);
  v8(v1, v3);
  (*(v6 + 8))(v5, v7);
  v0[39] = 0;
  v0[40] = 1;
  sub_100270870();
  swift_willThrowTypedImpl();

  (*(v4 + 8))(v15, v14);
  v12(v16, v13);
  v8(v17, v3);

  v9 = v0[1];

  return v9(0, 1);
}

uint64_t sub_1003DDC3C()
{
  v1 = *v0;

  sub_10000710C(v1 + 88);

  return _swift_task_switch(sub_1003DDD40, 0, 0);
}

uint64_t sub_1003DDD40()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[48];
  (*(v1 + 16))(v2, v0[50], v3);
  (*(v1 + 56))(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[102] = v4;
  *v4 = v0;
  v4[1] = sub_1003DDE2C;
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[43];

  return sub_10030B39C(v7, v5, 1, v6);
}

uint64_t sub_1003DDE2C()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003DDF54, 0, 0);
}

uint64_t sub_1003DDF54()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v16 = v0[61];
  v17 = v0[74];
  v13 = v0[58];
  v15 = v0[57];
  v4 = v0[53];
  v14 = v0[52];
  v5 = v0[49];
  v6 = v0[50];
  v7 = v0[48];
  v11 = v0[44];
  v12 = *(v0[59] + 8);
  (v12)(v0[60]);
  v8 = *(v2 + 8);
  v8(v1, v3);
  (*(v5 + 8))(v6, v7);
  v0[37] = 0;
  v0[38] = 1;
  sub_100270870();
  swift_willThrowTypedImpl();

  (*(v4 + 8))(v15, v14);
  v12(v16, v13);
  v8(v17, v3);

  v9 = v0[1];

  return v9(0, 1);
}

uint64_t sub_1003DE208()
{

  return _swift_task_switch(sub_1003DE304, 0, 0);
}

uint64_t sub_1003DE304()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 488);
  v5 = *(v0 + 464);
  v6 = *(v0 + 472);
  (*(v0 + 776))();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(5);
}

uint64_t sub_1003DE538()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003DE660, 0, 0);
}

uint64_t sub_1003DE660()
{
  v1 = v0[97];
  v11 = v0[74];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];
  v8 = v0[52];
  v0[35] = 0;
  v0[36] = 1;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9(0, 1);
}

uint64_t sub_1003DE8B8()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003DE9E0, 0, 0);
}

uint64_t sub_1003DE9E0()
{
  v1 = v0[97];
  v11 = v0[74];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];
  v8 = v0[52];
  sub_100270870();
  v0[33] = 0;
  v0[34] = 0;
  swift_willThrowTypedImpl();
  v1(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_1003DEC34()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003DED5C, 0, 0);
}

uint64_t sub_1003DED5C()
{
  v1 = v0[97];
  v11 = v0[74];
  v13 = v0[107];
  v2 = v0[71];
  v10 = v0[70];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v7 = v0[52];
  v0[29] = v0[106];
  v0[30] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v10);
  v12 = v0[106];

  v8 = v0[1];

  return v8(v12, v13);
}

uint64_t sub_1003DEFC0(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = type metadata accessor for DMCAppsRemoveStateResult();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_10077F388);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsScope();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsClient();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1003DF244, 0, 0);
}

uint64_t sub_1003DF244()
{
  v1 = v0[12];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: configurationRemoved", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[33];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v3;
  v15 = v0[22];
  v16 = v0[23];
  v28 = v0[20];
  v26 = v0[21];
  v27 = v0[19];
  v17 = v0[11];

  v18 = *(v10 + 8);
  v0[34] = v18;
  v0[35] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v9, v11);
  if (*(v17 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v19 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v19 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v16 + 104))(v13, *v19, v15);
  (*(v16 + 32))(v12, v13, v15);
  DMCAppsClient.init(scope:)();
  v20 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v17, v20, v21, 0, v26);

  v0[5] = v27;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v22 = sub_10020A748(v0 + 2);
  (*(v28 + 16))(v22, v26, v27);
  v23 = swift_task_alloc();
  v0[36] = v23;
  *v23 = v0;
  v23[1] = sub_1003DF560;
  v24 = v0[18];

  return DMCAppsClient.configurationRemoved(_:)(v24, v0 + 2);
}

uint64_t sub_1003DF560()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003DF664, 0, 0);
}

uint64_t sub_1003DF664()
{
  v85 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[34];
  v12 = v0[32];
  v80 = v6;
  v81 = v0[29];
  v13 = v0[17];
  if (v10)
  {
    v77 = v0[32];
    v14 = v0[16];
    v15 = v0[13];
    v16 = v0[14];
    v73 = v9;
    v17 = v0[12];
    v75 = v0[34];
    v18 = swift_slowAlloc();
    log = v8;
    v19 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v84 = v71;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v19 = v17;
    *(v18 + 12) = 2082;
    v6(v14, v13, v15);
    v20 = v17;
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v24 = *(v16 + 8);
    v24(v13, v15);
    v25 = sub_1002346CC(v21, v23, &v84);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v73, "[%@] DMC: configurationRemoved -> %{public}s", v18, 0x16u);
    sub_1000032A8(v19, &qword_10077F920);

    sub_10000710C(v71);

    v75(v77, v81);
  }

  else
  {
    v26 = v0[13];
    v27 = v0[14];

    v24 = *(v27 + 8);
    v24(v13, v26);
    v11(v12, v81);
  }

  v29 = v0[14];
  v28 = v0[15];
  v30 = v0[13];
  v80(v28, v0[18], v30);
  v31 = (*(v29 + 88))(v28, v30);
  if (v31 == enum case for DMCAppsRemoveStateResult.failInternalError(_:))
  {
    v32 = v0[15];
    v33 = v0[12];
    (*(v0[14] + 96))(v32, v0[13]);
    v34 = *v32;
    v35 = v32[1];
    v69 = v34;
    static Logger.ddm.getter();
    v36 = v33;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v78 = v0[31];
    v79 = v0[34];
    v40 = v0[28];
    v76 = v0[29];
    v41 = v0[26];
    v42 = v0[27];
    v44 = v0[20];
    v43 = v0[21];
    v82 = v0[19];
    v72 = v0[13];
    v74 = v0[18];
    if (v39)
    {
      v67 = v24;
      v45 = v0[12];
      v68 = v0[28];
      v46 = swift_slowAlloc();
      v65 = v43;
      v47 = swift_slowAlloc();
      v66 = v41;
      v48 = swift_slowAlloc();
      v84 = v48;
      *v46 = 138412546;
      *(v46 + 4) = v45;
      *v47 = v45;
      *(v46 + 12) = 2082;
      v49 = v45;
      v50 = sub_1002346CC(v69, v35, &v84);

      *(v46 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%@] An internal error ocurred: %{public}s", v46, 0x16u);
      sub_1000032A8(v47, &qword_10077F920);

      sub_10000710C(v48);

      v79(v78, v76);
      v67(v74, v72);
      (*(v44 + 8))(v65, v82);
      (*(v42 + 8))(v68, v66);
    }

    else
    {

      v79(v78, v76);
      v24(v74, v72);
      (*(v44 + 8))(v43, v82);
      (*(v42 + 8))(v40, v41);
    }

    goto LABEL_10;
  }

  if (v31 == enum case for DMCAppsRemoveStateResult.uninstall(_:))
  {
    v52 = v0[27];
    v51 = v0[28];
    v53 = v0[26];
    v55 = v0[20];
    v54 = v0[21];
    v56 = v0[19];
    v24(v0[18], v0[13]);
    (*(v55 + 8))(v54, v56);
    (*(v52 + 8))(v51, v53);
LABEL_10:
    v83 = 1;
    goto LABEL_11;
  }

  if (v31 != enum case for DMCAppsRemoveStateResult.leave(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v60 = v0[27];
  v59 = v0[28];
  v61 = v0[26];
  v63 = v0[20];
  v62 = v0[21];
  v64 = v0[19];
  v24(v0[18], v0[13]);
  (*(v63 + 8))(v62, v64);
  (*(v60 + 8))(v59, v61);
  v83 = 0;
LABEL_11:

  v57 = v0[1];

  return v57(v83);
}

uint64_t sub_1003DFD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for DDMDeclaration(0);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsDidRemoveConfigurationStateResult();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_10077F388);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsScope();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v9 = type metadata accessor for DMCAppsClient();
  v3[32] = v9;
  v3[33] = *(v9 - 8);
  v3[34] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[35] = v10;
  v3[36] = *(v10 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003E0068, 0, 0);
}

uint64_t sub_1003E0068()
{
  v1 = v0[13];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: didRemoveConfiguration", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v3;
  v16 = v0[28];
  v15 = v0[29];
  v27 = v0[27];
  v29 = v0[26];
  v28 = v0[25];
  v17 = v0[14];
  v18 = v0[11];

  v19 = *(v10 + 8);
  v0[40] = v19;
  v0[41] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v9, v11);
  if (*(v18 + *(v17 + 76)))
  {
    v20 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v20 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v15 + 104))(v13, *v20, v16);
  (*(v15 + 32))(v12, v13, v16);
  DMCAppsClient.init(scope:)();
  v21 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v18, v21, v22, 0, v27);

  v0[5] = v28;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v23 = sub_10020A748(v0 + 2);
  (*(v29 + 16))(v23, v27, v28);
  v24 = swift_task_alloc();
  v0[42] = v24;
  *v24 = v0;
  v24[1] = sub_1003E0384;
  v25 = v0[24];

  return DMCAppsClient.didRemoveConfiguration(_:)(v25, v0 + 2);
}

uint64_t sub_1003E0384()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003E0488, 0, 0);
}

uint64_t sub_1003E0488()
{
  v90 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[13];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[40];
  v12 = v0[38];
  v87 = v0[35];
  v13 = v0[23];
  if (v10)
  {
    v78 = v0[38];
    v14 = v0[22];
    v15 = v0[19];
    v16 = v0[20];
    v72 = v9;
    v17 = v0[13];
    v75 = v0[40];
    v18 = swift_slowAlloc();
    v83 = v6;
    v19 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v89 = v71;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v19 = v17;
    *(v18 + 12) = 2082;
    v83(v14, v13, v15);
    v20 = v17;
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v86 = *(v16 + 8);
    v86(v13, v15);
    v24 = sub_1002346CC(v21, v23, &v89);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v8, v72, "[%@] DMC: didRemoveConfiguration -> %{public}s", v18, 0x16u);
    sub_1000032A8(v19, &qword_10077F920);
    v6 = v83;

    sub_10000710C(v71);

    v75(v78, v87);
  }

  else
  {
    v25 = v0[19];
    v26 = v0[20];

    v86 = *(v26 + 8);
    v86(v13, v25);
    v11(v12, v87);
  }

  v28 = v0[20];
  v27 = v0[21];
  v29 = v0[19];
  v6(v27, v0[24], v29);
  v30 = (*(v28 + 88))(v27, v29);
  if (v30 == enum case for DMCAppsDidRemoveConfigurationStateResult.failInternalError(_:))
  {
    v31 = v0[21];
    v32 = v0[13];
    (*(v0[20] + 96))(v31, v0[19]);
    v33 = *v31;
    v34 = v31[1];
    v70 = v33;
    static Logger.ddm.getter();
    v35 = v32;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v81 = v0[37];
    v84 = v0[40];
    v39 = v0[34];
    v40 = v0[32];
    v41 = v0[33];
    v43 = v0[26];
    v42 = v0[27];
    v44 = v0[25];
    v76 = v0[24];
    v79 = v0[35];
    v73 = v0[19];
    if (v38)
    {
      v69 = v0[25];
      v45 = v0[13];
      v68 = v0[34];
      v46 = swift_slowAlloc();
      v66 = v42;
      v47 = swift_slowAlloc();
      v67 = v40;
      v48 = swift_slowAlloc();
      v89 = v48;
      *v46 = 138412546;
      *(v46 + 4) = v45;
      *v47 = v45;
      *(v46 + 12) = 2082;
      v49 = v45;
      v50 = sub_1002346CC(v70, v34, &v89);

      *(v46 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] An internal error ocurred: %{public}s", v46, 0x16u);
      sub_1000032A8(v47, &qword_10077F920);

      sub_10000710C(v48);

      v84(v81, v79);
      v86(v76, v73);
      (*(v43 + 8))(v66, v69);
      (*(v41 + 8))(v68, v67);
    }

    else
    {

      v84(v81, v79);
      v86(v76, v73);
      (*(v43 + 8))(v42, v44);
      (*(v41 + 8))(v39, v40);
    }
  }

  else
  {
    if (v30 != enum case for DMCAppsDidRemoveConfigurationStateResult.ok(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v51 = v0[33];
    v88 = v0[34];
    v52 = v0[26];
    v82 = v0[27];
    v85 = v0[32];
    v77 = v0[24];
    v80 = v0[25];
    v74 = v0[19];
    v54 = v0[17];
    v53 = v0[18];
    v55 = v0[15];
    v56 = v0[16];
    v58 = v0[12];
    v57 = v0[13];
    v59 = v0[11];
    v60 = type metadata accessor for TaskPriority();
    (*(*(v60 - 8) + 56))(v53, 1, 1, v60);
    sub_1003ED34C(v59, v54);
    v61 = (*(v55 + 80) + 40) & ~*(v55 + 80);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v58;
    sub_1003ED3B0(v54, v62 + v61);
    *(v62 + ((v56 + v61 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v63 = v57;

    sub_1004A673C(0, 0, v53, &unk_10069FC70, v62);

    v86(v77, v74);
    (*(v52 + 8))(v82, v80);
    (*(v51 + 8))(v88, v85);
  }

  v64 = v0[1];

  return v64();
}

uint64_t sub_1003E0BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  sub_1001F0C48(&qword_10077F3A0);
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  v4[18] = swift_task_alloc();
  updated = type metadata accessor for DMCAppsWillUpdateStateResult();
  v4[19] = updated;
  v4[20] = *(updated - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F388);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsScope();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsClient();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[35] = v9;
  v4[36] = *(v9 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003E0EF4, 0, 0);
}

uint64_t sub_1003E0EF4()
{
  v1 = v0[16];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: willUpdate", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[30];
  v13 = v0[31];
  v14 = v3;
  v16 = v0[28];
  v15 = v0[29];
  v28 = v0[25];
  v29 = v0[26];
  v17 = v0[13];
  v26 = v0[27];
  v27 = v0[14];

  v18 = *(v10 + 8);
  v0[40] = v18;
  v0[41] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v9, v11);
  if (*(v17 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v19 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v19 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v15 + 104))(v12, *v19, v16);
  (*(v15 + 32))(v13, v12, v16);
  DMCAppsClient.init(scope:)();
  v20 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v17, v20, v21, v27, v26);

  v0[5] = v28;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v22 = sub_10020A748(v0 + 2);
  (*(v29 + 16))(v22, v26, v28);
  v23 = swift_task_alloc();
  v0[42] = v23;
  *v23 = v0;
  v23[1] = sub_1003E120C;
  v24 = v0[24];

  return DMCAppsClient.willUpdate(_:)(v24, v0 + 2);
}

uint64_t sub_1003E120C()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003E1310, 0, 0);
}

uint64_t sub_1003E1310()
{
  v68 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[16];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[40];
  v64 = v0[35];
  v66 = v0[38];
  v12 = v0[23];
  if (v10)
  {
    v61 = v0[40];
    v62 = v6;
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[20];
    v60 = v9;
    v16 = v0[16];
    v17 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v67 = v59;
    *v17 = 138412546;
    *(v17 + 4) = v16;
    *v58 = v16;
    *(v17 + 12) = 2082;
    v62(v13, v12, v14);
    v18 = v16;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v12, v14);
    v6 = v62;
    v23 = sub_1002346CC(v19, v21, &v67);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v60, "[%@] DMC: willUpdate -> %{public}s", v17, 0x16u);
    sub_1000032A8(v58, &qword_10077F920);

    sub_10000710C(v59);

    v61(v66, v64);
  }

  else
  {
    v24 = v0[19];
    v25 = v0[20];

    v22 = *(v25 + 8);
    v22(v12, v24);
    v11(v66, v64);
  }

  v0[43] = v22;
  v27 = v0[20];
  v26 = v0[21];
  v28 = v0[19];
  v6(v26, v0[24], v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for DMCAppsWillUpdateStateResult.failInternalError(_:))
  {
    v30 = v0[21];
    v31 = v0[16];
    (*(v0[20] + 96))(v30, v0[19]);
    v32 = *v30;
    v0[45] = *v30;
    v33 = v30[1];
    v0[46] = v33;
    static Logger.ddm.getter();
    v34 = v31;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[40];
    v39 = v0[37];
    v40 = v0[35];
    if (v37)
    {
      v41 = v0[16];
      v65 = v0[40];
      v42 = swift_slowAlloc();
      v63 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v42 = 138412546;
      *(v42 + 4) = v41;
      *v43 = v41;
      *(v42 + 12) = 2082;
      v45 = v41;
      *(v42 + 14) = sub_1002346CC(v32, v33, &v67);
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] An internal error ocurred: %{public}s", v42, 0x16u);
      sub_1000032A8(v43, &qword_10077F920);

      sub_10000710C(v44);

      v65(v63, v40);
    }

    else
    {

      v38(v39, v40);
    }

    v50 = v0[18];
    v51 = enum case for ManagedAppStatus.Reason.updateFailed(_:);
    v52 = type metadata accessor for ManagedAppStatus.Reason();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v50, v51, v52);
    (*(v53 + 56))(v50, 0, 1, v52);
    v54 = swift_task_alloc();
    v0[47] = v54;
    *v54 = v0;
    v54[1] = sub_1003E1BBC;
    v55 = v0[18];
    v56 = v0[16];
    v57 = v0[13];

    return sub_10030B39C(v57, v55, 0, v56);
  }

  else if (v29 == enum case for DMCAppsWillUpdateStateResult.proceed(_:))
  {
    v46 = swift_task_alloc();
    v0[44] = v46;
    *v46 = v0;
    v46[1] = sub_1003E1950;
    v47 = v0[16];
    v48 = v0[13];

    return sub_100307250(v48, 0, v47);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E1950()
{

  return _swift_task_switch(sub_1003E1A4C, 0, 0);
}

uint64_t sub_1003E1A4C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  (*(v0 + 344))(*(v0 + 192), *(v0 + 152));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E1BBC()
{
  v1 = *(*v0 + 144);

  sub_1000032A8(v1, &qword_10077F380);
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_1003ED304(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E1D4C, v3, v2);
}

uint64_t sub_1003E1D4C()
{
  v1 = v0[17];
  v2 = enum case for ManagedAppStatus.UpdateState.failed(_:);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v4 = *(updated - 8);
  (*(v4 + 104))(v1, v2, updated);
  (*(v4 + 56))(v1, 0, 1, updated);
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_1003E1E90;
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[13];

  return sub_10030E4E0(v7, v8, 1, v6);
}

uint64_t sub_1003E1E90()
{
  v1 = *(*v0 + 136);

  sub_1000032A8(v1, &qword_10077F3A0);

  return _swift_task_switch(sub_1003E1FB8, 0, 0);
}

uint64_t sub_1003E1FB8()
{
  v13 = v0[46];
  v2 = v0[33];
  v1 = v0[34];
  v12 = v0[32];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[19];
  v8 = v0[20];
  v0[11] = v0[45];
  v0[12] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  (*(v8 + 8))(v5, v7);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];
  v10 = v0[45];

  return v9(v10, v13);
}

uint64_t sub_1003E2160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  sub_1001F0C48(&qword_10077F380);
  v3[31] = swift_task_alloc();
  v4 = type metadata accessor for ManagedAppStatus.Reason();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsOptionalInstallStateResult();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F388);
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsScope();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsClient();
  v3[51] = v8;
  v3[52] = *(v8 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[55] = v9;
  v3[56] = *(v9 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_1003E24D0, 0, 0);
}

uint64_t sub_1003E24D0()
{
  v45 = v0;
  v1 = *(v0 + 232);
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 496);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  if (v5)
  {
    v9 = *(v0 + 232);
    v42 = *(v0 + 496);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v44 = v12;
    *v10 = 138412546;
    v13 = sub_100625FA0();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2082;
    if (v9)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v9)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_1002346CC(v14, v15, &v44);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: optionalAppRequested, appAlreadyPresent = %{public}s", v10, 0x16u);
    sub_1000032A8(v11, &qword_10077F920);

    sub_10000710C(v12);

    v17 = *(v7 + 8);
    v17(v42, v8);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v6, v8);
  }

  *(v0 + 504) = v17;
  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v21 = *(v0 + 360);
  v20 = *(v0 + 368);
  v22 = *(v0 + 352);
  v23 = *(v0 + 336);
  v43 = *(v0 + 328);
  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  v26 = *(v25 + *(type metadata accessor for DDMDeclaration(0) + 76));
  *(v0 + 712) = v26;
  v27 = *(v20 + 104);
  *(v0 + 512) = v27;
  if (v26)
  {
    v28 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v28 = &enum case for DMCAppsScope.system(_:);
  }

  v27(v19, *v28, v21);
  v29 = *(v20 + 32);
  *(v0 + 520) = v29;
  *(v0 + 528) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v18, v19, v21);
  DMCAppsClient.init(scope:)();
  v30 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v25, v30, v31, v24, v22);

  *(v0 + 40) = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *(v0 + 536) = OpaqueTypeConformance2;
  *(v0 + 48) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  *(v0 + 544) = v33;
  *(v0 + 56) = v33;
  v34 = swift_getOpaqueTypeConformance2();
  *(v0 + 552) = v34;
  *(v0 + 64) = v34;
  v35 = swift_getOpaqueTypeConformance2();
  *(v0 + 560) = v35;
  *(v0 + 72) = v35;
  v36 = swift_getOpaqueTypeConformance2();
  *(v0 + 568) = v36;
  *(v0 + 80) = v36;
  v37 = sub_10020A748((v0 + 16));
  v38 = *(v23 + 16);
  *(v0 + 576) = v38;
  *(v0 + 584) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v37, v22, v43);
  v39 = swift_task_alloc();
  *(v0 + 592) = v39;
  *v39 = v0;
  v39[1] = sub_1003E28A8;
  v40 = *(v0 + 320);

  return DMCAppsClient.optionalAppRequested(_:appAlreadyPresent:)(v40, v0 + 16, v24 != 0);
}

uint64_t sub_1003E28A8()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003E29AC, 0, 0);
}

uint64_t sub_1003E29AC()
{
  v113 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  static Logger.ddm.getter();
  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 504);
  v10 = *(v0 + 488);
  v110 = *(v0 + 440);
  v11 = *(v0 + 312);
  if (v8)
  {
    v104 = *(v0 + 488);
    v106 = v5;
    v12 = *(v0 + 304);
    v100 = v7;
    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    v102 = *(v0 + 504);
    v15 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v112 = v98;
    *v15 = 138412546;
    v16 = sub_100625FA0();
    *(v15 + 4) = v16;
    *v97 = v16;
    *(v15 + 12) = 2082;
    v106(v12, v11, v13);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v11, v13);
    v5 = v106;
    v21 = sub_1002346CC(v17, v19, &v112);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v6, v100, "[%@] DMC: optionalAppRequested -> %{public}s", v15, 0x16u);
    sub_1000032A8(v97, &qword_10077F920);

    sub_10000710C(v98);

    v102(v104, v110);
  }

  else
  {
    v22 = *(v0 + 280);
    v23 = *(v0 + 288);

    v20 = *(v23 + 8);
    v20(v11, v22);
    v9(v10, v110);
  }

  *(v0 + 600) = v20;
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 280);
  v5(v24, *(v0 + 320), v26);
  v27 = (*(v25 + 88))(v24, v26);
  if (v27 == enum case for DMCAppsOptionalInstallStateResult.failInternalError(_:))
  {
    v28 = *(v0 + 296);
    (*(*(v0 + 288) + 96))(v28, *(v0 + 280));
    v29 = *v28;
    *(v0 + 680) = *v28;
    v30 = v28[1];
    *(v0 + 688) = v30;
    static Logger.ddm.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 504);
    v35 = *(v0 + 456);
    v36 = *(v0 + 440);
    if (v33)
    {
      v111 = *(v0 + 504);
      v37 = swift_slowAlloc();
      v108 = v35;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v112 = v39;
      *v37 = 138412546;
      v40 = sub_100625FA0();
      *(v37 + 4) = v40;
      *v38 = v40;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_1002346CC(v29, v30, &v112);
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] An internal error ocurred: %{public}s", v37, 0x16u);
      sub_1000032A8(v38, &qword_10077F920);

      sub_10000710C(v39);

      v111(v108, v36);
    }

    else
    {

      v34(v35, v36);
    }

    (*(*(v0 + 264) + 56))(*(v0 + 248), 1, 1, *(v0 + 256));
    v48 = sub_100625FA0();
    *(v0 + 696) = v48;
    v49 = swift_task_alloc();
    *(v0 + 704) = v49;
    *v49 = v0;
    v50 = sub_1003E4458;
LABEL_16:
    v49[1] = v50;
    v51 = *(v0 + 248);
    v52 = *(v0 + 224);

    return sub_10030B39C(v52, v51, 1, v48);
  }

  if (v27 != enum case for DMCAppsOptionalInstallStateResult.install(_:))
  {
    if (v27 == enum case for DMCAppsOptionalInstallStateResult.failCannotTakeOverManagement(_:))
    {
      static Logger.ddm.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = sub_100625FA0();
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "[%@] Cannot take over management", v55, 0xCu);
        sub_1000032A8(v56, &qword_10077F920);
      }

      v58 = *(v0 + 504);
      v59 = *(v0 + 472);
      v60 = *(v0 + 440);
      v61 = *(v0 + 256);
      v62 = *(v0 + 264);
      v63 = *(v0 + 248);

      v58(v59, v60);
      (*(v62 + 104))(v63, enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), v61);
      (*(v62 + 56))(v63, 0, 1, v61);
      v48 = sub_100625FA0();
      *(v0 + 648) = v48;
      v49 = swift_task_alloc();
      *(v0 + 656) = v49;
      *v49 = v0;
      v50 = sub_1003E3E04;
    }

    else
    {
      if (v27 != enum case for DMCAppsOptionalInstallStateResult.failSystemApp(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      static Logger.ddm.getter();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138412290;
        v68 = sub_100625FA0();
        *(v66 + 4) = v68;
        *v67 = v68;
        _os_log_impl(&_mh_execute_header, v64, v65, "[%@] Cannot manage system app", v66, 0xCu);
        sub_1000032A8(v67, &qword_10077F920);
      }

      v69 = *(v0 + 504);
      v70 = *(v0 + 464);
      v71 = *(v0 + 440);
      v72 = *(v0 + 256);
      v73 = *(v0 + 264);
      v74 = *(v0 + 248);

      v69(v70, v71);
      (*(v73 + 104))(v74, enum case for ManagedAppStatus.Reason.isSystemApp(_:), v72);
      (*(v73 + 56))(v74, 0, 1, v72);
      v48 = sub_100625FA0();
      *(v0 + 664) = v48;
      v49 = swift_task_alloc();
      *(v0 + 672) = v49;
      *v49 = v0;
      v50 = sub_1003E4130;
    }

    goto LABEL_16;
  }

  v41 = *(v0 + 232);
  if (!v41)
  {
    goto LABEL_11;
  }

  v42 = v41;
  v43 = sub_100625FA0();
  LOBYTE(v42) = sub_1003EC948(v42, v43);

  if (v42)
  {

LABEL_11:
    v44 = sub_100625FA0();
    *(v0 + 632) = v44;
    v45 = swift_task_alloc();
    *(v0 + 640) = v45;
    *v45 = v0;
    v45[1] = sub_1003E3B34;
    v46 = *(v0 + 224);

    return sub_100307250(v46, 1, v44);
  }

  (*(*(v0 + 264) + 104))(*(v0 + 272), enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), *(v0 + 256));
  v75 = sub_100625FA0();
  *(v0 + 608) = v75;
  static Logger.ddm.getter();
  v76 = v75;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    *(v79 + 4) = v76;
    *v80 = v76;
    v81 = v76;
    _os_log_impl(&_mh_execute_header, v77, v78, "[%@] DMC: installFailed", v79, 0xCu);
    sub_1000032A8(v80, &qword_10077F920);
  }

  v109 = *(v0 + 576);
  v107 = *(v0 + 568);
  v93 = *(v0 + 712);
  v82 = *(v0 + 504);
  v94 = *(v0 + 512);
  v95 = *(v0 + 520);
  v83 = *(v0 + 480);
  v84 = *(v0 + 440);
  v86 = *(v0 + 376);
  v85 = *(v0 + 384);
  v87 = *(v0 + 360);
  v99 = *(v0 + 344);
  v105 = *(v0 + 328);
  v96 = *(v0 + 224);
  v101 = *(v0 + 552);
  v103 = *(v0 + 536);

  v82(v83, v84);
  v88 = &enum case for DMCAppsScope.user(_:);
  if (!v93)
  {
    v88 = &enum case for DMCAppsScope.system(_:);
  }

  v94(v86, *v88, v87);
  v95(v85, v86, v87);
  DMCAppsClient.init(scope:)();
  v89 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v96, v89, v90, 0, v99);

  *(v0 + 112) = v105;
  *(v0 + 120) = v103;
  *(v0 + 136) = v101;
  *(v0 + 152) = v107;
  v91 = sub_10020A748((v0 + 88));
  v109(v91, v99, v105);
  v92 = swift_task_alloc();
  *(v0 + 616) = v92;
  *v92 = v0;
  v92[1] = sub_1003E35CC;

  return DMCAppsClient.installFailed(_:)(v0 + 88);
}

uint64_t sub_1003E35CC()
{
  v1 = *v0;

  sub_10000710C(v1 + 88);

  return _swift_task_switch(sub_1003E36D0, 0, 0);
}

uint64_t sub_1003E36D0()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];
  (*(v1 + 16))(v2, v0[34], v3);
  (*(v1 + 56))(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[78] = v4;
  *v4 = v0;
  v4[1] = sub_1003E37BC;
  v5 = v0[76];
  v6 = v0[31];
  v7 = v0[28];

  return sub_10030B39C(v7, v6, 1, v5);
}

uint64_t sub_1003E37BC()
{
  v1 = *(*v0 + 248);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003E38E4, 0, 0);
}

uint64_t sub_1003E38E4()
{
  v11 = *(v0 + 608);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v17 = *(v0 + 352);
  v18 = *(v0 + 432);
  v16 = *(v0 + 320);
  v4 = *(v0 + 288);
  v14 = *(v0 + 328);
  v15 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(*(v0 + 336) + 8);
  (v13)(*(v0 + 344));
  v8 = *(v2 + 8);
  v8(v1, v3);

  (*(v5 + 8))(v6, v7);
  *(v0 + 208) = xmmword_10069E880;
  sub_100270870();
  swift_willThrowTypedImpl();

  (*(v4 + 8))(v16, v15);
  v13(v17, v14);
  v8(v18, v3);

  v9 = *(v0 + 8);

  return v9(0, 1);
}

uint64_t sub_1003E3B34()
{
  v1 = *(*v0 + 632);

  return _swift_task_switch(sub_1003E3C48, 0, 0);
}

uint64_t sub_1003E3C48()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  (*(v0 + 600))(*(v0 + 320), *(v0 + 280));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E3E04()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 248);

  sub_1000032A8(v2, &qword_10077F380);

  return _swift_task_switch(sub_1003E3F44, 0, 0);
}

uint64_t sub_1003E3F44()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 416);
  v10 = *(v0 + 408);
  v11 = *(v0 + 432);
  v3 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 280);
  *(v0 + 192) = xmmword_10069E880;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8(0, 1);
}

uint64_t sub_1003E4130()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 248);

  sub_1000032A8(v2, &qword_10077F380);

  return _swift_task_switch(sub_1003E4270, 0, 0);
}

uint64_t sub_1003E4270()
{
  v1 = v0[75];
  v11 = v0[54];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[40];
  v8 = v0[35];
  sub_100270870();
  v0[23] = 0;
  v0[22] = 0;
  swift_willThrowTypedImpl();
  v1(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_1003E4458()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 248);

  sub_1000032A8(v2, &qword_10077F380);

  return _swift_task_switch(sub_1003E4598, 0, 0);
}

uint64_t sub_1003E4598()
{
  v13 = v0[86];
  v1 = v0[75];
  v2 = v0[52];
  v10 = v0[51];
  v11 = v0[54];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = v0[35];
  v0[20] = v0[85];
  v0[21] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v10);
  v12 = v0[85];

  v8 = v0[1];

  return v8(v12, v13);
}

uint64_t sub_1003E4794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1001F0C48(&qword_10077F380);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for DMCAppsWillInstallStateResult();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_10077F388);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsScope();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsClient();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1003E4A54, 0, 0);
}

uint64_t sub_1003E4A54()
{
  v1 = v0[15];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: willInstall", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[37];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v3;
  v15 = v0[26];
  v16 = v0[27];
  v28 = v0[24];
  v26 = v0[25];
  v27 = v0[23];
  v17 = v0[13];

  v18 = *(v10 + 8);
  v0[38] = v18;
  v0[39] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v9, v11);
  if (*(v17 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v19 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v19 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v16 + 104))(v13, *v19, v15);
  (*(v16 + 32))(v12, v13, v15);
  DMCAppsClient.init(scope:)();
  v20 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v17, v20, v21, 0, v26);

  v0[5] = v27;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v22 = sub_10020A748(v0 + 2);
  (*(v28 + 16))(v22, v26, v27);
  v23 = swift_task_alloc();
  v0[40] = v23;
  *v23 = v0;
  v23[1] = sub_1003E4D70;
  v24 = v0[22];

  return DMCAppsClient.willInstall(_:)(v24, v0 + 2);
}

uint64_t sub_1003E4D70()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003E4E74, 0, 0);
}

uint64_t sub_1003E4E74()
{
  v66 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[38];
  v62 = v0[33];
  v64 = v0[36];
  v12 = v0[21];
  if (v10)
  {
    v59 = v0[38];
    v60 = v6;
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    v58 = v9;
    v16 = v0[15];
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v65 = v57;
    *v17 = 138412546;
    *(v17 + 4) = v16;
    *v56 = v16;
    *(v17 + 12) = 2082;
    v60(v13, v12, v14);
    v18 = v16;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v12, v14);
    v6 = v60;
    v23 = sub_1002346CC(v19, v21, &v65);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v58, "[%@] DMC: willInstall -> %{public}s", v17, 0x16u);
    sub_1000032A8(v56, &qword_10077F920);

    sub_10000710C(v57);

    v59(v64, v62);
  }

  else
  {
    v24 = v0[17];
    v25 = v0[18];

    v22 = *(v25 + 8);
    v22(v12, v24);
    v11(v64, v62);
  }

  v0[41] = v22;
  v27 = v0[18];
  v26 = v0[19];
  v28 = v0[17];
  v6(v26, v0[22], v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for DMCAppsWillInstallStateResult.failInternalError(_:))
  {
    v30 = v0[19];
    v31 = v0[15];
    (*(v0[18] + 96))(v30, v0[17]);
    v32 = *v30;
    v0[43] = *v30;
    v33 = v30[1];
    v0[44] = v33;
    static Logger.ddm.getter();
    v34 = v31;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[38];
    v39 = v0[35];
    v40 = v0[33];
    if (v37)
    {
      v41 = v0[15];
      v63 = v0[38];
      v42 = swift_slowAlloc();
      v61 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v42 = 138412546;
      *(v42 + 4) = v41;
      *v43 = v41;
      *(v42 + 12) = 2082;
      v45 = v41;
      *(v42 + 14) = sub_1002346CC(v32, v33, &v65);
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] An internal error ocurred: %{public}s", v42, 0x16u);
      sub_1000032A8(v43, &qword_10077F920);

      sub_10000710C(v44);

      v63(v61, v40);
    }

    else
    {

      v38(v39, v40);
    }

    v50 = v0[16];
    v51 = type metadata accessor for ManagedAppStatus.Reason();
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    v52 = swift_task_alloc();
    v0[45] = v52;
    *v52 = v0;
    v52[1] = sub_1003E56B4;
    v54 = v0[15];
    v53 = v0[16];
    v55 = v0[13];

    return sub_10030B39C(v55, v53, 1, v54);
  }

  else if (v29 == enum case for DMCAppsWillInstallStateResult.proceed(_:))
  {
    v46 = swift_task_alloc();
    v0[42] = v46;
    *v46 = v0;
    v46[1] = sub_1003E5458;
    v47 = v0[15];
    v48 = v0[13];

    return sub_100308140(v48, 1, v47);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E5458()
{

  return _swift_task_switch(sub_1003E5554, 0, 0);
}

uint64_t sub_1003E5554()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(v0 + 328))(*(v0 + 176), *(v0 + 136));
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E56B4()
{
  v1 = *(*v0 + 128);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003E57DC, 0, 0);
}

uint64_t sub_1003E57DC()
{
  v13 = v0[44];
  v2 = v0[31];
  v1 = v0[32];
  v11 = v0[41];
  v12 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[17];
  v0[11] = v0[43];
  v0[12] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  v11(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);

  v8 = v0[1];
  v9 = v0[43];

  return v8(v9, v13);
}

uint64_t sub_1003E5984(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 568) = a3;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = type metadata accessor for DMCAppsDidInstallStateResult();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v5 + 240) = swift_task_alloc();
  updated = type metadata accessor for DMCAppsDidUpdateStateResult();
  *(v5 + 248) = updated;
  *(v5 + 256) = *(updated - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v5 + 296) = v8;
  *(v5 + 304) = *(v8 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_10077F388);
  *(v5 + 360) = v9;
  *(v5 + 368) = *(v9 - 8);
  *(v5 + 376) = swift_task_alloc();
  v10 = type metadata accessor for DMCAppsScope();
  *(v5 + 384) = v10;
  *(v5 + 392) = *(v10 - 8);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  v11 = type metadata accessor for DMCAppsClient();
  *(v5 + 416) = v11;
  *(v5 + 424) = *(v11 - 8);
  *(v5 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_1003E5CEC, 0, 0);
}

uint64_t sub_1003E5CEC()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);
  v6 = *(v0 + 568);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  if (*(v8 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v9 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v9 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v4 + 104))(v2, *v9, v3);
  (*(v4 + 32))(v1, v2, v3);
  DMCAppsClient.init(scope:)();
  v10 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v8, v10, v11, v7, v5);

  v12 = *(v0 + 184);
  if (v6)
  {
    static Logger.ddm.getter();
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v16;
      *v18 = v16;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] DMC: didUpdate", v17, 0xCu);
      sub_1000032A8(v18, &qword_10077F920);
    }

    v21 = *(v0 + 368);
    v20 = *(v0 + 376);
    v23 = *(v0 + 352);
    v22 = *(v0 + 360);
    v24 = *(v0 + 296);
    v25 = *(v0 + 304);

    v26 = *(v25 + 8);
    *(v0 + 440) = v26;
    *(v0 + 448) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v23, v24);
    *(v0 + 112) = v22;
    *(v0 + 120) = swift_getOpaqueTypeConformance2();
    *(v0 + 128) = swift_getOpaqueTypeConformance2();
    *(v0 + 136) = swift_getOpaqueTypeConformance2();
    *(v0 + 144) = swift_getOpaqueTypeConformance2();
    *(v0 + 152) = swift_getOpaqueTypeConformance2();
    v27 = sub_10020A748((v0 + 88));
    (*(v21 + 16))(v27, v20, v22);
    v28 = swift_task_alloc();
    *(v0 + 456) = v28;
    *v28 = v0;
    v28[1] = sub_1003E620C;
    v29 = *(v0 + 288);

    return DMCAppsClient.didUpdate(_:)(v29, v0 + 88);
  }

  else
  {
    static Logger.ddm.getter();
    v30 = v12;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 184);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v33;
      *v35 = v33;
      v36 = v33;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] DMC: didInstall", v34, 0xCu);
      sub_1000032A8(v35, &qword_10077F920);
    }

    v38 = *(v0 + 368);
    v37 = *(v0 + 376);
    v39 = *(v0 + 360);
    v40 = *(v0 + 328);
    v41 = *(v0 + 296);
    v42 = *(v0 + 304);

    v43 = *(v42 + 8);
    *(v0 + 504) = v43;
    *(v0 + 512) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v40, v41);
    *(v0 + 40) = v39;
    *(v0 + 48) = swift_getOpaqueTypeConformance2();
    *(v0 + 56) = swift_getOpaqueTypeConformance2();
    *(v0 + 64) = swift_getOpaqueTypeConformance2();
    *(v0 + 72) = swift_getOpaqueTypeConformance2();
    *(v0 + 80) = swift_getOpaqueTypeConformance2();
    v44 = sub_10020A748((v0 + 16));
    (*(v38 + 16))(v44, v37, v39);
    v45 = swift_task_alloc();
    *(v0 + 520) = v45;
    *v45 = v0;
    v45[1] = sub_1003E6F70;
    v46 = *(v0 + 232);

    return DMCAppsClient.didInstall(_:)(v46, v0 + 16);
  }
}

uint64_t sub_1003E620C()
{
  v1 = *v0;

  sub_10000710C(v1 + 88);

  return _swift_task_switch(sub_1003E6310, 0, 0);
}

uint64_t sub_1003E6310()
{
  v52 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[23];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[55];
  v49 = v0[37];
  v50 = v0[43];
  v12 = v0[35];
  if (v10)
  {
    v47 = v0[55];
    v48 = v6;
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[32];
    v46 = v9;
    v16 = v0[23];
    v17 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = v45;
    *v17 = 138412546;
    *(v17 + 4) = v16;
    *v44 = v16;
    *(v17 + 12) = 2082;
    v48(v13, v12, v14);
    v18 = v16;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v12, v14);
    v6 = v48;
    v23 = sub_1002346CC(v19, v21, &v51);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v46, "[%@] DMC: didUpdate -> %{public}s", v17, 0x16u);
    sub_1000032A8(v44, &qword_10077F920);

    sub_10000710C(v45);

    v47(v50, v49);
  }

  else
  {
    v24 = v0[31];
    v25 = v0[32];

    v22 = *(v25 + 8);
    v22(v12, v24);
    v11(v50, v49);
  }

  v0[58] = v22;
  v27 = v0[32];
  v26 = v0[33];
  v28 = v0[31];
  v6(v26, v0[36], v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for DMCAppsDidUpdateStateResult.failInternalError(_:))
  {
    v30 = v0[33];
    v31 = v0[30];
    (*(v0[32] + 96))(v30, v0[31]);
    v0[60] = *v30;
    v0[61] = v30[1];
    v32 = enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:);
    v33 = type metadata accessor for ManagedAppStatus.Reason();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v31, v32, v33);
    (*(v34 + 56))(v31, 0, 1, v33);
    v35 = swift_task_alloc();
    v0[62] = v35;
    *v35 = v0;
    v35[1] = sub_1003E6A74;
    v36 = v0[30];
    v37 = v0[23];
    v38 = v0[20];

    return sub_10030B39C(v38, v36, 1, v37);
  }

  else if (v29 == enum case for DMCAppsDidUpdateStateResult.ok(_:))
  {
    v40 = v0[21];
    v41 = swift_task_alloc();
    v0[59] = v41;
    *v41 = v0;
    v41[1] = sub_1003E67D0;
    v42 = v0[23];
    v43 = v0[20];

    return sub_1003088B8(v43, v40, 1, v42);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E67D0()
{

  return _swift_task_switch(sub_1003E68CC, 0, 0);
}

uint64_t sub_1003E68CC()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 248));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E6A74()
{
  v1 = *(*v0 + 240);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003E6B9C, 0, 0);
}

uint64_t sub_1003E6B9C()
{
  v42 = v0;
  v1 = v0[23];
  static Logger.ddm.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[61];
  if (v5)
  {
    v25 = v0[60];
    v35 = v0[58];
    v30 = v0[55];
    v7 = v0[53];
    v39 = v0[54];
    v37 = v0[52];
    v8 = v0[46];
    v31 = v0[45];
    v33 = v0[47];
    v26 = v0[37];
    v27 = v0[42];
    v28 = v0[31];
    v29 = v0[36];
    v9 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2082;
    v13 = v9;
    v14 = sub_1002346CC(v25, v6, &v41);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] An internal error ocurred: %{public}s", v10, 0x16u);
    sub_1000032A8(v11, &qword_10077F920);

    sub_10000710C(v12);

    v30(v27, v26);
    v35(v29, v28);
    (*(v8 + 8))(v33, v31);
    (*(v7 + 8))(v39, v37);
  }

  else
  {
    v36 = v0[58];
    v15 = v0[55];
    v16 = v0[53];
    v40 = v0[54];
    v38 = v0[52];
    v17 = v3;
    v18 = v0[46];
    v32 = v0[45];
    v34 = v0[47];
    v19 = v0[42];
    v21 = v0[36];
    v20 = v0[37];
    v22 = v0[31];

    v15(v19, v20);
    v36(v21, v22);
    (*(v18 + 8))(v34, v32);
    (*(v16 + 8))(v40, v38);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003E6F70()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003E7074, 0, 0);
}

uint64_t sub_1003E7074()
{
  v52 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[63];
  v49 = v0[37];
  v50 = v0[40];
  v12 = v0[28];
  if (v10)
  {
    v47 = v0[63];
    v48 = v6;
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v46 = v9;
    v16 = v0[23];
    v17 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = v45;
    *v17 = 138412546;
    *(v17 + 4) = v16;
    *v44 = v16;
    *(v17 + 12) = 2082;
    v48(v13, v12, v14);
    v18 = v16;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v12, v14);
    v6 = v48;
    v23 = sub_1002346CC(v19, v21, &v51);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v46, "[%@] DMC: didInstall -> %{public}s", v17, 0x16u);
    sub_1000032A8(v44, &qword_10077F920);

    sub_10000710C(v45);

    v47(v50, v49);
  }

  else
  {
    v24 = v0[24];
    v25 = v0[25];

    v22 = *(v25 + 8);
    v22(v12, v24);
    v11(v50, v49);
  }

  v0[66] = v22;
  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  v6(v26, v0[29], v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for DMCAppsDidInstallStateResult.failInternalError(_:))
  {
    v30 = v0[30];
    v31 = v0[26];
    (*(v0[25] + 96))(v31, v0[24]);
    v0[68] = *v31;
    v0[69] = v31[1];
    v32 = enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:);
    v33 = type metadata accessor for ManagedAppStatus.Reason();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v30, v32, v33);
    (*(v34 + 56))(v30, 0, 1, v33);
    v35 = swift_task_alloc();
    v0[70] = v35;
    *v35 = v0;
    v35[1] = sub_1003E77DC;
    v36 = v0[30];
    v37 = v0[23];
    v38 = v0[20];

    return sub_10030B39C(v38, v36, 1, v37);
  }

  else if (v29 == enum case for DMCAppsDidInstallStateResult.ok(_:))
  {
    v40 = v0[21];
    v41 = swift_task_alloc();
    v0[67] = v41;
    *v41 = v0;
    v41[1] = sub_1003E7538;
    v42 = v0[23];
    v43 = v0[20];

    return sub_1003088B8(v43, v40, 1, v42);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E7538()
{

  return _swift_task_switch(sub_1003E7634, 0, 0);
}

uint64_t sub_1003E7634()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  (*(v0 + 528))(*(v0 + 232), *(v0 + 192));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E77DC()
{
  v1 = *(*v0 + 240);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003E7904, 0, 0);
}

uint64_t sub_1003E7904()
{
  v36 = v0;
  static Logger.ddm.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[69];
  if (v3)
  {
    v5 = v0[68];
    v23 = v0[63];
    v6 = v0[53];
    v33 = v0[54];
    v29 = v0[66];
    v31 = v0[52];
    v7 = v0[46];
    v25 = v0[45];
    v27 = v0[47];
    v8 = v0[37];
    v20 = v0[39];
    v21 = v0[24];
    v22 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136446210;
    v11 = sub_1002346CC(v5, v4, &v35);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Handled management error: %{public}s", v9, 0xCu);
    sub_10000710C(v10);

    v23(v20, v8);
    v29(v22, v21);
    (*(v7 + 8))(v27, v25);
    (*(v6 + 8))(v33, v31);
  }

  else
  {
    v24 = v0[63];
    v12 = v0[53];
    v34 = v0[54];
    v30 = v0[66];
    v32 = v0[52];
    v13 = v0[46];
    v26 = v0[45];
    v28 = v0[47];
    v14 = v0[39];
    v15 = v0[37];
    v16 = v0[29];
    v17 = v0[24];

    v24(v14, v15);
    v30(v16, v17);
    (*(v13 + 8))(v28, v26);
    (*(v12 + 8))(v34, v32);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003E7C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_1001F0C48(&qword_10077F380);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for DDMPurchaseMethod();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsDidUninstallStateResult();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F388);
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsScope();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsClient();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1003E7F84, 0, 0);
}

uint64_t sub_1003E7F84()
{
  v1 = v0[13];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] DMC: didUninstall", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[38];
  v11 = v0[34];
  v10 = v0[35];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v3;
  v15 = v0[27];
  v16 = v0[28];
  v29 = v0[25];
  v27 = v0[26];
  v28 = v0[24];
  v17 = v0[11];

  v18 = *(v10 + 8);
  v0[39] = v18;
  v0[40] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v9, v11);
  v19 = type metadata accessor for DDMDeclaration(0);
  v0[41] = v19;
  if (*(v17 + *(v19 + 76)))
  {
    v20 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v20 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v16 + 104))(v13, *v20, v15);
  (*(v16 + 32))(v12, v13, v15);
  DMCAppsClient.init(scope:)();
  v21 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v17, v21, v22, 0, v27);

  v0[5] = v28;
  v0[6] = swift_getOpaqueTypeConformance2();
  v0[7] = swift_getOpaqueTypeConformance2();
  v0[8] = swift_getOpaqueTypeConformance2();
  v0[9] = swift_getOpaqueTypeConformance2();
  v0[10] = swift_getOpaqueTypeConformance2();
  v23 = sub_10020A748(v0 + 2);
  (*(v29 + 16))(v23, v27, v28);
  v24 = swift_task_alloc();
  v0[42] = v24;
  *v24 = v0;
  v24[1] = sub_1003E82A4;
  v25 = v0[23];

  return DMCAppsClient.didUninstall(_:)(v25, v0 + 2);
}

uint64_t sub_1003E82A4()
{
  v1 = *v0;

  sub_10000710C(v1 + 16);

  return _swift_task_switch(sub_1003E83A8, 0, 0);
}

uint64_t sub_1003E83A8()
{
  v76 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[13];
  static Logger.ddm.getter();
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[39];
  v72 = v0[34];
  v74 = v0[37];
  v12 = v0[22];
  if (v10)
  {
    v69 = v0[39];
    v70 = v6;
    v13 = v0[21];
    v14 = v0[18];
    v15 = v0[19];
    v68 = v9;
    v16 = v0[13];
    v17 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v75 = v67;
    *v17 = 138412546;
    *(v17 + 4) = v16;
    *v66 = v16;
    *(v17 + 12) = 2082;
    v70(v13, v12, v14);
    v18 = v16;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v12, v14);
    v6 = v70;
    v23 = sub_1002346CC(v19, v21, &v75);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v68, "[%@] DMC: didUninstall -> %{public}s", v17, 0x16u);
    sub_1000032A8(v66, &qword_10077F920);

    sub_10000710C(v67);

    v69(v74, v72);
  }

  else
  {
    v24 = v0[18];
    v25 = v0[19];

    v22 = *(v25 + 8);
    v22(v12, v24);
    v11(v74, v72);
  }

  v0[43] = v22;
  v27 = v0[19];
  v26 = v0[20];
  v28 = v0[18];
  v6(v26, v0[23], v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for DMCAppsDidUninstallStateResult.failInternalError(_:))
  {
    v30 = v0[20];
    v31 = v0[13];
    (*(v0[19] + 96))(v30, v0[18]);
    v32 = *v30;
    v0[47] = *v30;
    v33 = v30[1];
    v0[48] = v33;
    static Logger.ddm.getter();
    v34 = v31;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[39];
    v39 = v0[36];
    v40 = v0[34];
    if (v37)
    {
      v41 = v0[13];
      v73 = v0[39];
      v42 = swift_slowAlloc();
      v71 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v42 = 138412546;
      *(v42 + 4) = v41;
      *v43 = v41;
      *(v42 + 12) = 2082;
      v45 = v41;
      *(v42 + 14) = sub_1002346CC(v32, v33, &v75);
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] An internal error ocurred: %{public}s", v42, 0x16u);
      sub_1000032A8(v43, &qword_10077F920);

      sub_10000710C(v44);

      v73(v71, v40);
    }

    else
    {

      v38(v39, v40);
    }

    v54 = v0[14];
    v55 = type metadata accessor for ManagedAppStatus.Reason();
    (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
    v56 = swift_task_alloc();
    v0[49] = v56;
    *v56 = v0;
    v56[1] = sub_1003E8FB0;
    v58 = v0[13];
    v57 = v0[14];
    v59 = v0[11];

    return sub_10030B39C(v59, v57, 1, v58);
  }

  if (v29 != enum case for DMCAppsDidUninstallStateResult.ok(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v47 = v0[16];
  v46 = v0[17];
  v48 = v0[15];
  (*(v47 + 16))(v46, v0[11] + *(v0[41] + 100), v48);
  v49 = (*(v47 + 88))(v46, v48);
  if (v49 != enum case for DDMPurchaseMethod.volumePurchaseProgram(_:) && v49 != enum case for DDMPurchaseMethod.manifest(_:) && v49 != enum case for DDMPurchaseMethod.preInstalled(_:))
  {
    if (v49 == enum case for DDMPurchaseMethod.other(_:))
    {
      v50 = swift_task_alloc();
      v0[46] = v50;
      *v50 = v0;
      v50[1] = sub_1003E8EB4;
      v51 = v0[13];
      v52 = v0[11];

      return sub_10030AC24(v52, 1, v51);
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (*(v0[11] + *(v0[41] + 60)) == 1)
  {
    v60 = swift_task_alloc();
    v0[44] = v60;
    *v60 = v0;
    v60[1] = sub_1003E8B50;
    v61 = v0[13];
    v62 = v0[11];

    return sub_100305BE8(v62, 1, v61);
  }

  else
  {
    v63 = swift_task_alloc();
    v0[45] = v63;
    *v63 = v0;
    v63[1] = sub_1003E8DB8;
    v64 = v0[13];
    v65 = v0[11];

    return sub_100309BD4(v65, 1, v64);
  }
}

uint64_t sub_1003E8B50()
{

  return _swift_task_switch(sub_1003E8C4C, 0, 0);
}

uint64_t sub_1003E8C4C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  (*(v0 + 344))(*(v0 + 184), *(v0 + 144));
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E8DB8()
{

  return _swift_task_switch(sub_1003ED630, 0, 0);
}

uint64_t sub_1003E8EB4()
{

  return _swift_task_switch(sub_1003ED630, 0, 0);
}

uint64_t sub_1003E8FB0()
{
  v1 = *(*v0 + 112);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1003E90D8, 0, 0);
}

uint64_t sub_1003E90D8()
{
  v1 = v0[47];
  v10 = v0[48];
  v3 = v0[32];
  v2 = v0[33];
  v13 = v0[43];
  v14 = v0[31];
  v4 = v0[25];
  v5 = v0[23];
  v11 = v0[24];
  v12 = v0[26];
  v6 = v0[18];
  type metadata accessor for InternalError();
  sub_1003ED304(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  *v7 = v1;
  v7[1] = v10;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v13(v5, v6);
  (*(v4 + 8))(v12, v11);
  (*(v3 + 8))(v2, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003E92D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v154 = a4;
  v162 = a3;
  v161 = a2;
  v159 = a5;
  v6 = sub_1001F0C48(&qword_1007836E0);
  __chkstk_darwin(v6 - 8);
  v160 = &v133 - v7;
  v8 = sub_1001F0C48(&qword_1007836E8);
  __chkstk_darwin(v8 - 8);
  v158 = &v133 - v9;
  v10 = sub_1001F0C48(&qword_1007836F0);
  __chkstk_darwin(v10 - 8);
  v157 = &v133 - v11;
  v12 = sub_1001F0C48(&qword_1007836F8);
  __chkstk_darwin(v12 - 8);
  v156 = &v133 - v13;
  v14 = sub_1001F0C48(&qword_100783700);
  __chkstk_darwin(v14 - 8);
  v155 = &v133 - v15;
  v16 = sub_1001F0C48(&qword_100783708);
  __chkstk_darwin(v16 - 8);
  v172 = &v133 - v17;
  v18 = type metadata accessor for URL();
  v163 = *(v18 - 8);
  v164 = v18;
  __chkstk_darwin(v18);
  v147 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VPPLicenseType();
  countAndFlagsBits = *(v20 - 8);
  v168 = v20;
  __chkstk_darwin(v20);
  v139 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v145 = *(v146 - 8);
  v22 = __chkstk_darwin(v146);
  v137 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v138 = &v133 - v25;
  __chkstk_darwin(v24);
  v144 = &v133 - v26;
  v150 = type metadata accessor for StoreSource();
  v152 = *(v150 - 8);
  v27 = __chkstk_darwin(v150);
  v136 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v140 = (&v133 - v30);
  __chkstk_darwin(v29);
  v134 = &v133 - v31;
  v32 = sub_1001F0C48(&qword_100783710);
  v33 = __chkstk_darwin(v32 - 8);
  v151 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v148 = &v133 - v35;
  v36 = sub_1001F0C48(&unk_1007809F0);
  v37 = __chkstk_darwin(v36 - 8);
  v135 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v177 = &v133 - v39;
  v40 = sub_1001F0C48(&qword_10077F340);
  v41 = __chkstk_darwin(v40 - 8);
  v143 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v133 - v43;
  v45 = type metadata accessor for DDMPurchaseMethod();
  object = *(v45 - 8);
  v175 = v45;
  v46 = __chkstk_darwin(v45);
  v166 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v173 = &v133 - v48;
  v179 = type metadata accessor for InstallSource();
  v171 = *(v179 - 8);
  v49 = __chkstk_darwin(v179);
  v165 = &v133 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v178 = &v133 - v51;
  v52 = type metadata accessor for InstallWhen();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v133 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for InstallBehavior();
  v176 = *(v182 - 8);
  v56 = __chkstk_darwin(v182);
  v58 = &v133 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v181 = &v133 - v59;
  v170 = type metadata accessor for RemoveBehavior();
  v153 = *(v170 - 8);
  __chkstk_darwin(v170);
  v180 = &v133 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1001F0C48(&qword_10077F358);
  v62 = __chkstk_darwin(v61 - 8);
  v149 = &v133 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v65 = &v133 - v64;
  v66 = *(a1 + 32);
  v169 = &v133 - v64;
  if (v66 >> 60 == 15)
  {
    v67 = type metadata accessor for ManagedAppDeclaration.Attributes();
    (*(*(v67 - 8) + 56))(v65, 1, 1, v67);
  }

  else
  {
    sub_10020ABFC(*(a1 + 24), v66);
    ManagedAppDeclaration.Attributes.init(rawValue:)();
    v68 = type metadata accessor for ManagedAppDeclaration.Attributes();
    (*(*(v68 - 8) + 56))(v65, 0, 1, v68);
  }

  v69 = type metadata accessor for DDMDeclaration(0);
  v70 = *(a1 + v69[15]);
  RemoveBehavior.init(removable:removeKeychainGroupWhenUninstall:)();
  v71 = &enum case for InstallWhen.onDemand(_:);
  if (!v70)
  {
    v71 = &enum case for InstallWhen.immediately(_:);
  }

  (*(v53 + 104))(v55, *v71, v52);
  InstallBehavior.init(installWhen:)();
  (*(v176 + 32))(v181, v58, v182);
  v73 = v173;
  v72 = object;
  v74 = object[2];
  v75 = v175;
  v74(v173, a1 + v69[25], v175);
  v76 = v44;
  sub_100005934(a1 + v69[18], v44, &qword_10077F340);
  v141 = *(a1 + 8);
  v142 = *(a1 + 16);
  sub_100005934(a1 + v69[20], v177, &unk_1007809F0);
  v77 = v166;
  v74(v166, v73, v75);
  v78 = (v72[11])(v77, v75);
  if (v78 == enum case for DDMPurchaseMethod.volumePurchaseProgram(_:))
  {
    v79 = v143;
    sub_100005934(v44, v143, &qword_10077F340);
    v80 = v145;
    v81 = 1;
    v82 = v146;
    v83 = v76;
    if ((*(v145 + 48))(v79, 1, v146) != 1)
    {
      v84 = v144;
      (*(v80 + 32))(v144, v79, v82);
      v85 = *(v80 + 16);
      v86 = v138;
      v85(v138, v84, v82);
      v87 = v137;
      v85(v137, v86, v82);
      v88 = (*(v80 + 88))(v87, v82);
      if (v88 == enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:))
      {
        v89 = &enum case for VPPLicenseType.user(_:);
      }

      else
      {
        if (v88 != enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.device(_:))
        {
LABEL_33:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v89 = &enum case for VPPLicenseType.device(_:);
      }

      v97 = *(v80 + 8);
      v97(v86, v82);
      v98 = *v89;
      v100 = countAndFlagsBits;
      v99 = v168;
      v101 = v139;
      (*(countAndFlagsBits + 104))(v139, v98, v168);
      (*(v100 + 32))(v148, v101, v99);
      v97(v144, v82);
      v81 = 0;
    }

    v102 = v148;
    (*(countAndFlagsBits + 56))(v148, v81, 1, v168);
    if ((v142 & 1) == 0)
    {
      v96 = v165;
      if ((v141 & 0x8000000000000000) == 0)
      {
        v103 = v140;
        *v140 = v141;
        (*(v152 + 104))(v103, enum case for StoreSource.volumePurchaseProgram(_:), v150);
        sub_100005934(v102, v151, &qword_100783710);
        InstallSource.init(storeSource:vppType:)();
        sub_1000032A8(v102, &qword_100783710);
        v93 = v163;
        v92 = v164;
        v90 = v177;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v78 == enum case for DDMPurchaseMethod.manifest(_:))
  {
    v90 = v177;
    v91 = v135;
    sub_100005934(v177, v135, &unk_1007809F0);
    v93 = v163;
    v92 = v164;
    if ((*(v163 + 48))(v91, 1, v164) == 1)
    {
      goto LABEL_32;
    }

    v83 = v44;
    v94 = v134;
    (*(v93 + 32))(v134, v91, v92);
    v95 = &enum case for StoreSource.manifest(_:);
  }

  else
  {
    v93 = v163;
    v92 = v164;
    v83 = v44;
    v90 = v177;
    if (v78 != enum case for DDMPurchaseMethod.preInstalled(_:) && v78 != enum case for DDMPurchaseMethod.other(_:))
    {
      goto LABEL_33;
    }

    v94 = v136;
    *v136 = 0;
    v95 = &enum case for StoreSource.freeOrRedemptionCode(_:);
  }

  (*(v152 + 104))(v94, *v95, v150);
  (*(countAndFlagsBits + 56))(v151, 1, 1, v168);
  v96 = v165;
  InstallSource.init(storeSource:vppType:)();
LABEL_23:
  sub_1000032A8(v90, &unk_1007809F0);
  sub_1000032A8(v83, &qword_10077F340);
  (object[1])(v173, v175);
  (*(v171 + 32))(v178, v96, v179);
  v104 = *(a1 + 56);
  v177 = *(a1 + 48);
  v175 = v104;
  if (v154)
  {
    v105 = [v154 URL];
    v106 = v147;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = URL.path(percentEncoded:)(0);
    countAndFlagsBits = v107._countAndFlagsBits;
    object = v107._object;
    (*(v93 + 8))(v106, v92);
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v108 = v149;
  v109 = (a1 + v69[14]);
  v110 = *v109;
  v111 = v109[1];
  sub_100005934(v169, v149, &qword_10077F358);
  v112 = type metadata accessor for ManagedAppDeclaration.Attributes();
  v113 = *(v112 - 8);
  v114 = (*(v113 + 48))(v108, 1, v112);
  v173 = v110;
  v168 = v111;
  if (v114 == 1)
  {
    sub_1000032A8(v108, &qword_10077F358);
    v166 = 0;
  }

  else
  {
    v115 = ManagedAppDeclaration.Attributes.dictionaryRepresentation()();
    v132 = *(v113 + 8);
    v166 = v115;
    v132(v108, v112);
  }

  v117 = v171;
  v116 = v172;
  v118 = v179;
  (*(v171 + 16))(v172, v178, v179);
  (*(v117 + 56))(v116, 0, 1, v118);
  v119 = v176;
  v120 = v155;
  v121 = v182;
  (*(v176 + 16))(v155, v181, v182);
  (*(v119 + 56))(v120, 0, 1, v121);
  updated = type metadata accessor for UpdateBehavior();
  v123 = v156;
  (*(*(updated - 8) + 56))(v156, 1, 1, updated);
  v124 = v157;
  BackupBehavior.init(backupAppData:)();
  v125 = type metadata accessor for BackupBehavior();
  (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  v126 = v153;
  v127 = v158;
  v128 = v170;
  (*(v153 + 16))(v158, v180, v170);
  (*(v126 + 56))(v127, 0, 1, v128);
  v129 = type metadata accessor for DocumentSyncBehavior();
  v130 = v160;
  (*(*(v129 - 8) + 56))(v160, 1, 1, v129);
  static DMCAppsClient.makeAppInfo2(bundleID:path:originator:sourceID:attributes:installSource:installBehavior:updateBehavior:backupBehavior:removeBehavior:documentSyncBehavior:)();

  sub_1000032A8(v130, &qword_1007836E0);
  sub_1000032A8(v127, &qword_1007836E8);
  sub_1000032A8(v124, &qword_1007836F0);
  sub_1000032A8(v123, &qword_1007836F8);
  sub_1000032A8(v120, &qword_100783700);
  sub_1000032A8(v172, &qword_100783708);
  (*(v117 + 8))(v178, v179);
  (*(v119 + 8))(v181, v182);
  (*(v126 + 8))(v180, v170);
  return sub_1000032A8(v169, &qword_10077F358);
}