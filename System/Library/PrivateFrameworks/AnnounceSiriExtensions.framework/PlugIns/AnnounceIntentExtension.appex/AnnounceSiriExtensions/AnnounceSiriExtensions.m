uint64_t sub_100001974(void *a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v5 = *(*(sub_1000029F0(&qword_100021340, &unk_1000173D0) - 8) + 64);
  v6 = (__chkstk_darwin)();
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v67 - v9;
  __chkstk_darwin(v8);
  v75 = &v67 - v11;
  v12 = sub_100016394();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v70 = v16;
  v71 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v67 - v17;
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v19 = qword_100021A18;
  sub_1000163A4();
  v20 = a1;
  v21 = sub_100016384();
  v22 = sub_1000164E4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received Stop Announcement Intent: %@", v23, 0xCu);
    sub_100002CBC(v24, &qword_1000214B0, &qword_1000173E0);
  }

  v74 = v12;

  v26 = sub_100016374();
  v68 = *(v26 - 8);
  (*(v68 + 56))(v75, 1, 1, v26);
  v27 = [v20 _metadata];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 endpointId];

    if (v29)
    {
      sub_1000163D4();

      sub_100016344();

      v30 = v75;
      sub_100002CBC(v75, &qword_100021340, &unk_1000173D0);
      sub_100002C4C(v10, v30);
    }
  }

  v31 = v20;
  v32 = sub_100016384();
  v33 = sub_1000164E4();

  if (os_log_type_enabled(v32, v33))
  {
    v67 = a3;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v76 = v35;
    *v34 = 136315138;
    v36 = [v31 _metadata];
    if (v36 && (v37 = v36, v38 = [v36 endpointId], v37, v38))
    {
      v39 = sub_1000163D4();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    aBlock = v39;
    v78 = v41;
    sub_1000029F0(&unk_1000210E0, &qword_100017570);
    v42 = sub_1000163E4();
    v44 = sub_100015224(v42, v43, &v76);

    *(v34 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "EndpointID = %s", v34, 0xCu);
    sub_100002C00(v35);

    a3 = v67;
  }

  else
  {
  }

  v45 = OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession;
  v47 = v73;
  v46 = v74;
  v48 = *(v73 + OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession);
  if (v48)
  {
    goto LABEL_22;
  }

  v49 = v69;
  sub_100002A38(v75, v69);
  v50 = v68;
  if ((*(v68 + 48))(v49, 1, v26) == 1)
  {
    isa = 0;
  }

  else
  {
    v52.super.isa = sub_100016354().super.isa;
    v53 = v50;
    isa = v52.super.isa;
    (*(v53 + 8))(v49, v26);
  }

  v54 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier:isa];

  v55 = *(v47 + v45);
  *(v47 + v45) = v54;
  v56 = v54;

  if (v56)
  {
    [v56 setDelegate:v47];
  }

  v48 = *(v47 + v45);
  if (v48)
  {
LABEL_22:
    v57 = objc_opt_self();
    v58 = v48;
    v59 = [v57 stopCommand];
    v60 = v71;
    (*(v13 + 16))(v71, v18, v46);
    v61 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v62 = (v70 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    (*(v13 + 32))(v63 + v61, v60, v46);
    v64 = (v63 + v62);
    *v64 = v72;
    v64[1] = a3;
    v81 = sub_100002B48;
    v82 = v63;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_10000243C;
    v80 = &unk_10001C998;
    v65 = _Block_copy(&aBlock);

    [v58 sendPlaybackCommand:v59 completionHandler:v65];
    _Block_release(v65);
  }

  sub_100002CBC(v75, &qword_100021340, &unk_1000173D0);
  return (*(v13 + 8))(v18, v46);
}

void sub_1000020D0(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    swift_errorRetain();
    v4 = sub_100016384();
    v5 = sub_1000164D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1000166E4();
      v10 = sub_100015224(v8, v9, &v24);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stop Announcement failed with error: %s", v6, 0xCu);
      sub_100002C00(v7);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_100016384();
    v12 = sub_1000164E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Stop Announcement completed successfully", v13, 2u);
    }
  }

  v14 = sub_100016384();
  v15 = sub_1000164E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (qword_100020FB8 != -1)
    {
      v22 = v16;
      swift_once();
      v16 = v22;
    }

    v17 = *(qword_100021A28 + 16);
    if (v17 >> 62)
    {
      v23 = v16;
      v18 = sub_100016644();
      v16 = v23;
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Records in Stop Response: %ld", v16, 0xCu);
  }

  v19 = [objc_allocWithZone(INStopAnnouncementIntentResponse) initWithCode:3 userActivity:0];
  if (qword_100020FB8 != -1)
  {
    swift_once();
  }

  v20 = *(qword_100021A28 + 16);
  sub_100002D1C();

  isa = sub_100016454().super.isa;

  [v19 setStoppedAnnouncementRecords:isa];

  a3(v19);
}

void sub_10000243C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_100002594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAnnouncementIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100002600(char *a1)
{
  v2 = OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession;
  v3 = *&a1[OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession];
  v4 = a1;
  if (v3)
  {
    [v3 setDelegate:0];
    v5 = *&a1[v2];
  }

  else
  {
    v5 = 0;
  }

  *&a1[v2] = 0;
}

void *sub_10000269C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1000026FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000272C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100002758@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100002864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000029B8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000290C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANPlaybackOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000029B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1000029F0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002AA8()
{
  v1 = sub_100016394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_100002B48(uint64_t a1)
{
  v3 = *(sub_100016394() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1000020D0(a1, v1 + v4, v6);
}

uint64_t sub_100002BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002CBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000029F0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100002D1C()
{
  result = qword_1000210F0;
  if (!qword_1000210F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000210F0);
  }

  return result;
}

uint64_t sub_100002D68()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100002DC8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002E28(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (sub_100016694())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = sub_1000162F4();

  v9 = [v8 code];

  return sub_100002F8C(v9);
}

uint64_t sub_100002F8C(uint64_t a1)
{
  if (a1 <= 1032)
  {
    if (a1 <= 1016)
    {
      if (a1 == 1009 || a1 == 1015)
      {
        return 6;
      }
    }

    else
    {
      switch(a1)
      {
        case 1017:
          return 8;
        case 1031:
          return 7;
        case 1032:
          return 12;
      }
    }

    return 4;
  }

  if (a1 <= 1042)
  {
    if (a1 == 1033)
    {
      return 10;
    }

    if (a1 != 1034)
    {
      if (a1 == 1035)
      {
        return 11;
      }

      return 4;
    }

    return 9;
  }

  switch(a1)
  {
    case 1043:
      return 13;
    case 1047:
      return 14;
    case 1049:
      return 9;
  }

  return 4;
}

uint64_t sub_10000304C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (sub_100016694())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = sub_1000162F4();

  v9 = [v8 code];

  if (v9 == 1027)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1000031B4()
{
  v0 = sub_100016394();
  sub_1000032B8(v0, qword_100021A00);
  sub_10000331C(v0, qword_100021A00);
  if (qword_100020FB0 != -1)
  {
    swift_once();
  }

  v1 = qword_100021A20;
  return sub_1000163A4();
}

unint64_t sub_10000326C()
{
  result = qword_1000211C0;
  if (!qword_1000211C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000211C0);
  }

  return result;
}

uint64_t *sub_1000032B8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000331C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10000326C();
  result = sub_100016504();
  *a4 = result;
  return result;
}

uint64_t sub_1000033DC()
{
  type metadata accessor for ReadAnnouncementHistory();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyArrayStorage;
  qword_100021A28 = result;
  return result;
}

uint64_t sub_100003414()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_100003470(void *a1)
{
  v3 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v31 - v9;
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  result = [a1 recipients];
  if (!result)
  {
    return result;
  }

  v14 = result;
  sub_1000037D0();
  v15 = sub_100016464();

  v16 = sub_10000A428(v15);

  v17 = [v16 roomNames];
  v18 = sub_100016464();

  v19 = *(v18 + 16);

  if (v19 != 1)
  {
LABEL_10:

    return 0;
  }

  v20 = [v16 roomNames];
  v21 = sub_100016464();

  if (!v21[2])
  {

    goto LABEL_10;
  }

  v22 = v21[5];
  v31[1] = v21[4];

  v23 = sub_100016374();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v12, 1, 1, v23);
  v25 = [a1 _metadata];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 endpointId];

    if (v27)
    {
      sub_1000163D4();
      v31[0] = v22;

      sub_100016344();

      sub_10000381C(v12);
      sub_100002C4C(v10, v12);
    }
  }

  sub_100002A38(v12, v7);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100016354().super.isa;
    (*(v24 + 8))(v7, v23);
  }

  v29 = sub_1000163C4();

  v30 = [v1 isEndpointWithUUID:isa inRoomWithName:v29];

  sub_10000381C(v12);
  return v30;
}

unint64_t sub_1000037D0()
{
  result = qword_100021280;
  if (!qword_100021280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021280);
  }

  return result;
}

uint64_t sub_10000381C(uint64_t a1)
{
  v2 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000038A4()
{
  if (qword_100020FA0 != -1)
  {
    swift_once();
  }

  v1 = sub_100016394();
  sub_10000331C(v1, qword_100021A00);
  v2 = sub_100016384();
  v3 = sub_1000164E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Skipping MU Check", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = sub_100016374();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000039FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler____lazy_storage___logger;
  swift_beginAccess();
  sub_100005174(v1 + v10, v9, &qword_100021348, &qword_1000174B0);
  v11 = sub_100016394();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_100002CBC(v9, &qword_100021348, &qword_1000174B0);
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v13 = qword_100021A18;
  sub_1000163A4();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000051DC(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100003C24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_100016394();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v115 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v114 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v114 - v15;
  v17 = __chkstk_darwin(v14);
  v122 = &v114 - v18;
  v19 = __chkstk_darwin(v17);
  v124 = &v114 - v20;
  __chkstk_darwin(v19);
  v22 = &v114 - v21;
  sub_1000039FC(&v114 - v21);
  v23 = a1;
  v24 = sub_100016384();
  v25 = sub_1000164E4();

  v26 = os_log_type_enabled(v24, v25);
  v123 = v3;
  v121 = a2;
  v114 = v13;
  v118 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v127[0] = v120;
    *v27 = 138412546;
    *(v27 + 4) = v23;
    *v28 = v23;
    *(v27 + 12) = 2080;
    v126[0] = [v23 _idiom];
    type metadata accessor for INDeviceIdiom(0);
    v29 = sub_1000163E4();
    v31 = sub_100015224(v29, v30, v127);

    *(v27 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Resolving %@ for idiom %s", v27, 0x16u);
    sub_100002CBC(v28, &qword_1000214B0, &qword_1000173E0);

    sub_100002C00(v120);
    v3 = v123;
  }

  v32 = *(v7 + 8);
  (v32)(v22, v6);
  v33 = [v23 _idiom];
  v34 = v122;
  if (!v33)
  {
    sub_1000039FC(v124);
    v35 = sub_100016384();
    v36 = sub_1000164D4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "idiom is unknown", v37, 2u);
    }

    (v32)(v124, v6);
  }

  v38 = [v23 identifier];
  v119 = v23;
  v120 = v32;
  v116 = v7;
  v117 = v6;
  if (v38)
  {
    v39 = v38;
    v40 = sub_1000163D4();
    v42 = v41;

    v43 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler_recentIntentHandlers;
    swift_beginAccess();
    v44 = *&v3[v43];
    if (*(v44 + 16))
    {

      v45 = sub_100013668(v40, v42);
      if (v46)
      {
        v124 = *(*(v44 + 56) + 8 * v45);

        sub_1000039FC(v34);

        v47 = sub_100016384();
        v48 = sub_1000164E4();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v127[0] = v50;
          *v49 = 136315138;
          v51 = sub_100015224(v40, v42, v127);

          *(v49 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v47, v48, "Found recent intent handler for identifier: %s", v49, 0xCu);
          sub_100002C00(v50);

          v3 = v123;

          v52 = v122;
        }

        else
        {

          v52 = v34;
        }

        (v32)(v52, v6);
        goto LABEL_31;
      }
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    AnnouncementIntentHandler = type metadata accessor for ReadAnnouncementIntentHandler();
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      AnnouncementIntentHandler = type metadata accessor for SendAnnouncementIntentHandler();
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        AnnouncementIntentHandler = type metadata accessor for StopAnnouncementIntentHandler();
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v54 = v3;
          goto LABEL_25;
        }

        AnnouncementIntentHandler = type metadata accessor for PlayAnnouncementSoundIntentHandler();
      }
    }
  }

  v54 = [objc_allocWithZone(AnnouncementIntentHandler) init];
LABEL_25:
  v124 = v54;
  v55 = v118;
  sub_1000039FC(v118);
  v56 = v23;
  v57 = sub_100016384();
  v58 = sub_1000164E4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v127[0] = v60;
    *v59 = 136315138;
    v61 = [v56 identifier];
    if (v61)
    {
      v62 = v61;
      v63 = sub_1000163D4();
      v65 = v64;

      v32 = v120;
    }

    else
    {
      v65 = 0xE300000000000000;
      v63 = 7104878;
    }

    v66 = sub_100015224(v63, v65, v127);

    *(v59 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v57, v58, "Created new intent handler for identifier: %s", v59, 0xCu);
    sub_100002C00(v60);
  }

  (v32)(v55, v6);
  v3 = v123;
LABEL_31:
  v67 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler_recentIntentHandlers;
  swift_beginAccess();
  v122 = v67;
  v68 = *&v3[v67];
  v69 = 1 << *(v68 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v68 + 64);
  v72 = (v69 + 63) >> 6;
  v73 = *&v3[v67];
  result = swift_bridgeObjectRetain_n();
  v75 = 0;
  if (v71)
  {
    while (1)
    {
      v76 = v75;
LABEL_38:
      v77 = __clz(__rbit64(v71)) | (v76 << 6);
      v78 = (*(v68 + 48) + 16 * v77);
      v79 = *v78;
      v80 = v78[1];
      v81 = *(*(v68 + 56) + 8 * v77);
      sub_10000591C(0, &qword_100021358, NSObject_ptr);

      v82 = v81;
      v83 = v124;
      v84 = sub_1000164F4();

      if (v84)
      {
        break;
      }

      v71 &= v71 - 1;

      v75 = v76;
      if (!v71)
      {
        goto LABEL_35;
      }
    }

    v103 = v122;
    v102 = v123;
    swift_beginAccess();

    v104 = v83;
    v105 = *&v103[v102];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = *&v103[v102];
    *&v103[v102] = 0x8000000000000000;
    sub_1000054F0(v104, v79, v80, isUniquelyReferenced_nonNull_native);

    *&v103[v102] = v125;
    swift_endAccess();
    v107 = v114;
    sub_1000039FC(v114);

    v108 = v82;
    v109 = sub_100016384();
    v110 = sub_1000164E4();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v126[0] = v112;
      *v111 = 136315138;

      v113 = sub_100015224(v79, v80, v126);

      *(v111 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v109, v110, "Updated recent intent handler for identifier: %s", v111, 0xCu);
      sub_100002C00(v112);
    }

    else
    {
    }

    (v120)(v107, v117);
    v86 = v121;
  }

  else
  {
    while (1)
    {
LABEL_35:
      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        __break(1u);
        return result;
      }

      if (v76 >= v72)
      {
        break;
      }

      v71 = *(v68 + 64 + 8 * v76);
      ++v75;
      if (v71)
      {
        goto LABEL_38;
      }
    }

    v85 = [v119 identifier];
    v86 = v121;
    if (v85)
    {
      v87 = v85;
      v88 = sub_1000163D4();
      v90 = v89;

      v92 = v122;
      v91 = v123;
      swift_beginAccess();
      v93 = v124;

      v94 = *&v92[v91];
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v125 = *&v92[v91];
      *&v92[v91] = 0x8000000000000000;
      sub_1000054F0(v93, v88, v90, v95);

      *&v92[v91] = v125;
      swift_endAccess();
      v96 = v115;
      sub_1000039FC(v115);

      v97 = sub_100016384();
      v98 = sub_1000164E4();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v126[0] = v100;
        *v99 = 136315138;
        v101 = sub_100015224(v88, v90, v126);

        *(v99 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v97, v98, "Added new intent handler to recents for identifier: %s", v99, 0xCu);
        sub_100002C00(v100);
      }

      else
      {
      }

      (v120)(v96, v117);
    }
  }

  result = sub_10000591C(0, &unk_100021360, INExtension_ptr);
  v86[3] = result;
  *v86 = v124;
  return result;
}

id sub_100004988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IntentHandler()
{
  result = qword_1000212C8;
  if (!qword_1000212C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004A64()
{
  sub_100004B04();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100004B04()
{
  if (!qword_1000214A0)
  {
    sub_100016394();
    v0 = sub_100016514();
    if (!v1)
    {
      atomic_store(v0, &qword_1000214A0);
    }
  }
}

void sub_100004B5C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v55 = &v53 - v8;
  v9 = sub_100016394();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  sub_1000039FC(&v53 - v17);

  v19 = sub_100016384();
  v20 = sub_1000164E4();

  v21 = os_log_type_enabled(v19, v20);
  v56 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v53 = v3;
    v23 = v9;
    v24 = v16;
    v25 = v10;
    v26 = v22;
    v27 = swift_slowAlloc();
    v57 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100015224(a1, a2, &v57);
    _os_log_impl(&_mh_execute_header, v19, v20, "Transaction Did Complete for Intent Identifier: %s", v26, 0xCu);
    sub_100002C00(v27);

    v10 = v25;
    v16 = v24;
    v9 = v23;
    v3 = v53;
  }

  v28 = *(v10 + 8);
  v28(v18, v9);
  v29 = [objc_opt_self() sharedInstance];
  v30 = [v29 BOOLForDefault:ANDefaultPlaybackStatusReturnsImmediately];

  v31 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler_recentIntentHandlers;
  swift_beginAccess();
  v32 = *(v3 + v31);
  if (*(v32 + 16))
  {
    v33 = *(v3 + v31);

    v34 = sub_100013668(v56, a2);
    if (v35)
    {
      v36 = *(*(v32 + 56) + 8 * v34);

      type metadata accessor for ReadAnnouncementIntentHandler();
      v37 = swift_dynamicCastClass();
      if (v37 && (v30 & 1) == 0)
      {
        v38 = v37;
        sub_1000039FC(v16);
        v39 = sub_100016384();
        v40 = sub_1000164E4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Intent Handler is Read Announcement Intent Handler", v41, 2u);
        }

        v28(v16, v9);
        v42 = v54;
        sub_1000039FC(v54);
        v43 = sub_100016384();
        v44 = sub_1000164E4();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Requesting announced to stop playing announcements.", v45, 2u);
        }

        v28(v42, v9);
        v46 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
        swift_beginAccess();
        v47 = v55;
        sub_100005174(v38 + v46, v55, &qword_100021340, &unk_1000173D0);
        v48 = sub_100016374();
        v49 = *(v48 - 8);
        isa = 0;
        if ((*(v49 + 48))(v47, 1, v48) != 1)
        {
          isa = sub_100016354().super.isa;
          (*(v49 + 8))(v47, v48);
        }

        v51 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier:isa];

        v52 = [objc_opt_self() stopCommand];
        [v51 sendPlaybackCommand:v52 completionHandler:0];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100005174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000029F0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000051DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000524C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000029F0(&qword_100021350, &qword_1000174B8);
  v39 = a2;
  result = sub_100016664();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1000166F4();
      sub_100016404();
      result = sub_100016704();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000054F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100013668(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000524C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100013668(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1000166D4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100005668();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_100005668()
{
  v1 = v0;
  sub_1000029F0(&qword_100021350, &qword_1000174B8);
  v2 = *v0;
  v3 = sub_100016654();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1000057D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000029F0(&qword_100021350, &qword_1000174B8);
    v3 = sub_100016674();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100013668(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_1000058D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000591C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_100005964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = objc_allocWithZone(INSpeakableString);
    v8 = sub_1000163C4();
    v9 = [v7 initWithSpokenPhrase:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 16);
  if (v10)
  {
    v62 = _swiftEmptyArrayStorage;
    sub_100016604();
    v11 = (a3 + 40);
    v12 = v9;
    do
    {
      v14 = *(v11 - 1);
      v13 = *v11;
      v15 = objc_allocWithZone(INSpeakableString);

      v16 = v12;
      v17 = sub_1000163C4();
      v18 = [v15 initWithSpokenPhrase:v17];

      LOWORD(v59) = 0;
      [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v16 zone:0 group:0 room:v18 isExcludeFilter:v59 hasAllQuantifier:?];

      sub_1000165E4();
      v19 = _swiftEmptyArrayStorage[2];
      sub_100016614();
      sub_100016624();
      sub_1000165F4();
      v11 += 2;
      --v10;
    }

    while (v10);
    v9 = v12;
    goto LABEL_10;
  }

  if (*(a4 + 16))
  {
    v62 = _swiftEmptyArrayStorage;
LABEL_10:
    sub_100005FB4(_swiftEmptyArrayStorage);
    v20 = *(a4 + 16);
    if (v20)
    {
      sub_100016604();
      v21 = (a4 + 40);
      do
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = objc_allocWithZone(INSpeakableString);
        v25 = v9;
        v26 = v9;

        v27 = sub_1000163C4();
        v28 = [v24 initWithSpokenPhrase:v27];

        LOWORD(v59) = 0;
        [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v26 zone:v28 group:0 room:0 isExcludeFilter:v59 hasAllQuantifier:?];

        sub_1000165E4();
        v29 = _swiftEmptyArrayStorage[2];
        sub_100016614();
        v9 = v25;
        sub_100016624();
        sub_1000165F4();
        v21 += 2;
        --v20;
      }

      while (v20);
    }

    sub_100005FB4(_swiftEmptyArrayStorage);

    return v62;
  }

  if (qword_100020FA0 != -1)
  {
    swift_once();
  }

  v31 = sub_100016394();
  sub_10000331C(v31, qword_100021A00);

  v32 = sub_100016384();
  v33 = sub_1000164E4();

  if (os_log_type_enabled(v32, v33))
  {
    log = v32;
    v61 = v9;
    v34 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v34 = 136446722;
    v35 = sub_100016714();
    v37 = v33;
    v38 = sub_100015224(v35, v36, &v62);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = sub_100016474();
    v41 = sub_100015224(v39, v40, &v62);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    v42 = sub_100016474();
    v44 = sub_100015224(v42, v43, &v62);

    *(v34 + 24) = v44;
    v45 = v37;
    v32 = log;
    _os_log_impl(&_mh_execute_header, log, v45, "(%{public}s) Rooms and Zones empty: %s, %s", v34, 0x20u);
    swift_arrayDestroy();

    v9 = v61;
  }

  if (a2)
  {
    v46 = v9;
    v47 = sub_100016384();
    v48 = sub_1000164E4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62 = v50;
      *v49 = 136446210;
      v51 = sub_100016714();
      v53 = sub_100015224(v51, v52, &v62);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "(%{public}s) Creating filter with Home only", v49, 0xCu);
      sub_100002C00(v50);
    }

    sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1000174D0;
    v55 = objc_allocWithZone(INSpeakableString);
    v56 = sub_1000163C4();
    v57 = [v55 initWithSpokenPhrase:v56];

    LOWORD(v59) = 0;
    v58 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v57 zone:0 group:0 room:0 isExcludeFilter:v59 hasAllQuantifier:?];

    *(v54 + 32) = v58;
    return v54;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100005FB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100016644();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_100016644();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000060A4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100006144(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000060A4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_100016644();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1000165C4();
  *v1 = result;
  return result;
}

uint64_t sub_100006144(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100016644();
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
      result = sub_100016644();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000062C4();
          for (i = 0; i != v6; ++i)
          {
            sub_1000029F0(&unk_100021640, &unk_1000176E0);
            v9 = sub_1000138A4(v13, i, a3);
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
        sub_1000037D0();
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

unint64_t sub_1000062C4()
{
  result = qword_1000213D8;
  if (!qword_1000213D8)
  {
    sub_100006328(&unk_100021640, &unk_1000176E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000213D8);
  }

  return result;
}

uint64_t sub_100006328(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006370@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler____lazy_storage___logger;
  swift_beginAccess();
  sub_100005174(v1 + v10, v9, &qword_100021348, &qword_1000174B0);
  v11 = sub_100016394();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_100002CBC(v9, &qword_100021348, &qword_1000174B0);
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v13 = qword_100021A18;
  sub_1000163A4();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10000A018(v7, v1 + v10, &qword_100021348, &qword_1000174B0);
  return swift_endAccess();
}

id sub_1000065A8()
{
  sub_1000065E4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadAnnouncementIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000065E4()
{
  v1 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce;
  v2 = *(v0 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce);
  if (v2)
  {
    [v2 setDelegate:0];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession;
  v5 = *(v0 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession);
  if (v5)
  {
    [v5 setDelegate:0];
    v5 = *(v0 + v4);
  }

  *(v0 + v4) = 0;
}

uint64_t type metadata accessor for ReadAnnouncementIntentHandler()
{
  result = qword_100021488;
  if (!qword_100021488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006790(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_1000029F0(&qword_100021340, &unk_1000173D0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_100016394();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000068B8, 0, 0);
}

uint64_t sub_1000068B8()
{
  v99 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce;
  v3 = *(v1 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce);
  if (v3)
  {
    goto LABEL_18;
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_100006370(*(v0 + 160));
  v6 = v4;
  v7 = sub_100016384();
  v8 = sub_1000164E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v98 = v11;
    *v10 = 136315138;
    v12 = [v9 _metadata];
    v95 = v2;
    if (v12 && (v13 = v12, v14 = [v12 endpointId], v13, v14))
    {
      v15 = sub_1000163D4();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v96 = *(v0 + 160);
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    *(v0 + 64) = v15;
    *(v0 + 72) = v17;
    sub_1000029F0(&unk_1000210E0, &qword_100017570);
    v23 = sub_1000163E4();
    v25 = sub_100015224(v23, v24, &v98);

    *(v10 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v7, v8, "EndpointID = %s", v10, 0xCu);
    sub_100002C00(v11);

    (*(v21 + 8))(v96, v22);
    v2 = v95;
  }

  else
  {
    v18 = *(v0 + 160);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);

    (*(v20 + 8))(v18, v19);
  }

  v26 = [*(v0 + 88) _metadata];
  if (v26 && (v27 = v26, v28 = [v26 endpointId], v27, v28))
  {
    v29 = v2;
    v30 = *(v0 + 112);
    sub_1000163D4();

    sub_100016344();
  }

  else
  {
    v29 = v2;
    v31 = *(v0 + 112);
    v32 = sub_100016374();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  }

  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 96);
  v36 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
  swift_beginAccess();
  sub_10000A018(v33, v35 + v36, &qword_100021340, &unk_1000173D0);
  swift_endAccess();
  sub_100005174(v35 + v36, v34, &qword_100021340, &unk_1000173D0);
  v37 = sub_100016374();
  v38 = *(v37 - 8);
  isa = 0;
  if ((*(v38 + 48))(v34, 1, v37) != 1)
  {
    v40 = *(v0 + 104);
    isa = sub_100016354().super.isa;
    (*(v38 + 8))(v40, v37);
  }

  v41 = [objc_allocWithZone(ANAnnounce) initWithEndpointIdentifier:isa];

  v2 = v29;
  v42 = *(v1 + v29);
  *(v1 + v29) = v41;
  v43 = v41;

  if (v43)
  {
    [v43 setDelegate:*(v0 + 96)];
  }

  v3 = *(v1 + v29);
  if (v3)
  {
LABEL_18:
    v44 = [v3 unplayedAnnouncements];
    sub_10000591C(0, &unk_1000214C0, ANAnnouncementContext_ptr);
    v45 = sub_100016464();
  }

  else
  {
    v45 = &_swiftEmptyArrayStorage;
  }

  v49 = *(v0 + 152);
  v46 = *(v0 + 96);
  *(v0 + 80) = v45;
  v47 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions;
  *(v46 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions) = 128;
  sub_100006370(v49);
  v48 = sub_100016384();
  LOBYTE(v49) = sub_1000164E4();
  v50 = v45 >> 62;
  if (!os_log_type_enabled(v48, v49))
  {
    goto LABEL_23;
  }

  v51 = swift_slowAlloc();
  *v51 = 134217984;
  if (v50)
  {
    goto LABEL_64;
  }

  v52 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v51 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v48, v49, "Unheard Announcements (%ld)", v51, 0xCu);

LABEL_23:

    v53 = *(*(v0 + 128) + 8);
    v53(*(v0 + 152), *(v0 + 120));
    if (v50)
    {
      if (sub_100016644())
      {
LABEL_25:
        v1 = v45;
        goto LABEL_38;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v54 = *(v1 + v2);
    if (v54)
    {
      v55 = [v54 receivedAnnouncements];
      sub_10000591C(0, &unk_1000214C0, ANAnnouncementContext_ptr);
      v1 = sub_100016464();
    }

    else
    {
      v1 = &_swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    *(v0 + 80) = v1;

    v56 = *(v46 + v47);
    if ((v56 & 0x40) == 0)
    {
      *(v46 + v47) = v56 | 0x40;
    }

    v57 = *(v0 + 96);
    sub_100006370(*(v0 + 144));
    v58 = sub_100016384();
    v59 = sub_1000164E4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      if (v1 >> 62)
      {
        v92 = v1;
        v93 = v60;
        v61 = sub_100016644();
        v60 = v93;
        v1 = v92;
      }

      else
      {
        v61 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v60 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v58, v59, "All Announcements (%ld)", v60, 0xCu);
    }

    v53(*(v0 + 144), *(v0 + 120));
    v45 = v1;
LABEL_38:
    v97 = v53;
    if (v1 >> 62)
    {
      v46 = sub_100016644();
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = &_swiftEmptyArrayStorage;
    if (!v46)
    {
      goto LABEL_52;
    }

    v98 = &_swiftEmptyArrayStorage;

    v48 = &v98;
    v51 = sub_100016604();
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_64:
    v90 = v2;
    v91 = v51;
    v52 = sub_100016644();
    v51 = v91;
    v2 = v90;
  }

  v62 = 0;
  v63 = v45 & 0xC000000000000001;
  do
  {
    if (v63)
    {
      v68 = sub_1000165B4();
    }

    else
    {
      v68 = *(v1 + 8 * v62 + 32);
    }

    v69 = v68;
    v70 = [v68 homeName];
    if (!v70)
    {
      sub_1000163D4();
      v70 = sub_1000163C4();
    }

    v71 = [objc_allocWithZone(INSpeakableString) initWithSpokenPhrase:v70];

    LOWORD(v94) = 0;
    v72 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v71 zone:0 group:0 room:0 isExcludeFilter:v94 hasAllQuantifier:?];

    v73 = [v69 announcementID];
    if (!v73)
    {
      sub_1000163D4();
      v73 = sub_1000163C4();
    }

    ++v62;
    v64 = [v69 audioFileDuration];
    v65 = objc_allocWithZone(INAnnouncementRecord);
    v66 = v72;
    [v65 initWithOriginator:v66 identifier:v73 duration:v64];

    sub_1000165E4();
    v67 = v98[2];
    sub_100016614();
    sub_100016624();
    sub_1000165F4();
  }

  while (v46 != v62);

  v49 = v98;
LABEL_52:
  if (qword_100020FB8 != -1)
  {
    swift_once();
  }

  v74 = *(v0 + 136);
  v75 = *(v0 + 96);
  v76 = *(qword_100021A28 + 16);
  *(qword_100021A28 + 16) = v49;

  v77 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:1 userActivity:0];
  sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
  v78 = sub_100016454().super.isa;
  [v77 setAnnouncementRecords:v78];

  sub_100006370(v74);

  v79 = sub_100016384();
  v80 = sub_1000164E4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 134217984;
    if (v49 >> 62)
    {
      v82 = sub_100016644();
    }

    else
    {
      v82 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v81 + 4) = v82;

    _os_log_impl(&_mh_execute_header, v79, v80, "Confirmed Read Announcement Intent with announcement count: %ld", v81, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v84 = *(v0 + 152);
  v83 = *(v0 + 160);
  v85 = *(v0 + 144);
  v86 = *(v0 + 112);
  v87 = *(v0 + 104);
  v97(*(v0 + 136), *(v0 + 120));

  v88 = *(v0 + 8);

  return v88(v77);
}

uint64_t sub_10000757C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000A404;

  return sub_100006790(v6);
}

uint64_t sub_100007640(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_1000029F0(&unk_100021660, &qword_1000176F0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(sub_1000029F0(&qword_100021340, &unk_1000173D0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = sub_100016394();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000077B8, 0, 0);
}

uint64_t sub_1000077B8()
{
  v136 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_100006370(*(v0 + 152));
  v3 = v2;
  v4 = sub_100016384();
  v5 = sub_1000164E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received Read Announcement Intent: %@", v7, 0xCu);
    sub_100002CBC(v8, &qword_1000214B0, &qword_1000173E0);
  }

  v10 = *(v0 + 152);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);

  v13 = *(v12 + 8);
  v13(v10, v11);
  if (qword_100020FB8 != -1)
  {
LABEL_66:
    swift_once();
  }

  v14 = *(qword_100021A28 + 16);
  *(v0 + 160) = v14;
  v15 = v14 >> 62;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_68:
    v114 = *(v0 + 112);
    v115 = *(v0 + 64);

    sub_100006370(v114);

    v116 = sub_100016384();
    v117 = sub_1000164E4();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 134217984;
      if (v15)
      {
        v119 = sub_100016644();
      }

      else
      {
        v119 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v118 + 4) = v119;

      _os_log_impl(&_mh_execute_header, v116, v117, "No announcements to play back. (%ld)", v118, 0xCu);
    }

    else
    {
    }

    v13(*(v0 + 112), *(v0 + 96));
    v109 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:3 userActivity:0];
    sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
    v110.super.isa = sub_100016454().super.isa;

    [v109 setAnnouncementRecords:v110.super.isa];
LABEL_75:

    v121 = *(v0 + 144);
    v120 = *(v0 + 152);
    v123 = *(v0 + 128);
    v122 = *(v0 + 136);
    v125 = *(v0 + 112);
    v124 = *(v0 + 120);
    v127 = *(v0 + 80);
    v126 = *(v0 + 88);
    v128 = *(v0 + 72);

    v129 = *(v0 + 8);

    return v129(v109);
  }

  v16 = sub_100016644();
  if (!v16)
  {
    goto LABEL_68;
  }

LABEL_6:
  v17 = *(v0 + 56);
  v18 = objc_opt_self();

  v19 = [v18 sharedInstance];
  v133 = [v19 BOOLForDefault:ANDefaultPlaybackStatusReturnsImmediately];

  v20 = [v17 _idiom];
  v21 = *(v0 + 64);
  v132 = v13;
  if (v20 == 5)
  {
    sub_100006370(*(v0 + 144));

    v22 = sub_100016384();
    v23 = sub_1000164E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      if (v15)
      {
        v25 = sub_100016644();
      }

      else
      {
        v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v24 + 4) = v25;

      _os_log_impl(&_mh_execute_header, v22, v23, "Requesting playback (CarPlay) for announcements (%ld)", v24, 0xCu);
    }

    else
    {
    }

    v13(*(v0 + 144), *(v0 + 96));
    v30 = 0;
    v13 = (v14 & 0xFFFFFFFFFFFFFF8);
    v134 = &_swiftEmptyArrayStorage;
    do
    {
      v31 = v30;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v32 = sub_1000165B4();
        }

        else
        {
          if (v31 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v32 = *(v14 + 8 * v31 + 32);
        }

        v33 = v32;
        v30 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v34 = [v32 identifier];
        if (v34)
        {
          break;
        }

        ++v31;
        if (v30 == v16)
        {
          goto LABEL_39;
        }
      }

      v35 = v34;
      v36 = sub_1000163D4();
      v130 = v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_100009BE4(0, *(v134 + 2) + 1, 1, v134);
      }

      v39 = *(v134 + 2);
      v38 = *(v134 + 3);
      if (v39 >= v38 >> 1)
      {
        v134 = sub_100009BE4((v38 > 1), v39 + 1, 1, v134);
      }

      *(v134 + 2) = v39 + 1;
      v40 = &v134[16 * v39];
      *(v40 + 4) = v36;
      *(v40 + 5) = v130;
    }

    while (v30 != v16);
  }

  else
  {
    sub_100006370(*(v0 + 136));

    v26 = sub_100016384();
    v27 = sub_1000164E4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      if (v15)
      {
        v29 = sub_100016644();
      }

      else
      {
        v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v28 + 4) = v29;

      _os_log_impl(&_mh_execute_header, v26, v27, "Requesting playback for announcements (%ld)", v28, 0xCu);
    }

    else
    {
    }

    v41 = *(v0 + 64);
    v13(*(v0 + 136), *(v0 + 96));
    v42 = *(v41 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions);
    if ((v42 & 0x20) == 0)
    {
      *(v41 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions) = v42 | 0x20;
    }

    v43 = [*(v0 + 56) startAnnouncementIdentifier];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1000163D4();
      v47 = v46;

      sub_1000029F0(&unk_100021610, &unk_100017578);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1000174E0;
      *(v48 + 32) = v45;
      *(v48 + 40) = v47;
    }
  }

LABEL_39:
  v49 = *(v0 + 64);
  v50 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession;
  if (*(v49 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession))
  {
    v51 = v133;
    p_prots = (&OBJC_PROTOCOL___INStopAnnouncementIntentHandling + 16);
  }

  else
  {
    v53 = *(v0 + 56);
    v54 = *(v0 + 64);
    sub_100006370(*(v0 + 128));
    v55 = v53;
    v56 = sub_100016384();
    v57 = sub_1000164E4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 56);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v135 = v60;
      *v59 = 136315138;
      v61 = [v58 _metadata];
      v62 = v60;
      if (v61 && (v63 = v61, v64 = [v61 endpointId], v63, v64))
      {
        v65 = sub_1000163D4();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      v131 = *(v0 + 128);
      v70 = *(v0 + 96);
      *(v0 + 40) = v65;
      *(v0 + 48) = v67;
      sub_1000029F0(&unk_1000210E0, &qword_100017570);
      v71 = sub_1000163E4();
      v73 = sub_100015224(v71, v72, &v135);

      *(v59 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v56, v57, "EndpointID = %s", v59, 0xCu);
      sub_100002C00(v62);

      v132(v131, v70);
    }

    else
    {
      v68 = *(v0 + 128);
      v69 = *(v0 + 96);

      v132(v68, v69);
    }

    v74 = [*(v0 + 56) _metadata];
    if (v74 && (v75 = v74, v76 = [v74 endpointId], v75, v76))
    {
      v77 = *(v0 + 88);
      sub_1000163D4();

      sub_100016344();
    }

    else
    {
      v78 = *(v0 + 88);
      v79 = sub_100016374();
      (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
    }

    v80 = *(v0 + 80);
    v81 = *(v0 + 88);
    v82 = *(v0 + 64);
    v83 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
    swift_beginAccess();
    sub_10000A018(v81, v82 + v83, &qword_100021340, &unk_1000173D0);
    swift_endAccess();
    sub_100005174(v82 + v83, v80, &qword_100021340, &unk_1000173D0);
    v84 = sub_100016374();
    v85 = *(v84 - 8);
    isa = 0;
    if ((*(v85 + 48))(v80, 1, v84) != 1)
    {
      v87 = *(v0 + 80);
      isa = sub_100016354().super.isa;
      (*(v85 + 8))(v87, v84);
    }

    v88 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier:isa];

    v89 = *(v49 + v50);
    *(v49 + v50) = v88;
    v90 = v88;

    v49 = *(v0 + 64);
    p_prots = &OBJC_PROTOCOL___INStopAnnouncementIntentHandling.prots;
    if (v90)
    {
      [v90 setDelegate:*(v0 + 64)];

      v49 = *(v0 + 64);
    }

    v51 = v133;
  }

  v91 = objc_opt_self();
  v92 = *(&p_prots[124]->count + v49);
  v93 = sub_100016454().super.isa;

  v94 = [v91 playCommandWithOptions:v92 announcementIdentifiers:v93];
  *(v0 + 168) = v94;

  if (v51)
  {
    v95 = *(v0 + 64);
    sub_100006370(*(v0 + 120));
    v96 = sub_100016384();
    v97 = sub_1000164E4();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Not waiting for playback to complete. Returning success early.", v98, 2u);
    }

    v99 = *(v0 + 120);
    v100 = *(v0 + 96);
    v102 = *(v0 + 64);
    v101 = *(v0 + 72);

    v132(v99, v100);
    v103 = sub_1000164C4();
    (*(*(v103 - 8) + 56))(v101, 1, 1, v103);
    v104 = swift_allocObject();
    v104[2] = 0;
    v104[3] = 0;
    v104[4] = v102;
    v104[5] = v94;
    v105 = v102;
    v106 = v94;
    sub_100009094(0, 0, v101, &unk_100017568, v104);

    v107 = *(v0 + 160);
    v108 = *(v0 + 168);
    v109 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:3 userActivity:0];
    sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
    v110.super.isa = sub_100016454().super.isa;

    [v109 setAnnouncementRecords:v110.super.isa];

    goto LABEL_75;
  }

  v111 = swift_task_alloc();
  *(v0 + 176) = v111;
  *v111 = v0;
  v111[1] = sub_10000858C;
  v112 = *(v0 + 64);

  return sub_100008968(v94);
}

uint64_t sub_10000858C(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10000868C, 0, 0);
}

uint64_t sub_10000868C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:v0[23] userActivity:0];
  sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
  isa = sub_100016454().super.isa;

  [v3 setAnnouncementRecords:isa];

  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];

  v14 = v0[1];

  return v14(v3);
}

uint64_t sub_1000087D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100008874;

  return sub_100008968(a5);
}

uint64_t sub_100008874()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008968(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = sub_100016394();
  v2[28] = v3;
  v4 = *(v3 - 8);
  v2[29] = v4;
  v5 = *(v4 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100008A34, 0, 0);
}

uint64_t sub_100008A34()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession);
  v0[32] = v1;
  if (v1)
  {
    v2 = v0[26];
    v0[2] = v0;
    v0[3] = sub_100008C50;
    v3 = swift_continuation_init();
    v0[17] = sub_1000029F0(&qword_1000214B8, &unk_1000175A0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100014710;
    v0[13] = &unk_10001CA80;
    v0[14] = v3;
    [v1 sendPlaybackCommand:v2 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_100006370(v0[31]);
    v4 = sub_100016384();
    v5 = sub_1000164E4();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[31];
    v8 = v0[28];
    v9 = v0[29];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Playback Completed", v10, 2u);
    }

    (*(v9 + 8))(v7, v8);
    v12 = v0[30];
    v11 = v0[31];

    v13 = v0[1];

    return v13(3);
  }
}

uint64_t sub_100008C50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_100008E84;
  }

  else
  {
    v3 = sub_100008D60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008D60()
{
  v1 = *(v0 + 216);
  sub_100006370(*(v0 + 248));
  v2 = sub_100016384();
  v3 = sub_1000164E4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Playback Completed", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);

  v11 = *(v0 + 8);

  return v11(3);
}

uint64_t sub_100008E84()
{
  v31 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[27];
  swift_willThrow();

  sub_100006370(v3);
  swift_errorRetain();
  v5 = sub_100016384();
  v6 = sub_1000164D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[33];
    v9 = v0[29];
    v8 = v0[30];
    v10 = v0[28];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[23];
    v16 = sub_1000166E4();
    v18 = sub_100015224(v16, v17, &v30);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Playback Error: %{public}s", v11, 0xCu);
    sub_100002C00(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v20 = v0[29];
    v19 = v0[30];
    v21 = v0[28];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[33];
  swift_getErrorValue();
  v23 = v0[18];
  v24 = v0[20];
  v25 = sub_10000304C(v0[19]);

  v27 = v0[30];
  v26 = v0[31];

  v28 = v0[1];

  return v28(v25);
}

uint64_t sub_100009094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005174(a3, v27 - v11, &unk_100021660, &qword_1000176F0);
  v13 = sub_1000164C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002CBC(v12, &unk_100021660, &qword_1000176F0);
  }

  else
  {
    sub_1000164B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000164A4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000163F4() + 32;
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

      sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);

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

  sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);
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

uint64_t sub_10000951C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000095E0;

  return sub_100007640(v6);
}

uint64_t sub_1000095E0(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

void sub_10000983C()
{
  sub_100009958(319, &qword_100021498, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100009958(319, &qword_1000214A0, &type metadata accessor for Logger);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100009958(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100016514();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000099F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009AEC;

  return v7(a1);
}

uint64_t sub_100009AEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_100009BE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000029F0(&unk_100021610, &unk_100017578);
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

uint64_t sub_100009CF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008874;

  return sub_1000087D8(a1, v4, v5, v7, v6);
}

uint64_t sub_100009DFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009E34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A41C;

  return sub_1000099F4(a1, v5);
}

uint64_t sub_100009EEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008874;

  return sub_1000099F4(a1, v5);
}

uint64_t sub_100009FB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A018(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000029F0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A084()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_10000951C(v2, v3, v4);
}

uint64_t sub_10000A13C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000A41C;

  return sub_100014BAC(v2, v3, v5);
}

uint64_t sub_10000A1FC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A244()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_10000757C(v2, v3, v4);
}

uint64_t sub_10000A2F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A41C;

  return sub_100014C98(a1, v4, v5, v7);
}

unint64_t sub_10000A428(unint64_t result)
{
  v1 = result;
  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v26 = &_swiftEmptySetSingleton;
    goto LABEL_23;
  }

  result = sub_100016644();
  v2 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v38 = 0;
    v3 = 0;
    v4 = 0xE000000000000000;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1000165B4();
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 zone];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 spokenPhrase];

        v10 = sub_1000163D4();
        v12 = v11;

        sub_100012C78(&v39, v10, v12);
      }

      v13 = [v6 room];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 spokenPhrase];

        v16 = sub_1000163D4();
        v18 = v17;

        sub_100012C78(&v39, v16, v18);
      }

      v19 = [v6 home];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 spokenPhrase];

        v22 = sub_1000163D4();
        v24 = v23;

        v25 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v25 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
        }

        else
        {

          v38 = v22;
          v4 = v24;
        }
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
    v26 = v41;
LABEL_23:
    v27 = [objc_allocWithZone(ANHomeContext) init];
    v28 = sub_1000163C4();

    [v27 setHomeName:v28];

    v29 = v26[2];
    if (v29)
    {
      v30 = sub_100012B84(v26[2], 0);
      v31 = sub_10001392C(&v39, v30 + 4, v29, v26);
      sub_10001401C();
      if (v31 == v29)
      {
        goto LABEL_27;
      }

      __break(1u);
    }

LABEL_27:
    isa = sub_100016454().super.isa;

    [v27 setZoneNames:isa];

    v33 = v40;
    v34 = v40[2];
    if (v34)
    {
      v35 = sub_100012B84(v40[2], 0);
      v36 = sub_10001392C(&v39, v35 + 4, v34, v33);
      sub_10001401C();
      if (v36 == v34)
      {
LABEL_31:
        v37 = sub_100016454().super.isa;

        [v27 setRoomNames:v37];

        return v27;
      }

      __break(1u);
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A7EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler____lazy_storage___logger;
  swift_beginAccess();
  sub_100005174(v1 + v10, v9, &qword_100021348, &qword_1000174B0);
  v11 = sub_100016394();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_100002CBC(v9, &qword_100021348, &qword_1000174B0);
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v13 = qword_100021A18;
  sub_1000163A4();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000051DC(v7, v1 + v10);
  return swift_endAccess();
}

id sub_10000AAAC()
{
  v1 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  v2 = *&v0[OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce];
  if (v2)
  {
    [v2 setDelegate:0];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SendAnnouncementIntentHandler();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for SendAnnouncementIntentHandler()
{
  result = qword_100021568;
  if (!qword_100021568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AC50(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_100016334();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v6 = sub_100016394();
  v2[35] = v6;
  v7 = *(v6 - 8);
  v2[36] = v7;
  v8 = *(v7 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return _swift_task_switch(sub_10000ADD8, 0, 0);
}

uint64_t sub_10000ADD8()
{
  v136 = v0;
  v1 = v0[29];
  v2 = v0[30];
  sub_10000A7EC(v0[45]);
  v3 = v1;
  v4 = sub_100016384();
  v5 = sub_1000164E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[45];
  v9 = v0[35];
  v8 = v0[36];
  if (v6)
  {
    v10 = v0[29];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v135[0] = v12;
    *v11 = 136315138;
    v13 = sub_10000C3E4();
    v15 = sub_100015224(v13, v14, v135);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resolving Announcement: %s", v11, 0xCu);
    sub_100002C00(v12);
  }

  v16 = *(v8 + 8);
  v16(v7, v9);
  v0[46] = v16;
  v17 = v0[29];
  v18 = v0[30];
  sub_10000A7EC(v0[44]);
  v19 = v17;
  v20 = sub_100016384();
  v21 = sub_1000164E4();

  if (!os_log_type_enabled(v20, v21))
  {
    v31 = v0[44];
    v33 = v0[35];
    v32 = v0[36];

    v34 = v31;
    v35 = v33;
    goto LABEL_11;
  }

  v132 = v16;
  v22 = v0[29];
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v135[0] = v24;
  *v23 = 136315138;
  v25 = [v22 _metadata];
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = v25;
  v27 = [v25 endpointId];

  if (!v27)
  {
    v25 = 0;
LABEL_9:
    v30 = 0xE000000000000000;
    goto LABEL_10;
  }

  v28 = sub_1000163D4();
  v30 = v29;

  v25 = v28;
LABEL_10:
  v36 = v0[44];
  v38 = v0[35];
  v37 = v0[36];
  v39 = sub_100015224(v25, v30, v135);

  *(v23 + 4) = v39;
  _os_log_impl(&_mh_execute_header, v20, v21, "Endpoint %s", v23, 0xCu);
  sub_100002C00(v24);

  v34 = v36;
  v35 = v38;
  v16 = v132;
LABEL_11:
  v16(v34, v35);
  v40 = v0[29];
  v41 = sub_100013A84(v40);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_100014478;
  v0[23] = v42;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10000243C;
  v0[21] = &unk_10001CC38;
  v43 = _Block_copy(v0 + 18);
  v44 = v0[23];
  v45 = v41;

  [v45 prewarmWithHandler:v43];
  _Block_release(v43);

  v46 = [v40 announcement];
  v0[47] = v46;
  if (v46)
  {
    v47 = v46;
    v48 = [v0[29] isReply];
    if (v48 && (v49 = v48, v50 = [v48 BOOLValue], v49, v50))
    {
      v51 = [v47 identifier];
      v0[48] = v51;
      if (v51)
      {
        v52 = v51;
        v53 = sub_1000163D4();
        v0[49] = v53;
        v0[50] = v54;
        v55 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v55 = v53 & 0xFFFFFFFFFFFFLL;
        }

        if (v55)
        {
          v56 = v0[30];
          v57 = sub_100013A84(v0[29]);
          v0[51] = v57;
          v0[2] = v0;
          v0[7] = v0 + 28;
          v0[3] = sub_10000BAEC;
          v58 = swift_continuation_init();
          v0[17] = sub_1000029F0(&qword_100021638, &qword_1000176D8);
          v0[10] = _NSConcreteStackBlock;
          v0[11] = 1107296256;
          v0[12] = sub_10000CA00;
          v0[13] = &unk_10001CC60;
          v0[14] = v58;
          [v57 announcementForID:v52 reply:v0 + 10];

          return _swift_continuation_await(v0 + 2);
        }
      }

      v113 = v0[30];
      sub_10000A7EC(v0[42]);
      v114 = sub_100016384();
      v115 = sub_1000164D4();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&_mh_execute_header, v114, v115, "Announcement Identifier is empty for reply", v116, 2u);
      }

      v117 = v0[42];
      v118 = v0[35];
      v119 = v0[36];

      v16(v117, v118);
      aBlock = [objc_opt_self() unsupportedForReason:1];
    }

    else
    {
      v59 = [v0[47] speechDataURL];
      if (v59)
      {
        v60 = v0[33];
        v61 = v0[34];
        v62 = v0[31];
        v63 = v0[32];
        v64 = v59;
        sub_100016324();

        (*(v63 + 16))(v60, v61, v62);
        v65 = objc_allocWithZone(AVAudioFile);
        v66 = sub_100012A38(v60);
        v67 = v0[30];
        v84 = v0[41];
        v85 = v66;
        v86 = [v66 length];
        v87 = [v85 processingFormat];
        [v87 sampleRate];
        v89 = v88;

        v90 = v86 / v89;
        sub_10000A7EC(v84);
        v91 = sub_100016384();
        v92 = sub_1000164E4();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 134349056;
          *(v93 + 4) = v90;
          _os_log_impl(&_mh_execute_header, v91, v92, "Speech Data Length: %{public}f", v93, 0xCu);
        }

        v94 = v0[46];
        v95 = v0[41];
        v96 = v0[35];
        v97 = v0[36];

        v94(v95, v96);
        if (v90 >= 60.0)
        {
          v102 = v0[30];
          sub_10000A7EC(v0[39]);
          v103 = sub_100016384();
          v104 = sub_1000164E4();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            *v105 = 67240192;
            *(v105 + 4) = 60;
            _os_log_impl(&_mh_execute_header, v103, v104, "Speech Data Length Exceeds Maximum (%{public}d seconds). Requires Confirmation.", v105, 8u);
          }

          v107 = v0[46];
          v106 = v0[47];
          v108 = v0[39];
          v110 = v0[34];
          v109 = v0[35];
          v111 = v0[31];
          v112 = v0[32];

          v107(v108, v109);
          aBlock = [objc_opt_self() confirmationRequiredWithAnnouncementToConfirm:v106 forReason:1];

          (*(v112 + 8))(v110, v111);
        }

        else
        {
          v98 = v0[47];
          v99 = v0[34];
          v101 = v0[31];
          v100 = v0[32];
          sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
          aBlock = [swift_getObjCClassFromMetadata() successWithResolvedAnnouncement:v98];

          (*(v100 + 8))(v99, v101);
        }
      }

      else
      {
        v75 = v0[30];
        sub_10000A7EC(v0[38]);
        v76 = sub_100016384();
        v77 = sub_1000164D4();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "Resolving Announcement failed for no Speech Data URL.", v78, 2u);
        }

        v80 = v0[46];
        v79 = v0[47];
        v81 = v0[38];
        v82 = v0[35];
        v83 = v0[36];

        v80(v81, v82);
        sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
        aBlock = [swift_getObjCClassFromMetadata() needsValue];
      }
    }
  }

  else
  {
    v68 = v0[30];
    sub_10000A7EC(v0[37]);
    v69 = sub_100016384();
    v70 = sub_1000164E4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Announcement is empty. Needs value.", v71, 2u);
    }

    v73 = v0[36];
    v72 = v0[37];
    v74 = v0[35];

    v16(v72, v74);
    sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
    aBlock = [swift_getObjCClassFromMetadata() needsValue];
  }

  v121 = v0[44];
  v120 = v0[45];
  v123 = v0[42];
  v122 = v0[43];
  v125 = v0[40];
  v124 = v0[41];
  v127 = v0[38];
  v126 = v0[39];
  v128 = v0[37];
  v129 = v0[34];
  v133 = v0[33];

  v130 = v0[1];

  return v130(aBlock);
}

uint64_t sub_10000BAEC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000BBCC, 0, 0);
}

uint64_t sub_10000BBCC()
{
  v85 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 384);

  v3 = *(v0 + 400);
  if (v1)
  {

    v4 = [*(v0 + 376) speechDataURL];
    if (v4)
    {
      v5 = *(v0 + 264);
      v6 = *(v0 + 272);
      v7 = *(v0 + 248);
      v8 = *(v0 + 256);
      v9 = v4;
      sub_100016324();

      (*(v8 + 16))(v5, v6, v7);
      v10 = objc_allocWithZone(AVAudioFile);
      v11 = sub_100012A38(v5);
      v12 = *(v0 + 240);
      v40 = *(v0 + 328);
      v41 = v11;
      v42 = [v11 length];
      v43 = [v41 processingFormat];
      [v43 sampleRate];
      v45 = v44;

      v46 = v42 / v45;
      sub_10000A7EC(v40);
      v47 = sub_100016384();
      v48 = sub_1000164E4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134349056;
        *(v49 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v47, v48, "Speech Data Length: %{public}f", v49, 0xCu);
      }

      v50 = *(v0 + 368);
      v51 = *(v0 + 328);
      v52 = *(v0 + 280);
      v53 = *(v0 + 288);

      v50(v51, v52);
      if (v46 >= 60.0)
      {
        v58 = *(v0 + 240);
        sub_10000A7EC(*(v0 + 312));
        v59 = sub_100016384();
        v60 = sub_1000164E4();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 67240192;
          *(v61 + 4) = 60;
          _os_log_impl(&_mh_execute_header, v59, v60, "Speech Data Length Exceeds Maximum (%{public}d seconds). Requires Confirmation.", v61, 8u);
        }

        v63 = *(v0 + 368);
        v62 = *(v0 + 376);
        v64 = *(v0 + 312);
        v66 = *(v0 + 272);
        v65 = *(v0 + 280);
        v67 = *(v0 + 248);
        v68 = *(v0 + 256);

        v63(v64, v65);
        v83 = [objc_opt_self() confirmationRequiredWithAnnouncementToConfirm:v62 forReason:1];

        (*(v68 + 8))(v66, v67);
      }

      else
      {
        v54 = *(v0 + 376);
        v55 = *(v0 + 272);
        v57 = *(v0 + 248);
        v56 = *(v0 + 256);
        sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
        v83 = [swift_getObjCClassFromMetadata() successWithResolvedAnnouncement:v54];

        (*(v56 + 8))(v55, v57);
      }
    }

    else
    {
      v25 = *(v0 + 240);
      sub_10000A7EC(*(v0 + 304));
      v26 = sub_100016384();
      v27 = sub_1000164D4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Resolving Announcement failed for no Speech Data URL.", v28, 2u);
      }

      v29 = *(v0 + 368);
      v30 = *(v0 + 376);
      v31 = *(v0 + 304);
      v32 = *(v0 + 280);
      v33 = *(v0 + 288);

      v29(v31, v32);
      sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
      v83 = [swift_getObjCClassFromMetadata() needsValue];
    }
  }

  else
  {
    v13 = *(v0 + 240);
    sub_10000A7EC(*(v0 + 344));

    v14 = sub_100016384();
    v15 = sub_1000164D4();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 400);
    if (v16)
    {
      v18 = *(v0 + 392);
      v82 = *(v0 + 368);
      v19 = *(v0 + 344);
      v20 = *(v0 + 280);
      v21 = *(v0 + 288);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v84 = v23;
      *v22 = 136315138;
      v24 = sub_100015224(v18, v17, &v84);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not find reply-to announcement: %s", v22, 0xCu);
      sub_100002C00(v23);

      v82(v19, v20);
    }

    else
    {
      v34 = *(v0 + 368);
      v35 = *(v0 + 344);
      v36 = *(v0 + 280);
      v37 = *(v0 + 288);
      v38 = *(v0 + 400);

      v34(v35, v36);
    }

    v39 = *(v0 + 376);
    v83 = [objc_opt_self() unsupportedForReason:1];
  }

  v70 = *(v0 + 352);
  v69 = *(v0 + 360);
  v72 = *(v0 + 336);
  v71 = *(v0 + 344);
  v74 = *(v0 + 320);
  v73 = *(v0 + 328);
  v76 = *(v0 + 304);
  v75 = *(v0 + 312);
  v77 = *(v0 + 296);
  v78 = *(v0 + 272);
  v81 = *(v0 + 264);

  v79 = *(v0 + 8);

  return v79(v83);
}

uint64_t sub_10000C3E4()
{
  v1 = v0;
  v2 = 7104878;
  v3 = sub_1000029F0(&qword_1000215E8, &qword_100017698);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v49 - v5;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1000165A4(143);
  v52 = v49;
  v53 = v50;
  v54._countAndFlagsBits = 0xD000000000000013;
  v54._object = 0x8000000100018C50;
  sub_100016424(v54);
  v7 = [v0 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1000163D4();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v55._countAndFlagsBits = v9;
  v55._object = v11;
  sub_100016424(v55);

  v56._countAndFlagsBits = 0x656970696365520ALL;
  v56._object = 0xED0000203A73746ELL;
  sub_100016424(v56);
  v12 = [v1 recipients];
  if (v12)
  {
    v13 = v12;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    sub_100016464();
  }

  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v14 = sub_100016474();
  v16 = v15;

  v57._countAndFlagsBits = v14;
  v57._object = v16;
  sub_100016424(v57);

  v58._countAndFlagsBits = 0xD00000000000001ALL;
  v58._object = 0x8000000100018C70;
  sub_100016424(v58);
  v17 = [v1 announcement];
  if (v17 && (v18 = v17, v19 = [v17 identifier], v18, v19))
  {
    v20 = sub_1000163D4();
    v22 = v21;

    v23._countAndFlagsBits = v20;
  }

  else
  {
    v22 = 0xE300000000000000;
    v23._countAndFlagsBits = 7104878;
  }

  v24 = 0x65736C6166;
  v23._object = v22;
  sub_100016424(v23);

  v59._countAndFlagsBits = 0x6C7065522073490ALL;
  v59._object = 0xEB00000000203A79;
  sub_100016424(v59);
  v25 = [v1 isReply];
  if (v25 && (v26 = v25, v27 = [v25 BOOLValue], v26, (v27 & 1) != 0))
  {
    v28 = 0xE400000000000000;
    v29._countAndFlagsBits = 1702195828;
  }

  else
  {
    v28 = 0xE500000000000000;
    v29._countAndFlagsBits = 0x65736C6166;
  }

  v29._object = v28;
  sub_100016424(v29);

  v60._countAndFlagsBits = 0xD000000000000012;
  v60._object = 0x8000000100018C90;
  sub_100016424(v60);
  v51 = v3;
  v30 = sub_100013FB8(&v49);
  v31 = [v1 announcement];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 speechDataURL];

    if (v33)
    {
      sub_100016324();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v36 = sub_100016334();
    (*(*(v36 - 8) + 56))(v6, v34, 1, v36);
    sub_100012C08(v6, v30);
  }

  else
  {
    v35 = sub_100016334();
    (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
  }

  sub_100016634();
  sub_100002C00(&v49);
  v61._object = 0x8000000100018CB0;
  v61._countAndFlagsBits = 0xD000000000000010;
  sub_100016424(v61);
  v37 = [v1 announcement];
  if (v37 && (v38 = v37, v39 = [v37 speechDataTranscription], v38, v39))
  {

    v40 = 0xE400000000000000;
    v24 = 1702195828;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  v62._countAndFlagsBits = v24;
  v62._object = v40;
  sub_100016424(v62);

  v63._countAndFlagsBits = 0x6874676E654C202CLL;
  v63._object = 0xEA00000000002820;
  sub_100016424(v63);
  v41 = [v1 announcement];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 speechDataTranscription];

    if (v43)
    {
      sub_1000163D4();

      v43 = sub_100016414();
    }
  }

  else
  {
    v43 = 0;
  }

  v49 = v43;
  v64._countAndFlagsBits = sub_100016684();
  sub_100016424(v64);

  v65._countAndFlagsBits = 0x696F70646E450A29;
  v65._object = 0xEE00203A4449746ELL;
  sub_100016424(v65);
  v44 = [v1 _endpointId];
  if (v44)
  {
    v45 = v44;
    v2 = sub_1000163D4();
    v47 = v46;
  }

  else
  {
    v47 = 0xE300000000000000;
  }

  v66._countAndFlagsBits = v2;
  v66._object = v47;
  sub_100016424(v66);

  return v52;
}

uint64_t sub_10000CA00(uint64_t a1, void *a2)
{
  v3 = sub_1000058D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10000CBEC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000095E0;

  return sub_10000AC50(v6);
}

uint64_t sub_10000CCB0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100016394();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000CD7C, 0, 0);
}

uint64_t sub_10000CD7C()
{
  v47 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_10000A7EC(*(v0 + 104));
  v4 = v2;
  v5 = sub_100016384();
  v6 = sub_1000164E4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  if (v7)
  {
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 136315138;
    v14 = sub_10000C3E4();
    v16 = sub_100015224(v14, v15, &v46);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolving Recipients: %s", v12, 0xCu);
    sub_100002C00(v13);

    v1 = (v0 + 16);
  }

  v17 = *(v9 + 8);
  v17(v8, v10);
  v18 = *(v0 + 64);
  v19 = sub_100013A84(v18);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_10001470C;
  *(v0 + 56) = v20;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10000243C;
  *(v0 + 40) = &unk_10001CBE8;
  v21 = _Block_copy(v1);
  v22 = *(v0 + 56);
  v23 = v19;

  [v23 prewarmWithHandler:v21];
  _Block_release(v21);

  v24 = sub_100013A84(v18);
  LOBYTE(v21) = sub_100003470(v18);

  if (v21)
  {
    v25 = *(v0 + 72);
    sub_10000A7EC(*(v0 + 96));
    v26 = sub_100016384();
    v27 = sub_1000164D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to announce to the same room containing self", v28, 2u);
    }

    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v31 = *(v0 + 80);

    v17(v29, v31);
    sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000174D0;
    *(v32 + 32) = [objc_opt_self() unsupportedForReason:2];
    v34 = *(v0 + 96);
    v33 = *(v0 + 104);

    v35 = *(v0 + 8);

    return v35(v32);
  }

  else
  {
    v37 = [*(v0 + 64) isReply];
    if (v37 && (v38 = v37, v39 = [v37 BOOLValue], v38, v39))
    {
      v40 = swift_task_alloc();
      *(v0 + 112) = v40;
      *v40 = v0;
      v40[1] = sub_10000D230;
      v41 = *(v0 + 64);
      v42 = *(v0 + 72);

      return sub_10000D780(v41);
    }

    else
    {
      v43 = swift_task_alloc();
      *(v0 + 120) = v43;
      *v43 = v0;
      v43[1] = sub_10000D36C;
      v44 = *(v0 + 64);
      v45 = *(v0 + 72);

      return sub_10000E3AC(v44);
    }
  }
}

uint64_t sub_10000D230(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v9 = *v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_10000D36C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v9 = *v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_10000D4A8(uint64_t a1)
{
  v2 = sub_100016394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      swift_errorRetain();
      sub_10000A7EC(v9);

      swift_errorRetain();
      v12 = sub_100016384();
      v13 = sub_1000164D4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24 = v15;
        *v14 = 136446210;
        swift_getErrorValue();
        v16 = sub_1000166E4();
        v18 = sub_100015224(v16, v17, &v24);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Prewarm Completed with Error %{public}s", v14, 0xCu);
        sub_100002C00(v15);
      }

      else
      {
      }

      return (*(v3 + 8))(v9, v2);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = result;
      sub_10000A7EC(v7);

      v20 = sub_100016384();
      v21 = sub_1000164E4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Prewarm Completed", v22, 2u);
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_10000D780(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_100016394();
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_10000D858, 0, 0);
}

uint64_t sub_10000D858()
{
  v1 = [*(v0 + 256) recipients];
  if (!v1)
  {
    v10 = (v0 + 288);
    v17 = *(v0 + 264);
    sub_10000A7EC(*(v0 + 288));
    v13 = sub_100016384();
    v14 = sub_1000164E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Skipping Resolve Recipients for Reply without recipients";
      goto LABEL_9;
    }

LABEL_11:
    v18 = &selRef_notRequired;
    goto LABEL_12;
  }

  v2 = v1;
  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v3 = sub_100016464();
  *(v0 + 312) = v3;

  v4 = sub_10000A428(v3);
  v5 = [v4 homeName];

  v6 = sub_1000163D4();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = (v0 + 296);
    v11 = *(v0 + 296);
    v12 = *(v0 + 264);

    sub_10000A7EC(v11);
    v13 = sub_100016384();
    v14 = sub_1000164E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Recipients contain home name. No additional resolution required.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);
      v18 = &selRef_notRequired;
LABEL_10:

LABEL_12:
      v19 = *v10;
      v20 = *(v0 + 272);
      v21 = *(v0 + 280);

      (*(v21 + 8))(v19, v20);
      sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000174D0;
      sub_10000591C(0, &qword_100021630, INSendAnnouncementRecipientResolutionResult_ptr);
      *(v22 + 32) = [swift_getObjCClassFromMetadata() *v18];
      v24 = *(v0 + 296);
      v23 = *(v0 + 304);
      v25 = *(v0 + 288);

      v26 = *(v0 + 8);

      return v26(v22);
    }

    goto LABEL_11;
  }

  v28 = [*(v0 + 256) announcement];
  if (v28 && (v29 = v28, v30 = [v28 identifier], v29, v30))
  {
    v31 = sub_1000163D4();
    v33 = v32;

    *(v0 + 216) = v31;
    *(v0 + 224) = v33;
  }

  else
  {
    v40 = [objc_allocWithZone(ANLocalPlaybackSession) init];
    v41 = [v40 lastPlayedAnnouncementInfo];

    v42 = sub_1000163B4();
    *(v0 + 232) = sub_1000163D4();
    *(v0 + 240) = v43;
    sub_100016564();
    if (!*(v42 + 16) || (v44 = sub_1000136E0(v0 + 144), (v45 & 1) == 0))
    {

      sub_10001405C(v0 + 144);
      *(v0 + 216) = 0;
      *(v0 + 224) = 0;
      goto LABEL_27;
    }

    sub_100009FB4(*(v42 + 56) + 32 * v44, v0 + 184);
    sub_10001405C(v0 + 144);

    if (swift_dynamicCast())
    {
      v33 = *(v0 + 224);
    }

    else
    {
      v33 = 0;
      *(v0 + 216) = 0;
      *(v0 + 224) = 0;
    }
  }

  if (!v33)
  {
LABEL_27:
    v10 = (v0 + 304);
    v46 = *(v0 + 304);
    v47 = *(v0 + 264);

    sub_10000A7EC(v46);
    v13 = sub_100016384();
    v48 = sub_1000164D4();
    if (!os_log_type_enabled(v13, v48))
    {
      v18 = &selRef_unsupported;
      goto LABEL_12;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v13, v48, "Contains Recipients with no announcement identifier. Unable to determine context for home.", v49, 2u);
    v18 = &selRef_unsupported;
    goto LABEL_10;
  }

  v34 = *(v0 + 264);
  v35 = *(v0 + 216);
  v36 = sub_100013A84(*(v0 + 256));
  *(v0 + 320) = v36;
  v37 = v36;
  v38 = sub_1000163C4();
  *(v0 + 328) = v38;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = sub_10000DE28;
  v39 = swift_continuation_init();
  *(v0 + 136) = sub_1000029F0(&qword_100021638, &qword_1000176D8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10000CA00;
  *(v0 + 104) = &unk_10001CC10;
  *(v0 + 112) = v39;
  [v37 announcementForID:v38 reply:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10000DE28()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000DF08, 0, 0);
}

uint64_t sub_10000DF08()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 328);

  if (v1)
  {
    v3 = *(v0 + 264);
    v4 = [sub_100013A84(*(v0 + 256)) contextFromAnnouncement:v1];
    if (v4)
    {
      v32 = v4;
      v5 = [v4 homeName];
      if (!v5)
      {
        sub_1000163D4();
        v5 = sub_1000163C4();
      }

      v6 = *(v0 + 312);
      v7 = [objc_allocWithZone(INSpeakableString) initWithSpokenPhrase:v5];

      LOWORD(v31) = 0;
      v8 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v7 zone:0 group:0 room:0 isExcludeFilter:v31 hasAllQuantifier:?];

      v33 = v6;
      v9 = v8;
      sub_100016444();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100016484();
      }

      sub_100016494();
      if (v33 >> 62)
      {
        v10 = sub_100016644();
      }

      else
      {
        v10 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = _swiftEmptyArrayStorage;
      if (v10)
      {
        result = sub_100016604();
        if (v10 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v13 = objc_opt_self();
        v14 = 0;
        do
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v15 = sub_1000165B4();
          }

          else
          {
            v15 = *(v33 + 8 * v14 + 32);
          }

          v16 = v15;
          ++v14;
          v17 = [v13 successWithResolvedHomeFilter:v15];

          sub_1000165E4();
          v18 = _swiftEmptyArrayStorage[2];
          sub_100016614();
          sub_100016624();
          sub_1000165F4();
        }

        while (v10 != v14);
        v11 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_18:
          v20 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_19;
          }

LABEL_33:

          goto LABEL_28;
        }
      }

      else if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_18;
      }

      v20 = sub_100016644();
      if (v20)
      {
LABEL_19:
        result = sub_100016604();
        if ((v20 & 0x8000000000000000) == 0)
        {
          v21 = 0;
          do
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v22 = sub_1000165B4();
            }

            else
            {
              v22 = _swiftEmptyArrayStorage[v21 + 4];
            }

            v23 = v22;
            ++v21;
            [objc_allocWithZone(INSendAnnouncementRecipientResolutionResult) initWithHomeFilterResolutionResult:v22];

            sub_1000165E4();
            v24 = _swiftEmptyArrayStorage[2];
            sub_100016614();
            sub_100016624();
            sub_1000165F4();
          }

          while (v20 != v21);

          v11 = _swiftEmptyArrayStorage;
          goto LABEL_28;
        }

LABEL_36:
        __break(1u);
        return result;
      }

      goto LABEL_33;
    }

    v25 = *(v0 + 312);
  }

  else
  {
    v19 = *(v0 + 312);
  }

  sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
  v11 = swift_allocObject();
  *(v11 + 1) = xmmword_1000174D0;
  sub_10000591C(0, &qword_100021630, INSendAnnouncementRecipientResolutionResult_ptr);
  v11[4] = [swift_getObjCClassFromMetadata() unsupported];
LABEL_28:
  v27 = *(v0 + 296);
  v26 = *(v0 + 304);
  v28 = *(v0 + 288);

  v29 = *(v0 + 8);

  return v29(v11);
}

uint64_t sub_10000E3AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100016394();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000E4A8, 0, 0);
}

uint64_t sub_10000E4A8()
{
  v107 = v0;
  v1 = [*(v0 + 16) recipients];
  if (v1)
  {
    v2 = v1;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v3 = sub_100016464();

    v4 = sub_10000A428(v3);
  }

  else
  {
    v4 = [objc_allocWithZone(ANHomeContext) init];
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = [sub_100013A84(*(v0 + 16)) homeNamesForContext:v4];
  v8 = sub_100016464();

  sub_10000A7EC(v5);

  v9 = sub_100016384();
  v10 = sub_1000164E4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 88);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  if (v11)
  {
    v15 = v8;
    v16 = swift_slowAlloc();
    v104 = v0;
    v106[0] = swift_slowAlloc();
    v17 = v4;
    v18 = v106[0];
    *v16 = 136315138;
    v19 = sub_100016474();
    v102 = v12;
    v21 = sub_100015224(v19, v20, v106);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Found Homes: %s", v16, 0xCu);
    sub_100002C00(v18);
    v4 = v17;
    v0 = v104;

    v8 = v15;

    v22 = *(v13 + 8);
    v22(v102, v14);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
  }

  v23 = v8[2];
  v24 = *(v0 + 24);
  if (v23 != 1)
  {
    if (v23)
    {
      sub_10000A7EC(*(v0 + 56));
      v43 = sub_100016384();
      v44 = sub_1000164E4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Found Multiple Homes. Need to disambiguate", v45, 2u);
      }

      v47 = *(v0 + 48);
      v46 = *(v0 + 56);
      v49 = *(v0 + 32);
      v48 = *(v0 + 40);
      v50 = *(v0 + 24);

      v22(v46, v49);
      v51 = v4;
      sub_10001410C(v8, v51);

      v52 = objc_opt_self();
      sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
      isa = sub_100016454().super.isa;

      v54 = [v52 disambiguationWithHomeFiltersToDisambiguate:isa];

      v55 = [objc_allocWithZone(INSendAnnouncementRecipientResolutionResult) initWithHomeFilterResolutionResult:v54];
      sub_10000A7EC(v47);
      v56 = v55;
      v57 = sub_100016384();
      v58 = sub_1000164E4();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v56;
        v61 = v56;
        _os_log_impl(&_mh_execute_header, v57, v58, "Disambiguation Result: %@", v59, 0xCu);
        sub_100002CBC(v60, &qword_1000214B0, &qword_1000173E0);
      }

      v63 = *(v0 + 40);
      v62 = *(v0 + 48);
      v64 = *(v0 + 32);

      v22(v62, v64);
      sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
      v32 = swift_allocObject();
      *(v32 + 1) = xmmword_1000174D0;
      v32[4] = v56;
    }

    else
    {
      v25 = *(v0 + 80);

      sub_10000A7EC(v25);
      v26 = sub_100016384();
      v27 = sub_1000164D4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Did not find any Homes", v28, 2u);
      }

      v29 = *(v0 + 80);
      v30 = *(v0 + 32);
      v31 = *(v0 + 40);

      v22(v29, v30);
      sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
      v32 = swift_allocObject();
      *(v32 + 1) = xmmword_1000174D0;
      v32[4] = [objc_opt_self() unsupportedForReason:1];
    }

    goto LABEL_36;
  }

  sub_10000A7EC(*(v0 + 72));
  v33 = sub_100016384();
  v34 = sub_1000164E4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Found Single Home", v35, 2u);
  }

  v103 = v4;
  v36 = *(v0 + 72);
  v37 = *(v0 + 32);
  v38 = *(v0 + 40);
  v39 = *(v0 + 16);

  v22(v36, v37);
  v40 = [v39 recipients];
  if (v40)
  {
    v41 = v40;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v42 = sub_100016464();
  }

  else
  {
    v106[0] = _swiftEmptyArrayStorage;
    sub_100016604();
    v65 = v8[4];
    v66 = v8[5];
    v67 = objc_allocWithZone(INSpeakableString);

    v68 = sub_1000163C4();
    v69 = [v67 initWithSpokenPhrase:v68];

    LOWORD(v100) = 0;
    [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v69 zone:0 group:0 room:0 isExcludeFilter:v100 hasAllQuantifier:?];

    sub_1000165E4();
    v70 = *(v106[0] + 16);
    sub_100016614();
    sub_100016624();
    sub_1000165F4();

    v42 = v106[0];
  }

  v71 = *(v0 + 24);
  sub_10000A7EC(*(v0 + 64));

  v72 = sub_100016384();
  v73 = sub_1000164E4();

  v74 = os_log_type_enabled(v72, v73);
  v75 = *(v0 + 64);
  v76 = *(v0 + 32);
  v77 = *(v0 + 40);
  if (v74)
  {
    v78 = swift_slowAlloc();
    v105 = v76;
    v106[0] = swift_slowAlloc();
    v79 = v106[0];
    *v78 = 136315138;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v80 = sub_100016474();
    v101 = v22;
    v82 = sub_100015224(v80, v81, v106);

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v72, v73, "Resolved Recipients: %s", v78, 0xCu);
    sub_100002C00(v79);

    v101(v75, v105);
  }

  else
  {

    v22(v75, v76);
  }

  if (v42 >> 62)
  {
    v83 = sub_100016644();
    if (v83)
    {
      goto LABEL_27;
    }

LABEL_35:

    v32 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v83 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v83)
  {
    goto LABEL_35;
  }

LABEL_27:
  v106[0] = _swiftEmptyArrayStorage;
  result = sub_100016604();
  if (v83 < 0)
  {
    __break(1u);
    return result;
  }

  v85 = objc_opt_self();
  v86 = 0;
  v87 = v42;
  v88 = v42 & 0xC000000000000001;
  do
  {
    if (v88)
    {
      v89 = sub_1000165B4();
    }

    else
    {
      v89 = *(v87 + 8 * v86 + 32);
    }

    v90 = v89;
    ++v86;
    v91 = [v85 successWithResolvedHomeFilter:v89];
    [objc_allocWithZone(INSendAnnouncementRecipientResolutionResult) initWithHomeFilterResolutionResult:v91];

    sub_1000165E4();
    v92 = *(v106[0] + 16);
    sub_100016614();
    sub_100016624();
    sub_1000165F4();
  }

  while (v83 != v86);

  v32 = v106[0];
LABEL_36:
  v94 = *(v0 + 80);
  v93 = *(v0 + 88);
  v96 = *(v0 + 64);
  v95 = *(v0 + 72);
  v98 = *(v0 + 48);
  v97 = *(v0 + 56);

  v99 = *(v0 + 8);

  return v99(v32);
}

uint64_t sub_10000F0EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000F1B0;

  return sub_10000CCB0(v6);
}

uint64_t sub_10000F1B0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  sub_10000591C(0, &qword_100021630, INSendAnnouncementRecipientResolutionResult_ptr);
  isa = sub_100016454().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10000F350(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_100016374();
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v6 = *(*(sub_1000029F0(&qword_100021340, &unk_1000173D0) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v7 = sub_1000029F0(&qword_1000215E8, &qword_100017698);
  v2[44] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v9 = sub_100016334();
  v2[49] = v9;
  v10 = *(v9 - 8);
  v2[50] = v10;
  v11 = *(v10 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v12 = sub_100016394();
  v2[53] = v12;
  v13 = *(v12 - 8);
  v2[54] = v13;
  v14 = *(v13 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_10000F638, 0, 0);
}

uint64_t sub_10000F638()
{
  v161 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  sub_10000A7EC(*(v0 + 552));
  v3 = v2;
  v4 = sub_100016384();
  v5 = sub_1000164E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 552);
  v8 = *(v0 + 424);
  v9 = *(v0 + 432);
  if (v6)
  {
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v160[0] = v12;
    *v11 = 136315138;
    v13 = sub_10000C3E4();
    v15 = sub_100015224(v13, v14, v160);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received Send Announcement Intent: %s", v11, 0xCu);
    sub_100002C00(v12);
  }

  v16 = *(v9 + 8);
  v16(v7, v8);
  *(v0 + 560) = v16;
  v17 = [*(v0 + 280) announcement];
  if (!v17)
  {
    (*(*(v0 + 400) + 56))(*(v0 + 384), 1, 1, *(v0 + 392));
    goto LABEL_9;
  }

  v18 = v17;
  v19 = [v17 speechDataURL];

  if (v19)
  {
    v20 = *(v0 + 376);
    sub_100016324();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v0 + 392);
  v23 = *(v0 + 400);
  v25 = *(v0 + 376);
  v24 = *(v0 + 384);
  v26 = *(v23 + 56);
  v26(v25, v21, 1, v22);
  sub_100012C08(v25, v24);
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
LABEL_9:
    v27 = *(v0 + 448);
    v28 = *(v0 + 288);
    sub_100002CBC(*(v0 + 384), &qword_1000215E8, &qword_100017698);
    sub_10000A7EC(v27);
    v29 = sub_100016384();
    v30 = sub_1000164D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No speech data URL", v31, 2u);
    }

    v32 = *(v0 + 448);
    v33 = *(v0 + 424);
    v34 = *(v0 + 432);

    v16(v32, v33);
    v158 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:4 userActivity:0];
    v60 = *(v0 + 552);
    v61 = *(v0 + 544);
    v62 = *(v0 + 536);
    v63 = *(v0 + 528);
    v64 = *(v0 + 520);
    v66 = *(v0 + 504);
    v65 = *(v0 + 512);
    v68 = *(v0 + 488);
    v67 = *(v0 + 496);
    v69 = *(v0 + 480);
    v141 = *(v0 + 472);
    v142 = *(v0 + 464);
    v143 = *(v0 + 456);
    v144 = *(v0 + 448);
    v145 = *(v0 + 440);
    v146 = *(v0 + 416);
    v147 = *(v0 + 408);
    v148 = *(v0 + 384);
    v149 = *(v0 + 376);
    v150 = *(v0 + 368);
    v151 = *(v0 + 360);
    v152 = *(v0 + 344);
    v153 = *(v0 + 336);
    v154 = *(v0 + 328);
    v155 = *(v0 + 320);
    v157 = *(v0 + 312);

    v70 = *(v0 + 8);

    return v70(v158);
  }

  v159 = v16;
  v35 = *(v0 + 408);
  v36 = *(v0 + 416);
  v37 = *(v0 + 392);
  v38 = *(v0 + 400);
  (*(v38 + 32))(v36, *(v0 + 384), v37);
  (*(v38 + 16))(v35, v36, v37);
  v39 = objc_allocWithZone(AVAudioFile);
  v40 = sub_100012A38(v35);
  v41 = *(v0 + 288);
  v42 = *(v0 + 544);
  v43 = *(v0 + 280);
  v44 = v40;
  v45 = [v40 length];
  v46 = [v44 processingFormat];
  [v46 sampleRate];
  v48 = v47;

  sub_10000A7EC(v42);
  v49 = v43;
  v50 = sub_100016384();
  v51 = sub_1000164E4();

  if (os_log_type_enabled(v50, v51))
  {
    v156 = v45;
    v52 = *(v0 + 280);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v160[0] = v54;
    *v53 = 136315138;
    v55 = [v52 announcement];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 speechDataURL];

      if (v57)
      {
        v58 = *(v0 + 360);
        sub_100016324();

        v59 = 0;
      }

      else
      {
        v59 = 1;
      }

      v77 = *(v0 + 360);
      v76 = *(v0 + 368);
      v78 = *(v0 + 400) + 56;
      v26(v77, v59, 1, *(v0 + 392));
      sub_100012C08(v77, v76);
    }

    else
    {
      v75 = *(v0 + 400) + 56;
      v26(*(v0 + 368), 1, 1, *(v0 + 392));
    }

    v79 = *(v0 + 544);
    v81 = *(v0 + 424);
    v80 = *(v0 + 432);
    v82 = *(v0 + 368);
    v83 = *(v0 + 352);
    v84 = sub_1000163E4();
    v86 = sub_100015224(v84, v85, v160);

    *(v53 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v50, v51, "Speech Data URL: %s", v53, 0xCu);
    sub_100002C00(v54);

    v159(v79, v81);
    v45 = v156;
  }

  else
  {
    v72 = *(v0 + 544);
    v74 = *(v0 + 424);
    v73 = *(v0 + 432);

    v159(v72, v74);
  }

  v87 = *(v0 + 288);
  sub_10000A7EC(*(v0 + 528));
  v88 = sub_100016384();
  v89 = sub_1000164E4();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    *(v90 + 4) = v45 / v48;
    _os_log_impl(&_mh_execute_header, v88, v89, "Speech Data Length: %f", v90, 0xCu);
  }

  v91 = *(v0 + 528);
  v92 = *(v0 + 520);
  v93 = *(v0 + 424);
  v94 = *(v0 + 432);
  v96 = *(v0 + 280);
  v95 = *(v0 + 288);

  *(v0 + 568) = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v97 = v159;
  v159(v91, v93);
  sub_10000A7EC(v92);
  v98 = v96;
  v99 = sub_100016384();
  v100 = sub_1000164E4();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = *(v0 + 280);
    v102 = swift_slowAlloc();
    *v102 = 67109120;
    v103 = [v101 announcement];
    if (v103)
    {
      v104 = v103;
      v105 = [v103 speechDataTranscription];

      if (v105)
      {

        v106 = 1;
      }

      else
      {
        v106 = 0;
      }

      v97 = v159;
    }

    else
    {
      v106 = 0;
    }

    v108 = *(v0 + 280);
    *(v102 + 4) = v106;

    _os_log_impl(&_mh_execute_header, v99, v100, "Transcription: %{BOOL}d", v102, 8u);

    v107 = *(v0 + 280);
  }

  else
  {

    v107 = *(v0 + 280);
    v99 = v107;
  }

  v109 = *(v0 + 520);
  v110 = *(v0 + 416);
  v111 = *(v0 + 424);

  v97(v109, v111);
  sub_100016314(v112);
  v114 = v113;
  v115 = [objc_opt_self() contentWithAudioFileURL:v113];
  *(v0 + 576) = v115;

  v116 = [v107 announcement];
  if (!v116 || (v117 = v116, v118 = [v116 speechDataTranscription], v117, !v118))
  {
    v118 = 0;
  }

  v119 = *(v0 + 280);
  [v115 setTranscription:v118];

  v120 = [v119 _metadata];
  if (v120)
  {
    v121 = v120;
    v122 = [v120 endpointId];

    if (v122)
    {
      v123 = *(v0 + 344);
      v124 = *(v0 + 296);
      v125 = *(v0 + 304);
      sub_1000163D4();

      sub_100016344();

      if ((*(v125 + 48))(v123, 1, v124) == 1)
      {
        isa = 0;
      }

      else
      {
        v127 = *(v0 + 344);
        v128 = *(v0 + 296);
        v129 = *(v0 + 304);
        isa = sub_100016354().super.isa;
        (*(v129 + 8))(v127, v128);
      }

      [v115 setEndpointIdentifier:isa];
    }
  }

  v130 = [*(v0 + 280) sharedUserID];
  if (v130)
  {
    v131 = v130;
    sub_1000163D4();
    v133 = v132;
  }

  else
  {
    v133 = 0;
  }

  *(v0 + 584) = v133;
  v134 = [v115 endpointIdentifier];
  if (v134)
  {
    v135 = *(v0 + 328);
    v136 = v134;
    sub_100016364();

    v137 = 0;
  }

  else
  {
    v137 = 1;
  }

  (*(*(v0 + 304) + 56))(*(v0 + 328), v137, 1, *(v0 + 296));
  v138 = swift_task_alloc();
  *(v0 + 592) = v138;
  *v138 = v0;
  v138[1] = sub_100010344;
  v140 = *(v0 + 328);
  v139 = *(v0 + 336);

  return sub_100003884(v139);
}

uint64_t sub_100010344()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 328);
  v5 = *v0;

  sub_100002CBC(v3, &qword_100021340, &unk_1000173D0);

  return _swift_task_switch(sub_100010488, 0, 0);
}

uint64_t sub_100010488()
{
  v198 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100002CBC(v1, &qword_100021340, &unk_1000173D0);
  }

  else
  {
    v4 = *(v0 + 512);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 288);
    (*(v3 + 32))(v5, v1, v2);
    sub_10000A7EC(v4);
    (*(v3 + 16))(v6, v5, v2);
    v8 = sub_100016384();
    v9 = sub_1000164E4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 568);
    v12 = *(v0 + 560);
    v13 = *(v0 + 512);
    v14 = *(v0 + 424);
    v16 = *(v0 + 304);
    v15 = *(v0 + 312);
    v17 = *(v0 + 296);
    if (v10)
    {
      v191 = *(v0 + 512);
      v18 = swift_slowAlloc();
      v186 = v12;
      v180 = swift_slowAlloc();
      v197 = v180;
      *v18 = 136315138;
      sub_100013F60();
      v183 = v14;
      v19 = sub_100016684();
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v15, v17);
      v23 = v22;
      v24 = sub_100015224(v19, v21, &v197);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "MU HMUser ID: %s", v18, 0xCu);
      sub_100002C00(v180);

      v186(v191, v183);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v15, v17);
      v23 = v25;
      v12(v13, v14);
    }

    v26 = *(v0 + 576);
    v27 = *(v0 + 320);
    v28 = *(v0 + 296);
    isa = sub_100016354().super.isa;
    [v26 setHomeKitUserIdentifier:isa];

    v23(v27, v28);
  }

  v30 = [*(v0 + 280) isReply];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 BOOLValue];

    if (v32)
    {
      v33 = [*(v0 + 280) recipients];
      if (!v33)
      {
        v83 = [*(v0 + 280) announcement];
        if (!v83 || (v84 = v83, v85 = [v83 identifier], v84, !v85))
        {
          v85 = 0;
        }

        v86 = *(v0 + 280);
        v87 = [objc_opt_self() destinationWithReplyToAnnouncementIdentifier:v85];

        v88 = v87;
        v89 = [v86 announcement];
        if (v89)
        {
          v90 = v89;
          v91 = [v89 identifier];

          if (v91)
          {
            v92 = sub_1000163D4();
            v94 = v93;

            v95 = HIBYTE(v94) & 0xF;
            if ((v94 & 0x2000000000000000) == 0)
            {
              v95 = v92 & 0xFFFFFFFFFFFFLL;
            }

            if (v95)
            {
              v96 = *(v0 + 288);
              sub_10000A7EC(*(v0 + 504));

              v97 = sub_100016384();
              v98 = sub_1000164E4();

              v99 = os_log_type_enabled(v97, v98);
              v100 = *(v0 + 560);
              v101 = *(v0 + 504);
              v102 = *(v0 + 424);
              if (v99)
              {
                v194 = *(v0 + 568);
                v103 = swift_slowAlloc();
                v189 = v100;
                v104 = swift_slowAlloc();
                v197 = v104;
                *v103 = 136315138;
                v105 = sub_100015224(v92, v94, &v197);

                *(v103 + 4) = v105;
                _os_log_impl(&_mh_execute_header, v97, v98, "Sending Reply to Announcement: %s", v103, 0xCu);
                sub_100002C00(v104);

                v189(v101, v102);
              }

              else
              {

                v100(v101, v102);
              }

              goto LABEL_47;
            }
          }
        }

        v159 = *(v0 + 288);
        sub_10000A7EC(*(v0 + 496));
        v160 = sub_100016384();
        v161 = sub_1000164E4();
        v162 = os_log_type_enabled(v160, v161);
        v163 = *(v0 + 568);
        v164 = *(v0 + 560);
        v165 = *(v0 + 496);
        v166 = *(v0 + 424);
        if (v162)
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&_mh_execute_header, v160, v161, "Sending Reply to latest Announcement", v167, 2u);
        }

        v164(v165, v166);
        goto LABEL_47;
      }

      v34 = v33;
      sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
      v35 = sub_100016464();

      v36 = sub_10000A428(v35);

      v37 = [v36 homeName];
      if (!v37)
      {
        sub_1000163D4();
        v37 = sub_1000163C4();
      }

      v38 = [v36 zoneNames];
      if (!v38)
      {
        sub_100016464();
        v38 = sub_100016454().super.isa;
      }

      v39 = [v36 roomNames];
      if (!v39)
      {
        sub_100016464();
        v39 = sub_100016454().super.isa;
      }

LABEL_46:
      v107 = [objc_opt_self() destinationWithHomeName:v37 zoneNames:v38 roomNames:v39];

      v88 = v107;
LABEL_47:
      *(v0 + 600) = v88;
      v108 = [objc_opt_self() requestWithContent:*(v0 + 576) destination:v88];
      *(v0 + 608) = v108;
      v109 = [v88 type];

      if (!v109)
      {
        v110 = [v88 roomObjects];
        v111 = sub_100016464();

        v112 = *(v111 + 16);

        if (v112 || (v113 = [v88 zoneObjects], v114 = sub_100016464(), v113, v115 = *(v114 + 16), , v115))
        {
          v116 = *(v0 + 288);
          sub_10000A7EC(*(v0 + 480));
          v117 = v88;
          v118 = sub_100016384();
          v119 = sub_1000164E4();
          v120 = os_log_type_enabled(v118, v119);
          v121 = *(v0 + 568);
          v122 = *(v0 + 560);
          v123 = *(v0 + 480);
          v124 = *(v0 + 424);
          if (v120)
          {
            v195 = *(v0 + 480);
            v125 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            *v125 = 134349826;
            v126 = [v117 roomObjects];
            v127 = sub_100016464();

            v182 = v122;
            v128 = *(v127 + 16);

            *(v125 + 4) = v128;

            *(v125 + 12) = 2080;
            v129 = [v117 roomObjects];
            sub_100016464();

            v130 = sub_100016474();
            v132 = v131;

            v133 = sub_100015224(v130, v132, &v197);

            *(v125 + 14) = v133;
            *(v125 + 22) = 2050;
            v134 = [v117 zoneObjects];
            v135 = sub_100016464();

            v136 = *(v135 + 16);

            *(v125 + 24) = v136;
            *(v125 + 32) = 2080;
            v137 = [v117 zoneObjects];
            sub_100016464();

            v138 = sub_100016474();
            v140 = v139;

            v141 = sub_100015224(v138, v140, &v197);

            *(v125 + 34) = v141;
            _os_log_impl(&_mh_execute_header, v118, v119, "Sending Announcement to Rooms (%{public}ld) = %s, Zones (%{public}ld) = %s ", v125, 0x2Au);
            swift_arrayDestroy();

            v182(v195, v124);
          }

          else
          {

            v122(v123, v124);
          }
        }

        else
        {
          v145 = *(v0 + 288);
          sub_10000A7EC(*(v0 + 472));
          v146 = v88;
          v147 = sub_100016384();
          v148 = sub_1000164E4();

          v149 = os_log_type_enabled(v147, v148);
          v150 = *(v0 + 560);
          v151 = *(v0 + 472);
          v152 = *(v0 + 424);
          if (v149)
          {
            v196 = *(v0 + 568);
            v153 = swift_slowAlloc();
            v190 = v150;
            v154 = swift_slowAlloc();
            v197 = v154;
            *v153 = 136315138;
            v155 = [v146 homeObject];
            sub_100016524();
            swift_unknownObjectRelease();
            v156 = sub_1000163E4();
            v158 = sub_100015224(v156, v157, &v197);

            *(v153 + 4) = v158;
            _os_log_impl(&_mh_execute_header, v147, v148, "[No Room or Zone Names] Sending Announcement to %s", v153, 0xCu);
            sub_100002C00(v154);

            v190(v151, v152);
          }

          else
          {

            v150(v151, v152);
          }
        }
      }

      v142 = *(v0 + 288);
      v143 = sub_100013A84(*(v0 + 280));
      *(v0 + 616) = v143;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 256;
      *(v0 + 24) = sub_1000116DC;
      v144 = swift_continuation_init();
      *(v0 + 136) = sub_1000029F0(&unk_1000215F0, &unk_1000176A0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100012124;
      *(v0 + 104) = &unk_10001CB98;
      *(v0 + 112) = v144;
      [v143 sendRequest:v108 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  v40 = *(v0 + 280);
  v41 = sub_100013A84(v40);
  v42 = [v40 recipients];
  if (v42)
  {
    v43 = v42;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v44 = sub_100016464();

    v45 = sub_10000A428(v44);
  }

  else
  {
    v45 = [objc_allocWithZone(ANHomeContext) init];
  }

  v46 = [v41 homeNamesForContext:v45];

  v47 = sub_100016464();
  if (v47[2] == 1)
  {
    v49 = v47[4];
    v48 = v47[5];
    v50 = *(v0 + 280);

    v51 = [v50 recipients];
    if (v51)
    {
      v52 = v51;
      sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
      v53 = sub_100016464();

      v36 = sub_10000A428(v53);
    }

    else
    {
      v36 = [objc_allocWithZone(ANHomeContext) init];
    }

    v106 = sub_1000163C4();

    [v36 setHomeName:v106];

    v37 = [v36 homeName];
    if (!v37)
    {
      sub_1000163D4();
      v37 = sub_1000163C4();
    }

    v38 = [v36 zoneNames];
    if (!v38)
    {
      sub_100016464();
      v38 = sub_100016454().super.isa;
    }

    v39 = [v36 roomNames];
    if (!v39)
    {
      sub_100016464();
      v39 = sub_100016454().super.isa;
    }

    goto LABEL_46;
  }

  v54 = *(v0 + 288);
  sub_10000A7EC(*(v0 + 488));

  v55 = sub_100016384();
  v56 = sub_1000164D4();

  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 560);
  v59 = *(v0 + 488);
  v60 = *(v0 + 424);
  if (v57)
  {
    v192 = *(v0 + 568);
    v61 = swift_slowAlloc();
    v187 = v58;
    v62 = swift_slowAlloc();
    v197 = v62;
    *v61 = 136315138;
    v63 = sub_100016474();
    v65 = v64;

    v66 = sub_100015224(v63, v65, &v197);

    *(v61 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v55, v56, "Did not find exactly one home for recipients: %s", v61, 0xCu);
    sub_100002C00(v62);

    v187(v59, v60);
  }

  else
  {

    v58(v59, v60);
  }

  v67 = *(v0 + 576);
  v68 = *(v0 + 416);
  v69 = *(v0 + 392);
  v70 = *(v0 + 400);
  v193 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:4 userActivity:0];

  (*(v70 + 8))(v68, v69);
  v71 = *(v0 + 552);
  v72 = *(v0 + 544);
  v73 = *(v0 + 536);
  v74 = *(v0 + 528);
  v75 = *(v0 + 520);
  v77 = *(v0 + 504);
  v76 = *(v0 + 512);
  v79 = *(v0 + 488);
  v78 = *(v0 + 496);
  v80 = *(v0 + 480);
  v168 = *(v0 + 472);
  v169 = *(v0 + 464);
  v170 = *(v0 + 456);
  v171 = *(v0 + 448);
  v172 = *(v0 + 440);
  v173 = *(v0 + 416);
  v174 = *(v0 + 408);
  v175 = *(v0 + 384);
  v176 = *(v0 + 376);
  v177 = *(v0 + 368);
  v178 = *(v0 + 360);
  v179 = *(v0 + 344);
  v181 = *(v0 + 336);
  v184 = *(v0 + 328);
  v185 = *(v0 + 320);
  v188 = *(v0 + 312);

  v81 = *(v0 + 8);

  return v81(v193);
}

uint64_t sub_1000116DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 624) = v2;
  if (v2)
  {
    v3 = sub_100011D84;
  }

  else
  {
    v3 = sub_1000117EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000117EC()
{
  v82 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);

  sub_10000A7EC(v1);
  v4 = v3;
  v5 = sub_100016384();
  v6 = sub_1000164E4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v10 = *(v0 + 464);
  v80 = v0;
  v11 = *(v0 + 424);
  v72 = v4;
  if (v7)
  {
    v12 = swift_slowAlloc();
    v75 = v9;
    v13 = swift_slowAlloc();
    v81 = v13;
    *v12 = 136315138;
    v14 = v10;
    v15 = v4;
    v16 = [v15 description];
    v17 = sub_1000163D4();
    v19 = v18;

    v20 = sub_100015224(v17, v19, &v81);

    *(v12 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Announcement sent successfully! Result = %s", v12, 0xCu);
    sub_100002C00(v13);
    v4 = v72;

    v75(v14, v11);
  }

  else
  {

    v9(v10, v11);
  }

  v71 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:3 userActivity:0];
  v21 = [v4 destination];
  v22 = sub_1000121FC();

  if (v22 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100016644())
  {
    v24 = 0;
    v76 = v22 & 0xFFFFFFFFFFFFFF8;
    v78 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v78)
      {
        v29 = sub_1000165B4();
      }

      else
      {
        if (v24 >= *(v76 + 16))
        {
          goto LABEL_16;
        }

        v29 = *(v22 + 8 * v24 + 32);
      }

      v30 = v29;
      v31 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v32 = v22;
      v33 = v80[36];
      sub_10000A7EC(v80[57]);
      v34 = v30;
      v35 = sub_100016384();
      v36 = sub_1000164E4();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v34;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "Intent Response Announcement Record: %@", v37, 0xCu);
        sub_100002CBC(v38, &qword_1000214B0, &qword_1000173E0);
      }

      v25 = v80[71];
      v26 = v80[70];
      v27 = v80[57];
      v28 = v80[53];

      v26(v27, v28);
      ++v24;
      v22 = v32;
      if (v31 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v40 = v80[76];
  v41 = v80[75];
  v42 = v80[72];
  v43 = v80[52];
  v44 = v80[49];
  v45 = v80[50];
  sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
  isa = sub_100016454().super.isa;

  [v71 setSentAnnouncements:isa];

  (*(v45 + 8))(v43, v44);
  v47 = v80[69];
  v48 = v80[68];
  v49 = v80[67];
  v50 = v80[66];
  v51 = v80[65];
  v53 = v80[63];
  v52 = v80[64];
  v55 = v80[61];
  v54 = v80[62];
  v56 = v80[60];
  v59 = v80[59];
  v60 = v80[58];
  v61 = v80[57];
  v62 = v80[56];
  v63 = v80[55];
  v64 = v80[52];
  v65 = v80[51];
  v66 = v80[48];
  v67 = v80[47];
  v68 = v80[46];
  v69 = v80[45];
  v70 = v80[43];
  v73 = v80[42];
  v74 = v80[41];
  v77 = v80[40];
  v79 = v80[39];

  v57 = v80[1];

  return v57(v71);
}

uint64_t sub_100011D84()
{
  v64 = v0;
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[55];
  v4 = v0[36];
  swift_willThrow();

  swift_getErrorValue();
  v5 = v0[25];
  v6 = v0[27];
  v7 = sub_100002E28(v0[26]);
  sub_10000A7EC(v3);
  swift_errorRetain();
  v8 = sub_100016384();
  v9 = sub_1000164D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[78];
    v59 = v0[70];
    v61 = v0[71];
    v11 = v0[55];
    v12 = v0[53];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v63 = v14;
    *v13 = 136446466;
    swift_getErrorValue();
    v16 = v0[28];
    v15 = v0[29];
    v17 = v0[30];
    v18 = sub_1000166E4();
    v20 = sub_100015224(v18, v19, &v63);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2050;
    *(v13 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Send Announcement failed with error: %{public}s, Intent Response Code: %{public}ld", v13, 0x16u);
    sub_100002C00(v14);

    v59(v11, v12);
  }

  else
  {
    v21 = v0[71];
    v22 = v0[70];
    v23 = v0[55];
    v24 = v0[53];

    v22(v23, v24);
  }

  v25 = v0[78];
  v26 = v0[76];
  v27 = v0[75];
  v28 = v0[72];
  v29 = v0[52];
  v30 = v0[49];
  v31 = v0[50];
  v62 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:v7 userActivity:0];

  (*(v31 + 8))(v29, v30);
  v32 = v0[69];
  v33 = v0[68];
  v34 = v0[67];
  v35 = v0[66];
  v36 = v0[65];
  v38 = v0[63];
  v37 = v0[64];
  v40 = v0[61];
  v39 = v0[62];
  v41 = v0[60];
  v44 = v0[59];
  v45 = v0[58];
  v46 = v0[57];
  v47 = v0[56];
  v48 = v0[55];
  v49 = v0[52];
  v50 = v0[51];
  v51 = v0[48];
  v52 = v0[47];
  v53 = v0[46];
  v54 = v0[45];
  v55 = v0[43];
  v56 = v0[42];
  v57 = v0[41];
  v58 = v0[40];
  v60 = v0[39];

  v42 = v0[1];

  return v42(v62);
}

uint64_t sub_100012124(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000058D8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000029F0(&unk_100021620, &qword_1000177F0);
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

void *sub_1000121FC()
{
  v1 = [v0 type];
  result = _swiftEmptyArrayStorage;
  if (v1)
  {
    return result;
  }

  v3 = [v0 homeObject];
  sub_100016524();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = [v0 roomObjects];
  v5 = sub_100016464();

  v6 = sub_100012898(v5);

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = [v0 zoneObjects];
  v8 = sub_100016464();

  v9 = sub_100012898(v8);

  if (!v9)
  {

    goto LABEL_19;
  }

  if (!v6[2] && !v9[2])
  {

    v16 = objc_allocWithZone(INSpeakableString);
    v17 = sub_1000163C4();

    v18 = [v16 initWithSpokenPhrase:v17];

    LOWORD(v21) = 0;
    v19 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v18 zone:0 group:0 room:0 isExcludeFilter:v21 hasAllQuantifier:?];

    sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000174D0;
    *(v20 + 32) = [objc_allocWithZone(INAnnouncementRecord) initWithOriginator:v19 identifier:0 duration:0];

    return v20;
  }

  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v10 = sub_100005964(0, 0, v6, v9);

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v11 = sub_100016644();
  if (!v11)
  {
LABEL_19:

    return _swiftEmptyArrayStorage;
  }

LABEL_9:
  result = sub_100016604();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_1000165B4();
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      [objc_allocWithZone(INAnnouncementRecord) initWithOriginator:v13 identifier:0 duration:0];

      sub_1000165E4();
      v15 = _swiftEmptyArrayStorage[2];
      sub_100016614();
      sub_100016624();
      sub_1000165F4();
    }

    while (v11 != v12);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100012738()
{
  sub_100004B04();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000127D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000A404;

  return sub_10000F350(v6);
}

void *sub_100012898(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10001353C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100009FB4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001353C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1000129B0(char *a1)
{
  v2 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  v3 = *&a1[OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce];
  v4 = a1;
  if (v3)
  {
    [v3 setDelegate:0];
    v5 = *&a1[v2];
  }

  else
  {
    v5 = 0;
  }

  *&a1[v2] = 0;
}

id sub_100012A38(uint64_t a1)
{
  v2 = v1;
  sub_100016314(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReading:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100016334();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_100016304();

    swift_willThrow();
    v12 = sub_100016334();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void *sub_100012B84(uint64_t a1, uint64_t a2)
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

  sub_1000029F0(&unk_100021610, &unk_100017578);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_100012C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_1000215E8, &qword_100017698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012C78(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000166F4();
  sub_100016404();
  v9 = sub_100016704();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000166B4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100013028(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100012DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000029F0(&qword_100021608, &unk_1000176B0);
  result = sub_100016584();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1000166F4();
      sub_100016404();
      result = sub_100016704();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100013028(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100012DC8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000131A8();
      goto LABEL_16;
    }

    sub_100013304(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000166F4();
  sub_100016404();
  result = sub_100016704();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000166B4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000166C4();
  __break(1u);
  return result;
}

void *sub_1000131A8()
{
  v1 = v0;
  sub_1000029F0(&qword_100021608, &unk_1000176B0);
  v2 = *v0;
  v3 = sub_100016574();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_100013304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000029F0(&qword_100021608, &unk_1000176B0);
  result = sub_100016584();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1000166F4();

      sub_100016404();
      result = sub_100016704();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

char *sub_10001353C(char *a1, int64_t a2, char a3)
{
  result = sub_10001355C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001355C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000029F0(&unk_100021610, &unk_100017578);
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

unint64_t sub_100013668(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000166F4();
  sub_100016404();
  v6 = sub_100016704();

  return sub_100013724(a1, a2, v6);
}

unint64_t sub_1000136E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100016544(*(v2 + 40));

  return sub_1000137DC(a1, v4);
}

unint64_t sub_100013724(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000166B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000137DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000140B0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100016554();
      sub_10001405C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void (*sub_1000138A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000165B4();
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
    return sub_100013924;
  }

  __break(1u);
  return result;
}

void *sub_10001392C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100013A84(void *a1)
{
  v2 = v1;
  v4 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = sub_100016394();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  result = *(v1 + OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce);
  if (result)
  {
    return result;
  }

  sub_10000A7EC(v15);
  v18 = a1;
  v19 = sub_100016384();
  v20 = sub_1000164E4();

  v48 = v20;
  if (!os_log_type_enabled(v19, v20))
  {

    (*(v12 + 8))(v15, v11);
    goto LABEL_10;
  }

  v44 = v19;
  v21 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v51 = v43;
  v45 = v21;
  v46 = v18;
  *v21 = 136315138;
  v22 = [v18 _metadata];
  v23 = v22;
  v47 = v10;
  if (!v22)
  {
    goto LABEL_8;
  }

  v24 = [v22 endpointId];

  if (!v24)
  {
    v23 = 0;
LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  v23 = sub_1000163D4();
  v26 = v25;

LABEL_9:
  v49 = v23;
  v50 = v26;
  sub_1000029F0(&unk_1000210E0, &qword_100017570);
  v27 = sub_1000163E4();
  v29 = sub_100015224(v27, v28, &v51);

  v31 = v44;
  v30 = v45;
  *(v45 + 1) = v29;
  _os_log_impl(&_mh_execute_header, v31, v48, "EndpointID = %s", v30, 0xCu);
  sub_100002C00(v43);

  (*(v12 + 8))(v15, v11);
  v18 = v46;
  v10 = v47;
LABEL_10:
  v32 = [v18 _metadata];
  if (v32 && (v33 = v32, v34 = [v32 endpointId], v33, v34))
  {
    sub_1000163D4();

    sub_100016344();
  }

  else
  {
    v35 = sub_100016374();
    (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
  }

  sub_100005174(v10, v8, &qword_100021340, &unk_1000173D0);
  v36 = sub_100016374();
  v37 = *(v36 - 8);
  isa = 0;
  if ((*(v37 + 48))(v8, 1, v36) != 1)
  {
    isa = sub_100016354().super.isa;
    (*(v37 + 8))(v8, v36);
  }

  v39 = [objc_allocWithZone(ANAnnounce) initWithEndpointIdentifier:isa];

  v40 = *(v2 + v16);
  *(v2 + v16) = v39;
  v41 = v39;

  if (v41)
  {
    [v41 setDelegate:v2];
  }

  sub_100002CBC(v10, &qword_100021340, &unk_1000173D0);
  result = *(v2 + v16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100013F60()
{
  result = qword_100021600;
  if (!qword_100021600)
  {
    sub_100016374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021600);
  }

  return result;
}

uint64_t *sub_100013FB8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100014024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001410C(uint64_t a1, void *a2)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    return _swiftEmptyArrayStorage;
  }

  v36 = a1 + 32;
  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v41 = v2;
    v6 = (v36 + 16 * v2);
    v8 = *v6;
    v7 = v6[1];

    v9 = [a2 roomNames];
    v10 = sub_100016464();

    v11 = [a2 zoneNames];
    v12 = sub_100016464();

    v13 = sub_100005964(v8, v7, v10, v12);

    v14 = v13;

    v15 = v13 >> 62;
    v16 = v13 >> 62 ? sub_100016644() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v3 >> 62;
    if (v3 >> 62)
    {
      v34 = sub_100016644();
      v19 = v34 + v16;
      if (__OFADD__(v34, v16))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v17)
      {
        goto LABEL_16;
      }

      v20 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v17)
      {
LABEL_16:
        sub_100016644();
        goto LABEL_17;
      }

      v20 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = *(v20 + 16);
LABEL_17:
    result = sub_1000165C4();
    v3 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    if (v15)
    {
      break;
    }

    v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v23 >> 1) - v22) < v16)
    {
      goto LABEL_38;
    }

    v39 = v3;
    v25 = v20 + 8 * v22 + 32;
    v35 = v20;
    if (v15)
    {
      if (v24 < 1)
      {
        goto LABEL_40;
      }

      sub_1000062C4();
      for (i = 0; i != v24; ++i)
      {
        sub_1000029F0(&unk_100021640, &unk_1000176E0);
        v27 = sub_1000138A4(v40, i, v14);
        v29 = v14;
        v30 = *v28;
        (v27)(v40, 0);
        *(v25 + 8 * i) = v30;
        v14 = v29;
      }
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    v3 = v39;
    v5 = v41;
    if (v16 >= 1)
    {
      v31 = *(v35 + 16);
      v32 = __OFADD__(v31, v16);
      v33 = v31 + v16;
      if (v32)
      {
        goto LABEL_39;
      }

      *(v35 + 16) = v33;
    }

LABEL_4:
    v2 = v5 + 1;
    if (v2 == v37)
    {
      return v3;
    }
  }

  result = sub_100016644();
  v24 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  v5 = v41;
  if (v16 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100014494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000144B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_1000127D4(v2, v3, v4);
}

uint64_t sub_100014568()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_10000F0EC(v2, v3, v4);
}

uint64_t sub_10001461C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008874;

  return sub_10000CBEC(v2, v3, v4);
}

uint64_t sub_100014710(uint64_t a1, void *a2)
{
  v3 = sub_1000058D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000029F0(&unk_100021620, &qword_1000177F0);
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

uint64_t sub_100014944(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000095E0;

  return sub_1000157CC(v6);
}

id sub_100014A58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayAnnouncementSoundIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100014AB0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014AF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008874;

  return sub_100014944(v2, v3, v4);
}

uint64_t sub_100014BAC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000A41C;

  return v7();
}

uint64_t sub_100014C98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100008874;

  return v8();
}

uint64_t sub_100014D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100005174(a3, v25 - v11, &unk_100021660, &qword_1000176F0);
  v13 = sub_1000164C4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100002CBC(v12, &unk_100021660, &qword_1000176F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000164B4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000164A4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000163F4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);

    return v23;
  }

LABEL_8:
  sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10001507C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000150B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A41C;

  return sub_1000099F4(a1, v5);
}

uint64_t sub_10001516C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008874;

  return sub_1000099F4(a1, v5);
}

uint64_t sub_100015224(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000152F0(v11, 0, 0, 1, a1, a2);
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
    sub_100009FB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002C00(v11);
  return v7;
}

unint64_t sub_1000152F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000153FC(a5, a6);
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
    result = sub_1000165D4();
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

char *sub_1000153FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100015448(a1, a2);
  sub_100015578(&off_10001C920);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100015448(uint64_t a1, unint64_t a2)
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

  v6 = sub_100015664(v5, 0);
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

  result = sub_1000165D4();
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
        v10 = sub_100016434();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015664(v10, 0);
        result = sub_100016594();
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

uint64_t sub_100015578(uint64_t result)
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

  result = sub_1000156D8(result, v12, 1, v3);
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

void *sub_100015664(uint64_t a1, uint64_t a2)
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

  sub_1000029F0(&qword_1000216F8, &qword_1000177E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000156D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000029F0(&qword_1000216F8, &qword_1000177E8);
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

uint64_t sub_1000157CC(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_1000029F0(&qword_100021340, &unk_1000173D0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_100016394();
  v1[26] = v3;
  v4 = *(v3 - 8);
  v1[27] = v4;
  v5 = *(v4 + 64) + 15;
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000158DC, 0, 0);
}

uint64_t sub_1000158DC()
{
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = qword_100021A18;
  sub_1000163A4();
  v4 = v2;
  v5 = sub_100016384();
  v6 = sub_1000164E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received Play Announcement Sound Intent: %@", v8, 0xCu);
    sub_100002CBC(v9, &qword_1000214B0, &qword_1000173E0);
  }

  v11 = *(v0 + 176);

  if ([v11 soundType] == 1)
  {
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = [objc_allocWithZone(ANTonePlayerService) init];
    *(v0 + 232) = v14;
    v15 = sub_100016374();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v12, 1, 1, v15);
    v17 = [v13 _metadata];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 endpointId];

      if (v19)
      {
        v21 = *(v0 + 192);
        v20 = *(v0 + 200);
        sub_1000163D4();

        sub_100016344();

        sub_100002CBC(v20, &qword_100021340, &unk_1000173D0);
        sub_100002C4C(v21, v20);
      }
    }

    v22 = *(v0 + 224);
    v23 = [*(v0 + 176) audioSessionID];
    v24 = sub_100016384();
    v25 = sub_1000164E4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Siri Audio Session ID: %u", v26, 8u);
    }

    v27 = *(v0 + 200);
    v28 = *(v0 + 184);

    sub_100005174(v27, v28, &qword_100021340, &unk_1000173D0);
    if ((*(v16 + 48))(v28, 1, v15) == 1)
    {
      isa = 0;
    }

    else
    {
      v36 = *(v0 + 184);
      isa = sub_100016354().super.isa;
      (*(v16 + 8))(v36, v15);
    }

    *(v0 + 240) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100015EA8;
    v37 = swift_continuation_init();
    *(v0 + 136) = sub_1000029F0(&qword_1000214B8, &unk_1000175A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100014710;
    *(v0 + 104) = &unk_10001CEB8;
    *(v0 + 112) = v37;
    [v14 playTone:0 audioSessionID:v23 endpointUUID:isa completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v30 = *(v0 + 224);
    v31 = *(v0 + 176);
    v32 = sub_100016384();
    v33 = sub_1000164D4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 176);
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = [v34 soundType];

      _os_log_impl(&_mh_execute_header, v32, v33, "Unsupported Sound Type: %ld", v35, 0xCu);
    }

    else
    {

      v32 = *(v0 + 176);
    }

    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v40 = *(v0 + 208);

    v41 = [objc_allocWithZone(INPlayAnnouncementSoundIntentResponse) initWithCode:4 userActivity:0];
    (*(v39 + 8))(v38, v40);
    v42 = *(v0 + 224);
    v44 = *(v0 + 192);
    v43 = *(v0 + 200);
    v45 = *(v0 + 184);

    v46 = *(v0 + 8);

    return v46(v41);
  }
}

uint64_t sub_100015EA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_1000160B8;
  }

  else
  {
    v3 = sub_100015FB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100015FB8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = [objc_allocWithZone(INPlayAnnouncementSoundIntentResponse) initWithCode:3 userActivity:0];

  sub_100002CBC(v5, &qword_100021340, &unk_1000173D0);
  (*(v4 + 8))(v1, v3);
  v7 = *(v0 + 224);
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);

  v11 = *(v0 + 8);

  return v11(v6);
}

uint64_t sub_1000160B8()
{
  v29 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  swift_willThrow();

  swift_errorRetain();
  v4 = sub_100016384();
  v5 = sub_1000164D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1000166E4();
    v14 = sub_100015224(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to Play Announcement Sound: %s", v7, 0xCu);
    sub_100002C00(v8);
  }

  else
  {
    v15 = v0[31];
  }

  v16 = v0[28];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[27];
  v20 = v0[25];
  v21 = [objc_allocWithZone(INPlayAnnouncementSoundIntentResponse) initWithCode:3 userActivity:0];

  sub_100002CBC(v20, &qword_100021340, &unk_1000173D0);
  (*(v19 + 8))(v16, v18);
  v22 = v0[28];
  v23 = v0[24];
  v24 = v0[25];
  v25 = v0[23];

  v26 = v0[1];

  return v26(v21);
}