id sub_1000024EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for iosmacHardware.Model();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B38();
  v9 = &_s10Foundation17NSLocalizedString_9tableName6bundle5value7commentS2S_SSSgSo8NSBundleCS2StF_ptr;
  if (v10)
  {
    type metadata accessor for ProductKitCatalog();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = &_s10Foundation17NSLocalizedString_9tableName6bundle5value7commentS2S_SSSgSo8NSBundleCS2StF_ptr;
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() imageNamed:v13 inBundle:v12 compatibleWithTraitCollection:a1];

    if (v14)
    {
      goto LABEL_8;
    }
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v26 = 0xD000000000000024;
  v27 = 0x80000001000173D0;
  v15 = *(v2 + 32);
  if (*(v2 + 40))
  {
    v16 = *(v2 + 40);
  }

  else
  {
    sub_1000032F8(*(v2 + 32), 0);
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v19 = result;
    v20 = String._bridgeToObjectiveC()();
    [v19 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v20];

    (*(v5 + 104))(v8, enum case for iosmacHardware.Model.ambiguous_iMac(_:), v4);
    iosmacHardware.Model.rawValue.getter();
    (*(v5 + 8))(v8, v4);
    type metadata accessor for ProductKitCatalog();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass:v21];
    v23 = String._bridgeToObjectiveC()();

    v24 = v9[169];
    v14 = [objc_opt_self() imageNamed:v23 inBundle:v22 compatibleWithTraitCollection:a1];

LABEL_8:
    v25 = [objc_allocWithZone(UIImageView) initWithImage:v14];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setContentMode:1];

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002874()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_1000028FC(v0);
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    *(v0 + 16) = v3;
    *(v0 + 24) = v6;

    sub_1000032F8(v4, v5);
  }

  sub_10000330C(v1, v2);
  return v3;
}

id sub_1000028FC(uint64_t a1)
{
  v2 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v3 = [*(a1 + 48) nearbyActionExtraData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      sub_1000033D0(v5, v7);
      return v8;
    }

    _StringGuts.grow(_:)(46);

    v13._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v13);

    result = [objc_opt_self() sharedManager];
    if (result)
    {
      v14 = result;
      v15 = String._bridgeToObjectiveC()();
      [v14 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v15];

      sub_1000033D0(v5, v7);
      return v8;
    }
  }

  else
  {
    result = [objc_opt_self() sharedManager];
    if (result)
    {
      v11 = result;
      v12 = String._bridgeToObjectiveC()();
      [v11 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v12];

      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100002B38()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_100002BC0();
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 32) = v3;
    *(v0 + 40) = v6;

    sub_1000032F8(v4, v5);
  }

  sub_10000330C(v1, v2);
  return v3;
}

id sub_100002BC0()
{
  v0 = (*(*(sub_100003320(&qword_100026898, &qword_100014BD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = type metadata accessor for iosmacHardware();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002874();
  if (!v8)
  {
    return v9;
  }

  v10 = v8;

  iosmacHardware.init(_:)();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {

    (*(v4 + 32))(v7, v2, v3);
    v9 = iosmacHardware.imageName.getter();
    (*(v4 + 8))(v7, v3);
    return v9;
  }

  sub_100003368(v2);
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v15 = 0xD000000000000021;
  v16 = 0x8000000100017340;
  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v13 = result;
    v14 = String._bridgeToObjectiveC()();
    [v13 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v14];

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002E3C()
{
  sub_1000032F8(*(v0 + 16), *(v0 + 24));
  sub_1000032F8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_100002EB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002ED8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002F54(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002FD8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003020()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003060()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000030B8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000313C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000031C4(uint64_t a1)
{
  v2 = sub_100003550(&qword_1000268F8, type metadata accessor for Key);
  v3 = sub_100003550(&qword_100026900, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000032CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000032F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000330C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100003320(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003368(uint64_t a1)
{
  v2 = sub_100003320(&qword_100026898, &qword_100014BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000033D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100003474(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100003550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003598(uint64_t a1)
{
  v2 = sub_100003550(&qword_100027060, type metadata accessor for AIDAServiceType);
  v3 = sub_100003550(&qword_1000268F0, type metadata accessor for AIDAServiceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_1000037A0()
{
  v1 = OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController____lazy_storage___noInternetIcon;
  v2 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController____lazy_storage___noInternetIcon);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController____lazy_storage___noInternetIcon);
  }

  else
  {
    v4 = sub_100003800();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100003800()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() configurationWithPointSize:60.0];
  [v2 setPreferredSymbolConfiguration:v3];

  return v2;
}

void sub_1000038F8()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3._countAndFlagsBits = 0xD000000000000011;
  v59._object = 0xE000000000000000;
  v3._object = 0x8000000100017500;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v59);

  String.init(format:_:)();

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v60._object = 0xE000000000000000;
  v7._object = 0x8000000100017520;
  v7._countAndFlagsBits = 0xD000000000000014;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v60);

  String.init(format:_:)();

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = [v1 mainBundle];
  v61._object = 0xE000000000000000;
  v11._object = 0x8000000100017540;
  v11._countAndFlagsBits = 0xD000000000000014;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v61);

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = v0;
  v15 = String._bridgeToObjectiveC()();

  v57 = sub_1000042B4;
  v58 = v13;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1000082BC;
  v56 = &unk_100020AD8;
  v16 = _Block_copy(&aBlock);
  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:1 handler:v16];

  _Block_release(v16);

  v19 = &v14[OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = *(v19 + 1);
  v22 = swift_allocObject();
  v22[2] = Strong;
  v22[3] = v21;
  v22[4] = v14;
  v23 = v14;
  swift_unknownObjectRetain();
  v24 = String._bridgeToObjectiveC()();
  v57 = sub_100004314;
  v58 = v22;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1000082BC;
  v56 = &unk_100020B28;
  v25 = _Block_copy(&aBlock);
  v26 = [v17 actionWithTitle:v24 style:0 handler:v25];

  swift_unknownObjectRelease();
  _Block_release(v25);

  [v23 setDismissButtonAction:v26];

  v27 = [v23 contentView];
  v28 = sub_1000037A0();
  [v27 addSubview:v28];

  v52 = objc_opt_self();
  sub_100003320(&qword_100026940, qword_100014FB0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100014F60;
  v30 = OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController____lazy_storage___noInternetIcon;
  v31 = [*&v23[OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController____lazy_storage___noInternetIcon] topAnchor];
  v32 = [v23 contentView];
  v33 = [v32 mainContentGuide];

  v34 = [v33 topAnchor];
  v35 = [v31 constraintGreaterThanOrEqualToAnchor:v34];

  *(v29 + 32) = v35;
  v36 = [*&v23[v30] centerXAnchor];
  v37 = [v23 contentView];
  v38 = [v37 mainContentGuide];

  v39 = [v38 centerXAnchor];
  v40 = [v36 constraintEqualToAnchor:v39];

  *(v29 + 40) = v40;
  v41 = [*&v23[v30] centerYAnchor];
  v42 = [v23 contentView];
  v43 = [v42 mainContentGuide];

  v44 = [v43 centerYAnchor];
  v45 = [v41 constraintEqualToAnchor:v44];

  *(v29 + 48) = v45;
  v46 = [*&v23[v30] bottomAnchor];
  v47 = [v23 contentView];
  v48 = [v47 mainContentGuide];

  v49 = [v48 bottomAnchor];
  v50 = [v46 constraintLessThanOrEqualToAnchor:v49];

  *(v29 + 56) = v50;
  sub_100004320();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:isa];
}

uint64_t sub_100004050(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x495443454E4E4F43;
  v4._object = 0xEA0000000000474ELL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v9);

  v6 = String._bridgeToObjectiveC()();

  [a2 showActivityIndicatorWithStatus:v6];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000104C0();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000041D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoInternetCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000427C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000042BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100004320()
{
  result = qword_100026948;
  if (!qword_100026948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026948);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExitReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004510(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x656E6E6F63736964;
    v6 = 0x65746F6D65526F6ELL;
    if (a1 != 3)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000015;
    if (a1)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    v2 = 0xD000000000000020;
    if (a1 != 9)
    {
      v2 = 0x6D73694464726163;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001ALL;
    if (a1 == 6)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 == 5)
    {
      v3 = 0x4465727574616566;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000046A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100004510(*a1);
  v5 = v4;
  if (v3 == sub_100004510(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100004730()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100004510(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100004794()
{
  sub_100004510(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000047E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100004510(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100004848@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000048FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100004878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004510(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000048A8()
{
  result = qword_100026950;
  if (!qword_100026950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026950);
  }

  return result;
}

unint64_t sub_1000048FC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000208E0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100004948()
{
  v1 = (v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController____lazy_storage___constructedSubtitle);
  if (*(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController____lazy_storage___constructedSubtitle + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController____lazy_storage___constructedSubtitle + 8);
  }

  else
  {
    v2 = sub_1000049C4(v0);
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

uint64_t sub_1000049C4(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController_accountManager) store];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2 && (v3 = [v2 username], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    v8._object = 0x8000000100017690;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v17);

    sub_100003320(&qword_1000269A0, qword_1000150F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100015090;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100005778();
    *(v10 + 32) = v4;
    *(v10 + 40) = v6;
    v11 = String.init(format:_:)();

    return v11;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v18._object = 0xE000000000000000;
    v14._object = 0x8000000100017670;
    v14._countAndFlagsBits = 0xD000000000000010;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v18)._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

void sub_100004BCC()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v64._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x5F4C414954494E49;
  v3._object = 0xED0000454C544954;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v64);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  sub_100004948();
  v6 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v6];

  v7 = [v1 mainBundle];
  v65._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x45554E49544E4F43;
  v8._object = 0xEF4E4F545455425FLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v65);

  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = v0;
  v12 = String._bridgeToObjectiveC()();

  v62 = sub_1000056F8;
  v63 = v10;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1000082BC;
  v61 = &unk_100020C08;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = [v1 mainBundle];
  v66._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x425F4C45434E4143;
  v17._object = 0xED00004E4F545455;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v66);

  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  v20 = v11;
  v21 = String._bridgeToObjectiveC()();

  v62 = sub_100005718;
  v63 = v19;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1000082BC;
  v61 = &unk_100020C58;
  v22 = _Block_copy(&aBlock);
  v23 = [v14 actionWithTitle:v21 style:1 handler:v22];

  _Block_release(v22);

  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  v25 = v20;
  v26 = String._bridgeToObjectiveC()();
  v62 = sub_100005830;
  v63 = v24;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1000082BC;
  v61 = &unk_100020CA8;
  v27 = _Block_copy(&aBlock);
  v28 = [v14 actionWithTitle:v26 style:0 handler:v27];

  _Block_release(v27);

  [v25 setDismissButtonAction:v28];

  v29 = sub_100005734(&v25[OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController_hardwareTypeManager], *&v25[OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController_hardwareTypeManager + 24]);
  v30 = [v25 traitCollection];
  v31 = *v29;
  v32 = sub_1000024EC(v30);

  v33 = [v25 contentView];
  v34 = v32;
  [v33 addSubview:v34];

  v57 = objc_opt_self();
  sub_100003320(&qword_100026940, qword_100014FB0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100014F60;
  v36 = [v34 topAnchor];

  v37 = [v25 contentView];
  v38 = [v37 mainContentGuide];

  v39 = [v38 topAnchor];
  v40 = [v36 constraintGreaterThanOrEqualToAnchor:v39];

  *(v35 + 32) = v40;
  v41 = [v34 centerXAnchor];

  v42 = [v25 contentView];
  v43 = [v42 mainContentGuide];

  v44 = [v43 centerXAnchor];
  v45 = [v41 constraintEqualToAnchor:v44];

  *(v35 + 40) = v45;
  v46 = [v34 centerYAnchor];

  v47 = [v25 contentView];
  v48 = [v47 mainContentGuide];

  v49 = [v48 centerYAnchor];
  v50 = [v46 constraintEqualToAnchor:v49];

  *(v35 + 48) = v50;
  v51 = [v34 bottomAnchor];

  v52 = [v25 contentView];
  v53 = [v52 mainContentGuide];

  v54 = [v53 bottomAnchor];
  v55 = [v51 constraintLessThanOrEqualToAnchor:v54];

  *(v35 + 56) = v55;
  sub_100004320();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:isa];
}

uint64_t sub_100005410(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x495443454E4E4F43;
  v4._object = 0xEA0000000000474ELL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v9);

  v6 = String._bridgeToObjectiveC()();

  [a2 showActivityIndicatorWithStatus:v6];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000F4CC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100005520()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000109C0(1u);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000055F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000056C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100005734(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005778()
{
  result = qword_1000269A8;
  if (!qword_1000269A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000269A8);
  }

  return result;
}

uint64_t sub_1000057CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100005834()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v50._object = 0xE000000000000000;
  v3._object = 0x8000000100017750;
  v3._countAndFlagsBits = 0xD000000000000014;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v50);

  String.init(format:_:)();

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 modelSpecificLocalizedStringKeyForKey:v7];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v1 mainBundle];
    v51._object = 0xE000000000000000;
    v13._countAndFlagsBits = v9;
    v13._object = v11;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v51);

    String.init(format:_:)();

    v15 = String._bridgeToObjectiveC()();

    [v0 setSubtitle:v15];

    v16 = &v0[OBJC_IVAR____TtC23NewDeviceSetupUIService27GatheringDataViewController_delegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v16 + 1);
    v19 = swift_allocObject();
    v19[2] = Strong;
    v19[3] = v18;
    v19[4] = v0;
    swift_unknownObjectRetain();
    v20 = v0;
    v21 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100004314;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000082BC;
    aBlock[3] = &unk_100020D48;
    v22 = _Block_copy(aBlock);
    v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];

    swift_unknownObjectRelease();
    _Block_release(v22);

    [v20 setDismissButtonAction:v23];

    v24 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v20 contentView];
    [v25 addSubview:v24];

    v48 = objc_opt_self();
    sub_100003320(&qword_100026940, qword_100014FB0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100014F60;
    v27 = [v24 topAnchor];
    v28 = [v20 contentView];
    v29 = [v28 mainContentGuide];

    v30 = [v29 topAnchor];
    v31 = [v27 constraintGreaterThanOrEqualToAnchor:v30];

    *(v26 + 32) = v31;
    v32 = [v24 centerXAnchor];
    v33 = [v20 contentView];
    v34 = [v33 mainContentGuide];

    v35 = [v34 centerXAnchor];
    v36 = [v32 constraintEqualToAnchor:v35];

    *(v26 + 40) = v36;
    v37 = [v24 centerYAnchor];
    v38 = [v20 contentView];
    v39 = [v38 mainContentGuide];

    v40 = [v39 centerYAnchor];
    v41 = [v37 constraintEqualToAnchor:v40];

    *(v26 + 48) = v41;
    v42 = [v24 bottomAnchor];

    v43 = [v20 contentView];
    v44 = [v43 mainContentGuide];

    v45 = [v44 bottomAnchor];
    v46 = [v42 constraintLessThanOrEqualToAnchor:v45];

    *(v26 + 56) = v46;
    sub_100004320();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v48 activateConstraints:isa];

    [v24 startAnimating];
  }

  else
  {
    __break(1u);
  }
}

void sub_100005F20(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000109C0(1u);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10000E50C;
    v10[3] = &unk_100020CF8;
    v8 = _Block_copy(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for GatheringDataViewController();
  v11.receiver = v4;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, "dismissViewControllerAnimated:completion:", a1 & 1, v8);
  _Block_release(v8);
}

id sub_100006114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GatheringDataViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000617C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000618C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000061D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000061EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100006234(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(16);

  strcpy(v20, "Scanned code: ");
  HIBYTE(v20[1]) = -18;
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5 = [objc_opt_self() sharedManager];
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    [v6 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v7];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_8;
    }

    v10 = *(Strong + OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannedCode);
    v9 = *(Strong + OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannedCode + 8);
    v11 = Strong;

    if (!v9)
    {
      goto LABEL_8;
    }

    if (v10 == a1 && v9 == a2)
    {

      return;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
LABEL_8:
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannedCode);
        v15 = *(v13 + OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannedCode + 8);
        *v14 = a1;
        v14[1] = a2;
        v16 = v13;
      }

      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_10000E5BC(v20);
          v19 = *sub_100005734(v20, v20[3]);
          sub_100009440();
          swift_unknownObjectRelease();
          sub_1000057CC(v20);
        }

        [v18 showConfirmationRing];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100006498()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 modelSpecificLocalizedStringKeyForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v40._object = 0xE000000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v6;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v40);

    v11 = String._bridgeToObjectiveC()();

    [v0 setTitle:v11];

    v12 = [v7 mainBundle];
    v41._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0xD00000000000001ALL;
    v13._object = 0x8000000100017880;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v41);

    v15 = String._bridgeToObjectiveC()();

    [v0 setSubtitle:v15];

    v16 = [v7 mainBundle];
    v42._object = 0xE000000000000000;
    v17._object = 0x80000001000178A0;
    v17._countAndFlagsBits = 0xD000000000000014;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v42);

    v19 = swift_allocObject();
    *(v19 + 16) = v0;
    v20 = v0;
    v21 = String._bridgeToObjectiveC()();

    v37 = sub_100006BCC;
    v38 = v19;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1000082BC;
    v36 = &unk_100020DA8;
    v22 = _Block_copy(&aBlock);
    v23 = objc_opt_self();
    v24 = [v23 actionWithTitle:v21 style:1 handler:v22];

    _Block_release(v22);

    v25 = &v20[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_delegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = *(v25 + 1);
    v28 = swift_allocObject();
    v28[2] = Strong;
    v28[3] = v27;
    v28[4] = v20;
    v29 = v20;
    swift_unknownObjectRetain();
    v30 = String._bridgeToObjectiveC()();
    v37 = sub_100004314;
    v38 = v28;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1000082BC;
    v36 = &unk_100020DF8;
    v31 = _Block_copy(&aBlock);
    v32 = [v23 actionWithTitle:v30 style:0 handler:v31];

    swift_unknownObjectRelease();
    _Block_release(v31);

    [v29 setDismissButtonAction:v32];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100006918()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000EEB8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100006B94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for navigationStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for navigationStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006D88()
{
  result = qword_100026A20;
  if (!qword_100026A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026A20);
  }

  return result;
}

Swift::Int sub_100006DF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100006E64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100006F00(void *a1)
{
  v4 = v1;
  v6 = objc_opt_self();
  v7 = [v6 sharedManager];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v3 = 0xD00000000000002FLL;
  v9 = String._bridgeToObjectiveC()();
  v2 = &OBJC_INSTANCE_VARIABLES__TtC23NewDeviceSetupUIService15NDSUSNavigation;
  [v8 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v9];

  if (!a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = [a1 userInfo];
  if (!v10)
  {
LABEL_16:
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v50 = v3;
    v51 = 0x8000000100017B90;
    v28 = [a1 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v18 = [v6 sharedManager];
    if (v18)
    {
      goto LABEL_20;
    }

    __break(1u);
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v50 = v3 - 16;
    v51 = 0x8000000100017BF0;
    swift_errorRetain();
    v18 = [v6 sharedManager];
    if (v18)
    {
      v37 = v18;
      v38 = _convertErrorToNSError(_:)();
      v39 = [v37 safeErrorFromError:v38];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44 = [v6 sharedManager];
      if (!v44)
      {
        __break(1u);
      }

      v45 = v44;
      v46 = String._bridgeToObjectiveC()();
      [v45 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v46];

      v47 = [v6 sharedManager];
      if (!v47)
      {
        __break(1u);
      }

      v48 = v47;
      v49 = String._bridgeToObjectiveC()();
      [v48 *&v2[290]];

      exit(-3);
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v33 = v18;
    v34 = String._bridgeToObjectiveC()();
    [v33 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v34];

    v27 = [v6 sharedManager];
    if (!v27)
    {
      __break(1u);
    }

    goto LABEL_22;
  }

  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = sub_100012ED4(&v50), (v14 & 1) == 0))
  {
    sub_100007EA8(&v50);
    goto LABEL_10;
  }

  sub_100007EFC(*(v12 + 56) + 32 * v13, v52);
  sub_100007EA8(&v50);
  sub_100003320(&qword_100026AD8, "<I");
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v50 = 0xD000000000000021;
    v51 = 0x8000000100017BC0;
    v21 = Dictionary.description.getter();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = [v6 sharedManager];
    if (!v25)
    {
      __break(1u);
    }

    a1 = v25;
    v26 = String._bridgeToObjectiveC()();
    [a1 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v26];

    v27 = [v6 sharedManager];
    if (v27)
    {
LABEL_22:
      v35 = v27;
      v36 = String._bridgeToObjectiveC()();
      [v35 *&v2[290]];

      exit(-7);
    }

    __break(1u);
    goto LABEL_14;
  }

  v15 = objc_allocWithZone(CBDevice);
  v16 = sub_1000076C4();
  v17 = *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_device);
  *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_device) = v16;

  v18 = [v6 sharedManager];
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  [v19 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v20];
}

id sub_1000076C4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void sub_1000077AC(void *a1)
{
  v4 = v1;
  if (BYSetupAssistantNeedsToRun())
  {
    v28 = objc_opt_self();
    v2 = &OBJC_INSTANCE_VARIABLES__TtC23NewDeviceSetupUIService15NDSUSNavigation;
    v29 = [v28 sharedManager];
    if (v29)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_18:
    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v30._countAndFlagsBits = 0xD00000000000004FLL;
    v30._object = 0x8000000100017990;
    String.append(_:)(v30);
    swift_getObjectType();
    v31._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v31);

    v28 = objc_opt_self();
    v32 = &OBJC_INSTANCE_VARIABLES__TtC23NewDeviceSetupUIService15NDSUSNavigation;
    v33 = [v28 sharedManager];
    if (v33)
    {
LABEL_32:
      v42 = v33;
      v43 = String._bridgeToObjectiveC()();
      [v42 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v43];

      v39 = [v28 *&v32[168]];
      if (v39)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_34:
      v44 = v39;
      v45 = String._bridgeToObjectiveC()();
      [v44 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v45];

      v39 = [v28 *&v32[168]];
      if (!v39)
      {
        __break(1u);
      }

LABEL_36:
      v46 = v39;
      v47 = String._bridgeToObjectiveC()();
      [v46 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v47];

      exit(-7);
    }

    __break(1u);
    goto LABEL_20;
  }

  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    if (([v6 isProximitySetupToNewDeviceAllowed] & 1) == 0)
    {
LABEL_28:
      v28 = objc_opt_self();
      v29 = [v28 sharedManager];
      if (v29)
      {
        v48 = v29;
        v49 = String._bridgeToObjectiveC()();
        [v48 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v49];

        v33 = [v28 sharedManager];
        if (v33)
        {
          v52 = v33;
          v53 = String._bridgeToObjectiveC()();
          [v52 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v53];

          exit(-9);
        }

        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
LABEL_30:
      v40 = v29;
      v32 = 0xD00000000000002FLL;
      v41 = String._bridgeToObjectiveC()();
      [v40 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v41];

      v33 = [v28 v2[168]];
      if (!v33)
      {
        __break(1u);
        goto LABEL_32;
      }

LABEL_39:
      v50 = v33;
      v51 = String._bridgeToObjectiveC()();
      [v50 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v51];

      exit(-8);
    }
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_18;
  }

  v2 = v8;
  v3 = 0xD00000000000002FLL;
  v9 = a1;
  v10 = [(SEL *)v2 configurationIdentifier];
  if (!v10)
  {
LABEL_20:
    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v34._countAndFlagsBits = v3 + 16;
    v34._object = 0x8000000100017A30;
    String.append(_:)(v34);
    v35 = [(SEL *)v2 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v37;

    v38._countAndFlagsBits = v36;
    v38._object = v2;
    String.append(_:)(v38);

    v28 = objc_opt_self();
    v32 = &OBJC_INSTANCE_VARIABLES__TtC23NewDeviceSetupUIService15NDSUSNavigation;
    v39 = [v28 sharedManager];
    if (v39)
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_22;
  }

  v11 = [(SEL *)v2 configurationContext];
  sub_100006F00(v11);

  [(SEL *)v2 setAllowsMenuButtonDismissal:0];
  [(SEL *)v2 setDesiredHardwareButtonEvents:0];
  v12 = String._bridgeToObjectiveC()();
  [(SEL *)v2 setIdleTimerDisabled:1 forReason:v12];

  v13 = [objc_allocWithZone(UIWindow) initWithWindowScene:v2];
  v2 = OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window;
  v14 = *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window);
  *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window) = v13;

  v15 = [objc_allocWithZone(UINavigationController) init];
  v16 = OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_cardNavigationController;
  v17 = *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_cardNavigationController);
  *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_cardNavigationController) = v15;
  v18 = v15;

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v18 setNavigationBarHidden:1];

  v19 = *(v2 + v4);
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v19 setRootViewController:*(v4 + v16)];
  v20 = *(v2 + v4);
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v20 makeKeyAndVisible];
  v21 = *(v2 + v4);
  if (!v21)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v21 setHidden:0];
  v2 = *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_device);
  if (!v2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = *(v4 + v16);
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v23 = objc_allocWithZone(type metadata accessor for NDSUSNavigation());
  v24 = v2;
  v25 = v22;
  v26 = sub_100011DC4(v24, v25, v55);

  v27 = *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_navigation);
  *(v4 + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_navigation) = v26;
  v54 = v26;

  sub_10000E750();
}

uint64_t sub_100007EFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100007F58()
{
  if (!os_variant_has_internal_content() || (v1 = v0[9]) == 0)
  {
    v3 = [objc_allocWithZone(SKSetupMacSetupClient) init];
    v4 = v0[5];
    v0[5] = v3;

    v5 = [objc_allocWithZone(SKDevice) init];
    v6 = v0[6];
    v0[6] = v5;

    v7 = v0[5];
    if (v7)
    {
      [v7 setPasswordType:7];
      v8 = v0[6];
      if (v8)
      {
        v9 = v0[2];
        v10 = v8;
        v11 = [v9 identifier];
        [v10 setIdentifier:v11];

        v12 = v0[5];
        if (v12)
        {
          [v12 setPeerDevice:v0[6]];
          v13 = v0[5];
          if (v13)
          {
            v27 = sub_10000BA60;
            v28 = v0;
            aBlock = _NSConcreteStackBlock;
            v24 = 1107296256;
            v25 = sub_1000082BC;
            v26 = &unk_100021000;
            v14 = _Block_copy(&aBlock);

            v15 = v13;

            [v15 setEventHandler:v14];
            _Block_release(v14);

            v16 = v0[5];
            if (v16)
            {
              [v16 activate];
              v17 = v0[5];
              if (v17)
              {
                v18 = v17;
                v19 = String._bridgeToObjectiveC()();
                v27 = sub_10000BA7C;
                v28 = v0;
                aBlock = _NSConcreteStackBlock;
                v24 = 1107296256;
                v25 = sub_100008A58;
                v26 = &unk_100021028;
                v20 = _Block_copy(&aBlock);

                v27 = sub_100008CE0;
                v28 = 0;
                aBlock = _NSConcreteStackBlock;
                v24 = 1107296256;
                v25 = sub_10000BD84;
                v26 = &unk_100021050;
                v21 = _Block_copy(&aBlock);
                [v18 registerRequestID:v19 options:0 requestHandler:v20 completionHandler:v21];
                _Block_release(v21);
                _Block_release(v20);

                return;
              }

              goto LABEL_18;
            }

LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  v22 = v0[5];
  v0[5] = v1;
  v2 = v1;
}

void sub_1000082BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100008324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(*(sub_100003320(&qword_100026E08, &qword_100015630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a7;
  v15[5] = a5;
  v15[6] = a6;
  sub_10000BEAC(0, 0, v12, &unk_100015418, v15);
}

uint64_t sub_100008464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v6[20] = type metadata accessor for MainActor();
  v6[21] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v6[22] = v7;
  *v7 = v6;
  v7[1] = sub_100008518;

  return sub_10000A2F0();
}

uint64_t sub_100008518(char a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 184) = a1;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000865C, v6, v5);
}

id sub_10000865C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (v1 == 1)
  {
    if (Strong)
    {
      sub_10000F020();
LABEL_7:
      swift_unknownObjectRelease();
    }
  }

  else if (Strong)
  {
    result = [objc_opt_self() sharedManager];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = String._bridgeToObjectiveC()();
    [v6 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v7];

    sub_10000F28C();
    goto LABEL_7;
  }

  v8 = *(v0 + 184);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  sub_100003320(&unk_100027030, &unk_100015420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015090;
  *(v0 + 120) = 0xD000000000000026;
  *(v0 + 128) = 0x8000000100018190;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v8;
  v12 = sub_100013178(inited);
  swift_setDeallocating();
  sub_10000BBD4(inited + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v10(v12, 0, 0, sub_10000BC4C, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100008A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;

  v8(v9, v11, v12, a4, sub_10000BABC, v14);
}

uint64_t sub_100008B8C(uint64_t a1, objc_class *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = a2;
  if (a1)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a3)
  {
    a3 = _convertErrorToNSError(_:)();
  }

  v15[4] = a4;
  v15[5] = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000BD84;
  v15[3] = &unk_1000210A0;
  v12 = _Block_copy(v15);
  v13 = *(a6 + 16);

  v13(a6, v11.super.isa, isa, a3, v12);
  _Block_release(v12);
}

void sub_100008CE0(void *a1)
{
  _StringGuts.grow(_:)(53);
  v2._object = 0x8000000100018130;
  v2._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v2);
  v3 = objc_opt_self();
  v4 = [v3 sharedManager];
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  if (a1)
  {
    a1 = _convertErrorToNSError(_:)();
  }

  v6 = [v5 safeErrorFromError:a1];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11 = [v3 sharedManager];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  [v12 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v13];
}

void sub_100008E60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100008ECC()
{
  v1 = sub_100003320(&qword_100026E08, &qword_100015630);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v38 - v4;
  if (os_variant_has_internal_content())
  {
    v6 = v0[10];
    if (v6)
    {
      v39 = v0[7];
      v0[7] = v6;
      v7 = v6;
LABEL_17:
      v30 = v39;
      goto LABEL_18;
    }
  }

  v8 = v0[5];
  if (!v8 || (v39 = [v8 messageSessionTemplate]) == 0)
  {
    v31 = [objc_opt_self() sharedManager];
    if (v31)
    {
      v32 = v31;
      v33 = String._bridgeToObjectiveC()();
      [v32 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v33];

      v34 = type metadata accessor for TaskPriority();
      (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
      type metadata accessor for MainActor();

      v35 = v0;
      v36 = static MainActor.shared.getter();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = &protocol witness table for MainActor;
      v37[4] = v35;
      sub_10000C16C(0, 0, v5, &unk_100015408, v37);

      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  v9 = [objc_allocWithZone(SASProximitySession) init];
  v10 = v0[7];
  v0[7] = v9;
  v11 = v9;

  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v11 setSharingMessageSession:v39];

  v12 = v0[7];
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v12 activate];
  v13 = v0[7];
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v13 setConnected:1];
  v14 = [objc_allocWithZone(SASProximityReadyAction) init];
  v15 = v0[7];
  if (!v15)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = [v15 sendAction:v14];
  if (!v16)
  {

    goto LABEL_17;
  }

  v17 = v16;
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v40 = 0xD00000000000001CLL;
  v41 = 0x8000000100018050;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 sharedManager];
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = v20;
  v22 = _convertErrorToNSError(_:)();
  v23 = [v21 safeErrorFromError:v22];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28 = [v18 sharedManager];
  if (!v28)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v29 = v28;
  v38 = String._bridgeToObjectiveC()();
  [v29 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v38];

  v30 = v38;
LABEL_18:
}

uint64_t sub_100009318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000093B0, v6, v5);
}

uint64_t sub_1000093B0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000109C0(4u);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_100009440()
{
  v1 = objc_allocWithZone(SKAuthenticationResponseEvent);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithPassword:v2];

  v4 = *(v0 + 40);
  if (v4)
  {
    [v4 postEvent:v3];
  }

  _StringGuts.grow(_:)(23);

  v5 = [v3 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = [objc_opt_self() sharedManager];
  if (v10)
  {
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    [v11 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v12];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000095CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009664, v6, v5);
}

uint64_t sub_100009664()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000105DC();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_1000098A4(void *a1)
{
  v2 = sub_100003320(&qword_100026E08, &qword_100015630);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v58 - v5;
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v60 = 0xD00000000000001BLL;
  v61 = 0x8000000100017F10;
  v7 = [a1 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12 = objc_opt_self();
  v13 = [v12 sharedManager];
  if (!v13)
  {
    __break(1u);
    goto LABEL_28;
  }

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  [v14 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v15];

  v16 = [a1 eventType];
  if (v16 > 40)
  {
    if (v16 != 41)
    {
      if (v16 == 140)
      {
        v41 = [a1 error];
        if (v41)
        {
          v42 = v41;
          v60 = 0;
          v61 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v60 = 0xD000000000000014;
          v61 = 0x8000000100017FB0;
          v43 = v42;
          v44 = [v12 sharedManager];
          if (v44)
          {
            v45 = v44;
            v46 = _convertErrorToNSError(_:)();
            v47 = [v45 safeErrorFromError:v46];

            v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            v51._countAndFlagsBits = v48;
            v51._object = v50;
            String.append(_:)(v51);

            v52 = [v12 sharedManager];
            if (v52)
            {
              v53 = v52;
              v59 = String._bridgeToObjectiveC()();
              [v53 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v59];

              goto LABEL_21;
            }

LABEL_32:
            __break(1u);
            return;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v55 = type metadata accessor for TaskPriority();
        (*(*(v55 - 8) + 56))(v6, 1, 1, v55);
        type metadata accessor for MainActor();
        v56 = v59;

        v57 = static MainActor.shared.getter();
        v20 = swift_allocObject();
        v20[2] = v57;
        v20[3] = &protocol witness table for MainActor;
        v20[4] = v56;
        v21 = &unk_1000153E8;
      }

      else
      {
        if (v16 != 120)
        {
          goto LABEL_13;
        }

        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        type metadata accessor for MainActor();
        v18 = v59;

        v19 = static MainActor.shared.getter();
        v20 = swift_allocObject();
        v20[2] = v19;
        v20[3] = &protocol witness table for MainActor;
        v20[4] = v18;
        v21 = &unk_1000153F8;
      }

LABEL_25:
      sub_10000C16C(0, 0, v6, v21, v20);

      return;
    }

    v22 = [v12 sharedManager];
    if (v22)
    {
      v23 = v22;
      v24 = String._bridgeToObjectiveC()();
      [v23 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v24];

      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      type metadata accessor for MainActor();
      v26 = v59;

      v27 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v27;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v26;
      v21 = &unk_1000153D8;
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  switch(v16)
  {
    case 20:
      return;
    case 30:
      v35 = [v12 sharedManager];
      if (!v35)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v36 = v35;
      v37 = String._bridgeToObjectiveC()();
      [v36 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v37];

      v38 = type metadata accessor for TaskPriority();
      (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
      type metadata accessor for MainActor();
      v39 = v59;

      v40 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v40;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v39;
      v21 = &unk_1000153C8;
      goto LABEL_25;
    case 40:
      return;
  }

LABEL_13:
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v60 = 0xD00000000000001CLL;
  v61 = 0x8000000100017F30;
  v28 = [a1 description];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33 = [v12 sharedManager];
  if (!v33)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = v33;
  v59 = String._bridgeToObjectiveC()();
  [v34 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v59];

LABEL_21:
  v54 = v59;
}

uint64_t sub_10000A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A0A8, v6, v5);
}

uint64_t sub_10000A0A8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10000EA1C();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A1CC, v6, v5);
}

uint64_t sub_10000A1CC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10000ECF4();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000BD74, v6, v5);
}

uint64_t sub_10000A310()
{
  v1 = v0[27];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[29] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_10000A464;
    v7 = v3;
    v8 = v5;

    return _swift_task_switch(v6, v7, v8);
  }

  v6 = [objc_opt_self() sharedManager];
  if (!v6)
  {
    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  v9 = v6;
  v10 = String._bridgeToObjectiveC()();
  [v9 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v10];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10000A464()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);

  *(v0 + 304) = sub_100010FD4(v3) & 1;
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10000A4E0, 0, 0);
}

uint64_t sub_10000A4E0()
{
  if (v0[38])
  {
    v1 = *(v0[27] + 64);
    v0[30] = v1;
    v2 = [v1 store];
    v0[31] = v2;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_10000A6D4;
    v3 = swift_continuation_init();
    v0[25] = sub_100003320(&qword_100026DF8, &qword_1000153A0);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10000B380;
    v0[21] = &unk_100020EE8;
    v0[22] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 18];
    v4 = v0 + 2;

    return _swift_continuation_await(v4);
  }

  v4 = [objc_opt_self() sharedManager];
  if (!v4)
  {
    __break(1u);
    return _swift_continuation_await(v4);
  }

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v5 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v6];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_10000A6D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10000AFC4;
  }

  else
  {
    v3 = sub_10000A7E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000A7E4()
{
  v1 = v0[26];
  v2 = v0[31];
  v0[33] = v1;
  v3 = v1;

  if (!v1)
  {
    v6 = [objc_opt_self() sharedManager];
    if (!v6)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v13 = v6;
    v14 = String._bridgeToObjectiveC()();
    [v13 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v14];

    goto LABEL_13;
  }

  v4 = [v0[30] authenticationModeForAccount:v3];
  if (v4 == 2)
  {
    v6 = [objc_opt_self() sharedManager];
    if (!v6)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v15 = v6;
    v16 = v0[33];
    v17 = String._bridgeToObjectiveC()();
    [v15 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v17];

LABEL_13:
    v18 = 0;
    goto LABEL_16;
  }

  if (!v4)
  {
    v5 = objc_opt_self();
    v0[34] = v5;
    v6 = [v5 sharedManager];
    if (v6)
    {
      v7 = v6;
      v8 = String._bridgeToObjectiveC()();
      [v7 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v8];

      v9 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
      v0[35] = v9;
      v10 = [v3 username];
      [v9 setUsername:v10];

      v6 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
      v0[36] = v6;
      if (v6)
      {
        v11 = v6;
        v0[10] = v0;
        v0[15] = v0 + 26;
        v0[11] = sub_10000AC90;
        v12 = swift_continuation_init();
        v0[25] = sub_100003320(&qword_100026E00, &qword_1000153A8);
        v0[18] = _NSConcreteStackBlock;
        v0[19] = 1107296256;
        v0[20] = sub_10000B450;
        v0[21] = &unk_100020F10;
        v0[22] = v12;
        [v11 fetchAuthModeWithContext:v9 completion:v0 + 18];
        v6 = v0 + 10;

        return _swift_continuation_await(v6);
      }

LABEL_23:
      __break(1u);
      return _swift_continuation_await(v6);
    }

    goto LABEL_20;
  }

  v19 = v4;
  _StringGuts.grow(_:)(93);
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD00000000000002ELL;
  v20._object = 0x8000000100017DE0;
  String.append(_:)(v20);
  v0[26] = v19;
  type metadata accessor for AKAppleIDAuthenticationMode(0);
  _print_unlocked<A, B>(_:_:)();
  v21._countAndFlagsBits = 0xD00000000000002DLL;
  v21._object = 0x8000000100017E10;
  String.append(_:)(v21);
  v23 = v0[18];
  v22 = v0[19];
  v6 = [objc_opt_self() sharedManager];
  if (!v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v6;
  v25 = v0[33];
  v26 = String._bridgeToObjectiveC()();
  [v24 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v26];

  v18 = 1;
LABEL_16:
  v27 = v0[1];

  return v27(v18);
}

uint64_t sub_10000AC90()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_10000B198;
  }

  else
  {
    v3 = sub_10000ADA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_10000ADA0()
{
  v2 = v0[35];
  v1 = v0[36];

  v3 = v0[26];
  if (v3 == 2)
  {
    result = [objc_opt_self() sharedManager];
    if (result)
    {
      v12 = result;
      v13 = v0[33];
      v14 = String._bridgeToObjectiveC()();
      [v12 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v14];

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  _StringGuts.grow(_:)(93);
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v4._object = 0x8000000100017DE0;
  String.append(_:)(v4);
  v0[26] = v3;
  type metadata accessor for AKAppleIDAuthenticationMode(0);
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x8000000100017E10;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v5);
  v7 = v0[18];
  v6 = v0[19];
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  v10 = v0[33];
  v11 = String._bridgeToObjectiveC()();
  [v9 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v11];

LABEL_6:
  v15 = v0[1];

  return v15(v3 != 2);
}

id sub_10000AFC4()
{
  v1 = v0[31];
  v2 = v0[32];
  swift_willThrow();

  _StringGuts.grow(_:)(39);

  v3 = objc_opt_self();
  swift_errorRetain();
  result = [v3 sharedManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = v0[32];
  v7 = _convertErrorToNSError(_:)();
  v8 = [v5 safeErrorFromError:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  result = [v3 sharedManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = v0[32];
  v15 = String._bridgeToObjectiveC()();
  [v13 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v15];

  v16 = v0[1];

  return v16(0);
}

id sub_10000B198()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  swift_willThrow();

  _StringGuts.grow(_:)(59);
  v5._object = 0x8000000100017ED0;
  v5._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v5);
  swift_errorRetain();
  result = [v3 sharedManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = v0[37];
  v9 = v0[34];
  v10 = _convertErrorToNSError(_:)();
  v11 = [v7 safeErrorFromError:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  result = [v9 sharedManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = v0[37];
  v18 = v0[35];
  v19 = v0[33];
  v20 = String._bridgeToObjectiveC()();
  [v16 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v20];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_10000B380(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100005734((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003320(&qword_100027050, &unk_1000153B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000B450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100005734((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003320(&qword_100027050, &unk_1000153B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id *sub_10000B51C()
{
  sub_10000436C((v0 + 3));

  return v0;
}

uint64_t sub_10000B574()
{
  sub_10000B51C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10000B5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD70;

  return sub_10000A258(a1, v4, v5, v6);
}

uint64_t sub_10000B69C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD70;

  return sub_10000A258(a1, v4, v5, v6);
}

uint64_t sub_10000B750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD70;

  return sub_10000A134(a1, v4, v5, v6);
}

uint64_t sub_10000B804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD70;

  return sub_10000A010(a1, v4, v5, v6);
}

uint64_t sub_10000B8B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B96C;

  return sub_100009318(a1, v4, v5, v6);
}

uint64_t sub_10000B96C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000BA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BA84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BAC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000BB0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BD70;

  return sub_100008464(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000BBD4(uint64_t a1)
{
  v2 = sub_100003320(&unk_100026E10, &qword_100015650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000BC54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000BC94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD70;

  return sub_1000095CC(a1, v4, v5, v6);
}

id sub_10000BDC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10000BEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003320(&qword_100026E08, &qword_100015630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000CBAC(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CC1C(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
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

      sub_10000CC1C(a3);

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

  sub_10000CC1C(a3);
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

uint64_t sub_10000C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003320(&qword_100026E08, &qword_100015630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000CBAC(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CC1C(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100003320(&qword_100026EB0, &qword_100015488);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_10000CC1C(a3);

      return v23;
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

  sub_10000CC1C(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100003320(&qword_100026EB0, &qword_100015488);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_10000C440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v31._object = 0xE000000000000000;
  v7._object = 0x8000000100018250;
  v7._countAndFlagsBits = 0xD000000000000011;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v31);

  v9 = [v5 mainBundle];
  v32._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000014;
  v10._object = 0x8000000100018270;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v32);

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15 = [v5 mainBundle];
  v33._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x8000000100018290;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v33);

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  swift_unknownObjectRetain();
  v19 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000C974;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000082BC;
  aBlock[3] = &unk_100021168;
  v20 = _Block_copy(aBlock);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  v23 = [v5 mainBundle];
  v34._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0x425F4C45434E4143;
  v24._object = 0xED00004E4F545455;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v34);

  v26 = String._bridgeToObjectiveC()();

  v27 = [v21 actionWithTitle:v26 style:1 handler:0];

  [v14 addAction:v22];
  [v14 addAction:v27];
  [v14 setPreferredAction:v22];
  [a4 presentViewController:v14 animated:1 completion:0];
}

uint64_t sub_10000C814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(sub_100003320(&qword_100026E08, &qword_100015630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = a3;
  sub_10000C16C(0, 0, v7, &unk_100015470, v10);
}

uint64_t sub_10000C93C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CA14, v6, v5);
}

uint64_t sub_10000CA14()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  if (v2)
  {
    v3 = *(v0 + 24);
    sub_1000109C0(1u);
  }

  **(v0 + 16) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000CA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CAAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000CAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B96C;

  return sub_10000C97C(a1, v4, v5, v7);
}

uint64_t sub_10000CBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003320(&qword_100026E08, &qword_100015630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CC1C(uint64_t a1)
{
  v2 = sub_100003320(&qword_100026E08, &qword_100015630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CC84(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CD7C;

  return v7(a1);
}

uint64_t sub_10000CD7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000CE74(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10000CF68;

  return v6(v2 + 32);
}

uint64_t sub_10000CF68()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000D07C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BD70;

  return sub_10000CE74(a1, v5);
}

uint64_t sub_10000D134()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D16C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B96C;

  return sub_10000CE74(a1, v5);
}

uint64_t sub_10000D224(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BD70;

  return sub_10000CC84(a1, v5);
}

void sub_10000D2E8()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v48._object = 0xE000000000000000;
  v3._object = 0x8000000100018360;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v48);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v49._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x8000000100018380;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v49);

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = [v1 mainBundle];
  v50._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v11._object = 0xE90000000000004ELL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v50);

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = v0;
  v15 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000DAB8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000082BC;
  aBlock[3] = &unk_100021280;
  v16 = _Block_copy(aBlock);
  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];

  _Block_release(v16);

  v18 = sub_100005734(&v14[OBJC_IVAR____TtC23NewDeviceSetupUIService33ConnectionErrorCardViewController_hardwareTypeManager], *&v14[OBJC_IVAR____TtC23NewDeviceSetupUIService33ConnectionErrorCardViewController_hardwareTypeManager + 24]);
  v19 = [v14 traitCollection];
  v20 = *v18;
  v21 = sub_1000024EC(v19);

  v22 = [v14 contentView];
  v23 = v21;
  [v22 addSubview:v23];

  v46 = objc_opt_self();
  sub_100003320(&qword_100026940, qword_100014FB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100014F60;
  v25 = [v23 topAnchor];

  v26 = [v14 contentView];
  v27 = [v26 mainContentGuide];

  v28 = [v27 topAnchor];
  v29 = [v25 constraintGreaterThanOrEqualToAnchor:v28];

  *(v24 + 32) = v29;
  v30 = [v23 centerXAnchor];

  v31 = [v14 contentView];
  v32 = [v31 mainContentGuide];

  v33 = [v32 centerXAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];

  *(v24 + 40) = v34;
  v35 = [v23 centerYAnchor];

  v36 = [v14 contentView];
  v37 = [v36 mainContentGuide];

  v38 = [v37 centerYAnchor];
  v39 = [v35 constraintEqualToAnchor:v38];

  *(v24 + 48) = v39;
  v40 = [v23 bottomAnchor];

  v41 = [v14 contentView];
  v42 = [v41 mainContentGuide];

  v43 = [v42 bottomAnchor];
  v44 = [v40 constraintLessThanOrEqualToAnchor:v43];

  *(v24 + 56) = v44;
  sub_100004320();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];
}

uint64_t sub_10000D93C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000109C0(2u);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000DA80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DAC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000DAD8()
{
  v1 = OBJC_IVAR____TtC23NewDeviceSetupUIService30FinalizationCardViewController____lazy_storage___checkmarkImage;
  v2 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService30FinalizationCardViewController____lazy_storage___checkmarkImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService30FinalizationCardViewController____lazy_storage___checkmarkImage);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [objc_opt_self() configurationWithPointSize:60.0];
    [v6 setPreferredSymbolConfiguration:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_10000DC0C()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v56._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x4554454C504D4F43;
  v3._object = 0xEE00454C5449545FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v56);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v57._object = 0xE000000000000000;
  v7._object = 0x8000000100018450;
  v7._countAndFlagsBits = 0xD000000000000011;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v57);

  String.init(format:_:)();

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = [v1 mainBundle];
  v58._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x5455425F454E4F44;
  v11._object = 0xEB000000004E4F54;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v58);

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = v0;
  v15 = String._bridgeToObjectiveC()();

  v54 = sub_10000E508;
  v55 = v13;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1000082BC;
  v53 = &unk_1000212D0;
  v16 = _Block_copy(&aBlock);
  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:0 handler:v16];

  _Block_release(v16);

  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = v14;
  v21 = String._bridgeToObjectiveC()();
  v54 = sub_10000E4E0;
  v55 = v19;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1000082BC;
  v53 = &unk_100021320;
  v22 = _Block_copy(&aBlock);
  v23 = [v17 actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  [v20 setDismissButtonAction:v23];

  v24 = [v20 contentView];
  v25 = sub_10000DAD8();
  [v24 addSubview:v25];

  v49 = objc_opt_self();
  sub_100003320(&qword_100026940, qword_100014FB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100014F60;
  v27 = OBJC_IVAR____TtC23NewDeviceSetupUIService30FinalizationCardViewController____lazy_storage___checkmarkImage;
  v28 = [*&v20[OBJC_IVAR____TtC23NewDeviceSetupUIService30FinalizationCardViewController____lazy_storage___checkmarkImage] topAnchor];
  v29 = [v20 contentView];
  v30 = [v29 mainContentGuide];

  v31 = [v30 topAnchor];
  v32 = [v28 constraintGreaterThanOrEqualToAnchor:v31];

  *(v26 + 32) = v32;
  v33 = [*&v20[v27] centerXAnchor];
  v34 = [v20 contentView];
  v35 = [v34 mainContentGuide];

  v36 = [v35 centerXAnchor];
  v37 = [v33 constraintEqualToAnchor:v36];

  *(v26 + 40) = v37;
  v38 = [*&v20[v27] centerYAnchor];
  v39 = [v20 contentView];
  v40 = [v39 mainContentGuide];

  v41 = [v40 centerYAnchor];
  v42 = [v38 constraintEqualToAnchor:v41];

  *(v26 + 48) = v42;
  v43 = [*&v20[v27] bottomAnchor];
  v44 = [v20 contentView];
  v45 = [v44 mainContentGuide];

  v46 = [v45 bottomAnchor];
  v47 = [v43 constraintLessThanOrEqualToAnchor:v46];

  *(v26 + 56) = v47;
  sub_100004320();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:isa];
}

uint64_t sub_10000E318()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000109C0(0);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000E3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinalizationCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E490()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E50C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000E550(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_10000E5BC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation____lazy_storage___proximitySessionManager;
  swift_beginAccess();
  sub_1000125E4(&v1[v3], &v13, &qword_100027080, &qword_100015688);
  if (v14)
  {
    return sub_1000126AC(&v13, a1);
  }

  sub_10001264C(&v13, &qword_100027080, &qword_100015688);
  v5 = *&v1[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_device];
  if (os_variant_has_internal_content() && (v6 = *&v1[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__akAccountManager]) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
  }

  v8 = v7;
  v9 = type metadata accessor for ProximitySessionManager();
  v10 = swift_allocObject();
  v11 = v1;
  v12 = sub_100011BB8(v5, v11, v8, v10);

  a1[3] = v9;
  a1[4] = &off_100020EB0;
  *a1 = v12;
  sub_10001241C(a1, &v13);
  swift_beginAccess();
  sub_100012480(&v13, &v1[v3]);
  return swift_endAccess();
}

uint64_t sub_10000E750()
{
  sub_10001241C(&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_hardwareTypeManager], v32);
  if (os_variant_has_internal_content() && (v1 = *&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__akAccountManager]) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = [objc_opt_self() sharedInstance];
  }

  v3 = v2;
  v4 = v33;
  v5 = sub_100011530(v32, v33);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v5, v5);
  v8 = (v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v30 = type metadata accessor for HardwareTypeManager();
  v31 = &off_100020A08;
  v29[0] = v10;
  v11 = objc_allocWithZone(type metadata accessor for InitialProximityCardViewController());
  v12 = v30;
  v13 = sub_100011530(v29, v30);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13, v13);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = v0;
  v20 = sub_100011F90(v19, v18, v3, v11);

  sub_1000057CC(v29);
  sub_1000057CC(v32);
  v21 = OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController;
  v22 = [*&v19[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController] presentProxCardFlowWithDelegate:v19 initialViewController:v20];
  v23 = *&v19[v21];
  *&v19[v21] = v22;

  if ((os_variant_has_internal_content() & 1) != 0 && (v25 = *&v19[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler], v24 = *&v19[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8], v25))
  {
    v26 = *&v19[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8];

    v25(0);

    v27 = v25;
  }

  else
  {

    v27 = 0;
  }

  return sub_10000617C(v27);
}

void sub_10000EA1C()
{
  v1 = OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentPairingStatus;
  if (v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentPairingStatus] - 1 < 2)
  {
    v2 = [*&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController] topViewController];
    if (v2)
    {
      v22 = v2;
      sub_100012390();
      sub_100003320(&qword_100027078, &qword_100015680);
      swift_dynamicCast();
      v3 = v20;
      v4 = v21;
      sub_100005734(v19, v20);
      (*(v4 + 8))(v3, v4);
      sub_1000057CC(v19);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentPairingStatus])
  {
    v16 = [objc_opt_self() sharedManager];
    if (!v16)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v17 = v16;
    v18 = String._bridgeToObjectiveC()();
    [v17 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v18];

    goto LABEL_11;
  }

  v5 = [objc_opt_self() sharedManager];
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  [v6 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v7];

  v0[v1] = 1;
  v8 = objc_allocWithZone(type metadata accessor for ScannerCardViewController());
  v9 = v0;
  v18 = sub_100011A14(v9, v8);
  [*&v9[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController] pushViewController:v18 animated:1];
  has_internal_content = os_variant_has_internal_content();
  v11 = v18;
  if (has_internal_content)
  {
    v12 = &v9[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler];
    v13 = *&v9[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler];
    v14 = *(v12 + 1);
    if (v13)
    {
      v15 = *(v12 + 1);

      v13(3);
      sub_10000617C(v13);
LABEL_11:

      return;
    }

    v11 = v18;
  }

  sub_10000617C(0);
}

void sub_10000ECF4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentPairingStatus) = 3;
  v2 = [objc_opt_self() sharedManager];
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v4];

    v5 = type metadata accessor for GatheringDataViewController();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC23NewDeviceSetupUIService27GatheringDataViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v14.receiver = v6;
    v14.super_class = v5;
    v7 = objc_msgSendSuper2(&v14, "initWithContentView:", 0);
    *&v7[OBJC_IVAR____TtC23NewDeviceSetupUIService27GatheringDataViewController_delegate + 8] = &off_100021418;
    swift_unknownObjectWeakAssign();
    [*(v1 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController) pushViewController:v7 animated:1];
    sub_10000E5BC(v13);
    v8 = *sub_100005734(v13, v13[3]);
    sub_100008ECC();
    sub_1000057CC(v13);
    if (os_variant_has_internal_content() && (v9 = v1 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler, v10 = *(v1 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler), v11 = *(v9 + 8), v10))
    {
      v12 = *(v9 + 8);

      v10(5);
      sub_10000617C(v10);
    }

    else
    {

      sub_10000617C(0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10000EEB8()
{
  *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentPairingStatus) = 2;
  sub_10000E5BC(v9);
  v1 = *(*sub_100005734(v9, v9[3]) + 40);
  if (v1)
  {
    [v1 setPasswordType:2];
  }

  sub_1000057CC(v9);
  v2 = type metadata accessor for ManualEntryCardViewController();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC23NewDeviceSetupUIService29ManualEntryCardViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC23NewDeviceSetupUIService29ManualEntryCardViewController_textView] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = objc_msgSendSuper2(&v8, "initWithContentView:", 0);
  *&v4[OBJC_IVAR____TtC23NewDeviceSetupUIService29ManualEntryCardViewController_delegate + 8] = &off_100021418;
  swift_unknownObjectWeakAssign();
  [*(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController) pushViewController:v4 animated:1];
  if (os_variant_has_internal_content() && (v6 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler), v5 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8), v6))
  {
    v7 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8);

    v6(4);
    sub_10000617C(v6);
  }

  else
  {

    sub_10000617C(0);
  }
}

void sub_10000F020()
{
  if (os_variant_has_internal_content() && v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__skipAppleAccountForTesting] == 1)
  {
    v1 = [objc_opt_self() sharedManager];
    if (v1)
    {
      v2 = v1;
      v3 = String._bridgeToObjectiveC()();
      [v2 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v3];

      sub_10000F28C();
      return;
    }

LABEL_16:
    __break(1u);
    return;
  }

  sub_10000E5BC(v14);
  v4 = *(*sub_100005734(v14, v14[3]) + 40);
  if (!v4 || (v5 = [v4 messageSessionTemplate]) == 0)
  {
    sub_1000057CC(v14);
    v11 = [objc_opt_self() sharedManager];
    if (v11)
    {
      v12 = v11;
      v13 = String._bridgeToObjectiveC()();
      [v12 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v13];

      sub_1000109C0(2u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  sub_1000057CC(v14);
  v7 = sub_100005734(&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_hardwareTypeManager], *&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_hardwareTypeManager + 24]);
  v8 = sub_100011690(v6, v0, *v7);
  [*&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController] pushViewController:v8 animated:1];
  if (os_variant_has_internal_content() && (v10 = *&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler], v9 = *&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8], v10))
  {

    v10(6);
    sub_10000617C(v10);
  }

  else
  {

    sub_10000617C(0);
  }
}

void sub_10000F28C()
{
  v1 = type metadata accessor for FinalizationCardViewController();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC23NewDeviceSetupUIService30FinalizationCardViewController_delegate + 8] = 0;
  v3 = swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC23NewDeviceSetupUIService30FinalizationCardViewController____lazy_storage___checkmarkImage] = 0;
  *(v3 + 8) = &off_100021418;
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = v1;
  v4 = objc_msgSendSuper2(&v8, "initWithContentView:", 0);
  [*(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController) pushViewController:v4 animated:1];
  *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_completedSetup) = 1;
  if (os_variant_has_internal_content() && (v6 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler), v5 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8), v6))
  {
    v7 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8);

    v6(7);
    sub_10000617C(v6);
  }

  else
  {

    sub_10000617C(0);
  }
}

void sub_10000F3B4()
{
  v1 = type metadata accessor for NoInternetCardViewController();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController_delegate + 8] = 0;
  v3 = swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC23NewDeviceSetupUIService28NoInternetCardViewController____lazy_storage___noInternetIcon] = 0;
  *(v3 + 8) = &off_100021418;
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = v1;
  v4 = objc_msgSendSuper2(&v8, "initWithContentView:", 0);
  [*(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController) pushViewController:v4 animated:1];
  if (os_variant_has_internal_content() && (v6 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler), v5 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8), v6))
  {
    v7 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8);

    v6(2);
    sub_10000617C(v6);
  }

  else
  {

    sub_10000617C(0);
  }
}

void sub_10000F4CC()
{
  v1 = v0;
  v2 = (*(*(sub_100003320(&qword_100026E08, &qword_100015630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v45 - v3;
  if (!os_variant_has_internal_content() || *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__skipLocalAuthenticationForTesting) != 1)
  {
    v8 = objc_opt_self();
    v9 = [v8 sharedManager];
    if (!v9)
    {
      __break(1u);
      goto LABEL_36;
    }

    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    [v10 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v11];

    v12 = [objc_allocWithZone(LAContext) init];
    v46 = 0;
    v13 = [v12 canEvaluatePolicy:1025 error:&v46];
    v14 = v46;
    if (v13)
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
      type metadata accessor for MainActor();
      v16 = v14;
      v12 = v12;
      v17 = v1;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v12;
      v19[5] = 1025;
      v19[6] = v17;
      sub_10000BEAC(0, 0, v4, &unk_100015640, v19);

LABEL_31:

      return;
    }

    if (!v46)
    {
LABEL_25:
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v46 = 0xD000000000000019;
      v47 = 0x8000000100018730;
      v33 = v14;
      v34 = [v8 sharedManager];
      if (v34)
      {
        v35 = v34;
        if (v14)
        {
          v36 = _convertErrorToNSError(_:)();
        }

        else
        {
          v36 = 0;
        }

        v37 = [v35 safeErrorFromError:v36];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41._countAndFlagsBits = v38;
        v41._object = v40;
        String.append(_:)(v41);

        v42 = [v8 sharedManager];
        if (v42)
        {
          v43 = v42;
          v44 = String._bridgeToObjectiveC()();
          [v43 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v44];

          sub_1000109C0(6u);
          goto LABEL_31;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v20 = v46;
    v21 = [v20 domain];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    if ([v20 code] == -5)
    {
      v27 = [v8 sharedManager];
      if (v27)
      {
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();
        [v28 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v29];

        v30 = [v8 sharedManager];
        if (v30)
        {
          v31 = v30;
          v32 = String._bridgeToObjectiveC()();
          [v31 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v32];

          if (sub_100010FD4())
          {
            sub_1000104C0();
          }

          else
          {
            sub_10000F3B4();
          }

          return;
        }

LABEL_40:
        __break(1u);
        return;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  v5 = [objc_opt_self() sharedManager];
  if (!v5)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  [v6 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v7];

  if (sub_100010FD4())
  {

    sub_1000104C0();
  }

  else
  {

    sub_10000F3B4();
  }
}

uint64_t sub_10000FB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  type metadata accessor for MainActor();
  v6[50] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[51] = v8;
  v6[52] = v7;

  return _swift_task_switch(sub_10000FBF4, v8, v7);
}

uint64_t sub_10000FBF4()
{
  v17 = v0[48];
  v16 = v0[47];
  sub_100003320(&unk_100027030, &unk_100015420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015540;
  v0[44] = 1021;
  AnyHashable.init<A>(_:)();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v19._object = 0xE000000000000000;
  v4._object = 0x80000001000187A0;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v19);

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v6;
  v0[45] = 2;
  AnyHashable.init<A>(_:)();
  v7 = [v2 mainBundle];
  v20._object = 0xE000000000000000;
  v8._object = 0x80000001000187C0;
  v8._countAndFlagsBits = 0xD000000000000013;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v20);

  v10 = String.init(format:_:)();
  v12 = v11;

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v10;
  *(inited + 152) = v12;
  sub_100013178(inited);
  swift_setDeallocating();
  sub_100003320(&unk_100026E10, &qword_100015650);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[53] = isa;

  v0[2] = v0;
  v0[7] = v0 + 43;
  v0[3] = sub_10000FF24;
  v14 = swift_continuation_init();
  v0[39] = sub_100003320(&qword_100027040, &qword_100015658);
  v0[32] = _NSConcreteStackBlock;
  v0[33] = 1107296256;
  v0[34] = sub_1000103C4;
  v0[35] = &unk_1000214C8;
  v0[36] = v14;
  [v16 evaluatePolicy:v17 options:isa reply:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000FF24()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 432) = v3;
  v4 = *(v1 + 416);
  v5 = *(v1 + 408);
  if (v3)
  {
    v6 = sub_100010164;
  }

  else
  {
    v6 = sub_100010054;
  }

  return _swift_task_switch(v6, v5, v4);
}

id sub_100010054()
{
  v1 = v0[53];
  v2 = v0[50];

  v3 = v0[43];

  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v5 = result;
    v6 = v0[49];
    v7 = String._bridgeToObjectiveC()();
    [v5 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v7];

    v9 = sub_100010FD4(v8);
    v10 = v0[49];
    if (v9)
    {
      sub_1000104C0();
    }

    else
    {
      sub_10000F3B4();
    }

    v11 = v0[1];

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100010164()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[50];

  swift_willThrow();

  _StringGuts.grow(_:)(43);

  v4 = objc_opt_self();
  swift_errorRetain();
  result = [v4 sharedManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = v0[54];
  v8 = _convertErrorToNSError(_:)();
  v9 = [v6 safeErrorFromError:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  result = [v4 sharedManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = v0[54];
  v16 = v0[49];
  v17 = String._bridgeToObjectiveC()();
  [v14 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v17];

  sub_1000109C0(6u);
  sub_100003320(&qword_100027048, &unk_100015660);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100015090;
  swift_getErrorValue();
  v20 = v0[40];
  v19 = v0[41];
  v21 = v0[42];
  v22 = Error.localizedDescription.getter();
  *(v18 + 56) = &type metadata for String;
  *(v18 + 32) = v22;
  *(v18 + 40) = v23;
  print(_:separator:terminator:)();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000103C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100005734((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003320(&qword_100027050, &unk_1000153B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_1000104C0()
{
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    [v2 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v3];

    if (os_variant_has_internal_content())
    {
      v4 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler);
      if (v4)
      {
        v5 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8);

        v4(1);
        sub_10000617C(v4);
      }
    }

    sub_10000E5BC(v7);
    v6 = *sub_100005734(v7, v7[3]);
    sub_100007F58();
    return sub_1000057CC(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000105DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_completedSetup);
  v2 = [objc_opt_self() sharedManager];
  v3 = v2;
  if (v1 == 1)
  {
    if (v2)
    {
      v26 = String._bridgeToObjectiveC()();
      [v3 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v26];

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (!v2)
  {
    goto LABEL_13;
  }

  v4 = String._bridgeToObjectiveC()();
  [v3 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v4];

  sub_10001241C(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_hardwareTypeManager, v32);
  v5 = v33;
  v6 = sub_100011530(v32, v33);
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v6, v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for HardwareTypeManager();
  v30 = v12;
  v31 = &off_100020A08;
  v29[0] = v11;
  v13 = type metadata accessor for ConnectionErrorCardViewController();
  v14 = objc_allocWithZone(v13);
  v15 = v30;
  v16 = sub_100011530(v29, v30);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16, v16);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v28[3] = v12;
  v28[4] = &off_100020A08;
  v28[0] = v21;
  *&v14[OBJC_IVAR____TtC23NewDeviceSetupUIService33ConnectionErrorCardViewController_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_100021418;
  swift_unknownObjectWeakAssign();
  sub_10001241C(v28, &v14[OBJC_IVAR____TtC23NewDeviceSetupUIService33ConnectionErrorCardViewController_hardwareTypeManager]);
  v27.receiver = v14;
  v27.super_class = v13;
  v22 = objc_msgSendSuper2(&v27, "initWithContentView:", 0);
  sub_1000057CC(v28);
  sub_1000057CC(v29);
  sub_1000057CC(v32);
  [*(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController) pushViewController:v22 animated:1];
  if (os_variant_has_internal_content() && (v24 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler), v23 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8), v24))
  {
    v25 = *(v0 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler + 8);

    v24(8);
    sub_10000617C(v24);
  }

  else
  {

    sub_10000617C(0);
  }
}

void sub_1000109C0(unsigned __int8 a1)
{
  if (v1[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentlyExiting] == 1)
  {
    v2 = [objc_opt_self() sharedManager];
    if (v2)
    {
      v3 = v2;
      v18 = String._bridgeToObjectiveC()();
      [v3 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v18];

      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = v1;
  v1[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentlyExiting] = 1;
  _StringGuts.grow(_:)(23);

  aBlock = 0xD000000000000015;
  v20 = 0x8000000100018620;
  v6._countAndFlagsBits = sub_100004510(a1);
  String.append(_:)(v6);

  v7 = [objc_opt_self() sharedManager];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  [v8 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v9];

  sub_10000E5BC(&aBlock);
  v10 = sub_100005734(&aBlock, v22);
  v11 = *v10;
  v12 = *(*v10 + 40);
  if (v12)
  {
    [v12 invalidate];
  }

  [*(v11 + 56) invalidate];
  sub_1000057CC(&aBlock);
  v13 = *&v4[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController];
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  v23 = sub_10001150C;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10000E50C;
  v22 = &unk_100021478;
  v15 = _Block_copy(&aBlock);
  v16 = v13;
  v17 = v4;

  [v16 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_100010C94(uint64_t a1, uint64_t a2)
{
  if (!os_variant_has_internal_content() || (v4 = *(a1 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__overrideExitHandler)) == 0)
  {
    exit(-a2);
  }

  v5 = *(a1 + OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__overrideExitHandler + 8);

  v4(a2);

  return sub_10000617C(v4);
}

uint64_t sub_100010D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100010DB8, v6, v5);
}

uint64_t sub_100010DB8()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1000109C0(0xAu);
  v3 = v0[1];

  return v3();
}

id sub_100011194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDSUSNavigation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for NDSUSNavigation.PairingStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDSUSNavigation.PairingStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000113F4()
{
  result = qword_100027020;
  if (!qword_100027020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027020);
  }

  return result;
}

void sub_100011448(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000114D4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100011518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011530(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100011580()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000115C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BD70;

  return sub_10000FB58(a1, v4, v5, v6, v7, v8);
}

id sub_100011690(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = type metadata accessor for HardwareTypeManager();
  v32 = &off_100020A08;
  v30[0] = a3;
  v6 = objc_allocWithZone(AISSetupContext);

  v7 = [v6 init];
  sub_100003320(&qword_100027058, &qword_100015670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015090;
  v9 = AIDAServiceTypeCloud;
  *(inited + 32) = AIDAServiceTypeCloud;
  v10 = v9;
  sub_10001207C(inited);
  swift_setDeallocating();
  sub_10001229C(inited + 32);
  type metadata accessor for AIDAServiceType(0);
  sub_1000122F8();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v7 setRequiredServiceTypes:isa];

  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_100015550;
  v13 = AIDAServiceTypeStore;
  *(v12 + 32) = AIDAServiceTypeStore;
  v14 = AIDAServiceTypeGameCenter;
  v15 = AIDAServiceTypeMessages;
  *(v12 + 40) = AIDAServiceTypeGameCenter;
  *(v12 + 48) = v15;
  v16 = AIDAServiceTypeFaceTime;
  *(v12 + 56) = AIDAServiceTypeFaceTime;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  sub_10001207C(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  v21 = Set._bridgeToObjectiveC()().super.isa;

  [v7 setDesiredServiceTypes:v21];

  [v7 setShouldBackgroundDesiredServices:1];
  [v7 setLocalRole:1];
  [v7 setRemoteRole:3];
  [v7 setMessageSessionTemplate:a1];
  v22 = *sub_100005734(v30, v31);
  sub_100002874();
  v23 = String._bridgeToObjectiveC()();

  [v7 setServerDeviceModel:v23];

  v24 = [objc_allocWithZone(AISSetupViewController) initWithContext:v7];
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = &off_100021418;
  aBlock[4] = sub_100012388;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011448;
  aBlock[3] = &unk_100021518;
  v26 = _Block_copy(aBlock);
  v27 = a2;

  [v24 setReportHandler:v26];
  _Block_release(v26);

  sub_1000057CC(v30);
  return v24;
}

char *sub_100011A14(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannerVC;
  *&a2[v5] = [objc_allocWithZone(VPScannerProxCardViewController) init];
  v6 = &a2[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannedCode];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a2[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = *&a2[v5];
  v16.receiver = a2;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, "initWithScannerEngine:", v7);
  v9 = *&v8[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannerVC];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_100012414;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000E550;
  v15[3] = &unk_100021568;
  v11 = _Block_copy(v15);
  v12 = v8;
  v13 = v9;

  [v13 setScannedCodeHandler:v11];
  _Block_release(v11);

  *&v12[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_delegate + 8] = &off_100021418;
  swift_unknownObjectWeakAssign();

  return v12;
}

void *sub_100011BB8(void *a1, uint64_t a2, void *a3, void *a4)
{
  a4[4] = 0;
  swift_unknownObjectWeakInit();
  a4[5] = 0;
  a4[6] = 0;
  a4[7] = 0;
  a4[9] = 0;
  a4[10] = 0;
  _StringGuts.grow(_:)(31);

  v7 = [a1 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v13 = result;
    v14 = String._bridgeToObjectiveC()();
    [v13 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v14];

    a4[2] = a1;
    a4[4] = &off_1000213D8;
    swift_unknownObjectWeakAssign();
    a4[8] = a3;
    v15 = objc_opt_self();
    v16 = a1;
    v17 = a3;
    v18 = [v15 defaultCenter];

    v19 = String._bridgeToObjectiveC()();
    [v18 addObserver:a4 selector:"extensionDeviceLost" name:v19 object:0];

    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100011DC4(void *a1, void *a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentlyExiting] = 0;
  v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_currentPairingStatus] = 0;
  v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_completedSetup] = 0;
  v7 = &v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation____lazy_storage___proximitySessionManager];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__skipLocalAuthenticationForTesting] = 0;
  v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__skipAppleAccountForTesting] = 0;
  v8 = &v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__navigationMovedOnHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__overrideExitHandler];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__hasInternet] = 2;
  *&v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation__akAccountManager] = 0;
  *&v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_cardNavigationController] = a2;
  *&v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_device] = a1;
  sub_1000125E4(a3, &v19, &qword_100027088, qword_1000156A0);
  if (v20)
  {
    sub_1000126AC(&v19, v21);
    sub_1000126AC(v21, &v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_hardwareTypeManager]);
    v10 = a2;
  }

  else
  {
    v11 = a2;
    v12 = a1;
    sub_10001264C(&v19, &qword_100027088, qword_1000156A0);
    v13 = type metadata accessor for HardwareTypeManager();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100015560;
    *(v14 + 32) = xmmword_100015560;
    *(v14 + 48) = v12;
    v15 = &v3[OBJC_IVAR____TtC23NewDeviceSetupUIService15NDSUSNavigation_hardwareTypeManager];
    v15[3] = v13;
    v15[4] = &off_100020A08;
    *v15 = v14;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for NDSUSNavigation();
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10001264C(a3, &qword_100027088, qword_1000156A0);
  return v16;
}

id sub_100011F90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v13[3] = type metadata accessor for HardwareTypeManager();
  v13[4] = &off_100020A08;
  v13[0] = a2;
  *&a4[OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController_delegate + 8] = 0;
  v8 = swift_unknownObjectWeakInit();
  v9 = &a4[OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController____lazy_storage___constructedSubtitle];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v8 + 8) = &off_100021418;
  swift_unknownObjectWeakAssign();
  sub_10001241C(v13, &a4[OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController_hardwareTypeManager]);
  *&a4[OBJC_IVAR____TtC23NewDeviceSetupUIService34InitialProximityCardViewController_accountManager] = a3;
  v12.receiver = a4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithContentView:", 0);
  sub_1000057CC(v13);
  return v10;
}

void *sub_10001207C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003320(&qword_100027068, &qword_100015678);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

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
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10001229C(uint64_t a1)
{
  type metadata accessor for AIDAServiceType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000122F8()
{
  result = qword_100027060;
  if (!qword_100027060)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027060);
  }

  return result;
}

uint64_t sub_100012350()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100012388(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_100013560(a1, a2);
}

unint64_t sub_100012390()
{
  result = qword_100027070;
  if (!qword_100027070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100027070);
  }

  return result;
}

uint64_t sub_1000123DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001241C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003320(&qword_100027080, &qword_100015688);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000124F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B96C;

  return sub_100010D20(a1, v4, v5, v6);
}

uint64_t sub_1000125E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003320(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001264C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003320(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000126AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1000126DC()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ManualEntryCardViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  [v0 setDismissalType:1];
  [v0 setNumberOfDigits:6];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v20._object = 0xE000000000000000;
  v3._object = 0x8000000100018AD0;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v20);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v21._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x8000000100018AF0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v21);

  String.init(format:_:)();

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = &v0[OBJC_IVAR____TtC23NewDeviceSetupUIService29ManualEntryCardViewController_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = *(v10 + 1);
  v13 = swift_allocObject();
  v13[2] = Strong;
  v13[3] = v12;
  v13[4] = v0;
  swift_unknownObjectRetain();
  v14 = v0;
  v15 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100004314;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000082BC;
  aBlock[3] = &unk_1000215F0;
  v16 = _Block_copy(aBlock);
  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];

  swift_unknownObjectRelease();
  _Block_release(v16);

  [v14 setDismissButtonAction:v17];
}

uint64_t sub_100012A18(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ManualEntryCardViewController();
  objc_msgSendSuper2(&v9, "didCompleteTextEntry:", a1);
  v3 = *&v1[OBJC_IVAR____TtC23NewDeviceSetupUIService29ManualEntryCardViewController_textView];
  *&v1[OBJC_IVAR____TtC23NewDeviceSetupUIService29ManualEntryCardViewController_textView] = a1;
  v4 = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = [v4 text];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000E5BC(v8);
    v7 = *sub_100005734(v8, v8[3]);
    sub_100009440();
    swift_unknownObjectRelease();

    return sub_1000057CC(v8);
  }

  return result;
}

void sub_100012B6C()
{
  v1 = *&v0[OBJC_IVAR____TtC23NewDeviceSetupUIService29ManualEntryCardViewController_textView];
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 setText:v3];
  }

  v4 = [objc_opt_self() mainBundle];
  v15._object = 0xE000000000000000;
  v5._object = 0x8000000100018A70;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v15);

  sub_100003320(&qword_1000270C8, &qword_100015700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015090;
  *(inited + 32) = NSForegroundColorAttributeName;
  v8 = objc_opt_self();
  v9 = NSForegroundColorAttributeName;
  v10 = [v8 systemRedColor];
  *(inited + 64) = sub_100012E88();
  *(inited + 40) = v10;
  sub_1000132B4(inited);
  swift_setDeallocating();
  sub_1000133DC(inited + 32);
  v11 = objc_allocWithZone(NSAttributedString);
  v12 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_100013444();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithString:v12 attributes:isa];

  [v0 setAttributedSubtitle:v14];
}

id sub_100012DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManualEntryCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100012E88()
{
  result = qword_1000270D0;
  if (!qword_1000270D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000270D0);
  }

  return result;
}

unint64_t sub_100012ED4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100012FAC(a1, v4);
}

unint64_t sub_100012F18(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100013074(a1, v4);
}

unint64_t sub_100012FAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100013504(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100007EA8(v8);
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

unint64_t sub_100013074(uint64_t a1, uint64_t a2)
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

unint64_t sub_100013178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003320(&qword_1000270E8, &qword_100015718);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000125E4(v4, v13, &unk_100026E10, &qword_100015650);
      result = sub_100012ED4(v13);
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
      result = sub_10001349C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000132B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003320(&qword_1000270E0, &qword_100015710);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000125E4(v4, &v11, &qword_1000270D8, &qword_100015708);
      v5 = v11;
      result = sub_100012F18(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001349C(&v12, (v3[7] + 32 * result));
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

uint64_t sub_1000133DC(uint64_t a1)
{
  v2 = sub_100003320(&qword_1000270D8, &qword_100015708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100013444()
{
  result = qword_1000268F8;
  if (!qword_1000268F8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000268F8);
  }

  return result;
}

_OWORD *sub_10001349C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000134AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000134EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100013560(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    _StringGuts.grow(_:)(44);

    v3 = [v2 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    String.append(_:)(v7);

    v8 = [objc_opt_self() sharedManager];
    if (!v8)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    [v9 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v10];

LABEL_9:

    v21 = [objc_opt_self() sharedManager];
    if (v21)
    {
      v22 = v21;
      v23 = String._bridgeToObjectiveC()();
      [v22 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v23];

      sub_10000F28C();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  _StringGuts.grow(_:)(44);

  v12 = objc_opt_self();
  v13 = [v12 sharedManager];
  if (v13)
  {
    v14 = v13;
    if (a2)
    {
      a2 = _convertErrorToNSError(_:)();
    }

    v15 = [v14 safeErrorFromError:a2];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20 = [v12 sharedManager];
    if (!v20)
    {
      goto LABEL_14;
    }

    v9 = v20;
    v10 = String._bridgeToObjectiveC()();
    [v9 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v10];
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}