uint64_t sub_100001944()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v6 = *(v1 + 80);
  v5[2] = v6;
  v7 = *(v1 + 88);
  v5[3] = v7;
  v5[4] = v4;

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v2, v3, sub_100003810, v0, sub_100003850, v5, v6, v7);
}

uint64_t sub_100001A54(uint64_t *a1)
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
  sub_10000FC00(v7, v2, v12);
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_10000FC00(v10, v2, v12);
  return (v13)(v10, v2);
}

BOOL sub_100001BB0(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MKRemoteUIAccessoryPlaceCardExtensionInterface];
    [a1 setExportedInterface:v3];

    [a1 setExportedObject:Strong];
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v4 = sub_10000FD24();
    sub_10000362C(v4, qword_10001DFE8);
    v5 = sub_10000FD04();
    v6 = sub_1000101B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "extn full-accessory scene connection resume", v7, 2u);
    }

    [a1 resume];
    v8 = *(Strong + 48);
    v9 = objc_allocWithZone(GEOApplicationAuditToken);

    sub_100003C68([v9 initWithNSXPCConnection:a1]);
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn full-accessory scene connection: self unavailable", v13, 2u);
    }
  }

  return Strong != 0;
}

uint64_t sub_100001E34(void *a1, int a2, uint64_t a3)
{
  v23 = a3;
  v22 = a2;
  v5 = *v3;
  v6 = sub_100010104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_100010124();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v24);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003458();
  v15 = sub_1000101D4();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = *(v5 + 80);
  *(v17 + 24) = *(v5 + 88);
  *(v17 + 32) = v16;
  *(v17 + 40) = a1;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  aBlock[4] = sub_1000037B0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100018E88;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v24);
}

void sub_10000215C(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v9 = sub_10000FD24();
    sub_10000362C(v9, qword_10001DFE8);
    v10 = a2;
    v11 = sub_10000FD04();
    v12 = sub_1000101A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34 = v14;
      *v13 = 136380675;
      v33 = v10;
      if (a2)
      {
        v31 = a3;
        v32 = a4;
        v15 = v10;
        v16 = [v15 name];
        if (v16)
        {
          v17 = v16;
          v18 = sub_100010144();
          v20 = v19;
        }

        else
        {

          v18 = 0;
          v20 = 0xE000000000000000;
        }

        a4 = v32;
        a3 = v31;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v25 = sub_10000F280(v18, v20, &v34);

      *(v13 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn full-accessory scene configure with item: %{private}s", v13, 0xCu);
      sub_1000037C4(v14);

      v10 = v33;
    }

    else
    {
    }

    v26 = *(v8 + 48);

    LOBYTE(v34) = 0;
    sub_100004020(a3);

    v27 = *(v8 + 48);
    if ((*(v27 + 56) & 1) != 0 || *(v27 + 48) != a4)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v34 = v27;
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);

      sub_10000FC54();
    }

    else
    {
      *(v27 + 56) = 0;
    }

    v29 = *(v8 + 48);
    v30 = v10;

    sub_100003A08(a2);
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v21 = sub_10000FD24();
    sub_10000362C(v21, qword_10001DFE8);
    v22 = sub_10000FD04();
    v23 = sub_1000101C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "extn full-accessory scene configure without self", v24, 2u);
    }
  }
}

uint64_t sub_100002568(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = a3;

  sub_100001E34(a3, a4, a5);
}

uint64_t sub_1000025E0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *v3;
  v8 = sub_100010104();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100010124();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v16 = sub_1000101D4();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *(v7 + 80);
  *(v18 + 24) = *(v7 + 88);
  *(v18 + 32) = v17;
  *(v18 + 40) = a3;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  aBlock[4] = sub_100003734;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100018E38;
  v19 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v19);

  (*(v22 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v21);
}

void sub_10000290C(double a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v4 = sub_10000FD24();
    sub_10000362C(v4, qword_10001DFE8);
    v5 = sub_10000FD04();
    v6 = sub_1000101B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v5, v6, "extn full-accessory fetchPreferredContentSize for %f", v7, 0xCu);
    }

    v8 = *(v3 + 48);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);

    sub_10000FC54();
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101C4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn full-accessory fetchPreferredContentSize without self", v13, 2u);
    }
  }
}

uint64_t sub_100002BEC(int a1, int a2, void *aBlock, double a4)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1000025E0(sub_100003894, v6, a4);
}

uint64_t sub_100002C8C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100010104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100010124();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v13 = sub_1000101D4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v3 + 80);
  v15[3] = *(v3 + 88);
  v15[4] = v14;
  v15[5] = a1;
  aBlock[4] = sub_100003514;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100018DE8;
  v16 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

void sub_100002F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    if ((*(v4 + 56) & 1) != 0 || *(v4 + 48) != a2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);

      sub_10000FC54();
    }

    else
    {
      v5 = *(Strong + 48);

      *(v4 + 48) = a2;
      *(v4 + 56) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v7 = sub_10000FD24();
    sub_10000362C(v7, qword_10001DFE8);
    v8 = sub_10000FD04();
    v9 = sub_1000101C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "extn full-accessory scene update interface style without self", v10, 2u);
    }
  }
}

uint64_t sub_1000031D0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100002C8C(a3);
}

void *sub_100003214()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_100003244()
{
  sub_100003214();

  return _swift_deallocClassInstance(v0, 56, 7);
}

__n128 sub_100003290(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000032A0(uint64_t a1, int a2)
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

uint64_t sub_1000032C0(uint64_t result, int a2, int a3)
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

void sub_100003324(uint64_t a1, unint64_t *a2)
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

_DWORD *sub_1000033AC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1000033C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000341C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003458()
{
  result = qword_10001C860;
  if (!qword_10001C860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C860);
  }

  return result;
}

uint64_t sub_1000034A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000034DC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100003514()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_100002F94(v0[4], v0[5]);
}

uint64_t sub_100003520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003538(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003580()
{
  result = qword_10001C878;
  if (!qword_10001C878)
  {
    sub_1000035E4(&qword_10001C870, &qword_1000110F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C878);
  }

  return result;
}

uint64_t sub_1000035E4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000362C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000036AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000036F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100003734()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_10000290C(*(v0 + 40));
}

uint64_t sub_100003770()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1000037B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000215C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t sub_1000037C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003818()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

BOOL sub_100003850(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100001BB0(a1);
}

uint64_t sub_10000385C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100003908()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_100003980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_100003A08(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004BC4();
    sub_10000FC54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000058B4(0, &qword_10001CB60, MKMapItem_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000101F4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void *sub_100003B68()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_100003BE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_100003C68(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004BC4();
    sub_10000FC54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000058B4(0, &qword_10001CB58, GEOApplicationAuditToken_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000101F4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_100003DC8()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  return *(v0 + 32);
}

uint64_t sub_100003E38(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004BC4();
    sub_10000FC54();
  }

  return result;
}

unint64_t sub_100003F20()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  return *(v0 + 36) | (*(v0 + 40) << 32);
}

uint64_t sub_100003FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 36);
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_100004020(uint64_t result)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    if ((result & 0x100000000) != 0 || *(v1 + 36) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 36) = result;
    *(v1 + 40) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100004BC4();
  sub_10000FC54();
}

uint64_t sub_100004124()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_100004198(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100004BC4();
  sub_10000FC54();
}

uint64_t sub_10000429C(uint64_t result, uint64_t a2, char a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3 & 1;
  return result;
}

id sub_1000042AC()
{
  v1 = v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result userInterfaceIdiom];

    if (v4 == 3 && ((swift_getKeyPath(), sub_100004BC4(), sub_10000FC64(), , (*(v1 + 40) & 1) != 0) || *(v1 + 36) != 3) && ((swift_getKeyPath(), sub_10000FC64(), , (*(v1 + 56) & 1) != 0) || *(v1 + 48) != 2))
    {
      swift_getKeyPath();
      sub_10000FC64();

      result = *(v1 + 48);
      v5 = *(v1 + 56);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004408()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100004BC4();
  sub_10000FC64();

  v1 = *(v0 + 64);
  v2 = *(v4 + 80);
  sub_100004B9C(v1, *(v4 + 72));
  return v1;
}

uint64_t sub_100004498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  a1[8] = a2;
  a1[9] = a3;
  a1[10] = a4;
  sub_100004B9C(a2, a3);
  return sub_100004BAC(v4, v5);
}

uint64_t sub_1000044F4()
{
  v1 = *(v0 + 80);
  sub_100004BAC(*(v0 + 64), *(v0 + 72));
  v2 = OBJC_IVAR____TtC10MKRemoteUI22FullPlaceCardViewModel___observationRegistrar;
  v3 = sub_10000FC84();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for FullPlaceCardViewModel()
{
  result = qword_10001C920;
  if (!qword_10001C920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004600()
{
  result = sub_10000FC84();
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

double sub_1000046C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_getKeyPath();
  *&v10 = a1;
  sub_100004BC4();
  sub_10000FC64();

  v4 = *(a1 + 16);
  if (v4)
  {
    swift_getKeyPath();
    *&v10 = a1;
    v5 = v4;
    sub_10000FC64();

    v6 = *(a1 + 24);
    if (v6)
    {
      swift_getKeyPath();
      v6;
      sub_10000FC64();

      v7 = *(a1 + 32);
      swift_getKeyPath();
      *&v10 = a1;
      sub_10000FC64();

      v8 = *(a1 + 80);
      sub_100004B9C(*(a1 + 64), *(a1 + 72));
      sub_1000042AC();
    }

    else
    {
    }
  }

  sub_100005928();
  sub_10000597C();
  sub_10000FF04();
  *a2 = v10;
  a2[1] = v11;
  a2[2] = *v12;
  result = *&v12[10];
  *(a2 + 42) = *&v12[10];
  return result;
}

double sub_1000048C8@<D0>(uint64_t a1@<X8>)
{
  sub_1000046C4(*v1, v8);
  v3 = sub_10000FDA4();
  v4 = sub_10000FFB4();
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  return result;
}

id sub_100004920(void *a1, char a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = [objc_allocWithZone(MUPlaceViewControllerConfiguration) init];
  [v9 setOptions:{objc_msgSend(v9, "options") | 0x8000000000}];
  [v9 setDeveloperPlaceCardAuditToken:a3];
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithConfiguration:", v9);
  [v10 setOptions:{objc_msgSend(v10, "options") & 0xFFFFFFFFFFFFFFFELL | a2 & 1}];
  [v10 setMapItem:a1];

  return v10;
}

id sub_100004A94()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100004AF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100004B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100004B9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100004BAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100004BC4()
{
  result = qword_10001C880;
  if (!qword_10001C880)
  {
    type metadata accessor for FullPlaceCardViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C880);
  }

  return result;
}

id sub_100004C1C()
{
  v1 = v0;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FD24();
  sub_10000362C(v2, qword_10001DFE8);
  v3 = *v0;
  v4 = *(v0 + 8);
  v28 = *(v0 + 24);
  v29 = *(v0 + 40);
  v5 = v3;
  v6 = v4;
  sub_100005EF4(&v28, v27);
  v7 = sub_10000FD04();
  v8 = sub_1000101A4();

  sub_100005F64(&v28);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136380675;
    if (v3)
    {
      v26 = v6;
      v11 = v5;
      v12 = [v11 name];
      if (v12)
      {
        v13 = v12;
        v25 = sub_100010144();
        v15 = v14;

        v16 = v25;
      }

      else
      {

        v16 = 0;
        v15 = 0xE000000000000000;
      }

      v6 = v26;
    }

    else
    {
      v15 = 0xE300000000000000;
      v16 = 7104878;
    }

    v17 = sub_10000F280(v16, v15, v27);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "extn full representable make (map item: %{private}s)", v9, 0xCu);
    sub_1000037C4(v10);
  }

  v18 = *(v1 + 16);
  objc_allocWithZone(type metadata accessor for FullPlaceCardViewController());
  v19 = v5;
  result = sub_100004920(v3, v18, v6);
  if ((*(v1 + 56) & 1) == 0)
  {
    v21 = *(v1 + 48);
    v22 = result;
    result = [result view];
    if (result)
    {
      v23 = result;
      if (v21 == 1)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      [result setOverrideUserInterfaceStyle:v24];

      return v22;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100004E9C(void *a1)
{
  v2 = v1;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000FD24();
  sub_10000362C(v4, qword_10001DFE8);
  v5 = *v1;
  v6 = v1[1];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = *v2;
  v11 = v6;
  sub_100004B9C(v7, v8);
  v12 = sub_10000FD04();
  v13 = sub_1000101A4();
  v47 = v11;

  v14 = v10;
  v48 = v7;
  sub_100004BAC(v7, v8);
  if (os_log_type_enabled(v12, v13))
  {
    v45 = v13;
    v46 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136380675;
    if (v5)
    {
      v44 = v14;
      v17 = v14;
      v18 = [v17 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_100010144();
        v22 = v21;
      }

      else
      {

        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v14 = v44;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = sub_10000F280(v20, v22, aBlock);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v45, "extn full representable update (map item: %{private}s)", v15, 0xCu);
    sub_1000037C4(v16);

    a1 = v46;
  }

  else
  {
  }

  [a1 setMapItem:{v14, v44}];
  [a1 setOptions:{objc_msgSend(a1, "options") & 0xFFFFFFFFFFFFFFFELL | *(v2 + 16)}];
  if (v8)
  {
    sub_100004B9C(v48, v8);

    v24 = sub_10000FD04();
    v25 = sub_1000101A4();
    sub_100004BAC(v48, v8);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v24, v25, "extn full representable update contentSizeQuery %f", v26, 0xCu);
    }

    LODWORD(v27) = 1148846080;
    LODWORD(v28) = 1112014848;
    v8([a1 _systemLayoutSizeFittingSize:*&v48 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v27, v28}]);
    sub_100004BAC(v48, v8);
    sub_100004BAC(v48, v8);
  }

  if ((v2[7] & 1) == 0)
  {
    v29 = v14;
    v30 = v2[6];
    v31 = [a1 view];
    if (!v31)
    {
      __break(1u);
      goto LABEL_26;
    }

    v32 = v31;
    if (v30 == 1)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    v34 = [v31 overrideUserInterfaceStyle];

    if (v33 != v34)
    {
      v35 = [a1 view];
      if (v35)
      {
        v36 = v35;
        v37 = objc_opt_self();
        v38 = swift_allocObject();
        v39 = *(v2 + 1);
        *(v38 + 24) = *v2;
        *(v38 + 16) = a1;
        *(v38 + 40) = v39;
        *(v38 + 56) = *(v2 + 2);
        *(v38 + 65) = *(v2 + 41);
        aBlock[4] = sub_100005ED0;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000DBC0;
        aBlock[3] = &unk_100019080;
        v40 = _Block_copy(aBlock);
        v41 = v29;
        v42 = v47;
        sub_100004B9C(v48, v8);
        v43 = a1;

        [v37 transitionWithView:v36 duration:5242880 options:v40 animations:0 completion:0.2];
        _Block_release(v40);

        return;
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1000053AC(void *a1, uint64_t a2)
{
  v3 = [a1 view];
  if (v3)
  {
    if ((*(a2 + 56) & 1) != 0 || *(a2 + 48) != 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = v3;
    [v3 setOverrideUserInterfaceStyle:v4];
  }

  else
  {
    __break(1u);
  }
}

id sub_100005434()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[9] = *(v0 + 41);
  return sub_100004C1C();
}

void sub_100005478(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  *v4 = v1[2];
  *&v4[9] = *(v1 + 41);
  sub_100004E9C(a1);
}

uint64_t sub_100005504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005BEC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100005568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005BEC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000055CC()
{
  sub_100005BEC();
  sub_10000FF74();
  __break(1u);
}

uint64_t sub_100005654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005C40();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000056B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005C40();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000571C()
{
  sub_100005C40();
  sub_10000FED4();
  __break(1u);
}

void sub_100005790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

void sub_1000057A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  *(v1 + 36) = *(v0 + 24);
  *(v1 + 40) = v2;
}

void sub_1000057E0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100003C68(v2);
}

void sub_100005810()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_10000584C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100003A08(v2);
}

void sub_10000587C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1000058B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100005928()
{
  result = qword_10001CB68;
  if (!qword_10001CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB68);
  }

  return result;
}

unint64_t sub_10000597C()
{
  result = qword_10001CB70;
  if (!qword_10001CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB70);
  }

  return result;
}

uint64_t sub_1000059E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000059F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100005A14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100005A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005AC0()
{
  result = qword_10001CB78;
  if (!qword_10001CB78)
  {
    sub_1000035E4(&qword_10001CB80, &qword_100010E50);
    sub_100005B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB78);
  }

  return result;
}

unint64_t sub_100005B4C()
{
  result = qword_10001CB88;
  if (!qword_10001CB88)
  {
    sub_1000035E4(&qword_10001CB90, &qword_100010E58);
    sub_100005928();
    sub_10000597C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB88);
  }

  return result;
}

unint64_t sub_100005BEC()
{
  result = qword_10001CB98;
  if (!qword_10001CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB98);
  }

  return result;
}

unint64_t sub_100005C40()
{
  result = qword_10001CBA0;
  if (!qword_10001CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBA0);
  }

  return result;
}

id sub_100005C94()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  v1 = sub_10000FD04();
  v2 = sub_1000101A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "extn full representable make loading view", v3, 2u);
  }

  v4 = objc_allocWithZone(MKFullDeveloperPlaceCardLoadingView);

  return [v4 init];
}

void sub_100005D90()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  oslog = sub_10000FD04();
  v1 = sub_1000101A4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "extn full representable update loading view", v2, 2u);
  }
}

uint64_t sub_100005E78()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 64);
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100005EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001CBA8, &qword_100011008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005F64(uint64_t a1)
{
  v2 = sub_100003538(&qword_10001CBA8, &qword_100011008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);
  sub_10000FC64();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_100006100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);
  sub_10000FC64();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1000061E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);
  sub_10000FC64();

  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_100004B9C(v4, v5);
}

uint64_t sub_100006298(__int128 *a1, uint64_t *a2)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *a2;
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);
  sub_10000FC54();
}

uint64_t sub_100006378()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v6 = *(v1 + 80);
  v5[2] = v6;
  v7 = *(v1 + 88);
  v5[3] = v7;
  v5[4] = v4;

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v2, v3, sub_100007FE8, v0, sub_100008028, v5, v6, v7);
}

uint64_t sub_100006488(uint64_t *a1)
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
  sub_10000FC00(v7, v2, v12);
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_10000FC00(v10, v2, v12);
  return (v13)(v10, v2);
}

BOOL sub_1000065E4(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MKRemoteUIStandAlonePlaceCardExtensionInterface];
    [a1 setExportedInterface:v3];

    [a1 setExportedObject:Strong];
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v4 = sub_10000FD24();
    sub_10000362C(v4, qword_10001DFE8);
    v5 = sub_10000FD04();
    v6 = sub_1000101B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "extn stand-alone scene connection resume", v7, 2u);
    }

    [a1 resume];
    v8 = *(Strong + 48);
    v9 = objc_allocWithZone(GEOApplicationAuditToken);

    sub_100003C68([v9 initWithNSXPCConnection:a1]);
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn stand-alone scene connection: self unavailable", v13, 2u);
    }
  }

  return Strong != 0;
}

uint64_t sub_100006868(void *a1, int a2, int a3, uint64_t a4)
{
  v26 = a4;
  v24 = a2;
  v25 = a3;
  v6 = *v4;
  v7 = sub_100010104();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100010124();
  v12 = *(v27 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v27);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v16 = sub_1000101D4();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *(v6 + 80);
  *(v18 + 24) = *(v6 + 88);
  *(v18 + 32) = v17;
  *(v18 + 40) = a1;
  v19 = v25;
  *(v18 + 48) = v24;
  *(v18 + 52) = v19;
  *(v18 + 56) = v26;
  aBlock[4] = sub_100007F84;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100019260;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v20);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v27);
}

void sub_100006B94(uint64_t a1, void *a2, char a3, unsigned int a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v38 = a5;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v11 = sub_10000FD24();
    sub_10000362C(v11, qword_10001DFE8);
    v12 = a2;
    v13 = sub_10000FD04();
    v14 = sub_1000101A4();

    if (os_log_type_enabled(v13, v14))
    {
      v37 = a3;
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v15 = 136380675;
      if (a2)
      {
        v35 = a4;
        v16 = v12;
        v17 = [v16 name];
        if (v17)
        {
          v18 = v17;
          v19 = sub_100010144();
          v21 = v20;
        }

        else
        {

          v19 = 0;
          v21 = 0xE000000000000000;
        }

        a4 = v35;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v26 = sub_10000F280(v19, v21, &v39);

      *(v15 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "extn stand-alone scene configure with item: %{private}s", v15, 0xCu);
      sub_1000037C4(v36);

      a3 = v37;
    }

    else
    {
    }

    v27 = *(v10 + 48);
    v28 = v12;

    sub_100003A08(a2);

    v29 = *(v10 + 48);
    if (*(v29 + 32) == (a3 & 1))
    {
      *(v29 + 32) = a3 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v39 = v29;
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);

      sub_10000FC54();
    }

    v31 = *(v10 + 48);

    LOBYTE(v39) = 0;
    sub_100004020(a4);

    v32 = *(v10 + 48);
    if ((*(v32 + 56) & 1) != 0 || *(v32 + 48) != v38)
    {
      v34 = swift_getKeyPath();
      __chkstk_darwin(v34);
      v39 = v32;
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);

      sub_10000FC54();
    }

    else
    {
      v33 = *(v10 + 48);

      *(v32 + 48) = v38;
      *(v32 + 56) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v22 = sub_10000FD24();
    sub_10000362C(v22, qword_10001DFE8);
    v23 = sub_10000FD04();
    v24 = sub_1000101C4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "extn stand-alone scene configure without self", v25, 2u);
    }
  }
}

uint64_t sub_1000070AC(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, uint64_t a6)
{
  v10 = a3;

  sub_100006868(a3, a4, a5, a6);
}

uint64_t sub_10000712C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *v3;
  v8 = sub_100010104();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100010124();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v16 = sub_1000101D4();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *(v7 + 80);
  *(v18 + 24) = *(v7 + 88);
  *(v18 + 32) = v17;
  *(v18 + 40) = a3;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  aBlock[4] = sub_100007F28;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100019210;
  v19 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v19);

  (*(v22 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v21);
}

void sub_100007458(double a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v4 = sub_10000FD24();
    sub_10000362C(v4, qword_10001DFE8);
    v5 = sub_10000FD04();
    v6 = sub_1000101B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v5, v6, "extn stand-alone fetchPreferredContentSize for %f", v7, 0xCu);
    }

    v8 = *(v3 + 48);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);

    sub_10000FC54();
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101C4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn stand-alone fetchPreferredContentSize without self", v13, 2u);
    }
  }
}

uint64_t sub_100007738(int a1, int a2, void *aBlock, double a4)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_10000712C(sub_100003894, v6, a4);
}

uint64_t sub_1000077D8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100010104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100010124();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v13 = sub_1000101D4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v3 + 80);
  v15[3] = *(v3 + 88);
  v15[4] = v14;
  v15[5] = a1;
  aBlock[4] = sub_100007E8C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_1000191C0;
  v16 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

void sub_100007AE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    if ((*(v4 + 56) & 1) != 0 || *(v4 + 48) != a2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel);

      sub_10000FC54();
    }

    else
    {
      v5 = *(Strong + 48);

      *(v4 + 48) = a2;
      *(v4 + 56) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v7 = sub_10000FD24();
    sub_10000362C(v7, qword_10001DFE8);
    v8 = sub_10000FD04();
    v9 = sub_1000101C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "extn stand-alone scene update interface style without self", v10, 2u);
    }
  }
}

uint64_t sub_100007D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000077D8(a3);
}

uint64_t sub_100007DE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100007E1C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007E54()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100007E8C()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_100007AE0(v0[4], v0[5]);
}

uint64_t sub_100007E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007EE8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100007F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_100007458(*(v0 + 40));
}

uint64_t sub_100007F44()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100007F84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100006B94(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 52), *(v0 + 56));
}

uint64_t sub_100007FF0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

BOOL sub_100008028(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1000065E4(a1);
}

uint64_t sub_100008034()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000080A0(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4)
{
  v6 = v4;
  v9 = *a3;
  v4[2] = sub_100010144();
  v4[3] = v10;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000FD24();
  sub_10000362C(v11, qword_10001DFE8);
  v12 = sub_10000FD04();
  v13 = sub_1000101A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a4, v14, 2u);
  }

  v15 = type metadata accessor for FullPlaceCardViewModel();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 1;
  *(v18 + 36) = 0;
  *(v18 + 40) = 1;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  *(v18 + 64) = 0;
  sub_10000FC74();
  v6[5] = a2;
  v6[6] = v18;
  v6[4] = a1;
  return v6;
}

uint64_t sub_100008204()
{
  v0 = sub_100003538(&qword_10001CCC8, &qword_1000111E8);
  v1 = sub_10000899C(&qword_10001CCD0, &qword_10001CCC8, &qword_1000111E8);

  return AppExtensionSceneConfiguration.init<A>(_:)(sub_1000088DC, 0, v0, v1);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008308();
  sub_10000FCF4();
  return 0;
}

unint64_t sub_100008308()
{
  result = qword_10001CC90;
  if (!qword_10001CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC90);
  }

  return result;
}

unint64_t sub_100008388(uint64_t a1)
{
  result = sub_100008308();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000083B4()
{
  result = qword_10001CCC0;
  if (!qword_10001CCC0)
  {
    sub_10000FCA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CCC0);
  }

  return result;
}

uint64_t sub_10000840C()
{
  sub_100003538(&qword_10001CCF0, &qword_100011208);
  v0 = *(sub_10000FCE4() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100011170;

  sub_100003538(&qword_10001CCD8, &qword_1000111F0);
  sub_10000899C(&qword_10001CCF8, &qword_10001CCD8, &qword_1000111F0);
  sub_10000FCD4();

  sub_100003538(&qword_10001CCE0, &qword_1000111F8);
  sub_10000899C(&qword_10001CD00, &qword_10001CCE0, &qword_1000111F8);
  sub_10000FCD4();

  sub_100003538(&qword_10001CCE8, &qword_100011200);
  sub_10000899C(&qword_10001CD08, &qword_10001CCE8, &qword_100011200);
  sub_10000FCD4();
  return v3;
}

void *sub_100008630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = sub_100010144();
  v2[3] = v6;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000FD24();
  sub_10000362C(v7, qword_10001DFE8);
  v8 = sub_10000FD04();
  v9 = sub_1000101A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "extn compact-accessory scene init", v10, 2u);
  }

  v11 = type metadata accessor for CompactPlaceCardViewModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 28) = 1;
  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 1;
  sub_10000FC74();
  v3[5] = a2;
  v3[6] = v14;
  v3[4] = a1;
  return v3;
}

uint64_t (*sub_100008788@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>))@<X0>(uint64_t *a1@<X8>)
{
  sub_100003538(&qword_10001CCD8, &qword_1000111F0);
  swift_allocObject();
  v2 = sub_1000080A0(sub_1000089E4, 0, &MKRemoteUIStandAlonePlaceCardSceneID, "extn stand-alone scene init");
  sub_100003538(&qword_10001CCE0, &qword_1000111F8);
  swift_allocObject();

  v3 = sub_1000080A0(sub_1000089E4, 0, &MKRemoteUIFullAccessoryPlaceCardSceneID, "extn full-accessory scene init");
  sub_100003538(&qword_10001CCE8, &qword_100011200);
  swift_allocObject();
  v4 = sub_100008630(sub_1000089E4, 0);

  result = swift_allocObject();
  *(result + 2) = v2;
  *(result + 3) = v3;
  *(result + 4) = v4;
  *a1 = sub_100008928;
  a1[1] = result;
  return result;
}

uint64_t sub_1000088E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008928@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  result = sub_10000840C();
  *a1 = result;
  return result;
}

uint64_t sub_10000899C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000035E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000089F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100008A40(uint64_t *a1, int a2)
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

uint64_t sub_100008A88(uint64_t result, int a2, int a3)
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

uint64_t sub_100008ADC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100008B84(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_100008B5C(*v1);
}

uint64_t sub_100008B9C()
{
  v0 = sub_10000FD24();
  sub_100008C18(v0, qword_10001DFE8);
  sub_10000362C(v0, qword_10001DFE8);
  return sub_10000FD14();
}

uint64_t *sub_100008C18(uint64_t a1, uint64_t *a2)
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

void *sub_100008C7C()
{
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC64();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_100008D24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC64();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_100008DDC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
    sub_10000FC54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000058B4(0, &qword_10001CB60, MKMapItem_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000101F4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

unint64_t sub_100008F6C()
{
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC64();

  return *(v0 + 24) | (*(v0 + 28) << 32);
}

uint64_t sub_10000901C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC64();

  v5 = *(v3 + 28);
  *a2 = *(v3 + 24);
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1000090CC(uint64_t result)
{
  if ((*(v1 + 28) & 1) == 0)
  {
    if ((result & 0x100000000) != 0 || *(v1 + 24) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 24) = result;
    *(v1 + 28) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC54();
}

uint64_t sub_100009200()
{
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC64();

  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1000092A4(uint64_t result, char a2)
{
  if ((*(v2 + 40) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 32) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 32) = result;
    *(v2 + 40) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC54();
}

uint64_t sub_1000093D8(uint64_t result, uint64_t a2, char a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3 & 1;
  return result;
}

id sub_1000093E8()
{
  v1 = v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result userInterfaceIdiom];

    if (v4 == 3 && ((swift_getKeyPath(), sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel), sub_10000FC64(), , (*(v1 + 28) & 1) != 0) || *(v1 + 24) != 3) && ((swift_getKeyPath(), sub_10000FC64(), , (*(v1 + 40) & 1) != 0) || *(v1 + 32) != 2))
    {
      swift_getKeyPath();
      sub_10000FC64();

      result = *(v1 + 32);
      v5 = *(v1 + 40);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100009574()
{
  v1 = *(v0 + 48);
  if (v1 && (*(v0 + 80) & 1) == 0)
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = qword_10001C7C0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_10000FD24();
    sub_10000362C(v6, qword_10001DFE8);
    v7 = sub_10000FD04();
    v8 = sub_1000101A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "extn compact contentSizeReply", v9, 2u);
    }

    v1(v4, v3);

    sub_100009884(v1);
  }
}

uint64_t sub_1000096C0()
{
  v1 = *(v0 + 56);
  sub_100009884(*(v0 + 48));
  v2 = OBJC_IVAR____TtC10MKRemoteUI25CompactPlaceCardViewModel___observationRegistrar;
  v3 = sub_10000FC84();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for CompactPlaceCardViewModel()
{
  result = qword_10001CDC8;
  if (!qword_10001CDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000097C0()
{
  result = sub_10000FC84();
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

uint64_t sub_100009884(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009894@<X0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = sub_100003538(&qword_10001CF78, &qword_100011518);
  v3 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v5 = &v34 - v4;
  v6 = sub_10000FD44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003538(&qword_10001CF80, &qword_100011520);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = sub_1000093E8();
  if (v19)
  {
    sub_100009C34(a1, &v42);
    v20 = v44;
    v21 = v45;
    v22 = sub_10000FDA4();
    v23 = sub_10000FFB4();
    v24 = v42;
    v25 = v43;
    LOBYTE(v42) = v21;
    *v5 = v24;
    *(v5 + 1) = v25;
    *(v5 + 4) = v20;
    v5[40] = v21;
    *(v5 + 6) = v22;
    v5[56] = v23;
    swift_storeEnumTagMultiPayload();
    sub_100003538(&qword_10001CF88, &qword_100011528);
    sub_10000C418();
    sub_10000C4D0();
    return sub_10000FF04();
  }

  else
  {
    v27 = v18;
    sub_100009C34(a1, &v42);
    v37 = v44;
    v28 = v45;
    v38 = sub_10000FDA4();
    v36 = sub_10000FFB4();
    v34 = v43;
    v35 = v42;
    KeyPath = swift_getKeyPath();
    v30 = &enum case for ColorScheme.dark(_:);
    if (v27 != 1)
    {
      v30 = &enum case for ColorScheme.light(_:);
    }

    (*(v7 + 104))(v10, *v30, v6);
    v41 = v28;
    v31 = &v15[*(v11 + 36)];
    v32 = sub_100003538(&qword_10001CFE8, &qword_100011548);
    (*(v7 + 32))(v31 + *(v32 + 28), v10, v6);
    *v31 = KeyPath;
    v33 = v34;
    *v15 = v35;
    *(v15 + 1) = v33;
    *(v15 + 4) = v37;
    v15[40] = v41;
    *(v15 + 41) = v42;
    *(v15 + 11) = *(&v42 + 3);
    *(v15 + 6) = v38;
    v15[56] = v36;
    sub_10000C770(v15, v17);
    sub_10000C7E0(v17, v5);
    swift_storeEnumTagMultiPayload();
    sub_100003538(&qword_10001CF88, &qword_100011528);
    sub_10000C418();
    sub_10000C4D0();
    sub_10000FF04();
    return sub_10000DA50(v17, &qword_10001CF80, &qword_100011520);
  }
}

double sub_100009C34@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  *&v8 = a1;
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC64();

  v4 = *(*&a1 + 16);
  if (v4)
  {
    v7 = *(*&a1 + 16);
    v5 = v4;
  }

  sub_100003538(&qword_10001CFB8, &qword_100011538);
  sub_10000C5E8();
  sub_10000C6F4();
  sub_10000FF04();
  result = a1;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  return result;
}

uint64_t sub_100009D8C(uint64_t a1)
{
  v2 = sub_10000FD44();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10000FDE4();
}

uint64_t sub_100009E54@<X0>(void *a1@<X8>)
{
  result = sub_10000FD94();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_100009E80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000FD24();
  sub_10000362C(v5, qword_10001DFE8);
  v6 = sub_10000FD04();
  v7 = sub_1000101A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    type metadata accessor for CGSize(0);
    v10 = sub_100010164();
    v12 = sub_10000F280(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "extn compact onGeometryChange %s", v8, 0xCu);
    sub_1000037C4(v9);
  }

  *(a2 + 64) = v3;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  sub_100009574();
}

uint64_t sub_10000A000()
{
  v1 = [v0 _geoAddress];
  if (v1)
  {
    v2 = v1;
    if ([v1 hasStructuredAddress])
    {
      v3 = [v2 structuredAddress];
      if (v3)
      {
        v4 = v3;
        if ([v3 hasFullThoroughfare])
        {
          v5 = [v4 fullThoroughfare];
          if (v5)
          {
            v6 = v5;
            v7 = sub_100010144();

            goto LABEL_13;
          }

          v8 = v4;
        }

        else
        {
          v8 = v2;
          v2 = v4;
        }
      }
    }
  }

  v9 = [v0 _shortAddress];
  if (!v9)
  {
    return 0;
  }

  v2 = v9;
  v7 = sub_100010144();
LABEL_13:

  return v7;
}

id sub_10000A120()
{
  result = [v0 _geoMapItem];
  if (!result)
  {
    goto LABEL_31;
  }

  v2 = [result _enclosingPlace];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_11:
    v11 = [v0 _firstLocalizedCategoryName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100010144();
      v15 = v14;

      v16 = sub_10000C858(0, 1, 1, &_swiftEmptyArrayStorage);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_10000C858((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[32 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
      v19[48] = 0;
      *(v19 + 7) = &_swiftEmptyArrayStorage;
      v20 = sub_10000A000();
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

LABEL_16:
    v16 = &_swiftEmptyArrayStorage;
    v20 = sub_10000A000();
    if (!v21)
    {
LABEL_28:
      v34 = sub_10000D204(v16);

      return v34;
    }

LABEL_23:
    v29 = v20;
    v30 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_10000C858(0, *(v16 + 2) + 1, 1, v16);
    }

    v32 = *(v16 + 2);
    v31 = *(v16 + 3);
    if (v32 >= v31 >> 1)
    {
      v16 = sub_10000C858((v31 > 1), v32 + 1, 1, v16);
    }

    *(v16 + 2) = v32 + 1;
    v33 = &v16[32 * v32];
    *(v33 + 4) = v29;
    *(v33 + 5) = v30;
    v33[48] = 0;
    *(v33 + 7) = &_swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v3 = [v2 containmentTextTemplate];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v5 = [objc_allocWithZone(GEOComposedString) initWithGeoFormattedString:v4];
  v6 = [v5 stringResultWithOptions:0];
  v7 = [v6 styleReplacementResults];
  sub_1000058B4(0, &qword_10001D0C8, GEOComposedStringStyleReplacementResult_ptr);
  v8 = sub_100010194();

  if (v8 >> 62)
  {
    if (sub_100010244())
    {
      goto LABEL_6;
    }

LABEL_19:

    v10 = [v6 string];
    goto LABEL_20;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_100010224();
    swift_unknownObjectRelease();

LABEL_8:
    v10 = [v0 _firstLocalizedCategoryName];
    if (!v10)
    {

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_20:
    v22 = v10;
    v23 = sub_100010144();
    v25 = v24;

    v16 = sub_10000C858(0, 1, 1, &_swiftEmptyArrayStorage);
    v27 = *(v16 + 2);
    v26 = *(v16 + 3);
    if (v27 >= v26 >> 1)
    {
      v16 = sub_10000C858((v26 > 1), v27 + 1, 1, v16);
    }

    swift_unknownObjectRelease();
    *(v16 + 2) = v27 + 1;
    v28 = &v16[32 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v28[48] = 0;
    *(v28 + 7) = &_swiftEmptyArrayStorage;
    v20 = sub_10000A000();
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v9)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_10000A524()
{
  v1 = v0;
  if (![v0 _hasBusinessHours])
  {
    goto LABEL_8;
  }

  v2 = [v0 searchResultsHoursWithConciseStyle:1 openAt:0];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 localizedOperatingHours];
  if (!v4)
  {

LABEL_8:
    v9 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_100010144();
  v8 = v7;

  v9 = sub_10000C858(0, 1, 1, &_swiftEmptyArrayStorage);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_10000C858((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[32 * v11];
  *(v12 + 4) = v6;
  *(v12 + 5) = v8;
  v12[48] = 0;
  *(v12 + 7) = &_swiftEmptyArrayStorage;
LABEL_9:
  result = [v1 _geoMapItem];
  if (result)
  {
    v14 = [result _hasAppleRatings];
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = objc_opt_self();
      v16 = [v15 ratingSymbolName];
      sub_100010144();

      sub_1000100D4();
      v17 = sub_100010064();
      v19 = v18;
      LOBYTE(v16) = v20;
      v21 = sub_100010034();
      v23 = v22;
      v25 = v24;
      sub_10000CDC4(v17, v19, v16 & 1);

      v26 = [v15 compactUserRecommendedRatingSummaryStringForMapItem:v1];
      sub_100010144();

      v27 = sub_100010034();
      v29 = v28;
      v31 = v30;
      v33 = v32;

      sub_10000CDC4(v21, v23, v25 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10000C858(0, *(v9 + 2) + 1, 1, v9);
      }

      v35 = *(v9 + 2);
      v34 = *(v9 + 3);
      if (v35 >= v34 >> 1)
      {
        v9 = sub_10000C858((v34 > 1), v35 + 1, 1, v9);
      }

      *(v9 + 2) = v35 + 1;
      v36 = &v9[32 * v35];
      *(v36 + 4) = v27;
      *(v36 + 5) = v29;
      v36[48] = v31 & 1;
      *(v36 + 7) = v33;
    }

    v37 = sub_10000D204(v9);

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000A85C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 _attribution];
  if (!v3)
  {
LABEL_10:
    v39 = sub_100003538(&qword_10001D038, &qword_100011750);
    v40 = *(*(v39 - 8) + 56);

    return v40(a1, 1, 1, v39);
  }

  v4 = v3;
  if (![v4 requiresAttributionInDeveloperPlaceCard] || (v5 = objc_msgSend(v4, "attributionURLs")) == 0 || (v6 = v5, v7 = sub_100010194(), v6, v8 = sub_10000AE64(v7), , !v8))
  {

    goto LABEL_10;
  }

  v53 = v8;
  v54 = a1;
  v9 = [objc_opt_self() developerPlaceCardCompactAttributionFormatString];
  sub_100010144();
  sub_100003538(&qword_10001D0A8, &qword_100011780);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100011320;
  result = [v4 providerName];
  if (result)
  {
    v12 = result;

    v13 = sub_100010144();
    v15 = v14;

    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_10000CF44();
    *(v10 + 32) = v13;
    *(v10 + 40) = v15;
    sub_100010154();

    v16 = sub_100010034();
    v18 = v17;
    v20 = v19;

    sub_1000100D4();
    v21 = sub_100010064();
    v23 = v22;
    v25 = v24;
    v50 = sub_100010034();
    v51 = v26;
    v49 = v27;
    v52 = v28;
    sub_10000CDC4(v21, v23, v25 & 1);

    sub_10000CDC4(v16, v18, v20 & 1);

    v29 = v53;
    isa = sub_100010184().super.isa;
    v31 = [objc_opt_self() punchoutOptionsForURLStrings:isa withAttribution:v4];

    if (v31)
    {
      if ([v31 strategy] == 1)
      {

        v32 = swift_allocObject();
        v53 = v48;
        *(v32 + 16) = v31;
        __chkstk_darwin(v32);
        v33 = v50;
        v34 = v51;
        v35 = v49 & 1;
        v36 = v31;
        sub_100003538(&qword_10001D060, &qword_100011768);
        sub_10000CB38();
        v37 = v54;
        sub_1000100E4();

        sub_10000CDC4(v33, v34, v35);

        v38 = sub_100003538(&qword_10001D038, &qword_100011750);
        return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      }
    }

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v48[1] = v48;
    *(v42 + 16) = v41;
    *(v42 + 24) = v29;
    __chkstk_darwin(v42);
    v43 = v50;
    v44 = v51;
    v45 = v49 & 1;

    sub_100003538(&qword_10001D060, &qword_100011768);
    sub_10000CB38();
    v46 = v54;
    sub_1000100E4();

    sub_10000CDC4(v43, v44, v45);

    v47 = sub_100003538(&qword_10001D038, &qword_100011750);
    return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *sub_10000AE64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_10000D078(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000D098(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000D078((v5 > 1), v6 + 1, 1);
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

void sub_10000AF78(void *a1)
{
  v2 = sub_10000FC44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = v7;
    v9 = [a1 urlToOpen];
    sub_10000FC34();

    sub_10000FC24(v10);
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    v13 = [a1 appBundleIdentifier];
    if (!v13)
    {
      sub_100010144();
      v13 = sub_100010134();
    }

    [v8 openURL:v12 bundleIdentifier:v13 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000B0FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong _attribution];

    if (v2)
    {
      v3 = objc_opt_self();
      isa = sub_100010184().super.isa;
      [v3 launchAttributionURLs:isa withAttribution:v2 completionHandler:0];
    }
  }
}

uint64_t sub_10000B1BC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v128 = a2;
  v127 = sub_100003538(&qword_10001D018, &qword_100011730);
  v126 = *(v127 - 8);
  v3 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v115 - v4;
  v136 = sub_100003538(&qword_10001D020, &qword_100011738);
  v135 = *(v136 - 8);
  v5 = v135[8];
  v6 = __chkstk_darwin(v136);
  v134 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v133 = &v115 - v8;
  v124 = sub_10000FDC4();
  v143 = *(v124 - 8);
  v9 = *(v143 + 64);
  __chkstk_darwin(v124);
  v142 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_100003538(&qword_10001D028, &qword_100011740);
  v123 = *(v138 - 8);
  v11 = *(v123 + 64);
  __chkstk_darwin(v138);
  v116 = &v115 - v12;
  v13 = sub_100003538(&qword_10001D030, &qword_100011748);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v117 = &v115 - v15;
  v120 = sub_100003538(&qword_10001D038, &qword_100011750);
  v119 = *(v120 - 8);
  v16 = *(v119 + 64);
  __chkstk_darwin(v120);
  v115 = &v115 - v17;
  v18 = sub_100003538(&qword_10001D040, &qword_100011758);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v132 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v131 = &v115 - v22;
  v23 = [a1 name];
  if (v23)
  {
    v24 = v23;
    v25 = sub_100010144();
    v140 = a1;
    v27 = v26;

    v149 = v25;
    v150 = v27;
    sub_10000CEF0();
    v28 = sub_100010054();
    v30 = v29;
    LOBYTE(v27) = v31;
    sub_10000FFD4();
    v32 = sub_100010044();
    v34 = v33;
    v36 = v35;

    sub_10000CDC4(v28, v30, v27 & 1);

    sub_10000FFF4();
    v37 = sub_100010014();
    v39 = v38;
    v41 = v40;
    sub_10000CDC4(v32, v34, v36 & 1);

    v42 = [objc_opt_self() labelColor];
    v149 = sub_1000100C4();
    v43 = sub_100010024();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v39;
    a1 = v140;
    sub_10000CDC4(v37, v50, v41 & 1);

    v144 = v43;
    v145 = v45;
    v139 = v47 & 1;
    sub_10000CD14(v43, v45, v47 & 1);
    v141 = v49;
  }

  else
  {
    v144 = 0;
    v145 = 0;
    v139 = 0;
    v141 = 0;
  }

  v51 = sub_10000A120();
  v140 = v54;
  if (v54)
  {
    v55 = v51;
    v56 = v52;
    v57 = v53;
    v58 = [objc_opt_self() labelColor];
    v59 = sub_1000100C4();
    v122 = v57 & 1;
    v130 = v55;
    v121 = v56;
    sub_10000CD14(v55, v56, v57 & 1);

    v118 = v59;
  }

  else
  {
    v130 = 0;
    v121 = 0;
    v122 = 0;
    v118 = 0;
  }

  v61 = v142;
  v60 = v143;
  v62 = v138;
  v63 = sub_10000A524();
  v66 = v124;
  v129 = v67;
  if (v67)
  {
    v68 = v63;
    v69 = v64;
    v70 = v65;
    v71 = [objc_opt_self() labelColor];
    v72 = sub_1000100C4();
    v142 = (v70 & 1);
    sub_10000CD14(v68, v69, v70 & 1);

    v143 = v72;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v142 = 0;
    v143 = 0;
  }

  v137 = v69;
  v138 = v68;
  v73 = v117;
  sub_10000A85C(v117);
  v74 = v119;
  v75 = v120;
  if ((*(v119 + 48))(v73, 1, v120) == 1)
  {
    sub_10000DA50(v73, &qword_10001D030, &qword_100011748);
    v76 = 1;
    v77 = v131;
  }

  else
  {
    v78 = v115;
    (*(v74 + 32))(v115, v73, v75);
    sub_10000FDB4();
    sub_10000899C(&qword_10001D098, &qword_10001D038, &qword_100011750);
    v79 = v74;
    sub_10000CC18(&qword_10001D088, &type metadata accessor for PlainButtonStyle);
    v80 = v116;
    sub_1000100A4();
    (*(v60 + 8))(v61, v66);
    v81 = [objc_opt_self() secondaryLabelColor];
    v82 = sub_1000100C4();
    (*(v79 + 8))(v78, v75);
    *(v80 + *(v62 + 36)) = v82;
    v77 = v131;
    sub_10000CE80(v80, v131);
    v76 = 0;
  }

  (*(v123 + 56))(v77, v76, 1, v62);
  sub_1000100F4();
  sub_10000FD84();
  v123 = v149;
  v120 = v151;
  v119 = v153;
  v117 = v154;
  v148 = 1;
  v147 = v150;
  v146 = v152;
  *(swift_allocObject() + 16) = a1;
  v83 = a1;
  sub_100003538(&qword_10001D048, &qword_100011760);
  sub_10000CA80();
  v84 = v125;
  sub_1000100E4();
  sub_10000FDB4();
  sub_10000899C(&qword_10001D080, &qword_10001D018, &qword_100011730);
  sub_10000CC18(&qword_10001D088, &type metadata accessor for PlainButtonStyle);
  v85 = v133;
  v86 = v77;
  v87 = v127;
  sub_1000100A4();
  (*(v60 + 8))(v61, v66);
  (*(v126 + 8))(v84, v87);
  v88 = v132;
  sub_10000CC60(v86, v132);
  LODWORD(v125) = v148;
  LODWORD(v126) = v147;
  LODWORD(v127) = v146;
  v89 = v135[2];
  v90 = v134;
  v91 = v136;
  v89(v134, v85, v136);
  v92 = v128;
  v93 = v145;
  *v128 = v144;
  *(v92 + 1) = v93;
  v94 = v141;
  *(v92 + 2) = v139;
  *(v92 + 3) = v94;
  v95 = v121;
  *(v92 + 4) = v130;
  *(v92 + 5) = v95;
  v96 = v122;
  v97 = v140;
  *(v92 + 6) = v122;
  *(v92 + 7) = v97;
  v99 = v137;
  v98 = v138;
  *(v92 + 8) = v118;
  *(v92 + 9) = v98;
  v100 = v142;
  *(v92 + 10) = v99;
  *(v92 + 11) = v100;
  v101 = v143;
  *(v92 + 12) = v129;
  *(v92 + 13) = v101;
  v102 = sub_100003538(&qword_10001D090, &qword_100011778);
  sub_10000CC60(v88, &v92[v102[20]]);
  v103 = &v92[v102[24]];
  *v103 = 0;
  v103[8] = v125;
  *(v103 + 2) = v123;
  v103[24] = v126;
  *(v103 + 4) = v120;
  v103[40] = v127;
  v104 = v117;
  *(v103 + 6) = v119;
  *(v103 + 7) = v104;
  v89(&v92[v102[28]], v90, v91);
  sub_10000CCD0(v144, v145, v139, v141);
  v105 = v130;
  v106 = v140;
  sub_10000CD24(v130, v95, v96, v140);
  v108 = v137;
  v107 = v138;
  LOBYTE(v92) = v142;
  v109 = v129;
  sub_10000CD24(v138, v137, v142, v129);
  sub_10000CD74(v107, v108, v92, v109);
  sub_10000CD74(v105, v95, v96, v106);
  v110 = v139;
  v111 = v141;
  sub_10000CDD4(v144, v145, v139, v141);
  v112 = v135[1];
  v113 = v136;
  v112(v133, v136);
  sub_10000CE18(v131);
  v112(v134, v113);
  sub_10000CE18(v132);
  sub_10000CD74(v138, v137, v142, v109);
  sub_10000CD74(v105, v95, v96, v140);
  return sub_10000CDD4(v144, v145, v110, v111);
}

uint64_t sub_10000BF14@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() developerPlaceCardOpenInMapsText];
  v3 = sub_100010144();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  result = sub_1000100C4();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000BFA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_10000FE34();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100003538(&qword_10001D000, &qword_100011718);
  sub_10000B1BC(v3, (a1 + *(v4 + 44)));
  LOBYTE(v3) = sub_10000FFC4();
  sub_10000FD34();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(sub_100003538(&qword_10001D008, &qword_100011720) + 36);
  *v13 = v3;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(v3) = sub_10000FFA4();
  sub_10000FD34();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_100003538(&qword_10001D010, &qword_100011728);
  v23 = a1 + *(result + 36);
  *v23 = v3;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_10000C0CC(uint64_t a1)
{
  v2 = sub_100003538(&qword_10001D0F8, &qword_100011820);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  KeyPath = swift_getKeyPath();
  v7 = sub_100003538(&qword_10001D100, &qword_100011858);
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  v8 = &v5[*(sub_100003538(&qword_10001D108, &qword_100011860) + 36)];
  *v8 = KeyPath;
  v8[8] = 0;
  v9 = sub_100010004();
  v10 = swift_getKeyPath();
  v11 = &v5[*(v2 + 36)];
  *v11 = v10;
  v11[1] = v9;
  sub_10000FFE4();
  sub_10000D8B4();
  sub_100010094();
  return sub_10000DA50(v5, &qword_10001D0F8, &qword_100011820);
}

uint64_t sub_10000C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D45C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000C2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D45C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000C310()
{
  sub_10000D45C();
  sub_10000FED4();
  __break(1u);
}

void sub_10000C384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
}

void sub_10000C398()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 28) = v2;
}

void sub_10000C3BC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100008DDC(v2);
}

unint64_t sub_10000C418()
{
  result = qword_10001CF90;
  if (!qword_10001CF90)
  {
    sub_1000035E4(&qword_10001CF80, &qword_100011520);
    sub_10000C4D0();
    sub_10000899C(&qword_10001CFE0, &qword_10001CFE8, &qword_100011548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CF90);
  }

  return result;
}

unint64_t sub_10000C4D0()
{
  result = qword_10001CF98;
  if (!qword_10001CF98)
  {
    sub_1000035E4(&qword_10001CF88, &qword_100011528);
    sub_10000C55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CF98);
  }

  return result;
}

unint64_t sub_10000C55C()
{
  result = qword_10001CFA0;
  if (!qword_10001CFA0)
  {
    sub_1000035E4(&qword_10001CFA8, &qword_100011530);
    sub_10000C5E8();
    sub_10000C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFA0);
  }

  return result;
}

unint64_t sub_10000C5E8()
{
  result = qword_10001CFB0;
  if (!qword_10001CFB0)
  {
    sub_1000035E4(&qword_10001CFB8, &qword_100011538);
    sub_10000C6A0();
    sub_10000899C(&qword_10001CFC8, &qword_10001CFD0, &qword_100011540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFB0);
  }

  return result;
}

unint64_t sub_10000C6A0()
{
  result = qword_10001CFC0;
  if (!qword_10001CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFC0);
  }

  return result;
}

unint64_t sub_10000C6F4()
{
  result = qword_10001CFD8;
  if (!qword_10001CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFD8);
  }

  return result;
}

uint64_t sub_10000C770(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001CF80, &qword_100011520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001CF80, &qword_100011520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000C858(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003538(&qword_10001D0C0, &unk_100011790);
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

unint64_t sub_10000C988()
{
  result = qword_10001CFF0;
  if (!qword_10001CFF0)
  {
    sub_1000035E4(&qword_10001CFF8, &qword_1000115E0);
    sub_10000C418();
    sub_10000C4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFF0);
  }

  return result;
}

uint64_t sub_10000CA34()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000CA80()
{
  result = qword_10001D050;
  if (!qword_10001D050)
  {
    sub_1000035E4(&qword_10001D048, &qword_100011760);
    sub_10000CB38();
    sub_10000899C(&qword_10001D070, &qword_10001D078, &qword_100011770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D050);
  }

  return result;
}

unint64_t sub_10000CB38()
{
  result = qword_10001D058;
  if (!qword_10001D058)
  {
    sub_1000035E4(&qword_10001D060, &qword_100011768);
    sub_10000CBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D058);
  }

  return result;
}

unint64_t sub_10000CBC4()
{
  result = qword_10001D068;
  if (!qword_10001D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D068);
  }

  return result;
}

uint64_t sub_10000CC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001D040, &qword_100011758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CCD0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000CD14(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000CD14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000CD24(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000CD14(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000CD74(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000CDC4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000CDC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000CDD4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000CDC4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000CE18(uint64_t a1)
{
  v2 = sub_100003538(&qword_10001D040, &qword_100011758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001D028, &qword_100011740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000CEF0()
{
  result = qword_10001D0A0;
  if (!qword_10001D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0A0);
  }

  return result;
}

unint64_t sub_10000CF44()
{
  result = qword_10001D0B0;
  if (!qword_10001D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0B0);
  }

  return result;
}

uint64_t sub_10000CF98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CFD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000D010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000B0FC();
}

uint64_t sub_10000D024@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_10000CD14(v2, v3, v4);
}

char *sub_10000D078(char *a1, int64_t a2, char a3)
{
  result = sub_10000D0F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000D098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000D0F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003538(&qword_10001D0B8, &qword_100011788);
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

uint64_t sub_10000D204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  sub_10000CD14(v3, v4, v5);

  sub_10000CD14(v3, v4, v5);

  v29 = v3;
  v28 = v4;
  v27 = v5;
  v7 = v1 - 1;
  if (v1 != 1)
  {
    v8 = (a1 + 88);
    v9 = v4;
    v10 = v27;
    v11 = v3;
    do
    {
      v32 = v10;
      v35 = v7;
      v12 = *v8;
      v13 = *(v8 - 8);
      v15 = *(v8 - 3);
      v14 = *(v8 - 2);
      v33 = v15;
      v34 = v14;
      v16 = objc_opt_self();
      sub_10000CD14(v15, v14, v13);

      v17 = [v16 interpunctDelimeter];
      sub_100010144();

      v18 = sub_100010034();
      v20 = v19;
      v22 = v21;

      v23 = sub_100010034();
      v30 = v24;
      v31 = v23;
      LOBYTE(v14) = v25;
      sub_10000CDC4(v18, v20, v22 & 1);

      sub_10000CDC4(v11, v9, v32 & 1);

      v3 = v31;
      sub_10000CDC4(v33, v34, v13);

      v8 += 4;
      v10 = v14;
      v9 = v30;
      v11 = v31;
      v7 = v35 - 1;
    }

    while (v35 != 1);
  }

  sub_10000CDC4(v29, v28, v27);

  return v3;
}

unint64_t sub_10000D45C()
{
  result = qword_10001D0D0;
  if (!qword_10001D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0D0);
  }

  return result;
}

id sub_10000D4B0()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  v1 = sub_10000FD04();
  v2 = sub_1000101A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "extn compact representable make loading view", v3, 2u);
  }

  v4 = objc_allocWithZone(MKCompactDeveloperPlaceCardLoadingView);

  return [v4 init];
}

void sub_10000D5AC()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  oslog = sub_10000FD04();
  v1 = sub_1000101A4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "extn compact representable update loading view", v2, 2u);
  }
}

unint64_t sub_10000D6A8()
{
  result = qword_10001D0D8;
  if (!qword_10001D0D8)
  {
    sub_1000035E4(&qword_10001D010, &qword_100011728);
    sub_10000D734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0D8);
  }

  return result;
}

unint64_t sub_10000D734()
{
  result = qword_10001D0E0;
  if (!qword_10001D0E0)
  {
    sub_1000035E4(&qword_10001D008, &qword_100011720);
    sub_10000899C(&qword_10001D0E8, &qword_10001D0F0, &qword_1000117C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0E0);
  }

  return result;
}

uint64_t sub_10000D808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000FDF4();
  *a1 = result;
  return result;
}

uint64_t sub_10000D85C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000FE14();
  *a1 = result;
  return result;
}

uint64_t sub_10000D888(uint64_t *a1)
{
  v1 = *a1;

  return sub_10000FE24();
}

unint64_t sub_10000D8B4()
{
  result = qword_10001D110;
  if (!qword_10001D110)
  {
    sub_1000035E4(&qword_10001D0F8, &qword_100011820);
    sub_10000D96C();
    sub_10000899C(&qword_10001D138, &unk_10001D140, &unk_1000118A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D110);
  }

  return result;
}

unint64_t sub_10000D96C()
{
  result = qword_10001D118;
  if (!qword_10001D118)
  {
    sub_1000035E4(&qword_10001D108, &qword_100011860);
    sub_10000899C(&qword_10001D120, &qword_10001D100, &qword_100011858);
    sub_10000899C(&qword_10001D128, &qword_10001D130, &qword_100011898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D118);
  }

  return result;
}

uint64_t sub_10000DA50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003538(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DAB0()
{
  sub_1000035E4(&qword_10001D0F8, &qword_100011820);
  sub_10000D8B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000DBC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000DC10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F1E4(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);
  sub_10000FC64();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10000DCF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  swift_retain_n();

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v1, v2, sub_10000F828, v0, sub_10000F830, v0, v3, v4);
}

uint64_t sub_10000DDBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
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

uint64_t sub_10000DF0C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MKRemoteUIAccessoryPlaceCardExtensionInterface];
  [a1 setExportedInterface:v4];

  [a1 setExportedObject:a2];
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000FD24();
  sub_10000362C(v5, qword_10001DFE8);
  v6 = sub_10000FD04();
  v7 = sub_1000101B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "extn compact-accessory scene connection resume", v8, 2u);
  }

  [a1 resume];
  return 1;
}

uint64_t sub_10000E05C(void *a1, int a2, uint64_t a3)
{
  v23 = a3;
  v22 = a2;
  v5 = *v3;
  v6 = sub_100010104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_100010124();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v24);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003458();
  v15 = sub_1000101D4();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = *(v5 + 80);
  *(v17 + 24) = *(v5 + 88);
  *(v17 + 32) = v16;
  *(v17 + 40) = a1;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  aBlock[4] = sub_10000F26C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100019640;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F1E4(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v24);
}

void sub_10000E384(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v9 = sub_10000FD24();
    sub_10000362C(v9, qword_10001DFE8);
    v10 = a2;
    v11 = sub_10000FD04();
    v12 = sub_1000101A4();

    if (os_log_type_enabled(v11, v12))
    {
      v33 = a3;
      v13 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v13 = 136380675;
      if (a2)
      {
        v31 = a4;
        v14 = v10;
        v15 = [v14 name];
        if (v15)
        {
          v16 = v15;
          v17 = sub_100010144();
          v19 = v18;
        }

        else
        {

          v17 = 0;
          v19 = 0xE000000000000000;
        }

        a4 = v31;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v24 = sub_10000F280(v17, v19, &v34);

      *(v13 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn compact-accessory scene configure with item: %{private}s", v13, 0xCu);
      sub_1000037C4(v32);

      a3 = v33;
    }

    else
    {
    }

    v25 = *(v8 + 48);
    v26 = v10;

    sub_100008DDC(a2);

    v27 = *(v8 + 48);

    LOBYTE(v34) = 0;
    sub_1000090CC(a3);

    v28 = *(v8 + 48);
    if ((*(v28 + 40) & 1) != 0 || *(v28 + 32) != a4)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v34 = v28;
      sub_10000F1E4(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);

      sub_10000FC54();
    }

    else
    {
      v29 = *(v8 + 48);

      *(v28 + 32) = a4;
      *(v28 + 40) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v20 = sub_10000FD24();
    sub_10000362C(v20, qword_10001DFE8);
    v21 = sub_10000FD04();
    v22 = sub_1000101C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "extn compact-accessory scene configure without self", v23, 2u);
    }
  }
}

uint64_t sub_10000E7A8(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = a3;

  sub_10000E05C(a3, a4, a5);
}

void sub_10000E820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v7 = sub_10000FD24();
    sub_10000362C(v7, qword_10001DFE8);
    v8 = sub_10000FD04();
    v9 = sub_1000101B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "extn compact-accessory fetchPreferredContentSize", v10, 2u);
    }

    v11 = *(v6 + 48);
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
    *(v11 + 48) = a2;
    *(v11 + 56) = a3;

    sub_100009884(v12);
    sub_100009574();
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v14 = sub_10000FD24();
    sub_10000362C(v14, qword_10001DFE8);
    v15 = sub_10000FD04();
    v16 = sub_1000101C4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "extn compact-accessory fetchPreferredContentSize without self", v17, 2u);
    }
  }
}

uint64_t sub_10000EA24(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10000F880(sub_10000F870, v4);
}

uint64_t sub_10000EAB4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100010104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100010124();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v13 = sub_1000101D4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v3 + 80);
  v15[3] = *(v3 + 88);
  v15[4] = v14;
  v15[5] = a1;
  aBlock[4] = sub_10000F168;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_1000195F0;
  v16 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F1E4(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

void sub_10000EDBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    if ((*(v4 + 40) & 1) != 0 || *(v4 + 32) != a2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10000F1E4(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel);

      sub_10000FC54();
    }

    else
    {
      v5 = *(Strong + 48);

      *(v4 + 32) = a2;
      *(v4 + 40) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v7 = sub_10000FD24();
    sub_10000362C(v7, qword_10001DFE8);
    v8 = sub_10000FD04();
    v9 = sub_1000101C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "extn compact-accessory scene update interface style without self", v10, 2u);
    }
  }
}

uint64_t sub_10000EFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_10000EAB4(a3);
}

uint64_t sub_10000F0BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000F0F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F130()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10000F168()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10000EDBC(v0[4], v0[5]);
}

uint64_t sub_10000F174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F22C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_10000F26C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000E384(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t sub_10000F280(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F34C(v11, 0, 0, 1, a1, a2);
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
    sub_10000D098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000037C4(v11);
  return v7;
}

unint64_t sub_10000F34C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F458(a5, a6);
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
    result = sub_100010234();
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

char *sub_10000F458(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000F4A4(a1, a2);
  sub_10000F5D4(&off_100018BE0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000F4A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000F6C0(v5, 0);
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

  result = sub_100010234();
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
        v10 = sub_100010174();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F6C0(v10, 0);
        result = sub_100010214();
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

uint64_t sub_10000F5D4(uint64_t result)
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

  result = sub_10000F734(result, v12, 1, v3);
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

void *sub_10000F6C0(uint64_t a1, uint64_t a2)
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

  sub_100003538(&qword_10001D238, qword_1000119C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F734(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003538(&qword_10001D238, qword_1000119C0);
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

uint64_t sub_10000F838()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F880(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100010104();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100010124();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v14 = sub_1000101D4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = *(v5 + 80);
  v16[3] = *(v5 + 88);
  v16[4] = v15;
  v16[5] = a1;
  v16[6] = a2;
  aBlock[4] = sub_10000FBDC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_1000196B8;
  v17 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F1E4(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v17);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_10000FB9C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000FBDC()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10000E820(v0[4], v0[5], v0[6]);
}