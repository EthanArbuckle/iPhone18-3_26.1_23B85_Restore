uint64_t sub_100001B14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  swift_retain_n();

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v1, v2, sub_100002F58, v0, sub_100002F60, v0, v3, v4);
}

uint64_t sub_100001BDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v15 - v9;
  v11 = *(v8 + 40);
  (*(v8 + 32))();
  v12 = *(v1 + 88);
  sub_100017B88(v7, v2, v12);
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_100017B88(v10, v2, v12);
  return (v13)(v10, v2);
}

uint64_t sub_100001D38(void *a1, uint64_t a2)
{
  v4 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v5 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v4))
  {
    v6 = a1;
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = [v6 processIdentifier];
    *(v7 + 8) = 1024;
    *(v7 + 10) = [v6 effectiveUserIdentifier];

    _os_log_impl(&_mh_execute_header, v5, v4, "EKEventGenericDetailScene Starting: Setting up XPC connection. processIdentifier: %d. userIdentifier: %u.", v7, 0xEu);
  }

  v8 = sub_10001CE4C();
  [a1 setExportedInterface:v8];

  v9 = sub_10001CE3C();
  [a1 setRemoteObjectInterface:v9];

  [a1 setExportedObject:a2];
  v10 = *(a2 + 48);
  *(a2 + 48) = a1;
  v11 = a1;

  [v11 resume];
  return 1;
}

uint64_t sub_100001EC4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001D13C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001D15C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  sub_100002CF0();
  v14 = sub_10001D35C();
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_100002F2C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002CFD8;
  v16 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003428(&qword_100032D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_100002254(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = sub_10001D23C();
  v7 = v6;

  a4(v5, v7);
}

uint64_t sub_1000022EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v22 = a1;
  v7 = sub_10001D13C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10001D15C();
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v25);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002CF0();
  v16 = sub_10001D35C();
  v17 = swift_allocObject();
  v19 = v22;
  v18 = v23;
  v17[2] = v5;
  v17[3] = v19;
  v17[4] = a2;
  aBlock[4] = v18;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003428(&qword_100032D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v20);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v25);
}

uint64_t sub_1000025AC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(result + 56) + *a4;
  v5 = *v4;
  if (*v4)
  {
    v8 = *(v4 + 8);

    v5(a2, a3);

    return sub_100002EB0(v5);
  }

  return result;
}

uint64_t sub_10000264C(uint64_t a1)
{
  v3 = sub_10001D13C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001D15C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002CF0();
  v13 = sub_10001D35C();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v1;
  aBlock[4] = sub_100002D74;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002CEE8;
  v15 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003428(&qword_100032D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100002908(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_bottomStatusButtonTapCallback;
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    v5 = *(v2 + 8);

    v3(v4);

    return sub_100002EB0(v3);
  }

  return result;
}

uint64_t sub_100002988(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_10000264C(a3);
}

uint64_t sub_1000029CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t sub_100002A04()
{
  sub_1000029CC();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void *sub_100002B04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002B2C(uint64_t a1, id *a2)
{
  result = sub_10001D21C();
  *a2 = 0;
  return result;
}

uint64_t sub_100002BA8(uint64_t a1, id *a2)
{
  v3 = sub_10001D22C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002C2C@<X0>(void *a1@<X8>)
{
  sub_10001D23C();
  v2 = sub_10001D20C();

  *a1 = v2;
  return result;
}

uint64_t sub_100002CB4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100002CF0()
{
  result = qword_1000333D0;
  if (!qword_1000333D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000333D0);
  }

  return result;
}

uint64_t sub_100002D3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002D94(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002DDC()
{
  result = qword_100032D90;
  if (!qword_100032D90)
  {
    sub_100002E40(&unk_1000333E0, &qword_10001EC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D90);
  }

  return result;
}

uint64_t sub_100002E40(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002EB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002EEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002F2C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 56);
  return sub_100017CDC(v1, v2);
}

uint64_t sub_100002F68(uint64_t a1)
{
  v2 = sub_100003428(&qword_100032600, type metadata accessor for UIContentSizeCategory);
  v3 = sub_100003428(&qword_100032608, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003028@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10001D20C();

  *a2 = v5;
  return result;
}

uint64_t sub_100003070@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001D23C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000309C(uint64_t a1)
{
  v2 = sub_100003428(&qword_100032610, type metadata accessor for ActivityType);
  v3 = sub_100003428(&qword_100032618, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000315C()
{
  v1 = *v0;
  sub_10001D23C();
  v2 = sub_10001D27C();

  return v2;
}

uint64_t sub_10000319C()
{
  v1 = *v0;
  sub_10001D23C();
  sub_10001D25C();
}

Swift::Int sub_1000031F4()
{
  v1 = *v0;
  sub_10001D23C();
  sub_10001D58C();
  sub_10001D25C();
  v2 = sub_10001D59C();

  return v2;
}

uint64_t sub_10000326C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10001D23C();
  v6 = v5;
  if (v4 == sub_10001D23C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10001D55C();
  }

  return v9 & 1;
}

void sub_100003388(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100003428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000036A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  swift_retain_n();

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v1, v2, sub_100005898, v0, sub_1000058A0, v0, v3, v4);
}

uint64_t sub_100003768(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v15 - v9;
  v11 = *(v8 + 40);
  (*(v8 + 32))();
  v12 = *(v1 + 88);
  sub_100017B88(v7, v2, v12);
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_100017B88(v10, v2, v12);
  return (v13)(v10, v2);
}

uint64_t sub_1000038C4(void *a1, uint64_t a2)
{
  v4 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v5 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v4))
  {
    v6 = a1;
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = [v6 processIdentifier];
    *(v7 + 8) = 1024;
    *(v7 + 10) = [v6 effectiveUserIdentifier];

    _os_log_impl(&_mh_execute_header, v5, v4, "EKEventScene Starting: Setting up XPC connection. processIdentifier: %d. userIdentifier: %u.", v7, 0xEu);
  }

  v8 = sub_10001CDEC();
  [a1 setExportedInterface:v8];

  v9 = sub_10001CDDC();
  [a1 setRemoteObjectInterface:v9];

  [a1 setExportedObject:a2];
  [a1 auditToken];
  v10 = v29;
  v11 = v30;
  v12 = v31;
  v13 = v32;
  v14 = v33;
  v15 = v34;
  v28 = a2;
  v17 = v35;
  v16 = v36;
  v18 = objc_allocWithZone(ClientIdentity);
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v17;
  v36 = v16;
  v19 = [v18 initWithAuditToken:&v29];
  if (v19)
  {
    v20 = v19;
    v21 = objc_opt_self();
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v17;
    v36 = v16;
    v22 = [v21 authorizationStatusWithAuditToken:&v29 entityType:0];
    v23 = *(v28 + 72);
    v24 = *(v23 + 32);
    *(v23 + 24) = v22;
    *(v23 + 32) = v20;
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
    *(*(v28 + 72) + 24) = 1;
  }

  v25 = *(v28 + 48);
  *(v28 + 48) = a1;
  v26 = a1;

  [v26 resume];
  return 1;
}

void sub_100003B54(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, unint64_t a7)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v12 = qword_100035690;
  sub_10001CF8C();
  v13 = sub_10001D32C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v12, v13, "EKUIRemoteUIExtension: layoutDirectionValue: %ld", v14, 0xCu);
  }

  v15 = objc_opt_self();
  v16 = [v15 shared];
  [v16 setLayoutDirectionOverride:a2];

  v36 = sub_10001D20C();
  v17 = sub_10001D32C();
  if (os_log_type_enabled(v12, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10001B240(a3, a4, &v37);
    _os_log_impl(&_mh_execute_header, v12, v17, "EKUIRemoteUIExtension: sizeCategoryValue: %s", v18, 0xCu);
    sub_10000584C(v19);
  }

  v20 = [v15 shared];
  [v20 setPreferredContentSizeCategoryOverride:v36];

  v21 = sub_10001D32C();
  if (os_log_type_enabled(v12, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    [a1 ekui_size];
    *(v22 + 4) = v23;
    *(v22 + 12) = 2048;
    [a1 ekui_size];
    *(v22 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v21, "EKUIRemoteUIExtension: viewHierarchy size: (%f, %f)", v22, 0x16u);
  }

  v25 = [v15 shared];
  [v25 setViewHierarchyOverride:a1];

  v26 = *(v7 + 72);
  v27 = *(v26 + 32);
  if (v27)
  {
    v28 = *(v26 + 16);
    v29 = v27;
    sub_10000D0F8(v29, a5, a6, a7);

    v30 = *(v26 + 32);
    if (v30)
    {
LABEL_11:
      v31 = *(v26 + 16);
      v32 = v30;
      [v31 setRemoteClientIdentity:v32];

      goto LABEL_14;
    }
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
    v30 = *(v26 + 32);
    if (v30)
    {
      goto LABEL_11;
    }
  }

  sub_10001D31C();
  sub_10001CF8C();
LABEL_14:
}

uint64_t sub_100003F40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7)
{
  v11 = sub_10001D23C();
  v13 = v12;
  if (a7)
  {
    v14 = sub_10001D23C();
    a7 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a3;

  sub_100003B54(v16, a4, v11, v13, a6, v14, a7);
}

uint64_t sub_10000400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a2;
  v31 = a3;
  v8 = *v4;
  v9 = sub_10001D13C();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001D15C();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001CEEC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v28 = sub_10001D35C();
  (*(v17 + 16))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v16);
  v20 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = *(v8 + 80);
  *(v21 + 3) = *(v8 + 88);
  *(v21 + 4) = v5;
  *(v21 + 5) = a1;
  v22 = v31;
  *(v21 + 6) = v30;
  *(v21 + 7) = v22;
  (*(v17 + 32))(&v21[v20], v19, v16);
  aBlock[4] = sub_100005774;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D268;
  v23 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  v24 = v29;
  v25 = v35;
  sub_10001D40C();
  v26 = v28;
  sub_10001D37C();
  _Block_release(v23);

  (*(v34 + 8))(v24, v25);
  return (*(v32 + 8))(v15, v33);
}

uint64_t sub_100004444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100002D94(&qword_100032D20, &qword_10001EC98);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = *(a1 + 72);
  v15 = v14[8];
  v14[8] = a2;

  v16 = v14[9];
  v14[9] = a3;

  v17 = v14[10];
  v14[10] = a4;

  v18 = sub_10001CEEC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, a5, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  v20 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventOccurrenceDate;
  swift_beginAccess();
  sub_1000057DC(v13, v14 + v20);
  result = swift_endAccess();
  v22 = v14[6];
  if (v22)
  {
    v23 = v14[7];

    v22(v14);
    return sub_100002EB0(v22);
  }

  return result;
}

uint64_t sub_100004600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  v6 = sub_10001CEEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001D1FC();
  sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
  sub_100002D94(&qword_100032700, &unk_10001ECA0);
  sub_1000058F0();
  v12 = sub_10001D1FC();
  v13 = sub_10001D1FC();
  sub_10001CEDC();

  sub_10000400C(v11, v12, v13, v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000047C4(char a1)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  result = sub_10001CF8C();
  *(*(v1 + 72) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_hasInProcessNavBar) = a1 & 1;
  return result;
}

uint64_t sub_100004888(uint64_t a1)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v3 = *(v1 + 72);
  return sub_100010AFC(a1);
}

uint64_t sub_100004928()
{
  v0 = sub_10001D1FC();

  sub_100004888(v0);
}

uint64_t sub_1000049A0()
{
  v1 = sub_10001D13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001D15C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v11 = sub_10001D35C();
  aBlock[4] = sub_100005690;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D218;
  v12 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100004C20(uint64_t result)
{
  v1 = *(result + 72) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_navigationDoneButtonTapCallback;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);

    return sub_100002EB0(v2);
  }

  return result;
}

uint64_t sub_100004C8C()
{

  sub_1000049A0();
}

uint64_t sub_100004CC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = a2;
  v8 = sub_10001D13C();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10001D15C();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v16 = sub_10001D35C();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v4;
  v17[4] = v22;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_100005680;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D1F0;
  v18 = _Block_copy(aBlock);
  v19 = a4;

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v18);

  (*(v24 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v23);
}

uint64_t sub_100004F8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 72) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewCompletedCallback;
  v6 = *v5;
  if (*v5)
  {
    v10 = result;
    v11 = *(v5 + 8);

    v6(v10, a3, a4, a5);

    return sub_100002EB0(v6);
  }

  return result;
}

uint64_t sub_100005034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_10001D23C();
  v9 = v8;
  v10 = a5;

  sub_100004CC8(a3, v7, v9, a5);
}

uint64_t sub_1000050C4(char a1)
{
  v3 = sub_10001D13C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001D15C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v13 = sub_10001D35C();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000055BC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D1A0;
  v15 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100005364(uint64_t result, char a2)
{
  v2 = *(result + 72) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewPresentedCallback;
  v3 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 8);

    v3(a2 & 1);

    return sub_100002EB0(v3);
  }

  return result;
}

uint64_t sub_1000053FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_100005454()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return v0;
}

uint64_t sub_100005494()
{
  sub_100005454();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_100005548(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100005584()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000055C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000055E0()
{
  result = qword_100032D80;
  if (!qword_100032D80)
  {
    sub_10001D13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D80);
  }

  return result;
}

uint64_t sub_100005638()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005698()
{
  v1 = sub_10001CEEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100005774()
{
  v1 = *(sub_10001CEEC() - 8);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_100004444(v2, v3, v4, v5, v6);
}

uint64_t sub_1000057DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D94(&qword_100032D20, &qword_10001EC98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000584C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000058A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1000058F0()
{
  result = qword_100032708;
  if (!qword_100032708)
  {
    sub_1000058A8(255, &unk_100032D50, EKObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032708);
  }

  return result;
}

id sub_1000059AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKUIRemotePresentViewData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100005A40()
{
  v1 = v0;
  v14 = sub_10001D34C();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001D33C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_10001D15C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v0[2] = [objc_allocWithZone(EKEventStore) init];
  v0[4] = &_swiftEmptyDictionarySingleton;
  v10 = sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v13[0] = "remotePresentViewMap";
  v13[1] = v10;
  sub_10001D14C();
  v15 = &_swiftEmptyArrayStorage;
  sub_10000935C(&qword_100032890, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002D94(&qword_100032898, &qword_10001EDC0);
  sub_10000A2D8(&qword_1000328A0, &qword_100032898, &qword_10001EDC0);
  sub_10001D40C();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v0[3] = sub_10001D38C();
  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v1 selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  return v1;
}

uint64_t (*sub_100005D34@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>))@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_100002D94(&qword_1000328B8, &qword_10001EDD0);
  v5 = swift_allocObject();
  v5[7] = 0;
  v5[8] = 0;
  v5[6] = 0;
  v6 = v4;

  v5[2] = sub_10001CD5C();
  v5[3] = v7;
  v8 = type metadata accessor for EKEventViewModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v5[9] = sub_100010A10(v6);
  v5[4] = sub_100009B14;
  v5[5] = v2;
  v11 = *(v2 + 16);
  swift_beginAccess();
  v12 = *(v2 + 32);
  sub_100002D94(&qword_1000328C0, &qword_10001EDD8);
  swift_allocObject();

  v13 = v11;

  v14 = sub_100009B24(v13, v12, sub_100009B1C, v2);

  v15 = *(v2 + 16);
  sub_100002D94(&qword_1000328C8, &qword_10001EDE0);
  v16 = swift_allocObject();

  v17 = v15;
  v16[2] = sub_10001CD8C();
  v16[3] = v18;
  v16[6] = 0;
  v19 = type metadata accessor for EKEventEditViewModel();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v16[7] = sub_10000A3D0(v17);
  v16[4] = sub_100009D60;
  v16[5] = v2;
  v22 = *(v2 + 16);
  sub_100002D94(&qword_1000328D0, &qword_10001EDE8);
  v23 = swift_allocObject();

  v24 = v22;
  v25 = sub_10001CE5C();
  v27 = v26;

  v23[2] = v25;
  v23[3] = v27;
  v23[6] = 0;
  type metadata accessor for EKCalendarChooserViewModel();
  swift_allocObject();
  v23[7] = sub_10000D480(v24);
  v23[4] = sub_100009D68;
  v23[5] = v2;
  result = swift_allocObject();
  *(result + 2) = v5;
  *(result + 3) = v14;
  *(result + 4) = v16;
  *(result + 5) = v23;
  *a1 = sub_100009DC0;
  a1[1] = result;
  return result;
}

uint64_t sub_100005FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 72);
  type metadata accessor for EKEventViewModel();
  sub_10000935C(&qword_100032950, 255, type metadata accessor for EKEventViewModel);

  v16 = sub_10001CFFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  sub_100002D94(&qword_100032900, &unk_10001EDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001ECB0;
  swift_retain_n();

  LOBYTE(v6) = sub_10001D0BC();
  *(inited + 32) = v6;
  v11 = sub_10001D0CC();
  *(inited + 33) = v11;
  v12 = sub_10001D0DC();
  *(inited + 34) = v12;
  v13 = sub_10001D0FC();
  *(inited + 35) = v13;
  v14 = sub_10001D0EC();
  sub_10001D0EC();
  if (sub_10001D0EC() != v6)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v11)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v12)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v13)
  {
    v14 = sub_10001D0EC();
  }

  result = sub_10001D00C();
  *a3 = v16;
  *(a3 + 8) = v8;
  *(a3 + 16) = sub_100009F28;
  *(a3 + 24) = a1;
  *(a3 + 32) = sub_100009EF8;
  *(a3 + 40) = v9;
  *(a3 + 48) = sub_100009F20;
  *(a3 + 56) = a1;
  *(a3 + 64) = result;
  *(a3 + 72) = v14;
  return result;
}

void sub_100006228(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v48 = a1;
  v46 = a10;
  v13 = sub_10001CF1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v47 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v50 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10001B240(v48, a2, &v50);
    _os_log_impl(&_mh_execute_header, v47, v18, "EKEventViewScene onRequestPresentView: User tapped on child item: %s", v19, 0xCu);
    sub_10000584C(v20);
  }

  sub_10001CF0C();
  v21 = sub_10001CEFC();
  v23 = v22;
  (*(v14 + 8))(v17, v13);
  v24 = type metadata accessor for EKUIRemotePresentViewData();
  v25 = objc_allocWithZone(v24);
  v26 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event;
  *&v25[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event] = 0;
  v27 = &v25[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewName];
  *v27 = v48;
  *(v27 + 1) = a2;
  *&v25[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewController] = a3;
  *&v25[v26] = a4;
  v51.receiver = v25;
  v51.super_class = v24;

  v28 = a3;
  v29 = a4;
  v30 = objc_msgSendSuper2(&v51, "init");
  v31 = *(a9 + 24);
  v32 = swift_allocObject();
  v33 = swift_weakInit();
  __chkstk_darwin(v33);
  *(&v41 - 4) = v32;
  *(&v41 - 3) = v21;
  *(&v41 - 2) = v23;
  *(&v41 - 1) = v30;
  v34 = v31;
  sub_100002D94(&qword_100032918, &qword_10001EE10);
  sub_10001D36C();

  v35 = *(v46 + 48);
  if (v35)
  {
    v36 = v35;
    v37 = [v36 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032958, &unk_10001EEA0);
    if (swift_dynamicCast())
    {
      v38 = v49;
      v39 = sub_10001D20C();
      v40 = sub_10001D20C();

      [v38 requestPresentViewWithName:v39 viewID:v40 presentationStyle:v42 sourceRect:v43 preferredContentSize:v44 oopContentBackgroundColor:v45];

      swift_unknownObjectRelease();
      v30 = v40;
    }

    else
    {

      sub_10001D31C();
      sub_10001CF8C();

      v30 = v36;
    }
  }

  else
  {

    sub_10001D31C();
    sub_10001CF8C();
  }
}

uint64_t sub_100006674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1000097F8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100012684(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100009970();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_100009648(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_10000676C(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v9 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = 7104878;
    }

    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_10001B240(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v9, v8, "EKEventViewScene onRequestDismissView. viewName: %s", v10, 0xCu);
    sub_10000584C(v11);
  }

  v15 = *(a4 + 48);
  if (v15)
  {
    v16 = v15;
    v17 = [v16 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032958, &unk_10001EEA0);
    if (swift_dynamicCast())
    {
      if (a2)
      {
        a2 = sub_10001D20C();
      }

      [v18 requestDismissViewWithName:a2 presentationStyle:a3];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10001D31C();
      sub_10001CF8C();
    }
  }

  else
  {
    sub_10001D31C();

    sub_10001CF8C();
  }
}

void sub_100006A08(uint64_t a1, uint64_t a2)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032958, &unk_10001EEA0);
    if (swift_dynamicCast())
    {
      [v7 didCompleteWithAction:a1];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10001D31C();
      sub_10001CF8C();
    }
  }

  else
  {
    sub_10001D31C();

    sub_10001CF8C();
  }
}

uint64_t sub_100006BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 56);
  type metadata accessor for EKEventGenericDetailViewModel();
  sub_10000935C(&unk_100033EE0, 255, type metadata accessor for EKEventGenericDetailViewModel);

  v7 = sub_10001CFFC();
  v18 = v8;
  v19 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_100002D94(&qword_100032900, &unk_10001EDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001ECB0;
  swift_retain_n();
  swift_retain_n();
  v12 = sub_10001D0BC();
  *(inited + 32) = v12;
  v13 = sub_10001D0CC();
  *(inited + 33) = v13;
  v14 = sub_10001D0DC();
  *(inited + 34) = v14;
  v15 = sub_10001D0FC();
  *(inited + 35) = v15;
  v16 = sub_10001D0EC();
  sub_10001D0EC();
  if (sub_10001D0EC() != v12)
  {
    v16 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v13)
  {
    v16 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v14)
  {
    v16 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v15)
  {
    v16 = sub_10001D0EC();
  }

  result = sub_10001D00C();
  *a3 = v19;
  *(a3 + 8) = v18;
  *(a3 + 16) = sub_100009E90;
  *(a3 + 24) = v9;
  *(a3 + 32) = sub_100009E98;
  *(a3 + 40) = a1;
  *(a3 + 48) = sub_100009EA0;
  *(a3 + 56) = a1;
  *(a3 + 64) = sub_100009EA8;
  *(a3 + 72) = a1;
  *(a3 + 80) = sub_100009EB0;
  *(a3 + 88) = v10;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = result;
  *(a3 + 120) = v16;
  return result;
}

void sub_100006E54(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a5;
  v40 = a7;
  v42 = a1;
  v11 = sub_10001CF1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v41 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10001B240(v42, a2, &v44);
    _os_log_impl(&_mh_execute_header, v41, v16, "EKEventGenericDetailScene onRequestPresentView: onRequestPresentView: %s", v17, 0xCu);
    sub_10000584C(v18);
  }

  sub_10001CF0C();
  v19 = sub_10001CEFC();
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  v22 = type metadata accessor for EKUIRemotePresentViewData();
  v23 = objc_allocWithZone(v22);
  v24 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event;
  *&v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event] = 0;
  v25 = &v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewName];
  *v25 = v42;
  *(v25 + 1) = a2;
  *&v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewController] = a3;
  *&v23[v24] = a4;
  v45.receiver = v23;
  v45.super_class = v22;

  v26 = a3;
  v27 = a4;
  v28 = objc_msgSendSuper2(&v45, "init");
  v29 = *(a6 + 24);
  v30 = swift_allocObject();
  v31 = swift_weakInit();
  __chkstk_darwin(v31);
  *(&v39 - 4) = v30;
  *(&v39 - 3) = v19;
  *(&v39 - 2) = v21;
  *(&v39 - 1) = v28;
  v32 = v29;
  sub_100002D94(&qword_100032918, &qword_10001EE10);
  sub_10001D36C();

  v33 = *(v40 + 48);
  if (v33)
  {
    v34 = v33;
    v35 = [v34 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032948, &unk_10001EE90);
    if (swift_dynamicCast())
    {
      v36 = v43;
      v37 = sub_10001D20C();
      v38 = sub_10001D20C();

      [v36 requestPresentViewWithName:v37 viewID:v38 presentationStyle:v39];

      swift_unknownObjectRelease();
      v28 = v38;
    }

    else
    {

      sub_10001D31C();
      sub_10001CF8C();

      v28 = v34;
    }
  }

  else
  {

    sub_10001D31C();
    sub_10001CF8C();
  }
}

void sub_100007294(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v9 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = 7104878;
    }

    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_10001B240(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v9, v8, "EKEventGenericDetailScene onRequestDismissView. viewName:%s", v10, 0xCu);
    sub_10000584C(v11);
  }

  v15 = *(a4 + 48);
  if (v15)
  {
    v16 = v15;
    v17 = [v16 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032948, &unk_10001EE90);
    if (swift_dynamicCast())
    {
      if (a2)
      {
        a2 = sub_10001D20C();
      }

      [v18 requestDismissViewWithName:a2 presentationStyle:a3];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10001D31C();
      sub_10001CF8C();
    }
  }

  else
  {
    sub_10001D31C();

    sub_10001CF8C();
  }
}

void sub_100007530(Class isa, Class a2, uint64_t a3)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v6 = *(a3 + 48);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032948, &unk_10001EE90);
    if (swift_dynamicCast())
    {
      if (isa)
      {
        isa = sub_10001D29C().super.isa;
      }

      if (a2)
      {
        a2 = sub_10001D29C().super.isa;
      }

      [v9 didChangeNavigationBarButtonsWithLeftBarButtonIDs:isa rightBarButtonIDs:a2];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10001D31C();
      sub_10001CF8C();
    }
  }

  else
  {
    sub_10001D31C();

    sub_10001CF8C();
  }
}

void sub_100007734(Class isa, uint64_t a2)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032948, &unk_10001EE90);
    if (swift_dynamicCast())
    {
      if (isa)
      {
        sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
        isa = sub_10001D29C().super.isa;
      }

      [v7 didChangeBottomStatusButtonsWithBottomStatusButtonActions:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10001D31C();
      sub_10001CF8C();
    }
  }

  else
  {
    sub_10001D31C();

    sub_10001CF8C();
  }
}

uint64_t sub_10000791C(uint64_t a1)
{
  v1 = *(a1 + 56);
  type metadata accessor for EKEventGenericDetailViewModel();
  sub_10000935C(&unk_100033EE0, 255, type metadata accessor for EKEventGenericDetailViewModel);
  sub_10001CF9C();
  sub_10001CFAC();

  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(v1 + 24);
    swift_beginAccess();

    sub_100006674(0, v4, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000079F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 56);
  type metadata accessor for EKEventEditViewModel();
  sub_10000935C(&qword_100032928, 255, type metadata accessor for EKEventEditViewModel);

  v16 = sub_10001CFFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  sub_100002D94(&qword_100032900, &unk_10001EDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001ECB0;
  swift_retain_n();

  LOBYTE(v6) = sub_10001D0BC();
  *(inited + 32) = v6;
  v11 = sub_10001D0CC();
  *(inited + 33) = v11;
  v12 = sub_10001D0DC();
  *(inited + 34) = v12;
  v13 = sub_10001D0FC();
  *(inited + 35) = v13;
  v14 = sub_10001D0EC();
  sub_10001D0EC();
  if (sub_10001D0EC() != v6)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v11)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v12)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v13)
  {
    v14 = sub_10001D0EC();
  }

  result = sub_10001D00C();
  *a3 = v16;
  *(a3 + 8) = v8;
  *(a3 + 16) = sub_100009E44;
  *(a3 + 24) = a1;
  *(a3 + 32) = sub_100009E3C;
  *(a3 + 40) = v9;
  *(a3 + 48) = result;
  *(a3 + 56) = v14;
  return result;
}

void sub_100007C28(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a5;
  v40 = a7;
  v42 = a1;
  v11 = sub_10001CF1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v41 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10001B240(v42, a2, &v44);
    _os_log_impl(&_mh_execute_header, v41, v16, "EKEventEditScene onRequestPresentView: User tapped on child item: %s", v17, 0xCu);
    sub_10000584C(v18);
  }

  sub_10001CF0C();
  v19 = sub_10001CEFC();
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  v22 = type metadata accessor for EKUIRemotePresentViewData();
  v23 = objc_allocWithZone(v22);
  v24 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event;
  *&v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event] = 0;
  v25 = &v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewName];
  *v25 = v42;
  *(v25 + 1) = a2;
  *&v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewController] = a3;
  *&v23[v24] = a4;
  v45.receiver = v23;
  v45.super_class = v22;

  v26 = a3;
  v27 = a4;
  v28 = objc_msgSendSuper2(&v45, "init");
  v29 = *(a6 + 24);
  v30 = swift_allocObject();
  v31 = swift_weakInit();
  __chkstk_darwin(v31);
  *(&v39 - 4) = v30;
  *(&v39 - 3) = v19;
  *(&v39 - 2) = v21;
  *(&v39 - 1) = v28;
  v32 = v29;
  sub_100002D94(&qword_100032918, &qword_10001EE10);
  sub_10001D36C();

  v33 = *(v40 + 48);
  if (v33)
  {
    v34 = v33;
    v35 = [v34 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032930, &qword_10001EE28);
    if (swift_dynamicCast())
    {
      v36 = v43;
      v37 = sub_10001D20C();
      v38 = sub_10001D20C();

      [v36 requestPresentViewWithName:v37 viewID:v38 presentationStyle:v39];

      swift_unknownObjectRelease();
      v28 = v38;
    }

    else
    {

      sub_10001D31C();
      sub_10001CF8C();

      v28 = v34;
    }
  }

  else
  {

    sub_10001D31C();
    sub_10001CF8C();
  }
}

void sub_100008068(uint64_t a1, Class isa, uint64_t a3, Class a4, Class a5, Class a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v16 = *(a9 + 48);
  if (v16)
  {
    v20 = a3;
    v17 = v16;
    v18 = [v17 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032930, &qword_10001EE28);
    if (swift_dynamicCast())
    {
      if (isa)
      {
        sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
        sub_1000058F0();
        isa = sub_10001D1EC().super.isa;
      }

      if (a4)
      {
        a4 = sub_10001D1EC().super.isa;
      }

      if (a5)
      {
        sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
        sub_1000058F0();
        a5 = sub_10001D1EC().super.isa;
      }

      if (a6)
      {
        sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
        sub_1000058F0();
        a6 = sub_10001D1EC().super.isa;
      }

      if (a8 >> 60 == 15)
      {
        v19 = 0;
      }

      else
      {
        v19 = sub_10001CEBC().super.isa;
      }

      [v21 didCompleteWithAction:a1 oldToNewObjectIDMap:isa waitUntilTimestamp:v20 serializedDictionary:a4 objectIDToChangeSetDictionaryMap:a5 objectIDToPersistentDictionaryMap:a6 eventConstraints:v19];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10001D31C();
      sub_10001CF8C();
    }
  }

  else
  {
    sub_10001D31C();

    sub_10001CF8C();
  }
}

uint64_t sub_100008394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 56);
  type metadata accessor for EKCalendarChooserViewModel();
  sub_10000935C(&qword_1000333F0, 255, type metadata accessor for EKCalendarChooserViewModel);

  v16 = sub_10001CFFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  sub_100002D94(&qword_100032900, &unk_10001EDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001ECB0;
  swift_retain_n();

  LOBYTE(v6) = sub_10001D0BC();
  *(inited + 32) = v6;
  v11 = sub_10001D0CC();
  *(inited + 33) = v11;
  v12 = sub_10001D0DC();
  *(inited + 34) = v12;
  v13 = sub_10001D0FC();
  *(inited + 35) = v13;
  v14 = sub_10001D0EC();
  sub_10001D0EC();
  if (sub_10001D0EC() != v6)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v11)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v12)
  {
    v14 = sub_10001D0EC();
  }

  sub_10001D0EC();
  if (sub_10001D0EC() != v13)
  {
    v14 = sub_10001D0EC();
  }

  result = sub_10001D00C();
  *a3 = v16;
  *(a3 + 8) = v8;
  *(a3 + 16) = sub_100009DFC;
  *(a3 + 24) = a1;
  *(a3 + 32) = sub_100009DF4;
  *(a3 + 40) = v9;
  *(a3 + 48) = result;
  *(a3 + 56) = v14;
  return result;
}

void sub_1000085C4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a6;
  v10 = sub_10001CF1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v40 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v42 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10001B240(a1, a2, &v42);
    _os_log_impl(&_mh_execute_header, v40, v15, "EKCalendarChooserScene onRequestPresentView: User tapped on child item: %s", v16, 0xCu);
    sub_10000584C(v17);
  }

  sub_10001CF0C();
  v18 = sub_10001CEFC();
  v20 = v19;
  (*(v11 + 8))(v14, v10);
  v21 = type metadata accessor for EKUIRemotePresentViewData();
  v22 = objc_allocWithZone(v21);
  v23 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event;
  *&v22[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event] = 0;
  v24 = &v22[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewName];
  v37 = a1;
  *v24 = a1;
  v24[1] = a2;
  *&v22[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewController] = a3;
  *&v22[v23] = 0;
  v43.receiver = v22;
  v43.super_class = v21;

  v25 = a3;
  v26 = objc_msgSendSuper2(&v43, "init");
  v27 = *(a5 + 24);
  v28 = swift_allocObject();
  v29 = swift_weakInit();
  __chkstk_darwin(v29);
  *(&v37 - 4) = v28;
  *(&v37 - 3) = v18;
  *(&v37 - 2) = v20;
  *(&v37 - 1) = v26;
  v30 = v27;
  sub_100002D94(&qword_100032918, &qword_10001EE10);
  sub_10001D36C();

  v31 = *(v39 + 48);
  if (v31)
  {
    v32 = v31;
    v33 = [v32 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032908, &qword_10001EE08);
    if (swift_dynamicCast())
    {
      v34 = v41;
      v35 = sub_10001D20C();
      v36 = sub_10001D20C();

      [v34 requestPresentViewWithName:v35 viewID:v36 presentationStyle:v38];

      swift_unknownObjectRelease();
      v26 = v36;
    }

    else
    {

      sub_10001D31C();
      sub_10001CF8C();

      v26 = v32;
    }
  }

  else
  {

    sub_10001D31C();
    sub_10001CF8C();
  }
}

uint64_t sub_100008A00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v9 = result;
  if (result)
  {
    swift_beginAccess();

    v10 = a3;
    v11 = *(v9 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v9 + 32);
    *(v9 + 32) = 0x8000000000000000;
    sub_1000097F8(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v9 + 32) = v13;
    swift_endAccess();
  }

  *a4 = v9 == 0;
  return result;
}

void sub_100008AFC(uint64_t a1, char a2, uint64_t a3)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v5 = *(a3 + 48);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 remoteObjectProxy];
    sub_10001D3FC();
    swift_unknownObjectRelease();
    sub_100002D94(&qword_100032908, &qword_10001EE08);
    if (swift_dynamicCast())
    {
      sub_1000058A8(0, &qword_100032910, EKCalendarWrapper_ptr);
      isa = sub_10001D29C().super.isa;
      [v9 calendarSelectionChanged:isa allSelected:a2 & 1];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10001D31C();
      sub_10001CF8C();
    }
  }

  else
  {
    sub_10001D31C();

    sub_10001CF8C();
  }
}

uint64_t sub_100008DC4()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100008E0C()
{
  v1 = *v0;

  v2 = sub_100002D94(&qword_1000328A8, &qword_10001EDC8);
  v3 = sub_10000A2D8(&qword_1000328B0, &qword_1000328A8, &qword_10001EDC8);

  return AppExtensionSceneConfiguration.init<A>(_:)(sub_100009ADC, v1, v2, v3);
}

void *sub_100008EC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EKUIRemoteUIExtension();
  v2 = swift_allocObject();
  result = sub_100005A40();
  *a1 = v2;
  return result;
}

uint64_t sub_100008F28(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_100008F00(*v1);
}

uint64_t sub_100008F38()
{
  sub_100002D94(&qword_1000328D8, &qword_10001EDF0);
  v0 = *(sub_10001CF6C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001ECB0;

  sub_100002D94(&qword_1000328B8, &qword_10001EDD0);
  sub_10000A2D8(&qword_1000328E0, &qword_1000328B8, &qword_10001EDD0);
  sub_10001CF5C();

  sub_100002D94(&qword_1000328C0, &qword_10001EDD8);
  sub_10000A2D8(&qword_1000328E8, &qword_1000328C0, &qword_10001EDD8);
  sub_10001CF5C();

  sub_100002D94(&qword_1000328C8, &qword_10001EDE0);
  sub_10000A2D8(&qword_1000328F0, &qword_1000328C8, &qword_10001EDE0);
  sub_10001CF5C();

  sub_100002D94(&qword_1000328D0, &qword_10001EDE8);
  sub_10000A2D8(&qword_1000328F8, &qword_1000328D0, &qword_10001EDE8);
  sub_10001CF5C();
  return v3;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for EKUIRemoteUIExtension();
  sub_10000935C(&qword_100032710, v3, type metadata accessor for EKUIRemoteUIExtension);
  sub_10001CF7C();
  return 0;
}

uint64_t sub_1000092B8(uint64_t a1, uint64_t a2)
{
  result = sub_10000935C(&qword_100032710, a2, type metadata accessor for EKUIRemoteUIExtension);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000935C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000093A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002D94(&qword_100032920, &unk_10001EE18);
  v39 = a2;
  result = sub_10001D52C();
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
      sub_10001D58C();
      sub_10001D25C();
      result = sub_10001D59C();
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

uint64_t sub_100009648(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10001D41C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10001D58C();

      sub_10001D25C();
      v13 = sub_10001D59C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
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

uint64_t sub_1000097F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100012684(a2, a3);
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
      sub_1000093A4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100012684(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10001D57C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100009970();
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

id sub_100009970()
{
  v1 = v0;
  sub_100002D94(&qword_100032920, &unk_10001EE18);
  v2 = *v0;
  v3 = sub_10001D51C();
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

double sub_100009ADC@<D0>(_OWORD *a1@<X8>)
{
  sub_100005D34(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_100009B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100002D94(&qword_100032938, &qword_10001EE30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v4[6] = 0;
  v14 = type metadata accessor for EKEventGenericDetailViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  v18 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel__viewController;
  v30 = 0;
  v19 = a1;
  sub_100002D94(&qword_100032940, &qword_10001EE38);
  sub_10001CFBC();
  (*(v10 + 32))(v17 + v18, v13, v9);
  *(v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event) = 0;
  v20 = (v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_leftBarButtonTapCallback);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_rightBarButtonTapCallback);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_bottomStatusButtonTapCallback);
  *v22 = 0;
  v22[1] = 0;
  *(v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_viewAppearedSetupFinished) = 0;
  *(v17 + 16) = v19;
  *(v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_remotePresentViewMap) = a2;
  v23 = *(v17 + 32);
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v24 = v19;

  v25 = *(v17 + 48);
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = 0;

  sub_10001CFDC();

  v26 = *(v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event);
  *(v17 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event) = 0;

  v4[7] = v17;
  v4[2] = sub_10001CE6C();
  v4[3] = v27;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_100009D70()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009DC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  result = sub_100008F38();
  *a1 = result;
  return result;
}

uint64_t sub_100009E04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009EB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100009F30()
{
  sub_10001D23C();
  v0 = sub_10001CE8C();
  if (!v0)
  {

    goto LABEL_9;
  }

  v1 = v0;
  sub_10001D49C();
  if (!*(v1 + 16) || (v2 = sub_1000126FC(v6), (v3 & 1) == 0))
  {

    sub_10000A0E4(v6);
LABEL_9:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  sub_10000A138(*(v1 + 56) + 32 * v2, &v7);
  sub_10000A0E4(v6);

  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_10000A07C(&v7);
    return;
  }

  type metadata accessor for UIContentSizeCategory(0);
  if (swift_dynamicCast())
  {
    v4 = v6[0];
    v5 = [objc_opt_self() shared];
    [v5 setPreferredContentSizeCategoryOverride:v4];
  }
}

uint64_t sub_10000A07C(uint64_t a1)
{
  v2 = sub_100002D94(qword_100032960, &qword_10001F220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A1A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000A1EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000A1F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A240(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000A2D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002E40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A320(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000A3D0(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  v3 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_eventOccurrenceDate;
  v4 = sub_10001CEEC();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_hostTempToRemoteTempObjectIDMap) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_changedViewConfigurationDictionary) = &_swiftEmptyDictionarySingleton;
  v5 = (v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_getHasUnsavedChangesAction);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_10000A494(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001D13C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001D15C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v13 = *(v2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_changedViewConfigurationDictionary);
  *(v2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_changedViewConfigurationDictionary) = a1;

  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v14 = sub_10001D35C();
  aBlock[4] = sub_10000D088;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D4E0;
  v15 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000D0A8(&qword_100032D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v18);
}

uint64_t sub_10000A7D0()
{
  type metadata accessor for EKEventEditViewModel();
  sub_10000D0A8(&qword_100032928, type metadata accessor for EKEventEditViewModel);
  sub_10001CF9C();
  sub_10001CFAC();
}

uint64_t sub_10000A858()
{
  v1 = *(v0 + 64);
  sub_100002EB0(*(v0 + 56));

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  sub_10000CFB0(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_eventOccurrenceDate, &qword_100032D20, &qword_10001EC98);
  v5 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_hostTempToRemoteTempObjectIDMap);

  v6 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_changedViewConfigurationDictionary);

  v7 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_getHasUnsavedChangesAction + 8);
  sub_100002EB0(*(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_getHasUnsavedChangesAction));
  return v0;
}

uint64_t sub_10000A8FC()
{
  sub_10000A858();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for EKEventEditViewModel()
{
  result = qword_100032A18;
  if (!qword_100032A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A9A8()
{
  sub_10000AA88();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000AA88()
{
  if (!qword_1000334C0)
  {
    sub_10001CEEC();
    v0 = sub_10001D3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000334C0);
    }
  }
}

uint64_t sub_10000AAE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EKEventEditViewModel();
  result = sub_10001CF9C();
  *a1 = result;
  return result;
}

void sub_10000AB24(void *a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension15EKEventEditView24EventEditViewCoordinator_eventEditView;
  v4 = *(v2 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension15EKEventEditView24EventEditViewCoordinator_eventEditView + 16);
  if (v4)
  {
    v7 = *(v3 + 24);

    v8 = sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v9 = qword_100035690;
    if (os_log_type_enabled(qword_100035690, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v9, v8, "EventEditViewCoordinator: onComplete called. action: %ld", v10, 0xCu);
    }

    v11 = [a1 event];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 eventStore];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 lastDatabaseTimestamp];

        if (a2 == 2)
        {
          v34 = 2;
          v35 = v15;
        }

        else
        {
          if (a2 == 1)
          {
            v72 = v4;
            v71 = v15;
            sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
            v16 = v12;
            v17 = *(v3 + 8);
            isa = sub_10001D3AC(*(v17 + 32)).super.super.isa;
            v19 = sub_10001D39C(*(v17 + 24)).super.super.isa;
            sub_100002D94(&qword_100032D30, &qword_10001F210);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10001EFA0;
            *(inited + 32) = 0x7461745368747561;
            *(inited + 40) = 0xEA00000000007375;
            *(inited + 48) = isa;
            *(inited + 56) = 0x65764577654E7369;
            *(inited + 64) = 0xEA0000000000746ELL;
            *(inited + 72) = v19;
            v70 = isa;
            v69 = v19;
            sub_10000CEAC(inited);
            swift_setDeallocating();
            sub_100002D94(&qword_100032D38, &qword_10001F218);
            swift_arrayDestroy();
            v21 = [v16 eventStore];
            if (v21)
            {
              v22 = v21;
              v23 = sub_10001D20C();
              sub_1000058A8(0, &unk_100032D40, NSObject_ptr);
              v24 = sub_10001D1EC().super.isa;
              [v22 analyticsSendEvent:v23 appendingClientBundleIDToPayload:v24];

              v25 = v17;
              v65 = *(v17 + 32);
              v67 = v16;
              v26 = v16;
              v27 = [v26 calendar];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 source];

                v4 = v72;
                if (v29)
                {
                  v63 = [v29 isReadable];

                  v62 = *(v17 + 32);
                  v73 = v26;
                  v30 = [v26 calendar];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = [v30 source];

                    if (v32)
                    {
                      v33 = [v32 isReadable];

                      if (v33)
                      {
                        if (v65 == 3)
                        {
                          v12 = v67;
                          if ((v63 & 1) == 0)
                          {
                            if (v62 != 4)
                            {
                              goto LABEL_42;
                            }

LABEL_38:
                            sub_10001D32C();
                            sub_10001CF8C();
                            v45 = *(v25 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_hostTempToRemoteTempObjectIDMap);

                            v46 = [v73 eventStore];
                            if (v46)
                            {
                              v47 = v46;
                              v48 = [v46 lastCommitTempToPermanentObjectIDMap];

                              if (v48)
                              {
                                sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
                                sub_1000058F0();
                                sub_10001D1FC();

                                sub_10001CD7C();
                                v49 = sub_10001CD6C();
                              }

                              else
                              {

                                sub_10001D31C();
                                sub_10001CF8C();
                                v49 = &_swiftEmptyDictionarySingleton;
                              }

                              if ([a1 precommitSerializedEvent])
                              {
                                sub_10001D3FC();
                                swift_unknownObjectRelease();
                              }

                              else
                              {
                                v76 = 0u;
                                v77 = 0u;
                              }

                              v78[0] = v76;
                              v78[1] = v77;
                              if (*(&v77 + 1))
                              {
                                sub_10001D1BC();
                                if (swift_dynamicCast())
                                {
                                  v51 = v75;
                                }

                                else
                                {
                                  v51 = 0;
                                }
                              }

                              else
                              {
                                sub_10000CFB0(v78, qword_100032960, &qword_10001F220);
                                v51 = 0;
                              }

                              v52 = [v73 constraints];

                              if (v52)
                              {

                                v53 = [v52 serialized];

                                if (v53)
                                {
                                  v74 = sub_10001CECC();
                                  v68 = v54;
                                }

                                else
                                {
                                  v74 = 0;
                                  v68 = 0xF000000000000000;
                                }

                                v66 = v51;
                                if (v51)
                                {
                                  v55 = v51;
                                  v56 = sub_10001D18C();

                                  v57 = v55;
                                  v58 = sub_10001D19C();

                                  v64 = sub_10000B688(v58);

                                  v59 = v57;
                                  v60 = sub_10001D1AC();

                                  v61 = sub_10000B688(v60);
                                }

                                else
                                {
                                  v61 = 0;
                                  v64 = 0;
                                  v56 = 0;
                                }

                                v72(1, v49, v71, v56, v64, v61, v74, v68);

                                v15 = v71;

                                sub_10000D010(v74, v68);
                                v50 = v66;
                                goto LABEL_63;
                              }

                              goto LABEL_75;
                            }

LABEL_74:
                            __break(1u);
LABEL_75:
                            __break(1u);
                            return;
                          }

                          goto LABEL_34;
                        }

                        v12 = v67;
                        if (v62 == 4)
                        {
                          goto LABEL_38;
                        }

                        goto LABEL_42;
                      }

                      v36 = [v73 calendar];
                      if (v36)
                      {
                        v37 = v36;
                        v38 = [v36 source];

                        if (v38)
                        {
                          v39 = [v38 isWritable];

                          v12 = v67;
                          if (((v65 == 3) & v63) != 0)
                          {
LABEL_34:

                            sub_10001D32C();
                            sub_10001CF8C();
                            v40 = *(v25 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_hostTempToRemoteTempObjectIDMap);

                            v41 = [v73 eventStore];
                            if (v41)
                            {
                              v42 = v41;
                              v43 = [v41 lastCommitTempToPermanentObjectIDMap];

                              v15 = v71;
                              if (v43)
                              {
                                sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
                                sub_1000058F0();
                                sub_10001D1FC();

                                sub_10001CD7C();
                                v44 = sub_10001CD6C();
                              }

                              else
                              {

                                sub_10001D31C();
                                sub_10001CF8C();
                                v44 = &_swiftEmptyDictionarySingleton;
                              }

                              v72(1, v44, v71, 0, 0, 0, 0, 0xF000000000000000);

                              goto LABEL_45;
                            }

                            goto LABEL_73;
                          }

                          if ((v62 == 4) | v39 & 1)
                          {
                            goto LABEL_38;
                          }

LABEL_42:

                          sub_10001D32C();
                          sub_10001CF8C();
                          v15 = v71;
                          v72(1, &_swiftEmptyDictionarySingleton, v71, 0, 0, 0, 0, 0xF000000000000000);
LABEL_45:

                          v50 = v70;
LABEL_63:

                          goto LABEL_64;
                        }

LABEL_72:
                        __break(1u);
LABEL_73:
                        __break(1u);
                        goto LABEL_74;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

LABEL_68:
                __break(1u);
                goto LABEL_69;
              }

LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v34 = a2;
          v35 = 0;
        }

        v4(v34, 0, v35, 0, 0, 0, 0, 0xF000000000000000);
LABEL_64:
        [*(*(v3 + 8) + 16) stopRecordingObjectIDChangeMap];

        sub_100002EB0(v4);
        return;
      }

      __break(1u);
      goto LABEL_66;
    }

    sub_10001D31C();
    sub_10001CF8C();

    sub_100002EB0(v4);
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

unint64_t sub_10000B688(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002D94(&unk_100032D60, &unk_10001F228);
    v2 = sub_10001D53C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v25)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v31);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v33 = (v31 << 9) | (8 * v32);
          v39 = *(*(a1 + 56) + v33);
          v34 = *(*(a1 + 48) + v33);

          sub_100002D94(&qword_100032700, &unk_10001ECA0);
          swift_dynamicCast();
          sub_10000D078((v41 + 8), (v42 + 8));
          sub_10000D078((v42 + 8), v40);
          sub_10000D078(v40, v42);
          result = sub_100012740(v34);
          if (v35)
          {
            v27 = v2[6];
            v28 = *(v27 + 8 * result);
            *(v27 + 8 * result) = v34;
            v29 = result;

            v30 = (v2[7] + 32 * v29);
            sub_10000584C(v30);
            result = sub_10000D078(v42, v30);
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v2[2] >= v2[3])
            {
              goto LABEL_41;
            }

            *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
            *(v2[6] + 8 * result) = v34;
            result = sub_10000D078(v42, (v2[7] + 32 * result));
            v36 = v2[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (v37)
            {
              goto LABEL_42;
            }

            v2[2] = v38;
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v31 = v26;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 8);

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v16 = *(*(a1 + 48) + v15);
      *&v40[0] = *(*(a1 + 56) + v15);
      v17 = v16;

      sub_100002D94(&qword_100032700, &unk_10001ECA0);
      swift_dynamicCast();
      sub_10000D078((v41 + 8), (v42 + 8));
      sub_10000D078((v42 + 8), v41);
      result = sub_10001D3BC(v2[5]);
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *&v10[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      v7 &= v7 - 1;
      *(v2[6] + 8 * v13) = v17;
      result = sub_10000D078(v41, (v2[7] + 32 * v13));
      ++v2[2];
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_10000BB5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKEventEditView.EventEditViewCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BC18(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10000BC30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000BC44(uint64_t a1, int a2)
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

uint64_t sub_10000BC8C(uint64_t result, int a2, int a3)
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

id sub_10000BD10@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = type metadata accessor for EKEventEditView.EventEditViewCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension15EKEventEditView24EventEditViewCoordinator_eventEditView];
  *v11 = v4;
  *(v11 + 1) = v3;
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v8;
  *(v11 + 5) = v7;

  sub_10000BF70(v5);
  sub_10000BF70(v8);
  v13.receiver = v10;
  v13.super_class = v9;
  result = objc_msgSendSuper2(&v13, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10000BE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CE58();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CE58();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000BEE4()
{
  sub_10000CE58();
  sub_10001D08C();
  __break(1u);
}

unint64_t sub_10000BF10()
{
  result = qword_100032CF8;
  if (!qword_100032CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032CF8);
  }

  return result;
}

uint64_t sub_10000BF70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10000BF80(void *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16))
  {
    v6 = sub_100012684(0xD000000000000011, 0x8000000100022AB0);
    if (v7)
    {
      sub_10000A138(*(a2 + 56) + 32 * v6, v28);
      if (swift_dynamicCast())
      {
        v8 = sub_10001D20C();

        v9 = [a3 calendarWithIdentifier:v8];

        [a1 setDefaultCalendar:v9];
      }
    }
  }

  if (*(a2 + 16))
  {
    v10 = sub_100012684(0xD000000000000011, 0x8000000100022AB0);
    if (v11)
    {
      sub_10000A138(*(a2 + 56) + 32 * v10, v28);
      sub_1000058A8(0, &qword_100033380, NSNull_ptr);
      if (swift_dynamicCast())
      {

        [a1 setDefaultCalendar:0];
      }
    }
  }

  if (*(a2 + 16))
  {
    v12 = sub_100012684(0xD000000000000015, 0x8000000100022AD0);
    if (v13)
    {
      sub_10000A138(*(a2 + 56) + 32 * v12, v28);
      sub_1000058A8(0, &qword_100032D10, UIColor_ptr);
      if (swift_dynamicCast())
      {
        [a1 setEditorBackgroundColor:v27];
      }
    }
  }

  if (*(a2 + 16))
  {
    v14 = sub_100012684(0xD000000000000015, 0x8000000100022AD0);
    if (v15)
    {
      sub_10000A138(*(a2 + 56) + 32 * v14, v28);
      sub_1000058A8(0, &qword_100033380, NSNull_ptr);
      if (swift_dynamicCast())
      {

        [a1 setEditorBackgroundColor:0];
      }
    }
  }

  if (*(a2 + 16))
  {
    v16 = sub_100012684(0xD000000000000011, 0x8000000100022AF0);
    if (v17)
    {
      sub_10000A138(*(a2 + 56) + 32 * v16, v28);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setTimeImplicitlySet:{objc_msgSend(v27, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v18 = sub_100012684(0x6974736567677573, 0xED000079654B6E6FLL);
    if (v19)
    {
      sub_10000A138(*(a2 + 56) + 32 * v18, v28);
      if (swift_dynamicCast())
      {
        v20 = sub_10001D20C();

        [a1 setSuggestionKey:v20];
      }
    }
  }

  if (*(a2 + 16))
  {
    v21 = sub_100012684(0x6974736567677573, 0xED000079654B6E6FLL);
    if (v22)
    {
      sub_10000A138(*(a2 + 56) + 32 * v21, v28);
      sub_1000058A8(0, &qword_100033380, NSNull_ptr);
      if (swift_dynamicCast())
      {

        [a1 setSuggestionKey:0];
      }
    }
  }

  if (*(a2 + 16))
  {
    v23 = sub_100012684(0xD000000000000014, 0x8000000100022B10);
    if (v24)
    {
      sub_10000A138(*(a2 + 56) + 32 * v23, v28);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setIgnoreUnsavedChanges:{objc_msgSend(v27, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v25 = sub_100012684(0xD000000000000013, 0x8000000100022B30);
    if (v26)
    {
      sub_10000A138(*(a2 + 56) + 32 * v25, v28);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setEventCreationMethod:{objc_msgSend(v27, "unsignedIntegerValue")}];
      }
    }
  }
}

void sub_10000C50C(uint64_t a1)
{
  v2 = sub_100002D94(&qword_100032D20, &qword_10001EC98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v6 = *(a1 + 72);
  if (v6)
  {
    if (!*(a1 + 80) || !*(a1 + 88) || !*(a1 + 96))
    {
      v26 = v6;
      sub_10001D32C();
      goto LABEL_10;
    }

    v7 = *(a1 + 48);
    v26 = v6;
    if (v7)
    {
      sub_10001D31C();
LABEL_10:
      sub_10001CF8C();
      v8 = v26;

      return;
    }

    sub_10001D32C();
    sub_10001CF8C();
    *(a1 + 48) = 1;
    v9 = *(a1 + 16);
    v10 = [objc_allocWithZone(sub_10001D17C()) init];
    [v9 startRecordingObjectIDChangeMap];
    [v26 setEventStore:v9];
    [v26 setShouldRecordPrecommitEvent:1];
    v11 = *(a1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_changedViewConfigurationDictionary);
    if (*(v11 + 16))
    {
      v12 = *(a1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_changedViewConfigurationDictionary);

      sub_10000BF80(v26, v11, v9);
    }

    v13 = *(a1 + 32);
    sub_10001D32C();
    sub_10001CF8C();
    v14 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_eventOccurrenceDate;
    swift_beginAccess();
    sub_10000CDE8(a1 + v14, v5);
    v25 = v10;
    v15 = sub_10001D16C();

    if (v15)
    {
      v16 = v15;
      v17 = sub_10001D1CC();
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        *(a1 + 24) = [v18 isNew];
        if ([v19 isNew])
        {
          if (v13 == 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = 3;
          }

          v20 = v26;
        }

        else
        {
          v20 = v26;
          if (*(a1 + 32) == 4)
          {
            v21 = [v9 isCurrentProcessCreatorOfEvent:v19] == 0;
            v20 = v26;
            if (v21)
            {
              v13 = 2;
            }
          }
        }

        [v20 setEvent:v19];
      }

      else
      {

        sub_10001D31C();
        sub_10001CF8C();
        if (v13 == 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = 3;
        }
      }

      v22 = sub_10001D1DC();

      v23 = *(a1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_hostTempToRemoteTempObjectIDMap);
      *(a1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_hostTempToRemoteTempObjectIDMap) = v22;
    }

    [v26 setShouldOverrideAuthorizationStatus:1 withRemoteUIStatus:v13];

    sub_10000CFB0(v5, &qword_100032D20, &qword_10001EC98);
  }

  else
  {
    sub_10001D32C();

    sub_10001CF8C();
  }
}

id sub_10000C9E8(uint64_t a1, void *a2)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v3 = [objc_allocWithZone(EKEventEditViewController) initWithRemoteUI:0];
  if (v3)
  {
    v4 = a2[9];
    a2[9] = v3;
    v5 = v3;

    sub_100002D94(&qword_100032D18, &unk_10001F200);
    sub_10001D0AC();
    [v5 setEditViewDelegate:v16];

    v6 = v5;
    sub_10001D0AC();
    [v6 setDelegate:v16];

    v7 = a2[7];
    v8 = a2[8];
    a2[7] = sub_10000AB20;
    a2[8] = 0;
    sub_100002EB0(v7);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = (a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_getHasUnsavedChangesAction);
    v11 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_getHasUnsavedChangesAction);
    v12 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_getHasUnsavedChangesAction + 8);
    *v10 = sub_10000CDC4;
    v10[1] = v9;
    v13 = v6;
    sub_100002EB0(v11);
    sub_10000C50C(a2);
    return v13;
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
    v15 = objc_allocWithZone(EKEventEditViewController);

    return [v15 init];
  }
}

void sub_10000CC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2)
  {
    v6 = v2;
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
    v4 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_changedViewConfigurationDictionary);
    if (*(v4 + 16))
    {
      v5 = *(a2 + 16);

      sub_10000BF80(v6, v4, v5);
    }
  }

  else
  {
    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

uint64_t sub_10000CD8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D94(&qword_100032D20, &qword_10001EC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000CE58()
{
  result = qword_100032D28;
  if (!qword_100032D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D28);
  }

  return result;
}

unint64_t sub_10000CEAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D94(&unk_100032D70, &qword_10001F238);
    v3 = sub_10001D53C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100012684(v5, v6);
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

uint64_t sub_10000CFB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D010(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000D024(a1, a2);
  }

  return a1;
}

uint64_t sub_10000D024(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_10000D078(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D0A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000D0F8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v31 = [objc_allocWithZone(CADDefaultPermissionValidator) initWithClientIdentity:a1];
  v10 = [v31 hasManagedConfigurationBundleIDOverrideEntitlement];
  sub_10001D32C();
  if (v10)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v12 = qword_100035690;
    sub_10001CF8C();
    v32 = 0;
    v13 = 0;
  }

  else
  {
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v12 = qword_100035690;
    sub_10001CF8C();
    v32 = a3;
    v13 = a4;
  }

  v14 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  if (os_log_type_enabled(v12, v14))
  {
    v15 = 7104878;

    v29 = a1;
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v16 = 67109890;
    v30 = a2;
    *(v16 + 4) = a2;
    *(v16 + 8) = 2080;
    if (a4)
    {
      v17 = a3;
    }

    else
    {
      v17 = 7104878;
    }

    v18 = 0xE300000000000000;
    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10001B240(v17, v19, &v33);

    *(v16 + 10) = v20;
    *(v16 + 18) = 2080;
    if (v13)
    {
      v21 = v32;
    }

    else
    {
      v21 = 7104878;
    }

    if (v13)
    {
      v22 = v13;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_10001B240(v21, v22, &v33);

    *(v16 + 20) = v23;
    *(v16 + 28) = 2080;
    v24 = [v29 teamIdentifier];
    if (v24)
    {
      v25 = v24;
      v15 = sub_10001D23C();
      v18 = v26;
    }

    v27 = sub_10001B240(v15, v18, &v33);

    *(v16 + 30) = v27;
    _os_log_impl(&_mh_execute_header, v12, v14, "EKEventStore+ManagedConfiguration: setting source account management. management:[%u] bundleID:[%s] overrideBundleID:[%s] clientTeamIdentifier:[%s]", v16, 0x26u);
    swift_arrayDestroy();

    v5 = v4;
    a2 = v30;
  }

  if (v13)
  {
    v28 = sub_10001D20C();
  }

  else
  {
    v28 = 0;
  }

  [v5 setSourceAccountManagement:a2 withBundleID:v28];
}

uint64_t sub_10000D480(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = &_swiftEmptyDictionarySingleton;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 122) = 1;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_10000D4C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001D13C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10001D15C();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v66);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v13 = *(v2 + 64);
  *(v2 + 64) = a1;

  if (*(v2 + 72))
  {
    goto LABEL_4;
  }

  v17 = *(v2 + 64);
  if (*(v17 + 16))
  {
    v18 = *(v2 + 64);

    v19 = sub_100012684(0x6F697463656C6573, 0xEE00656C7974536ELL);
    if (v20)
    {
      sub_10000A138(*(v17 + 56) + 32 * v19, aBlock);

      v21 = sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v64 = v5;
        v65 = v21;
        v22 = v67;
        v23 = [v67 integerValue];

        *(v2 + 80) = v23;
        v24 = *(v2 + 64);
        if (*(v24 + 16))
        {
          v25 = *(v2 + 64);

          v26 = sub_100012684(0x5379616C70736964, 0xEC000000656C7974);
          if (v27)
          {
            sub_10000A138(*(v24 + 56) + 32 * v26, aBlock);

            if (swift_dynamicCast())
            {
              v28 = v67;
              v29 = [v67 integerValue];

              *(v2 + 88) = v29;
              v30 = *(v2 + 64);
              if (*(v30 + 16))
              {
                v31 = *(v2 + 64);

                v32 = sub_100012684(0x7954797469746E65, 0xEA00000000006570);
                if (v33)
                {
                  sub_10000A138(*(v30 + 56) + 32 * v32, aBlock);

                  if (swift_dynamicCast())
                  {
                    v34 = v67;
                    v35 = [v67 unsignedIntegerValue];

                    *(v2 + 96) = v35;
                  }
                }

                else
                {
                }
              }

              v36 = *(v2 + 64);
              if (*(v36 + 16))
              {
                v37 = *(v2 + 64);

                v38 = sub_100012684(0xD000000000000013, 0x8000000100023340);
                if (v39)
                {
                  sub_10000A138(*(v36 + 56) + 32 * v38, aBlock);

                  if (swift_dynamicCast())
                  {
                    v40 = v67;
                    v41 = [v67 BOOLValue];

                    *(v2 + 104) = v41;
                  }
                }

                else
                {
                }
              }

              v42 = *(v2 + 64);
              if (*(v42 + 16))
              {
                v43 = *(v2 + 64);

                v44 = sub_100012684(0xD000000000000015, 0x8000000100023370);
                if (v45)
                {
                  sub_10000A138(*(v42 + 56) + 32 * v44, aBlock);

                  v46 = swift_dynamicCast();
                  v5 = v64;
                  if (v46)
                  {
                    v47 = v67;
                    v48 = [v67 BOOLValue];

                    *(v2 + 120) = v48;
                  }

LABEL_31:
                  v49 = *(v2 + 64);
                  if (*(v49 + 16))
                  {
                    v50 = *(v2 + 64);

                    v51 = sub_100012684(0xD000000000000011, 0x8000000100023390);
                    if (v52)
                    {
                      sub_10000A138(*(v49 + 56) + 32 * v51, aBlock);

                      if (swift_dynamicCast())
                      {
                        v53 = v67;
                        v54 = [v67 BOOLValue];

                        *(v2 + 121) = v54;
                      }
                    }

                    else
                    {
                    }
                  }

                  v55 = *(v2 + 64);
                  if (*(v55 + 16))
                  {
                    v56 = *(v2 + 64);

                    v57 = sub_100012684(0xD000000000000011, 0x80000001000238F0);
                    if (v58)
                    {
                      sub_10000A138(*(v55 + 56) + 32 * v57, aBlock);

                      if (swift_dynamicCast())
                      {
                        v59 = *(v2 + 16);
                        v60 = sub_10001D20C();

                        v61 = [v59 sourceWithIdentifier:v60];

LABEL_42:
                        v62 = *(v2 + 112);
                        *(v2 + 112) = v61;

                        *(v2 + 72) = 1;
LABEL_4:
                        sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
                        v14 = sub_10001D35C();
                        aBlock[4] = sub_1000107F8;
                        aBlock[5] = v2;
                        aBlock[0] = _NSConcreteStackBlock;
                        aBlock[1] = 1107296256;
                        aBlock[2] = sub_100011578;
                        aBlock[3] = &unk_10002D5B8;
                        v15 = _Block_copy(aBlock);

                        sub_10001D14C();
                        aBlock[0] = &_swiftEmptyArrayStorage;
                        sub_100010818(&qword_100032D80, 255, &type metadata accessor for DispatchWorkItemFlags);
                        sub_100002D94(&unk_1000333E0, &qword_10001EC90);
                        sub_100002DDC();
                        sub_10001D40C();
                        sub_10001D37C();
                        _Block_release(v15);

                        (*(v5 + 8))(v8, v4);
                        return (*(v9 + 8))(v12, v66);
                      }
                    }

                    else
                    {
                    }
                  }

                  v61 = 0;
                  goto LABEL_42;
                }
              }

              v5 = v64;
              goto LABEL_31;
            }
          }

          else
          {
          }
        }
      }
    }

    else
    {
    }
  }

  sub_10001D31C();
  return sub_10001CF8C();
}

uint64_t sub_10000DD08()
{
  type metadata accessor for EKCalendarChooserViewModel();
  sub_100010818(&qword_1000333F0, v0, type metadata accessor for EKCalendarChooserViewModel);
  sub_10001CF9C();
  sub_10001CFAC();
}

uint64_t sub_10000DD98()
{
  v1 = *(v0 + 64);

  return _swift_deallocClassInstance(v0, 123, 7);
}

uint64_t sub_10000DE14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EKCalendarChooserViewModel();
  result = sub_10001CF9C();
  *a1 = result;
  return result;
}

double sub_10000DE50@<D0>(uint64_t a1@<X8>)
{
  v18 = *v1;
  if (*(*(&v18 + 1) + 72) == 1)
  {
    type metadata accessor for EKCalendarChooserViewModel();
    sub_100010818(&qword_1000333F0, v3, type metadata accessor for EKCalendarChooserViewModel);

    sub_10001CFFC();
    v4 = *(v1 + 2);
    v5 = *(v1 + 3);
    v7 = *(v1 + 4);
    v6 = *(v1 + 5);
    v8 = swift_allocObject();
    v9 = v1[1];
    v8[1] = *v1;
    v8[2] = v9;
    v8[3] = v1[2];
    v10 = swift_allocObject();
    v11 = v1[1];
    v10[1] = *v1;
    v10[2] = v11;
    v10[3] = v1[2];
    sub_1000108F8(&v18, v16);
    sub_10000BF70(v4);
    sub_10000BF70(v7);
    sub_1000108F8(&v18, v16);
    sub_10000BF70(v4);
    sub_10000BF70(v7);
  }

  sub_10000E8C4();
  sub_10001D01C();
  result = *v16;
  v13 = v16[1];
  v14 = v16[2];
  v15 = v17;
  *a1 = v16[0];
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_10000E03C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 32);
  if (v5)
  {
    v9 = result;
    v10 = *(a5 + 40);

    v5(v9, a2, a3, a4);

    return sub_100002EB0(v5);
  }

  return result;
}

uint64_t sub_10000E0D4(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(a3 + 24);

    v3(v5, a2 & 1);

    return sub_100002EB0(v3);
  }

  return result;
}

uint64_t sub_10000E15C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator_calendarChooserView + 16))
  {
    v23 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator_calendarChooserView + 16);
    v22 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator_calendarChooserView + 24);

    v21 = a1;
    v3 = [a1 selectedCalendars];
    sub_1000058A8(0, &qword_100033390, EKCalendar_ptr);
    sub_100010400();
    v4 = sub_10001D2EC();

    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_10001D43C();
      sub_10001D30C();
      v4 = v25;
      v5 = v26;
      v6 = v27;
      v7 = v28;
      v8 = v29;
    }

    else
    {
      v7 = 0;
      v10 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v6 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v8 = v12 & *(v4 + 56);
    }

    v13 = (v6 + 64) >> 6;
    if (v4 < 0)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v14 = v7;
      v15 = v8;
      v16 = v7;
      if (!v8)
      {
        break;
      }

LABEL_17:
      v17 = (v15 - 1) & v15;
      v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v18)
      {
LABEL_25:
        sub_1000103F8();
        v23(&_swiftEmptyArrayStorage, [v21 allSelected]);

        return sub_100002EB0(v23);
      }

      while (1)
      {
        v19 = [objc_allocWithZone(EKCalendarWrapper) initWithCalendar:v18];
        sub_10001D28C();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10001D2BC();
        }

        sub_10001D2CC();

        v7 = v16;
        v8 = v17;
        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_19:
        if (sub_10001D46C())
        {
          swift_dynamicCast();
          v18 = v24;
          v16 = v7;
          v17 = v8;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_25;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_10001D32C();
  if (qword_100032310 != -1)
  {
LABEL_27:
    swift_once();
  }

  return sub_10001CF8C();
}

id sub_10000E634()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKCalendarChooserView.CalendarChooserViewCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000E71C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = type metadata accessor for EKCalendarChooserView.CalendarChooserViewCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator_calendarChooserView];
  *v11 = v4;
  *(v11 + 1) = v3;
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v8;
  *(v11 + 5) = v7;

  sub_10000BF70(v5);
  sub_10000BF70(v8);
  v13.receiver = v10;
  v13.super_class = v9;
  result = objc_msgSendSuper2(&v13, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10000E7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001046C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000E834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001046C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000E898()
{
  sub_10001046C();
  sub_10001D08C();
  __break(1u);
}

unint64_t sub_10000E8C4()
{
  result = qword_100033370;
  if (!qword_100033370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033370);
  }

  return result;
}

void *sub_10000E918(uint64_t a1, uint64_t a2)
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

  sub_100002D94(&qword_1000333A8, &qword_10001F4B8);
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

uint64_t sub_10000E99C(void *a1, void *a2)
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

    v9 = sub_10001D45C();

    if (v9)
    {

      sub_1000058A8(0, &qword_100033390, EKCalendar_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10001D44C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10000EBD4(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10000EDC4(v21 + 1);
    }

    v19 = v8;
    sub_10000EFEC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000058A8(0, &qword_100033390, EKCalendar_ptr);
  v11 = sub_10001D3BC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10000F070(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10001D3CC();

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

Swift::Int sub_10000EBD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002D94(&qword_1000333A0, &qword_10001F4B0);
    v2 = sub_10001D4CC();
    v15 = v2;
    sub_10001D43C();
    if (sub_10001D46C())
    {
      sub_1000058A8(0, &qword_100033390, EKCalendar_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000EDC4(v9 + 1);
        }

        v2 = v15;
        result = sub_10001D3BC(*(v15 + 40));
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

      while (sub_10001D46C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10000EDC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002D94(&qword_1000333A0, &qword_10001F4B0);
  result = sub_10001D4BC();
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
      result = sub_10001D3BC(*(v6 + 40));
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

unint64_t sub_10000EFEC(uint64_t a1, uint64_t a2)
{
  sub_10001D3BC(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10001D42C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10000F070(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000EDC4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000F1E0();
      goto LABEL_12;
    }

    sub_10000F330(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10001D3BC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000058A8(0, &qword_100033390, EKCalendar_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10001D3CC();

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
  sub_10001D56C();
  __break(1u);
}

id sub_10000F1E0()
{
  v1 = v0;
  sub_100002D94(&qword_1000333A0, &qword_10001F4B0);
  v2 = *v0;
  v3 = sub_10001D4AC();
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

uint64_t sub_10000F330(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002D94(&qword_1000333A0, &qword_10001F4B0);
  result = sub_10001D4BC();
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
      result = sub_10001D3BC(v17);
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

void *sub_10000F544(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10000F69C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000058A8(0, &qword_100033390, EKCalendar_ptr);
    sub_100010400();
    result = sub_10001D2FC();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10001D4EC();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

      sub_10000E99C(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_10001D50C();
  }

  v6 = result;
  v5 = sub_10001D50C();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_10000F7DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 16))
  {
LABEL_11:
    if (*(a2 + 16))
    {
      v17 = sub_100012684(0xD000000000000010, 0x8000000100023520);
      if (v18)
      {
        sub_10000A138(*(a2 + 56) + 32 * v17, &v48);
        sub_1000058A8(0, &qword_100033380, NSNull_ptr);
        if (swift_dynamicCast())
        {

          [a1 setSelectedCalendar:0];
        }
      }
    }

    goto LABEL_18;
  }

  v6 = sub_100012684(0xD000000000000013, 0x8000000100023500);
  if ((v7 & 1) == 0 || (sub_10000A138(*(a2 + 56) + 32 * v6, &v48), sub_100002D94(&qword_100033388, &qword_10001F4A8), (swift_dynamicCast() & 1) == 0))
  {
LABEL_7:
    if (*(a2 + 16))
    {
      v12 = sub_100012684(0xD000000000000010, 0x8000000100023520);
      if (v13)
      {
        sub_10000A138(*(a2 + 56) + 32 * v12, &v48);
        if (swift_dynamicCast())
        {
          v14 = *(a3 + 16);
          v15 = sub_10001D20C();

          v16 = [v14 calendarWithIdentifier:v15];

          [a1 setSelectedCalendar:v16];
          goto LABEL_18;
        }
      }
    }

    goto LABEL_11;
  }

  v8 = v49;
  v9 = *(v49 + 2);
  if (v9)
  {
    v10 = sub_10000E918(*(v49 + 2), 0);
    v11 = sub_10000F544(&v48, v10 + 4, v9, v8);
    sub_1000103F8();
    if (v11 != v9)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v19 = *(a3 + 16);
  isa = sub_10001D29C().super.isa;

  v21 = [v19 calendarsWithIdentifiers:isa];

  if (v21)
  {
    sub_1000058A8(0, &qword_100033390, EKCalendar_ptr);
    v22 = sub_10001D2AC();

    sub_10000F69C(v22);

    sub_100010400();
    v23 = sub_10001D2DC().super.isa;

    [a1 setSelectedCalendars:v23];
  }

LABEL_18:
  if (*(a2 + 16))
  {
    v24 = sub_100012684(0xD000000000000015, 0x8000000100023540);
    if (v25)
    {
      sub_10000A138(*(a2 + 56) + 32 * v24, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v26 = v49;
        [a1 setShowDetailAccessories:{objc_msgSend(v49, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v27 = sub_100012684(0x4D7265736F6F6863, 0xEB0000000065646FLL);
    if (v28)
    {
      sub_10000A138(*(a2 + 56) + 32 * v27, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v29 = v49;
        [a1 setChooserMode:{objc_msgSend(v49, "integerValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v30 = sub_100012684(0xD000000000000021, 0x8000000100023560);
    if (v31)
    {
      sub_10000A138(*(a2 + 56) + 32 * v30, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v32 = v49;
        [a1 setDisableCalendarsUnselectedByFocus:{objc_msgSend(v49, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v33 = sub_100012684(0xD000000000000013, 0x8000000100023590);
    if (v34)
    {
      sub_10000A138(*(a2 + 56) + 32 * v33, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v35 = v49;
        [a1 setAllowsPullToRefresh:{objc_msgSend(v49, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v36 = sub_100012684(0xD00000000000001ALL, 0x80000001000235B0);
    if (v37)
    {
      sub_10000A138(*(a2 + 56) + 32 * v36, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v38 = v49;
        [a1 setShowsDeclinedEventsSetting:{objc_msgSend(v49, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v39 = sub_100012684(0xD000000000000013, 0x80000001000235D0);
    if (v40)
    {
      sub_10000A138(*(a2 + 56) + 32 * v39, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v41 = v49;
        [a1 setExplanatoryTextMode:{objc_msgSend(v49, "unsignedIntValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v42 = sub_100012684(0xD000000000000011, 0x8000000100023390);
    if (v43)
    {
      sub_10000A138(*(a2 + 56) + 32 * v42, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v44 = v49;
        [a1 setShowAccountStatus:{objc_msgSend(v49, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v45 = sub_100012684(0xD000000000000019, 0x80000001000235F0);
    if (v46)
    {
      sub_10000A138(*(a2 + 56) + 32 * v45, &v48);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v47 = v49;
        [a1 setOnlyShowUnmanagedAccounts:{objc_msgSend(v49, "BOOLValue")}];
      }
    }
  }
}

id sub_100010000(uint64_t a1, uint64_t a2)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  BYTE2(v15) = *(a2 + 121);
  BYTE1(v15) = *(a2 + 120);
  LOBYTE(v15) = *(a2 + 104);
  v3 = [objc_allocWithZone(EKCalendarChooser) initWithRemoteUI:0 selectionStyle:*(a2 + 80) displayStyle:*(a2 + 88) entityType:*(a2 + 96) forEvent:0 eventStore:*(a2 + 16) limitedToSource:*(a2 + 112) showIdentityChooser:v15 showDelegateSetupCell:? showAccountStatus:?];
  if (v3)
  {
    v4 = v3;
    v5 = *(a2 + 88);
    v6 = 32;
    if (!*(a2 + 96))
    {
      v6 = 24;
    }

    if (*(a2 + v6) != 4)
    {
      v7 = *(a2 + 88);
    }

    if (*(a2 + 48))
    {
      v8 = *(a2 + 88);
    }

    [v3 setShouldOverrideAuthorizationStatus:1 withRemoteUIStatus:? displayStyle:?];
    [v4 setHidesSuggestedEventCalendar:*(a2 + 122)];
    v9 = *(a2 + 64);
    if (*(v9 + 16))
    {
      v10 = *(a2 + 64);

      sub_10000F7DC(v4, v9, a2);
    }

    sub_100002D94(&qword_1000333B0, &unk_10001F4C0);
    sub_10001D0AC();
    [v4 setDelegate:v16];

    sub_10001D0AC();
    [v4 setNavigationDelegate:v16];

    v11 = *(a2 + 56);
    *(a2 + 56) = v4;
    v12 = v4;

    return v12;
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
    v14 = objc_allocWithZone(EKCalendarChooser);

    return [v14 init];
  }
}

void sub_10001028C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2)
  {
    v6 = v2;
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
    v4 = *(a2 + 64);
    if (*(v4 + 16))
    {
      v5 = *(a2 + 64);

      sub_10000F7DC(v6, v4, a2);
    }
  }

  else
  {
    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

unint64_t sub_100010400()
{
  result = qword_100033398;
  if (!qword_100033398)
  {
    sub_1000058A8(255, &qword_100033390, EKCalendar_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033398);
  }

  return result;
}

unint64_t sub_10001046C()
{
  result = qword_1000333B8;
  if (!qword_1000333B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000333B8);
  }

  return result;
}

unint64_t sub_1000104C0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator_calendarChooserView + 32);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator_calendarChooserView + 40);
    swift_getObjectType();

    sub_100002D94(&unk_1000333C0, &unk_10001F820);
    v5 = sub_10001D24C();
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
LABEL_19:
      sub_10001D32C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();
      v2(v5, v7, a1, 1);

      return sub_100002EB0(v2);
    }

    v9 = v8;
    v10 = a1;
    v11 = [v9 viewControllers];
    sub_1000058A8(0, &unk_100033810, UIViewController_ptr);
    v12 = sub_10001D2AC();

    if (v12 >> 62)
    {
      v13 = sub_10001D50C();
      if (v13)
      {
LABEL_5:

        result = v13 - 1;
        if (__OFSUB__(v13, 1))
        {
          __break(1u);
        }

        else if ((v12 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v15 = *(v12 + 8 * result + 32);
LABEL_10:
            v16 = v15;

            swift_getObjectType();
            v5 = sub_10001D24C();
            v7 = v17;

LABEL_18:
            goto LABEL_19;
          }

          __break(1u);
          return result;
        }

        v15 = sub_10001D4EC();
        goto LABEL_10;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_18;
  }

  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  return sub_10001CF8C();
}

uint64_t sub_1000107B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010818(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010898()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  if (v0[6])
  {
    v3 = v0[7];
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000108F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D94(&qword_1000333F8, &qword_10001F540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001096C()
{
  result = qword_100033400;
  if (!qword_100033400)
  {
    sub_100002E40(&qword_100033408, qword_10001F548);
    sub_10000E8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033400);
  }

  return result;
}

uint64_t sub_100010A10(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  v3 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventOccurrenceDate;
  v4 = sub_10001CEEC();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController) = 0;
  *(v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_hasInProcessNavBar) = 2;
  *(v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_changedViewConfigurationDictionary) = &_swiftEmptyDictionarySingleton;
  v5 = (v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_navigationDoneButtonTapCallback);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewCompletedCallback);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewPresentedCallback);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100010AFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001D13C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001D15C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v13 = *(v2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_changedViewConfigurationDictionary);
  *(v2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_changedViewConfigurationDictionary) = a1;

  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v14 = sub_10001D35C();
  aBlock[4] = sub_100014904;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D858;
  v15 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10001490C(&qword_100032D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v18);
}

uint64_t sub_100010E38()
{
  type metadata accessor for EKEventViewModel();
  sub_10001490C(&qword_100032950, type metadata accessor for EKEventViewModel);
  sub_10001CF9C();
  sub_10001CFAC();
}

uint64_t sub_100010EC0()
{
  v1 = *(v0 + 56);
  sub_100002EB0(*(v0 + 48));
  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  sub_100013DE4(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventOccurrenceDate);

  v5 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_changedViewConfigurationDictionary);

  v6 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_navigationDoneButtonTapCallback + 8);
  sub_100002EB0(*(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_navigationDoneButtonTapCallback));
  v7 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewCompletedCallback + 8);
  sub_100002EB0(*(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewCompletedCallback));
  v8 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewPresentedCallback + 8);
  sub_100002EB0(*(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewPresentedCallback));
  return v0;
}

uint64_t sub_100010F74()
{
  sub_100010EC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for EKEventViewModel()
{
  result = qword_1000334B0;
  if (!qword_1000334B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100011020()
{
  sub_10000AA88();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100011114@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EKEventViewModel();
  result = sub_10001CF9C();
  *a1 = result;
  return result;
}

void sub_100011154(uint64_t a1)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();

  sub_100013564(a1);
}

void sub_1000111F4()
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);

    [v1 doneButtonTapped];
  }
}

void sub_1000112DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);
    if (v9)
    {
      v10 = *(Strong + 16);
      v11 = Strong;
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a2;
      v12[4] = a3;
      v12[5] = a1;
      v12[6] = v9;
      aBlock[4] = sub_100013E94;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011578;
      aBlock[3] = &unk_10002D790;
      v13 = _Block_copy(aBlock);
      v14 = v9;
      v15 = v10;

      [v15 waitUntilDatabaseUpdatedToTimestamp:a4 completion:v13];
      _Block_release(v13);
    }

    else
    {
    }
  }
}

void sub_1000114C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 16);
  v8 = sub_10001D20C();
  v10 = [v7 eventWithIdentifier:v8];

  v9 = v10;
  if (v10)
  {
    if (a4 != 2)
    {
      [a5 fullReloadWithNewEvent:v10];
      v9 = v10;
    }
  }
}

uint64_t sub_100011578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000115BC(char a1)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController) setEventEditViewPresented:a1 & 1];
  }

  return result;
}

id sub_100011844(void *a1, uint64_t a2, void *a3)
{
  v4 = (v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView);
  v5 = *(v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 32);
  if (v5)
  {
    v6 = v4[5];
    v7 = v4[6];
    if (v7)
    {
      v8 = v4[7];
      v9 = *(v4[1] + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);
      if (v9)
      {
        sub_10000BF70(v7);
        sub_10000BF70(v5);
        v10 = [v9 event];
        if (v10)
        {
          v11 = v10;
          v12 = objc_allocWithZone(UIActivityViewController);
          isa = sub_10001D29C().super.isa;
          v14 = [v12 initWithActivityItems:isa applicationActivities:0];

          sub_100002D94(&qword_1000337F0, &qword_10001F810);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10001F560;
          *(v15 + 32) = UIActivityTypeAddToReadingList;
          type metadata accessor for ActivityType(0);
          v16 = UIActivityTypeAddToReadingList;
          v17 = sub_10001D29C().super.isa;

          [v14 setExcludedActivityTypes:v17];

          result = [v11 calendar];
          if (result)
          {
            v19 = result;
            v20 = [result isManaged];

            [v14 setIsContentManaged:v20];
            [v14 setAllowsEmbedding:1];
            v21 = swift_allocObject();
            v21[2] = v7;
            v21[3] = v8;
            v21[4] = 0xD000000000000018;
            v21[5] = 0x8000000100023FD0;
            aBlock[4] = sub_100013F50;
            aBlock[5] = v21;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100017BAC;
            aBlock[3] = &unk_10002D7E0;
            v22 = _Block_copy(aBlock);

            [v14 setCompletionWithItemsHandler:v22];
            _Block_release(v22);
            v23 = v14;
            v24 = [v23 sheetPresentationController];
            if (v24)
            {
              v25 = v24;
              sub_100002D94(&qword_1000337F8, &qword_10001F818);
              v26 = swift_allocObject();
              *(v26 + 16) = xmmword_10001F570;
              *(v26 + 32) = [objc_opt_self() largeDetent];
              sub_1000058A8(0, &unk_100033800, UISheetPresentationControllerDetent_ptr);
              v27 = sub_10001D29C().super.isa;

              [v25 setDetents:v27];
            }

            v28 = v23;
            [a3 bounds];
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v37 = [a1 view];
            [a3 convertRect:v37 toView:{v30, v32, v34, v36}];
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v45 = v44;

            v46 = objc_opt_self();
            v47 = [v46 valueWithCGRect:{v39, v41, v43, v45}];
            [v28 preferredContentSize];
            v49 = v48;
            v51 = v50;

            v52 = [v46 valueWithCGSize:{v49, v51}];
            v5(0xD000000000000018, 0x8000000100023FD0, v28, v11, 1, v47, v52, 0);

            sub_100002EB0(v7);
            return sub_100002EB0(v5);
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }

      else
      {
        sub_10000BF70(v7);
        sub_10000BF70(v5);
      }

      sub_10001D32C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();
      sub_100002EB0(v7);
    }

    else
    {
      v53 = v4[5];

      sub_10001D32C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();
    }

    return sub_100002EB0(v5);
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    return sub_10001CF8C();
  }
}

id sub_1000122CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKEventView.EventViewCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1000123A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000123B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000123FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100012470@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = type metadata accessor for EKEventView.EventViewCoordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView];
  *v12 = v2;
  *(v12 + 1) = v3;
  *(v12 + 2) = v4;
  *(v12 + 3) = v5;
  *(v12 + 4) = v6;
  *(v12 + 5) = v7;
  *(v12 + 6) = v9;
  *(v12 + 7) = v8;

  sub_10000BF70(v4);
  sub_10000BF70(v6);
  sub_10000BF70(v9);
  v15.receiver = v11;
  v15.super_class = v10;
  result = objc_msgSendSuper2(&v15, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10001253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100013EBC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000125A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100013EBC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100012604()
{
  sub_100013EBC();
  sub_10001D08C();
  __break(1u);
}

unint64_t sub_100012630()
{
  result = qword_1000337C8;
  if (!qword_1000337C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000337C8);
  }

  return result;
}

unint64_t sub_100012684(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001D58C();
  sub_10001D25C();
  v6 = sub_10001D59C();

  return sub_100012784(a1, a2, v6);
}

unint64_t sub_1000126FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001D47C(*(v2 + 40));

  return sub_10001283C(a1, v4);
}

unint64_t sub_100012740(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001D3BC(*(v2 + 40));

  return sub_100012904(a1, v4);
}

unint64_t sub_100012784(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001D55C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001283C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100014954(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10001D48C();
      sub_10000A0E4(v8);
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

unint64_t sub_100012904(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10001D3CC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1000129D8(void *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = sub_100012684(0x644573776F6C6C61, 0xED0000676E697469);
    if (v5)
    {
      sub_10000A138(*(a2 + 56) + 32 * v4, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setAllowsEditing:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v6 = sub_100012684(0x6E69746964457369, 0xED000065646F4D67);
    if (v7)
    {
      sub_10000A138(*(a2 + 56) + 32 * v6, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setIsEditingMode:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v8 = sub_100012684(0xD000000000000015, 0x8000000100023B10);
    if (v9)
    {
      sub_10000A138(*(a2 + 56) + 32 * v8, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setAllowsCalendarPreview:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v10 = sub_100012684(0xD00000000000002CLL, 0x8000000100023B30);
    if (v11)
    {
      sub_10000A138(*(a2 + 56) + 32 * v10, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setInlineDayViewRespectsSelectedCalendarsFilter:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v12 = sub_100012684(0x6976657250736369, 0xEA00000000007765);
    if (v13)
    {
      sub_10000A138(*(a2 + 56) + 32 * v12, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setICSPreview:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v14 = sub_100012684(0xD000000000000015, 0x8000000100023B60);
    if (v15)
    {
      sub_10000A138(*(a2 + 56) + 32 * v14, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setAllowsInviteResponses:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v16 = sub_100012684(0xD00000000000001FLL, 0x8000000100023B80);
    if (v17)
    {
      sub_10000A138(*(a2 + 56) + 32 * v16, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsAddToCalendarForICSPreview:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v18 = sub_100012684(0xD000000000000020, 0x8000000100023BA0);
    if (v19)
    {
      sub_10000A138(*(a2 + 56) + 32 * v18, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsUpdateCalendarForICSPreview:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v20 = sub_100012684(0xD000000000000018, 0x8000000100023BD0);
    if (v21)
    {
      sub_10000A138(*(a2 + 56) + 32 * v20, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsDeleteForICSPreview:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v22 = sub_100012684(0x755373776F6C6C61, 0xEE00736D65746962);
    if (v23)
    {
      sub_10000A138(*(a2 + 56) + 32 * v22, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setAllowsSubitems:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v24 = sub_100012684(0x6E6F4473776F6873, 0xEF6E6F7474754265);
    if (v25)
    {
      sub_10000A138(*(a2 + 56) + 32 * v24, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsDoneButton:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v26 = sub_100012684(0xD000000000000015, 0x8000000100023BF0);
    if (v27)
    {
      sub_10000A138(*(a2 + 56) + 32 * v26, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsOutOfDateMessage:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v28 = sub_100012684(0xD000000000000015, 0x8000000100023C10);
    if (v29)
    {
      sub_10000A138(*(a2 + 56) + 32 * v28, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsDelegatorMessage:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v30 = sub_100012684(0xD000000000000014, 0x8000000100023C30);
    if (v31)
    {
      sub_10000A138(*(a2 + 56) + 32 * v30, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsDelegateMessage:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v32 = sub_100012684(0xD00000000000001BLL, 0x8000000100023C50);
    if (v33)
    {
      sub_10000A138(*(a2 + 56) + 32 * v32, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setShowsDetectedConferenceItem:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v34 = sub_100012684(0x4D6C616D696E696DLL, 0xEB0000000065646FLL);
    if (v35)
    {
      sub_10000A138(*(a2 + 56) + 32 * v34, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setMinimalMode:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v36 = sub_100012684(0xD000000000000019, 0x8000000100023C70);
    if (v37)
    {
      sub_10000A138(*(a2 + 56) + 32 * v36, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setNoninteractivePlatterMode:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }

  if (*(a2 + 16))
  {
    v38 = sub_100012684(0x44656772614C7369, 0xEE00776569567961);
    if (v39)
    {
      sub_10000A138(*(a2 + 56) + 32 * v38, v41);
      sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        [a1 setIsLargeDayView:{objc_msgSend(v40, "BOOLValue")}];
      }
    }
  }
}

void sub_100013564(uint64_t a1)
{
  v2 = sub_100002D94(&qword_100032D20, &qword_10001EC98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  if (*(a1 + 64))
  {
    if (*(a1 + 72))
    {
      if (*(a1 + 80))
      {
        v6 = *(a1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);
        if (v6)
        {
          v7 = *(a1 + 40);
          v21 = v6;
          if (v7)
          {
            sub_10001D31C();
            sub_10001CF8C();
            v8 = v21;

            return;
          }

          sub_10001D32C();
          sub_10001CF8C();
          *(a1 + 40) = 1;
          v9 = *(a1 + 16);
          v10 = [objc_allocWithZone(sub_10001D17C()) init];
          v20 = *(a1 + 24);
          v11 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventOccurrenceDate;
          swift_beginAccess();
          sub_10000CDE8(a1 + v11, v5);
          v12 = sub_10001D16C();

          sub_100013DE4(v5);
          if (v12)
          {
            v13 = v12;
            v14 = sub_10001D1CC();

            objc_opt_self();
            v15 = swift_dynamicCastObjCClass();
            if (v15)
            {
              v16 = v15;
              v17 = v20;
              if (*(a1 + 24) == 4 && ![v9 isCurrentProcessCreatorOfEvent:v15])
              {
                v17 = 2;
              }

              [v21 setEvent:v16];

              v18 = v21;
              goto LABEL_23;
            }
          }

          sub_10001D31C();
          sub_10001CF8C();
          v17 = v20;
          v18 = v21;
LABEL_23:
          [v18 setShouldOverrideAuthorizationStatus:1 withRemoteUIStatus:v17];

          return;
        }
      }
    }
  }

  sub_10001D32C();

  sub_10001CF8C();
}

id sub_100013940(uint64_t a1, void *a2)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v3 = [objc_allocWithZone(EKEventViewController) initWithRemoteUI:0];
  v4 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);
  *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController) = v3;
  v5 = v3;

  sub_100002D94(&unk_1000337D8, &unk_10001F800);
  sub_10001D0AC();
  [v5 setDelegate:v23];

  sub_10001D0AC();
  [v5 setNavigationDelegate:v23];

  v6 = a2[6];
  v7 = a2[7];
  a2[6] = sub_100011154;
  a2[7] = 0;
  sub_100002EB0(v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = (a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_navigationDoneButtonTapCallback);
  v10 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_navigationDoneButtonTapCallback);
  v11 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_navigationDoneButtonTapCallback + 8);
  *v9 = sub_100013DCC;
  v9[1] = v8;

  sub_100002EB0(v10);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = (a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewCompletedCallback);
  v14 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewCompletedCallback);
  v15 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewCompletedCallback + 8);
  *v13 = sub_100013DD4;
  v13[1] = v12;

  sub_100002EB0(v14);

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = (a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewPresentedCallback);
  v18 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewPresentedCallback);
  v19 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_eventEditViewPresentedCallback + 8);
  *v17 = sub_100013DDC;
  v17[1] = v16;

  sub_100002EB0(v18);

  v20 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_changedViewConfigurationDictionary);
  if (*(v20 + 16))
  {
    v21 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_changedViewConfigurationDictionary);

    sub_1000129D8(v5, v20);
  }

  [v5 setShouldOverrideAuthorizationStatus:1 withRemoteUIStatus:a2[3]];
  sub_100013564(a2);
  return v5;
}

void sub_100013C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);
  if (v2)
  {
    v5 = v2;
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
    v4 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_changedViewConfigurationDictionary);
    if (*(v4 + 16))
    {

      sub_1000129D8(v5, v4);
    }
  }

  else
  {
    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

uint64_t sub_100013D94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013DE4(uint64_t a1)
{
  v2 = sub_100002D94(&qword_100032D20, &qword_10001EC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013E4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100013EBC()
{
  result = qword_1000337E8;
  if (!qword_1000337E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000337E8);
  }

  return result;
}

uint64_t sub_100013F10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013F84(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView;
  v3 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 32);
  if (v3)
  {
    v4 = *(v2 + 40);
    v5 = *(*(v2 + 8) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);
    if (v5)
    {

      v7 = [v5 event];
      if (v7)
      {
        v8 = v7;
        swift_getObjectType();
        sub_100002D94(&unk_1000333C0, &unk_10001F820);
        v9 = sub_10001D24C();
        v11 = v10;
        v12 = [objc_allocWithZone(NSValue) init];
        [a1 preferredContentSize];
        v15 = [objc_opt_self() valueWithCGSize:{v13, v14}];
        v16 = [a1 EKUI_oopContentBackgroundColor];
        sub_10001D32C();
        if (qword_100032310 != -1)
        {
          swift_once();
        }

        sub_10001CF8C();
        v3(v9, v11, a1, v8, 0, v12, v15, v16);

        return sub_100002EB0(v3);
      }
    }

    else
    {
    }

    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();

    return sub_100002EB0(v3);
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    return sub_10001CF8C();
  }
}

unint64_t sub_1000142D8(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView;
  v3 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 32);
  if (v3)
  {
    v4 = *(v2 + 40);
    v5 = *(*(v2 + 8) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension16EKEventViewModel_viewController);
    if (v5)
    {

      v7 = [v5 event];
      if (v7)
      {
        v8 = v7;
        swift_getObjectType();
        sub_100002D94(&unk_1000333C0, &unk_10001F820);
        v9 = sub_10001D24C();
        v11 = v10;
        v12 = [a1 EKUI_oopContentBackgroundColor];
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (!v13)
        {
LABEL_26:
          v23 = [objc_allocWithZone(NSValue) init];
          [a1 preferredContentSize];
          v26 = [objc_opt_self() valueWithCGSize:{v24, v25}];
          sub_10001D32C();
          if (qword_100032310 != -1)
          {
            swift_once();
          }

          sub_10001CF8C();
          v3(v9, v11, a1, v8, 1, v23, v26, v12);
          sub_100002EB0(v3);
        }

        v14 = v13;
        v27 = a1;
        v15 = [v14 viewControllers];
        sub_1000058A8(0, &unk_100033810, UIViewController_ptr);
        v16 = sub_10001D2AC();

        if (v16 >> 62)
        {
          v17 = sub_10001D50C();
          if (v17)
          {
LABEL_7:

            result = v17 - 1;
            if (__OFSUB__(v17, 1))
            {
              __break(1u);
            }

            else if ((v16 & 0xC000000000000001) == 0)
            {
              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (result < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v19 = *(v16 + 8 * result + 32);
LABEL_12:
                v20 = v19;

                v21 = [v20 EKUI_oopContentBackgroundColor];

                swift_getObjectType();
                v9 = sub_10001D24C();
                v11 = v22;

                v12 = v21;
                goto LABEL_26;
              }

              __break(1u);
              return result;
            }

            v19 = sub_10001D4EC();
            goto LABEL_12;
          }
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();

    return sub_100002EB0(v3);
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    return sub_10001CF8C();
  }
}

uint64_t sub_10001478C(void (*a1)(uint64_t))
{
  v2 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 48);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 56);

    v2(0, 0, 1);
    if (a1)
    {

      a1(v5);
      sub_100002EB0(v2);
      v6 = a1;
    }

    else
    {
      v6 = v2;
    }

    return sub_100002EB0(v6);
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    return sub_10001CF8C();
  }
}

uint64_t sub_1000148CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001490C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014A3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  swift_retain_n();

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v1, v2, sub_100015E90, v0, sub_100015E98, v0, v3, v4);
}

uint64_t sub_100014B04(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v15 - v9;
  v11 = *(v8 + 40);
  (*(v8 + 32))();
  v12 = *(v1 + 88);
  sub_100017B88(v7, v2, v12);
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_100017B88(v10, v2, v12);
  return (v13)(v10, v2);
}

uint64_t sub_100014C60(void *a1, uint64_t a2)
{
  v4 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v5 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v4))
  {
    v6 = a1;
    v7 = a2;
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = [v6 processIdentifier];
    *(v8 + 8) = 1024;
    *(v8 + 10) = [v6 effectiveUserIdentifier];

    _os_log_impl(&_mh_execute_header, v5, v4, "EKCalendarChooserScene Starting: Setting up XPC connection. processIdentifier: %d. userIdentifier: %u.", v8, 0xEu);
    a2 = v7;
  }

  v9 = sub_10001CE2C();
  [a1 setExportedInterface:v9];

  v10 = sub_10001CE1C();
  [a1 setRemoteObjectInterface:v10];

  [a1 setExportedObject:a2];
  v34 = a1;
  [a1 auditToken];
  v11 = v35;
  v12 = v36;
  v13 = v37;
  v14 = v38;
  v16 = v39;
  v15 = v40;
  v17 = v41;
  v18 = v42;
  v19 = objc_allocWithZone(ClientIdentity);
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v16;
  v40 = v15;
  v41 = v17;
  v42 = v18;
  v20 = [v19 initWithAuditToken:&v35];
  if (v20)
  {
    v21 = v20;
    v33 = a2;
    v22 = *(a2 + 56);
    v32 = objc_opt_self();
    v35 = v11;
    v36 = v12;
    v37 = v13;
    v38 = v14;
    v39 = v16;
    v40 = v15;
    v41 = v17;
    v42 = v18;
    *(v22 + 24) = [v32 authorizationStatusWithAuditToken:&v35 entityType:0];
    v35 = v11;
    v36 = v12;
    v37 = v13;
    v38 = v14;
    v39 = v16;
    v40 = v15;
    v41 = v17;
    v42 = v18;
    v23 = [v32 authorizationStatusWithAuditToken:&v35 entityType:1];
    v24 = *(v22 + 40);
    *(v22 + 32) = v23;
    *(v22 + 40) = v21;
    v25 = v21;

    v26 = [objc_allocWithZone(CADDefaultPermissionValidator) initWithClientIdentity:v25];
    v27 = [v26 canModifySuggestedEventCalendar];

    *(v22 + 122) = v27 ^ 1;
    a2 = v33;
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
    v28 = *(a2 + 56);
    *(v28 + 24) = vdupq_n_s64(1uLL);
    *(v28 + 122) = 1;
  }

  v29 = *(a2 + 48);
  *(a2 + 48) = v34;
  v30 = v34;

  [v30 resume];
  return 1;
}

void sub_100014F78(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, unint64_t a7, char a8)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v13 = qword_100035690;
  sub_10001CF8C();
  v14 = sub_10001D32C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v13, v14, "EKCalendarChooserScene: layoutDirectionValue: %ld", v15, 0xCu);
  }

  v16 = objc_opt_self();
  v17 = [v16 shared];
  [v17 setLayoutDirectionOverride:a2];

  v38 = sub_10001D20C();
  v18 = sub_10001D32C();
  if (os_log_type_enabled(v13, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10001B240(a3, a4, &v39);
    _os_log_impl(&_mh_execute_header, v13, v18, "EKCalendarChooserScene: sizeCategoryValue: %s", v19, 0xCu);
    sub_10000584C(v20);
  }

  v21 = [v16 shared];
  [v21 setPreferredContentSizeCategoryOverride:v38];

  v22 = sub_10001D32C();
  if (os_log_type_enabled(v13, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    [a1 ekui_size];
    *(v23 + 4) = v24;
    *(v23 + 12) = 2048;
    [a1 ekui_size];
    *(v23 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v22, "EKCalendarChooserScene: viewHierarchy size: (%f, %f)", v23, 0x16u);
  }

  v26 = [v16 shared];
  [v26 setViewHierarchyOverride:a1];

  v27 = *(v8 + 56);
  v28 = *(v27 + 40);
  if (v28)
  {
    v29 = *(v27 + 16);
    v30 = v28;
    sub_10000D0F8(v30, a5, a6, a7);
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
  }

  *(v27 + 48) = a8 & 1;
  v31 = *(v27 + 40);
  if (v31)
  {
    v32 = *(v27 + 16);
    v33 = v31;
    [v32 setRemoteClientIdentity:v33];
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
  }
}

uint64_t sub_100015370(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7, char a8)
{
  v13 = sub_10001D23C();
  v15 = v14;
  if (a7)
  {
    v16 = sub_10001D23C();
    a7 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a3;

  sub_100014F78(v18, a4, v13, v15, a6, v16, a7, a8);
}

uint64_t sub_10001544C(uint64_t a1)
{
  v3 = sub_10001D13C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001D15C();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002CF0();
  v12 = sub_10001D35C();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_100015E68;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D9E8;
  v14 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_1000156E0()
{
  v0 = sub_10001D1FC();

  sub_10001544C(v0);
}

uint64_t sub_100015758()
{
  v1 = sub_10001D13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001D15C();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D31C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  sub_100002CF0();
  v10 = sub_10001D35C();
  aBlock[4] = sub_100015DC8;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002D948;
  v11 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v11);

  (*(v2 + 8))(v5, v1);
  return (*(v6 + 8))(v9, v14);
}

uint64_t sub_100015A30(uint64_t a1)
{
  v2 = sub_10001D13C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001D15C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(a1 + 56) + 56);
  if (v13)
  {
    v20 = result;
    sub_100002CF0();
    v14 = v13;
    v15 = sub_10001D35C();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    aBlock[4] = sub_100015E20;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011578;
    aBlock[3] = &unk_10002D998;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    sub_10001D14C();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000055E0();
    sub_100002D94(&unk_1000333E0, &qword_10001EC90);
    sub_100002DDC();
    sub_10001D40C();
    sub_10001D37C();
    _Block_release(v17);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v12, v20);
  }

  return result;
}

uint64_t sub_100015CD0()
{

  sub_100015758();
}

uint64_t sub_100015D8C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100015DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015DE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015E28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015E68()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 56);
  return sub_10000D4C0(v1);
}

uint64_t sub_100015EBC()
{
  sub_100015F28();
  result = sub_10001D3DC();
  qword_100035690 = result;
  return result;
}

unint64_t sub_100015F28()
{
  result = qword_100033A20;
  if (!qword_100033A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100033A20);
  }

  return result;
}

uint64_t sub_100016018()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  swift_retain_n();

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v1, v2, sub_100017B58, v0, sub_100017B60, v0, v3, v4);
}

uint64_t sub_1000160E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12 = *(v9 + 40);
  (*(v9 + 32))();
  v13 = v4[2];
  v13(v11, v8, v3);
  v14 = v4[1];
  v14(v8, v3);
  v13(a2, v11, v3);
  return (v14)(v11, v3);
}

uint64_t sub_100016230(void *a1, uint64_t a2)
{
  v4 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v5 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v4))
  {
    v6 = a1;
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = [v6 processIdentifier];
    *(v7 + 8) = 1024;
    *(v7 + 10) = [v6 effectiveUserIdentifier];

    _os_log_impl(&_mh_execute_header, v5, v4, "EKEventEditScene Starting: Setting up XPC connection. processIdentifier: %d. userIdentifier: %u.", v7, 0xEu);
  }

  v8 = sub_10001CE0C();
  [a1 setExportedInterface:v8];

  v9 = sub_10001CDFC();
  [a1 setRemoteObjectInterface:v9];

  [a1 setExportedObject:a2];
  [a1 auditToken];
  v10 = v29;
  v11 = v30;
  v12 = v31;
  v13 = v32;
  v14 = v33;
  v15 = v34;
  v28 = a2;
  v17 = v35;
  v16 = v36;
  v18 = objc_allocWithZone(ClientIdentity);
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v17;
  v36 = v16;
  v19 = [v18 initWithAuditToken:&v29];
  if (v19)
  {
    v20 = v19;
    v21 = objc_opt_self();
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v17;
    v36 = v16;
    v22 = [v21 authorizationStatusWithAuditToken:&v29 entityType:0];
    v23 = *(v28 + 56);
    v24 = *(v23 + 40);
    *(v23 + 32) = v22;
    *(v23 + 40) = v20;
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
    *(*(v28 + 56) + 32) = 1;
  }

  v25 = *(v28 + 48);
  *(v28 + 48) = a1;
  v26 = a1;

  [v26 resume];
  return 1;
}

void sub_1000164C0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, unint64_t a7)
{
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v12 = qword_100035690;
  sub_10001CF8C();
  v13 = sub_10001D32C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v12, v13, "EKEventEditScene: layoutDirectionValue: %ld", v14, 0xCu);
  }

  v15 = objc_opt_self();
  v16 = [v15 shared];
  [v16 setLayoutDirectionOverride:a2];

  v36 = sub_10001D20C();
  v17 = sub_10001D32C();
  if (os_log_type_enabled(v12, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10001B240(a3, a4, &v37);
    _os_log_impl(&_mh_execute_header, v12, v17, "EKEventEditScene: sizeCategoryValue: %s", v18, 0xCu);
    sub_10000584C(v19);
  }

  v20 = [v15 shared];
  [v20 setPreferredContentSizeCategoryOverride:v36];

  v21 = sub_10001D32C();
  if (os_log_type_enabled(v12, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    [a1 ekui_size];
    *(v22 + 4) = v23;
    *(v22 + 12) = 2048;
    [a1 ekui_size];
    *(v22 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v21, "EKEventEditScene: viewHierarchy size: (%f, %f)", v22, 0x16u);
  }

  v25 = [v15 shared];
  [v25 setViewHierarchyOverride:a1];

  v26 = *(v7 + 56);
  v27 = *(v26 + 40);
  if (v27)
  {
    v28 = *(v26 + 16);
    v29 = v27;
    sub_10000D0F8(v29, a5, a6, a7);

    v30 = *(v26 + 40);
    if (v30)
    {
LABEL_11:
      v31 = *(v26 + 16);
      v32 = v30;
      [v31 setRemoteClientIdentity:v32];

      goto LABEL_14;
    }
  }

  else
  {
    sub_10001D31C();
    sub_10001CF8C();
    v30 = *(v26 + 40);
    if (v30)
    {
      goto LABEL_11;
    }
  }

  sub_10001D31C();
  sub_10001CF8C();
LABEL_14:
}

uint64_t sub_1000168AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7)
{
  v11 = sub_10001D23C();
  v13 = v12;
  if (a7)
  {
    v14 = sub_10001D23C();
    a7 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a3;

  sub_1000164C0(v16, a4, v11, v13, a6, v14, a7);
}

uint64_t sub_100016978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a2;
  v31 = a3;
  v8 = *v4;
  v9 = sub_10001D13C();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001D15C();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001CEEC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v28 = sub_10001D35C();
  (*(v17 + 16))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v16);
  v20 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = *(v8 + 80);
  *(v21 + 3) = *(v8 + 88);
  *(v21 + 4) = v5;
  *(v21 + 5) = a1;
  v22 = v31;
  *(v21 + 6) = v30;
  *(v21 + 7) = v22;
  (*(v17 + 32))(&v21[v20], v19, v16);
  aBlock[4] = sub_100017AF0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002DBF0;
  v23 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  v24 = v29;
  v25 = v35;
  sub_10001D40C();
  v26 = v28;
  sub_10001D37C();
  _Block_release(v23);

  (*(v34 + 8))(v24, v25);
  return (*(v32 + 8))(v15, v33);
}

uint64_t sub_100016DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100002D94(&qword_100032D20, &qword_10001EC98);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = *(a1 + 56);
  v15 = v14[10];
  v14[10] = a2;

  v16 = v14[11];
  v14[11] = a3;

  v17 = v14[12];
  v14[12] = a4;

  v18 = sub_10001CEEC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, a5, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  v20 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_eventOccurrenceDate;
  swift_beginAccess();
  sub_1000057DC(v13, v14 + v20);
  result = swift_endAccess();
  v22 = v14[7];
  if (v22)
  {
    v23 = v14[8];

    v22(v14);
    return sub_100002EB0(v22);
  }

  return result;
}

uint64_t sub_100016F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  v6 = sub_10001CEEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001D1FC();
  sub_1000058A8(0, &unk_100032D50, EKObjectID_ptr);
  sub_100002D94(&qword_100032700, &unk_10001ECA0);
  sub_1000058F0();
  v12 = sub_10001D1FC();
  v13 = sub_10001D1FC();
  sub_10001CEDC();

  sub_100016978(v11, v12, v13, v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100017130(uint64_t a1)
{
  v3 = sub_10001D13C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001D15C();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v12 = sub_10001D35C();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1000179EC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = &unk_10002DBA0;
  v14 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_1000173D4()
{
  v0 = sub_10001D1FC();

  sub_100017130(v0);
}

uint64_t sub_100017484()
{
  v1 = *(v0 + 56) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension20EKEventEditViewModel_getHasUnsavedChangesAction;
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = *(v1 + 8);

  v5 = v2(v4);
  sub_100002EB0(v2);
  return v5 & 1;
}

uint64_t sub_1000174F4()
{

  v0 = sub_100017484();

  return v0 & 1;
}

uint64_t sub_10001754C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001D13C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001D15C();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
  v14 = sub_10001D35C();
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011578;
  aBlock[3] = a2;
  v15 = _Block_copy(aBlock);

  sub_10001D14C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000055E0();
  sub_100002D94(&unk_1000333E0, &qword_10001EC90);
  sub_100002DDC();
  sub_10001D40C();
  sub_10001D37C();
  _Block_release(v15);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v18);
}

uint64_t sub_100017844(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_100017908(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100017958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000179AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000179EC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 56);
  return sub_10000A494(v1);
}

uint64_t sub_100017A14()
{
  v1 = sub_10001CEEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100017AF0()
{
  v1 = *(sub_10001CEEC() - 8);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_100016DB0(v2, v3, v4, v5, v6);
}

uint64_t sub_100017BAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_10001D2AC();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

uint64_t sub_100017C68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001CFCC();

  return v1;
}

uint64_t sub_100017CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10001D13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001D15C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[4];
  v3[3] = a1;
  v3[4] = a2;

  v18 = *(v3 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_remotePresentViewMap);
  if (*(v18 + 16))
  {
    result = sub_100012684(a1, a2);
    if (v19)
    {
      v20 = *(*(v18 + 56) + 8 * result);
      v21 = *&v20[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewName + 8];
      v22 = v3[6];
      v3[5] = *&v20[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewName];
      v3[6] = v21;
      v23 = v20;

      v32 = v7;
      v24 = *&v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_viewController];
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v24;
      v25 = v24;

      sub_10001CFDC();
      v26 = *&v23[OBJC_IVAR____TtC27EventKitUIRemoteUIExtension25EKUIRemotePresentViewData_event];
      v27 = *(v3 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event);
      *(v3 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event) = v26;
      v28 = v26;

      sub_1000058A8(0, &qword_1000333D0, OS_dispatch_queue_ptr);
      v29 = sub_10001D35C();
      aBlock[4] = sub_10001CA28;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011578;
      aBlock[3] = &unk_10002DED8;
      v30 = _Block_copy(aBlock);

      sub_10001D14C();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10001CA30(&qword_100032D80, &type metadata accessor for DispatchWorkItemFlags);
      sub_100002D94(&unk_1000333E0, &qword_10001EC90);
      sub_100002DDC();
      sub_10001D40C();
      sub_10001D37C();
      _Block_release(v30);

      (*(v32 + 8))(v10, v6);
      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

uint64_t sub_100018094()
{
  type metadata accessor for EKEventGenericDetailViewModel();
  sub_10001CA30(&unk_100033EE0, type metadata accessor for EKEventGenericDetailViewModel);
  sub_10001CF9C();
  sub_10001CFAC();
}

uint64_t sub_10001811C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel__viewController;
  v4 = sub_100002D94(&qword_100032938, &qword_10001EE30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_remotePresentViewMap);

  v6 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_leftBarButtonTapCallback + 8);
  sub_100002EB0(*(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_leftBarButtonTapCallback));
  v7 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_rightBarButtonTapCallback + 8);
  sub_100002EB0(*(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_rightBarButtonTapCallback));
  v8 = *(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_bottomStatusButtonTapCallback + 8);
  sub_100002EB0(*(v0 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_bottomStatusButtonTapCallback));
  return v0;
}

uint64_t sub_1000181FC()
{
  sub_10001811C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for EKEventGenericDetailViewModel()
{
  result = qword_100033B60;
  if (!qword_100033B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000182A8()
{
  sub_10001837C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10001837C()
{
  if (!qword_100033B70[0])
  {
    sub_100002E40(&qword_100032940, &qword_10001EE38);
    v0 = sub_10001CFEC();
    if (!v1)
    {
      atomic_store(v0, qword_100033B70);
    }
  }
}

uint64_t sub_1000183E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EKEventGenericDetailViewModel();
  result = sub_10001CF9C();
  *a1 = result;
  return result;
}

double sub_100018420@<D0>(uint64_t a1@<X8>)
{
  v26 = *v1;
  if (*(*(&v26 + 1) + 32))
  {
    type metadata accessor for EKEventGenericDetailViewModel();
    sub_10001CA30(&unk_100033EE0, type metadata accessor for EKEventGenericDetailViewModel);

    sub_10001CFFC();
    v3 = *(v1 + 2);
    v4 = *(v1 + 3);
    v5 = *(v1 + 4);
    v6 = *(v1 + 5);
    v7 = *(v1 + 7);
    v25 = *(v1 + 8);
    v23 = *(v1 + 6);
    v24 = *(v1 + 9);
    v8 = swift_allocObject();
    v9 = v1[3];
    v8[3] = v1[2];
    v8[4] = v9;
    v8[5] = v1[4];
    v10 = v1[1];
    v8[1] = *v1;
    v8[2] = v10;
    v11 = swift_allocObject();
    v12 = v1[3];
    v11[3] = v1[2];
    v11[4] = v12;
    v11[5] = v1[4];
    v13 = v1[1];
    v11[1] = *v1;
    v11[2] = v13;
    v14 = swift_allocObject();
    v15 = v1[3];
    v14[3] = v1[2];
    v14[4] = v15;
    v14[5] = v1[4];
    v16 = v1[1];
    v14[1] = *v1;
    v14[2] = v16;
    v17 = swift_allocObject();
    v18 = v1[3];
    v17[3] = v1[2];
    v17[4] = v18;
    v17[5] = v1[4];
    v19 = v1[1];
    v17[1] = *v1;
    v17[2] = v19;
    sub_10001CBDC(&v26, v27);
    sub_10000BF70(v3);
    sub_10000BF70(v5);
    sub_10000BF70(v23);
    sub_10000BF70(v25);
    sub_10001CBDC(&v26, v27);
    sub_10000BF70(v3);
    sub_10000BF70(v5);
    sub_10000BF70(v23);
    sub_10000BF70(v25);
    sub_10001CBDC(&v26, v27);
    sub_10000BF70(v3);
    sub_10000BF70(v5);
    sub_10000BF70(v23);
    sub_10000BF70(v25);
    sub_10001CBDC(&v26, v27);
    sub_10000BF70(v3);
    sub_10000BF70(v5);
    sub_10000BF70(v23);
    sub_10000BF70(v25);
  }

  sub_10001B0F4();
  sub_10001D01C();
  v20 = v27[3];
  *(a1 + 32) = v27[2];
  *(a1 + 48) = v20;
  *(a1 + 64) = v27[4];
  *(a1 + 80) = v28;
  result = *v27;
  v22 = v27[1];
  *a1 = v27[0];
  *(a1 + 16) = v22;
  return result;
}

uint64_t sub_10001876C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6)
  {
    v11 = result;
    v12 = *(a6 + 24);

    v6(v11, a2, a3, a4, a5);

    return sub_100002EB0(v6);
  }

  return result;
}

uint64_t sub_100018818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  if (v4)
  {
    v7 = result;
    v8 = *(a4 + 40);

    v4(v7, a2, a3);

    return sub_100002EB0(v4);
  }

  return result;
}

uint64_t sub_1000188A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  if (v3)
  {
    v5 = result;
    v6 = *(a3 + 56);

    v3(v5, a2);

    return sub_100002EB0(v3);
  }

  return result;
}

uint64_t sub_100018924(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 72);

    v2(v3);

    return sub_100002EB0(v2);
  }

  return result;
}

uint64_t sub_10001899C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, void (*a6)(uint64_t, uint64_t, unint64_t))
{
  v10 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v11 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10001B240(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v11, v10, a5, v12, 0xCu);
    sub_10000584C(v13);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_100002D94(&qword_100033DE8, &qword_10001FCF8);
    sub_10001D0AC();
    a6(v15, a1, a2);
  }

  return result;
}

uint64_t sub_100018B38(uint64_t a1)
{
  v2 = sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  v3 = qword_100035690;
  if (os_log_type_enabled(qword_100035690, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v3, v2, "EKEventGenericDetailView: bottomStatusButton tapped. buttonAction: %ld", v4, 0xCu);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_100002D94(&qword_100033DE8, &qword_10001FCF8);
    sub_10001D0AC();
    sub_100019CA0(v6, a1);
  }

  return result;
}

void sub_100018C78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 32);
  if (v6)
  {
    v7 = *(v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 40);
    sub_10001CDCC();

    if (sub_10001CDBC() == a2 && v8 == a3)
    {

LABEL_10:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10001CFCC();

      v14 = v21;
      if (v21)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          [v15 saveAndDismissWithPrompt];
LABEL_21:
          sub_100002EB0(v6);

          return;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10001CFCC();

      v14 = v21;
      if (v21)
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          [v20 doneButtonTapped];
          goto LABEL_21;
        }
      }

      v6(0, 0xE000000000000000, 0);
      goto LABEL_27;
    }

    v13 = sub_10001D55C();

    if (v13)
    {
      goto LABEL_10;
    }

    v16 = sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v17 = qword_100035690;
    if (os_log_type_enabled(qword_100035690, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10001B240(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, v17, v16, "EventGenericDetailViewCoordinator: The button action <%s> is not implemented!", v18, 0xCu);
      sub_10000584C(v19);

LABEL_27:
      sub_100002EB0(v6);
      return;
    }

    sub_100002EB0(v6);
  }

  else
  {
    v9 = sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v10 = qword_100035690;
    if (os_log_type_enabled(qword_100035690, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10001B240(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, v10, v9, "EventGenericDetailViewCoordinator: onRequestDismissViewAction not set on the EKEventGenericDetailView when button tapped for action: %s", v11, 0xCu);
      sub_10000584C(v12);
    }
  }
}

void sub_10001905C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView);
  v7 = *(v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 16);
  if (v7)
  {
    v8 = v6[3];
    v9 = v6[4];
    if (v9)
    {
      v10 = v6[5];
      v11 = *(a1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event);
      if (v11)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = 0xE000000000000000;
        sub_10001CDCC();
        sub_10000BF70(v7);
        v68 = v10;
        sub_10000BF70(v9);
        v69 = v11;
        if (sub_10001CD9C() == a2 && v13 == a3)
        {

LABEL_22:
          v24 = v69;
          v25 = [v24 displayNotes];
          if (v25)
          {
            v26 = v25;
            v27 = sub_10001D23C();
            v29 = v28;
          }

          else
          {
            v27 = 0;
            v29 = 0xE000000000000000;
          }

          sub_100002D94(&unk_100033ED0, &unk_10001FD10);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_10001F560;
          *(v30 + 56) = &type metadata for String;
          *(v30 + 32) = v27;
          *(v30 + 40) = v29;
          v31 = objc_allocWithZone(UIActivityViewController);

          isa = sub_10001D29C().super.isa;

          v33 = [v31 initWithActivityItems:isa applicationActivities:0];

          v34 = [v24 calendar];
          if (!v34)
          {
            __break(1u);
            return;
          }

          v35 = [v34 isManaged];

          [v33 setIsContentManaged:v35];
          [v33 setAllowsEmbedding:1];
          v36 = swift_allocObject();
          v36[2] = v9;
          v36[3] = v68;
          v36[4] = v12;
          v74 = sub_10001C24C;
          v75 = v36;
          aBlock = _NSConcreteStackBlock;
          v71 = 1107296256;
          v72 = sub_100017BAC;
          v73 = &unk_10002DE60;
          v37 = _Block_copy(&aBlock);
          sub_10000BF70(v9);

          [v33 setCompletionWithItemsHandler:v37];
          _Block_release(v37);
          v38 = [v33 sheetPresentationController];
          if (v38)
          {
            v39 = v38;
            sub_100002D94(&qword_1000337F8, &qword_10001F818);
            v40 = swift_allocObject();
            *(v40 + 16) = xmmword_10001F570;
            *(v40 + 32) = [objc_opt_self() largeDetent];
            sub_1000058A8(0, &unk_100033800, UISheetPresentationControllerDetent_ptr);
            v41 = sub_10001D29C().super.isa;

            [v39 setDetents:v41];
          }

          aBlock = sub_100002D94(&qword_100032940, &qword_10001EE38);
          sub_100002D94(&qword_100033EC0, &qword_10001FD08);
          v42 = sub_10001D24C();
          v44 = v43;
          v45 = 1;
          swift_beginAccess();
          v46 = *(v12 + 24);
          *(v12 + 16) = v42;
          *(v12 + 24) = v44;

          goto LABEL_29;
        }

        v23 = sub_10001D55C();

        if (v23)
        {
          goto LABEL_22;
        }

        if (sub_10001CDAC() == a2 && v49 == a3)
        {
        }

        else
        {
          v50 = sub_10001D55C();

          if ((v50 & 1) == 0)
          {
            v64 = sub_10001D31C();
            if (qword_100032310 != -1)
            {
              swift_once();
            }

            v65 = qword_100035690;
            if (os_log_type_enabled(qword_100035690, v64))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              aBlock = v67;
              *v66 = 136315138;
              *(v66 + 4) = sub_10001B240(a2, a3, &aBlock);
              _os_log_impl(&_mh_execute_header, v65, v64, "EventGenericDetailViewCoordinator: The button action <%s> is not implemented!", v66, 0xCu);
              sub_10000584C(v67);
            }

LABEL_45:
            sub_10001D31C();
            if (qword_100032310 != -1)
            {
              swift_once();
            }

            sub_10001CF8C();

            sub_100002EB0(v9);
            sub_100002EB0(v7);

            return;
          }
        }

        v51 = [objc_allocWithZone(EKUIEmailCompositionManager) initWithEvent:v69];
        v52 = *(v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_messageSendingManager);
        *(v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_messageSendingManager) = v51;
        v53 = v51;

        v54 = [v53 viewController];
        if (v54)
        {
          v55 = v54;
          [v54 setModalPresentationStyle:2];
        }

        v33 = [v53 viewController];
        aBlock = sub_100002D94(&qword_100032940, &qword_10001EE38);
        sub_100002D94(&qword_100033EC0, &qword_10001FD08);
        v56 = sub_10001D24C();
        v57 = *(v12 + 24);
        *(v12 + 16) = v56;
        *(v12 + 24) = v58;

        v59 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v61 = *(v12 + 16);
        v60 = *(v12 + 24);
        v62 = swift_allocObject();
        v62[2] = v9;
        v62[3] = v10;
        v62[4] = v61;
        v62[5] = v60;
        v62[6] = v59;
        v74 = sub_10001C1E4;
        v75 = v62;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_100019C4C;
        v73 = &unk_10002DE10;
        v63 = _Block_copy(&aBlock);
        sub_10000BF70(v9);

        [v53 setMessageSendingComplete:v63];
        _Block_release(v63);

        if (v33)
        {
          v45 = 2;
LABEL_29:
          sub_10001D32C();
          if (qword_100032310 != -1)
          {
            swift_once();
          }

          sub_10001CF8C();
          swift_beginAccess();
          v47 = *(v12 + 16);
          v48 = *(v12 + 24);

          v7(v47, v48, v33, v69, v45);

          sub_100002EB0(v9);
          sub_100002EB0(v7);

          return;
        }

        goto LABEL_45;
      }

      sub_10000BF70(*(v3 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 16));
      sub_10000BF70(v9);
      sub_10001D31C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();
      sub_100002EB0(v9);
    }

    else
    {
      v18 = v6[3];

      v19 = sub_10001D31C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      v20 = qword_100035690;
      if (os_log_type_enabled(qword_100035690, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_10001B240(a2, a3, &aBlock);
        _os_log_impl(&_mh_execute_header, v20, v19, "EventGenericDetailViewCoordinator: onRequestDismissViewAction not set on the EKEventGenericDetailView when button tapped for action: %s", v21, 0xCu);
        sub_10000584C(v22);

        sub_100002EB0(v7);
        return;
      }
    }

    sub_100002EB0(v7);
  }

  else
  {
    v14 = sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v15 = qword_100035690;
    if (os_log_type_enabled(qword_100035690, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10001B240(a2, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v15, v14, "EventGenericDetailViewCoordinator: onRequestPresentViewAction not set on the EKEventGenericDetailView when button tapped for action: %s", v16, 0xCu);
      sub_10000584C(v17);
    }
  }
}