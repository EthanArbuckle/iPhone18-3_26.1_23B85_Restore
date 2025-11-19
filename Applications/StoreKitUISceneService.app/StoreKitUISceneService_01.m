id sub_1000213F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDefaultsManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100021448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDefaultsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_1000214A4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000D2698 = result;
  return result;
}

CFTypeID sub_1000214DC()
{
  if (qword_1000D1AC0 != -1)
  {
    sub_1000216B0();
  }

  v0 = off_1000D1AB8;
  v1 = qword_1000D2698;
  if (v0 != -1)
  {
    sub_100021690();
  }

  v2 = CFPreferencesCopyAppValue(v1, qword_1000E4490);

  if (!v2)
  {
    return 0;
  }

  v3 = swift_unknownObjectRetain();
  v4 = CFGetTypeID(v3);
  if (v4 != CFDataGetTypeID())
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  type metadata accessor for CFData(0);
  sub_1000216E0();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1000216EC(v5);
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10002170C();

  return v4;
}

void sub_1000215CC()
{
  v0.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (qword_1000D1AC0 != -1)
  {
    sub_1000216B0();
  }

  v1 = off_1000D1AB8;
  v2 = qword_1000D2698;
  v6 = v0.super.isa;
  if (v1 != -1)
  {
    sub_100021690();
  }

  v3 = sub_1000216D0();
  CFPreferencesSetAppValue(v3, v4, v5);

  CFPreferencesAppSynchronize(*(v0.super.isa + 146));
}

uint64_t sub_100021690()
{

  return swift_once();
}

uint64_t sub_1000216B0()
{

  return swift_once();
}

uint64_t sub_1000216EC(uint64_t a1)
{

  return _swift_dynamicCastUnknownClassUnconditional(a1, v1, 0, 0, 0);
}

uint64_t sub_10002170C()
{

  return swift_unknownObjectRelease_n();
}

uint64_t getEnumTagSinglePayload for StoreKitFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoreKitFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100021880);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000218BC()
{
  result = qword_1000D26C8;
  if (!qword_1000D26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D26C8);
  }

  return result;
}

const char *sub_100021924(char a1)
{
  if (!a1)
  {
    return "UseStoreKitBag";
  }

  if (a1 == 1)
  {
    return "UseStoreKitService";
  }

  return "UseTransactionCacheManager";
}

Swift::Int sub_1000219A0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100021A24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = sub_100083AE0();
    if (v4)
    {
      v5 = (*(a2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
    }
  }

  return sub_10002FD24();
}

double sub_100021A90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_10007D370(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_100030040(v5);

    sub_100012908(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_100021AEC@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    v6 = sub_100030040(v4);

    sub_100012908(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100021B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10007D370(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for Client.TimedClientOverride(0);
    sub_10002D638(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for Client.TimedClientOverride(0);
    v11 = a4;
    v12 = 1;
  }

  return sub_10001267C(v11, v12, 1, v13);
}

double sub_100021C10@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_100083350(), (v4 & 1) != 0))
  {
    v5 = sub_100030040(v3);

    sub_100012908(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100021C6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1000834D8();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100021CB8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = sub_100021E68(a1, a2);
  if (a1)
  {
    if (v9)
    {
      v11 = v10 - v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = a4 >> 62;
    v13 = BYTE6(a4);
    switch(v12)
    {
      case 1uLL:
        LODWORD(v14) = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          __break(1u);
        }

        else
        {
          v14 = v14;
LABEL_15:
          if (v11 == v14)
          {
LABEL_16:
            sub_10002F330();
            result = dispatch thunk of DataProtocol.copyBytes(to:count:)();
            v20 = a1[1];
            *a5 = *a1;
            a5[1] = v20;
            return result;
          }

          if (!v12)
          {
            goto LABEL_22;
          }

          if (v12 != 1)
          {
            v22 = *(a3 + 16);
            v21 = *(a3 + 24);
            v13 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
              goto LABEL_22;
            }

LABEL_26:
            __break(1u);
            JUMPOUT(0x100021E58);
          }

          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            v13 = HIDWORD(a3) - a3;
LABEL_22:
            sub_10002F2DC();
            swift_allocError();
            *v23 = v11;
            *(v23 + 8) = v13;
            *(v23 + 16) = 0;
            return swift_willThrow();
          }
        }

        __break(1u);
        goto LABEL_26;
      case 2uLL:
        v17 = *(a3 + 16);
        v16 = *(a3 + 24);
        v18 = __OFSUB__(v16, v17);
        v14 = v16 - v17;
        if (!v18)
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_11:
        if (!v11)
        {
          goto LABEL_16;
        }

        v13 = 0;
        goto LABEL_22;
      case 3uLL:
        goto LABEL_11;
      default:
        v14 = v13;
        goto LABEL_15;
    }
  }

  sub_10002F2DC();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_100021E68(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x400000000000000) >> 59 != 31)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100021EB8()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = sub_100014A8C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10002FC5C();
  sub_1000300A4();
  v8 = sub_10002FC80();
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10002FC5C();
  v13 = v12 - v11;
  sub_10002FCA0();
  sub_10002D638(v1, v13);
  v14 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v15 = sub_100012898(v13, 2, v14);
  if (v15)
  {
    if (v15 == 1)
    {
      return 0x69746375646F7250;
    }

    else
    {
      return 0x786F62646E6153;
    }
  }

  else
  {
    v17 = *(v5 + 32);
    v18 = sub_1000301C8();
    v19(v18);
    sub_10002FF78();
    sub_10002FC0C();
    sub_10002F140(v20, v21);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = sub_100030080();
    String.append(_:)(v23);
    v16 = v28;
    v24 = *(v5 + 8);
    v25 = sub_1000301BC();
    v26(v25);
  }

  return v16;
}

uint64_t sub_100022084(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002FC80();
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v8 = sub_100012634(&qword_1000D27E8, &unk_1000954B0);
  sub_10002FD0C(v8);
  v10 = *(v9 + 64);
  sub_10002FF34();
  __chkstk_darwin(v11);
  sub_10002FFD4();
  v13 = *(v12 + 56);
  sub_10002D638(a1, v2);
  sub_10002D638(a2, v2 + v13);
  v14 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v15 = sub_10002FF40();
  v17 = sub_100012898(v15, v16, v14);
  if (!v17)
  {
    sub_10002FCA0();
    v19 = sub_10002FD24();
    sub_10002D638(v19, v20);
    v21 = sub_100012898(v2 + v13, 2, v14);
    v22 = type metadata accessor for URL();
    sub_100019360(v22);
    v24 = *(v23 + 8);
    if (!v21)
    {
      v24(v2 + v13, v22);
      v27 = sub_10003020C();
      (v24)(v27);
      goto LABEL_11;
    }

    v25 = sub_10003020C();
    (v24)(v25);
    goto LABEL_9;
  }

  if (v17 != 1)
  {
    if (sub_100012898(v2 + v13, 2, v14) == 2)
    {
      goto LABEL_11;
    }

LABEL_9:
    sub_10002F5A8(v2, &qword_1000D27E8, &unk_1000954B0);
    return 0;
  }

  sub_10003008C(v2 + v13, 2, v14);
  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_10002FBD8();
  sub_10002D748(v2, v28);
  return 1;
}

void sub_1000223E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10002FFBC();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v28 = sub_10002FD0C(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_10002FC4C();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v37 = sub_100012634(&qword_1000D2850, &qword_1000954F0);
  v38 = sub_10002FD0C(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v41);
  sub_100030010();
  __chkstk_darwin(v42);
  v44 = &a9 - v43;
  sub_10002F290(v20 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride, &a9 - v43, &qword_1000D2850, &qword_1000954F0);
  v45 = type metadata accessor for Client.Server(0);
  sub_10003008C(v44, 1, v45);
  if (!v50)
  {
    sub_10002FDA0();
    v49 = v44;
LABEL_6:
    sub_10002EFD4(v49, v26);
    goto LABEL_11;
  }

  sub_10002F5A8(v44, &qword_1000D2850, &qword_1000954F0);
  sub_100030140(OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAppStoreSigned);
  if (v50)
  {
    v46 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
    v47 = v26;
    v48 = 1;
LABEL_10:
    sub_10001267C(v47, v48, 2, v46);
    goto LABEL_11;
  }

  sub_100030140(OBJC_IVAR____TtC22StoreKitUISceneService6Client_isBeta);
  if (v50)
  {
    sub_100012634(&qword_1000D2730, &qword_100096BC0);
    v47 = sub_10002FF40();
    goto LABEL_10;
  }

  sub_100012BAC(0, &qword_1000D2810, &off_1000BD050);
  v51 = 1;
  sub_100034210(*(v20 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID), *(v20 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8), 1, v36);
  sub_10002F244(v36, v33, &qword_1000D1D58, &unk_1000954C0);
  v52 = type metadata accessor for URL();
  sub_10003008C(v33, 1, v52);
  if (!v53)
  {
    (*(*(v52 - 8) + 32))(v22, v33, v52);
    v54 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
    sub_10001267C(v22, 0, 2, v54);
    v51 = 0;
  }

  sub_10001267C(v22, v51, 1, v45);
  sub_10002F244(v22, v21, &qword_1000D2850, &qword_1000954F0);
  v55 = sub_10002FFEC();
  sub_10003008C(v55, v56, v45);
  if (!v50)
  {
    sub_10002FDA0();
    v49 = v21;
    goto LABEL_6;
  }

  sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v57 = sub_10002FF40();
  sub_10001267C(v57, v58, 2, v59);
  v60 = sub_10002FFEC();
  sub_10003008C(v60, v61, v45);
  if (!v50)
  {
    sub_10002F5A8(v21, &qword_1000D2850, &qword_1000954F0);
  }

LABEL_11:
  sub_10002FFA4();
}

uint64_t sub_100022CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL;
  v4 = type metadata accessor for URL();
  v5 = sub_100019360(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_100022D48()
{
  sub_100030140(OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasMIDBasedSINF);
  if (!v1)
  {
    return sub_100022F5C() & 1;
  }

  if (qword_1000D1AE8 != -1)
  {
    sub_10002FBAC();
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  sub_1000128C0(v2, qword_1000E4560);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v3._countAndFlagsBits = 0xD000000000000037;
  v3._object = 0x800000010009F830;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID));
  v4._object = 0x800000010009F870;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    sub_10002FF14();
    v7 = swift_slowAlloc();
    sub_10002FE48();
    v10[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000847A8(0, 0xE000000000000000, v10);
    *(v7 + 12) = 2082;
    v8 = sub_1000847A8(0, 0xE000000000000000, v10);

    *(v7 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100022F5C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_10002FD24();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v4, 0);

  if (AppBooleanValue)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_1000128C0(v6, qword_1000E4560);
    v7 = static os_log_type_t.default.getter();
    v8 = Logger.logObject.getter();
    if (os_log_type_enabled(v8, v7))
    {
      sub_10002FF14();
      v9 = swift_slowAlloc();
      sub_10002FE48();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1000300EC(v10);
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1000847A8(0xD00000000000004FLL, 0x800000010009F8B0, &v31);
      _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    goto LABEL_20;
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v8 = result;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (sub_10002EE40(v12, v13, v8) == 2)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v14 = type metadata accessor for SKLogger();
      sub_1000128C0(v14, qword_1000E4560);
      v15 = static os_log_type_t.default.getter();
      v16 = Logger.logObject.getter();
      if (!os_log_type_enabled(v16, v15))
      {
        goto LABEL_19;
      }

      v17 = "lation restrictions";
      sub_10002FF14();
      swift_slowAlloc();
      sub_10002FD30();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v0 = 136446466;
      v19 = sub_1000300EC(v18);
      sub_10002FD40(v19);
      v20 = 0xD00000000000004ALL;
    }

    else
    {
      if ([v8 isOnDeviceAppInstallationAllowed])
      {

        return 1;
      }

      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v21 = type metadata accessor for SKLogger();
      sub_1000128C0(v21, qword_1000E4560);
      v22 = static os_log_type_t.default.getter();
      v16 = Logger.logObject.getter();
      if (!os_log_type_enabled(v16, v22))
      {
        goto LABEL_19;
      }

      v17 = "se device is in store demo mode";
      sub_10002FF14();
      swift_slowAlloc();
      sub_10002FD30();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v0 = 136446466;
      v24 = sub_1000300EC(v23);
      sub_10002FD40(v24);
      v20 = 0xD000000000000053;
    }

    *(v0 + 14) = sub_1000847A8(v20, v17 | 0x8000000000000000, &v31);
    sub_100030198();
    _os_log_impl(v25, v26, v27, v28, v29, v30);
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();

LABEL_19:

LABEL_20:
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000238C4(uint64_t a1, unint64_t a2)
{
  *&v35 = a1;
  *(&v35 + 1) = a2;

  sub_100012634(&qword_1000D2890, &qword_1000954F8);
  if (swift_dynamicCast())
  {
    sub_10002F650(v33, &v36);
    sub_100012980(&v36, v37);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v35;
    sub_100012A18(&v36);
    goto LABEL_56;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_10002F5A8(v33, &qword_1000D2898, &unk_100095500);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v33[0] = a1;
    *(&v33[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v33;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10002D79C(v4, v5, &v36);
  v6 = *(&v36 + 1);
  v7 = v36;
  if (*(&v36 + 1) >> 60 != 15)
  {
    v33[0] = v36;
    goto LABEL_56;
  }

LABEL_9:
  *&v33[0] = Data._Representation.init(count:)();
  *(&v33[0] + 1) = v8;
  __chkstk_darwin(*&v33[0]);
  v9 = sub_10002D8B8(sub_10002F634);
  v11 = *(&v33[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v33[0]);
  switch(*(&v33[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v33[0]) - LODWORD(v33[0]);
      if (__OFSUB__(DWORD1(v33[0]), v33[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v33[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v33[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v33[0] + 16);
      v19 = *(*&v33[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v32 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v35 + 7) = 0;
      *&v35 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v33[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v26 = sub_10002EDB8(v16, v12, v14);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v36 = v12;
      *(&v36 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v36 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v16 = sub_10002EDB8(v16, v12, v14);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v35 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      *&v36 = v35;
      *(&v36 + 6) = *(&v35 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_100019064(v32, v6);
    goto LABEL_56;
  }

  *&v36 = v35;
  *(&v36 + 6) = *(&v35 + 6);
  Data._Representation.append(contentsOf:)();
  sub_100019064(v32, v6);
LABEL_55:

LABEL_56:
  v30 = v33[0];
  sub_100019008(*&v33[0], *(&v33[0] + 1));

  sub_100018DF0(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_100023DDC(uint64_t a1)
{
  v2 = type metadata accessor for Insecure.SHA1Digest();
  v8 = v2;
  v9 = sub_10002F140(&qword_1000D2888, &type metadata accessor for Insecure.SHA1Digest);
  v3 = sub_100012AE4(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_100012980(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100012A18(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

id sub_10002420C()
{
  v3 = sub_10002FC80();
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v6);
  sub_10002FEE0();
  v7 = [objc_opt_self() currentProcess];
  v8 = sub_100022740();
  [v7 setAccountMediaType:v8];

  v9 = *(v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID);
  v10 = *(v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID + 8);
  v11 = String._bridgeToObjectiveC()();
  [v7 setProxyAppBundleID:v11];

  v12._countAndFlagsBits = 0x6C7070612E6D6F63;
  v12._object = 0xEA00000000002E65;
  v13 = String.hasPrefix(_:)(v12);
  if (v13)
  {
    v21 = String._bridgeToObjectiveC()();
    [v7 setBundleIdentifier:v21];
  }

  sub_1000223E4(v13, v14, v15, v16, v17, v18, v19, v20, v43, v45, v48, v51, v54, v57, v59, v61, v63, v65, v67, v69);
  v22 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  sub_10001267C(v1, 2, 2, v22);
  v23 = sub_1000301EC();
  v25 = sub_100022084(v23, v24);
  sub_10002D748(v1, type metadata accessor for Client.Server);
  v26 = sub_10002D748(v2, type metadata accessor for Client.Server);
  if (v25 & 1) != 0 || (sub_1000223E4(v26, v27, v28, v29, v30, v31, v32, v33, v44, v46, v49, v52, v55, v58, v60, v62, v64, v66, v68, v70), v34 = sub_10002FFEC(), sub_10001267C(v34, v35, 2, v22), v36 = sub_1000301EC(), v38 = sub_100022084(v36, v37), sub_10002D748(v1, type metadata accessor for Client.Server), sub_10002D748(v2, type metadata accessor for Client.Server), (v38))
  {
    v39 = (v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken);
    if ((*(v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken + 32) & 1) == 0)
    {
      v47 = *v39;
      v50 = *(v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken + 8);
      v53 = v39[2];
      v56 = v39[3];
      v40 = Data.init(bytes:count:)();
      sub_10002EE9C(v40, v41, v7);
    }
  }

  return v7;
}

id sub_1000244F4(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  String._bridgeToObjectiveC()();
  sub_1000216E0();

  return a1;
}

id sub_10002465C()
{
  v0 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:sub_1000229C4()];
  v1 = swift_unknownObjectRelease();
  v2 = sub_1000222C4(v1);
  [v0 setAccount:v2];

  v3 = sub_10002420C();
  [v0 setClientInfo:v3];

  return v0;
}

id sub_100024738()
{
  v1 = objc_opt_self();
  v2 = sub_10002420C();
  v3 = [v1 ams_configurationWithProcessInfo:v2 bag:sub_1000229C4()];

  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID);
  v5 = *(v0 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID + 8);
  v6 = String._bridgeToObjectiveC()();
  [v3 set_sourceApplicationBundleIdentifier:v6];

  sub_100012BAC(0, &qword_1000D2870, AMSURLSession_ptr);
  v7 = sub_1000216E0();
  return sub_100024804(v7, 0, 0);
}

id sub_100024804(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

id sub_100024888(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    String._bridgeToObjectiveC()();
    sub_1000216E0();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_10002490C()
{
  sub_10002FFBC();
  v3 = v2;
  sub_10002FE60();
  v4 = type metadata accessor for SKLogger();
  v5 = sub_100019360(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v8 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v9 = sub_10002FD0C(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v12);
  sub_10002FEE0();
  if (v3)
  {
    sub_100024D34();

    v13 = type metadata accessor for ClientOverride(0);
    v14 = 0;
  }

  else
  {
    v13 = type metadata accessor for ClientOverride(0);
    v14 = 1;
  }

  sub_10001267C(v1, v14, 1, v13);
  swift_getObjectType();
  v15 = sub_1000301EC();
  sub_10002F290(v15, v16, v17, v18);
  v19 = v0;
  sub_100025390();
  sub_10002F5A8(v1, &qword_1000D2000, qword_1000945D0);

  sub_1000301D4();
  v21 = *((swift_isaMask & v20) + 0x30);
  v22 = *((swift_isaMask & v20) + 0x34);
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100024D34()
{
  sub_10002FFBC();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  v6 = sub_100014A8C(v5);
  v89 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10002FC38();
  v87 = v10;
  sub_10002FD18();
  __chkstk_darwin(v11);
  sub_10002FF4C();
  v86 = v12;
  v13 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v14 = sub_10002FD0C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10002FC4C();
  sub_10002FF04();
  __chkstk_darwin(v17);
  sub_10002FE54();
  v88 = v18;
  sub_10002FD18();
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  sub_10002FEBC();
  sub_10001267C(v22, v23, v24, v5);
  v25 = type metadata accessor for ClientOverride(0);
  v26 = v25[7];
  v91 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  sub_10001267C(v4 + v26, 1, 3, v91);
  v90 = xmmword_100095310;
  *v4 = xmmword_100095310;
  v27 = v25[10];
  sub_10002FEBC();
  sub_10001267C(v28, v29, v30, v5);
  sub_100019064(*v4, v4[1]);
  *v4 = v90;
  sub_10002F384(v21, v4 + v27);
  sub_10002FBF0();
  sub_100021AEC(v2, v31, v32);
  if (v95)
  {
    v33 = swift_dynamicCast();
    if (v33)
    {
      v34 = v92;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = v93;
    }

    else
    {
      v35 = 0xF000000000000000;
    }
  }

  else
  {
    sub_10002F5A8(v94, &qword_1000D1D60, &qword_100093620);
    v34 = 0;
    v35 = 0xF000000000000000;
  }

  sub_100019064(*v4, v4[1]);
  *v4 = v34;
  v4[1] = v35;
  sub_10002FBF0();
  sub_100021AEC(v2, v36, v37);
  if (v95)
  {
    v38 = swift_dynamicCast();
    v39 = v92;
    v40 = v93;
    if (!v38)
    {
      v39 = 0;
      v40 = 0;
    }
  }

  else
  {
    sub_10002F5A8(v94, &qword_1000D1D60, &qword_100093620);
    v39 = 0;
    v40 = 0;
  }

  v4[2] = v39;
  v4[3] = v40;
  sub_10002FBF0();
  sub_100021AEC(v2, v41, v42);
  if (v95)
  {
    v43 = sub_10002FD80();
    v44 = v92;
    v45 = v93;
    if (!v43)
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    sub_10002F5A8(v94, &qword_1000D1D60, &qword_100093620);
    v44 = 0;
    v45 = 0;
  }

  v4[4] = v44;
  v4[5] = v45;
  sub_10002FBF0();
  sub_100021AEC(v2, v46, v47);
  if (v95)
  {
    sub_10002FD80();
    sub_100030184();
  }

  else
  {
    sub_10002F5A8(v94, &qword_1000D1D60, &qword_100093620);
    v48 = 0;
    v49 = 1;
  }

  v50 = v4 + v25[9];
  *v50 = v48;
  v50[8] = v49;
  sub_10002FBF0();
  sub_100021AEC(v2, v51, v52);
  if (v95)
  {
    sub_10002FD80();
    sub_100030184();
  }

  else
  {
    sub_10002F5A8(v94, &qword_1000D1D60, &qword_100093620);
    v53 = 0;
    v54 = 1;
  }

  v55 = v4 + v25[8];
  *v55 = v53;
  v55[8] = v54;
  sub_10002FBF0();
  sub_100021AEC(v2, v56, v57);
  if (!v95)
  {
    sub_10002F5A8(v94, &qword_1000D1D60, &qword_100093620);
    goto LABEL_32;
  }

  if ((sub_10002FD80() & 1) == 0)
  {
LABEL_32:
    sub_10002FE94();
    v60 = 1;
    goto LABEL_33;
  }

  v58 = v92;
  sub_10002FE94();
  if (v58 == 2)
  {
    v59 = 3;
  }

  else
  {
    v59 = 1;
  }

  if (v58 == 1)
  {
    v60 = 2;
  }

  else
  {
    v60 = v59;
  }

LABEL_33:
  sub_10001267C(v4 + v26, v60, 3, v91);
  sub_10002FBF0();
  sub_10003014C();
  sub_100021AEC(v61, v62, v63);
  if (v95)
  {
    if ((sub_10002FD80() & 1) == 0)
    {
      goto LABEL_40;
    }

    v64 = v88;
    UUID.init(uuidString:)();

    v65 = sub_10002FFEC();
    sub_10003008C(v65, v66, v5);
    if (!v67)
    {
      v83 = v64;
      v84 = *(v89 + 32);
      v85 = v86;
      v84(v86, v83, v5);
      sub_10002F5A8(v4 + v27, &qword_1000D2800, qword_100099E20);
      v84(v4 + v27, v85, v5);
LABEL_45:
      v82 = 0;
      goto LABEL_46;
    }

    v68 = &qword_1000D2800;
    v69 = qword_100099E20;
    v70 = v64;
  }

  else
  {
    v68 = &qword_1000D1D60;
    v69 = &qword_100093620;
    v70 = v94;
  }

  sub_10002F5A8(v70, v68, v69);
LABEL_40:
  sub_10002FBF0();
  sub_10003014C();
  sub_100021AEC(v71, v72, v73);
  if (v95)
  {
    v74 = swift_dynamicCast();
    sub_10001267C(v0, v74 ^ 1u, 1, v5);
    sub_10003008C(v0, 1, v5);
    if (!v67)
    {
      v75 = *(v89 + 32);
      v76 = v87;
      v75(v87, v0, v5);
      sub_10002F5A8(v4 + v27, &qword_1000D2800, qword_100099E20);
      v75(v4 + v27, v76, v5);
      goto LABEL_45;
    }
  }

  else
  {
    sub_10002F5A8(v94, &qword_1000D1D60, &qword_100093620);
    sub_10002FEBC();
    sub_10001267C(v77, v78, v79, v5);
  }

  v80 = sub_1000301EC();
  sub_10002F5A8(v80, v81, qword_100099E20);
  sub_10002F5A8(v4 + v27, &qword_1000D2800, qword_100099E20);
  v82 = 1;
LABEL_46:
  sub_10001267C(v4 + v27, v82, 1, v5);
  sub_10002FFA4();
}

void sub_1000257EC()
{
  sub_10002FFBC();
  v4 = v3;
  sub_10002FE60();
  v40 = type metadata accessor for SKLogger();
  v5 = sub_100019360(v40);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v41 = v9 - v8;
  sub_10002FFE0();
  v10 = type metadata accessor for URL();
  v11 = sub_100014A8C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10002FC38();
  v42 = v16;
  sub_10002FD18();
  __chkstk_darwin(v17);
  sub_10002FEE0();
  v18 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v19 = sub_10002FD0C(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v22);
  v24 = v39 - v23;
  sub_10002FCD4();
  *&v46 = v25;
  *(&v46 + 1) = v26;
  sub_10002FC0C();
  v29 = sub_10002F140(v27, v28);
  v44 = v10;
  v45 = v0;
  v39[5] = v29;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = sub_100030080();
  String.append(_:)(v31);
  v43 = *(&v46 + 1);
  v39[4] = v46;
  if (v4)
  {
    sub_100024D34();

    v32 = type metadata accessor for ClientOverride(0);
    v33 = 0;
  }

  else
  {
    v32 = type metadata accessor for ClientOverride(0);
    v33 = 1;
  }

  sub_10001267C(v24, v33, 1, v32);
  swift_getObjectType();
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  v34 = v2;
  v36 = v44;
  v35 = v45;
  (*(v13 + 16))(v34, v45, v44);
  sub_10002F290(v24, v1, &qword_1000D2000, qword_1000945D0);
  sub_100025DD8();

  (*(v13 + 8))(v35, v36);
  sub_10002F5A8(v24, &qword_1000D2000, qword_1000945D0);
  v37 = *((swift_isaMask & *v0) + 0x30);
  v38 = *((swift_isaMask & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100025DD8()
{
  sub_100030230();
  v251 = v1;
  v248 = v0;
  v249 = v3;
  v260 = v4;
  v6 = v5;
  v7 = type metadata accessor for Client.Server(0);
  v8 = sub_10002FD0C(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10002FC38();
  sub_10002FCB8();
  __chkstk_darwin(v11);
  sub_10002FF4C();
  v235 = v12;
  sub_10002FFE0();
  v257 = type metadata accessor for URL();
  v13 = sub_100014A8C(v257);
  v261 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_10002FC38();
  sub_10002FCB8();
  __chkstk_darwin(v17);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v18);
  sub_10002FE54();
  v246 = v19;
  sub_10002FD18();
  __chkstk_darwin(v20);
  sub_10002FE54();
  v245 = v21;
  sub_10002FD18();
  __chkstk_darwin(v22);
  sub_10002FE54();
  v247 = v23;
  sub_10002FD18();
  __chkstk_darwin(v24);
  sub_100030010();
  __chkstk_darwin(v25);
  sub_10002FF4C();
  v264 = v26;
  v27 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v28 = sub_10002FD0C(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_10002FC38();
  v243 = v31;
  sub_10002FD18();
  __chkstk_darwin(v32);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v33);
  v35 = &v233 - v34;
  v36 = type metadata accessor for ClientOverride(0);
  v37 = sub_100019360(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_10002FC38();
  v252 = v40;
  sub_10002FD18();
  __chkstk_darwin(v41);
  v43 = (&v233 - v42);
  v44 = type metadata accessor for SKLogger();
  v45 = sub_100019360(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  sub_10002FC38();
  sub_10002FCB8();
  __chkstk_darwin(v48);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v49);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v50);
  sub_10002FE54();
  v244 = v51;
  sub_10002FD18();
  __chkstk_darwin(v52);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v53);
  v55 = (&v233 - v54);
  sub_10002FCD4();
  v262 = v56;
  v263 = v57;
  v258 = v6;
  v58._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v58);

  v59._countAndFlagsBits = sub_100030080();
  String.append(_:)(v59);
  v60 = v263;
  v250 = v262;
  if (qword_1000D1AE8 != -1)
  {
    sub_10002FBAC();
    swift_once();
  }

  sub_1000128C0(v44, qword_1000E4560);
  sub_10002FBC0();
  v253 = v61;
  sub_10002D638(v61, v55);

  v62 = v55;
  Logger.logObject.getter();
  sub_10002FE60();
  v63 = type metadata accessor for Logger();
  sub_10002FC24(v63);
  v255 = *(v64 + 8);
  v256 = v65;
  v254 = v64 + 8;
  v255(v55);
  v66 = static os_log_type_t.info.getter();

  v67 = os_log_type_enabled(v55, v66);
  v259 = v60;
  if (v67)
  {
    v68 = sub_100030288();
    sub_10002FF98();
    v69 = swift_slowAlloc();
    v262 = v69;
    *v68 = 136446210;
    v70 = sub_1000301B0();
    *(v68 + 4) = sub_1000847A8(v70, v60, v71);
    _os_log_impl(&_mh_execute_header, v62, v66, "%{public}s  Initializing client", v68, 0xCu);
    sub_100012A18(v69);
    sub_10002FCC8();

    sub_10002FCC8();
  }

  v72 = v264;
  sub_10002F290(v260, v35, &qword_1000D2000, qword_1000945D0);
  v73 = sub_100012898(v35, 1, v36);
  v74 = v252;
  if (v73 == 1)
  {
    sub_10002F5A8(v35, &qword_1000D2000, qword_1000945D0);
  }

  else
  {
    sub_10002FDE8();
    sub_10002EFD4(v35, v43);
    sub_10002FBC0();
    sub_10002D638(v253, v242);
    sub_10002FDD0();
    v75 = sub_1000300BC();
    sub_10002D638(v75, v76);
    v77 = v259;

    Logger.logObject.getter();
    v78 = sub_10002FF20();
    v79(v78);
    v80 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v80))
    {
      sub_10002FF14();
      swift_slowAlloc();
      sub_10002FD30();
      v81 = swift_slowAlloc();
      v242 = v43;
      v262 = v81;
      *v264 = 136446466;
      v82 = sub_1000301B0();
      v84 = sub_1000847A8(v82, v77, v83);
      v85 = sub_10002FD40(v84);
      v86 = sub_10007F380(v85);
      v88 = v87;
      sub_10002D748(v74, type metadata accessor for ClientOverride);
      v89 = v2;
      v90 = sub_1000847A8(v86, v88, &v262);

      *(v264 + 14) = v90;
      v2 = v89;
      sub_100030198();
      _os_log_impl(v91, v92, v93, v94, v95, v96);
      swift_arrayDestroy();
      sub_10002FCC8();

      v72 = v264;
      sub_10002FCC8();

      v97 = v242;
    }

    else
    {

      sub_10002D748(v74, type metadata accessor for ClientOverride);
      v97 = v43;
    }

    sub_10002D748(v97, type metadata accessor for ClientOverride);
  }

  v99 = v257;
  v98 = v258;
  v101 = URL.hasDirectoryPath.getter();
  if (v101)
  {
    v102 = *(v261 + 16);
    v103 = ((v261 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v102(v72, v98, v99);
  }

  else
  {
    URL._bridgeToObjectiveC()(v100);
    v105 = v104;
    v106 = _CFBundleCopyBundleURLForExecutableURL();

    if (!v106)
    {
      goto LABEL_50;
    }

    v72 = v264;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = *(v261 + 16);
    v103 = ((v261 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  }

  v102(v2, v72, v99);
  v107 = objc_allocWithZone(LSApplicationRecord);
  v108 = v251;
  v109 = sub_10002D398(v2, 0);
  if (v108)
  {
  }

  else
  {
    v120 = v109;
    if (v109)
    {
LABEL_27:
      v125 = v260;
      v126 = v239;
      sub_10002F290(v260, v239, &qword_1000D2000, qword_1000945D0);
      objc_allocWithZone(v248);
      v127 = v120;
      v128 = sub_100029938(v249, v127, v126);
      v252 = v127;
      v129 = v259;
LABEL_36:
      sub_10002FBC0();
      v152 = v241;
      sub_10002D638(v253, v241);

      v153 = v128;
      v154 = Logger.logObject.getter();
      (v255)(v152, v256);
      v155 = v129;
      v156 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v154, v156))
      {
        v157 = swift_slowAlloc();
        v262 = swift_slowAlloc();
        *v157 = 136446978;
        v158 = sub_1000301B0();
        v160 = sub_1000847A8(v158, v155, v159);
        v161 = sub_100030020(v160);
        v162 = v235;
        sub_1000223E4(v161, v163, v164, v165, v166, v167, v168, v169, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
        v170 = sub_100021EB8();
        v172 = v171;
        sub_10002FBD8();
        sub_10002D748(v162, v173);
        v174 = sub_1000847A8(v170, v172, &v262);

        *(v157 + 14) = v174;
        *(v157 + 22) = 2082;
        sub_100030124(OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID);
        v175 = sub_1000301C8();
        v178 = sub_1000847A8(v175, v176, v177);

        *(v157 + 24) = v178;
        *(v157 + 32) = 2082;
        sub_100030124(OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
        v179 = sub_1000301C8();
        v182 = sub_1000847A8(v179, v180, v181);

        *(v157 + 34) = v182;
        _os_log_impl(&_mh_execute_header, v154, v156, "%{public}s Initialized with server %{public}s bundle ID %{public}s and request bundle ID %{public}s]", v157, 0x2Au);
        swift_arrayDestroy();
        v99 = v257;
        sub_10002FCC8();

        v125 = v260;
        sub_10002FCC8();
      }

      v183 = v240;
      sub_1000223E4(v184, v185, v186, v187, v188, v189, v190, v191, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
      v192 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
      if (sub_100012898(v183, 2, v192))
      {

        sub_10002F5A8(v125, &qword_1000D2000, qword_1000945D0);
        v193 = sub_10002FEF0();
        (v154)(v193);
        v194 = sub_100030158();
        (v154)(v194);
        sub_10002FBD8();
        sub_10002D748(v183, v195);
      }

      else
      {
        (*(v261 + 32))(v238, v183, v99);
        sub_10002FBC0();
        sub_10002D638(v253, v234);
        v214 = v259;

        Logger.logObject.getter();
        v215 = sub_10002FF20();
        v216(v215);
        v217 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v154, v217))
        {
          v218 = sub_100030288();
          sub_10002FF98();
          v219 = swift_slowAlloc();
          v262 = v219;
          *v218 = 136446210;
          v220 = sub_1000301B0();
          v222 = sub_1000847A8(v220, v214, v221);

          *(v218 + 4) = v222;
          _os_log_impl(&_mh_execute_header, v154, v217, "%{public}s StoreKit testing enabled.", v218, 0xCu);
          sub_100012A18(v219);
          sub_10002FCC8();

          sub_10002FCC8();
        }

        else
        {
        }

        v227 = [objc_opt_self() sharedInstance];
        URL.path.getter();
        v228 = String._bridgeToObjectiveC()();

        sub_100030124(OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
        sub_1000301C8();
        v229 = String._bridgeToObjectiveC()();

        [v227 useConfigurationDirectory:v228 forBundleID:v229];

        sub_10002F5A8(v260, &qword_1000D2000, qword_1000945D0);
        v230 = sub_10002FEF0();
        (v227)(v230);
        v231 = sub_100030178();
        (v227)(v231);
        v232 = sub_100030158();
        (v227)(v232);
      }

      goto LABEL_46;
    }
  }

  v110 = v99;
  v111 = v98;
  v112 = v247;
  v113 = v110;
  (v102)(v247, v72);
  v114 = objc_allocWithZone(LSApplicationExtensionRecord);
  v115 = sub_10002D4EC(v112);
  v121 = v111;
  if (v115)
  {
    v122 = v115;
    v123 = [v122 containingBundleRecord];

    v99 = v113;
    if (v123)
    {
      objc_opt_self();
      v124 = swift_dynamicCastObjCClass();
      if (v124)
      {
        v120 = v124;
        goto LABEL_27;
      }
    }

    v72 = v264;
    if (v101)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v99 = v113;
    if (v101)
    {
      goto LABEL_30;
    }
  }

  URL._bridgeToObjectiveC()(v116);
  v118 = v117;
  v119 = CFBundleCopyInfoDictionaryForURL(v117);

  if (!v119)
  {
LABEL_30:
    URL._bridgeToObjectiveC()(v116);
    v131 = v130;
    v119 = CFBundleCopyInfoDictionaryForURL(v130);

    if (!v119)
    {

      sub_10002FBC0();
      sub_10002D638(v253, v236);
      v102(v237, v121, v99);
      Logger.logObject.getter();
      v196 = sub_10002FF20();
      v197(v196);
      v198 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(0, v198))
      {
        sub_10002FF14();
        swift_slowAlloc();
        sub_10002FD30();
        v259 = swift_slowAlloc();
        v262 = v259;
        *v72 = 136446466;
        v199 = sub_100030030();
        v200 = sub_1000847A8(v199, 0xE600000000000000, &v262);
        sub_10002FD40(v200);
        sub_10002FC0C();
        sub_10002F140(v201, v202);
        v203 = dispatch thunk of CustomStringConvertible.description.getter();
        v205 = v204;
        v206 = sub_10002FF58();
        v103(v206);
        v207 = sub_1000847A8(v203, v205, &v262);
        v121 = v258;

        *(v72 + 14) = v207;
        sub_100030198();
        _os_log_impl(v208, v209, v210, v211, v212, v213);
        swift_arrayDestroy();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {

        v223 = sub_10002FF58();
        v103(v223);
      }

      v224 = v260;
      sub_10002D690();
      sub_1000301A4();
      v225 = swift_allocError();
      sub_100030108(v225, v226);
      sub_10002F5A8(v224, &qword_1000D2000, qword_1000945D0);
      (v103)(v121, v102);
      (v103)(v264, v102);
LABEL_46:
      sub_100030218();
      return;
    }
  }

  v252 = v119;
  sub_10002FBC0();
  v132 = v244;
  sub_10002D638(v253, v244);
  v133 = v245;
  v102(v245, v121, v99);
  v134 = Logger.logObject.getter();
  (v255)(v132, v256);
  v135 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v134, v135))
  {
    sub_10002FF14();
    v136 = swift_slowAlloc();
    sub_10002FE48();
    v247 = swift_slowAlloc();
    v262 = v247;
    *v136 = 136446466;
    v137 = sub_100030030();
    v138 = sub_1000847A8(v137, 0xE600000000000000, &v262);
    sub_100030020(v138);
    sub_10002FC0C();
    sub_10002F140(v139, v140);
    v141 = dispatch thunk of CustomStringConvertible.description.getter();
    v143 = v142;
    v251 = *(v261 + 8);
    v251(v133, v257);
    v144 = sub_1000847A8(v141, v143, &v262);
    v99 = v257;

    *(v136 + 14) = v144;
    _os_log_impl(&_mh_execute_header, v134, v135, "[%{public}s] Cannot find application record for %{public}s. Initializing with bundle.", v136, 0x16u);
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();
  }

  else
  {

    v251 = *(v261 + 8);
    v251(v133, v99);
  }

  v125 = v260;
  v145 = v246;
  v102(v246, v264, v99);
  objc_opt_self();
  v146 = v252;
  sub_1000301A4();
  swift_dynamicCastObjCClassUnconditional();
  v262 = 0;
  v147 = v146;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  v148 = v262;
  if (v262)
  {

    v149 = v243;
    sub_10002F290(v125, v243, &qword_1000D2000, qword_1000945D0);
    v150 = objc_allocWithZone(v248);
    v151 = sub_1000280E0(v249, v145, v148, v149);
    v129 = v259;
    v128 = v151;

    v252 = 0;
    goto LABEL_36;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1000270FC()
{
  sub_10002FFBC();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SKLogger();
  v6 = sub_100019360(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10002FC5C();
  v9 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  sub_10002FD0C(v9);
  v11 = *(v10 + 64);
  sub_10002FF34();
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  sub_10002FCD4();
  v30[0] = v15;
  v30[1] = v16;
  v17._countAndFlagsBits = v3;
  v17._object = v1;
  String.append(_:)(v17);
  v18._countAndFlagsBits = sub_100030080();
  String.append(_:)(v18);
  v29[1] = v30[0];
  v19 = objc_allocWithZone(LSApplicationRecord);

  v20 = sub_10002D2BC(v3, v1, 0);
  memset(v30, 0, sizeof(v30));
  v31 = 1;
  type metadata accessor for ClientOverride(0);
  sub_10002FEBC();
  sub_10001267C(v21, v22, v23, v24);
  v25 = objc_allocWithZone(ObjectType);
  sub_100029938(v30, v20, v14);

  swift_getObjectType();
  sub_1000301D4();
  v27 = *((swift_isaMask & v26) + 0x30);
  v28 = *((swift_isaMask & v26) + 0x34);
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100027544()
{
  sub_10002FFBC();
  v50 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SKLogger();
  v6 = sub_100019360(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10002FC5C();
  v49 = v10 - v9;
  v11 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  sub_10002FD0C(v11);
  v13 = *(v12 + 64);
  sub_10002FF34();
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for URL();
  v18 = sub_100014A8C(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10002FC4C();
  sub_10002FF04();
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  sub_100021CB8(v54, 1, v4, v2, &v51);
  v43 = v16;
  v44 = v20;
  v45 = v17;
  v46 = v5;
  v47 = v4;
  v48 = v2;
  v26 = v51;
  v27 = v52;
  v28 = v53;
  sub_100027A74();
  v29 = v50;
  swift_getObjectType();
  v54[2] = v26;
  v55 = v27;
  v56 = v28;
  v57 = 0;
  v30 = v44;
  v31 = *(v44 + 16);
  v32 = sub_1000301E0();
  v33 = v45;
  v34(v32);
  type metadata accessor for ClientOverride(0);
  sub_10002FEBC();
  sub_10001267C(v35, v36, v37, v38);
  sub_100025DD8();
  (*(v30 + 8))(v25, v33);
  v39 = sub_1000301F8();
  sub_100018DF0(v39, v40);
  v41 = *((swift_isaMask & *v29) + 0x30);
  v42 = *((swift_isaMask & *v29) + 0x34);
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100027A74()
{
  sub_100030230();
  v68 = v0;
  *v69.val = v2;
  v71 = v3;
  v65 = v4;
  v66 = v5;
  *&v69.val[4] = v6;
  *&v69.val[6] = v7;
  *&v69.val[2] = v8;
  v70 = type metadata accessor for SKLogger();
  v9 = sub_100019360(v70);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10002FC38();
  v67 = v12;
  sub_10002FD18();
  __chkstk_darwin(v13);
  sub_10002FF4C();
  v64 = v14;
  v15 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v16 = sub_10002FD0C(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10002FC4C();
  v21 = v19 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v63 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v63 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v63 - v30;
  __chkstk_darwin(v29);
  sub_100030164();
  v32 = type metadata accessor for URL();
  sub_10002FEBC();
  sub_10001267C(v33, v34, v35, v32);
  sub_10002F290(v1, v31, &qword_1000D1D58, &unk_1000954C0);
  v36 = sub_100012898(v31, 1, v32);
  sub_10002F5A8(v31, &qword_1000D1D58, &unk_1000954C0);
  if (v36 == 1)
  {
    v37 = swift_slowAlloc();
    v73 = v69;
    if (proc_pidpath_audittoken(&v73, v37, 0x1000u) < 1)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      sub_1000128C0(v70, qword_1000E4560);
      sub_10002FBC0();
      v52 = v64;
      sub_10002D638(v53, v64);
      v54 = v71;

      v55 = Logger.logObject.getter();
      v56 = type metadata accessor for Logger();
      sub_10002FC24(v56);
      (*(v57 + 8))(v52);
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v58))
      {
        v59 = sub_100030288();
        sub_10002FF98();
        v60 = swift_slowAlloc();
        v72 = v60;
        *v59 = 136446210;
        *(v59 + 4) = sub_1000847A8(v65, v54, &v72);
        _os_log_impl(&_mh_execute_header, v55, v58, "%{public}s Cannot find process path", v59, 0xCu);
        sub_100012A18(v60);
        sub_10002FCC8();

        sub_10002FCC8();
      }

      sub_10002D690();
      sub_1000301A4();
      v61 = swift_allocError();
      sub_100030108(v61, v62);
      sub_10002FCC8();

      goto LABEL_16;
    }

    String.init(cString:)();
    sub_10002FEBC();
    sub_10001267C(v38, v39, v40, v32);
    sub_10002FD24();
    String.utf8CString.getter();

    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_10002F5A8(v25, &qword_1000D1D58, &unk_1000954C0);
    sub_10002F5A8(v1, &qword_1000D1D58, &unk_1000954C0);

    sub_10001267C(v28, 0, 1, v32);
    sub_10002F244(v28, v1, &qword_1000D1D58, &unk_1000954C0);
    sub_10002FCC8();
  }

  sub_10002F290(v1, v21, &qword_1000D1D58, &unk_1000954C0);
  if (sub_100012898(v21, 1, v32) == 1)
  {
    sub_10002F5A8(v21, &qword_1000D1D58, &unk_1000954C0);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    sub_1000128C0(v70, qword_1000E4560);
    sub_10002FBC0();
    v41 = v67;
    sub_10002D638(v42, v67);
    v43 = v71;

    v44 = v41;
    Logger.logObject.getter();
    sub_10002FE60();
    v45 = type metadata accessor for Logger();
    sub_10002FC24(v45);
    (*(v46 + 8))(v41);
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v47))
    {
      v48 = sub_100030288();
      sub_10002FF98();
      v49 = swift_slowAlloc();
      *v73.val = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_1000847A8(v65, v43, &v73);
      _os_log_impl(&_mh_execute_header, v44, v47, "%{public}s Cannot find bundle URL", v48, 0xCu);
      sub_100012A18(v49);
      sub_10002FCC8();

      sub_10002FCC8();
    }

    sub_10002D690();
    sub_1000301A4();
    v50 = swift_allocError();
    sub_100030108(v50, v51);
LABEL_16:
    sub_10002F5A8(v1, &qword_1000D1D58, &unk_1000954C0);
    goto LABEL_17;
  }

  sub_10002F5A8(v1, &qword_1000D1D58, &unk_1000954C0);
  (*(*(v32 - 8) + 32))(v66, v21, v32);
LABEL_17:
  sub_100030218();
}

NSObject *sub_1000280E0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v138 = a1;
  v5 = v4;
  v140 = a4;
  v144 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SKLogger();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientOverride.Server(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v134 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v133 = &v129 - v16;
  __chkstk_darwin(v15);
  v132 = &v129 - v17;
  v150 = type metadata accessor for URL();
  v142 = *(v150 - 8);
  v18 = *(v142 + 64);
  __chkstk_darwin(v150);
  v139 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v136 = &v129 - v22;
  v23 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v135 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v131 = &v129 - v28;
  v29 = __chkstk_darwin(v27);
  v137 = &v129 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v129 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v129 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v129 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v129 - v41;
  __chkstk_darwin(v40);
  v143 = &v129 - v43;
  if (!kCFBundleIdentifierKey)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100021A90(v44, v45, a3, &v148);

  if (v149)
  {
    if (swift_dynamicCast())
    {
      v46 = v147;
      v47 = (v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID);
      *v47 = v146;
      v47[1] = v46;

      v129 = v46;
      sub_100029174();
      v48 = type metadata accessor for ClientOverride(0);
      if (sub_100012898(v42, 1, v48) == 1)
      {
        v49 = v143;
        sub_10002F290(v140, v143, &qword_1000D2000, qword_1000945D0);
        if (sub_100012898(v42, 1, v48) != 1)
        {
          sub_10002F5A8(v42, &qword_1000D2000, qword_1000945D0);
        }
      }

      else
      {
        v49 = v143;
        sub_10002EFD4(v42, v143);
        sub_10001267C(v49, 0, 1, v48);
      }

      sub_10002F290(v49, v39, &qword_1000D2000, qword_1000945D0);
      if (sub_100012898(v39, 1, v48) == 1)
      {
        sub_10002F5A8(v39, &qword_1000D2000, qword_1000945D0);
      }

      else
      {
        v60 = *(v39 + 2);
        v59 = *(v39 + 3);

        sub_10002D748(v39, type metadata accessor for ClientOverride);
        if (v59)
        {
          goto LABEL_19;
        }
      }

      v60 = *v47;
      v59 = v47[1];

LABEL_19:
      v61 = (v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
      *v61 = v60;
      v61[1] = v59;
      v62 = v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken;
      v63 = v138;
      v64 = v138[1];
      *v62 = *v138;
      *(v62 + 1) = v64;
      v62[32] = *(v63 + 32);
      v65 = *(v142 + 16);
      v130 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL;
      v138 = v65;
      (v65)(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL, v144, v150);
      *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isClip) = 0;
      v66 = (v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_signerOrganization);
      *v66 = 0;
      v66[1] = 0;
      *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAlmond) = 0;
      *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_iOSTargetPlatform) = [objc_opt_self() deviceIsiPad];
      sub_10002F290(v143, v36, &qword_1000D2000, qword_1000945D0);
      if (sub_100012898(v36, 1, v48) == 1)
      {
        sub_10002F5A8(v36, &qword_1000D2000, qword_1000945D0);
      }

      else
      {
        v68 = *(v36 + 4);
        v67 = *(v36 + 5);

        sub_10002D748(v36, type metadata accessor for ClientOverride);
        if (v67)
        {
          goto LABEL_28;
        }
      }

      if (!kCFBundleVersionKey)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100021A90(v69, v70, a3, &v148);

      if (v149)
      {
        if (swift_dynamicCast())
        {
          v68 = v146;
          v67 = v147;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10002F5A8(&v148, &qword_1000D1D60, &qword_100093620);
      }

      v67 = 0xE300000000000000;
      v68 = 3157553;
LABEL_28:
      v71 = (v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion);
      *v71 = v68;
      v71[1] = v67;
      if (_kCFBundleDisplayNameKey)
      {
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100021A90(v72, v73, a3, &v148);

        if (v149)
        {
          if (swift_dynamicCast())
          {

LABEL_36:
            v76 = v146;
            v77 = v147;
            goto LABEL_39;
          }
        }

        else
        {
          sub_10002F5A8(&v148, &qword_1000D1D60, &qword_100093620);
        }

        if (kCFBundleNameKey)
        {

          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100021A90(v74, v75, a3, &v148);

          if (v149)
          {
            if (swift_dynamicCast())
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_10002F5A8(&v148, &qword_1000D1D60, &qword_100093620);
          }

          v76 = URL.lastPathComponent.getter();
LABEL_39:
          v78 = (v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_localizedName);
          *v78 = v76;
          v78[1] = v77;
          sub_10002F290(v143, v33, &qword_1000D2000, qword_1000945D0);
          v79 = v48;
          if (sub_100012898(v33, 1, v48) == 1)
          {
            sub_10002F5A8(v33, &qword_1000D2000, qword_1000945D0);
            v80 = type metadata accessor for UUID();
            v81 = v136;
            sub_10001267C(v136, 1, 1, v80);
          }

          else
          {
            v81 = v136;
            sub_10002F290(&v33[*(v48 + 40)], v136, &qword_1000D2800, qword_100099E20);
            sub_10002D748(v33, type metadata accessor for ClientOverride);
          }

          v82 = v130;
          sub_10002F244(v81, v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID, &qword_1000D2800, qword_100099E20);
          *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasEverHadIAPs) = 1;
          v83 = [objc_opt_self() defaultManager];
          v84 = v139;
          v85 = v150;
          (v138)(v139, v5 + v82, v150);
          v86 = sub_100082B68(v84, 1);

          v87 = v85;
          v88 = *(v142 + 8);
          v88(v84, v87);
          *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAppStoreSigned) = v86 & 1;
          *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isBeta) = 0;
          *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isThirdPartyDistributed) = 1;
          v89 = (v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_vendorName);
          *v89 = 0;
          v89[1] = 0;
          *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasMIDBasedSINF) = 0;
          v90 = v137;
          sub_10002F290(v143, v137, &qword_1000D2000, qword_1000945D0);
          v91 = v79;
          if (sub_100012898(v90, 1, v79) == 1)
          {
            goto LABEL_43;
          }

          v92 = v90 + *(v79 + 36);
          v93 = *v92;
          v94 = *(v92 + 8);
          sub_10002D748(v90, type metadata accessor for ClientOverride);
          if ((v94 & 1) == 0)
          {
            v122 = v131;
            sub_10002F290(v143, v131, &qword_1000D2000, qword_1000945D0);
            if (sub_100012898(v122, 1, v91) == 1)
            {
              v90 = v122;
LABEL_43:
              sub_10002F5A8(v90, &qword_1000D2000, qword_1000945D0);
              goto LABEL_45;
            }

            v124 = v122 + *(v91 + 32);
            v107 = *v124;
            v125 = *(v124 + 8);
            sub_10002D748(v122, type metadata accessor for ClientOverride);
            if ((v125 & 1) == 0)
            {
              *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID) = v93;
LABEL_50:
              v108 = v135;
              *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID) = v107;
              sub_10002F244(v143, v108, &qword_1000D2000, qword_1000945D0);
              if (sub_100012898(v108, 1, v91) == 1)
              {
                sub_10002F5A8(v108, &qword_1000D2000, qword_1000945D0);
                v109 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                v110 = type metadata accessor for Client.Server(0);
                v111 = v5 + v109;
                v112 = 1;
              }

              else
              {
                v113 = v133;
                sub_10002D638(v108 + *(v91 + 28), v133);
                sub_10002D748(v108, type metadata accessor for ClientOverride);
                v114 = v113;
                v115 = v132;
                sub_10002EFD4(v114, v132);
                v116 = v115;
                v117 = v134;
                sub_10002EFD4(v116, v134);
                v118 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
                switch(sub_100012898(v117, 3, v118))
                {
                  case 1u:
                    if (*(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID) && *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID))
                    {
                      v126 = 1;
                    }

                    else
                    {
                      v126 = 2;
                    }

                    v127 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    sub_10001267C(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride, v126, 2, v118);
                    v128 = type metadata accessor for Client.Server(0);
                    sub_10001267C(v5 + v127, 0, 1, v128);
                    sub_10002D748(v134, type metadata accessor for ClientOverride.Server);
                    goto LABEL_60;
                  case 2u:
                    v119 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    v120 = v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    v121 = 1;
                    goto LABEL_58;
                  case 3u:
                    v119 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    v120 = v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    v121 = 2;
                    goto LABEL_58;
                  default:
                    v119 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    (*(v142 + 32))(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride, v134, v150);
                    v120 = v5 + v119;
                    v121 = 0;
LABEL_58:
                    sub_10001267C(v120, v121, 2, v118);
                    v110 = type metadata accessor for Client.Server(0);
                    v111 = v5 + v119;
                    v112 = 0;
                    break;
                }
              }

              sub_10001267C(v111, v112, 1, v110);
LABEL_60:
              v145.receiver = v5;
              v145.super_class = ObjectType;
              v51 = objc_msgSendSuper2(&v145, "init");
              sub_10002F5A8(v140, &qword_1000D2000, qword_1000945D0);
              v88(v144, v150);
              return v51;
            }
          }

LABEL_45:
          sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
          v95 = v139;
          (v138)(v139, v144, v150);
          v97 = sub_1000295A8(v95, v96);
          if (v97)
          {
            v98 = v97;
            v99 = [v97 itemID];
            v100 = [v99 unsignedLongLongValue];

            *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID) = v100;
            v101 = [v98 installerVersionID];
            v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v104 = v103;

            v105 = sub_100029640(v102, v104);
            LOBYTE(v102) = v106;

            if (v102)
            {
              v107 = 0;
            }

            else
            {
              v107 = v105;
            }
          }

          else
          {
            v107 = 0;
            *(v5 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID) = 0;
          }

          goto LABEL_50;
        }

LABEL_72:
        __break(1u);
        JUMPOUT(0x100029164);
      }

      goto LABEL_70;
    }
  }

  else
  {

    sub_10002F5A8(&v148, &qword_1000D1D60, &qword_100093620);
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v50 = sub_1000128C0(v7, qword_1000E4560);
  sub_10002D638(v50, v10);
  v51 = Logger.logObject.getter();
  v52 = type metadata accessor for Logger();
  (*(*(v52 - 8) + 8))(v10, v52);
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v148 = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_1000847A8(0x746E65696C43, 0xE600000000000000, &v148);
    _os_log_impl(&_mh_execute_header, v51, v53, "[%{public}s] Cannot find bundle ID", v54, 0xCu);
    sub_100012A18(v55);
  }

  sub_10002D690();
  swift_allocError();
  *v56 = 0;
  swift_willThrow();
  sub_10002F5A8(v140, &qword_1000D2000, qword_1000945D0);
  (*(v142 + 8))(v144, v150);
  v57 = *((swift_isaMask & *v5) + 0x30);
  v58 = *((swift_isaMask & *v5) + 0x34);
  swift_deallocPartialClassInstance();
  return v51;
}

void sub_100029174()
{
  sub_10002FFBC();
  v4 = v3;
  v5 = sub_100012634(&qword_1000D2818, &qword_1000954D0);
  v6 = sub_10002FD0C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10002FC4C();
  sub_10002FF04();
  __chkstk_darwin(v9);
  v10 = sub_100030164();
  v11 = type metadata accessor for Client.TimedClientOverride(v10);
  v12 = sub_100014A8C(v11);
  v48 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10002FC5C();
  sub_1000300A4();
  v16 = type metadata accessor for ClientOverride(0);
  sub_10002FEBC();
  sub_10001267C(v17, v18, v19, v16);
  v20 = sub_10002C5CC();
  v21 = sub_100030050();
  sub_100021B4C(v21, v22, v20, v23);

  sub_10003008C(v2, 1, v11);
  if (v24)
  {
    sub_10002F5A8(v2, &qword_1000D2818, &qword_1000954D0);
  }

  else
  {
    sub_10002FDB8();
    sub_10002EFD4(v2, v0);
    v25 = v0 + *(v11 + 20);
    Date.timeIntervalSinceNow.getter();
    if (v26 <= 0.0)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v27 = type metadata accessor for SKLogger();
      sub_1000128C0(v27, qword_1000E4560);
      _StringGuts.grow(_:)(38);

      v49[0] = 0xD000000000000028;
      v49[1] = 0x800000010009F760;
      v28._countAndFlagsBits = sub_100030050();
      String.append(_:)(v28);
      v29 = static os_log_type_t.default.getter();

      v30 = Logger.logObject.getter();

      if (os_log_type_enabled(v30, v29))
      {
        sub_10002FF14();
        v31 = swift_slowAlloc();
        sub_10002FE48();
        v49[0] = swift_slowAlloc();
        *v31 = 136446466;
        v32 = sub_1000847A8(0, 0xE000000000000000, v49);
        sub_100030020(v32);
        v33 = sub_1000847A8(0xD000000000000028, 0x800000010009F760, v49);

        *(v31 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s%{public}s", v31, 0x16u);
        swift_arrayDestroy();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {
      }

      v34 = sub_10002C5CC();
      v35 = sub_100030050();
      v37 = sub_10007D370(v35, v36);
      if (v38)
      {
        v39 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49[0] = v34;
        v41 = v34[3];
        sub_100012634(&qword_1000D2820, &qword_1000954D8);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41);
        v42 = v49[0];
        v43 = *(*(v49[0] + 48) + 16 * v39 + 8);

        v44 = *(v42 + 56);
        v45 = *(v48 + 72);
        sub_10002FDB8();
        sub_10002EFD4(v46, v1);
        sub_10002FD24();
        _NativeDictionary._delete(at:)();
        v47 = 0;
      }

      else
      {
        v47 = 1;
      }

      sub_10001267C(v1, v47, 1, v11);
      sub_10002F5A8(v1, &qword_1000D2818, &qword_1000954D0);
      sub_10002C9F0();
      sub_10002FE6C();
    }

    else
    {
      sub_10002F5A8(v4, &qword_1000D2000, qword_1000945D0);
      sub_10002FDD0();
      sub_10002D638(v0, v4);
      sub_10002FE6C();
      sub_10001267C(v4, 0, 1, v16);
    }
  }

  sub_10002FFA4();
}

id sub_1000295A8@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [swift_getObjCClassFromMetadata() receiptFromBundleAtURL:v3];

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

uint64_t sub_100029640(uint64_t result, unint64_t a2)
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

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_10002DF10(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

char *sub_100029938(uint64_t a1, void *a2, uint64_t a3)
{
  v202 = a3;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v186 = &v184 - v9;
  v10 = type metadata accessor for ClientOverride.Server(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v194 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v192 = &v184 - v15;
  __chkstk_darwin(v14);
  v201 = &v184 - v16;
  v17 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v195 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v196 = &v184 - v22;
  __chkstk_darwin(v21);
  v204 = &v184 - v23;
  v24 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v200 = &v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v199 = &v184 - v29;
  v30 = __chkstk_darwin(v28);
  v198 = &v184 - v31;
  v32 = __chkstk_darwin(v30);
  v189 = &v184 - v33;
  v34 = __chkstk_darwin(v32);
  v197 = &v184 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v184 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v184 - v40;
  __chkstk_darwin(v39);
  v205 = &v184 - v42;
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v185 = &v184 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = &v184 - v48;
  v50 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken];
  v51 = *(a1 + 16);
  *v50 = *a1;
  *(v50 + 1) = v51;
  v50[32] = *(a1 + 32);
  v52 = a2;
  v53 = [v52 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL;
  v55 = *(v44 + 32);
  v193 = v49;
  v188 = v44 + 32;
  v187 = v55;
  v55(&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL], v49, v43);
  v56 = v52;
  v57 = sub_10002EF10(v56, &selRef_bundleIdentifier);
  if (!v58)
  {

    sub_10002D690();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();

    sub_10002F5A8(v202, &qword_1000D2000, qword_1000945D0);
    (*(v44 + 8))(&v4[v54], v43);
    v68 = *((swift_isaMask & *v4) + 0x30);
    v69 = *((swift_isaMask & *v4) + 0x34);
    swift_deallocPartialClassInstance();
    return v49;
  }

  v59 = v58;
  v184 = v43;
  v60 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID];
  *v60 = v57;
  v60[1] = v58;
  v61 = v57;

  v190 = v61;
  v191 = v59;
  sub_100029174();
  v62 = type metadata accessor for ClientOverride(0);
  if (sub_100012898(v41, 1, v62) == 1)
  {
    v63 = v205;
    sub_10002F290(v202, v205, &qword_1000D2000, qword_1000945D0);
    v64 = sub_100012898(v41, 1, v62);
    v65 = v204;
    v66 = v195;
    if (v64 != 1)
    {
      sub_10002F5A8(v41, &qword_1000D2000, qword_1000945D0);
    }
  }

  else
  {
    v63 = v205;
    sub_10002EFD4(v41, v205);
    sub_10001267C(v63, 0, 1, v62);
    v65 = v204;
    v66 = v195;
  }

  sub_10002F290(v63, v38, &qword_1000D2000, qword_1000945D0);
  v70 = sub_100012898(v38, 1, v62);
  v204 = v62;
  if (v70 == 1)
  {
    sub_10002F5A8(v38, &qword_1000D2000, qword_1000945D0);
    v71 = type metadata accessor for UUID();
    v72 = v196;
    sub_10001267C(v196, 1, 1, v71);
    goto LABEL_10;
  }

  v73 = &v38[*(v62 + 40)];
  v72 = v196;
  sub_10002F290(v73, v196, &qword_1000D2800, qword_100099E20);
  sub_10002D748(v38, type metadata accessor for ClientOverride);
  v74 = type metadata accessor for UUID();
  if (sub_100012898(v72, 1, v74) == 1)
  {
LABEL_10:
    v75 = [v56 deviceIdentifierForVendor];
    if (v75)
    {
      v76 = v75;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    v78 = type metadata accessor for UUID();
    sub_10001267C(v66, v77, 1, v78);
    sub_10002F244(v66, v65, &qword_1000D2800, qword_100099E20);
    v79 = sub_100012898(v72, 1, v78);
    v80 = v199;
    if (v79 != 1)
    {
      sub_10002F5A8(v72, &qword_1000D2800, qword_100099E20);
    }

    goto LABEL_16;
  }

  (*(*(v74 - 8) + 32))(v65, v72, v74);
  sub_10001267C(v65, 0, 1, v74);
  v80 = v199;
LABEL_16:
  sub_10002F244(v65, &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID], &qword_1000D2800, qword_100099E20);
  v81 = [v56 sk_isAlmond];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAlmond] = v81;
  v82 = sub_100071254();
  v83 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAppStoreSigned;
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAppStoreSigned] = v82;
  v84 = [v56 isBeta];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isBeta] = v84;
  v85 = [v56 iTunesMetadata];
  v86 = [v85 distributorInfo];

  LOBYTE(v85) = [v86 distributorIsThirdParty];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isThirdPartyDistributed] = v85;
  v87 = [v56 localizedName];
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_localizedName];
  *v91 = v88;
  v91[1] = v90;
  v92 = [v56 applicationHasMIDBasedSINF];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasMIDBasedSINF] = v92;
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_iOSTargetPlatform] = sub_1000712E4();
  v93 = v56;
  v94 = sub_10002EF10(v93, &selRef_signerOrganization);
  v95 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_signerOrganization];
  *v95 = v94;
  v95[1] = v96;
  v97 = sub_10002EF10([v93 iTunesMetadata], &selRef_artistName);
  v98 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_vendorName];
  *v98 = v97;
  v98[1] = v99;
  v100 = v197;
  sub_10002F290(v205, v197, &qword_1000D2000, qword_1000945D0);
  v101 = v204;
  if (sub_100012898(v100, 1, v204) == 1)
  {
    goto LABEL_17;
  }

  v102 = v100 + *(v101 + 36);
  v103 = *v102;
  v104 = *(v102 + 8);
  sub_10002D748(v100, type metadata accessor for ClientOverride);
  if (v104)
  {
    goto LABEL_19;
  }

  v100 = v189;
  sub_10002F290(v205, v189, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v100, 1, v101) == 1)
  {
LABEL_17:
    sub_10002F5A8(v100, &qword_1000D2000, qword_1000945D0);
  }

  else
  {
    v125 = v100 + *(v101 + 32);
    v112 = *v125;
    v126 = *(v125 + 8);
    sub_10002D748(v100, type metadata accessor for ClientOverride);
    if ((v126 & 1) == 0)
    {
      *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v103;
      goto LABEL_30;
    }
  }

LABEL_19:
  v105 = [v93 iTunesMetadata];
  v106 = [v105 storeItemIdentifier];

  if (v106 && (v107 = [v93 iTunesMetadata], v108 = objc_msgSend(v107, "versionIdentifier"), v107, v108))
  {
    v109 = [v93 iTunesMetadata];
    v110 = [v109 storeItemIdentifier];

    *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v110;
    v111 = [v93 iTunesMetadata];
    v112 = [v111 versionIdentifier];
  }

  else
  {
    sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
    v113 = [v93 URL];
    v114 = v193;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = sub_1000295A8(v114, v115);
    v112 = v116;
    if (v116)
    {
      v117 = [v116 itemID];
      v118 = [v117 unsignedLongLongValue];

      *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v118;
      v119 = [v112 installerVersionID];
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123 = sub_100029640(v120, v122);
      LOBYTE(v120) = v124;

      if (v120)
      {
        v112 = 0;
      }

      else
      {
        v112 = v123;
      }
    }

    else
    {
      *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = 0;
    }
  }

LABEL_30:
  *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID] = v112;
  if (v4[v83] == 1)
  {
    v127 = objc_opt_self();
    *&v210[0] = 0;
    v128 = [v127 loadMetadataFromApplicationRecord:v93 withError:v210];
    if (v128)
    {
      v129 = v128;
      v130 = *&v210[0];
      v131 = [v129 hasOrEverHasHadIAP];
      if (v131)
      {
        v132 = v131;
        v133 = [v131 BOOLValue];

        v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasEverHadIAPs] = v133;
        goto LABEL_37;
      }
    }

    else
    {
      v134 = *&v210[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasEverHadIAPs] = 1;
LABEL_37:
  v135 = v198;
  v136 = [v93 appClipMetadata];
  v137 = v205;
  if (v136)
  {

    v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isClip] = 1;
    v138 = [v93 entitlements];

    v139 = String._bridgeToObjectiveC()();
    sub_100012BAC(0, &qword_1000D1D80, NSArray_ptr);
    v140 = [v138 objectForKey:v139 ofClass:swift_getObjCClassFromMetadata()];

    if (v140)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v208 = 0u;
      v209 = 0u;
    }

    v210[0] = v208;
    v210[1] = v209;
    if (*(&v209 + 1))
    {
      sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
      if (swift_dynamicCast())
      {
        if (v206[2])
        {
          v144 = v206[4];
          v145 = v206[5];

          v146 = String._bridgeToObjectiveC()();

          CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
        }

        else
        {
        }
      }

      goto LABEL_49;
    }

    v141 = &qword_1000D1D60;
    v142 = &qword_100093620;
    v143 = v210;
    goto LABEL_48;
  }

  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isClip] = 0;
  sub_10002F290(v137, v135, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v135, 1, v204) == 1)
  {
    v141 = &qword_1000D2000;
    v142 = qword_1000945D0;
    v143 = v135;
LABEL_48:
    sub_10002F5A8(v143, v141, v142);
LABEL_49:
    v147 = v191;
    v148 = v190;
    goto LABEL_50;
  }

  v170 = v135;
  v148 = *(v135 + 16);
  v147 = *(v135 + 24);

  sub_10002D748(v170, type metadata accessor for ClientOverride);
  if (!v147)
  {
    goto LABEL_49;
  }

LABEL_50:
  v149 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID];
  *v149 = v148;
  *(v149 + 1) = v147;
  sub_10002F290(v137, v80, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v80, 1, v204) == 1)
  {
    sub_10002F5A8(v80, &qword_1000D2000, qword_1000945D0);
    goto LABEL_53;
  }

  v151 = *(v80 + 32);
  v150 = *(v80 + 40);

  sub_10002D748(v80, type metadata accessor for ClientOverride);
  if (!v150)
  {
LABEL_53:
    v152 = sub_10002EF78(v93, &selRef_exactBundleVersion);
    if (v153)
    {
      v151 = v152;
      v150 = v153;
    }

    else
    {
      v150 = 0xE300000000000000;
      v151 = 3157553;
    }
  }

  v154 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion];
  *v154 = v151;
  v154[1] = v150;
  v155 = v200;
  sub_10002F290(v137, v200, &qword_1000D2000, qword_1000945D0);
  v156 = v204;
  if (sub_100012898(v155, 1, v204) == 1)
  {
    sub_10002F5A8(v137, &qword_1000D2000, qword_1000945D0);
    sub_10002F5A8(v155, &qword_1000D2000, qword_1000945D0);
    v157 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
    v158 = type metadata accessor for Client.Server(0);
    v159 = &v4[v157];
    v160 = 1;
  }

  else
  {
    v161 = v192;
    sub_10002D638(v155 + *(v156 + 28), v192);
    sub_10002D748(v155, type metadata accessor for ClientOverride);
    v162 = v161;
    v163 = v201;
    sub_10002EFD4(v162, v201);
    v164 = v163;
    v165 = v194;
    sub_10002D638(v164, v194);
    v166 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
    switch(sub_100012898(v165, 3, v166))
    {
      case 1u:
        if (*&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] && *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID])
        {
          sub_10002D748(v201, type metadata accessor for ClientOverride.Server);
          sub_10002F5A8(v137, &qword_1000D2000, qword_1000945D0);
          v174 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
          v175 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
          v176 = 1;
        }

        else
        {
          sub_100012BAC(0, &qword_1000D2810, &off_1000BD050);
          v177 = *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID];
          v178 = *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8];

          v179 = v186;
          sub_100034210(v177, v178, 1, v186);

          sub_10002D748(v201, type metadata accessor for ClientOverride.Server);
          sub_10002F5A8(v137, &qword_1000D2000, qword_1000945D0);
          v180 = v184;
          if (sub_100012898(v179, 1, v184) == 1)
          {
            sub_10002F5A8(v179, &qword_1000D1D58, &unk_1000954C0);
            v174 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
            v175 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
            v176 = 2;
          }

          else
          {
            v181 = v185;
            v182 = v187;
            v187(v185, v179, v180);
            v174 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
            v182(&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride], v181, v180);
            v175 = v174;
            v176 = 0;
          }
        }

        sub_10001267C(v175, v176, 2, v166);
        v172 = v202;
        v183 = type metadata accessor for Client.Server(0);
        sub_10001267C(v174, 0, 1, v183);
        sub_10002D748(v194, type metadata accessor for ClientOverride.Server);
        v171 = ObjectType;
        goto LABEL_66;
      case 2u:
        sub_10002D748(v201, type metadata accessor for ClientOverride.Server);
        sub_10002F5A8(v137, &qword_1000D2000, qword_1000945D0);
        v167 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
        v168 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
        v169 = 1;
        goto LABEL_64;
      case 3u:
        sub_10002D748(v201, type metadata accessor for ClientOverride.Server);
        sub_10002F5A8(v137, &qword_1000D2000, qword_1000945D0);
        v167 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
        v168 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
        v169 = 2;
        goto LABEL_64;
      default:
        sub_10002D748(v201, type metadata accessor for ClientOverride.Server);
        sub_10002F5A8(v137, &qword_1000D2000, qword_1000945D0);
        v167 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
        v187(&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride], v194, v184);
        v168 = &v4[v167];
        v169 = 0;
LABEL_64:
        sub_10001267C(v168, v169, 2, v166);
        v158 = type metadata accessor for Client.Server(0);
        v159 = &v4[v167];
        v160 = 0;
        break;
    }
  }

  sub_10001267C(v159, v160, 1, v158);
  v172 = v202;
  v171 = ObjectType;
LABEL_66:
  v207.receiver = v4;
  v207.super_class = v171;
  v49 = objc_msgSendSuper2(&v207, "init");

  sub_10002F5A8(v172, &qword_1000D2000, qword_1000945D0);
  return v49;
}

void sub_10002AE8C()
{
  sub_10002FFBC();
  v2 = v1;
  v145 = v3;
  HIDWORD(v144) = v4;
  v5 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v5);
  v7 = *(v6 + 64);
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = &v141 - v9;
  v11 = type metadata accessor for URL();
  v12 = sub_100014A8C(v11);
  v146 = v13;
  v147 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10002FC38();
  v143 = v16;
  sub_10002FD18();
  __chkstk_darwin(v17);
  sub_10002FF4C();
  v142 = v18;
  v19 = sub_10002FC80();
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10002FC5C();
  sub_10002FFD4();
  v22 = sub_100012634(&qword_1000D2800, qword_100099E20);
  sub_10002FD0C(v22);
  v24 = *(v23 + 64);
  sub_10002FF34();
  __chkstk_darwin(v25);
  v27 = &v141 - v26;
  v28 = v1 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID;
  v29 = *(v1 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
  v30 = *(v28 + 8);
  v31 = off_1000D0C38;

  sub_10002B894(256);
  v32 = static String._fromSubstring(_:)();
  v34 = v33;

  *(&v152 + 1) = &type metadata for String;
  *&v151 = v32;
  *(&v151 + 1) = v34;
  sub_10002FFF8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000300C8(isUniquelyReferenced_nonNull_native);

  v36 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion);
  v37 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion + 8);
  v38 = off_1000D0C40;

  sub_10002B894(100);
  v39 = static String._fromSubstring(_:)();
  v41 = v40;

  *(&v152 + 1) = &type metadata for String;
  *&v151 = v39;
  *(&v151 + 1) = v41;
  sub_10002FFF8();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000300C8(v42);

  if (*(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID))
  {
    *&v151 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID);
    v43 = off_1000D0C10;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v152 + 1) = &type metadata for String;
    *&v151 = v44;
    *(&v151 + 1) = v45;
    sub_10002FD50();
    v46 = sub_10002FC6C();
    sub_100048C9C(v46, v43, v47);
  }

  if (*(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID))
  {
    *&v151 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID);
    v48 = off_1000D0C18;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v152 + 1) = &type metadata for String;
    *&v151 = v49;
    *(&v151 + 1) = v50;
    sub_10002FD50();
    v51 = sub_10002FC6C();
    sub_100048C9C(v51, v48, v52);
  }

  v53 = off_1000D0C78;
  v54 = objc_opt_self();
  v55 = v53;
  v141 = v54;
  v56 = [v54 deviceGUID];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  *(&v152 + 1) = &type metadata for String;
  *&v151 = v57;
  *(&v151 + 1) = v59;
  sub_10002FD50();
  v60 = sub_10002FC6C();
  sub_100048C9C(v60, v55, v61);

  v62 = v148;
  v63 = off_1000D0E48;
  sub_10002F290(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID, v27, &qword_1000D2800, qword_100099E20);
  v64 = type metadata accessor for UUID();
  LODWORD(v56) = sub_100012898(v27, 1, v64);
  v65 = v63;
  if (v56 == 1)
  {
    sub_10002F5A8(v27, &qword_1000D2800, qword_100099E20);
    v66 = sub_100083AE0(v65);
    if (v67)
    {
      v68 = v66;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v62;
      v70 = *(v62 + 24);
      sub_100012634(&qword_1000D2858, &unk_100096C80);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v69, v70);
      v71 = v149;

      sub_100012AD4((*(v71 + 56) + 32 * v68), &v151);
      type metadata accessor for SKServerKey(0);
      sub_10002FE30();
      sub_10002F140(v72, v73);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v151 = 0u;
      v152 = 0u;
    }

    v86 = v147;

    v78 = sub_10002F5A8(&v151, &qword_1000D1D60, &qword_100093620);
  }

  else
  {
    v74 = UUID.uuidString.getter();
    *(&v152 + 1) = &type metadata for String;
    *&v151 = v74;
    *(&v151 + 1) = v75;
    (*(*(v64 - 8) + 8))(v27, v64);
    sub_10002FD50();
    v76 = sub_10002FC6C();
    sub_100048C9C(v76, v65, v77);

    v86 = v147;
  }

  v87 = v146;
  if (*(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAlmond) == 1)
  {
    sub_1000223E4(v78, v79, v80, v81, v82, v83, v84, v85, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1));
    sub_100012634(&qword_1000D2730, &qword_100096BC0);
    v88 = sub_10002FF40();
    if (sub_100012898(v88, v89, v90))
    {
      sub_10002FBD8();
      sub_10002D748(v0, v91);
    }

    else
    {
      (*(v87 + 8))(v0, v86);
      v92 = off_1000D0CF0;
      *(&v152 + 1) = &type metadata for String;
      *&v151 = 49;
      *(&v151 + 1) = 0xE100000000000000;
      sub_10002FFF8();
      v93 = v92;
      swift_isUniquelyReferenced_nonNull_native();
      v94 = sub_10002FC6C();
      sub_100048C9C(v94, v93, v95);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isBeta) == 1)
  {
    v96 = off_1000D0CF8;
    *(&v152 + 1) = &type metadata for Bool;
    LOBYTE(v151) = 1;
    sub_10002FFF8();
    v97 = v96;
    swift_isUniquelyReferenced_nonNull_native();
    v98 = sub_10002FC6C();
    sub_100048C9C(v98, v97, v99);
  }

  sub_10002F290(v145, v10, &qword_1000D1D58, &unk_1000954C0);
  sub_10003008C(v10, 1, v86);
  if (v100)
  {
    sub_10002F5A8(v10, &qword_1000D1D58, &unk_1000954C0);
    sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
    v101 = v143;
    (*(v87 + 16))(v143, v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL, v86);
    v107 = sub_1000295A8(v101, v102);
    if (!v107)
    {
      goto LABEL_32;
    }

LABEL_22:
    v108 = off_1000D0C08;
    v109 = v107;
    v110 = v108;
    v111 = [v109 opaqueDSIDString];
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    *(&v152 + 1) = &type metadata for String;
    *&v151 = v112;
    *(&v151 + 1) = v114;
    sub_10002FD50();
    v115 = sub_10002FC6C();
    sub_100048C9C(v115, v110, v116);

    if ((v144 & 0x100000000) != 0)
    {
      v117 = [v109 receiptType];
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      *&v151 = v118;
      *(&v151 + 1) = v120;
      *&v149 = 0x65646F6358;
      *(&v149 + 1) = 0xE500000000000000;
      sub_100012B58();
      LOBYTE(v117) = StringProtocol.contains<A>(_:)();

      if ((v117 & 1) == 0)
      {
        v121 = off_1000D0DC8;
        v122 = [v109 receiptDataString];
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        *(&v152 + 1) = &type metadata for String;
        *&v151 = v123;
        *(&v151 + 1) = v125;
        sub_10002FD50();
        v126 = sub_10002FC6C();
        sub_100048C9C(v126, v121, v127);

        v128 = v148;
        if ([v109 isDSIDless])
        {
          v129 = off_1000D0DD8;
          v130 = sub_10002EF78(v141, &selRef_serialNumber);
          if (v131)
          {
            *(&v152 + 1) = &type metadata for String;
            *&v151 = v130;
            *(&v151 + 1) = v131;
            v132 = sub_10002FD50();
            v148 = v128;
            sub_100048C9C(&v149, v129, v132);

            goto LABEL_32;
          }

          v133 = sub_100083AE0(v129);
          if (v134)
          {
            v135 = v133;
            v136 = swift_isUniquelyReferenced_nonNull_native();
            v148 = v128;
            v137 = *(v128 + 24);
            sub_100012634(&qword_1000D2858, &unk_100096C80);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v136, v137);
            v138 = v148;

            sub_100012AD4((*(v138 + 56) + 32 * v135), &v149);
            type metadata accessor for SKServerKey(0);
            sub_10002FE30();
            sub_10002F140(v139, v140);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            v149 = 0u;
            v150 = 0u;
          }

          sub_10002F5A8(&v149, &qword_1000D1D60, &qword_100093620);
        }
      }
    }

    goto LABEL_32;
  }

  v103 = *(v87 + 32);
  v104 = v142;
  v105 = sub_1000301E0();
  v106(v105);
  sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
  URL.path.getter();
  v107 = sub_10002B954();
  (*(v87 + 8))(v104, v86);
  if (v107)
  {
    goto LABEL_22;
  }

LABEL_32:
  sub_10002FFA4();
}

uint64_t sub_10002B894(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v1 = String.subscript.getter();

    return v1;
  }

  return result;
}

id sub_10002B954()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithContentsOfFile:v1];

  return v2;
}

id sub_10002BB78()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002BCDC()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10002BE6C(319, &qword_1000D2720, &type metadata accessor for UUID);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10002BE6C(319, &qword_1000D2728, type metadata accessor for Client.Server);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10002BE6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002BEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69746E75 && a2 == 0xE500000000000000)
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

uint64_t sub_10002BFA4(char a1)
{
  if (a1)
  {
    return 0x6C69746E75;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_10002BFD8(void *a1)
{
  v3 = sub_100012634(&qword_1000D2938, &qword_100095628);
  sub_100014A8C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_10002F91C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18[15] = 0;
  type metadata accessor for ClientOverride(0);
  sub_10002FE18();
  sub_10002F140(v12, v13);
  sub_100030268();
  if (!v1)
  {
    v14 = *(type metadata accessor for Client.TimedClientOverride(0) + 20);
    v18[14] = 1;
    type metadata accessor for Date();
    sub_10002FE00();
    sub_10002F140(v15, v16);
    sub_100030268();
  }

  return (*(v5 + 8))(v10, v3);
}

void sub_10002C188()
{
  sub_100030230();
  v2 = v1;
  v36 = v3;
  v38 = type metadata accessor for Date();
  v4 = sub_100014A8C(v38);
  v35 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10002FC5C();
  v10 = v9 - v8;
  v39 = type metadata accessor for ClientOverride(0);
  v11 = sub_100019360(v39);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10002FC5C();
  v40 = v15 - v14;
  v41 = sub_100012634(&qword_1000D2950, &qword_100095630);
  sub_100014A8C(v41);
  v37 = v16;
  v18 = *(v17 + 64);
  sub_10002FF34();
  __chkstk_darwin(v19);
  v20 = type metadata accessor for Client.TimedClientOverride(0);
  v21 = sub_100019360(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10002FC5C();
  v26 = v25 - v24;
  v27 = v2[4];
  sub_100012980(v2, v2[3]);
  sub_10002F91C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100012A18(v2);
  }

  else
  {
    sub_10002FE18();
    sub_10002F140(v28, v29);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10002FDE8();
    sub_10002EFD4(v40, v26);
    sub_10002FE00();
    sub_10002F140(v30, v31);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = *(v37 + 8);
    v33 = sub_100030178();
    v34(v33);
    (*(v35 + 32))(v26 + *(v20 + 20), v10, v38);
    sub_10002D638(v26, v36);
    sub_100012A18(v2);
    sub_10002D748(v26, type metadata accessor for Client.TimedClientOverride);
  }

  sub_100030218();
}

uint64_t sub_10002C4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002BEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C524(uint64_t a1)
{
  v2 = sub_10002F91C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C560(uint64_t a1)
{
  v2 = sub_10002F91C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002C5CC()
{
  type metadata accessor for AppDefaultsManager();
  v0 = sub_1000214DC();
  if (v1 >> 60 == 15)
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for SKLogger();
    sub_1000128C0(v2, qword_1000E4560);
    v3 = static os_log_type_t.info.getter();
    v4 = Logger.logObject.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v5 = 136446466;
      *(v5 + 4) = sub_1000847A8(0, 0xE000000000000000, &v12);
      *(v5 + 12) = 2082;
      *(v5 + 14) = sub_1000847A8(0xD00000000000001ALL, 0x800000010009F7C0, &v12);
      _os_log_impl(&_mh_execute_header, v4, v3, "%{public}s%{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    v6 = v0;
    v7 = v1;
    v8 = type metadata accessor for JSONDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100012634(&qword_1000D2828, &unk_1000954E0);
    sub_10002F188();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_100019064(v6, v7);
    return v12;
  }
}

uint64_t sub_10002C9F0()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100012634(&qword_1000D2828, &unk_1000954E0);
  sub_10002F084();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  type metadata accessor for AppDefaultsManager();
  sub_1000215CC();
  sub_100018DF0(v3, v5);
}

uint64_t sub_10002CE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v5 = sub_100012898(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002CEA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100012634(&qword_1000D2730, &qword_100096BC0);

  return sub_10001267C(a1, v5, a3, v6);
}

uint64_t sub_10002CF10()
{
  sub_10002CF68();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10002CF68()
{
  if (!qword_1000D27B8)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D27B8);
    }
  }
}

unint64_t sub_10002CFB4()
{
  result = qword_1000D27E0;
  if (!qword_1000D27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D27E0);
  }

  return result;
}

id sub_10002D2BC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10002D398(uint64_t a1, char a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

id sub_10002D4EC(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_10002D638(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002FE60();
  v5 = v4(v3);
  sub_100019360(v5);
  v7 = *(v6 + 16);
  v8 = sub_10002FD24();
  v9(v8);
  return a2;
}

unint64_t sub_10002D690()
{
  result = qword_1000D27F8;
  if (!qword_1000D27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D27F8);
  }

  return result;
}

uint64_t sub_10002D70C(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t sub_10002D748(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10002FC24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002D79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_10002D864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_10002DDF8(sub_10002F6A8, v5, a1, a2);
}

uint64_t sub_10002D8B8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100018DF0(v6, v5);
      *v4 = xmmword_100095320;
      sub_100018DF0(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_10002DE5C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100018DF0(v6, v5);
      v19 = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_100095320;
      sub_100018DF0(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v19;
      v9 = sub_10002DE5C(*(v19 + 16), *(v19 + 24), a1);
      if (v2)
      {
        v10 = v20 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v20 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v2)
      {
        return v19;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_100018DF0(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        v3 = v19;
      }

      v8 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_10002DC8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10002DD04(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_10002F4C8(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x10002DDA0);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_10002F3F4();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_10002DDB0(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10002DDF8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_10002DE5C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unsigned __int8 *sub_10002DF10(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002E9A8();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10002E498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    sub_1000301BC();
    v6 = sub_10002E9A8();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1000301BC();
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_100030068();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_10003005C();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_100030068();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_10003005C();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_10002FCF0();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_10003005C();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_10002FCF0();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_10003005C();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_10002FCF0();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_10003005C();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_10002E9A8()
{
  v0 = sub_10002EA14();
  v4 = sub_10002EA48(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10002EA48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100084BB4(v9, 0);
  v12 = sub_10002EBA8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10002EBA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_10002EDB8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_10002EDB8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
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

uint64_t sub_10002EDB8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

id sub_10002EE40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 effectiveBoolValueForSetting:v4];

  return v5;
}

void sub_10002EE9C(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100018DF0(a1, a2);
  [a3 setAuditTokenData:isa];
}

uint64_t sub_10002EF10(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10003020C();
}

uint64_t sub_10002EF78(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10002FD24();
}

uint64_t sub_10002EFD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002FE60();
  v5 = v4(v3);
  sub_100019360(v5);
  v7 = *(v6 + 32);
  v8 = sub_10002FD24();
  v9(v8);
  return a2;
}

uint64_t sub_10002F04C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10002F084()
{
  result = qword_1000D2830;
  if (!qword_1000D2830)
  {
    sub_10001CEC4(&qword_1000D2828, &unk_1000954E0);
    sub_10002F140(&qword_1000D2838, type metadata accessor for Client.TimedClientOverride);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2830);
  }

  return result;
}

uint64_t sub_10002F140(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002F188()
{
  result = qword_1000D2840;
  if (!qword_1000D2840)
  {
    sub_10001CEC4(&qword_1000D2828, &unk_1000954E0);
    sub_10002F140(&qword_1000D2848, type metadata accessor for Client.TimedClientOverride);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2840);
  }

  return result;
}

uint64_t sub_10002F244(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100030248(a1, a2, a3, a4);
  sub_100019360(v5);
  v7 = *(v6 + 32);
  v8 = sub_10002FD24();
  v9(v8);
  return v4;
}

uint64_t sub_10002F290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100030248(a1, a2, a3, a4);
  sub_100019360(v5);
  v7 = *(v6 + 16);
  v8 = sub_10002FD24();
  v9(v8);
  return v4;
}

unint64_t sub_10002F2DC()
{
  result = qword_1000D2860;
  if (!qword_1000D2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2860);
  }

  return result;
}

unint64_t sub_10002F330()
{
  result = qword_1000D2868;
  if (!qword_1000D2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2868);
  }

  return result;
}

uint64_t sub_10002F384(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2800, qword_100099E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F3F4()
{
  type metadata accessor for Insecure.SHA1();
  sub_10002F140(&qword_1000D2880, &type metadata accessor for Insecure.SHA1);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10002F4C8(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.SHA1();
      sub_10002F140(&qword_1000D2880, &type metadata accessor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F5A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100012634(a2, a3);
  sub_10002FC24(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void *sub_10002F5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_10002D864(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_10002F650(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002F668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_10002DDB0(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_10002F6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002FE60();
  v7 = type metadata accessor for ClientOverride(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = v3 + *(a3 + 20);
  }

  return sub_100012898(v9, a2, v8);
}

uint64_t sub_10002F788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002FE60();
  v9 = type metadata accessor for ClientOverride(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = v4 + *(a4 + 20);
  }

  return sub_10001267C(v11, a2, a2, v10);
}

uint64_t sub_10002F828()
{
  result = type metadata accessor for ClientOverride(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10002F8C8()
{
  result = qword_1000D2930;
  if (!qword_1000D2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2930);
  }

  return result;
}

unint64_t sub_10002F91C()
{
  result = qword_1000D2940;
  if (!qword_1000D2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2940);
  }

  return result;
}

_BYTE *sub_10002F970(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002FA3CLL);
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

unint64_t sub_10002FA78()
{
  result = qword_1000D2960;
  if (!qword_1000D2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2960);
  }

  return result;
}

unint64_t sub_10002FAD0()
{
  result = qword_1000D2968;
  if (!qword_1000D2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2968);
  }

  return result;
}

unint64_t sub_10002FB28()
{
  result = qword_1000D2970[0];
  if (!qword_1000D2970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D2970);
  }

  return result;
}

uint64_t sub_10002FC80()
{
  v0 = type metadata accessor for Client.Server(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t sub_10002FD40(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_10002FD50()
{
  sub_100012AD4((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10002FD80()
{

  return swift_dynamicCast();
}

uint64_t sub_10002FE6C()
{

  return sub_10002D748(v0, type metadata accessor for Client.TimedClientOverride);
}

uint64_t sub_10002FE94()
{

  return sub_10002D748(v0 + v1, type metadata accessor for ClientOverride.Server);
}

uint64_t sub_10002FF20()
{
  result = v0;
  v4 = *(v1 - 160);
  v3 = *(v1 - 152);
  v5 = *(v1 - 168);
  return result;
}

_OWORD *sub_10002FFF8()
{

  return sub_100012AD4((v0 - 112), (v0 - 144));
}

uint64_t sub_100030020(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

_OWORD *sub_1000300C8(char a1)
{
  *(v3 - 152) = v1;

  return sub_100048C9C(v3 - 144, v2, a1);
}

uint64_t sub_1000300EC(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1000847A8(0, 0xE000000000000000, va);
}

uint64_t sub_100030108(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100030124@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  v4 = v3[1];
}

uint64_t sub_1000301F8()
{
  result = *(v0 - 272);
  v2 = *(v0 - 264);
  return result;
}

uint64_t sub_100030248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100012634(a3, a4);
}

uint64_t sub_100030268()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100030288()
{

  return swift_slowAlloc();
}

uint64_t sub_1000302A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000302F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100030348(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v4 = *(a2 + 16);
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_100012980(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000304B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v27 = *(a2 - 8);
  v28 = a3;
  v6 = *(v27 + 64);
  __chkstk_darwin(a1);
  v29 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys();
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedDecodingContainer();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SwiftXPCCoding.TopLevelContainer();
  v23 = *(v12 - 8);
  v13 = *(v23 + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = a1[4];
  sub_100012980(a1, a1[3]);
  v17 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v30 = v12;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v11, v19);
    (*(v20 + 32))(v15, v29, a2);
    (*(v23 + 32))(v24, v15, v30);
  }

  return sub_100012A18(a1);
}

_BYTE *sub_1000307E4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100030880);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000308A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100012898(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100012898(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1000309F4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x100030BF8);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        sub_10001267C(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_100030C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
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

uint64_t sub_100030D44(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_100030D80(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_100030DF0(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_100013DEC(*a1, *a2);
}

Swift::Int sub_100030E08(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_100013E24(*v1);
}

void sub_100030E1C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_100013DFC(a1, *v2);
}

Swift::Int sub_100030E30(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_100013DFC(v8, *v2);
  return Hasher._finalize()();
}

uint64_t sub_100030E7C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_100030D44(*v1);
}

uint64_t sub_100030E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_100030C74(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_100030EC4(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_100013E6C();
}

uint64_t sub_100030EF0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_100013DE4();
  *a2 = result;
  return result;
}

uint64_t sub_100030F24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100030F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100030FCC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return sub_10001E5F8();
}

Swift::Int sub_100030FD8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_10001E628();
}

void sub_100030FFC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  sub_10001E600();
}

uint64_t sub_100031024(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_100030D74();
}

uint64_t sub_100031034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_100030D80(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_100031084@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_10001E5F8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000310BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100031110(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_100031164(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v7, a2[2], a2[3], a2[4]);
  return Hasher._finalize()();
}

uint64_t sub_1000311E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100031238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10003128C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v78 = a4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  sub_1000325BC();
  v9 = _s13CodableResultO17FailureCodingKeysOMa();
  sub_100032558();
  swift_getWitnessTable();
  sub_100032614();
  v73 = v9;
  v71 = v10;
  v11 = type metadata accessor for KeyedEncodingContainer();
  v12 = sub_100014A8C(v11);
  v75 = v13;
  v76 = v12;
  v15 = *(v14 + 64);
  sub_10002FF34();
  __chkstk_darwin(v16);
  sub_100032608();
  v72 = v17;
  sub_10001F2A0();
  v74 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  sub_10002FC5C();
  v70 = v23 - v22;
  sub_1000325BC();
  v24 = _s13CodableResultO17SuccessCodingKeysOMa();
  sub_100032540();
  swift_getWitnessTable();
  sub_100032614();
  v66 = v24;
  v64 = v25;
  v26 = type metadata accessor for KeyedEncodingContainer();
  v27 = sub_100014A8C(v26);
  v68 = v28;
  v69 = v27;
  v30 = *(v29 + 64);
  sub_10002FF34();
  __chkstk_darwin(v31);
  sub_100032608();
  v65 = v32;
  sub_10001F2A0();
  v67 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v36);
  sub_10002FC5C();
  v63 = v38 - v37;
  sub_10001F2A0();
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v43);
  sub_10002FC5C();
  v46 = v45 - v44;
  v79 = v7;
  v80 = v6;
  sub_1000325BC();
  _s13CodableResultO10CodingKeysOMa();
  v47 = sub_100032570();
  sub_100032620();
  v81 = type metadata accessor for KeyedEncodingContainer();
  sub_100014A8C(v81);
  v83 = v48;
  v50 = *(v49 + 64);
  sub_10002FF34();
  __chkstk_darwin(v51);
  v53 = &v62 - v52;
  v54 = a1[4];
  sub_100012980(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v40 + 16))(v46, v82, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v74;
    v56 = v70;
    v57 = v79;
    (*(v74 + 32))(v70, v46, v79);
    v85 = 1;
    v58 = v72;
    sub_1000325F4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v76;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v60 = v75;
  }

  else
  {
    v55 = v67;
    v56 = v63;
    v57 = v80;
    (*(v67 + 32))(v63, v46, v80);
    v84 = 0;
    v58 = v65;
    sub_1000325F4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v69;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v60 = v68;
  }

  (*(v60 + 8))(v58, v59);
  (*(v55 + 8))(v56, v57);
  return (*(v83 + 8))(v53, v47);
}

uint64_t sub_100031738@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v85 = a5;
  v84 = a4;
  v77 = a6;
  v9 = _s13CodableResultO17FailureCodingKeysOMa();
  sub_100032558();
  swift_getWitnessTable();
  sub_100032614();
  v89 = v10;
  v90 = v9;
  v81 = type metadata accessor for KeyedDecodingContainer();
  sub_100014A8C(v81);
  v80 = v11;
  v13 = *(v12 + 64);
  sub_10002FF34();
  __chkstk_darwin(v14);
  sub_100032608();
  v91 = v15;
  sub_1000325DC();
  v16 = _s13CodableResultO17SuccessCodingKeysOMa();
  sub_100032540();
  swift_getWitnessTable();
  sub_100032614();
  v86 = v17;
  v87 = v16;
  v79 = type metadata accessor for KeyedDecodingContainer();
  sub_100014A8C(v79);
  v78 = v18;
  v20 = *(v19 + 64);
  sub_10002FF34();
  __chkstk_darwin(v21);
  sub_100032608();
  v88 = v22;
  sub_1000325DC();
  _s13CodableResultO10CodingKeysOMa();
  v95 = sub_100032570();
  sub_100032620();
  v23 = type metadata accessor for KeyedDecodingContainer();
  v93 = sub_100014A8C(v23);
  v94 = v24;
  v26 = *(v25 + 64);
  sub_10002FF34();
  __chkstk_darwin(v27);
  v29 = &v75 - v28;
  v82 = a2;
  v83 = a3;
  v30 = _s13CodableResultOMa();
  v31 = sub_100014A8C(v30);
  v92 = v32;
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v31);
  v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35);
  v40 = &v75 - v39;
  __chkstk_darwin(v38);
  v42 = &v75 - v41;
  v43 = a1;
  v44 = a1[3];
  v45 = a1[4];
  v101 = v43;
  sub_100012980(v43, v44);
  v46 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v46)
  {
    v95 = v37;
    v96 = v40;
    v76 = v42;
    v47 = v93;
    v48 = v29;
    *&v97 = KeyedDecodingContainer.allKeys.getter();
    sub_100032620();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v99 = ArraySlice.init<A>(_:)();
    *(&v99 + 1) = v49;
    *&v100 = v50;
    *(&v100 + 1) = v51;
    sub_100032620();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v52 = v97;
    if (v97 == 2 || (v75 = v99, v97 = v99, v98 = v100, (Collection.isEmpty.getter() & 1) == 0))
    {
      v55 = type metadata accessor for DecodingError();
      swift_allocError();
      v57 = v56;
      v58 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
      *v57 = v30;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v55 - 8) + 104))(v57, enum case for DecodingError.typeMismatch(_:), v55);
      swift_willThrow();
      (*(v94 + 8))(v48, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v52)
      {
        LOBYTE(v97) = 1;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v53 = v95;
        v54 = v81;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v61 = sub_10003259C(&v103);
        v62(v61, v54);
        v63 = sub_1000325AC();
        v64(v63);
        sub_1000325CC();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v65 = v53;
        v66 = v92;
        v67 = v77;
      }

      else
      {
        LOBYTE(v97) = 0;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v66 = v92;
        v59 = v79;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v68 = sub_10003259C(&v102);
        v69(v68, v59);
        v70 = sub_1000325AC();
        v71(v70);
        sub_1000325CC();
        swift_unknownObjectRelease();
        v72 = v96;
        swift_storeEnumTagMultiPayload();
        v67 = v77;
        v65 = v72;
      }

      v73 = *(v66 + 32);
      v74 = v76;
      v73(v76, v65, v30);
      v73(v67, v74, v30);
    }
  }

  return sub_100012A18(v101);
}

_BYTE *sub_100031EA4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100031F70);
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

_BYTE *sub_100031FA0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10003203CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003206C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000320E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10003222C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x100032400);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_100032570()
{

  return swift_getWitnessTable();
}

uint64_t sub_10003262C()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

uint64_t sub_1000326AC()
{
  v0 = 8;
  sub_100077764(0, 8, 0);
  do
  {
    swift_stdlib_random();
    sub_1000328D8();
    result = String.init<A>(_:radix:uppercase:)();
    v2 = result;
    v4 = v3;
    v6 = *(&_swiftEmptyArrayStorage + 2);
    v5 = *(&_swiftEmptyArrayStorage + 3);
    if (v6 >= v5 >> 1)
    {
      result = sub_100077764((v5 > 1), v6 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
    v7 = &_swiftEmptyArrayStorage + 16 * v6;
    *(v7 + 4) = v2;
    *(v7 + 5) = v4;
    --v0;
  }

  while (v0);
  v8 = 0;
  v9 = 0;
  v10 = (&_swiftEmptyArrayStorage + 40);
  v11 = v6 + 1;
  while (1)
  {
    if (v11 == v8)
    {

      return v9;
    }

    if (v8 >= *(&_swiftEmptyArrayStorage + 2))
    {
      break;
    }

    ++v8;
    v13 = *(v10 - 1);
    v14 = *v10;

    v12 = String.init<A>(_:)();
    String.append<A>(contentsOf:)();

    v9 = v12;
    v10 += 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032868()
{
  v0 = sub_100012634(&qword_1000D2C80, &unk_100095DA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1000E4520 = result;
  return result;
}

unint64_t sub_1000328D8()
{
  result = qword_1000D2C88;
  if (!qword_1000D2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2C88);
  }

  return result;
}

__n128 sub_100032948(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003295C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10003299C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032A24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100032AAC(void *a1)
{
  v2 = sub_100012634(&qword_1000D2CE8, &qword_100095FD8);
  sub_100014A8C(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_100012634(&qword_1000D2CF0, &qword_100095FE0);
  sub_100014A8C(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_10002FF34();
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  v18 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_100033BDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100033C30();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v9, v2);
  return (*(v12 + 8))(v17, v10);
}

uint64_t sub_100032C68(uint64_t *a1)
{
  v3 = sub_100012634(&qword_1000D2CC8, &qword_100095FC0);
  sub_100014A8C(v3);
  v43 = v4;
  v6 = *(v5 + 64);
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = sub_100012634(&qword_1000D2CD0, &unk_100095FC8);
  sub_100014A8C(v10);
  v44 = v11;
  v13 = *(v12 + 64);
  sub_10002FF34();
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_100033BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v41 = v9;
  v42 = a1;
  v18 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10004DB94(v18, 0);
  v22 = v16;
  if (v20 == v21 >> 1)
  {
    v43 = result;
LABEL_8:
    v33 = v10;
    v34 = v44;
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    v38 = *(sub_100012634(qword_1000D2A78, &qword_1000959C0) + 48);
    *v37 = &type metadata for OfferDisplayRequest.ProductKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v22, v33);
    a1 = v42;
LABEL_9:
    v39 = a1;
    return sub_100012A18(v39);
  }

  if (v20 < (v21 >> 1))
  {
    v23 = sub_10004E284(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v42;
    v30 = v43;
    if (v28)
    {
      sub_100033C30();
      v31 = v41;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v44;
      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v3);
      (*(v32 + 8))(v22, v10);
      v39 = v29;
      return sub_100012A18(v39);
    }

    v43 = v23;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032FF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656E656373 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4B746375646F7270 && a2 == 0xEB00000000646E69)
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

uint64_t sub_10003315C(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x4449656E656373;
      break;
    case 2:
      result = 0x49746375646F7270;
      break;
    case 3:
      result = 0x4B746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000331F8(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D2CF8, &qword_100095FE8);
  sub_100014A8C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_10002FF34();
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_100033ADC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v23 = 0;
  sub_100034204();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v22 = 1;
    sub_100034204();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[4];
    v21 = *(v3 + 40);
    v19[15] = 2;
    sub_100033C84();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19[14] = 3;
    sub_100033CD8();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1000333B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100012634(&qword_1000D2CA8, &qword_100095FB8);
  sub_100014A8C(v5);
  v7 = *(v6 + 64);
  sub_10002FF34();
  __chkstk_darwin(v8);
  v9 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_100033ADC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100012A18(a1);
  }

  sub_1000341F8();
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  sub_1000341F8();
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v13;
  sub_100033B34();
  sub_1000341F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100033B88();
  sub_1000341F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = sub_1000341E8();
  v15(v14);
  result = sub_100012A18(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  return result;
}

uint64_t sub_10003365C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000329F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000336A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001E5F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000336D0(uint64_t a1)
{
  v2 = sub_100033C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003370C(uint64_t a1)
{
  v2 = sub_100033C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032A24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100033798(uint64_t a1)
{
  v2 = sub_100033BDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000337D4(uint64_t a1)
{
  v2 = sub_100033BDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100033810()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100033888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000338B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100033154();
  *a1 = result;
  return result;
}

uint64_t sub_1000338D8(uint64_t a1)
{
  v2 = sub_100033ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033914(uint64_t a1)
{
  v2 = sub_100033ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100033950@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000333B8(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1000339AC(uint64_t a1)
{
  *(a1 + 16) = sub_1000339DC();
  result = sub_100033A30();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1000339DC()
{
  result = qword_1000D2C90;
  if (!qword_1000D2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2C90);
  }

  return result;
}

unint64_t sub_100033A30()
{
  result = qword_1000D2C98;
  if (!qword_1000D2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2C98);
  }

  return result;
}

unint64_t sub_100033A88()
{
  result = qword_1000D2CA0;
  if (!qword_1000D2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CA0);
  }

  return result;
}

unint64_t sub_100033ADC()
{
  result = qword_1000D2CB0;
  if (!qword_1000D2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CB0);
  }

  return result;
}

unint64_t sub_100033B34()
{
  result = qword_1000D2CB8;
  if (!qword_1000D2CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CB8);
  }

  return result;
}

unint64_t sub_100033B88()
{
  result = qword_1000D2CC0;
  if (!qword_1000D2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CC0);
  }

  return result;
}

unint64_t sub_100033BDC()
{
  result = qword_1000D2CD8;
  if (!qword_1000D2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CD8);
  }

  return result;
}

unint64_t sub_100033C30()
{
  result = qword_1000D2CE0;
  if (!qword_1000D2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CE0);
  }

  return result;
}

unint64_t sub_100033C84()
{
  result = qword_1000D2D00;
  if (!qword_1000D2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D00);
  }

  return result;
}

unint64_t sub_100033CD8()
{
  result = qword_1000D2D08;
  if (!qword_1000D2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D08);
  }

  return result;
}

_BYTE *sub_100033D30(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100033DCCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferDisplayRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100033EE0);
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

unint64_t sub_100033F1C()
{
  result = qword_1000D2D10;
  if (!qword_1000D2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D10);
  }

  return result;
}

unint64_t sub_100033F74()
{
  result = qword_1000D2D18;
  if (!qword_1000D2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D18);
  }

  return result;
}

unint64_t sub_100033FCC()
{
  result = qword_1000D2D20;
  if (!qword_1000D2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D20);
  }

  return result;
}

unint64_t sub_100034024()
{
  result = qword_1000D2D28;
  if (!qword_1000D2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D28);
  }

  return result;
}

unint64_t sub_10003407C()
{
  result = qword_1000D2D30;
  if (!qword_1000D2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D30);
  }

  return result;
}

unint64_t sub_1000340D4()
{
  result = qword_1000D2D38;
  if (!qword_1000D2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D38);
  }

  return result;
}

unint64_t sub_10003412C()
{
  result = qword_1000D2D40;
  if (!qword_1000D2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D40);
  }

  return result;
}

unint64_t sub_100034184()
{
  result = qword_1000D2D48;
  if (!qword_1000D2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D48);
  }

  return result;
}

uint64_t sub_100034210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v49 = a1;
  v50 = a2;
  v53 = a4;
  v4 = type metadata accessor for URL();
  v5 = sub_100014A8C(v4);
  v51 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v48 = v10 - v9;
  v11 = type metadata accessor for URL.DirectoryHint();
  v12 = sub_100014A8C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10002FC5C();
  v19 = v18 - v17;
  v20 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v21 = sub_10002FD0C(v20);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v46 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v46 - v31;
  __chkstk_darwin(v30);
  v34 = &v46 - v33;
  v47 = objc_opt_self();
  v35 = [v47 defaultManager];
  v36 = [v35 sk_octanePersistedDataURL];

  if (v36)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  sub_100037CC4(v29, v37);
  sub_100037984(v29, v32);
  v38 = sub_100037C28();
  if (sub_100012898(v38, v39, v4) == 1)
  {
    sub_1000379F4(v32);
    v40 = 1;
  }

  else
  {
    v54 = v49;
    v55 = v50;
    (*(v14 + 104))(v19, enum case for URL.DirectoryHint.isDirectory(_:), v11);
    sub_100012B58();
    URL.appending<A>(path:directoryHint:)();
    (*(v14 + 8))(v19, v11);
    (*(v51 + 8))(v32, v4);
    v40 = 0;
  }

  sub_100037CC4(v34, v40);
  if (v52)
  {
    sub_100037A5C(v34, v26);
    if (sub_100012898(v26, 1, v4) == 1)
    {
      sub_1000379F4(v26);
    }

    else
    {
      v41 = v51;
      v42 = v48;
      (*(v51 + 32))(v48, v26, v4);
      v43 = [v47 defaultManager];
      v44 = sub_100039EF8();

      (*(v41 + 8))(v42, v4);
      if ((v44 & 0x100) == 0 || (v44 & 1) == 0)
      {
        sub_1000379F4(v34);
        return sub_100037CC4(v53, 1);
      }
    }
  }

  return sub_100037984(v34, v53);
}

uint64_t sub_1000346E4(void *a1, int a2)
{
  v3 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100037B9C();

  v4 = sub_1000301E0();
  sub_100034210(v4, v5, a2, v6);
}

uint64_t sub_100034760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v7);
  v9 = *(v8 + 64);
  sub_10002FF34();
  __chkstk_darwin(v10);
  sub_100037C08();
  sub_100034210(a1, a2, 0, v3);
  v11 = type metadata accessor for URL();
  if (sub_100012898(v3, 1, v11) == 1)
  {
    sub_1000379F4(v3);
    v12 = 1;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100012B58();
    URL.appending<A>(component:directoryHint:)();

    (*(*(v11 - 8) + 8))(v3, v11);
    v12 = 0;
  }

  return sub_100037CC4(a3, v12);
}

uint64_t sub_1000348AC(void *a1)
{
  v1 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100037B9C();

  v2 = sub_1000301E0();
  sub_100034760(v2, v3, v4);
}

uint64_t sub_100034928(void *a1)
{
  sub_100012BAC(0, &qword_1000D2D58, LSBundleRecord_ptr);
  v2 = [a1 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_100034A0C(v3, v5, 0);
  v8 = v6;
  if (!v6)
  {
    return 0;
  }

  v9 = [v6 localizedName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_100034A0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_100034AF4(uint64_t a1, unint64_t a2, void *a3)
{
  v160 = a1;
  v161 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = sub_100014A8C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v12 = v11 - v10;
  v13 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v14 = sub_10002FD0C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10002FC38();
  v150 = v17;
  sub_10002FD18();
  __chkstk_darwin(v18);
  v20 = &v145[-v19];
  v21 = type metadata accessor for URL();
  v22 = sub_100014A8C(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_10002FC38();
  v153 = v27;
  sub_10002FD18();
  __chkstk_darwin(v28);
  sub_10002FE54();
  v152 = v29;
  sub_10002FD18();
  __chkstk_darwin(v30);
  sub_10002FE54();
  v154 = v31;
  sub_10002FD18();
  __chkstk_darwin(v32);
  sub_10002FE54();
  v155 = v33;
  sub_10002FD18();
  __chkstk_darwin(v34);
  v36 = &v145[-v35];
  v156 = *(v7 + 104);
  (v156)(v12, enum case for URL.DirectoryHint.checkFileSystem(_:), v4);
  sub_1000348AC(a3);
  v157 = *(v7 + 8);
  v157(v12, v4);
  v37 = sub_100037C28();
  if (sub_100012898(v37, v38, v21) == 1)
  {
    sub_1000379F4(v20);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v39 = type metadata accessor for SKLogger();
    sub_1000128C0(v39, qword_1000E4560);
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    sub_100037B40();
    v162 = 0xD00000000000001ELL;
    v163 = v40;
    v41 = [a3 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100037B9C();

    v42._countAndFlagsBits = sub_1000301E0();
    String.append(_:)(v42);

    v43 = static os_log_type_t.error.getter();

    v44 = Logger.logObject.getter();

    if (os_log_type_enabled(v44, v43))
    {
      sub_10002FF14();
      v45 = swift_slowAlloc();
      sub_10002FE48();
      v46 = swift_slowAlloc();
      v162 = v46;
      *v45 = 136446466;
      v48 = sub_100037CAC(v46, v47, &v162);
      v49 = sub_100037B8C(v48);
      v51 = sub_100037C94(v49, v50, &v162);

      *(v45 + 14) = v51;
      sub_100037B4C(&_mh_execute_header, v52, v53, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    return;
  }

  v151 = v24;
  v54 = *(v24 + 32);
  v158 = v36;
  v149 = v21;
  v54(v36, v20, v21);
  v148 = a3;
  sub_100034928(a3);
  if (!v55)
  {
    goto LABEL_14;
  }

  v56 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v164 = 0;
  v147 = v56;
  v58 = [(__CFString *)v56 JSONObjectWithData:isa options:1 error:&v164];

  v59 = v164;
  if (!v58)
  {
    v65 = v59;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v159 = 0;
LABEL_14:
    sub_100019008(v160, v161);
    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100012BAC(0, &qword_1000D2D50, NSMutableDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v60 = v164;
  v61 = String._bridgeToObjectiveC()();

  v162 = 0x656D614E707061;
  v163 = 0xE700000000000000;
  [v60 __swift_setObject:v61 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  v162 = 0;
  v62 = [(__CFString *)v147 dataWithJSONObject:v60 options:1 error:&v162];
  v63 = v162;
  if (!v62)
  {
    v134 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_25;
  }

  v160 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v161 = v64;

LABEL_15:
  v66 = objc_opt_self();
  v67 = [v66 defaultManager];
  v68 = sub_100039EF8();

  v69 = [v66 defaultManager];
  URL._bridgeToObjectiveC()(v70);
  v72 = v71;
  if ((v68 & 0x100) != 0 || (v68 & 1) == 0)
  {
    v162 = 0;
    v100 = [v69 createDirectoryAtURL:v71 withIntermediateDirectories:1 attributes:0 error:&v162];

    v75 = v161;
    v74 = v162;
    if (v100)
    {
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v163 = v101;
      (v156)(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
      sub_100012B58();
      v102 = v74;
      v103 = v153;
      v104 = v158;
      URL.appending<A>(path:directoryHint:)();
      v105 = sub_100037B7C();
      v106(v105);

      v108 = v159;
      v107 = v160;
      Data.write(to:options:)();
      v109 = v149;
      if (v108)
      {
        sub_100018DF0(v107, v75);
        v95 = *(v151 + 8);
        v95(v103, v109);
        v110 = v104;
        v111 = v109;
LABEL_28:
        v95(v110, v111);
        return;
      }

      v114 = *(v151 + 8);
      v114(v103, v149);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v162 = 0;
  v73 = [v69 URLForDirectory:99 inDomain:1 appropriateForURL:v71 create:1 error:&v162];

  v75 = v161;
  v74 = v162;
  if (!v73)
  {
LABEL_24:
    v112 = v74;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100018DF0(v160, v75);
LABEL_25:
    (*(v151 + 8))(v158, v149);
    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v74;

  v147 = @"Configuration.storekit";
  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v77;
  v146 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v156(v12);
  v78 = sub_100012B58();
  v79 = v154;
  v153 = v78;
  URL.appending<A>(path:directoryHint:)();
  v80 = sub_100037B7C();
  v81(v80);

  v82 = [v66 defaultManager];
  URL._bridgeToObjectiveC()(v83);
  v85 = v84;
  v162 = 0;
  v86 = [v82 createDirectoryAtURL:v84 withIntermediateDirectories:0 attributes:0 error:&v162];

  v87 = v162;
  if (!v86)
  {
    v113 = v162;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v95 = *(v151 + 8);
    v96 = v149;
    v95(v79, v149);
    v97 = v155;
    sub_10003599C();
    v98 = v160;
    v99 = v161;
    goto LABEL_27;
  }

  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v88;
  (v156)(v12, v146, v4);
  v89 = v87;
  v90 = v152;
  URL.appending<A>(path:directoryHint:)();
  v91 = sub_100037B7C();
  v92(v91);

  v93 = v160;
  v75 = v161;
  v94 = v159;
  Data.write(to:options:)();
  if (v94)
  {
    v95 = *(v151 + 8);
    v96 = v149;
    v95(v90, v149);
    v95(v79, v96);
    v97 = v155;
    sub_10003599C();
    v98 = v93;
    v99 = v75;
LABEL_27:
    sub_100018DF0(v98, v99);
    v95(v97, v96);
    v110 = v158;
    v111 = v96;
    goto LABEL_28;
  }

  v159 = 0;
  v135 = *(v151 + 8);
  v109 = v149;
  v156 = (v151 + 8);
  v157 = v135;
  v135(v90, v149);
  v136 = [v66 defaultManager];
  v162 = 46;
  v163 = 0xE100000000000000;
  v137._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v137);

  v138 = v150;
  v139 = v159;
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (v139)
  {
    v140 = v157;
    v157(v154, v109);

    v141 = v155;
    sub_10003599C();
    sub_100018DF0(v93, v75);
    v140(v141, v109);
    v140(v158, v109);
    return;
  }

  sub_1000379F4(v138);
  v143 = v157;
  v157(v154, v109);
  v144 = v155;
  sub_10003599C();
  v143(v144, v109);
  v114 = v143;
LABEL_30:
  v157 = v114;
  v161 = v75;
  v159 = 0;
  v115 = v148;
  if (qword_1000D1AE8 != -1)
  {
    sub_10002FBAC();
    swift_once();
  }

  v116 = type metadata accessor for SKLogger();
  sub_1000128C0(v116, qword_1000E4560);
  v162 = 0;
  v163 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  sub_100037B40();
  v162 = 0xD00000000000001DLL;
  v163 = v117;
  v118 = [v115 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100037B9C();

  v119._countAndFlagsBits = sub_1000301E0();
  String.append(_:)(v119);

  v120 = v162;
  v121 = v163;
  v122 = [v115 logKey];
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;

  v126 = static os_log_type_t.debug.getter();

  v127 = Logger.logObject.getter();

  if (os_log_type_enabled(v127, v126))
  {
    sub_10002FF14();
    v128 = swift_slowAlloc();
    sub_10002FE48();
    v164 = swift_slowAlloc();
    *v128 = 136446466;
    v162 = 91;
    v163 = 0xE100000000000000;
    v129._countAndFlagsBits = v123;
    v129._object = v125;
    String.append(_:)(v129);
    v130._countAndFlagsBits = sub_100037BA8();
    String.append(_:)(v130);
    v131 = v120;
    v132 = sub_1000847A8(v162, v163, &v164);

    *(v128 + 4) = v132;
    *(v128 + 12) = 2082;
    v133 = sub_1000847A8(v131, v121, &v164);

    *(v128 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v127, v126, "%{public}s%{public}s", v128, 0x16u);
    swift_arrayDestroy();
    v109 = v149;
    sub_10002FCC8();

    v115 = v148;
    sub_10002FCC8();
  }

  else
  {
  }

  v142 = v157;
  sub_100035ABC(v115);
  sub_100018DF0(v160, v161);
  v142(v158, v109);
}