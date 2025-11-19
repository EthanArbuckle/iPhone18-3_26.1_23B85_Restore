int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v3, v4, 0, 0);
  return 0;
}

uint64_t sub_100001920(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001998(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001A18@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100001A5C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100001A98()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001AEC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100001B70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100001C08(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D888, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001C74(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D888, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001CE0(void *a1, uint64_t a2)
{
  v4 = sub_100002088(&qword_10001D888, type metadata accessor for LAError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002088(&qword_10001D888, type metadata accessor for LAError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100001E10()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100001E70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100001ED4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001F3C(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D898, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_100002088(&qword_10001D8A0, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000020D0(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D850, type metadata accessor for LAError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000213C(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D850, type metadata accessor for LAError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000021AC(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D888, type metadata accessor for LAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002088(&qword_10001D888, type metadata accessor for LAError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1000024AC()
{
  result = qword_10001D878;
  if (!qword_10001D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D878);
  }

  return result;
}

void sub_100002614(uint64_t a1, unint64_t *a2)
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

Swift::Int sub_10000267C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000026F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100002740()
{
  v0 = type metadata accessor for FamilyCircle();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = FamilyCircle.init()();
  qword_10001D920 = result;
  return result;
}

uint64_t sub_100002780(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v98 = a4;
  v7 = type metadata accessor for AppleAccount();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v90 - v13;
  v15 = type metadata accessor for Logger();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v90 - v21;
  __chkstk_darwin(v20);
  v24 = &v90 - v23;
  if (a2)
  {
    swift_errorRetain();
    v25 = _convertErrorToNSError(_:)();
    v26 = [v25 ak_isUserCancelError];

    if (v26)
    {
      sub_1000031AC();
      v27 = swift_allocError();
      *v28 = 0;

      a2 = v27;
    }

    v29 = _convertErrorToNSError(_:)();
    v30 = [v29 ak_isServiceError];

    if (v30)
    {
      v31 = type metadata accessor for FamilyControlsError();
      sub_100003BE8();
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, enum case for FamilyControlsError.networkError(_:), v31);

      a2 = v32;
    }

    static Logger.authenticationUI.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v100 = v37;
      *v36 = 136446210;
      v99[0] = a2;
      swift_errorRetain();
      sub_100003200(&qword_10001D940, &qword_100011320);
      v38 = String.init<A>(describing:)();
      v40 = sub_10000F11C(v38, v39, &v100);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Authentication failed with error: %{public}s", v36, 0xCu);
      sub_100003B9C(v37);
    }

    (*(v96 + 8))(v24, v97);
    *&v100 = a2;
    v103 = 1;
    swift_errorRetain();
    a3(&v100);

    return sub_100003FE8(&v100, &qword_10001D930, qword_100011300);
  }

  v93 = v14;
  v94 = v8;
  v95 = a3;
  if (!a1)
  {
    goto LABEL_25;
  }

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_25:
    sub_1000031AC();
    v67 = swift_allocError();
    v69 = 4;
LABEL_26:
    *v68 = v69;
    *&v100 = v67;
    v103 = 1;
    v95(&v100);
    return sub_100003FE8(&v100, &qword_10001D930, qword_100011300);
  }

  v43 = sub_100005A88(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
    goto LABEL_25;
  }

  v99[0] = *(*(a1 + 56) + 8 * v43);
  swift_unknownObjectRetain();
  sub_100003200(&qword_10001D938, &unk_1000118C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = v100;
  static Logger.authenticationUI.getter();

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v49 = os_log_type_enabled(v47, v48);
  v92 = v46;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v100 = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_10000F11C(v46, *(&v46 + 1), &v100);
    _os_log_impl(&_mh_execute_header, v47, v48, "Authenticated account altDSIS: %{public}s", v50, 0xCu);
    sub_100003B9C(v51);
  }

  v52 = *(v96 + 8);
  v52(v22, v97);
  v53 = v94;
  if ((sub_1000094CC(0) & 1) == 0)
  {
    if (qword_10001D740 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v71 = dispatch thunk of FamilyCircle.guardians.getter();
      v72 = v71;
      v73 = *(v71 + 16);
      v74 = v92;
      if (!v73)
      {
        break;
      }

      v75 = 0;
      v76 = v71 + 32;
      while (v75 < *(v72 + 16))
      {
        sub_100003A78(v76, &v100);
        sub_100003ADC(&v100, v101);
        v77 = dispatch thunk of FamilyMemberable.altDSID.getter();
        if (v78)
        {
          if (v77 == v74 && v78 == *(&v74 + 1))
          {

            goto LABEL_50;
          }

          v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v80)
          {

LABEL_50:

            sub_100003B20(&v100, v99);
            sub_100003A78(v99, &v100);
            v103 = 0;
            v95(&v100);
            sub_100003FE8(&v100, &qword_10001D930, qword_100011300);
            return sub_100003B9C(v99);
          }
        }

        ++v75;
        sub_100003B9C(&v100);
        v76 += 40;
        if (v73 == v75)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_52:
      swift_once();
    }

LABEL_40:

    sub_1000031AC();
    v67 = swift_allocError();
    v69 = 2;
    goto LABEL_26;
  }

  v54 = v93;
  AppleAccount.init()();
  static Logger.authenticationUI.getter();
  v55 = v7;
  v91 = *(v53 + 16);
  v91(v12, v54, v7);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v100 = v90;
    *v58 = 136446210;
    v59 = AppleAccount.altDSID.getter();
    if (v60)
    {
      v61 = v59;
    }

    else
    {
      v61 = 1280070990;
    }

    v62 = v53;
    if (v60)
    {
      v63 = v60;
    }

    else
    {
      v63 = 0xE400000000000000;
    }

    v64 = v12;
    v65 = *(v62 + 8);
    v65(v64, v55);
    v66 = sub_10000F11C(v61, v63, &v100);

    *(v58 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v56, v57, "Primary account altDSIS: %{public}s", v58, 0xCu);
    sub_100003B9C(v90);
  }

  else
  {

    v81 = v12;
    v65 = *(v53 + 8);
    v65(v81, v7);
  }

  v52(v19, v97);
  v82 = v95;
  v83 = v93;
  v84 = AppleAccount.altDSID.getter();
  if (v85)
  {
    if (__PAIR128__(v85, v84) == v92)
    {

LABEL_47:
      v101 = v55;
      v102 = &protocol witness table for AppleAccount;
      v87 = sub_100003B38(&v100);
      v91(v87, v83, v55);
      v103 = 0;
      v82(&v100);
      v65(v83, v55);
      return sub_100003FE8(&v100, &qword_10001D930, qword_100011300);
    }

    v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v86)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  sub_1000031AC();
  v88 = swift_allocError();
  *v89 = 2;
  *&v100 = v88;
  v103 = 1;
  v82(&v100);
  sub_100003FE8(&v100, &qword_10001D930, qword_100011300);
  return (v65)(v83, v55);
}

unint64_t sub_1000031AC()
{
  result = qword_10001D928;
  if (!qword_10001D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D928);
  }

  return result;
}

uint64_t sub_100003200(uint64_t *a1, uint64_t *a2)
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

void sub_100003248(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v16)
  {
    sub_100003FE8(v15, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v15, v16);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v15);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000112F0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100004048();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v12 = 0x8000000100012A20;
    v11 = 0xD00000000000001ALL;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD000000000000020;
  v12 = 0x8000000100012A40;
LABEL_8:
  sub_10000A640(v11, v12);

  v14 = String._bridgeToObjectiveC()();

  [a3 setReason:v14];
}

void sub_100003454(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v16)
  {
    sub_100003FE8(v15, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v15, v16);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v15);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000112F0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100004048();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v12 = 0x8000000100012A70;
    v11 = 0xD000000000000017;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD00000000000001DLL;
  v12 = 0x8000000100012A90;
LABEL_8:
  sub_10000A640(v11, v12);

  v14 = String._bridgeToObjectiveC()();

  [a3 setReason:v14];
}

void sub_100003660(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v16)
  {
    sub_100003FE8(v15, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v15, v16);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v15);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000112F0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100004048();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v12 = 0x8000000100012AB0;
    v11 = 0xD000000000000019;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD00000000000001FLL;
  v12 = 0x8000000100012AD0;
LABEL_8:
  sub_10000A640(v11, v12);

  v14 = String._bridgeToObjectiveC()();

  [a3 setReason:v14];
}

void sub_10000386C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v16)
  {
    sub_100003FE8(v15, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v15, v16);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v15);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000112F0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100004048();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v12 = 0x8000000100012AF0;
    v11 = 0xD000000000000019;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD00000000000001FLL;
  v12 = 0x8000000100012B10;
LABEL_8:
  sub_10000A640(v11, v12);

  v14 = String._bridgeToObjectiveC()();

  [a3 setReason:v14];
}

uint64_t sub_100003A78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100003ADC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003B20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_100003B38(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003B9C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100003BE8()
{
  result = qword_10001D948;
  if (!qword_10001D948)
  {
    type metadata accessor for FamilyControlsError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D948);
  }

  return result;
}

id sub_100003C40(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  result = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (result)
  {
    v15 = result;
    if (a1 <= 1u)
    {
      if (a1)
      {
        sub_100003454(a2, a3, v13);
      }

      else
      {
        sub_100003248(a2, a3, v13);
      }
    }

    else if (a1 == 2)
    {
      sub_100003660(a2, a3, v13);
    }

    else
    {
      if (a1 != 3)
      {

        static Logger.authorization.getter();
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Unknown authorization type. Returning nil.", v18, 2u);
        }

        else
        {
        }

        (*(v9 + 8))(v12, v8);

        return 0;
      }

      sub_10000386C(a2, a3, v13);
    }

    sub_10000A91C();
    v19 = String._bridgeToObjectiveC()();

    [v13 setTitle:v19];

    if ((sub_1000094CC(0) & 1) == 0)
    {

LABEL_19:
      [v13 setIsEphemeral:1];
      [v13 setAuthenticationType:2];
      [v13 setShouldPromptForPasswordOnly:1];
      [v13 setPresentingViewController:a4];

      return v13;
    }

    result = [v13 title];
    if (result)
    {
      v20 = result;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v26 = v21;
      v27 = v23;
      v24._countAndFlagsBits = 0xD000000000000020;
      v24._object = 0x80000001000129F0;
      String.append(_:)(v24);
      if (v27)
      {
        v25 = String._bridgeToObjectiveC()();
      }

      else
      {
        v25 = 0;
      }

      [v13 setTitle:v25];

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003200(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100004048()
{
  result = qword_10001D960;
  if (!qword_10001D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D960);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuthenticationError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004214()
{
  result = qword_10001D968;
  if (!qword_10001D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D968);
  }

  return result;
}

uint64_t sub_100004268(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ConfirmationViewController();
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v5 = qword_10001D9C8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100005E5C;
    *(v6 + 24) = 0;
    v10[4] = sub_100005000;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10000AC10;
    v10[3] = &unk_100018D20;
    v7 = _Block_copy(v10);

    dispatch_sync(v5, v7);
    _Block_release(v7);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
      {
        v8 = *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8);
        v9 = *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_100004550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI26ConfirmationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for ConfirmationViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_100004814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000487C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100003200(&qword_10001D958, &unk_100011330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000112F0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100004048();
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_10000A91C();

  v9 = a4[4];
  sub_100003ADC(a4, a4[3]);
  v10 = dispatch thunk of FamilyMemberable.firstName.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = "CONFIRMATION_APPROVE_MESSAGE";
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000112E0;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v8;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v8;
    *(v15 + 72) = v12;
    *(v15 + 80) = v13;

    v16 = 0xD000000000000023;
  }

  else
  {
    v14 = "CONFIRMATION_APPROVE_TITLE";
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000112F0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v8;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;

    v16 = 0xD00000000000001CLL;
  }

  sub_10000A640(v16, v14 | 0x8000000000000000);

  type metadata accessor for ConfirmationViewController();
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();

  v21 = [v18 initWithTitle:v19 detailText:v20 icon:a3];

  sub_100004BE8();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = v21;
  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25 = [objc_opt_self() boldButton];
  sub_10000A91C();
  v26 = String._bridgeToObjectiveC()();

  [v25 setTitle:v26 forState:0];

  [v25 addAction:v24 forControlEvents:64];
  v27 = [v23 buttonTray];
  [v27 addButton:v25];

  return v23;
}

unint64_t sub_100004BE8()
{
  result = qword_10001D9A0;
  if (!qword_10001D9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D9A0);
  }

  return result;
}

uint64_t sub_100004C34()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100004C84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100003200(&qword_10001D958, &unk_100011330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000112F0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100004048();
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_10000A91C();

  v9 = a4[4];
  sub_100003ADC(a4, a4[3]);
  v10 = dispatch thunk of FamilyMemberable.firstName.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = "CONFIRMATION_DENY_MESSAGE";
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000112E0;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v8;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v8;
    *(v15 + 72) = v12;
    *(v15 + 80) = v13;

    v16 = 0xD000000000000020;
  }

  else
  {
    v14 = "CONFIRMATION_DENY_TITLE";
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000112F0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v8;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;

    v16 = 0xD000000000000019;
  }

  sub_10000A640(v16, v14 | 0x8000000000000000);

  type metadata accessor for ConfirmationViewController();
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();

  v21 = [v18 initWithTitle:v19 detailText:v20 icon:a3];

  sub_100004BE8();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = v21;
  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25 = [objc_opt_self() boldButton];
  sub_10000A91C();
  v26 = String._bridgeToObjectiveC()();

  [v25 setTitle:v26 forState:0];

  [v25 addAction:v24 forControlEvents:64];
  v27 = [v23 buttonTray];
  [v27 addButton:v25];

  return v23;
}

uint64_t sub_100005008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005068()
{
  v7 = 0;
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v0 = qword_10001D9C8;
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000071E8;
  *(v2 + 24) = v1;
  aBlock[4] = sub_100007750;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AC10;
  aBlock[3] = &unk_100018F28;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v0, v3);
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

void sub_1000051FC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v8 = qword_10001D9C8;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10000702C;
  *(v10 + 24) = v9;
  v16[4] = sub_100007750;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000AC10;
  v16[3] = &unk_100018E60;
  v11 = _Block_copy(v16);
  v12 = a1;
  v13 = a2;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = CFRunLoopGetMain();
    CFRunLoopAddSource(v15, v13, kCFRunLoopCommonModes);
  }
}

uint64_t sub_1000053D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v4 = qword_10001D9C8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100005E5C;
  *(v5 + 24) = 0;
  v11[4] = sub_100005000;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000AC10;
  v11[3] = &unk_100018DE8;
  v6 = _Block_copy(v11);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (!a1 || a1 == 3)
    {
      sub_100006F20();
      v8 = swift_allocError();
      *v9 = 0;
    }

    else
    {
      if (a1 == 1)
      {
        return a2(1, 0);
      }

      sub_100006F20();
      v8 = swift_allocError();
      *v10 = 1;
    }

    a2(v8, 1);
  }

  return result;
}

uint64_t sub_1000055C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v4 = qword_10001D9C8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100005E5C;
  *(v5 + 24) = 0;
  v11[4] = sub_100007750;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000AC10;
  v11[3] = &unk_100018EB0;
  v6 = _Block_copy(v11);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (a1 == 3)
    {
      sub_100006F20();
      v8 = swift_allocError();
      *v9 = 0;
    }

    else
    {
      if (!a1)
      {
        return a2(1, 0);
      }

      sub_100006F20();
      v8 = swift_allocError();
      *v10 = 1;
    }

    a2(v8, 1);
  }

  return result;
}

uint64_t sub_1000057B8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_100005F48();
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_100005F94();
  sub_100003200(&qword_10001D9E0, &unk_1000114D0);
  sub_100005FEC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10001D9C8 = result;
  return result;
}

uint64_t sub_1000059C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = xmmword_10001D9A8;
  *&xmmword_10001D9A8 = a1;
  *(&xmmword_10001D9A8 + 1) = a2;
  qword_10001D9B8 = a3;
  qword_10001D9C0 = a4;
  sub_100005F00(v6, *(&v6 + 1));
  v7 = a1;
  v8 = a2;
}

uint64_t sub_100005A2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_100005A78(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100005A88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100005BD8(a1, a2, v6);
}

unint64_t sub_100005B00(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005C90(a1, v4);
}

unint64_t sub_100005B94(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100005D94(a1, v4);
}

unint64_t sub_100005BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100005D94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000074D0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000752C(v8);
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

void *sub_100005E5C()
{
  if (xmmword_10001D9A8)
  {
    v0 = *(&xmmword_10001D9A8 + 1);
    v1 = xmmword_10001D9A8;
    v2 = v0;

    CFRunLoopSourceInvalidate(v2);
    CFUserNotificationCancel(v1);

    v3 = xmmword_10001D9A8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(&xmmword_10001D9A8 + 1);
  xmmword_10001D9A8 = 0u;
  *&qword_10001D9B8 = 0u;

  return sub_100005F00(v3, v4);
}

void *sub_100005F00(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100005F48()
{
  result = qword_10001D9D0;
  if (!qword_10001D9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D9D0);
  }

  return result;
}

unint64_t sub_100005F94()
{
  result = qword_10001D9D8;
  if (!qword_10001D9D8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D9D8);
  }

  return result;
}

unint64_t sub_100005FEC()
{
  result = qword_10001D9E8;
  if (!qword_10001D9E8)
  {
    sub_100006050(&qword_10001D9E0, &unk_1000114D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D9E8);
  }

  return result;
}

uint64_t sub_100006050(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100006098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003200(&qword_10001DA08, &qword_1000114F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007468(v4, &v13, &qword_10001DA00, &qword_1000114E8);
      v5 = v13;
      v6 = v14;
      result = sub_100005A88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006FBC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000061C8(uint64_t a1, uint64_t a2, int a3)
{
  v51 = a3;
  v5 = type metadata accessor for AppleAccount();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(LSApplicationRecord);

  v10 = sub_100009118(a1, a2, 1);
  v11 = [v10 localizedName];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_100003200(&qword_10001D958, &unk_100011330);
  v15 = swift_allocObject();
  v48 = xmmword_1000112F0;
  *(v15 + 16) = xmmword_1000112F0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_100004048();
  *(v15 + 64) = v16;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;

  v17 = sub_10000A91C();
  v49 = v18;
  v50 = v17;

  if (v51)
  {
    AppleAccount.init()();
    v19 = AppleAccount.firstName.getter();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000112E0;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = v16;
      *(v23 + 32) = v12;
      *(v23 + 40) = v14;
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = v16;
      *(v23 + 72) = v21;
      *(v23 + 80) = v22;
    }

    else
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v48;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = v16;
      *(v28 + 32) = v12;
      *(v28 + 40) = v14;
    }

    v25 = sub_10000A91C();
    v27 = v29;

    (*(v46 + 8))(v8, v47);
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v48;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v16;
    *(v24 + 32) = v12;
    *(v24 + 40) = v14;

    v25 = sub_10000A91C();
    v27 = v26;
  }

  v30 = sub_10000A91C();
  v32 = v31;
  v33 = sub_10000A91C();
  v35 = v34;
  sub_100003200(&qword_10001D9F8, &qword_1000114E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000114B0;
  result = kCFUserNotificationAlertHeaderKey;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v38;
  *(inited + 72) = &type metadata for String;
  v39 = v49;
  *(inited + 48) = v50;
  *(inited + 56) = v39;
  result = kCFUserNotificationAlertMessageKey;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v40;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v25;
  *(inited + 104) = v27;
  result = kCFUserNotificationDefaultButtonTitleKey;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v41;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v30;
  *(inited + 152) = v32;
  result = kCFUserNotificationAlternateButtonTitleKey;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v42;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v33;
  *(inited + 200) = v35;
  result = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 224) = result;
  *(inited + 232) = v43;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  if (SBUserNotificationWakeDisplay)
  {

    *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 280) = v44;
    *(inited + 312) = &type metadata for Bool;
    *(inited + 288) = 0;
    sub_100006098(inited);
    swift_setDeallocating();
    sub_100003200(&qword_10001DA00, &qword_1000114E8);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return isa;
  }

LABEL_19:
  __break(1u);
  return result;
}

CFStringRef sub_1000066E4()
{
  v0 = sub_10000A91C();
  v2 = v1;
  v3 = sub_10000A640(0xD000000000000023, 0x8000000100012DD0);
  v5 = v4;
  v6 = sub_10000A91C();
  v8 = v7;
  sub_100003200(&qword_10001D9F8, &qword_1000114E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000114C0;
  result = kCFUserNotificationAlertHeaderKey;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v0;
  *(inited + 56) = v2;
  result = kCFUserNotificationAlertMessageKey;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v3;
  *(inited + 104) = v5;
  result = kCFUserNotificationDefaultButtonTitleKey;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 152) = v8;
  result = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v14;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  result = SBUserNotificationWakeDisplay;
  if (SBUserNotificationWakeDisplay)
  {
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v15;
    *(inited + 264) = &type metadata for Bool;
    *(inited + 240) = 0;
    sub_100006098(inited);
    swift_setDeallocating();
    sub_100003200(&qword_10001DA00, &qword_1000114E8);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return isa;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_10000690C(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, int a5, uint64_t a6, unint64_t a7)
{
  v14 = type metadata accessor for Logger();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  v16 = __chkstk_darwin(v14);
  v51 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - v19;
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  v54 = a5;
  *(v23 + 24) = a5;
  v55 = a6;
  *(v23 + 32) = a6;
  *(v23 + 40) = a7;
  v24 = a7;
  v25 = a4;

  if (sub_100005068())
  {
    static Logger.authorization.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Already presenting a user notification. Rejecting the new request.", v28, 2u);
    }

    (*(v52 + 8))(v22, v53);
    sub_100006F20();
    v29 = swift_allocError();
    *v30 = 0;
    sub_10000CC94(v29, 1, v25, v54, v55, v24);
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v31 = sub_1000061C8(a1, a2, 0);
      }

      else
      {
        v31 = sub_1000066E4();
      }
    }

    else
    {
      v31 = sub_1000061C8(a1, a2, 1);
    }

    v32 = v31;
    error = 0;
    v33 = CFUserNotificationCreate(0, 0.0, 0, &error, v31);
    if (v33)
    {
      v34 = v33;
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v34, sub_1000051F4, 0);
      if (RunLoopSource)
      {
        v36 = RunLoopSource;
        if (a3 >= 2u)
        {
          v37 = sub_100006FAC;
        }

        else
        {
          v37 = sub_100006FB4;
        }

        v38 = swift_allocObject();
        *(v38 + 16) = sub_100006F0C;
        *(v38 + 24) = v23;
        v39 = v34;
        v40 = v36;

        sub_1000051FC(v39, v40, v37, v38);
      }

      else
      {
        static Logger.authorization.getter();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Failed to create run loop source", v48, 2u);
        }

        (*(v52 + 8))(v51, v53);
        sub_100006F20();
        v49 = swift_allocError();
        *v50 = 1;
        sub_10000CC94(v49, 1, v25, v54, v55, v24);
      }
    }

    else
    {
      static Logger.authorization.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67109120;
        swift_beginAccess();
        *(v43 + 4) = error;
        _os_log_impl(&_mh_execute_header, v41, v42, "Failed to create user notification. ErrorCode: %d", v43, 8u);
      }

      (*(v52 + 8))(v20, v53);
      sub_100006F20();
      v44 = swift_allocError();
      *v45 = 1;
      sub_10000CC94(v44, 1, v25, v54, v55, v24);
    }
  }
}

uint64_t sub_100006ECC()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100006F20()
{
  result = qword_10001D9F0;
  if (!qword_10001D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D9F0);
  }

  return result;
}

uint64_t sub_100006F74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_100006FBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FE4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007048(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xmmword_10001D9A8)
  {
    v7 = qword_10001D9B8;

    v7(a1 & 3);
  }

  else
  {
    static Logger.authorization.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No response handler provided for the presented notification, ignoring the response.", v11, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

unint64_t sub_100007204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003200(&qword_10001DA10, &qword_1000114F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007468(v4, &v11, &qword_10001DA18, &qword_100011500);
      v5 = v11;
      result = sub_100005B00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006FBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_10000732C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003200(&qword_10001DA20, &qword_100011508);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007468(v4, v13, &qword_10001DA28, qword_100011510);
      result = sub_100005B94(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100006FBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100007468(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003200(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for NotificationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000076E0()
{
  result = qword_10001DA30;
  if (!qword_10001DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA30);
  }

  return result;
}

UIImage *sub_100007760(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 traitCollection];
  [v9 displayScale];
  v11 = v10;

  [v2 size];
  v13 = v12 + v12;
  [v2 size];
  v38.width = v13;
  UIGraphicsBeginImageContextWithOptions(v38, 0, v11);
  [v2 size];
  v15 = v14 + -40.0;
  [v2 size];
  v17 = v16;
  [v2 size];
  v19 = v18;
  [v2 size];
  v21 = v20;
  [v2 size];
  v23 = v22;
  [v2 drawInRect:{v15, 0.0, v17, v19}];
  [a1 drawInRect:0 blendMode:0.0 alpha:{0.0, v21, v23, 1.0}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  if (v24)
  {
    v25 = v24;
    UIGraphicsEndImageContext();
  }

  else
  {
    [v2 size];
    v28 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v26 scale:{v27, v11}];
    v29 = [objc_opt_self() genericApplicationIcon];
    v30 = [v29 prepareImageForDescriptor:v28];

    if (v30)
    {
      v31 = [v30 CGImage];

      if (v31)
      {
        v32 = [objc_allocWithZone(UIImage) initWithCGImage:v31];

        return v32;
      }
    }

    static Logger.authenticationUI.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to resolve merged icons and generic icon", v36, 2u);
    }

    (*(v5 + 8))(v8, v4);
    v25 = [objc_allocWithZone(UIImage) init];
  }

  return v25;
}

uint64_t sub_100007AD4(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = (*(*(sub_100003200(&qword_10001DA70, &unk_1000116C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100008F64(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v11 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    sub_100007204(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100008FCC(&qword_10001D898, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 openURL:v14 options:isa completionHandler:0];

    (*(v7 + 8))(v10, v6);
  }

  v16 = type metadata accessor for FamilyControlsError();
  sub_100008FCC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
  v17 = swift_allocError();
  (*(*(v16 - 8) + 104))(v18, enum case for FamilyControlsError.authorizationCanceled(_:), v16);
  a2(v17);
}

void sub_100007DE4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100008E70(0, &qword_10001D9A0, UIAction_ptr);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = [objc_opt_self() boldButton];
  if (a1)
  {
    sub_10000A91C();
    v11 = String._bridgeToObjectiveC()();

    [v10 setTitle:v11 forState:0];
  }

  else
  {
    v11 = [objc_allocWithZone(LAContext) init];
    if ([v11 canEvaluatePolicy:1 error:0])
    {
      [v11 biometryType];
    }

    sub_10000A91C();

    v12 = String._bridgeToObjectiveC()();

    [v10 setTitle:v12 forState:0];
  }

  [v10 addAction:v9 forControlEvents:64];
  v13 = [v4 buttonTray];
  [v13 addButton:v10];
}

void sub_1000080B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v9[4] = sub_100008F44;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000827C;
  v9[3] = &unk_100019058;
  v8 = _Block_copy(v9);

  [a2 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_10000819C(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for FamilyControlsError();
  sub_100008FCC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, enum case for FamilyControlsError.authorizationCanceled(_:), v2);
  a1(v3);
}

uint64_t sub_10000827C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100008344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI27InformationalViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for InformationalViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_100008608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InformationalViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008E70(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100008EB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008EF8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008F64(uint64_t a1)
{
  v2 = sub_100003200(&qword_10001DA70, &unk_1000116C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009014()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t static LSResolutions.resolveApplicationName(_:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_100009118(a1, a2, 1);
  v6 = [v5 localizedName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

id sub_100009118(uint64_t a1, uint64_t a2, char a3)
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

id _s30FamilyControlsAuthenticationUI13LSResolutionsC31resolveApplicationIconAsUIImageySo0J0CSSFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v10 = objc_allocWithZone(ISIcon);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithBundleIdentifier:v11];

  v13 = [v12 prepareImageForDescriptor:v9];
  if (v13 && (v14 = [v13 CGImage], v13, v14))
  {
    v15 = [objc_allocWithZone(UIImage) initWithCGImage:v14];
  }

  else
  {
    static Logger.family.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_10000F11C(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to resolve icon for bundle identifier: %{private}s", v18, 0xCu);
      sub_100003B9C(v19);
    }

    (*(v5 + 8))(v8, v4);
    v15 = [objc_allocWithZone(UIImage) init];
  }

  return v15;
}

uint64_t sub_1000094CC(int a1)
{
  v31 = a1;
  v1 = 0xD000000000000010;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = os_variant_allows_internal_security_policies();
  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSuiteName:v9];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if (v12)
    {

      v13 = 1;
    }

    else
    {
      v14 = String._bridgeToObjectiveC()();
      v15 = [v10 BOOLForKey:v14];

      v16 = String._bridgeToObjectiveC()();
      v13 = [v10 BOOLForKey:v16];

      if (v31)
      {
        if (v31 != 1)
        {
          v13 &= v15;
        }
      }

      else
      {
        v13 = v15;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  static Logger.permissions.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v30 = v2;
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v19 = 136315650;
    HIDWORD(v29) = v7;
    if (v7)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1953459744;
    }

    if (v7)
    {
      v21 = 0xE000000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = sub_10000F11C(v20, v21, &v32);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    if (v31)
    {
      if (v31 == 1)
      {
        v1 = 0x6E614D4D444D6F6ELL;
      }

      else
      {
        v1 = 7105633;
      }

      if (v31 == 1)
      {
        v23 = 0xEF746E656D656761;
      }

      else
      {
        v23 = 0xE300000000000000;
      }
    }

    else
    {
      v23 = 0x8000000100013100;
    }

    v24 = sub_10000F11C(v1, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    if (v13)
    {
      v25 = 0;
    }

    else
    {
      v25 = 1953459744;
    }

    if (v13)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = sub_10000F11C(v25, v26, &v32);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "This device is%s internal and the permission requirement %s is%s overridden.", v19, 0x20u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v30);
    v7 = HIDWORD(v29);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return v7 & v13;
}

void sub_1000098D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = *(type metadata accessor for AuthenticationBiometric() + 28);
    v8 = type metadata accessor for AppleAccount();
    v20[3] = v8;
    v20[4] = &protocol witness table for AppleAccount;
    v9 = sub_100003B38(v20);
    (*(*(v8 - 8) + 16))(v9, a5 + v7, v8);
    v21 = 0;
    a3(v20);
LABEL_17:
    sub_10000A078(v20);
    return;
  }

  if (!a2)
  {
    return;
  }

  v19 = _convertErrorToNSError(_:)();
  v10 = [v19 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    goto LABEL_13;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_13:
    v20[0] = v19;
    type metadata accessor for LAError(0);
    sub_10000A33C();
    _BridgedStoredNSError.code.getter();
    sub_1000031AC();
    v17 = swift_allocError();
    *v18 = v22 == -1;
    v20[0] = v17;
    v21 = 1;
    a3(v20);

    goto LABEL_17;
  }
}

uint64_t sub_100009B00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_100009BAC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AuthenticationBiometric();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v13 = a1[2];
  v12 = a1[3];
  v14 = a2;

  if ([v13 canEvaluatePolicy:v12 error:0])
  {
    sub_100003200(&qword_10001DB10, qword_100011718);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000112E0;
    LODWORD(aBlock[0]) = 1021;
    AnyHashable.init<A>(_:)();
    v30 = v12;
    v29 = v13;
    v28 = v9;
    v16 = *a1;
    v17 = a1[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v16;
    *(inited + 80) = v17;
    LODWORD(aBlock[0]) = 2;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    sub_100003200(&qword_10001D958, &unk_100011330);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000112F0;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100004048();
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    v19 = sub_10000A640(0xD000000000000010, 0x8000000100013120);
    v21 = v20;

    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v19;
    *(inited + 152) = v21;
    sub_10000732C(inited);
    swift_setDeallocating();
    sub_100003200(&qword_10001DA28, qword_100011510);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_10000A0E0(a1, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_10000A06C;
    *(v24 + 24) = v11;
    sub_10000A23C(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    aBlock[4] = sub_10000A2A0;
    v32 = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009B00;
    aBlock[3] = &unk_1000190F8;
    v25 = _Block_copy(aBlock);

    [v29 evaluatePolicy:v30 options:isa reply:v25];
    _Block_release(v25);
  }

  else
  {
    sub_1000031AC();
    v26 = swift_allocError();
    *v27 = 3;
    aBlock[0] = v26;
    LOBYTE(v32) = 1;
    sub_10000D80C(aBlock, v14, a3, a4);
    sub_10000A078(aBlock);
  }
}

uint64_t type metadata accessor for AuthenticationBiometric()
{
  result = qword_10001DB70;
  if (!qword_10001DB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A02C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A078(uint64_t a1)
{
  v2 = sub_100003200(&qword_10001D930, qword_100011300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationBiometric();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A144()
{
  v1 = (type metadata accessor for AuthenticationBiometric() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + v3 + 8);

  v7 = v1[9];
  v8 = type metadata accessor for AppleAccount();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationBiometric();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000A2A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AuthenticationBiometric() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1000098D4(a1, a2, v6, v7, v8);
}

uint64_t sub_10000A324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000A33C()
{
  result = qword_10001D888;
  if (!qword_10001D888)
  {
    type metadata accessor for LAError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D888);
  }

  return result;
}

uint64_t sub_10000A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppleAccount();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000A468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppleAccount();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000A50C()
{
  sub_10000A5B8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LAPolicy(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppleAccount();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000A5B8()
{
  result = qword_10001DB80;
  if (!qword_10001DB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001DB80);
  }

  return result;
}

id sub_10000A604()
{
  result = [objc_opt_self() mainBundle];
  qword_10001DBB8 = result;
  return result;
}

uint64_t sub_10000A640(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_100003200(&unk_10001DBC0, "l\n") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v18 - v5;
  result = MGCopyAnswer();
  if (result)
  {
    v21 = result;
    if (swift_dynamicCast())
    {
      v19 = a1;
      v20 = a2;

      v8._countAndFlagsBits = 95;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9 = v19;
      v10 = v20;
      v11 = String.uppercased()();

      v19 = v9;
      v20 = v10;

      String.append(_:)(v11);

      if (qword_10001D750 != -1)
      {
        swift_once();
      }

      v12 = qword_10001DBB8;
      v13 = String._bridgeToObjectiveC()();
    }

    else
    {
      if (qword_10001D750 != -1)
      {
        swift_once();
      }

      v12 = qword_10001DBB8;
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static Locale.autoupdatingCurrent.getter();
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    v17 = String.init(format:locale:arguments:)();

    sub_10000AAD0(v6);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A91C()
{
  v0 = (*(*(sub_100003200(&unk_10001DBC0, "l\n") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v10 - v1;
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v3 = qword_10001DBB8;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Locale.autoupdatingCurrent.getter();
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = String.init(format:locale:arguments:)();

  sub_10000AAD0(v2);
  return v8;
}

uint64_t sub_10000AAD0(uint64_t a1)
{
  v2 = sub_100003200(&unk_10001DBC0, "l\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AB38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100003200(&qword_10001D938, &unk_1000118C0);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

Swift::Int sub_10000AC40()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000ACAC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_10000ACEC()
{
  v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType] = 4;
  v1 = &v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection];
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
  *&v0[v2] = [objc_allocWithZone(OBNavigationController) init];
  *&v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___authenicationResultsAgent] = 0;
  *&v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AuthenticationUIServiceViewController();
  return objc_msgSendSuper2(&v4, "initWithNibName:bundle:", 0, 0);
}

void (*sub_10000ADD8(void *a1, void (*a2)(void), uint64_t a3))(void)
{
  v100 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v90 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v90 - v16;
  v18 = __chkstk_darwin(v15);
  v96 = &v90 - v19;
  __chkstk_darwin(v18);
  v92 = &v90 - v20;
  v21 = sub_100003200(&qword_10001DCD8, &qword_1000118D8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v90 - v23;
  v25 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v94 = *(v25 - 8);
  v95 = v25;
  v26 = *(v94 + 64);
  v27 = __chkstk_darwin(v25);
  __chkstk_darwin(v27);
  v93 = &v90 - v29;
  if (!a1)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v91 = v28;
  v97 = v7;
  v98 = v6;
  v101 = v3;
  v99 = a3;
  v30 = [a1 xpcEndpoint];
  if (!v30)
  {
LABEL_43:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v31 = v30;
  v32 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  [v32 _setEndpoint:v31];
  type metadata accessor for FamilyControlsAuthenticationUIService();
  v33 = static FamilyControlsAuthenticationUIService.connection(endpoint:)();
  v35 = v34;
  swift_getObjectType();
  dispatch thunk of XPCConnectable.activate()();
  swift_unknownObjectRelease();

  v36 = v101;
  v37 = (v101 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
  v38 = *(v101 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
  *v37 = v33;
  v37[1] = v35;
  swift_unknownObjectRelease();
  v39 = [a1 userInfo];
  if (!v39)
  {
    static Logger.authenticationUI.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Context missing user info", v57, 2u);
    }

    (*(v97 + 8))(v11, v98);
    return sub_10000B88C(v100, v99, v36);
  }

  v40 = v39;
  v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v102 = static FamilyControlsAuthenticationUIService.ServiceBundleIdentifierKey.getter();
  v103 = v42;
  AnyHashable.init<A>(_:)();
  if (!*(v41 + 16) || (v43 = sub_100005B94(v104), (v44 & 1) == 0))
  {

    sub_10000752C(v104);
LABEL_13:
    static Logger.authenticationUI.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Context missing bundle identifier", v54, 2u);
    }

    (*(v97 + 8))(v14, v98);
    return sub_10000B88C(v100, v99, v36);
  }

  sub_10000F888(*(v41 + 56) + 32 * v43, v105);
  sub_10000752C(v104);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v46 = v102;
  v45 = v103;
  v102 = static FamilyControlsAuthenticationUIService.ServiceMemberKey.getter();
  v103 = v47;
  AnyHashable.init<A>(_:)();
  if (!*(v41 + 16) || (v48 = sub_100005B94(v104), (v49 & 1) == 0))
  {

    sub_10000752C(v104);
    goto LABEL_23;
  }

  sub_10000F888(*(v41 + 56) + 32 * v48, v105);
  sub_10000752C(v104);
  if (swift_dynamicCast())
  {
    v50 = FamilyControlsMember.init(rawValue:)();
    if ((v51 & 1) == 0)
    {
      v62 = v50;
      v102 = static FamilyControlsAuthenticationUIService.ServiceTypeKey.getter();
      v103 = v63;
      AnyHashable.init<A>(_:)();
      if (!*(v41 + 16) || (v64 = sub_100005B94(v104), (v65 & 1) == 0))
      {

        sub_10000752C(v104);
        goto LABEL_32;
      }

      sub_10000F888(*(v41 + 56) + 32 * v64, v105);
      sub_10000752C(v104);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_32;
      }

      v90 = v46;
      FamilyControlsAuthenticationUIService.ServiceType.init(rawValue:)();
      v67 = v94;
      v66 = v95;
      if ((*(v94 + 48))(v24, 1, v95) == 1)
      {

        sub_100003FE8(v24, &qword_10001DCD8, &qword_1000118D8);
LABEL_32:
        v68 = v96;
        static Logger.authenticationUI.getter();
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Context missing type", v71, 2u);
        }

        (*(v97 + 8))(v68, v98);
        return sub_10000B88C(v100, v99, v36);
      }

      v72 = v93;
      (*(v67 + 32))(v93, v24, v66);
      v73 = v45;
      v74 = v92;
      static Logger.authenticationUI.getter();
      v75 = v91;
      (*(v67 + 16))(v91, v72, v66);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v104[0] = swift_slowAlloc();
        *v78 = 136446466;
        sub_10000FADC(&qword_10001DCE0, &type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType);
        LODWORD(v96) = v77;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        v82 = v75;
        v83 = *(v94 + 8);
        v83(v82, v95);
        v84 = sub_10000F11C(v79, v81, v104);

        *(v78 + 4) = v84;
        *(v78 + 12) = 2082;
        v85 = v90;
        *(v78 + 14) = sub_10000F11C(v90, v73, v104);
        _os_log_impl(&_mh_execute_header, v76, v96, "Configured for type: %{public}s, bundle identifier: %{public}s", v78, 0x16u);
        swift_arrayDestroy();

        v66 = v95;

        (*(v97 + 8))(v92, v98);
        v86 = v100;
      }

      else
      {

        v87 = v75;
        v83 = *(v67 + 8);
        v83(v87, v66);
        (*(v97 + 8))(v74, v98);
        v86 = v100;
        v85 = v90;
      }

      v88 = v93;
      sub_10000BBA8(v93, v62, v85, v73);
      if (v86)
      {

        (v86)(v89);
        return (v83)(v88, v66);
      }

      goto LABEL_42;
    }
  }

LABEL_23:
  static Logger.authenticationUI.getter();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Context missing type of family controls member", v61, 2u);
  }

  (*(v97 + 8))(v17, v98);
  return sub_10000B88C(v100, v99, v36);
}

void (*sub_10000B88C(void (*result)(void), uint64_t a2, uint64_t a3))(void)
{
  if (!result)
  {
    goto LABEL_9;
  }

  result();
  sub_10000FB24();
  swift_allocError();
  v4 = sub_10000C530();
  v5 = _convertErrorToNSError(_:)();
  [v4 didCompleteAuthenticationRequestWithStatus:0 error:v5];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v6 = qword_10001D9C8;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100005E5C;
  *(v7 + 24) = 0;
  v11[4] = sub_10000FDC0;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000AC10;
  v11[3] = &unk_100019590;
  v8 = _Block_copy(v11);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(a3 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
  {
    v9 = *(a3 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8);
    v10 = *(a3 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of XPCConnectable.invalidate()();
    swift_unknownObjectRelease();
  }

  [sub_10000C824() deactivate];
  swift_unknownObjectRelease();
  return [*(a3 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
}

void sub_10000BBA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for AuthenticationBiometric();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForChildRequest(_:))
  {
    v18 = v4;

    v19 = a3;
    v20 = a4;
    v21 = 0;
    v22 = v18;
    v23 = 0;
LABEL_5:
    sub_10000690C(v19, v20, v21, v22, v23, a3, a4);

    return;
  }

  if (v17 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForIndividualRequest(_:))
  {
    v18 = v4;

    v19 = a3;
    v20 = a4;
    v21 = 1;
    v22 = v18;
    v23 = 1;
    goto LABEL_5;
  }

  if (v17 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:))
  {
    *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) = 2;
    v24 = FamilyControlsMember.rawValue.getter();
    if (v24 != FamilyControlsMember.rawValue.getter())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v17 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForDeletion(_:))
  {
    *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) = 3;
    v25 = FamilyControlsMember.rawValue.getter();
    if (v25 != FamilyControlsMember.rawValue.getter())
    {
LABEL_12:
      v26 = v4;
      v27 = objc_allocWithZone(LSApplicationRecord);

      v28 = sub_100009118(a3, a4, 1);
      v29 = [v28 localizedName];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v11[2] = [objc_allocWithZone(LAContext) init];
      v11[3] = 2;
      v33 = v11 + *(v8 + 28);
      AppleAccount.init()();
      *v11 = v30;
      v11[1] = v32;
      v34 = v26;

      sub_100009BAC(v11, v34, a3, a4);

      sub_10000F7CC(v11);
      return;
    }

LABEL_11:
    sub_10000BFA4(a3, a4);
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10000BFA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(LSApplicationRecord);

  v12 = sub_100009118(a1, a2, 1);
  v13 = [v12 localizedName];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = v3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType];
  v18 = v3;
  v19 = sub_100003C40(v17, v14, v16, v18);
  v21 = v20;
  if (v19)
  {
    v22 = v19;
    v23 = swift_allocObject();
    v23[2] = v18;
    v23[3] = a1;
    v23[4] = a2;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_10000A06C;
    *(v24 + 24) = v23;
    v44 = sub_10000F9A0;
    v45 = v24;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10000AB38;
    v43 = &unk_100019428;
    v25 = _Block_copy(&aBlock);

    v26 = v18;

    [v21 authenticateWithContext:v22 completion:v25];
    _Block_release(v25);
  }

  else
  {
    static Logger.authorization.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "No authentication controller provided. Canceling the request.", v29, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v30 = type metadata accessor for FamilyControlsError();
    sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for FamilyControlsError.authorizationCanceled(_:), v30);
    v32 = sub_10000C530();
    v33 = _convertErrorToNSError(_:)();
    [v32 didCompleteAuthenticationRequestWithStatus:0 error:v33];
    swift_unknownObjectRelease();

    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v34 = qword_10001D9C8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100005E5C;
    *(v35 + 24) = 0;
    v44 = sub_10000FDC0;
    v45 = v35;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10000AC10;
    v43 = &unk_1000193B0;
    v36 = _Block_copy(&aBlock);

    dispatch_sync(v34, v36);
    _Block_release(v36);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
    }

    else
    {
      if (*&v18[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
      {
        v37 = *&v18[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8];
        v38 = *&v18[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection];
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*&v18[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
      sub_10000F8E8(0, v21);
    }
  }
}

uint64_t sub_10000C550(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  v3 = v2 + 16;
  *(v2 + 32) = 0u;
  if (*(a1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
  {
    v4 = *(a1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_100007468(v3, v7, &qword_10001DC88, &qword_100011878);
  if (v8)
  {
    sub_100003200(&qword_10001DCA0, &qword_100011890);
    if (swift_dynamicCast())
    {

      return v6;
    }
  }

  else
  {
    sub_100003FE8(v7, &qword_10001DC88, &qword_100011878);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000C700(uint64_t a1, uint64_t a2)
{
  sub_100007468(a1, v6, &qword_10001DCA8, &unk_100011898);
  if (v7)
  {
    _StringGuts.grow(_:)(63);
    v4._object = 0x80000001000133D0;
    v4._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v4);
    sub_100003200(&qword_10001D940, &qword_100011320);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_100006FBC(v6, v5);
    swift_beginAccess();
    return sub_10000F75C(v5, a2 + 16);
  }

  return result;
}

uint64_t sub_10000C844(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_10000C8AC(void *a1)
{
  v10 = sub_10000CA6C;
  v11 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v9 = sub_10000CB34;
  *(&v9 + 1) = &unk_100019220;
  v2 = _Block_copy(&aBlock);
  v3 = [a1 _remoteViewControllerProxyWithErrorHandler:v2];
  _Block_release(v2);
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  aBlock = v6;
  v9 = v7;
  sub_100007468(&aBlock, &v6, &qword_10001DC88, &qword_100011878);
  if (*(&v7 + 1))
  {
    sub_100003200(&qword_10001DC90, &qword_100011880);
    if (swift_dynamicCast())
    {
      sub_100003FE8(&aBlock, &qword_10001DC88, &qword_100011878);
      return v5;
    }
  }

  else
  {
    sub_100003FE8(&v6, &qword_10001DC88, &qword_100011878);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10000CA6C()
{
  _StringGuts.grow(_:)(49);

  swift_errorRetain();
  sub_100003200(&qword_10001DC98, &qword_100011888);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10000CB34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10000CBD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticationUIServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000CC94(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  if ((a2 & 1) == 0)
  {
    return sub_10000D250(a4, a1 & 1, a5, a6);
  }

  v45 = a3;
  swift_errorRetain();
  static Logger.authorization.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = a1;
    aBlock[0] = v23;
    *v22 = 136446210;
    swift_errorRetain();
    sub_100003200(&qword_10001D940, &qword_100011320);
    v24 = String.init<A>(describing:)();
    v44 = v17;
    v26 = sub_10000F11C(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get user response from notification: %{public}s", v22, 0xCu);
    sub_100003B9C(v23);

    v27 = v13;
    v17 = v44;
  }

  else
  {

    v27 = v13;
  }

  v29 = *(v27 + 8);
  v29(v19, v12);
  aBlock[0] = a1;
  swift_errorRetain();
  sub_100003200(&qword_10001D940, &qword_100011320);
  if (swift_dynamicCast())
  {
    if (v46)
    {
      static Logger.authorization.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Invalid response notification error. Treating it as a cancel.", v32, 2u);
      }

      v29(v17, v12);
    }

    v33 = type metadata accessor for FamilyControlsError();
    sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for FamilyControlsError.authorizationCanceled(_:), v33);
    sub_10000F828(a1, 1);
  }

  swift_errorRetain();
  v35 = sub_10000C530();
  v36 = _convertErrorToNSError(_:)();
  [v35 didCompleteAuthenticationRequestWithStatus:0 error:v36];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v37 = qword_10001D9C8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100005E5C;
  *(v38 + 24) = 0;
  aBlock[4] = sub_10000FDC0;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AC10;
  aBlock[3] = &unk_100019298;
  v39 = _Block_copy(aBlock);

  dispatch_sync(v37, v39);
  _Block_release(v39);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
  }

  else
  {
    v40 = v45;
    if (*(v45 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
    {
      v41 = *(v45 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8);
      v42 = *(v45 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    [*(v40 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
  }

  return result;
}

uint64_t sub_10000D250(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s30FamilyControlsAuthenticationUI13LSResolutionsC31resolveApplicationIconAsUIImageySo0J0CSSFZ_0(a3, a4);
  v14 = objc_allocWithZone(LSApplicationRecord);

  v15 = sub_100009118(a3, a4, 1);
  v16 = [v15 localizedName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v5;
  *(v20 + 32) = a2 & 1;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;

  v21 = v5;
  if (!a1)
  {
    v22 = 1;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v22 = 0;
LABEL_5:
    v23 = v42;
    v24 = sub_100008670(v22, v17, v19, v42, sub_10000F874, v20);

    *&v24[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI27InformationalViewController_delegate + 8] = &off_1000191B0;
    swift_unknownObjectWeakAssign();
    v25 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
    [*&v21[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController] pushViewController:v24 animated:1];
    v26 = *&v21[v25];
    [v21 presentViewController:v26 animated:1 completion:0];
  }

  static Logger.authorization.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "No informational view controller provided. Dismissing authentication UI.", v30, 2u);
  }

  (*(v41 + 8))(v13, v10);
  v31 = type metadata accessor for FamilyControlsError();
  sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for FamilyControlsError.authorizationCanceled(_:), v31);
  v33 = sub_10000C530();
  v34 = _convertErrorToNSError(_:)();
  [v33 didCompleteAuthenticationRequestWithStatus:0 error:v34];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v35 = qword_10001D9C8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100005E5C;
  *(v36 + 24) = 0;
  aBlock[4] = sub_10000FDC0;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AC10;
  aBlock[3] = &unk_100019310;
  v37 = _Block_copy(aBlock);

  dispatch_sync(v35, v37);
  _Block_release(v37);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    if (*&v21[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
    {
      v38 = *&v21[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8];
      v39 = *&v21[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection];
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    [*&v21[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
  }

  return result;
}

uint64_t sub_10000D80C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v72 = a3;
  v68 = type metadata accessor for Logger();
  v67 = *(v68 - 8);
  v6 = *(v67 + 64);
  v7 = (__chkstk_darwin)();
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v65 - v10;
  __chkstk_darwin(v9);
  v13 = &v65 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v69 = *(v70 - 8);
  v18 = *(v69 + 64);
  __chkstk_darwin(v70);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AuthorizationStatus();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007468(a1, v82, &qword_10001D930, qword_100011300);
  if ((v83 & 1) == 0)
  {
    sub_100003B20(v82, v75);
    v32 = **(&off_100019698 + a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType]);
    v33 = *(v22 + 104);
    v65 = v21;
    v33(v25, v32, v21);
    v34 = [objc_allocWithZone(NSNumber) initWithInteger:AuthorizationStatus.rawValue.getter()];
    [sub_10000C530() didCompleteAuthenticationRequestWithStatus:v34 error:0];

    swift_unknownObjectRelease();
    sub_100005F48();
    v35 = static OS_dispatch_queue.main.getter();
    sub_100003A78(v75, v74);
    v36 = swift_allocObject();
    v37 = v72;
    v36[2] = a2;
    v36[3] = v37;
    v36[4] = v73;
    sub_100003B20(v74, (v36 + 5));
    v80 = sub_10000F9F0;
    v81 = v36;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_10000827C;
    v79 = &unk_1000194C8;
    v38 = _Block_copy(&aBlock);
    v39 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FADC(&qword_10001DCC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003200(&qword_10001DCC8, &qword_1000118D0);
    sub_10000FA20();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    (*(v71 + 8))(v17, v14);
    (*(v69 + 8))(v20, v70);
    (*(v22 + 8))(v25, v65);
    return sub_100003B9C(v75);
  }

  v26 = v72;
  v27 = v73;
  aBlock = *&v82[0];
  swift_errorRetain();
  sub_100003200(&qword_10001D940, &qword_100011320);
  if (swift_dynamicCast())
  {
    if (LOBYTE(v75[0]) <= 1u)
    {
      if (!LOBYTE(v75[0]))
      {
        goto LABEL_19;
      }

      static Logger.authorization.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Invalid biometric recognized. Re-prompting for authorization.", v43, 2u);
      }

      (*(v67 + 8))(v13, v68);
      v44 = a2;

      v45 = v26;
      v46 = v27;
      v47 = 1;
      v48 = v44;
      v49 = 1;
    }

    else
    {
      if (LOBYTE(v75[0]) != 2)
      {
        if (LOBYTE(v75[0]) == 3)
        {
          v28 = type metadata accessor for FamilyControlsError();
          sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
          swift_allocError();
          v30 = v29;
          v31 = &enum case for FamilyControlsError.authenticationMethodUnavailable(_:);
LABEL_20:
          (*(*(v28 - 8) + 104))(v30, *v31, v28);

          goto LABEL_21;
        }

        v53 = v66;
        static Logger.authorization.getter();
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Unknown authorization error. Treating it as a cancel.", v56, 2u);
        }

        (*(v67 + 8))(v53, v68);
LABEL_19:
        v28 = type metadata accessor for FamilyControlsError();
        sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
        swift_allocError();
        v30 = v57;
        v31 = &enum case for FamilyControlsError.authorizationCanceled(_:);
        goto LABEL_20;
      }

      static Logger.authorization.getter();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Invalid Parent account. Re-prompting for authorization.", v52, 2u);
      }

      (*(v67 + 8))(v11, v68);
      v44 = a2;

      v45 = v26;
      v46 = v27;
      v47 = 2;
      v48 = v44;
      v49 = 2;
    }

    sub_10000690C(v45, v46, v47, v48, v49, v26, v27);
  }

LABEL_21:
  v58 = sub_10000C530();
  v59 = _convertErrorToNSError(_:)();
  [v58 didCompleteAuthenticationRequestWithStatus:0 error:v59];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v60 = qword_10001D9C8;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_100005E5C;
  *(v61 + 24) = 0;
  v80 = sub_10000FDC0;
  v81 = v61;
  aBlock = _NSConcreteStackBlock;
  v77 = 1107296256;
  v78 = sub_10000AC10;
  v79 = &unk_100019478;
  v62 = _Block_copy(&aBlock);

  dispatch_sync(v60, v62);
  _Block_release(v62);
  LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

  if ((v60 & 1) == 0)
  {
    if (*&a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
    {
      v63 = *&a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8];
      v64 = *&a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection];
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    [*&a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
  }

  __break(1u);
  return result;
}

void sub_10000E2F8(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s30FamilyControlsAuthenticationUI13LSResolutionsC31resolveApplicationIconAsUIImageySo0J0CSSFZ_0(a1, a2);
  v13 = objc_allocWithZone(LSApplicationRecord);

  v14 = sub_100009118(a1, a2, 1);
  v15 = [v14 localizedName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) - 2 >= 3)
  {
    if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType))
    {
      v27 = sub_100004C84(v16, v18, v31, a3);
    }

    else
    {
      v27 = sub_10000487C(v16, v18, v31, a3);
    }

    v28 = v27;

    *&v28[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI26ConfirmationViewController_delegate + 8] = &off_1000191C0;
    swift_unknownObjectWeakAssign();
    v29 = *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController);
    [v29 pushViewController:v28 animated:1];

    v30 = v31;
  }

  else
  {

    static Logger.authorization.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No confirmation view controller provided. Dismissing authentication UI.", v21, 2u);
    }

    (*(v9 + 8))(v12, v8);
    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v22 = qword_10001D9C8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100005E5C;
    *(v23 + 24) = 0;
    aBlock[4] = sub_10000FDC0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AC10;
    aBlock[3] = &unk_100019518;
    v24 = _Block_copy(aBlock);

    dispatch_sync(v22, v24);
    _Block_release(v24);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
    }

    else
    {
      if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
      {
        v25 = *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8);
        v26 = *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
    }
  }
}

void sub_10000E75C(uint64_t a1, char a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AuthenticationBiometric();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = (&aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v17 = sub_10000C530();
    v18 = _convertErrorToNSError(_:)();
    [v17 didCompleteAuthenticationRequestWithStatus:0 error:v18];
    swift_unknownObjectRelease();

    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v19 = qword_10001D9C8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100005E5C;
    *(v20 + 24) = 0;
    aBlock[4] = sub_10000FDC0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AC10;
    aBlock[3] = &unk_100019360;
    v21 = _Block_copy(aBlock);

    dispatch_sync(v19, v21);
    _Block_release(v21);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (*&a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
      {
        v22 = *&a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8];
        v23 = *&a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection];
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*&a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v24 = v14;
        a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType] = (a4 & 1) == 0;
        v25 = objc_allocWithZone(LSApplicationRecord);

        v26 = sub_100009118(a5, a6, 1);
        v27 = [v26 localizedName];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v16[2] = [objc_allocWithZone(LAContext) init];
        v16[3] = 2;
        v31 = v16 + *(v24 + 28);
        AppleAccount.init()();
        *v16 = v28;
        v16[1] = v30;

        v32 = a3;
        sub_100009BAC(v16, v32, a5, a6);

        sub_10000F7CC(v16);
        return;
      }
    }

    else
    {
      a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType] = (a4 & 1) == 0;
    }

    sub_10000BFA4(a5, a6);
  }
}

id sub_10000EB0C(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for AuthenticationUIServiceViewController();
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v4 = qword_10001D9C8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100005E5C;
  *(v5 + 24) = 0;
  v10[4] = sub_10000F6D4;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10000AC10;
  v10[3] = &unk_1000191F8;
  v6 = _Block_copy(v10);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*&v2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
    {
      v8 = *&v2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8];
      v9 = *&v2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection];
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    return [*&v2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
  }

  return result;
}

unint64_t sub_10000ED68()
{
  result = qword_10001DC80;
  if (!qword_10001DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DC80);
  }

  return result;
}

uint64_t sub_10000EDBC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
  result = [*(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController) isMovingFromParentViewController];
  if ((result & 1) == 0)
  {
    result = [*(v1 + v2) isBeingDismissed];
    if (result)
    {
      v4 = type metadata accessor for FamilyControlsError();
      sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError);
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, enum case for FamilyControlsError.authorizationCanceled(_:), v4);
      v6 = sub_10000C530();
      v7 = _convertErrorToNSError(_:)();
      [v6 didCompleteAuthenticationRequestWithStatus:0 error:v7];
      swift_unknownObjectRelease();

      if (qword_10001D748 != -1)
      {
        swift_once();
      }

      v8 = qword_10001D9C8;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100005E5C;
      *(v9 + 24) = 0;
      v13[4] = sub_10000FDC0;
      v13[5] = v9;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_10000AC10;
      v13[3] = &unk_1000195E0;
      v10 = _Block_copy(v13);

      dispatch_sync(v8, v10);
      _Block_release(v10);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }

      else
      {
        if (*(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
        {
          v11 = *(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection + 8);
          v12 = *(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
          swift_getObjectType();
          swift_unknownObjectRetain();
          dispatch thunk of XPCConnectable.invalidate()();
          swift_unknownObjectRelease();
        }

        [sub_10000C824() deactivate];
        swift_unknownObjectRelease();
        return [*(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
      }
    }
  }

  return result;
}

uint64_t sub_10000F0C0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000F11C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10000F11C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F1E8(v11, 0, 0, 1, a1, a2);
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
    sub_10000F888(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003B9C(v11);
  return v7;
}

unint64_t sub_10000F1E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F2F4(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10000F2F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000F340(a1, a2);
  sub_10000F470(&off_100018B00);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000F340(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000F55C(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F55C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000F470(uint64_t result)
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

  result = sub_10000F5D0(result, v12, 1, v3);
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

void *sub_10000F55C(uint64_t a1, uint64_t a2)
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

  sub_100003200(&unk_10001DCB0, qword_1000118A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F5D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003200(&unk_10001DCB0, qword_1000118A8);
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

uint64_t sub_10000F6D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000F6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F714()
{
  if (*(v0 + 40))
  {
    sub_100003B9C((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F75C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003200(&qword_10001DC88, &qword_100011878);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F7CC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationBiometric();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F828(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10000F834()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000F8E8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_10000F928()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F968()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F9A8()
{
  v1 = *(v0 + 32);

  sub_100003B9C((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

void sub_10000F9F0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0 + 5;
  v4 = v0[2];
  sub_10000E2F8(v1, v2, v3);
}

unint64_t sub_10000FA20()
{
  result = qword_10001DCD0;
  if (!qword_10001DCD0)
  {
    sub_100006050(&qword_10001DCC8, &qword_1000118D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCD0);
  }

  return result;
}

uint64_t sub_10000FA84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FA94()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FADC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000FB24()
{
  result = qword_10001DCE8;
  if (!qword_10001DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCE8);
  }

  return result;
}

void sub_10000FB78()
{
  *(v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) = 4;
  v1 = (v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
  *(v0 + v2) = [objc_allocWithZone(OBNavigationController) init];
  *(v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___authenicationResultsAgent) = 0;
  *(v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for AuthenticationUIError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AuthenticationUIError(_WORD *result, int a2, int a3)
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

unint64_t sub_10000FD20()
{
  result = qword_10001DCF0;
  if (!qword_10001DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCF0);
  }

  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}