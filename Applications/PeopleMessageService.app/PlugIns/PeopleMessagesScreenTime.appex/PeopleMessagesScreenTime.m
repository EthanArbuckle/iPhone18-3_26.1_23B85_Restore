uint64_t sub_100001A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100026834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - v15;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1000273B4(43);

  v25 = 0xD000000000000022;
  v26 = 0x8000000100029650;
  v24[1] = a1;
  v27._countAndFlagsBits = sub_100027464();
  sub_1000271E4(v27);

  v28._countAndFlagsBits = 0x5F4B534123;
  v28._object = 0xE500000000000000;
  sub_1000271E4(v28);
  v29._countAndFlagsBits = a2;
  v29._object = a3;
  sub_1000271E4(v29);
  sub_100026724();

  v17 = sub_100026734();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100002814(v16);
    sub_100026894();
    v19 = sub_100026824();
    v20 = sub_100027314();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to build punch out url", v21, 2u);
    }

    (*(v9 + 8))(v12, v8);
    v22 = 1;
  }

  else
  {
    (*(v18 + 32))(a4, v16, v17);
    v22 = 0;
  }

  return (*(v18 + 56))(a4, v22, 1, v17);
}

uint64_t variable initialization expression of ImageCache.directoryURL@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100026734();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of ImageCache.ramCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

__n128 sub_100001E44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001E54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001E74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100001EB8(uint64_t a1, id *a2)
{
  result = sub_100027134();
  *a2 = 0;
  return result;
}

uint64_t sub_100001F30(uint64_t a1, id *a2)
{
  v3 = sub_100027144();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001FB0@<X0>(void *a1@<X8>)
{
  sub_100027154();
  v2 = sub_100027124();

  *a1 = v2;
  return result;
}

uint64_t sub_100001FF4()
{
  v1 = *v0;
  sub_100027154();
  v2 = sub_100027204();

  return v2;
}

uint64_t sub_100002030()
{
  v1 = *v0;
  sub_100027154();
  sub_100027194();
}

Swift::Int sub_100002084()
{
  v1 = *v0;
  sub_100027154();
  sub_1000274D4();
  sub_100027194();
  v2 = sub_1000274F4();

  return v2;
}

uint64_t sub_1000020F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100027154();
  v6 = v5;
  if (v4 == sub_100027154() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100027474();
  }

  return v9 & 1;
}

uint64_t sub_100002180@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100027124();

  *a2 = v5;
  return result;
}

uint64_t sub_1000021C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100027154();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000021F4(uint64_t a1)
{
  v2 = sub_100002958(&qword_1000391B8);
  v3 = sub_100002958(&qword_1000391C0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10000228C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000274D4();
  sub_100027194();
  v6 = sub_1000274F4();

  return sub_100002304(a1, a2, v6);
}

unint64_t sub_100002304(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100027474())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000023BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000274C(&qword_100039178, &qword_100027DD8);
    v3 = sub_100027444();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002794(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000228C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100002804(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000024CC()
{
  v0 = sub_100026834();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v10 = v8;
    sub_1000266F4(v9);
    v12 = v11;
    sub_1000023BC(&_swiftEmptyArrayStorage);
    isa = sub_1000270E4().super.isa;

    v14 = [v10 openSensitiveURL:v12 withOptions:isa];

    sub_100026894();
    v15 = sub_100026824();
    v16 = sub_100027304();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "pushToSettings %{BOOL}d", v17, 8u);
    }
  }

  else
  {
    sub_100026894();
    v10 = sub_100026824();
    v18 = sub_100027314();
    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, v18, "Failed to get workspace in bubble action", v19, 2u);
    }

    v7 = v5;
  }

  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_10000274C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002794(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039180, &qword_100027DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100002804(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002814(uint64_t a1)
{
  v2 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000028A4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002958(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000029D0()
{
  v0 = sub_10000274C(&qword_100039328, &qword_1000280A8);
  sub_100006C00(v0, qword_10003A6F0);
  sub_100006B80(v0, qword_10003A6F0);
  v1 = [objc_opt_self() hours];
  sub_100006C64();
  return sub_100026624();
}

void sub_100002A6C()
{
  v0 = type metadata accessor for ImageCache();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
  v5 = sub_100026734();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_hasRunCleanup) = 0;
  v6 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache;
  *(v3 + v6) = [objc_allocWithZone(NSCache) init];
  sub_1000044E8();
  sub_100004CB8();
  v7 = *(v3 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache);
  [v7 setCountLimit:30];

  static ImageCache.sharedInstance = v3;
}

uint64_t *ImageCache.sharedInstance.unsafeMutableAddressor()
{
  if (qword_100039068 != -1)
  {
    swift_once();
  }

  return &static ImageCache.sharedInstance;
}

uint64_t static ImageCache.sharedInstance.getter()
{
  if (qword_100039068 != -1)
  {
    swift_once();
  }
}

uint64_t ImageCache.addToCache(_:image:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = sub_100026834();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v37);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v34 = v4;
  v15 = *(v4 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache);
  v16 = objc_allocWithZone(NSString);
  v17 = sub_100027124();
  v18 = [v16 initWithString:v17];

  v19 = [v15 objectForKey:v18];
  if (v19)
  {

    sub_100026894();

    v20 = sub_100026824();
    v21 = sub_100027304();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100005F78(a1, a2, &v38);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s already in ram cache", v22, 0xCu);
      sub_100006044(v23);
    }

    return (*(v7 + 8))(v10, v37);
  }

  else
  {
    v26 = v35;
    v25 = v36;
    isa = sub_100026754().super.isa;
    v28 = objc_allocWithZone(NSString);
    v29 = sub_100027124();
    v30 = [v28 initWithString:v29];

    [v15 setObject:isa forKey:v30];
    v31 = sub_1000272A4();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v34;
    v32[5] = a1;
    v32[6] = a2;
    v32[7] = v26;
    v32[8] = v25;

    sub_100003B24(v26, v25);
    sub_100003824(0, 0, v14, &unk_100028020, v32);
  }
}

uint64_t sub_100002F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_100026834();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v12 = *(*(sub_10000274C(&qword_100039188, &qword_100027DE8) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v13 = sub_100026734();
  v8[16] = v13;
  v14 = *(v13 - 8);
  v8[17] = v14;
  v15 = *(v14 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000312C, 0, 0);
}

uint64_t sub_10000312C()
{
  v59 = v0;
  v2 = v0 + 16;
  v1 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
  swift_beginAccess();
  sub_1000061E4(v5 + v6, v4, &qword_100039188, &qword_100027DE8);
  if ((*(v3 + 48))(v4, 1, v1))
  {
    v7 = v0[14];
    v8 = v0 + 14;
    sub_100006B20(v0[15], &qword_100039188, &qword_100027DE8);
    sub_100026894();
    v9 = sub_100026824();
    v10 = sub_100027314();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to create save url", v13, 2u);
    }

    v14 = *(v12 + 8);
    v2 = v0 + 10;
  }

  else
  {
    v8 = v0 + 21;
    v15 = v0[19];
    v16 = v0[20];
    v17 = v0[17];
    v53 = v0[21];
    v55 = v0[18];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[6];
    v57 = v0[7];
    v49 = *(v17 + 16);
    v51 = v0[13];
    v49(v15, v19, v18);
    sub_100006B20(v19, &qword_100039188, &qword_100027DE8);
    sub_100026704();
    v21 = *(v17 + 8);
    v21(v15, v18);
    (*(v17 + 32))(v53, v16, v18);
    sub_100026894();
    v49(v55, v53, v18);
    v22 = sub_100026824();
    v54 = sub_100027304();
    v23 = os_log_type_enabled(v22, v54);
    v24 = v0[18];
    v25 = v0[16];
    v26 = v0[13];
    v27 = v0[11];
    v56 = v0[10];
    if (v23)
    {
      v52 = v0[13];
      v28 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58 = v50;
      *v28 = 136315138;
      v47 = sub_1000266D4();
      log = v22;
      v30 = v29;
      v21(v24, v25);
      v31 = sub_100005F78(v47, v30, &v58);

      *(v28 + 4) = v31;
      _os_log_impl(&_mh_execute_header, log, v54, "Attempting to cache image to file at url %s", v28, 0xCu);
      sub_100006044(v50);

      (*(v27 + 8))(v52, v56);
    }

    else
    {

      v21(v24, v25);
      (*(v27 + 8))(v26, v56);
    }

    v32 = v0[21];
    v33 = v0[8];
    v34 = v0[9];
    sub_100026774();
    v14 = v21;
  }

  v35 = *v8;
  v36 = *v2;
  v37 = v0[20];
  v38 = v0[21];
  v40 = v0[18];
  v39 = v0[19];
  v42 = v0[14];
  v41 = v0[15];
  v44 = v0[12];
  v43 = v0[13];
  v14(v35, v36);

  v45 = v0[1];

  return v45();
}

uint64_t sub_1000035B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_100003600(v0[7], v0[8]);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100003600(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003654(uint64_t a1)
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
  v11[1] = sub_100003730;

  return sub_100002F94(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100003730()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000061E4(a3, v27 - v11, &qword_1000391C8, &qword_100028010);
  v13 = sub_1000272A4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006B20(v12, &qword_1000391C8, &qword_100028010);
  }

  else
  {
    sub_100027294();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100027244();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100027184() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100006B20(a3, &qword_1000391C8, &qword_100028010);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006B20(a3, &qword_1000391C8, &qword_100028010);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100003B24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000061E4(a3, v27 - v11, &qword_1000391C8, &qword_100028010);
  v13 = sub_1000272A4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006B20(v12, &qword_1000391C8, &qword_100028010);
  }

  else
  {
    sub_100027294();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100027244();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100027184() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000274C(&qword_100039308, &qword_100028080);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100006B20(a3, &qword_1000391C8, &qword_100028010);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006B20(a3, &qword_1000391C8, &qword_100028010);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000274C(&qword_100039308, &qword_100028080);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t ImageCache.getFromCache(_:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v62 = (v54 - v7);
  v58 = sub_100026734();
  v60 = *(v58 - 8);
  v8 = *(v60 + 64);
  v9 = __chkstk_darwin(v58);
  v57 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v56 = v54 - v12;
  __chkstk_darwin(v11);
  v14 = v54 - v13;
  v15 = sub_100026834();
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v54 - v21;
  __chkstk_darwin(v20);
  v24 = v54 - v23;
  v59 = v2;
  v25 = *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache);
  v26 = objc_allocWithZone(NSString);
  v61 = a1;
  v27 = sub_100027124();
  v28 = [v26 initWithString:v27];

  v29 = v25;
  v30 = [v25 objectForKey:v28];

  if (v30)
  {
    v31 = sub_100026764();

    sub_100026894();

    v32 = sub_100026824();
    v33 = sub_100027304();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v65 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100005F78(v61, a2, &v65);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s found in ram cache", v34, 0xCu);
      sub_100006044(v35);
    }

    (*(v63 + 8))(v24, v64);
  }

  else
  {
    v36 = v22;
    v37 = v56;
    v38 = v57;
    v54[0] = v29;
    v54[1] = v19;
    v55 = v14;
    v39 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
    v40 = v59;
    swift_beginAccess();
    v41 = v40 + v39;
    v42 = v62;
    sub_1000061E4(v41, v62, &qword_100039188, &qword_100027DE8);
    v43 = v60;
    v44 = v58;
    if ((*(v60 + 48))(v42, 1, v58))
    {
      sub_100006B20(v62, &qword_100039188, &qword_100027DE8);
      sub_100026894();
      v45 = sub_100026824();
      v46 = sub_100027314();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Unable to create get url", v47, 2u);
      }

      (*(v63 + 8))(v36, v64);
      return 0;
    }

    else
    {
      v48 = v62;
      (*(v43 + 16))(v38, v62, v44);
      sub_100006B20(v48, &qword_100039188, &qword_100027DE8);
      sub_100026704();
      v62 = *(v43 + 8);
      (v62)(v38, v44);
      (*(v43 + 32))(v55, v37, v44);
      v31 = sub_100026744();
      isa = sub_100026754().super.isa;
      v50 = objc_allocWithZone(NSString);
      v51 = sub_100027124();
      v52 = [v50 initWithString:v51];

      [v54[0] setObject:isa forKey:v52];
      (v62)(v55, v44);
    }
  }

  return v31;
}

uint64_t sub_1000044E8()
{
  v69 = sub_100026834();
  v66 = *(v69 - 8);
  v1 = *(v66 + 64);
  v2 = (__chkstk_darwin)();
  v61 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v68 = &v60 - v4;
  v5 = sub_100026734();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v60 - v10;
  v11 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v60 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v60 - v22;
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  v26 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
  swift_beginAccess();
  v64 = v0;
  v67 = v26;
  sub_1000061E4(v0 + v26, v25, &qword_100039188, &qword_100027DE8);
  v65 = v6;
  v27 = *(v6 + 48);
  LODWORD(v26) = v27(v25, 1, v5);
  result = sub_100006B20(v25, &qword_100039188, &qword_100027DE8);
  if (v26 == 1)
  {
    sub_100026844();
    v29 = v27;
    if (v27(v20, 1, v5) == 1)
    {
      sub_100006B20(v20, &qword_100039188, &qword_100027DE8);
      v30 = 1;
      v31 = v69;
      v32 = v65;
    }

    else
    {
      sub_100026704();
      v32 = v65;
      (*(v65 + 8))(v20, v5);
      v30 = 0;
      v31 = v69;
    }

    v33 = v63;
    (*(v32 + 56))(v23, v30, 1, v5);
    v34 = v64;
    v35 = v67;
    swift_beginAccess();
    sub_100006CB0(v23, v34 + v35);
    swift_endAccess();
    sub_1000061E4(v34 + v35, v17, &qword_100039188, &qword_100027DE8);
    if (v29(v17, 1, v5) == 1)
    {
      sub_100006B20(v17, &qword_100039188, &qword_100027DE8);
    }

    else
    {
      (*(v32 + 32))(v33, v17, v5);
      v36 = [objc_opt_self() defaultManager];
      sub_1000266F4(v37);
      v39 = v38;
      v70 = 0;
      v40 = [v36 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&v70];

      if (v40)
      {
        v41 = *(v32 + 8);
        v42 = v70;
        v41(v33, v5);
      }

      else
      {
        v43 = v70;
        sub_1000266B4();

        swift_willThrow();
        v44 = v61;
        sub_100026894();
        v70 = 0;
        v71 = 0xE000000000000000;
        swift_errorRetain();
        sub_1000273B4(34);

        v70 = 0xD00000000000001CLL;
        v71 = 0x8000000100029700;
        v72._countAndFlagsBits = sub_1000266D4();
        sub_1000271E4(v72);

        v73._countAndFlagsBits = 1076174906;
        v73._object = 0xE400000000000000;
        sub_1000271E4(v73);
        sub_100026814();

        v45 = v44;
        v31 = v69;
        (*(v66 + 8))(v45, v69);
        (*(v32 + 8))(v33, v5);
      }
    }

    v46 = v68;
    sub_100026894();

    v47 = sub_100026824();
    v48 = sub_100027304();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136315138;
      v51 = v62;
      sub_1000061E4(v34 + v67, v62, &qword_100039188, &qword_100027DE8);
      if (v29(v51, 1, v5))
      {
        sub_100006B20(v51, &qword_100039188, &qword_100027DE8);
        v52 = 0xE300000000000000;
        v53 = 7104878;
      }

      else
      {
        v54 = v60;
        (*(v32 + 16))(v60, v51, v5);
        sub_100006B20(v51, &qword_100039188, &qword_100027DE8);
        v55 = sub_1000266D4();
        v56 = v5;
        v57 = v55;
        v52 = v58;
        (*(v32 + 8))(v54, v56);
        v53 = v57;
      }

      v59 = sub_100005F78(v53, v52, &v70);

      *(v49 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "Root folder %s", v49, 0xCu);
      sub_100006044(v50);

      return (*(v66 + 8))(v68, v69);
    }

    else
    {

      return (*(v66 + 8))(v46, v31);
    }
  }

  return result;
}

uint64_t sub_100004CB8()
{
  v97 = sub_100026834();
  v96 = *(v97 - 8);
  v1 = *(v96 + 64);
  v2 = __chkstk_darwin(v97);
  v95 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v110 = &v86 - v5;
  __chkstk_darwin(v4);
  v7 = &v86 - v6;
  v8 = sub_10000274C(&qword_100039310, &qword_100028090);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v86 - v10;
  v12 = sub_1000267B4();
  v94 = *(v12 - 8);
  v13 = *(v94 + 64);
  v14 = __chkstk_darwin(v12);
  v105 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v115 = &v86 - v17;
  __chkstk_darwin(v16);
  v114 = &v86 - v18;
  v19 = sub_10000274C(&qword_100039318, &qword_100028098);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v116 = &v86 - v21;
  v108 = sub_1000266A4();
  v93 = *(v108 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v108);
  v117 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v86 - v26;
  v28 = sub_100026734();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = &v86 - v35;
  result = __chkstk_darwin(v34);
  v39 = &v86 - v38;
  if ((*(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_hasRunCleanup) & 1) == 0)
  {
    v89 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_hasRunCleanup;
    v113 = v11;
    v40 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
    swift_beginAccess();
    v90 = v0;
    sub_1000061E4(v0 + v40, v27, &qword_100039188, &qword_100027DE8);
    if ((*(v29 + 48))(v27, 1, v28) == 1)
    {
      return sub_100006B20(v27, &qword_100039188, &qword_100027DE8);
    }

    v86 = v7;
    (*(v29 + 32))(v39, v27, v28);
    v41 = [objc_opt_self() defaultManager];
    v107 = sub_10000274C(&qword_100039320, &qword_1000280A0);
    v42 = swift_allocObject();
    v106 = xmmword_100028000;
    *(v42 + 16) = xmmword_100028000;
    *(v42 + 32) = NSURLContentModificationDateKey;
    v43 = NSURLContentModificationDateKey;
    v88 = v39;
    sub_1000266C4();
    sub_1000266F4(v44);
    v46 = v45;
    v109 = v29;
    v47 = *(v29 + 8);
    v111 = v29 + 8;
    v112 = v47;
    v47(v36, v28);
    type metadata accessor for URLResourceKey(0);
    v48 = v28;
    isa = sub_100027224().super.isa;

    v118[0] = 0;
    v92 = v41;
    v50 = [v41 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:isa options:4 error:v118];

    v51 = v118[0];
    if (v50)
    {
      v52 = sub_100027234();
      v53 = v51;

      v110 = v52;
      v54 = v48;
      v55 = v108;
      v56 = v109;
      v104 = *(v52 + 16);
      if (v104)
      {
        v57 = 0;
        v102 = &v110[(*(v109 + 80) + 32) & ~*(v109 + 80)];
        v101 = NSURLCreationDateKey;
        v100 = v109 + 16;
        v103 = (v93 + 56);
        v99 = (v93 + 32);
        v98 = (v94 + 48);
        v91 = (v94 + 32);
        v87 = (v96 + 8);
        v96 = v94 + 8;
        v58 = (v93 + 8);
        do
        {
          if (v57 >= *(v110 + 2))
          {
            __break(1u);
          }

          v59 = v54;
          (*(v56 + 16))(v33, &v102[*(v56 + 72) * v57], v54);
          inited = swift_initStackObject();
          *(inited + 16) = v106;
          v61 = v101;
          *(inited + 32) = v101;
          v62 = v61;
          sub_1000068D0(inited);
          swift_setDeallocating();
          sub_100006AC4(inited + 32);
          v63 = v116;
          sub_1000266E4();

          (*v103)(v63, 0, 1, v55);
          v64 = v117;
          (*v99)();
          v65 = v113;
          sub_100026694();
          if ((*v98)(v65, 1, v12) == 1)
          {
            (*v58)(v64, v55);
            v54 = v59;
            v112(v33, v59);
            sub_100006B20(v65, &qword_100039310, &qword_100028090);
          }

          else
          {
            v66 = v114;
            (*v91)(v114, v65, v12);
            v54 = v59;
            if (qword_100039060 != -1)
            {
              swift_once();
            }

            v67 = sub_10000274C(&qword_100039328, &qword_1000280A8);
            sub_100006B80(v67, qword_10003A6F0);
            v68 = v115;
            sub_100026794();
            v69 = v105;
            sub_1000267A4();
            sub_100006BB8(&qword_100039330, &type metadata accessor for Date);
            if (sub_100027104())
            {
              v71 = *v96;
              (*v96)(v69, v12);
              v71(v68, v12);
              v71(v66, v12);
              v55 = v108;
              (*v58)(v117, v108);
              v72 = v33;
            }

            else
            {
              sub_1000266F4(v70);
              v74 = v73;
              v118[0] = 0;
              v75 = [v92 removeItemAtURL:v73 error:v118];

              if (!v75)
              {
                v78 = v118[0];
                sub_1000266B4();

                swift_willThrow();
                v79 = v95;
                sub_100026894();
                v118[0] = 0;
                v118[1] = 0xE000000000000000;
                swift_errorRetain();
                sub_1000273B4(20);

                strcpy(v118, "Failed delete ");
                HIBYTE(v118[1]) = -18;
                sub_100006BB8(&qword_100039338, &type metadata accessor for URL);
                v119._countAndFlagsBits = sub_100027464();
                sub_1000271E4(v119);

                v120._countAndFlagsBits = 1076174906;
                v120._object = 0xE400000000000000;
                sub_1000271E4(v120);
                sub_100026814();

                (*v87)(v79, v97);
                v80 = *v96;
                (*v96)(v69, v12);
                v80(v115, v12);
                v80(v114, v12);
                v55 = v108;
                (*v58)(v117, v108);
                v112(v33, v54);
                goto LABEL_8;
              }

              v76 = *v96;
              v77 = v118[0];
              v76(v69, v12);
              v76(v115, v12);
              v76(v114, v12);
              v55 = v108;
              (*v58)(v117, v108);
              v72 = v33;
            }

            v112(v72, v54);
          }

LABEL_8:
          ++v57;
          v56 = v109;
        }

        while (v104 != v57);
      }

      result = (v112)(v88, v54);
      *(v90 + v89) = 1;
    }

    else
    {
      v81 = v118[0];
      sub_1000266B4();

      swift_willThrow();

      v82 = v110;
      sub_100026894();
      v83 = sub_100026824();
      v84 = sub_100027304();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Unable to read folder", v85, 2u);
      }

      (*(v96 + 8))(v82, v97);
      return (v112)(v88, v48);
    }
  }

  return result;
}

uint64_t ImageCache.deinit()
{
  sub_100006B20(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL, &qword_100039188, &qword_100027DE8);

  return v0;
}

uint64_t ImageCache.__deallocating_deinit()
{
  sub_100006B20(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL, &qword_100039188, &qword_100027DE8);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100005C90(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006E44;

  return v7(a1);
}

uint64_t sub_100005D88(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005E80;

  return v7(a1);
}

uint64_t sub_100005E80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005F78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000063F4(v11, 0, 0, 1, a1, a2);
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
    sub_100006D20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006044(v11);
  return v7;
}

uint64_t sub_100006044(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for ImageCache()
{
  result = qword_100039210;
  if (!qword_100039210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000060E4()
{
  sub_10000618C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000618C()
{
  if (!qword_100039220)
  {
    sub_100026734();
    v0 = sub_100027374();
    if (!v1)
    {
      atomic_store(v0, &qword_100039220);
    }
  }
}

uint64_t sub_1000061E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000274C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000624C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006284(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006E48;

  return sub_100005D88(a1, v5);
}

uint64_t sub_10000633C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003730;

  return sub_100005D88(a1, v5);
}

unint64_t sub_1000063F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006500(a5, a6);
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
    result = sub_1000273D4();
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

char *sub_100006500(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000654C(a1, a2);
  sub_10000667C(&off_100035298);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000654C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100006768(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000273D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000271F4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006768(v10, 0);
        result = sub_1000273A4();
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

uint64_t sub_10000667C(uint64_t result)
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

  result = sub_1000067DC(result, v12, 1, v3);
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

void *sub_100006768(uint64_t a1, uint64_t a2)
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

  sub_10000274C(&unk_100039350, &qword_1000280B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000067DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000274C(&unk_100039350, &qword_1000280B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1000068D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000274C(&qword_100039348, &qword_1000280B0);
    v3 = sub_100027394();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_100027154();
      sub_1000274D4();
      v29 = v7;
      sub_100027194();
      v9 = sub_1000274F4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_100027154();
        v20 = v19;
        if (v18 == sub_100027154() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_100027474();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100006AC4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006B20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000274C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006B80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100006C00(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100006C64()
{
  result = qword_100039340;
  if (!qword_100039340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039340);
  }

  return result;
}

uint64_t sub_100006CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006D80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006E48;

  return sub_100005C90(a1, v5);
}

uint64_t sub_100006E50()
{
  result = sub_100026904();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006EF4()
{
  v1 = v0;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();

  v7 = sub_100026824();
  v8 = sub_100027304();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_1000268F4();
    v13 = sub_100005F78(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "BubbleEventRegistration bye bye for %s", v9, 0xCu);
    sub_100006044(v10);
  }

  (*(v3 + 8))(v6, v2);
  v14 = qword_100039360;
  v15 = sub_100026904();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = *(v1 + qword_100039368);

  sub_100007590(v1 + qword_100039370);
  return v1;
}

uint64_t sub_100007118()
{
  v0 = *sub_100006EF4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100007184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000071A4, 0, 0);
}

uint64_t sub_1000071A4()
{
  v2 = v0[2];
  v1 = v0[3];
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100007220(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_100007260()
{
  v1 = v0;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();

  v7 = sub_100026824();
  v8 = sub_100027304();

  v9 = &off_100039000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_1000268F4();
    v13 = sub_100005F78(v11, v12, &v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = *(v1 + qword_100039370);
    v15 = *(v1 + qword_100039370 + 8);

    v16 = sub_100005F78(v14, v15, &v22);

    *(v10 + 14) = v16;
    v9 = &off_100039000;
    _os_log_impl(&_mh_execute_header, v7, v8, "Shutdown %s for %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  *(v9[110] + v1 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v17 = qword_100039368;
  if (*(v1 + qword_100039368))
  {
    v18 = *(v1 + qword_100039368);

    sub_100026B94();

    v19 = *(v1 + v17);
  }

  *(v1 + v17) = 0;
}

uint64_t sub_1000074C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100007510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000075F0()
{
  v0 = sub_100026994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStateStore();
  v5 = swift_allocObject();
  (*(v1 + 104))(v4, enum case for MessageDetails.EventSource.screenTime(_:), v0);
  v6 = [objc_opt_self() defaultManager];
  v11[4] = sub_1000077B8();
  v11[5] = &protocol witness table for NSFileManager;
  v11[1] = v6;
  v7 = sub_100026BB4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + 16) = sub_100026BA4();
  sub_100026BD4();
  result = sub_100026BC4();
  *(v5 + 24) = result;
  qword_10003A710 = v5;
  return result;
}

uint64_t sub_100007754()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1000077B8()
{
  result = qword_100039568;
  if (!qword_100039568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039568);
  }

  return result;
}

uint64_t sub_100007818()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isMac;
  v2 = *(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isMac);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    LOBYTE(v2) = v4 == 5;
    *(v0 + v1) = v4 == 5;
  }

  return v2 & 1;
}

uint64_t sub_100007898(uint64_t a1, uint64_t a2)
{
  v3 = sub_100026994();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10000A92C(&qword_100039728, &type metadata accessor for MessageDetails.EventSource), v9 = sub_1000270F4(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_10000A92C(&qword_100039730, &type metadata accessor for MessageDetails.EventSource);
      v17 = sub_100027114();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100007AB0()
{
  v0 = sub_1000269B4();
  v76 = *(v0 - 8);
  v77 = v0;
  v1 = *(v76 + 64);
  v2 = __chkstk_darwin(v0);
  v71 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v73 = &v67 - v5;
  __chkstk_darwin(v4);
  v75 = &v67 - v6;
  v7 = sub_10000274C(&qword_100039708, &unk_100028280);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v74 = &v67 - v12;
  __chkstk_darwin(v11);
  v14 = &v67 - v13;
  v15 = sub_100026B44();
  v82 = *(v15 - 8);
  v16 = *(v82 + 64);
  v17 = __chkstk_darwin(v15);
  v80 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v72 = &v67 - v20;
  __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = sub_100026834();
  v78 = *(v23 - 8);
  v79 = v23;
  v24 = *(v78 + 64);
  __chkstk_darwin(v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v67 - v29;
  v31 = sub_100026994();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  sub_1000269D4();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_100006B20(v30, &qword_100039710, &unk_1000287B0);
  }

  else
  {
    (*(v32 + 32))(v35, v30, v31);
    if (qword_100039078 != -1)
    {
      swift_once();
    }

    v36 = sub_100007898(v35, qword_100039570);
    (*(v32 + 8))(v35, v31);
    if (v36)
    {
      goto LABEL_30;
    }
  }

  sub_100026884();
  swift_retain_n();
  v37 = sub_100026824();
  v38 = sub_100027304();
  if (!os_log_type_enabled(v37, v38))
  {

    (*(v78 + 8))(v26, v79);
    v43 = v82;
    goto LABEL_21;
  }

  v69 = v38;
  v70 = v37;
  v39 = swift_slowAlloc();
  v68 = swift_slowAlloc();
  v86[0] = v68;
  *v39 = 67109634;
  sub_100026A74();
  v40 = v82;
  v41 = *(v82 + 48);
  if (v41(v14, 1, v15) == 1)
  {
    sub_100006B20(v14, &qword_100039708, &unk_100028280);
    v42 = 1;
    v43 = v40;
  }

  else
  {
    (*(v40 + 32))(v22, v14, v15);
    v44 = sub_100026B34();
    if (v44 >> 62)
    {
      v45 = sub_100027434();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v82;
    (*(v82 + 8))(v22, v15);
    v42 = v45 == 0;
  }

  *(v39 + 4) = v42;

  *(v39 + 8) = 1024;
  v46 = v74;
  sub_100026A74();
  if (v41(v46, 1, v15) == 1)
  {
    sub_100006B20(v46, &qword_100039708, &unk_100028280);
    goto LABEL_19;
  }

  v47 = v72;
  (*(v43 + 32))(v72, v46, v15);
  v48 = sub_100026B24();
  if (!v48)
  {
    (*(v43 + 8))(v47, v15);
    goto LABEL_19;
  }

  v49 = v48;
  v50 = [v48 isParent];

  (*(v43 + 8))(v47, v15);
  if ((v50 & 1) == 0)
  {
LABEL_19:
    v51 = 0;
    goto LABEL_20;
  }

  v51 = 1;
LABEL_20:
  *(v39 + 10) = v51;

  *(v39 + 14) = 2080;
  v52 = v75;
  sub_100026A94();
  v53 = sub_1000269A4();
  v55 = v54;
  (*(v76 + 8))(v52, v77);
  v56 = sub_100005F78(v53, v55, v86);

  *(v39 + 16) = v56;
  v57 = v70;
  _os_log_impl(&_mh_execute_header, v70, v69, "[canPresentApprovalActions] familyIsEmpty: %{BOOL}d, amIaParent: %{BOOL}d, details.status: %s", v39, 0x18u);
  sub_100006044(v68);

  (*(v78 + 8))(v26, v79);
LABEL_21:
  v58 = v81;
  sub_100026A74();
  if ((*(v43 + 48))(v58, 1, v15) == 1)
  {
    sub_100006B20(v58, &qword_100039708, &unk_100028280);
LABEL_30:
    v62 = 0;
    return v62 & 1;
  }

  (*(v43 + 32))(v80, v58, v15);
  v59 = sub_100026B34();
  if (v59 >> 62)
  {
    v60 = sub_100027434();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v43 + 8))(v80, v15);
  if (!v60 || (sub_10000847C() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100026A94();
  v61 = v71;
  (*(v76 + 104))(v71, enum case for MessageDetails.EventStatus.pending(_:), v77);
  sub_10000A92C(&qword_100039748, &type metadata accessor for MessageDetails.EventStatus);
  sub_100027214();
  sub_100027214();
  if (v86[0] == v84 && v86[1] == v85)
  {
    v62 = 1;
  }

  else
  {
    v62 = sub_100027474();
  }

  v64 = *(v76 + 8);
  v65 = v61;
  v66 = v77;
  v64(v65, v77);
  v64(v73, v66);

  return v62 & 1;
}

id sub_10000847C()
{
  v0 = sub_10000274C(&qword_100039708, &unk_100028280);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100026B44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026A74();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100006B20(v3, &qword_100039708, &unk_100028280);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = sub_100026B24();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 isParent];

      (*(v5 + 8))(v8, v4);
      return v11;
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t sub_100008648(char *a1)
{
  v2 = v1;
  v4 = sub_100026B04();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isIpad) = 2;
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isMac) = 2;
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController) = 0;
  v9 = v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_resolvedSize;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v11 = v5[2];
  v11(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details, a1, v4);
  v11(v8, (v2 + v10), v4);
  v12 = sub_100026A04();
  v14 = v13;
  v15 = v5[1];
  v15(v8, v4);
  if (v14 >> 60 == 15)
  {
    v12 = 0;
    v14 = 0xC000000000000000;
  }

  v16 = objc_allocWithZone(UIImage);
  isa = sub_100026754().super.isa;
  v18 = [v16 initWithData:isa];

  sub_100003600(v12, v14);
  if (!v18)
  {
    v18 = [objc_allocWithZone(UIImage) init];
  }

  v15(a1, v4);
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_image) = v18;
  return v2;
}

uint64_t sub_100008848()
{
  v1 = sub_100026834();
  v131 = *(v1 - 8);
  v132 = v1;
  v2 = *(v131 + 64);
  v3 = __chkstk_darwin(v1);
  v129 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v128 = &v121 - v5;
  v6 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v122 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &v121 - v10;
  v11 = sub_10000274C(&qword_100039708, &unk_100028280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v133 = &v121 - v13;
  v14 = sub_100026B44();
  v15 = *(v14 - 8);
  v134 = v14;
  v135 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v130 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000269B4();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v125 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v124 = &v121 - v24;
  v25 = __chkstk_darwin(v23);
  v126 = &v121 - v26;
  v27 = __chkstk_darwin(v25);
  v127 = &v121 - v28;
  v29 = __chkstk_darwin(v27);
  v137 = &v121 - v30;
  v31 = __chkstk_darwin(v29);
  v136 = &v121 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v121 - v34;
  v36 = __chkstk_darwin(v33);
  v143 = &v121 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v121 - v39;
  __chkstk_darwin(v38);
  v42 = &v121 - v41;
  v139 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v140 = v0;
  sub_100026A94();
  v141 = v19[13];
  v142 = v19 + 13;
  v141(v40, enum case for MessageDetails.EventStatus.pending(_:), v18);
  sub_10000A92C(&qword_100039748, &type metadata accessor for MessageDetails.EventStatus);
  sub_100027214();
  v43 = v18;
  sub_100027214();
  if (v146 == v144 && v147 == v145)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_100027474();
  }

  v45 = v19[1];
  v45(v40, v43);
  v46 = v42;
  v138 = v45;
  v47 = (v19 + 1);
  v45(v46, v43);

  if (v44)
  {
    return sub_1000271B4();
  }

  sub_100026A94();
  v141(v35, enum case for MessageDetails.EventStatus.expired(_:), v43);
  sub_100027214();
  sub_100027214();
  v49 = v43;
  if (v146 == v144 && v147 == v145)
  {
    v50 = v35;
    v51 = v138;
    v138(v50, v43);
    v51(v143, v43);
LABEL_10:

    return 2099744;
  }

  v52 = sub_100027474();
  v53 = v35;
  v54 = v138;
  v138(v53, v43);
  v54(v143, v43);

  if (v52)
  {
    return 2099744;
  }

  v55 = v136;
  sub_100026A94();
  v141(v137, enum case for MessageDetails.EventStatus.unknown(_:), v43);
  sub_100027214();
  sub_100027214();
  if (v146 == v144 && v147 == v145)
  {
    v54(v137, v43);
    v54(v55, v43);
    goto LABEL_10;
  }

  v56 = sub_100027474();
  v54(v137, v43);
  v54(v55, v43);

  if (v56)
  {
    return 2099744;
  }

  v57 = v133;
  sub_100026A74();
  v59 = v134;
  v58 = v135;
  if ((*(v135 + 48))(v57, 1, v134) == 1)
  {
    sub_100006B20(v57, &qword_100039708, &unk_100028280);
    v60 = v129;
    sub_100026894();
    v61 = sub_100026824();
    v62 = sub_100027314();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "No family!", v63, 2u);
    }

    (*(v131 + 8))(v60, v132);
    return 2099744;
  }

  v136 = v47;
  v64 = v130;
  (*(v58 + 32))(v130, v57, v59);
  v137 = sub_100026A34();
  if (v65)
  {
LABEL_61:
    v117 = v128;
    sub_100026894();
    v118 = sub_100026824();
    v119 = sub_100027314();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "No approver found", v120, 2u);
    }

    (*(v131 + 8))(v117, v132);
    (*(v58 + 8))(v64, v59);
    return 2099744;
  }

  v66 = sub_100026B34();
  v67 = v66;
  if (v66 >> 62)
  {
    v68 = sub_100027434();
    if (v68)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

  v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v68)
  {
LABEL_60:

    v59 = v134;
    v58 = v135;
    v64 = v130;
    goto LABEL_61;
  }

LABEL_24:
  v69 = 0;
  while (1)
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v70 = sub_1000273C4();
    }

    else
    {
      if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v70 = *(v67 + 8 * v69 + 32);
    }

    v71 = v70;
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      (*(v67 + 8))(v122, v68);
      v78 = v135;
      v79 = v130;
      v92 = v123;
LABEL_43:
      v88 = sub_1000271B4();

LABEL_47:
      (*(v78 + 8))(v79, v134);
      v100 = v92;
      goto LABEL_48;
    }

    v73 = [v70 dsid];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 integerValue];
      v143 = v71;
      v76 = v75;

      v77 = v76 == v137;
      v71 = v143;
      if (v77)
      {
        break;
      }
    }

    ++v69;
    if (v72 == v68)
    {
      goto LABEL_60;
    }
  }

  sub_100026A94();
  v141(v126, enum case for MessageDetails.EventStatus.denied(_:), v49);
  sub_100027214();
  sub_100027214();
  v78 = v135;
  v79 = v130;
  if (v146 == v144 && v147 == v145)
  {
    v80 = v138;
    v138(v126, v49);
    v80(v127, v49);

    goto LABEL_39;
  }

  v81 = sub_100027474();
  v82 = v138;
  v138(v126, v49);
  v82(v127, v49);

  if (v81)
  {
LABEL_39:
    v83 = v143;
    [v143 isMe];
    sub_1000271B4();

    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_100028000;
    v85 = sub_100027344();
    v87 = v86;
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = sub_10000A9E4();
    *(v84 + 32) = v85;
    *(v84 + 40) = v87;
    v88 = sub_100027164();

    (*(v78 + 8))(v79, v134);
    return v88;
  }

  v89 = v124;
  sub_100026A94();
  v90 = v125;
  v141(v125, enum case for MessageDetails.EventStatus.approved(_:), v49);
  sub_10000A92C(&qword_100039740, &type metadata accessor for MessageDetails.EventStatus);
  v91 = sub_100027114();
  v82(v90, v49);
  v82(v89, v49);
  if ((v91 & 1) == 0)
  {
    (*(v78 + 8))(v79, v134);

    return 2099744;
  }

  v92 = v123;
  sub_1000269D4();
  v68 = sub_100026994();
  v67 = *(v68 - 8);
  if ((*(v67 + 48))(v92, 1, v68) == 1)
  {
    goto LABEL_43;
  }

  v93 = v122;
  sub_10000A974(v92, v122);
  v94 = (*(v67 + 88))(v93, v68);
  if (v94 == enum case for MessageDetails.EventSource.askToBuy(_:))
  {
    v95 = v143;
    [v143 isMe];
    sub_1000271B4();

    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_100028000;
    v97 = sub_100027344();
    v99 = v98;
    *(v96 + 56) = &type metadata for String;
    *(v96 + 64) = sub_10000A9E4();
    *(v96 + 32) = v97;
    *(v96 + 40) = v99;
    v88 = sub_100027164();

    goto LABEL_47;
  }

  if (v94 != enum case for MessageDetails.EventSource.screenTime(_:))
  {
    goto LABEL_55;
  }

  sub_1000269E4();
  v101 = sub_1000271D4();
  v103 = v102;

  if (!v103)
  {
    v105 = v143;
    [v143 isMe];
    sub_1000271B4();

    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_100028000;
    v107 = sub_100027344();
    v109 = v108;
    *(v106 + 56) = &type metadata for String;
    *(v106 + 64) = sub_10000A9E4();
    *(v106 + 32) = v107;
    *(v106 + 40) = v109;
    v88 = sub_100027164();

LABEL_57:
    (*(v135 + 8))(v130, v134);
    v100 = v123;
LABEL_48:
    sub_100006B20(v100, &qword_100039710, &unk_1000287B0);
    return v88;
  }

  if ([v143 isMe])
  {
    sub_1000271B4();
    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_100028000;
    *(v104 + 56) = &type metadata for String;
    *(v104 + 64) = sub_10000A9E4();
    *(v104 + 32) = v101;
    *(v104 + 40) = v103;
    v88 = sub_100027164();

    goto LABEL_57;
  }

  sub_1000271B4();
  sub_10000274C(&qword_100039750, &qword_1000282A8);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_100028210;
  v111 = v143;
  v112 = sub_100027344();
  v114 = v113;
  *(v110 + 56) = &type metadata for String;
  v115 = sub_10000A9E4();
  *(v110 + 32) = v112;
  *(v110 + 40) = v114;
  *(v110 + 96) = &type metadata for String;
  *(v110 + 104) = v115;
  *(v110 + 64) = v115;
  *(v110 + 72) = v101;
  *(v110 + 80) = v103;
  v116 = sub_100027164();

  (*(v135 + 8))(v130, v134);
  sub_100006B20(v123, &qword_100039710, &unk_1000287B0);
  return v116;
}

id sub_100009A68()
{
  v0 = sub_1000269B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026A94();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for MessageDetails.EventStatus.approved(_:))
  {
    return [objc_opt_self() systemGreenColor];
  }

  if (v5 == enum case for MessageDetails.EventStatus.denied(_:))
  {
    return [objc_opt_self() systemRedColor];
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

void *sub_100009C00@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = sub_10000274C(&qword_100039708, &unk_100028280);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v70 = &v62 - v3;
  v4 = sub_100026B44();
  v5 = *(v4 - 8);
  v73 = v4;
  v74 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v62 - v12;
  v14 = sub_100026994();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  v16 = __chkstk_darwin(v14);
  v63 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &v62 - v18;
  v19 = sub_1000269B4();
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = *(v20 + 64);
  __chkstk_darwin(v19);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000274C(&qword_100039718, &unk_100028290);
  v25 = *(v20 + 72);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v68 = xmmword_100028210;
  *(v27 + 16) = xmmword_100028210;
  v28 = v27 + v26;
  v29 = *(v21 + 104);
  v29(v28, enum case for MessageDetails.EventStatus.approved(_:), v19);
  v29(v28 + v25, enum case for MessageDetails.EventStatus.denied(_:), v19);
  v76 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  sub_100026A94();
  LOBYTE(v25) = sub_10000A47C(v24, v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v21 + 8))(v24, v19);
  v30 = v14;
  if ((v25 & 1) == 0)
  {
    sub_1000269D4();
    v31 = v75;
    if ((*(v75 + 48))(v13, 1, v14) == 1)
    {
      sub_100006B20(v13, &qword_100039710, &unk_1000287B0);
    }

    else
    {
      v32 = v69;
      (*(v31 + 32))(v69, v13, v30);
      if (qword_100039078 != -1)
      {
        swift_once();
      }

      v33 = sub_100007898(v32, qword_100039570);
      (*(v31 + 8))(v32, v30);
      if (v33)
      {
        sub_10000274C(&qword_100039720, &qword_1000287F0);
        v34 = swift_allocObject();
        *(v34 + 16) = v68;
        *(v34 + 32) = 0;
        *(v34 + 40) = 0;
        *(v34 + 48) = sub_1000271B4();
        *(v34 + 56) = v35;
        goto LABEL_9;
      }
    }
  }

  sub_100008848();
  v36 = sub_1000271C4();

  v34 = sub_10000A588(v36);

LABEL_9:

  v37 = sub_100009A68();
  v39 = v38;
  v41 = v40;
  if (v37)
  {

    v42 = v37;
    v43 = sub_100026F64();
    v65 = v39;
    v44 = v41;
  }

  else
  {
    v43 = 0;
    v65 = 0;
    v44 = 0;
  }

  v45 = *(v34 + 16);

  v46 = *(v34 + 16);
  v69 = v43;
  v67 = v39;
  *&v68 = v41;
  if (v45 == 2)
  {
    v47 = v73;
    if (v46)
    {
      if (v46 != 1)
      {
        v41 = *(v34 + 32);
        v19 = *(v34 + 40);
        v39 = *(v34 + 56);
        v64 = *(v34 + 48);

        goto LABEL_18;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = v73;
  if (!v46)
  {
    goto LABEL_33;
  }

  v64 = 0;
  v39 = 0;
  v41 = *(v34 + 32);
  v19 = *(v34 + 40);
LABEL_18:

  v48 = v70;
  sub_100026A74();
  v49 = v74;
  if ((*(v74 + 48))(v48, 1, v47) != 1)
  {
    (*(v49 + 32))(v71, v48, v47);
    v51 = sub_100026B34();
    v50 = v75;
    if (!(v51 >> 62))
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_35:
    v52 = sub_100027434();
    v50 = v75;
LABEL_22:

    (*(v74 + 8))(v71, v47);
    if (v52)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  sub_100006B20(v48, &qword_100039708, &unk_100028280);
  v50 = v75;
LABEL_23:
  v53 = v66;
  sub_1000269D4();
  if ((*(v50 + 48))(v53, 1, v30) == 1)
  {

    sub_100006B20(v53, &qword_100039710, &unk_1000287B0);
LABEL_30:
    sub_1000271A4();
    v58 = sub_1000271B4();
    v39 = v59;

    v41 = sub_1000271B4();
    v19 = v60;
    result = sub_10000A8EC(v37);
    v57 = 0;
    v44 = 0;
    goto LABEL_31;
  }

  v54 = v63;
  (*(v50 + 32))(v63, v53, v30);
  if (qword_100039078 != -1)
  {
    swift_once();
  }

  v55 = sub_100007898(v54, qword_100039570);
  (*(v50 + 8))(v54, v30);
  if ((v55 & 1) == 0)
  {

    goto LABEL_30;
  }

LABEL_28:
  result = sub_10000A8EC(v37);
  v58 = v64;
  v57 = v65;
LABEL_31:
  v61 = v72;
  *v72 = v41;
  v61[1] = v19;
  v61[2] = v58;
  v61[3] = v39;
  v61[4] = v57;
  v61[5] = v44;
  v61[6] = v69;
  return result;
}

BOOL sub_10000A47C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1000269B4() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10000A92C(&qword_100039740, &type metadata accessor for MessageDetails.EventStatus);
  }

  while ((sub_100027114() & 1) == 0);
  return v4 != v5;
}

void *sub_10000A588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017410(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v8 = *(v3 - 1);
      v9 = *v3;

      sub_10000274C(&qword_100039738, &qword_1000282A0);
      swift_dynamicCast();
      v4 = v10;
      v6 = *(&_swiftEmptyArrayStorage + 2);
      v5 = *(&_swiftEmptyArrayStorage + 3);
      if (v6 >= v5 >> 1)
      {
        sub_100017410((v5 > 1), v6 + 1, 1);
        v4 = v10;
      }

      *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
      *(&_swiftEmptyArrayStorage + v6 + 2) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t BubbleContentContainer.deinit()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v2 = sub_100026B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BubbleContentContainer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v2 = sub_100026B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BubbleContentContainer()
{
  result = qword_1000395B0;
  if (!qword_1000395B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A830()
{
  result = sub_100026B04();
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

void *sub_10000A8EC(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A92C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A974(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000A9E4()
{
  result = qword_100039758;
  if (!qword_100039758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039758);
  }

  return result;
}

uint64_t sub_10000AA38@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_100026654();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

Swift::Int sub_10000AC20()
{
  v1 = *v0;
  sub_1000274D4();
  sub_1000274E4(v1);
  return sub_1000274F4();
}

Swift::Int sub_10000AC94()
{
  v1 = *v0;
  sub_1000274D4();
  sub_1000274E4(v1);
  return sub_1000274F4();
}

uint64_t sub_10000ACE8(char *a1)
{
  v55 = a1;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v54 - v8;
  v9 = sub_10000274C(&qword_100039820, &qword_100028348);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v54 - v11;
  v13 = sub_10000274C(&qword_100039828, &qword_100028350);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v54 - v15;
  v17 = sub_100026684();
  v59 = *(v17 - 8);
  v60 = v17;
  v18 = *(v59 + 64);
  __chkstk_darwin(v17);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  v27 = sub_100026734();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v58 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [v1 selectedMessage];
  if (!v31)
  {
    (*(v28 + 56))(v26, 1, 1, v27);
LABEL_7:
    sub_100006B20(v26, &qword_100039188, &qword_100027DE8);
    sub_100026894();
    v36 = sub_100026824();
    v37 = sub_100027314();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No message url in conversation", v38, 2u);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v54 = v12;
  v32 = v3;
  v33 = v2;
  v34 = v31;
  v35 = [v31 URL];

  if (v35)
  {
    sub_100026714();

    (*(v28 + 56))(v24, 0, 1, v27);
  }

  else
  {
    (*(v28 + 56))(v24, 1, 1, v27);
  }

  sub_100010C0C(v24, v26, &qword_100039188, &qword_100027DE8);
  v2 = v33;
  v3 = v32;
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_7;
  }

  v39 = v58;
  (*(v28 + 32))(v58, v26, v27);
  sub_100026674();
  v41 = v59;
  v40 = v60;
  if ((*(v59 + 48))(v16, 1, v60) == 1)
  {
    sub_100006B20(v16, &qword_100039828, &qword_100028350);
    v42 = v57;
    sub_100026894();
    v43 = sub_100026824();
    v44 = sub_100027314();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Can't parse bubble view url components", v45, 2u);
    }

    (*(v3 + 8))(v42, v2);
    goto LABEL_18;
  }

  v46 = v56;
  (*(v41 + 32))(v56, v16, v40);
  v47 = sub_100026664();
  if (!v47)
  {
    (*(v41 + 8))(v46, v40);
LABEL_18:
    (*(v28 + 8))(v39, v27);
    return 0;
  }

  v48 = v47;
  __chkstk_darwin(v47);
  v49 = v54;
  *(&v54 - 2) = v55;
  sub_10000AA38(sub_100010BA8, v48, v49);

  v50 = sub_100026654();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    (*(v59 + 8))(v46, v60);
    (*(v28 + 8))(v39, v27);
    sub_100006B20(v49, &qword_100039820, &qword_100028348);
    return 0;
  }

  v53 = sub_100026644();
  (*(v59 + 8))(v46, v60);
  (*(v28 + 8))(v39, v27);
  (*(v51 + 8))(v49, v50);
  return v53;
}

uint64_t sub_10000B45C()
{
  v0 = sub_100026634();
  v2 = v1;
  if (v0 == sub_100026854() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_100027474();
  }

  return v4 & 1;
}

uint64_t sub_10000B4F8@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, char *a3@<X8>)
{
  v126 = a2;
  v120 = a3;
  v5 = sub_100026834();
  v124 = *(v5 - 8);
  v125 = v5;
  v6 = *(v124 + 64);
  v7 = __chkstk_darwin(v5);
  v117 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  v113 = &v102 - v11;
  v12 = __chkstk_darwin(v10);
  v112 = &v102 - v13;
  __chkstk_darwin(v12);
  v110 = &v102 - v14;
  v108 = sub_100026B44();
  v107 = *(v108 - 8);
  v15 = *(v107 + 64);
  __chkstk_darwin(v108);
  v104 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000274C(&qword_100039708, &unk_100028280);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v106 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v105 = &v102 - v22;
  __chkstk_darwin(v21);
  v109 = &v102 - v23;
  v24 = sub_100026B04();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v111 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v114 = &v102 - v30;
  v31 = __chkstk_darwin(v29);
  v123 = &v102 - v32;
  __chkstk_darwin(v31);
  v122 = &v102 - v33;
  v34 = sub_10000274C(&qword_100039830, &qword_100028358);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v118 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v102 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v102 - v42;
  __chkstk_darwin(v41);
  v45 = &v102 - v44;
  v127 = v25;
  v48 = *(v25 + 56);
  v47 = v25 + 56;
  v46 = v48;
  (v48)(&v102 - v44, 1, 1, v24);
  v121 = v3;
  sub_10000C330(1, v43);
  v119 = a1;
  sub_100006B20(v45, &qword_100039830, &qword_100028358);
  (v48)(v43, 0, 1, v24);
  sub_100010C0C(v43, v45, &qword_100039830, &qword_100028358);
  sub_1000061E4(v45, v40, &qword_100039830, &qword_100028358);
  v49 = v127;
  v50 = *(v127 + 48);
  v51 = v50(v40, 1, v24);
  v52 = v121;
  if (v51 == 1)
  {
    sub_100006B20(v45, &qword_100039830, &qword_100028358);
    sub_100006B20(v40, &qword_100039830, &qword_100028358);
    v53 = 1;
    v54 = v120;
  }

  else
  {
    v102 = v47;
    v103 = v45;
    v55 = v122;
    v115 = *(v49 + 32);
    v116 = v49 + 32;
    v115(v122, v40, v24);
    (*(v49 + 16))(v123, v55, v24);
    v56 = v52[10];
    sub_100010BC8(v52 + 6, v52[9]);
    v57 = v118;
    v58 = v126;
    sub_100026BE4();
    if (v50(v57, 1, v24) == 1)
    {
      sub_100006B20(v57, &qword_100039830, &qword_100028358);
      v59 = v113;
      sub_100026894();
      v60 = v58;

      v61 = sub_100026824();
      v62 = sub_1000272F4();

      v63 = os_log_type_enabled(v61, v62);
      v65 = v124;
      v64 = v125;
      v66 = v103;
      if (v63)
      {
        v67 = swift_slowAlloc();
        v68 = v46;
        v69 = swift_slowAlloc();
        v128 = v69;
        *v67 = 136315138;
        *(v67 + 4) = sub_100005F78(v119, v60, &v128);
        _os_log_impl(&_mh_execute_header, v61, v62, "%s - cached message details is nil", v67, 0xCu);
        sub_100006044(v69);
        v46 = v68;

        (*(v65 + 8))(v113, v64);
      }

      else
      {

        (*(v65 + 8))(v59, v64);
      }

      (*(v127 + 8))(v122, v24);
      v80 = v66;
    }

    else
    {
      v115(v114, v57, v24);
      sub_100026AC4();
      v70 = v124;
      if (v71)
      {
        v72 = v110;
        sub_100026894();

        v73 = sub_100026824();
        v74 = sub_100027314();

        v75 = os_log_type_enabled(v73, v74);
        v76 = v119;
        if (v75)
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v121 = v46;
          v79 = v78;
          v128 = v78;
          *v77 = 136315138;
          *(v77 + 4) = sub_100005F78(v76, v58, &v128);
          _os_log_impl(&_mh_execute_header, v73, v74, "%s - userDSID is nil", v77, 0xCu);
          sub_100006044(v79);
          v46 = v121;

          (*(v70 + 8))(v110, v125);
        }

        else
        {

          (*(v70 + 8))(v72, v125);
        }
      }

      else
      {
        v81 = v121[15];
        sub_100010BC8(v121 + 11, v121[14]);
        v82 = v109;
        sub_100026C04();
        sub_1000061E4(v82, v105, &qword_100039708, &unk_100028280);
        sub_100026A84();
        v83 = v106;
        sub_1000061E4(v82, v106, &qword_100039708, &unk_100028280);
        v84 = v107;
        v85 = v108;
        if ((*(v107 + 48))(v83, 1, v108) == 1)
        {
          sub_100006B20(v82, &qword_100039708, &unk_100028280);
          v86 = v83;
        }

        else
        {
          v87 = v104;
          (*(v84 + 32))(v104, v83, v85);
          v88 = sub_100026B14();
          sub_100027344();

          sub_100026AD4();
          (*(v84 + 8))(v87, v85);
          v86 = v109;
        }

        sub_100006B20(v86, &qword_100039708, &unk_100028280);
        v70 = v124;
      }

      v89 = v111;
      sub_100026984();
      v90 = *(v127 + 8);
      v91 = v123;
      v90(v123, v24);
      v115(v91, v89, v24);
      v92 = v112;
      sub_100026894();
      v93 = v126;

      v94 = sub_100026824();
      v95 = sub_1000272F4();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = v93;
        v99 = v46;
        v100 = v97;
        v128 = v97;
        *v96 = 136315138;
        *(v96 + 4) = sub_100005F78(v119, v98, &v128);
        _os_log_impl(&_mh_execute_header, v94, v95, "%s - loaded cached message details from cache", v96, 0xCu);
        sub_100006044(v100);
        v46 = v99;
      }

      (*(v70 + 8))(v92, v125);
      v90(v114, v24);
      v90(v122, v24);
      v80 = v103;
    }

    sub_100006B20(v80, &qword_100039830, &qword_100028358);
    v54 = v120;
    v115(v120, v123, v24);
    v53 = 0;
  }

  return (v46)(v54, v53, 1, v24);
}

uint64_t sub_10000C330@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v58 = a1;
  v61 = a2;
  v3 = sub_100026834();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = sub_100026B04();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000274C(&qword_100039828, &qword_100028350);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v53 - v16;
  v18 = sub_100026684();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026674();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100006B20(v17, &qword_100039828, &qword_100028350);
    sub_100026894();
    v23 = sub_100026824();
    v24 = sub_100027314();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Can't parse bubble view url components", v25, 2u);
    }

    (*(v62 + 8))(v7, v63);
    sub_100010C74();
    swift_allocError();
    *v26 = 2;
    return swift_willThrow();
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_1000269C4();
    if (v2)
    {
      return (*(v19 + 8))(v22, v18);
    }

    else
    {
      v28 = sub_100026AB4();
      if (!v29)
      {
        v28 = sub_100026AF4();
      }

      v30 = v28;
      v31 = v29;
      v32 = sub_100026A04();
      if (v33 >> 60 == 15)
      {
        if (qword_100039068 != -1)
        {
          swift_once();
        }

        ImageCache.getFromCache(_:)(v30, v31);
        v35 = v34;

        if (v35 >> 60 != 15)
        {
          sub_100026A14();
        }
      }

      else
      {
        v36 = v32;
        v37 = v33;

        sub_100010CDC(v36, v37);
      }

      if (v58)
      {
        v38 = v9;
        v39 = sub_100026A04();
        if (v40 >> 60 == 15)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            if (qword_100039080 != -1)
            {
              swift_once();
            }

            v41 = qword_10003A748;
            if (qword_10003A748 >> 60 != 15)
            {
              v42 = qword_10003A740;
              sub_100010CC8(qword_10003A740, qword_10003A748);
              sub_100003B24(v42, v41);
              sub_100026A14();
              sub_100026894();
              v43 = sub_100026824();
              v58 = sub_1000272F4();
              if (os_log_type_enabled(v43, v58))
              {
                v44 = swift_slowAlloc();
                v55 = v42;
                v45 = v44;
                v56 = swift_slowAlloc();
                v64 = v56;
                *v45 = 136315138;
                swift_beginAccess();
                v54 = v43;
                v46 = sub_100026AF4();
                v57 = v38;
                v48 = v47;
                swift_endAccess();
                v49 = sub_100005F78(v46, v48, &v64);

                *(v45 + 4) = v49;
                v50 = v54;
                _os_log_impl(&_mh_execute_header, v54, v58, "%s - using fallback icon", v45, 0xCu);
                sub_100006044(v56);

                sub_100010CDC(v55, v41);
                (*(v62 + 8))(v57, v63);
              }

              else
              {

                sub_100010CDC(v42, v41);
                (*(v62 + 8))(v38, v63);
              }
            }
          }
        }

        else
        {
          sub_100010CDC(v39, v40);
        }
      }

      (*(v19 + 8))(v22, v18);
      swift_beginAccess();
      v52 = v59;
      v51 = v60;
      (*(v59 + 16))(v61, v13, v60);
      return (*(v52 + 8))(v13, v51);
    }
  }
}

uint64_t sub_10000C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_100026734();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  if (*(v4 + 128))
  {
    sub_100026B04();

    sub_10000274C(&qword_100039848, &qword_100028370);
    sub_1000272C4();

    v15 = *(v4 + 128);
  }

  *(v4 + 128) = 0;

  sub_100027284();
  v16 = sub_1000272A4();
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_100027274();

  v17 = sub_100027264();
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v4;
  (*(v8 + 32))(&v20[v18], v10, v7);
  v21 = &v20[v19];
  *v21 = v26;
  *(v21 + 1) = a3;
  v22 = sub_10000FC7C(0, 0, v14, &unk_100028380, v20);
  v23 = *(v4 + 128);
  *(v4 + 128) = v22;

  return v22;
}

uint64_t sub_10000CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = *(*(sub_10000274C(&qword_100039708, &unk_100028280) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v9 = sub_100026B44();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = sub_100026B04();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();
  sub_100027274();
  v7[14] = sub_100027264();
  v16 = sub_100027244();
  v7[15] = v16;
  v7[16] = v15;

  return _swift_task_switch(sub_10000CE38, v16, v15);
}

uint64_t sub_10000CE38()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10000C330(0, v0[13]);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_10000CF54;
  v4 = v0[13];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];
  v8 = v0[3];

  return sub_10000D354(v7, v5, v6, v4);
}

uint64_t sub_10000CF54()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_10000D2AC;
  }

  else
  {
    v7 = sub_10000D090;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000D090()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];

  sub_10000F724(v6, v3, v4);
  if (v1)
  {
    v7 = v0[13];
    v8 = v0[11];
    v9 = *(v0[12] + 8);
    v9(v0[2], v8);
    v9(v7, v8);
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[7];

    v13 = v0[1];
  }

  else
  {
    v14 = v0[8];
    v15 = v0[9];
    v16 = v0[7];
    v17 = v0[2];
    sub_100026A74();
    v18 = (*(v15 + 48))(v16, 1, v14);
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[11];
    if (v18 == 1)
    {
      v22 = v0[7];
      (*(v20 + 8))(v0[13], v0[11]);
      sub_100006B20(v22, &qword_100039708, &unk_100028280);
    }

    else
    {
      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v26 = v0[3];
      (*(v24 + 32))(v23, v0[7], v25);
      v27 = v26[15];
      sub_100010BC8(v26 + 11, v26[14]);
      sub_100026C14();
      (*(v24 + 8))(v23, v25);
      (*(v20 + 8))(v19, v21);
    }

    v28 = v0[13];
    v29 = v0[10];
    v30 = v0[7];

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_10000D2AC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);
  v5 = v0[18];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_100027254();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_100026834();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v12 = sub_100026B04();
  v5[24] = v12;
  v13 = *(v12 - 8);
  v5[25] = v13;
  v14 = *(v13 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = sub_100027274();
  v5[30] = sub_100027264();
  v16 = sub_100027244();
  v5[31] = v16;
  v5[32] = v15;

  return _swift_task_switch(sub_10000D56C, v16, v15);
}

uint64_t sub_10000D56C()
{
  v120 = v0;
  (*(*(v0 + 200) + 16))(*(v0 + 224), *(v0 + 80), *(v0 + 192));
  sub_1000272E4();
  *(v0 + 264) = 0;
  v1 = &xmmword_100028000;
  v2 = *(v0 + 224);
  v3 = sub_100026A04();
  if (v4 >> 60 == 15)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 72);
    sub_100026894();

    v7 = sub_100026824();
    v8 = sub_100027304();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 176);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v9)
    {
      v14 = *(v0 + 64);
      v13 = *(v0 + 72);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v119[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100005F78(v14, v13, v119);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s stable details had no thumbnail data. Fetching it.", v15, 0xCu);
      sub_100006044(v16);
    }

    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = *(v0 + 88);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 272) = Strong;
    if (Strong)
    {
      v20 = swift_task_alloc();
      *(v0 + 280) = v20;
      *v20 = v0;
      v20[1] = sub_10000E018;
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);

      return sub_10001A974(v21, v22);
    }

    v24 = *(v0 + 168);
    v25 = *(v0 + 72);
    sub_100026894();

    v26 = sub_100026824();
    v27 = sub_100027304();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 168);
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    if (v28)
    {
      v114 = *(v0 + 168);
      v32 = *(v0 + 64);
      v33 = *(v0 + 72);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v119[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100005F78(v32, v33, v119);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s thumbnail is nil", v34, 0xCu);
      sub_100006044(v35);

      v36 = v114;
    }

    else
    {

      v36 = v29;
    }

    v17(v36, v31);
    v1 = &xmmword_100028000;
  }

  else
  {
    sub_100010CDC(v3, v4);
  }

  *(v0 + 288) = v1[43];
  v37 = *(v0 + 264);
  sub_1000272E4();
  if (v37)
  {
    v38 = v37;
    v39 = *(v0 + 160);
    v40 = *(v0 + 72);
    sub_100026894();

    v41 = sub_100026824();
    v42 = sub_100027304();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 128);
      v112 = *(v0 + 120);
      v115 = *(v0 + 160);
      v44 = v1;
      v46 = *(v0 + 64);
      v45 = *(v0 + 72);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v119[0] = v48;
      *v47 = 136315138;
      v49 = v45;
      v1 = v44;
      *(v47 + 4) = sub_100005F78(v46, v49, v119);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s has been deactivated prior to loading message status!", v47, 0xCu);
      sub_100006044(v48);

      (*(v43 + 8))(v115, v112);
    }

    else
    {
      v55 = *(v0 + 160);
      v56 = *(v0 + 120);
      v57 = *(v0 + 128);

      (*(v57 + 8))(v55, v56);
    }

    v58 = *(v0 + 224);
    v59 = *(v0 + 192);
    v60 = *(v0 + 200);
    goto LABEL_22;
  }

  v50 = *(v0 + 88);
  v51 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = v51;
  if (!v51)
  {
    v94 = *(v0 + 144);
    v95 = *(v0 + 72);
    sub_100026894();

    v96 = sub_100026824();
    v97 = sub_100027304();

    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 144);
    v100 = *(v0 + 120);
    v101 = *(v0 + 128);
    if (v98)
    {
      v118 = *(v0 + 144);
      v102 = v1;
      v104 = *(v0 + 64);
      v103 = *(v0 + 72);
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v119[0] = v106;
      *v105 = 136315138;
      v107 = v104;
      v1 = v102;
      *(v105 + 4) = sub_100005F78(v107, v103, v119);
      _os_log_impl(&_mh_execute_header, v96, v97, "%s messageStatusProvider == nil", v105, 0xCu);
      sub_100006044(v106);

      (*(v101 + 8))(v118, v100);
    }

    else
    {

      (*(v101 + 8))(v99, v100);
    }

    v58 = *(v0 + 224);
    v59 = *(v0 + 192);
    v60 = *(v0 + 200);
    sub_100010C74();
    v38 = swift_allocError();
    *v108 = 3;
LABEL_22:
    swift_willThrow();
    (*(v60 + 8))(v58, v59);
    *(v0 + 368) = v1[43];
    *(v0 + 360) = v38;
    v61 = *(v0 + 112);
    v62 = *(v0 + 96);
    *(v0 + 40) = v38;
    swift_errorRetain();
    sub_10000274C(&qword_100039848, &qword_100028370);
    if (swift_dynamicCast())
    {
      v63 = *(v0 + 240);
      v65 = *(v0 + 216);
      v64 = *(v0 + 224);
      v66 = *(v0 + 208);
      v67 = *(v0 + 176);
      v68 = *(v0 + 184);
      v109 = *(v0 + 168);
      v110 = *(v0 + 160);
      v111 = *(v0 + 152);
      v113 = *(v0 + 144);
      v116 = *(v0 + 136);
      v70 = *(v0 + 104);
      v69 = *(v0 + 112);
      v71 = *(v0 + 96);

      (*(v70 + 8))(v69, v71);
      swift_willThrow();
      sub_100010CDC(0, 0xF000000000000000);

      v72 = *(v0 + 8);

      return v72();
    }

    else
    {
      v73 = *(v0 + 136);
      v74 = *(v0 + 72);
      sub_100026894();

      swift_errorRetain();
      v75 = sub_100026824();
      v76 = sub_100027304();

      v77 = os_log_type_enabled(v75, v76);
      v79 = *(v0 + 128);
      v78 = *(v0 + 136);
      v80 = *(v0 + 120);
      if (v77)
      {
        v117 = *(v0 + 136);
        v82 = *(v0 + 64);
        v81 = *(v0 + 72);
        v83 = swift_slowAlloc();
        v119[0] = swift_slowAlloc();
        *v83 = 136315394;
        *(v83 + 4) = sub_100005F78(v82, v81, v119);
        *(v83 + 12) = 2080;
        swift_getErrorValue();
        v85 = *(v0 + 16);
        v84 = *(v0 + 24);
        v86 = *(v0 + 32);
        v87 = sub_100027484();
        v89 = sub_100005F78(v87, v88, v119);

        *(v83 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v75, v76, "%s failed load details %s, using fallback", v83, 0x16u);
        swift_arrayDestroy();

        (*(v79 + 8))(v117, v80);
      }

      else
      {

        (*(v79 + 8))(v78, v80);
      }

      v90 = swift_task_alloc();
      *(v0 + 384) = v90;
      *v90 = v0;
      v90[1] = sub_10000F4F0;
      v91 = *(v0 + 80);
      v92 = *(v0 + 88);
      v93 = *(v0 + 56);

      return sub_10000FF34(v93, v91, 0, 0xF000000000000000);
    }
  }

  v52 = *(v0 + 232);
  *(v0 + 312) = sub_100027264();
  v54 = sub_100027244();
  *(v0 + 320) = v54;
  *(v0 + 328) = v53;

  return _swift_task_switch(sub_10000E84C, v54, v53);
}

uint64_t sub_10000E018()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 256);
  v4 = *(v1 + 248);

  return _swift_task_switch(sub_10000E138, v4, v3);
}

uint64_t sub_10000E138()
{
  v93 = v0;
  v1 = v0[34];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = sub_100026A04();
  v7 = v6;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 != 15)
  {
    v8 = v0[28];
    sub_100003B24(v5, v7);
    sub_100026A14();
  }

  v0[36] = v5;
  v0[37] = v7;
  v9 = v0[33];
  sub_1000272E4();
  if (v9)
  {
    v10 = v9;
    v11 = v0[20];
    v12 = v0[9];
    sub_100026894();

    v13 = sub_100026824();
    v14 = sub_100027304();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[16];
      v84 = v0[15];
      v88 = v0[20];
      v81 = v0[9];
      v16 = v5;
      v17 = v0[8];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v92[0] = v19;
      *v18 = 136315138;
      v20 = v17;
      v5 = v16;
      *(v18 + 4) = sub_100005F78(v20, v81, v92);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s has been deactivated prior to loading message status!", v18, 0xCu);
      sub_100006044(v19);

      (*(v15 + 8))(v88, v84);
    }

    else
    {
      v26 = v0[20];
      v28 = v0[15];
      v27 = v0[16];

      (*(v27 + 8))(v26, v28);
    }

    v29 = v0[28];
    v31 = v0[24];
    v30 = v0[25];
    goto LABEL_12;
  }

  v21 = v0[11];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[38] = Strong;
  if (!Strong)
  {
    v63 = v0[18];
    v64 = v0[9];
    sub_100026894();

    v65 = sub_100026824();
    v66 = sub_100027304();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[18];
    v70 = v0[15];
    v69 = v0[16];
    if (v67)
    {
      v72 = v0[8];
      v71 = v0[9];
      v87 = v5;
      v73 = swift_slowAlloc();
      v91 = v68;
      v92[0] = swift_slowAlloc();
      v74 = v92[0];
      *v73 = 136315138;
      *(v73 + 4) = sub_100005F78(v72, v71, v92);
      _os_log_impl(&_mh_execute_header, v65, v66, "%s messageStatusProvider == nil", v73, 0xCu);
      sub_100006044(v74);

      v5 = v87;

      (*(v69 + 8))(v91, v70);
    }

    else
    {

      (*(v69 + 8))(v68, v70);
    }

    v29 = v0[28];
    v31 = v0[24];
    v30 = v0[25];
    sub_100010C74();
    v10 = swift_allocError();
    *v75 = 3;
LABEL_12:
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
    v0[46] = v5;
    v0[47] = v7;
    v0[45] = v10;
    v32 = v0[14];
    v33 = v0[12];
    v0[5] = v10;
    swift_errorRetain();
    sub_10000274C(&qword_100039848, &qword_100028370);
    if (swift_dynamicCast())
    {
      v34 = v0[30];
      v35 = v0[27];
      v36 = v0[28];
      v37 = v0[26];
      v77 = v0[23];
      v78 = v0[22];
      v79 = v0[21];
      v80 = v0[20];
      v82 = v0[19];
      v85 = v0[18];
      v89 = v0[17];
      v39 = v0[13];
      v38 = v0[14];
      v40 = v0[12];

      (*(v39 + 8))(v38, v40);
      swift_willThrow();
      sub_100010CDC(v5, v7);

      v41 = v0[1];

      return v41();
    }

    else
    {
      v90 = v7;
      v42 = v0[17];
      v43 = v0[9];
      sub_100026894();

      swift_errorRetain();
      v44 = sub_100026824();
      v45 = sub_100027304();

      v46 = os_log_type_enabled(v44, v45);
      v48 = v0[16];
      v47 = v0[17];
      v49 = v0[15];
      if (v46)
      {
        v83 = v0[17];
        v50 = v0[8];
        v51 = v0[9];
        v86 = v5;
        v52 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v52 = 136315394;
        *(v52 + 4) = sub_100005F78(v50, v51, v92);
        *(v52 + 12) = 2080;
        swift_getErrorValue();
        v54 = v0[2];
        v53 = v0[3];
        v55 = v0[4];
        v56 = sub_100027484();
        v58 = sub_100005F78(v56, v57, v92);

        *(v52 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v44, v45, "%s failed load details %s, using fallback", v52, 0x16u);
        swift_arrayDestroy();

        v5 = v86;

        (*(v48 + 8))(v83, v49);
      }

      else
      {

        (*(v48 + 8))(v47, v49);
      }

      v59 = swift_task_alloc();
      v0[48] = v59;
      *v59 = v0;
      v59[1] = sub_10000F4F0;
      v60 = v0[10];
      v61 = v0[11];
      v62 = v0[7];

      return sub_10000FF34(v62, v60, v5, v90);
    }
  }

  v23 = v0[29];
  v0[39] = sub_100027264();
  v25 = sub_100027244();
  v0[40] = v25;
  v0[41] = v24;

  return _swift_task_switch(sub_10000E84C, v25, v24);
}

uint64_t sub_10000E84C()
{
  v1 = (v0[38] + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[42] = v2;
  v4 = async function pointer to static ScreenTimeSupport.getCurrentStatusDetails(withDetails:forId:)[1];

  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_10000E920;
  v6 = v0[28];
  v7 = v0[26];

  return static ScreenTimeSupport.getCurrentStatusDetails(withDetails:forId:)(v7, v6, v3, v2);
}

uint64_t sub_10000E920()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_10000F0B8;
  }

  else
  {
    v7 = v2[42];

    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_10000EA3C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10000EA3C()
{
  v1 = v0[39];

  v2 = v0[31];
  v3 = v0[32];

  return _swift_task_switch(sub_10000EAA0, v2, v3);
}

uint64_t sub_10000EAA0()
{
  v90 = v0;
  v1 = v0[44];
  sub_1000272E4();
  if (!v1)
  {
    v16 = v0[37];
    v15 = v0[38];
    v17 = v0[36];
    v18 = v0[30];
    v20 = v0[27];
    v19 = v0[28];
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[24];
    v24 = v0[7];

    sub_100026984();
    swift_unknownObjectRelease();
    sub_100010CDC(v17, v16);
    v25 = *(v22 + 8);
    v25(v21, v23);
    v25(v19, v23);
    v26 = *(v22 + 32);
    v26(v19, v20, v23);
    v26(v24, v19, v23);
    v28 = v0[27];
    v27 = v0[28];
    v29 = v0[26];
    v31 = v0[22];
    v30 = v0[23];
    v33 = v0[20];
    v32 = v0[21];
    v35 = v0[18];
    v34 = v0[19];
    v36 = v0[17];
    v86 = v0[14];

    v37 = v0[1];
LABEL_8:

    return v37();
  }

  v2 = v1;
  v3 = v0[19];
  v4 = v0[9];
  sub_100026894();

  v5 = sub_100026824();
  v6 = sub_100027304();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  if (v7)
  {
    v85 = v0[19];
    v12 = v0[8];
    v11 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v89[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100005F78(v12, v11, v89);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s has been deactivated prior to updating details!", v13, 0xCu);
    sub_100006044(v14);

    (*(v9 + 8))(v85, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v38 = v0[38];
  v39 = v0[28];
  v41 = v0[25];
  v40 = v0[26];
  v42 = v0[24];
  swift_willThrow();
  swift_unknownObjectRelease();
  v43 = *(v41 + 8);
  v43(v40, v42);
  v43(v39, v42);
  v44 = v0[36];
  v45 = v0[37];
  v0[46] = v44;
  v0[47] = v45;
  v0[45] = v2;
  v46 = v0[14];
  v47 = v0[12];
  v0[5] = v2;
  swift_errorRetain();
  sub_10000274C(&qword_100039848, &qword_100028370);
  if (swift_dynamicCast())
  {
    v48 = v0[30];
    v50 = v0[27];
    v49 = v0[28];
    v76 = v0[26];
    v77 = v0[23];
    v78 = v0[22];
    v79 = v0[21];
    v80 = v0[20];
    v81 = v0[19];
    v83 = v0[18];
    v87 = v0[17];
    v52 = v0[13];
    v51 = v0[14];
    v53 = v0[12];

    (*(v52 + 8))(v51, v53);
    swift_willThrow();
    sub_100010CDC(v44, v45);

    v37 = v0[1];
    goto LABEL_8;
  }

  v88 = v44;
  v55 = v0[17];
  v56 = v0[9];
  sub_100026894();

  swift_errorRetain();
  v57 = sub_100026824();
  v58 = sub_100027304();

  v59 = os_log_type_enabled(v57, v58);
  v61 = v0[16];
  v60 = v0[17];
  v62 = v0[15];
  if (v59)
  {
    v82 = v0[17];
    v64 = v0[8];
    v63 = v0[9];
    v84 = v45;
    v65 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v65 = 136315394;
    *(v65 + 4) = sub_100005F78(v64, v63, v89);
    *(v65 + 12) = 2080;
    swift_getErrorValue();
    v67 = v0[2];
    v66 = v0[3];
    v68 = v0[4];
    v69 = sub_100027484();
    v71 = sub_100005F78(v69, v70, v89);

    *(v65 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s failed load details %s, using fallback", v65, 0x16u);
    swift_arrayDestroy();

    v45 = v84;

    (*(v61 + 8))(v82, v62);
  }

  else
  {

    (*(v61 + 8))(v60, v62);
  }

  v72 = swift_task_alloc();
  v0[48] = v72;
  *v72 = v0;
  v72[1] = sub_10000F4F0;
  v73 = v0[10];
  v74 = v0[11];
  v75 = v0[7];

  return sub_10000FF34(v75, v73, v88, v45);
}

uint64_t sub_10000F0B8()
{
  v1 = v0[42];
  v2 = v0[39];

  v3 = v0[31];
  v4 = v0[32];

  return _swift_task_switch(sub_10000F128, v3, v4);
}

uint64_t sub_10000F128()
{
  v52 = v0;
  v1 = v0[38];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[44];
  v0[5] = v5;
  v7 = v0[36];
  v6 = v0[37];
  v0[46] = v7;
  v0[47] = v6;
  v0[45] = v5;
  v8 = v0[14];
  v9 = v0[12];
  swift_errorRetain();
  sub_10000274C(&qword_100039848, &qword_100028370);
  if (swift_dynamicCast())
  {
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[26];
    v41 = v0[23];
    v42 = v0[22];
    v43 = v0[21];
    v44 = v0[20];
    v46 = v0[19];
    v48 = v0[18];
    v49 = v0[17];
    v14 = v7;
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];

    (*(v16 + 8))(v15, v17);
    swift_willThrow();
    sub_100010CDC(v14, v6);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[17];
    v21 = v0[9];
    sub_100026894();

    swift_errorRetain();
    v22 = sub_100026824();
    v23 = sub_100027304();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];
    if (v24)
    {
      v45 = v0[17];
      v47 = v0[15];
      v29 = v0[8];
      v28 = v0[9];
      v50 = v6;
      v30 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_100005F78(v29, v28, v51);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v32 = v0[2];
      v31 = v0[3];
      v33 = v0[4];
      v34 = sub_100027484();
      v36 = sub_100005F78(v34, v35, v51);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s failed load details %s, using fallback", v30, 0x16u);
      swift_arrayDestroy();

      v6 = v50;

      (*(v26 + 8))(v45, v47);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v37 = swift_task_alloc();
    v0[48] = v37;
    *v37 = v0;
    v37[1] = sub_10000F4F0;
    v38 = v0[10];
    v39 = v0[11];
    v40 = v0[7];

    return sub_10000FF34(v40, v38, v7, v6);
  }
}

uint64_t sub_10000F4F0()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v6 = *v0;

  v3 = *(v1 + 256);
  v4 = *(v1 + 248);

  return _swift_task_switch(sub_10000F610, v4, v3);
}

uint64_t sub_10000F610()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[30];

  sub_100010CDC(v1, v2);
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[17];
  v17 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000F724(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  v5 = sub_100026834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - v12;
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  sub_100026894();

  v16 = sub_100026824();
  v17 = sub_1000272F4();

  v18 = os_log_type_enabled(v16, v17);
  v50 = v10;
  v51 = v6;
  v49 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = v5;
    v21 = swift_slowAlloc();
    v53 = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_100005F78(a2, a3, &v53);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - Finished background loading details ignoring cache!", v19, 0xCu);
    sub_100006044(v21);
    v5 = v20;

    v22 = v51;

    v23 = *(v22 + 8);
    v24 = v15;
    v25 = v20;
  }

  else
  {

    v23 = *(v6 + 8);
    v24 = v15;
    v25 = v5;
  }

  v52 = v23;
  v23(v24, v25);
  sub_100026894();

  v26 = sub_100026824();
  v27 = sub_100027304();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = v49;
    *(v28 + 4) = sub_100005F78(v49, a3, &v53);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_100005F78(0xD000000000000019, 0x8000000100029AC0, &v53);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s %s - Caching message details...", v28, 0x16u);
    swift_arrayDestroy();

    v52(v13, v5);
  }

  else
  {

    v52(v13, v5);
    v29 = v49;
  }

  v30 = v50;
  v31 = v46[10];
  sub_100010BC8(v46 + 6, v46[9]);
  v32 = v48;
  result = sub_100026BF4();
  if (v32)
  {
    sub_100026894();

    swift_errorRetain();
    v34 = sub_100026824();
    v35 = sub_100027314();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v29;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = 0;
      v39 = v38;
      v40 = swift_slowAlloc();
      v47 = v5;
      v41 = v40;
      v53 = v40;
      *v37 = 136315394;
      *(v37 + 4) = sub_100005F78(v36, a3, &v53);
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v42;
      *v39 = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - Error saving message details to cache! %@", v37, 0x16u);
      sub_100006B20(v39, &qword_100039838, &unk_100028360);

      sub_100006044(v41);

      v43 = v30;
      v44 = v47;
    }

    else
    {

      v43 = v30;
      v44 = v5;
    }

    return (v52)(v43, v44);
  }

  return result;
}

uint64_t sub_10000FC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000061E4(a3, v24 - v10, &qword_1000391C8, &qword_100028010);
  v12 = sub_1000272A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006B20(v11, &qword_1000391C8, &qword_100028010);
  }

  else
  {
    sub_100027294();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100027244();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_100027184() + 32;
      sub_100026B04();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100006B20(a3, &qword_1000391C8, &qword_100028010);

      return v22;
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

  sub_100006B20(a3, &qword_1000391C8, &qword_100028010);
  sub_100026B04();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_100026B44();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v9 = *(*(sub_10000274C(&qword_100039708, &unk_100028280) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v10 = sub_1000269B4();
  v5[36] = v10;
  v11 = *(v10 - 8);
  v5[37] = v11;
  v12 = *(v11 + 64) + 15;
  v5[38] = swift_task_alloc();
  v13 = sub_100026834();
  v5[39] = v13;
  v14 = *(v13 - 8);
  v5[40] = v14;
  v15 = *(v14 + 64) + 15;
  v5[41] = swift_task_alloc();
  v16 = sub_100026B04();
  v5[42] = v16;
  v17 = *(v16 - 8);
  v5[43] = v17;
  v18 = *(v17 + 64) + 15;
  v5[44] = swift_task_alloc();
  sub_100027274();
  v5[45] = sub_100027264();
  v20 = sub_100027244();
  v5[46] = v20;
  v5[47] = v19;

  return _swift_task_switch(sub_100010194, v20, v19);
}

uint64_t sub_100010194()
{
  v58 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[28];
  v5 = v0[26];
  v6 = *(v2 + 16);
  v0[48] = v6;
  v0[49] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = v0[44];
  if (v4 >> 60 == 15)
  {
    v8 = sub_100026A04();
    if (v9 >> 60 == 15)
    {
      v10 = v0[29];
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_100039080 != -1)
        {
          swift_once();
        }

        v11 = qword_10003A748;
        if (qword_10003A748 >> 60 != 15)
        {
          v12 = qword_10003A740;
          v13 = v0[44];
          v14 = v0[41];
          sub_100010CC8(qword_10003A740, qword_10003A748);
          sub_100003B24(v12, v11);
          sub_100026A14();
          sub_100026894();
          v15 = sub_100026824();
          v16 = sub_1000272F4();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = v0[44];
            v18 = v0[40];
            v55 = v0[39];
            v56 = v0[41];
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v57 = v20;
            *v19 = 136315138;
            swift_beginAccess();
            v21 = sub_100026AF4();
            v23 = v22;
            swift_endAccess();
            v24 = sub_100005F78(v21, v23, &v57);

            *(v19 + 4) = v24;
            _os_log_impl(&_mh_execute_header, v15, v16, "%s - using fallback icon (2)", v19, 0xCu);
            sub_100006044(v20);

            sub_100010CDC(v12, v11);
            (*(v18 + 8))(v56, v55);
          }

          else
          {
            v26 = v0[40];
            v25 = v0[41];
            v27 = v0[39];
            sub_100010CDC(v12, v11);

            (*(v26 + 8))(v25, v27);
          }
        }
      }
    }

    else
    {
      sub_100010CDC(v8, v9);
    }
  }

  else
  {
    sub_100003B24(v0[27], v0[28]);
    sub_100026A14();
  }

  v28 = v0[44];
  v29 = v0[35];
  v30 = v0[30];
  v31 = v0[31];
  (*(v0[37] + 104))(v0[38], enum case for MessageDetails.EventStatus.purged(_:), v0[36]);
  swift_beginAccess();
  sub_100026AA4();
  swift_endAccess();
  swift_beginAccess();
  sub_100026A74();
  swift_endAccess();
  if ((*(v31 + 48))(v29, 1, v30) != 1)
  {
    v36 = v0[45];
    v37 = v0[35];

    sub_100006B20(v37, &qword_100039708, &unk_100028280);
    goto LABEL_16;
  }

  v32 = v0[44];
  sub_100006B20(v0[35], &qword_100039708, &unk_100028280);
  swift_beginAccess();
  v33 = sub_100026AC4();
  if (v34)
  {
    v35 = v0[45];
    swift_endAccess();

LABEL_16:
    v38 = v0[49];
    v40 = v0[43];
    v39 = v0[44];
    v41 = v0[42];
    v42 = v0[38];
    v44 = v0[34];
    v43 = v0[35];
    v46 = v0[32];
    v45 = v0[33];
    (v0[48])(v0[25], v39, v41);
    (*(v40 + 8))(v39, v41);

    v47 = v0[1];

    return v47();
  }

  v49 = v33;
  swift_endAccess();
  sub_100010F10();
  v50 = sub_100026964();
  v51 = sub_100026954();
  v0[5] = v50;
  v0[6] = &protocol witness table for ContactFetcher;
  v0[2] = v51;
  v52 = async function pointer to static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)[1];
  v53 = swift_task_alloc();
  v0[50] = v53;
  *v53 = v0;
  v53[1] = sub_1000106B4;
  v54 = v0[34];

  return static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)(v54, v49, 0, 1, v0 + 2, 1);
}

uint64_t sub_1000106B4()
{
  v2 = *v1;
  v3 = (*v1)[50];
  v4 = *v1;

  if (v0)
  {

    v5 = v2[46];
    v6 = v2[47];
    v7 = sub_1000109EC;
  }

  else
  {
    sub_100006044(v2 + 2);
    v5 = v2[46];
    v6 = v2[47];
    v7 = sub_1000107E0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000107E0()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);

  v8 = *(v6 + 56);
  v8(v3, 0, 1, v7);
  (*(v6 + 32))(v5, v3, v7);
  (*(v6 + 16))(v4, v5, v7);
  v8(v4, 0, 1, v7);
  swift_beginAccess();
  sub_100026A84();
  swift_endAccess();
  v9 = sub_100026B14();
  sub_100027344();

  swift_beginAccess();
  sub_100026AD4();
  swift_endAccess();
  (*(v6 + 8))(v5, v7);
  v10 = *(v0 + 392);
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  v13 = *(v0 + 336);
  v14 = *(v0 + 304);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  (*(v0 + 384))(*(v0 + 200), v11, v13);
  (*(v12 + 8))(v11, v13);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000109EC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  sub_100006044((v0 + 16));
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_100006B20(v2, &qword_100039708, &unk_100028280);
  v5 = *(v0 + 392);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = *(v0 + 304);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 384))(*(v0 + 200), v6, v8);
  (*(v7 + 8))(v6, v8);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100010B2C()
{
  sub_100010F5C((v0 + 2));
  sub_100010F5C((v0 + 4));
  sub_100006044(v0 + 6);
  sub_100006044(v0 + 11);
  v1 = v0[16];

  return swift_deallocClassInstance();
}

void *sub_100010BC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010C0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000274C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100010C74()
{
  result = qword_100039840;
  if (!qword_100039840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039840);
  }

  return result;
}

uint64_t sub_100010CC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003B24(a1, a2);
  }

  return a1;
}

uint64_t sub_100010CDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003600(a1, a2);
  }

  return a1;
}

uint64_t sub_100010CF0()
{
  v1 = sub_100026734();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100010DD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100026734() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003730;

  return sub_10000CCA8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_100010F10()
{
  result = qword_100039850;
  if (!qword_100039850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageDetailsLoaderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageDetailsLoaderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000110F8()
{
  result = qword_100039858;
  if (!qword_100039858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039858);
  }

  return result;
}

uint64_t sub_10001114C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v3 = sub_10000274C(&qword_100039A50, &qword_1000284D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_100026B04();
  v31 = *(v7 - 8);
  v8 = v31;
  v9 = *(v31 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = *(v8 + 16);
  v14(&v31 - v12, v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details, v7);
  sub_10000274C(&qword_100039B60, &qword_100028640);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100028470;
  *(v15 + 32) = sub_1000271B4();
  *(v15 + 40) = v16;
  *(v15 + 48) = 0;
  *(v15 + 56) = sub_1000271B4();
  *(v15 + 64) = v17;
  *(v15 + 72) = 0;
  *(v15 + 80) = sub_1000271B4();
  *(v15 + 88) = v18;
  *(v15 + 96) = 0;
  *(v15 + 104) = sub_1000271B4();
  *(v15 + 112) = v19;
  *(v15 + 120) = 2;
  *(v15 + 128) = sub_1000271B4();
  *(v15 + 136) = v20;
  *(v15 + 144) = 1;
  *v6 = sub_100026D24();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v21 = *(sub_10000274C(&qword_100039B68, &qword_100028648) + 44);
  sub_10001505C(v32, v34);
  v32 = v13;
  v14(v11, v13, v7);
  v22 = v31;
  v23 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v24 = swift_allocObject();
  sub_10001518C(v34, v24 + 16);
  *(v24 + 56) = v15;
  (*(v22 + 32))(v24 + v23, v11, v7);

  sub_10000274C(&qword_100039A78, &qword_1000284F8);
  sub_100014640();
  sub_100027024();

  if (qword_100039098 != -1)
  {
    swift_once();
  }

  sub_100027074();
  sub_100026C64();
  v25 = v33;
  sub_100010C0C(v6, v33, &qword_100039A50, &qword_1000284D8);
  v26 = (v25 + *(sub_10000274C(&qword_100039A10, &qword_1000284B8) + 36));
  v27 = v34[5];
  v26[4] = v34[4];
  v26[5] = v27;
  v26[6] = v34[6];
  v28 = v34[1];
  *v26 = v34[0];
  v26[1] = v28;
  v29 = v34[3];
  v26[2] = v34[2];
  v26[3] = v29;
  return (*(v22 + 8))(v32, v7);
}

uint64_t sub_100011604(void *a1, int64_t *a2, uint64_t a3)
{
  v6 = sub_100026B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100010BC8(a1, a1[3]);
  (*(v7 + 16))(v9, a3, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  v13 = *v10;
  sub_100017034(a2, sub_100015294, v12);
}

uint64_t sub_10001175C(uint64_t result, uint64_t a2)
{
  if (result <= 3)
  {
    return sub_100025F70(a2, qword_100028660[result]);
  }

  return result;
}

uint64_t sub_100011780@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v55 = sub_10000274C(&qword_100039A98, &qword_100028508);
  v1 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v3 = &v53 - v2;
  v4 = sub_1000271B4();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v9 = sub_100026F64();
  v10 = [v7 tertiarySystemFillColor];
  v56 = sub_100026F64();
  v11 = sub_100027084();
  v13 = v12;
  v14 = [v7 tertiaryLabelColor];
  v15 = sub_100026F64();
  v54 = sub_100026D24();
  v61 = 0;
  sub_100021304(v4, v6, v9, v11, v13, 0x2E6E6F7276656863, 0xEC0000006E776F64, v15, v59);
  memcpy(v64, v59, sizeof(v64));
  memcpy(v65, v59, 0x270uLL);
  sub_1000061E4(v64, v58, &qword_100039B70, &unk_100028650);
  sub_100006B20(v65, &qword_100039B70, &unk_100028650);

  memcpy(&v60[7], v64, 0x270uLL);
  v16 = v61;
  v17 = sub_100026E14();
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  sub_100026C24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v62 = 0;
  v26 = sub_100026E24();
  sub_100026C24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v58[0] = 0;
  sub_100027074();
  sub_100026C34();
  *&v63[7] = v59[0];
  *&v63[23] = v59[1];
  *&v63[39] = v59[2];
  v35 = sub_100026E04();

  v36 = &v3[*(v55 + 36)];
  v37 = *(sub_100026C54() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = sub_100026D34();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #10.0 }

  *v36 = _Q0;
  *&v36[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
  *v3 = v54;
  *(v3 + 1) = 0;
  v3[16] = v16;
  memcpy(v3 + 17, v60, 0x277uLL);
  v3[648] = v17;
  *(v3 + 82) = v19;
  *(v3 + 83) = v21;
  *(v3 + 84) = v23;
  *(v3 + 85) = v25;
  v3[688] = 0;
  v3[696] = v26;
  *(v3 + 88) = v28;
  *(v3 + 89) = v30;
  *(v3 + 90) = v32;
  *(v3 + 91) = v34;
  v3[736] = 0;
  v45 = *&v63[16];
  *(v3 + 737) = *v63;
  *(v3 + 753) = v45;
  *(v3 + 769) = *&v63[32];
  *(v3 + 98) = *&v63[47];
  *(v3 + 99) = v56;
  v3[800] = v35;
  v46 = sub_10000274C(&qword_100039A78, &qword_1000284F8);
  v47 = v57;
  v48 = (v57 + *(v46 + 36));
  v49 = *(sub_10000274C(&qword_100039B18, &qword_100028CD0) + 28);
  v50 = enum case for Image.Scale.small(_:);
  v51 = sub_100027004();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = swift_getKeyPath();
  return sub_100010C0C(v3, v47, &qword_100039A98, &qword_100028508);
}

uint64_t sub_100011C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v25 = sub_10000274C(&qword_100039A68, &qword_1000284E8);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v6 = &v23 - v5;
  v24 = sub_10000274C(&qword_100039A70, &qword_1000284F0);
  v7 = *(*(v24 - 8) + 64);
  v8 = __chkstk_darwin(v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v27 = a1;
  sub_10000274C(&qword_100039A78, &qword_1000284F8);
  sub_10000274C(&qword_100039A80, &qword_100028500);
  sub_100014640();
  sub_100014A38(&qword_100039B20, &qword_100039A80, &qword_100028500);
  sub_100026EC4();
  if (qword_100039098 != -1)
  {
    swift_once();
  }

  sub_100027054();
  sub_100026C64();
  (*(v3 + 32))(v13, v6, v25);
  v16 = &v13[*(v24 + 36)];
  v17 = v33;
  *(v16 + 4) = v32;
  *(v16 + 5) = v17;
  *(v16 + 6) = v34;
  v18 = v29;
  *v16 = v28;
  *(v16 + 1) = v18;
  v19 = v31;
  *(v16 + 2) = v30;
  *(v16 + 3) = v19;
  sub_100010C0C(v13, v15, &qword_100039A70, &qword_1000284F0);
  sub_1000061E4(v15, v10, &qword_100039A70, &qword_1000284F0);
  v20 = v26;
  *v26 = 0;
  *(v20 + 8) = 1;
  v21 = sub_10000274C(&qword_100039B28, &qword_100028550);
  sub_1000061E4(v10, v20 + *(v21 + 48), &qword_100039A70, &qword_1000284F0);
  sub_100006B20(v15, &qword_100039A70, &qword_1000284F0);
  return sub_100006B20(v10, &qword_100039A70, &qword_1000284F0);
}

uint64_t sub_100012024@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v60 = a1;
  v3 = sub_100026B04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v6;
  v8 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000274C(&qword_100039B48, &qword_100028628);
  v66 = *(v9 - 8);
  v10 = v66[8];
  v11 = __chkstk_darwin(v9);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v57 = &v50 - v14;
  v15 = __chkstk_darwin(v13);
  v56 = &v50 - v16;
  v17 = __chkstk_darwin(v15);
  v55 = &v50 - v18;
  v19 = __chkstk_darwin(v17);
  v64 = &v50 - v20;
  v21 = __chkstk_darwin(v19);
  v63 = &v50 - v22;
  v23 = __chkstk_darwin(v21);
  v67 = &v50 - v24;
  __chkstk_darwin(v23);
  v65 = &v50 - v25;
  v26 = *(v4 + 16);
  v61 = v4 + 16;
  v62 = v26;
  v51 = v3;
  v26(v8, a1, v3);
  v54 = *(v4 + 80);
  v27 = (v54 + 16) & ~v54;
  v52 = v7;
  v28 = swift_allocObject();
  v29 = *(v4 + 32);
  v29(v28 + v27, v8, v3);
  v53 = v29;
  sub_100027024();
  v30 = v8;
  v31 = v60;
  v32 = v51;
  v62(v8, v60, v51);
  v33 = swift_allocObject();
  v29(v33 + v27, v8, v32);
  sub_100027024();
  v34 = v31;
  v35 = v62;
  v62(v8, v34, v32);
  v36 = swift_allocObject();
  v37 = v53;
  v53(v36 + v27, v30, v32);
  sub_100027024();
  v35(v30, v60, v32);
  v38 = swift_allocObject();
  v37(v38 + v27, v30, v32);
  v39 = v64;
  sub_100027024();
  v40 = v66[2];
  v41 = v55;
  v40(v55, v65, v9);
  v42 = v56;
  v40(v56, v67, v9);
  v43 = v57;
  v44 = v63;
  (v40)(v57);
  v45 = v58;
  v40(v58, v39, v9);
  v46 = v59;
  v40(v59, v41, v9);
  v47 = sub_10000274C(&qword_100039B50, &qword_100028630);
  v40(&v46[v47[12]], v42, v9);
  v40(&v46[v47[16]], v43, v9);
  v40(&v46[v47[20]], v45, v9);
  v48 = v66[1];
  v48(v64, v9);
  v48(v44, v9);
  v48(v67, v9);
  v48(v65, v9);
  v48(v45, v9);
  v48(v43, v9);
  v48(v42, v9);
  return (v48)(v41, v9);
}

uint64_t sub_1000126AC@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001271C@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001278C@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000127FC@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001286C@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v78 = sub_10000274C(&qword_100039A98, &qword_100028508);
  v1 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v3 = &v70 - v2;
  v4 = sub_1000271B4();
  v6 = v5;
  v86 = sub_100026FA4();
  v7 = [objc_opt_self() linkColor];
  v80 = sub_100026F64();
  v70 = sub_100027094();
  v79 = sub_100026D24();
  v157 = 0;
  sub_100027074();
  sub_100026C64();
  v156 = 1;
  *&v155[55] = *(&v160[6] + 8);
  *&v155[71] = *(&v160[7] + 8);
  *&v155[87] = *(&v160[8] + 8);
  *&v155[103] = *(&v160[9] + 8);
  *&v155[7] = *(&v160[3] + 8);
  *&v155[23] = *(&v160[4] + 8);
  *&v155[39] = *(&v160[5] + 8);
  v122 = v4;
  v123 = v6;
  sub_100014A80();
  v77 = v6;

  v8 = sub_100026EF4();
  v73 = v9;
  v74 = v8;
  v11 = v10;
  v75 = v12;
  KeyPath = swift_getKeyPath();
  if (qword_100039090 != -1)
  {
    swift_once();
  }

  v82 = qword_10003A750;
  v84 = swift_getKeyPath();
  v83 = v11 & 1;
  LOBYTE(v122) = v11 & 1;
  LOBYTE(v87) = 0;
  v85 = swift_getKeyPath();

  v13 = v86;

  v14 = sub_100026F94();
  v72 = v14;
  v15 = sub_100026E04();
  v16 = v15;
  v71 = v15;
  sub_100026C64();
  *&v154[55] = *(&v160[13] + 8);
  *&v154[71] = *(&v160[14] + 8);
  *&v154[87] = *(&v160[15] + 8);
  *&v154[103] = *(&v160[16] + 8);
  *&v154[7] = *(&v160[10] + 8);
  *&v154[23] = *(&v160[11] + 8);
  *&v154[39] = *(&v160[12] + 8);
  sub_100014E34(&v144);
  sub_100027074();
  sub_100026C64();
  *&v142[55] = *(&v160[20] + 8);
  *&v142[71] = *(&v160[21] + 8);
  *&v142[87] = *(&v160[22] + 8);
  *&v142[103] = *(&v160[23] + 8);
  *&v142[7] = *(&v160[17] + 8);
  *&v142[23] = *(&v160[18] + 8);
  *&v142[39] = *(&v160[19] + 8);
  v120[0] = v144;
  v120[1] = v145;
  v120[4] = v148;
  v120[5] = v149;
  v120[2] = v146;
  v120[3] = v147;
  v120[8] = v152;
  v120[6] = v150;
  v120[7] = v151;
  *&v87 = v74;
  *(&v87 + 1) = v73;
  LOBYTE(v88) = v83;
  v17 = v75;
  v18 = KeyPath;
  *(&v88 + 1) = v75;
  *&v89 = KeyPath;
  *(&v89 + 1) = 1;
  LOBYTE(v90) = 0;
  *(&v90 + 1) = v84;
  *&v91 = v82;
  *(&v91 + 1) = v85;
  *&v92 = v13;
  *(&v92 + 1) = v14;
  v93[0] = v16;
  *&v93[65] = *&v154[64];
  *&v93[81] = *&v154[80];
  *&v93[97] = *&v154[96];
  *&v93[1] = *v154;
  *&v93[17] = *&v154[16];
  *&v93[33] = *&v154[32];
  *&v93[49] = *&v154[48];
  v110 = v91;
  v111 = v92;
  v106 = v87;
  v107 = v88;
  v117 = *&v93[80];
  v118 = *&v93[96];
  v108 = v89;
  v109 = v90;
  v115 = *&v93[48];
  v116 = *&v93[64];
  v113 = *&v93[16];
  v114 = *&v93[32];
  v112 = *v93;
  v94[6] = v150;
  v94[7] = v151;
  v94[8] = v152;
  v94[2] = v146;
  v94[3] = v147;
  v94[4] = v148;
  v94[5] = v149;
  v94[0] = v144;
  v94[1] = v145;
  v102 = v150;
  v103 = v151;
  v104 = v152;
  v98 = v146;
  v99 = v147;
  v143 = 1;
  v121 = v153;
  *&v93[112] = *&v154[111];
  v119 = *&v154[111];
  v95 = v153;
  v105 = v153;
  v100 = v148;
  v101 = v149;
  v96 = v144;
  v97 = v145;
  v19 = v74;
  v20 = v73;
  sub_1000061E4(&v87, &v122, &qword_100039B38, &unk_1000289B0);
  sub_1000061E4(v94, &v122, &qword_100039B40, &qword_1000285F0);
  sub_100006B20(v120, &qword_100039B40, &qword_1000285F0);
  v139 = *&v154[64];
  v140 = *&v154[80];
  *v141 = *&v154[96];
  v135 = *v154;
  v136 = *&v154[16];
  v137 = *&v154[32];
  v122 = v19;
  v123 = v20;
  v124 = v83;
  v125 = v17;
  v126 = v18;
  v127 = 1;
  v128 = 0;
  v129 = v84;
  v130 = v82;
  v131 = v85;
  v132 = v86;
  v133 = v72;
  v134 = v71;
  *&v141[15] = *&v154[111];
  v138 = *&v154[48];
  sub_100006B20(&v122, &qword_100039B38, &unk_1000289B0);

  v21 = v157;
  LODWORD(v85) = sub_100026E14();
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  sub_100026C24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v158 = 0;
  LODWORD(v84) = sub_100026E24();
  sub_100026C24();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v159 = 0;
  sub_100027074();
  sub_100026C34();
  *(v160 + 7) = *(&v160[24] + 8);
  *(&v160[1] + 7) = *(&v160[25] + 8);
  *(&v160[2] + 7) = *(&v160[26] + 8);
  v83 = sub_100026E04();

  v38 = &v3[*(v78 + 36)];
  v39 = *(sub_100026C54() + 20);
  v40 = enum case for RoundedCornerStyle.continuous(_:);
  v41 = sub_100026D34();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #10.0 }

  *v38 = _Q0;
  *&v38[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
  *(v3 + 97) = *&v155[64];
  *(v3 + 113) = *&v155[80];
  *(v3 + 129) = *&v155[96];
  *(v3 + 33) = *v155;
  *(v3 + 49) = *&v155[16];
  *(v3 + 65) = *&v155[32];
  *(v3 + 81) = *&v155[48];
  v47 = v116;
  v48 = v118;
  *(v3 + 328) = v117;
  *(v3 + 344) = v48;
  v49 = v113;
  *(v3 + 248) = v112;
  v50 = v114;
  v51 = v115;
  *(v3 + 264) = v49;
  *(v3 + 280) = v50;
  *v3 = v79;
  *(v3 + 1) = 0;
  v3[16] = v21;
  *(v3 + 3) = 0;
  v3[32] = 1;
  *(v3 + 18) = *&v155[111];
  *(v3 + 45) = v119;
  *(v3 + 296) = v51;
  *(v3 + 312) = v47;
  v52 = v109;
  *(v3 + 184) = v108;
  *(v3 + 200) = v52;
  v53 = v111;
  *(v3 + 216) = v110;
  *(v3 + 232) = v53;
  v54 = v107;
  *(v3 + 152) = v106;
  *(v3 + 168) = v54;
  v55 = v103;
  *(v3 + 29) = v102;
  *(v3 + 30) = v55;
  *(v3 + 31) = v104;
  *(v3 + 64) = v105;
  v56 = v99;
  *(v3 + 25) = v98;
  *(v3 + 26) = v56;
  v57 = v101;
  *(v3 + 27) = v100;
  *(v3 + 28) = v57;
  v58 = v97;
  *(v3 + 23) = v96;
  *(v3 + 24) = v58;
  *(v3 + 65) = 0;
  v3[528] = 1;
  v59 = *&v142[80];
  *(v3 + 593) = *&v142[64];
  *(v3 + 609) = v59;
  *(v3 + 625) = *&v142[96];
  *(v3 + 80) = *&v142[111];
  v60 = *&v142[16];
  *(v3 + 529) = *v142;
  *(v3 + 545) = v60;
  v61 = *&v142[48];
  *(v3 + 561) = *&v142[32];
  *(v3 + 577) = v61;
  v3[648] = v85;
  *(v3 + 82) = v23;
  *(v3 + 83) = v25;
  *(v3 + 84) = v27;
  *(v3 + 85) = v29;
  v3[688] = 0;
  v3[696] = v84;
  *(v3 + 88) = v31;
  *(v3 + 89) = v33;
  *(v3 + 90) = v35;
  *(v3 + 91) = v37;
  v3[736] = 0;
  v62 = v160[1];
  *(v3 + 737) = v160[0];
  *(v3 + 753) = v62;
  *(v3 + 769) = v160[2];
  *(v3 + 98) = *(&v160[2] + 15);
  *(v3 + 99) = v80;
  v3[800] = v83;
  v63 = sub_10000274C(&qword_100039A78, &qword_1000284F8);
  v64 = v81;
  v65 = (v81 + *(v63 + 36));
  v66 = *(sub_10000274C(&qword_100039B18, &qword_100028CD0) + 28);
  v67 = enum case for Image.Scale.small(_:);
  v68 = sub_100027004();
  (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
  *v65 = swift_getKeyPath();
  return sub_100010C0C(v3, v64, &qword_100039A98, &qword_100028508);
}

uint64_t sub_100013288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1000390B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10003A780;
  v55 = qword_10003A778;

  v54 = v6;

  v52 = a2;

  v53 = sub_100026FA4();
  [a1 size];
  v8 = v7;
  [a1 size];
  v10 = v9;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  if (byte_100039D78)
  {
    v11 = 48.0;
  }

  else
  {
    v11 = 60.0;
  }

  v12 = 90.0;
  if (byte_100039D78)
  {
    v12 = 72.0;
  }

  if (v8 == v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = objc_opt_self();
  v15 = [v14 mainScreen];
  [v15 scale];
  v17 = v16;

  v18 = v11 * v17;
  v19 = [v14 mainScreen];
  [v19 scale];
  v21 = v20;

  [a1 size];
  v93.origin.x = 0.0;
  v93.origin.y = 0.0;
  v93.size.width = v18;
  v93.size.height = v13 * v21;
  v92 = AVMakeRectWithAspectRatioInsideRect(v91, v93);
  width = v92.size.width;
  height = v92.size.height;
  v24 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v24 setScale:1.0];
  v25 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v24 format:{width, height}];
  v26 = swift_allocObject();
  *(v26 + 2) = a1;
  v26[3] = width;
  v26[4] = height;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100014F50;
  *(v27 + 24) = v26;
  *&v71 = sub_100014F6C;
  *(&v71 + 1) = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v70 = sub_100014AD4;
  *(&v70 + 1) = &unk_1000357B0;
  v28 = _Block_copy(&aBlock);
  v29 = a1;

  v30 = [v25 imageWithActions:v28];

  _Block_release(v28);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    sub_100027074();
    sub_100026C34();
    v50 = v87;
    v51 = v85;
    v48 = v90;
    v49 = v89;
    v58 = v86;
    v57 = v88;
    v47 = sub_1000271B4();
    v33 = v32;
    v34 = sub_1000269F4();
    v36 = v35;
    v37 = sub_100026D54();
    v38 = sub_100026F94();
    v39 = sub_100026E04();
    *&v59 = v30;
    *(&v59 + 1) = 0x73616C6772756F68;
    *&v60 = 0xE900000000000073;
    *(&v60 + 1) = v53;
    *&v61 = v55;
    *(&v61 + 1) = v54;
    *&v62 = sub_100014F10;
    *(&v62 + 1) = v52;
    v63 = v8 == v10;
    aBlock = v59;
    LOBYTE(v73) = v8 == v10;
    v72 = v62;
    v71 = v61;
    v70 = v60;
    v64 = v37;
    LOBYTE(v65) = 0;
    DWORD1(v65) = *&v56[3];
    *(&v65 + 1) = *v56;
    *(&v65 + 1) = v47;
    *&v66 = v33;
    *(&v66 + 1) = v34;
    *&v67 = v36;
    *(&v67 + 1) = v38;
    v68 = v39;
    v40 = v59;
    v41 = v60;
    v42 = v62;
    v43 = v73;
    *(a3 + 32) = v61;
    *(a3 + 48) = v42;
    *a3 = v40;
    *(a3 + 16) = v41;
    *(a3 + 64) = v43;
    *(a3 + 72) = 0;
    *(a3 + 80) = 1;
    *(a3 + 88) = v51;
    *(a3 + 96) = v58;
    *(a3 + 104) = v50;
    *(a3 + 112) = v57;
    *(a3 + 120) = v49;
    *(a3 + 128) = v48;
    v44 = v65;
    *(a3 + 136) = v64;
    v45 = v66;
    v46 = v67;
    *(a3 + 200) = v68;
    *(a3 + 184) = v46;
    *(a3 + 168) = v45;
    *(a3 + 152) = v44;
    v74[0] = v37;
    v74[1] = 0;
    v75 = 0;
    *&v76[3] = *&v56[3];
    *v76 = *v56;
    v77 = v47;
    v78 = v33;
    v79 = v34;
    v80 = v36;
    v81 = v38;
    v82 = v39;
    sub_100014FAC(&v59, v83);
    sub_1000061E4(&v64, v83, &qword_100039B58, &qword_100028638);
    sub_100006B20(v74, &qword_100039B58, &qword_100028638);
    v83[0] = v30;
    v83[1] = 0x73616C6772756F68;
    v83[2] = 0xE900000000000073;
    v83[3] = v53;
    v83[4] = v55;
    v83[5] = v54;
    v83[6] = sub_100014F10;
    v83[7] = v52;
    v84 = v8 == v10;
    return sub_100015008(v83);
  }

  return result;
}

uint64_t sub_100013870(uint64_t a1)
{
  v2 = sub_1000268B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100007818();
  if ((result & 1) == 0)
  {
    sub_1000268E4();
    sub_1000268D4();
    (*(v3 + 104))(v6, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v2);
    sub_1000268C4();

    (*(v3 + 8))(v6, v2);
    return sub_1000257E4(a1 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details);
  }

  return result;
}

uint64_t sub_1000139A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v37 = a4;
  v6 = sub_10000274C(&qword_100039A08, &qword_1000284B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v33 - v8;
  v36 = sub_10000274C(&qword_100039A10, &qword_1000284B8);
  v10 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v12 = v33 - v11;
  v13 = sub_10000274C(&qword_100039A18, &qword_1000284C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v33 - v15;
  v35 = sub_10000274C(&qword_100039A20, &qword_1000284C8);
  v17 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v19 = v33 - v18;
  v20 = sub_10000274C(&qword_100039A28, &qword_1000284D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v33 - v22;
  if (a1)
  {
    v33[1] = v6;
    if (sub_100007818())
    {
      v24 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
      *v19 = sub_100026D24();
      *(v19 + 1) = 0;
      v19[16] = 0;
      v25 = sub_10000274C(&qword_100039A60, &qword_1000284E0);
      sub_100011C38(a2 + v24, &v19[*(v25 + 44)]);
      v26 = &qword_100039A20;
      v27 = &qword_1000284C8;
      sub_1000061E4(v19, v16, &qword_100039A20, &qword_1000284C8);
      swift_storeEnumTagMultiPayload();
      sub_100014A38(&qword_100039A38, &qword_100039A20, &qword_1000284C8);
      sub_10001452C();
      sub_100026D94();
      v28 = v19;
    }

    else
    {
      sub_10001114C(v34, v12);
      v26 = &qword_100039A10;
      v27 = &qword_1000284B8;
      sub_1000061E4(v12, v16, &qword_100039A10, &qword_1000284B8);
      swift_storeEnumTagMultiPayload();
      sub_100014A38(&qword_100039A38, &qword_100039A20, &qword_1000284C8);
      sub_10001452C();
      sub_100026D94();
      v28 = v12;
    }

    sub_100006B20(v28, v26, v27);
    sub_1000061E4(v23, v9, &qword_100039A28, &qword_1000284D0);
    swift_storeEnumTagMultiPayload();
    sub_10001442C();
    sub_1000145E4();
    sub_100026D94();
    return sub_100006B20(v23, &qword_100039A28, &qword_1000284D0);
  }

  else
  {
    sub_100009C00(v38);
    v29 = v39;
    v30 = v38[1];
    v31 = v38[2];
    *v9 = v38[0];
    *(v9 + 1) = v30;
    *(v9 + 2) = v31;
    *(v9 + 6) = v29;
    swift_storeEnumTagMultiPayload();
    sub_10001442C();
    sub_1000145E4();
    return sub_100026D94();
  }
}

uint64_t sub_100013DE0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_1000268B4();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000269B4();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_10000274C(&qword_100039708, &unk_100028280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  v18 = sub_100026B44();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v38 = a1;
  sub_100026A74();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_100006B20(v17, &qword_100039708, &unk_100028280);
  }

  (*(v19 + 32))(v22, v17, v18);
  v25 = sub_100026B24();
  if (!v25)
  {
    return (*(v19 + 8))(v22, v18);
  }

  v26 = v25;
  v27 = [v25 isParent];

  result = (*(v19 + 8))(v22, v18);
  if (v27)
  {
    result = sub_100026AE4();
    if ((result & 1) == 0)
    {
      sub_100026A94();
      v28 = v37;
      (*(v37 + 104))(v11, enum case for MessageDetails.EventStatus.purged(_:), v7);
      sub_1000143D4();
      sub_100027214();
      sub_100027214();
      if (v42 == v40 && v43 == v41)
      {
        v29 = *(v28 + 8);
        v29(v11, v7);
        v29(v13, v7);
      }

      else
      {
        v30 = sub_100027474();
        v31 = *(v28 + 8);
        v31(v11, v7);
        v31(v13, v7);

        if ((v30 & 1) == 0)
        {
          return result;
        }
      }

      result = sub_100007818();
      if ((result & 1) == 0)
      {
        sub_1000268E4();
        sub_1000268D4();
        v33 = v35;
        v32 = v36;
        (*(v35 + 104))(v6, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v36);
        sub_1000268C4();

        (*(v33 + 8))(v6, v32);
        return sub_1000257E4(v38 + v23);
      }
    }
  }

  return result;
}

uint64_t sub_100014280()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v2 = sub_100026B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScreenTimeBubble()
{
  result = qword_100039888;
  if (!qword_100039888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000143D4()
{
  result = qword_100039748;
  if (!qword_100039748)
  {
    sub_1000269B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039748);
  }

  return result;
}

unint64_t sub_10001442C()
{
  result = qword_100039A30;
  if (!qword_100039A30)
  {
    sub_1000144E4(&qword_100039A28, &qword_1000284D0);
    sub_100014A38(&qword_100039A38, &qword_100039A20, &qword_1000284C8);
    sub_10001452C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A30);
  }

  return result;
}

uint64_t sub_1000144E4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10001452C()
{
  result = qword_100039A40;
  if (!qword_100039A40)
  {
    sub_1000144E4(&qword_100039A10, &qword_1000284B8);
    sub_100014A38(&qword_100039A48, &qword_100039A50, &qword_1000284D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A40);
  }

  return result;
}

unint64_t sub_1000145E4()
{
  result = qword_100039A58;
  if (!qword_100039A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A58);
  }

  return result;
}

unint64_t sub_100014640()
{
  result = qword_100039A88;
  if (!qword_100039A88)
  {
    sub_1000144E4(&qword_100039A78, &qword_1000284F8);
    sub_1000146F8();
    sub_100014A38(&qword_100039B10, &qword_100039B18, &qword_100028CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A88);
  }

  return result;
}

unint64_t sub_1000146F8()
{
  result = qword_100039A90;
  if (!qword_100039A90)
  {
    sub_1000144E4(&qword_100039A98, &qword_100028508);
    sub_1000147B0();
    sub_100014A38(&qword_100039B00, &qword_100039B08, &unk_100028540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A90);
  }

  return result;
}

unint64_t sub_1000147B0()
{
  result = qword_100039AA0;
  if (!qword_100039AA0)
  {
    sub_1000144E4(&qword_100039AA8, &qword_100028510);
    sub_100014868();
    sub_100014A38(&qword_100039AF0, &qword_100039AF8, &qword_100028D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AA0);
  }

  return result;
}

unint64_t sub_100014868()
{
  result = qword_100039AB0;
  if (!qword_100039AB0)
  {
    sub_1000144E4(&qword_100039AB8, &qword_100028518);
    sub_1000148F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AB0);
  }

  return result;
}

unint64_t sub_1000148F4()
{
  result = qword_100039AC0;
  if (!qword_100039AC0)
  {
    sub_1000144E4(&qword_100039AC8, &qword_100028520);
    sub_100014980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AC0);
  }

  return result;
}

unint64_t sub_100014980()
{
  result = qword_100039AD0;
  if (!qword_100039AD0)
  {
    sub_1000144E4(&qword_100039AD8, &qword_100028528);
    sub_100014A38(&qword_100039AE0, &qword_100039AE8, &unk_100028530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AD0);
  }

  return result;
}

uint64_t sub_100014A38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000144E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100014A80()
{
  result = qword_100039B30;
  if (!qword_100039B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039B30);
  }

  return result;
}

void sub_100014AD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_100014B44(uint64_t a1)
{
  v2 = sub_100027004();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100026C84();
}

uint64_t sub_100014C0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100026CF4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100014C40@<X0>(uint64_t a1@<X8>)
{
  result = sub_100026CF4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100014C74(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100026D04();
}

uint64_t sub_100014CA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100026D04();
}

uint64_t sub_100014CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026CD4();
  *a1 = result;
  return result;
}

uint64_t sub_100014D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026CD4();
  *a1 = result;
  return result;
}

uint64_t sub_100014D2C(uint64_t *a1)
{
  v1 = *a1;

  return sub_100026CE4();
}

uint64_t sub_100014D58(uint64_t *a1)
{
  v1 = *a1;

  return sub_100026CE4();
}

uint64_t sub_100014D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026C94();
  *a1 = result;
  return result;
}

uint64_t sub_100014DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026C94();
  *a1 = result;
  return result;
}

uint64_t sub_100014DDC(uint64_t *a1)
{
  v1 = *a1;

  return sub_100026CA4();
}

uint64_t sub_100014E08(uint64_t *a1)
{
  v1 = *a1;

  return sub_100026CA4();
}

double sub_100014E34(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100014EA0(uint64_t a1)
{
  v3 = *(sub_100026B04() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100025F70(v4, a1);
}

uint64_t sub_100014F18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014F6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100014F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001505C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000150C0()
{
  v1 = sub_100026B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  sub_100006044((v0 + 16));
  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001518C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000151A4()
{
  v1 = *(sub_100026B04() - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_100011604((v0 + 16), v2, v3);
}

uint64_t sub_10001520C()
{
  v1 = sub_100026B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100015294(uint64_t a1)
{
  v3 = *(sub_100026B04() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001175C(a1, v4);
}

uint64_t sub_100015314(void *a1)
{
  v2 = v1;
  v4 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31[-1] - v6;
  v8 = sub_100026904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100019050(0, &qword_100039CC8, BMScreenTimeRequestEvent_ptr);
  v34 = &protocol witness table for BMScreenTimeRequestEvent;
  v32[0] = a1;
  v13 = *sub_100010BC8(v32, v33);
  v14 = a1;
  sub_100027354();
  sub_100018EAC(&qword_100039CD0, &type metadata accessor for StatusType);
  sub_100027214();
  sub_100027214();
  if (v31[0] == v31[6] && v31[1] == v31[7])
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v15 = sub_100027474();
    (*(v9 + 8))(v12, v8);

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v16 = v2 + qword_100039370;
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  v19 = *sub_100010BC8(v32, v33);

  if (v18 == sub_100027364() && v17 == v20)
  {
  }

  else
  {
    v21 = sub_100027474();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_100018EF4(v16, v31);
  Strong = swift_unknownObjectWeakLoadStrong();
  v23 = v31[5];
  sub_100007590(v31);
  if (Strong)
  {
    v24 = sub_1000272A4();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = Strong;
    v25[5] = v23;
    sub_100003824(0, 0, v7, &unk_1000287E0, v25);
  }

LABEL_11:
  sub_100006044(v32);
  v26 = sub_10000274C(&qword_100039CD8, &qword_1000287D8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  return sub_1000267F4();
}

uint64_t sub_1000156CC(uint64_t a1)
{
  v123 = a1;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v121 = v2;
  v122 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v117 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v110 = &v106 - v8;
  __chkstk_darwin(v7);
  v114 = &v106 - v9;
  v116 = sub_100026904();
  v112 = *(v116 - 8);
  v10 = *(v112 + 64);
  v11 = __chkstk_darwin(v116);
  v113 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v111 = &v106 - v14;
  v15 = __chkstk_darwin(v13);
  v115 = &v106 - v16;
  __chkstk_darwin(v15);
  v124 = &v106 - v17;
  v18 = sub_100026994();
  v119 = *(v18 - 1);
  v120 = v18;
  v19 = *(v119 + 64);
  __chkstk_darwin(v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10000274C(&qword_100039CA0, &qword_1000287A8);
  v22 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v24 = &v106 - v23;
  v25 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v106 - v31;
  __chkstk_darwin(v30);
  v34 = &v106 - v33;
  v35 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_1000061E4(&v1[v35], v125, &qword_100039CA8, &qword_1000288C0);
  v36 = v126;
  result = sub_100006B20(v125, &qword_100039CA8, &qword_1000288C0);
  if (v36)
  {
    return result;
  }

  v108 = v29;
  v107 = v21;
  v106 = v35;
  v109 = v1;
  sub_1000269D4();
  v39 = v119;
  v38 = v120;
  (*(v119 + 104))(v32, enum case for MessageDetails.EventSource.screenTime(_:), v120);
  (*(v39 + 56))(v32, 0, 1, v38);
  v40 = *(v118 + 48);
  sub_1000061E4(v34, v24, &qword_100039710, &unk_1000287B0);
  sub_1000061E4(v32, &v24[v40], &qword_100039710, &unk_1000287B0);
  v41 = *(v39 + 48);
  if (v41(v24, 1, v38) == 1)
  {
    sub_100006B20(v32, &qword_100039710, &unk_1000287B0);
    sub_100006B20(v34, &qword_100039710, &unk_1000287B0);
    v42 = v41(&v24[v40], 1, v38);
    v43 = v124;
    if (v42 == 1)
    {
      sub_100006B20(v24, &qword_100039710, &unk_1000287B0);
      v44 = v122;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v45 = v39;
  v46 = v108;
  sub_1000061E4(v24, v108, &qword_100039710, &unk_1000287B0);
  v47 = v41(&v24[v40], 1, v38);
  v43 = v124;
  if (v47 == 1)
  {
    sub_100006B20(v32, &qword_100039710, &unk_1000287B0);
    sub_100006B20(v34, &qword_100039710, &unk_1000287B0);
    (*(v45 + 8))(v46, v38);
LABEL_7:
    sub_100006B20(v24, &qword_100039CA0, &qword_1000287A8);
    v44 = v122;
    goto LABEL_8;
  }

  v54 = v107;
  (*(v45 + 32))(v107, &v24[v40], v38);
  sub_100018EAC(&qword_100039730, &type metadata accessor for MessageDetails.EventSource);
  v55 = sub_100027114();
  v56 = *(v45 + 8);
  v56(v54, v38);
  sub_100006B20(v32, &qword_100039710, &unk_1000287B0);
  sub_100006B20(v34, &qword_100039710, &unk_1000287B0);
  v56(v108, v38);
  sub_100006B20(v24, &qword_100039710, &unk_1000287B0);
  v44 = v122;
  if (v55)
  {
LABEL_12:
    v57 = v109;
    if (v109[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] == 1)
    {
      v59 = *&v109[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v58 = *&v109[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

      v60 = sub_100026AF4();
      v118 = v61;
      v119 = v60;
      v62 = v112;
      v63 = v43;
      v64 = v43;
      v65 = v116;
      (*(v112 + 104))(v63, enum case for StatusType.screenTimeRequest(_:), v116);
      v66 = *(v62 + 16);
      v67 = v115;
      v66(v115, v64, v65);
      v68 = [objc_opt_self() screenTimeRequestStream];
      v120 = [v68 publisher];

      v69 = sub_10000274C(&qword_100039CB0, &qword_1000287C0);
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      v123 = v69;
      v72 = swift_allocObject();
      *(v72 + qword_100039368) = 0;
      v66((v72 + qword_100039360), v67, v65);
      v110 = v59;
      v125[0] = v59;
      v125[1] = v58;
      v125[2] = v119;
      v126 = v118;
      v73 = v65;
      v128 = &off_100035928;
      v74 = v109;
      swift_unknownObjectWeakInit();
      sub_100018DDC(v125, v72 + qword_100039370);

      v117 = v74;
      sub_100026894();
      v75 = v111;
      v118 = v66;
      v119 = v62 + 16;
      v66(v111, v67, v65);

      v76 = sub_100026824();
      v77 = sub_100027304();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v125[0] = v108;
        *v78 = 136315394;
        v79 = sub_100005F78(v110, v58, v125);

        *(v78 + 4) = v79;
        *(v78 + 12) = 2080;
        sub_100018EAC(&qword_100039CC0, &type metadata accessor for StatusType);
        v80 = sub_100027464();
        v82 = v81;
        v83 = *(v62 + 8);
        v83(v75, v116);
        v84 = sub_100005F78(v80, v82, v125);

        *(v78 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v76, v77, "Created listener with %s for %s listener", v78, 0x16u);
        swift_arrayDestroy();

        v73 = v116;

        v85 = v83;
        (*(v122 + 8))(v114, v121);
      }

      else
      {

        v85 = *(v62 + 8);
        v85(v75, v73);
        (*(v44 + 8))(v114, v121);
      }

      sub_100026944();
      sub_100026924();
      v95 = v115;
      v96 = sub_100026934();

      v97 = v120;
      v98 = [v120 subscribeOn:v96];
      (v118)(v113, v95, v73);
      v99 = sub_10000274C(&qword_100039CB8, &unk_1000287C8);
      v100 = *(v99 + 48);
      v101 = *(v99 + 52);
      swift_allocObject();

      v102 = sub_100026B84();

      v85(v95, v73);
      v103 = *(v72 + qword_100039368);
      *(v72 + qword_100039368) = v102;

      v126 = v123;
      v127 = &off_1000355F8;
      v125[0] = v72;
      v85(v124, v73);
      v104 = v109;
      v105 = v106;
      swift_beginAccess();
      sub_100018E3C(v125, &v104[v105]);
      return swift_endAccess();
    }

    else
    {
      v86 = v110;
      sub_100026894();
      v87 = v57;
      v88 = sub_100026824();
      v89 = sub_100027304();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v90 = 136315394;
        v91 = &v87[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v92 = *&v87[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v93 = *(v91 + 1);

        v94 = sub_100005F78(v92, v93, v125);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_100005F78(0xD00000000000001ELL, 0x8000000100029CD0, v125);
        _os_log_impl(&_mh_execute_header, v88, v89, "%s has been deactivated prior to %s!", v90, 0x16u);
        swift_arrayDestroy();
      }

      return (*(v44 + 8))(v86, v121);
    }
  }

LABEL_8:
  v48 = v117;
  sub_100026894();
  v49 = sub_100026824();
  v50 = sub_100027314();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v121;
  if (v51)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Misconfigured screenTime details", v53, 2u);
  }

  return (*(v44 + 8))(v48, v52);
}

uint64_t sub_10001648C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScreenTimeMessageViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  *&v0[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = &off_100035860;
  swift_unknownObjectWeakAssign();
  v1 = *&v0[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader];
  *(v1 + 40) = &off_100035828;
  swift_unknownObjectWeakAssign();
  *(v1 + 24) = &off_100035838;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100016834()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController_fallbackThumbnail;
  v2 = sub_100026974();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10001689C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenTimeMessageViewController()
{
  result = qword_100039BA0;
  if (!qword_100039BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016994()
{
  result = sub_100026974();
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

uint64_t sub_100016A24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController_fallbackThumbnail;
  v4 = sub_100026974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100016A9C(uint64_t a1)
{
  v3 = sub_100026B04();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v11 = type metadata accessor for ScreenTimeMessageViewController();
  v25[3] = v11;
  v25[4] = &off_100035850;
  v25[0] = v1;
  v12 = type metadata accessor for ScreenTimeBubble();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_100016FE4(v25, v11);
  v16 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = v1;
  v22 = sub_100018770(v6, v20);
  sub_100006044(v25);
  return v22;
}

uint64_t sub_100016C88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100027274();
  v3[5] = sub_100027264();
  v5 = sub_100027244();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100016D24, v5, v4);
}

uint64_t sub_100016D24()
{
  v1 = (v0[4] + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[8] = v2;
  v4 = async function pointer to static ScreenTimeSupport.getCurrentStatusDetails(withDetails:forId:)[1];

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_100016DF4;
  v6 = v0[2];
  v7 = v0[3];

  return static ScreenTimeSupport.getCurrentStatusDetails(withDetails:forId:)(v6, v7, v3, v2);
}

uint64_t sub_100016DF4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_100016F74;
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_100016F10;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100016F10()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100016F74()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100016FE4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_100017034(int64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v7 = sub_1000268B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000268E4();
  sub_1000268D4();
  (*(v8 + 104))(v11, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v7);
  sub_1000268C4();

  (*(v8 + 8))(v11, v7);
  sub_1000268A4();
  v12 = a1[2];
  if (v12)
  {
    v30 = a2;
    v31 = v3;
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100017430(0, v12, 0);
    v13 = aBlock[0];
    v14 = a1 + 5;
    v15 = v12;
    do
    {
      v16 = *(v14 - 1);
      v17 = *v14;
      aBlock[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_100017430((v18 > 1), v19 + 1, 1);
        v13 = aBlock[0];
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v14 += 3;
      --v15;
    }

    while (v15);
    a2 = v30;
    v4 = v31;
  }

  v21.super.isa = sub_100027224().super.isa;

  if (v12)
  {
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100027404();
    v22 = a1 + 6;
    do
    {
      v23 = *v22;
      v22 += 3;
      [objc_allocWithZone(NSNumber) initWithInteger:v23];
      sub_1000273E4();
      v24 = *(aBlock[0] + 16);
      sub_100027414();
      sub_100027424();
      sub_1000273F4();
      --v12;
    }

    while (v12);
  }

  sub_100019050(0, &qword_100039CE0, NSNumber_ptr);
  isa = sub_100027224().super.isa;

  v26 = swift_allocObject();
  v27 = v32;
  *(v26 + 16) = a2;
  *(v26 + 24) = v27;
  aBlock[4] = sub_1000190D0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000173BC;
  aBlock[3] = &unk_100035900;
  v28 = _Block_copy(aBlock);

  [v4 _presentAlertSheetWith:v21.super.isa styles:isa completion:v28];
  _Block_release(v28);
}

uint64_t sub_1000173BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void *sub_100017410(void *a1, int64_t a2, char a3)
{
  result = sub_100017450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017430(char *a1, int64_t a2, char a3)
{
  result = sub_100017584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017450(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000274C(&qword_100039720, &qword_1000287F0);
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
    sub_10000274C(&qword_100039738, &qword_1000282A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017584(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000274C(&qword_100039CE8, &qword_1000287E8);
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

uint64_t sub_100017690(_BYTE *a1, char *a2, uint64_t a3)
{
  v154 = a2;
  v155 = a1;
  v151 = sub_100026DE4();
  v149 = *(v151 - 8);
  v4 = *(v149 + 64);
  __chkstk_darwin(v151);
  v150 = &v123[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000274C(&qword_100039BB0, &qword_100028700);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v135 = &v123[-v8];
  v133 = sub_10000274C(&qword_100039BB8, &qword_100028708);
  v9 = *(*(v133 - 8) + 64);
  v10 = __chkstk_darwin(v133);
  v142 = &v123[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v136 = &v123[-v13];
  __chkstk_darwin(v12);
  v139 = &v123[-v14];
  v131 = sub_100026DB4();
  v129 = *(v131 - 8);
  v15 = *(v129 + 64);
  __chkstk_darwin(v131);
  v127 = &v123[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_10000274C(&qword_100039BC0, &qword_100028710);
  v130 = *(v132 - 8);
  v17 = *(v130 + 64);
  __chkstk_darwin(v132);
  v128 = &v123[-v18];
  v126 = sub_10000274C(&qword_100039BC8, &qword_100028718);
  v19 = *(*(v126 - 8) + 64);
  v20 = __chkstk_darwin(v126);
  v134 = &v123[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v125 = &v123[-v23];
  __chkstk_darwin(v22);
  v153 = &v123[-v24];
  v144 = sub_10000274C(&qword_100039BD0, &qword_100028720);
  v25 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v27 = &v123[-v26];
  v28 = sub_10000274C(&qword_100039BD8, &qword_100028728);
  v147 = *(v28 - 8);
  v148 = v28;
  v29 = *(v147 + 64);
  v30 = __chkstk_darwin(v28);
  v143 = &v123[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v146 = &v123[-v32];
  v33 = sub_100026B04();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v140 = v37;
  v141 = &v123[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v39 = &v123[-v38];
  v40 = type metadata accessor for ScreenTimeMessageViewController();
  v166[4] = &off_100035850;
  v166[3] = v40;
  v166[0] = v154;
  v41 = v154;
  v124 = sub_100007AB0();
  v145 = v34;
  v42 = *(v34 + 16);
  v156 = v33;
  v137 = v42;
  v138 = v34 + 16;
  v42(v39, (a3 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details), v33);
  *v27 = sub_100026D54();
  *(v27 + 1) = 0;
  v154 = v27;
  v27[16] = 0;
  v43 = a3;
  v44 = sub_100026D14();
  v164 = 0;
  v45 = v155;
  v155 = v39;
  sub_100013288(v45, a3, v159);
  v189 = *&v159[144];
  v190 = *&v159[160];
  v191[0] = *&v159[176];
  *(v191 + 9) = *&v159[185];
  v186 = *&v159[96];
  v187 = *&v159[112];
  v188 = *&v159[128];
  v182 = *&v159[32];
  v183 = *&v159[48];
  v184 = *&v159[64];
  v185 = *&v159[80];
  v180 = *v159;
  v181 = *&v159[16];
  v192[9] = *&v159[144];
  v192[10] = *&v159[160];
  v193[0] = *&v159[176];
  *(v193 + 9) = *&v159[185];
  v192[6] = *&v159[96];
  v192[7] = *&v159[112];
  v192[8] = *&v159[128];
  v192[2] = *&v159[32];
  v192[3] = *&v159[48];
  v192[4] = *&v159[64];
  v192[5] = *&v159[80];
  v192[0] = *v159;
  v192[1] = *&v159[16];
  sub_1000061E4(&v180, v158, &qword_100039BE0, &qword_100028730);
  sub_100006B20(v192, &qword_100039BE0, &qword_100028730);
  *(&v163[9] + 7) = v189;
  *(&v163[10] + 7) = v190;
  *(&v163[11] + 7) = v191[0];
  v163[12] = *(v191 + 9);
  *(&v163[5] + 7) = v185;
  *(&v163[6] + 7) = v186;
  *(&v163[7] + 7) = v187;
  *(&v163[8] + 7) = v188;
  *(&v163[1] + 7) = v181;
  *(&v163[2] + 7) = v182;
  *(&v163[3] + 7) = v183;
  *(&v163[4] + 7) = v184;
  *(v163 + 7) = v180;
  v46 = v164;
  if (qword_1000390C0 != -1)
  {
    swift_once();
  }

  sub_100027074();
  v152 = a3;
  sub_100026C64();
  *&v165[55] = v170;
  *&v165[71] = v171;
  *&v165[87] = v172;
  *&v165[103] = v173;
  *&v165[7] = v167;
  *&v165[23] = v168;
  *&v165[39] = v169;
  *&v158[161] = v163[9];
  *&v158[177] = v163[10];
  *&v158[193] = v163[11];
  *&v158[209] = v163[12];
  *&v158[97] = v163[5];
  *&v158[113] = v163[6];
  *&v158[129] = v163[7];
  *&v158[145] = v163[8];
  *&v158[33] = v163[1];
  *&v158[49] = v163[2];
  *&v158[65] = v163[3];
  *&v158[289] = *&v165[64];
  *&v158[305] = *&v165[80];
  *&v158[321] = *&v165[96];
  *&v158[257] = *&v165[32];
  *&v158[273] = *&v165[48];
  *&v158[81] = v163[4];
  *&v158[17] = v163[0];
  *&v158[225] = *v165;
  *v158 = v44;
  *&v158[8] = 0;
  v158[16] = v46;
  *&v158[336] = *(&v173 + 1);
  *&v158[241] = *&v165[16];
  v47 = v127;
  sub_100026DA4();
  sub_10000274C(&qword_100039BE8, &qword_100028738);
  sub_100018924();
  v48 = v128;
  sub_100026F54();
  (*(v129 + 8))(v47, v131);
  memcpy(v159, v158, sizeof(v159));
  sub_100006B20(v159, &qword_100039BE8, &qword_100028738);
  v49 = sub_100026F94();
  LOBYTE(v47) = sub_100026E04();
  v50 = v125;
  (*(v130 + 32))(v125, v48, v132);
  v51 = v50 + *(v126 + 36);
  *v51 = v49;
  *(v51 + 8) = v47;
  v52 = v153;
  sub_1000189DC(v50, v153);
  sub_100027074();
  sub_100026C34();
  v131 = v176;
  v132 = v174;
  v129 = v179;
  v130 = v178;
  v162 = 1;
  v161 = v175;
  v160 = v177;
  v53 = sub_100026D44();
  v54 = v135;
  *v135 = v53;
  *(v54 + 8) = 0;
  *(v54 + 16) = 0;
  v55 = sub_10000274C(&qword_100039C08, &qword_100028748);
  sub_1000139A8(v124 & 1, v43, v166, v54 + *(v55 + 44));
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  sub_100027064();
  v56 = sub_10000274C(&qword_100039C10, &qword_100028750);
  v57 = &v154[*(v56 + 44)];
  sub_100026C64();
  v58 = v136;
  sub_100010C0C(v54, v136, &qword_100039BB0, &qword_100028700);
  v59 = &v58[*(v133 + 36)];
  v60 = *&v158[80];
  v59[4] = *&v158[64];
  v59[5] = v60;
  v59[6] = *&v158[96];
  v61 = *&v158[16];
  *v59 = *v158;
  v59[1] = v61;
  v62 = *&v158[48];
  v59[2] = *&v158[32];
  v59[3] = v62;
  v63 = v139;
  sub_100010C0C(v58, v139, &qword_100039BB8, &qword_100028708);
  v64 = v134;
  sub_100018A4C(v52, v134);
  LOBYTE(v58) = v162;
  v65 = v161;
  v66 = v160;
  v67 = v142;
  sub_1000061E4(v63, v142, &qword_100039BB8, &qword_100028708);
  sub_100018A4C(v64, v57);
  v68 = sub_10000274C(&qword_100039C18, &qword_100028758);
  v69 = &v57[*(v68 + 48)];
  *v69 = 0;
  v69[8] = v58;
  v70 = v131;
  *(v69 + 2) = v132;
  v69[24] = v65;
  *(v69 + 4) = v70;
  v69[40] = v66;
  v71 = v129;
  *(v69 + 6) = v130;
  *(v69 + 7) = v71;
  sub_1000061E4(v67, &v57[*(v68 + 64)], &qword_100039BB8, &qword_100028708);
  sub_100006B20(v63, &qword_100039BB8, &qword_100028708);
  sub_100006B20(v153, &qword_100039BC8, &qword_100028718);
  sub_100006B20(v67, &qword_100039BB8, &qword_100028708);
  sub_100006B20(v64, &qword_100039BC8, &qword_100028718);
  v72 = sub_100026F94();
  v73 = sub_100026E04();
  v74 = sub_10000274C(&qword_100039C20, &qword_100028760);
  v75 = v154;
  v76 = &v154[*(v74 + 36)];
  *v76 = v72;
  v76[8] = v73;
  LOBYTE(v72) = sub_100026E14();
  sub_100026C24();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = &v75[*(sub_10000274C(&qword_100039C28, &qword_100028768) + 36)];
  *v85 = v72;
  *(v85 + 1) = v78;
  *(v85 + 2) = v80;
  *(v85 + 3) = v82;
  *(v85 + 4) = v84;
  v85[40] = 0;
  LOBYTE(v72) = sub_100026E44();
  sub_100026C24();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = &v75[*(sub_10000274C(&qword_100039C30, &qword_100028770) + 36)];
  *v94 = v72;
  *(v94 + 1) = v87;
  *(v94 + 2) = v89;
  *(v94 + 3) = v91;
  *(v94 + 4) = v93;
  v94[40] = 0;
  LOBYTE(v72) = sub_100026E34();
  sub_100026C24();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v103 = &v75[*(sub_10000274C(&qword_100039C38, &qword_100028778) + 36)];
  *v103 = v72;
  *(v103 + 1) = v96;
  *(v103 + 2) = v98;
  *(v103 + 3) = v100;
  *(v103 + 4) = v102;
  v103[40] = 0;
  LOBYTE(v72) = sub_100026E24();
  sub_100026C24();
  v104 = &v75[*(v144 + 36)];
  *v104 = v72;
  *(v104 + 1) = v105;
  *(v104 + 2) = v106;
  *(v104 + 3) = v107;
  *(v104 + 4) = v108;
  v104[40] = 0;
  v109 = v141;
  v110 = v156;
  v137(v141, v155, v156);
  v111 = v145;
  v112 = (*(v145 + 80) + 24) & ~*(v145 + 80);
  v113 = swift_allocObject();
  *(v113 + 16) = v152;
  (*(v111 + 32))(v113 + v112, v109, v110);
  sub_100018BE4(&qword_100039C40, &qword_100039BD0, &qword_100028720, sub_100018C68);

  v114 = v146;
  sub_100026F34();

  sub_100006B20(v75, &qword_100039BD0, &qword_100028720);
  v116 = v147;
  v115 = v148;
  (*(v147 + 16))(v143, v114, v148);
  v117 = objc_allocWithZone(sub_10000274C(&qword_100039C78, &qword_100028790));
  v118 = sub_100026D84();
  sub_10000274C(&qword_100039C80, &qword_100028798);
  v119 = *(v149 + 72);
  v120 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_100028210;
  sub_100026DD4();
  sub_100026DC4();
  v157 = v121;
  sub_100018EAC(&qword_100039C88, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_10000274C(&qword_100039C90, &qword_1000287A0);
  sub_100014A38(&qword_100039C98, &qword_100039C90, &qword_1000287A0);
  sub_100027384();
  sub_100026D64();
  sub_100026D74();
  (*(v116 + 8))(v114, v115);
  (*(v111 + 8))(v155, v156);
  sub_100006044(v166);
  return v118;
}

uint64_t sub_100018770(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ScreenTimeMessageViewController();
  v19 = &off_100035850;
  v17[0] = a2;
  (*(v5 + 16))(v8, a1, v4);
  v9 = sub_100008648(v8);
  v10 = *(v9 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_image);
  v11 = *sub_100010BC8(v17, v18);

  v12 = v10;
  v13 = sub_100017690(v12, v11, v9);

  (*(v5 + 8))(a1, v4);
  sub_100006044(v17);
  v14 = *(v9 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController);
  *(v9 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController) = v13;

  return v9;
}

unint64_t sub_100018924()
{
  result = qword_100039BF0;
  if (!qword_100039BF0)
  {
    sub_1000144E4(&qword_100039BE8, &qword_100028738);
    sub_100014A38(&qword_100039BF8, &qword_100039C00, &qword_100028740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039BF0);
  }

  return result;
}

uint64_t sub_1000189DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039BC8, &qword_100028718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039BC8, &qword_100028718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018ABC()
{
  v1 = sub_100026B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018B80()
{
  v1 = *(sub_100026B04() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100013DE0(v2, v3);
}

uint64_t sub_100018BE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000144E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100018CF8()
{
  result = qword_100039C60;
  if (!qword_100039C60)
  {
    sub_1000144E4(&qword_100039C20, &qword_100028760);
    sub_100014A38(&qword_100039C68, &qword_100039C70, &unk_100028780);
    sub_100014A38(&qword_100039AF0, &qword_100039AF8, &qword_100028D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039C60);
  }

  return result;
}

uint64_t sub_100018E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039CA8, &qword_1000288C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018F50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100018F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003730;

  return sub_100007184(a1, v4, v5, v7, v6);
}

uint64_t sub_100019050(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100019098()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000190D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000190F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100019110()
{
  v1 = sub_100026834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();
  v6 = v0;
  v7 = sub_100026824();
  v8 = sub_100027304();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = *&v6[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v12 = *&v6[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v13 = sub_100005F78(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failure balloon %s", v9, 0xCu);
    sub_100006044(v10);
  }

  (*(v2 + 8))(v5, v1);
  v6[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 1;
  return [v6 requestResize];
}

uint64_t sub_1000192F4()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_1000061E4(v0 + v1, &v8, &qword_100039CA8, &qword_1000288C0);
  if (*(&v9 + 1))
  {
    sub_10001505C(&v8, v5);
    sub_100006B20(&v8, &qword_100039CA8, &qword_1000288C0);
    v2 = v6;
    v3 = v7;
    sub_100010BC8(v5, v6);
    (*(v3 + 8))(v2, v3);
    sub_100006044(v5);
  }

  else
  {
    sub_100006B20(&v8, &qword_100039CA8, &qword_1000288C0);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  sub_100018E3C(&v8, v0 + v1);
  return swift_endAccess();
}

uint64_t sub_100019418(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100027254();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_100026834();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_100026B04();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v12 = *(*(sub_10000274C(&qword_100039188, &qword_100027DE8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v13 = sub_100026734();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = sub_100026864();
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  sub_100027274();
  v2[27] = sub_100027264();
  v20 = sub_100027244();
  v2[28] = v20;
  v2[29] = v19;

  return _swift_task_switch(sub_1000196FC, v20, v19);
}

uint64_t sub_1000196FC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 24);
  (*(v2 + 104))(v1, enum case for PeopleURL.Parameter.requestID(_:), v3);
  v5 = sub_10000ACE8(v1);
  v7 = v6;
  *(v0 + 240) = v5;
  *(v0 + 248) = v6;
  (*(v2 + 8))(v1, v3);
  if (!v7)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 104);

    sub_100026894();
    v15 = sub_100026824();
    v16 = sub_100027314();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 104);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "conversation.requestID is nil";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v15, v16, v22, v21, 2u);
    }

LABEL_14:

    (*(v20 + 8))(v18, v19);
    v34 = *(v0 + 208);
    v35 = *(v0 + 184);
    v37 = *(v0 + 152);
    v36 = *(v0 + 160);
    v39 = *(v0 + 136);
    v38 = *(v0 + 144);
    v41 = *(v0 + 104);
    v40 = *(v0 + 112);
    v43 = *(v0 + 88);
    v42 = *(v0 + 96);
    v54 = *(v0 + 80);
    v55 = *(v0 + 56);

    v44 = *(v0 + 8);

    return v44();
  }

  v8 = [*(v0 + 24) selectedMessage];
  if (!v8)
  {
    v23 = *(v0 + 216);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    v26 = *(v0 + 160);

    (*(v25 + 56))(v26, 1, 1, v24);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 URL];

  if (v10)
  {
    v11 = *(v0 + 152);
    sub_100026714();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v30 = *(v0 + 152);
  v29 = *(v0 + 160);
  (*(v27 + 56))(v30, v12, 1, v28);
  sub_100020E64(v30, v29);
  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    v31 = *(v0 + 216);

LABEL_11:
    v32 = *(v0 + 112);
    sub_100006B20(*(v0 + 160), &qword_100039188, &qword_100027DE8);
    sub_100026894();
    v15 = sub_100026824();
    v16 = sub_100027314();
    v33 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 112);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    if (v33)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "message url is nil";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v46 = *(v0 + 184);
  v47 = *(v0 + 32);
  (*(*(v0 + 176) + 32))(v46, *(v0 + 160), *(v0 + 168));
  *(v0 + 256) = *(v47 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader);
  v48 = sub_10000C9F4(v46, v5, v7);
  *(v0 + 264) = v48;
  v49 = async function pointer to Task.value.getter[1];
  v50 = swift_task_alloc();
  *(v0 + 272) = v50;
  v51 = sub_10000274C(&qword_100039848, &qword_100028370);
  *(v0 + 280) = v51;
  *v50 = v0;
  v50[1] = sub_100019B68;
  v52 = *(v0 + 144);
  v53 = *(v0 + 120);

  return Task.value.getter(v52, v48, v53, v51, &protocol self-conformance witness table for Error);
}

uint64_t sub_100019B68()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v10 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_100019E00;
  }

  else
  {
    v7 = v2[33];
    v8 = v2[31];

    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_100019C90;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100019C90()
{
  v1 = v0[27];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[4];

  sub_10001C8D4(v2);
  (*(v4 + 8))(v2, v3);
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v0[4];
  [v9 setReadyForDisplay];
  [v9 requestResize];
  (*(v7 + 8))(v6, v8);
  v10 = v0[26];
  v11 = v0[23];
  v13 = v0[19];
  v12 = v0[20];
  v15 = v0[17];
  v14 = v0[18];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v22 = v0[10];
  v23 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100019E00()
{
  v72 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[27];
  v5 = v0[7];
  v6 = v0[5];

  v0[2] = v2;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v7 = v0[31];
    v8 = v0[12];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];

    (*(v10 + 8))(v9, v11);
    sub_100026894();
    v12 = sub_100026824();
    v13 = sub_100027304();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[36];
    v17 = v0[22];
    v16 = v0[23];
    v18 = v0[21];
    v19 = v0[12];
    v21 = v0[8];
    v20 = v0[9];
    if (v14)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "loadAndRenderBubbleIgnoringCache cancelled, no render", v22, 2u);

      (*(v20 + 8))(v19, v21);
      (*(v17 + 8))(v16, v18);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v17 + 8))(v16, v18);
    }
  }

  else
  {
    v23 = v0[36];
    v24 = v0[11];
    v25 = v0[4];
    sub_100026894();
    swift_errorRetain();
    v26 = v25;
    v27 = sub_100026824();
    v28 = sub_100027304();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[36];
      v66 = v0[9];
      v67 = v0[8];
      v69 = v0[11];
      v30 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v31 = 136315650;
      v34 = *(v30 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v33 = *(v30 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8);

      v35 = sub_100005F78(v34, v33, &v71);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_100005F78(0xD000000000000027, 0x8000000100029F70, &v71);
      *(v31 + 22) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 24) = v36;
      *v32 = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s  %s error loading full bubble: %@", v31, 0x20u);
      sub_100006B20(v32, &qword_100039838, &unk_100028360);

      swift_arrayDestroy();

      (*(v66 + 8))(v69, v67);
    }

    else
    {
      v37 = v0[11];
      v38 = v0[8];
      v39 = v0[9];

      (*(v39 + 8))(v37, v38);
    }

    v40 = v0[31];
    v41 = v0[32];
    v42 = v0[30];
    v43 = v0[23];
    sub_10000C330(1, v0[17]);
    v44 = v0[36];
    v45 = v0[31];
    v47 = v0[16];
    v46 = v0[17];
    v48 = v0[15];
    v49 = v0[4];

    sub_10001C8D4(v46);

    (*(v47 + 8))(v46, v48);
    v51 = v0[22];
    v50 = v0[23];
    v52 = v0[21];
    v53 = v0[4];
    [v53 setReadyForDisplay];
    [v53 requestResize];
    (*(v51 + 8))(v50, v52);
  }

  v54 = v0[26];
  v55 = v0[23];
  v57 = v0[19];
  v56 = v0[20];
  v59 = v0[17];
  v58 = v0[18];
  v61 = v0[13];
  v60 = v0[14];
  v63 = v0[11];
  v62 = v0[12];
  v68 = v0[10];
  v70 = v0[7];

  v64 = v0[1];

  return v64();
}

uint64_t sub_10001A40C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_100026834();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v42 - v8;
  v9 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = sub_100026734();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v44 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100026864();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for PeopleURL.Parameter.requestID(_:), v20);
  v43 = sub_10000ACE8(v24);
  v26 = v25;
  (*(v21 + 8))(v24, v20);
  if (v26)
  {
    v27 = [a1 selectedMessage];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 URL];

      if (v29)
      {
        sub_100026714();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      (*(v17 + 56))(v13, v30, 1, v16);
      sub_100020E64(v13, v15);
      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        v40 = v44;
        (*(v17 + 32))(v44, v15, v16);
        v41 = *(v45 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader);
        sub_10000B4F8(v43, v26, v49);

        return (*(v17 + 8))(v40, v16);
      }
    }

    else
    {

      (*(v17 + 56))(v15, 1, 1, v16);
    }

    sub_100006B20(v15, &qword_100039188, &qword_100027DE8);
    v34 = v46;
    sub_100026894();
    v35 = sub_100026824();
    v36 = sub_100027314();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "message url is nil", v37, 2u);
    }

    (*(v47 + 8))(v34, v48);
  }

  else
  {
    sub_100026894();
    v31 = sub_100026824();
    v32 = sub_100027314();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "conversation.requestID is nil", v33, 2u);
    }

    (*(v47 + 8))(v7, v48);
  }

  v38 = sub_100026B04();
  return (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
}

uint64_t sub_10001A974(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100026974();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_10000274C(&qword_100039188, &qword_100027DE8) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_100026734();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  sub_100027274();
  v3[12] = sub_100027264();
  v12 = sub_100027244();
  v3[13] = v12;
  v3[14] = v11;

  return _swift_task_switch(sub_10001AB00, v12, v11);
}

uint64_t sub_10001AB00()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100026B04();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = sub_100026AB4();
  if (!v5)
  {
    v6 = v0[2];
    v4 = sub_100026AF4();
  }

  v7 = v4;
  v8 = v5;
  v0[15] = v4;
  v0[16] = v5;
  v9 = v0[2];
  v10 = sub_100026A04();
  if (v11 >> 60 == 15)
  {
    if (qword_100039068 != -1)
    {
      swift_once();
    }

    ImageCache.getFromCache(_:)(v7, v8);
    if (v12 >> 60 != 15)
    {
      v13 = v0[2];
      sub_100026A14();
    }
  }

  else
  {
    sub_100010CDC(v10, v11);
  }

  v14 = v0[2];
  v15 = sub_100026A04();
  if (v16 >> 60 == 15)
  {
    v17 = v0[2];
    sub_100026A24();
    if (v18)
    {
      v19 = v0[9];
      v20 = v0[10];
      v21 = v0[8];
      sub_100026724();

      if ((*(v20 + 48))(v21, 1, v19) != 1)
      {
        (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
        v44 = swift_task_alloc();
        v0[17] = v44;
        *v44 = v0;
        v44[1] = sub_10001AE78;
        v45 = v0[11];
        v46 = v0[4];

        return sub_10001F440(v45);
      }

      sub_100006B20(v0[8], &qword_100039188, &qword_100027DE8);
    }
  }

  else
  {
    sub_100010CDC(v15, v16);
  }

  v22 = v0[2];
  v23 = sub_100026A04();
  if (v24 >> 60 == 15)
  {
    v25 = v0[2];
    v26 = sub_100026AB4();
    v0[20] = v27;
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v31 = v0[6];
      v30 = v0[7];
      v32 = v0[5];
      sub_100026B64();
      (*(v31 + 104))(v30, enum case for FirstPartyApps.none(_:), v32);
      v33 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
      v34 = swift_task_alloc();
      v0[21] = v34;
      *v34 = v0;
      v34[1] = sub_10001B1F8;
      v35 = v0[7];

      return static AppBundleResolver.resolveThumbnail(_:_:)(v28, v29, v35);
    }

    v38 = v0[16];
    v39 = v0[12];
  }

  else
  {
    v36 = v0[16];
    v37 = v0[12];
    sub_100010CDC(v23, v24);
  }

  v40 = v0[11];
  v41 = v0[7];
  v42 = v0[8];

  v43 = v0[1];

  return v43();
}

uint64_t sub_10001AE78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v9 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;

  v6 = *(v3 + 112);
  v7 = *(v3 + 104);

  return _swift_task_switch(sub_10001AFA0, v7, v6);
}

uint64_t sub_10001AFA0()
{
  if (v0[19] >> 60 == 15)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  else
  {
    v1 = v0[2];
    sub_100003B24(v0[18], v0[19]);
    sub_100026A14();
    if (qword_100039068 != -1)
    {
      swift_once();
    }

    v3 = v0[18];
    v2 = v0[19];
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    ImageCache.addToCache(_:image:)(v0[15], v0[16], v3, v2);
    sub_100010CDC(v3, v2);
    (*(v5 + 8))(v4, v6);
  }

  v7 = v0[2];
  v8 = sub_100026A04();
  if (v9 >> 60 == 15)
  {
    v10 = v0[2];
    v11 = sub_100026AB4();
    v0[20] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v16 = v0[6];
      v15 = v0[7];
      v17 = v0[5];
      sub_100026B64();
      (*(v16 + 104))(v15, enum case for FirstPartyApps.none(_:), v17);
      v18 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
      v19 = swift_task_alloc();
      v0[21] = v19;
      *v19 = v0;
      v19[1] = sub_10001B1F8;
      v20 = v0[7];

      return static AppBundleResolver.resolveThumbnail(_:_:)(v13, v14, v20);
    }

    v23 = v0[16];
    v24 = v0[12];
  }

  else
  {
    v21 = v0[16];
    v22 = v0[12];
    sub_100010CDC(v8, v9);
  }

  v25 = v0[11];
  v26 = v0[7];
  v27 = v0[8];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10001B1F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 40);
  v13 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;

  (*(v8 + 8))(v7, v9);
  v10 = *(v3 + 112);
  v11 = *(v3 + 104);

  return _swift_task_switch(sub_10001B3A0, v11, v10);
}

uint64_t sub_10001B3A0()
{
  v1 = v0[23];
  v2 = v0[12];

  if (v1 >> 60 == 15)
  {
    v3 = v0[16];

    if (qword_100039080 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    sub_100010CC8(qword_10003A740, qword_10003A748);
  }

  else
  {
    if (qword_100039068 != -1)
    {
      swift_once();
    }

    v5 = v0[2];
    ImageCache.addToCache(_:image:)(v0[15], v0[16], v0[22], v0[23]);
  }

  sub_100026A14();
  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

id sub_10001B50C()
{
  v1 = v0;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  v7 = *&v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

  sub_100026894();

  v9 = sub_100026824();
  v10 = sub_100027304();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_100005F78(v8, v7, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "RequestMessageViewController deinit %s", v11, 0xCu);
    sub_100006044(v12);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v14 = type metadata accessor for RequestMessageViewController();
  v18.receiver = v1;
  v18.super_class = v14;
  return objc_msgSendSuper2(&v18, "dealloc");
}

void sub_10001B7B4()
{
  v0 = sub_100027124();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = UIImagePNGRepresentation(v1);

  if (!v2)
  {
    v1 = 0;
LABEL_5:
    v4 = 0xF000000000000000;
    goto LABEL_6;
  }

  v1 = sub_100026764();
  v4 = v3;

LABEL_6:
  qword_10003A740 = v1;
  qword_10003A748 = v4;
}