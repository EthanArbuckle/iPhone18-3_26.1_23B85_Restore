uint64_t sub_100042188(uint64_t a1)
{
  sub_10004D5EC();
  if (!*(a1 + 16) || (v4 = sub_1000330C8(v19), (v5 & 1) == 0))
  {

    sub_10000CFD0(v19);
LABEL_7:
    sub_100042418();
    swift_allocError();
    *v10 = 0xD00000000000002ALL;
    v10[1] = 0x80000001000550A0;
    goto LABEL_8;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v4, v20);
  sub_10000CFD0(v19);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = sub_10004100C(0x696669746E656469, 0xEA00000000007265);
  if (!v1)
  {
    v2 = v6;
    v12 = v7;
    v13 = v8;
    if (v9 == 3)
    {

      sub_10004D5EC();
      if (*(a1 + 16) && (v14 = sub_1000330C8(v19), (v15 & 1) != 0))
      {
        sub_10000C7F0(*(a1 + 56) + 32 * v14, v20);
        sub_10000CFD0(v19);

        if (swift_dynamicCast())
        {
          sub_10004C820();
          v18 = v16;
          v17 = sub_10004D05C();
          sub_10004B21C(v17, v18);

          sub_100010F08(v2, v12, v13, 3u);
          return v2;
        }
      }

      else
      {

        sub_10000CFD0(v19);
      }
    }

    return v2;
  }

LABEL_8:
  swift_willThrow();
  return v2;
}

unint64_t sub_100042418()
{
  result = qword_100070C98;
  if (!qword_100070C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C98);
  }

  return result;
}

unint64_t sub_10004246C()
{
  result = qword_100070CA0;
  if (!qword_100070CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000425A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000425F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100042644()
{
  result = qword_100070CB0;
  if (!qword_100070CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CB0);
  }

  return result;
}

uint64_t sub_100042698()
{
  sub_10004D16C(*v0);
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_10004D16C(v6);
  v4 = *(v0 + 40);
  v7._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v7);

  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  sub_10004D16C(v8);
  v5 = *(v0 + 48);
  v9._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v9);

  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  sub_10004D16C(v10);
  v1 = *(v0 + 32);
  sub_10004D2EC();
  v11._countAndFlagsBits = 45;
  v11._object = 0xE100000000000000;
  sub_10004D16C(v11);
  v2 = *(v0 + 56);
  sub_10004D2EC();
  return 0;
}

void sub_1000427C8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v1 + 112);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v1 + 112) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 100);
    v8 = v3;
    v9 = v4;
    v10 = *(v1 + 120);

    *a1 = sub_10004B888();
    *(a1 + 8) = v11;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 60) = 0;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1000428CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v1 = *v0;
    v2 = *(v0 + 8);
  }

  v8._countAndFlagsBits = v1;
  v8._object = v2;
  sub_10004D16C(v8);

  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  sub_10004D16C(v9);
  v6 = *(v0 + 40);
  v10._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v10);

  v11._countAndFlagsBits = 45;
  v11._object = 0xE100000000000000;
  sub_10004D16C(v11);
  v7 = *(v0 + 48);
  v12._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v12);

  v13._countAndFlagsBits = 45;
  v13._object = 0xE100000000000000;
  sub_10004D16C(v13);
  v3 = *(v0 + 32);
  sub_10004D2EC();
  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  sub_10004D16C(v14);
  v4 = *(v0 + 56);
  sub_10004D2EC();
  return 0;
}

Swift::Int sub_100042C30()
{
  sub_10004D7BC();
  sub_100042698();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100042C8C()
{
  sub_100042698();
  sub_10004D14C();
}

Swift::Int sub_100042CDC()
{
  sub_10004D7BC();
  sub_100042698();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100042D34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 13) = *(a1 + 45);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 13) = *(a2 + 45);
  return sub_100049274(v5, v7) & 1;
}

uint64_t sub_100042D90()
{
  sub_100011DCC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100042DC8()
{
  v0 = type metadata accessor for SnapshotManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_100043094();
  qword_100073150 = v3;
  return result;
}

uint64_t sub_100042E08()
{
  v0 = sub_10004CD3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A538(v3, qword_100073158);
  sub_1000132A8(v0, qword_100073158);
  v6 = NSTemporaryDirectory();
  sub_10004D08C();

  sub_10004CCAC();

  sub_10004CCEC();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100042F48()
{
  v0 = sub_10004CD3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A538(v3, qword_100073170);
  sub_1000132A8(v0, qword_100073170);
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  v6 = sub_1000132A8(v0, qword_100073158);
  (*(v1 + 16))(v5, v6, v0);
  sub_10004CCEC();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100043094()
{
  v1 = v0;
  v2 = sub_10004CEFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = &_swiftEmptyDictionarySingleton;
  *(v1 + 32) = swift_slowAlloc();
  sub_10004CEEC();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger, v6, v2);
  sub_1000433B8();
  v7 = sub_10004CEDC();
  v8 = sub_10004D37C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (qword_10006E0C0 != -1)
    {
      swift_once();
    }

    v11 = sub_10004CD3C();
    sub_1000132A8(v11, qword_100073158);
    sub_10004957C(&qword_10006F440, &type metadata accessor for URL);
    v12 = sub_10004D73C();
    v14 = sub_10000C618(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "SnapshotManager initialized. folderURL: %s.", v9, 0xCu);
    sub_10000CF40(v10);
  }

  **(v1 + 32) = 0;
  return v1;
}

uint64_t sub_100043334(uint64_t *a1)
{
  v1 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000D024(0, &qword_100070EF8, NSObject_ptr);
    v4 = v3;
    v5 = sub_10004D50C();

    return v5 & 1;
  }

  return result;
}

void sub_1000433B8()
{
  v1 = v0;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 deleteSnaphotsAtLaunch])
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultManager];
    if (qword_10006E0C0 != -1)
    {
      swift_once();
    }

    v4 = sub_10004CD3C();
    sub_1000132A8(v4, qword_100073158);
    sub_10004CC8C();
    v5 = sub_10004D05C();

    v6 = [v3 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = [v2 defaultManager];
      sub_10004CCCC(v8);
      v10 = v9;
      v35 = 0;
      v11 = [v7 removeItemAtURL:v9 error:&v35];

      if (v11)
      {
        v12 = v35;
      }

      else
      {
        v13 = v35;
        sub_10004CC6C();

        swift_willThrow();
        v14 = sub_10004CEDC();
        v15 = sub_10004D38C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "SnapshotManager: Could not remove snapshot folder", v16, 2u);
        }
      }
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  if (qword_10006E0C8 != -1)
  {
    swift_once();
  }

  v19 = sub_10004CD3C();
  sub_1000132A8(v19, qword_100073170);
  sub_10004CC8C();
  v20 = sub_10004D05C();

  v21 = [v18 fileExistsAtPath:v20];

  if (v21)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    v22 = [v17 defaultManager];
    sub_10004CCCC(v23);
    v25 = v24;
    v35 = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v35];

    v27 = v35;
    if (v26)
    {
      *(v1 + 16) = 1;
      v28 = v27;
      v29 = sub_10004CEDC();
      v30 = sub_10004D36C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "SnapshotManager: Did create snapshot folder", v31, 2u);
      }
    }

    else
    {
      v32 = v35;
      sub_10004CC6C();

      swift_willThrow();
      v29 = sub_10004CEDC();
      v33 = sub_10004D38C();
      if (os_log_type_enabled(v29, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v29, v33, "SnapshotManager: Could not create snapshot folder", v34, 2u);
      }
    }
  }
}

char *sub_100043840(uint64_t a1)
{
  v2 = sub_10004CD3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  sub_1000132A8(v2, qword_100073158);
  sub_10004CCCC(v8);
  v10 = v9;
  v40 = 0;
  v11 = [v7 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:0 error:&v40];

  v12 = v40;
  if (!v11)
  {
    v29 = v40;
    sub_10004CC6C();

    swift_willThrow();
    swift_errorRetain();
    v30 = sub_10004CEDC();
    v31 = sub_10004D38C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v32, 0xCu);
      sub_100024DC8(v33, &qword_1000703F0, &qword_100050B90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v13 = sub_10004D23C();
  v14 = v12;

  v15 = v13;
  v16 = *(v13 + 16);
  if (!v16)
  {

    return &_swiftEmptyArrayStorage;
  }

  v17 = v3 + 16;
  v38 = *(v3 + 16);
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v36[1] = v15;
  v19 = v15 + v18;
  v20 = *(v3 + 72);
  v21 = &_swiftEmptyArrayStorage;
  v36[2] = v17;
  v37 = v2;
  v38(v6, v15 + v18, v2);
  while (1)
  {
    sub_100049A30(v6, &v40);
    v22 = v41;
    if (v41)
    {
      v23 = v40;
      v24 = v43;
      v45 = v42;
      v39[0] = *v44;
      *(v39 + 9) = *&v44[9];
      if (v40 == *a1 && v41 == *(a1 + 8) || (sub_10004D74C()) && v24 == *(a1 + 32))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100048464(0, *(v21 + 2) + 1, 1, v21);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v21 = sub_100048464((v25 > 1), v26 + 1, 1, v21);
        }

        *(v21 + 2) = v26 + 1;
        v27 = &v21[64 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        *(v27 + 3) = v45;
        *(v27 + 16) = v24;
        v28 = v39[0];
        *(v27 + 77) = *(v39 + 9);
        *(v27 + 68) = v28;
        v2 = v37;
      }

      else
      {
        sub_100024DC8(&v40, &qword_10006EDA0, &unk_100050800);
      }
    }

    v19 += v20;
    if (!--v16)
    {
      break;
    }

    v38(v6, v19, v2);
  }

  return v21;
}

char *sub_100043CB8(uint64_t a1)
{
  v39 = a1;
  v1 = sub_10004CD3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  sub_1000132A8(v1, qword_100073158);
  sub_10004CCCC(v7);
  v9 = v8;
  v40 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:&v40];

  v11 = v40;
  if (!v10)
  {
    v30 = v40;
    sub_10004CC6C();

    swift_willThrow();
    swift_errorRetain();
    v31 = sub_10004CEDC();
    v32 = sub_10004D38C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v33, 0xCu);
      sub_100024DC8(v34, &qword_1000703F0, &qword_100050B90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v12 = sub_10004D23C();
  v13 = v11;

  v14 = v12;
  v15 = *(v12 + 16);
  if (!v15)
  {

    return &_swiftEmptyArrayStorage;
  }

  v16 = v2 + 16;
  v17 = *(v2 + 16);
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v37[1] = v14;
  v19 = v14 + v18;
  v20 = *(v2 + 72);
  v21 = &_swiftEmptyArrayStorage;
  v37[2] = v16;
  v38 = v1;
  v17(v5, v14 + v18, v1);
  while (1)
  {
    sub_100049A30(v5, &v40);
    v22 = v41;
    if (v41)
    {
      v23 = v40;
      v44 = v42;
      v45[0] = v43[0];
      *(v45 + 13) = *(v43 + 13);
      v24 = v40 == *v39 && v41 == *(v39 + 8);
      if (v24 || (sub_10004D74C() & 1) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100048464(0, *(v21 + 2) + 1, 1, v21);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v21 = sub_100048464((v25 > 1), v26 + 1, 1, v21);
        }

        *(v21 + 2) = v26 + 1;
        v27 = &v21[64 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        v28 = v44;
        v29 = v45[0];
        *(v27 + 77) = *(v45 + 13);
        *(v27 + 3) = v28;
        *(v27 + 4) = v29;
        v1 = v38;
      }

      else
      {
        sub_100024DC8(&v40, &qword_10006EDA0, &unk_100050800);
      }
    }

    v19 += v20;
    if (!--v15)
    {
      break;
    }

    v17(v5, v19, v1);
  }

  return v21;
}

void sub_1000440F4(uint64_t a1, uint64_t *a2)
{
  v56 = a2;
  v3 = sub_10004CD3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - v9;
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_10004CD0C(1);
  v15 = sub_10004D05C();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    v17 = v3;
    v18 = [v13 defaultManager];
    sub_10004CCCC(v19);
    v21 = v20;
    v57 = 0;
    v22 = [v18 removeItemAtURL:v20 error:&v57];

    v23 = v57;
    if (v22)
    {
      (*(v4 + 16))(v12, a1, v3);
      v24 = v23;
      v25 = sub_10004CEDC();
      v26 = sub_10004D36C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v57 = v28;
        *v27 = 136315138;
        sub_10004957C(&qword_10006F440, &type metadata accessor for URL);
        v29 = sub_10004D73C();
        v31 = v30;
        (*(v4 + 8))(v12, v17);
        v32 = sub_10000C618(v29, v31, &v57);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Removed snapshot at URL: %s", v27, 0xCu);
        sub_10000CF40(v28);
      }

      else
      {

        (*(v4 + 8))(v12, v17);
      }
    }

    else
    {
      v42 = v57;
      sub_10004CC6C();

      swift_willThrow();
      v43 = v55;
      (*(v4 + 16))(v55, a1, v3);
      swift_errorRetain();
      v44 = sub_10004CEDC();
      v45 = sub_10004D38C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v46 = 136315394;
        sub_10004957C(&qword_10006F440, &type metadata accessor for URL);
        v48 = sub_10004D73C();
        v49 = v43;
        v51 = v50;
        (*(v4 + 8))(v49, v3);
        v52 = sub_10000C618(v48, v51, &v57);

        *(v46 + 4) = v52;
        *(v46 + 12) = 2112;
        swift_errorRetain();
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v53;
        *v47 = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "Could not remove snapshot at URL: %s. Error: %@.", v46, 0x16u);
        sub_100024DC8(v47, &qword_1000703F0, &qword_100050B90);

        sub_10000CF40(v56);
      }

      else
      {

        (*(v4 + 8))(v43, v3);
      }
    }
  }

  else
  {
    (*(v4 + 16))(v10, a1, v3);
    v33 = sub_10004CEDC();
    v34 = sub_10004D38C();
    v35 = v3;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315138;
      sub_10004957C(&qword_10006F440, &type metadata accessor for URL);
      v38 = sub_10004D73C();
      v40 = v39;
      (*(v4 + 8))(v10, v35);
      v41 = sub_10000C618(v38, v40, &v57);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "File doesn't exist. %s", v36, 0xCu);
      sub_10000CF40(v37);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }
  }
}

uint64_t sub_1000447F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  v7 = sub_10004CD3C();
  v6[48] = v7;
  v8 = *(v7 - 8);
  v6[49] = v8;
  v9 = *(v8 + 64) + 15;
  v6[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000448BC, 0, 0);
}

uint64_t sub_1000448BC()
{
  v1 = *(v0 + 360);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v32 = sub_100043CB8(*(v0 + 368));
    v2 = *(v32 + 2);
    if (v2)
    {
      v3 = *(v0 + 368);
      v4 = *v3;
      v5 = *(v3 + 1);
      v35 = v3;
      v6 = (v32 + 32);
      v37 = (*(v0 + 392) + 8);
      v33 = v5;
      v34 = *v3;
      while (1)
      {
        v11 = *v6;
        v12 = v6[1];
        v13 = v6[2];
        *(v0 + 61) = *(v6 + 45);
        *(v0 + 32) = v12;
        *(v0 + 48) = v13;
        *(v0 + 16) = v11;
        v14 = *(v0 + 16) == v4 && *(v0 + 24) == v5;
        if (!v14 && (sub_10004D74C() & 1) == 0)
        {
          break;
        }

        if (*(v0 + 48) != v35[8])
        {
          v21 = v0 + 16;
          v22 = v0 + 144;
LABEL_19:
          sub_1000131F8(v21, v22);
LABEL_20:
          v36 = v2;
          if (qword_10006E0C0 != -1)
          {
            swift_once();
          }

          v23 = *(v0 + 400);
          v24 = *(v0 + 376);
          v25 = *(v0 + 384);
          v26 = sub_1000132A8(v25, qword_100073158);
          sub_100042A30(v26);
          v40._countAndFlagsBits = 0x636965682ELL;
          v40._object = 0xE500000000000000;
          sub_10004D16C(v40);
          sub_10004CCEC();

          sub_1000440F4(v23, v24);
          v27 = *v37;
          v28 = (*v37)(v23, v25);
          sub_100042A30(v28);
          v41._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v41._object = 0xEB0000000067706ALL;
          sub_10004D16C(v41);
          sub_10004CCEC();

          sub_1000440F4(v23, v24);
          v27(v23, v25);
          if (qword_10006E0C8 != -1)
          {
            swift_once();
          }

          v7 = *(v0 + 400);
          v9 = *(v0 + 376);
          v8 = *(v0 + 384);
          v10 = sub_1000132A8(v8, qword_100073170);
          sub_100042A30(v10);
          sub_100013254(v0 + 16);
          v39._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v39._object = 0xEB0000000067706ALL;
          sub_10004D16C(v39);
          sub_10004CCEC();

          sub_1000440F4(v7, v9);
          v27(v7, v8);
          v2 = v36;
          v5 = v33;
          v4 = v34;
          goto LABEL_5;
        }

        v15 = *(v0 + 72);
        if (v15 != 0.0)
        {
          v16 = v35[14];
          if (v15 != v16)
          {
            v17 = *(v0 + 368);
            sub_1000131F8(v0 + 16, v0 + 208);
            sub_1000131F8(v17, v0 + 272);
            v18 = sub_10004CEDC();
            v19 = sub_10004D37C();
            sub_100013254(v17);
            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              *v20 = 134218240;
              *(v20 + 4) = v15;
              *(v20 + 12) = 2048;
              *(v20 + 14) = v16;
              _os_log_impl(&_mh_execute_header, v18, v19, "Removing snapshot because time does not match - snapshot.effectTime: %f. viewConfiguration.effectTime: %f", v20, 0x16u);
            }

            goto LABEL_20;
          }
        }

LABEL_5:
        v6 += 4;
        if (!--v2)
        {
          goto LABEL_24;
        }
      }

      v21 = v0 + 16;
      v22 = v0 + 80;
      goto LABEL_19;
    }

LABEL_24:
  }

  v29 = *(v0 + 400);

  v30 = *(v0 + 8);

  return v30();
}

void sub_100044D30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100043840(a1);
  v115 = v5;
  v116 = *(v5 + 2);
  if (v116)
  {
    v6 = 0;
    v7 = 32;
    v2 = &type metadata for DefaultStringInterpolation;
    while (1)
    {
      if (v6 >= *(v5 + 2))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      v8 = *&v5[v7 + 45];
      v10 = *&v5[v7 + 16];
      v9 = *&v5[v7 + 32];
      v131 = *&v5[v7];
      v132 = v10;
      v133[0] = v9;
      *(v133 + 13) = v8;
      v11 = v131;
      v118 = *(&v10 + 1);
      *&v113 = v10;
      v111 = DWORD1(v9);
      v3 = v9;
      v104 = *(&v133[0] + 1);
      v107 = v8 >> 24;
      v4 = *(&v8 + 1) >> 24;
      v109 = HIBYTE(v8);
      v126 = 0;
      v127 = 0xE000000000000000;
      sub_1000131F8(&v131, &v128);
      sub_10004D16C(v11);
      v134._countAndFlagsBits = 45;
      v134._object = 0xE100000000000000;
      sub_10004D16C(v134);
      v101 = *(&v133[0] + 1);
      v128._countAndFlagsBits = *(&v133[0] + 1);
      v135._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v135);

      v136._countAndFlagsBits = 45;
      v136._object = 0xE100000000000000;
      sub_10004D16C(v136);
      v100 = *&v133[1];
      v128._countAndFlagsBits = *&v133[1];
      v137._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v137);

      v138._countAndFlagsBits = 45;
      v138._object = 0xE100000000000000;
      sub_10004D16C(v138);
      v12 = v133[0];
      sub_10004D2EC();
      v139._countAndFlagsBits = 45;
      v139._object = 0xE100000000000000;
      sub_10004D16C(v139);
      v13 = DWORD2(v133[1]);
      sub_10004D2EC();
      v128._countAndFlagsBits = 0;
      v128._object = 0xE000000000000000;
      sub_10004D16C(*a1);
      v140._countAndFlagsBits = 45;
      v140._object = 0xE100000000000000;
      sub_10004D16C(v140);
      v126 = *(a1 + 40);
      v141._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v141);

      v142._countAndFlagsBits = 45;
      v142._object = 0xE100000000000000;
      sub_10004D16C(v142);
      v126 = *(a1 + 48);
      v143._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v143);

      v144._countAndFlagsBits = 45;
      v144._object = 0xE100000000000000;
      sub_10004D16C(v144);
      v14 = *(a1 + 32);
      sub_10004D2EC();
      v145._countAndFlagsBits = 45;
      v145._object = 0xE100000000000000;
      sub_10004D16C(v145);
      v15 = *(a1 + 56);
      sub_10004D2EC();
      if (v128 == __PAIR128__(0xE000000000000000, 0))
      {
        break;
      }

      v16 = sub_10004D74C();

      if (v16)
      {
        goto LABEL_51;
      }

      ++v6;
      sub_100013254(&v131);
      v7 += 64;
      v5 = v115;
      if (v116 == v6)
      {
        goto LABEL_7;
      }
    }

LABEL_51:

    v71 = a1;
    sub_1000131F8(a1, &v128);
    v74 = sub_10004CEDC();
    v75 = sub_10004D37C();
    sub_100013254(a1);
    LODWORD(v20) = v111;
    LOBYTE(v2) = v109;
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v128._countAndFlagsBits = swift_slowAlloc();
      *v76 = 136315394;
      v77 = sub_1000428CC();
      v79 = sub_10000C618(v77, v78, &v128._countAndFlagsBits);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2080;
      v80 = sub_100042698();
      v82 = sub_10000C618(v80, v81, &v128._countAndFlagsBits);

      *(v76 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v74, v75, "SnapshotManager: perfect match  %s - snapshotID: %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    v69 = BYTE12(v133[1]);
    v68 = *(&v132 + 1);
    v67 = v132;
    *&v70 = v101;
    *(&v70 + 1) = v100;
    *&v83 = v104;
    *(&v83 + 1) = v107;
    v103 = v83;
    countAndFlagsBits = v11._countAndFlagsBits;
    v65 = v118;
    object = v11._object;
    goto LABEL_54;
  }

LABEL_7:
  v17 = a1;
  sub_1000131F8(a1, &v131);
  v18 = sub_10004CEDC();
  v19 = sub_10004D37C();
  sub_100013254(a1);
  v20 = &OBJC_INSTANCE_METHODS_PRMutablePosterPreferences;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v131._countAndFlagsBits = v22;
    *v21 = 136315138;
    v23 = sub_1000428CC();
    v25 = sub_10000C618(v23, v24, &v131._countAndFlagsBits);

    *(v21 + 4) = v25;
    v17 = a1;
    _os_log_impl(&_mh_execute_header, v18, v19, "#SnapshotManager: try to match  %s", v21, 0xCu);
    sub_10000CF40(v22);
  }

  if (!v116)
  {

    countAndFlagsBits = 0;
    v66 = 0;
    v65 = 0;
    LODWORD(v20) = 0;
    v72 = 0;
    v73 = 0;
    LOBYTE(v2) = 0;
    v3 = 0;
    v4 = 0;
LABEL_59:
    v96 = sub_10004CEDC();
    v97 = sub_10004D37C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "SnapshotManager: no snapshot found on disk", v98, 2u);
    }

    v95 = 0;
    v94 = a2;
    goto LABEL_62;
  }

  v28 = *(v17 + 40);
  v29 = *(v17 + 48);
  v30 = 0uLL;
  v131 = 0;
  v132 = 0u;
  memset(v133, 0, 29);
  v31 = v115;
  if (*(v115 + 2))
  {
    v32 = 0;
    v33 = v28 / v29;
    v105 = (v28 * v29) >> 64 != (v28 * v29) >> 63;
    v108 = v116 - 1;
    v34 = 32;
    v35 = (v28 * v29);
    do
    {
      v36 = *&v31[v34];
      v37 = *&v31[v34 + 16];
      v38 = *&v31[v34 + 32];
      *&v130[13] = *&v31[v34 + 45];
      v129 = v37;
      *v130 = v38;
      v128 = v36;
      v4 = *&v130[24];
      v120 = *&v130[8];
      v3 = v38;
      v39 = *(&v37 + 1);
      v40 = v37;
      v112 = v36;
      sub_1000131F8(&v128, &v126);
      sub_1000131F8(&v128, &v126);
      v20 = sub_10004CEDC();
      v41 = sub_10004D37C();
      sub_100013254(&v128);
      v110 = v40;
      if (os_log_type_enabled(v20, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v125 = v43;
        v126 = 0;
        *v42 = 136315138;
        v127 = 0xE000000000000000;
        if (v39)
        {
          v44 = v39;
        }

        else
        {
          v44 = v112._object;

          v40 = v112._countAndFlagsBits;
        }

        v146._countAndFlagsBits = v40;
        v146._object = v44;
        sub_10004D16C(v146);

        v147._countAndFlagsBits = 45;
        v147._object = 0xE100000000000000;
        sub_10004D16C(v147);
        v148._countAndFlagsBits = sub_10004D73C();
        sub_10004D16C(v148);

        v149._countAndFlagsBits = 45;
        v149._object = 0xE100000000000000;
        sub_10004D16C(v149);
        v150._countAndFlagsBits = sub_10004D73C();
        sub_10004D16C(v150);

        v151._countAndFlagsBits = 45;
        v151._object = 0xE100000000000000;
        sub_10004D16C(v151);
        sub_10004D2EC();
        v152._countAndFlagsBits = 45;
        v152._object = 0xE100000000000000;
        sub_10004D16C(v152);
        sub_10004D2EC();
        v46 = sub_10000C618(v126, v127, &v125);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v20, v41, "SnapshotManager: with  %s", v42, 0xCu);
        sub_10000CF40(v43);

        v45 = v120;
        v31 = v115;
      }

      else
      {

        v45 = v120;
      }

      v47 = (v45 / *(&v45 + 1)) / v33;
      if (v47 > 1.0)
      {
        v47 = 1.0 / v47;
      }

      if (v47 >= 0.7)
      {
        if ((v45 * *(&v45 + 1)) >> 64 != (v45 * *(&v45 + 1)) >> 63)
        {
          goto LABEL_64;
        }

        if (v105)
        {
          goto LABEL_65;
        }

        if (((v45 * *(&v45 + 1)) / v35) >= 0.8)
        {
          if (v131._object)
          {
            v56 = (*(&v133[0] + 1) / *&v133[1]) / v33;
            if (v56 > 1.0)
            {
              v56 = 1.0 / v56;
            }

            if (v47 >= v56)
            {
              sub_100024DC8(&v131, &qword_10006EDA0, &unk_100050800);
              v57 = v130[28];
              *&v27 = v110;
              v26 = v112;
              *(&v27 + 1) = v39;
              v30 = v120;
            }

            else
            {
              v114 = v132;
              v3 = v133[0];
              v4 = DWORD2(v133[1]);
              v57 = BYTE12(v133[1]);
              v102 = *(v133 + 8);
              v122 = v131;
              sub_100013254(&v128);
              v27 = v114;
              v26 = v122;
              v30 = v102;
            }

            LOBYTE(v2) = v57 & 1;
          }

          else
          {
            v26 = v128;
            v27 = v129;
            v3 = *v130;
            LODWORD(v20) = *&v130[4];
            v30 = *&v130[8];
            v4 = *&v130[24];
            LOBYTE(v2) = v130[28];
          }

          goto LABEL_44;
        }

        sub_1000131F8(&v128, &v126);
        v20 = sub_10004CEDC();
        v52 = sub_10004D37C();
        sub_100013254(&v128);
        if (os_log_type_enabled(v20, v52))
        {
          v49 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v125 = v53;
          v126 = 0;
          *v49 = 136315138;
          v127 = 0xE000000000000000;
          v117 = v34;
          v121 = v53;
          if (v39)
          {
            v54 = v39;
            v55 = v110;
          }

          else
          {
            v54 = v112._object;

            v55 = v112._countAndFlagsBits;
          }

          v160._countAndFlagsBits = v55;
          v160._object = v54;
          sub_10004D16C(v160);

          v161._countAndFlagsBits = 45;
          v161._object = 0xE100000000000000;
          sub_10004D16C(v161);
          v162._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v162);

          v163._countAndFlagsBits = 45;
          v163._object = 0xE100000000000000;
          sub_10004D16C(v163);
          v164._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v164);

          v165._countAndFlagsBits = 45;
          v165._object = 0xE100000000000000;
          sub_10004D16C(v165);
          sub_10004D2EC();
          v166._countAndFlagsBits = 45;
          v166._object = 0xE100000000000000;
          sub_10004D16C(v166);
          sub_10004D2EC();
          sub_100013254(&v128);
          v62 = sub_10000C618(v126, v127, &v125);

          *(v49 + 4) = v62;
          v59 = v52;
          v60 = v20;
          v61 = "SnapshotManager: size reject %s";
          goto LABEL_43;
        }
      }

      else
      {
        sub_1000131F8(&v128, &v126);
        v20 = sub_10004CEDC();
        v48 = sub_10004D37C();
        sub_100013254(&v128);
        if (os_log_type_enabled(v20, v48))
        {
          v49 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v125 = v121;
          v126 = 0;
          *v49 = 136315138;
          v127 = 0xE000000000000000;
          v117 = v34;
          if (v39)
          {
            v50 = v39;
            v51 = v110;
          }

          else
          {
            v50 = v112._object;

            v51 = v112._countAndFlagsBits;
          }

          v153._countAndFlagsBits = v51;
          v153._object = v50;
          sub_10004D16C(v153);

          v154._countAndFlagsBits = 45;
          v154._object = 0xE100000000000000;
          sub_10004D16C(v154);
          v155._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v155);

          v156._countAndFlagsBits = 45;
          v156._object = 0xE100000000000000;
          sub_10004D16C(v156);
          v157._countAndFlagsBits = sub_10004D73C();
          sub_10004D16C(v157);

          v158._countAndFlagsBits = 45;
          v158._object = 0xE100000000000000;
          sub_10004D16C(v158);
          sub_10004D2EC();
          v159._countAndFlagsBits = 45;
          v159._object = 0xE100000000000000;
          sub_10004D16C(v159);
          sub_10004D2EC();
          sub_100013254(&v128);
          v58 = sub_10000C618(v126, v127, &v125);

          *(v49 + 4) = v58;
          v59 = v48;
          v60 = v20;
          v61 = "SnapshotManager: ratio reject %s";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v60, v59, v61, v49, 0xCu);
          sub_10000CF40(v121);

          v26 = v131;
          v27 = v132;
          v3 = v133[0];
          LODWORD(v20) = DWORD1(v133[0]);
          v30 = *(v133 + 8);
          v4 = DWORD2(v133[1]);
          LOBYTE(v2) = BYTE12(v133[1]);
          v31 = v115;
          v34 = v117;
          goto LABEL_44;
        }
      }

      sub_100013254(&v128);
      v26 = v131;
      v27 = v132;
      v3 = v133[0];
      LODWORD(v20) = DWORD1(v133[0]);
      v30 = *(v133 + 8);
      v4 = DWORD2(v133[1]);
      LOBYTE(v2) = BYTE12(v133[1]);
LABEL_44:
      if (v108 == v32)
      {
        goto LABEL_47;
      }

      ++v32;
      v131 = v26;
      v132 = v27;
      *&v133[0] = __PAIR64__(v20, v3);
      *(v133 + 8) = v30;
      DWORD2(v133[1]) = v4;
      BYTE12(v133[1]) = v2;
      v34 += 64;
    }

    while (v32 < *(v31 + 2));
  }

  __break(1u);
LABEL_47:
  v103 = v30;
  v123 = v26;
  v113 = v27;

  object = v123._object;
  countAndFlagsBits = v123._countAndFlagsBits;
  v65 = *(&v113 + 1);
  v66 = v113;
  if (!v123._object)
  {
    v73 = *(&v103 + 1);
    v72 = v103;
    goto LABEL_59;
  }

  v68 = *(&v113 + 1);
  v67 = v113;
  v12 = v3;
  v13 = v4;
  v69 = v2;
  v70 = v103;
  v71 = a1;
LABEL_54:
  v128._countAndFlagsBits = countAndFlagsBits;
  v128._object = object;
  v124 = object;
  *&v129 = v67;
  *(&v129 + 1) = v68;
  *v130 = v12;
  *&v130[8] = v70;
  *&v130[24] = v13;
  v130[28] = v69 & 1;
  v131 = v128;
  v132 = v129;
  v133[0] = *v130;
  *(v133 + 13) = *&v130[13];
  sub_1000131F8(v71, &v126);
  sub_1000131F8(&v128, &v126);
  v84 = sub_10004CEDC();
  v85 = sub_10004D37C();
  sub_100013254(v71);
  if (os_log_type_enabled(v84, v85))
  {
    v119 = v65;
    v86 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v86 = 136315394;
    v87 = sub_1000428CC();
    v89 = v88;
    sub_100013254(&v128);
    v90 = sub_10000C618(v87, v89, &v126);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    v91 = sub_1000428CC();
    v93 = sub_10000C618(v91, v92, &v126);

    *(v86 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v84, v85, "SnapshotManager: found usable snapshot on disk: %s. viewConfig: %s", v86, 0x16u);
    swift_arrayDestroy();

    v65 = v119;
  }

  else
  {

    sub_100013254(&v128);
  }

  v73 = *(&v103 + 1);
  v72 = v103;
  v94 = a2;
  v66 = v113;
  v95 = v124;
LABEL_62:
  *v94 = countAndFlagsBits;
  *(v94 + 8) = v95;
  *(v94 + 16) = v66;
  *(v94 + 24) = v65;
  *(v94 + 32) = v3;
  *(v94 + 36) = v20;
  *(v94 + 40) = v72;
  *(v94 + 48) = v73;
  *(v94 + 56) = v4;
  *(v94 + 60) = v2;
}

void sub_100045E60(UIImage *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v62 = a7;
  v11 = sub_10004CD3C();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = v65[8];
  __chkstk_darwin(v11);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004CEFC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v67 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v58 - v19;
  v21 = [objc_allocWithZone(CIContext) init];
  v22 = UIImageHEICRepresentation(a1);
  if (v22)
  {
    v63 = a6;
    v60 = v15;
    v61 = v14;
    v23 = v22;
    v24 = sub_10004CD7C();
    v26 = v25;

    sub_10004CD8C();
    if (!a4)
    {
LABEL_15:
      if (v63)
      {
        v63(1);
      }

      sub_100017C6C(v24, v26);
      goto LABEL_18;
    }

    v59 = a3;
    v48 = a4;
    sub_10004CCCC(v49);
    v51 = v50;
    DeviceRGB = [v48 colorSpace];
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    sub_10003A370(&_swiftEmptyArrayStorage);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_10004957C(&qword_10006E500, type metadata accessor for CIImageRepresentationOption);
    isa = sub_10004D00C().super.isa;

    v69[0] = 0;
    v58 = v21;
    v54 = [v21 writeJPEGRepresentationOfImage:v48 toURL:v51 colorSpace:DeviceRGB options:isa error:v69];

    v55 = v67;
    if (v54)
    {
      v56 = v69[0];

      goto LABEL_15;
    }

    v57 = v69[0];
    sub_10004CC6C();

    swift_willThrow();
    sub_100017C6C(v24, v26);

    v27 = v65;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v29 = v61;
    v30 = v63;
    v31 = v64;
    v32 = v66;
    if (Strong)
    {
      v33 = v60;
      (*(v60 + 16))(v55, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger, v61);

      (v27[2])(v31, v59, v32);
      swift_errorRetain();
      v34 = v27;
      v35 = sub_10004CEDC();
      v36 = sub_10004D37C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v68 = v65;
        *v37 = 136315394;
        sub_10004957C(&qword_10006F440, &type metadata accessor for URL);
        LODWORD(v59) = v36;
        v39 = sub_10004D73C();
        v41 = v40;
        (v34[1])(v31, v32);
        v42 = sub_10000C618(v39, v41, &v68);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2112;
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v43;
        *v38 = v43;
        _os_log_impl(&_mh_execute_header, v35, v59, "#SnapshotManager: error saving to path %s: %@", v37, 0x16u);
        sub_100024DC8(v38, &qword_1000703F0, &qword_100050B90);

        sub_10000CF40(v65);

        v30 = v63;

        (*(v33 + 8))(v67, v61);
      }

      else
      {

        (v34[1])(v31, v32);
        (*(v33 + 8))(v55, v29);
      }
    }

    if (v30)
    {
      v30(0);
    }
  }

  else
  {
    swift_beginAccess();
    v44 = swift_weakLoadStrong();
    if (!v44)
    {
LABEL_18:

      return;
    }

    (*(v15 + 16))(v20, v44 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger, v14);

    v45 = sub_10004CEDC();
    v46 = sub_10004D37C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "#SnapshotManager: snapshot heicData failed", v47, 2u);
    }

    (*(v15 + 8))(v20, v14);
  }
}

uint64_t sub_10004658C(char *a1, unint64_t a2, void (*a3)(void), void *a4)
{
  v162 = a1;
  v160 = sub_10004CF1C();
  v158 = *(v160 - 8);
  v8 = v158[8];
  __chkstk_darwin(v160);
  v156 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10004CF6C();
  v155 = *(v157 - 8);
  v10 = *(v155 + 64);
  __chkstk_darwin(v157);
  v154 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004CF2C();
  v153 = *(v12 - 8);
  v13 = *(v153 + 8);
  __chkstk_darwin(v12);
  Strong = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004CD3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = (&v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v142 - v22;
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v165 = &v142 - v26;
  isUniquelyReferenced_nonNull_native = __chkstk_darwin(v25);
  if (*(v4 + 16) != 1)
  {
    if (a3)
    {
      a3(0);
    }

    return 0;
  }

  v149 = v12;
  *&v152 = v29;
  v150 = a4;
  v151 = a3;
  v159 = v4;
  v161 = v17;
  v163 = &v142 - v28;
  if (qword_10006E0C0 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  v164 = isUniquelyReferenced_nonNull_native;
  sub_1000132A8(isUniquelyReferenced_nonNull_native, qword_100073158);
  aBlock = (sub_100042A30)();
  v167 = v30;
  v174._countAndFlagsBits = 0x636965682ELL;
  v174._object = 0xE500000000000000;
  sub_10004D16C(v174);
  sub_10004CCEC();

  v146 = a2;
  aBlock = sub_100042A30(v31);
  v167 = v32;
  v175._countAndFlagsBits = 0x2E78616D6E696D2DLL;
  v175._object = 0xEB0000000067706ALL;
  sub_10004D16C(v175);
  sub_10004CCEC();

  v33 = objc_allocWithZone(CIImage);
  result = [v33 initWithImage:v162];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v147 = result;
  v35 = sub_1000479A4(result);
  v36 = v149;
  v148 = v37;
  if ((v35 & 1) == 0)
  {
    v75 = v163;
    v74 = v164;
    if (qword_10006E0C8 != -1)
    {
      v141 = v164;
      swift_once();
      v74 = v141;
    }

    v76 = sub_1000132A8(v74, qword_100073170);
    aBlock = sub_100042A30(v76);
    v167 = v77;
    v176._countAndFlagsBits = 0x636965682ELL;
    v176._object = 0xE500000000000000;
    sub_10004D16C(v176);
    v78 = v152;
    sub_10004CCEC();

    v79 = v161;
    v80 = (*(v161 + 40))(v75, v78, v164);
    aBlock = sub_100042A30(v80);
    v167 = v81;
    v177._countAndFlagsBits = 0x2E78616D6E696D2DLL;
    v177._object = 0xEB0000000067706ALL;
    sub_10004D16C(v177);
    sub_10004CCEC();
    v82 = v164;

    v83 = *(v79 + 8);
    v84 = v165;
    v83(v165, v82);
    (*(v79 + 32))(v84, v78, v82);
    v85 = sub_10004CEDC();
    v86 = sub_10004D37C();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v173 = v88;
      *v87 = 136315138;
      swift_beginAccess();
      sub_10004957C(&qword_10006F440, &type metadata accessor for URL);
      v89 = sub_10004D73C();
      v91 = sub_10000C618(v89, v90, &v173);

      *(v87 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "#SnapshotManager: snapshot didn't pass validation %s", v87, 0xCu);
      sub_10000CF40(v88);
      v75 = v163;
    }

    if (v151)
    {
      v151(0);

      v92 = v164;
      v83(v165, v164);
    }

    else
    {
      v92 = v164;
      v83(v165, v164);
    }

    v83(v75, v92);
    return 0;
  }

  v38 = *(v161 + 16);
  v143 = v23;
  v39 = v152;
  v145 = v20;
  v40 = v164;
  v38();
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v41 = v153;
  (*(v153 + 13))(Strong, enum case for DispatchQoS.QoSClass.default(_:), v36);
  v144 = sub_10004D3FC();
  (*(v41 + 1))(Strong, v36);
  v149 = swift_allocObject();
  swift_weakInit();
  v42 = v143;
  v43 = v39;
  v44 = v40;
  (v38)(v143, v43, v40);
  (v38)(v145, v165, v40);
  v45 = v161;
  v46 = *(v161 + 80);
  v47 = (v46 + 32) & ~v46;
  v48 = (v18 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v46 + v48 + 8) & ~v46;
  v50 = swift_allocObject();
  v20 = v149;
  *(v50 + 16) = v162;
  *(v50 + 24) = v20;
  v51 = *(v45 + 32);
  v51(v50 + v47, v42, v44);
  v52 = v148;
  *(v50 + v48) = v148;
  v51(v50 + v49, v145, v44);
  v53 = (v50 + ((v18 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
  v54 = v151;
  v55 = v150;
  *v53 = v151;
  v53[1] = v55;
  v170 = sub_1000494B4;
  v171 = v50;
  aBlock = _NSConcreteStackBlock;
  v167 = 1107296256;
  v168 = sub_10002FBD0;
  v169 = &unk_100066F80;
  v56 = _Block_copy(&aBlock);
  v18 = v52;
  v153 = v162;

  sub_10002F790(v54);
  v57 = v154;
  sub_10004CF3C();
  v173 = &_swiftEmptyArrayStorage;
  sub_10004957C(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  v58 = v156;
  Strong = v160;
  sub_10004D57C();
  v59 = v144;
  sub_10004D3EC();
  _Block_release(v56);

  (v158[1])(v58, Strong);
  (*(v155 + 8))(v57, v157);
  v60 = *(v161 + 8);
  v161 += 8;
  (v60)(v152, v164);

  v61 = v159;
  v62 = *(v159 + 32);
  os_unfair_lock_lock(v62);
  swift_beginAccess();
  v63 = *(v61 + 24);
  if (!*(v63 + 16))
  {
    goto LABEL_36;
  }

  v64 = *(v61 + 24);

  v65 = sub_100033238(v146);
  if ((v66 & 1) == 0)
  {

LABEL_36:
    os_unfair_lock_unlock(v62);
    goto LABEL_37;
  }

  v23 = *(*(v63 + 56) + 8 * v65);

  os_unfair_lock_unlock(v62);
  if (!v23)
  {
    goto LABEL_37;
  }

  v151 = v60;
  if (v23 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_10004D67C();
    v67 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v67 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = 0;
  v158 = &_swiftEmptyArrayStorage;
  while (v67 != a2)
  {
    if ((v23 & 0xC000000000000001) == 0)
    {
      if (a2 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v68 = *(v23 + 8 * a2 + 32);

      v20 = (a2 + 1);
      if (!__OFADD__(a2, 1))
      {
        goto LABEL_15;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v140 = isUniquelyReferenced_nonNull_native;
      swift_once();
      isUniquelyReferenced_nonNull_native = v140;
      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = sub_10004D62C();
    v68 = isUniquelyReferenced_nonNull_native;
    v20 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      goto LABEL_55;
    }

LABEL_15:
    Strong = swift_unknownObjectWeakLoadStrong();
    v69 = *(v68 + 24);

    ++a2;
    if (Strong)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100048570(0, v158[2] + 1, 1, v158);
        v158 = isUniquelyReferenced_nonNull_native;
      }

      v71 = v158[2];
      v70 = v158[3];
      if (v71 >= v70 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100048570((v70 > 1), v71 + 1, 1, v158);
        v158 = isUniquelyReferenced_nonNull_native;
      }

      v72 = v158;
      v158[2] = v71 + 1;
      v73 = &v72[2 * v71];
      v73[4] = Strong;
      v73[5] = v69;
      a2 = v20;
    }
  }

  v104 = v158;

  v105 = v146;
  sub_1000131F8(v146, &aBlock);
  v106 = sub_10004CEDC();
  v107 = sub_10004D37C();

  sub_100013254(v105);
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v108 = 136315394;
    sub_10000CC1C(&qword_100070EC0, &qword_100051C48);
    v109 = sub_10004D24C();
    v111 = sub_10000C618(v109, v110, &aBlock);

    *(v108 + 4) = v111;
    *(v108 + 12) = 2080;
    v112 = sub_100042698();
    v114 = sub_10000C618(v112, v113, &aBlock);

    *(v108 + 14) = v114;
    _os_log_impl(&_mh_execute_header, v106, v107, "SnapshotManager: observers for %s %s", v108, 0x16u);
    swift_arrayDestroy();
  }

  v60 = v151;
  v116 = v104[2];
  if (v116)
  {
    v150 = v18;
    v117 = *(v146 + 1);
    v157 = *v146;
    v156 = v117;
    v118 = *(v146 + 6);
    v155 = *(v146 + 5);
    v154 = v118;
    v119 = *(v146 + 8);
    v120 = *(v146 + 14);
    v121 = 4;
    *&v115 = 136315138;
    v152 = v115;
    while (1)
    {
      v162 = v116;
      v123 = v104[v121];
      aBlock = 0;
      v167 = 0xE000000000000000;
      v124 = v123;
      v178._countAndFlagsBits = v157;
      v178._object = v156;
      sub_10004D16C(v178);
      v179._countAndFlagsBits = 45;
      v179._object = 0xE100000000000000;
      sub_10004D16C(v179);
      v172 = v155;
      v180._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v180);

      v181._countAndFlagsBits = 45;
      v181._object = 0xE100000000000000;
      sub_10004D16C(v181);
      v172 = v154;
      v182._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v182);

      v183._countAndFlagsBits = 45;
      v183._object = 0xE100000000000000;
      sub_10004D16C(v183);
      sub_10004D2EC();
      v184._countAndFlagsBits = 45;
      v184._object = 0xE100000000000000;
      sub_10004D16C(v184);
      sub_10004D2EC();
      v126 = aBlock;
      v125 = v167;
      v160 = v124;
      v127 = &v124[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v185 = *&v124[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v128 = *&v124[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
      v129 = *&v124[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 40];
      v130 = *(v127 + 6);
      v131 = *(v127 + 14);
      aBlock = 0;
      v167 = 0xE000000000000000;
      sub_10004D16C(v185);
      v186._countAndFlagsBits = 45;
      v186._object = 0xE100000000000000;
      sub_10004D16C(v186);
      v172 = v129;
      v187._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v187);

      v188._countAndFlagsBits = 45;
      v188._object = 0xE100000000000000;
      sub_10004D16C(v188);
      v172 = v130;
      v189._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v189);

      v190._countAndFlagsBits = 45;
      v190._object = 0xE100000000000000;
      sub_10004D16C(v190);
      sub_10004D2EC();
      v191._countAndFlagsBits = 45;
      v191._object = 0xE100000000000000;
      sub_10004D16C(v191);
      sub_10004D2EC();
      if (v126 == aBlock && v125 == v167)
      {
        break;
      }

      v134 = sub_10004D74C();

      v132 = v162;
      v133 = v160;
      if (v134)
      {
        goto LABEL_51;
      }

LABEL_46:

      v121 += 2;
      v116 = v132 - 1;
      v104 = v158;
      if (!v116)
      {

        v18 = v150;
        v60 = v151;
        goto LABEL_37;
      }
    }

    v132 = v162;
    v133 = v160;
LABEL_51:
    v135 = v133;
    v136 = sub_10004CEDC();
    v137 = sub_10004D37C();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      aBlock = v139;
      *v138 = v152;
      *(v138 + 4) = sub_10000C618(*&v135[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID], *&v135[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v136, v137, "#%s snapshotReader: update image from observer ", v138, 0xCu);
      sub_10000CF40(v139);
    }

    v122 = *&v135[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock + 8];
    (*&v135[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock])(v153, 0);
    goto LABEL_46;
  }

LABEL_37:
  v93 = sub_10004CEDC();
  v94 = sub_10004D37C();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v172 = v96;
    *v95 = 136315138;
    v97 = v163;
    swift_beginAccess();
    sub_10004957C(&qword_10006F440, &type metadata accessor for URL);
    v98 = v164;
    v99 = sub_10004D73C();
    v101 = v60;
    v102 = sub_10000C618(v99, v100, &v172);

    *(v95 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v93, v94, "#SnapshotManager: saved to path %s", v95, 0xCu);
    sub_10000CF40(v96);

    v101(v165, v98);
    v101(v97, v98);
  }

  else
  {

    v103 = v164;
    (v60)(v165, v164);
    (v60)(v163, v103);
  }

  return 1;
}

id sub_1000479A4(void *a1)
{
  v1 = sub_100049E34(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_10004D26C();
  *(v2 + 16) = 8;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = [objc_allocWithZone(CIContext) init];
  [v1 extent];
  result = [v4 render:v1 toBitmap:v2 + 32 rowBytes:32 bounds:kCIFormatRGBAf format:DeviceRGB colorSpace:?];
  v6 = *(v2 + 16);
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 == 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 < 5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == 5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 < 7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 != 7)
  {
    v7 = ((*(v2 + 32) + *(v2 + 36)) + *(v2 + 40)) + *(v2 + 44);
    v8 = ((*(v2 + 48) + *(v2 + 52)) + *(v2 + 56)) + *(v2 + 60);
    v9 = vabds_f32(v7, v8);
    v10 = v9 > 0.01;
    v11 = sub_10004CEDC();
    v12 = sub_10004D37C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109632;
      *(v13 + 4) = v9 > 0.01;
      *(v13 + 8) = 2048;
      *(v13 + 10) = v7;
      *(v13 + 18) = 2048;
      *(v13 + 20) = v8;
      _os_log_impl(&_mh_execute_header, v11, v12, "#SnapshotManager: checkIfValidSnapshot %{BOOL}d v0: %f v1: %f", v13, 0x1Cu);
    }

    return v10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100047BF0()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotManager()
{
  result = qword_100070CE8;
  if (!qword_100070CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100047CE8()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100047DC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100047DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100047E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100047E90()
{
  result = qword_100070EB8;
  if (!qword_100070EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EB8);
  }

  return result;
}

char *sub_100047EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070EF0, &qword_100051C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_100048000(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000CC1C(&qword_100070EE0, &qword_100051C60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CC1C(&qword_100070EE8, &qword_100051C68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100048148(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070CA8, &qword_100051C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100048254(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070F08, &unk_100051C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100048358(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070F00, &qword_100051C88);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100048464(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070ED0, &qword_100051C58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100048570(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000CC1C(&qword_100070EC8, &qword_100051C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CC1C(&qword_100070EC0, &qword_100051C48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000486A4()
{
  v0 = sub_10004D20C();
  v4 = sub_100048724(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100048724(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10004D13C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_10004D54C();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000CAB4(v9, 0);
  v12 = sub_10004887C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_10004D13C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_10004D64C();
LABEL_4:

  return sub_10004D13C();
}

unint64_t sub_10004887C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100048A9C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10004D1CC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10004D64C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100048A9C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_10004D19C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100048A9C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10004D1DC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10004D1AC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_100048B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100049F6C();

  result = sub_10004D1FC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000486A4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10004D64C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

BOOL sub_1000490B0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_10004D60C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1000491A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_10004D64C();
  }

  result = sub_1000495C4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100049274(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_10004D74C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_10004D74C() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v6)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 60) ^ *(a2 + 60) ^ 1;
  return v8 & 1;
}

uint64_t sub_100049350()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049388()
{
  v1 = sub_10004CD3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 24);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  v10(v0 + v7, v1);
  if (*(v0 + v8))
  {
    v11 = *(v0 + v8 + 8);
  }

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

void sub_1000494B4()
{
  v1 = *(sub_10004CD3C() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v5);
  v10 = v0 + ((v4 + v6) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_100045E60(v7, v8, v0 + v3, v9, v0 + v6, v11, v12);
}

uint64_t sub_100049564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004957C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000495C4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100048A9C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_10004D1BC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100048A9C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100048A9C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_10004D1BC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100049A30@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004CD3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CCDC();
  v9 = sub_10004CCBC();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  v58 = v9;
  v59 = v11;
  sub_100018B44();
  v13 = sub_10004D55C();

  v14 = v13[2];
  if (v14 < 4 || v14 > 5)
  {
    v12(a1, v4);

LABEL_18:
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v27 = 0;
    v35 = 0;
    v41 = 0;
    v42 = 0;
LABEL_19:
    *a2 = v38;
    *(a2 + 8) = v39;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v40;
    *(a2 + 36) = 0;
    *(a2 + 40) = v27;
    *(a2 + 48) = v35;
    *(a2 + 56) = v41;
    *(a2 + 60) = v42;
    return result;
  }

  v57 = a1;
  v16 = v13[16];
  v17 = v13[17];
  v18 = v13[18];
  v19 = v13[19];

  v20 = sub_10004D12C();
  v22 = v21;

  LODWORD(v58) = 0;
  LOBYTE(v18) = sub_1000490B0(v20, v22);

  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v13[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  v23 = v13[8];
  v24 = v13[9];
  if ((v24 ^ v23) < 0x4000)
  {
    goto LABEL_17;
  }

  v54 = v58;
  v25 = v13[11];
  v55 = v13[10];
  v56 = v23;
  result = sub_1000491A8(v23, v24, v55, v25, 10);
  if ((v26 & 0x100) != 0)
  {

    v27 = sub_100048B18(v56, v24, v55, v25, 10);
    v29 = v28;

    if (v29)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v26)
    {
      goto LABEL_17;
    }

    v27 = result;
  }

  if (v13[2] < 3uLL)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = v13[12];
  v31 = v13[13];
  if ((v31 ^ v30) < 0x4000)
  {
    goto LABEL_17;
  }

  v32 = v13[14];
  v33 = v13[15];
  v55 = v13[13];
  v56 = v30;
  v53 = v32;
  result = sub_1000491A8(v30, v31, v32, v33, 10);
  v52 = 0;
  if ((v34 & 0x100) == 0)
  {
    if ((v34 & 1) == 0)
    {
      v35 = result;
      goto LABEL_20;
    }

LABEL_17:

    result = (v12)(v57, v4);
    goto LABEL_18;
  }

  v35 = sub_100048B18(v56, v55, v53, v33, 10);
  v37 = v36;

  if (v37)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (v14 != 5)
  {
    goto LABEL_24;
  }

  if (v13[2] >= 5uLL)
  {
    v44 = v13[20];
    v43 = v13[21];
    v45 = v13[23];
    v55 = v13[22];
    v56 = v43;

    v56 = sub_10004D12C();
    v47 = v46;

    LODWORD(v58) = 0;
    LOBYTE(v47) = sub_1000490B0(v56, v47);

    if (v47)
    {
      v41 = v58;
      goto LABEL_25;
    }

LABEL_24:
    v41 = 0;
LABEL_25:
    if (v13[2])
    {
      v42 = v14 != 5;
      v48 = v13[4];
      v55 = v13[5];
      v56 = v48;
      v49 = v13[6];
      v52 = v13[7];
      v53 = v49;

      v38 = sub_10004D12C();
      v39 = v50;

      result = (v12)(v57, v4);
      v40 = v54;
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

id sub_100049E34(void *a1)
{
  v2 = [objc_opt_self() areaMinMaxFilter];
  [v2 setInputImage:a1];
  [a1 extent];
  v3 = CGRectGetWidth(v10) * 0.5;
  [a1 extent];
  v4 = v3 - CGRectGetWidth(v11) * 0.25;
  [a1 extent];
  v5 = CGRectGetHeight(v12) * 0.5;
  [a1 extent];
  v6 = v5 - CGRectGetHeight(v13) * 0.25;
  [a1 extent];
  v7 = CGRectGetWidth(v14) * 0.5;
  [a1 extent];
  [v2 setExtent:{v4, v6, v7, CGRectGetHeight(v15) * 0.5}];
  v8 = [v2 outputImage];

  return v8;
}

unint64_t sub_100049F6C()
{
  result = qword_100070ED8;
  if (!qword_100070ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070ED8);
  }

  return result;
}

_BYTE *sub_100049FC0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_10004A040(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      v48 = [objc_allocWithZone(UIColor) initWithRed:0.894117647 green:0.584313725 blue:0.223529412 alpha:1.0];
      v49 = [objc_allocWithZone(UIColor) initWithRed:0.607843137 green:0.270588235 blue:0.17254902 alpha:1.0];
      v50 = [objc_allocWithZone(UIColor) initWithRed:0.615686275 green:0.603921569 blue:0.560784314 alpha:1.0];

      v4 = sub_10004D73C();
      v5 = v51;
      v7 = &_swiftEmptyArrayStorage;
      v52 = &_swiftEmptyArrayStorage;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_26;
      }

      goto LABEL_60;
    }

    v21 = 0;
    v7 = &_swiftEmptyArrayStorage;
    v22 = 3;
    v97 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v21 > 3)
      {
        v22 = v21;
      }

      v23 = -v22;
      v24 = &off_1000657A0 + 2 * v21++;
      if (v23 + v21 == 1)
      {
        break;
      }

      v25 = v24[4];
      v5 = v24[5];
      swift_bridgeObjectRetain_n();
      v99._countAndFlagsBits = sub_10004100C(v25, v5);
      v27 = v26;
      v29 = v28;
      countAndFlagsBits = v99._countAndFlagsBits;
      object = v99._object;
      sub_10004D16C(v99);
      v90 = object;
      v94 = countAndFlagsBits;
      sub_10003EB10(countAndFlagsBits, object, v29, v27);
      v32 = objc_allocWithZone(PREditingLook);
      v33 = sub_10004D05C();

      v34 = sub_10004D05C();

      [v32 initWithIdentifier:v33 displayName:v34];

      sub_100010F08(v94, v90, v29, v27);
      sub_10004D21C();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004D25C();
      }

      v4 = &v97;
      sub_10004D27C();
      v7 = v97;
      v22 = 3;
      if (v21 == 3)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_60:
      v52 = sub_100048148(0, *(v7 + 2) + 1, 1, v7);
LABEL_26:
      v54 = *(v52 + 2);
      v53 = *(v52 + 3);
      if (v54 >= v53 >> 1)
      {
        v52 = sub_100048148((v53 > 1), v54 + 1, 1, v52);
      }

      *(v52 + 2) = v54 + 1;
      v55 = &v52[32 * v54];
      *(v55 + 4) = v4;
      *(v55 + 5) = v5;
      *(v55 + 6) = 0;
      v55[56] = 3;
      v56 = sub_10004D73C();
      v58 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_100048148(0, *(v52 + 2) + 1, 1, v52);
      }

      v60 = *(v52 + 2);
      v59 = *(v52 + 3);
      if (v60 >= v59 >> 1)
      {
        v52 = sub_100048148((v59 > 1), v60 + 1, 1, v52);
      }

      *(v52 + 2) = v60 + 1;
      v61 = &v52[32 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
      *(v61 + 6) = 0;
      v61[56] = 3;
      v4 = sub_10004D73C();
      v5 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_100048148(0, *(v52 + 2) + 1, 1, v52);
      }

      v64 = *(v52 + 2);
      v63 = *(v52 + 3);
      if (v64 >= v63 >> 1)
      {
        v52 = sub_100048148((v63 > 1), v64 + 1, 1, v52);
      }

      *(v52 + 2) = v64 + 1;
      v65 = &v52[32 * v64];
      *(v65 + 4) = v4;
      *(v65 + 5) = v5;
      *(v65 + 6) = 0;
      v65[56] = 3;
      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      v66 = [qword_1000730A8 enableFantasy];
      v67 = *(v52 + 2);
      if (v66)
      {
        v68 = sub_10004D73C();
        v4 = *(v52 + 2);
        v70 = *(v52 + 3);
        v67 = v4 + 1;
        if (v4 >= v70 >> 1)
        {
          v86 = v68;
          v5 = v69;
          v87 = sub_100048148((v70 > 1), v4 + 1, 1, v52);
          v69 = v5;
          v52 = v87;
          v68 = v86;
        }

        *(v52 + 2) = v67;
        v71 = &v52[32 * v4];
        *(v71 + 4) = v68;
        *(v71 + 5) = v69;
        *(v71 + 6) = 0;
        v71[56] = 3;
        v97 = v7;
      }

      else
      {
        v97 = v7;
        if (!v67)
        {
LABEL_55:

          return v7;
        }
      }

      v7 = 0;
      v72 = (v52 + 56);
      v88 = v67;
      v92 = v52;
      while (v7 < *(v52 + 2))
      {
        v96 = v7;
        v73 = *(v72 - 3);
        v74 = *(v72 - 2);
        v75 = *(v72 - 1);
        v5 = *v72;
        if (*v72 > 1u)
        {
          v77 = *(v72 - 3);
          v78 = *(v72 - 2);
          v79 = *(v72 - 1);
          if (v5 == 2)
          {
            v76 = 2;
          }

          else
          {
            v76 = 3;
          }
        }

        else
        {
          v77 = *(v72 - 3);
          v78 = *(v72 - 2);
          v79 = *(v72 - 1);
          v76 = v5 != 0;
        }

        sub_10003E214(v77, v78, v79, v76);
        v101._countAndFlagsBits = v73;
        v101._object = v74;
        sub_10004D16C(v101);
        sub_10003EB10(v73, v74, v75, v5);
        v80 = v75;
        v81 = objc_allocWithZone(PREditingLook);
        v82 = sub_10004D05C();

        v83 = sub_10004D05C();

        [v81 initWithIdentifier:v82 displayName:v83];

        sub_100010F08(v73, v74, v80, v5);
        sub_10004D21C();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v84 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10004D25C();
        }

        v7 = v96 + 1;
        v4 = &v97;
        sub_10004D27C();
        v72 += 32;
        v52 = v92;
        if (v88 == (v96 + 1))
        {
          v7 = v97;
          goto LABEL_55;
        }
      }
    }
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  if (a4)
  {
    v35 = 6;
    v97 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v6 > 6)
      {
        v35 = v6;
      }

      v36 = -v35;
      v37 = &off_100065720 + 2 * v6++;
      if (v36 + v6 == 1)
      {
        goto LABEL_58;
      }

      v38 = v37[4];
      v5 = v37[5];
      swift_bridgeObjectRetain_n();
      v100._countAndFlagsBits = sub_10004100C(v38, v5);
      v40 = v39;
      v42 = v41;
      v43 = v100._countAndFlagsBits;
      v44 = v100._object;
      sub_10004D16C(v100);
      v91 = v44;
      v95 = v43;
      sub_10003EB10(v43, v44, v42, v40);
      v45 = objc_allocWithZone(PREditingLook);
      v46 = sub_10004D05C();

      v47 = sub_10004D05C();

      [v45 initWithIdentifier:v46 displayName:v47];

      sub_100010F08(v95, v91, v42, v40);
      sub_10004D21C();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004D25C();
      }

      v4 = &v97;
      sub_10004D27C();
      v7 = v97;
      v35 = 6;
      if (v6 == 6)
      {
        goto LABEL_42;
      }
    }
  }

  v97 = &_swiftEmptyArrayStorage;
  do
  {
    v8 = (&off_1000657F0 + 2 * v6++ + 5);
    v9 = *(v8 - 1);
    v10 = *v8;
    swift_bridgeObjectRetain_n();
    v98._countAndFlagsBits = sub_10004100C(v9, v10);
    v12 = v11;
    v14 = v13;
    v15 = v98._countAndFlagsBits;
    v16 = v98._object;
    sub_10004D16C(v98);
    v89 = v16;
    v93 = v15;
    sub_10003EB10(v15, v16, v14, v12);
    v17 = objc_allocWithZone(PREditingLook);
    v18 = sub_10004D05C();

    v19 = sub_10004D05C();

    [v17 initWithIdentifier:v18 displayName:v19];

    sub_100010F08(v93, v89, v14, v12);
    sub_10004D21C();
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10004D25C();
    }

    sub_10004D27C();
    v7 = v97;
  }

  while (v6 != 2);
LABEL_42:
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_10004ACBC(uint64_t a1, void *a2)
{

  result = sub_10004100C(a1, a2);
  if (!v2 && v8 == 3)
  {
    v9 = result;
    v10 = v6;
    v11 = v7;
    v12 = sub_10003F3A8(result, v6, v7, 3);
    v15 = sub_10004A040(v12, v13, v14, 3u);
    if (v15 >> 62)
    {
      v16 = sub_10004D67C();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16 >= v12)
    {
      return v9;
    }

    if (qword_10006E0A8 != -1)
    {
      swift_once();
    }

    v17 = [qword_1000730A8 customGlitterVariant];
    if (v17)
    {
      v18 = v17;
      sub_10004D08C();

      sub_10004C820();
      v27 = v19;

      v20 = sub_10004D05C();
      sub_10004B21C(v20, v27);

      v24 = sub_10004A040(v21, v22, v23, 3u);
      if (v24 >> 62)
      {
        v25 = sub_10004D67C();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFADD__(v25, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_10004D73C();
        sub_100010F08(v9, v10, v11, 3u);
        return v26;
      }
    }

    else
    {
      return v9;
    }
  }

  return result;
}

void sub_10004AEDC(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100051CA0;
  v6 = [v2 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_10004CAA0();
  isa = sub_10004D22C().super.isa;

  [v4 activateConstraints:isa];
}

double sub_10004B11C()
{
  v1 = v0;
  v2 = [v0 CGColor];
  v3 = sub_10004D33C();

  if (!v3)
  {
    goto LABEL_5;
  }

  if (*(v3 + 16) != 4)
  {

LABEL_5:
    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    [v1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
    v4.f64[0] = v12;
    v5.f64[0] = v10;
    v4.f64[1] = v11;
    v5.f64[1] = v9;
    goto LABEL_6;
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 48);

  v4 = v7;
  v5 = v8;
LABEL_6:
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v4), v5).u64[0];
  return result;
}

id sub_10004B21C(const __CFString *a1, float32x4_t a2)
{
  v2 = CGColorSpaceCreateWithName(a1);
  if (v2)
  {
    v3 = v2;
    v13[0] = vcvtq_f64_f32(*a2.f32);
    v13[1] = vcvt_hight_f64_f32(a2);
    v4 = CGColorCreate(v2, v13);
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(UIColor) initWithCGColor:v4];

      return v6;
    }
  }

  if (qword_10006E0D0 != -1)
  {
    swift_once();
  }

  v8 = sub_10004CEFC();
  sub_1000132A8(v8, qword_100070F10);
  v9 = sub_10004CEDC();
  v10 = sub_10004D38C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "unable to create cgColor in extended linear SRGB", v11, 2u);
  }

  return [objc_allocWithZone(UIColor) initWithRed:a2.f32[0] green:a2.f32[1] blue:a2.f32[2] alpha:a2.f32[3]];
}

id sub_10004B3BC(double a1)
{
  *v2.i64 = sub_10004B11C();
  v3 = a1;
  v9 = v3;
  v10 = v2;
  v8 = 1.0 - v3;
  *v4.i64 = sub_10004B11C();
  v11 = vaddq_f32(vmulq_n_f32(v10, v8), vmulq_n_f32(v4, v9));
  v5 = sub_10004D05C();
  v6 = sub_10004B21C(v5, v11);

  return v6;
}

uint64_t sub_10004B44C(__n128 a1)
{
  sub_10000CC1C(&qword_1000703B0, &qword_100051190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000513A0;
  *(v1 + 56) = &type metadata for Float;
  *(v1 + 64) = &protocol witness table for Float;
  *(v1 + 32) = a1.n128_u32[0];
  *(v1 + 96) = &type metadata for Float;
  *(v1 + 104) = &protocol witness table for Float;
  *(v1 + 72) = a1.n128_u32[1];
  *(v1 + 136) = &type metadata for Float;
  *(v1 + 144) = &protocol witness table for Float;
  *(v1 + 112) = a1.n128_u32[2];
  *(v1 + 176) = &type metadata for Float;
  *(v1 + 184) = &protocol witness table for Float;
  *(v1 + 152) = a1.n128_u32[3];

  return sub_10004D0AC();
}

unint64_t *sub_10004B50C(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10004BDDC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_10004CBCC();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_10004CBFC();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_10004CBCC();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_10004CBFC();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_10000CC1C(&qword_1000703B0, &qword_100051190);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000505B0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_10004D0AC();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10004BDDC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_10004B888()
{
  v0 = sub_10004D0EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D0CC();
  v5 = sub_10004D09C();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10004CC0C();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_10004CBDC();
    v17 = 0x1000000000;
    v18 = v12 | 0x4000000000000000;
    sub_10004C9C0(v5, v7);
    sub_10004C2E8(&v17, v5, v7);
    sub_10004CA28(v5, v7);
    v13 = v17;
    v14 = v18;
    v16 = sub_10004B50C(v17, v18);
    sub_10000CC1C(&qword_100070F28, &qword_100051CC0);
    sub_10004CA3C();
    v15 = sub_10004D03C();
    sub_10004CA28(v5, v7);

    sub_100017C6C(v13, v14);
    return v15;
  }

  return result;
}

unsigned __int8 *sub_10004BA64@<X0>(unsigned __int8 *md@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v7 = md;
  v9 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v9)
    {
      data[0] = a2;
      LOWORD(data[1]) = a3;
      BYTE2(data[1]) = BYTE2(a3);
      BYTE3(data[1]) = BYTE3(a3);
      BYTE4(data[1]) = BYTE4(a3);
      BYTE5(data[1]) = BYTE5(a3);
      if (md)
      {
        md = CC_MD5(data, BYTE6(a3), md);
      }

      v10 = 0;
      goto LABEL_20;
    }

    if (a2 >> 32 >= a2)
    {
      v16 = v4;
      v13 = sub_10004CBCC();
      if (!v13)
      {
        goto LABEL_16;
      }

      v15 = sub_10004CBFC();
      if (!__OFSUB__(a2, v15))
      {
        v13 += a2 - v15;
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    v16 = v4;
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = sub_10004CBCC();
    if (v13)
    {
      v14 = sub_10004CBFC();
      if (__OFSUB__(v12, v14))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v13 += v12 - v14;
    }

    if (!__OFSUB__(v11, v12))
    {
LABEL_16:
      sub_10004CBEC();
      md = sub_10004BCA4(v13, v7, a2, a3, data);
      if (!v16)
      {
        v10 = data[0];
LABEL_20:
        *a4 = v10;
        return md;
      }

      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  memset(data, 0, 14);
  md = sub_10004BCA4(data, md, a2, a3, &v17);
  if (!v4)
  {
    v10 = v17;
    goto LABEL_20;
  }

LABEL_25:

  __break(1u);
  return md;
}

unsigned __int8 *sub_10004BCA4@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X4>, unint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  if (!result || !a2)
  {
    goto LABEL_17;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v6)
  {
    LODWORD(v7) = BYTE6(a4);
LABEL_16:
    result = CC_MD5(result, v7, a2);
LABEL_17:
    *a5 = 0;
    return result;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_19;
  }

  v7 = HIDWORD(a3) - a3;
LABEL_12:
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v7))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    LODWORD(v7) = 0;
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10004BD38()
{
  v0 = sub_10004CEFC();
  sub_10001A538(v0, qword_100070F10);
  sub_1000132A8(v0, qword_100070F10);
  return sub_10004CEEC();
}

char *sub_10004BDBC(char *a1, int64_t a2, char a3)
{
  result = sub_10004BDFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004BDDC(char *a1, int64_t a2, char a3)
{
  result = sub_10004BF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004BDFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070EF0, &qword_100051C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10004BF18(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CC1C(&qword_100070F38, &qword_100051CC8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10004C024(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10004C0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a2 - a1;
  v6 = a2 - a1 + 1;
  v7 = ~(a2 - a1);
  v8 = &_swiftEmptyArrayStorage;
  do
  {
    if (v5 == -1)
    {
      swift_stdlib_random();
      v10 = 0;
    }

    else
    {
      swift_stdlib_random();
      v9 = (0 * v6) >> 64;
      if (v7 % v6)
      {
        do
        {
          swift_stdlib_random();
        }

        while (v7 % v6);
        v9 = (0 * v6) >> 64;
      }

      v10 = v9 + a1;
    }

    v11 = 0;
    v12 = *(v8 + 2);
    while (v12 != v11)
    {
      v13 = &v8[8 * v11++];
      if (*(v13 + 4) == v10)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100048254(0, v12 + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    v12 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v8 = sub_100048254((v14 > 1), v15 + 1, 1, v8);
    }

    *(v8 + 2) = v12;
    *&v8[8 * v15 + 32] = v10;
LABEL_4:
    ;
  }

  while (v12 != a3);
  return v8;
}

uint64_t sub_10004C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_10004CBCC();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_10004CBFC();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_10004CBEC();
  result = sub_10004BA64((v11 + v12), a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return result;
}

unint64_t sub_10004C2E8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_10004C9D4(a2, a3);
      sub_10004C9D4(a2, a3);
      sub_100017C6C(v8, v7);
      *&md = v8;
      WORD4(md) = v7;
      BYTE10(md) = BYTE2(v7);
      BYTE11(md) = BYTE3(v7);
      BYTE12(md) = BYTE4(v7);
      BYTE13(md) = BYTE5(v7);
      BYTE14(md) = BYTE6(v7);
      sub_10004BA64(&md, a2, a3, &v23);
      if (v3)
      {
        v7 = md;
        v10 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100017C6C(a2, a3);
        sub_100017C6C(a2, a3);
        *a1 = v7;
        a1[1] = v10;
      }

      else
      {
        v7 = v23;
        v16 = md;
        v17 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100017C6C(a2, a3);
        sub_100017C6C(a2, a3);
        *a1 = v16;
        a1[1] = v17;
      }

      return v7;
    }

    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(v8, v7);
    sub_100017C6C(v8, v7);
    *a1 = xmmword_100051CB0;
    sub_100017C6C(0, 0xC000000000000000);
    v15 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_10004CBCC() && __OFSUB__(v8, sub_10004CBFC()))
      {
LABEL_23:
        __break(1u);
      }

      v18 = sub_10004CC0C();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_10004CBBC();

      v14 = v21;
    }

    if (v15 >= v8)
    {
      sub_10004C9D4(a2, a3);

      v7 = sub_10004C234(v8, v8 >> 32, v14, a2, a3);
      sub_100017C6C(a2, a3);

      sub_100017C6C(a2, a3);
      sub_100017C6C(a2, a3);
      *a1 = v8;
      a1[1] = v14 | 0x4000000000000000;
      return v7;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(a2, a3);
    sub_10004C9D4(v8, v7);
    sub_100017C6C(v8, v7);
    *&md = v8;
    *(&md + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_100051CB0;
    sub_100017C6C(0, 0xC000000000000000);
    sub_10004CD4C();
    v11 = *(&md + 1);
    v7 = *(md + 16);
    v12 = *(md + 24);
    sub_10004C9D4(a2, a3);
    v13 = sub_10004C234(v7, v12, *(&md + 1), a2, a3);
    if (!v3)
    {
      v7 = v13;
    }

    sub_100017C6C(a2, a3);
    sub_100017C6C(a2, a3);
    sub_100017C6C(a2, a3);
    *a1 = md;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&md + 7) = 0;
    *&md = 0;
    sub_10004BA64(&md, a2, a3, &v23);
    if (!v3)
    {
      return v23;
    }
  }

  return v7;
}

id sub_10004C788()
{
  v0 = vcvtd_n_f64_u64(sub_10004C024(0x20000000000001uLL), 0x35uLL) + 0.0;
  v1 = vcvtd_n_f64_u64(sub_10004C024(0x20000000000001uLL), 0x35uLL) + 0.0;
  v2 = vcvtd_n_f64_u64(sub_10004C024(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = objc_allocWithZone(UIColor);

  return [v3 initWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

uint64_t sub_10004C820()
{
  sub_100018B44();
  v0 = sub_10004D55C();
  v1 = v0;
  if (v0[2] != 4)
  {
  }

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  result = sub_10004D2FC();
  if (v1[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v7 = v1[8];
    v8 = v1[9];
    v9 = v1[10];
    v10 = v1[11];

    result = sub_10004D2FC();
    if (v1[2] >= 3uLL)
    {
      v11 = v1[12];
      v12 = v1[13];
      v13 = v1[14];
      v14 = v1[15];

      result = sub_10004D2FC();
      if (v1[2] >= 4uLL)
      {
        v15 = v1[16];
        v16 = v1[17];
        v17 = v1[18];
        v18 = v1[19];

        return sub_10004D2FC();
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10004C9C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10004C9D4(a1, a2);
  }

  return a1;
}

uint64_t sub_10004C9D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10004CA28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100017C6C(a1, a2);
  }

  return a1;
}

unint64_t sub_10004CA3C()
{
  result = qword_100070F30;
  if (!qword_100070F30)
  {
    sub_10000CD64(&qword_100070F28, &qword_100051CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F30);
  }

  return result;
}

unint64_t sub_10004CAA0()
{
  result = qword_100070F40;
  if (!qword_100070F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070F40);
  }

  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}