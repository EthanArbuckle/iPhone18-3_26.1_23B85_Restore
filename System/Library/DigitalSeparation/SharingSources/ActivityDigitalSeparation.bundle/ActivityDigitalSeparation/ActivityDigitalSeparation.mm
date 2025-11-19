uint64_t sub_15E8(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_2084(&qword_11370, &qword_A260);
    v1 = sub_8F94();
  }

  else
  {
    v1 = a1;

    sub_8FF4();
  }

  return v1;
}

id sub_166C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDigitalSeparationSharedResource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_16E8(uint64_t a1, id *a2)
{
  result = sub_8DC4();
  *a2 = 0;
  return result;
}

uint64_t sub_1760(uint64_t a1, id *a2)
{
  v3 = sub_8DD4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_17E0@<X0>(void *a1@<X8>)
{
  sub_8DE4();
  v2 = sub_8DB4();

  *a1 = v2;
  return result;
}

uint64_t sub_1824(uint64_t a1)
{
  v2 = sub_1DD0(&qword_11390, type metadata accessor for DSSourceError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1890(uint64_t a1)
{
  v2 = sub_1DD0(&qword_11390, type metadata accessor for DSSourceError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1900(uint64_t a1)
{
  v2 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_198C(uint64_t a1)
{
  v2 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_19F8(uint64_t a1)
{
  v2 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1A64(void *a1, uint64_t a2)
{
  v4 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1B94()
{
  v2 = *v0;
  sub_9064();
  sub_8DA4();
  return sub_9084();
}

void *sub_1BF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_8DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_1C58@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_8DE4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C84(uint64_t a1)
{
  v2 = sub_1DD0(&qword_11300, type metadata accessor for DSSourceName);
  v3 = sub_1DD0(&qword_11308, type metadata accessor for DSSourceName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1EB0()
{
  v1 = *v0;
  sub_8DE4();
  v2 = sub_8E24();

  return v2;
}

uint64_t sub_1EEC()
{
  v1 = *v0;
  sub_8DE4();
  sub_8E04();
}

Swift::Int sub_1F40()
{
  v1 = *v0;
  sub_8DE4();
  sub_9064();
  sub_8E04();
  v2 = sub_9084();

  return v2;
}

uint64_t sub_1FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_8DE4();
  v6 = v5;
  if (v4 == sub_8DE4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_8FE4();
  }

  return v9 & 1;
}

uint64_t sub_2084(uint64_t *a1, uint64_t *a2)
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

void sub_22A4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_233C()
{
  result = qword_113B8;
  if (!qword_113B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_113B8);
  }

  return result;
}

id sub_2440()
{
  v1 = v0;
  v2 = (*(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = DSSourceNameActivity;
  *&v0[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_name] = DSSourceNameActivity;
  v6 = objc_allocWithZone(HKHealthStore);
  v7 = v5;
  v8 = [v6 init];
  *&v1[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_healthStore] = v8;
  sub_8D94();
  *&v1[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_client] = sub_8D84();
  ASLoggingInitialize();
  v9 = type metadata accessor for ActivityDigitalSeparationSource();
  v15.receiver = v1;
  v15.super_class = v9;
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = sub_8E64();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_2798(0, 0, v4, &unk_A628, v12);

  return v13;
}

uint64_t sub_25F4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_client);
  v2 = *(&async function pointer to dispatch thunk of ActivitySharingClient.activate() + 1);
  v5 = (&async function pointer to dispatch thunk of ActivitySharingClient.activate() + async function pointer to dispatch thunk of ActivitySharingClient.activate());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_26A4;

  return v5();
}

uint64_t sub_26A4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_80C4(a3, v26 - v10, &qword_11500, &qword_A588);
  v12 = sub_8E64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_7640(v11, &qword_11500, &qword_A588);
  }

  else
  {
    sub_8E54();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_8E44();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_8DF4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_7640(a3, &qword_11500, &qword_A588);

      return v24;
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

  sub_7640(a3, &qword_11500, &qword_A588);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_2B50;

  return sub_5A98();
}

uint64_t sub_2B50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_2EB0;
  }

  else
  {
    v5 = sub_2C64;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2C64()
{
  v26 = v0;
  super_class = v0[3].super_class;
  v25 = &_swiftEmptyArrayStorage;
  if (super_class >> 62)
  {
    goto LABEL_17;
  }

  v2 = *(&dword_10 + (super_class & 0xFFFFFFFFFFFFFF8));
  for (i = super_class; v2; i = v0[3].super_class)
  {
    v4 = 0;
    v5 = super_class & 0xC000000000000001;
    v6 = super_class & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    while (1)
    {
      if (v5)
      {
        v11 = v24[3].super_class;
        v9 = sub_8F24();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_16;
        }

        v9 = *&v7[8 * v4];
      }

      v10 = v9;
      v0 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v9 isFriendshipCurrentlyActive] & 1) != 0 || (objc_msgSend(v10, "hasInviteRequestFromMe"))
      {
        sub_8F44();
        v8 = v25[2];
        sub_8F74();
        sub_8F84();
        super_class = &v25;
        sub_8F54();
      }

      else
      {
      }

      ++v4;
      if (v0 == v2)
      {
        v0 = v24;
        v12 = v25;
        v13 = v24[3].super_class;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_8FA4();
  }

  v12 = &_swiftEmptyArrayStorage;
LABEL_19:
  receiver = v0[2].receiver;
  v14 = v0[2].super_class;

  v16 = sub_7748(v12);

  v17 = type metadata accessor for ActivityDigitalSeparationSharedResource();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends] = v16;
  v0[1].receiver = v18;
  v0[1].super_class = v17;
  v19 = objc_msgSendSuper2(v0 + 1, "init");
  sub_2084(&qword_114F8, &qword_A580);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_A500;
  *(v20 + 32) = v19;
  v21 = v19;
  receiver(v20, 0);

  v22 = v0->super_class;

  return v22();
}

uint64_t sub_2EB0()
{
  result = sub_8E94();
  v2 = ASLogDefault;
  if (ASLogDefault)
  {
    v3 = result;
    if (os_log_type_enabled(ASLogDefault, result))
    {
      v4 = v2;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_75EC();
      swift_allocError();
      *v7 = 0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_0, v4, v3, "Fetching friend list failed with error: %@", v5, 0xCu);
      sub_7640(v6, &qword_11518, &qword_A5C8);
    }

    v9 = v0[8];
    v11 = v0[4];
    v10 = v0[5];
    sub_75EC();
    v12 = swift_allocError();
    *v13 = 0;
    v11(&_swiftEmptyArrayStorage, v12);

    v14 = v0[1];

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_30B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2084(&unk_11530, &qword_A5F0);
  v5.super.isa = sub_8E34().super.isa;
  if (a2)
  {
    v6 = sub_8D34();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_315C(void **a1@<X0>, char **a2@<X8>)
{
  v5 = (*(*(sub_2084(&unk_115F0, &qword_A770) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v62 - v6;
  v8 = sub_8CB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = type metadata accessor for ActivityDigitalSeparationFriend();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend] = v13;
  v70.receiver = v15;
  v70.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v70, "init");
  v18 = sub_8E94();
  v19 = ASLogDefault;
  if (!ASLogDefault)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v69 = v18;
  if (!os_log_type_enabled(ASLogDefault, v18))
  {
LABEL_36:
    *a2 = v17;
    return;
  }

  v68 = a2;
  v66 = v2;
  v65 = v19;
  v20 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v71 = v64;
  *v20 = 136315650;
  *(v20 + 4) = sub_628C(0xD00000000000001FLL, 0x80000000000099F0, &v71);
  *(v20 + 12) = 2080;
  v21 = v17;
  v22 = OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend;
  v67 = v21;
  v23 = [*&v21[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend] displayName];
  if (v23)
  {
    v24 = v23;
    sub_8DE4();
  }

  (*(v9 + 56))(v7, 1, 1, v8);
  sub_8C94();
  v25 = sub_8C84();
  v27 = v26;
  (*(v9 + 8))(v12, v8);
  if (v27)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = sub_628C(v28, v30, &v71);

  *(v20 + 14) = v31;
  *(v20 + 22) = 2080;
  v32 = *&v67[v22];
  v17 = v67;
  v33 = [v32 contact];
  a2 = v68;
  if (!v33 || (v34 = v33, v35 = [v33 primaryRelationship], v34, !v35))
  {
    v38 = 0;
LABEL_35:
    v60 = sub_628C(v38, v29, &v71);

    *(v20 + 24) = v60;
    v61 = v65;
    _os_log_impl(&dword_0, v65, v69, "Created %s with name: %s and email: %s", v20, 0x20u);
    swift_arrayDestroy();

    goto LABEL_36;
  }

  v36 = [v35 cloudKitAddress];
  if (v36)
  {
    v37 = v36;
    v38 = sub_8DE4();
    v29 = v39;

    v40 = sub_8DB4();
    IsEmail = ASDestinationIsEmail();

    if (IsEmail)
    {
      goto LABEL_34;
    }
  }

  v42 = [v35 preferredReachableAddress];
  if (!v42)
  {
    goto LABEL_19;
  }

  v43 = v42;
  v38 = sub_8DE4();
  v29 = v44;

  v45 = sub_8DB4();
  v46 = ASDestinationIsEmail();

  if (v46)
  {
LABEL_34:

    goto LABEL_35;
  }

LABEL_19:
  v47 = [v35 addresses];
  if (v47)
  {
    v48 = v47;
    v49 = sub_8E74();

    v50 = v49 + 56;
    v51 = 1 << *(v49 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v49 + 56);
    v54 = (v51 + 63) >> 6;
    v63 = v49;

    v55 = 0;
    if (v53)
    {
      while (1)
      {
        v56 = v55;
LABEL_28:
        v57 = (*(v63 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v53)))));
        v38 = *v57;
        v29 = v57[1];

        v58 = sub_8DB4();
        v59 = ASDestinationIsEmail();

        if (v59)
        {
          break;
        }

        v53 &= v53 - 1;

        v55 = v56;
        if (!v53)
        {
          goto LABEL_24;
        }
      }

      a2 = v68;
LABEL_33:

      v17 = v67;
      v35 = v62;
      goto LABEL_34;
    }

LABEL_24:
    a2 = v68;
    while (1)
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v56 >= v54)
      {
        v38 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_33;
      }

      v53 = *(v50 + 8 * v56);
      ++v55;
      if (v53)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
}

void sub_3748(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_8D34();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_37C4(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_392C;

  return sub_5A98();
}

uint64_t sub_392C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_3A80, 0, 0);
  }
}

uint64_t sub_3A80()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = sub_8E64();
  v9 = *(v0 + 16);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v9;
  *(v5 + 56) = v2;
  v6 = v9;

  sub_2798(0, 0, v3, &unk_A5A8, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_80C4(a3, v23 - v9, &qword_11500, &qword_A588);
  v11 = sub_8E64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_7640(v10, &qword_11500, &qword_A588);
  }

  else
  {
    sub_8E54();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_8E44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_8DF4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_7640(a3, &qword_11500, &qword_A588);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_7640(a3, &qword_11500, &qword_A588);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_8D74();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_40A0, 0, 0);
}

id sub_40A0()
{
  v68 = v0;
  count = v0[4].count;
  v67 = &_swiftEmptyArrayStorage;
  if (count >> 62)
  {
    goto LABEL_56;
  }

  for (i = *(&dword_10 + (count & 0xFFFFFFFFFFFFFF8)); ; i = sub_8FA4())
  {
    v0[16].count = i;
    v3 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v4 = 0;
      v5 = count & 0xC000000000000001;
      v6 = count & 0xFFFFFFFFFFFFFF8;
      v7 = v0[4].count + 32;
      v0 = &ActivityDigitalSeparationSharedResource;
      do
      {
        if (v5)
        {
          v12 = v64[4].count;
          v8 = sub_8F24();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_53;
          }

          v8 = *(v7 + 8 * v4);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if ([v8 isFriendshipCurrentlyActive])
        {
          sub_8F44();
          v11 = v67[2];
          sub_8F74();
          sub_8F84();
          count = &v67;
          sub_8F54();
        }

        else
        {
        }

        ++v4;
      }

      while (v10 != i);
      v0 = v64;
      v13 = v67;
      v3 = &_swiftEmptyArrayStorage;
      v64[17].count = v67;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = &_swiftEmptyArrayStorage;
      v0[17].count = &_swiftEmptyArrayStorage;
      if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v13 & 0x4000000000000000) == 0)
        {
          v14 = *(v13 + 16);
          goto LABEL_19;
        }
      }
    }

    v14 = sub_8FA4();
LABEL_19:
    count = OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_client;
    v0[18].count = v14;
    v0[19].count = count;
    v0[36].count = 0;
    if (v14)
    {
      v15 = v0[17].count;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_8F24();
        count = v0[19].count;
      }

      else
      {
        if (!*(v15 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v16 = *(v15 + 32);
      }

      v0[20].count = v16;
      v0[21].count = 1;
      v17 = *(v0[5].count + count);
      result = [v16 UUID];
      if (!result)
      {
        goto LABEL_63;
      }

      v19 = result;
      v20 = v0[15].count;
      v21 = v0;
      v22 = v0[9].count;
      v23 = v21[8].count;
      sub_8D64();

      v24 = sub_8D54();
      v26 = v25;
      v21[24].count = v25;
      v27 = *(v22 + 8);
      v21[25].count = v27;
      v21[26].count = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27(v20, v23);
      v28 = *(&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + 1);
      v65 = (&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:));
      v29 = swift_task_alloc();
      v21[27].count = v29;
      *v29 = v21;
      v30 = sub_4608;
LABEL_46:
      v29[1] = v30;

      return v65(v24, v26);
    }

    v31 = v0[16].count;
    v67 = &_swiftEmptyArrayStorage;
    if (!v31)
    {
      break;
    }

    v32 = 0;
    v33 = v0[4].count;
    v34 = v33 & 0xC000000000000001;
    v35 = v33 & 0xFFFFFFFFFFFFFF8;
    v36 = v33 + 32;
    while (1)
    {
      if (v34)
      {
        v41 = v0[4].count;
        v37 = sub_8F24();
      }

      else
      {
        if (v32 >= *(v35 + 16))
        {
          goto LABEL_55;
        }

        v37 = *(v36 + 8 * v32);
      }

      v38 = v37;
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if ([v37 hasInviteRequestFromMe])
      {
        sub_8F44();
        v40 = v67[2];
        sub_8F74();
        sub_8F84();
        count = &v67;
        sub_8F54();
      }

      else
      {
      }

      ++v32;
      if (v39 == v0[16].count)
      {
        v3 = v67;
        goto LABEL_37;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_37:
  v0[22].count = v3;
  if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    result = *(v3 + 16);
    goto LABEL_40;
  }

LABEL_60:
  result = sub_8FA4();
LABEL_40:
  v0[23].count = result;
  v42 = v0[36].count;
  v0[37].count = v42;
  v43 = v0[22].count;
  if (result)
  {
    if ((v43 & 0xC000000000000001) == 0)
    {
      if (*(v43 + 16))
      {
        v44 = *(v43 + 32);
        goto LABEL_44;
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v63 = v0[22].count;
    v44 = sub_8F24();
LABEL_44:
    v0[29].count = v44;
    v0[30].count = 1;
    v45 = *(v0[5].count + v0[19].count);
    result = [v44 UUID];
    if (!result)
    {
      goto LABEL_64;
    }

    v46 = result;
    v47 = v0[14].count;
    v48 = v0;
    v49 = v0[9].count;
    v50 = v48[8].count;
    sub_8D64();

    v24 = sub_8D54();
    v26 = v51;
    v48[31].count = v51;
    v52 = *(v49 + 8);
    v48[32].count = v52;
    v48[33].count = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52(v47, v50);
    v53 = *(&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + 1);
    v65 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
    v29 = swift_task_alloc();
    v48[34].count = v29;
    *v29 = v48;
    v30 = sub_4B78;
    goto LABEL_46;
  }

  v54 = v0[17].count;
  v56 = v0[14].count;
  v55 = v0[15].count;
  v58 = v0[12].count;
  v57 = v0[13].count;
  v59 = v0[11].count;
  v66 = v0[10].count;
  v61 = v0[6].count;
  v60 = v0[7].count;

  v61(v42);

  v62 = v0[1].count;

  return v62();
}

uint64_t sub_4608()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 192);

  if (v0)
  {
    v6 = sub_4EFC;
  }

  else
  {
    v6 = sub_473C;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_473C()
{
  v54 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  if (v1 != v2)
  {
    v1 = *(v0 + 168);
    v15 = *(v0 + 136);
    if ((v15 & 0xC000000000000001) == 0)
    {
      if (v1 >= *(v15 + 16))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v16 = *(v15 + 8 * v1 + 32);
LABEL_16:
      *(v0 + 160) = v16;
      *(v0 + 168) = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        v17 = *(*(v0 + 40) + *(v0 + 152));
        result = [v16 UUID];
        if (result)
        {
          v19 = result;
          v20 = *(v0 + 120);
          v21 = *(v0 + 64);
          v22 = *(v0 + 72);
          sub_8D64();

          v23 = sub_8D54();
          v25 = v24;
          *(v0 + 192) = v24;
          v26 = *(v22 + 8);
          *(v0 + 200) = v26;
          *(v0 + 208) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v26(v20, v21);
          v27 = *(&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + 1);
          v51 = (&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:));
          v28 = swift_task_alloc();
          *(v0 + 216) = v28;
          *v28 = v0;
          v29 = sub_4608;
LABEL_29:
          v28[1] = v29;

          return v51(v23, v25);
        }

        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    v16 = sub_8F24();
    goto LABEL_16;
  }

  v3 = *(v0 + 128);
  v4 = &_swiftEmptyArrayStorage;
  v53 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = 0;
    v6 = *(v0 + 32);
    v7 = v6 & 0xC000000000000001;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    v9 = v6 + 32;
    while (1)
    {
      if (v7)
      {
        v14 = *(v0 + 32);
        v10 = sub_8F24();
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          goto LABEL_36;
        }

        v10 = *(v9 + 8 * v5);
      }

      v11 = v10;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v10 hasInviteRequestFromMe])
      {
        sub_8F44();
        v13 = v53[2];
        sub_8F74();
        sub_8F84();
        v1 = &v53;
        sub_8F54();
      }

      else
      {
      }

      ++v5;
      if (v12 == *(v0 + 128))
      {
        v4 = v53;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_20:
  *(v0 + 176) = v4;
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    result = *(v4 + 16);
    goto LABEL_23;
  }

LABEL_40:
  result = sub_8FA4();
LABEL_23:
  *(v0 + 184) = result;
  v30 = *(v0 + 288);
  *(v0 + 296) = v30;
  v31 = *(v0 + 176);
  if (result)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v50 = *(v0 + 176);
      v32 = sub_8F24();
    }

    else
    {
      if (!*(v31 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v32 = *(v31 + 32);
    }

    *(v0 + 232) = v32;
    *(v0 + 240) = 1;
    v33 = *(*(v0 + 40) + *(v0 + 152));
    result = [v32 UUID];
    if (result)
    {
      v34 = result;
      v35 = *(v0 + 112);
      v36 = *(v0 + 64);
      v37 = *(v0 + 72);
      sub_8D64();

      v23 = sub_8D54();
      v25 = v38;
      *(v0 + 248) = v38;
      v39 = *(v37 + 8);
      *(v0 + 256) = v39;
      *(v0 + 264) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v39(v35, v36);
      v40 = *(&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + 1);
      v51 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
      v28 = swift_task_alloc();
      *(v0 + 272) = v28;
      *v28 = v0;
      v29 = sub_4B78;
      goto LABEL_29;
    }

LABEL_44:
    __break(1u);
    return result;
  }

  v41 = *(v0 + 136);
  v43 = *(v0 + 112);
  v42 = *(v0 + 120);
  v45 = *(v0 + 96);
  v44 = *(v0 + 104);
  v46 = *(v0 + 88);
  v52 = *(v0 + 80);
  v48 = *(v0 + 48);
  v47 = *(v0 + 56);

  v48(v30);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_4B78()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);

  if (v0)
  {
    v6 = sub_55C4;
  }

  else
  {
    v6 = sub_4CAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_4CAC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);

  if (v1 == v2)
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 176);
    v5 = *(v0 + 136);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);
    v30 = *(v0 + 80);
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);

    v12(v3);

    v13 = *(v0 + 8);

    v13();
    return;
  }

  v14 = *(v0 + 240);
  v15 = *(v0 + 176);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v29 = *(v0 + 240);
    v16 = sub_8F24();
  }

  else
  {
    if (v14 >= *(v15 + 16))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v16 = *(v15 + 8 * v14 + 32);
  }

  *(v0 + 232) = v16;
  *(v0 + 240) = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(*(v0 + 40) + *(v0 + 152));
  v18 = [v16 UUID];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = *(v0 + 112);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  sub_8D64();

  v23 = sub_8D54();
  v25 = v24;
  *(v0 + 248) = v24;
  v26 = *(v22 + 8);
  *(v0 + 256) = v26;
  *(v0 + 264) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v20, v21);
  v27 = *(&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + 1);
  v31 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
  v28 = swift_task_alloc();
  *(v0 + 272) = v28;
  *v28 = v0;
  v28[1] = sub_4B78;

  v31(v23, v25);
}

void sub_4EFC()
{
  v87 = v0;
  v1 = v0[36];
  sub_75EC();
  v2 = swift_allocError();
  *v3 = 1;

  v4 = sub_8E94();
  v5 = ASLogDefault;
  if (!ASLogDefault)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = v4;
  v7 = os_log_type_enabled(ASLogDefault, v4);
  v8 = v0[28];
  v9 = v0[20];
  if (v7)
  {
    v79 = v6;
    v83 = v2;
    log = v5;
    v10 = v9;
    swift_errorRetain();
    v11 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v0[2] = v81;
    *v11 = 136315394;
    v12 = [v10 UUID];
    v13 = v0[28];
    if (!v12)
    {
LABEL_49:
      v77 = v0[20];

      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v14 = v12;
    v15 = v0[25];
    v78 = v0[26];
    v16 = v0[20];
    v17 = v0[12];
    v18 = v0[13];
    v19 = v0[8];
    v20 = v0[9];

    sub_8D64();

    (*(v20 + 32))(v18, v17, v19);
    sub_7F6C(&qword_11510, &type metadata accessor for UUID);
    v21 = sub_8FD4();
    v23 = v22;
    v15(v18, v19);
    v24 = sub_628C(v21, v23, v0 + 2);

    *(v11 + 4) = v24;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v25;
    *v80 = v25;
    _os_log_impl(&dword_0, log, v79, "Removing friend %s failed with error: %@", v11, 0x16u);
    sub_7640(v80, &qword_11518, &qword_A5C8);

    sub_76A0(v81);

    v2 = v83;
  }

  else
  {
  }

  v26 = v0[21];
  v0[36] = v2;
  if (v26 != v0[18])
  {
    v39 = v0[17];
    if ((v39 & 0xC000000000000001) == 0)
    {
      if (v26 >= *(v39 + 16))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v40 = *(v39 + 8 * v26 + 32);
LABEL_21:
      v0[20] = v40;
      v0[21] = v26 + 1;
      if (!__OFADD__(v26, 1))
      {
        v41 = *(v0[5] + v0[19]);
        v42 = [v40 UUID];
        if (v42)
        {
          v43 = v42;
          v44 = v0[15];
          v45 = v0[8];
          v46 = v0[9];
          sub_8D64();

          v47 = sub_8D54();
          v49 = v48;
          v0[24] = v48;
          v50 = *(v46 + 8);
          v0[25] = v50;
          v0[26] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v50(v44, v45);
          v51 = *(&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + 1);
          v84 = (&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:));
          v52 = swift_task_alloc();
          v0[27] = v52;
          *v52 = v0;
          v53 = sub_4608;
LABEL_34:
          v52[1] = v53;

          v84(v47, v49);
          return;
        }

        goto LABEL_50;
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    v40 = sub_8F24();
    goto LABEL_21;
  }

  v27 = v0[16];
  v28 = &_swiftEmptyArrayStorage;
  v86 = &_swiftEmptyArrayStorage;
  if (v27)
  {
    v29 = 0;
    v30 = v0[4];
    v31 = v30 & 0xC000000000000001;
    v32 = v30 & 0xFFFFFFFFFFFFFF8;
    v33 = v30 + 32;
    while (1)
    {
      if (v31)
      {
        v38 = v0[4];
        v34 = sub_8F24();
      }

      else
      {
        if (v29 >= *(v32 + 16))
        {
          goto LABEL_41;
        }

        v34 = *(v33 + 8 * v29);
      }

      v35 = v34;
      v36 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if ([v34 hasInviteRequestFromMe])
      {
        sub_8F44();
        v37 = v86[2];
        sub_8F74();
        sub_8F84();
        v26 = &v86;
        sub_8F54();
      }

      else
      {
      }

      ++v29;
      if (v36 == v0[16])
      {
        v28 = v86;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_25:
  v0[22] = v28;
  if ((v28 & 0x8000000000000000) == 0 && (v28 & 0x4000000000000000) == 0)
  {
    v54 = *(v28 + 16);
    goto LABEL_28;
  }

LABEL_45:
  v54 = sub_8FA4();
LABEL_28:
  v0[23] = v54;
  v55 = v0[36];
  v0[37] = v55;
  v56 = v0[22];
  if (v54)
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v76 = v0[22];
      v57 = sub_8F24();
LABEL_32:
      v0[29] = v57;
      v0[30] = 1;
      v58 = *(v0[5] + v0[19]);
      v59 = [v57 UUID];
      if (v59)
      {
        v60 = v59;
        v61 = v0[14];
        v62 = v0[8];
        v63 = v0[9];
        sub_8D64();

        v47 = sub_8D54();
        v49 = v64;
        v0[31] = v64;
        v65 = *(v63 + 8);
        v0[32] = v65;
        v0[33] = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v65(v61, v62);
        v66 = *(&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + 1);
        v84 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
        v52 = swift_task_alloc();
        v0[34] = v52;
        *v52 = v0;
        v53 = sub_4B78;
        goto LABEL_34;
      }

LABEL_51:
      __break(1u);
      return;
    }

    if (*(v56 + 16))
    {
      v57 = *(v56 + 32);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_48;
  }

  v67 = v0[17];
  v69 = v0[14];
  v68 = v0[15];
  v71 = v0[12];
  v70 = v0[13];
  v72 = v0[11];
  v85 = v0[10];
  v74 = v0[6];
  v73 = v0[7];

  v74(v55);

  v75 = v0[1];

  v75();
}

void sub_55C4()
{
  v1 = v0[37];
  sub_75EC();
  v2 = swift_allocError();
  *v3 = 1;

  v4 = sub_8E94();
  v5 = ASLogDefault;
  if (!ASLogDefault)
  {
    goto LABEL_21;
  }

  v6 = v4;
  v7 = os_log_type_enabled(ASLogDefault, v4);
  v8 = v0[35];
  v9 = v0[29];
  if (v7)
  {
    v53 = v6;
    v57 = v2;
    log = v5;
    v10 = v9;
    swift_errorRetain();
    v11 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v0[3] = v55;
    *v11 = 136315394;
    v12 = [v10 UUID];
    v13 = v0[35];
    if (!v12)
    {
LABEL_22:
      v51 = v0[29];

      __break(1u);
      goto LABEL_23;
    }

    v14 = v12;
    v15 = v0[32];
    v52 = v0[33];
    v16 = v0[29];
    v17 = v0[10];
    v18 = v0[11];
    v19 = v0[8];
    v20 = v0[9];

    sub_8D64();

    (*(v20 + 32))(v18, v17, v19);
    sub_7F6C(&qword_11510, &type metadata accessor for UUID);
    v21 = sub_8FD4();
    v23 = v22;
    v15(v18, v19);
    v24 = sub_628C(v21, v23, v0 + 3);

    *(v11 + 4) = v24;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v25;
    *v54 = v25;
    _os_log_impl(&dword_0, log, v53, "Withdrawing invite to friend %s failed with error: %@", v11, 0x16u);
    sub_7640(v54, &qword_11518, &qword_A5C8);

    sub_76A0(v55);

    v2 = v57;
  }

  else
  {
  }

  v26 = v0[30];
  v0[37] = v2;
  v27 = v0[22];
  if (v26 == v0[23])
  {
    v28 = v0[17];
    v30 = v0[14];
    v29 = v0[15];
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[11];
    v58 = v0[10];
    v34 = v0[6];
    v35 = v0[7];

    v34(v2);

    v36 = v0[1];

    v36();
    return;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v50 = v0[22];
    v37 = sub_8F24();
  }

  else
  {
    if (v26 >= *(v27 + 16))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v37 = *(v27 + 8 * v26 + 32);
  }

  v0[29] = v37;
  v0[30] = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v38 = *(v0[5] + v0[19]);
  v39 = [v37 UUID];
  if (!v39)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = v0[14];
  v42 = v0[8];
  v43 = v0[9];
  sub_8D64();

  v44 = sub_8D54();
  v46 = v45;
  v0[31] = v45;
  v47 = *(v43 + 8);
  v0[32] = v47;
  v0[33] = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v41, v42);
  v48 = *(&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + 1);
  v59 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
  v49 = swift_task_alloc();
  v0[34] = v49;
  *v49 = v0;
  v49[1] = sub_4B78;

  v59(v44, v46);
}

uint64_t sub_5AB8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_client);
  v2 = *(&async function pointer to dispatch thunk of ActivitySharingClient.allFriends() + 1);
  v5 = (&async function pointer to dispatch thunk of ActivitySharingClient.allFriends() + async function pointer to dispatch thunk of ActivitySharingClient.allFriends());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_5B68;

  return v5();
}

uint64_t sub_5B68(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_5C9C, 0, 0);
  }
}

uint64_t sub_5C9C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    if (&_swiftEmptyArrayStorage >> 62 && sub_8FA4())
    {
      sub_6F00(&_swiftEmptyArrayStorage);
      v1 = v5;
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }
  }

  v2 = sub_6834(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_5D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDigitalSeparationSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_5E08(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_8DB4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_8D44();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_5EE4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5FDC;

  return v7(a1);
}

uint64_t sub_5FDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_60D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_9064();
  sub_8E04();
  v6 = sub_9084();

  return sub_614C(a1, a2, v6);
}

unint64_t sub_614C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_8FE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_6204(uint64_t a1, uint64_t a2)
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

  sub_2084(&qword_114F8, &qword_A580);
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

uint64_t sub_628C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6358(v11, 0, 0, 1, a1, a2);
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
    sub_76EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_76A0(v11);
  return v7;
}

unint64_t sub_6358(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_6464(a5, a6);
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
    result = sub_8F34();
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

char *sub_6464(uint64_t a1, unint64_t a2)
{
  v4 = sub_64B0(a1, a2);
  sub_65E0(&off_C748);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_64B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_66CC(v5, 0);
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

  result = sub_8F34();
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
        v10 = sub_8E14();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_66CC(v10, 0);
        result = sub_8F14();
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

uint64_t sub_65E0(uint64_t result)
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

  result = sub_6740(result, v12, 1, v3);
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

void *sub_66CC(uint64_t a1, uint64_t a2)
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

  sub_2084(&unk_11520, &qword_A5D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_6740(char *result, int64_t a2, char a3, char *a4)
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
    sub_2084(&unk_11520, &qword_A5D0);
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

void *sub_6834(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_8EE4();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_6204(v2, 0);

    v1 = sub_68E4(&v5, v3 + 4, v2, v1);
    sub_7218();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_68E4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_8ED4();
  sub_71CC();
  sub_7F6C(&qword_114F0, sub_71CC);
  result = sub_8E84();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = (&dword_0 + 1);
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_8EF4())
      {
        goto LABEL_30;
      }

      sub_71CC();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    v17 = __OFADD__(v7, 1);
    v7 = (v7 + 1);
    if (v17)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

unint64_t sub_6B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2084(&qword_11540, &qword_A610);
    v3 = sub_8FB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_80C4(v4, &v13, &qword_11548, &qword_A618);
      v5 = v13;
      v6 = v14;
      result = sub_60D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_812C(&v15, (v3[7] + 32 * result));
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

void sub_6C40(void *a1, void (**a2)(void, void, void))
{
  v4 = (*(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v19 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = objc_allocWithZone(LSApplicationRecord);
  _Block_copy(a2);
  v9 = sub_5E08(0xD000000000000011, 0x80000000000099D0, 0);
  if (v9 && (v13 = v9, v14 = [v9 applicationState], v15 = objc_msgSend(v14, "isInstalled"), v14, v13, (v15 & 1) != 0))
  {
    v16 = sub_8E64();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v17[5] = sub_7F64;
    v17[6] = v7;
    v18 = a1;

    sub_2798(0, 0, v6, &unk_A600, v17);
  }

  else
  {
    type metadata accessor for DSSourceError(0);
    v19[1] = 0;
    sub_6B10(&_swiftEmptyArrayStorage);
    sub_7F6C(&qword_113C8, type metadata accessor for DSSourceError);
    sub_8D24();
    v10 = v19[2];
    sub_2084(&unk_11530, &qword_A5F0);
    isa = sub_8E34().super.isa;
    v12 = sub_8D34();
    (a2)[2](a2, isa, v12);
  }
}

void sub_6F00(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_8FA4())
    {
LABEL_3:
      sub_2084(&qword_114E0, &qword_A578);
      v3 = sub_8F04();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_8FA4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_8F24();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_8EA4(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_71CC();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_8EB4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_8EA4(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_71CC();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_8EB4();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_71CC()
{
  result = qword_114E8;
  if (!qword_114E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_114E8);
  }

  return result;
}

uint64_t sub_7224()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7330;

  return sub_385C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_7330()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_7428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_824C;

  return sub_3FA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_74FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7534(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_824C;

  return sub_5EE4(a1, v5);
}

unint64_t sub_75EC()
{
  result = qword_11508;
  if (!qword_11508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11508);
  }

  return result;
}

uint64_t sub_7640(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2084(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_76A0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_76EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_7748(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_8FA4())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v11 = &_swiftEmptyArrayStorage;
    sub_8F64();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_8F24();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v9 = v6;
      sub_315C(&v9, &v10);

      sub_8F44();
      v8 = v11[2];
      sub_8F74();
      sub_8F84();
      sub_8F54();
      if (v5 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_7898(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = (*(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v26 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  type metadata accessor for ActivityDigitalSeparationSharedResource();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    sub_75EC();
    swift_allocError();
    *v20 = 2;
    _Block_copy(a3);
    v21 = sub_8D34();
    (a3)[2](a3, v21);
  }

  v11 = *(v10 + OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v22 = *(v10 + OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends);
    }

    v12 = sub_8FA4();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_17:
    _Block_copy(a3);
    swift_unknownObjectRetain();
    v19 = &_swiftEmptyArrayStorage;
LABEL_18:
    v23 = sub_8E64();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v19;
    v24[5] = a2;
    v24[6] = sub_8250;
    v24[7] = v9;
    v25 = a2;

    sub_2798(0, 0, v8, &unk_A5E0, v24);

    return swift_unknownObjectRelease();
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  v29 = &_swiftEmptyArrayStorage;
  _Block_copy(a3);
  swift_unknownObjectRetain();

  result = sub_8F64();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v27 = a2;
    v28 = a1;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_8F24();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = *&v15[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend];

      sub_8F44();
      v18 = v29[2];
      sub_8F74();
      sub_8F84();
      sub_8F54();
    }

    while (v12 != v14);

    v19 = v29;
    a2 = v27;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_7BE0(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v5 = (*(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  type metadata accessor for ActivityDigitalSeparationFriend();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    sub_2084(&qword_114F8, &qword_A580);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_A500;
    v12 = *(v10 + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend);
    *(v11 + 32) = v12;
    v13 = sub_8E64();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    v14[5] = a2;
    v14[6] = sub_8250;
    v14[7] = v8;
    _Block_copy(a3);
    v15 = v12;
    v16 = a2;

    sub_2798(0, 0, v7, &unk_A5D8, v14);
  }

  else
  {
    sub_75EC();
    swift_allocError();
    *v18 = 1;
    _Block_copy(a3);
    v19 = sub_8D34();
    (a3)[2](a3, v19);
  }
}

uint64_t sub_7E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_7330;

  return sub_3FA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_7F14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_7F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7FB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7FFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_824C;

  return sub_2ABC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_80C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2084(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_812C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_813C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_817C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_824C;

  return sub_25D4(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for ActivityDigitalSeparationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityDigitalSeparationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_83CC()
{
  result = qword_11550;
  if (!qword_11550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11550);
  }

  return result;
}

Swift::Int sub_8434()
{
  v1 = *v0;
  sub_9064();
  sub_9074(v1);
  return sub_9084();
}

Swift::Int sub_84A8()
{
  v1 = *v0;
  sub_9064();
  sub_9074(v1);
  return sub_9084();
}

id sub_88CC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_8DB4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_8964(uint64_t (*a1)(void))
{
  v3 = [*(v1 + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend) contact];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 primaryRelationship];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 cloudKitAddress];
  if (v6)
  {
    v7 = v6;
    v8 = sub_8DE4();
    v9 = (a1)(v7);

    if (v9)
    {
LABEL_8:

      return v8;
    }
  }

  v10 = [v5 preferredReachableAddress];
  if (v10)
  {
    v11 = v10;
    v8 = sub_8DE4();
    v12 = (a1)(v11);

    if (v12)
    {
      goto LABEL_8;
    }
  }

  v26 = v5;
  result = [v5 addresses];
  if (result)
  {
    v14 = result;
    v15 = sub_8E74();

    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    if (v18)
    {
      while (1)
      {
        v21 = v20;
LABEL_19:
        v22 = (*(v15 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v18)))));
        v8 = *v22;
        v23 = v22[1];

        v24 = sub_8DB4();
        v25 = a1();

        if (v25)
        {
          break;
        }

        v18 &= v18 - 1;

        v20 = v21;
        if (!v18)
        {
          goto LABEL_16;
        }
      }

LABEL_23:

      return v8;
    }

LABEL_16:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v8 = 0;
        goto LABEL_23;
      }

      v18 = *(v15 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_8C1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDigitalSeparationFriend();
  return objc_msgSendSuper2(&v2, "dealloc");
}