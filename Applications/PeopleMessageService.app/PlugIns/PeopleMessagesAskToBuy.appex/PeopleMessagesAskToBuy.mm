uint64_t variable initialization expression of ImageCache.directoryURL@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000243D0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of ImageCache.ramCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

__n128 sub_100001B50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001B60(uint64_t a1, int a2)
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

uint64_t sub_100001B80(uint64_t result, int a2, int a3)
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

uint64_t sub_100001BC4(uint64_t a1, id *a2)
{
  result = sub_100024E90();
  *a2 = 0;
  return result;
}

uint64_t sub_100001C3C(uint64_t a1, id *a2)
{
  v3 = sub_100024EA0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001CBC@<X0>(void *a1@<X8>)
{
  sub_100024EB0();
  v2 = sub_100024E80();

  *a1 = v2;
  return result;
}

uint64_t sub_100001D00()
{
  v1 = *v0;
  sub_100024EB0();
  v2 = sub_100024F60();

  return v2;
}

uint64_t sub_100001D3C()
{
  v1 = *v0;
  sub_100024EB0();
  sub_100024EF0();
}

Swift::Int sub_100001D90()
{
  v1 = *v0;
  sub_100024EB0();
  sub_100025210();
  sub_100024EF0();
  v2 = sub_100025230();

  return v2;
}

uint64_t sub_100001E04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100024EB0();
  v6 = v5;
  if (v4 == sub_100024EB0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000251B0();
  }

  return v9 & 1;
}

uint64_t sub_100001E8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100024E80();

  *a2 = v5;
  return result;
}

uint64_t sub_100001ED4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100024EB0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_100001F14(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100001F60(uint64_t a1)
{
  v2 = sub_100002060(&qword_1000351D0);
  v3 = sub_100002060(&qword_1000351D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002060(unint64_t *a1)
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

uint64_t sub_1000020D8()
{
  v0 = sub_10000269C(&qword_100035348, &qword_100027000);
  sub_100006350(v0, qword_1000366C0);
  sub_1000062D0(v0, qword_1000366C0);
  v1 = [objc_opt_self() hours];
  sub_1000063B4();
  return sub_1000242C0();
}

void sub_100002174()
{
  v0 = type metadata accessor for ImageCache();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
  v5 = sub_1000243D0();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_hasRunCleanup) = 0;
  v6 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache;
  *(v3 + v6) = [objc_allocWithZone(NSCache) init];
  sub_100003C38();
  sub_100004408();
  v7 = *(v3 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache);
  [v7 setCountLimit:30];

  static ImageCache.sharedInstance = v3;
}

uint64_t *ImageCache.sharedInstance.unsafeMutableAddressor()
{
  if (qword_100035088 != -1)
  {
    swift_once();
  }

  return &static ImageCache.sharedInstance;
}

uint64_t static ImageCache.sharedInstance.getter()
{
  if (qword_100035088 != -1)
  {
    swift_once();
  }
}

uint64_t ImageCache.addToCache(_:image:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = sub_1000244D0();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v37);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v34 = v4;
  v15 = *(v4 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache);
  v16 = objc_allocWithZone(NSString);
  v17 = sub_100024E80();
  v18 = [v16 initWithString:v17];

  v19 = [v15 objectForKey:v18];
  if (v19)
  {

    sub_100024530();

    v20 = sub_1000244C0();
    v21 = sub_100025070();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000056C8(a1, a2, &v38);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s already in ram cache", v22, 0xCu);
      sub_100005794(v23);
    }

    return (*(v7 + 8))(v10, v37);
  }

  else
  {
    v26 = v35;
    v25 = v36;
    isa = sub_1000243F0().super.isa;
    v28 = objc_allocWithZone(NSString);
    v29 = sub_100024E80();
    v30 = [v28 initWithString:v29];

    [v15 setObject:isa forKey:v30];
    v31 = sub_100025000();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v34;
    v32[5] = a1;
    v32[6] = a2;
    v32[7] = v26;
    v32[8] = v25;

    sub_100003274(v26, v25);
    sub_100002F74(0, 0, v14, &unk_100026E40, v32);
  }
}

uint64_t sub_10000269C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000026E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_1000244D0();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v12 = *(*(sub_10000269C(&qword_1000351F0, &qword_100027160) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v13 = sub_1000243D0();
  v8[16] = v13;
  v14 = *(v13 - 8);
  v8[17] = v14;
  v15 = *(v14 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000287C, 0, 0);
}

uint64_t sub_10000287C()
{
  v59 = v0;
  v2 = v0 + 16;
  v1 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
  swift_beginAccess();
  sub_100005934(v5 + v6, v4, &qword_1000351F0, &qword_100027160);
  if ((*(v3 + 48))(v4, 1, v1))
  {
    v7 = v0[14];
    v8 = v0 + 14;
    sub_100006270(v0[15], &qword_1000351F0, &qword_100027160);
    sub_100024530();
    v9 = sub_1000244C0();
    v10 = sub_100025080();
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
    sub_100006270(v19, &qword_1000351F0, &qword_100027160);
    sub_1000243A0();
    v21 = *(v17 + 8);
    v21(v15, v18);
    (*(v17 + 32))(v53, v16, v18);
    sub_100024530();
    v49(v55, v53, v18);
    v22 = sub_1000244C0();
    v54 = sub_100025070();
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
      v47 = sub_100024370();
      log = v22;
      v30 = v29;
      v21(v24, v25);
      v31 = sub_1000056C8(v47, v30, &v58);

      *(v28 + 4) = v31;
      _os_log_impl(&_mh_execute_header, log, v54, "Attempting to cache image to file at url %s", v28, 0xCu);
      sub_100005794(v50);

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
    sub_100024410();
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

uint64_t sub_100002D00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_100002D50(v0[7], v0[8]);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002D50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002DA4(uint64_t a1)
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
  v11[1] = sub_100002E80;

  return sub_1000026E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100002E80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005934(a3, v27 - v11, &qword_1000351E0, &qword_100026E30);
  v13 = sub_100025000();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006270(v12, &qword_1000351E0, &qword_100026E30);
  }

  else
  {
    sub_100024FF0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100024FA0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100024EE0() + 32;
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

      sub_100006270(a3, &qword_1000351E0, &qword_100026E30);

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

  sub_100006270(a3, &qword_1000351E0, &qword_100026E30);
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

uint64_t sub_100003274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000032C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005934(a3, v27 - v11, &qword_1000351E0, &qword_100026E30);
  v13 = sub_100025000();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006270(v12, &qword_1000351E0, &qword_100026E30);
  }

  else
  {
    sub_100024FF0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100024FA0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100024EE0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000269C(&qword_100035328, &qword_100026EA0);
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

      sub_100006270(a3, &qword_1000351E0, &qword_100026E30);

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

  sub_100006270(a3, &qword_1000351E0, &qword_100026E30);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000269C(&qword_100035328, &qword_100026EA0);
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
  v5 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v62 = (v54 - v7);
  v58 = sub_1000243D0();
  v60 = *(v58 - 8);
  v8 = *(v60 + 64);
  v9 = __chkstk_darwin(v58);
  v57 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v56 = v54 - v12;
  __chkstk_darwin(v11);
  v14 = v54 - v13;
  v15 = sub_1000244D0();
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
  v25 = *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache);
  v26 = objc_allocWithZone(NSString);
  v61 = a1;
  v27 = sub_100024E80();
  v28 = [v26 initWithString:v27];

  v29 = v25;
  v30 = [v25 objectForKey:v28];

  if (v30)
  {
    v31 = sub_100024400();

    sub_100024530();

    v32 = sub_1000244C0();
    v33 = sub_100025070();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v65 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1000056C8(v61, a2, &v65);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s found in ram cache", v34, 0xCu);
      sub_100005794(v35);
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
    v39 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
    v40 = v59;
    swift_beginAccess();
    v41 = v40 + v39;
    v42 = v62;
    sub_100005934(v41, v62, &qword_1000351F0, &qword_100027160);
    v43 = v60;
    v44 = v58;
    if ((*(v60 + 48))(v42, 1, v58))
    {
      sub_100006270(v62, &qword_1000351F0, &qword_100027160);
      sub_100024530();
      v45 = sub_1000244C0();
      v46 = sub_100025080();
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
      sub_100006270(v48, &qword_1000351F0, &qword_100027160);
      sub_1000243A0();
      v62 = *(v43 + 8);
      (v62)(v38, v44);
      (*(v43 + 32))(v55, v37, v44);
      v31 = sub_1000243E0();
      isa = sub_1000243F0().super.isa;
      v50 = objc_allocWithZone(NSString);
      v51 = sub_100024E80();
      v52 = [v50 initWithString:v51];

      [v54[0] setObject:isa forKey:v52];
      (v62)(v55, v44);
    }
  }

  return v31;
}

uint64_t sub_100003C38()
{
  v69 = sub_1000244D0();
  v66 = *(v69 - 8);
  v1 = *(v66 + 64);
  v2 = (__chkstk_darwin)();
  v61 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v68 = &v60 - v4;
  v5 = sub_1000243D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v60 - v10;
  v11 = sub_10000269C(&qword_1000351F0, &qword_100027160);
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
  v26 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
  swift_beginAccess();
  v64 = v0;
  v67 = v26;
  sub_100005934(v0 + v26, v25, &qword_1000351F0, &qword_100027160);
  v65 = v6;
  v27 = *(v6 + 48);
  LODWORD(v26) = v27(v25, 1, v5);
  result = sub_100006270(v25, &qword_1000351F0, &qword_100027160);
  if (v26 == 1)
  {
    sub_1000244E0();
    v29 = v27;
    if (v27(v20, 1, v5) == 1)
    {
      sub_100006270(v20, &qword_1000351F0, &qword_100027160);
      v30 = 1;
      v31 = v69;
      v32 = v65;
    }

    else
    {
      sub_1000243A0();
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
    sub_100006400(v23, v34 + v35);
    swift_endAccess();
    sub_100005934(v34 + v35, v17, &qword_1000351F0, &qword_100027160);
    if (v29(v17, 1, v5) == 1)
    {
      sub_100006270(v17, &qword_1000351F0, &qword_100027160);
    }

    else
    {
      (*(v32 + 32))(v33, v17, v5);
      v36 = [objc_opt_self() defaultManager];
      sub_100024390(v37);
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
        sub_100024350();

        swift_willThrow();
        v44 = v61;
        sub_100024530();
        v70 = 0;
        v71 = 0xE000000000000000;
        swift_errorRetain();
        sub_100025140(34);

        v70 = 0xD00000000000001CLL;
        v71 = 0x8000000100026300;
        v72._countAndFlagsBits = sub_100024370();
        sub_100024F40(v72);

        v73._countAndFlagsBits = 1076174906;
        v73._object = 0xE400000000000000;
        sub_100024F40(v73);
        sub_1000244B0();

        v45 = v44;
        v31 = v69;
        (*(v66 + 8))(v45, v69);
        (*(v32 + 8))(v33, v5);
      }
    }

    v46 = v68;
    sub_100024530();

    v47 = sub_1000244C0();
    v48 = sub_100025070();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136315138;
      v51 = v62;
      sub_100005934(v34 + v67, v62, &qword_1000351F0, &qword_100027160);
      if (v29(v51, 1, v5))
      {
        sub_100006270(v51, &qword_1000351F0, &qword_100027160);
        v52 = 0xE300000000000000;
        v53 = 7104878;
      }

      else
      {
        v54 = v60;
        (*(v32 + 16))(v60, v51, v5);
        sub_100006270(v51, &qword_1000351F0, &qword_100027160);
        v55 = sub_100024370();
        v56 = v5;
        v57 = v55;
        v52 = v58;
        (*(v32 + 8))(v54, v56);
        v53 = v57;
      }

      v59 = sub_1000056C8(v53, v52, &v70);

      *(v49 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "Root folder %s", v49, 0xCu);
      sub_100005794(v50);

      return (*(v66 + 8))(v68, v69);
    }

    else
    {

      return (*(v66 + 8))(v46, v31);
    }
  }

  return result;
}

uint64_t sub_100004408()
{
  v97 = sub_1000244D0();
  v96 = *(v97 - 8);
  v1 = *(v96 + 64);
  v2 = __chkstk_darwin(v97);
  v95 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v110 = &v86 - v5;
  __chkstk_darwin(v4);
  v7 = &v86 - v6;
  v8 = sub_10000269C(&qword_100035330, &qword_100026EB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v86 - v10;
  v12 = sub_100024450();
  v94 = *(v12 - 8);
  v13 = *(v94 + 64);
  v14 = __chkstk_darwin(v12);
  v105 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v115 = &v86 - v17;
  __chkstk_darwin(v16);
  v114 = &v86 - v18;
  v19 = sub_10000269C(&qword_100035338, &qword_100026EB8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v116 = &v86 - v21;
  v108 = sub_100024340();
  v93 = *(v108 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v108);
  v117 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v86 - v26;
  v28 = sub_1000243D0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = &v86 - v35;
  result = __chkstk_darwin(v34);
  v39 = &v86 - v38;
  if ((*(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_hasRunCleanup) & 1) == 0)
  {
    v89 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_hasRunCleanup;
    v113 = v11;
    v40 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
    swift_beginAccess();
    v90 = v0;
    sub_100005934(v0 + v40, v27, &qword_1000351F0, &qword_100027160);
    if ((*(v29 + 48))(v27, 1, v28) == 1)
    {
      return sub_100006270(v27, &qword_1000351F0, &qword_100027160);
    }

    v86 = v7;
    (*(v29 + 32))(v39, v27, v28);
    v41 = [objc_opt_self() defaultManager];
    v107 = sub_10000269C(&qword_100035340, &unk_100026EC0);
    v42 = swift_allocObject();
    v106 = xmmword_100026E20;
    *(v42 + 16) = xmmword_100026E20;
    *(v42 + 32) = NSURLContentModificationDateKey;
    v43 = NSURLContentModificationDateKey;
    v88 = v39;
    sub_100024360();
    sub_100024390(v44);
    v46 = v45;
    v109 = v29;
    v47 = *(v29 + 8);
    v111 = v29 + 8;
    v112 = v47;
    v47(v36, v28);
    type metadata accessor for URLResourceKey(0);
    v48 = v28;
    isa = sub_100024F80().super.isa;

    v118[0] = 0;
    v92 = v41;
    v50 = [v41 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:isa options:4 error:v118];

    v51 = v118[0];
    if (v50)
    {
      v52 = sub_100024F90();
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
          sub_100006020(inited);
          swift_setDeallocating();
          sub_100006214(inited + 32);
          v63 = v116;
          sub_100024380();

          (*v103)(v63, 0, 1, v55);
          v64 = v117;
          (*v99)();
          v65 = v113;
          sub_100024330();
          if ((*v98)(v65, 1, v12) == 1)
          {
            (*v58)(v64, v55);
            v54 = v59;
            v112(v33, v59);
            sub_100006270(v65, &qword_100035330, &qword_100026EB0);
          }

          else
          {
            v66 = v114;
            (*v91)(v114, v65, v12);
            v54 = v59;
            if (qword_100035080 != -1)
            {
              swift_once();
            }

            v67 = sub_10000269C(&qword_100035348, &qword_100027000);
            sub_1000062D0(v67, qword_1000366C0);
            v68 = v115;
            sub_100024430();
            v69 = v105;
            sub_100024440();
            sub_100006308(&qword_100035350, &type metadata accessor for Date);
            if (sub_100024E60())
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
              sub_100024390(v70);
              v74 = v73;
              v118[0] = 0;
              v75 = [v92 removeItemAtURL:v73 error:v118];

              if (!v75)
              {
                v78 = v118[0];
                sub_100024350();

                swift_willThrow();
                v79 = v95;
                sub_100024530();
                v118[0] = 0;
                v118[1] = 0xE000000000000000;
                swift_errorRetain();
                sub_100025140(20);

                strcpy(v118, "Failed delete ");
                HIBYTE(v118[1]) = -18;
                sub_100006308(&qword_100035358, &type metadata accessor for URL);
                v119._countAndFlagsBits = sub_1000251A0();
                sub_100024F40(v119);

                v120._countAndFlagsBits = 1076174906;
                v120._object = 0xE400000000000000;
                sub_100024F40(v120);
                sub_1000244B0();

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
      sub_100024350();

      swift_willThrow();

      v82 = v110;
      sub_100024530();
      v83 = sub_1000244C0();
      v84 = sub_100025070();
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
  sub_100006270(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL, &qword_1000351F0, &qword_100027160);

  return v0;
}

uint64_t ImageCache.__deallocating_deinit()
{
  sub_100006270(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL, &qword_1000351F0, &qword_100027160);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000053E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006594;

  return v7(a1);
}

uint64_t sub_1000054D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000055D0;

  return v7(a1);
}

uint64_t sub_1000055D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000056C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005B44(v11, 0, 0, 1, a1, a2);
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
    sub_100006470(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005794(v11);
  return v7;
}

uint64_t sub_100005794(uint64_t *a1)
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
  result = qword_100035230;
  if (!qword_100035230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005834()
{
  sub_1000058DC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000058DC()
{
  if (!qword_100035240)
  {
    sub_1000243D0();
    v0 = sub_100025100();
    if (!v1)
    {
      atomic_store(v0, &qword_100035240);
    }
  }
}

uint64_t sub_100005934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000269C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000599C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000059D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006598;

  return sub_1000054D8(a1, v5);
}

uint64_t sub_100005A8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E80;

  return sub_1000054D8(a1, v5);
}

unint64_t sub_100005B44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005C50(a5, a6);
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
    result = sub_100025160();
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

char *sub_100005C50(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005C9C(a1, a2);
  sub_100005DCC(&off_100031320);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005C9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005EB8(v5, 0);
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

  result = sub_100025160();
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
        v10 = sub_100024F50();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005EB8(v10, 0);
        result = sub_100025130();
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

uint64_t sub_100005DCC(uint64_t result)
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

  result = sub_100005F2C(result, v12, 1, v3);
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

void *sub_100005EB8(uint64_t a1, uint64_t a2)
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

  sub_10000269C(&qword_100035370, &qword_100026ED8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005F2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000269C(&qword_100035370, &qword_100026ED8);
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

void *sub_100006020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000269C(&qword_100035368, &qword_100026ED0);
    v3 = sub_100025120();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_100024EB0();
      sub_100025210();
      v29 = v7;
      sub_100024EF0();
      v9 = sub_100025230();

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
        v18 = sub_100024EB0();
        v20 = v19;
        if (v18 == sub_100024EB0() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1000251B0();

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

uint64_t sub_100006214(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006270(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000269C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000062D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100006350(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000063B4()
{
  result = qword_100035360;
  if (!qword_100035360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035360);
  }

  return result;
}

uint64_t sub_100006400(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006470(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000064D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006598;

  return sub_1000053E0(a1, v5);
}

id sub_10000659C()
{
  v1 = v0;
  v2 = sub_1000244D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  v7 = *&v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

  sub_100024530();

  v9 = sub_1000244C0();
  v10 = sub_100025070();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_1000056C8(v8, v7, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "RequestMessageViewController deinit %s", v11, 0xCu);
    sub_100005794(v12);
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

void sub_100006844()
{
  v0 = sub_100024E80();
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

  v1 = sub_100024400();
  v4 = v3;

LABEL_6:
  qword_1000366E0 = v1;
  qword_1000366E8 = v4;
}

uint64_t sub_1000069D0()
{
  v1 = v0;
  v2 = sub_100024500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 activeConversation];
  if (!v7 || (v8 = v7, (*(v3 + 104))(v6, enum case for PeopleURL.Parameter.requestID(_:), v2), v9 = sub_100010494(v6), v11 = v10, v8, (*(v3 + 8))(v6, v2), !v11))
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  v13 = *&v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];
  *v12 = v9;
  v12[1] = v11;
}

id sub_100006B28()
{
  v1 = sub_1000244D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();
  v6 = v0;
  v7 = sub_1000244C0();
  v8 = sub_100025070();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = *&v6[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v12 = *&v6[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v13 = sub_1000056C8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failure balloon %s", v9, 0xCu);
    sub_100005794(v10);
  }

  (*(v2 + 8))(v5, v1);
  v6[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 1;
  return [v6 requestResize];
}

uint64_t sub_100006D0C()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_100005934(v0 + v1, &v8, &qword_100035420, &qword_100027030);
  if (*(&v9 + 1))
  {
    sub_10000E544(&v8, v5);
    sub_100006270(&v8, &qword_100035420, &qword_100027030);
    v2 = v6;
    v3 = v7;
    sub_10000E5A8(v5, v6);
    (*(v3 + 8))(v2, v3);
    sub_100005794(v5);
  }

  else
  {
    sub_100006270(&v8, &qword_100035420, &qword_100027030);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  sub_10000E4D4(&v8, v0 + v1);
  return swift_endAccess();
}

double sub_100006E30(double a1, double a2)
{
  v5 = sub_1000244D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();
  v10 = v2;
  v11 = sub_1000244C0();
  v12 = sub_100025070();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136315906;
    v14 = *&v10[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v15 = *&v10[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v16 = sub_1000056C8(v14, v15, &v34);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000056C8(0xD000000000000017, 0x80000001000265D0, &v34);
    *(v13 + 22) = 2048;
    *(v13 + 24) = a1;
    *(v13 + 32) = 2048;
    *(v13 + 34) = a2;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s  %s! size: %f x %f", v13, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v9, v5);
  if ((v10[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] & 1) == 0)
  {
    [v10 additionalSafeAreaInsets];
    v19 = v17 + v18;
    v22 = v20 + v21;
    v23 = 150.0;
    if (a2 > 150.0)
    {
      v23 = a2;
    }

    v24 = 300.0;
    if (a1 <= 300.0)
    {
      v24 = a1;
    }

    a1 = v24 - v22;
    v25 = *&v10[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble];
    if (v25)
    {
      v26 = *(v25 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController);
      if (v26)
      {
        v27 = v23 - v19;
        v28 = [v26 view];
        if (v28)
        {
          v29 = v28;
          [v28 sizeThatFits:{a1, v27}];
          v31 = v30;

          return ceil(v22 + v31);
        }
      }
    }
  }

  return a1;
}

void sub_100007194(void *a1)
{
  v3 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v101 = &v94 - v5;
  v6 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v103 = &v94 - v8;
  v9 = sub_1000247B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v100 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v99 = &v94 - v15;
  __chkstk_darwin(v14);
  v107 = &v94 - v16;
  v17 = sub_1000244D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v98 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v102 = &v94 - v23;
  v24 = __chkstk_darwin(v22);
  v105 = &v94 - v25;
  __chkstk_darwin(v24);
  v27 = &v94 - v26;
  sub_100024530();
  v28 = v1;
  v29 = sub_1000244C0();
  v30 = sub_100025070();

  v31 = os_log_type_enabled(v29, v30);
  v106 = v18;
  v104 = v10;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v108 = v95;
    *v32 = 136315394;
    v33 = v17;
    v34 = v9;
    v35 = a1;
    v37 = *&v28[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v36 = *&v28[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v38 = sub_1000056C8(v37, v36, &v108);
    a1 = v35;
    v9 = v34;
    v17 = v33;

    *(v32 + 4) = v38;
    v10 = v104;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1000056C8(0xD000000000000017, 0x8000000100026580, &v108);
    _os_log_impl(&_mh_execute_header, v29, v30, "%s  %s!", v32, 0x16u);
    swift_arrayDestroy();

    v18 = v106;
  }

  v39 = *(v18 + 8);
  (v39)(v27, v17);
  v40 = type metadata accessor for RequestMessageViewController();
  v110.receiver = v28;
  v110.super_class = v40;
  objc_msgSendSuper2(&v110, "willBecomeActiveWithConversation:", a1);
  [v28 setNeedsSizeMatchBeforeSnapshotSwap];
  v28[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 1;
  v41 = v103;
  sub_10000A390(a1, v103);
  v42 = (*(v10 + 48))(v41, 1, v9);
  v43 = v105;
  if (v42 == 1)
  {
    sub_100006270(v41, &qword_1000353F0, &unk_100027140);
    v44 = sub_100024510();
    v45 = v98;
    sub_100024530();
    v108 = 0;
    v109 = 0xE000000000000000;
    v46 = v44;
    sub_100025140(37);
    v48 = *&v28[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v47 = *&v28[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v108 = v48;
    v109 = v47;
    v111._countAndFlagsBits = 32;
    v111._object = 0xE100000000000000;
    sub_100024F40(v111);
    v112._object = 0x8000000100026580;
    v112._countAndFlagsBits = 0xD000000000000017;
    sub_100024F40(v112);
    v113._countAndFlagsBits = 0xD000000000000020;
    v113._object = 0x80000001000265A0;
    sub_100024F40(v113);
    sub_1000244B0();

    (v39)(v45, v17);
    sub_100006B28();
  }

  else
  {
    v97 = v17;
    v49 = v107;
    (*(v10 + 32))(v107, v41, v9);
    sub_100024530();
    v50 = v99;
    v98 = *(v10 + 16);
    (v98)(v99, v49, v9);
    v51 = v28;
    v52 = sub_1000244C0();
    v53 = sub_100025070();
    v95 = v9;
    v54 = v53;

    v55 = os_log_type_enabled(v52, v54);
    v103 = v39;
    v96 = a1;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v56 = 136315650;
      v57 = *&v51[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v58 = *&v51[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

      v59 = sub_1000056C8(v57, v58, &v108);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_1000056C8(0xD000000000000017, 0x8000000100026580, &v108);
      *(v56 + 22) = 2080;
      v60 = sub_100024790();
      v62 = v61;
      v63 = *(v10 + 8);
      v64 = v95;
      v99 = v63;
      (v63)(v50, v95);
      v65 = sub_1000056C8(v60, v62, &v108);

      *(v56 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v52, v54, "%s %s - %s loaded from cache", v56, 0x20u);
      swift_arrayDestroy();

      v66 = v97;
      (v103)(v105, v97);
      v67 = v64;
    }

    else
    {

      v67 = v95;
      v99 = *(v10 + 8);
      (v99)(v50, v95);
      v66 = v97;
      (v39)(v43, v97);
    }

    v68 = v102;
    v69 = v107;
    sub_100007C6C(v107);
    sub_100024530();
    v70 = v100;
    (v98)(v100, v69, v67);
    v71 = v51;
    v72 = sub_1000244C0();
    v73 = sub_100025070();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v74 = 136315650;
      v75 = *&v71[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v76 = *&v71[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

      v77 = sub_1000056C8(v75, v76, &v108);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_1000056C8(0xD000000000000017, 0x8000000100026580, &v108);
      *(v74 + 22) = 2080;
      v78 = sub_100024790();
      v80 = v79;
      v81 = v70;
      v82 = v99;
      (v99)(v81, v67);
      v83 = sub_1000056C8(v78, v80, &v108);

      *(v74 + 24) = v83;
      v84 = v73;
      v85 = v82;
      _os_log_impl(&_mh_execute_header, v72, v84, "%s %s - %s loadIgnoringCache...", v74, 0x20u);
      swift_arrayDestroy();

      v86 = v102;
      v87 = v97;
    }

    else
    {

      v85 = v99;
      (v99)(v70, v67);
      v86 = v68;
      v87 = v66;
    }

    (v103)(v86, v87);
    v88 = sub_100025000();
    v89 = v101;
    (*(*(v88 - 8) + 56))(v101, 1, 1, v88);
    sub_100024FD0();
    v90 = v71;
    v91 = v96;
    v92 = sub_100024FC0();
    v93 = swift_allocObject();
    v93[2] = v92;
    v93[3] = &protocol witness table for MainActor;
    v93[4] = v90;
    v93[5] = v91;
    sub_100002F74(0, 0, v89, &unk_100027048, v93);

    v85(v107, v67);
  }
}

id sub_100007C6C(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_1000244D0();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v73 - v9;
  __chkstk_darwin(v8);
  v12 = v73 - v11;
  v13 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v73 - v15;
  v17 = sub_100024630();
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v17);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v73 - v23;
  v25 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] == 1)
    {
      v27 = *(v25 + 1);
      v28 = Strong;
      ObjectType = swift_getObjectType();
      v30 = *(v27 + 16);
      v31 = v76;
      v73[1] = v28;
      v74 = v30(v76, ObjectType, v27);
      v32 = *(v74 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController);
      if (v32)
      {
        v33 = sub_1000247B0();
        v34 = *(v33 - 8);
        (*(v34 + 16))(v24, v31, v33);
        (*(v34 + 56))(v24, 0, 1, v33);
        v35 = v32;
        LOBYTE(v33) = sub_10000DB50(v24);
        sub_100006270(v24, &qword_1000353F0, &unk_100027140);
        if (v33)
        {
          sub_100006D0C();
          v36 = v75;
        }

        else
        {
          v65 = swift_unknownObjectWeakLoadStrong();
          v36 = v75;
          v66 = v76;
          if (v65)
          {
            v67 = *(v25 + 1);
            v68 = swift_getObjectType();
            (*(v67 + 24))(v66, v68, v67);
            swift_unknownObjectRelease();
          }
        }

        result = [v35 view];
        if (result)
        {
          v69 = result;
          v70 = [objc_opt_self() clearColor];
          [v69 setBackgroundColor:v70];

          sub_100024670();
          v71 = *(v36 + 48);
          if (v71(v16, 1, v17) == 1)
          {
            (*(v36 + 104))(v20, enum case for MessageDetails.EventSource.unknown(_:), v17);
            if (v71(v16, 1, v17) != 1)
            {
              sub_100006270(v16, &qword_1000353E8, &unk_100026FE0);
            }
          }

          else
          {
            (*(v36 + 32))(v20, v16, v17);
          }

          sub_10000D498(v35);
          swift_unknownObjectRelease();

          (*(v36 + 8))(v20, v17);
          v72 = *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble];
          *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = v74;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_100024530();
        v56 = v2;
        v57 = sub_1000244C0();
        v58 = sub_100025080();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v79 = v60;
          *v59 = 136315138;
          v61 = &v56[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
          v62 = *&v56[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
          v63 = *(v61 + 1);

          v64 = sub_1000056C8(v62, v63, &v79);

          *(v59 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v57, v58, "%s - No bubble view controller!", v59, 0xCu);
          sub_100005794(v60);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return (*(v77 + 8))(v12, v78);
      }
    }

    else
    {
      sub_100024530();
      v47 = v2;
      v48 = sub_1000244C0();
      v49 = sub_100025070();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v79 = v51;
        *v50 = 136315138;
        v52 = &v47[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v53 = *&v47[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v54 = *(v52 + 1);

        v55 = sub_1000056C8(v53, v54, &v79);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "%s has been deactivated prior to render!", v50, 0xCu);
        sub_100005794(v51);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v77 + 8))(v10, v78);
    }
  }

  else
  {
    sub_100024530();
    v37 = v2;
    v38 = sub_1000244C0();
    v39 = sub_100025080();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v79 = v41;
      *v40 = 136315138;
      v42 = &v37[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v43 = *&v37[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v44 = *(v42 + 1);

      v45 = sub_1000056C8(v43, v44, &v79);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s - Missing bubble creator!", v40, 0xCu);
      sub_100005794(v41);
    }

    return (*(v77 + 8))(v7, v78);
  }

  return result;
}

uint64_t sub_1000084BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_100024FD0();
  v5[3] = sub_100024FC0();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100008578;

  return sub_10000877C(a5);
}

uint64_t sub_100008578()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_100024FA0();

  return _swift_task_switch(sub_1000086B4, v5, v4);
}

uint64_t sub_1000086B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000877C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100024FB0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1000244D0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_1000247B0();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v12 = *(*(sub_10000269C(&qword_1000351F0, &qword_100027160) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v13 = sub_1000243D0();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = sub_100024500();
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  sub_100024FD0();
  v2[27] = sub_100024FC0();
  v20 = sub_100024FA0();
  v2[28] = v20;
  v2[29] = v19;

  return _swift_task_switch(sub_100008A60, v20, v19);
}

uint64_t sub_100008A60()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 24);
  (*(v2 + 104))(v1, enum case for PeopleURL.Parameter.requestID(_:), v3);
  v5 = sub_100010494(v1);
  v7 = v6;
  *(v0 + 240) = v5;
  *(v0 + 248) = v6;
  (*(v2 + 8))(v1, v3);
  if (!v7)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 104);

    sub_100024530();
    v15 = sub_1000244C0();
    v16 = sub_100025080();
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
    sub_1000243B0();

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
  sub_10000DAE0(v30, v29);
  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    v31 = *(v0 + 216);

LABEL_11:
    v32 = *(v0 + 112);
    sub_100006270(*(v0 + 160), &qword_1000351F0, &qword_100027160);
    sub_100024530();
    v15 = sub_1000244C0();
    v16 = sub_100025080();
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
  *(v0 + 256) = *(v47 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader);
  v48 = sub_10000EC08(v46, v5, v7);
  *(v0 + 264) = v48;
  v49 = async function pointer to Task.value.getter[1];
  v50 = swift_task_alloc();
  *(v0 + 272) = v50;
  v51 = sub_10000269C(&qword_1000353D8, &qword_100026FD0);
  *(v0 + 280) = v51;
  *v50 = v0;
  v50[1] = sub_100008ECC;
  v52 = *(v0 + 144);
  v53 = *(v0 + 120);

  return Task.value.getter(v52, v48, v53, v51, &protocol self-conformance witness table for Error);
}

uint64_t sub_100008ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v10 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_100009164;
  }

  else
  {
    v7 = v2[33];
    v8 = v2[31];

    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_100008FF4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100008FF4()
{
  v1 = v0[27];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[4];

  sub_100007C6C(v2);
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

uint64_t sub_100009164()
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
    sub_100024530();
    v12 = sub_1000244C0();
    v13 = sub_100025070();
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
    sub_100024530();
    swift_errorRetain();
    v26 = v25;
    v27 = sub_1000244C0();
    v28 = sub_100025070();

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
      v34 = *(v30 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v33 = *(v30 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8);

      v35 = sub_1000056C8(v34, v33, &v71);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1000056C8(0xD000000000000027, 0x80000001000264C0, &v71);
      *(v31 + 22) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 24) = v36;
      *v32 = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s  %s error loading full bubble: %@", v31, 0x20u);
      sub_100006270(v32, &qword_1000353E0, &qword_100026FD8);

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
    sub_10000EEBC(1, v0[17]);
    v44 = v0[36];
    v45 = v0[31];
    v47 = v0[16];
    v46 = v0[17];
    v48 = v0[15];
    v49 = v0[4];

    sub_100007C6C(v46);

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

uint64_t sub_100009770(void *a1)
{
  v3 = sub_1000244D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();
  v8 = a1;
  v9 = v1;
  v10 = sub_1000244C0();
  v11 = sub_100025070();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v3;
    v13 = v12;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v13 = 136315650;
    v14 = *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v15 = *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v16 = sub_1000056C8(v14, v15, &v28);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000056C8(0xD000000000000013, 0x8000000100026540, &v28);
    *(v13 + 22) = 2080;
    v27 = a1;
    v17 = v8;
    sub_10000269C(&qword_100035428, &qword_100027038);
    v18 = sub_100024ED0();
    v20 = sub_1000056C8(v18, v19, &v28);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s  %s %s", v13, 0x20u);
    swift_arrayDestroy();

    result = (*(v4 + 8))(v7, v26);
    if (a1)
    {
      return result;
    }
  }

  else
  {

    result = (*(v4 + 8))(v7, v3);
    if (a1)
    {
      return result;
    }
  }

  v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  v22 = *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader];
  if (*(v22 + 128))
  {
    sub_1000247B0();

    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    sub_100025020();

    v23 = *(v22 + 128);
  }

  *(v22 + 128) = 0;

  sub_100006D0C();
  v24 = *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble];
  *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
}

uint64_t sub_100009AFC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RequestMessageViewController();
  objc_msgSendSuper2(&v6, "willResignActiveWithConversation:", a1);
  v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  v3 = *&v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader];
  if (*(v3 + 128))
  {
    sub_1000247B0();

    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    sub_100025020();

    v4 = *(v3 + 128);
  }

  *(v3 + 128) = 0;

  return sub_100006D0C();
}

void sub_100009C30(uint64_t a1)
{
  v3 = sub_1000244D0();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v58 - v15;
  v17 = sub_1000247B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v58 - v23;
  v25 = type metadata accessor for RequestMessageViewController();
  v66.receiver = v1;
  v66.super_class = v25;
  objc_msgSendSuper2(&v66, "didTransitionToPresentationStyle:", a1);
  v26 = [v1 activeConversation];
  if (v26)
  {
    v27 = v26;
    sub_10000A390(v26, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_100006270(v16, &qword_1000353F0, &unk_100027140);
      sub_100024530();
      v28 = v1;
      v29 = sub_1000244C0();
      v30 = sub_100025070();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v27;
        v32 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v32 = 136315394;
        v33 = *&v28[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v34 = *&v28[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

        v35 = sub_1000056C8(v33, v34, &v65);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_1000056C8(0xD000000000000012, 0x8000000100026520, &v65);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s %s - failed to load from cache", v32, 0x16u);
        swift_arrayDestroy();

        v27 = v31;
      }

      (*(v63 + 8))(v10, v64);
      sub_100006B28();
    }

    else
    {
      v62 = v27;
      (*(v18 + 32))(v24, v16, v17);
      sub_100024530();
      (*(v18 + 16))(v22, v24, v17);
      v45 = v1;
      v46 = sub_1000244C0();
      v47 = sub_100025070();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v65 = v60;
        *v48 = 136315650;
        v59 = v47;
        v61 = v45;
        v49 = *&v45[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v50 = *&v45[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

        v51 = sub_1000056C8(v49, v50, &v65);

        *(v48 + 4) = v51;
        v58 = v46;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_1000056C8(0xD000000000000012, 0x8000000100026520, &v65);
        *(v48 + 22) = 2080;
        v52 = sub_100024790();
        v54 = v53;
        v55 = *(v18 + 8);
        v55(v22, v17);
        v56 = sub_1000056C8(v52, v54, &v65);

        *(v48 + 24) = v56;
        v57 = v58;
        _os_log_impl(&_mh_execute_header, v58, v59, "%s %s - %s loaded from cache", v48, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v55 = *(v18 + 8);
        v55(v22, v17);
      }

      (*(v63 + 8))(v12, v64);
      sub_100007C6C(v24);

      v55(v24, v17);
    }
  }

  else
  {
    sub_100024530();
    v36 = v1;
    v37 = sub_1000244C0();
    v38 = sub_100025080();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65 = v40;
      *v39 = 136315138;
      v41 = &v36[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v42 = *&v36[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v43 = *(v41 + 1);

      v44 = sub_1000056C8(v42, v43, &v65);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s expected an active converstation, confused!", v39, 0xCu);
      sub_100005794(v40);
    }

    (*(v63 + 8))(v7, v64);
  }
}

uint64_t sub_10000A390@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000244D0();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v42 - v8;
  v9 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = sub_1000243D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v44 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100024500();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for PeopleURL.Parameter.requestID(_:), v20);
  v43 = sub_100010494(v24);
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
        sub_1000243B0();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      (*(v17 + 56))(v13, v30, 1, v16);
      sub_10000DAE0(v13, v15);
      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        v40 = v44;
        (*(v17 + 32))(v44, v15, v16);
        v41 = *(v45 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader);
        sub_10000F580(v43, v26, v49);

        return (*(v17 + 8))(v40, v16);
      }
    }

    else
    {

      (*(v17 + 56))(v15, 1, 1, v16);
    }

    sub_100006270(v15, &qword_1000351F0, &qword_100027160);
    v34 = v46;
    sub_100024530();
    v35 = sub_1000244C0();
    v36 = sub_100025080();
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
    sub_100024530();
    v31 = sub_1000244C0();
    v32 = sub_100025080();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "conversation.requestID is nil", v33, 2u);
    }

    (*(v47 + 8))(v7, v48);
  }

  v38 = sub_1000247B0();
  return (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
}

id sub_10000A8F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_100024480();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  sub_100024470();
  v13 = sub_100024460();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  *v12 = v13;
  v12[1] = v15;
  v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  *&v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
  v16 = &v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 0;
  v17 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader;
  if (qword_1000350F0 != -1)
  {
    swift_once();
  }

  v19 = *(qword_100036760 + 16);
  v18 = *(qword_100036760 + 24);
  v30 = sub_100024860();
  v31 = &protocol witness table for MessageDetailsCache;
  *&v29 = v19;
  v27 = sub_100024880();
  v28 = &protocol witness table for ResolvedFamilyCache;
  *&v26 = v18;
  type metadata accessor for MessageDetailsLoader();
  v20 = swift_allocObject();
  v20[3] = 0;
  swift_unknownObjectWeakInit();
  v20[5] = 0;
  swift_unknownObjectWeakInit();
  v20[16] = 0;
  sub_10000E5EC(&v29, (v20 + 6));
  sub_10000E5EC(&v26, (v20 + 11));
  *&v4[v17] = v20;

  if (a2)
  {
    v21 = sub_100024E80();
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for RequestMessageViewController();
  v25.receiver = v4;
  v25.super_class = v22;
  v23 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", v21, a3);

  return v23;
}

id sub_10000ABF0(void *a1)
{
  v2 = v1;
  v4 = sub_100024480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  sub_100024470();
  v10 = sub_100024460();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
  v13 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 0;
  v14 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader;
  if (qword_1000350F0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_100036760 + 16);
  v15 = *(qword_100036760 + 24);
  v26 = sub_100024860();
  v27 = &protocol witness table for MessageDetailsCache;
  *&v25 = v16;
  v23 = sub_100024880();
  v24 = &protocol witness table for ResolvedFamilyCache;
  *&v22 = v15;
  type metadata accessor for MessageDetailsLoader();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  v17[5] = 0;
  swift_unknownObjectWeakInit();
  v17[16] = 0;
  sub_10000E5EC(&v25, (v17 + 6));
  sub_10000E5EC(&v22, (v17 + 11));
  *&v2[v14] = v17;
  v18 = type metadata accessor for RequestMessageViewController();
  v21.receiver = v2;
  v21.super_class = v18;

  v19 = objc_msgSendSuper2(&v21, "initWithCoder:", a1);

  if (v19)
  {
  }

  return v19;
}

id sub_10000AE7C(char a1)
{
  v2 = v1;
  v4 = sub_100024480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  sub_100024470();
  v10 = sub_100024460();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
  v13 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 0;
  v14 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader;
  if (qword_1000350F0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_100036760 + 16);
  v15 = *(qword_100036760 + 24);
  v25 = sub_100024860();
  v26 = &protocol witness table for MessageDetailsCache;
  *&v24 = v16;
  v22 = sub_100024880();
  v23 = &protocol witness table for ResolvedFamilyCache;
  *&v21 = v15;
  type metadata accessor for MessageDetailsLoader();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  v17[5] = 0;
  swift_unknownObjectWeakInit();
  v17[16] = 0;
  sub_10000E5EC(&v24, (v17 + 6));
  sub_10000E5EC(&v21, (v17 + 11));
  *&v2[v14] = v17;
  v18 = type metadata accessor for RequestMessageViewController();
  v20.receiver = v2;
  v20.super_class = v18;

  return objc_msgSendSuper2(&v20, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

uint64_t sub_10000B110()
{
  v1[2] = v0;
  v2 = sub_1000244D0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_100024FD0();
  v1[7] = sub_100024FC0();
  v6 = sub_100024FA0();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_10000B210, v6, v5);
}

uint64_t sub_10000B210()
{
  v38 = v0;
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive) == 1)
  {
    v2 = [*(v0 + 16) activeConversation];
    *(v0 + 80) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_10000B538;
      v5 = *(v0 + 16);

      return sub_10000877C(v3);
    }

    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 16);

    sub_100024530();
    v27 = v26;
    v10 = sub_1000244C0();
    v11 = sub_100025080();

    v28 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 48);
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);
    if (v28)
    {
      v29 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315138;
      v30 = v29 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID;
      v31 = *(v29 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v32 = *(v30 + 8);

      v33 = sub_1000056C8(v31, v32, &v37);

      *(v17 + 4) = v33;
      v23 = "%s conversation is nil";
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);

    sub_100024530();
    v9 = v1;
    v10 = sub_1000244C0();
    v11 = sub_100025070();

    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 24);
    if (v12)
    {
      v16 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315138;
      v19 = v16 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID;
      v20 = *(v16 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v21 = *(v19 + 8);

      v22 = sub_1000056C8(v20, v21, &v37);

      *(v17 + 4) = v22;
      v23 = "%s has been deactivated prior to notify!";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v23, v17, 0xCu);
      sub_100005794(v18);
    }
  }

  (*(v14 + 8))(v13, v15);
  v35 = *(v0 + 40);
  v34 = *(v0 + 48);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10000B538()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_10000B658, v4, v3);
}

uint64_t sub_10000B658()
{
  v1 = v0[10];
  v2 = v0[7];

  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1000244D0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_100024FD0();
  v4[6] = sub_100024FC0();
  v9 = sub_100024FA0();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_10000B7C4, v9, v8);
}

uint64_t sub_10000B7C4()
{
  v21 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_100024530();
  v3 = v2;
  v4 = sub_1000244C0();
  v5 = sub_100025070();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = v10 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID;
    v14 = *(v10 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
    v15 = *(v13 + 8);

    v16 = sub_1000056C8(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s responding to event notify)", v11, 0xCu);
    sub_100005794(v12);
  }

  (*(v8 + 8))(v7, v9);
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_10000B98C;
  v18 = v0[2];

  return sub_10000B110();
}

uint64_t sub_10000B98C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_10000BAAC, v4, v3);
}

uint64_t sub_10000BAAC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000BB14()
{
  v1 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  sub_100024FE0();
  v5 = sub_100025000();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_100024FD0();
  v6 = v0;
  v7 = sub_100024FC0();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100002F74(0, 0, v4, &unk_100026FB8, v8);
}

uint64_t sub_10000BC40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000BC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006598;

  return sub_10000B6D0(a1, v4, v5, v6);
}

uint64_t sub_10000BD34(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1000244D0();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_1000243D0();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v2[11] = *(v7 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = *(*(sub_10000269C(&qword_1000351E0, &qword_100026E30) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_100024FD0();
  v2[16] = sub_100024FC0();
  v10 = sub_100024FA0();
  v2[17] = v10;
  v2[18] = v9;

  return _swift_task_switch(sub_10000BED4, v10, v9);
}

uint64_t sub_10000BED4()
{
  v54 = v0;
  v1 = v0[4];
  if (sub_1000245B0())
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[4];
    v9 = v0[5];
    sub_100024FE0();
    v10 = sub_100025000();
    (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
    (*(v6 + 16))(v4, v8, v7);
    v11 = v9;
    v12 = sub_100024FC0();
    v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = v12;
    *(v14 + 3) = &protocol witness table for MainActor;
    *(v14 + 4) = v11;
    (*(v6 + 32))(&v14[v13], v4, v7);
    v15 = sub_1000032C8(0, 0, v2, &unk_100027020, v14);
    v0[19] = v15;
    v16 = async function pointer to Task<>.value.getter[1];
    v17 = swift_task_alloc();
    v0[20] = v17;
    v18 = sub_10000269C(&qword_100035328, &qword_100026EA0);
    *v17 = v0;
    v17[1] = sub_10000C34C;

    return Task<>.value.getter(v0 + 2, v15, v18);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[12];
    v21 = v0[9];
    v22 = v0[10];
    v23 = v0[8];
    v24 = v0[4];
    v25 = v0[5];

    sub_100024530();
    (*(v22 + 16))(v20, v24, v21);
    v26 = v25;
    v27 = sub_1000244C0();
    v28 = sub_100025080();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    v34 = v0[7];
    v33 = v0[8];
    v35 = v0[6];
    if (v29)
    {
      v52 = v0[8];
      v36 = v0[5];
      v51 = v0[6];
      v37 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v37 = 136315394;
      v39 = *(v36 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v38 = *(v36 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8);

      v40 = sub_1000056C8(v39, v38, &v53);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      sub_10000E2C8(&qword_100035358, &type metadata accessor for URL);
      v41 = sub_1000251A0();
      v43 = v42;
      (*(v31 + 8))(v30, v32);
      v44 = sub_1000056C8(v41, v43, &v53);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - %s not in trusted list", v37, 0x16u);
      swift_arrayDestroy();

      (*(v34 + 8))(v52, v51);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      (*(v34 + 8))(v33, v35);
    }

    v46 = v0[13];
    v45 = v0[14];
    v47 = v0[12];
    v48 = v0[8];

    v49 = v0[1];

    return v49(0, 0xF000000000000000);
  }
}

uint64_t sub_10000C34C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return _swift_task_switch(sub_10000C46C, v4, v3);
}

uint64_t sub_10000C46C()
{
  v1 = v0[19];
  v2 = v0[16];

  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9(v4, v3);
}

uint64_t sub_10000C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000243D0();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_1000244D0();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_100024FD0();
  v5[11] = sub_100024FC0();
  v13 = sub_100024FA0();

  return _swift_task_switch(sub_10000C670, v13, v12);
}

uint64_t sub_10000C670()
{
  v38 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  sub_100024530();
  (*(v4 + 16))(v3, v6, v5);
  v8 = v7;
  v9 = sub_1000244C0();
  v10 = sub_100025070();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v36 = v0[10];
    v18 = v0[3];
    v35 = v0[8];
    v19 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v19 = 136315394;
    v21 = *(v18 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
    v20 = *(v18 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8);

    v22 = sub_1000056C8(v21, v20, v37);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = sub_100024370();
    v25 = v24;
    (*(v16 + 8))(v14, v17);
    v26 = sub_1000056C8(v23, v25, v37);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - Fetching %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v36, v35);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v27 = v0[4];
  v28 = sub_1000243E0();
  v29 = v0[10];
  v30 = v0[7];
  v31 = v0[2];
  *v31 = v28;
  v31[1] = v32;

  v33 = v0[1];

  return v33();
}

uint64_t sub_10000C900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100024610();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_10000269C(&qword_1000351F0, &qword_100027160) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_1000243D0();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  sub_100024FD0();
  v3[12] = sub_100024FC0();
  v12 = sub_100024FA0();
  v3[13] = v12;
  v3[14] = v11;

  return _swift_task_switch(sub_10000CA8C, v12, v11);
}

uint64_t sub_10000CA8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1000247B0();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = sub_100024750();
  if (!v5)
  {
    v6 = v0[2];
    v4 = sub_100024790();
  }

  v7 = v4;
  v8 = v5;
  v0[15] = v4;
  v0[16] = v5;
  v9 = v0[2];
  v10 = sub_1000246B0();
  if (v11 >> 60 == 15)
  {
    if (qword_100035088 != -1)
    {
      swift_once();
    }

    ImageCache.getFromCache(_:)(v7, v8);
    if (v12 >> 60 != 15)
    {
      v13 = v0[2];
      sub_1000246C0();
    }
  }

  else
  {
    sub_10000E2B4(v10, v11);
  }

  v14 = v0[2];
  v15 = sub_1000246B0();
  if (v16 >> 60 == 15)
  {
    v17 = v0[2];
    sub_1000246D0();
    if (v18)
    {
      v19 = v0[9];
      v20 = v0[10];
      v21 = v0[8];
      sub_1000243C0();

      if ((*(v20 + 48))(v21, 1, v19) != 1)
      {
        (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
        v44 = swift_task_alloc();
        v0[17] = v44;
        *v44 = v0;
        v44[1] = sub_10000CE04;
        v45 = v0[11];
        v46 = v0[4];

        return sub_10000BD34(v45);
      }

      sub_100006270(v0[8], &qword_1000351F0, &qword_100027160);
    }
  }

  else
  {
    sub_10000E2B4(v15, v16);
  }

  v22 = v0[2];
  v23 = sub_1000246B0();
  if (v24 >> 60 == 15)
  {
    v25 = v0[2];
    v26 = sub_100024750();
    v0[20] = v27;
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v31 = v0[6];
      v30 = v0[7];
      v32 = v0[5];
      sub_100024820();
      (*(v31 + 104))(v30, enum case for FirstPartyApps.none(_:), v32);
      v33 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
      v34 = swift_task_alloc();
      v0[21] = v34;
      *v34 = v0;
      v34[1] = sub_10000D184;
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
    sub_10000E2B4(v23, v24);
  }

  v40 = v0[11];
  v41 = v0[7];
  v42 = v0[8];

  v43 = v0[1];

  return v43();
}

uint64_t sub_10000CE04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v9 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;

  v6 = *(v3 + 112);
  v7 = *(v3 + 104);

  return _swift_task_switch(sub_10000CF2C, v7, v6);
}

uint64_t sub_10000CF2C()
{
  if (v0[19] >> 60 == 15)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  else
  {
    v1 = v0[2];
    sub_100003274(v0[18], v0[19]);
    sub_1000246C0();
    if (qword_100035088 != -1)
    {
      swift_once();
    }

    v3 = v0[18];
    v2 = v0[19];
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    ImageCache.addToCache(_:image:)(v0[15], v0[16], v3, v2);
    sub_10000E2B4(v3, v2);
    (*(v5 + 8))(v4, v6);
  }

  v7 = v0[2];
  v8 = sub_1000246B0();
  if (v9 >> 60 == 15)
  {
    v10 = v0[2];
    v11 = sub_100024750();
    v0[20] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v16 = v0[6];
      v15 = v0[7];
      v17 = v0[5];
      sub_100024820();
      (*(v16 + 104))(v15, enum case for FirstPartyApps.none(_:), v17);
      v18 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
      v19 = swift_task_alloc();
      v0[21] = v19;
      *v19 = v0;
      v19[1] = sub_10000D184;
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
    sub_10000E2B4(v8, v9);
  }

  v25 = v0[11];
  v26 = v0[7];
  v27 = v0[8];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000D184(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_10000D32C, v11, v10);
}

uint64_t sub_10000D32C()
{
  v1 = v0[23];
  v2 = v0[12];

  if (v1 >> 60 == 15)
  {
    v3 = v0[16];

    if (qword_100035090 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    sub_10000E2A0(qword_1000366E0, qword_1000366E8);
  }

  else
  {
    if (qword_100035088 != -1)
    {
      swift_once();
    }

    v5 = v0[2];
    ImageCache.addToCache(_:image:)(v0[15], v0[16], v0[22], v0[23]);
  }

  sub_1000246C0();
  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

void sub_10000D498(void *a1)
{
  v3 = sub_1000244D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v49 = v10;
      v11 = [v1 childViewControllers];
      sub_10000E258(0, &qword_1000353F8, UIViewController_ptr);
      v12 = sub_100024F90();

      sub_10000E13C(v12);

      [v1 addChildViewController:a1];
      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        v15 = objc_opt_self();
        v16 = [v15 clearColor];
        [v14 setBackgroundColor:v16];

        v17 = [v15 clearColor];
        [v9 setBackgroundColor:v17];

        v18 = [v1 view];
        if (v18)
        {
          v19 = v18;
          [v18 insertSubview:v9 atIndex:0];

          [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
          v20 = objc_opt_self();
          sub_10000269C(&qword_100035400, &qword_100026FF0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_100026F40;
          v22 = [v9 leadingAnchor];
          v23 = [v49 safeAreaLayoutGuide];
          v24 = [v23 leadingAnchor];

          v25 = [v22 constraintEqualToAnchor:v24];
          *(v21 + 32) = v25;
          v26 = [v9 trailingAnchor];
          v27 = [v49 safeAreaLayoutGuide];
          v28 = [v27 trailingAnchor];

          v29 = [v26 constraintEqualToAnchor:v28];
          *(v21 + 40) = v29;
          v30 = [v9 topAnchor];
          v31 = [v49 safeAreaLayoutGuide];
          v32 = [v31 topAnchor];

          v33 = [v30 constraintEqualToAnchor:v32];
          *(v21 + 48) = v33;
          v34 = [v9 bottomAnchor];
          v35 = [v49 safeAreaLayoutGuide];
          v36 = [v35 bottomAnchor];

          v37 = [v34 constraintEqualToAnchor:v36];
          *(v21 + 56) = v37;
          sub_10000E258(0, &qword_100035408, NSLayoutConstraint_ptr);
          isa = sub_100024F80().super.isa;

          [v20 activateConstraints:isa];

          [a1 didMoveToParentViewController:v1];
          [v9 setMinimumContentSizeCategory:UIContentSizeCategorySmall];
          [v9 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
          [v1 requestResize];

          v39 = v49;

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  sub_100024530();
  v40 = v1;
  v41 = sub_1000244C0();
  v42 = sub_100025080();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v43 = 136315138;
    v45 = &v40[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v46 = *&v40[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v47 = *(v45 + 1);

    v48 = sub_1000056C8(v46, v47, &v50);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s missing views", v43, 0xCu);
    sub_100005794(v44);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_10000DAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DB50(uint64_t a1)
{
  v2 = sub_10000269C(&qword_100035410, &qword_100026FF8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v56 = &v49 - v4;
  v5 = sub_10000269C(&qword_100035348, &qword_100027000);
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v51 = &v49 - v7;
  v8 = sub_100024450();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = __chkstk_darwin(v8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v53 = &v49 - v13;
  __chkstk_darwin(v12);
  v52 = &v49 - v14;
  v15 = sub_100024650();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  v23 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v49 - v25;
  v27 = sub_1000247B0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  sub_100005934(a1, v26, &qword_1000353F0, &unk_100027140);
  if ((*(v28 + 48))(v26, 1, v33) == 1)
  {
    sub_100006270(v26, &qword_1000353F0, &unk_100027140);
LABEL_5:
    v36 = 1;
    return v36 & 1;
  }

  (*(v28 + 32))(v31, v26, v33);
  sub_100024730();
  (*(v16 + 104))(v20, enum case for MessageDetails.EventStatus.purged(_:), v15);
  sub_10000E2C8(&qword_100035418, &type metadata accessor for MessageDetails.EventStatus);
  v34 = sub_100024E70();
  v35 = *(v16 + 8);
  v35(v20, v15);
  v35(v22, v15);
  if (v34)
  {
    (*(v28 + 8))(v31, v33);
    goto LABEL_5;
  }

  v37 = v33;
  v38 = v52;
  sub_100024440();
  v39 = v53;
  sub_1000246F0();
  v40 = v56;
  sub_100024700();
  v42 = v54;
  v41 = v55;
  if ((*(v54 + 48))(v40, 1, v55) == 1)
  {
    sub_100006270(v40, &qword_100035410, &qword_100026FF8);
    v44 = v57;
    v43 = v58;
  }

  else
  {
    v45 = v51;
    (*(v42 + 32))(v51, v40, v41);
    v46 = v50;
    sub_100024430();
    (*(v42 + 8))(v45, v41);
    v44 = v57;
    v43 = v58;
    (*(v57 + 8))(v39, v58);
    (*(v44 + 32))(v39, v46, v43);
  }

  v36 = sub_100024420();
  v47 = *(v44 + 8);
  v47(v39, v43);
  v47(v38, v43);
  (*(v28 + 8))(v31, v37);
  return v36 & 1;
}

void sub_10000E13C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100025170())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100025150();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 willMoveToParentViewController:0];
      v7 = [v5 view];
      [v7 removeFromSuperview];

      [v5 removeFromParentViewController];
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_10000E258(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000E2A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003274(a1, a2);
  }

  return a1;
}

uint64_t sub_10000E2B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002D50(a1, a2);
  }

  return a1;
}

uint64_t sub_10000E2C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E310()
{
  v1 = sub_1000243D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E3DC(uint64_t a1)
{
  v4 = *(sub_1000243D0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002E80;

  return sub_10000C51C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000E4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_100035420, &qword_100027030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E544(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000E5A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000E5EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000E604()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006598;

  return sub_1000084BC(a1, v4, v5, v7, v6);
}

void sub_10000E744()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_100035430 = v1 == 5;
}

uint64_t sub_10000E7A8()
{
  result = sub_100024B50();
  qword_1000366F0 = result;
  return result;
}

uint64_t sub_10000E7C8()
{
  if (qword_100035098 != -1)
  {
    result = swift_once();
  }

  v0 = 28.0;
  if (byte_100035430)
  {
    v0 = 22.0;
  }

  qword_1000366F8 = *&v0;
  return result;
}

uint64_t sub_10000E86C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_100024C60();
  *a3 = result;
  return result;
}

uint64_t sub_10000E8B4()
{
  qword_100036718 = sub_100024E20();
  result = sub_100024E30();
  qword_100036720 = result;
  return result;
}

uint64_t sub_10000E8E8()
{
  qword_100036728 = sub_100024E00();
  result = sub_100024E10();
  qword_100036730 = result;
  return result;
}

uint64_t sub_10000E91C()
{
  qword_100036738 = sub_100024DE0();
  result = sub_100024DF0();
  qword_100036740 = result;
  return result;
}

uint64_t sub_10000E950()
{
  qword_100036748 = sub_100024DD0();
  result = sub_100024DD0();
  qword_100036750 = result;
  return result;
}

uint64_t sub_10000E984()
{
  if (qword_100035098 != -1)
  {
    result = swift_once();
  }

  v0 = 60.0;
  if (byte_100035430)
  {
    v0 = 48.0;
  }

  qword_100036758 = *&v0;
  return result;
}

uint64_t sub_10000E9F4()
{
  v0 = sub_100024630();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStateStore();
  v5 = swift_allocObject();
  (*(v1 + 104))(v4, enum case for MessageDetails.EventSource.screenTime(_:), v0);
  v6 = [objc_opt_self() defaultManager];
  v11[4] = sub_10000EBBC();
  v11[5] = &protocol witness table for NSFileManager;
  v11[1] = v6;
  v7 = sub_100024860();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + 16) = sub_100024850();
  sub_100024880();
  result = sub_100024870();
  *(v5 + 24) = result;
  qword_100036760 = v5;
  return result;
}

uint64_t sub_10000EB58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_10000EBBC()
{
  result = qword_1000354E0;
  if (!qword_1000354E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000354E0);
  }

  return result;
}

uint64_t sub_10000EC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_1000243D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  if (*(v4 + 128))
  {
    sub_1000247B0();

    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    sub_100025020();

    v15 = *(v4 + 128);
  }

  *(v4 + 128) = 0;

  sub_100024FE0();
  v16 = sub_100025000();
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_100024FD0();

  v17 = sub_100024FC0();
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
  v22 = sub_100013E4C(0, 0, v14, &unk_100027170, v20);
  v23 = *(v4 + 128);
  *(v4 + 128) = v22;

  return v22;
}

uint64_t sub_10000EEBC@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v58 = a1;
  v61 = a2;
  v3 = sub_1000244D0();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = sub_1000247B0();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000269C(&qword_1000355B0, &qword_100027150);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v53 - v16;
  v18 = sub_100024320();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024310();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100006270(v17, &qword_1000355B0, &qword_100027150);
    sub_100024530();
    v23 = sub_1000244C0();
    v24 = sub_100025080();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Can't parse bubble view url components", v25, 2u);
    }

    (*(v62 + 8))(v7, v63);
    sub_100014D78();
    swift_allocError();
    *v26 = 2;
    return swift_willThrow();
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_100024660();
    if (v2)
    {
      return (*(v19 + 8))(v22, v18);
    }

    else
    {
      v28 = sub_100024750();
      if (!v29)
      {
        v28 = sub_100024790();
      }

      v30 = v28;
      v31 = v29;
      v32 = sub_1000246B0();
      if (v33 >> 60 == 15)
      {
        if (qword_100035088 != -1)
        {
          swift_once();
        }

        ImageCache.getFromCache(_:)(v30, v31);
        v35 = v34;

        if (v35 >> 60 != 15)
        {
          sub_1000246C0();
        }
      }

      else
      {
        v36 = v32;
        v37 = v33;

        sub_10000E2B4(v36, v37);
      }

      if (v58)
      {
        v38 = v9;
        v39 = sub_1000246B0();
        if (v40 >> 60 == 15)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            if (qword_100035090 != -1)
            {
              swift_once();
            }

            v41 = qword_1000366E8;
            if (qword_1000366E8 >> 60 != 15)
            {
              v42 = qword_1000366E0;
              sub_10000E2A0(qword_1000366E0, qword_1000366E8);
              sub_100003274(v42, v41);
              sub_1000246C0();
              sub_100024530();
              v43 = sub_1000244C0();
              v58 = sub_100025060();
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
                v46 = sub_100024790();
                v57 = v38;
                v48 = v47;
                swift_endAccess();
                v49 = sub_1000056C8(v46, v48, &v64);

                *(v45 + 4) = v49;
                v50 = v54;
                _os_log_impl(&_mh_execute_header, v54, v58, "%s - using fallback icon", v45, 0xCu);
                sub_100005794(v56);

                sub_10000E2B4(v55, v41);
                (*(v62 + 8))(v57, v63);
              }

              else
              {

                sub_10000E2B4(v42, v41);
                (*(v62 + 8))(v38, v63);
              }
            }
          }
        }

        else
        {
          sub_10000E2B4(v39, v40);
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

uint64_t sub_10000F580@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, char *a3@<X8>)
{
  v126 = a2;
  v120 = a3;
  v5 = sub_1000244D0();
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
  v108 = sub_1000247F0();
  v107 = *(v108 - 8);
  v15 = *(v107 + 64);
  __chkstk_darwin(v108);
  v104 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v106 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v105 = &v102 - v22;
  __chkstk_darwin(v21);
  v109 = &v102 - v23;
  v24 = sub_1000247B0();
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
  v34 = sub_10000269C(&qword_1000353F0, &unk_100027140);
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
  sub_10000EEBC(1, v43);
  v119 = a1;
  sub_100006270(v45, &qword_1000353F0, &unk_100027140);
  (v48)(v43, 0, 1, v24);
  sub_100014DCC(v43, v45, &qword_1000353F0, &unk_100027140);
  sub_100005934(v45, v40, &qword_1000353F0, &unk_100027140);
  v49 = v127;
  v50 = *(v127 + 48);
  v51 = v50(v40, 1, v24);
  v52 = v121;
  if (v51 == 1)
  {
    sub_100006270(v45, &qword_1000353F0, &unk_100027140);
    sub_100006270(v40, &qword_1000353F0, &unk_100027140);
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
    sub_10000E5A8(v52 + 6, v52[9]);
    v57 = v118;
    v58 = v126;
    sub_100024890();
    if (v50(v57, 1, v24) == 1)
    {
      sub_100006270(v57, &qword_1000353F0, &unk_100027140);
      v59 = v113;
      sub_100024530();
      v60 = v58;

      v61 = sub_1000244C0();
      v62 = sub_100025060();

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
        *(v67 + 4) = sub_1000056C8(v119, v60, &v128);
        _os_log_impl(&_mh_execute_header, v61, v62, "%s - cached message details is nil", v67, 0xCu);
        sub_100005794(v69);
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
      sub_100024760();
      v70 = v124;
      if (v71)
      {
        v72 = v110;
        sub_100024530();

        v73 = sub_1000244C0();
        v74 = sub_100025080();

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
          *(v77 + 4) = sub_1000056C8(v76, v58, &v128);
          _os_log_impl(&_mh_execute_header, v73, v74, "%s - userDSID is nil", v77, 0xCu);
          sub_100005794(v79);
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
        sub_10000E5A8(v121 + 11, v121[14]);
        v82 = v109;
        sub_1000248B0();
        sub_100005934(v82, v105, &qword_1000355A8, &unk_100027360);
        sub_100024720();
        v83 = v106;
        sub_100005934(v82, v106, &qword_1000355A8, &unk_100027360);
        v84 = v107;
        v85 = v108;
        if ((*(v107 + 48))(v83, 1, v108) == 1)
        {
          sub_100006270(v82, &qword_1000355A8, &unk_100027360);
          v86 = v83;
        }

        else
        {
          v87 = v104;
          (*(v84 + 32))(v104, v83, v85);
          v88 = sub_1000247C0();
          sub_1000250B0();

          sub_100024780();
          (*(v84 + 8))(v87, v85);
          v86 = v109;
        }

        sub_100006270(v86, &qword_1000355A8, &unk_100027360);
        v70 = v124;
      }

      v89 = v111;
      sub_100024620();
      v90 = *(v127 + 8);
      v91 = v123;
      v90(v123, v24);
      v115(v91, v89, v24);
      v92 = v112;
      sub_100024530();
      v93 = v126;

      v94 = sub_1000244C0();
      v95 = sub_100025060();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = v93;
        v99 = v46;
        v100 = v97;
        v128 = v97;
        *v96 = 136315138;
        *(v96 + 4) = sub_1000056C8(v119, v98, &v128);
        _os_log_impl(&_mh_execute_header, v94, v95, "%s - loaded cached message details from cache", v96, 0xCu);
        sub_100005794(v100);
        v46 = v99;
      }

      (*(v70 + 8))(v92, v125);
      v90(v114, v24);
      v90(v122, v24);
      v80 = v103;
    }

    sub_100006270(v80, &qword_1000353F0, &unk_100027140);
    v54 = v120;
    v115(v120, v123, v24);
    v53 = 0;
  }

  return (v46)(v54, v53, 1, v24);
}

Swift::Int sub_1000103CC()
{
  v1 = *v0;
  sub_100025210();
  sub_100025220(v1);
  return sub_100025230();
}

Swift::Int sub_100010440()
{
  v1 = *v0;
  sub_100025210();
  sub_100025220(v1);
  return sub_100025230();
}

uint64_t sub_100010494(char *a1)
{
  v55 = a1;
  v2 = sub_1000244D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v54 - v8;
  v9 = sub_10000269C(&qword_1000355C0, &qword_100027158);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v54 - v11;
  v13 = sub_10000269C(&qword_1000355B0, &qword_100027150);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v54 - v15;
  v17 = sub_100024320();
  v59 = *(v17 - 8);
  v60 = v17;
  v18 = *(v59 + 64);
  __chkstk_darwin(v17);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  v27 = sub_1000243D0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v58 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [v1 selectedMessage];
  if (!v31)
  {
    (*(v28 + 56))(v26, 1, 1, v27);
LABEL_7:
    sub_100006270(v26, &qword_1000351F0, &qword_100027160);
    sub_100024530();
    v36 = sub_1000244C0();
    v37 = sub_100025080();
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
    sub_1000243B0();

    (*(v28 + 56))(v24, 0, 1, v27);
  }

  else
  {
    (*(v28 + 56))(v24, 1, 1, v27);
  }

  sub_100014DCC(v24, v26, &qword_1000351F0, &qword_100027160);
  v2 = v33;
  v3 = v32;
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_7;
  }

  v39 = v58;
  (*(v28 + 32))(v58, v26, v27);
  sub_100024310();
  v41 = v59;
  v40 = v60;
  if ((*(v59 + 48))(v16, 1, v60) == 1)
  {
    sub_100006270(v16, &qword_1000355B0, &qword_100027150);
    v42 = v57;
    sub_100024530();
    v43 = sub_1000244C0();
    v44 = sub_100025080();
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
  v47 = sub_100024300();
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
  sub_100010CA4(sub_100014E34, v48, v49);

  v50 = sub_1000242F0();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    (*(v59 + 8))(v46, v60);
    (*(v28 + 8))(v39, v27);
    sub_100006270(v49, &qword_1000355C0, &qword_100027158);
    return 0;
  }

  v53 = sub_1000242E0();
  (*(v59 + 8))(v46, v60);
  (*(v28 + 8))(v39, v27);
  (*(v51 + 8))(v49, v50);
  return v53;
}

uint64_t sub_100010C08()
{
  v0 = sub_1000242D0();
  v2 = v1;
  if (v0 == sub_1000244F0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000251B0();
  }

  return v4 & 1;
}

uint64_t sub_100010CA4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_1000242F0();
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

uint64_t sub_100010E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = *(*(sub_10000269C(&qword_1000355A8, &unk_100027360) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v9 = sub_1000247F0();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = sub_1000247B0();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();
  sub_100024FD0();
  v7[14] = sub_100024FC0();
  v16 = sub_100024FA0();
  v7[15] = v16;
  v7[16] = v15;

  return _swift_task_switch(sub_100011008, v16, v15);
}

uint64_t sub_100011008()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10000EEBC(0, v0[13]);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_100011124;
  v4 = v0[13];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];
  v8 = v0[3];

  return sub_100011524(v7, v5, v6, v4);
}

uint64_t sub_100011124()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_10001147C;
  }

  else
  {
    v7 = sub_100011260;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100011260()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];

  sub_1000138F4(v6, v3, v4);
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
    sub_100024710();
    v18 = (*(v15 + 48))(v16, 1, v14);
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[11];
    if (v18 == 1)
    {
      v22 = v0[7];
      (*(v20 + 8))(v0[13], v0[11]);
      sub_100006270(v22, &qword_1000355A8, &unk_100027360);
    }

    else
    {
      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v26 = v0[3];
      (*(v24 + 32))(v23, v0[7], v25);
      v27 = v26[15];
      sub_10000E5A8(v26 + 11, v26[14]);
      sub_1000248C0();
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

uint64_t sub_10001147C()
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

uint64_t sub_100011524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_100024FB0();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_1000244D0();
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
  v12 = sub_1000247B0();
  v5[24] = v12;
  v13 = *(v12 - 8);
  v5[25] = v13;
  v14 = *(v13 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = sub_100024FD0();
  v5[30] = sub_100024FC0();
  v16 = sub_100024FA0();
  v5[31] = v16;
  v5[32] = v15;

  return _swift_task_switch(sub_10001173C, v16, v15);
}

uint64_t sub_10001173C()
{
  v120 = v0;
  (*(*(v0 + 200) + 16))(*(v0 + 224), *(v0 + 80), *(v0 + 192));
  sub_100025040();
  *(v0 + 264) = 0;
  v1 = &qword_100027000;
  v2 = *(v0 + 224);
  v3 = sub_1000246B0();
  if (v4 >> 60 == 15)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 72);
    sub_100024530();

    v7 = sub_1000244C0();
    v8 = sub_100025070();

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
      *(v15 + 4) = sub_1000056C8(v14, v13, v119);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s stable details had no thumbnail data. Fetching it.", v15, 0xCu);
      sub_100005794(v16);
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
      v20[1] = sub_1000121E8;
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);

      return sub_10000C900(v21, v22);
    }

    v24 = *(v0 + 168);
    v25 = *(v0 + 72);
    sub_100024530();

    v26 = sub_1000244C0();
    v27 = sub_100025070();

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
      *(v34 + 4) = sub_1000056C8(v32, v33, v119);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s thumbnail is nil", v34, 0xCu);
      sub_100005794(v35);

      v36 = v114;
    }

    else
    {

      v36 = v29;
    }

    v17(v36, v31);
    v1 = &qword_100027000;
  }

  else
  {
    sub_10000E2B4(v3, v4);
  }

  *(v0 + 288) = *(v1 + 10);
  v37 = *(v0 + 264);
  sub_100025040();
  if (v37)
  {
    v38 = v37;
    v39 = *(v0 + 160);
    v40 = *(v0 + 72);
    sub_100024530();

    v41 = sub_1000244C0();
    v42 = sub_100025070();

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
      *(v47 + 4) = sub_1000056C8(v46, v49, v119);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s has been deactivated prior to loading message status!", v47, 0xCu);
      sub_100005794(v48);

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
    sub_100024530();

    v96 = sub_1000244C0();
    v97 = sub_100025070();

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
      *(v105 + 4) = sub_1000056C8(v107, v103, v119);
      _os_log_impl(&_mh_execute_header, v96, v97, "%s messageStatusProvider == nil", v105, 0xCu);
      sub_100005794(v106);

      (*(v101 + 8))(v118, v100);
    }

    else
    {

      (*(v101 + 8))(v99, v100);
    }

    v58 = *(v0 + 224);
    v59 = *(v0 + 192);
    v60 = *(v0 + 200);
    sub_100014D78();
    v38 = swift_allocError();
    *v108 = 3;
LABEL_22:
    swift_willThrow();
    (*(v60 + 8))(v58, v59);
    *(v0 + 368) = *(v1 + 10);
    *(v0 + 360) = v38;
    v61 = *(v0 + 112);
    v62 = *(v0 + 96);
    *(v0 + 40) = v38;
    swift_errorRetain();
    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
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
      sub_10000E2B4(0, 0xF000000000000000);

      v72 = *(v0 + 8);

      return v72();
    }

    else
    {
      v73 = *(v0 + 136);
      v74 = *(v0 + 72);
      sub_100024530();

      swift_errorRetain();
      v75 = sub_1000244C0();
      v76 = sub_100025070();

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
        *(v83 + 4) = sub_1000056C8(v82, v81, v119);
        *(v83 + 12) = 2080;
        swift_getErrorValue();
        v85 = *(v0 + 16);
        v84 = *(v0 + 24);
        v86 = *(v0 + 32);
        v87 = sub_1000251C0();
        v89 = sub_1000056C8(v87, v88, v119);

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
      v90[1] = sub_1000136C0;
      v91 = *(v0 + 80);
      v92 = *(v0 + 88);
      v93 = *(v0 + 56);

      return sub_100014104(v93, v91, 0, 0xF000000000000000);
    }
  }

  v52 = *(v0 + 232);
  *(v0 + 312) = sub_100024FC0();
  v54 = sub_100024FA0();
  *(v0 + 320) = v54;
  *(v0 + 328) = v53;

  return _swift_task_switch(sub_100012A1C, v54, v53);
}

uint64_t sub_1000121E8()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 256);
  v4 = *(v1 + 248);

  return _swift_task_switch(sub_100012308, v4, v3);
}

uint64_t sub_100012308()
{
  v93 = v0;
  v1 = v0[34];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = sub_1000246B0();
  v7 = v6;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 != 15)
  {
    v8 = v0[28];
    sub_100003274(v5, v7);
    sub_1000246C0();
  }

  v0[36] = v5;
  v0[37] = v7;
  v9 = v0[33];
  sub_100025040();
  if (v9)
  {
    v10 = v9;
    v11 = v0[20];
    v12 = v0[9];
    sub_100024530();

    v13 = sub_1000244C0();
    v14 = sub_100025070();

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
      *(v18 + 4) = sub_1000056C8(v20, v81, v92);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s has been deactivated prior to loading message status!", v18, 0xCu);
      sub_100005794(v19);

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
    sub_100024530();

    v65 = sub_1000244C0();
    v66 = sub_100025070();

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
      *(v73 + 4) = sub_1000056C8(v72, v71, v92);
      _os_log_impl(&_mh_execute_header, v65, v66, "%s messageStatusProvider == nil", v73, 0xCu);
      sub_100005794(v74);

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
    sub_100014D78();
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
    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
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
      sub_10000E2B4(v5, v7);

      v41 = v0[1];

      return v41();
    }

    else
    {
      v90 = v7;
      v42 = v0[17];
      v43 = v0[9];
      sub_100024530();

      swift_errorRetain();
      v44 = sub_1000244C0();
      v45 = sub_100025070();

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
        *(v52 + 4) = sub_1000056C8(v50, v51, v92);
        *(v52 + 12) = 2080;
        swift_getErrorValue();
        v54 = v0[2];
        v53 = v0[3];
        v55 = v0[4];
        v56 = sub_1000251C0();
        v58 = sub_1000056C8(v56, v57, v92);

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
      v59[1] = sub_1000136C0;
      v60 = v0[10];
      v61 = v0[11];
      v62 = v0[7];

      return sub_100014104(v62, v60, v5, v90);
    }
  }

  v23 = v0[29];
  v0[39] = sub_100024FC0();
  v25 = sub_100024FA0();
  v0[40] = v25;
  v0[41] = v24;

  return _swift_task_switch(sub_100012A1C, v25, v24);
}

uint64_t sub_100012A1C()
{
  v1 = (v0[38] + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[42] = v2;
  v4 = async function pointer to static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)[1];

  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_100012AF0;
  v6 = v0[28];
  v7 = v0[26];

  return static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)(v7, v6, v3, v2);
}

uint64_t sub_100012AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_100013288;
  }

  else
  {
    v7 = v2[42];

    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_100012C0C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100012C0C()
{
  v1 = v0[39];

  v2 = v0[31];
  v3 = v0[32];

  return _swift_task_switch(sub_100012C70, v2, v3);
}

uint64_t sub_100012C70()
{
  v90 = v0;
  v1 = v0[44];
  sub_100025040();
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

    sub_100024620();
    swift_unknownObjectRelease();
    sub_10000E2B4(v17, v16);
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
  sub_100024530();

  v5 = sub_1000244C0();
  v6 = sub_100025070();

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
    *(v13 + 4) = sub_1000056C8(v12, v11, v89);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s has been deactivated prior to updating details!", v13, 0xCu);
    sub_100005794(v14);

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
  sub_10000269C(&qword_1000353D8, &qword_100026FD0);
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
    sub_10000E2B4(v44, v45);

    v37 = v0[1];
    goto LABEL_8;
  }

  v88 = v44;
  v55 = v0[17];
  v56 = v0[9];
  sub_100024530();

  swift_errorRetain();
  v57 = sub_1000244C0();
  v58 = sub_100025070();

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
    *(v65 + 4) = sub_1000056C8(v64, v63, v89);
    *(v65 + 12) = 2080;
    swift_getErrorValue();
    v67 = v0[2];
    v66 = v0[3];
    v68 = v0[4];
    v69 = sub_1000251C0();
    v71 = sub_1000056C8(v69, v70, v89);

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
  v72[1] = sub_1000136C0;
  v73 = v0[10];
  v74 = v0[11];
  v75 = v0[7];

  return sub_100014104(v75, v73, v88, v45);
}

uint64_t sub_100013288()
{
  v1 = v0[42];
  v2 = v0[39];

  v3 = v0[31];
  v4 = v0[32];

  return _swift_task_switch(sub_1000132F8, v3, v4);
}

uint64_t sub_1000132F8()
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
  sub_10000269C(&qword_1000353D8, &qword_100026FD0);
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
    sub_10000E2B4(v14, v6);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[17];
    v21 = v0[9];
    sub_100024530();

    swift_errorRetain();
    v22 = sub_1000244C0();
    v23 = sub_100025070();

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
      *(v30 + 4) = sub_1000056C8(v29, v28, v51);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v32 = v0[2];
      v31 = v0[3];
      v33 = v0[4];
      v34 = sub_1000251C0();
      v36 = sub_1000056C8(v34, v35, v51);

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
    v37[1] = sub_1000136C0;
    v38 = v0[10];
    v39 = v0[11];
    v40 = v0[7];

    return sub_100014104(v40, v38, v7, v6);
  }
}

uint64_t sub_1000136C0()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v6 = *v0;

  v3 = *(v1 + 256);
  v4 = *(v1 + 248);

  return _swift_task_switch(sub_1000137E0, v4, v3);
}

uint64_t sub_1000137E0()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[30];

  sub_10000E2B4(v1, v2);
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

uint64_t sub_1000138F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  v5 = sub_1000244D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - v12;
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  sub_100024530();

  v16 = sub_1000244C0();
  v17 = sub_100025060();

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
    *(v19 + 4) = sub_1000056C8(a2, a3, &v53);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - Finished background loading details ignoring cache!", v19, 0xCu);
    sub_100005794(v21);
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
  sub_100024530();

  v26 = sub_1000244C0();
  v27 = sub_100025070();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = v49;
    *(v28 + 4) = sub_1000056C8(v49, a3, &v53);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1000056C8(0xD000000000000019, 0x8000000100026720, &v53);
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
  sub_10000E5A8(v46 + 6, v46[9]);
  v32 = v48;
  result = sub_1000248A0();
  if (v32)
  {
    sub_100024530();

    swift_errorRetain();
    v34 = sub_1000244C0();
    v35 = sub_100025080();

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
      *(v37 + 4) = sub_1000056C8(v36, a3, &v53);
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v42;
      *v39 = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - Error saving message details to cache! %@", v37, 0x16u);
      sub_100006270(v39, &qword_1000353E0, &qword_100026FD8);

      sub_100005794(v41);

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

uint64_t sub_100013E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100005934(a3, v24 - v10, &qword_1000351E0, &qword_100026E30);
  v12 = sub_100025000();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006270(v11, &qword_1000351E0, &qword_100026E30);
  }

  else
  {
    sub_100024FF0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100024FA0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_100024EE0() + 32;
      sub_1000247B0();

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

      sub_100006270(a3, &qword_1000351E0, &qword_100026E30);

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

  sub_100006270(a3, &qword_1000351E0, &qword_100026E30);
  sub_1000247B0();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100014104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_1000247F0();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v9 = *(*(sub_10000269C(&qword_1000355A8, &unk_100027360) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v10 = sub_100024650();
  v5[36] = v10;
  v11 = *(v10 - 8);
  v5[37] = v11;
  v12 = *(v11 + 64) + 15;
  v5[38] = swift_task_alloc();
  v13 = sub_1000244D0();
  v5[39] = v13;
  v14 = *(v13 - 8);
  v5[40] = v14;
  v15 = *(v14 + 64) + 15;
  v5[41] = swift_task_alloc();
  v16 = sub_1000247B0();
  v5[42] = v16;
  v17 = *(v16 - 8);
  v5[43] = v17;
  v18 = *(v17 + 64) + 15;
  v5[44] = swift_task_alloc();
  sub_100024FD0();
  v5[45] = sub_100024FC0();
  v20 = sub_100024FA0();
  v5[46] = v20;
  v5[47] = v19;

  return _swift_task_switch(sub_100014364, v20, v19);
}

uint64_t sub_100014364()
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
    v8 = sub_1000246B0();
    if (v9 >> 60 == 15)
    {
      v10 = v0[29];
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_100035090 != -1)
        {
          swift_once();
        }

        v11 = qword_1000366E8;
        if (qword_1000366E8 >> 60 != 15)
        {
          v12 = qword_1000366E0;
          v13 = v0[44];
          v14 = v0[41];
          sub_10000E2A0(qword_1000366E0, qword_1000366E8);
          sub_100003274(v12, v11);
          sub_1000246C0();
          sub_100024530();
          v15 = sub_1000244C0();
          v16 = sub_100025060();
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
            v21 = sub_100024790();
            v23 = v22;
            swift_endAccess();
            v24 = sub_1000056C8(v21, v23, &v57);

            *(v19 + 4) = v24;
            _os_log_impl(&_mh_execute_header, v15, v16, "%s - using fallback icon (2)", v19, 0xCu);
            sub_100005794(v20);

            sub_10000E2B4(v12, v11);
            (*(v18 + 8))(v56, v55);
          }

          else
          {
            v26 = v0[40];
            v25 = v0[41];
            v27 = v0[39];
            sub_10000E2B4(v12, v11);

            (*(v26 + 8))(v25, v27);
          }
        }
      }
    }

    else
    {
      sub_10000E2B4(v8, v9);
    }
  }

  else
  {
    sub_100003274(v0[27], v0[28]);
    sub_1000246C0();
  }

  v28 = v0[44];
  v29 = v0[35];
  v30 = v0[30];
  v31 = v0[31];
  (*(v0[37] + 104))(v0[38], enum case for MessageDetails.EventStatus.purged(_:), v0[36]);
  swift_beginAccess();
  sub_100024740();
  swift_endAccess();
  swift_beginAccess();
  sub_100024710();
  swift_endAccess();
  if ((*(v31 + 48))(v29, 1, v30) != 1)
  {
    v36 = v0[45];
    v37 = v0[35];

    sub_100006270(v37, &qword_1000355A8, &unk_100027360);
    goto LABEL_16;
  }

  v32 = v0[44];
  sub_100006270(v0[35], &qword_1000355A8, &unk_100027360);
  swift_beginAccess();
  v33 = sub_100024760();
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
  sub_100015074();
  v50 = sub_100024600();
  v51 = sub_1000245F0();
  v0[5] = v50;
  v0[6] = &protocol witness table for ContactFetcher;
  v0[2] = v51;
  v52 = async function pointer to static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)[1];
  v53 = swift_task_alloc();
  v0[50] = v53;
  *v53 = v0;
  v53[1] = sub_100014884;
  v54 = v0[34];

  return static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)(v54, v49, 0, 1, v0 + 2, 1);
}

uint64_t sub_100014884()
{
  v2 = *v1;
  v3 = (*v1)[50];
  v4 = *v1;

  if (v0)
  {

    v5 = v2[46];
    v6 = v2[47];
    v7 = sub_100014BBC;
  }

  else
  {
    sub_100005794(v2 + 2);
    v5 = v2[46];
    v6 = v2[47];
    v7 = sub_1000149B0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000149B0()
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
  sub_100024720();
  swift_endAccess();
  v9 = sub_1000247C0();
  sub_1000250B0();

  swift_beginAccess();
  sub_100024780();
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

uint64_t sub_100014BBC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  sub_100005794((v0 + 16));
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_100006270(v2, &qword_1000355A8, &unk_100027360);
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

uint64_t sub_100014CFC()
{
  sub_10000E70C((v0 + 2));
  sub_10000E70C((v0 + 4));
  sub_100005794(v0 + 6);
  sub_100005794(v0 + 11);
  v1 = v0[16];

  return swift_deallocClassInstance();
}

unint64_t sub_100014D78()
{
  result = qword_1000355B8;
  if (!qword_1000355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000355B8);
  }

  return result;
}

uint64_t sub_100014DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000269C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014E54()
{
  v1 = sub_1000243D0();
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

uint64_t sub_100014F38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000243D0() - 8);
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
  v13[1] = sub_100002E80;

  return sub_100010E78(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_100015074()
{
  result = qword_1000355C8;
  if (!qword_1000355C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000355C8);
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

unint64_t sub_100015234()
{
  result = qword_1000355D0;
  if (!qword_1000355D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000355D0);
  }

  return result;
}

uint64_t sub_100015288(uint64_t a1)
{
  v123 = a1;
  v2 = sub_1000244D0();
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
  v116 = sub_1000245A0();
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
  v18 = sub_100024630();
  v119 = *(v18 - 1);
  v120 = v18;
  v19 = *(v119 + 64);
  __chkstk_darwin(v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10000269C(&qword_100035610, &qword_1000272B8);
  v22 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v24 = &v106 - v23;
  v25 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v106 - v31;
  __chkstk_darwin(v30);
  v34 = &v106 - v33;
  v35 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_100005934(&v1[v35], v125, &qword_100035420, &qword_100027030);
  v36 = v126;
  result = sub_100006270(v125, &qword_100035420, &qword_100027030);
  if (v36)
  {
    return result;
  }

  v108 = v29;
  v107 = v21;
  v106 = v35;
  v109 = v1;
  sub_100024670();
  v39 = v119;
  v38 = v120;
  (*(v119 + 104))(v32, enum case for MessageDetails.EventSource.askToBuy(_:), v120);
  (*(v39 + 56))(v32, 0, 1, v38);
  v40 = *(v118 + 48);
  sub_100005934(v34, v24, &qword_1000353E8, &unk_100026FE0);
  sub_100005934(v32, &v24[v40], &qword_1000353E8, &unk_100026FE0);
  v41 = *(v39 + 48);
  if (v41(v24, 1, v38) == 1)
  {
    sub_100006270(v32, &qword_1000353E8, &unk_100026FE0);
    sub_100006270(v34, &qword_1000353E8, &unk_100026FE0);
    v42 = v41(&v24[v40], 1, v38);
    v43 = v124;
    if (v42 == 1)
    {
      sub_100006270(v24, &qword_1000353E8, &unk_100026FE0);
      v44 = v122;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v45 = v39;
  v46 = v108;
  sub_100005934(v24, v108, &qword_1000353E8, &unk_100026FE0);
  v47 = v41(&v24[v40], 1, v38);
  v43 = v124;
  if (v47 == 1)
  {
    sub_100006270(v32, &qword_1000353E8, &unk_100026FE0);
    sub_100006270(v34, &qword_1000353E8, &unk_100026FE0);
    (*(v45 + 8))(v46, v38);
LABEL_7:
    sub_100006270(v24, &qword_100035610, &qword_1000272B8);
    v44 = v122;
    goto LABEL_8;
  }

  v54 = v107;
  (*(v45 + 32))(v107, &v24[v40], v38);
  sub_100016EE4(&qword_100035630, &type metadata accessor for MessageDetails.EventSource);
  v55 = sub_100024E70();
  v56 = *(v45 + 8);
  v56(v54, v38);
  sub_100006270(v32, &qword_1000353E8, &unk_100026FE0);
  sub_100006270(v34, &qword_1000353E8, &unk_100026FE0);
  v56(v108, v38);
  sub_100006270(v24, &qword_1000353E8, &unk_100026FE0);
  v44 = v122;
  if (v55)
  {
LABEL_12:
    v57 = v109;
    if (v109[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] == 1)
    {
      v59 = *&v109[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v58 = *&v109[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

      v60 = sub_100024790();
      v118 = v61;
      v119 = v60;
      v62 = v112;
      v63 = v43;
      v64 = v43;
      v65 = v116;
      (*(v112 + 104))(v63, enum case for StatusType.askToBuyRequest(_:), v116);
      v66 = *(v62 + 16);
      v67 = v115;
      v66(v115, v64, v65);
      v68 = [objc_opt_self() askToBuyStream];
      v120 = [v68 publisher];

      v69 = sub_10000269C(&qword_100035618, &qword_1000272C0);
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      v123 = v69;
      v72 = swift_allocObject();
      *(v72 + qword_100035BF8) = 0;
      v66((v72 + qword_100035BF0), v67, v65);
      v110 = v59;
      v125[0] = v59;
      v125[1] = v58;
      v125[2] = v119;
      v126 = v118;
      v73 = v65;
      v128 = &off_100031520;
      v74 = v109;
      swift_unknownObjectWeakInit();
      sub_100016E38(v125, v72 + qword_100035C00);

      v117 = v74;
      sub_100024530();
      v75 = v111;
      v118 = v66;
      v119 = v62 + 16;
      v66(v111, v67, v65);

      v76 = sub_1000244C0();
      v77 = sub_100025070();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v125[0] = v108;
        *v78 = 136315394;
        v79 = sub_1000056C8(v110, v58, v125);

        *(v78 + 4) = v79;
        *(v78 + 12) = 2080;
        sub_100016EE4(&qword_100035628, &type metadata accessor for StatusType);
        v80 = sub_1000251A0();
        v82 = v81;
        v83 = *(v62 + 8);
        v83(v75, v116);
        v84 = sub_1000056C8(v80, v82, v125);

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

      sub_1000245E0();
      sub_1000245C0();
      v95 = v115;
      v96 = sub_1000245D0();

      v97 = v120;
      v98 = [v120 subscribeOn:v96];
      (v118)(v113, v95, v73);
      v99 = sub_10000269C(&qword_100035620, &unk_1000272C8);
      v100 = *(v99 + 48);
      v101 = *(v99 + 52);
      swift_allocObject();

      v102 = sub_100024830();

      v85(v95, v73);
      v103 = *(v72 + qword_100035BF8);
      *(v72 + qword_100035BF8) = v102;

      v126 = v123;
      v127 = &off_100031950;
      v125[0] = v72;
      v85(v124, v73);
      v104 = v109;
      v105 = v106;
      swift_beginAccess();
      sub_10000E4D4(v125, &v104[v105]);
      return swift_endAccess();
    }

    else
    {
      v86 = v110;
      sub_100024530();
      v87 = v57;
      v88 = sub_1000244C0();
      v89 = sub_100025070();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v90 = 136315394;
        v91 = &v87[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v92 = *&v87[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v93 = *(v91 + 1);

        v94 = sub_1000056C8(v92, v93, v125);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_1000056C8(0xD00000000000001ELL, 0x80000001000267C0, v125);
        _os_log_impl(&_mh_execute_header, v88, v89, "%s has been deactivated prior to %s!", v90, 0x16u);
        swift_arrayDestroy();
      }

      return (*(v44 + 8))(v86, v121);
    }
  }

LABEL_8:
  v48 = v117;
  sub_100024530();
  v49 = sub_1000244C0();
  v50 = sub_100025080();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v121;
  if (v51)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Misconfigured askToBuy details", v53, 2u);
  }

  return (*(v44 + 8))(v48, v52);
}

uint64_t sub_100016048()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AskToBuyMessageViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  *&v0[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = &off_1000316A8;
  swift_unknownObjectWeakAssign();
  v1 = *&v0[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader];
  *(v1 + 40) = &off_100031680;
  swift_unknownObjectWeakAssign();
  *(v1 + 24) = &off_100031690;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1000163F0()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController_fallbackThumbnail;
  v2 = sub_100024610();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100016458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskToBuyMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AskToBuyMessageViewController()
{
  result = qword_100035600;
  if (!qword_100035600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016550()
{
  result = sub_100024610();
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

uint64_t sub_1000165E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController_fallbackThumbnail;
  v4 = sub_100024610();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100016658(uint64_t a1)
{
  v2 = sub_1000247B0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = type metadata accessor for AskToBuyBubble();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_10001A464(v5);
}

uint64_t sub_100016734(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100024FD0();
  v3[5] = sub_100024FC0();
  v5 = sub_100024FA0();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1000167D0, v5, v4);
}

uint64_t sub_1000167D0()
{
  v1 = (v0[4] + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[8] = v2;
  v4 = async function pointer to static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)[1];

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1000168A0;
  v6 = v0[2];
  v7 = v0[3];

  return static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)(v6, v7, v3, v2);
}

uint64_t sub_1000168A0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_100016A20;
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_1000169BC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000169BC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100016A20()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100016A90(void *a1)
{
  v2 = v1;
  v4 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29[-1] - v6;
  v8 = sub_1000245A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100016E98();
  v32 = &protocol witness table for BMAskToBuyEvent;
  v30[0] = a1;
  v13 = *sub_10000E5A8(v30, v31);
  a1;
  sub_1000250C0();
  sub_100016EE4(&qword_100035640, &type metadata accessor for StatusType);
  sub_100024F70();
  sub_100024F70();
  if (v29[0] == v29[6] && v29[1] == v29[7])
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v14 = sub_1000251B0();
    (*(v9 + 8))(v12, v8);

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v15 = v2 + qword_100035C00;
  v17 = *(v15 + 16);
  v16 = *(v15 + 24);

  if (v17 == sub_1000250F0() && v16 == v18)
  {
  }

  else
  {
    v19 = sub_1000251B0();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_100016F2C(v15, v29);
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = v29[5];
  sub_100016F88(v29);
  if (Strong)
  {
    v22 = sub_100025000();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = Strong;
    v23[5] = v21;
    sub_100002F74(0, 0, v7, &unk_1000272E0, v23);
  }

LABEL_11:
  sub_100005794(v30);
  v24 = sub_10000269C(&qword_100035648, &qword_1000272D8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  return sub_100024490();
}

unint64_t sub_100016E98()
{
  result = qword_100035638;
  if (!qword_100035638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035638);
  }

  return result;
}

uint64_t sub_100016EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016FDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001701C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002E80;

  return sub_10001F810(a1, v4, v5, v7, v6);
}

uint64_t sub_1000170F0()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac;
  v2 = *(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    LOBYTE(v2) = v4 == 5;
    *(v0 + v1) = v4 == 5;
  }

  return v2 & 1;
}

uint64_t sub_100017170(uint64_t a1, uint64_t a2)
{
  v3 = sub_100024630();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10001A358(&qword_1000357F8, &type metadata accessor for MessageDetails.EventSource), v9 = sub_100024E50(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
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
      sub_10001A358(&qword_100035630, &type metadata accessor for MessageDetails.EventSource);
      v17 = sub_100024E70();
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

uint64_t sub_100017388()
{
  v0 = sub_100024650();
  v76 = *(v0 - 8);
  v77 = v0;
  v1 = *(v76 + 64);
  v2 = __chkstk_darwin(v0);
  v71 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v73 = &v67 - v5;
  __chkstk_darwin(v4);
  v75 = &v67 - v6;
  v7 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v74 = &v67 - v12;
  __chkstk_darwin(v11);
  v14 = &v67 - v13;
  v15 = sub_1000247F0();
  v82 = *(v15 - 8);
  v16 = *(v82 + 64);
  v17 = __chkstk_darwin(v15);
  v80 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v72 = &v67 - v20;
  __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = sub_1000244D0();
  v78 = *(v23 - 8);
  v79 = v23;
  v24 = *(v78 + 64);
  __chkstk_darwin(v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v67 - v29;
  v31 = sub_100024630();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  sub_100024670();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_100006270(v30, &qword_1000353E8, &unk_100026FE0);
  }

  else
  {
    (*(v32 + 32))(v35, v30, v31);
    if (qword_1000350F8 != -1)
    {
      swift_once();
    }

    v36 = sub_100017170(v35, qword_100035650);
    (*(v32 + 8))(v35, v31);
    if (v36)
    {
      goto LABEL_30;
    }
  }

  sub_100024520();
  swift_retain_n();
  v37 = sub_1000244C0();
  v38 = sub_100025070();
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
  sub_100024710();
  v40 = v82;
  v41 = *(v82 + 48);
  if (v41(v14, 1, v15) == 1)
  {
    sub_100006270(v14, &qword_1000355A8, &unk_100027360);
    v42 = 1;
    v43 = v40;
  }

  else
  {
    (*(v40 + 32))(v22, v14, v15);
    v44 = sub_1000247E0();
    if (v44 >> 62)
    {
      v45 = sub_100025170();
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
  sub_100024710();
  if (v41(v46, 1, v15) == 1)
  {
    sub_100006270(v46, &qword_1000355A8, &unk_100027360);
    goto LABEL_19;
  }

  v47 = v72;
  (*(v43 + 32))(v72, v46, v15);
  v48 = sub_1000247D0();
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
  sub_100024730();
  v53 = sub_100024640();
  v55 = v54;
  (*(v76 + 8))(v52, v77);
  v56 = sub_1000056C8(v53, v55, v86);

  *(v39 + 16) = v56;
  v57 = v70;
  _os_log_impl(&_mh_execute_header, v70, v69, "[canPresentApprovalActions] familyIsEmpty: %{BOOL}d, amIaParent: %{BOOL}d, details.status: %s", v39, 0x18u);
  sub_100005794(v68);

  (*(v78 + 8))(v26, v79);
LABEL_21:
  v58 = v81;
  sub_100024710();
  if ((*(v43 + 48))(v58, 1, v15) == 1)
  {
    sub_100006270(v58, &qword_1000355A8, &unk_100027360);
LABEL_30:
    v62 = 0;
    return v62 & 1;
  }

  (*(v43 + 32))(v80, v58, v15);
  v59 = sub_1000247E0();
  if (v59 >> 62)
  {
    v60 = sub_100025170();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v43 + 8))(v80, v15);
  if (!v60 || (sub_100017D54() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100024730();
  v61 = v71;
  (*(v76 + 104))(v71, enum case for MessageDetails.EventStatus.pending(_:), v77);
  sub_10001A358(&qword_100035808, &type metadata accessor for MessageDetails.EventStatus);
  sub_100024F70();
  sub_100024F70();
  if (v86[0] == v84 && v86[1] == v85)
  {
    v62 = 1;
  }

  else
  {
    v62 = sub_1000251B0();
  }

  v64 = *(v76 + 8);
  v65 = v61;
  v66 = v77;
  v64(v65, v77);
  v64(v73, v66);

  return v62 & 1;
}

id sub_100017D54()
{
  v0 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_1000247F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024710();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100006270(v3, &qword_1000355A8, &unk_100027360);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = sub_1000247D0();
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

uint64_t sub_100017F20(char *a1)
{
  v2 = v1;
  v4 = sub_1000247B0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isIpad) = 2;
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac) = 2;
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController) = 0;
  v9 = v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_resolvedSize;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v11 = v5[2];
  v11(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details, a1, v4);
  v11(v8, (v2 + v10), v4);
  v12 = sub_1000246B0();
  v14 = v13;
  v15 = v5[1];
  v15(v8, v4);
  if (v14 >> 60 == 15)
  {
    v12 = 0;
    v14 = 0xC000000000000000;
  }

  v16 = objc_allocWithZone(UIImage);
  isa = sub_1000243F0().super.isa;
  v18 = [v16 initWithData:isa];

  sub_100002D50(v12, v14);
  if (!v18)
  {
    v18 = [objc_allocWithZone(UIImage) init];
  }

  v15(a1, v4);
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_image) = v18;
  return v2;
}

uint64_t sub_100018120()
{
  v1 = sub_1000244D0();
  v131 = *(v1 - 8);
  v132 = v1;
  v2 = *(v131 + 64);
  v3 = __chkstk_darwin(v1);
  v129 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v128 = &v121 - v5;
  v6 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v122 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &v121 - v10;
  v11 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v133 = &v121 - v13;
  v14 = sub_1000247F0();
  v15 = *(v14 - 8);
  v134 = v14;
  v135 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v130 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024650();
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
  v139 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v140 = v0;
  sub_100024730();
  v141 = v19[13];
  v142 = v19 + 13;
  v141(v40, enum case for MessageDetails.EventStatus.pending(_:), v18);
  sub_10001A358(&qword_100035808, &type metadata accessor for MessageDetails.EventStatus);
  sub_100024F70();
  v43 = v18;
  sub_100024F70();
  if (v146 == v144 && v147 == v145)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_1000251B0();
  }

  v45 = v19[1];
  v45(v40, v43);
  v46 = v42;
  v138 = v45;
  v47 = (v19 + 1);
  v45(v46, v43);

  if (v44)
  {
    return sub_100024F10();
  }

  sub_100024730();
  v141(v35, enum case for MessageDetails.EventStatus.expired(_:), v43);
  sub_100024F70();
  sub_100024F70();
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

  v52 = sub_1000251B0();
  v53 = v35;
  v54 = v138;
  v138(v53, v43);
  v54(v143, v43);

  if (v52)
  {
    return 2099744;
  }

  v55 = v136;
  sub_100024730();
  v141(v137, enum case for MessageDetails.EventStatus.unknown(_:), v43);
  sub_100024F70();
  sub_100024F70();
  if (v146 == v144 && v147 == v145)
  {
    v54(v137, v43);
    v54(v55, v43);
    goto LABEL_10;
  }

  v56 = sub_1000251B0();
  v54(v137, v43);
  v54(v55, v43);

  if (v56)
  {
    return 2099744;
  }

  v57 = v133;
  sub_100024710();
  v59 = v134;
  v58 = v135;
  if ((*(v135 + 48))(v57, 1, v134) == 1)
  {
    sub_100006270(v57, &qword_1000355A8, &unk_100027360);
    v60 = v129;
    sub_100024530();
    v61 = sub_1000244C0();
    v62 = sub_100025080();
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
  v137 = sub_1000246E0();
  if (v65)
  {
LABEL_61:
    v117 = v128;
    sub_100024530();
    v118 = sub_1000244C0();
    v119 = sub_100025080();
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

  v66 = sub_1000247E0();
  v67 = v66;
  if (v66 >> 62)
  {
    v68 = sub_100025170();
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
      v70 = sub_100025150();
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
      v88 = sub_100024F10();

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

  sub_100024730();
  v141(v126, enum case for MessageDetails.EventStatus.denied(_:), v49);
  sub_100024F70();
  sub_100024F70();
  v78 = v135;
  v79 = v130;
  if (v146 == v144 && v147 == v145)
  {
    v80 = v138;
    v138(v126, v49);
    v80(v127, v49);

    goto LABEL_39;
  }

  v81 = sub_1000251B0();
  v82 = v138;
  v138(v126, v49);
  v82(v127, v49);

  if (v81)
  {
LABEL_39:
    v83 = v143;
    [v143 isMe];
    sub_100024F10();

    sub_10000269C(&qword_100035810, &qword_100027388);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_100026E20;
    v85 = sub_1000250B0();
    v87 = v86;
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = sub_10001A410();
    *(v84 + 32) = v85;
    *(v84 + 40) = v87;
    v88 = sub_100024EC0();

    (*(v78 + 8))(v79, v134);
    return v88;
  }

  v89 = v124;
  sub_100024730();
  v90 = v125;
  v141(v125, enum case for MessageDetails.EventStatus.approved(_:), v49);
  sub_10001A358(&qword_100035418, &type metadata accessor for MessageDetails.EventStatus);
  v91 = sub_100024E70();
  v82(v90, v49);
  v82(v89, v49);
  if ((v91 & 1) == 0)
  {
    (*(v78 + 8))(v79, v134);

    return 2099744;
  }

  v92 = v123;
  sub_100024670();
  v68 = sub_100024630();
  v67 = *(v68 - 8);
  if ((*(v67 + 48))(v92, 1, v68) == 1)
  {
    goto LABEL_43;
  }

  v93 = v122;
  sub_10001A3A0(v92, v122);
  v94 = (*(v67 + 88))(v93, v68);
  if (v94 == enum case for MessageDetails.EventSource.askToBuy(_:))
  {
    v95 = v143;
    [v143 isMe];
    sub_100024F10();

    sub_10000269C(&qword_100035810, &qword_100027388);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_100026E20;
    v97 = sub_1000250B0();
    v99 = v98;
    *(v96 + 56) = &type metadata for String;
    *(v96 + 64) = sub_10001A410();
    *(v96 + 32) = v97;
    *(v96 + 40) = v99;
    v88 = sub_100024EC0();

    goto LABEL_47;
  }

  if (v94 != enum case for MessageDetails.EventSource.screenTime(_:))
  {
    goto LABEL_55;
  }

  sub_100024690();
  v101 = sub_100024F30();
  v103 = v102;

  if (!v103)
  {
    v105 = v143;
    [v143 isMe];
    sub_100024F10();

    sub_10000269C(&qword_100035810, &qword_100027388);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_100026E20;
    v107 = sub_1000250B0();
    v109 = v108;
    *(v106 + 56) = &type metadata for String;
    *(v106 + 64) = sub_10001A410();
    *(v106 + 32) = v107;
    *(v106 + 40) = v109;
    v88 = sub_100024EC0();

LABEL_57:
    (*(v135 + 8))(v130, v134);
    v100 = v123;
LABEL_48:
    sub_100006270(v100, &qword_1000353E8, &unk_100026FE0);
    return v88;
  }

  if ([v143 isMe])
  {
    sub_100024F10();
    sub_10000269C(&qword_100035810, &qword_100027388);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_100026E20;
    *(v104 + 56) = &type metadata for String;
    *(v104 + 64) = sub_10001A410();
    *(v104 + 32) = v101;
    *(v104 + 40) = v103;
    v88 = sub_100024EC0();

    goto LABEL_57;
  }

  sub_100024F10();
  sub_10000269C(&qword_100035810, &qword_100027388);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1000272F0;
  v111 = v143;
  v112 = sub_1000250B0();
  v114 = v113;
  *(v110 + 56) = &type metadata for String;
  v115 = sub_10001A410();
  *(v110 + 32) = v112;
  *(v110 + 40) = v114;
  *(v110 + 96) = &type metadata for String;
  *(v110 + 104) = v115;
  *(v110 + 64) = v115;
  *(v110 + 72) = v101;
  *(v110 + 80) = v103;
  v116 = sub_100024EC0();

  (*(v135 + 8))(v130, v134);
  sub_100006270(v123, &qword_1000353E8, &unk_100026FE0);
  return v116;
}

id sub_100019340()
{
  v0 = sub_100024650();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024730();
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

void *sub_1000194D8@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v70 = &v62 - v3;
  v4 = sub_1000247F0();
  v5 = *(v4 - 8);
  v73 = v4;
  v74 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v62 - v12;
  v14 = sub_100024630();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  v16 = __chkstk_darwin(v14);
  v63 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &v62 - v18;
  v19 = sub_100024650();
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = *(v20 + 64);
  __chkstk_darwin(v19);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000269C(&qword_1000357E8, &qword_100027370);
  v25 = *(v20 + 72);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v68 = xmmword_1000272F0;
  *(v27 + 16) = xmmword_1000272F0;
  v28 = v27 + v26;
  v29 = *(v21 + 104);
  v29(v28, enum case for MessageDetails.EventStatus.approved(_:), v19);
  v29(v28 + v25, enum case for MessageDetails.EventStatus.denied(_:), v19);
  v76 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  sub_100024730();
  LOBYTE(v25) = sub_100019D54(v24, v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v21 + 8))(v24, v19);
  v30 = v14;
  if ((v25 & 1) == 0)
  {
    sub_100024670();
    v31 = v75;
    if ((*(v75 + 48))(v13, 1, v14) == 1)
    {
      sub_100006270(v13, &qword_1000353E8, &unk_100026FE0);
    }

    else
    {
      v32 = v69;
      (*(v31 + 32))(v69, v13, v30);
      if (qword_1000350F8 != -1)
      {
        swift_once();
      }

      v33 = sub_100017170(v32, qword_100035650);
      (*(v31 + 8))(v32, v30);
      if (v33)
      {
        sub_10000269C(&qword_1000357F0, &qword_100027378);
        v34 = swift_allocObject();
        *(v34 + 16) = v68;
        *(v34 + 32) = 0;
        *(v34 + 40) = 0;
        *(v34 + 48) = sub_100024F10();
        *(v34 + 56) = v35;
        goto LABEL_9;
      }
    }
  }

  sub_100018120();
  v36 = sub_100024F20();

  v34 = sub_100019E60(v36);

LABEL_9:

  v37 = sub_100019340();
  v39 = v38;
  v41 = v40;
  if (v37)
  {

    v42 = v37;
    v43 = sub_100024C60();
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
  sub_100024710();
  v49 = v74;
  if ((*(v74 + 48))(v48, 1, v47) != 1)
  {
    (*(v49 + 32))(v71, v48, v47);
    v51 = sub_1000247E0();
    v50 = v75;
    if (!(v51 >> 62))
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_35:
    v52 = sub_100025170();
    v50 = v75;
LABEL_22:

    (*(v74 + 8))(v71, v47);
    if (v52)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  sub_100006270(v48, &qword_1000355A8, &unk_100027360);
  v50 = v75;
LABEL_23:
  v53 = v66;
  sub_100024670();
  if ((*(v50 + 48))(v53, 1, v30) == 1)
  {

    sub_100006270(v53, &qword_1000353E8, &unk_100026FE0);
LABEL_30:
    sub_100024F00();
    v58 = sub_100024F10();
    v39 = v59;

    v41 = sub_100024F10();
    v19 = v60;
    result = sub_10001A1C4(v37);
    v57 = 0;
    v44 = 0;
    goto LABEL_31;
  }

  v54 = v63;
  (*(v50 + 32))(v63, v53, v30);
  if (qword_1000350F8 != -1)
  {
    swift_once();
  }

  v55 = sub_100017170(v54, qword_100035650);
  (*(v50 + 8))(v54, v30);
  if ((v55 & 1) == 0)
  {

    goto LABEL_30;
  }

LABEL_28:
  result = sub_10001A1C4(v37);
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

BOOL sub_100019D54(uint64_t a1, uint64_t a2)
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

    v6 = *(sub_100024650() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10001A358(&qword_100035418, &type metadata accessor for MessageDetails.EventStatus);
  }

  while ((sub_100024E70() & 1) == 0);
  return v4 != v5;
}

void *sub_100019E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001A204(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v8 = *(v3 - 1);
      v9 = *v3;

      sub_10000269C(&qword_100035800, &qword_100027380);
      swift_dynamicCast();
      v4 = v10;
      v6 = *(&_swiftEmptyArrayStorage + 2);
      v5 = *(&_swiftEmptyArrayStorage + 3);
      if (v6 >= v5 >> 1)
      {
        sub_10001A204((v5 > 1), v6 + 1, 1);
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
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v2 = sub_1000247B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BubbleContentContainer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v2 = sub_1000247B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BubbleContentContainer()
{
  result = qword_100035690;
  if (!qword_100035690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001A108()
{
  result = sub_1000247B0();
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

void *sub_10001A1C4(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_10001A204(void *a1, int64_t a2, char a3)
{
  result = sub_10001A224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001A224(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000269C(&qword_1000357F0, &qword_100027378);
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
    sub_10000269C(&qword_100035800, &qword_100027380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001A358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001A3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001A410()
{
  result = qword_100035818;
  if (!qword_100035818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035818);
  }

  return result;
}

uint64_t sub_10001A464(uint64_t a1)
{
  v3 = sub_1000247B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped;
  v16[15] = 0;
  sub_100024D20();
  v9 = v17;
  *v8 = v16[16];
  *(v8 + 8) = v9;
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_100017F20(v7);
  v11 = *(v10 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_image);

  v12 = v11;
  v13 = sub_10001B374(v12);

  (*(v4 + 8))(a1, v3);
  v14 = *(v10 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController);
  *(v10 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController) = v13;

  return v10;
}

__n128 sub_10001A5D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a3;
  v68 = a1;
  v69 = a2;
  v80 = a5;
  v7 = sub_100024A90();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  __chkstk_darwin(v7);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000269C(&qword_100035AD8, &qword_1000274A8);
  v73 = *(v70 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v70);
  v12 = &v63 - v11;
  v74 = sub_10000269C(&qword_100035AE0, &qword_1000274B0);
  v72 = *(v74 - 8);
  v13 = *(v72 + 64);
  v14 = __chkstk_darwin(v74);
  v79 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v63 - v16;
  v17 = sub_10000269C(&qword_100035AB8, &unk_100027470);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v63 - v19;
  if (sub_1000170F0())
  {
    v21 = sub_100024DA0();
  }

  else
  {
    v21 = sub_100024D90();
  }

  v65 = v22;
  v66 = v21;
  v23 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac;
  v24 = *(v5 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac);
  v25 = objc_opt_self();
  v26 = 0x2E6E6F7276656863;
  if (v24)
  {
    v26 = 0;
  }

  v64 = v26;
  if (v24)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0xEF64726177726F66;
  }

  v28 = &selRef_systemFillColor;
  if ((v24 & 1) == 0)
  {
    v28 = &selRef_tertiarySystemFillColor;
  }

  v29 = [v25 *v28];
  v81 = sub_100024C60();
  *v20 = sub_100024A00();
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (*(v5 + v23))
  {
    v61 = sub_100024D80();
    v62 = v30;
    LOBYTE(v60) = 1;
    v59 = 0;
    LOBYTE(v58) = 1;
    v57 = 0;
    sub_100024920();
    *&v82[71] = v98;
    *&v82[55] = v97;
    *&v82[103] = v100;
    *&v82[87] = v99;
    *&v82[23] = v95;
    *&v82[7] = v94;
    *&v82[39] = v96;
    *(&v83[4] + 9) = *&v82[64];
    *(&v83[5] + 9) = *&v82[80];
    *(&v83[6] + 9) = *&v82[96];
    *(v83 + 9) = *v82;
    *(&v83[1] + 9) = *&v82[16];
    *(&v83[2] + 9) = *&v82[32];
    LOBYTE(v101) = 1;
    *&v83[0] = 0;
    BYTE8(v83[0]) = 1;
    *(&v83[7] + 1) = *(&v100 + 1);
    *(&v83[3] + 9) = *&v82[48];
    sub_10001E280(v83);
    v91 = v83[6];
    v92 = v83[7];
    v87 = v83[2];
    v88 = v83[3];
    v93 = v84;
    v89 = v83[4];
    v90 = v83[5];
    v85 = v83[0];
    v86 = v83[1];
  }

  else
  {
    sub_10001DCAC(&v85);
  }

  v31 = *(sub_10000269C(&qword_100035AE8, &qword_1000274B8) + 44);
  v71 = v20;
  v32 = &v20[v31];
  v33 = swift_allocObject();
  *(v33 + 16) = v67;
  *(v33 + 24) = a4;
  __chkstk_darwin(v33);
  v34 = v69;
  *(&v63 - 8) = v68;
  *(&v63 - 7) = v34;
  v57 = v81;
  v58 = v66;
  v59 = v65;
  v60 = v64;
  v61 = v27;
  v62 = v5;

  sub_10000269C(&qword_100035AF0, &qword_1000274C0);
  sub_10001DD40();
  sub_100024D50();
  v35 = v75;
  sub_100024A80();
  sub_10001E1F0(&qword_100035BB0, &qword_100035AD8, &qword_1000274A8);
  sub_10001E238(&qword_100035BB8, &type metadata accessor for BorderlessButtonStyle);
  v36 = v77;
  v37 = v78;
  v38 = v70;
  sub_100024C20();
  (*(v76 + 8))(v35, v36);
  (*(v73 + 8))(v12, v38);
  v83[5] = v90;
  v83[6] = v91;
  v83[7] = v92;
  v83[1] = v86;
  v83[2] = v87;
  v83[3] = v88;
  v83[4] = v89;
  v84 = v93;
  v83[0] = v85;
  v39 = v72;
  v40 = *(v72 + 16);
  v41 = v79;
  v42 = v74;
  v40(v79, v37, v74);
  v43 = v83[5];
  v44 = v83[7];
  *(v32 + 6) = v83[6];
  *(v32 + 7) = v44;
  v45 = v83[1];
  v46 = v83[3];
  v47 = v83[4];
  *(v32 + 2) = v83[2];
  *(v32 + 3) = v46;
  v32[128] = v84;
  *(v32 + 4) = v47;
  *(v32 + 5) = v43;
  *v32 = v83[0];
  *(v32 + 1) = v45;
  v48 = sub_10000269C(&qword_100035BC0, &qword_100027520);
  v40(&v32[*(v48 + 48)], v41, v42);
  v49 = *(v39 + 8);
  v49(v37, v42);
  v49(v41, v42);

  if (qword_1000350A8 != -1)
  {
    swift_once();
  }

  v50 = qword_1000366F8;
  v61 = sub_100024D80();
  v62 = v51;
  LOBYTE(v60) = 0;
  v59 = v50;
  LOBYTE(v58) = 1;
  v57 = 0;
  sub_100024920();

  v52 = v80;
  sub_100014DCC(v71, v80, &qword_100035AB8, &unk_100027470);
  v53 = v52 + *(sub_10000269C(&qword_100035AA0, &qword_100027468) + 36);
  v54 = v106;
  *(v53 + 64) = v105;
  *(v53 + 80) = v54;
  *(v53 + 96) = v107;
  v55 = v102;
  *v53 = v101;
  *(v53 + 16) = v55;
  result = v104;
  *(v53 + 32) = v103;
  *(v53 + 48) = result;
  return result;
}

uint64_t sub_10001ADC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a8;
  v72 = a3;
  v73 = a9;
  v68 = sub_10000269C(&qword_100035B18, &qword_1000274D0);
  v15 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v17 = &v65[-v16];
  v69 = sub_10000269C(&qword_100035B08, &qword_1000274C8);
  v18 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v70 = &v65[-v19];
  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  v22 = sub_100024C60();
  v23 = [v20 tertiaryLabelColor];
  v24 = sub_100024C60();
  v67 = sub_100024A00();
  v82 = 0;
  sub_10001FC4C(a1, a2, v22, a4, a5, a6, a7, v24, v80);
  memcpy(v86, v80, sizeof(v86));
  memcpy(v87, v80, 0x270uLL);
  sub_100005934(v86, v78, &qword_100035BC8, &qword_100027528);
  sub_100006270(v87, &qword_100035BC8, &qword_100027528);
  memcpy(&v81[7], v86, 0x270uLL);
  v25 = v82;
  v66 = sub_100024B10();
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  sub_1000248D0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v83 = 0;
  v34 = sub_100024B20();
  sub_1000248D0();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v84 = 0;
  sub_100024D80();
  sub_1000248E0();
  *&v85[7] = v80[0];
  *&v85[23] = v80[1];
  *&v85[39] = v80[2];
  v43 = sub_100024B00();

  v44 = &v17[*(v68 + 36)];
  v45 = *(sub_100024910() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = sub_100024A10();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #10.0 }

  *v44 = _Q0;
  *&v44[*(sub_10000269C(&qword_100035B88, &qword_100027508) + 36)] = 256;
  *v17 = v67;
  *(v17 + 1) = 0;
  v17[16] = v25;
  memcpy(v17 + 17, v81, 0x277uLL);
  v17[648] = v66;
  *(v17 + 649) = *v77;
  *(v17 + 163) = *&v77[3];
  *(v17 + 82) = v27;
  *(v17 + 83) = v29;
  *(v17 + 84) = v31;
  *(v17 + 85) = v33;
  v17[688] = 0;
  *(v17 + 689) = *v76;
  *(v17 + 173) = *&v76[3];
  v17[696] = v34;
  *(v17 + 697) = *v75;
  *(v17 + 175) = *&v75[3];
  *(v17 + 88) = v36;
  *(v17 + 89) = v38;
  *(v17 + 90) = v40;
  *(v17 + 91) = v42;
  v17[736] = 0;
  v53 = *&v85[16];
  *(v17 + 737) = *v85;
  *(v17 + 753) = v53;
  *(v17 + 769) = *&v85[32];
  *(v17 + 98) = *&v85[47];
  *(v17 + 99) = v72;
  v17[800] = v43;
  v54 = v70;
  v55 = &v70[*(v69 + 36)];
  v56 = *(sub_10000269C(&qword_100035B98, &qword_100027510) + 28);
  v57 = enum case for Image.Scale.small(_:);
  v58 = sub_100024D00();
  (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
  *v55 = swift_getKeyPath();
  sub_100014DCC(v17, v54, &qword_100035B18, &qword_1000274D0);
  v59 = *(v71 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped + 8);
  v78[0] = *(v71 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped);
  v79 = v59;

  sub_10000269C(&qword_100035AC8, &qword_100027480);
  sub_100024D30();
  LOBYTE(v56) = v74;
  KeyPath = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  v62 = v73;
  sub_100014DCC(v54, v73, &qword_100035B08, &qword_1000274C8);
  result = sub_10000269C(&qword_100035AF0, &qword_1000274C0);
  v64 = (v62 + *(result + 36));
  *v64 = KeyPath;
  v64[1] = sub_10001E318;
  v64[2] = v61;
  return result;
}

uint64_t sub_10001B374(char *a1)
{
  v139 = a1;
  v157 = sub_100024AE0();
  v155 = *(v157 - 8);
  v2 = *(v155 + 64);
  __chkstk_darwin(v157);
  v156 = &v133[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000269C(&qword_1000359E8, &qword_1000273D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v152 = &v133[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v151 = &v133[-v8];
  v148 = sub_100024AB0();
  v146 = *(v148 - 8);
  v9 = *(v146 + 64);
  __chkstk_darwin(v148);
  v144 = &v133[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_10000269C(&qword_1000359F0, &qword_1000273D8);
  v147 = *(v149 - 8);
  v11 = *(v147 + 64);
  __chkstk_darwin(v149);
  v145 = &v133[-v12];
  v143 = sub_10000269C(&qword_1000359F8, &qword_1000273E0);
  v13 = *(*(v143 - 8) + 64);
  v14 = __chkstk_darwin(v143);
  v150 = &v133[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v142 = &v133[-v17];
  __chkstk_darwin(v16);
  v160 = &v133[-v18];
  v153 = sub_10000269C(&qword_100035A00, &qword_1000273E8);
  v19 = *(*(v153 - 8) + 64);
  v20 = __chkstk_darwin(v153);
  v154 = &v133[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v165 = &v133[-v22];
  v141 = sub_1000244D0();
  v138 = *(v141 - 8);
  v23 = *(v138 + 64);
  __chkstk_darwin(v141);
  v137 = &v133[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1000250D0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v133[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1000247B0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v37 = &v133[-v36];
  v158 = v31;
  v159 = v38;
  v39 = *(v31 + 16);
  v39(&v133[-v36], v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details);
  v161 = v1;
  v140 = sub_100017388();
  strcpy(v191, "appstore");
  BYTE1(v191[1]) = 0;
  WORD1(v191[1]) = 0;
  HIDWORD(v191[1]) = -402653184;
  if (qword_1000350C8 != -1)
  {
    swift_once();
  }

  v40 = qword_100036720;
  v189 = qword_100036718;
  v190 = qword_100036720;
  v164 = qword_100036718;

  v163 = v40;

  v162 = v37;
  sub_100024680();
  sub_100016E98();
  sub_1000250E0();

  v41 = (*(v26 + 88))(v29, v25);
  if (v41 != enum case for BMAskToBuyEvent.ProductType.books(_:))
  {
    if (v41 == enum case for BMAskToBuyEvent.ProductType.iTunes(_:))
    {
      strcpy(v191, "star.fill");
      WORD1(v191[1]) = 0;
      HIDWORD(v191[1]) = -385875968;
      v141 = 0xE90000000000006CLL;
      if (qword_1000350D0 != -1)
      {
        swift_once();
      }

      v44 = &qword_100036728;
    }

    else
    {
      v45 = v162;
      if (v41 != enum case for BMAskToBuyEvent.ProductType.subscriptions(_:))
      {
        if (v41 == enum case for BMAskToBuyEvent.ProductType.appleTV(_:))
        {
          strcpy(v191, "appletv.fill");
          BYTE5(v191[1]) = 0;
          HIWORD(v191[1]) = -5120;
          v141 = 0xEC0000006C6C6966;
        }

        else
        {
          v136 = v26;
          v121 = v137;
          sub_100024530();
          v122 = v45;
          v123 = v159;
          (v39)(v35, v122, v159);
          v124 = sub_1000244C0();
          v125 = sub_100025070();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *v168 = v135;
            *v126 = 136315138;
            v134 = v125;
            v127 = sub_100024680();
            if (v128)
            {
              v129 = v127;
            }

            else
            {
              v129 = 0;
            }

            v130 = v123;
            if (v128)
            {
              v131 = v128;
            }

            else
            {
              v131 = 0xE000000000000000;
            }

            (*(v158 + 8))(v35, v130);
            v132 = sub_1000056C8(v129, v131, v168);

            *(v126 + 4) = v132;
            _os_log_impl(&_mh_execute_header, v124, v134, "Unknown product type (%s), defaults to app store", v126, 0xCu);
            sub_100005794(v135);
          }

          else
          {

            (*(v158 + 8))(v35, v123);
          }

          (*(v138 + 8))(v121, v141);
          (*(v136 + 8))(v29, v25);
          v141 = 0xE800000000000000;
        }

        goto LABEL_16;
      }

      strcpy(v191, "goforward.plus");
      HIBYTE(v191[1]) = -18;
      v141 = 0xEE0073756C702E64;
      if (qword_1000350E0 != -1)
      {
        swift_once();
      }

      v44 = &qword_100036748;
    }

    v46 = *v44;
    v47 = v44[1];

    v189 = v46;
    v190 = v47;
    v163 = v47;
    v164 = v46;
    goto LABEL_16;
  }

  strcpy(v191, "book.fill");
  WORD1(v191[1]) = 0;
  HIDWORD(v191[1]) = -385875968;
  v141 = 0xE90000000000006CLL;
  if (qword_1000350D8 != -1)
  {
    swift_once();
  }

  v42 = qword_100036738;
  v43 = qword_100036740;

  v189 = v42;
  v190 = v43;
  v163 = v43;
  v164 = v42;
LABEL_16:
  v48 = sub_100024A30();
  v49 = v165;
  *v165 = v48;
  v49[1] = 0;
  *(v49 + 16) = 0;
  v50 = sub_1000249F0();
  v173 = 0;
  sub_10001C644(v139, v191, &v189, v161, v168);
  v185 = *&v168[160];
  v186[0] = *&v168[176];
  *(v186 + 9) = *&v168[185];
  v181 = *&v168[96];
  v182 = *&v168[112];
  v184 = *&v168[144];
  v183 = *&v168[128];
  v177 = *&v168[32];
  v178 = *&v168[48];
  v180 = *&v168[80];
  v179 = *&v168[64];
  v176 = *&v168[16];
  v175 = *v168;
  v187[10] = *&v168[160];
  v188[0] = *&v168[176];
  *(v188 + 9) = *&v168[185];
  v187[6] = *&v168[96];
  v187[7] = *&v168[112];
  v187[9] = *&v168[144];
  v187[8] = *&v168[128];
  v187[2] = *&v168[32];
  v187[3] = *&v168[48];
  v187[5] = *&v168[80];
  v187[4] = *&v168[64];
  v187[1] = *&v168[16];
  v187[0] = *v168;
  sub_100005934(&v175, v167, &qword_100035A08, &qword_1000273F0);
  sub_100006270(v187, &qword_100035A08, &qword_1000273F0);
  *(&v172[9] + 7) = v184;
  *(&v172[10] + 7) = v185;
  *(&v172[11] + 7) = v186[0];
  v172[12] = *(v186 + 9);
  *(&v172[5] + 7) = v180;
  *(&v172[6] + 7) = v181;
  *(&v172[7] + 7) = v182;
  *(&v172[8] + 7) = v183;
  *(&v172[1] + 7) = v176;
  *(&v172[2] + 7) = v177;
  *(&v172[3] + 7) = v178;
  *(&v172[4] + 7) = v179;
  *(v172 + 7) = v175;
  v51 = v173;
  if (qword_1000350E8 != -1)
  {
    swift_once();
  }

  sub_100024D80();
  v52 = sub_10000269C(&qword_100035A10, &qword_1000273F8);
  v139 = v165 + *(v52 + 44);
  sub_100024920();
  *&v174[55] = v195;
  *&v174[71] = v196;
  *&v174[87] = v197;
  *&v174[103] = v198;
  *&v174[7] = v192;
  *&v174[23] = v193;
  *&v174[39] = v194;
  *(&v167[20] + 1) = v172[9];
  *(&v167[22] + 1) = v172[10];
  *(&v167[24] + 1) = v172[11];
  *(&v167[26] + 1) = v172[12];
  *(&v167[12] + 1) = v172[5];
  *(&v167[14] + 1) = v172[6];
  *(&v167[16] + 1) = v172[7];
  *(&v167[18] + 1) = v172[8];
  *(&v167[4] + 1) = v172[1];
  *(&v167[6] + 1) = v172[2];
  *(&v167[8] + 1) = v172[3];
  *(&v167[36] + 1) = *&v174[64];
  *(&v167[38] + 1) = *&v174[80];
  *(&v167[40] + 1) = *&v174[96];
  *(&v167[32] + 1) = *&v174[32];
  *(&v167[34] + 1) = *&v174[48];
  *(&v167[10] + 1) = v172[4];
  *(&v167[2] + 1) = v172[0];
  *(&v167[28] + 1) = *v174;
  v167[0] = v50;
  v167[1] = 0;
  LOBYTE(v167[2]) = v51;
  v167[42] = *(&v198 + 1);
  *(&v167[30] + 1) = *&v174[16];
  v53 = v144;
  sub_100024AA0();
  sub_10000269C(&qword_100035A18, &qword_100027400);
  sub_10001D76C();
  v54 = v145;
  sub_100024C50();
  (*(v146 + 8))(v53, v148);
  memcpy(v168, v167, sizeof(v168));
  sub_100006270(v168, &qword_100035A18, &qword_100027400);
  v55 = sub_100024C90();
  v56 = sub_100024B00();
  v57 = v142;
  (*(v147 + 32))(v142, v54, v149);
  v58 = v57 + *(v143 + 36);
  *v58 = v55;
  *(v58 + 8) = v56;
  v59 = v160;
  sub_100014DCC(v57, v160, &qword_1000359F8, &qword_1000273E0);
  sub_100024D80();
  sub_1000248E0();
  v148 = v167[2];
  v149 = v167[0];
  v146 = v167[5];
  v147 = v167[4];
  v171 = 1;
  v170 = v167[1];
  v169 = v167[3];
  v60 = sub_100024A20();
  v61 = v151;
  *v151 = v60;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0;
  v62 = v61 + *(sub_10000269C(&qword_100035A38, &qword_100027410) + 44);
  sub_10001CD94(v140 & 1, v161);
  v63 = v150;
  sub_100005934(v59, v150, &qword_1000359F8, &qword_1000273E0);
  LOBYTE(v54) = v171;
  LOBYTE(v59) = v170;
  v64 = v169;
  v65 = v152;
  sub_100005934(v61, v152, &qword_1000359E8, &qword_1000273D0);
  v66 = v139;
  sub_100005934(v63, v139, &qword_1000359F8, &qword_1000273E0);
  v67 = sub_10000269C(&qword_100035A40, &qword_100027418);
  v68 = &v66[*(v67 + 48)];
  *v68 = 0;
  v68[8] = v54;
  v69 = v148;
  *(v68 + 2) = v149;
  v68[24] = v59;
  *(v68 + 4) = v69;
  v68[40] = v64;
  v70 = v146;
  *(v68 + 6) = v147;
  *(v68 + 7) = v70;
  sub_100005934(v65, &v66[*(v67 + 64)], &qword_1000359E8, &qword_1000273D0);
  sub_100006270(v61, &qword_1000359E8, &qword_1000273D0);
  sub_100006270(v160, &qword_1000359F8, &qword_1000273E0);
  sub_100006270(v65, &qword_1000359E8, &qword_1000273D0);
  sub_100006270(v63, &qword_1000359F8, &qword_1000273E0);
  v71 = sub_100024C90();
  LOBYTE(v54) = sub_100024B00();
  v72 = sub_10000269C(&qword_100035A48, &qword_100027420);
  v73 = v165;
  v74 = v165 + *(v72 + 36);
  *v74 = v71;
  v74[8] = v54;
  LOBYTE(v71) = sub_100024B10();
  sub_1000248D0();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v73 + *(sub_10000269C(&qword_100035A50, &qword_100027428) + 36);
  *v83 = v71;
  *(v83 + 8) = v76;
  *(v83 + 16) = v78;
  *(v83 + 24) = v80;
  *(v83 + 32) = v82;
  *(v83 + 40) = 0;
  LOBYTE(v71) = sub_100024B40();
  sub_1000248D0();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v73 + *(sub_10000269C(&qword_100035A58, &qword_100027430) + 36);
  *v92 = v71;
  *(v92 + 8) = v85;
  *(v92 + 16) = v87;
  *(v92 + 24) = v89;
  *(v92 + 32) = v91;
  *(v92 + 40) = 0;
  LOBYTE(v71) = sub_100024B30();
  sub_1000248D0();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = v73 + *(sub_10000269C(&qword_100035A60, &qword_100027438) + 36);
  *v101 = v71;
  *(v101 + 8) = v94;
  *(v101 + 16) = v96;
  *(v101 + 24) = v98;
  *(v101 + 32) = v100;
  *(v101 + 40) = 0;
  LOBYTE(v71) = sub_100024B20();
  sub_1000248D0();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = v73 + *(sub_10000269C(&qword_100035A68, &qword_100027440) + 36);
  *v110 = v71;
  *(v110 + 8) = v103;
  *(v110 + 16) = v105;
  *(v110 + 24) = v107;
  *(v110 + 32) = v109;
  *(v110 + 40) = 0;
  v111 = sub_100024900();
  v112 = sub_100024B00();
  v113 = v154;
  v114 = v73 + *(v153 + 36);
  *v114 = v111;
  *(v114 + 8) = v112;
  sub_100005934(v73, v113, &qword_100035A00, &qword_1000273E8);
  v115 = objc_allocWithZone(sub_10000269C(&qword_100035A70, &qword_100027448));
  v116 = sub_100024A60();
  sub_10000269C(&qword_100035A78, &qword_100027450);
  v117 = *(v155 + 72);
  v118 = (*(v155 + 80) + 32) & ~*(v155 + 80);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1000272F0;
  sub_100024AD0();
  sub_100024AC0();
  v166 = v119;
  sub_10001E238(&qword_100035A80, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_10000269C(&qword_100035A88, &qword_100027458);
  sub_10001E1F0(&qword_100035A90, &qword_100035A88, &qword_100027458);
  sub_100025110();
  sub_100024A40();
  sub_100024A50();
  sub_100006270(v73, &qword_100035A00, &qword_1000273E8);

  (*(v158 + 8))(v162, v159);
  return v116;
}