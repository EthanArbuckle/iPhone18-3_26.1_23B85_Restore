uint64_t sub_1000162AC(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_10001AA14();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 date];
        v42 = v55;
        sub_10001AA04();

        v43 = [v40 date];
        v44 = v56;
        sub_10001AA04();

        LOBYTE(v43) = sub_10001A9F4();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 date];
        v22 = v55;
        sub_10001AA04();

        v23 = [v20 date];
        v24 = v56;
        sub_10001AA04();

        LOBYTE(v23) = sub_10001A9F4();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

void sub_100016748(unint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001AD24())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_10001ACD4();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1000149CC(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10001684C(uint64_t a1, uint64_t a2)
{
  v3[204] = v2;
  v3[203] = a2;
  v3[202] = a1;
  return _swift_task_switch(sub_100016874, 0, 0);
}

uint64_t sub_100016874()
{
  v13 = v0;
  v1 = [*(v0 + 1616) userInfo];
  v2 = sub_10001AB14();

  sub_10000DEC8(v2, (v0 + 816));

  memcpy((v0 + 416), (v0 + 816), 0x189uLL);
  if (sub_100016A78(v0 + 416) == 1)
  {
    if (qword_100029960 != -1)
    {
      swift_once();
    }

    v4 = qword_10002B010;
    v3 = *algn_10002B018;
  }

  else
  {
    v5 = *(v0 + 1624);
    memcpy((v0 + 16), (v0 + 416), 0x189uLL);
    v11 = &_swiftEmptyArrayStorage;

    v12 = sub_100013B10(v6);
    sub_10001569C(&v12);
    v7 = *(v0 + 1632);
    v8 = v12;

    sub_100016A90(v0 + 816, v0 + 1216);
    sub_100016748(v8, v7, v0 + 16, &v11);
    sub_100016B00(v0 + 816);

    sub_100016B00(v0 + 816);
    v4 = v11;
    v3 = sub_100013E7C(&_swiftEmptyArrayStorage);
  }

  v9 = *(v0 + 8);

  return v9(v4, v3);
}

uint64_t sub_100016A78(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100016A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007C4C(&qword_100029E08, &qword_10001F490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016B00(uint64_t a1)
{
  v2 = sub_100007C4C(&qword_100029E08, &qword_10001F490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100016C34()
{
  v1 = v0;
  v2 = sub_10001AAD4();
  v3 = sub_10001AC34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MarketingNotificationService serviceExtensionTimeWillExpire called.", v4, 2u);
  }

  v5 = v1 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler;
  v6 = *(v1 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_bestAttemptContent);
    if (v7)
    {
      v8 = *(v5 + 8);
      sub_100016F38(v6);
      v9 = v7;
      v6();

      sub_100016F48(v6);
    }
  }
}

uint64_t sub_100016D80()
{
  v1 = OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_logger;
  v2 = sub_10001AAF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler + 8);
  sub_100016F48(*(v0 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for MarketingNotificationService()
{
  result = qword_100029E58;
  if (!qword_100029E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016E94()
{
  result = sub_10001AAF4();
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

uint64_t sub_100016F38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016F48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100016F58(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = (a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler);
  v8 = *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler);
  v9 = *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler + 8);
  _Block_copy(a3);
  *v7 = sub_1000174AC;
  v7[1] = v6;
  sub_100016F48(v8);

  v10 = [a1 content];
  [v10 mutableCopy];

  sub_10001AC64();
  swift_unknownObjectRelease();
  sub_1000174B4();
  v11 = swift_dynamicCast();
  v12 = aBlock[6];
  if (!v11)
  {
    v12 = 0;
  }

  v13 = *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_bestAttemptContent);
  *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_bestAttemptContent) = v12;

  v14 = a1;
  v15 = sub_10001AAD4();
  v16 = sub_10001AC54();

  if (os_log_type_enabled(v15, v16))
  {
    v41 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v40 = a3;
    v19 = v14;
    v20 = [v14 content];
    v21 = [v20 title];

    v22 = sub_10001AB44();
    v24 = v23;

    v25 = sub_1000150F4(v22, v24, aBlock);

    *(v17 + 4) = v25;
    v14 = v19;
    a3 = v40;
    _os_log_impl(&_mh_execute_header, v15, v16, "MarketingNotificationService didReceive request with title: %s", v17, 0xCu);
    sub_100007C00(v18);

    v6 = v41;
  }

  v26 = objc_opt_self();
  v27 = [v26 shouldHandleServiceExtensionNotificationRequest:v14];
  v28 = sub_10001AAD4();
  if (v27)
  {
    v29 = sub_10001AC54();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "MarketingNotificationService removing any scheduled paid bundle local notifications", v30, 2u);
    }

    v31 = [objc_opt_self() currentNotificationCenter];
    sub_100007C4C(&qword_100029D28, &qword_10001F3F0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10001F4A0;
    *(v32 + 32) = sub_10001AB44();
    *(v32 + 40) = v33;
    isa = sub_10001AB94().super.isa;

    [v31 removePendingNotificationRequestsWithIdentifiers:isa];

    v35 = [objc_opt_self() bag];
    aBlock[4] = sub_1000174AC;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000180DC;
    aBlock[3] = &unk_100025590;
    v36 = _Block_copy(aBlock);

    [v26 handleServiceExtensionNotificationRequest:v14 bag:v35 withContentHandler:v36];
    _Block_release(v36);

    swift_unknownObjectRelease();
  }

  else
  {
    v37 = sub_10001AC34();
    if (os_log_type_enabled(v28, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v28, v37, "MarketingNotificationService didReceive request that AMSUserNotification should not handle.", v38, 2u);
    }

    v39 = [v14 content];
    (a3)[2](a3, v39);
  }
}

uint64_t sub_100017474()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000174B4()
{
  result = qword_100029EF0;
  if (!qword_100029EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029EF0);
  }

  return result;
}

uint64_t sub_100017500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001AA34();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28UnwantedNotificationReporter_sharedDefaults);
  v9 = sub_10001AB34();
  v10 = [v8 dataForKey:v9];

  if (v10)
  {
    v11 = sub_10001A9E4();
    v13 = v12;

    v14 = *(a1 + 16);
    sub_100018084();
    sub_10001A9A4();
    sub_10000E518(v11, v13);
    (*(v20 + 32))(a2, v7, v4);
    return (*(v20 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v15 = sub_10001AAD4();
    v16 = sub_10001AC54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not find notification settings data in defaults", v17, 2u);
    }

    v18 = *(v20 + 56);

    return v18(a2, 1, 1, v4);
  }
}

uint64_t sub_1000178AC()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC32NewsNotificationServiceExtension28UnwantedNotificationReporter_logger;
  v3 = sub_10001AAF4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for UnwantedNotificationReporter()
{
  result = qword_100029F30;
  if (!qword_100029F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000179B4()
{
  result = sub_10001AAF4();
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

uint64_t sub_100017A60(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000117DC;

  return (sub_100017B10)(a1);
}

uint64_t sub_100017B10(uint64_t a1)
{
  v2[203] = v1;
  v2[202] = a1;
  v3 = *(*(sub_100007C4C(&qword_100029FC8, &unk_10001F550) - 8) + 64) + 15;
  v2[204] = swift_task_alloc();
  v4 = sub_10001AA34();
  v2[205] = v4;
  v5 = *(v4 - 8);
  v2[206] = v5;
  v6 = *(v5 + 64) + 15;
  v2[207] = swift_task_alloc();

  return _swift_task_switch(sub_100017C0C, 0, 0);
}

uint64_t sub_100017C0C()
{
  v30 = v0;
  if (!NFInternalBuild())
  {
    goto LABEL_5;
  }

  v1 = [*(v0 + 1616) userInfo];
  v2 = sub_10001AB14();

  sub_10000DEC8(v2, (v0 + 416));
  memcpy(v28, (v0 + 416), sizeof(v28));

  memcpy((v0 + 16), (v0 + 416), 0x189uLL);
  if (sub_100016A78(v0 + 16) == 1)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 1648);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1632);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  sub_100017518(*(v0 + 1624), v5);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v8 = *(v0 + 1632);
    sub_10000C0B4(v0 + 416, &qword_100029E08, &qword_10001F490);
    sub_10000C0B4(v8, &qword_100029FC8, &unk_10001F550);
LABEL_5:
    if (qword_100029960 != -1)
    {
      swift_once();
    }

    v10 = qword_10002B010;
    v9 = *algn_10002B018;

    goto LABEL_8;
  }

  (*(*(v0 + 1648) + 32))(*(v0 + 1656), *(v0 + 1632), *(v0 + 1640));
  v15 = *(sub_10001AA24() + 16);

  if (v15)
  {
    sub_10000C0B4(v0 + 416, &qword_100029E08, &qword_10001F490);
  }

  else
  {
    v16 = *(v0 + 1624);
    memcpy((v0 + 816), v28, 0x189uLL);
    sub_10000EBA8(v0 + 816, v0 + 1216);
    v17 = sub_10001AAD4();
    v18 = sub_10001AC34();
    sub_10000C0B4(v0 + 416, &qword_100029E08, &qword_10001F490);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136446210;
      if (v6)
      {
      }

      else
      {
        v6 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
      }

      sub_10000C0B4(v0 + 416, &qword_100029E08, &qword_10001F490);
      v21 = sub_1000150F4(v7, v6, &v29);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "User not expecting this notification identifier=%{public}s", v19, 0xCu);
      sub_100007C00(v20);
    }

    else
    {

      sub_10000C0B4(v0 + 416, &qword_100029E08, &qword_10001F490);
    }

    v22 = sub_10001AAD4();
    v23 = sub_10001AC44();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "User not expecting to receive notifications", v24, 2u);
    }
  }

  if (qword_100029960 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 1656);
  v26 = *(v0 + 1640);
  v10 = qword_10002B010;
  v9 = *algn_10002B018;
  v27 = *(*(v0 + 1648) + 8);

  v27(v25, v26);
LABEL_8:
  v11 = *(v0 + 1656);
  v12 = *(v0 + 1632);

  v13 = *(v0 + 8);

  return v13(v10, v9);
}

unint64_t sub_100018084()
{
  result = qword_100029FD0;
  if (!qword_100029FD0)
  {
    sub_10001AA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029FD0);
  }

  return result;
}

void sub_1000180DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10001815C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService];
    *&Strong[OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService] = 0;

    swift_unknownObjectRelease();
  }

  return a3(a1);
}

id sub_10001828C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_services;
  sub_100007C4C(&qword_100029D40, &qword_10001F400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001F560;
  *(v3 + 32) = [objc_allocWithZone(FRArticleNotificationService) init];
  v4 = type metadata accessor for MarketingNotificationService();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_logger;
  if (qword_100029978 != -1)
  {
    swift_once();
  }

  v9 = sub_10001AAF4();
  v10 = sub_10000C07C(v9, qword_10002B050);
  (*(*(v9 - 8) + 16))(v7 + v8, v10, v9);
  v11 = (v7 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_contentHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v7 + OBJC_IVAR____TtC32NewsNotificationServiceExtension28MarketingNotificationService_bestAttemptContent) = 0;
  *(v3 + 40) = v7;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService] = 0;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

void sub_100018498(void *a1, uint64_t a2, __objc2_class_ro *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_services);
  v30 = v6;
  if (v7 >> 62)
  {
LABEL_23:
    v8 = sub_10001AD24();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = a3;
  _Block_copy(a3);
  if (v8)
  {
    v9 = 0;
    a3 = &FRArticleNotificationServiceExtensionAccessChecker__metaData;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_10001ACD4();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(v7 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_13;
        }
      }

      if ([v10 supportsHandling:a1])
      {
        v24 = *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService);
        *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService) = v10;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = sub_1000188E8;
        v26[4] = v30;
        aBlock[4] = sub_100018974;
        aBlock[5] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000180DC;
        aBlock[3] = &unk_100025640;
        v27 = _Block_copy(aBlock);

        [v10 didReceive:a1 withContentHandler:v27];
        _Block_release(v27);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      ++v9;
    }

    while (v11 != v8);
  }

  v12 = *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService);
  *(a2 + OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService) = 0;
  swift_unknownObjectRelease();
  if (qword_100029968 != -1)
  {
    swift_once();
  }

  v13 = sub_10001AAF4();
  sub_10000C07C(v13, qword_10002B020);
  v14 = a1;
  v15 = sub_10001AAD4();
  v16 = sub_10001AC34();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v19 = [v14 identifier];
    v20 = sub_10001AB44();
    v22 = v21;

    v23 = sub_1000150F4(v20, v22, aBlock);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unable to service notification request: %{public}s", v17, 0xCu);
    sub_100007C00(v18);
  }

  v28 = [v14 content];
  (v29->ivar_lyt)(v29, v28);
}

uint64_t sub_1000188B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000188FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018934()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100018980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100018998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000189BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100018A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100018A68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x79726F6765746163;
    }

    else
    {
      v3 = 0x7472656C61;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x646E756F73;
  }

  else if (a1 == 3)
  {
    v3 = 0x2D656C626174756DLL;
    v4 = 0xEF746E65746E6F63;
  }

  else
  {
    v3 = 0x692D646165726874;
    v4 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x79726F6765746163;
    }

    else
    {
      v9 = 0x7472656C61;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x2D656C626174756DLL;
    v6 = 0xEF746E65746E6F63;
    if (a2 != 3)
    {
      v5 = 0x692D646165726874;
      v6 = 0xE900000000000064;
    }

    if (a2 == 2)
    {
      v7 = 0x646E756F73;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_10001AE74();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100018C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007C4C(&qword_10002A060, &qword_10001F810);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100007BBC(a1, a1[3]);
  sub_10001A0FC();
  sub_10001AEE4();
  v16 = 0;
  sub_10001AE24();
  if (!v5)
  {
    v15 = 1;
    sub_10001ADE4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100018D9C()
{
  if (*v0)
  {
    result = 2036625250;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_100018DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_10001AE74() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10001AE74();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100018EA4(uint64_t a1)
{
  v2 = sub_10001A0FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018EE0(uint64_t a1)
{
  v2 = sub_10001A0FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100018F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000196B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100018F6C(void *a1)
{
  v3 = v1;
  v5 = sub_100007C4C(&qword_10002A028, &qword_10001F630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_100007BBC(a1, a1[3]);
  sub_100019D04();
  sub_10001AEE4();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v20[15] = 0;
  sub_100019DAC();
  sub_10001AE44();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 4);
  v13 = *(v3 + 5);
  LOBYTE(v21) = 1;
  sub_10001AE24();
  v14 = *(v3 + 6);
  v15 = *(v3 + 7);
  LOBYTE(v21) = 2;
  sub_10001AE24();
  v16 = *(v3 + 8);
  LOBYTE(v21) = 3;
  sub_10001AE34();
  v18 = *(v3 + 9);
  v19 = *(v3 + 10);
  LOBYTE(v21) = 4;
  sub_10001AE24();
  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100019170()
{
  v1 = *v0;
  sub_10001AEA4();
  sub_10001AB64();

  return sub_10001AEC4();
}

uint64_t sub_10001925C()
{
  *v0;
  *v0;
  *v0;
  sub_10001AB64();
}

Swift::Int sub_100019334()
{
  v1 = *v0;
  sub_10001AEA4();
  sub_10001AB64();

  return sub_10001AEC4();
}

uint64_t sub_10001941C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001989C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001944C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472656C61;
  v5 = 0xE500000000000000;
  v6 = 0x646E756F73;
  v7 = 0xEF746E65746E6F63;
  v8 = 0x2D656C626174756DLL;
  if (v2 != 3)
  {
    v8 = 0x692D646165726874;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79726F6765746163;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000194F4()
{
  v1 = *v0;
  v2 = 0x7472656C61;
  v3 = 0x646E756F73;
  v4 = 0x2D656C626174756DLL;
  if (v1 != 3)
  {
    v4 = 0x692D646165726874;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79726F6765746163;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100019598@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001989C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000195CC(uint64_t a1)
{
  v2 = sub_100019D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019608(uint64_t a1)
{
  v2 = sub_100019D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100019644@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000198E8(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000196B8(uint64_t *a1)
{
  v3 = sub_100007C4C(&qword_10002A050, &qword_10001F808);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100007BBC(a1, a1[3]);
  sub_10001A0FC();
  sub_10001AED4();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_10001ADB4();
    v11 = 1;
    sub_10001AD74();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007C00(a1);
  return v8;
}

uint64_t sub_10001989C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100024FE0;
  v6._object = a2;
  v4 = sub_10001AD64(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000198E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007C4C(&qword_10002A010, &qword_10001F628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_100007BBC(a1, a1[3]);
  sub_100019D04();
  sub_10001AED4();
  if (v2)
  {
    return sub_100007C00(a1);
  }

  LOBYTE(v41) = 0;
  sub_100019D58();
  sub_10001ADD4();
  v11 = v47;
  v39 = v48;
  v12 = v49;
  v40 = v50;
  LOBYTE(v47) = 1;
  v13 = sub_10001ADB4();
  v38 = v14;
  v35 = v13;
  v36 = v12;
  v34 = v11;
  LOBYTE(v47) = 2;
  v15 = sub_10001ADB4();
  v37 = v16;
  LOBYTE(v47) = 3;
  v33 = sub_10001ADC4();
  v58 = 4;
  v17 = sub_10001ADB4();
  v18 = *(v6 + 8);
  v19 = v17;
  v31 = v20;
  v18(v9, v5);
  v21 = v34;
  *&v41 = v34;
  v22 = v15;
  v32 = v15;
  v23 = v39;
  *(&v41 + 1) = v39;
  *&v42 = v36;
  v24 = v40;
  *(&v42 + 1) = v40;
  *&v43 = v35;
  *(&v43 + 1) = v38;
  *&v44 = v22;
  v25 = v37;
  *(&v44 + 1) = v37;
  *&v45 = v33;
  v26 = v31;
  *(&v45 + 1) = v19;
  v46 = v31;
  sub_10000EC10(&v41, &v47);
  sub_100007C00(a1);
  v47 = v21;
  v48 = v23;
  v49 = v36;
  v50 = v24;
  v51 = v35;
  v52 = v38;
  v53 = v32;
  v54 = v25;
  v55 = v33;
  v56 = v19;
  v57 = v26;
  result = sub_10000EB54(&v47);
  v28 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v28;
  *(a2 + 64) = v45;
  *(a2 + 80) = v46;
  v29 = v42;
  *a2 = v41;
  *(a2 + 16) = v29;
  return result;
}

unint64_t sub_100019D04()
{
  result = qword_10002A018;
  if (!qword_10002A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A018);
  }

  return result;
}

unint64_t sub_100019D58()
{
  result = qword_10002A020;
  if (!qword_10002A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A020);
  }

  return result;
}

unint64_t sub_100019DAC()
{
  result = qword_10002A030;
  if (!qword_10002A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APS.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for APS.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100019F50(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100019F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100019FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100019FF8()
{
  result = qword_10002A038;
  if (!qword_10002A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A038);
  }

  return result;
}

unint64_t sub_10001A050()
{
  result = qword_10002A040;
  if (!qword_10002A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A040);
  }

  return result;
}

unint64_t sub_10001A0A8()
{
  result = qword_10002A048;
  if (!qword_10002A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A048);
  }

  return result;
}

unint64_t sub_10001A0FC()
{
  result = qword_10002A058;
  if (!qword_10002A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A058);
  }

  return result;
}

unint64_t sub_10001A164()
{
  result = qword_10002A068;
  if (!qword_10002A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A068);
  }

  return result;
}

unint64_t sub_10001A1BC()
{
  result = qword_10002A070;
  if (!qword_10002A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A070);
  }

  return result;
}

unint64_t sub_10001A214()
{
  result = qword_10002A078;
  if (!qword_10002A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A078);
  }

  return result;
}

uint64_t sub_10001A268()
{
  v0 = sub_10001AAF4();
  sub_10001A360(v0, qword_10002B020);
  sub_10000C07C(v0, qword_10002B020);
  return sub_10001AAE4();
}

uint64_t sub_10001A2E0()
{
  v0 = sub_10001AAF4();
  sub_10001A360(v0, qword_10002B038);
  sub_10000C07C(v0, qword_10002B038);
  return sub_10001AAE4();
}

uint64_t *sub_10001A360(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10001A3C4()
{
  v0 = sub_10001AAF4();
  sub_10001A360(v0, qword_10002B050);
  sub_10000C07C(v0, qword_10002B050);
  return sub_10001AAE4();
}

void sub_10001A444()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "appConfigurationManager"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationPersonalizer initWithAppConfigurationManager:feedPersonalizerFactory:]";
  v3 = 2080;
  v4 = "FRArticleNotificationPersonalizer.m";
  v5 = 1024;
  sub_100002BF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10001A524()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "feedPersonalizerFactory"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationPersonalizer initWithAppConfigurationManager:feedPersonalizerFactory:]";
  v3 = 2080;
  v4 = "FRArticleNotificationPersonalizer.m";
  v5 = 1024;
  sub_100002BF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10001A604()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "cachesDirectory"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationArticleSource initWithCachesDirectory:]";
  v3 = 2080;
  v4 = "FRArticleNotificationArticleSource.m";
  v5 = 1024;
  sub_100002BF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10001A6E4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "fetchCompletion != nil"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationArticleSource fetchArticleWithID:completion:]";
  v3 = 2080;
  v4 = "FRArticleNotificationArticleSource.m";
  v5 = 1024;
  sub_100002BF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10001A7DC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "cachesDirectory != nil"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationServiceArticleSource fetchAssetsWithCachesDirectory:thumbnailURLString:publisherLogoURLString:publisherLogoMaskURLString:publisherLogoCompactURLString:flintDocumentURLString:completion:]";
  v3 = 2080;
  v4 = "FRArticleNotificationServiceArticleSource.m";
  v5 = 1024;
  sub_100002BF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10001A8C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "fetchCompletion != nil"];
  *buf = 136315906;
  v2 = "[FRArticleNotificationServiceArticleSource fetchAssetsWithCachesDirectory:thumbnailURLString:publisherLogoURLString:publisherLogoMaskURLString:publisherLogoCompactURLString:flintDocumentURLString:completion:]";
  v3 = 2080;
  v4 = "FRArticleNotificationServiceArticleSource.m";
  v5 = 1024;
  sub_100002BF4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}