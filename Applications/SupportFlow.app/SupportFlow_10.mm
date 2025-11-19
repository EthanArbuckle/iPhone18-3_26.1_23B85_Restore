unint64_t sub_1000E8824()
{
  result = qword_100191628;
  if (!qword_100191628)
  {
    sub_100004D48(&qword_100191618, &qword_10012FA50);
    sub_100004984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191628);
  }

  return result;
}

uint64_t sub_1000E88A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E88F4()
{
  result = qword_100191638;
  if (!qword_100191638)
  {
    sub_100004D48(&qword_100191640, &qword_10012FA58);
    sub_1000E8798();
    sub_1000E8824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191638);
  }

  return result;
}

uint64_t sub_1000E8A54()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E8A94()
{

  return String.hash(into:)();
}

uint64_t sub_1000E8AC4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E8BB0()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000E8C28()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000E8C70()
{

  return String.hash(into:)();
}

uint64_t sub_1000E8E48()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30[-v7 - 8];
  v9 = type metadata accessor for ActionInfoType(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_1001882D0 != -1)
  {
    swift_once();
  }

  v13 = unk_100191650;
  v29 = qword_100191648;
  v14 = qword_1001882D8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_100191658;
  v16 = unk_100191660;
  type metadata accessor for ActionInfo(0);
  swift_storeEnumTagMultiPayload();

  v17 = sub_1000ED69C(v12, 1, 0, 0);
  v18 = qword_1001882E0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FlowImage();
  v20 = sub_10000C2D4(v19, qword_100191668);
  sub_100053ED8(v20, v8);
  sub_100003CE8(v8, 0, 1, v19);
  v31 = &type metadata for BatteryPlacardInfoItemType;
  v32 = sub_1000E94FC();
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v1 + 8))(v4, v0);
  v24 = type metadata accessor for PlacardInfoItem(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1000F04E8(0, v21, v23, v8, v29, v13, v15, v16, v17, v30);

  return v27;
}

BOOL sub_1000E9168(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001771B8, v2);

  return v3 != 0;
}

BOOL sub_1000E91BC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9168(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000E91F0@<X0>(void *a1@<X8>)
{
  result = sub_1000E7684();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E9220@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E7684();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000E9248()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191648 = result;
  unk_100191650 = v5;
  return result;
}

uint64_t sub_1000E9350()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191658 = result;
  unk_100191660 = v5;
  return result;
}

uint64_t sub_1000E9458()
{
  v0 = type metadata accessor for FlowImage();
  sub_10000C270(v0, qword_100191668);
  v1 = sub_10000C2D4(v0, qword_100191668);
  v1->i64[0] = 0xD000000000000023;
  v1->i64[1] = 0x8000000100136D00;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000E94FC()
{
  result = qword_100191680;
  if (!qword_100191680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BatteryPlacardInfoItemType(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000E95ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000E9628()
{
  result = qword_100191688;
  if (!qword_100191688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191688);
  }

  return result;
}

unint64_t sub_1000E967C(uint64_t a1)
{
  result = sub_1000E96A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E96A4()
{
  result = qword_100191690;
  if (!qword_100191690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191690);
  }

  return result;
}

id sub_1000E96F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtCV11SupportFlow22AppleAccountSignInView11Coordinator_dismissAction;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v11 = &v3[OBJC_IVAR____TtCV11SupportFlow22AppleAccountSignInView11Coordinator_onSuccess];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "init");
  (*(v10 + 8))(a1, v9);
  return v12;
}

id sub_1000E982C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E990C()
{
  result = type metadata accessor for DismissAction();
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

id sub_1000E99A8()
{
  v1 = type metadata accessor for DismissAction();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9028(v4);
  v5 = (v0 + *(type metadata accessor for AppleAccountSignInView(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  objc_allocWithZone(type metadata accessor for AppleAccountSignInView.Coordinator(0));

  return sub_1000E96F8(v4, v6, v7);
}

id sub_1000E9A5C()
{
  v0 = [objc_allocWithZone(AAUISignInController) init];
  sub_100003768(&qword_1001917F8, &qword_10012FC98);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v0 setDelegate:v2];

  return v0;
}

id sub_1000E9AF4@<X0>(void *a1@<X8>)
{
  result = sub_1000E99A8();
  *a1 = result;
  return result;
}

uint64_t sub_1000E9B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EA118(&qword_1001917F0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E9B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EA118(&qword_1001917F0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000E9C1C()
{
  sub_1000EA118(&qword_1001917F0);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_1000E9C60()
{
  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_100083BC4(v2);

  if (v3)
  {
    if ([v3 success])
    {
      v4 = *(v0 + OBJC_IVAR____TtCV11SupportFlow22AppleAccountSignInView11Coordinator_onSuccess + 8);
      (*(v1 + OBJC_IVAR____TtCV11SupportFlow22AppleAccountSignInView11Coordinator_onSuccess))();
    }
  }

  DismissAction.callAsFunction()();
}

unint64_t sub_1000E9E10()
{
  result = qword_100191738;
  if (!qword_100191738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100191738);
  }

  return result;
}

uint64_t sub_1000E9E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000E9F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000EA008()
{
  sub_1000EA08C();
  if (v0 <= 0x3F)
  {
    sub_100082404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000EA08C()
{
  if (!qword_1001917B0[0])
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, qword_1001917B0);
    }
  }
}

uint64_t sub_1000EA118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppleAccountSignInView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EA188(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

double sub_1000EA2C8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  v10 = sub_1000EA340(a1, a2 & 1, a3, a4);
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v10;
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  return result;
}

id *sub_1000EA340(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v61 = a4;
  v58 = type metadata accessor for UUID();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v58);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = &v46 - v11;
  v12 = type metadata accessor for AirPodsDeviceInfo();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v16;
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v59 = a1;
  sub_1000EA188(a1, a2 & 1);
  v19 = sub_10010BB4C();

  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v65 = _swiftEmptyArrayStorage;
    v21 = *(v19 + 16);
    if (v21)
    {
      v53 = *(v12 + 40);
      v22 = *(v13 + 80);
      v46 = v19;
      v23 = v19 + ((v22 + 32) & ~v22);
      v51 = *(v13 + 72);
      v52 = v22;
      v50 = (v22 + 48) & ~v22;
      v49 = (v6 + 8);
      v48 = vdupq_n_s64(0x4046000000000000uLL);
      v47 = a2 & 1;
      do
      {
        v64 = v21;
        sub_1000EA940(v23, v18);
        v24 = type metadata accessor for ImageResource();
        v25 = v56;
        (*(*(v24 - 8) + 16))(v56, &v18[v53], v24);
        v26 = type metadata accessor for FlowAsset();
        *(v25 + *(v26 + 20)) = v48;
        *(v25 + *(v26 + 24)) = 0;
        v27 = type metadata accessor for FlowImage();
        swift_storeEnumTagMultiPayload();
        sub_100003CE8(v25, 0, 1, v27);
        v28 = *(v18 + 1);
        v29 = *(v18 + 2);
        v30 = *(v18 + 4);
        v62 = *(v18 + 3);
        v63 = v28;
        v31 = v54;
        sub_1000EA940(v18, v54);
        v32 = v50;
        v33 = swift_allocObject();
        *(v33 + 16) = v59;
        *(v33 + 24) = v47;
        v34 = v61;
        *(v33 + 32) = v60;
        *(v33 + 40) = v34;
        sub_1000EAABC(v31, v33 + v32);

        v35 = v57;
        UUID.init()();
        v36 = UUID.uuidString.getter();
        v38 = v37;
        (*v49)(v35, v58);
        v39 = type metadata accessor for OptionInfoItem();
        v40 = *(v39 + 48);
        v41 = *(v39 + 52);
        v42 = swift_allocObject();
        v43 = v42 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
        *(v42 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for AirPodsStepProvider;
        *(v43 + 32) = sub_100004C8C();
        *v43 = 3;
        v44 = (v42 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
        *v44 = sub_1000EAB20;
        v44[1] = v33;
        sub_1000EBC54(v36, v38, v25, v63, v29, v62, v30);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_1000EAB94(v18);
        v23 += v51;
        v21 = v64 - 1;
      }

      while (v64 != 1);
      v20 = v65;
    }
  }

  return v20;
}

uint64_t sub_1000EA7F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003768(&qword_100191860, &qword_100131D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  sub_1000EA188(a1, a2 & 1);
  sub_1000EA940(a5, v11);
  v12 = type metadata accessor for AirPodsDeviceInfo();
  sub_100003CE8(v11, 0, 1, v12);
  sub_10010CD58(v11);

  v13 = sub_1000EA188(a1, a2 & 1);
  v14 = *(v13 + *(*v13 + 136));

  v16 = *(a5 + 72);
  v15 = *(a5 + 80);

  sub_10008ADD4(v16, v15);
}

uint64_t sub_1000EA940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsDeviceInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EA9A4()
{
  v1 = (type metadata accessor for AirPodsDeviceInfo() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 64);

  v11 = *(v0 + v3 + 80);

  v12 = v1[12];
  v13 = type metadata accessor for ImageResource();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000EAABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsDeviceInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EAB20()
{
  v1 = *(type metadata accessor for AirPodsDeviceInfo() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1000EA7F4(v2, v3, v4, v5, v6);
}

uint64_t sub_1000EAB94(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsDeviceInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MessagesStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x1000EACBCLL);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void sub_1000EAD10(char a1)
{
  switch(a1)
  {
    case 1:
    case 9:
      sub_10009E06C();
      break;
    case 2:
      sub_1000EB5AC();
      break;
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
      return;
    case 4:
      sub_1000B184C(0x6F53u);
      break;
    default:
      sub_1000EB5C4(10);
      break;
  }
}

uint64_t sub_1000EAE94@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = swift_allocObject();
      *(result + 16) = 2;
      break;
    case 10:
      result = 9;
      break;
    default:
      break;
  }

  *a2 = result;
  return result;
}

unint64_t sub_1000EAF70(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001771F0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void sub_1000EAFBC(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
      return;
    case 2:
      sub_1000EB5AC();
      break;
    case 4:
      sub_1000B184C(0x6F73u);
      break;
    case 7:
      sub_1000EB5C4(5);
      break;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000EB174@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EAF70(*a1);
  *a2 = result;
  return result;
}

void sub_1000EB1A4(void *a1@<X8>)
{
  sub_1000EAFBC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000EB21C()
{
  result = qword_100191868;
  if (!qword_100191868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191868);
  }

  return result;
}

unint64_t sub_1000EB270()
{
  result = qword_100191870;
  if (!qword_100191870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191870);
  }

  return result;
}

uint64_t sub_1000EB32C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_100191880, &qword_10012FE20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EB3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000EB3E4()
{
  result = qword_1001918C8;
  if (!qword_1001918C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918C8);
  }

  return result;
}

unint64_t sub_1000EB438()
{
  result = qword_1001918D0;
  if (!qword_1001918D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918D0);
  }

  return result;
}

unint64_t sub_1000EB490()
{
  result = qword_1001918D8;
  if (!qword_1001918D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918D8);
  }

  return result;
}

uint64_t sub_1000EB4E4()
{
  if (*(v0 + 16) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000EB528()
{
  result = qword_1001918E0;
  if (!qword_1001918E0)
  {
    sub_100004D48(&qword_1001918E8, &unk_10012FF20);
    sub_100058F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918E0);
  }

  return result;
}

uint64_t sub_1000EB6B0()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = sub_10000ED84(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  sub_100003768(&qword_100190B70, &qword_10012E1C0);
  v8 = *(type metadata accessor for WelcomeListItem() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100128690;
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  Image.init(systemName:)();
  sub_1000EBC40();
  WelcomeListItem.init(title:description:image:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  Image.init(systemName:)();
  WelcomeListItem.init(title:description:image:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  Image.init(_internalSystemName:)();
  sub_1000EBC40();
  WelcomeListItem.init(title:description:image:)();
  return v11;
}

uint64_t sub_1000EBA1C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_10000ED84(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = sub_10000ED84(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  static WelcomeAction.primary(title:)();

  v10 = type metadata accessor for WelcomeAction();
  return sub_100003CE8(a1, 0, 1, v10);
}

unint64_t sub_1000EBBB8@<X0>(void *a1@<X8>)
{
  result = sub_1000EB5E4();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000EBBEC()
{
  result = qword_1001918F0;
  if (!qword_1001918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918F0);
  }

  return result;
}

uint64_t sub_1000EBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1000B2398(a3, v7 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image);
  v12 = (v7 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  *v12 = a4;
  v12[1] = a5;
  v13 = (v7 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description);
  *v13 = a6;
  v13[1] = a7;
  return v7;
}

uint64_t sub_1000EBCCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000EBCFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return String.hash(into:)();
}

uint64_t sub_1000EBD04()
{
  v1 = *(v0 + 24);

  sub_1000B2330(v0 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image);
  v2 = *(v0 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title + 8);

  v3 = *(v0 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8);

  return v0;
}

uint64_t sub_1000EBD5C()
{
  sub_1000EBD04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for InfoItem()
{
  result = qword_100191920;
  if (!qword_100191920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EBE08()
{
  sub_100029144();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

Swift::Int sub_1000EBEB0()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EBEF4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

Swift::Int sub_1000EBF4C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  sub_1000EBCFC();
  return Hasher._finalize()();
}

unint64_t sub_1000EBFB4()
{
  result = qword_1001919D0;
  if (!qword_1001919D0)
  {
    type metadata accessor for InfoItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001919D0);
  }

  return result;
}

uint64_t sub_1000EC00C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A58D8 = result;
  unk_1001A58E0 = v5;
  return result;
}

uint64_t sub_1000EC12C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A58E8 = result;
  unk_1001A58F0 = v5;
  return result;
}

unint64_t sub_1000EC24C(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 5:
      result = 0x1000000000000016;
      break;
    case 4:
      result = 0x1000000000000010;
      break;
    case 6:
    case 11:
      result = 0x100000000000001FLL;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000EC344(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175668, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EC390(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000EC498@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EC344(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceActivationServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1000EC594);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000EC5CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EC390(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000EC5FC()
{
  result = qword_1001919D8;
  if (!qword_1001919D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001919D8);
  }

  return result;
}

uint64_t sub_1000EC6A0()
{
  sub_1000086BC((v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep));
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  v2 = *(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected + 8);

  return sub_1000068F8(v1);
}

uint64_t sub_1000EC6E4()
{
  v0 = sub_1000EBD04();
  sub_1000086BC((v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep));
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected + 8);
  sub_1000068F8(*(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected));
  return v0;
}

uint64_t sub_1000EC730()
{
  v0 = sub_1000EC6E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for OptionInfoItem()
{
  result = qword_100191A08;
  if (!qword_100191A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = (a11 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep);
  v19[3] = a12;
  v19[4] = a13;
  v20 = sub_10003EE2C(v19);
  (*(*(a12 - 8) + 32))(v20, a8, a12);
  v21 = (a11 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  *v21 = a9;
  v21[1] = a10;
  return sub_1000EBC54(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000EC900()
{
  v0 = sub_1000FB2E4();
  switch(v0)
  {
    case 4:
      sub_100003768(&qword_1001909C0, &qword_10012DFF8);
      v14 = type metadata accessor for AirPodsDeviceInfo();
      sub_100052F6C(v14);
      v16 = *(v15 + 72);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100121620;
      sub_1000ECB8C(v6 + v18);
      break;
    case 3:
      sub_100003768(&qword_1001909C0, &qword_10012DFF8);
      v8 = type metadata accessor for AirPodsDeviceInfo();
      sub_100052F6C(v8);
      v10 = *(v9 + 72);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100128690;
      v13 = v6 + v12;
      sub_1000ECB8C(v13);
      sub_1000ED384(xmmword_100130270);
      sub_1000ECF54(v13 + 2 * v10);
      break;
    case 2:
      sub_100003768(&qword_1001909C0, &qword_10012DFF8);
      v1 = type metadata accessor for AirPodsDeviceInfo();
      sub_100052F6C(v1);
      v3 = *(v2 + 72);
      v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100130280;
      v7 = v6 + v5;
      sub_1000ECB8C(v7);
      sub_1000ED384(xmmword_100130270);
      sub_1000ECC78(8217, 0xE900000000000034, v7 + 2 * v3, xmmword_100130290);
      sub_1000ECD88(v7 + 3 * v3);
      sub_1000ECE78(v7 + 4 * v3);
      sub_1000ECF54(v7 + 5 * v3);
      sub_1000ED040(v7 + 6 * v3);
      sub_1000ED12C(v7 + 7 * v3);
      sub_1000ED208(v7 + 8 * v3);
      break;
    default:
      return 0;
  }

  return v6;
}

uint64_t sub_1000ECB8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188410 != -1)
  {
    swift_once();
  }

  v3 = sub_1000ED3C4();
  sub_1000ED3E0(v3, qword_1001A5A88);
  sub_1000ED374(8231);
  *(a1 + 8) = v4;
  *(a1 + 16) = v1;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xED000033206F7250;
  *(a1 + 40) = xmmword_100130270;
  *(a1 + 56) = xmmword_1001302A0;
  v6 = sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8(v6);
  v8 = *(v7 + 16);
  v10 = sub_1000ED324(v9);

  return v11(v10);
}

uint64_t sub_1000ECC78@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  if (qword_1001883E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for ImageResource();
  v8 = sub_10000C2D4(v7, qword_1001A5A10);
  *a3 = a1;
  sub_1000ED30C();
  *(a3 + 8) = v10;
  *(a3 + 16) = v9 & 0xFFFF0000FFFFLL | 0xEC00000034200000;
  sub_1000ED2E4();
  *(a3 + 24) = v11;
  *(a3 + 32) = a2;
  *(a3 + 40) = a4;
  *(a3 + 56) = xmmword_1001302A0;
  v12 = sub_1000ED3AC(xmmword_1001302B0);
  v13 = *(*(v7 - 8) + 16);
  v14 = a3 + *(v12 + 40);

  return v13(v14, v8, v7);
}

uint64_t sub_1000ECD88@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188408 != -1)
  {
    sub_1000ED354();
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A5A70);
  sub_1000ED374(8228);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0x8000000100139B60;
  *(a1 + 24) = v3 | 3;
  *(a1 + 32) = 0x8000000100137580;
  *(a1 + 40) = xmmword_1001302C0;
  *(a1 + 56) = xmmword_1001302A0;
  v4 = sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8(v4);
  v6 = *(v5 + 16);
  v8 = sub_1000ED324(v7);

  return v9(v8);
}

uint64_t sub_1000ECE78@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188408 != -1)
  {
    sub_1000ED354();
  }

  v3 = sub_1000ED3C4();
  sub_1000ED3E0(v3, qword_1001A5A70);
  sub_1000ED374(8212);
  *(a1 + 8) = v4;
  *(a1 + 16) = v1;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xED000032206F7250;
  *(a1 + 40) = xmmword_1001302D0;
  *(a1 + 56) = xmmword_1001302A0;
  v6 = sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8(v6);
  v8 = *(v7 + 16);
  v10 = sub_1000ED324(v9);

  return v11(v10);
}

uint64_t sub_1000ECF54@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001883D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A59E0);
  *a1 = 8211;
  sub_1000ED30C();
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 0xFFFF0000FFFFLL | 0xEC00000033200000;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xE900000000000033;
  *(a1 + 40) = xmmword_1001302E0;
  *(a1 + 56) = xmmword_1001302A0;
  v6 = sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8(v6);
  v8 = *(v7 + 16);
  v10 = sub_1000ED324(v9);

  return v11(v10);
}

uint64_t sub_1000ED040@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188400 != -1)
  {
    swift_once();
  }

  v3 = sub_1000ED3C4();
  sub_1000ED3E0(v3, qword_1001A5A58);
  sub_1000ED374(8206);
  *(a1 + 8) = v4;
  *(a1 + 16) = v1;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xED000031206F7250;
  *(a1 + 40) = xmmword_1001302F0;
  *(a1 + 56) = xmmword_1001302A0;
  v6 = sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8(v6);
  v8 = *(v7 + 16);
  v10 = sub_1000ED324(v9);

  return v11(v10);
}

uint64_t sub_1000ED12C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001883D0 != -1)
  {
    sub_1000ED334();
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A59C8);
  *a1 = 8207;
  sub_1000ED30C();
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 0xFFFF0000FFFFLL | 0xEC00000032200000;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xE900000000000032;
  *(a1 + 40) = xmmword_100130300;
  *(a1 + 56) = xmmword_1001302A0;
  v6 = sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8(v6);
  v8 = *(v7 + 16);
  v10 = sub_1000ED324(v9);

  return v11(v10);
}

uint64_t sub_1000ED208@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001883D0 != -1)
  {
    sub_1000ED334();
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A59C8);
  *a1 = 8194;
  sub_1000ED30C();
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 0xFFFF0000FFFFLL | 0xEC00000031200000;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xE900000000000031;
  *(a1 + 40) = xmmword_100130310;
  *(a1 + 56) = xmmword_1001302A0;
  v6 = sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8(v6);
  v8 = *(v7 + 16);
  v10 = sub_1000ED324(v9);

  return v11(v10);
}

uint64_t sub_1000ED2F8(uint64_t result)
{
  v2 = *(result + 40);
  v3 = *(v1 - 8);
  return result;
}

uint64_t sub_1000ED334()
{

  return swift_once();
}

uint64_t sub_1000ED354()
{

  return swift_once();
}

uint64_t sub_1000ED384(__n128 a1)
{

  return sub_1000ECC78(8219, 0xEF29434E41282034, v1 + v2, a1);
}

uint64_t sub_1000ED3AC(__n128 a1)
{
  *(v1 + 72) = a1;

  return type metadata accessor for AirPodsDeviceInfo();
}

uint64_t sub_1000ED3C4()
{

  return type metadata accessor for ImageResource();
}

uint64_t sub_1000ED3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v6 = type metadata accessor for ActionInfoDestination(0);
  v7 = sub_10000AF7C(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v12 = v11 - v10;
  v13 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v39[-v15 - 8];
  v17 = type metadata accessor for URL();
  v18 = sub_100008780(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000C30C();
  v25 = v24 - v23;
  URL.init(string:)();
  if (sub_10000E5F0(v16, 1, v17) == 1)
  {
    sub_10000ABCC(v16, &qword_100188EE0, &unk_100122AE0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    (*(v20 + 32))(v25, v16, v17);
    (*(v20 + 16))(v12, v25, v17);
    swift_storeEnumTagMultiPayload();
    sub_1000EE2AC(a5, v39);
    v26 = type metadata accessor for ActionInfo(0);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    sub_1000EE3EC();
    sub_1000EDD44(v30, v31, v32, v33, v34, v35, v36);
    sub_10000ABCC(a5, &qword_10018E4C0, &qword_10012A2E0);
    (*(v20 + 8))(v25, v17);
    return v29;
  }

  return result;
}

uint64_t sub_1000ED69C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SupportActionInfoType();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for ActionInfoType(0);
  v17 = sub_10000AF7C(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10000C30C();
  v22 = (v21 - v20);
  sub_1000EE1FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000B64FC(*v22);
      goto LABEL_9;
    case 2u:
      sub_100063154(*v22);
      goto LABEL_9;
    case 3u:
      sub_100003040(*v22);
      goto LABEL_9;
    case 4u:
      sub_10001BFE4(*v22);
      goto LABEL_9;
    case 5u:
      sub_1000EE1A4();
      sub_1000EE1FC();
      sub_10003E8A8(v13);
      sub_1000EE3B8();
      sub_1000EE254(a1, v23);
      v24 = type metadata accessor for SupportActionInfoType;
      v25 = v15;
      goto LABEL_10;
    case 6u:
      sub_1000D8D88();
      goto LABEL_9;
    default:
      sub_1000D4F58(*v22);
LABEL_9:
      sub_1000EE3B8();
      v25 = a1;
LABEL_10:
      sub_1000EE254(v25, v24);
      *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_displayLinkSymbol) = a2 & 1;
      v26 = (v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
      v27 = *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
      v28 = *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8);
      *v26 = a3;
      v26[1] = a4;

      sub_100006568(a3);
      sub_1000068F8(v27);
      sub_1000068F8(a3);

      return v4;
  }
}

uint64_t sub_1000ED910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ActionInfoDestination(0);
  v11 = sub_10000AF7C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000C30C();
  if (a4)
  {
    sub_1000EE2AC(a5, v26);
    v14 = sub_1000ED3F8(a1, a2, a3, a4, v26);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000EE2AC(a5, v26);
    v15 = type metadata accessor for ActionInfo(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v14 = swift_allocObject();
    sub_100096B28();
    sub_1000EE3EC();
    sub_1000EDD44(v18, v19, v20, v21, v22, v23, v24);
  }

  sub_10000ABCC(a5, &qword_10018E4C0, &qword_10012A2E0);
  return v14;
}

uint64_t sub_1000EDA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionInfo(0);

  v6 = sub_100096B28();
  return sub_1000ED3F8(v6, v7, a3, a4, v8);
}

uint64_t sub_1000EDA9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActionInfoDestination(0);
  v3 = sub_10000AF7C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v8 = v7 - v6;
  v9 = type metadata accessor for URL();
  v10 = sub_100008780(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000C30C();
  v17 = v16 - v15;
  sub_1000EE1FC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1000EE3D4();
      sub_1000EE254(v8, v22);
      v19 = 1;
      break;
    case 4:
      return sub_100003CE8(a1, v19, 1, v9);
    default:
      v20 = *(v12 + 32);
      v21 = sub_100096B28();
      v20(v21);
      (v20)(a1, v17, v9);
      v19 = 0;
      break;
  }

  return sub_100003CE8(a1, v19, 1, v9);
}

uint64_t sub_1000EDC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004620C();
  v5 = type metadata accessor for ActionInfoDestination(v4);
  v6 = sub_10000AF7C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v11 = v10 - v9;
  v12 = type metadata accessor for URL();
  sub_10000AF7C(v12);
  (*(v13 + 16))(v11, a3);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ActionInfo(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();

  sub_1000EE3EC();
  sub_1000EDD44(v18, v19, v20, v21, v22, v23, v24);
  return v17;
}

uint64_t sub_1000EDD44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = type metadata accessor for UUID();
  v13 = sub_100008780(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000C30C();
  v20 = v19 - v18;
  v21 = (v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  *v21 = 0;
  v21[1] = 0;
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v15 + 8))(v20, v12);
  *(v8 + 16) = v22;
  *(v8 + 24) = v24;
  sub_1000EE1A4();
  v25 = (v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text);
  *v25 = a2;
  v25[1] = a3;
  *(v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_displayLinkSymbol) = a4;
  v26 = v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider;
  *(v26 + 32) = *(a5 + 32);
  v27 = *(a5 + 16);
  *v26 = *a5;
  *(v26 + 16) = v27;
  v28 = (v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  v29 = *(v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  v30 = *(v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8);
  *v28 = a6;
  v28[1] = a7;
  v31 = sub_100096B28();
  sub_100006568(v31);
  sub_1000068F8(v29);
  v32 = sub_100096B28();
  sub_1000068F8(v32);
  return v8;
}

uint64_t sub_1000EDEE4()
{
  v1 = *(v0 + 24);

  sub_1000EE3D4();
  sub_1000EE254(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text + 8);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider, &qword_10018E4C0, &qword_10012A2E0);
  v5 = *(v0 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8);
  sub_1000068F8(*(v0 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler));
  return v0;
}

uint64_t sub_1000EDF60()
{
  sub_1000EDEE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000EDFE0()
{
  result = type metadata accessor for ActionInfoDestination(319);
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

uint64_t sub_1000EE0BC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000EE12C()
{
  result = qword_100191C90;
  if (!qword_100191C90)
  {
    type metadata accessor for ActionInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191C90);
  }

  return result;
}

uint64_t sub_1000EE1A4()
{
  v2 = sub_10004620C();
  v4 = v3(v2);
  sub_10000AF7C(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1000EE1FC()
{
  v2 = sub_10004620C();
  v4 = v3(v2);
  sub_10000AF7C(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000EE254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000AF7C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000EE2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018E4C0, &qword_10012A2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EE31C()
{
  result = type metadata accessor for SupportActionInfoType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppleAccountPlacardInfoItemType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000EE4C8);
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

unint64_t sub_1000EE500(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100177348, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EE54C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1000E3328();
}

unint64_t sub_1000EE570@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EE500(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000EE5A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7A20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000EE5CC(uint64_t a1)
{
  result = sub_1000EE5F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EE5F4()
{
  result = qword_100191E08;
  if (!qword_100191E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191E08);
  }

  return result;
}

unint64_t sub_1000EE64C()
{
  result = qword_100191E10;
  if (!qword_100191E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191E10);
  }

  return result;
}

uint64_t sub_1000EE6A0(char a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for FlowImage();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v2;
  if (a1)
  {
    if (a1 == 1)
    {
      v37[0] = 0;
      v36 = 1;
      v14->i64[0] = 0xD00000000000001BLL;
      v14->i64[1] = 0x8000000100139C50;
      v14[1].i8[0] = 0;
      v14[1].i64[1] = 0;
      v14[2].i64[0] = 0;
      v14[2].i8[8] = 1;
      v14[3] = vdupq_n_s64(0x4046000000000000uLL);
      swift_storeEnumTagMultiPayload();
      if (qword_100188310 != -1)
      {
        swift_once();
      }

      v15 = *algn_100191D78;
      v34 = qword_100191D70;
      v16 = qword_100188318;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = qword_100191D80;
      v18 = *algn_100191D88;
      v19 = qword_100188340;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = qword_100191DC8;
    }

    else
    {
      if (qword_100188358 != -1)
      {
        swift_once();
      }

      v24 = sub_10000C2D4(v11, qword_100191DF0);
      sub_100053ED8(v24, v14);
      if (qword_100188328 != -1)
      {
        swift_once();
      }

      v15 = *algn_100191DA8;
      v34 = qword_100191DA0;
      v25 = qword_100188348;

      if (v25 != -1)
      {
        swift_once();
      }

      v17 = 0;
      v18 = 0;
      v20 = qword_100191DD0;
    }
  }

  else
  {
    if (qword_100188350 != -1)
    {
      swift_once();
    }

    v21 = sub_10000C2D4(v11, qword_100191DD8);
    sub_100053ED8(v21, v14);
    if (qword_1001882F8 != -1)
    {
      swift_once();
    }

    v15 = *algn_100191D48;
    v34 = qword_100191D40;
    v22 = qword_100188300;

    if (v22 != -1)
    {
      swift_once();
    }

    v17 = qword_100191D50;
    v18 = *algn_100191D58;
    v23 = qword_100188338;

    if (v23 != -1)
    {
      swift_once();
    }

    v20 = qword_100191DC0;
  }

  sub_100053ED8(v14, v10);
  sub_100003CE8(v10, 0, 1, v11);
  v38 = &type metadata for AppleAccountPlacardInfoItemType;
  v39 = sub_1000EF7D8();
  v37[0] = a1;
  swift_retain_n();
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v3 + 8))(v6, v35);
  v29 = type metadata accessor for PlacardInfoItem(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1000F04E8(0, v26, v28, v10, v34, v15, v17, v18, v20, v37);

  sub_1000EF82C(v14);
  return v32;
}

uint64_t sub_1000EEBDC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D40 = result;
  *algn_100191D48 = v5;
  return result;
}

uint64_t sub_1000EECE4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D50 = result;
  *algn_100191D58 = v5;
  return result;
}

uint64_t sub_1000EEDEC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D60 = result;
  *algn_100191D68 = v5;
  return result;
}

uint64_t sub_1000EEEF4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D70 = result;
  *algn_100191D78 = v5;
  return result;
}

uint64_t sub_1000EEFFC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D80 = result;
  *algn_100191D88 = v5;
  return result;
}

uint64_t sub_1000EF104()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D90 = result;
  *algn_100191D98 = v5;
  return result;
}

uint64_t sub_1000EF20C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191DA0 = result;
  *algn_100191DA8 = v5;
  return result;
}

uint64_t sub_1000EF314()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191DB0 = result;
  *algn_100191DB8 = v5;
  return result;
}

uint64_t sub_1000EF41C()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188308 != -1)
  {
    swift_once();
  }

  v0 = qword_100191D60;
  v1 = *algn_100191D68;

  v2 = sub_1000EDA28(v0, v1, 0xD00000000000004BLL, 0x8000000100139C70);

  qword_100191DC0 = v2;
  return result;
}

uint64_t sub_1000EF4C8()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188320 != -1)
  {
    swift_once();
  }

  v0 = qword_100191D90;
  v1 = *algn_100191D98;

  v2 = sub_1000EDA28(v0, v1, 0xD000000000000043, 0x8000000100139E60);

  qword_100191DC8 = v2;
  return result;
}

uint64_t sub_1000EF574()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188330 != -1)
  {
    swift_once();
  }

  v0 = qword_100191DB0;
  v1 = *algn_100191DB8;

  v2 = sub_1000EDA28(v0, v1, 0xD000000000000019, 0x800000010013A030);

  qword_100191DD0 = v2;
  return result;
}

uint64_t sub_1000EF620()
{
  v0 = type metadata accessor for FlowImage();
  sub_10000C270(v0, qword_100191DD8);
  v1 = sub_10000C2D4(v0, qword_100191DD8);
  v2 = type metadata accessor for FlowSymbol();
  v3 = &v1[v2[5]];
  static SymbolRenderingMode.multicolor.getter();
  v4 = v2[6];
  v5 = enum case for Image.Scale.medium(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  *v1 = 0x656968732E79656BLL;
  *(v1 + 1) = 0xEF6C6C69662E646CLL;
  *&v1[v2[7]] = 0;
  *&v1[v2[8]] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000EF734()
{
  v0 = type metadata accessor for FlowImage();
  sub_10000C270(v0, qword_100191DF0);
  v1 = sub_10000C2D4(v0, qword_100191DF0);
  v1->i64[0] = 0xD00000000000001ELL;
  v1->i64[1] = 0x800000010013A130;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000EF7D8()
{
  result = qword_100191E18;
  if (!qword_100191E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191E18);
  }

  return result;
}

uint64_t sub_1000EF82C(uint64_t a1)
{
  v2 = type metadata accessor for FlowImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EF8B4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

unint64_t sub_1000EF9F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  sub_1000EF8B4(a1, a2 & 1);
  v11 = sub_1000DEC54(a3, 0);

  result = sub_10001362C();
  *a4 = v8;
  a4[1] = v10;
  a4[2] = v11;
  a4[5] = &type metadata for MessagesStepProvider;
  a4[6] = result;
  return result;
}

unint64_t sub_1000EFACC@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v10 = sub_10010C0C0();
  v21 = v11;
  v22 = v10;

  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v12 = *(type metadata accessor for FlowStepContentOption() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100121620;

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  sub_10010BF80(v15 + v14);

  swift_storeEnumTagMultiPayload();
  v17 = sub_1000FF880(v15);
  *(a2 + 40) = &type metadata for AirPodsStepProvider;
  result = sub_100004C8C();
  *(a2 + 16) = 9;
  v19 = v21;
  *a2 = v22;
  *(a2 + 8) = v19;
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = v17;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1000EFDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100192008, &qword_100130898);
  v7 = sub_10000ED84(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000F0C04();
  v10 = type metadata accessor for SupportPlacardInfoItemType();
  v11 = sub_10000ED84(v10);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for PlacardInfoItemType(0);
  v20 = sub_10000AF7C(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_10000C30C();
  v25 = (v24 - v23);
  v26 = sub_1000F0B5C();
  sub_1000F0AFC(v26, v25, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = sub_1000533FC(*v25);
      goto LABEL_8;
    case 2u:
      sub_1000F0A9C(v25, v18, type metadata accessor for SupportPlacardInfoItemType);
      sub_1000F0AFC(v18, v16, type metadata accessor for SupportPlacardInfoItemType);
      v29 = sub_1000B1A80(v16);
      sub_1000B244C(v18);
      goto LABEL_9;
    case 3u:
      v28 = sub_1000E8E48();
      goto LABEL_8;
    case 4u:
      v28 = sub_100119788();
      goto LABEL_8;
    case 5u:
      v28 = sub_100083E78();
      goto LABEL_8;
    default:
      v28 = sub_1000EE6A0(*v25);
LABEL_8:
      v29 = v28;
LABEL_9:
      v30 = sub_1000F0B5C();
      sub_1000F0A9C(v30, v3, v31);
      sub_100003CE8(v3, 0, 1, v19);
      v32 = OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type;
      swift_beginAccess();

      sub_1000F0A2C(v3, v29 + v32);
      swift_endAccess();
      v33 = *(v29 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);
      if (v33)
      {
        v34 = *(v29 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);

        v35 = (v33 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
        v36 = *(v33 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
        v37 = *(v33 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8);
        *v35 = a2;
        v35[1] = a3;
        sub_100006568(a2);
        sub_1000068F8(v36);

        sub_1000068F8(a2);
      }

      else
      {
        sub_1000068F8(a2);
      }

      return v29;
  }
}

uint64_t sub_1000F0088@<X0>(int64x2_t *a1@<X8>)
{
  a1->i64[0] = 0xD00000000000001BLL;
  a1->i64[1] = 0x8000000100139C50;
  a1[1].i8[0] = 0;
  a1[1].i64[1] = 0;
  a1[2].i64[0] = 0;
  a1[2].i8[8] = 1;
  a1[3] = vdupq_n_s64(0x4046000000000000uLL);
  v2 = type metadata accessor for FlowImage();
  swift_storeEnumTagMultiPayload();

  return sub_100003CE8(a1, 0, 1, v2);
}

uint64_t sub_1000F012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = a7;
  v62 = a8;
  v58 = a5;
  v59 = a1;
  v60 = a2;
  v13 = type metadata accessor for ActionInfoDestination(0);
  v14 = sub_10000AF7C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000C30C();
  v17 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v18 = sub_10000ED84(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (v57 - v21);
  v23 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v24 = sub_10000ED84(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_1000F0C04();
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10000C30C();
  v32 = v31 - v30;
  URL.init(string:)();
  if (sub_10000E5F0(v11, 1, v27) == 1)
  {
    sub_10000ABCC(v11, &qword_100188EE0, &unk_100122AE0);
    return 0;
  }

  else
  {
    v57[1] = a11;
    v57[2] = a9;
    (*(v28 + 32))(v32, v11, v27);
    if (a6)
    {
      v64 = 0;
      v63 = 1;
      v22->i64[0] = v58;
      v22->i64[1] = a6;
      v57[0] = a10;
      v22[1].i8[0] = 0;
      v22[1].i64[1] = 0;
      v22[2].i64[0] = 0;
      v22[2].i8[8] = 1;
      v22[3] = vdupq_n_s64(0x4046000000000000uLL);
      v34 = type metadata accessor for FlowImage();
      swift_storeEnumTagMultiPayload();
      sub_100003CE8(v22, 0, 1, v34);
      v35 = sub_1000F0BEC();
      v36(v35);
      swift_storeEnumTagMultiPayload();
      v37 = type metadata accessor for ActionInfo(0);
      sub_1000F0B78(v37);

      v38 = sub_1000F0BBC();
      v39 = type metadata accessor for PlacardInfoItem(0);
      sub_1000F0B78(v39);
      v56 = v38;
      v40 = sub_1000F0B9C();
      v47 = v57[0];
    }

    else
    {
      v48 = sub_1000F0BEC();
      v49(v48);
      swift_storeEnumTagMultiPayload();
      v50 = type metadata accessor for ActionInfo(0);
      sub_1000F0B78(v50);

      v51 = sub_1000F0BBC();
      v66 = 0;
      memset(v65, 0, sizeof(v65));
      sub_1000F0088(v22);
      v52 = type metadata accessor for PlacardInfoItem(0);
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v56 = v51;
      v40 = sub_1000F0B9C();
      v47 = a10;
    }

    v33 = sub_1000F04E8(v40, v41, v42, v43, v44, v45, v46, v47, v56, v65);
    (*(v28 + 8))(v32, v27);
  }

  return v33;
}

uint64_t sub_1000F04E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type;
  v18 = type metadata accessor for PlacardInfoItemType(0);
  sub_100003CE8(v10 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action;
  *(v10 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action) = 0;
  *(v10 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_style) = a1 & 1;
  v20 = v10 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider;
  v21 = *(a10 + 16);
  *v20 = *a10;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a10 + 32);
  *(v10 + v19) = a9;

  return sub_1000EBC54(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000F05D4()
{
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider, &qword_10018E4C0, &qword_10012A2E0);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type, &qword_100192008, &qword_100130898);
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);
}

uint64_t sub_1000F0644()
{
  v0 = sub_1000EBD04();
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider, &qword_10018E4C0, &qword_10012A2E0);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type, &qword_100192008, &qword_100130898);
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);

  return v0;
}

uint64_t sub_1000F06BC()
{
  v0 = sub_1000F0644();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1000F0738()
{
  sub_1000F07E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000F07E4()
{
  if (!qword_100191E58)
  {
    type metadata accessor for PlacardInfoItemType(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100191E58);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlacardInfoItemStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000F0928);
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

uint64_t sub_1000F0960()
{
  result = type metadata accessor for SupportPlacardInfoItemType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000F09D8()
{
  result = qword_100192000;
  if (!qword_100192000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192000);
  }

  return result;
}

uint64_t sub_1000F0A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100192008, &qword_100130898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000AF7C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000F0AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000AF7C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000F0B78(uint64_t a1)
{
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  *(v1 - 96) = 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_1000F0B9C()
{
  result = 0;
  v2 = *(v0 - 176);
  v3 = *(v0 - 160);
  v4 = *(v0 - 192);
  return result;
}

uint64_t sub_1000F0BBC()
{
  v4 = *(v2 - 200);

  return sub_1000EDD44(v0, v4, v1, 1, v2 - 128, 0, 0);
}

double sub_1000F0C44@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionInfoType(0);
  v4 = sub_10000AF7C(v3);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v27 - v17;
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  v21 = *v1;
  v29 = v1[1];
  v30 = v21;
  *(&v27 - v19) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v20, 0, 1, v3);
  sub_10000EC9C((v1 + 2), v33, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v20, v18, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v33, v31, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v18, v15, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v15, 1, v3) == 1)
  {
    v22 = v29;

    sub_10000ABCC(v18, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v33, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
    v23 = 0;
  }

  else
  {
    sub_10003F558(v15, v10);
    type metadata accessor for ActionInfo(0);
    v24 = v28;
    sub_10003F5BC(v10, v28);
    v22 = v29;

    v23 = sub_1000ED69C(v24, 1, 0, 0);
    sub_10003F620(v10);
    sub_10000ABCC(v18, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v33, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
  }

  *a1 = v30;
  *(a1 + 8) = v22;
  *(a1 + 64) = 0;
  *(a1 + 72) = v23;
  result = *v31;
  v26 = v31[1];
  *(a1 + 16) = v31[0];
  *(a1 + 32) = v26;
  *(a1 + 48) = v32;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SoftwareUpdateStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000F1028);
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

void sub_1000F107C(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

uint64_t sub_1000F116C(char a1)
{
  v2 = a1 - 2;
  if ((a1 - 2) > 4u)
  {
    v3 = 0;
    LOBYTE(v4) = -1;
  }

  else
  {
    v3 = qword_100130B18[(a1 - 2)];
    v4 = 0x10101uLL >> (8 * (v2 & 0x1Fu));
  }

  return sub_1000F11B0(v3, v4, a1);
}

uint64_t sub_1000F11B0(uint64_t a1, char a2, char a3)
{
  if (a2 == -1)
  {
    sub_1000F15C4(a3);
    v8 = v7;
    if (v6 == 0x726F466B63656863 && v7 == 0xEF73657461647055)
    {
    }

    else
    {
      v10 = v6;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (v10 == 0x6F666E4961746562 && v8 == 0xE800000000000000)
        {
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v13 & 1) == 0)
          {
            v16[0] = 256;
LABEL_20:
            sub_10002D58C();
            _ConditionalContent<>.init(storage:)();
            sub_100003768(&qword_100192088, &qword_100130AF0);
            sub_100003768(&qword_100192090, &qword_100130AF8);
            sub_1000F1A68();
            sub_1000F1AF4();
            return _ConditionalContent<>.init(storage:)();
          }
        }

        v16[0] = 0;
        goto LABEL_20;
      }
    }

    v19 = 1;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100065C4C();
    sub_100057D3C();
    _ConditionalContent<>.init(storage:)();
    v3 = &qword_100192088;
    v4 = &qword_100130AF0;
    sub_100006578(v16, v17, &qword_100192088, &qword_100130AF0);
    v20 = 0;
    sub_100003768(&qword_100192088, &qword_100130AF0);
    sub_100003768(&qword_100192090, &qword_100130AF8);
    sub_1000F1A68();
    sub_1000F1AF4();
    _ConditionalContent<>.init(storage:)();
    v5 = v16;
    return sub_10001D724(v5, v3, v4);
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_10000B2C0(0, 0, v17, 0, 0, a1, a2 & 1);
  sub_10001D724(v17, &qword_100189310, &qword_1001221A0);
  v3 = &qword_10018BFB0;
  v4 = &qword_100126DB0;
  sub_100006578(v15, v17, &qword_10018BFB0, &qword_100126DB0);
  v19 = 0;
  sub_100003768(&qword_10018BFB0, &qword_100126DB0);
  sub_100065C4C();
  sub_100057D3C();
  _ConditionalContent<>.init(storage:)();
  sub_100006578(v16, v17, &qword_100192088, &qword_100130AF0);
  v20 = 0;
  sub_100003768(&qword_100192088, &qword_100130AF0);
  sub_100003768(&qword_100192090, &qword_100130AF8);
  sub_1000F1A68();
  sub_1000F1AF4();
  _ConditionalContent<>.init(storage:)();
  sub_10001D724(v16, &qword_100192088, &qword_100130AF0);
  v5 = v15;
  return sub_10001D724(v5, v3, v4);
}

unint64_t sub_1000F1578(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001773B0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_1000F15C4(char a1)
{
  switch(a1)
  {
    case 3:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

unint64_t sub_1000F16F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F1578(*a1);
  *a2 = result;
  return result;
}

void sub_1000F1728(void *a1@<X8>)
{
  sub_1000F15C4(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000F17A0()
{
  result = qword_100192010;
  if (!qword_100192010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192010);
  }

  return result;
}

unint64_t sub_1000F17F4()
{
  result = qword_100192018;
  if (!qword_100192018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192018);
  }

  return result;
}

uint64_t sub_1000F18B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_100192028, &qword_1001309F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F1968()
{
  result = qword_100192070;
  if (!qword_100192070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192070);
  }

  return result;
}

unint64_t sub_1000F19BC()
{
  result = qword_100192078;
  if (!qword_100192078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192078);
  }

  return result;
}

unint64_t sub_1000F1A14()
{
  result = qword_100192080;
  if (!qword_100192080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192080);
  }

  return result;
}

unint64_t sub_1000F1A68()
{
  result = qword_100192098;
  if (!qword_100192098)
  {
    sub_100004D48(&qword_100192088, &qword_100130AF0);
    sub_100065C4C();
    sub_100057D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192098);
  }

  return result;
}

unint64_t sub_1000F1AF4()
{
  result = qword_1001920A0;
  if (!qword_1001920A0)
  {
    sub_100004D48(&qword_100192090, &qword_100130AF8);
    sub_10002D58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001920A0);
  }

  return result;
}

unint64_t sub_1000F1B84()
{
  result = qword_1001920A8;
  if (!qword_1001920A8)
  {
    sub_100004D48(&qword_1001920B0, &qword_100130B00);
    sub_1000F1C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001920A8);
  }

  return result;
}

unint64_t sub_1000F1C08()
{
  result = qword_1001920B8;
  if (!qword_1001920B8)
  {
    sub_100004D48(&qword_1001920C0, &unk_100130B08);
    sub_1000F1A68();
    sub_1000F1AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001920B8);
  }

  return result;
}

__n128 sub_1000F1C94(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F1CA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F1CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000F1D70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F1DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000F1E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_100188380;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001A5980;
  v9 = *algn_1001A5988;
  *(a4 + 40) = &type metadata for TrustedPhoneNumberStepProvider;
  v11 = sub_1000BC544();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
}

uint64_t sub_1000F1F14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SymbolRenderingMode();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for Image.Scale();
      v10 = *(a3 + 24);
    }

    return sub_10000E5F0(a1 + v10, a2, v9);
  }
}

uint64_t sub_1000F1FF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SymbolRenderingMode();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for Image.Scale();
      v10 = *(a4 + 24);
    }

    return sub_100003CE8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for FlowSymbol()
{
  result = qword_100192120;
  if (!qword_100192120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F2108()
{
  type metadata accessor for SymbolRenderingMode();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Image.Scale();
    if (v1 <= 0x3F)
    {
      sub_1000ADD64();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000F21E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100192168, &qword_100130D18);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000F22AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100192168, &qword_100130D18);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertView()
{
  result = qword_1001921C8;
  if (!qword_1001921C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F23AC()
{
  sub_1000F2430();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RemoteAlertViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F2430()
{
  if (!qword_1001921D8)
  {
    type metadata accessor for PresentationDetent();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1001921D8);
    }
  }
}

uint64_t sub_1000F24A4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for RemoteAlertView();
  v3 = v2 - 8;
  v34 = *(v2 - 8);
  v33 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_100192208, &qword_100130D88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v32 = swift_allocBox();
  v15 = v14;
  v16 = *(v1 + *(v3 + 28));
  type metadata accessor for RemoteAlertViewModel();
  sub_1000F3300(&qword_100190EA0, type metadata accessor for RemoteAlertViewModel);

  Bindable<A>.init(wrappedValue:)();
  v17 = static Color.clear.getter();
  v18 = static SafeAreaRegions.all.getter();
  v19 = static Edge.Set.all.getter();
  v36 = v17;
  v37 = v18;
  v38 = v19;
  (*(v7 + 16))(v11, v15, v6);
  Bindable.projectedValue.getter();
  v20 = *(v7 + 8);
  v20(v11, v6);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v20(v13, v6);
  v21 = v31;
  sub_1000F2E0C(v31, v5);
  v22 = *(v34 + 80);
  v23 = swift_allocObject();
  sub_1000F2F60(v5, v23 + ((v22 + 16) & ~v22));
  sub_1000F2E0C(v21, v5);
  v24 = (v22 + 24) & ~v22;
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v32;
  sub_1000F2F60(v5, v25 + v24);

  sub_100003768(&qword_100192210, &qword_100130DB8);
  sub_100003768(&qword_100192218, &qword_100130DC0);
  sub_1000F3190();
  sub_1000F3214();
  v27 = v35;
  View.sheet<A>(isPresented:onDismiss:content:)();

  result = sub_100003768(&qword_100192230, &qword_100130DC8);
  v29 = (v27 + *(result + 36));
  *v29 = sub_1000F3348;
  v29[1] = v26;
  v29[2] = 0;
  v29[3] = 0;
  return result;
}

id sub_1000F28AC(uint64_t a1)
{
  v1 = *(*(a1 + *(type metadata accessor for RemoteAlertView() + 20)) + 16);

  return [v1 invalidate];
}

uint64_t sub_1000F28F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_100003768(&qword_100192238, &qword_100130DD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v15 = sub_100003768(&qword_100192208, &qword_100130D88);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  v20 = type metadata accessor for RootView();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_projectBox();
  (*(v16 + 16))(v19, v24, v15);
  Bindable.wrappedValue.getter();
  (*(v16 + 8))(v19, v15);
  sub_1000D5EDC(v14);

  v25 = type metadata accessor for DeepLinkContext();
  sub_100003CE8(v10, 1, 1, v25);
  sub_1000F350C(v14, v10, v23);
  sub_100003768(&qword_100192240, &qword_100130DD8);
  v26 = *(type metadata accessor for PresentationDetent() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100122C90;
  static PresentationDetent.medium.getter();
  static PresentationDetent.large.getter();
  sub_100067030(v29);
  sub_100003768(&qword_100192168, &qword_100130D18);
  State.projectedValue.getter();
  sub_1000F3300(&qword_10018A318, type metadata accessor for RootView);
  View.presentationDetents(_:selection:)();

  sub_1000F3350(v6);
  sub_1000F33B8(v23);
  v30 = static SafeAreaRegions.all.getter();
  LOBYTE(v6) = static Edge.Set.all.getter();
  result = sub_100003768(&qword_100192218, &qword_100130DC0);
  v32 = a2 + *(result + 36);
  *v32 = v30;
  *(v32 + 8) = v6;
  return result;
}

uint64_t sub_1000F2CF0()
{
  v0 = sub_100003768(&qword_100192208, &qword_100130D88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  Bindable.wrappedValue.getter();
  (*(v1 + 8))(v4, v0);
  sub_1000D6680(1);
}

uint64_t sub_1000F2E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F2E70()
{
  v2 = type metadata accessor for RemoteAlertView();
  sub_100046168(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for PresentationDetent();
  sub_10000C31C(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(v1 + v5 + *(sub_100003768(&qword_100192168, &qword_100130D18) + 28));

  v11 = *(v1 + v5 + *(v0 + 28));

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_1000F2F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000F2FC4()
{
  v1 = *(type metadata accessor for RemoteAlertView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000F28AC(v2);
}

uint64_t sub_1000F3024()
{
  v2 = type metadata accessor for RemoteAlertView();
  sub_100046168(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = type metadata accessor for PresentationDetent();
  sub_10000C31C(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = *(v1 + v5 + *(sub_100003768(&qword_100192168, &qword_100130D18) + 28));

  v12 = *(v1 + v5 + *(v0 + 28));

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_1000F311C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteAlertView() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000F28F8(v5, a1);
}

unint64_t sub_1000F3190()
{
  result = qword_100192220;
  if (!qword_100192220)
  {
    sub_100004D48(&qword_100192210, &qword_100130DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192220);
  }

  return result;
}

unint64_t sub_1000F3214()
{
  result = qword_100192228;
  if (!qword_100192228)
  {
    sub_100004D48(&qword_100192218, &qword_100130DC0);
    type metadata accessor for RootView();
    sub_1000F3300(&qword_10018A318, type metadata accessor for RootView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192228);
  }

  return result;
}

uint64_t sub_1000F3300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F3350(uint64_t a1)
{
  v2 = sub_100003768(&qword_100192238, &qword_100130DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F33B8(uint64_t a1)
{
  v2 = type metadata accessor for RootView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000F3418()
{
  result = qword_100192248;
  if (!qword_100192248)
  {
    sub_100004D48(&qword_100192230, &qword_100130DC8);
    sub_100004D48(&qword_100192210, &qword_100130DB8);
    sub_100004D48(&qword_100192218, &qword_100130DC0);
    sub_1000F3190();
    sub_1000F3214();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192248);
  }

  return result;
}

uint64_t sub_1000F350C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38[1] = a1;
  v39 = a2;
  v5 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  sub_10000ED78();
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v11 = sub_1000FA050();
  v12 = sub_10000AF7C(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = v38 - v16;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v18 = type metadata accessor for RootView();
  v19 = *(v18 + 20);
  v20 = type metadata accessor for SupportFlowIdentifier();
  sub_100003CE8(v17, 1, 1, v20);
  sub_1000FA07C();
  State.init(wrappedValue:)();
  sub_1000FA000();
  sub_10000ABCC(v21, v22, v23);
  sub_10000EC9C(a1, v17, &unk_10018A300, &unk_1001241E0);
  sub_10000ABCC(a3 + v19, &qword_100192250, &qword_100130E20);
  sub_1000FA07C();
  State.init(wrappedValue:)();
  sub_1000FA000();
  sub_10000ABCC(v24, v25, v26);
  v27 = v39;
  sub_10000EC9C(v39, v10, &qword_10018A310, &unk_1001241F0);
  v28 = type metadata accessor for FlowViewDataProvider(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1000F9E84();
  sub_100089078();
  v31 = (a3 + *(v18 + 24));
  v40 = v32;
  State.init(wrappedValue:)();
  sub_10000ABCC(v27, &qword_10018A310, &unk_1001241F0);
  sub_1000FA000();
  result = sub_10000ABCC(v33, v34, v35);
  v37 = v42;
  *v31 = v41;
  v31[1] = v37;
  return result;
}

uint64_t sub_1000F3744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v97 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000AF7C(v97);
  v4 = *(v3 + 64);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_10003DC84();
  v96 = v6;
  v7 = type metadata accessor for RootView();
  v89 = *(v7 - 8);
  v101 = *(v89 + 64);
  v8 = v7 - 8;
  v85 = v7 - 8;
  __chkstk_darwin(v7 - 8);
  v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_10018B248, &qword_100125920);
  sub_10000ED84(v10);
  v12 = *(v11 + 64);
  sub_10000ED78();
  __chkstk_darwin(v13);
  v87 = sub_100003768(&qword_100192310, &qword_100130E90);
  sub_100008780(v87);
  v88 = v14;
  v16 = *(v15 + 64);
  sub_10000ED78();
  __chkstk_darwin(v17);
  sub_10003DC84();
  v83 = v18;
  v90 = sub_100003768(&qword_100192318, &qword_100130E98);
  sub_100008780(v90);
  v91 = v19;
  v21 = *(v20 + 64);
  sub_10000ED78();
  __chkstk_darwin(v22);
  sub_10003DC84();
  v84 = v23;
  v92 = sub_100003768(&qword_100192320, &qword_100130EA0);
  sub_100008780(v92);
  v93 = v24;
  v26 = *(v25 + 64);
  sub_10000ED78();
  __chkstk_darwin(v27);
  sub_10003DC84();
  v99 = v28;
  v29 = sub_100003768(&qword_100192328, &qword_100130EA8);
  v94 = sub_100008780(v29);
  v95 = v30;
  v32 = *(v31 + 64);
  sub_10000ED78();
  __chkstk_darwin(v33);
  sub_10003DC84();
  v100 = v34;
  v35 = (v1 + *(v8 + 32));
  v37 = *v35;
  v36 = v35[1];
  v109 = v37;
  v110 = v36;
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.projectedValue.getter();
  v38 = v103;
  v39 = v104;
  v40 = v105;
  swift_getKeyPath();
  v109 = v38;
  v110 = v39;
  v111 = v40;
  sub_100003768(&qword_100192338, &qword_100130EE0);
  Binding.subscript.getter();

  v102 = v1;
  v82 = sub_100003768(&qword_100192340, &qword_100130EE8);
  v41 = sub_100004D48(&qword_100192348, &qword_100130EF0);
  v42 = type metadata accessor for FlowViewDataProvider(255);
  v43 = sub_100004D48(&qword_100192350, &qword_100130EF8);
  v44 = sub_100004D48(&qword_100192358, &qword_100130F00);
  v45 = type metadata accessor for URL();
  v46 = type metadata accessor for SafariView();
  v47 = sub_1000F8564();
  v48 = sub_1000F9718(&qword_100192558, &type metadata accessor for URL);
  v49 = sub_1000F9718(&qword_10018B6A0, type metadata accessor for SafariView);
  v103 = v44;
  v104 = v45;
  v105 = v46;
  v106 = v47;
  v107 = v48;
  v108 = v49;
  v50 = sub_1000F9FE4();
  v51 = sub_1000F93A4();
  v103 = v43;
  v104 = &type metadata for FirstLaunchWelcomeView;
  v105 = v50;
  v106 = v51;
  v52 = sub_1000F9FE4();
  v53 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  v103 = v41;
  v104 = v42;
  v105 = v52;
  v106 = v53;
  sub_1000F9FE4();
  v54 = v83;
  NavigationStack.init<>(path:root:)();
  v55 = v2;
  v56 = v86;
  sub_1000F93F8(v2, v86);
  v89 = *(v89 + 80);
  v57 = (v89 + 16) & ~v89;
  v58 = swift_allocObject();
  sub_1000F9460(v56, v58 + v57);
  sub_1000F9F80();
  v60 = sub_10000AAEC(v59, &qword_100192310, &qword_100130E90);
  v61 = v84;
  v62 = v87;
  View.onLoad(perform:)();

  (*(v88 + 8))(v54, v62);
  sub_1000F93F8(v2, v56);
  v63 = swift_allocObject();
  v64 = v56;
  sub_1000F9460(v56, v63 + v57);
  v103 = v62;
  v104 = v60;
  sub_1000F9FB0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v90;
  View.onBackground(perform:)();

  (*(v91 + 8))(v61, v66);
  v67 = *(v85 + 28);
  sub_100003768(&qword_100192250, &qword_100130E20);
  v81 = v55;
  v68 = v96;
  State.wrappedValue.getter();
  sub_1000F93F8(v55, v56);
  v69 = swift_allocObject();
  sub_1000F9460(v56, v69 + v57);
  v103 = v66;
  v104 = OpaqueTypeConformance2;
  sub_1000F9F98();
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_1000F9664();
  v72 = v99;
  v73 = v68;
  v74 = v92;
  v75 = v97;
  View.onChange<A>(of:initial:_:)();

  sub_10000ABCC(v73, &unk_10018A300, &unk_1001241E0);
  (*(v93 + 8))(v72, v74);
  sub_1000F93F8(v81, v64);
  v76 = swift_allocObject();
  sub_1000F9460(v64, v76 + v57);
  v103 = v74;
  v104 = v75;
  v105 = v70;
  v106 = v71;
  sub_1000F9F68();
  swift_getOpaqueTypeConformance2();
  v77 = v94;
  v78 = v100;
  View.onOpenSupportFlowURL(perform:)();

  return (*(v95 + 8))(v78, v77);
}

uint64_t sub_1000F404C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for RootView();
  v4 = v3 - 8;
  v51 = *(v3 - 8);
  v49 = *(v51 + 64);
  __chkstk_darwin(v3);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_100192578, &qword_100131028);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - v8;
  v46 = sub_100003768(&qword_100192358, &qword_100130F00);
  v10 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v12 = &v42 - v11;
  v50 = sub_100003768(&qword_100192350, &qword_100130EF8);
  v52 = *(v50 - 8);
  v13 = *(v52 + 64);
  __chkstk_darwin(v50);
  v58 = &v42 - v14;
  v15 = sub_100003768(&qword_100192348, &qword_100130EF0);
  v16 = *(v15 - 8);
  v53 = v15;
  v54 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v47 = &v42 - v18;
  v45 = a1;
  sub_1000F4718(v12);
  v19 = (a1 + *(v4 + 32));
  v21 = *v19;
  v20 = v19[1];
  v56 = v21;
  v57 = v20;
  v65 = v21;
  v66 = v20;
  v44 = sub_100003768(&qword_100192330, &qword_100130EB0);
  State.projectedValue.getter();
  v22 = v59;
  v23 = v60;
  v24 = v61;
  swift_getKeyPath();
  v59 = v22;
  v60 = v23;
  v61 = v24;
  sub_100003768(&qword_100192338, &qword_100130EE0);
  Binding.subscript.getter();

  v43 = type metadata accessor for URL();
  v42 = type metadata accessor for SafariView();
  v25 = sub_1000F8564();
  v26 = sub_1000F9718(&qword_100192558, &type metadata accessor for URL);
  v27 = sub_1000F9718(&qword_10018B6A0, type metadata accessor for SafariView);
  v28 = v46;
  View.sheet<A, B>(item:onDismiss:content:)();
  sub_10000ABCC(v9, &qword_100192578, &qword_100131028);
  sub_1000F97CC(v12);
  v65 = v56;
  v66 = v57;
  State.projectedValue.getter();
  v29 = v59;
  v30 = v60;
  v31 = v61;
  swift_getKeyPath();
  v65 = v29;
  v66 = v30;
  v67 = v31;
  Binding.subscript.getter();

  v32 = v48;
  sub_1000F93F8(v45, v48);
  v33 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v34 = swift_allocObject();
  sub_1000F9460(v32, v34 + v33);
  v59 = v28;
  v60 = v43;
  v61 = v42;
  v62 = v25;
  v63 = v26;
  v64 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1000F93A4();
  v36 = v47;
  v37 = v50;
  v38 = v58;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v52 + 8))(v38, v37);
  v59 = v56;
  v60 = v57;
  State.wrappedValue.getter();
  type metadata accessor for FlowViewDataProvider(0);
  v59 = v37;
  v60 = &type metadata for FirstLaunchWelcomeView;
  v61 = OpaqueTypeConformance2;
  v62 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  v39 = v53;
  View.environment<A>(_:)();

  return (*(v54 + 8))(v36, v39);
}

uint64_t sub_1000F4718@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v3 = type metadata accessor for RootView();
  v4 = v3 - 8;
  v105 = *(v3 - 8);
  v5 = *(v105 + 64);
  __chkstk_darwin(v3);
  v111 = v6;
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100003768(&qword_100192510, &qword_100130FE8);
  v7 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v9 = &v97 - v8;
  v114 = sub_100003768(&qword_100192500, &qword_100130FD8);
  v107 = *(v114 - 8);
  v10 = *(v107 + 64);
  __chkstk_darwin(v114);
  v112 = &v97 - v11;
  v115 = sub_100003768(&qword_1001924F0, &qword_100130FC8);
  v109 = *(v115 - 8);
  v12 = *(v109 + 64);
  __chkstk_darwin(v115);
  v108 = &v97 - v13;
  v116 = sub_100003768(&qword_100192580, &qword_100131080);
  v14 = *(v116 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v116);
  v17 = &v97 - v16;
  v113 = sub_100003768(&qword_100192588, &qword_100131088);
  v18 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v20 = &v97 - v19;
  v21 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v97 - v23;
  v25 = type metadata accessor for SupportFlowIdentifier();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v4 + 28);
  sub_100003768(&qword_100192250, &qword_100130E20);
  State.wrappedValue.getter();
  v31 = sub_10000E5F0(v24, 1, v25);
  v110 = v20;
  if (v31 == 1)
  {
    sub_10000ABCC(v24, &unk_10018A300, &unk_1001241E0);
    v32 = type metadata accessor for FlowViewDataProvider(0);
    v101 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    v100 = v32;
    v33 = Environment.init<A>(_:)();
    v35 = v34;
    v124 = 0;
    sub_100003768(&qword_100192590, &qword_100131090);
    State.init(wrappedValue:)();
    v99 = v25;
    v36 = v119;
    v37 = static Alignment.center.getter();
    v39 = v38;
    v40 = *(v118 + 36);
    v103 = v14;
    v41 = &v9[v40];
    sub_1000F6F84(v2, &v9[v40]);
    v42 = &v41[*(sub_100003768(&qword_100192538, &qword_100130FF8) + 36)];
    *v42 = v37;
    v42[1] = v39;
    *v9 = v33;
    v9[8] = v35 & 1;
    *(v9 + 1) = v36;
    v43 = sub_1000AAFE0();
    v102 = v17;
    v44 = v43;
    v45 = v106;
    sub_1000F93F8(v2, v106);
    v104 = v2;
    v46 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v47 = swift_allocObject();
    sub_1000F9460(v45, v47 + v46);
    v105 = sub_100003768(&qword_100192518, &qword_100130FF0);
    v98 = sub_1000F9188();
    v48 = sub_1000F9718(&qword_100192540, sub_1000AAFE0);
    v49 = sub_1000F9294();
    v97 = v44;
    v50 = v118;
    View.navigationDestination<A, B>(for:destination:)();

    sub_10000ABCC(v9, &qword_100192510, &qword_100130FE8);
    sub_1000F93F8(v104, v45);
    v51 = swift_allocObject();
    sub_1000F9460(v45, v51 + v46);
    v52 = sub_100003768(&qword_100192508, &qword_100130FE0);
    *&v119 = v50;
    *(&v119 + 1) = v97;
    v120 = v105;
    v121 = v98;
    v122 = v48;
    v123 = v49;
    v106 = &opaque type descriptor for <<opaque return type of View.navigationDestination<A, B>(for:destination:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier);
    v55 = sub_100004D48(&qword_100192370, &qword_100130F08);
    v118 = v55;
    v111 = sub_1000F88AC();
    *&v119 = v55;
    *(&v119 + 1) = v100;
    v120 = v111;
    v121 = v101;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = v108;
    v58 = v99;
    v59 = v114;
    v60 = v52;
    v61 = v112;
    View.navigationDestination<A, B>(for:destination:)();

    (*(v107 + 8))(v61, v59);
    v62 = sub_1000F75D4();
    LODWORD(v107) = v62;
    v112 = &v97;
    __chkstk_darwin(v62);
    v63 = sub_100003768(&qword_1001924F8, &qword_100130FD0);
    *&v119 = v59;
    *(&v119 + 1) = v58;
    v120 = v60;
    v121 = OpaqueTypeConformance2;
    v122 = v54;
    v123 = v56;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = sub_100004D48(&qword_100192550, &qword_100131000);
    v66 = sub_10000AC24();
    v67 = v115;
    *&v119 = v115;
    *(&v119 + 1) = &type metadata for String;
    v120 = v64;
    v121 = v66;
    v68 = swift_getOpaqueTypeConformance2();
    *&v119 = v65;
    *(&v119 + 1) = &type metadata for String;
    v120 = v68;
    v121 = &protocol witness table for String;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = v102;
    v71 = v63;
    View.when<A>(_:_:)();
    (*(v109 + 8))(v57, v67);
    v72 = v103;
    v73 = v116;
    (*(v103 + 16))(v110, v70, v116);
    swift_storeEnumTagMultiPayload();
    *&v119 = v67;
    *(&v119 + 1) = v71;
    v120 = v64;
    v121 = v69;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v72 + 8))(v70, v73);
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    sub_1000F635C(&v119);
    v75 = v120;
    v76 = BYTE2(v120);
    v77 = BYTE3(v120);
    *v20 = v119;
    v20[18] = v76;
    *(v20 + 8) = v75;
    v20[19] = v77;
    swift_storeEnumTagMultiPayload();
    v78 = sub_100003768(&qword_100192370, &qword_100130F08);
    v79 = sub_1000F88AC();
    v113 = sub_100004D48(&qword_1001924F8, &qword_100130FD0);
    v80 = sub_100004D48(&qword_100192508, &qword_100130FE0);
    v81 = sub_1000AAFE0();
    v82 = sub_100004D48(&qword_100192518, &qword_100130FF0);
    v83 = sub_1000F9188();
    v84 = sub_1000F9718(&qword_100192540, sub_1000AAFE0);
    v85 = sub_1000F9294();
    *&v119 = v118;
    *(&v119 + 1) = v81;
    v120 = v82;
    v121 = v83;
    v122 = v84;
    v123 = v85;
    v86 = swift_getOpaqueTypeConformance2();
    v87 = sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier);
    v88 = type metadata accessor for FlowViewDataProvider(255);
    v89 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    *&v119 = v78;
    *(&v119 + 1) = v88;
    v120 = v79;
    v121 = v89;
    v90 = swift_getOpaqueTypeConformance2();
    *&v119 = v114;
    *(&v119 + 1) = v25;
    v120 = v80;
    v121 = v86;
    v122 = v87;
    v123 = v90;
    v91 = swift_getOpaqueTypeConformance2();
    v92 = sub_100004D48(&qword_100192550, &qword_100131000);
    v93 = sub_10000AC24();
    v94 = v115;
    *&v119 = v115;
    *(&v119 + 1) = &type metadata for String;
    v120 = v91;
    v121 = v93;
    v95 = swift_getOpaqueTypeConformance2();
    *&v119 = v92;
    *(&v119 + 1) = &type metadata for String;
    v120 = v95;
    v121 = &protocol witness table for String;
    v96 = swift_getOpaqueTypeConformance2();
    *&v119 = v94;
    *(&v119 + 1) = v113;
    v120 = v91;
    v121 = v96;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v26 + 8))(v29, v25);
  }
}

uint64_t sub_1000F5408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000F5474(uint64_t *a1)
{
  v2 = type metadata accessor for ClientFlowPresentationState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(type metadata accessor for RootView() + 24));
  v14 = *v12;
  v13 = v12[1];
  v21 = v14;
  v22 = v13;
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v15 = sub_10008A98C();

  if ((v15 & 1) == 0)
  {
    v17 = *a1;
    v18 = *(a1 + 8);

    if ((v18 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      j__swift_release();
      result = (*(v8 + 8))(v11, v7);
      v17 = v21;
    }

    if (v17)
    {
      (*(v3 + 104))(v6, enum case for ClientFlowPresentationState.cancelled(_:), v2);
      SupportFlowSceneHostingClientManager.flowState.setter();
    }
  }

  return result;
}

uint64_t sub_1000F56C8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  result = Environment.init<A>(_:)();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = v4 & 1;
  return result;
}

uint64_t sub_1000F5764(uint64_t a1)
{
  v1[9] = a1;
  v2 = *(*(sub_100003768(&qword_10018E490, &qword_100129F70) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for ClientFlowPresentationState();
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = type metadata accessor for EnvironmentValues();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F58EC, v10, v9);
}

uint64_t sub_1000F58EC()
{
  v1 = v0[17];
  v2 = v0[9];

  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);

  if ((v2 & 1) == 0)
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v4, v6);
    v3 = v0[6];
  }

  if (v3)
  {
    v8 = v0[10];
    v9 = v0[9];
    (*(v0[12] + 104))(v0[13], enum case for ClientFlowPresentationState.loaded(_:), v0[11]);
    SupportFlowSceneHostingClientManager.flowState.setter();
    v10 = (v9 + *(type metadata accessor for RootView() + 24));
    v12 = *v10;
    v11 = v10[1];
    v0[4] = v12;
    v0[5] = v11;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    State.wrappedValue.getter();
    v13 = v0[8];
    SupportFlowSceneHostingClientManager.clientBundleIdentifier.getter();
    EntryPoint.init(bundleIdentifier:)();
    v14 = type metadata accessor for EntryPoint();
    sub_100003CE8(v8, 0, 1, v14);
    sub_10008A95C(v8);
  }

  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[9];
  v18 = v0[10];
  v19 = type metadata accessor for RootView();
  sub_1000FA024(v19);
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v20 = v0[7];
  sub_10008CD18();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000F5B18(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1000F5BB0, v3, v2);
}

uint64_t sub_1000F5BB0()
{
  sub_100025A94();
  v1 = v0[5];
  v2 = type metadata accessor for RootView();
  sub_1000FA024(v2);
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000F5C6C;

  return sub_10008D8BC();
}

uint64_t sub_1000F5C6C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_1000F5DB0, v5, v4);
}

uint64_t sub_1000F5DB0()
{
  sub_100025A94();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000F5E0C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = (a1 + *(type metadata accessor for RootView() + 24));
  v6 = *v4;
  v7 = v4[1];
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  NavigationPath.init()();
  sub_100089B88();
}

uint64_t sub_1000F5ED4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_100003768(&qword_10018E490, &qword_100129F70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v38 = &v36 - v5;
  v6 = type metadata accessor for SupportFlowURLParameter();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - v16;
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = type metadata accessor for SupportFlowIdentifier();
  v36 = *(v20 - 8);
  v21 = *(v36 + 64);
  __chkstk_darwin(v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v7[13];
  v41(v10, enum case for SupportFlowURLParameter.type(_:), v6);
  v42 = a1;
  sub_10000DF4C(v10);
  v25 = v24;
  v40 = v7[1];
  v40(v10, v6);
  if (v25)
  {
    SupportFlowIdentifier.init(rawValue:)();
    if (sub_10000E5F0(v19, 1, v20) != 1)
    {
      v26 = v36;
      (*(v36 + 32))(v23, v19, v20);
      (*(v26 + 16))(v17, v23, v20);
      sub_100003CE8(v17, 0, 1, v20);
      v27 = *(type metadata accessor for RootView() + 20);
      sub_10000EC9C(v17, v37, &unk_10018A300, &unk_1001241E0);
      sub_100003768(&qword_100192250, &qword_100130E20);
      State.wrappedValue.setter();
      sub_10000ABCC(v17, &unk_10018A300, &unk_1001241E0);
      (*(v26 + 8))(v23, v20);
      goto LABEL_6;
    }
  }

  else
  {
    sub_100003CE8(v19, 1, 1, v20);
  }

  sub_10000ABCC(v19, &unk_10018A300, &unk_1001241E0);
LABEL_6:
  v41(v10, enum case for SupportFlowURLParameter.referrer(_:), v6);
  sub_10000DF4C(v10);
  v29 = v28;
  result = (v40)(v10, v6);
  if (v29)
  {
    v31 = (v39 + *(type metadata accessor for RootView() + 24));
    v33 = *v31;
    v32 = v31[1];
    v43 = v33;
    v44 = v32;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    State.wrappedValue.getter();
    v34 = v38;
    EntryPoint.init(bundleIdentifier:)();
    v35 = type metadata accessor for EntryPoint();
    sub_100003CE8(v34, 0, 1, v35);
    sub_10008A95C(v34);
  }

  return result;
}

void sub_1000F635C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SupportFlowIdentifier();
  v4 = sub_100008780(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  v12 = sub_100096D94();
  v13(v12);
  v14 = (*(v6 + 88))(v10, v3);
  if (v14 == enum case for SupportFlowIdentifier.airPods(_:))
  {
    v15 = type metadata accessor for RootView();
    sub_1000F9E60(v15);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v16 = type metadata accessor for AirPodsFlowViewModel();
    sub_1000F9F40(v16);
    sub_1000F9E84();
    sub_10010CE88();
    sub_1000F9EBC(v17);
    sub_1000F9F1C();
LABEL_5:

    v21 = sub_100096D94();
    sub_100003768(v21, v22);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v23, &qword_1001923B0, &qword_100130F28);
    sub_1000FA000();
    sub_10000AAEC(v24, v25, v26);
    sub_1000F9E74();
    sub_1000F9FC8();
    sub_1000F9E94();
    HIBYTE(v100) = 0;
LABEL_6:
    sub_100003768(&qword_1001923A0, &qword_100130F20);
    sub_100003768(&qword_1001923D0, &qword_100130F38);
    sub_1000F8A50();
    sub_1000F8B30();
    sub_1000F9E74();
    sub_10001D8F4();
    sub_1000F9EDC();
    sub_1000F9EF0(v27);
    v101 = 0;
LABEL_7:
    sub_100003768(&qword_100192390, &qword_100130F18);
    sub_100003768(&qword_100192400, &qword_100130F50);
    sub_1000F89C4();
    sub_1000F8C10();
    sub_1000F9E74();
    sub_10001D8F4();
    sub_1000F9F2C();
    sub_1000F9F04(v28);
    v102 = 0;
    goto LABEL_8;
  }

  if (v14 == enum case for SupportFlowIdentifier.accountPhoneNumber(_:))
  {
    v18 = type metadata accessor for RootView();
    sub_1000F9E60(v18);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v19 = type metadata accessor for TrustedPhoneNumberFlowViewModel();
    sub_1000F9F40(v19);
    sub_1000F9E84();
    sub_100105248();
    sub_1000F9EBC(v20);
    sub_1000F9EA8();
    goto LABEL_5;
  }

  if (v14 == enum case for SupportFlowIdentifier.battery(_:))
  {
    v31 = type metadata accessor for RootView();
    sub_1000F9E60(v31);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v32 = type metadata accessor for BatteryFlowViewModel();
    sub_1000F9F40(v32);
    sub_1000F9E84();
    v33 = sub_10006C7FC();
    sub_1000F9EBC(v33);
    sub_1000F9F1C();
LABEL_14:

    v37 = sub_100096D94();
    sub_100003768(v37, v38);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v39, &qword_1001923E0, &qword_100130F40);
    sub_1000FA000();
    sub_10000AAEC(v40, v41, v42);
    sub_1000F9E74();
    sub_1000F9FC8();
    sub_1000F9E94();
    HIBYTE(v100) = 1;
    goto LABEL_6;
  }

  if (v14 == enum case for SupportFlowIdentifier.compromisedAccount(_:))
  {
    v34 = type metadata accessor for RootView();
    sub_1000F9E60(v34);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v35 = type metadata accessor for CompromisedAccountFlowViewModel();
    sub_1000F9F40(v35);
    sub_1000F9E84();
    v36 = sub_1000402F4();
    sub_1000F9EBC(v36);
    sub_1000F9EA8();
    goto LABEL_14;
  }

  if (v14 == enum case for SupportFlowIdentifier.disabledAccount(_:))
  {
    v43 = type metadata accessor for RootView();
    sub_1000F9E60(v43);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v44 = type metadata accessor for DisabledAccountFlowViewModel();
    sub_1000F9F40(v44);
    sub_1000F9E84();
    v45 = sub_1000AFEE4();
    sub_1000F9EBC(v45);
    sub_1000F9F1C();
LABEL_19:

    v49 = sub_100096D94();
    sub_100003768(v49, v50);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v51, &qword_100192420, &qword_100130F60);
    sub_1000FA000();
    sub_10000AAEC(v52, v53, v54);
    sub_1000F9E74();
    sub_1000F9FC8();
    sub_1000F9E94();
    HIBYTE(v100) = 0;
    sub_100003768(&qword_100192410, &qword_100130F58);
    sub_100003768(&qword_100192440, &qword_100130F70);
    sub_1000F8C9C();
    sub_1000F8D7C();
    sub_1000F9E74();
    sub_10001D8F4();
    sub_1000F9EDC();
    sub_1000F9EF0(v55);
    v101 = 1;
    goto LABEL_7;
  }

  if (v14 == enum case for SupportFlowIdentifier.forgotPassword(_:))
  {
    v46 = type metadata accessor for RootView();
    sub_1000F9E60(v46);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v47 = type metadata accessor for ForgotPasswordFlowViewModel();
    sub_1000F9F40(v47);
    sub_1000F9E84();
    v48 = sub_10000BBA0();
    sub_1000F9EBC(v48);
    sub_1000F9EA8();
    goto LABEL_19;
  }

  if (v14 == enum case for SupportFlowIdentifier.mail(_:))
  {
    v56 = type metadata accessor for RootView();
    sub_1000F9E60(v56);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v57 = type metadata accessor for MailFlowViewModel();
    sub_1000F9F40(v57);
    sub_1000F9E84();
    v58 = sub_100024440();
    sub_1000F9EBC(v58);
    sub_1000F9F1C();
LABEL_24:

    v62 = sub_100096D94();
    sub_100003768(v62, v63);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v64, &qword_100192450, &qword_100130F78);
    sub_1000FA000();
    sub_10000AAEC(v65, v66, v67);
    sub_1000F9E74();
    sub_1000F9FC8();
    sub_1000F9E94();
    HIBYTE(v100) = 1;
    sub_100003768(&qword_100192410, &qword_100130F58);
    sub_100003768(&qword_100192440, &qword_100130F70);
    sub_1000F8C9C();
    sub_1000F8D7C();
    sub_1000F9E74();
    sub_10001D8F4();
    sub_1000F9EDC();
    sub_1000F9EF0(v68);
    v101 = 1;
    goto LABEL_7;
  }

  if (v14 == enum case for SupportFlowIdentifier.messages(_:))
  {
    v59 = type metadata accessor for RootView();
    sub_1000F9E60(v59);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v60 = type metadata accessor for MessagesFlowViewModel();
    sub_1000F9F40(v60);
    sub_1000F9E84();
    v61 = sub_1000DD6B8();
    sub_1000F9EBC(v61);
    sub_1000F9EA8();
    goto LABEL_24;
  }

  if (v14 == enum case for SupportFlowIdentifier.purchases(_:))
  {
    v69 = type metadata accessor for RootView();
    sub_1000F9E60(v69);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v70 = type metadata accessor for PurchasesFlowViewModel();
    sub_1000F9F40(v70);
    v71 = sub_1000F9E84();
    v72 = sub_1000C9B38(v71);
    sub_1000F9EBC(v72);
    sub_1000F9F1C();
LABEL_29:

    v76 = sub_100096D94();
    sub_100003768(v76, v77);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v78, &qword_1001924A0, &qword_100130FA0);
    sub_1000FA000();
    sub_10000AAEC(v79, v80, v81);
    sub_1000F9E74();
    sub_1000F9FC8();
    sub_1000F9E94();
    HIBYTE(v100) = 0;
    sub_100003768(&qword_100192490, &qword_100130F98);
    sub_100003768(&qword_1001924C0, &qword_100130FB0);
    sub_1000F8F74();
    sub_1000F9054();
    sub_1000F9E74();
    sub_10001D8F4();
    sub_1000F9EDC();
    sub_1000F9EF0(v82);
    v101 = 0;
    sub_100003768(&qword_100192480, &qword_100130F90);
    sub_1000F8EE8();
    sub_1000F9134();
    sub_1000FA09C();
    sub_1000F9F2C();
    sub_1000F9F04(v83);
    v102 = 1;
    goto LABEL_8;
  }

  if (v14 == enum case for SupportFlowIdentifier.screenRepair(_:))
  {
    v73 = type metadata accessor for RootView();
    sub_1000F9E60(v73);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v74 = type metadata accessor for ScreenRepairFlowViewModel();
    sub_1000F9F40(v74);
    sub_1000F9E84();
    v75 = sub_10007CF50();
    sub_1000F9EBC(v75);
    sub_1000F9EA8();
    goto LABEL_29;
  }

  if (v14 == enum case for SupportFlowIdentifier.softwareUpdate(_:))
  {
    v84 = type metadata accessor for RootView();
    sub_1000F9E60(v84);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    updated = type metadata accessor for SoftwareUpdateFlowViewModel();
    sub_1000F9F40(updated);
    sub_1000F9E84();
    v86 = sub_100056AC8();
    sub_1000F9EBC(v86);
    sub_1000F9F1C();
  }

  else
  {
    if (v14 != enum case for SupportFlowIdentifier.wifi(_:))
    {
      v99[1] = xmmword_100130DE0;
      v100 = 0;
      v101 = 1;
      sub_100003768(&qword_100192480, &qword_100130F90);
      sub_1000F8EE8();
      sub_1000F9134();
      _ConditionalContent<>.init(storage:)();
      sub_1000F9F2C();
      sub_1000F9F04(v98);
      v102 = 1;
      v1 = sub_100003768(&qword_100192380, &qword_100130F10);
      v29 = sub_100003768(&qword_100192470, &qword_100130F88);
      sub_1000F8938();
      sub_1000F8E5C();
      sub_1000F9E74();
      _ConditionalContent<>.init(storage:)();
      v99[0] = v103;
      sub_1000FA068();
      (*(v6 + 8))(v10, v3);
      v30 = v99[0];
      goto LABEL_9;
    }

    v87 = type metadata accessor for RootView();
    sub_1000F9E60(v87);
    sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C();
    sub_1000F9F5C();
    v88 = type metadata accessor for WiFiFlowViewModel();
    sub_1000F9F40(v88);
    sub_1000F9E84();
    v89 = sub_10005F718();
    sub_1000F9EBC(v89);
    sub_1000F9EA8();
  }

  v90 = sub_100096D94();
  sub_100003768(v90, v91);
  sub_1000FA050();
  sub_1000F9E48();
  sub_10000AAEC(v92, &qword_1001924D0, &qword_100130FB8);
  sub_1000FA000();
  sub_10000AAEC(v93, v94, v95);
  sub_1000F9E74();
  sub_1000F9FC8();
  sub_1000F9E94();
  HIBYTE(v100) = 1;
  sub_100003768(&qword_100192490, &qword_100130F98);
  sub_100003768(&qword_1001924C0, &qword_100130FB0);
  sub_1000F8F74();
  sub_1000F9054();
  sub_1000F9E74();
  sub_10001D8F4();
  sub_1000F9EDC();
  sub_1000F9EF0(v96);
  v101 = 0;
  sub_100003768(&qword_100192480, &qword_100130F90);
  sub_1000F8EE8();
  sub_1000F9134();
  sub_1000FA09C();
  sub_1000F9F2C();
  sub_1000F9F04(v97);
  v102 = 1;
LABEL_8:
  sub_100003768(&qword_100192380, &qword_100130F10);
  v29 = sub_100003768(&qword_100192470, &qword_100130F88);
  sub_1000F8938();
  sub_1000F8E5C();
  sub_1000F9E74();
  sub_10001D8F4();

  sub_1000FA068();
LABEL_9:
  *a1 = v30;
  *(a1 + 16) = v1;
  *(a1 + 18) = BYTE2(v1);
  *(a1 + 19) = v29;
}

uint64_t sub_1000F6F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipSearchView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for RootView() + 24));
  v10 = *v9;
  v11 = v9[1];
  v16 = *v9;
  v17 = v11;
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v12 = sub_10008B570();

  if (v12)
  {
    v16 = v10;
    v17 = v11;
    State.wrappedValue.getter();
    sub_10008A9A0();

    TipSearchView.init(viewModel:displaySectionHeader:maxResultsCount:)();
    (*(v5 + 32))(a2, v8, v4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return sub_100003CE8(a2, v13, 1, v4);
}

uint64_t sub_1000F7110@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003768(&qword_100192508, &qword_100130FE0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v25[-v8];
  v10 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25[-v12];
  v14 = type metadata accessor for SupportFlowIdentifier();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  v30 = type metadata accessor for FlowViewDataProvider(0);
  sub_1000910DC(v19, v13);
  if (sub_10000E5F0(v13, 1, v14) == 1)
  {
    sub_10000ABCC(v13, &unk_10018A300, &unk_1001241E0);
    v20 = 1;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_1000F635C(&v39);
    v27 = v40;
    v28 = v39;
    v29 = v41 | (v42 << 16);
    v26 = v43;
    v34 = v39;
    v35 = v40;
    v37 = v42;
    v36 = v41;
    v38 = v43;
    v21 = (a2 + *(type metadata accessor for RootView() + 24));
    v23 = *v21;
    v22 = v21[1];
    v32 = v23;
    v33 = v22;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    State.wrappedValue.getter();
    sub_100003768(&qword_100192370, &qword_100130F08);
    sub_1000F88AC();
    sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    View.environment<A>(_:)();

    sub_1000F9BD4(v28, v27, v29, v26);
    (*(v15 + 8))(v18, v14);
    (*(v31 + 32))(a3, v9, v6);
    v20 = 0;
  }

  return sub_100003CE8(a3, v20, 1, v6);
}

uint64_t sub_1000F7484(uint64_t a1, uint64_t a2)
{
  sub_1000F635C(v11);
  v3 = v11[0];
  v4 = v11[1];
  v5 = v12 | (v13 << 16);
  v6 = v14;
  v7 = (a2 + *(type metadata accessor for RootView() + 24));
  v9 = *v7;
  v10 = v7[1];
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  sub_100003768(&qword_100192370, &qword_100130F08);
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000F88AC();
  sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  View.environment<A>(_:)();

  return sub_1000F9BD4(v3, v4, v5, v6);
}

uint64_t sub_1000F75D4()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v3 + 8))(v6, v2);
    v7 = v17;
  }

  if (v7 && (v10 = SupportFlowSceneHostingClientManager.showsSearchBar.getter(), , (v10 & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v11 = (v1 + *(type metadata accessor for RootView() + 24));
    v13 = *v11;
    v12 = v11[1];
    v17 = v13;
    v18 = v12;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    State.wrappedValue.getter();
    v14 = sub_10008B648();
  }

  return v14 & 1;
}

uint64_t sub_1000F7794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v70 = a1;
  v76 = a3;
  v4 = type metadata accessor for RootView();
  v5 = v4 - 8;
  v75 = *(v4 - 8);
  v74 = *(v75 + 64);
  __chkstk_darwin(v4);
  v73 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v58[0] = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v69 = type metadata accessor for SearchFieldPlacement();
  v68 = *(v69 - 8);
  v12 = *(v68 + 64);
  __chkstk_darwin(v69);
  v78 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100003768(&qword_100192550, &qword_100131000);
  v72 = *(v71 - 8);
  v14 = *(v72 + 64);
  __chkstk_darwin(v71);
  v77 = v58 - v15;
  v16 = (a2 + *(v5 + 32));
  v18 = *v16;
  v17 = v16[1];
  v93 = v18;
  v94 = v17;
  v19 = v18;
  v66 = v18;
  v20 = v17;
  v65 = v17;
  v64 = sub_100003768(&qword_100192330, &qword_100130EB0);
  State.projectedValue.getter();
  v21 = v79;
  v22 = v80;
  v23 = v81;
  swift_getKeyPath();
  v97 = v21;
  v98 = v22;
  v99 = v23;
  sub_100003768(&qword_100192338, &qword_100130EE0);
  Binding.subscript.getter();

  v62 = v93;
  v61 = v94;
  v63 = v95;
  v60 = v96;

  v90 = v19;
  v91 = v20;
  State.projectedValue.getter();
  v24 = v79;
  v25 = v80;
  v26 = v81;
  swift_getKeyPath();
  v90 = v24;
  v91 = v25;
  v92 = v26;
  Binding.subscript.getter();

  v58[2] = v87;
  v58[1] = v88;
  v59 = v89;

  static SearchFieldPlacement.toolbar.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = String.init(localized:table:bundle:locale:comment:)();
  v58[0] = v28;
  v85 = v27;
  v86 = v28;
  v29 = sub_100003768(&qword_1001924F0, &qword_100130FC8);
  v30 = sub_100004D48(&qword_100192500, &qword_100130FD8);
  v31 = type metadata accessor for SupportFlowIdentifier();
  v32 = sub_100004D48(&qword_100192508, &qword_100130FE0);
  v33 = sub_100004D48(&qword_100192510, &qword_100130FE8);
  v34 = sub_1000AAFE0();
  v35 = sub_100004D48(&qword_100192518, &qword_100130FF0);
  v36 = sub_1000F9188();
  v37 = sub_1000F9718(&qword_100192540, sub_1000AAFE0);
  v38 = sub_1000F9294();
  v79 = v33;
  v80 = v34;
  v81 = v35;
  v82 = v36;
  v83 = v37;
  v84 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier);
  v41 = sub_100004D48(&qword_100192370, &qword_100130F08);
  v42 = type metadata accessor for FlowViewDataProvider(255);
  v43 = sub_1000F88AC();
  v44 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  v79 = v41;
  v80 = v42;
  v81 = v43;
  v82 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v79 = v30;
  v80 = v31;
  v81 = v32;
  v82 = OpaqueTypeConformance2;
  v83 = v40;
  v84 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v57 = sub_10000AC24();
  v47 = v78;
  View.searchable<A>(text:isPresented:placement:prompt:)();

  (*(v68 + 8))(v47, v69);
  v79 = v66;
  v80 = v65;
  State.wrappedValue.getter();
  v48 = sub_10008B67C();
  v50 = v49;

  v93 = v48;
  v94 = v50;
  v51 = v73;
  sub_1000F93F8(v67, v73);
  v52 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v53 = swift_allocObject();
  sub_1000F9460(v51, v53 + v52);
  v79 = v29;
  v80 = &type metadata for String;
  v81 = v46;
  v82 = v57;
  swift_getOpaqueTypeConformance2();
  v54 = v71;
  v55 = v77;
  View.onChange<A>(of:initial:_:)();

  return (*(v72 + 8))(v55, v54);
}

void sub_1000F8058(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (a3 + *(type metadata accessor for RootView() + 24));
  v8 = *v5;
  v9 = v5[1];
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v6 = sub_10008A9A0();

  v7 = objc_allocWithZone(type metadata accessor for TPSAppSearchQuery());

  TPSAppSearchQuery.init(searchTerm:origin:identifier:)();
  dispatch thunk of SearchResultsViewModel.searchQuery.setter();
}

uint64_t sub_1000F8118@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F8144@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F8170(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.sceneHostingClientManager.setter();
}

uint64_t type metadata accessor for RootView()
{
  result = qword_1001922B0;
  if (!qword_1001922B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F8200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100192250, &qword_100130E20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_10000E5F0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F82D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100192250, &qword_100130E20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_100003CE8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1000F8388()
{
  sub_1000F847C(319, &qword_1001922C0, &qword_1001922C8, &qword_100130E38, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000F847C(319, &qword_1001922D0, &unk_10018A300, &unk_1001241E0, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1000F84E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F847C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004D48(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000F84E0()
{
  if (!qword_1001922D8)
  {
    type metadata accessor for FlowViewDataProvider(255);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1001922D8);
    }
  }
}

unint64_t sub_1000F8564()
{
  result = qword_100192360;
  if (!qword_100192360)
  {
    sub_100004D48(&qword_100192358, &qword_100130F00);
    sub_1000F88AC();
    sub_100004D48(&qword_1001924F0, &qword_100130FC8);
    sub_100004D48(&qword_1001924F8, &qword_100130FD0);
    sub_100004D48(&qword_100192500, &qword_100130FD8);
    type metadata accessor for SupportFlowIdentifier();
    sub_100004D48(&qword_100192508, &qword_100130FE0);
    sub_100004D48(&qword_100192510, &qword_100130FE8);
    sub_1000AAFE0();
    sub_100004D48(&qword_100192518, &qword_100130FF0);
    sub_1000F9188();
    sub_1000F9718(&qword_100192540, sub_1000AAFE0);
    sub_1000F9294();
    swift_getOpaqueTypeConformance2();
    sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier);
    sub_100004D48(&qword_100192370, &qword_100130F08);
    type metadata accessor for FlowViewDataProvider(255);
    sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004D48(&qword_100192550, &qword_100131000);
    sub_10000AC24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192360);
  }

  return result;
}

unint64_t sub_1000F88AC()
{
  result = qword_100192368;
  if (!qword_100192368)
  {
    sub_100004D48(&qword_100192370, &qword_100130F08);
    sub_1000F8938();
    sub_1000F8E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192368);
  }

  return result;
}

unint64_t sub_1000F8938()
{
  result = qword_100192378;
  if (!qword_100192378)
  {
    sub_100004D48(&qword_100192380, &qword_100130F10);
    sub_1000F89C4();
    sub_1000F8C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192378);
  }

  return result;
}

unint64_t sub_1000F89C4()
{
  result = qword_100192388;
  if (!qword_100192388)
  {
    sub_100004D48(&qword_100192390, &qword_100130F18);
    sub_1000F8A50();
    sub_1000F8B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192388);
  }

  return result;
}

unint64_t sub_1000F8A50()
{
  result = qword_100192398;
  if (!qword_100192398)
  {
    sub_100004D48(&qword_1001923A0, &qword_100130F20);
    sub_10000AAEC(&qword_1001923A8, &qword_1001923B0, &qword_100130F28);
    sub_10000AAEC(&qword_1001923B8, &qword_1001923C0, &qword_100130F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192398);
  }

  return result;
}

unint64_t sub_1000F8B30()
{
  result = qword_1001923C8;
  if (!qword_1001923C8)
  {
    sub_100004D48(&qword_1001923D0, &qword_100130F38);
    sub_10000AAEC(&qword_1001923D8, &qword_1001923E0, &qword_100130F40);
    sub_10000AAEC(&qword_1001923E8, &qword_1001923F0, &qword_100130F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001923C8);
  }

  return result;
}

unint64_t sub_1000F8C10()
{
  result = qword_1001923F8;
  if (!qword_1001923F8)
  {
    sub_100004D48(&qword_100192400, &qword_100130F50);
    sub_1000F8C9C();
    sub_1000F8D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001923F8);
  }

  return result;
}

unint64_t sub_1000F8C9C()
{
  result = qword_100192408;
  if (!qword_100192408)
  {
    sub_100004D48(&qword_100192410, &qword_100130F58);
    sub_10000AAEC(&qword_100192418, &qword_100192420, &qword_100130F60);
    sub_10000AAEC(&qword_100192428, &qword_100192430, &qword_100130F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192408);
  }

  return result;
}

unint64_t sub_1000F8D7C()
{
  result = qword_100192438;
  if (!qword_100192438)
  {
    sub_100004D48(&qword_100192440, &qword_100130F70);
    sub_10000AAEC(&qword_100192448, &qword_100192450, &qword_100130F78);
    sub_10000AAEC(&qword_100192458, &qword_100192460, &qword_100130F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192438);
  }

  return result;
}

unint64_t sub_1000F8E5C()
{
  result = qword_100192468;
  if (!qword_100192468)
  {
    sub_100004D48(&qword_100192470, &qword_100130F88);
    sub_1000F8EE8();
    sub_1000F9134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192468);
  }

  return result;
}

unint64_t sub_1000F8EE8()
{
  result = qword_100192478;
  if (!qword_100192478)
  {
    sub_100004D48(&qword_100192480, &qword_100130F90);
    sub_1000F8F74();
    sub_1000F9054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192478);
  }

  return result;
}

unint64_t sub_1000F8F74()
{
  result = qword_100192488;
  if (!qword_100192488)
  {
    sub_100004D48(&qword_100192490, &qword_100130F98);
    sub_10000AAEC(&qword_100192498, &qword_1001924A0, &qword_100130FA0);
    sub_10000AAEC(&qword_1001924A8, &qword_1001924B0, &qword_100130FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192488);
  }

  return result;
}

unint64_t sub_1000F9054()
{
  result = qword_1001924B8;
  if (!qword_1001924B8)
  {
    sub_100004D48(&qword_1001924C0, &qword_100130FB0);
    sub_10000AAEC(&qword_1001924C8, &qword_1001924D0, &qword_100130FB8);
    sub_10000AAEC(&qword_1001924D8, &qword_1001924E0, &qword_100130FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001924B8);
  }

  return result;
}

unint64_t sub_1000F9134()
{
  result = qword_1001924E8;
  if (!qword_1001924E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001924E8);
  }

  return result;
}

unint64_t sub_1000F9188()
{
  result = qword_100192520;
  if (!qword_100192520)
  {
    sub_100004D48(&qword_100192510, &qword_100130FE8);
    sub_1000F9240();
    sub_10000AAEC(&qword_100192530, &qword_100192538, &qword_100130FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192520);
  }

  return result;
}

unint64_t sub_1000F9240()
{
  result = qword_100192528;
  if (!qword_100192528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192528);
  }

  return result;
}

unint64_t sub_1000F9294()
{
  result = qword_100192548;
  if (!qword_100192548)
  {
    sub_100004D48(&qword_100192518, &qword_100130FF0);
    sub_100004D48(&qword_100192370, &qword_100130F08);
    type metadata accessor for FlowViewDataProvider(255);
    sub_1000F88AC();
    sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192548);
  }

  return result;
}

unint64_t sub_1000F93A4()
{
  result = qword_100192560;
  if (!qword_100192560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192560);
  }

  return result;
}

uint64_t sub_1000F93F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F94C4()
{
  sub_100025A94();
  v2 = type metadata accessor for RootView();
  sub_10000ED84(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000659C0;

  return sub_1000F5764(v0 + v4);
}

uint64_t sub_1000F9588()
{
  sub_100025A94();
  v2 = type metadata accessor for RootView();
  sub_10000ED84(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006B9C4;

  return sub_1000F5B18(v0 + v4);
}

unint64_t sub_1000F9664()
{
  result = qword_100192570;
  if (!qword_100192570)
  {
    sub_100004D48(&unk_10018A300, &unk_1001241E0);
    sub_1000F9718(&qword_100188FA8, &type metadata accessor for SupportFlowIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192570);
  }

  return result;
}

uint64_t sub_1000F9718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F9760(uint64_t a1)
{
  v2 = type metadata accessor for RootView();
  sub_10000ED84(v2);
  v4 = *(v3 + 80);
  sub_1000FA040();

  return sub_1000F5ED4(a1, v5);
}

uint64_t sub_1000F97CC(uint64_t a1)
{
  v2 = sub_100003768(&qword_100192358, &qword_100130F00);
  sub_10000AF7C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000F982C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10008A5C4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000F989C(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for RootView();
  sub_10000ED84(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_1000F990C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RootView();
  sub_10000ED84(v4);
  v6 = *(v5 + 80);
  sub_1000FA040();

  return sub_1000F7110(a1, v7, a2);
}

uint64_t sub_1000F9980(uint64_t a1)
{
  v2 = type metadata accessor for RootView();
  sub_10000ED84(v2);
  v4 = *(v3 + 80);
  sub_1000FA040();

  return sub_1000F7484(a1, v5);
}

uint64_t sub_1000F9A0C()
{
  v1 = type metadata accessor for RootView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = *(v0 + v4);
  v6 = *(v0 + v4 + 8);
  j__swift_release();
  v7 = v0 + v4 + *(v1 + 20);
  v8 = type metadata accessor for SupportFlowIdentifier();
  if (!sub_10000E5F0(v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  v9 = *(v7 + *(sub_100003768(&qword_100192250, &qword_100130E20) + 28));

  v10 = (v0 + v4 + *(v1 + 24));
  v11 = *v10;

  v12 = v10[1];

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

void sub_1000F9B58(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for RootView();
  sub_10000ED84(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_1000F8058(a1, a2, v7);
}

uint64_t sub_1000F9BD4(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (a4)
  {
    return sub_1000F9C94(a1, a2, a3, BYTE2(a3) & 1);
  }

  else
  {
    return sub_1000F9BE8(a1, a2, a3);
  }
}

uint64_t sub_1000F9C5C()
{
}

uint64_t sub_1000F9C94(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1000F9CF0(a1, a2, a3, HIBYTE(a3) & 1, sub_1000F9E28, sub_1000F9E28);
  }
}

uint64_t sub_1000F9CF0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3 & 1;
  if (a4)
  {
    return a6(a1, a2, v6);
  }

  else
  {
    return a5(a1, a2, v6);
  }
}

uint64_t sub_1000F9D08()
{
  sub_100004D48(&qword_100192328, &qword_100130EA8);
  sub_100004D48(&qword_100192320, &qword_100130EA0);
  sub_100004D48(&unk_10018A300, &unk_1001241E0);
  sub_100004D48(&qword_100192318, &qword_100130E98);
  sub_100004D48(&qword_100192310, &qword_100130E90);
  sub_1000F9F80();
  sub_10000AAEC(v0, &qword_100192310, &qword_100130E90);
  sub_1000F9FB0();
  sub_1000FA0BC();
  sub_1000F9F98();
  sub_1000FA0BC();
  sub_1000F9664();
  sub_1000F9F68();
  sub_1000FA0BC();
  return sub_1000FA0BC();
}

uint64_t sub_1000F9E60(uint64_t result)
{
  v3 = (v1 + *(result + 24));
  v5 = *v3;
  v4 = v3[1];
  *(v2 - 112) = v5;
  *(v2 - 104) = v4;
  return result;
}

__n128 sub_1000F9E94()
{
  v1 = *(v0 - 96);
  result = *(v0 - 112);
  *(v0 - 144) = result;
  *(v0 - 128) = v1;
  return result;
}

void sub_1000F9EA8()
{
  v1 = *(v0 - 104);
  *(v0 - 144) = *(v0 - 112);
  *(v0 - 136) = v1;
  *(v0 - 128) = 1;
}

uint64_t sub_1000F9EBC(uint64_t a1)
{
  *(v1 - 144) = a1;

  return State.init(wrappedValue:)();
}

__n128 sub_1000F9EF0@<Q0>(__int16 a1@<W8>)
{
  result = *(v2 - 112);
  *(v2 - 144) = result;
  *(v2 - 128) = v1 | a1;
  return result;
}

__n128 sub_1000F9F04@<Q0>(__int16 a1@<W8>)
{
  result = *(v2 - 112);
  *(v2 - 144) = result;
  *(v2 - 126) = BYTE2(v1);
  *(v2 - 128) = a1;
  return result;
}

void sub_1000F9F1C()
{
  v1 = *(v0 - 104);
  *(v0 - 144) = *(v0 - 112);
  *(v0 - 136) = v1;
  *(v0 - 128) = 0;
}

uint64_t sub_1000F9F40(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_1000F9FC8()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000F9FE4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000FA00C()
{

  return State.wrappedValue.getter();
}

uint64_t sub_1000FA024(uint64_t result)
{
  v3 = (v1 + *(result + 24));
  v5 = *v3;
  v4 = v3[1];
  *(v2 + 16) = v5;
  *(v2 + 24) = v4;
  return result;
}

uint64_t sub_1000FA050()
{

  return sub_100003768(v0, v1);
}

uint64_t sub_1000FA07C()
{

  return sub_10000EC9C(v1, v0, v2, v3);
}

uint64_t sub_1000FA09C()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000FA0BC()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000FA100(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_1000FA240@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v31 = a1;
  v32 = a5;
  v7 = type metadata accessor for ActionInfoType(0);
  v8 = sub_10000AF7C(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v29[-v14];
  v16 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v29[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v23 = &v29[-v22];
  __chkstk_darwin(v21);
  v25 = &v29[-v24];
  v29[-v24] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v25, 0, 1, v7);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_10000EC9C(v25, v23, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v35, v33, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v23, v20, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v20, 1, v7) == 1)
  {

    sub_10000ABCC(v23, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v35, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v25, &qword_10018ADD0, &unk_1001256A0);
    v26 = 0;
  }

  else
  {
    sub_10003F558(v20, v15);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v15, v13);

    v26 = sub_1000ED69C(v13, 1, 0, 0);
    sub_10003F620(v15);
    sub_10000ABCC(v23, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v35, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v25, &qword_10018ADD0, &unk_1001256A0);
  }

  v37[0] = a3;
  v37[1] = a4;
  v42 = 0;
  v43 = v26;
  v38 = v33[0];
  v39 = v33[1];
  v40 = v34;
  v41 = 0;
  v44 = 0;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  *(v27 + 24) = v30 & 1;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;

  sub_100003768(&unk_1001893B0, &unk_100121480);
  sub_100004CE4();
  View.onForeground(perform:)();

  return sub_10000ABCC(v37, &unk_1001893B0, &unk_100121480);
}

uint64_t sub_1000FA5F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return _swift_task_switch(sub_1000FA690, v6, v5);
}

uint64_t sub_1000FA690()
{
  *(v0 + 64) = sub_1000FA100(*(v0 + 16), *(v0 + 80) & 1);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000FA734;

  return sub_10010F044();
}

uint64_t sub_1000FA734()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_1000FA878, v5, v4);
}

uint64_t sub_1000FA878()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FA8F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FA930()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000D870;

  return sub_1000FA5F0(v2, v3, v5, v4);
}

uint64_t sub_1000FA9E8()
{
  sub_100004D48(&unk_1001893B0, &unk_100121480);
  sub_100004CE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000FAA4C(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FAE34();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FAA98(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FAEF0();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FAAE4(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FAFAC();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FAB54(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DefaultFlowOverride();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CE08(a1, v7);
  v8 = *a2;
  return sub_1000FB1A4(v7);
}

uint64_t sub_1000FABE0(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB228();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FAC2C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000FB2E4();
  *v1 = result;
  return result;
}

uint64_t sub_1000FAC78(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000FB3CC();
  *v1 = result;
  return result;
}

uint64_t sub_1000FACC4(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB4B4();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FAD10(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB570();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FAD5C(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB62C();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FADA8(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000FB6E8();
  *v1 = result;
  return result;
}

uint64_t sub_1000FADF4()
{
  v0 = type metadata accessor for FlowDebugCoordinator();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000FB7B8();
  qword_1001A5950 = result;
  return result;
}

uint64_t sub_1000FAE34()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4();
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FAE80()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C();
}

uint64_t sub_1000FAEF0()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4();
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FAF3C()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C();
}

uint64_t sub_1000FAFAC()
{
  swift_getKeyPath();
  sub_1000FBFA4();
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB004()
{
  swift_getKeyPath();
  sub_1000FC88C();
}

uint64_t sub_1000FB088@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_1001927A8, &qword_100131370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FB940(v5);

  v6 = type metadata accessor for DefaultFlowOverride();
  if (sub_10000E5F0(v5, 1, v6) != 1)
  {
    return sub_100067C54(v5, a1);
  }

  v7 = type metadata accessor for SupportFlowIdentifier();
  sub_100003CE8(a1, 1, 1, v7);
  result = sub_10000E5F0(v5, 1, v6);
  if (result != 1)
  {
    return sub_1000FC718(v5);
  }

  return result;
}

uint64_t sub_1000FB1A4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1000FC88C();

  return sub_1000FC6BC(a1);
}

uint64_t sub_1000FB228()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4();
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB274()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C();
}

uint64_t sub_1000FB2E4()
{
  KeyPath = swift_getKeyPath();
  sub_1000FBB38(KeyPath, 0xD000000000000019, 0x800000010013A310, sub_100063E64);
  sub_1000FC8F8();
  if (v1 == 5)
  {
    return 1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000FB354()
{
  swift_getKeyPath();
  sub_1000FC8A8();
  sub_1000FBC84();
}

uint64_t sub_1000FB3CC()
{
  KeyPath = swift_getKeyPath();
  sub_1000FBB38(KeyPath, 0xD00000000000001DLL, 0x800000010013A2F0, sub_10006F5C8);
  sub_1000FC8F8();
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000FB43C()
{
  swift_getKeyPath();
  sub_1000FC8A8();
  sub_1000FBC84();
}

uint64_t sub_1000FB4B4()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4();
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB500()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C();
}

uint64_t sub_1000FB570()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4();
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB5BC()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C();
}

uint64_t sub_1000FB62C()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4();
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB678()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C();
}

uint64_t sub_1000FB6E8()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FB7FC();
  sub_1000FC8F8();
  if (v1 == 4)
  {
    return 1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000FB740()
{
  swift_getKeyPath();
  sub_1000FC8A8();
  sub_1000FBC84();
}

uint64_t sub_1000FB7B8()
{
  ObservationRegistrar.init()();
  if ((static Bool.isInternal.getter() & 1) == 0)
  {

    return 0;
  }

  return v0;
}

unint64_t sub_1000FB7FC()
{
  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    return 4;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  if (!swift_dynamicCast())
  {
    return 4;
  }

  result = sub_10009DA0C(v4);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000FB940@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_1001927A8, &qword_100131370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - v5;
  *&v16[0] = v1;
  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  if (static Bool.allowOverrides.getter())
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000BBF20(v15, v16);
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    sub_100003768(&unk_10018A520, &unk_100124310);
    if (swift_dynamicCast())
    {
      sub_100067714(*&v15[0], *(&v15[0] + 1), v6);
      v10 = type metadata accessor for DefaultFlowOverride();
      if (sub_10000E5F0(v6, 1, v10) != 1)
      {
        sub_100067C54(v6, a1);
        v12 = a1;
        v13 = 0;
        v11 = v10;
        return sub_100003CE8(v12, v13, 1, v11);
      }

      sub_1000FC718(v6);
    }
  }

  v11 = type metadata accessor for DefaultFlowOverride();
  v12 = a1;
  v13 = 1;
  return sub_100003CE8(v12, v13, 1, v11);
}

uint64_t sub_1000FBB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    return 5;
  }

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  if (!swift_dynamicCast())
  {
    return 5;
  }

  result = a4(v9, *(&v9 + 1));
  if (result == 5)
  {
    return 5;
  }

  return result;
}

void sub_1000FBCCC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1000680C0(v0);
  v5 = v1;
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = String._bridgeToObjectiveC()();
  [v0 setValue:v2 forKey:{v3, v4, v5}];

  swift_unknownObjectRelease();
}

void sub_1000FBD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = [objc_opt_self() standardUserDefaults];
  v10 = a4(a1);
  v11 = v7;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = String._bridgeToObjectiveC()();
  [v6 setValue:v8 forKey:{v9, v10, v11}];

  swift_unknownObjectRelease();
}

void sub_1000FBE58(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = 0xE800000000000000;
  v4 = 0x7265735561746562;
  v5 = v2;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701736302;
      break;
    case 2:
      v4 = 0xD000000000000010;
      v3 = 0x8000000100132FD0;
      break;
    case 3:
      v3 = 0x8000000100132FF0;
      v4 = 0xD000000000000012;
      break;
    default:
      break;
  }

  v8 = v4;
  v9 = v3;
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = String._bridgeToObjectiveC()();
  [v5 setValue:v6 forKey:{v7, v8, v9}];

  swift_unknownObjectRelease();
}

id sub_1000FBFA4()
{
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    return 0;
  }

  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void sub_1000FC070()
{
  v0 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

uint64_t sub_1000FC19C()
{
  v1 = OBJC_IVAR____TtC11SupportFlow20FlowDebugCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for FlowDebugCoordinator()
{
  result = qword_1001925C8;
  if (!qword_1001925C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FC28C()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_1000FC31C()
{
  result = qword_10018EC30;
  if (!qword_10018EC30)
  {
    type metadata accessor for FlowDebugCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC30);
  }

  return result;
}

uint64_t sub_1000FC374(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000FB6E8();
  *v1 = result;
  return result;
}

uint64_t sub_1000FC458(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB62C();
  return sub_100096CE8(v1);
}

void sub_1000FC4A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1000FC070();
}

uint64_t sub_1000FC4C4(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB570();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FC510(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB4B4();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FC55C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000FB3CC();
  *v1 = result;
  return result;
}

uint64_t sub_1000FC5C4(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000FB2E4();
  *v1 = result;
  return result;
}

uint64_t sub_1000FC62C(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FB228();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FC6BC(uint64_t a1)
{
  v2 = type metadata accessor for DefaultFlowOverride();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FC718(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001927A8, &qword_100131370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FC780(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FAFAC();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FC7CC(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FAEF0();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FC818(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_1000FAE34();
  return sub_100096CE8(v1);
}

uint64_t sub_1000FC88C()
{

  return sub_1000FC114();
}

uint64_t sub_1000FC8E0()
{
}

uint64_t sub_1000FC8F8()
{
}

uint64_t *defaults.unsafeMutableAddressor()
{
  if (qword_100188368 != -1)
  {
    swift_once();
  }

  return &defaults;
}

uint64_t sub_1000FC990()
{
  v0 = type metadata accessor for Defaults();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = (v3 + OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN);
  v5 = *(sub_100003768(&qword_100188460, &qword_100120AB0) + 28);
  v6 = type metadata accessor for Date();
  result = sub_100003CE8(v4 + v5, 1, 1, v6);
  *v4 = 0xD000000000000019;
  v4[1] = 0x80000001001337F0;
  defaults = v3;
  return result;
}

uint64_t Defaults.lastNotifiedAboutVPN.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100003768(&qword_100188460, &qword_100120AB0);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_1000FE5D8();
  v8 = OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN;
  swift_beginAccess();
  sub_100006578(v1 + v8, v2, &qword_100188460, &qword_100120AB0);
  sub_1000FCAF8(a1);
  return sub_10001D724(v2, &qword_100188460, &qword_100120AB0);
}

uint64_t sub_1000FCAF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_100192918, &unk_1001314C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = *v1;
  v9 = v1[1];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v7 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  v12 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  if (swift_dynamicCast())
  {
    sub_100003CE8(v6, 0, 1, v12);
    return sub_1000FE568(v6, a1);
  }

  else
  {
    sub_100003CE8(v6, 1, 1, v12);
    v14 = sub_100003768(&qword_100188460, &qword_100120AB0);
    return sub_100006578(v1 + *(v14 + 28), a1, &qword_10018C850, &qword_1001277D0);
  }
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  sub_10000ED84(v7);
  v9 = *(v8 + 64);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_1000FE5D8();
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = *v2;
  v13 = *(v2 + 1);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v11 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(&v17, v18);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  if (swift_dynamicCast())
  {
    sub_100003CE8(v3, 0, 1, v6);
    return (*(*(v6 - 8) + 32))(a2, v3, v6);
  }

  else
  {
    sub_100003CE8(v3, 1, 1, v6);
    return (*(*(v6 - 8) + 16))(a2, &v2[*(a1 + 28)], v6);
  }
}

uint64_t Defaults.lastNotifiedAboutVPN.setter(uint64_t a1)
{
  v3 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  sub_10000ED84(v3);
  v5 = *(v4 + 64);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_1000FE5D8();
  sub_100006578(a1, v1, &qword_10018C850, &qword_1001277D0);
  swift_beginAccess();
  sub_1000FCF58(v1);
  swift_endAccess();
  return sub_10001D724(a1, &qword_10018C850, &qword_1001277D0);
}

uint64_t sub_1000FCF58(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v51 = &v48[-v4];
  v5 = type metadata accessor for Mirror.DisplayStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v50 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100003768(&qword_1001927B8, &qword_100131480);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v48[-v12];
  v14 = sub_100003768(&qword_1001927C0, &qword_100131488);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v48[-v20];
  __chkstk_darwin(v19);
  v23 = &v48[-v22];
  v24 = type metadata accessor for Mirror();
  v53 = *(v24 - 8);
  v54 = v24;
  v25 = *(v53 + 64);
  __chkstk_darwin(v24);
  v52 = v2;
  v57[3] = v2;
  v27 = &v48[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_10003EE2C(v57);
  v56 = a1;
  sub_100006578(a1, v28, &qword_10018C850, &qword_1001277D0);
  Mirror.init(reflecting:)();
  Mirror.displayStyle.getter();
  (*(v6 + 104))(v21, enum case for Mirror.DisplayStyle.optional(_:), v5);
  sub_100003CE8(v21, 0, 1, v5);
  v29 = *(v10 + 56);
  sub_100006578(v23, v13, &qword_1001927C0, &qword_100131488);
  sub_100006578(v21, &v13[v29], &qword_1001927C0, &qword_100131488);
  if (sub_10000E5F0(v13, 1, v5) == 1)
  {
    sub_10001D724(v21, &qword_1001927C0, &qword_100131488);
    sub_10001D724(v23, &qword_1001927C0, &qword_100131488);
    if (sub_10000E5F0(&v13[v29], 1, v5) == 1)
    {
      sub_10001D724(v13, &qword_1001927C0, &qword_100131488);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100006578(v13, v18, &qword_1001927C0, &qword_100131488);
  if (sub_10000E5F0(&v13[v29], 1, v5) == 1)
  {
    sub_10001D724(v21, &qword_1001927C0, &qword_100131488);
    sub_10001D724(v23, &qword_1001927C0, &qword_100131488);
    (*(v6 + 8))(v18, v5);
LABEL_6:
    sub_10001D724(v13, &qword_1001927B8, &qword_100131480);
LABEL_10:
    v43 = [objc_opt_self() standardUserDefaults];
    v42 = v56;
    sub_100006578(v56, v51, &qword_10018C850, &qword_1001277D0);
    v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v45 = *v55;
    v46 = v55[1];
    v41 = String._bridgeToObjectiveC()();
    [v43 setObject:v44 forKey:v41];

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v30 = &v13[v29];
  v31 = v50;
  (*(v6 + 32))(v50, v30, v5);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v6 + 8);
  v32(v31, v5);
  sub_10001D724(v21, &qword_1001927C0, &qword_100131488);
  sub_10001D724(v23, &qword_1001927C0, &qword_100131488);
  v32(v18, v5);
  sub_10001D724(v13, &qword_1001927C0, &qword_100131488);
  if ((v49 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v33 = Mirror.children.getter();
  v34 = v33[2];
  v35 = v33[3];
  v36 = v33[4];
  v37 = v33[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v35) = static AnyIndex.== infix(_:_:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = [objc_opt_self() standardUserDefaults];
  v39 = *v55;
  v40 = v55[1];
  v41 = String._bridgeToObjectiveC()();
  [v38 removeObjectForKey:v41];

  v42 = v56;
LABEL_11:

  sub_10001D724(v42, &qword_10018C850, &qword_1001277D0);
  return (*(v53 + 8))(v27, v54);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.DisplayStyle();
  sub_10003DBE4();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v59 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (sub_100003768(&qword_1001927B8, &qword_100131480) - 8);
  v12 = *(*v11 + 64);
  sub_10000ED78();
  __chkstk_darwin(v13);
  v15 = &v57[-v14];
  v16 = sub_100003768(&qword_1001927C0, &qword_100131488);
  v17 = sub_10000ED84(v16);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v57[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v25 = &v57[-v24];
  __chkstk_darwin(v23);
  v27 = &v57[-v26];
  type metadata accessor for Mirror();
  sub_10003DBE4();
  v62 = v29;
  v63 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  v33 = &v57[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *(a2 + 16);
  v66[3] = v34;
  v35 = sub_10003EE2C(v66);
  v60 = *(v34 - 8);
  v36 = *(v60 + 16);
  v65 = a1;
  v36(v35, a1, v34);
  Mirror.init(reflecting:)();
  v61 = v33;
  Mirror.displayStyle.getter();
  (*(v6 + 104))(v25, enum case for Mirror.DisplayStyle.optional(_:), v4);
  sub_100003CE8(v25, 0, 1, v4);
  v37 = v11[14];
  sub_100006578(v27, v15, &qword_1001927C0, &qword_100131488);
  sub_100006578(v25, &v15[v37], &qword_1001927C0, &qword_100131488);
  sub_1000FE600(v15);
  if (v39)
  {
    sub_1000FE5E8(v25);
    sub_1000FE5E8(v27);
    sub_1000FE600(&v15[v37]);
    if (v39)
    {
      sub_10001D724(v15, &qword_1001927C0, &qword_100131488);
      v38 = v61;
      goto LABEL_11;
    }

LABEL_9:
    sub_10001D724(v15, &qword_1001927B8, &qword_100131480);
    v38 = v61;
LABEL_13:
    v52 = [objc_opt_self() standardUserDefaults];
    v51 = v65;
    v53 = _bridgeAnythingToObjectiveC<A>(_:)();
    v54 = *v64;
    v55 = v64[1];
    v50 = String._bridgeToObjectiveC()();
    [v52 setObject:v53 forKey:v50];

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  sub_100006578(v15, v22, &qword_1001927C0, &qword_100131488);
  sub_1000FE600(&v15[v37]);
  if (v39)
  {
    sub_1000FE5E8(v25);
    sub_1000FE5E8(v27);
    (*(v6 + 8))(v22, v4);
    goto LABEL_9;
  }

  v40 = v59;
  (*(v6 + 32))(v59, &v15[v37], v4);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v6 + 8);
  v41(v40, v4);
  sub_10001D724(v25, &qword_1001927C0, &qword_100131488);
  sub_10001D724(v27, &qword_1001927C0, &qword_100131488);
  v41(v22, v4);
  sub_10001D724(v15, &qword_1001927C0, &qword_100131488);
  v38 = v61;
  if ((v58 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v42 = Mirror.children.getter();
  v43 = v42[2];
  v44 = v42[3];
  v45 = v42[4];
  v46 = v42[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v44) = static AnyIndex.== infix(_:_:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v44 & 1) == 0)
  {
    goto LABEL_13;
  }

  v47 = [objc_opt_self() standardUserDefaults];
  v48 = *v64;
  v49 = v64[1];
  v50 = String._bridgeToObjectiveC()();
  [v47 removeObjectForKey:v50];

  v51 = v65;
LABEL_14:

  (*(v60 + 8))(v51, v34);
  return (*(v62 + 8))(v38, v63);
}

void (*Defaults.lastNotifiedAboutVPN.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_1000FDF48(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  v3[4] = sub_1000FDF48(v6);
  v7 = sub_1000FDF48(v6);
  v8 = OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN;
  v3[5] = v7;
  v3[6] = v8;
  swift_beginAccess();
  sub_1000FCAF8(v7);
  return sub_1000FDC44;
}

void sub_1000FDC44(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_100006578(*(*a1 + 40), v5, &qword_10018C850, &qword_1001277D0);
    sub_1000FCF58(v5);
    sub_10001D724(v4, &qword_10018C850, &qword_1001277D0);
  }

  else
  {
    sub_1000FCF58(*(*a1 + 40));
  }

  swift_endAccess();
  free(v4);
  free(v5);

  free(v2);
}

uint64_t Defaults.__deallocating_deinit()
{
  sub_10001D724(v0 + OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN, &qword_100188460, &qword_100120AB0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1000FDF48(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  sub_10003DBE4();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = sub_1000FDF48(v9);
  v10 = sub_1000FDF48(v9);
  v5[5] = v10;
  UserDefault.wrappedValue.getter(a2, v10);
  return sub_1000FDE88;
}

void sub_1000FDE88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *sub_1000FDF48(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t type metadata accessor for Defaults()
{
  result = qword_1001927F0;
  if (!qword_1001927F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FDFD0()
{
  sub_1000FE060();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000FE060()
{
  if (!qword_100192800)
  {
    sub_100004D48(&qword_10018C850, &qword_1001277D0);
    v0 = type metadata accessor for UserDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_100192800);
    }
  }
}

uint64_t sub_1000FE0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000FE164(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_10000E5F0((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1000FE2F4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
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
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
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
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x1000FE540);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v21 = &a1[v10 + 16] & ~v10;

          sub_100003CE8(v21, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_1000FE568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE5E8(uint64_t a1)
{

  return sub_10001D724(a1, v1, v2);
}

uint64_t sub_1000FE640(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FlowStepContentOption();
  v6 = sub_100008780(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v11 = (v10 - v9);
  v12 = *(a2 + 56);
  v13 = *(a2 + 32);
  sub_10010072C();
  result = sub_100100830();
  v15 = 0;
  if (v3)
  {
    while (1)
    {
      v16 = v15;
LABEL_6:
      sub_1001007A0(__clz(__rbit64(v3)) | (v16 << 6));
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      v3 &= v3 - 1;
      result = sub_1000E2928(v11);
      v15 = v16;
      if (!v3)
      {
        goto LABEL_3;
      }
    }

    result = *v11;
    v17 = v11[1];
  }

  else
  {
LABEL_3:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v2)
      {

        return 0;
      }

      v3 = *(a2 + 56 + 8 * v16);
      ++v15;
      if (v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000FE780()
{
  sub_100017C00();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FlowStepContentOption();
  v7 = sub_100008780(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v12 = v11 - v10;
  v13 = *(v3 + 56);
  v14 = *(v3 + 32);
  sub_10010072C();
  sub_100100850();
  v15 = 0;
  if (v1)
  {
    while (1)
    {
      v16 = v15;
LABEL_6:
      sub_1001007C0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v1 &= v1 - 1;
      sub_1000E2928(v12);
      v15 = v16;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    sub_10002CE6C(v12, v5, &qword_10018AB50, &qword_100125290);
LABEL_10:
    sub_100017C18();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v0)
      {

        v17 = type metadata accessor for ImageResource();
        sub_100100870(v17);
        goto LABEL_10;
      }

      v1 = *(v3 + 56 + 8 * v16);
      ++v15;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000FE8D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FlowStepContentOption();
  v6 = sub_100008780(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v11 = (v10 - v9);
  v12 = *(a2 + 56);
  v13 = *(a2 + 32);
  sub_10010072C();
  result = sub_100100830();
  v15 = 0;
  if (v3)
  {
    while (1)
    {
      v16 = v15;
LABEL_6:
      sub_1001007A0(__clz(__rbit64(v3)) | (v16 << 6));
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      v3 &= v3 - 1;
      result = sub_1000E2928(v11);
      v15 = v16;
      if (!v3)
      {
        goto LABEL_3;
      }
    }

    result = *v11;
    v17 = v11[1];
  }

  else
  {
LABEL_3:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v2)
      {

        return 0;
      }

      v3 = *(a2 + 56 + 8 * v16);
      ++v15;
      if (v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000FEA14()
{
  sub_100017C00();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FlowStepContentOption();
  v7 = sub_100008780(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v12 = v11 - v10;
  v13 = *(v3 + 56);
  v14 = *(v3 + 32);
  sub_10010072C();
  sub_100100850();
  v15 = 0;
  if (v1)
  {
    while (1)
    {
      v16 = v15;
LABEL_6:
      sub_1001007C0();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        break;
      }

      v1 &= v1 - 1;
      sub_1000E2928(v12);
      v15 = v16;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    sub_10002CE6C(v12, v5, &qword_10018B400, &unk_100125CC0);
LABEL_10:
    sub_100017C18();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v0)
      {

        v17 = type metadata accessor for ConstellationContentParagraphStyle();
        sub_100100870(v17);
        goto LABEL_10;
      }

      v1 = *(v3 + 56 + 8 * v16);
      ++v15;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1000FEB64()
{
  sub_100017C00();
  v95 = v0;
  v96 = v1;
  v94 = type metadata accessor for ConstellationContentParagraphStyle();
  v2 = sub_100008780(v94);
  v91 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v87 = v7 - v6;
  v8 = sub_100003768(&qword_10018B400, &unk_100125CC0);
  sub_10000ED84(v8);
  v10 = *(v9 + 64);
  sub_10000ED78();
  __chkstk_darwin(v11);
  v89 = &v85 - v12;
  v13 = sub_100003768(&qword_100192928, &unk_1001314D0);
  sub_10000AF7C(v13);
  v15 = *(v14 + 64);
  sub_10000ED78();
  __chkstk_darwin(v16);
  v93 = &v85 - v17;
  v92 = type metadata accessor for ImageResource();
  v18 = sub_100008780(v92);
  v90 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10000C30C();
  v86 = v23 - v22;
  v24 = sub_100003768(&qword_10018AB50, &qword_100125290);
  sub_10000ED84(v24);
  v26 = *(v25 + 64);
  sub_10000ED78();
  __chkstk_darwin(v27);
  v88 = &v85 - v28;
  v29 = sub_100003768(&qword_100192930, &qword_1001314E0);
  sub_10000AF7C(v29);
  v31 = *(v30 + 64);
  sub_10000ED78();
  __chkstk_darwin(v32);
  v34 = &v85 - v33;
  v35 = type metadata accessor for FlowStepContentOption();
  v36 = sub_10000AF7C(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_100012454();
  v41 = v39 - v40;
  v43 = __chkstk_darwin(v42);
  v45 = (&v85 - v44);
  v46 = __chkstk_darwin(v43);
  v48 = &v85 - v47;
  __chkstk_darwin(v46);
  v50 = (&v85 - v49);
  v51 = sub_100003768(&qword_100192938, &qword_1001314E8);
  sub_10000ED84(v51);
  v53 = *(v52 + 64);
  sub_10000ED78();
  v55 = __chkstk_darwin(v54);
  v57 = &v85 - v56;
  v58 = (&v85 + *(v55 + 56) - v56);
  sub_1000E28C4(v95, &v85 - v56);
  sub_1000E28C4(v96, v58);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000E28C4(v57, v48);
      if (sub_100100804() != 1)
      {
        v73 = &qword_10018AB50;
        v74 = &qword_100125290;
        v75 = v48;
        goto LABEL_31;
      }

      v71 = *(v29 + 48);
      sub_100100890(v48, v34);
      sub_100100890(v58, &v34[v71]);
      v72 = v92;
      if (sub_10000E5F0(v34, 1, v92) == 1)
      {
        sub_100100778(&v34[v71]);
        if (v62)
        {
          v68 = &qword_10018AB50;
          v69 = &qword_100125290;
          v70 = v34;
          goto LABEL_45;
        }
      }

      else
      {
        v78 = v88;
        sub_10002BE60(v34, v88, &qword_10018AB50, &qword_100125290);
        sub_100100778(&v34[v71]);
        if (!v62)
        {
          (*(v90 + 32))(v86, &v34[v71], v72);
          sub_100100760();
          sub_100100570(v82, v83);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v84 = sub_10010081C();
          (qword_100125290)(v84);
          (qword_100125290)(v78, v72);
          v68 = &qword_10018AB50;
          v69 = &qword_100125290;
          v70 = v34;
          goto LABEL_45;
        }

        (*(v90 + 8))(v78, v72);
      }

      v68 = &qword_100192930;
      v69 = &qword_1001314E0;
      v70 = v34;
      goto LABEL_45;
    case 2u:
      sub_1000E28C4(v57, v45);
      v60 = *v45;
      v59 = v45[1];
      if (sub_100100804() == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    case 3u:
      sub_1000E28C4(v57, v41);
      if (sub_100100804() == 3)
      {
        v64 = *(v13 + 48);
        v65 = v41;
        v66 = v93;
        sub_100100890(v65, v93);
        sub_100100890(v58, v66 + v64);
        v67 = v94;
        if (sub_10000E5F0(v66, 1, v94) == 1)
        {
          sub_100100778(v66 + v64);
          if (!v62)
          {
            goto LABEL_39;
          }

          v68 = &qword_10018B400;
          v69 = &unk_100125CC0;
          v70 = v66;
        }

        else
        {
          v77 = v89;
          sub_10002BE60(v66, v89, &qword_10018B400, &unk_100125CC0);
          sub_100100778(v66 + v64);
          if (v62)
          {
            (*(v91 + 8))(v77, v67);
LABEL_39:
            v68 = &qword_100192928;
            v69 = &unk_1001314D0;
            v70 = v66;
            goto LABEL_45;
          }

          (*(v91 + 32))(v87, v66 + v64, v67);
          sub_100100748();
          sub_100100570(v79, v80);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v81 = sub_10010081C();
          (unk_100125CC0)(v81);
          (unk_100125CC0)(v77, v67);
          v68 = &qword_10018B400;
          v69 = &unk_100125CC0;
          v70 = v66;
        }

LABEL_45:
        sub_10000ABCC(v70, v68, v69);
        goto LABEL_46;
      }

      v73 = &qword_10018B400;
      v74 = &unk_100125CC0;
      v75 = v41;
LABEL_31:
      sub_10000ABCC(v75, v73, v74);
LABEL_32:
      sub_10000ABCC(v57, &qword_100192938, &qword_1001314E8);
      goto LABEL_47;
    case 4u:
      if (sub_100100804() == 4)
      {
        goto LABEL_46;
      }

      goto LABEL_32;
    case 5u:
      if (sub_100100804() == 5)
      {
        goto LABEL_46;
      }

      goto LABEL_32;
    case 6u:
      if (sub_100100804() == 6)
      {
        goto LABEL_46;
      }

      goto LABEL_32;
    default:
      sub_1000E28C4(v57, v50);
      v60 = *v50;
      v59 = v50[1];
      if (sub_100100804())
      {
LABEL_3:

        goto LABEL_32;
      }

LABEL_7:
      v61 = v58[1];
      if (!v59)
      {
        if (!v61)
        {
          goto LABEL_46;
        }

        v76 = v58[1];
        goto LABEL_35;
      }

      if (!v61)
      {
LABEL_35:

        goto LABEL_46;
      }

      v62 = v60 == *v58 && v59 == v61;
      if (!v62)
      {
        v63 = v58[1];
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

LABEL_46:
      sub_1000E2928(v57);
LABEL_47:
      sub_100017C18();
      return;
  }
}

void sub_1000FF33C()
{
  sub_100017C00();
  v1 = type metadata accessor for ConstellationContentParagraphStyle();
  v2 = sub_100008780(v1);
  v62 = v3;
  v63 = v2;
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  sub_10000C30C();
  v61 = v7 - v6;
  v8 = sub_100003768(&qword_10018B400, &unk_100125CC0);
  v9 = sub_10000ED84(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100012454();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = type metadata accessor for ImageResource();
  v19 = sub_100008780(v18);
  v60 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_10000C30C();
  v25 = v24 - v23;
  v26 = sub_100003768(&qword_10018AB50, &qword_100125290);
  v27 = sub_10000ED84(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100012454();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v60 - v34;
  v36 = type metadata accessor for FlowStepContentOption();
  v37 = sub_10000AF7C(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_10000C30C();
  v42 = (v41 - v40);
  sub_1000E28C4(v0, v41 - v40);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10002CE6C(v42, v35, &qword_10018AB50, &qword_100125290);
      Hasher._combine(_:)(3uLL);
      sub_10002BE60(v35, v32, &qword_10018AB50, &qword_100125290);
      sub_100100778(v32);
      if (v49)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v57 = v60;
        (*(v60 + 32))(v25, v32, v18);
        Hasher._combine(_:)(1u);
        sub_100100760();
        sub_100100570(v58, v59);
        dispatch thunk of Hashable.hash(into:)();
        (*(v57 + 8))(v25, v18);
      }

      v54 = &qword_10018AB50;
      v55 = &qword_100125290;
      v56 = v35;
      goto LABEL_19;
    case 2u:
      v47 = *v42;
      v43 = v42[1];
      v45 = 4;
      goto LABEL_5;
    case 3u:
      sub_10002CE6C(v42, v17, &qword_10018B400, &unk_100125CC0);
      Hasher._combine(_:)(5uLL);
      sub_10002BE60(v17, v14, &qword_10018B400, &unk_100125CC0);
      v48 = v63;
      if (sub_10000E5F0(v14, 1, v63) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v51 = v61;
        v50 = v62;
        (*(v62 + 32))(v61, v14, v48);
        Hasher._combine(_:)(1u);
        sub_100100748();
        sub_100100570(v52, v53);
        dispatch thunk of Hashable.hash(into:)();
        (*(v50 + 8))(v51, v48);
      }

      v54 = &qword_10018B400;
      v55 = &unk_100125CC0;
      v56 = v17;
LABEL_19:
      sub_10000ABCC(v56, v54, v55);
      break;
    case 4u:
      v46 = 0;
      goto LABEL_14;
    case 5u:
      v46 = 2;
      goto LABEL_14;
    case 6u:
      v46 = 6;
LABEL_14:
      Hasher._combine(_:)(v46);
      break;
    default:
      v44 = *v42;
      v43 = v42[1];
      v45 = 1;
LABEL_5:
      Hasher._combine(_:)(v45);
      if (v43)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      break;
  }

  sub_100017C18();
}

Swift::Int sub_1000FF7EC()
{
  Hasher.init(_seed:)();
  sub_1000FF33C();
  return Hasher._finalize()();
}

Swift::Int sub_1000FF834()
{
  Hasher.init(_seed:)();
  sub_1000FF33C();
  return Hasher._finalize()();
}

uint64_t sub_1000FF880(uint64_t a1)
{
  v2 = type metadata accessor for FlowStepContentOption();
  v3 = sub_100008780(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100012454();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  sub_100100570(&qword_100192920, type metadata accessor for FlowStepContentOption);
  v15 = Set.init(minimumCapacity:)();
  v22 = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    do
    {
      sub_1000E28C4(v17, v10);
      sub_1000E082C(v13, v10);
      sub_1000E2928(v13);
      v17 += v18;
      --v16;
    }

    while (v16);

    return v22;
  }

  else
  {
    v19 = v15;
  }

  return v19;
}

void sub_1000FF9FC()
{
  sub_100017C00();
  v1 = v0;
  v2 = type metadata accessor for FlowStepContentOption();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v6 = v5 - v4;
  v7 = *(v1 + 56);
  v8 = *(v1 + 32);
  sub_10010072C();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_8:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1001007A0(v16 | (v15 << 6));
    sub_1000FEB64();
    v18 = v17;
    sub_1000E2928(v6);
    if (v18)
    {
LABEL_9:

      sub_100017C18();
      return;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_9;
    }

    v11 = *(v1 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1000FFB40(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1000FF874();
  *a2 = v4;
  a2[1] = &_swiftEmptySetSingleton;
}

uint64_t sub_1000FFB74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000FE620(a1);
  *a2 = 0;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000FFB9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007B42C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000FFC2C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a2(*a1, a1[1], *v3, v3[1]);
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

BOOL sub_1000FFCA8(void *a1, uint64_t a2)
{
  v2 = sub_1000FFCE4(a1, *a2, *(a2 + 8));

  return v2;
}

BOOL sub_1000FFCE4(void *a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *v3 & a2;
  v8 = &_swiftEmptySetSingleton;
  if (v7 != a2)
  {
    v10 = v3[1];

    *v3 = v6 | a2;
    v3[1] = &_swiftEmptySetSingleton;
    v8 = a3;
  }

  result = v7 != a2;
  *a1 = a2;
  a1[1] = v8;
  return result;
}

uint64_t sub_1000FFD68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  result = sub_1000FFD98(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000FFD98(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    v5 = v1[1];

    *v1 = v2 & ~a1;
    v1[1] = &_swiftEmptySetSingleton;
  }

  return v3;
}

uint64_t sub_1000FFDF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1000FFE3C(*a1);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000FFE3C(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];

  *v1 = v4 | a1;
  v1[1] = &_swiftEmptySetSingleton;
  return v4 & a1;
}

uint64_t sub_1000FFE84(uint64_t *a1)
{
  v1 = a1[1];
  sub_1000FFEC4(*a1);
}

uint64_t sub_1000FFEC4(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];

  *v1 = v4 | a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1000FFF10(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];

  *v1 = v4 & a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1000FFF50(uint64_t *a1)
{
  v1 = a1[1];
  sub_1000FFF90(*a1);
}

uint64_t sub_1000FFF90(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];

  *v1 = v4 ^ a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1000FFFE8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a2(*a1, a1[1], *v3, v3[1]);
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t sub_1001000DC(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];

  *v1 = v4 & ~a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_10010018C(uint64_t a1, unsigned int *a2, void *a3, uint64_t *a4)
{
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v7 = type metadata accessor for FlowStepContentOption();
  sub_1001007EC(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100121620;
  v13 = *a2;
  v14 = type metadata accessor for ConstellationContentParagraphStyle();
  sub_10000AF7C(v14);
  (*(v15 + 104))(v12 + v11, v13, v14);
  sub_100003CE8(v12 + v11, 0, 1, v14);
  swift_storeEnumTagMultiPayload();
  result = sub_1000FF880(v12);
  *a3 = 0;
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for FlowStepContentOption()
{
  result = qword_1001929D0;
  if (!qword_1001929D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100100320(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v6 = type metadata accessor for FlowStepContentOption();
  sub_1001007EC(v6);
  v8 = *(v7 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100121620;
  swift_storeEnumTagMultiPayload();
  result = sub_1000FF880(v11);
  *a3 = 0;
  *a4 = result;
  return result;
}

uint64_t sub_1001003FC()
{
  sub_10000E928();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1001004D4(319, &unk_1001929E0, &type metadata accessor for ImageResource);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1001004D4(319, &unk_10018B498, &type metadata accessor for ConstellationContentParagraphStyle);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1001004D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100100570(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001005CC()
{
  result = qword_100192A18;
  if (!qword_100192A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A18);
  }

  return result;
}

unint64_t sub_100100624()
{
  result = qword_100192A20;
  if (!qword_100192A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A20);
  }

  return result;
}

unint64_t sub_10010067C()
{
  result = qword_100192A28;
  if (!qword_100192A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A28);
  }

  return result;
}

unint64_t sub_1001006D4()
{
  result = qword_100192A30;
  if (!qword_100192A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A30);
  }

  return result;
}

uint64_t sub_1001007A0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 48) + *(v2 + 72) * a1;

  return sub_1000E28C4(v5, v3);
}

uint64_t sub_1001007C0()
{
  v6 = *(v0 + 48) + *(v1 + 72) * (__clz(__rbit64(v3)) | (v4 << 6));

  return sub_1000E28C4(v6, v2);
}

uint64_t sub_100100804()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100100830()
{
}

uint64_t sub_100100850()
{
}

uint64_t sub_100100870(uint64_t a1)
{

  return sub_100003CE8(v1, 1, 1, a1);
}

uint64_t sub_100100890(uint64_t a1, uint64_t a2)
{

  return sub_10002CE6C(a1, a2, v2, v3);
}

uint64_t sub_1001008D4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100100BF0(&v11);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100100A20()
{
  v1 = v0;
  sub_1001008D4();
  v2 = sub_1000C9A20();

  if (v2)
  {
    goto LABEL_6;
  }

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950 && (swift_getKeyPath(), v3 = sub_1000FBFA4(), , (v3 & 1) != 0))
  {
LABEL_6:
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = *(v1 + 32);
    v15 = &type metadata for PurchasesStepProvider;
    v16 = sub_1000258DC();
    v14 = v6;
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();

    v9 = Environment.init<A>(_:)();
    v10 = v7 & 1;
    v11 = v5;
    v12 = v4;
    v17 = 0;
    v18 = 0;
    v13 = 0;
    sub_10002BE1C(&v9, v19);
    v19[96] = 0;
    sub_1000103C8();
    sub_10001BB68();
    _ConditionalContent<>.init(storage:)();
    return sub_1000688DC(&v9);
  }

  else
  {
    sub_1000103C8();
    sub_10001BB68();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100100BF0(uint64_t a1)
{
  v2 = sub_100003768(&qword_100190F40, &unk_10012F2A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100100C5C()
{
  result = qword_100192A38;
  if (!qword_100192A38)
  {
    sub_100004D48(&qword_100192A40, &unk_100131860);
    sub_1000103C8();
    sub_10001BB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A38);
  }

  return result;
}

uint64_t sub_100100D20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhoneNumberOption(0);
  v7 = sub_100008780(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = (v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for EnvironmentValues();
  v15 = sub_100008780(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v38 = a1;
  v37 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v21, v14);
  }

  v23 = sub_1000810F8();

  *&v39[0] = _swiftEmptyArrayStorage;
  v24 = *(v23 + 16);
  if (v24)
  {
    type metadata accessor for ActionInfo(0);
    v25 = *(v6 + 20);
    v26 = *(v9 + 80);
    v36[1] = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v9 + 72);
    v29 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000D1DF0(v27, v13);
      v30 = sub_1000EDC40(*v13, v13[1], v13 + v25);
      sub_1001016B0(v13);
      if (v30)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = *&v39[0];
      }

      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {

    v29 = _swiftEmptyArrayStorage;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  *(v31 + 24) = v37 & 1;
  sub_10000B4E0(v39, a3 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_100101898(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);

  v32 = Environment.init<A>(_:)();
  v34 = v33;
  result = sub_10001D724(v39, &qword_100189310, &qword_1001221A0);
  *a3 = v32;
  *(a3 + 8) = v34 & 1;
  *(a3 + 16) = 0xD00000000000001BLL;
  *(a3 + 24) = 0x8000000100132CB0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v29;
  *(a3 + 96) = sub_100101744;
  *(a3 + 104) = v31;
  return result;
}

uint64_t sub_1001010D4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for FlowStepTextView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100003768(&qword_100192A48, &qword_100131958);
  v7 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v9 = &v43 - v8;
  v46 = sub_100003768(&qword_100192A50, &qword_100131960);
  v10 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v47 = &v43 - v11;
  v48 = sub_100003768(&qword_100192A58, &unk_100131968);
  v12 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v44 = &v43 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v18, v14);
  }

  v20 = sub_100081608();

  if (!v20)
  {
    goto LABEL_12;
  }

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v18, v14);
  }

  v22 = sub_100081268();
  v24 = v23;

  if (v24)
  {
    v25 = static Color.secondary.getter();
    type metadata accessor for FlowViewDataProvider(0);
    sub_100101898(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    v26 = Environment.init<A>(_:)();
    v28 = v27;
    v29 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    v30 = *(v3 + 40);
    v31 = type metadata accessor for ConstellationContentParagraphStyle();
    sub_100003CE8(&v6[v30], 1, 1, v31);
    *v6 = v26;
    v6[8] = v28 & 1;
    type metadata accessor for CGSize(0);
    v50 = 0;
    v51 = 0;
    State.init(wrappedValue:)();
    v32 = v53;
    *(v6 + 1) = v52;
    *(v6 + 4) = v32;
    *(v6 + 5) = v22;
    *(v6 + 6) = v24;
    *(v6 + 7) = 0;
    *(v6 + 8) = v29;
    *(v6 + 9) = v25;
    sub_100003768(&qword_10018AAF0, &qword_100125240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100122C90;
    v34 = static Edge.Set.horizontal.getter();
    *(inited + 32) = v34;
    v35 = static Edge.Set.bottom.getter();
    *(inited + 33) = v35;
    v36 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v34)
    {
      v36 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v35)
    {
      v36 = Edge.Set.init(rawValue:)();
    }

    sub_100049BF8(v6, v9);
    v37 = &v9[*(v45 + 36)];
    *v37 = v36;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v37[40] = 1;
    v38 = v47;
    sub_1001018E0(v9, v47, &qword_100192A48, &qword_100131958);
    static String.stepPhoneNumberDescription.getter();
    sub_100101750();
    v39 = v44;
    View.accessibilityIdentifier(_:)();

    sub_10001D724(v38, &qword_100192A50, &qword_100131960);
    v40 = v49;
    sub_1001018E0(v39, v49, &qword_100192A58, &unk_100131968);
    v41 = 0;
  }

  else
  {
LABEL_12:
    v41 = 1;
    v40 = v49;
  }

  return sub_100003CE8(v40, v41, 1, v48);
}