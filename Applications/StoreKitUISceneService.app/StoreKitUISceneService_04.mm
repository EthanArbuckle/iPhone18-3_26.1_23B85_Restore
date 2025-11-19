uint64_t sub_100068CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100068D14, a4, 0);
}

uint64_t sub_100068D14()
{
  sub_100013A88();
  v1 = v0[2];
  sub_100068DE8(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100068DE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100012634(&qword_1000D3E98, &qword_100098330);
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  __chkstk_darwin(v4);
  v82 = &v75 - v6;
  v7 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v79 = &v75 - v13;
  v14 = __chkstk_darwin(v12);
  v78 = &v75 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v75 - v17;
  __chkstk_darwin(v16);
  v20 = &v75 - v19;
  *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) = 5;
  v21 = OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_activationContinuation;
  swift_beginAccess();
  sub_100069F3C(v2 + v21, v20);
  v22 = sub_100012898(v20, 1, v4);
  sub_100069FAC(v20);
  if (v22 == 1)
  {
    v83 = v21;
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for SKLogger();
    sub_1000128C0(v23, qword_1000E4560);
    v25 = *(v2 + 112);
    v24 = *(v2 + 120);
    v26 = static os_log_type_t.fault.getter();

    v27 = Logger.logObject.getter();

    if (os_log_type_enabled(v27, v26))
    {
      v77 = "uation";
      v28 = swift_slowAlloc();
      v81 = v4;
      v29 = v28;
      v30 = swift_slowAlloc();
      v80 = v11;
      v85 = v30;
      *v29 = 136446466;
      v87 = 91;
      v88 = 0xE100000000000000;
      v31._countAndFlagsBits = v25;
      v31._object = v24;
      String.append(_:)(v31);
      v32._countAndFlagsBits = 8285;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      v33 = sub_1000847A8(v87, v88, &v85);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_1000847A8(0xD000000000000031, v77 | 0x8000000000000000, &v85);
      _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v29, 0x16u);
      swift_arrayDestroy();
      v11 = v80;

      v4 = v81;
    }

    v21 = v83;
  }

  if (a1)
  {
    sub_100069F3C(v2 + v21, v18);
    if (!sub_100012898(v18, 1, v4))
    {
      v34 = v84;
      v35 = v82;
      (*(v84 + 16))(v82, v18, v4);
      swift_errorRetain();
LABEL_28:
      sub_100069FAC(v18);
      v87 = a1;
      CheckedContinuation.resume(throwing:)();
LABEL_29:
      (*(v34 + 8))(v35, v4);
      goto LABEL_30;
    }

LABEL_22:
    v69 = v18;
    goto LABEL_23;
  }

  v80 = v11;
  v81 = v4;
  v37 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result);
  v36 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 8);
  v38 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 16);
  v39 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 17);
  v76 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 16);
  v77 = v36;
  if (v39 == 1)
  {
    swift_errorRetain();
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for SKLogger();
    sub_1000128C0(v40, qword_1000E4560);
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v41._object = 0x80000001000A1AD0;
    v41._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v41);
    v75 = v37;
    v85 = v37;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v42 = v87;
    v43 = v88;
    v44 = *(v2 + 112);
    v45 = *(v2 + 120);
    v46 = static os_log_type_t.error.getter();

    v47 = Logger.logObject.getter();

    if (os_log_type_enabled(v47, v46))
    {
      v48 = swift_slowAlloc();
      v83 = v21;
      v49 = v48;
      v50 = swift_slowAlloc();
      v78 = v42;
      v85 = v50;
      *v49 = 136446466;
      v87 = 91;
      v88 = 0xE100000000000000;
      v51._countAndFlagsBits = v44;
      v51._object = v45;
      String.append(_:)(v51);
      v52._countAndFlagsBits = 8285;
      v52._object = 0xE200000000000000;
      String.append(_:)(v52);
      v53 = sub_1000847A8(v87, v88, &v85);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      v54 = sub_1000847A8(v78, v43, &v85);

      *(v49 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v47, v46, "%{public}s%{public}s", v49, 0x16u);
      swift_arrayDestroy();

      v21 = v83;
    }

    else
    {
    }

    v11 = v80;
    v4 = v81;
    v18 = v79;
    sub_100069F3C(v2 + v21, v79);
    v68 = sub_100012898(v18, 1, v4);
    a1 = v75;
    if (!v68)
    {
      v34 = v84;
      v35 = v82;
      (*(v84 + 16))(v82, v18, v4);
      goto LABEL_28;
    }

    sub_10006A014(v75, v77, v76, 1);
    goto LABEL_22;
  }

  sub_10006A0B0(v37, v36, v38);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for SKLogger();
  sub_1000128C0(v55, qword_1000E4560);
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v85 = v87;
  v86 = v88;
  v56._countAndFlagsBits = 0xD000000000000024;
  v56._object = 0x80000001000A1B00;
  String.append(_:)(v56);
  v87 = v37;
  v88 = v36;
  v89 = v38;
  _print_unlocked<A, B>(_:_:)();
  v57 = v85;
  v58 = v86;
  v59 = *(v2 + 120);
  v79 = *(v2 + 112);
  v60 = static os_log_type_t.default.getter();

  v61 = Logger.logObject.getter();

  if (os_log_type_enabled(v61, v60))
  {
    v62 = swift_slowAlloc();
    v75 = v37;
    v83 = v21;
    v63 = v62;
    v85 = swift_slowAlloc();
    *v63 = 136446466;
    v87 = 91;
    v88 = 0xE100000000000000;
    v64._countAndFlagsBits = v79;
    v64._object = v59;
    String.append(_:)(v64);
    v65._countAndFlagsBits = 8285;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    v66 = sub_1000847A8(v87, v88, &v85);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2082;
    v67 = sub_1000847A8(v57, v58, &v85);

    *(v63 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v61, v60, "%{public}s%{public}s", v63, 0x16u);
    swift_arrayDestroy();

    v21 = v83;
    v37 = v75;
  }

  else
  {
  }

  v4 = v81;
  v70 = v78;
  sub_100069F3C(v2 + v21, v78);
  v71 = sub_100012898(v70, 1, v4);
  v11 = v80;
  v72 = v76;
  v73 = v77;
  if (!v71)
  {
    v34 = v84;
    v35 = v82;
    (*(v84 + 16))(v82, v70, v4);
    sub_100069FAC(v70);
    v87 = v37;
    v88 = v73;
    v89 = v72;
    CheckedContinuation.resume(returning:)();
    goto LABEL_29;
  }

  sub_10006A014(v37, v77, v76, 0);
  v69 = v70;
LABEL_23:
  sub_100069FAC(v69);
LABEL_30:
  sub_10001267C(v11, 1, 1, v4);
  swift_beginAccess();
  sub_10006A040(v11, v2 + v21);
  return swift_endAccess();
}

uint64_t sub_1000697E8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  sub_1000128C0(v2, qword_1000E4560);
  v21 = _typeName(_:qualified:)();
  v22 = v3;
  v4._countAndFlagsBits = 0x74696E69656420;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v6 = v21;
  v5 = v22;
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);

  v9 = static os_log_type_t.default.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v20 = v12;
    v21 = 91;
    v22 = 0xE100000000000000;
    v13._countAndFlagsBits = v8;
    v13._object = v7;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_1000847A8(91, 0xE100000000000000, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_1000847A8(v6, v5, &v20);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v1 + 120);

  v18 = *(v1 + 136);

  sub_100069FAC(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_activationContinuation);
  sub_10006A014(*(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result), *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 8), *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 16), *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 17));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100069A78()
{
  v0 = sub_1000697E8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ActivationContext()
{
  result = qword_1000D3E80;
  if (!qword_1000D3E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069AF4()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_100069B50()
{
  sub_100069C1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100069C1C()
{
  if (!qword_1000D3E90)
  {
    sub_10001CEC4(&qword_1000D3E98, &qword_100098330);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D3E90);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ActivationContext.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100069D4CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteAlertPresenter.Reason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100069E50);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100069E8C()
{
  result = qword_1000D3EA0;
  if (!qword_1000D3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3EA0);
  }

  return result;
}

unint64_t sub_100069EE4()
{
  result = qword_1000D3EA8;
  if (!qword_1000D3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3EA8);
  }

  return result;
}

uint64_t sub_100069F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069FAC(uint64_t a1)
{
  v2 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A014(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_10006A020(a1, a2, a3);
  }
}

uint64_t sub_10006A020(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_10006A040(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A0B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return swift_errorRetain();
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_10006A0D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006A118()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10004A854(v5);
  *v6 = v7;
  v8 = sub_10006A344(v6);

  return sub_100068CF4(v8, v9, v10, v4, v3);
}

uint64_t sub_10006A1C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10004A854(v4);
  *v5 = v6;
  v7 = sub_10006A344(v5);

  return sub_1000684C4(v7, v8, v9, v3);
}

uint64_t sub_10006A260()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A2A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10004A854(v4);
  *v5 = v6;
  v7 = sub_10006A344(v5);

  return sub_100068118(v7, v8, v9, v3);
}

uint64_t sub_10006A35C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for ProductRequest();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10006A3F4, v2, 0);
}

uint64_t sub_10006A3F4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = (*(v0 + 24) + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v0 + 72);
  v8 = type metadata accessor for RemoteAlertConfiguration();
  sub_10006ABFC(v4 + *(v8 + 36), v1);
  v9 = type metadata accessor for ClientOverride(0);
  sub_10001267C(v1, 0, 1, v9);
  v10 = v1 + v2[5];
  *v10 = v3;
  *(v10 + 8) = v7 & 1;
  *(v1 + v2[6]) = 2;
  *(v1 + v2[7]) = &_swiftEmptySetSingleton;
  *(v1 + v2[8]) = &_swiftEmptySetSingleton;
  v11 = (v1 + v2[9]);
  *v11 = v6;
  v11[1] = v5;
  *(v1 + v2[10]) = 0;

  j__swift_bridgeObjectRetain();
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_10006A550;
  v13 = *(v0 + 40);

  return sub_100057BD0();
}

uint64_t sub_10006A550(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_10006A6F8;
  }

  else
  {
    v4[8] = a1;
    v8 = sub_10006A68C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10006A68C()
{
  sub_10006ACC0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_10006A6F8()
{
  sub_10006ACC0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_10006A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  return sub_100065390(sub_10006A780, v4);
}

uint64_t sub_10006A780()
{
  v23 = v0;
  if (!v0[4])
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v1 = v0[5];
    v3 = v0[2];
    v2 = v0[3];
    v4 = type metadata accessor for SKLogger();
    sub_1000128C0(v4, qword_1000E4560);
    _StringGuts.grow(_:)(39);

    v21 = 0xD000000000000025;
    v22 = 0x80000001000A1C20;
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    String.append(_:)(v5);
    v6 = *(v1 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
    v7 = *(v1 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration + 8);
    v8 = static os_log_type_t.error.getter();

    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446466;
      v20 = v11;
      v21 = 91;
      v22 = 0xE100000000000000;
      v12._countAndFlagsBits = v6;
      v12._object = v7;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 8285;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14 = sub_1000847A8(91, 0xE100000000000000, &v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = sub_1000847A8(0xD000000000000025, 0x80000001000A1C20, &v20);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  sub_100018F34();
  v16 = swift_allocError();
  sub_10006ACEC(v16, v17);
  v18 = v0[1];

  return v18();
}

uint64_t sub_10006AA38()
{
  sub_100018F34();
  v1 = swift_allocError();
  sub_10006ACEC(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006AAB8()
{
  sub_10006AC60(v0 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration, type metadata accessor for RemoteAlertConfiguration);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for StoreKitViewService()
{
  result = qword_1000D3EF8;
  if (!qword_1000D3EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006AB60()
{
  result = type metadata accessor for RemoteAlertConfiguration();
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

uint64_t sub_10006ABFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AC60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006ACC0()
{
  v2 = *(v0 + 40);

  return sub_10006AC60(v2, type metadata accessor for ProductRequest);
}

uint64_t sub_10006ACEC(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

void sub_10006AD0C()
{
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v0 = type metadata accessor for SKLogger();
  v1 = sub_1000128C0(v0, qword_1000E4560);
  v2 = static os_log_type_t.default.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    sub_100039EE0();
    v17 = sub_10006BA34();
    *v1 = 136446466;
    v4 = sub_1000847A8(0, 0xE000000000000000, &v17);
    sub_100037B8C(v4);
    *(v1 + 14) = sub_1000847A8(0xD000000000000022, 0x80000001000A1D60, &v17);
    sub_100063DD4(&_mh_execute_header, v5, v2, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  v6 = type metadata accessor for StoreKitAngelServiceListener();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_10006E848();
  v9 = static CommandLine.argc.getter();
  v10 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for StoreKitAngel.Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for ApplicationDelegate();
  v13 = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(v13);
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v14 = delegateClassNamea;
  }

  delegateClassName = v14;
  UIApplicationMain(v9, v10, v12, v14);
}

uint64_t sub_10006AF28(void *a1)
{
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v2 = type metadata accessor for SKLogger();
  v3 = sub_1000128C0(v2, qword_1000E4560);
  _StringGuts.grow(_:)(36);

  strcpy(v19, "Application ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._object = 0x80000001000A1D40;
  v9._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v9);
  v11 = v19[0];
  v10 = v19[1];
  v12 = static os_log_type_t.default.getter();

  v13 = v3;
  v14 = Logger.logObject.getter();

  if (os_log_type_enabled(v14, v12))
  {
    sub_100039EE0();
    v19[0] = sub_10006BA34();
    *v13 = 136446466;
    v15 = sub_1000847A8(0, 0xE000000000000000, v19);
    sub_100037B8C(v15);
    v16 = sub_1000847A8(v11, v10, v19);

    *(v13 + 14) = v16;
    sub_100063DD4(&_mh_execute_header, v17, v12, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  return 1;
}

id sub_10006B1A8(void *a1, void *a2, void *a3)
{
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v6 = type metadata accessor for SKLogger();
  v7 = sub_1000128C0(v6, qword_1000E4560);
  sub_10004A7DC();
  _StringGuts.grow(_:)(83);
  v8._countAndFlagsBits = 0x746163696C707041;
  v8._object = 0xEC000000206E6F69;
  String.append(_:)(v8);
  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000033;
  v14._object = 0x80000001000A1CC0;
  String.append(_:)(v14);
  v15 = [a2 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x706F206874697720;
  v20._object = 0xEE0020736E6F6974;
  String.append(_:)(v20);
  v21 = [a3 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v27 = v66;
  v26 = v67;
  v28 = static os_log_type_t.default.getter();

  v29 = Logger.logObject.getter();

  if (os_log_type_enabled(v29, v28))
  {
    v30 = sub_100039EE0();
    v31 = swift_slowAlloc();
    v66 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_10006BA50(v31, v32);
    *(v30 + 12) = 2082;
    v33 = sub_1000847A8(v27, v26, &v66);

    *(v30 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  v34 = sub_10006BA6C();
  v35 = objc_allocWithZone(UISceneConfiguration);
  v36 = sub_10006B918(0, 0, v34);
  sub_10004A7DC();
  _StringGuts.grow(_:)(27);
  v37._countAndFlagsBits = 0xD000000000000019;
  v37._object = 0x80000001000A1D00;
  String.append(_:)(v37);
  v64 = sub_10006BA6C();
  type metadata accessor for Role(0);
  _print_unlocked<A, B>(_:_:)();

  v39 = v66;
  v38 = v67;
  v40 = static os_log_type_t.default.getter();

  v41 = Logger.logObject.getter();

  if (os_log_type_enabled(v41, v40))
  {
    v42 = sub_100039EE0();
    v43 = swift_slowAlloc();
    v66 = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_10006BA50(v43, v44);
    *(v42 + 12) = 2082;
    v45 = sub_1000847A8(v39, v38, &v66);

    *(v42 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v41, v40, "%{public}s%{public}s", v42, 0x16u);
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  v46 = sub_10006BA6C();
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
  {

    goto LABEL_17;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v52)
  {
LABEL_17:
    sub_10006B988();
    [v36 setSceneClass:swift_getObjCClassFromMetadata()];
    type metadata accessor for StoreKitAngelRemoteAlertSceneDelegate();
    [v36 setDelegateClass:swift_getObjCClassFromMetadata()];
    return v36;
  }

  sub_10004A7DC();
  _StringGuts.grow(_:)(26);
  v53._object = 0x80000001000A1D20;
  v53._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v53);
  v65 = sub_10006BA6C();
  _print_unlocked<A, B>(_:_:)();

  v55 = v66;
  v54 = v67;
  v56 = static os_log_type_t.fault.getter();

  v57 = Logger.logObject.getter();

  if (os_log_type_enabled(v57, v56))
  {
    sub_100039EE0();
    v58 = sub_10006BA34();
    v66 = v58;
    *v7 = 136446466;
    v60 = sub_10006BA50(v58, v59);
    sub_100037B8C(v60);
    v61 = sub_1000847A8(v55, v54, &v66);

    *(v7 + 14) = v61;
    sub_100063DD4(&_mh_execute_header, v62, v56, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94();
    sub_100039E94();
  }

  else
  {
  }

  return v36;
}

id sub_10006B918(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_10006B988()
{
  result = qword_1000D4060;
  if (!qword_1000D4060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D4060);
  }

  return result;
}

unint64_t sub_10006B9CC()
{
  result = qword_1000D1F48;
  if (!qword_1000D1F48)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D1F48);
  }

  return result;
}

uint64_t sub_10006BA34()
{

  return swift_slowAlloc();
}

uint64_t sub_10006BA50(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1000847A8(0, 0xE000000000000000, va);
}

id sub_10006BA6C()
{
  v3 = *(v1 + 1832);

  return [v0 v3];
}

uint64_t sub_10006BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100012634(&unk_1000D3EC0, &qword_100093590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v25 - v10;
  sub_100058EDC(a3, v25 - v10, &unk_1000D3EC0, &qword_100093590);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100012898(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100012CB4(v11, &unk_1000D3EC0, &qword_100093590);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      sub_10006E7DC();
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

      sub_100012CB4(a3, &unk_1000D3EC0, &qword_100093590);

      return v23;
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

  sub_100012CB4(a3, &unk_1000D3EC0, &qword_100093590);
  sub_10006E7DC();
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

uint64_t sub_10006BD60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v124 = a7;
  v14 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v117 = v115 - v16;
  v17 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v126 = v115 - v19;
  v123 = type metadata accessor for URL();
  v20 = *(v123 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v123);
  v119 = v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = v115 - v24;
  v25 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v118 = v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v115 - v29;
  v130 = a1;
  v131 = a2;

  swift_task_localValuePush();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v125 = v30;
  v31 = type metadata accessor for SKLogger();
  v32 = sub_1000128C0(v31, qword_1000E4560);
  v33 = qword_1000D1AC8;

  if (v33 != -1)
  {
    swift_once();
  }

  v128 = qword_1000E4520;
  v129 = a9;
  TaskLocal.get()();
  v35 = v130;
  v34 = v131;
  v36 = static os_log_type_t.default.getter();

  v37 = Logger.logObject.getter();

  v38 = os_log_type_enabled(v37, v36);
  v120 = v20;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *v39 = 136446466;
    v130 = 91;
    v131 = 0xE100000000000000;
    v40._countAndFlagsBits = v35;
    v40._object = v34;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 8285;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);
    v42 = sub_1000847A8(v130, v131, &v134);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    v43 = sub_1000847A8(v124, a8, &v134);

    *(v39 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s%{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v44 = [objc_opt_self() currentContext];
  v45 = v126;
  v127 = a8;
  if (!v44)
  {
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v134 = 0xD00000000000002ELL;
    v135 = 0x80000001000A1E30;
    swift_beginAccess();
    v57._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v57);

    v58 = v134;
    v59 = v135;
    TaskLocal.get()();
    v61 = v134;
    v60 = v135;
    v62 = static os_log_type_t.error.getter();

    v63 = Logger.logObject.getter();

    if (os_log_type_enabled(v63, v62))
    {
      v64 = swift_slowAlloc();
      v124 = a11;
      v65 = v64;
      v141 = swift_slowAlloc();
      *v65 = 136446466;
      v134 = 91;
      v135 = 0xE100000000000000;
      v66._countAndFlagsBits = v61;
      v66._object = v60;
      String.append(_:)(v66);
      v67._countAndFlagsBits = 8285;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v68 = sub_1000847A8(v134, v135, &v141);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2082;
      v69 = sub_1000847A8(v58, v59, &v141);

      *(v65 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v63, v62, "%{public}s%{public}s", v65, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v86 = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  v46 = v44;
  v47 = [v44 remoteToken];
  if (!v47)
  {
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v70._object = 0x80000001000A1E60;
    v70._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v70);
    v71._countAndFlagsBits = v124;
    v71._object = a8;
    String.append(_:)(v71);
    v72._countAndFlagsBits = 0xD000000000000024;
    v72._object = 0x80000001000A1E80;
    String.append(_:)(v72);
    v73 = v130;
    v74 = v131;
    TaskLocal.get()();
    v76 = v130;
    v75 = v131;
    v77 = static os_log_type_t.error.getter();

    v78 = Logger.logObject.getter();

    if (os_log_type_enabled(v78, v77))
    {
      v79 = swift_slowAlloc();
      v124 = a11;
      v80 = v79;
      v81 = swift_slowAlloc();
      v116 = v46;
      v134 = v81;
      *v80 = 136446466;
      v130 = 91;
      v131 = 0xE100000000000000;
      v82._countAndFlagsBits = v76;
      v82._object = v75;
      String.append(_:)(v82);
      v83._countAndFlagsBits = 8285;
      v83._object = 0xE200000000000000;
      String.append(_:)(v83);
      v84 = sub_1000847A8(v130, v131, &v134);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2082;
      v85 = sub_1000847A8(v73, v74, &v134);

      *(v80 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v78, v77, "%{public}s%{public}s", v80, 0x16u);
      swift_arrayDestroy();
      v46 = v116;
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v105 = 1;
    swift_willThrow();

    goto LABEL_25;
  }

  v48 = v47;
  v115[1] = v32;
  v116 = v46;
  v124 = a11;
  [v47 realToken];
  v50 = v130;
  v49 = v131;
  v51 = v132;
  v52 = v133;

  v53 = type metadata accessor for ClientOverride(0);
  v54 = v125;
  sub_10001267C(v125, 1, 1, v53);
  v55 = type metadata accessor for Client(0);
  TaskLocal.get()();
  v115[0] = v55;
  v56 = v122;
  sub_100027A74();
  if (v56)
  {

    sub_10001267C(v45, 1, 1, v123);
    sub_100012CB4(v45, &qword_1000D1D58, &unk_1000954C0);
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v134 = 0xD00000000000001CLL;
    v135 = 0x80000001000A1E60;
    swift_beginAccess();
    v91._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v91);

    v92 = v134;
    v93 = v135;
    TaskLocal.get()();
    v95 = v134;
    v94 = v135;
    v96 = static os_log_type_t.error.getter();

    v97 = Logger.logObject.getter();

    if (os_log_type_enabled(v97, v96))
    {
      v98 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v98 = 136446466;
      v134 = 91;
      v135 = 0xE100000000000000;
      v99._countAndFlagsBits = v95;
      v99._object = v94;
      String.append(_:)(v99);
      v100._countAndFlagsBits = 8285;
      v100._object = 0xE200000000000000;
      String.append(_:)(v100);
      v101 = sub_1000847A8(v134, v135, &v141);

      *(v98 + 4) = v101;
      *(v98 + 12) = 2082;
      v102 = sub_1000847A8(v92, v93, &v141);

      *(v98 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v97, v96, "%{public}s%{public}s", v98, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v103 = v116;
    sub_100018F34();
    swift_allocError();
    *v104 = 1;
    swift_willThrow();

    sub_100012CB4(v125, &qword_1000D2000, qword_1000945D0);
LABEL_25:
    swift_task_localValuePop();
  }

  v87 = v123;
  sub_10001267C(v45, 0, 1, v123);
  v88 = v120;
  v89 = v45;
  v90 = v121;
  (*(v120 + 32))(v121, v89, v87);
  v136 = v50;
  v137 = v49;
  v138 = v51;
  v139 = v52;
  v140 = 0;
  (*(v88 + 16))(v119, v90, v87);
  sub_100058EDC(v54, v118, &qword_1000D2000, qword_1000945D0);
  sub_100025DD8();
  v108 = v107;
  v109 = type metadata accessor for TaskPriority();
  v110 = v117;
  sub_10001267C(v117, 1, 1, v109);
  v111 = swift_allocObject();
  v111[2] = 0;
  v111[3] = 0;
  v112 = v124;
  v111[4] = a10;
  v111[5] = v112;
  v113 = v129;
  v111[6] = v108;
  v111[7] = v113;

  v114 = v108;

  sub_10006BA84(0, 0, v110, &unk_100098660, v111);

  (*(v88 + 8))(v121, v87);
  sub_100012CB4(v125, &qword_1000D2000, qword_1000945D0);
  swift_task_localValuePop();
}

uint64_t sub_10006CB70(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_10006CC64;

  return v6(v2 + 16);
}

uint64_t sub_10006CC64()
{
  sub_100013A88();
  sub_10001937C();
  sub_1000540C0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_100019340();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_1000193B4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10006CD60()
{
  v1 = *(v0 + 88);
  sub_100019370();
  return v2();
}

uint64_t sub_10006CD84()
{
  v28 = v0;
  v1 = v0[11];
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10006E768();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    sub_1000128C0(v7, qword_1000E4560);
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v0[6] = 0;
    v0[7] = 0xE000000000000000;
    v8._object = 0x80000001000A1EB0;
    v8._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v0[8] = v1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v12 = v0[6];
    v11 = v0[7];
    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_1000847A8(0, 0xE000000000000000, v27);
      *(v15 + 12) = 2082;
      v16 = sub_1000847A8(v12, v11, v27);

      *(v15 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v23 = 7;
    swift_willThrow();

    v24 = v0[3];
    v25 = v0[5];

    sub_100019370();
  }

  else
  {
    v17 = v5;
    v18 = v6;
    v19 = v0[9];

    *v19 = v17;
    v19[1] = v18;
    v20 = v0[3];
    v21 = v0[5];

    sub_100019370();
  }

  return v22();
}

uint64_t sub_10006D0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000339DC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_1000128C0(v6, qword_1000E4560);
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v7._countAndFlagsBits = 0x656420726F727245;
    v7._object = 0xEF20676E69646F63;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 1635017028;
    v8._object = 0xE400000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v25 = v1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v10 = static os_log_type_t.error.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_1000847A8(0, 0xE000000000000000, &v20);
      *(v12 + 12) = 2082;
      v13 = sub_1000847A8(0, 0xE000000000000000, &v20);

      *(v12 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();
  }

  else
  {

    v15 = v21;
    v16 = v23;
    v17 = v24;
    v18 = v22;
    *a1 = v20;
    *(a1 + 8) = v15;
    *(a1 + 16) = v18;
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
  }

  return result;
}

uint64_t sub_10006D3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return _swift_task_switch(sub_10006D3EC, 0, 0);
}

uint64_t sub_10006D3EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v0 + 120) = v4;
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v0 + 128) = v5;
  v7 = *(v1 + 48);
  *(v0 + 136) = v7;
  LOBYTE(v1) = *(v1 + 56);
  *(v0 + 16) = v3;
  *(v0 + 57) = v1;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  *(v0 + 40) = v5;
  *(v0 + 48) = v7;
  *(v0 + 56) = v1;

  j__swift_bridgeObjectRetain();
  v13 = (v2 + *v2);
  v8 = v2[1];
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_10006D554;
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);

  return v13(v10, v0 + 16);
}

uint64_t sub_10006D554()
{
  sub_10001D674();
  sub_10001937C();
  sub_1000540C0();
  *v2 = v1;
  v4 = v3[18];
  v5 = *(v1 + 57);
  v6 = v3[17];
  v7 = v3[16];
  v8 = v3[15];
  v9 = *v0;
  sub_100019340();
  *v10 = v9;

  j__swift_bridgeObjectRelease();
  sub_100019370();

  return v11();
}

uint64_t sub_10006D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10006E7DC();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = &unk_100098638;
  v8[4] = 0;
  v8[5] = sub_10006DD5C;
  v8[6] = v7;
  v9 = swift_allocObject();
  swift_retain_n();
  v10 = v4;

  sub_10006D0C0(&v16);
  v11 = v17[0];
  *(v9 + 16) = v16;
  *(v9 + 32) = v11;
  *(v9 + 41) = *(v17 + 9);
  if (qword_1000D1AC8 != -1)
  {
    swift_once();
  }

  v12 = qword_1000E4520;
  v13 = *(v9 + 16);
  v14 = *(v9 + 24);

  sub_10006BD60(v13, v14, 0xD000000000000031, 0x80000001000A1DF0, 169, v12, 0xD00000000000001ELL, 0x80000001000A1DD0, v9, &unk_100098648, v8);
}

uint64_t sub_10006D988(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 64) = a1;
  v4 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v4;
  *(v3 + 41) = *(a3 + 25);
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_10006DA34;

  return sub_10004E644();
}

uint64_t sub_10006DA34()
{
  sub_10004AE50();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_10001937C();
  v11 = v10;
  sub_1000540C0();
  *v12 = v11;
  v14 = *(v13 + 72);
  v15 = *v1;
  sub_100019340();
  *v16 = v15;

  if (v0)
  {
    v17 = *(v15 + 8);

    return v17();
  }

  else
  {
    v11[10] = v3;
    v11[11] = v5;
    v11[12] = v7;
    v11[13] = v9;
    sub_1000193B4();

    return _swift_task_switch(v19, v20, v21);
  }
}

uint64_t sub_10006DB90()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v2->i64[0] = *(v0 + 104);
  v2->i64[1] = v1;
  v2[1] = vextq_s8(v3, v3, 8uLL);
  return sub_10004A778();
}

void sub_10006DC84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10006DD1C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006DD5C(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], a2);
}

uint64_t sub_10006DD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 96) = a4;
  *(v7 + 104) = a5;
  *(v7 + 80) = a1;
  *(v7 + 88) = a3;
  v8 = *(a2 + 8);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  *(v7 + 16) = *a2;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a2 + 16);
  *(v7 + 48) = v9;
  *(v7 + 56) = v10;
  return _swift_task_switch(sub_10006DDD8, 0, 0);
}

uint64_t sub_10006DDD8()
{
  sub_10001D674();
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *(v2 + 16) = *(v0 + 96);
  *(v2 + 32) = v1;
  *(v2 + 40) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_10006DEB0;
  v4 = *(v0 + 88);

  return sub_10006CB70(v0 + 64, dword_100098690);
}

uint64_t sub_10006DEB0()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_1000540C0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  sub_1000193B4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10006DFB4()
{
  sub_10001D674();
  v8 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  v6 = v0[8];
  v7 = v3;
  sub_100019008(v6, v3);
  v1(&v6, 0);
  sub_100019064(v6, v7);
  sub_100018DF0(v0[8], v0[9]);
  sub_100019370();

  return v4();
}

uint64_t sub_10006E03C()
{
  sub_10004AE50();
  v10 = v0;
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v9 = xmmword_100095310;
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 toASDErrorWithMetadata:0];

  v4(&v9, v6);

  sub_100019064(v9, *(&v9 + 1));
  sub_100019370();

  return v7();
}

uint64_t sub_10006E108()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E150()
{
  sub_10004AE50();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001D5E0;
  sub_10006E7C4();

  return v8();
}

uint64_t sub_10006E21C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  j__swift_bridgeObjectRelease();

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10006E268()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006E2B8()
{
  sub_10004AE50();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_10004A854(v7);
  *v8 = v9;
  v8[1] = sub_10001D270;
  sub_10004A8A4();
  sub_10006E7C4();

  return sub_10006D3C8(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10006E368()
{
  v1 = *(v0 + 24);

  sub_10006E7DC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006E39C()
{
  sub_10001D674();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  v6 = sub_10004A8A4();

  return v7(v6);
}

uint64_t sub_10006E440(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a1;
  v7 = *(a5 + 8);
  v8 = *(a5 + 32);
  v9 = *(a5 + 40);
  *(v5 + 16) = *a5;
  *(v5 + 24) = v7;
  *(v5 + 32) = *(a5 + 16);
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  v13 = (a2 + *a2);
  v10 = a2[1];
  v11 = swift_task_alloc();
  *(v5 + 104) = v11;
  *v11 = v5;
  v11[1] = sub_10006E574;

  return v13(v5 + 64, a4, v5 + 16);
}

uint64_t sub_10006E574()
{
  sub_100013A88();
  sub_10001937C();
  sub_1000540C0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_100019340();
  *v7 = v6;
  *(v8 + 112) = v0;

  sub_1000193B4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10006E670()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *v1 = *(v0 + 64);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return sub_10004A778();
}

uint64_t sub_10006E688()
{
  sub_100019370();
  v1 = *(v0 + 112);
  return v2();
}

uint64_t sub_10006E6AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10004A854(v5);
  *v6 = v7;
  v6[1] = sub_10001D270;
  v8 = sub_10004A8A4();

  return v9(v8);
}

unint64_t sub_10006E768()
{
  result = qword_1000D4090;
  if (!qword_1000D4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4090);
  }

  return result;
}

void *sub_10006E7E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10006E848();
}

uint64_t sub_10006E81C()
{
  v1 = *(v0 + 24);
  sub_1000704B8();
  return v1;
}

void *sub_10006E848()
{
  ObjectType = swift_getObjectType();
  v30 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v30);
  sub_10002FC5C();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_10002FC5C();
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_10002FC5C();
  v0[2] = 0;
  v0[4] = [objc_allocWithZone(type metadata accessor for StoreKitAngelService()) init];
  Logger.init(subsystem:category:)();
  sub_100012BAC(0, &qword_1000D4148, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100070520();
  sub_100012634(&qword_1000D4158, qword_100098740);
  sub_100070578();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v30);
  v0[3] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34.receiver = v0;
  v34.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v34, "init");
  sub_100012BAC(0, &qword_1000D4168, BSServiceConnectionListener_ptr);
  v11 = v10;
  v12 = sub_10006EDBC(sub_1000705DC, v11);
  v13 = v11[2];
  v11[2] = v12;

  if (v11[2])
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v14 = type metadata accessor for SKLogger();
    sub_1000128C0(v14, qword_1000E4560);
    sub_100070760();
    _StringGuts.grow(_:)(29);
    _typeName(_:qualified:)();
    sub_100070744();
    v32 = ObjectType;
    v33 = "";
    v15._countAndFlagsBits = 0xD00000000000001BLL;
    v15._object = 0x80000001000A2070;
    String.append(_:)(v15);
    v16 = ObjectType;
    v17 = static os_log_type_t.default.getter();
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v18 = type metadata accessor for SKLogger();
    sub_1000128C0(v18, qword_1000E4560);
    sub_100070760();
    _StringGuts.grow(_:)(37);
    _typeName(_:qualified:)();
    sub_100070744();
    v32 = ObjectType;
    v33 = "";
    v19._countAndFlagsBits = 0xD000000000000023;
    v19._object = 0x80000001000A2040;
    String.append(_:)(v19);
    v16 = ObjectType;
    v17 = static os_log_type_t.fault.getter();
  }

  v20 = v17;

  v21 = Logger.logObject.getter();

  if (os_log_type_enabled(v21, v20))
  {
    v22 = sub_100039EE0();
    v23 = sub_100039EC8();
    v32 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_100037CAC(v23, v24, &v32);
    *(v22 + 12) = 2082;
    v25 = sub_1000847A8(v16, "", &v32);

    *(v22 + 14) = v25;
    sub_100070774(&_mh_execute_header, v26, v27, "%{public}s%{public}s");
    sub_100037BD0();
    sub_10004AA1C();
    sub_100039E94();
  }

  else
  {
  }

  v28 = v11[2];
  if (v28)
  {
    [v28 activate];
  }

  return v11;
}

id sub_10006ECFC(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t sub_10006EDBC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_100070740;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10007073C;
  v9[3] = &unk_1000C13F0;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata listenerWithConfigurator:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006EF10()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60();
  }

  v4 = type metadata accessor for SKLogger();
  sub_1000128C0(v4, qword_1000E4560);
  _StringGuts.grow(_:)(31);
  _typeName(_:qualified:)();
  sub_100070744();
  v19[0] = ObjectType;
  v19[1] = v1;
  v5._object = 0x80000001000A2240;
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v5);
  v7 = ObjectType;
  v6 = v1;
  v8 = static os_log_type_t.default.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = sub_100039EE0();
    v11 = sub_100039EC8();
    v19[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_100037CAC(v11, v12, v19);
    *(v10 + 12) = 2082;
    v13 = sub_1000847A8(v7, v6, v19);

    *(v10 + 14) = v13;
    sub_100070774(&_mh_execute_header, v14, v15, "%{public}s%{public}s");
    sub_100037BD0();
    sub_10004AA1C();
    sub_100039E94();
  }

  else
  {
  }

  v16 = *(v2 + 16);
  if (v16)
  {
    [v16 invalidate];
    v17 = *(v2 + 16);
  }

  else
  {
    v17 = 0;
  }

  sub_1000498A0(v2 + OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitAngelServiceListener_logger);
  return v2;
}

uint64_t sub_10006F0F4()
{
  sub_10006EF10();
  v1 = *((swift_isaMask & *v0) + 0x30);
  v2 = *((swift_isaMask & *v0) + 0x34);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for StoreKitAngelServiceListener()
{
  result = qword_1000D4130;
  if (!qword_1000D4130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006F1B0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  aBlock = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001000A20F0;
  String.append(_:)(v7);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v8._countAndFlagsBits = 0x6F63206874697720;
  v8._object = 0xEF203A747865746ELL;
  String.append(_:)(v8);
  v33 = a3;
  v41 = a3;
  v32 = sub_100012634(&qword_1000D4230, qword_100098758);
  _print_unlocked<A, B>(_:_:)();
  v9 = static os_log_type_t.default.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = sub_100039EE0();
    v12 = sub_100039EC8();
    aBlock = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_100037CAC(v12, v13, &aBlock);
    *(v11 + 12) = 2082;
    v14 = sub_1000847A8(0, 0xE000000000000000, &aBlock);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    sub_100037BD0();
    sub_10004AA1C();
    sub_100039E94();
  }

  else
  {
  }

  sub_100012BAC(0, &qword_1000D4238, BSMutableServiceInterface_ptr);
  v15 = sub_10006F76C();
  sub_100012BAC(0, &qword_1000D4240, BSObjCProtocol_ptr);
  v16 = sub_10006F7DC(&OBJC_PROTOCOL____TtP22StoreKitUISceneService30StoreKitUISceneServiceProtocol_, sub_10006F7D0, 0);
  [v15 setServer:v16];

  [v15 setClientMessagingExpectation:1];
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v4;
  v17[4] = a2;
  v17[5] = ObjectType;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100070650;
  *(v18 + 24) = v17;
  v39 = sub_10007065C;
  v40 = v18;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10007073C;
  v38 = &unk_1000C1468;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  v21 = a2;

  [v21 configureConnection:v19];
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    aBlock = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v22._object = 0x80000001000A2140;
    v22._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v22);
    v41 = v21;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v23._countAndFlagsBits = 0x6F63206874697720;
    v23._object = 0xEF203A747865746ELL;
    String.append(_:)(v23);
    v41 = v33;
    _print_unlocked<A, B>(_:_:)();
    v25 = aBlock;
    v24 = v36;
    v26 = static os_log_type_t.default.getter();

    v27 = Logger.logObject.getter();

    if (os_log_type_enabled(v27, v26))
    {
      v28 = sub_100039EE0();
      v29 = sub_100039EC8();
      aBlock = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_100037CAC(v29, v30, &aBlock);
      *(v28 + 12) = 2082;
      v31 = sub_1000847A8(v25, v24, &aBlock);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v28, 0x16u);
      sub_100037BD0();
      sub_10004AA1C();
      sub_100039E94();
    }

    else
    {
    }

    [v21 activate];
  }
}

id sub_10006F76C()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier:v0];

  return v1;
}

id sub_10006F7DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v10[4] = sub_1000706E0;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10006F8DC;
    v10[3] = &unk_1000C15A8;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() protocolForProtocol:a1 interpreter:v7];
  _Block_release(v7);

  return v8;
}

id sub_10006F8DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_10006F930(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  [a1 setInterface:a2];
  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v9];

  [a1 setTargetQueue:*(a3 + 24)];
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v22 = sub_100070690;
  v23 = v10;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10006FE00;
  v21 = &unk_1000C14B8;
  v11 = _Block_copy(&v18);

  [a1 setActivationHandler:v11];
  _Block_release(v11);
  [a1 setInterfaceTarget:*(a3 + 32)];
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v22 = sub_1000706D0;
  v23 = v12;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10006FE00;
  v21 = &unk_1000C1508;
  v13 = _Block_copy(&v18);
  v14 = a4;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a5;
  v22 = sub_1000706D8;
  v23 = v15;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10006FE00;
  v21 = &unk_1000C1558;
  v16 = _Block_copy(&v18);
  v17 = v14;

  [a1 setInvalidationHandler:v16];
  _Block_release(v16);
}

void sub_10006FBCC()
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  sub_1000128C0(v0, qword_1000E4560);
  v7[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._object = 0x80000001000A21E0;
  v2._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v2);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = static os_log_type_t.default.getter();

  v4 = Logger.logObject.getter();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v7[0] = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000847A8(0, 0xE000000000000000, v7);
    *(v5 + 12) = 2082;
    v6 = sub_1000847A8(0, 0xE000000000000000, v7);

    *(v5 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v4, v3, "%{public}s%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10006FE00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10006FE68()
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  sub_1000128C0(v0, qword_1000E4560);
  v8[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x7463656E6E6F4320;
  v2._object = 0xEC000000206E6F69;
  String.append(_:)(v2);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._object = 0x80000001000A21C0;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  v4 = static os_log_type_t.error.getter();

  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v8[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000847A8(0, 0xE000000000000000, v8);
    *(v6 + 12) = 2082;
    v7 = sub_1000847A8(0, 0xE000000000000000, v8);

    *(v6 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s%{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1000700C0()
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  sub_1000128C0(v0, qword_1000E4560);
  v8[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x7463656E6E6F4320;
  v2._object = 0xEC000000206E6F69;
  String.append(_:)(v2);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._object = 0x80000001000A21A0;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  v4 = static os_log_type_t.default.getter();

  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v8[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000847A8(0, 0xE000000000000000, v8);
    *(v6 + 12) = 2082;
    v7 = sub_1000847A8(0, 0xE000000000000000, v8);

    *(v6 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s%{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10007031C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000703FC()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000704B8()
{
  result = qword_1000D4140;
  if (!qword_1000D4140)
  {
    sub_100012BAC(255, &qword_1000D4148, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4140);
  }

  return result;
}

unint64_t sub_100070520()
{
  result = qword_1000D4150;
  if (!qword_1000D4150)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4150);
  }

  return result;
}

unint64_t sub_100070578()
{
  result = qword_1000D4160;
  if (!qword_1000D4160)
  {
    sub_10001CEC4(&qword_1000D4158, qword_100098740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4160);
  }

  return result;
}

uint64_t sub_1000705F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070608()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007065C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100070698()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000706D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10006FE68();
}

void sub_1000706D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000700C0();
}

uint64_t sub_1000706E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100070744()
{
}

void sub_100070774(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

_BYTE *storeEnumTagSinglePayload for StoreKitAngelServiceName(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100070830);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100070878()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000711FC();
  }

  return v5 & 1;
}

uint64_t sub_1000708F0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000024;
  }

  else
  {
    v3 = 0x74694B65726F7453;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000010009D3E0;
  }

  if (a2)
  {
    v5 = 0xD000000000000024;
  }

  else
  {
    v5 = 0x74694B65726F7453;
  }

  if (a2)
  {
    v6 = 0x800000010009D3E0;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000711FC();
  }

  return v8 & 1;
}

uint64_t sub_100070988(unsigned __int8 a1, char a2)
{
  v2 = 0x65646F6378;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x65646F6378;
  switch(v4)
  {
    case 1:
      v5 = 0x67696C6674736574;
      v3 = 0xEA00000000007468;
      break;
    case 2:
      v5 = 0x69746375646F7270;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x67696C6674736574;
      v6 = 0xEA00000000007468;
      break;
    case 2:
      v2 = 0x69746375646F7270;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000711FC();
  }

  return v8 & 1;
}

Swift::Int sub_100070AFC()
{
  sub_10007123C();
  sub_100070D64();
  return Hasher._finalize()();
}

Swift::Int sub_100070B3C(Swift::UInt a1)
{
  sub_10007123C();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100070B7C()
{
  sub_10007123C();
  sub_1000711D0();
  return Hasher._finalize()();
}

Swift::Int sub_100070BBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100070C18(unsigned __int8 a1)
{
  sub_10007123C();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100070C58()
{
  sub_10007123C();
  sub_100071218();
  return Hasher._finalize()();
}

uint64_t sub_100070C94()
{
  String.hash(into:)();
}

uint64_t sub_100070D64()
{
  String.hash(into:)();
}

Swift::Int sub_100070E54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100070EA8()
{
  Hasher.init(_seed:)();
  sub_100070D64();
  return Hasher._finalize()();
}

Swift::Int sub_100070EEC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100070F30()
{
  Hasher.init(_seed:)();
  sub_100071218();
  return Hasher._finalize()();
}

Swift::Int sub_100070F70()
{
  Hasher.init(_seed:)();
  sub_1000711D0();
  return Hasher._finalize()();
}

Swift::Int sub_100070FA8(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100070FEC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL sub_1000710A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE830, v2);

  return v3 != 0;
}

BOOL sub_1000710FC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000710A8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100071130@<X0>(void *a1@<X8>)
{
  result = sub_10007108C();
  *a1 = 0xD000000000000039;
  a1[1] = v3;
  return result;
}

unint64_t sub_100071164()
{
  result = qword_1000D43D0;
  if (!qword_1000D43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D43D0);
  }

  return result;
}

uint64_t sub_1000711D0()
{

  return String.hash(into:)();
}

uint64_t sub_1000711FC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100071218()
{

  return String.hash(into:)();
}

uint64_t sub_10007123C()
{

  return Hasher.init(_seed:)();
}

BOOL sub_100071254()
{
  if ([v0 isProfileValidated])
  {
    return 0;
  }

  else
  {
    if (!sub_100009894())
    {
      return 1;
    }

    if (qword_1000D1B00 != -1)
    {
      swift_once();
    }

    return byte_1000E457A != 1 || !sub_100071AA4(4);
  }
}

id sub_1000712E4()
{
  result = [objc_opt_self() deviceIsiPad];
  if (result)
  {
    objc_opt_self();
    result = 1;
    if (swift_dynamicCastObjCClass())
    {
      v2 = v0;
      v3 = sub_100071E84();

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100071470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for SKLogger();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = [v2 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:isDirectory:)();
  v40 = *(v11 + 8);
  v40(v15, v10);
  sub_100012BAC(0, &qword_1000D1D68, NSDictionary_ptr);
  (*(v11 + 16))(v15, v17, v10);
  v19 = sub_100071A08(v15);
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  *&v42 = 0xD000000000000026;
  *(&v42 + 1) = 0x80000001000A2330;
  v21 = [v19 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  if (*(&v43 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_12;
    }

    URL.init(string:)();

    if (sub_100012898(v9, 1, v10) != 1)
    {
      v40(v17, v10);
      v36 = v41;
      (*(v11 + 32))(v41, v9, v10);
      v35 = 0;
      return sub_10001267C(v36, v35, 1, v10);
    }

    v22 = &qword_1000D1D58;
    v23 = &unk_1000954C0;
    v24 = v9;
  }

  else
  {

    v22 = &qword_1000D1D60;
    v23 = &qword_100093620;
    v24 = v44;
  }

  sub_100012CB4(v24, v22, v23);
LABEL_12:
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000128C0(v3, qword_1000E4560);
  v26 = v39;
  sub_100012C50(v25, v39);
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v27._countAndFlagsBits = 0xD00000000000003BLL;
  v27._object = 0x80000001000A22F0;
  String.append(_:)(v27);
  *&v42 = sub_100071F5C(v2);
  *(&v42 + 1) = v28;
  sub_100012634(&unk_1000D3A40, &qword_100094E90);
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  v30 = v44[0];
  v31 = static os_log_type_t.error.getter();
  v32 = Logger.logObject.getter();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    *&v44[0] = swift_slowAlloc();
    *v33 = 136446466;
    *(v33 + 4) = sub_1000847A8(0, 0xE000000000000000, v44);
    *(v33 + 12) = 2082;
    v34 = sub_1000847A8(v30, *(&v30 + 1), v44);

    *(v33 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000498A0(v26);
  v40(v17, v10);
  v35 = 1;
  v36 = v41;
  return sub_10001267C(v36, v35, 1, v10);
}

id sub_100071A08(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithContentsOfURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

BOOL sub_100071AA4(char a1)
{
  sub_100071BC4(9, &v6);
  if (!v7)
  {
    sub_100012CB4(&v6, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v6 = sub_1000816B4(a1);
  *(&v6 + 1) = v2;
  __chkstk_darwin(v6);
  v5[2] = &v6;
  v3 = sub_100081510(sub_100072004, v5, v5[5]);

  return v3;
}

double sub_100071BC4@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = [v2 entitlements];
  sub_100081800(a1);
  v6 = String._bridgeToObjectiveC()();

  sub_100012BAC(0, &qword_1000D43D8, NSObject_ptr);
  v7 = [v5 objectForKey:v6 ofClass:swift_getObjCClassFromMetadata()];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100071D30(char a1)
{
  sub_100071BC4(a1, &v3);
  if (v4)
  {
    result = sub_100072024();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_100012CB4(&v3, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  return result;
}

uint64_t sub_100071DCC()
{
  sub_100071BC4(10, &v2);
  if (v3)
  {
    if (sub_100072024() && (v1 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    sub_100012CB4(&v2, &qword_1000D1D60, &qword_100093620);
  }

  result = sub_100009894();
  if (result)
  {
    if (qword_1000D1AF8 != -1)
    {
      swift_once();
    }

    return byte_1000E4579;
  }

  return result;
}

uint64_t sub_100071E84()
{
  v1 = [v0 deviceFamilies];
  sub_100012BAC(0, &qword_1000D1D78, NSNumber_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [objc_allocWithZone(NSNumber) initWithInteger:2];
  v8 = v3;
  v7[2] = &v8;
  sub_1000815C0(sub_100071FE4, v7, v2);
  v5 = v4;

  return v5 & 1;
}

uint64_t sub_100071F5C(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100071FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000829E0() & 1;
}

uint64_t sub_100072024()
{

  return swift_dynamicCast();
}

uint64_t sub_100072044@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v26 = *(a2 - 8);
  v27 = a2;
  v7 = *(v26 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23);
  v24 = 1;
  if (sub_100012898(v21, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v21, v12);
    v29(v17, v10);
    (*(v13 + 8))(v17, v12);
    if (v5)
    {
      return (*(v26 + 32))(v28, v10, v27);
    }

    v24 = 0;
  }

  return sub_10001267C(a5, v24, 1, v30);
}

uint64_t sub_1000722B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727245707061 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F727245637078 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646F636E65 && a2 == 0xED0000726F727245;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x676E69646F636564 && a2 == 0xED0000726F727245)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100072418(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_10007243C(char a1)
{
  result = 0x726F727245707061;
  switch(a1)
  {
    case 1:
      result = 0x726F727245637078;
      break;
    case 2:
      result = 0x676E69646F636E65;
      break;
    case 3:
      result = 0x676E69646F636564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000724FC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100072418(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100072528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100072434(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10007255C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000722B8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000725A4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100072418(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000725CC(uint64_t a1)
{
  v2 = sub_1000761E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072608(uint64_t a1)
{
  v2 = sub_1000761E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072644(void *a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v89 = type metadata accessor for DecodingError();
  v5 = sub_100014A8C(v89);
  v88 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10002FC4C();
  v80 = v9 - v10;
  __chkstk_darwin(v11);
  sub_1000794CC(v77 - v12);
  v86 = type metadata accessor for EncodingError();
  v13 = sub_100014A8C(v86);
  v85 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_10002FC4C();
  v79 = v17 - v18;
  __chkstk_darwin(v19);
  sub_1000794CC(v77 - v20);
  v78 = *(a2 + 24);
  v84 = type metadata accessor for Optional();
  v21 = sub_100014A8C(v84);
  v82 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_1000794CC(v77 - v25);
  v26 = *(a2 + 16);
  sub_10001F2A0();
  v77[1] = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  sub_10002FC5C();
  v33 = v32 - v31;
  sub_10001F2A0();
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  sub_10002FC5C();
  v41 = v40 - v39;
  v42 = sub_100012634(&qword_1000D43E0, &qword_100098908);
  v43 = sub_100014A8C(v42);
  v93 = v44;
  v94 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  v48 = v77 - v47;
  v49 = a1[3];
  sub_100012980(a1, v49);
  sub_1000761E8();
  v92 = v48;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v35 + 16))(v41, v91, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v69 = v82;
      v70 = v81;
      v71 = v41;
      v72 = v84;
      v73 = (*(v82 + 32))(v81, v71, v84);
      __chkstk_darwin(v73);
      v77[-6] = v26;
      v74 = v90;
      v77[-5] = v78;
      v77[-4] = v74;
      *&v77[-3] = *(a2 + 32);
      sub_100072044(sub_1000762C0, &type metadata for Never, &type metadata for CodableNSError, v75, v96);
      *&v95[0] = *&v96[0];
      v98 = 1;
      sub_100012634(&qword_1000D43F8, &qword_100098910);
      sub_1000762E8();
      v51 = v94;
      v76 = v92;
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      (*(v69 + 8))(v70, v72);
      v53 = *(v93 + 8);
      v54 = v76;
      goto LABEL_7;
    case 2u:
      sub_1000794A8(&v99);
      v55 = v83;
      v56 = v86;
      v57(v83, v41, v86);
      v58 = *(v49 + 16);
      v59 = sub_1000794B8();
      v60(v59);
      sub_100072E70(v33, v96);
      v61 = 2;
      goto LABEL_5;
    case 3u:
      sub_1000794A8(&v100);
      v55 = v87;
      v56 = v89;
      v62(v87, v41, v89);
      v63 = *(v49 + 16);
      v64 = sub_1000794B8();
      v65(v64);
      sub_10007338C(v33, v96);
      v61 = 3;
LABEL_5:
      v98 = v61;
      sub_10007623C();
      v66 = v94;
      v67 = v92;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v95[0] = v96[0];
      v95[1] = v96[1];
      v95[2] = v97[0];
      v95[3] = v97[1];
      sub_100076290(v95);
      (*(v49 + 8))(v55, v56);
      result = (*(v93 + 8))(v67, v66);
      break;
    default:
      sub_1000794A8(v97);
      v50(v33, v41, v26);
      LOBYTE(v96[0]) = 0;
      v51 = v94;
      v52 = v92;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v49 + 8))(v33, v26);
      v53 = *(v93 + 8);
      v54 = v52;
LABEL_7:
      result = v53(v54, v51);
      break;
  }

  return result;
}

uint64_t sub_100072D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = _getErrorEmbeddedNSError<A>(_:)();
  if (v9)
  {
    v10 = v9;
    result = (*(v5 + 8))(v8, a2);
  }

  else
  {
    v10 = swift_allocError();
    result = (*(v5 + 32))(v12, v8, a2);
  }

  *a3 = v10;
  return result;
}

double sub_100072E70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for EncodingError.Context();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EncodingError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = *(v9 + 16);
  v16(&v45 - v14, a1, v8);
  if ((*(v9 + 88))(v15, v8) == enum case for EncodingError.invalidValue(_:))
  {
    v51 = a1;
    (*(v9 + 96))(v15, v8);
    v17 = *(sub_100012634(&qword_1000D4410, &qword_100098918) + 48);
    sub_100012AD4(v15, &v54);
    v49 = v4;
    v18 = *(v4 + 32);
    v50 = v3;
    v18(v7, &v15[v17], v3);
    sub_100012908(&v54, v58);
    v47 = String.init<A>(describing:)();
    v48 = v19;
    v20 = EncodingError.Context.codingPath.getter();
    v21 = *(v20 + 16);
    if (v21)
    {
      v46 = v7;
      v53 = _swiftEmptyArrayStorage;
      sub_100077764(0, v21, 0);
      v22 = v53;
      v45 = v20;
      v23 = v20 + 32;
      do
      {
        sub_100077784(v23, v58);
        sub_100012980(v58, v61);
        v24 = dispatch thunk of CodingKey.stringValue.getter();
        v26 = v25;
        sub_100012A18(v58);
        v53 = v22;
        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          sub_100077764((v27 > 1), v28 + 1, 1);
          v22 = v53;
        }

        v22[2] = v28 + 1;
        v29 = &v22[2 * v28];
        v29[4] = v24;
        v29[5] = v26;
        v23 += 40;
        --v21;
      }

      while (v21);

      v39 = v52;
      v7 = v46;
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
      v39 = v52;
    }

    v30 = EncodingError.Context.debugDescription.getter();
    v32 = v40;
    if (EncodingError.Context.underlyingError.getter())
    {
      swift_getErrorValue();
      v35 = Error.localizedDescription.getter();
      v34 = v41;
    }

    else
    {
      v35 = 0;
      v34 = 0;
    }

    (*(v9 + 8))(v51, v8);
    (*(v49 + 8))(v7, v50);
    sub_100012A18(&v54);
    v38 = 0;
    v36 = v48;
    v37 = v47;
  }

  else
  {
    v16(v13, a1, v8);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    v33 = *(v9 + 8);
    v33(a1, v8);
    v33(v15, v8);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 2;
    v22 = _swiftEmptyArrayStorage;
    v39 = v52;
  }

  *&v54 = v37;
  *(&v54 + 1) = v36;
  LOBYTE(v55) = v38;
  *(&v55 + 1) = *v66;
  DWORD1(v55) = *&v66[3];
  *(&v55 + 1) = v22;
  *&v56 = v30;
  *(&v56 + 1) = v32;
  *&v57 = v35;
  *(&v57 + 1) = v34;
  v58[0] = v37;
  v58[1] = v36;
  v59 = v38;
  *v60 = *v66;
  *&v60[3] = *&v66[3];
  v61 = v22;
  v62 = v30;
  v63 = v32;
  v64 = v35;
  v65 = v34;
  sub_1000763C0(&v54, &v53);
  sub_100076290(v58);
  v42 = v55;
  *v39 = v54;
  v39[1] = v42;
  result = *&v56;
  v44 = v57;
  v39[2] = v56;
  v39[3] = v44;
  return result;
}

double sub_10007338C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for DecodingError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v53 - v9);
  v11 = type metadata accessor for DecodingError.Context();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 16);
  v61 = a1;
  v16(v10, a1, v3);
  v17 = (*(v4 + 88))(v10, v3);
  v60 = v3;
  v59 = v4;
  if (v17 == enum case for DecodingError.typeMismatch(_:))
  {
    (*(v4 + 96))(v10, v3);
    v18 = sub_100012634(qword_1000D2A78, &qword_1000959C0);
    (*(v12 + 32))(v15, v10 + *(v18 + 48), v11);
    v56 = 0;
    v55 = 2;
    v19 = 2;
  }

  else if (v17 == enum case for DecodingError.valueNotFound(_:))
  {
    (*(v4 + 96))(v10, v3);
    v20 = sub_100012634(qword_1000D2A78, &qword_1000959C0);
    (*(v12 + 32))(v15, v10 + *(v20 + 48), v11);
    v56 = 0;
    v55 = 2;
    v19 = 3;
  }

  else
  {
    if (v17 == enum case for DecodingError.keyNotFound(_:))
    {
      (*(v4 + 96))(v10, v3);
      v46 = *(sub_100012634(&qword_1000D4418, &unk_100098928) + 48);
      sub_10002F650(v10, v68);
      (*(v12 + 32))(v15, v10 + v46, v11);
      sub_100012980(v68, v71);
      v54 = dispatch thunk of CodingKey.stringValue.getter();
      v56 = v47;
      sub_100012A18(v68);
      v19 = 1;
      v21 = v72;
      goto LABEL_6;
    }

    if (v17 != enum case for DecodingError.dataCorrupted(_:))
    {
      v48 = v61;
      v16(v8, v61, v3);
      v49 = v3;
      v34 = String.init<A>(describing:)();
      v50 = v4;
      v36 = v51;
      v52 = *(v50 + 8);
      v52(v48, v49);
      v52(v10, v49);
      v39 = 0;
      v37 = 0;
      v40 = 0;
      v41 = 2;
      v24 = _swiftEmptyArrayStorage;
      v42 = 4;
      v32 = v62;
      goto LABEL_17;
    }

    (*(v4 + 96))(v10, v3);
    (*(v12 + 32))(v15, v10, v11);
    v56 = 0;
    v55 = 2;
    v19 = 1;
  }

  v21 = &v71;
LABEL_6:
  *(v21 - 32) = v19;
  v57 = v12;
  v58 = v11;
  v22 = DecodingError.Context.codingPath.getter();
  v23 = *(v22 + 16);
  if (v23)
  {
    *&v64 = _swiftEmptyArrayStorage;
    sub_100077764(0, v23, 0);
    v24 = v64;
    v25 = v22 + 32;
    do
    {
      sub_100077784(v25, v68);
      sub_100012980(v68, v71);
      v26 = dispatch thunk of CodingKey.stringValue.getter();
      v28 = v27;
      sub_100012A18(v68);
      *&v64 = v24;
      v30 = v24[2];
      v29 = v24[3];
      if (v30 >= v29 >> 1)
      {
        sub_100077764((v29 > 1), v30 + 1, 1);
        v24 = v64;
      }

      v24[2] = v30 + 1;
      v31 = &v24[2 * v30];
      v31[4] = v26;
      v31[5] = v28;
      v25 += 40;
      --v23;
    }

    while (v23);

    v32 = v62;
    v33 = v61;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
    v33 = v61;
    v32 = v62;
  }

  v34 = DecodingError.Context.debugDescription.getter();
  v36 = v35;
  if (DecodingError.Context.underlyingError.getter())
  {
    swift_getErrorValue();
    v37 = Error.localizedDescription.getter();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  (*(v59 + 8))(v33, v60);
  (*(v57 + 8))(v15, v58);
  v40 = v56;
  v41 = v55;
  v42 = v54;
LABEL_17:
  *&v64 = v42;
  *(&v64 + 1) = v40;
  LOBYTE(v65) = v41;
  *(&v65 + 1) = *v73;
  DWORD1(v65) = *&v73[3];
  *(&v65 + 1) = v24;
  *&v66 = v34;
  *(&v66 + 1) = v36;
  *&v67 = v37;
  *(&v67 + 1) = v39;
  v68[0] = v42;
  v68[1] = v40;
  v69 = v41;
  *v70 = *v73;
  *&v70[3] = *&v73[3];
  v71 = v24;
  v72[0] = v34;
  v72[1] = v36;
  v72[2] = v37;
  v72[3] = v39;
  sub_1000763C0(&v64, v63);
  sub_100076290(v68);
  v43 = v65;
  *v32 = v64;
  v32[1] = v43;
  result = *&v66;
  v45 = v67;
  v32[2] = v66;
  v32[3] = v45;
  return result;
}

uint64_t sub_100073A60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v82 = a4;
  v83 = a7;
  sub_10001F2A0();
  v76 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_10002FC5C();
  sub_1000794CC(v17 - v16);
  v18 = sub_100012634(&qword_1000D4420, &qword_100098938);
  v19 = sub_100014A8C(v18);
  v84 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v73 - v23;
  v86 = a2;
  v80 = a3;
  v87 = a3;
  v77 = a5;
  v88 = a5;
  v78 = a6;
  v89 = a6;
  v25 = type metadata accessor for SwiftXPCError();
  v26 = sub_100014A8C(v25);
  v81 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_10002FC4C();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = (&v73 - v34);
  v36 = a1[3];
  v37 = a1[4];
  v95 = a1;
  sub_100012980(a1, v36);
  sub_1000761E8();
  v38 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    v39 = v95;
    return sub_100012A18(v39);
  }

  v74 = v32;
  v85 = a2;
  v75 = v35;
  v40 = v83;
  v41 = KeyedDecodingContainer.allKeys.getter();
  v42 = v18;
  if (!*(v41 + 16))
  {

    v39 = v95;
    goto LABEL_8;
  }

  v43 = *(v41 + 32);

  v44 = *(KeyedDecodingContainer.allKeys.getter() + 16);

  v39 = v95;
  if (v44 != 1)
  {
LABEL_8:
    v54 = type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    v57 = v39[4];
    sub_100012980(v39, v39[3]);
    dispatch thunk of Decoder.codingPath.getter();
    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v58._object = 0x80000001000A2360;
    v58._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v58);
    v59 = *(KeyedDecodingContainer.allKeys.getter() + 16);

    v92 = v59;
    v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v60);

    v61._countAndFlagsBits = 0x2E7379656B20;
    v61._object = 0xE600000000000000;
    String.append(_:)(v61);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, enum case for DecodingError.dataCorrupted(_:), v54);
    swift_willThrow();
    (*(v84 + 8))(v24, v42);
    return sub_100012A18(v39);
  }

  v45 = v40;
  switch(v43)
  {
    case 1:
      LOBYTE(v92) = 1;
      sub_10007797C();
      sub_100079480();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v65 = sub_100079498();
      v66(v65);
      sub_100012634(&qword_1000D43F8, &qword_100098910);
      v67 = v74;
      v68 = v80;
      v69 = swift_dynamicCast();
      sub_10001267C(v67, v69 ^ 1u, 1, v68);
      v52 = v25;
      swift_storeEnumTagMultiPayload();
      v53 = v81;
      v51 = v75;
      (*(v81 + 32))(v75, v67, v52);
      break;
    case 2:
      LOBYTE(v92) = 2;
      sub_100077928();
      sub_100079480();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v94[0] = sub_1000794D8();
      v94[1] = v63;
      v94[2] = v90;
      v94[3] = v91;
      v64 = v94;
      goto LABEL_13;
    case 3:
      LOBYTE(v92) = 3;
      sub_100077928();
      sub_100079480();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v93[0] = sub_1000794D8();
      v93[1] = v70;
      v93[2] = v90;
      v93[3] = v91;
      v64 = v93;
LABEL_13:
      v51 = v75;
      sub_1000741AC(v64, v75);
      v71 = sub_100079498();
      v72(v71);
      v52 = v25;
      v53 = v81;
      break;
    default:
      LOBYTE(v86) = 0;
      v46 = v79;
      v47 = v85;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v48 = sub_100079498();
      v49(v48);
      v50 = v46;
      v51 = v75;
      (*(v76 + 32))(v75, v50, v47);
      v52 = v25;
      swift_storeEnumTagMultiPayload();
      v53 = v81;
      break;
  }

  (*(v53 + 32))(v45, v51, v52);
  return sub_100012A18(v39);
}

uint64_t sub_1000741AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000741F4(a2);

  return sub_100076290(a1);
}

uint64_t sub_1000741F4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      v10 = *v1;
      switch(v4)
      {
        case 1:
        case 4:
          sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v6 = &enum case for DecodingError.dataCorrupted(_:);
          goto LABEL_11;
        case 2:
          v14 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
          *a1 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v6 = &enum case for DecodingError.typeMismatch(_:);
          goto LABEL_11;
        case 3:
          v11 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
          *a1 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v6 = &enum case for DecodingError.valueNotFound(_:);
          goto LABEL_11;
        default:
          v12 = *(sub_100012634(&qword_1000D4410, &qword_100098918) + 48);
          a1[3] = sub_100012634(&qword_1000D1D60, &qword_100093620);
          v13 = swift_allocObject();
          *a1 = v13;
          *(v13 + 16) = 0u;
          *(v13 + 32) = 0u;
          goto LABEL_5;
      }
    }

    v5 = *(sub_100012634(&qword_1000D4418, &unk_100098928) + 48);
    a1[3] = &type metadata for CodableCodingError.RemoteCodingKey;
    a1[4] = sub_1000779D0();
    *a1 = v4;
    a1[1] = v3;

    sub_100076890(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
    v6 = &enum case for DecodingError.keyNotFound(_:);
LABEL_11:
    v15 = *v6;
    v16 = type metadata accessor for DecodingError();
    (*(*(v16 - 8) + 104))(a1, v15, v16);
    type metadata accessor for SwiftXPCError();
  }

  else
  {
    v7 = *(sub_100012634(&qword_1000D4410, &qword_100098918) + 48);
    a1[3] = &type metadata for CodableCodingError.RemoteEncodableValue;
    *a1 = v4;
    a1[1] = v3;

LABEL_5:
    sub_100076890(&EncodingError.Context.init(codingPath:debugDescription:underlyingError:));
    v8 = enum case for EncodingError.invalidValue(_:);
    v9 = type metadata accessor for EncodingError();
    (*(*(v9 - 8) + 104))(a1, v8, v9);
    type metadata accessor for SwiftXPCError();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100074564(void *a1)
{
  v2 = objc_opt_self();
  v3 = _convertErrorToNSError(_:)();
  v19[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v19];

  v5 = v19[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = a1[4];
    sub_100012980(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100077BF0(v19, v19[3]);
    sub_100019008(v6, v8);
    sub_10001E308();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100018DF0(v6, v8);
    sub_100018DF0(v6, v8);
    return sub_100012A18(v19);
  }

  else
  {
    v11 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for EncodingError();
    swift_allocError();
    v14 = v13;
    v15 = *(sub_100012634(&qword_1000D4410, &qword_100098918) + 48);
    swift_getErrorValue();
    v14[3] = v18;
    v16 = sub_100012AE4(v14);
    (*(*(v18 - 8) + 16))(v16);
    v17 = a1[4];
    sub_100012980(a1, a1[3]);
    dispatch thunk of Encoder.codingPath.getter();
    swift_errorRetain();
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v14, enum case for EncodingError.invalidValue(_:), v12);
    swift_willThrow();
  }
}

void *sub_100074844(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100012980(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100012980(v16, v16[3]);
    sub_10001E244();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100012BAC(0, qword_1000D4450, NSKeyedUnarchiver_ptr);
    v5 = sub_100012BAC(0, &qword_1000D2688, NSError_ptr);
    v6 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v4 = v6;
    if (v6)
    {
      sub_100018DF0(v14, v15);
      sub_100012A18(v16);
      sub_100012A18(a1);
      return v4;
    }

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    v11 = sub_100012634(qword_1000D2A78, &qword_1000959C0);
    v17 = v14;
    v12 = *(v11 + 48);
    *v10 = v5;
    v13 = a1[4];
    v4 = sub_100012980(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.typeMismatch(_:), v8);
    swift_willThrow();
    sub_100018DF0(v17, v15);
    sub_100012A18(v16);
  }

  sub_100012A18(a1);
  return v4;
}

uint64_t sub_100074B74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001000A2420 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646F636E65 && a2 == 0xEF6E776F6E6B6E55;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001000A2440 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001000A2460 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001000A2480 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001000A24A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x676E69646F636564 && a2 == 0xEF6E776F6E6B6E55)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100074DBC(char a1)
{
  result = 0x676E69646F636E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 4:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E69646F636564;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_100074EA8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v61 = a4;
  v60 = a3;
  v62 = a2;
  v5 = sub_100012634(&qword_1000D4550, &qword_100098FD8);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v54 = &v43 - v7;
  v8 = sub_100012634(&qword_1000D4558, &qword_100098FE0);
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v57 = &v43 - v10;
  v11 = sub_100012634(&qword_1000D4560, &qword_100098FE8);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  __chkstk_darwin(v11);
  v51 = &v43 - v13;
  v14 = sub_100012634(&qword_1000D4568, &qword_100098FF0);
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  __chkstk_darwin(v14);
  v48 = &v43 - v16;
  v17 = sub_100012634(&qword_1000D4570, &qword_100098FF8);
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  __chkstk_darwin(v17);
  v45 = &v43 - v19;
  v20 = sub_100012634(&qword_1000D4578, &qword_100099000);
  v44 = *(v20 - 8);
  v21 = *(v44 + 64);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  v24 = sub_100012634(&qword_1000D4580, &qword_100099008);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v43 - v27;
  v29 = sub_100012634(&qword_1000D4588, &qword_100099010);
  v63 = *(v29 - 8);
  v64 = v29;
  v30 = *(v63 + 64);
  __chkstk_darwin(v29);
  v32 = &v43 - v31;
  v33 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_100078878();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v61)
  {
    if (v61 == 1)
    {
      v70 = 5;
      sub_100078920();
      v34 = v57;
      v35 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v59;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v58 + 8))(v34, v36);
      return (*(v63 + 8))(v32, v35);
    }

    else
    {
      switch(v62)
      {
        case 1:
          v67 = 2;
          sub_100078A1C();
          v40 = v45;
          v39 = v64;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v42 = v46;
          v41 = v47;
          goto LABEL_12;
        case 2:
          v68 = 3;
          sub_1000789C8();
          v40 = v48;
          v39 = v64;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v42 = v49;
          v41 = v50;
          goto LABEL_12;
        case 3:
          v69 = 4;
          sub_100078974();
          v40 = v51;
          v39 = v64;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v42 = v52;
          v41 = v53;
          goto LABEL_12;
        case 4:
          v71 = 6;
          sub_1000788CC();
          v40 = v54;
          v39 = v64;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v42 = v55;
          v41 = v56;
LABEL_12:
          (*(v42 + 8))(v40, v41);
          break;
        default:
          v66 = 1;
          sub_100078A70();
          v39 = v64;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v44 + 8))(v23, v20);
          break;
      }

      return (*(v63 + 8))(v32, v39);
    }
  }

  else
  {
    v65 = 0;
    sub_100078AC4();
    v38 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v25 + 8))(v28, v24);
    return (*(v63 + 8))(v32, v38);
  }
}

uint64_t sub_10007560C(uint64_t *a1)
{
  v2 = sub_100012634(&qword_1000D45D0, &qword_100099018);
  v3 = *(v2 - 8);
  v80 = v2;
  v81 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v88 = &v64 - v5;
  v77 = sub_100012634(&qword_1000D45D8, &qword_100099020);
  v82 = *(v77 - 8);
  v6 = *(v82 + 64);
  __chkstk_darwin(v77);
  v84 = &v64 - v7;
  v8 = sub_100012634(&qword_1000D45E0, &qword_100099028);
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  __chkstk_darwin(v8);
  v87 = &v64 - v10;
  v11 = sub_100012634(&qword_1000D45E8, &qword_100099030);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  __chkstk_darwin(v11);
  v86 = &v64 - v13;
  v14 = sub_100012634(&qword_1000D45F0, &qword_100099038);
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  __chkstk_darwin(v14);
  v83 = &v64 - v16;
  v17 = sub_100012634(&qword_1000D45F8, &qword_100099040);
  v71 = *(v17 - 8);
  v72 = v17;
  v18 = *(v71 + 64);
  __chkstk_darwin(v17);
  v20 = &v64 - v19;
  v21 = sub_100012634(&qword_1000D4600, &qword_100099048);
  v85 = *(v21 - 8);
  v22 = *(v85 + 64);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = sub_100012634(&qword_1000D4608, &unk_100099050);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v64 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v89 = a1;
  v32 = sub_100012980(a1, v30);
  sub_100078878();
  v33 = v90;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    goto LABEL_10;
  }

  v69 = v20;
  v70 = v24;
  v68 = v21;
  v35 = v86;
  v34 = v87;
  v36 = v88;
  v90 = v26;
  v37 = KeyedDecodingContainer.allKeys.getter();
  sub_10004E288(v37, 0);
  if (v39 == v40 >> 1)
  {
LABEL_9:
    v51 = type metadata accessor for DecodingError();
    swift_allocError();
    v53 = v52;
    v54 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
    *v53 = &type metadata for CodableCodingError.Code;
    v32 = v29;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v51 - 8) + 104))(v53, enum case for DecodingError.typeMismatch(_:), v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v90 + 8))(v29, v25);
LABEL_10:
    v55 = v89;
    goto LABEL_11;
  }

  v66 = 0;
  if (v39 >= (v40 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1000761A0);
  }

  v41 = v25;
  v65 = *(v38 + v39);
  v42 = sub_10004E284(v39 + 1);
  v44 = v43;
  v46 = v45;
  swift_unknownObjectRelease();
  v67 = v42;
  v47 = v85;
  if (v44 != v46 >> 1)
  {
    v25 = v41;
    goto LABEL_9;
  }

  v48 = v41;
  v49 = v66;
  switch(v65)
  {
    case 1:
      v92 = 1;
      sub_100078A70();
      v58 = v69;
      v32 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v89;
      if (v49)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v71 + 8))(v58, v72);
      (*(v90 + 8))(v29, v48);
      v32 = 0;
      break;
    case 2:
      v93 = 2;
      sub_100078A1C();
      v57 = v83;
      v32 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v89;
      if (v49)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v73 + 8))(v57, v74);
      (*(v90 + 8))(v29, v48);
      v32 = 1;
      break;
    case 3:
      v94 = 3;
      sub_1000789C8();
      v32 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v89;
      if (v49)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v75 + 8))(v35, v76);
      (*(v90 + 8))(v29, v48);
      v32 = 2;
      break;
    case 4:
      v95 = 4;
      sub_100078974();
      v32 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v89;
      if (v49)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v78 + 8))(v34, v79);
      (*(v90 + 8))(v29, v48);
      v32 = 3;
      break;
    case 5:
      v96 = 5;
      sub_100078920();
      v59 = v84;
      v32 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v89;
      if (v49)
      {
        goto LABEL_23;
      }

      v60 = v77;
      v61 = KeyedDecodingContainer.decode(_:forKey:)();
      v62 = v90;
      v32 = v61;
      swift_unknownObjectRelease();
      (*(v82 + 8))(v59, v60);
      (*(v62 + 8))(v29, v48);
      break;
    case 6:
      v97 = 6;
      sub_1000788CC();
      v32 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v89;
      if (v49)
      {
LABEL_23:
        (*(v90 + 8))(v29, v48);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v81 + 8))(v36, v80);
        (*(v90 + 8))(v29, v48);
        v32 = 4;
      }

      break;
    default:
      v91 = 0;
      sub_100078AC4();
      v50 = v70;
      v32 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v49)
      {
        (*(v90 + 8))(v29, v48);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v63 = v68;
      v32 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_unknownObjectRelease();
      (*(v47 + 8))(v50, v63);
      (*(v90 + 8))(v29, v48);
      v55 = v89;
      break;
  }

LABEL_11:
  sub_100012A18(v55);
  return v32;
}

void *sub_1000761BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100074844(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000761E8()
{
  result = qword_1000D43E8;
  if (!qword_1000D43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D43E8);
  }

  return result;
}

unint64_t sub_10007623C()
{
  result = qword_1000D43F0;
  if (!qword_1000D43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D43F0);
  }

  return result;
}

uint64_t sub_1000762C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_100072D30(a1, v2[3], a2);
}

unint64_t sub_1000762E8()
{
  result = qword_1000D4400;
  if (!qword_1000D4400)
  {
    sub_10001CEC4(&qword_1000D43F8, &qword_100098910);
    sub_10007636C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4400);
  }

  return result;
}

unint64_t sub_10007636C()
{
  result = qword_1000D4408;
  if (!qword_1000D4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4408);
  }

  return result;
}

uint64_t sub_100076400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100074B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100076428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100074DB4();
  *a1 = result;
  return result;
}

uint64_t sub_100076450(uint64_t a1)
{
  v2 = sub_100078878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007648C(uint64_t a1)
{
  v2 = sub_100078878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000764C8(uint64_t a1)
{
  v2 = sub_100078A1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076504(uint64_t a1)
{
  v2 = sub_100078A1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030D80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100076570(uint64_t a1)
{
  v2 = sub_100078920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000765AC(uint64_t a1)
{
  v2 = sub_100078920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000765E8(uint64_t a1)
{
  v2 = sub_1000789C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076624(uint64_t a1)
{
  v2 = sub_1000789C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076660(uint64_t a1)
{
  v2 = sub_1000788CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007669C(uint64_t a1)
{
  v2 = sub_1000788CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000766D8(uint64_t a1)
{
  v2 = sub_100078974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076714(uint64_t a1)
{
  v2 = sub_100078974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076750(uint64_t a1)
{
  v2 = sub_100078AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007678C(uint64_t a1)
{
  v2 = sub_100078AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000767C8(uint64_t a1)
{
  v2 = sub_100078A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076804(uint64_t a1)
{
  v2 = sub_100078A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10007560C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100076890(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = v1[3];
  v4 = *(v3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_1000777E8(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v23 = v5;
      v9 = v5[2];
      v10 = v5[3];

      if (v9 >= v10 >> 1)
      {
        sub_1000777E8((v10 > 1), v9 + 1, 1);
        v5 = v23;
      }

      v21 = &type metadata for CodableCodingError.RemoteCodingKey;
      v22 = sub_1000779D0();
      *&v20 = v7;
      *(&v20 + 1) = v8;
      v5[2] = v9 + 1;
      sub_10002F650(&v20, &v5[5 * v9 + 4]);
      v6 += 2;
      --v4;
    }

    while (v4);
    v2 = a1;
    v1 = v18;
  }

  v11 = v1[7];
  if (v11)
  {
    v12 = v1[6];
    sub_100077A64();
    v13 = swift_allocError();
    *v14 = v12;
    v14[1] = v11;
  }

  else
  {
    v13 = 0;
  }

  v16 = v1[4];
  v15 = v1[5];

  return v2(v5, v16, v15, v13);
}

uint64_t sub_100076A10(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v8 = 0;
            v18 = v28 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v8 = 0;
          v23 = v28;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v8 = 0;
          v12 = v28 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_61;
                }

                v17 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_61;
                }

                ++v15;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v21 = *result - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v8 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            v9 = (result + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_61;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v26 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = sub_10002E498(v6, a2, 10);
  v26 = v27;

LABEL_63:
  if (v26)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100076D54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150676E69646F63 && a2 == 0xEA00000000006874;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001000A23E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001000A2400 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100076EC0(char a1)
{
  result = 1701080931;
  switch(a1)
  {
    case 1:
      result = 0x6150676E69646F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100076F60(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D4500, &unk_100098DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_1000784DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v19 = *(v3 + 16);
  v17 = 0;
  sub_100078530();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v18 = *(v3 + 3);
    v17 = 1;
    sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
    sub_1000785D8(&qword_1000D4518);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 4);
    v12 = *(v3 + 5);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 6);
    v14 = *(v3 + 7);
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100077184@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100012634(&qword_1000D4520, &qword_100098E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_1000784DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100012A18(a1);
  }

  LOBYTE(v27) = 0;
  sub_100078584();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v31;
  v26 = v32;
  v39 = v33;
  sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  LOBYTE(v27) = 1;
  sub_1000785D8(&qword_1000D4530);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v31;
  LOBYTE(v31) = 2;
  *&v24 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v24 + 1) = v12;
  v40 = 3;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  v23 = v11;
  v18 = v25;
  v17 = v26;
  *&v27 = v11;
  *(&v27 + 1) = v26;
  LOBYTE(v11) = v39;
  LOBYTE(v28) = v39;
  v19 = *(&v24 + 1);
  *(&v28 + 1) = v25;
  v29 = v24;
  *&v30 = v13;
  *(&v30 + 1) = v16;
  sub_1000763C0(&v27, &v31);
  sub_100012A18(a1);
  v31 = v23;
  v32 = v17;
  v33 = v11;
  v34 = v18;
  v35 = v24;
  v36 = v19;
  v37 = v13;
  v38 = v16;
  result = sub_100076290(&v31);
  v21 = v28;
  *a2 = v27;
  a2[1] = v21;
  v22 = v30;
  a2[2] = v29;
  a2[3] = v22;
  return result;
}

uint64_t sub_1000774F8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100077528@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100077570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100076D14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100077598(uint64_t a1)
{
  v2 = sub_1000779D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000775D4(uint64_t a1)
{
  v2 = sub_1000779D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100076D54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077640(uint64_t a1)
{
  v2 = sub_1000784DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007767C(uint64_t a1)
{
  v2 = sub_1000784DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000776B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100077184(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1000776FC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_100076F60(a1);
}

char *sub_100077738(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100077764(char *a1, int64_t a2, char a3)
{
  result = sub_100077808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100077784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000777E8(void *a1, int64_t a2, char a3)
{
  result = sub_100077AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100077808(char *result, int64_t a2, char a3, char *a4)
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
    sub_100012634(&qword_1000D1D38, &qword_100098920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100077928()
{
  result = qword_1000D4428;
  if (!qword_1000D4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4428);
  }

  return result;
}

unint64_t sub_10007797C()
{
  result = qword_1000D4430;
  if (!qword_1000D4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4430);
  }

  return result;
}

unint64_t sub_1000779D0()
{
  result = qword_1000D4438;
  if (!qword_1000D4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4438);
  }

  return result;
}

uint64_t sub_100077A24()
{
  if (*(v0 + 40))
  {
    sub_100012A18((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100077A64()
{
  result = qword_1000D4440;
  if (!qword_1000D4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4440);
  }

  return result;
}

void *sub_100077AB8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100012634(&qword_1000D24A8, &qword_100094EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100012634(&qword_1000D4448, &qword_100098940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100077BF0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100077C80(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100077C9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100077CB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100077CF0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100077D70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for EncodingError();
      if (v7 <= 0x3F)
      {
        result = type metadata accessor for DecodingError();
        if (v8 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100077E14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(*(a3 + 24) - 8) + 84);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  v8 = *(*(type metadata accessor for EncodingError() - 8) + 64);
  v9 = *(*(type metadata accessor for DecodingError() - 8) + 64);
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 + 1;
  }

  if (v10 <= v5)
  {
    v10 = v5;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v9 > v10)
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 252) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_29:
      v17 = *(a1 + v10);
      if (v17 >= 4)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return (v11 | v16) + 253;
}

void sub_100078004(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(*(a4 + 24) - 8) + 84);
  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = *(*(type metadata accessor for EncodingError() - 8) + 64);
  v11 = *(*(type metadata accessor for DecodingError() - 8) + 64);
  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  if (v12 <= v7)
  {
    v12 = v7;
  }

  if (v10 > v12)
  {
    v12 = v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v13 = v11 + 1;
  v14 = 8 * (v11 + 1);
  if (a3 < 0xFD)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((a3 + ~(-1 << v14) - 252) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFC)
  {
    v16 = a2 - 253;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v11 != -1)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
LABEL_44:
        __break(1u);
        JUMPOUT(0x100078264);
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      case 2:
        *&a1[v13] = 0;
        goto LABEL_32;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_100078298(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000782D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100078328()
{
  result = qword_1000D44D8;
  if (!qword_1000D44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44D8);
  }

  return result;
}

unint64_t sub_100078380()
{
  result = qword_1000D44E0;
  if (!qword_1000D44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44E0);
  }

  return result;
}

unint64_t sub_1000783D8()
{
  result = qword_1000D44E8;
  if (!qword_1000D44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44E8);
  }

  return result;
}

unint64_t sub_100078430()
{
  result = qword_1000D44F0;
  if (!qword_1000D44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44F0);
  }

  return result;
}

unint64_t sub_100078488()
{
  result = qword_1000D44F8;
  if (!qword_1000D44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D44F8);
  }

  return result;
}

unint64_t sub_1000784DC()
{
  result = qword_1000D4508;
  if (!qword_1000D4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4508);
  }

  return result;
}

unint64_t sub_100078530()
{
  result = qword_1000D4510;
  if (!qword_1000D4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4510);
  }

  return result;
}

unint64_t sub_100078584()
{
  result = qword_1000D4528;
  if (!qword_1000D4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4528);
  }

  return result;
}

uint64_t sub_1000785D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001CEC4(&qword_1000D1D00, &qword_10009B1B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100078644(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

_BYTE *sub_10007865C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100078728);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100078774()
{
  result = qword_1000D4538;
  if (!qword_1000D4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4538);
  }

  return result;
}

unint64_t sub_1000787CC()
{
  result = qword_1000D4540;
  if (!qword_1000D4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4540);
  }

  return result;
}

unint64_t sub_100078824()
{
  result = qword_1000D4548;
  if (!qword_1000D4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4548);
  }

  return result;
}

unint64_t sub_100078878()
{
  result = qword_1000D4590;
  if (!qword_1000D4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4590);
  }

  return result;
}

unint64_t sub_1000788CC()
{
  result = qword_1000D4598;
  if (!qword_1000D4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4598);
  }

  return result;
}

unint64_t sub_100078920()
{
  result = qword_1000D45A0;
  if (!qword_1000D45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45A0);
  }

  return result;
}

unint64_t sub_100078974()
{
  result = qword_1000D45A8;
  if (!qword_1000D45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45A8);
  }

  return result;
}

unint64_t sub_1000789C8()
{
  result = qword_1000D45B0;
  if (!qword_1000D45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45B0);
  }

  return result;
}

unint64_t sub_100078A1C()
{
  result = qword_1000D45B8;
  if (!qword_1000D45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45B8);
  }

  return result;
}

unint64_t sub_100078A70()
{
  result = qword_1000D45C0;
  if (!qword_1000D45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45C0);
  }

  return result;
}

unint64_t sub_100078AC4()
{
  result = qword_1000D45C8;
  if (!qword_1000D45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableCodingError.Code.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CodableCodingError.Code.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100078C6CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100078CF8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100078D94);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100078DE0()
{
  result = qword_1000D4610;
  if (!qword_1000D4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4610);
  }

  return result;
}

unint64_t sub_100078E38()
{
  result = qword_1000D4618;
  if (!qword_1000D4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4618);
  }

  return result;
}

unint64_t sub_100078E90()
{
  result = qword_1000D4620;
  if (!qword_1000D4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4620);
  }

  return result;
}

unint64_t sub_100078EE8()
{
  result = qword_1000D4628;
  if (!qword_1000D4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4628);
  }

  return result;
}

unint64_t sub_100078F40()
{
  result = qword_1000D4630;
  if (!qword_1000D4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4630);
  }

  return result;
}

unint64_t sub_100078F98()
{
  result = qword_1000D4638;
  if (!qword_1000D4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4638);
  }

  return result;
}

unint64_t sub_100078FF0()
{
  result = qword_1000D4640;
  if (!qword_1000D4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4640);
  }

  return result;
}

unint64_t sub_100079048()
{
  result = qword_1000D4648;
  if (!qword_1000D4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4648);
  }

  return result;
}

unint64_t sub_1000790A0()
{
  result = qword_1000D4650;
  if (!qword_1000D4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4650);
  }

  return result;
}

unint64_t sub_1000790F8()
{
  result = qword_1000D4658;
  if (!qword_1000D4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4658);
  }

  return result;
}

unint64_t sub_100079150()
{
  result = qword_1000D4660;
  if (!qword_1000D4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4660);
  }

  return result;
}

unint64_t sub_1000791A8()
{
  result = qword_1000D4668;
  if (!qword_1000D4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4668);
  }

  return result;
}

unint64_t sub_100079200()
{
  result = qword_1000D4670;
  if (!qword_1000D4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4670);
  }

  return result;
}

unint64_t sub_100079258()
{
  result = qword_1000D4678;
  if (!qword_1000D4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4678);
  }

  return result;
}

unint64_t sub_1000792B0()
{
  result = qword_1000D4680;
  if (!qword_1000D4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4680);
  }

  return result;
}

unint64_t sub_100079308()
{
  result = qword_1000D4688;
  if (!qword_1000D4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4688);
  }

  return result;
}

unint64_t sub_100079360()
{
  result = qword_1000D4690;
  if (!qword_1000D4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4690);
  }

  return result;
}

unint64_t sub_1000793B8()
{
  result = qword_1000D4698;
  if (!qword_1000D4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4698);
  }

  return result;
}

unint64_t sub_100079410()
{
  result = qword_1000D46A0[0];
  if (!qword_1000D46A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D46A0);
  }

  return result;
}

__n128 sub_1000794D8()
{
  result = *(v0 - 296);
  v2 = *(v0 - 280);
  return result;
}

void *sub_100079530()
{
  v1 = v0;
  v3 = *v0;
  v2 = (v0 + 2);
  v4 = v3;
  if (os_unfair_lock_trylock(v2))
  {
    v5 = *(v4 + 80);
    sub_1000795E8(v1 + 3);
    type metadata accessor for ExportedObjectTaskTracker.State();
    os_unfair_lock_unlock(v2);
  }

  else
  {
    v6 = *(v4 + 80);
  }

  type metadata accessor for ExportedObjectTaskTracker.State();
  v7 = type metadata accessor for _Cell();
  sub_10007981C(v7);
  return v1;
}

uint64_t sub_1000795E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v16 = (v2 + 63) >> 6;

  v6 = 0;
  v18 = result;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(result + 56);
    v10 = (v6 << 9) | (8 * v8);
    v11 = *(v9 + v10);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v9 + v10);

      v14 = 32;
      do
      {
        v15 = *(v11 + v14);

        Task.cancel()();

        v14 += 8;
        --v12;
      }

      while (v12);

      result = v18;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v16)
    {
    }

    v4 = *(v17 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100079730()
{
  sub_100079530();

  return _swift_deallocClassInstance(v0, 32, 7);
}

char *sub_10007977C(uint64_t *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v1 = *a1;
  type metadata accessor for ExportedObjectTaskTracker.State();
  return type metadata accessor for Mutex();
}

uint64_t sub_1000797E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10007982C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007986C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000798BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657373696D736964 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100079994(char a1)
{
  if (a1)
  {
    return 0x6573616863727570;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t sub_1000799C8(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v32 = a2;
  v5 = sub_100012634(&qword_1000D47E8, &qword_100099AB8);
  sub_100014A8C(v5);
  v31 = v6;
  v8 = *(v7 + 64);
  sub_10002FF34();
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_100012634(&qword_1000D47F0, &qword_100099AC0);
  v13 = sub_100014A8C(v12);
  v29 = v14;
  v30 = v13;
  v16 = *(v15 + 64);
  sub_10002FF34();
  __chkstk_darwin(v17);
  sub_10007B14C();
  v18 = sub_100012634(&qword_1000D47F8, &qword_100099AC8);
  sub_100014A8C(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_10002FF34();
  __chkstk_darwin(v23);
  v25 = &v29 - v24;
  v26 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10007AB88();
  v27 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v27)
  {
    v35 = 1;
    sub_10007ABDC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v31 + 8))(v11, v5);
  }

  else
  {
    v34 = 0;
    sub_10007AC30();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v29 + 8))(v3, v30);
  }

  return (*(v20 + 8))(v25, v18);
}

uint64_t sub_100079C84(uint64_t *a1)
{
  v3 = sub_100012634(&qword_1000D4818, &qword_100099AD0);
  v55 = sub_100014A8C(v3);
  v56 = v4;
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  sub_10007B14C();
  v8 = sub_100012634(&qword_1000D4820, &qword_100099AD8);
  sub_100014A8C(v8);
  v54 = v9;
  v11 = *(v10 + 64);
  sub_10002FF34();
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = sub_100012634(&qword_1000D4828, &unk_100099AE0);
  sub_100014A8C(v15);
  v57 = v16;
  v18 = *(v17 + 64);
  sub_10002FF34();
  __chkstk_darwin(v19);
  v21 = v53 - v20;
  v22 = a1[4];
  v23 = sub_100012980(a1, a1[3]);
  sub_10007AB88();
  v24 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_9;
  }

  v58 = v14;
  v53[2] = v1;
  v25 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10004E288(v25, 0);
  if (v28 == v29 >> 1)
  {
    v30 = a1;
    goto LABEL_8;
  }

  if (v28 < (v29 >> 1))
  {
    v30 = a1;
    v59 = *(v27 + v28);
    v31 = sub_10004E284(v28 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v53[1] = v31;
      if (v59)
      {
        v61 = 1;
        sub_10007ABDC();
        sub_10007B170();
        v36 = v57;
        v23 = KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v48 = sub_10007B15C();
        v49(v48);
        v50 = *(v36 + 8);
        v51 = sub_10007B130();
        v52(v51);
      }

      else
      {
        v60 = 0;
        sub_10007AC30();
        sub_10007B170();
        v44 = v57;
        swift_unknownObjectRelease();
        (*(v54 + 8))(v58, v8);
        v45 = *(v44 + 8);
        v46 = sub_10007B130();
        v47(v46);
        v23 = 0;
      }

      goto LABEL_9;
    }

LABEL_8:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    v40 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
    *v39 = &type metadata for OfferDisplayResponse.Result;
    v23 = v21;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v57 + 8);
    v42 = sub_10007B130();
    v43(v42);
    a1 = v30;
LABEL_9:
    sub_100012A18(a1);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007A178(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10007A240(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_10007A268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v7 = sub_100012634(&qword_1000D47A8, &qword_100099918);
  sub_100014A8C(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_10002FF34();
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  v15 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10007A884();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v19 = v17;
    v20 = v18;
    v21 = 1;
    sub_10007A8D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_10007A3E8(uint64_t *a1)
{
  v3 = sub_100012634(&qword_1000D47C0, &qword_100099920);
  sub_100014A8C(v3);
  v5 = *(v4 + 64);
  sub_10002FF34();
  __chkstk_darwin(v6);
  sub_10007B14C();
  v7 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10007A884();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10007A92C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = sub_10007B13C();
    v10(v9);
  }

  sub_100012A18(a1);
  return v7;
}

uint64_t sub_10007A5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000798BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007A5DC(uint64_t a1)
{
  v2 = sub_10007AB88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A618(uint64_t a1)
{
  v2 = sub_10007AB88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A654(uint64_t a1)
{
  v2 = sub_10007AC30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A690(uint64_t a1)
{
  v2 = sub_10007AC30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A6CC(uint64_t a1)
{
  v2 = sub_10007ABDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A708(uint64_t a1)
{
  v2 = sub_10007ABDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A744@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100079C84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10007A794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007A178(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007A7BC(uint64_t a1)
{
  v2 = sub_10007A884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A7F8(uint64_t a1)
{
  v2 = sub_10007A884();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A834@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007A3E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10007A884()
{
  result = qword_1000D47B0;
  if (!qword_1000D47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47B0);
  }

  return result;
}

unint64_t sub_10007A8D8()
{
  result = qword_1000D47B8;
  if (!qword_1000D47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47B8);
  }

  return result;
}

unint64_t sub_10007A92C()
{
  result = qword_1000D47C8;
  if (!qword_1000D47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47C8);
  }

  return result;
}

uint64_t sub_10007A994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007A9E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10007AA38(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10007AA50(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10007AA84()
{
  result = qword_1000D47D0;
  if (!qword_1000D47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47D0);
  }

  return result;
}

unint64_t sub_10007AADC()
{
  result = qword_1000D47D8;
  if (!qword_1000D47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47D8);
  }

  return result;
}

unint64_t sub_10007AB34()
{
  result = qword_1000D47E0;
  if (!qword_1000D47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D47E0);
  }

  return result;
}

unint64_t sub_10007AB88()
{
  result = qword_1000D4800;
  if (!qword_1000D4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4800);
  }

  return result;
}

unint64_t sub_10007ABDC()
{
  result = qword_1000D4808;
  if (!qword_1000D4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4808);
  }

  return result;
}

unint64_t sub_10007AC30()
{
  result = qword_1000D4810;
  if (!qword_1000D4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4810);
  }

  return result;
}

_BYTE *sub_10007AC84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10007AD50);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferDisplayResponse.Result.PurchasedCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10007AE34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10007AE70()
{
  result = qword_1000D4830;
  if (!qword_1000D4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4830);
  }

  return result;
}

unint64_t sub_10007AEC8()
{
  result = qword_1000D4838;
  if (!qword_1000D4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4838);
  }

  return result;
}

unint64_t sub_10007AF20()
{
  result = qword_1000D4840;
  if (!qword_1000D4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4840);
  }

  return result;
}

unint64_t sub_10007AF78()
{
  result = qword_1000D4848;
  if (!qword_1000D4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4848);
  }

  return result;
}

unint64_t sub_10007AFD0()
{
  result = qword_1000D4850;
  if (!qword_1000D4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4850);
  }

  return result;
}

unint64_t sub_10007B028()
{
  result = qword_1000D4858;
  if (!qword_1000D4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4858);
  }

  return result;
}

unint64_t sub_10007B080()
{
  result = qword_1000D4860;
  if (!qword_1000D4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4860);
  }

  return result;
}

unint64_t sub_10007B0D8()
{
  result = qword_1000D4868;
  if (!qword_1000D4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4868);
  }

  return result;
}

uint64_t sub_10007B170()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

char *sub_10007B1F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v5);
  v7 = *(v6 + 64);
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = a1;
  a3();

  v12 = type metadata accessor for URL();
  v14 = 0;
  if (sub_10007CF54(v10) != 1)
  {
    v14 = v10;
    URL._bridgeToObjectiveC()(v13);
    sub_10007CF78();
    (*(v15 + 8))(v10, v12);
  }

  return v14;
}

uint64_t sub_10007B2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51[0] = a1;
  v3 = type metadata accessor for SKLogger();
  v4 = sub_100019360(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10002FC4C();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v12 = v51 - v11;
  v13 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v13);
  v15 = *(v14 + 64);
  sub_10002FF34();
  __chkstk_darwin(v16);
  v18 = v51 - v17;
  v19 = type metadata accessor for URL();
  v20 = sub_100014A8C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10002FC4C();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = v51 - v29;
  sub_10007B714(v18);
  if (sub_100012898(v18, 1, v19) == 1)
  {
    sub_1000379F4(v18);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v31 = sub_1000128C0(v3, qword_1000E4560);
    sub_100012C50(v31, v12);
    Logger.logObject.getter();
    v32 = sub_10007D004();
    sub_100019360(v32);
    (*(v33 + 8))(v12);
    v34 = static os_log_type_t.fault.getter();
    if (sub_10007CFEC(v34))
    {
      *sub_10007CFD4() = 0;
      sub_10007CF38(&_mh_execute_header, v35, v34, "Unable to determine path for StoreKit persistant data directory");
      sub_100063D00();
    }

    v36 = 1;
    v37 = v51[0];
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v22 + 8))(v18, v19);
    v38 = *(v22 + 32);
    v38(v30, v27, v19);
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v52 = 0;
    v42 = [v2 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:&v52];

    if (v42)
    {
      v43 = v52;
    }

    else
    {
      v44 = v52;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60();
      }

      v45 = sub_1000128C0(v3, qword_1000E4560);
      sub_100012C50(v45, v9);
      Logger.logObject.getter();
      v46 = sub_10007D004();
      sub_100019360(v46);
      (*(v47 + 8))(v9);
      v48 = static os_log_type_t.error.getter();
      if (sub_10007CFEC(v48))
      {
        v49 = sub_10007CFD4();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v9, v48, "Unable to create StoreKit persistant data directory", v49, 2u);
      }
    }

    v37 = v51[0];
    v38(v51[0], v30, v19);
    v36 = 0;
  }

  return sub_10001267C(v37, v36, 1, v19);
}

uint64_t sub_10007B714@<X0>(unint64_t a1@<X8>)
{
  v100 = type metadata accessor for SKLogger();
  v2 = *(*(v100 - 8) + 64);
  v3 = __chkstk_darwin(v100);
  v97 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v86 - v5;
  v7 = type metadata accessor for URLResourceValues();
  v104 = *(v7 - 8);
  v8 = *(v104 + 64);
  __chkstk_darwin(v7);
  v96 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v108 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v86 - v15;
  v17 = [objc_opt_self() defaultManager];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 containerURLForSecurityApplicationGroupIdentifier:v18];

  if (!v19)
  {
    if (qword_1000D1AE8 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v89 = v7;
  v92 = a1;
  v107 = v16;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100012634(&qword_1000D4870, &qword_100099DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093330;
  *(inited + 32) = 0x746E656D75636F44;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = NSFileProtectionNone;
  *(inited + 56) = 1;
  *(inited + 64) = 0x7972617262694CLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = NSFileProtectionNone;
  *(inited + 88) = 0;
  strcpy((inited + 96), "Library/Caches");
  *(inited + 111) = -18;
  *(inited + 112) = NSFileProtectionNone;
  *(inited + 120) = 1;
  v21 = NSFileProtectionNone;
  sub_100012634(&qword_1000D4878, &qword_100099DE0);
  v22 = Dictionary.init(dictionaryLiteral:)();
  v23 = 0;
  v98 = 0;
  v24 = v11;
  v26 = v22 + 64;
  v25 = *(v22 + 64);
  v106 = v22;
  v27 = 1 << *(v22 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  a1 = v28 & v25;
  v29 = (v27 + 63) >> 6;
  v95 = NSFileProtectionKey;
  v30 = v105;
  v88 = (v104 + 8);
  v91 = v24;
  v103 = (v24 + 8);
  *(&v31 + 1) = 2;
  v94 = xmmword_100094DD0;
  *&v31 = 136446466;
  v90 = v31;
  v104 = v29;
  v99 = v10;
  v93 = v22 + 64;
  while (a1)
  {
    v32 = v23;
LABEL_11:
    v33 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v34 = (v32 << 10) | (16 * v33);
    v35 = (*(v106 + 48) + v34);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v106 + 56) + v34;
    v39 = *v38;
    LODWORD(v101) = *(v38 + 8);

    v40 = v39;
    v41 = v108;
    URL.appendingPathComponent(_:)();

    swift_beginAccess();
    if (sub_100039EF8())
    {
      (*v103)(v41, v10);

      v23 = v32;
      v29 = v104;
    }

    else
    {
      v102 = v40;
      URL._bridgeToObjectiveC()(v42);
      v44 = v43;
      v109[0] = 0;
      v45 = [v30 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:v109];

      v46 = v109[0];
      if (v45)
      {
        sub_100012634(&qword_1000D4880, &qword_100099DE8);
        v47 = swift_initStackObject();
        *(v47 + 16) = v94;
        v48 = v95;
        *(v47 + 32) = v95;
        type metadata accessor for FileProtectionType(0);
        *(v47 + 64) = v49;
        v50 = v102;
        *(v47 + 40) = v102;
        type metadata accessor for FileAttributeKey(0);
        sub_10007CED4(&qword_1000D1F78, type metadata accessor for FileAttributeKey);
        v51 = v50;
        v52 = v41;
        v87 = v51;
        v53 = v46;
        v54 = v48;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        URL.path.getter();
        v56 = String._bridgeToObjectiveC()();

        v109[0] = 0;
        v57 = [v105 setAttributes:isa ofItemAtPath:v56 error:v109];

        if (!v57)
        {
          v62 = v109[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v98 = 0;
          v26 = v93;
          goto LABEL_20;
        }

        v58 = v109[0];
        v59 = v96;
        URLResourceValues.init()();
        URLResourceValues.isExcludedFromBackup.setter();
        swift_beginAccess();
        v60 = v98;
        URL.setResourceValues(_:)();
        v26 = v93;
        if (!v60)
        {
          v98 = 0;
          swift_endAccess();

          (*v88)(v59, v89);
          v75 = *v103;
          v76 = v52;
          goto LABEL_25;
        }

        swift_endAccess();
        (*v88)(v59, v89);
      }

      else
      {
        v61 = v109[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v98 = 0;
LABEL_20:
      if (qword_1000D1AE8 != -1)
      {
        swift_once();
      }

      v63 = sub_1000128C0(v100, qword_1000E4560);
      v64 = v97;
      sub_100012C50(v63, v97);
      swift_errorRetain();
      v65 = Logger.logObject.getter();
      v66 = type metadata accessor for Logger();
      (*(*(v66 - 8) + 8))(v64, v66);
      v67 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v65, v67))
      {
        v68 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v109[0] = v101;
        *v68 = v90;
        sub_10007CED4(&qword_1000D27F0, &type metadata accessor for URL);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = sub_1000847A8(v69, v70, v109);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2082;
        swift_getErrorValue();
        v72 = Error.localizedDescription.getter();
        v74 = sub_1000847A8(v72, v73, v109);

        *(v68 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v65, v67, "Failed to create directory %{public}s and set attributes: %{public}s", v68, 0x16u);
        swift_arrayDestroy();

        v10 = v99;

        (*v103)(v108, v10);
        goto LABEL_26;
      }

      v75 = *v103;
      v76 = v108;
LABEL_25:
      v10 = v99;
      v75(v76, v99);
LABEL_26:
      v23 = v32;
      v29 = v104;
      v30 = v105;
    }
  }

  v6 = v107;
  while (1)
  {
    v32 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      v77 = v92;
      (*(v91 + 32))(v92, v6, v10);
      v78 = v77;
      v79 = 0;
      return sub_10001267C(v78, v79, 1, v10);
    }

    a1 = *(v26 + 8 * v32);
    ++v23;
    if (a1)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_30:
  v80 = sub_1000128C0(v100, qword_1000E4560);
  sub_100012C50(v80, v6);
  v81 = Logger.logObject.getter();
  v82 = type metadata accessor for Logger();
  (*(*(v82 - 8) + 8))(v6, v82);
  v83 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v81, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v81, v83, "Unable to determine StoreKit container URL", v84, 2u);
  }

  v78 = a1;
  v79 = 1;
  return sub_10001267C(v78, v79, 1, v10);
}

char *sub_10007C200(void *a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v9);
  v11 = *(v10 + 64);
  sub_10002FF34();
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  v15 = a1;
  sub_10007C324(a3, a4, a5);

  v16 = type metadata accessor for URL();
  v18 = 0;
  if (sub_10007CF54(v14) != 1)
  {
    v18 = v14;
    URL._bridgeToObjectiveC()(v17);
    sub_10007CF78();
    (*(v19 + 8))(v14, v16);
  }

  return v18;
}

uint64_t sub_10007C324(SEL *a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  sub_10007CF6C();
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = sub_100014A8C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10002FC5C();
  v17 = v16 - v15;
  v18 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v19 = sub_10002FD0C(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10002FC4C();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = v34 - v26;
  v28 = [v8 *a1];
  if (v28)
  {
    v29 = v28;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = type metadata accessor for URL();
    v31 = 0;
  }

  else
  {
    v30 = type metadata accessor for URL();
    v31 = 1;
  }

  sub_10001267C(v24, v31, 1, v30);
  sub_100037984(v24, v27);
  type metadata accessor for URL();
  if (sub_100012898(v27, 1, v30) == 1)
  {
    sub_1000379F4(v27);
    v32 = 1;
  }

  else
  {
    v34[0] = a2;
    v34[1] = a3;
    (*(v12 + 104))(v17, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100012B58();
    URL.appending<A>(component:directoryHint:)();
    (*(v12 + 8))(v17, v9);
    (*(*(v30 - 8) + 8))(v27, v30);
    v32 = 0;
  }

  return sub_10001267C(v3, v32, 1, v30);
}

uint64_t sub_10007C594()
{
  sub_10007CF6C();
  v1 = type metadata accessor for SKLogger();
  v2 = sub_100019360(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10002FC5C();
  v7 = v6 - v5;
  v8 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v8);
  v10 = *(v9 + 64);
  sub_10002FF34();
  __chkstk_darwin(v11);
  v12 = sub_10007CFB4();
  v13 = sub_100014A8C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10002FC5C();
  sub_10007B714(v0);
  if (sub_10007CF54(v0) == 1)
  {
    sub_1000379F4(v0);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v16 = sub_1000128C0(v1, qword_1000E4560);
    sub_100012C50(v16, v7);
    v17 = v7;
    Logger.logObject.getter();
    v18 = sub_10007D004();
    sub_100019360(v18);
    (*(v19 + 8))(v7);
    v20 = static os_log_type_t.fault.getter();
    if (sub_10007CFEC(v20))
    {
      *sub_10007CFD4() = 0;
      sub_10007CF38(&_mh_execute_header, v21, v20, "Unable to determine path for StoreKit caches directory");
      sub_100063D00();
    }

    v23 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v24 = sub_10007CFA0();
    v25(v24);
    v26 = sub_10007CF8C();
    v22 = v27(v26);
    v23 = 0;
  }

  return sub_10007CF1C(v22, v23);
}

uint64_t sub_10007C7DC()
{
  v1 = v0;
  sub_10007CF6C();
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = sub_100014A8C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10002FC5C();
  v10 = v9 - v8;
  v11 = type metadata accessor for URL();
  v12 = sub_100014A8C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10002FC5C();
  v19 = v18 - v17;
  v20 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v21 = sub_10002FD0C(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10002FC4C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = v36 - v28;
  v30 = [v1 sk_cachedDataURL];
  if (v30)
  {
    v31 = v30;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  sub_10001267C(v29, v32, 1, v11);
  sub_100037A5C(v29, v26);
  if (sub_10007CF54(v26) == 1)
  {
    v33 = sub_1000379F4(v29);
    v34 = 1;
  }

  else
  {
    (*(v14 + 32))(v19, v26, v11);
    strcpy(v36, "storeUser.db");
    HIBYTE(v36[6]) = 0;
    v36[7] = -5120;
    (*(v5 + 104))(v10, enum case for URL.DirectoryHint.notDirectory(_:), v2);
    sub_100012B58();
    URL.appending<A>(component:directoryHint:)();
    (*(v5 + 8))(v10, v2);
    (*(v14 + 8))(v19, v11);
    v33 = sub_1000379F4(v29);
    v34 = 0;
  }

  return sub_10007CF1C(v33, v34);
}

uint64_t sub_10007CAA4()
{
  sub_10007CF6C();
  v1 = type metadata accessor for SKLogger();
  v2 = sub_100019360(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10002FC5C();
  v7 = v6 - v5;
  v8 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v8);
  v10 = *(v9 + 64);
  sub_10002FF34();
  __chkstk_darwin(v11);
  v12 = sub_10007CFB4();
  v13 = sub_100014A8C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10002FC5C();
  sub_10007CCCC(v0);
  if (sub_10007CF54(v0) == 1)
  {
    sub_1000379F4(v0);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60();
    }

    v16 = sub_1000128C0(v1, qword_1000E4560);
    sub_100012C50(v16, v7);
    v17 = v7;
    Logger.logObject.getter();
    v18 = sub_10007D004();
    sub_100019360(v18);
    (*(v19 + 8))(v7);
    v20 = static os_log_type_t.fault.getter();
    if (sub_10007CFEC(v20))
    {
      *sub_10007CFD4() = 0;
      sub_10007CF38(&_mh_execute_header, v21, v20, "Unable to determine path for iTunesStore library directory");
      sub_100063D00();
    }

    v23 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v24 = sub_10007CFA0();
    v25(v24);
    v26 = sub_10007CF8C();
    v22 = v27(v26);
    v23 = 0;
  }

  return sub_10007CF1C(v22, v23);
}

void *sub_10007CCCC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SKLogger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CPSharedResourcesDirectory();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = 0;
    v15 = 0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v15)
    {
      URL.init(string:)();
    }
  }

  else
  {
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000128C0(v2, qword_1000E4560);
  sub_100012C50(v8, v5);
  v9 = Logger.logObject.getter();
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v5, v10);
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, v11, "Unable to determine path for shared resources directory", v12, 2u);
  }

  v13 = type metadata accessor for URL();
  return sub_10001267C(a1, 1, 1, v13);
}

uint64_t sub_10007CED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007CF1C(uint64_t a1, uint64_t a2)
{

  return sub_10001267C(v2, a2, 1, v3);
}

void sub_10007CF38(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_10007CF54(uint64_t a1)
{

  return sub_100012898(a1, 1, v1);
}

uint64_t sub_10007CFB4()
{

  return type metadata accessor for URL();
}

uint64_t sub_10007CFD4()
{

  return swift_slowAlloc();
}

BOOL sub_10007CFEC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10007D004()
{

  return type metadata accessor for Logger();
}

id sub_10007D01C(uint64_t a1)
{
  v2 = v1;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      type metadata accessor for ASDError(0);
      sub_10007D238(_swiftEmptyArrayStorage);
      sub_100020A24();
      _BridgedStoredNSError.init(_:userInfo:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = _BridgedStoredNSError.errorCode.getter();

      goto LABEL_6;
    case 15:
      v4 = 1;
      goto LABEL_6;
    case 16:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = 500;
LABEL_6:
      v5 = String._bridgeToObjectiveC()();

      v3 = [v2 initWithDomain:v5 code:v4 userInfo:0];

      break;
    default:
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v3 = 0;
      break;
  }

  return v3;
}

unint64_t sub_10007D238(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100012634(&qword_1000D31D0, &qword_100096B00);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_10007D3E8(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_10007D370(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100012AD4(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_10007D370(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10007D458(a1, a2, v6);
}

uint64_t sub_10007D3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D4888, qword_100099DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007D458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10007D520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100012898(a1, a2, v4);
}

uint64_t sub_10007D57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_10001267C(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SKLogger()
{
  result = qword_1000D48E8;
  if (!qword_1000D48E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D614()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007D680()
{
  v0 = type metadata accessor for SKLogger();
  sub_10007D6F8(v0, qword_1000E4560);
  sub_1000128C0(v0, qword_1000E4560);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10007D6F8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10007D770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = sub_100012634(&qword_1000D2800, qword_100099E20);
      v11 = *(a3 + 40);
    }

    return sub_100012898(a1 + v11, a2, v10);
  }
}