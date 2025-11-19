id DTResolveCity(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [NSTimeZone timeZoneWithName:v1];
    if (v2)
    {
      v3 = +[ALCityManager sharedManager];
      v4 = [v3 citiesWithTimeZone:v2];
    }

    else
    {
      v6 = [v1 rangeOfString:{@", "}];
      v7 = +[ALCityManager sharedManager];
      v3 = v7;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [v7 cityForClassicIdentifier:v1];

        v8 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v4 = [v7 citiesMatchingName:v1 localized:0];
    }

    v8 = v4;

    if (v8 && [v8 count])
    {
      v5 = [v8 objectAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = +[ALCityManager sharedManager];
    v5 = [v2 bestCityForLegacyCity:v1];
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[ALCity alloc] initWithProperties:v1];
  }

  else
  {
    v5 = 0;
  }

LABEL_18:

  return v5;
}

id DTCityNameForTimeZone(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = +[ALCityManager sharedManager];
    v3 = [v2 defaultCityForTimeZone:v1];

    v4 = [v3 name];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100002F34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174C68, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002F88(char a1)
{
  if (a1)
  {
    return 0x73676E6974746573;
  }

  else
  {
    return 0x7070416E65706FLL;
  }
}

uint64_t sub_100002FE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100002F34(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100003014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002F88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100003040(char a1)
{
  v2 = type metadata accessor for ActionInfoDestination(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    if (qword_1001880C0 != -1)
    {
      swift_once();
    }

    v6 = qword_1001880C8;
    v7 = unk_1001880D0;
    v16 = &type metadata for MessagesActionInfoType;
    v17 = sub_100004160();
    v15[0] = 1;

    return sub_1000ED3F8(v6, v7, 0xD000000000000057, 0x8000000100133810, v15);
  }

  else
  {
    *v5 = 0xD000000000000013;
    v5[1] = 0x8000000100133870;
    swift_storeEnumTagMultiPayload();
    if (qword_1001880D8 != -1)
    {
      swift_once();
    }

    v9 = qword_1001880E0;
    v10 = *algn_1001880E8;
    v16 = &type metadata for MessagesActionInfoType;
    v17 = sub_100004160();
    v15[0] = 0;
    v11 = type metadata accessor for ActionInfo(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    return sub_1000EDD44(v5, v9, v10, 1, v15, 0, 0);
  }
}

uint64_t sub_100003210()
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
  qword_1001880C8 = result;
  unk_1001880D0 = v5;
  return result;
}

uint64_t sub_100003318()
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
  qword_1001880E0 = result;
  *algn_1001880E8 = v5;
  return result;
}

uint64_t sub_10000343C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_100004900())
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_1000048A8();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    sub_1000048D4();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    sub_100004890();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_100003560(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_100004900())
  {
    type metadata accessor for _TagTraitWritingModifier();
    sub_1000048E0();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_1000048A8();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    sub_1000048E0();
    type metadata accessor for Optional();
    sub_100004890();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100003704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreArticleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003768(uint64_t *a1, uint64_t *a2)
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

uint64_t variable initialization expression of Defaults._lastNotifiedAboutVPN@<X0>(void *a1@<X8>)
{
  v2 = *(sub_100003768(&qword_100188460, &qword_100120AB0) + 28);
  v3 = type metadata accessor for Date();
  result = sub_100003CE8(a1 + v2, 1, 1, v3);
  *a1 = 0xD000000000000019;
  a1[1] = 0x80000001001337F0;
  return result;
}

NSString sub_100003868@<X0>(void *a1@<X8>)
{
  result = sub_100004128();
  *a1 = result;
  return result;
}

uint64_t sub_100003894()
{
  sub_1000048C0();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000038BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100003EAC();
}

uint64_t sub_1000038E0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001E344(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_100003914@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10000395C(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_1001885B0, type metadata accessor for ISImageDescriptorName);
  v3 = sub_100003E1C(&qword_1001885B8, type metadata accessor for ISImageDescriptorName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003A60(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_100188590, type metadata accessor for LaunchOptionsKey);
  v3 = sub_100003E1C(&qword_100188598, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003B1C(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_1001885A0, type metadata accessor for Role);
  v3 = sub_100003E1C(&qword_1001885A8, type metadata accessor for Role);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003BD8(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_100188490, type metadata accessor for AMSBagKey);
  v3 = sub_100003E1C(&qword_100188498, type metadata accessor for AMSBagKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 sub_100003D10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return _s11SupportFlow19WiFiDiagnosticsDataV17isPersonalHotspotSbvpfi_0();
  }
}

uint64_t sub_100003D3C(uint64_t result, int a2, int a3)
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

uint64_t sub_100003E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003EAC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100003F30()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003F84()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100003FF8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004030(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000040A8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100004128()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

unint64_t sub_100004160()
{
  result = qword_1001884A0;
  if (!qword_1001884A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001884A0);
  }

  return result;
}

__n128 sub_1000041DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000041E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004208(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MessagesActionInfoType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000043BCLL);
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

unint64_t sub_100004504(uint64_t a1)
{
  result = sub_100004160();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100004530()
{
  result = qword_100188548;
  if (!qword_100188548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188548);
  }

  return result;
}

unint64_t sub_10000477C(uint64_t a1)
{
  result = sub_1000047A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000047A4()
{
  result = qword_100188588;
  if (!qword_100188588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188588);
  }

  return result;
}

void sub_10000480C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000048E0()
{

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100004900()
{

  return sub_10011B6F8(2, 26, 0, 0);
}

unint64_t sub_100004984()
{
  result = qword_100188690;
  if (!qword_100188690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188690);
  }

  return result;
}

uint64_t sub_1000049E4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1000049F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_100004A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100004AA8@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v10 = sub_10010C320();
  v12 = v11;

  if (qword_100188380 != -1)
  {
    swift_once();
  }

  v14 = qword_1001A5980;
  v13 = *algn_1001A5988;
  *(a2 + 40) = &type metadata for AirPodsStepProvider;
  v15 = sub_100004C8C();
  *(a2 + 16) = HIBYTE(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  *(a2 + 64) = v13;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
}

unint64_t sub_100004C8C()
{
  result = qword_100188698;
  if (!qword_100188698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188698);
  }

  return result;
}

unint64_t sub_100004CE4()
{
  result = qword_1001886A0;
  if (!qword_1001886A0)
  {
    sub_100004D48(&unk_1001893B0, &unk_100121480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886A0);
  }

  return result;
}

uint64_t sub_100004D48(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for BatteryStepProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BatteryStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100004EE4);
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

__n128 sub_100004F40@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 2:
      type metadata accessor for FlowViewDataProvider(0);
      sub_1000058FC();
      sub_10000580C(v3, v4);
      sub_100005914();
      sub_100005930();
      v62 = v6;
      v64 = v5;
      LOBYTE(v66) = 0;
      sub_100005600();
      sub_100005654();

      sub_100005960(v7, &type metadata for BatteryServiceNeededView, &type metadata for BatteryReportUnavailableView, v8, v9, v10, v11, v12, v56);
      v13 = _ConditionalContent<>.init(storage:)();
      sub_10000594C(v13, v14, v15, v16, v17, v18, v19, v20, v57, v61, v62, v64, v66, v67, v68);
      break;
    case 3:
      type metadata accessor for FlowViewDataProvider(0);
      sub_1000058FC();
      sub_10000580C(v21, v22);
      sub_100005914();
      sub_100005930();
      v63 = v24 + 3;
      v65 = v23;
      LOBYTE(v66) = 1;
      sub_100005600();
      sub_100005654();

      sub_100005960(v25, &type metadata for BatteryServiceNeededView, &type metadata for BatteryReportUnavailableView, v26, v27, v28, v29, v30, v56);
      v31 = _ConditionalContent<>.init(storage:)();
      sub_10000594C(v31, v32, v33, v34, v35, v36, v37, v38, v59, v61, v63, v65, v66, v67, v68);
      break;
    default:
      type metadata accessor for BatteryFlowViewModel();
      sub_1000058E4();
      sub_10000580C(v39, v40);
      v60 = sub_100005914();
      sub_10000572C();

      sub_100005960(v41, &type metadata for BatteryNormalHealthView, v42, v43, v44, v45, v46, v47, v60);
      _ConditionalContent<>.init(storage:)();
      v58 = v68;
      break;
  }

  sub_100003768(&qword_1001886E8, &qword_100121608);
  sub_100003768(&qword_1001886F0, &qword_100121610);
  sub_1000056A8();
  v48 = sub_100005780();
  sub_100005960(v48, v49, v50, v51, v48, v52, v53, v54, v58);
  _ConditionalContent<>.init(storage:)();

  result = v68;
  *a2 = v68;
  *(a2 + 16) = v69;
  *(a2 + 32) = v70;
  *(a2 + 33) = v71;
  return result;
}

unint64_t sub_100005238(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174CB8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100005284(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100005334@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005238(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100005364@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100005284(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100005390(void *a1@<X8>)
{
  v3 = *v1;
  sub_1000E7390();
  *a1 = v4;
  a1[1] = v5;
}

unint64_t sub_1000053F0()
{
  result = qword_1001886A8;
  if (!qword_1001886A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886A8);
  }

  return result;
}

unint64_t sub_100005444()
{
  result = qword_1001886B0;
  if (!qword_1001886B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886B0);
  }

  return result;
}

uint64_t sub_1000054C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100005500()
{
  result = qword_1001886B8;
  if (!qword_1001886B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886B8);
  }

  return result;
}

unint64_t sub_100005554()
{
  result = qword_1001886C0;
  if (!qword_1001886C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886C0);
  }

  return result;
}

unint64_t sub_1000055AC()
{
  result = qword_1001886C8;
  if (!qword_1001886C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886C8);
  }

  return result;
}

unint64_t sub_100005600()
{
  result = qword_1001886D8;
  if (!qword_1001886D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886D8);
  }

  return result;
}

unint64_t sub_100005654()
{
  result = qword_1001886E0;
  if (!qword_1001886E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886E0);
  }

  return result;
}

unint64_t sub_1000056A8()
{
  result = qword_1001886F8;
  if (!qword_1001886F8)
  {
    sub_100004D48(&qword_1001886E8, &qword_100121608);
    sub_10000572C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886F8);
  }

  return result;
}

unint64_t sub_10000572C()
{
  result = qword_100188700;
  if (!qword_100188700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188700);
  }

  return result;
}

unint64_t sub_100005780()
{
  result = qword_100188708;
  if (!qword_100188708)
  {
    sub_100004D48(&qword_1001886F0, &qword_100121610);
    sub_100005600();
    sub_100005654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188708);
  }

  return result;
}

uint64_t sub_10000580C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100005858()
{
  result = qword_100188718;
  if (!qword_100188718)
  {
    sub_100004D48(qword_100188720, &qword_100121618);
    sub_1000056A8();
    sub_100005780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188718);
  }

  return result;
}

uint64_t sub_100005914()
{

  return Environment.init<A>(_:)();
}

uint64_t sub_10000596C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000059A8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000059C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000059DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100005A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v26 = *(a1 + 16);
  type metadata accessor for Optional();
  sub_100004D48(&qword_1001887A8, &qword_100121728);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_100006A70();
  WitnessTable = swift_getWitnessTable();
  v3 = type metadata accessor for FlowStepStackView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = *v2;
  v12 = v2[1];
  memset(v30, 0, sizeof(v30));
  v13 = v2[2];
  v23 = v2[3];
  v24 = v11;
  v31 = 0;
  v32 = v13;
  v14 = v2[4];
  v22 = v2[5];
  v15 = v2[6];
  v16 = swift_allocObject();
  v17 = *(v27 + 24);
  *(v16 + 16) = v26;
  *(v16 + 24) = v17;
  v18 = *(v2 + 1);
  *(v16 + 32) = *v2;
  *(v16 + 48) = v18;
  *(v16 + 64) = *(v2 + 2);
  *(v16 + 80) = v2[6];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100006578(&v32, v29, &qword_1001887B0, &qword_100121730);
  sub_100006568(v22);
  sub_100035B04(v24, v12, v23, v14, 0, v30, sub_10000655C, v16, v8);
  sub_100006A88();
  v19 = swift_getWitnessTable();
  sub_1000C6A00(v8, v3, v19);
  v20 = *(v4 + 8);
  v20(v8, v3);
  sub_1000C6A00(v10, v3, v19);
  return (v20)(v10, v3);
}

uint64_t sub_100005D48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v53 = a3;
  v49 = sub_100003768(&qword_1001887B8, &qword_100121738);
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v49);
  v46 = &v45 - v7;
  v48 = sub_100003768(&qword_1001887A8, &qword_100121728);
  v8 = *(*(v48 - 8) + 64);
  v9 = __chkstk_darwin(v48);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v45 - v12;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v11);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = type metadata accessor for Optional();
  v54 = *(v20 - 8);
  v21 = *(v54 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v55 = &v45 - v25;
  v26 = a1[5];
  if (v26)
  {
    v27 = a1[6];

    v26(v28);
    sub_1000068F8(v26);
    v29 = v53;
    sub_1000C6A00(v17, a2, v53);
    v30 = *(v13 + 8);
    v30(v17, a2);
    sub_1000C6A00(v19, a2, v29);
    v30(v19, a2);
    (*(v13 + 32))(v24, v17, a2);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = 1;
  sub_100003CE8(v24, v31, 1, a2);
  v33 = v53;
  sub_10000625C(v24, v55);
  v34 = *(v54 + 8);
  v35 = v34(v24, v20);
  v36 = v33;
  if (a1[2])
  {
    __chkstk_darwin(v35);
    *(&v45 - 2) = v37;
    sub_100003768(&qword_1001887D8, &qword_100121740);
    sub_1000066F4();
    v38 = v46;
    Section<>.init(content:)();
    v40 = v49;
    v39 = v50;
    v41 = v38;
    v36 = v33;
    (*(v47 + 32))(v50, v41, v49);
    v32 = 0;
  }

  else
  {
    v40 = v49;
    v39 = v50;
  }

  sub_100003CE8(v39, v32, 1, v40);
  v42 = v55;
  (*(v54 + 16))(v24, v55, v20);
  v60[0] = v24;
  v43 = v51;
  sub_100006578(v39, v51, &qword_1001887A8, &qword_100121728);
  v60[1] = v43;
  v59[0] = v20;
  v59[1] = v48;
  v56 = v36;
  WitnessTable = swift_getWitnessTable();
  v58 = sub_1000065E0();
  sub_1000C2BF0(v60, 2, v59);
  sub_100006888(v39);
  v34(v42, v20);
  sub_100006888(v43);
  return v34(v24, v20);
}

uint64_t sub_10000625C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000062C8(uint64_t a1)
{
  sub_10002BF44(a1);
  swift_getKeyPath();
  sub_100003768(&qword_100188800, &qword_100121778);
  sub_100003768(&qword_1001887E8, &qword_100121748);
  sub_100006908();
  sub_100006778();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100006394(uint64_t a1)
{
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000696C(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  Environment.init<A>(_:)();

  static String.stepSectionOptionsFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100121620;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = a1;
  String.init(format:_:)();

  sub_100006834();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_100006504()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  if (v0[9])
  {
    v4 = v0[10];
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100006568(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003768(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000065E0()
{
  result = qword_1001887C0;
  if (!qword_1001887C0)
  {
    sub_100004D48(&qword_1001887A8, &qword_100121728);
    sub_100006664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887C0);
  }

  return result;
}

unint64_t sub_100006664()
{
  result = qword_1001887C8;
  if (!qword_1001887C8)
  {
    sub_100004D48(&qword_1001887B8, &qword_100121738);
    sub_1000066F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887C8);
  }

  return result;
}

unint64_t sub_1000066F4()
{
  result = qword_1001887D0;
  if (!qword_1001887D0)
  {
    sub_100004D48(&qword_1001887D8, &qword_100121740);
    sub_100006778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887D0);
  }

  return result;
}

unint64_t sub_100006778()
{
  result = qword_1001887E0;
  if (!qword_1001887E0)
  {
    sub_100004D48(&qword_1001887E8, &qword_100121748);
    sub_100006834();
    sub_10000696C(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887E0);
  }

  return result;
}

unint64_t sub_100006834()
{
  result = qword_1001887F0;
  if (!qword_1001887F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887F0);
  }

  return result;
}

uint64_t sub_100006888(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001887A8, &qword_100121728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000068F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100006908()
{
  result = qword_100188808;
  if (!qword_100188808)
  {
    sub_100004D48(&qword_100188800, &qword_100121778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188808);
  }

  return result;
}

uint64_t sub_10000696C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000069E4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Optional();
  sub_100004D48(&qword_1001887A8, &qword_100121728);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  sub_100006AA0();
  type metadata accessor for FlowStepStackView();
  sub_100006A88();

  return swift_getWitnessTable();
}

BOOL sub_100006ACC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174D38, v2);

  return v3 != 0;
}

BOOL sub_100006B24@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006ACC(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryPlacardInfoItemType(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MessagesOptionOverride(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100006CA4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100006D24()
{
  result = qword_100188818;
  if (!qword_100188818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188818);
  }

  return result;
}

unint64_t sub_100006D78()
{
  result = qword_100188820;
  if (!qword_100188820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188820);
  }

  return result;
}

uint64_t sub_100006E34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_100188830, &qword_100121818);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006EB0()
{
  result = qword_100188878;
  if (!qword_100188878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188878);
  }

  return result;
}

unint64_t sub_100006F04()
{
  result = qword_100188880;
  if (!qword_100188880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188880);
  }

  return result;
}

uint64_t sub_100006F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100006FC4()
{
  result = qword_100188888;
  if (!qword_100188888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188888);
  }

  return result;
}

unint64_t sub_100007018()
{
  result = qword_100188890;
  if (!qword_100188890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188890);
  }

  return result;
}

unint64_t sub_100007070()
{
  result = qword_100188898;
  if (!qword_100188898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188898);
  }

  return result;
}

uint64_t sub_1000070DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000711C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100007188(uint64_t a1, char a2)
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

uint64_t sub_1000072C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  sub_100007188(a1, a2 & 1);
  LOBYTE(a1) = sub_100064C48();

  v12 = &type metadata for WiFiStepProvider;
  v13 = sub_10000737C();
  v11[0] = a1;
  return sub_100018FE0(a3, a4, v11, a5);
}

unint64_t sub_10000737C()
{
  result = qword_1001888A0;
  if (!qword_1001888A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888A0);
  }

  return result;
}

unint64_t sub_1000073D4()
{
  result = qword_1001888A8;
  if (!qword_1001888A8)
  {
    _s17RestartDeviceViewVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888A8);
  }

  return result;
}

uint64_t sub_10000742C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v32 = a1;
  v9 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Logger();
  v14 = sub_100008780(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000871C();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30 = a4;
    v31 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10009CACC(v32, a2, &v33);
    _os_log_impl(&_mh_execute_header, v19, v20, "updateSession - Session ID: %s", v22, 0xCu);
    sub_1000086BC(v23);
    v5 = v4;
    sub_100008744();
    a4 = v30;
    a3 = v31;
    sub_100008744();
  }

  (*(v16 + 8))(v4, v13);
  v24 = type metadata accessor for TaskPriority();
  sub_100003CE8(v12, 1, 1, v24);
  v25 = *(v5 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient);
  type metadata accessor for MainActor();

  sub_100008460(a3, a4);
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v28 = v32;
  v27[4] = v25;
  v27[5] = v28;
  v27[6] = a2;
  v27[7] = a3;
  v27[8] = a4;
  sub_100085200();
}

uint64_t sub_1000076C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a5;
  v8[3] = a6;
  v13 = type metadata accessor for Logger();
  v8[4] = v13;
  v14 = *(v13 - 8);
  v8[5] = v14;
  v15 = *(v14 + 64) + 15;
  v8[6] = swift_task_alloc();
  v8[7] = type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v16 = async function pointer to SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)[1];
  v17 = swift_task_alloc();
  v8[9] = v17;
  *v17 = v8;
  v17[1] = sub_100007800;

  return SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)(a5, a6, a7, a8);
}

uint64_t sub_100007800()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  sub_10000870C();
  *v7 = v6;
  *(v8 + 80) = v2;

  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v11 = sub_1000079B8;
  }

  else
  {
    v11 = sub_100007954;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100007954()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 48);

  sub_10000875C();

  return v3();
}

uint64_t sub_1000079B8()
{
  v25 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];

  static Logger.supportFlowApp.getter();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = v0[5];
    v9 = v0[3];
    v22 = v0[4];
    v23 = v0[6];
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_10009CACC(v10, v9, &v24);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "updateSession - Failed to decode session data for %s, Error: %@", v11, 0x16u);
    sub_1000083A0(v12);
    sub_100008744();
    sub_1000086BC(v13);
    sub_100008744();
    sub_100008744();

    (*(v8 + 8))(v23, v22);
  }

  else
  {
    v15 = v0[10];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[6];

  sub_10000875C();

  return v20();
}

uint64_t sub_100007C58()
{
  v1 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Logger();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000871C();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "logForAppTerminate - Logging final analytics before app termination", v13, 2u);
    sub_100008744();
  }

  (*(v8 + 8))(v0, v5);
  v14 = type metadata accessor for TaskPriority();
  sub_100003CE8(v4, 1, 1, v14);
  v15 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_100085200();
}

uint64_t sub_100007E50()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = type metadata accessor for MainActor();
  v0[6] = static MainActor.shared.getter();
  v4 = async function pointer to SupportFlowSessionAnalyticsClient.logForAppTerminate()[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100007F5C;

  return SupportFlowSessionAnalyticsClient.logForAppTerminate()();
}

uint64_t sub_100007F5C()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  sub_10000870C();
  *v7 = v6;
  *(v8 + 64) = v2;

  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v11 = sub_100008114;
  }

  else
  {
    v11 = sub_1000080B0;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_1000080B0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 32);

  sub_10000875C();

  return v3();
}

uint64_t sub_100008114()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "logForAppTerminate - Failed. Error: %@", v8, 0xCu);
    sub_1000083A0(v9);
    sub_100008744();
    sub_100008744();
  }

  else
  {
    v11 = v0[8];
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v12 = v0[4];

  sub_10000875C();

  return v13();
}

uint64_t sub_1000082BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000082FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  sub_100008768(v5);

  return sub_100007E50();
}

uint64_t sub_1000083A0(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189390, &qword_1001241D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008408(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008460(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000084B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_100008408(v0[7], v0[8]);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008508()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v10 = sub_100008768(v9);

  return sub_1000076C0(v10, v11, v12, v4, v5, v6, v7, v8);
}

uint64_t sub_1000085D4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  sub_10000875C();

  return v4();
}

uint64_t sub_1000086BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000871C()
{

  return static Logger.supportFlowApp.getter();
}

uint64_t sub_100008744()
{
}

uint64_t sub_10000875C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BatteryDiagnosticsReport.ServiceLevel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000087A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1000087E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_100008858@<D0>(char a1@<W1>, uint64_t a2@<X8>)
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

  v10 = sub_10010C1F0();
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
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v19 = v21;
  *a2 = v22;
  *(a2 + 8) = v19;
  *(a2 + 64) = v17;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_100008B30(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100008B48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100008B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100008C38(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100008C9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100008CE0()
{
  sub_100003768(&qword_1001888C0, &qword_100121C48);
  sub_100004D48(&qword_1001888C8, &qword_100121C50);
  sub_100004D48(&qword_1001888D0, &qword_100121C58);
  sub_10000A5BC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return Section<>.init(content:)();
}

uint64_t sub_100008DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = type metadata accessor for AccessibilityChildBehavior();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v36);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContentMarginPlacement();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v33);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_1001888D0, &qword_100121C58);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v32 = sub_100003768(&qword_1001888C8, &qword_100121C50);
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v32);
  v17 = &v31 - v16;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v18 = sub_100003768(&qword_100188930, &qword_100121C88);
  sub_1000091B8(a1, &v13[*(v18 + 44)]);
  v19 = static Edge.Set.all.getter();
  v20 = &v13[*(sub_100003768(&qword_1001888F8, &qword_100121C68) + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  v21 = &v13[*(sub_100003768(&qword_1001888E8, &qword_100121C60) + 36)];
  v21[32] = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = 0;
  if (*(*a1 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_style) == 1)
  {
    v26 = [objc_opt_self() systemGray5Color];
    v25 = Color.init(_:)();
  }

  v27 = &v13[*(v10 + 36)];
  *v27 = v25;
  v27[1] = v22;
  v27[2] = v24;
  static Edge.Set.vertical.getter();
  static ContentMarginPlacement.scrollIndicators.getter();
  v28 = sub_10000A5BC();
  View.contentMargins(_:_:for:)();
  (*(v6 + 8))(v9, v33);
  sub_10000ABCC(v13, &qword_1001888D0, &qword_100121C58);
  static AccessibilityChildBehavior.contain.getter();
  v37 = v10;
  v38 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v32;
  View.accessibilityElement(children:)();
  (*(v34 + 8))(v5, v36);
  return (*(v14 + 8))(v17, v29);
}

uint64_t sub_1000091B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v78 = sub_100003768(&qword_100188938, &qword_100121C90);
  v3 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v76 - v4;
  v86 = sub_100003768(&qword_100188940, &qword_100121C98);
  v5 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v77 = &v76 - v6;
  v7 = sub_100003768(&qword_100188948, &qword_100121CA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v88 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v76 - v11;
  v84 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v84 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v84);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100003768(&qword_100188950, &qword_100121CA8);
  v16 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v18 = &v76 - v17;
  v83 = sub_100003768(&qword_100188958, &qword_100121CB0);
  v19 = *(v83 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v83);
  v22 = &v76 - v21;
  v81 = sub_100003768(&qword_100188960, &qword_100121CB8);
  v23 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v25 = &v76 - v24;
  v80 = sub_100003768(&qword_100188968, &qword_100121CC0);
  v26 = *(*(v80 - 8) + 64);
  v27 = __chkstk_darwin(v80);
  v85 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v76 - v30;
  __chkstk_darwin(v29);
  v91 = &v76 - v32;
  v90 = *a1;
  if (*(v90 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8))
  {
    v33 = static VerticalAlignment.top.getter();
  }

  else
  {
    v33 = static VerticalAlignment.center.getter();
  }

  *v18 = v33;
  *(v18 + 1) = 0;
  v18[16] = 0;
  v34 = sub_100003768(&qword_100188970, &qword_100121CC8);
  sub_100009AC8(a1, &v18[*(v34 + 44)]);
  static AccessibilityChildBehavior.contain.getter();
  sub_10000AAEC(&qword_100188978, &qword_100188950, &qword_100121CA8);
  View.accessibilityElement(children:)();
  (*(v12 + 8))(v15, v84);
  sub_10000ABCC(v18, &qword_100188950, &qword_100121CA8);
  v35 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  (*(v19 + 32))(v25, v22, v83);
  v44 = &v25[*(v81 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = static Edge.Set.bottom.getter();
  sub_10000AB34(v25, v31, &qword_100188960, &qword_100121CB8);
  v46 = &v31[*(v80 + 36)];
  *v46 = v45;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  v47 = 1;
  v46[40] = 1;
  sub_10000AB34(v31, v91, &qword_100188968, &qword_100121CC0);
  v48 = *(v90 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);
  if (v48)
  {
    v49 = sub_100003768(&qword_100188988, &qword_100121CD8);
    v50 = v49[10];
    swift_retain_n();
    v51 = v79;
    BorderedButtonStyle.init()();
    v52 = a1[2];
    v93 = a1[3];
    v94[0] = v52;
    v53 = a1[4];
    v54 = a1[5];
    v55 = a1[6];
    v56 = swift_allocObject();
    v57 = *(a1 + 1);
    *(v56 + 16) = *a1;
    *(v56 + 32) = v57;
    *(v56 + 48) = *(a1 + 2);
    *(v56 + 64) = a1[6];
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000AB80(v94, v92, &qword_100188990, &qword_100121CE0);
    sub_10000AB80(&v93, v92, &qword_100188990, &qword_100121CE0);
    sub_10000AB80(v94, v92, &qword_100188990, &qword_100121CE0);
    sub_10000AB80(&v93, v92, &qword_100188990, &qword_100121CE0);

    sub_100006568(v54);
    sub_10000AAA4(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    *v51 = Environment.init<A>(_:)();
    *(v51 + 8) = v58 & 1;
    *(v51 + 16) = v48;
    v59 = v93;
    *(v51 + v49[11]) = v94[0];
    *(v51 + v49[12]) = v59;
    v60 = (v51 + v49[13]);
    *v60 = sub_10000A844;
    v60[1] = v56;
    v61 = static Alignment.center.getter();
    v63 = v62;
    v64 = (v51 + *(sub_100003768(&qword_100188998, &qword_100121CE8) + 36));
    *v64 = v53;
    v64[1] = v61;
    v64[2] = v63;
    v65 = v51 + *(v78 + 36);
    v66 = enum case for RoundedCornerStyle.continuous(_:);
    v67 = type metadata accessor for RoundedCornerStyle();
    (*(*(v67 - 8) + 104))(v65, v66, v67);
    *(v65 + *(sub_100003768(&qword_1001889A0, &qword_100121CF0) + 36)) = 256;

    static String.stepSectionActionButton.getter();
    sub_10000A84C();
    v68 = v77;
    View.accessibilityIdentifier(_:)();

    sub_10000ABCC(v51, &qword_100188938, &qword_100121C90);
    v69 = v87;
    sub_10000AB34(v68, v87, &qword_100188940, &qword_100121C98);
    v47 = 0;
  }

  else
  {
    v69 = v87;
  }

  sub_100003CE8(v69, v47, 1, v86);
  v70 = v91;
  v71 = v85;
  sub_10000AB80(v91, v85, &qword_100188968, &qword_100121CC0);
  v72 = v88;
  sub_10000AB80(v69, v88, &qword_100188948, &qword_100121CA0);
  v73 = v89;
  sub_10000AB80(v71, v89, &qword_100188968, &qword_100121CC0);
  v74 = sub_100003768(&qword_100188980, &qword_100121CD0);
  sub_10000AB80(v72, v73 + *(v74 + 48), &qword_100188948, &qword_100121CA0);
  sub_10000ABCC(v69, &qword_100188948, &qword_100121CA0);
  sub_10000ABCC(v70, &qword_100188968, &qword_100121CC0);
  sub_10000ABCC(v72, &qword_100188948, &qword_100121CA0);
  return sub_10000ABCC(v71, &qword_100188968, &qword_100121CC0);
}

uint64_t sub_100009AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = type metadata accessor for AccessibilityChildBehavior();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v47);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100003768(&qword_1001889C8, &qword_100121CF8);
  v6 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v8 = &v40 - v7;
  v46 = sub_100003768(&qword_1001889D0, &qword_100121D00);
  v44 = *(v46 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v46);
  v40 = &v40 - v10;
  v11 = sub_100003768(&qword_1001889D8, &qword_100121D08);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - v17;
  __chkstk_darwin(v16);
  v41 = &v40 - v19;
  v20 = sub_100003768(&qword_1001889E0, &qword_100121D10);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v40 - v22;
  v24 = sub_100003768(&qword_1001889E8, &qword_100121D18);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v40 - v29;
  sub_10000AB80(*a1 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image, v23, &qword_1001889F0, &qword_100121D20);
  v31 = static Edge.Set.trailing.getter();
  v32 = &v23[*(v20 + 36)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  sub_10000A9E8();
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v23, &qword_1001889E0, &qword_100121D10);
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v33 = sub_100003768(&qword_100188A08, &qword_100121D28);
  sub_10000A07C(a1, &v8[*(v33 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000AAEC(&qword_100188A10, &qword_1001889C8, &qword_100121CF8);
  v34 = v40;
  View.accessibilityElement(children:)();
  (*(v45 + 8))(v5, v47);
  sub_10000ABCC(v8, &qword_1001889C8, &qword_100121CF8);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v44 + 32))(v18, v34, v46);
  memcpy(&v18[*(v12 + 44)], __src, 0x70uLL);
  v35 = v41;
  sub_10000AB34(v18, v41, &qword_1001889D8, &qword_100121D08);
  sub_10000AB80(v30, v28, &qword_1001889E8, &qword_100121D18);
  v36 = v43;
  sub_10000AB80(v35, v43, &qword_1001889D8, &qword_100121D08);
  v37 = v48;
  sub_10000AB80(v28, v48, &qword_1001889E8, &qword_100121D18);
  v38 = sub_100003768(&qword_100188A18, &qword_100121D30);
  sub_10000AB80(v36, v37 + *(v38 + 48), &qword_1001889D8, &qword_100121D08);
  sub_10000ABCC(v35, &qword_1001889D8, &qword_100121D08);
  sub_10000ABCC(v30, &qword_1001889E8, &qword_100121D18);
  sub_10000ABCC(v36, &qword_1001889D8, &qword_100121D08);
  return sub_10000ABCC(v28, &qword_1001889E8, &qword_100121D18);
}

uint64_t sub_10000A07C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_100003768(&qword_100188A20, &qword_100121D38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v61 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = v55 - v7;
  v57 = sub_100003768(&qword_100188A28, &qword_100121D40);
  v8 = *(*(v57 - 8) + 64);
  v9 = __chkstk_darwin(v57);
  v56 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v55 - v11;
  v13 = *a1;
  v14 = (*a1 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  v15 = v14[1];
  v62 = *v14;
  v63 = v15;
  v16 = sub_10000AC24();

  v55[0] = v16;
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.Weight.bold.getter();
  v22 = Text.fontWeight(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10000AC78(v17, v19, v21 & 1);

  v62 = v22;
  v63 = v24;
  v26 &= 1u;
  v64 = v26;
  v65 = v28;
  v66 = 256;
  static String.stepSectionActionTitle.getter();
  sub_100003768(&qword_100188A38, &qword_100121D48);
  v29 = sub_10000AC88();
  v59 = v12;
  v55[1] = v29;
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v22, v24, v26);

  v30 = *(v13 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8);
  if (v30)
  {
    v62 = *(v13 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description);
    v63 = v30;

    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    static Font.subheadline.getter();
    v36 = Text.font(_:)();
    v38 = v37;
    v40 = v39;

    sub_10000AC78(v31, v33, v35 & 1);

    LODWORD(v62) = static HierarchicalShapeStyle.secondary.getter();
    v41 = Text.foregroundStyle<A>(_:)();
    v43 = v42;
    LOBYTE(v33) = v44;
    v46 = v45;
    sub_10000AC78(v36, v38, v40 & 1);

    v62 = v41;
    v63 = v43;
    v64 = v33 & 1;
    v65 = v46;
    v66 = 256;
    static String.stepSectionActionDescription.getter();
    v47 = v56;
    View.accessibilityIdentifier(_:)();

    sub_10000AC78(v41, v43, v33 & 1);

    v48 = v58;
    sub_10000AB34(v47, v58, &qword_100188A28, &qword_100121D40);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v58;
    v47 = v56;
  }

  sub_100003CE8(v48, v49, 1, v57);
  v50 = v59;
  sub_10000AB80(v59, v47, &qword_100188A28, &qword_100121D40);
  v51 = v61;
  sub_10000AB80(v48, v61, &qword_100188A20, &qword_100121D38);
  v52 = v60;
  sub_10000AB80(v47, v60, &qword_100188A28, &qword_100121D40);
  v53 = sub_100003768(&qword_100188A48, &unk_100121D50);
  sub_10000AB80(v51, v52 + *(v53 + 48), &qword_100188A20, &qword_100121D38);
  sub_10000ABCC(v48, &qword_100188A20, &qword_100121D38);
  sub_10000ABCC(v50, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v51, &qword_100188A20, &qword_100121D38);
  return sub_10000ABCC(v47, &qword_100188A28, &qword_100121D40);
}

void *sub_10000A538(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result[6];
    return v1(*result);
  }

  return result;
}

uint64_t sub_10000A570()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_100008CE0();
}

unint64_t sub_10000A5BC()
{
  result = qword_1001888D8;
  if (!qword_1001888D8)
  {
    sub_100004D48(&qword_1001888D0, &qword_100121C58);
    sub_10000A674();
    sub_10000AAEC(&qword_100188920, &qword_100188928, &qword_100121C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888D8);
  }

  return result;
}

unint64_t sub_10000A674()
{
  result = qword_1001888E0;
  if (!qword_1001888E0)
  {
    sub_100004D48(&qword_1001888E8, &qword_100121C60);
    sub_10000A72C();
    sub_10000AAEC(&qword_100188910, &qword_100188918, &unk_100127450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888E0);
  }

  return result;
}

unint64_t sub_10000A72C()
{
  result = qword_1001888F0;
  if (!qword_1001888F0)
  {
    sub_100004D48(&qword_1001888F8, &qword_100121C68);
    sub_10000AAEC(&qword_100188900, &qword_100188908, &unk_100121C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888F0);
  }

  return result;
}

uint64_t sub_10000A7E4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {
    v5 = v0[8];
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10000A84C()
{
  result = qword_1001889A8;
  if (!qword_1001889A8)
  {
    sub_100004D48(&qword_100188938, &qword_100121C90);
    sub_10000A904();
    sub_10000AAEC(&qword_1001889C0, &qword_1001889A0, &qword_100121CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001889A8);
  }

  return result;
}

unint64_t sub_10000A904()
{
  result = qword_1001889B0;
  if (!qword_1001889B0)
  {
    sub_100004D48(&qword_100188998, &qword_100121CE8);
    sub_10000AAEC(&qword_1001889B8, &qword_100188988, &qword_100121CD8);
    sub_10000AAEC(&qword_100188920, &qword_100188928, &qword_100121C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001889B0);
  }

  return result;
}

unint64_t sub_10000A9E8()
{
  result = qword_1001889F8;
  if (!qword_1001889F8)
  {
    sub_100004D48(&qword_1001889E0, &qword_100121D10);
    sub_10000AAA4(&qword_100188A00, type metadata accessor for FlowImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001889F8);
  }

  return result;
}

uint64_t sub_10000AAA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000AAEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AB34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C(v5);
  v7 = *(v6 + 32);
  v8 = sub_10000AFAC();
  v9(v8);
  return v4;
}

uint64_t sub_10000AB80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C(v5);
  v7 = *(v6 + 16);
  v8 = sub_10000AFAC();
  v9(v8);
  return v4;
}

uint64_t sub_10000ABCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003768(a2, a3);
  sub_10000AF7C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_10000AC24()
{
  result = qword_100188A30;
  if (!qword_100188A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A30);
  }

  return result;
}

uint64_t sub_10000AC78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000AC88()
{
  result = qword_100188A40;
  if (!qword_100188A40)
  {
    sub_100004D48(&qword_100188A38, &qword_100121D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowStepPlacardViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000ADD8);
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

unint64_t sub_10000AE14()
{
  result = qword_100188A50;
  if (!qword_100188A50)
  {
    sub_100004D48(&qword_100188A58, qword_100121D80);
    sub_100004D48(&qword_1001888C8, &qword_100121C50);
    sub_100004D48(&qword_1001888D0, &qword_100121C58);
    sub_10000A5BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A50);
  }

  return result;
}

unint64_t sub_10000AF28()
{
  result = qword_100188A60;
  if (!qword_100188A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A60);
  }

  return result;
}

uint64_t sub_10000AF8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100003768(a3, a4);
}

__n128 sub_10000AFB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000AFCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10000B00C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000B078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v12 = &type metadata for ForgotPasswordStepProvider;
  v13 = sub_10000B138();
  v11[0] = a3;
  type metadata accessor for SharedResetPasswordViewModel();
  *(swift_allocObject() + 16) = 0;

  State.init(wrappedValue:)();
  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  result = sub_10000B18C(v11, a4 + 32);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  return result;
}

unint64_t sub_10000B138()
{
  result = qword_100188A68;
  if (!qword_100188A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A68);
  }

  return result;
}

uint64_t sub_10000B18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189310, &qword_1001221A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B200()
{
  result = qword_100188A70;
  if (!qword_100188A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A70);
  }

  return result;
}

BOOL sub_10000B274(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t sub_10000B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    v13 = (a6 & 1) == 0 && a6 != 2;
    sub_10000B4E0(a3, &__src[6]);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();
    __src[0] = Environment.init<A>(_:)();
    LOBYTE(__src[1]) = v14 & 1;
    __src[2] = a1;
    __src[3] = a2;
    __src[4] = a6;
    LOBYTE(__src[5]) = 1;
    BYTE1(__src[5]) = v13;
    __src[11] = a4;
    __src[12] = a5;
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000B5A8(__dst, __src);
    v17 = 1;

    sub_100006568(a4);
    sub_10000B604();
    sub_10000B658();
    _ConditionalContent<>.init(storage:)();
    return sub_10000B6AC(__dst);
  }

  else
  {
    strcpy(&__src[4], "SU_ERROR_OTHER");
    sub_10000B604();
    sub_10000B658();
    return _ConditionalContent<>.init(storage:)();
  }
}

BOOL sub_10000B470(uint64_t a1, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0)
  {
    return (a1 == a3) & ~a4;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (a1 != 2)
  {
    return a3 != 2 && ((a3 ^ a1) & 1) == 0;
  }

  return a3 == 2;
}

uint64_t sub_10000B4E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189310, &qword_1001221A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B550()
{
  result = qword_1001886D0;
  if (!qword_1001886D0)
  {
    type metadata accessor for FlowViewDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886D0);
  }

  return result;
}

unint64_t sub_10000B604()
{
  result = qword_100188A78;
  if (!qword_100188A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A78);
  }

  return result;
}

unint64_t sub_10000B658()
{
  result = qword_100188A80;
  if (!qword_100188A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A80);
  }

  return result;
}

uint64_t sub_10000B700(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 2;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10000B7ACLL);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      default:
        break;
    }
  }

  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10000B7C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x10000B894);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10000B8BC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10000B8D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *sub_10000B8EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000B9B8);
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

unint64_t sub_10000B9F0()
{
  result = qword_100188A88;
  if (!qword_100188A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A88);
  }

  return result;
}

uint64_t sub_10000BA4C()
{
  swift_getKeyPath();
  sub_10000C118();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + qword_100188A90);
}

uint64_t sub_10000BAC4(uint64_t result)
{
  v2 = *(v1 + qword_100188A90);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000BE48();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + qword_100188A90) = result;
  return result;
}

uint64_t sub_10000BBA0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v5 = type metadata accessor for SupportFlowIdentifier();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v13 = v12 - v11;
  *(v0 + qword_100188A90) = 2;
  ObservationRegistrar.init()();
  (*(v8 + 104))(v13, enum case for SupportFlowIdentifier.forgotPassword(_:), v5);

  sub_1001056D8();
  v15 = v14;
  swift_retain_n();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100105CC8();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_10010450C();

  return v15;
}

uint64_t sub_10000BDEC()
{
  if (sub_10000BA4C() == 2)
  {
    v0 = 0;
  }

  else
  {
    v1 = sub_10000BA4C();
    if (v1 == 2 || (v1 & 1) != 0)
    {
      v0 = 2;
    }

    else
    {
      v0 = 1;
    }
  }

  return sub_1001077F8(v0);
}

uint64_t sub_10000BED0()
{
  v1 = qword_100188A98;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_10000BF2C()
{
  v0 = sub_10011484C();
  v1 = qword_100188A98;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for ForgotPasswordFlowViewModel()
{
  result = qword_100188AC8;
  if (!qword_100188AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C010()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C0AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10000BA4C();
  *a2 = result;
  return result;
}

unint64_t sub_10000C118()
{
  result = qword_100188E08[0];
  if (!qword_100188E08[0])
  {
    type metadata accessor for ForgotPasswordFlowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100188E08);
  }

  return result;
}

uint64_t sub_10000C180()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = sub_100008780(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v8 = v7 - v6;
  v9 = type metadata accessor for Logger();
  sub_10000C270(v9, qword_1001A5668);
  sub_10000C2D4(v9, qword_1001A5668);
  (*(v3 + 104))(v8, enum case for SupportFlowIdentifier.forgotPassword(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t *sub_10000C270(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000C2D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C330()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(v0 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v9;
}

uint64_t (*sub_10000C464(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_10000C494()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000C4DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000C4FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10000C53C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000C5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v43 = *(a1 + 16);
  type metadata accessor for Optional();
  sub_100004D48(&qword_100188E90, &qword_100122198);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  v41 = type metadata accessor for TupleView();
  sub_10000DEF8();
  sub_10000DF20();
  v5 = type metadata accessor for FlowStepStackView();
  v6 = sub_100008780(v5);
  v48 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v40 = &v36 - v10;
  sub_100006A88();
  WitnessTable = swift_getWitnessTable();
  v50 = v5;
  v51 = WitnessTable;
  v45 = &opaque type descriptor for <<opaque return type of View.onLoad(perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_100008780(OpaqueTypeMetadata2);
  v47 = v12;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v11);
  v39 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v42 = &v36 - v17;
  v18 = v2[3];
  v38 = v2[2];
  v19 = v2[6];
  v37 = v2[5];
  sub_10000B4E0((v2 + 7), v52);
  v36 = *(*(a1 - 8) + 16);
  v36(&v50, v2, a1);
  v20 = swift_allocObject();
  v21 = *(a1 + 24);
  sub_10000DF2C(v20);

  v22 = v40;
  sub_100035B04(v38, v18, v37, v19, 0, v52, sub_10000D7BC, v20, v40);
  v36(&v50, v3, a1);
  v23 = swift_allocObject();
  sub_10000DF2C(v23);
  v24 = v39;
  v25 = WitnessTable;
  View.onLoad(perform:)();

  (*(v48 + 8))(v22, v5);
  v50 = v5;
  v51 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v42;
  v27 = OpaqueTypeMetadata2;
  sub_10000DF20();
  sub_1000C6A00(v28, v29, v30);
  v31 = *(v47 + 8);
  v31(v24, v27);
  sub_10000DF20();
  sub_1000C6A00(v32, v33, v34);
  return (v31)(v26, v27);
}

uint64_t sub_10000CA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = sub_100003768(&qword_100188E90, &qword_100122198);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  v9 = __chkstk_darwin(v7);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v46 - v12;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v11);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v47 = &v46 - v27;
  v28 = *(a1 + 96);
  if (v28)
  {
    v29 = a3;
    v30 = *(v26 + 104);
    v46 = v26;

    v28(v31);
    sub_1000068F8(v28);
    sub_1000C6A00(v17, a2, v29);
    v32 = *(v13 + 8);
    v32(v17, a2);
    sub_1000C6A00(v19, a2, v29);
    v33 = v19;
    v34 = v46;
    v32(v33, a2);
    a3 = v29;
    (*(v13 + 32))(v25, v17, a2);
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v26;
  }

  sub_100003CE8(v25, v35, 1, a2);
  v36 = v47;
  sub_10000625C(v25, v47);
  v46 = *(v21 + 8);
  v37 = v46(v25, v20);
  __chkstk_darwin(v37);
  v38 = a3;
  *(&v46 - 4) = a2;
  *(&v46 - 3) = a3;
  *(&v46 - 2) = v34;
  sub_100003768(&qword_100188E98, &qword_1001221B8);
  sub_10000D990();
  v39 = v48;
  Section<>.init(content:)();
  (*(v21 + 16))(v25, v36, v20);
  v57[0] = v25;
  v41 = v51;
  v40 = v52;
  v42 = v49;
  (*(v51 + 16))(v49, v39, v52);
  v57[1] = v42;
  v56[0] = v20;
  v56[1] = v40;
  v53 = v38;
  WitnessTable = swift_getWitnessTable();
  v55 = sub_10000DBE8();
  sub_1000C2BF0(v57, 2, v56);
  v43 = *(v41 + 8);
  v43(v39, v40);
  v44 = v46;
  v46(v36, v20);
  v43(v42, v40);
  return v44(v25, v20);
}

uint64_t sub_10000CEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002BF6C(*(a1 + 32));
  v12 = v6;
  swift_getKeyPath();
  v7 = type metadata accessor for FlowStepActionsContentView();
  (*(*(v7 - 8) + 16))(__src, a1, v7);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  memcpy(v8 + 4, __src, 0x70uLL);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10000DCE8;
  *(v9 + 24) = v8;
  sub_100003768(&qword_100188EC8, &qword_1001221F0);
  sub_100003768(&qword_100188EB0, &qword_1001221C0);
  sub_10000DD5C();
  sub_10000DA14();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10000D01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a1;
  v26 = a6;
  v25 = sub_100003768(&qword_100188ED8, &qword_1001221F8);
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v25);
  v13 = &v23 - v12;
  v14 = type metadata accessor for FlowStepActionsContentView();
  (*(*(v14 - 8) + 16))(__src, a3, v14);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  memcpy(v15 + 4, __src, 0x70uLL);
  v15[18] = a2;
  v16 = type metadata accessor for FlowViewDataProvider(0);
  v17 = sub_10000DBA0(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);

  __src[0] = Environment.init<A>(_:)();
  LOBYTE(__src[1]) = v18 & 1;
  __src[2] = a2;
  __src[3] = sub_10000DE38;
  __src[4] = v15;

  sub_10000C330();
  v19 = sub_10000DB4C();
  View.environment<A>(_:)();

  static String.stepSectionActionsFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100121620;
  *(v20 + 56) = &type metadata for Int;
  *(v20 + 64) = &protocol witness table for Int;
  *(v20 + 32) = v24;
  String.init(format:_:)();

  __src[0] = &type metadata for FlowStepActionView;
  __src[1] = v16;
  __src[2] = v19;
  __src[3] = v17;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  View.accessibilityIdentifier(_:)();

  return (*(v10 + 8))(v13, v21);
}

uint64_t sub_10000D32C(uint64_t a1)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C330();
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  (*(v3 + 104))(v6, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v2);
  sub_10008577C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000D450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000D4EC, v5, v4);
}

uint64_t sub_10000D4EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v10 = *(v0 + 24);

  v3 = *(v2 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v10;
  *(v4 + 32) = v2;
  sub_10000DF20();
  sub_10000D6D4(v5, v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000D5A4(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_10000C330();
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  (*(v5 + 104))(v8, enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:), v4);
  sub_10008577C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000D6D4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_100114850(a3);
  v7 = result;
  for (i = 0; v7 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = v9;
    a1(&v10);

    if (v3)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10000D7C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D870;

  return sub_10000D450(v0 + 32, v2, v3);
}

uint64_t sub_10000D870()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000D964(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10000D5A4(a1, v1[4]);
}

unint64_t sub_10000D990()
{
  result = qword_100188EA0;
  if (!qword_100188EA0)
  {
    sub_100004D48(&qword_100188E98, &qword_1001221B8);
    sub_10000DA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EA0);
  }

  return result;
}

unint64_t sub_10000DA14()
{
  result = qword_100188EA8;
  if (!qword_100188EA8)
  {
    sub_100004D48(&qword_100188EB0, &qword_1001221C0);
    type metadata accessor for FlowViewDataProvider(255);
    sub_10000DB4C();
    sub_10000DBA0(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    swift_getOpaqueTypeConformance2();
    sub_10000DBA0(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EA8);
  }

  return result;
}

unint64_t sub_10000DB4C()
{
  result = qword_100188EB8;
  if (!qword_100188EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EB8);
  }

  return result;
}

uint64_t sub_10000DBA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000DBE8()
{
  result = qword_100188EC0;
  if (!qword_100188EC0)
  {
    sub_100004D48(&qword_100188E90, &qword_100122198);
    sub_10000D990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EC0);
  }

  return result;
}

uint64_t sub_10000DC78()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[14])
  {
    sub_1000086BC(v0 + 11);
  }

  if (v0[16])
  {
    v5 = v0[17];
  }

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10000DCF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DD2C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_10000DD5C()
{
  result = qword_100188ED0;
  if (!qword_100188ED0)
  {
    sub_100004D48(&qword_100188EC8, &qword_1001221F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188ED0);
  }

  return result;
}

uint64_t sub_10000DDC0()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[14])
  {
    sub_1000086BC(v0 + 11);
  }

  if (v0[16])
  {
    v5 = v0[17];
  }

  v6 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10000DE38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[18];
  return sub_10000D32C((v0 + 4));
}

uint64_t sub_10000DE48(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Optional();
  sub_100004D48(&qword_100188E90, &qword_100122198);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_10000DEF8();
  sub_100006AA0();
  type metadata accessor for FlowStepStackView();
  sub_100006A88();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000DEF8()
{

  return swift_getWitnessTable();
}

void *sub_10000DF2C(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  v5 = a1 + 4;

  return memcpy(v5, (v3 - 240), 0x70uLL);
}

uint64_t sub_10000DF4C(uint64_t a1)
{
  v2 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  sub_10000ED78();
  __chkstk_darwin(v5);
  v7 = &v23[-v6];
  v8 = sub_100003768(&qword_100188EF0, &qword_100122200);
  sub_10000ED84(v8);
  v10 = *(v9 + 64);
  sub_10000ED78();
  __chkstk_darwin(v11);
  v13 = &v23[-v12];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v14 = type metadata accessor for URLComponents();
  if (sub_10000E5F0(v7, 1, v14) == 1)
  {
    v15 = &qword_100188EE8;
    v16 = &unk_10012A330;
    v17 = v7;
  }

  else
  {
    v18 = URLComponents.queryItems.getter();
    v19 = (*(*(v14 - 8) + 8))(v7, v14);
    if (!v18)
    {
      return 0;
    }

    __chkstk_darwin(v19);
    *&v23[-16] = a1;
    sub_100085C20(sub_10000E67C, v18, v13);

    v20 = type metadata accessor for URLQueryItem();
    if (sub_10000E5F0(v13, 1, v20) != 1)
    {
      v21 = URLQueryItem.value.getter();
      (*(*(v20 - 8) + 8))(v13, v20);
      return v21;
    }

    v15 = &qword_100188EF0;
    v16 = &qword_100122200;
    v17 = v13;
  }

  sub_10000ABCC(v17, v15, v16);
  return 0;
}

uint64_t sub_10000E188()
{
  v0 = URLQueryItem.name.getter();
  v2 = v1;
  if (v0 == SupportFlowURLParameter.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10000E220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for SupportFlowURLParameter();
  v4 = sub_100008780(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v11 = v10 - v9;
  v12 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v12);
  v14 = *(v13 + 64);
  sub_10000ED78();
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for URL();
  v19 = sub_100008780(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000C30C();
  v26 = v25 - v24;
  v27 = type metadata accessor for DeepLinkContext();
  v28 = sub_10000AF7C(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_10000C30C();
  v33 = v32 - v31;
  sub_10000EC9C(a1, v17, &qword_100188EE0, &unk_100122AE0);
  if (sub_10000E5F0(v17, 1, v18) == 1)
  {
    sub_10000ABCC(a1, &qword_100188EE0, &unk_100122AE0);
    sub_10000ABCC(v17, &qword_100188EE0, &unk_100122AE0);
    v34 = 1;
    v35 = v59;
  }

  else
  {
    v58 = a1;
    v54 = v18;
    v55 = v21;
    (*(v21 + 32))(v26, v17, v18);
    v53 = *(v6 + 104);
    v53(v11, enum case for SupportFlowURLParameter.type(_:), v3);
    sub_10000DF4C(v11);
    v37 = v36;
    v38 = *(v6 + 8);
    v56 = v3;
    v57 = v6 + 8;
    v38(v11, v3);
    if (v37)
    {
      SupportFlowIdentifier.init(rawValue:)();
    }

    else
    {
      v39 = type metadata accessor for SupportFlowIdentifier();
      sub_100003CE8(v33, 1, 1, v39);
    }

    v40 = URL.flowStep.getter();
    v41 = (v33 + v27[5]);
    *v41 = v40;
    v41[1] = v42;
    v43 = URL.flowSession.getter();
    v44 = (v33 + v27[6]);
    *v44 = v43;
    v44[1] = v45;
    v46 = v56;
    v53(v11, enum case for SupportFlowURLParameter.referrer(_:), v56);
    v47 = sub_10000DF4C(v11);
    v49 = v48;
    sub_10000ABCC(v58, &qword_100188EE0, &unk_100122AE0);
    v38(v11, v46);
    (*(v55 + 8))(v26, v54);
    v50 = (v33 + v27[7]);
    *v50 = v47;
    v50[1] = v49;
    v35 = v59;
    sub_10000E618(v33, v59);
    v34 = 0;
  }

  return sub_100003CE8(v35, v34, 1, v27);
}

uint64_t type metadata accessor for DeepLinkContext()
{
  result = qword_100188F50;
  if (!qword_100188F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeepLinkContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10000E78C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&unk_10018A300, &unk_1001241E0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10000E844()
{
  sub_10000E8D0();
  if (v0 <= 0x3F)
  {
    sub_10000E928();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000E8D0()
{
  if (!qword_100188F60)
  {
    type metadata accessor for SupportFlowIdentifier();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100188F60);
    }
  }
}

void sub_10000E928()
{
  if (!qword_100188F68)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100188F68);
    }
  }
}

uint64_t sub_10000E978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  v12 = v11 - v10;
  v13 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v13);
  v15 = *(v14 + 64);
  sub_10000ED78();
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v19 = sub_100003768(&qword_100188FA0, &qword_10012A190);
  sub_10000ED84(v19);
  v21 = *(v20 + 64);
  sub_10000ED78();
  v23 = __chkstk_darwin(v22);
  v25 = &v53 - v24;
  v26 = *(v23 + 56);
  sub_10000EC9C(a1, &v53 - v24, &unk_10018A300, &unk_1001241E0);
  sub_10000EC9C(a2, &v25[v26], &unk_10018A300, &unk_1001241E0);
  sub_10000ED90(v25);
  if (!v27)
  {
    sub_10000EC9C(v25, v18, &unk_10018A300, &unk_1001241E0);
    sub_10000ED90(&v25[v26]);
    if (!v27)
    {
      (*(v7 + 32))(v12, &v25[v26], v4);
      sub_10000ECFC();
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v7 + 8);
      v30(v12, v4);
      v30(v18, v4);
      sub_10000ABCC(v25, &unk_10018A300, &unk_1001241E0);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v7 + 8))(v18, v4);
LABEL_9:
    sub_10000ABCC(v25, &qword_100188FA0, &qword_10012A190);
    return 0;
  }

  sub_10000ED90(&v25[v26]);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_10000ABCC(v25, &unk_10018A300, &unk_1001241E0);
LABEL_13:
  v31 = type metadata accessor for DeepLinkContext();
  v32 = v31[5];
  sub_10000ED54();
  if (v35)
  {
    if (!v33)
    {
      return 0;
    }

    sub_10000ED68(v34);
    v38 = v27 && v36 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v39 = v31[6];
  sub_10000ED54();
  if (v42)
  {
    if (!v40)
    {
      return 0;
    }

    sub_10000ED68(v41);
    v45 = v27 && v43 == v44;
    if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v46 = v31[7];
  sub_10000ED54();
  if (v49)
  {
    if (v47)
    {
      sub_10000ED68(v48);
      v52 = v27 && v50 == v51;
      if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v47)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10000EC9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003768(a3, a4);
  sub_10000AF7C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10000ECFC()
{
  result = qword_100188FA8;
  if (!qword_100188FA8)
  {
    type metadata accessor for SupportFlowIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FA8);
  }

  return result;
}

uint64_t sub_10000ED68@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_10000EDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v46 = a2;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InsetGroupedListStyle();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ListSectionSpacing();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003768(&qword_100188FC0, &qword_100122328);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = sub_100003768(&qword_100188FC8, &qword_100122330);
  v19 = *(v18 - 8);
  v39 = v18;
  v40 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  static Edge.Set.top.getter();
  sub_100003768(&qword_100188FD0, &qword_100122338);
  sub_10000AAEC(&qword_100188FD8, &qword_100188FD0, &qword_100122338);
  View.listPadding(_:_:)();
  static ListSectionSpacing.compact.getter();
  v23 = *(sub_100003768(&qword_100188FE0, &qword_100122340) + 36);
  (*(v10 + 16))(&v17[v23], v13, v9);
  sub_100003CE8(&v17[v23], 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v25 = &v17[*(v14 + 36)];
  v26 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
  (*(v10 + 32))(v25 + v26, v13, v9);
  sub_100003CE8(v25 + v26, 0, 1, v9);
  *v25 = KeyPath;
  v27 = v38;
  InsetGroupedListStyle.init()();
  v28 = sub_10000F714();
  v29 = v41;
  View.listStyle<A>(_:)();
  v30 = v27;
  v31 = v29;
  (*(v42 + 8))(v30, v29);
  sub_10000F8F4(v17);
  v32 = v43;
  v33 = v44;
  v34 = v45;
  (*(v44 + 104))(v43, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v45);
  v47 = v14;
  v48 = v31;
  v49 = v28;
  v50 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v35 = v39;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v33 + 8))(v32, v34);
  return (*(v40 + 8))(v22, v35);
}

void *sub_10000F2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003768(&qword_100189020, &qword_100122390);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &__src[-v7];
  v9 = static Edge.Set.top.getter();
  v10 = sub_100003768(&qword_100189028, &qword_100122398);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(sub_100003768(&qword_100189030, &qword_1001223A0) + 36)];
  *v11 = v9;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  KeyPath = swift_getKeyPath();
  v13 = &v8[*(sub_100003768(&qword_100189038, &qword_1001223D8) + 36)];
  *v13 = KeyPath;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v8[*(v5 + 44)];
  v15 = *(sub_100003768(&qword_100189040, &qword_1001223E0) + 28);
  v16 = type metadata accessor for Text.Case();
  sub_100003CE8(v14 + v15, 1, 1, v16);
  *v14 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000FB40(v8, a2);
  v17 = sub_100003768(&qword_100189048, &qword_100122418);
  return memcpy((a2 + *(v17 + 36)), __src, 0x70uLL);
}

unint64_t sub_10000F4E8()
{
  result = qword_100188FB0;
  if (!qword_100188FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FB0);
  }

  return result;
}

uint64_t sub_10000F55C(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_10000F5CC()
{
  result = qword_100188FB8;
  if (!qword_100188FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FB8);
  }

  return result;
}

unint64_t sub_10000F714()
{
  result = qword_100188FF0;
  if (!qword_100188FF0)
  {
    sub_100004D48(&qword_100188FC0, &qword_100122328);
    sub_10000F7CC();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FF0);
  }

  return result;
}

unint64_t sub_10000F7CC()
{
  result = qword_100188FF8;
  if (!qword_100188FF8)
  {
    sub_100004D48(&qword_100188FE0, &qword_100122340);
    sub_100004D48(&qword_100188FD0, &qword_100122338);
    sub_10000AAEC(&qword_100188FD8, &qword_100188FD0, &qword_100122338);
    swift_getOpaqueTypeConformance2();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FF8);
  }

  return result;
}

uint64_t sub_10000F8F4(uint64_t a1)
{
  v2 = sub_100003768(&qword_100188FC0, &qword_100122328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F95C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000F990@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000F9C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10000FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100003768(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v16 - v13;
  sub_100006578(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_10000FB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189020, &qword_100122390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FBB0()
{
  sub_100004D48(&qword_100188FC8, &qword_100122330);
  sub_100004D48(&qword_100188FC0, &qword_100122328);
  type metadata accessor for InsetGroupedListStyle();
  sub_10000F714();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000FC74()
{
  result = qword_100189058;
  if (!qword_100189058)
  {
    sub_100004D48(&qword_100189048, &qword_100122418);
    sub_10000FD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189058);
  }

  return result;
}

unint64_t sub_10000FD00()
{
  result = qword_100189060;
  if (!qword_100189060)
  {
    sub_100004D48(&qword_100189020, &qword_100122390);
    sub_10000FDB8();
    sub_10000AAEC(&qword_100189090, &qword_100189040, &qword_1001223E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189060);
  }

  return result;
}

unint64_t sub_10000FDB8()
{
  result = qword_100189068;
  if (!qword_100189068)
  {
    sub_100004D48(&qword_100189038, &qword_1001223D8);
    sub_10000FE70();
    sub_10000AAEC(&qword_100189080, &qword_100189088, &qword_100122428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189068);
  }

  return result;
}

unint64_t sub_10000FE70()
{
  result = qword_100189070;
  if (!qword_100189070)
  {
    sub_100004D48(&qword_100189030, &qword_1001223A0);
    sub_10000AAEC(&qword_100189078, &qword_100189028, &qword_100122398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189070);
  }

  return result;
}

uint64_t sub_10000FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PlacardInfoItemType(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  *(&v27 - v17) = 1;
  swift_storeEnumTagMultiPayload();
  v31 = &type metadata for CompromisedAccountStepProvider;
  v32 = sub_100010248();
  v30[0] = a3;
  sub_100003768(&qword_1001890A0, &qword_1001224B0);
  v19 = *(v9 + 72);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100121620;
  sub_10001029C(v18, v21 + v20);
  sub_10000B4E0(v30, v29);
  v28 = &_swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v21 + v20, v16);
  swift_setDeallocating();
  sub_10006EB7C();
  sub_10001029C(v16, v13);
  sub_1000EFDB8(v13, 0, 0);
  sub_100010300(v16);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v22 = v28[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v23 = v28;
  sub_10000B4E0(v29, a4 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v24 = Environment.init<A>(_:)();
  LOBYTE(v22) = v25;
  sub_10001035C(v29);
  sub_100010300(v18);
  result = sub_10001035C(v30);
  *a4 = v24;
  *(a4 + 8) = v22 & 1;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = v23;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

unint64_t sub_100010248()
{
  result = qword_100189098;
  if (!qword_100189098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189098);
  }

  return result;
}

uint64_t sub_10001029C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlacardInfoItemType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010300(uint64_t a1)
{
  v2 = type metadata accessor for PlacardInfoItemType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001035C(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189310, &qword_1001221A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000103C8()
{
  result = qword_1001890A8;
  if (!qword_1001890A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890A8);
  }

  return result;
}

uint64_t sub_10001043C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_100010490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void *sub_100010524@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003768(&qword_1001890B0, &qword_1001225E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &__src[-v7];
  v9 = *(v1 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v13 = *(v2 + 64);
  v12 = *(v2 + 72);
  sub_100010C34();

  if (v11)
  {
    v14 = &selRef_initWithBundleIdentifier_;
  }

  else
  {
    v14 = &selRef_initWithType_;
  }

  sub_100010B7C(v9, v10, v14);
  sub_1000107F0();
  v15 = swift_allocObject();
  memcpy((v15 + 16), v2, 0x50uLL);
  sub_100010CE4(v2, __src);
  sub_100003768(&qword_1001890C0, &qword_1001225F0);
  sub_100010D1C();
  AsyncIconImage.init<A, B>(icon:descriptor:transaction:content:placeholder:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v5 + 32))(a1, v8, v4);
  v16 = sub_100003768(&qword_1001890E0, &qword_1001225F8);
  return memcpy((a1 + *(v16 + 36)), __src, 0x70uLL);
}

id sub_1000107F0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  if (v6)
  {
    v7 = [objc_opt_self() imageDescriptorNamed:v6];
  }

  else
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    if (*(v0 + 56))
    {
      v17 = *(v0 + 8);
      v10 = *v0;
      v16 = *v0;
      if (v17 == 1)
      {
        v11 = v10;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v12 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100010E2C(&v16);
        (*(v2 + 8))(v5, v1);
        v11 = *&v15[1];
      }
    }

    else
    {
      v11 = *(v0 + 48);
    }

    v7 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v8 scale:{v9, v11}];
  }

  v13 = v7;
  [v7 setDrawBorder:1];
  return v13;
}

double sub_1000109D4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();
  (*(v5 + 8))(v8, v4);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v14[40] = v17;
  *&v14[24] = v16;
  *&v14[8] = v15;
  v12 = *&v14[18];
  *(a2 + 18) = *&v14[2];
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v12;
  result = *&v14[34];
  *(a2 + 50) = *&v14[34];
  *(a2 + 64) = *&v14[48];
  return result;
}

uint64_t sub_100010B54@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.clear.getter();
  *a1 = result;
  return result;
}

id sub_100010B7C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

unint64_t sub_100010C34()
{
  result = qword_1001890B8;
  if (!qword_1001890B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001890B8);
  }

  return result;
}

uint64_t sub_100010C78()
{
  sub_100010CC8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100010CD4();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100010CC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100010D1C()
{
  result = qword_1001890C8;
  if (!qword_1001890C8)
  {
    sub_100004D48(&qword_1001890C0, &qword_1001225F0);
    sub_100010DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890C8);
  }

  return result;
}

unint64_t sub_100010DA8()
{
  result = qword_1001890D0;
  if (!qword_1001890D0)
  {
    sub_100004D48(&qword_1001890D8, &unk_10012CA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890D0);
  }

  return result;
}

uint64_t sub_100010E2C(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001890E8, &qword_100122600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010E98()
{
  result = qword_1001890F0;
  if (!qword_1001890F0)
  {
    sub_100004D48(&qword_1001890E0, &qword_1001225F8);
    sub_100010F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890F0);
  }

  return result;
}

unint64_t sub_100010F24()
{
  result = qword_1001890F8;
  if (!qword_1001890F8)
  {
    sub_100004D48(&qword_1001890B0, &qword_1001225E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890F8);
  }

  return result;
}

uint64_t sub_100010FB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  v12 = sub_100064CA4();

  *(a3 + 24) = &type metadata for WiFiStepProvider;
  *(a3 + 32) = sub_10000737C();
  *a3 = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(a3 + 40) = sub_1000112F4;
  *(a3 + 48) = v13;
}

uint64_t sub_100011168(uint64_t a1, char a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  sub_100064AD8();
}

uint64_t sub_1000112BC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100011304()
{
  result = qword_100189100;
  if (!qword_100189100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189100);
  }

  return result;
}

uint64_t sub_10001136C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012478();
  v6 = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
LABEL_12:

    return sub_10000E5F0(v8, v3, v7);
  }

  if (v3 != 2147483645)
  {
    v7 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
    v8 = v4 + *(a3 + 28);
    goto LABEL_12;
  }

  v9 = *(v4 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  v11 = v10 <= 0;
  if (v10 < 0)
  {
    v10 = -1;
  }

  if (v11)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_100011478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012478();
  result = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v5;
  }

  else
  {
    if (a3 == 2147483645)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 + 1);
      return result;
    }

    v9 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
    v10 = v5 + *(a4 + 28);
  }

  return sub_100003CE8(v10, v4, v4, v9);
}

void sub_100011580()
{
  sub_100011704(319, &qword_100189178, type metadata accessor for SupportSolutions.ChatInfo);
  if (v0 <= 0x3F)
  {
    sub_1000116B4();
    if (v1 <= 0x3F)
    {
      sub_100011704(319, &unk_100189188, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001167C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000116B4()
{
  if (!qword_100189180)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100189180);
    }
  }
}

void sub_100011704(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100011758(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1000117AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_100011820()
{
  sub_100012478();
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);

  return sub_10000E5F0(v1, v0, v2);
}

uint64_t sub_100011884()
{
  sub_100012478();
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);

  return sub_100003CE8(v1, v0, v0, v2);
}

void sub_1000118D8()
{
  sub_100011704(319, &unk_100189188, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100011960()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_100012484();
  sub_10000C270(v5, qword_1001A5680);
  v6 = sub_10000C2D4(v5, qword_1001A5680);
  URL.init(string:)();
  result = sub_10000E5F0(v0, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100012448(v5);
    return (*(v8 + 32))(v6, v0, v5);
  }

  return result;
}

uint64_t sub_100011A58()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_100012484();
  sub_10000C270(v5, qword_1001A5698);
  v6 = sub_10000C2D4(v5, qword_1001A5698);
  URL.init(string:)();
  result = sub_10000E5F0(v0, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100012448(v5);
    return (*(v8 + 32))(v6, v0, v5);
  }

  return result;
}

uint64_t sub_100011B50@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SupportOption.PhoneDetails();
  v9 = sub_100008780(v8);
  v113 = v10;
  v114 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000C30C();
  v112 = v14 - v13;
  v15 = sub_100003768(&qword_100189250, &unk_100122740);
  v16 = sub_10000ED84(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v117 = &v102[-v19];
  v20 = type metadata accessor for SupportOption.BZCHTDetails();
  v21 = sub_100008780(v20);
  v107 = v22;
  v108 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10000C30C();
  v106 = v26 - v25;
  v27 = type metadata accessor for ContactSolutionSubtype();
  v28 = sub_100008780(v27);
  v109 = v29;
  v110 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_10000C30C();
  v34 = v33 - v32;
  v118 = type metadata accessor for SupportOption();
  v35 = sub_100008780(v118);
  v116 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_100012454();
  v111 = v39 - v40;
  v42 = __chkstk_darwin(v41);
  v44 = &v102[-v43];
  __chkstk_darwin(v42);
  v115 = &v102[-v45];
  v46 = sub_100003768(&qword_100189258, &qword_1001268F0);
  v47 = sub_10000ED84(v46);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_100012454();
  v52 = v50 - v51;
  v54 = __chkstk_darwin(v53);
  v56 = &v102[-v55];
  __chkstk_darwin(v54);
  v58 = &v102[-v57];
  v59 = sub_100003768(&qword_100189108, &unk_1001226E0);
  v60 = sub_10000ED84(v59);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  sub_100012454();
  v65 = v63 - v64;
  __chkstk_darwin(v66);
  v119 = &v102[-v67];
  v120 = a1;
  sub_100012318(a1, v58);
  v68 = type metadata accessor for ContactSupportOptions();
  sub_1000124A4(v58);
  if (v96)
  {
    sub_100012388(v58, &qword_100189258, &qword_1001268F0);
    v69 = 1;
LABEL_9:
    v90 = v118;
    v73 = v119;
    goto LABEL_10;
  }

  v103 = a2;
  v104 = a4;
  v105 = a3;
  v70 = ContactSupportOptions.hasChatSupportOption.getter();
  sub_100012448(v68);
  v72 = *(v71 + 8);
  v72(v58, v68);
  if ((v70 & 1) == 0)
  {
LABEL_8:
    v69 = 1;
    a4 = v104;
    a3 = v105;
    LOBYTE(a2) = v103;
    goto LABEL_9;
  }

  sub_100012318(v120, v56);
  sub_1000124A4(v56);
  if (v96)
  {
    sub_100012388(v56, &qword_100189258, &qword_1001268F0);
    goto LABEL_8;
  }

  ContactSupportOptions.chatSupportOption.getter();
  v72(v56, v68);
  (*(v116 + 32))(v115, v44, v118);
  v88 = SupportOption.subTypeString.getter();
  v90 = v89;
  v92 = v109;
  v91 = v110;
  (*(v109 + 104))(v34, enum case for ContactSolutionSubtype.businessChat(_:), v110);
  v93 = ContactSolutionSubtype.rawValue.getter();
  v95 = v94;
  (*(v92 + 8))(v34, v91);
  v96 = v88 == v93 && v90 == v95;
  if (v96)
  {

    a4 = v104;
    a3 = v105;
    LOBYTE(a2) = v103;
    v73 = v119;
  }

  else
  {
    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v104;
    a3 = v105;
    LOBYTE(a2) = v103;
    v73 = v119;
    if ((v97 & 1) == 0)
    {
      v98 = sub_100012464();
      v99(v98);
      v69 = 1;
      goto LABEL_10;
    }
  }

  v90 = v106;
  SupportOption.bzcht.getter();
  SupportOption.BZCHTDetails.rawURL.getter();
  (*(v107 + 8))(v90, v108);
  URL.init(string:)();

  v100 = sub_100012464();
  v101(v100);
  v69 = 0;
LABEL_10:
  v74 = type metadata accessor for SupportSolutions.ChatInfo(0);
  sub_100003CE8(v65, v69, 1, v74);
  sub_1000123E4(v65, v73, &qword_100189108, &unk_1001226E0);
  v75 = v120;
  sub_100012318(v120, v52);
  sub_1000124A4(v52);
  if (v96)
  {
    sub_100012388(v75, &qword_100189258, &qword_1001268F0);
    sub_100012388(v52, &qword_100189258, &qword_1001268F0);
    v76 = v117;
    sub_100003CE8(v117, 1, 1, v90);
  }

  else
  {
    v76 = v117;
    ContactSupportOptions.firstCallSupportOptionForHMT.getter();
    sub_100012448(v68);
    (*(v77 + 8))(v52, v68);
    v78 = sub_10000E5F0(v76, 1, v90);
    if (v78 != 1)
    {
      v81 = v116;
      v82 = v111;
      (*(v116 + 32))(v111, v76, v90);
      v83 = v112;
      SupportOption.phone.getter();
      v79 = SupportOption.PhoneDetails.phoneNumber.getter();
      v80 = v84;
      sub_100012388(v75, &qword_100189258, &qword_1001268F0);
      (*(v113 + 8))(v83, v114);
      (*(v81 + 8))(v82, v90);
      v73 = v119;
      goto LABEL_17;
    }

    sub_100012388(v75, &qword_100189258, &qword_1001268F0);
  }

  sub_100012388(v76, &qword_100189250, &unk_100122740);
  v79 = 0;
  v80 = 1;
LABEL_17:
  sub_1000123E4(v73, a4, &qword_100189108, &unk_1001226E0);
  v85 = type metadata accessor for SupportSolutions(0);
  v86 = (a4 + v85[5]);
  *v86 = v79;
  v86[1] = v80;
  *(a4 + v85[6]) = a2 & 1;
  return sub_1000123E4(a3, a4 + v85[7], &qword_100188EE0, &unk_100122AE0);
}

uint64_t sub_100012318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189258, &qword_1001268F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012388(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003768(a2, a3);
  sub_100012448(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000123E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003768(a3, a4);
  sub_100012448(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100012464()
{
  result = *(v0 - 128);
  v2 = *(*(v0 - 120) + 8);
  v3 = *(v0 - 104);
  return result;
}

uint64_t sub_100012484()
{

  return type metadata accessor for URL();
}

uint64_t sub_1000124F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000126E8();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000126E8();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  State.init(wrappedValue:)();
  a1[4] = v14;
  a1[5] = v15;
  v12 = a1 + *(type metadata accessor for FlowProgressView() + 28);
  result = AccessibilityFocusState.init<>()();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v11;
  return result;
}

unint64_t sub_100012690()
{
  result = qword_100189260;
  if (!qword_100189260)
  {
    type metadata accessor for FlowProgressView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189260);
  }

  return result;
}

uint64_t sub_100012700@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  v5 = sub_100012760();
  result = sub_10000B4E0(v1 + 32, (a1 + 2));
  *a1 = v4;
  a1[1] = v3;
  a1[7] = 0;
  a1[8] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = v5;
  return result;
}

uint64_t sub_100012760()
{
  v1 = type metadata accessor for ActionInfoType(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for ActionInfo(0);
  *v4 = 2;
  swift_storeEnumTagMultiPayload();
  sub_100013068(v0, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x48uLL);
  return sub_1000ED69C(v4, 1, sub_1000130F8, v5);
}

uint64_t sub_100012858(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_100003768(&qword_100189318, qword_1001228D0);
  State.wrappedValue.getter();
  sub_1000128B4();
}

void sub_1000128B4()
{
  v6 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  [v6 setIsEphemeral:1];
  [v6 setAuthenticationType:2];
  [v6 setShouldPromptForPasswordOnly:0];
  [v6 setIsUsernameEditable:0];
  [v6 setNeedsPasswordChange:1];
  [v6 setNeedsCredentialRecovery:1];
  v1 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (v1)
  {
    v2 = v1;
    aBlock[4] = sub_100013100;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012E98;
    aBlock[3] = &unk_1001783D8;
    v3 = _Block_copy(aBlock);
    v4 = v6;

    [v2 performPasswordResetWithContext:v4 completion:v3];

    _Block_release(v3);
    v5 = *(v0 + 16);
    *(v0 + 16) = v2;
  }

  else
  {
  }
}

uint64_t sub_100012A7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100003CE8(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  swift_errorRetain();
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v10[5] = a2;

  sub_100085200();
}

uint64_t sub_100012BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100012C58, v7, v6);
}

uint64_t sub_100012C58()
{
  v1 = v0[9];
  v2 = v0[7];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 16);
    *(Strong + 16) = 0;
  }

  v5 = v0[8];
  if (!v5 || (v0[5] = v5, swift_errorRetain(), sub_100003768(&qword_100189398, &unk_100122910), sub_100013260(), (swift_dynamicCast() & 1) == 0) || (v6 = v0[6], v7 = [v6 code], v6, v7 != -7003))
  {
    if (qword_1001880F0 != -1)
    {
      swift_once();
    }

    v8 = v0[8];
    v9 = type metadata accessor for Logger();
    sub_10000C2D4(v9, qword_1001A5668);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      if (v5)
      {
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v12 + 4) = v14;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Reset password UI returned an error: %@", v12, 0xCu);
      sub_1000083A0(v13);
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100012E98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100003768(&unk_100189380, &qword_1001228E8);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100012F48()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100012FAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100012FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000130A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  if (v0[9])
  {
    sub_1000086BC(v0 + 6);
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100013108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013120()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013158()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000131A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D870;

  return sub_100012BC0(a1, v4, v5, v7, v6);
}

unint64_t sub_100013260()
{
  result = qword_1001893A0;
  if (!qword_1001893A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001893A0);
  }

  return result;
}

uint64_t sub_1000132B4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000132CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000132E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF5 && *(a1 + 24))
    {
      v2 = *a1 + 2147483637;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 10;
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

uint64_t sub_100013334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483638;
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1000133B4(uint64_t a1, char a2)
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

unint64_t sub_1000134F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2 & 1;
  sub_1000133B4(a1, a2 & 1);
  v8 = sub_1000DEC54(a3, 0);

  a4[3] = &type metadata for MessagesStepProvider;
  a4[4] = sub_10001362C();
  *a4 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v7;
  *(v9 + 32) = a3;
  a4[5] = sub_1000136C8;
  a4[6] = v9;

  return sub_1000136E0(a3);
}

uint64_t sub_1000135C4(uint64_t a1, char a2, unint64_t a3)
{
  sub_1000133B4(a1, a2 & 1);
  sub_1000DF334(a3);
}

unint64_t sub_10001362C()
{
  result = qword_1001893C0;
  if (!qword_1001893C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001893C0);
  }

  return result;
}

uint64_t sub_100013680()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000136E0(unint64_t result)
{
  if (result >= 0xA)
  {
  }

  return result;
}

uint64_t sub_100013704(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003768(&qword_1001893F0, &unk_100122A40);
  v7 = sub_100017BA0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_7:

    return sub_10000E5F0(a1 + v10, a2, v9);
  }

  v11 = type metadata accessor for Text.Measurements();
  v12 = sub_100017BA0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for HMTSolution.Article();
  v15 = sub_100017BA0(v14);
  if (*(v16 + 84) == a2)
  {
    v9 = v15;
    v10 = a3[10];
    goto LABEL_7;
  }

  v18 = *(a1 + a3[11] + 24);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100013854(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003768(&qword_1001893F0, &unk_100122A40);
  v9 = sub_100017BA0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = type metadata accessor for Text.Measurements();
    v14 = sub_100017BA0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[9];
    }

    else
    {
      v16 = type metadata accessor for HMTSolution.Article();
      result = sub_100017BA0(v16);
      if (*(v18 + 84) != a3)
      {
        *(a1 + a4[11] + 24) = (a2 - 1);
        return result;
      }

      v11 = result;
      v12 = a4[10];
    }
  }

  return sub_100003CE8(a1 + v12, a2, a2, v11);
}

uint64_t type metadata accessor for LearnMoreArticleView()
{
  result = qword_100189450;
  if (!qword_100189450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000139D8()
{
  sub_100013B1C(319, &qword_100189460, type metadata accessor for FlowViewDataProvider);
  if (v0 <= 0x3F)
  {
    sub_100013B1C(319, &qword_100189468, &type metadata accessor for ScenePhase);
    if (v1 <= 0x3F)
    {
      sub_100013B70(319, &qword_100189470);
      if (v2 <= 0x3F)
      {
        sub_100013B70(319, &qword_100189478);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Text.Measurements();
          if (v4 <= 0x3F)
          {
            type metadata accessor for HMTSolution.Article();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100013B1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100013B70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100013BD8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = *(v0 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v9, v1);
    return v14;
  }

  return v10;
}

void sub_100013D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for EnvironmentValues();
  v26 = sub_100008780(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000C30C();
  v33 = v32 - v31;
  v34 = sub_100003768(&qword_1001894D0, &qword_100122AC8);
  sub_10000AF7C(v34);
  v36 = *(v35 + 64);
  sub_10000ED78();
  __chkstk_darwin(v37);
  v39 = (&a9 - v38);
  v40 = type metadata accessor for LearnMoreArticleView();
  sub_10000EC9C(v20 + *(v40 + 20), v39, &qword_1001894D0, &qword_100122AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = type metadata accessor for ScenePhase();
    sub_10000AF7C(v41);
    (*(v42 + 32))(v24, v39);
  }

  else
  {
    v43 = *v39;
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v33, v25);
  }

  sub_100017C18();
}

uint64_t sub_100013ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FlowViewDataProvider(0);
  sub_100017AD0(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v4 & 1;
  v5 = type metadata accessor for LearnMoreArticleView();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  sub_100003768(&qword_1001894D0, &qword_100122AC8);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  State.init(wrappedValue:)();
  *(a2 + v7) = v32;
  v8 = v5[7];
  State.init(wrappedValue:)();
  *(a2 + v8) = v32;
  v9 = (a2 + v5[8]);
  State.init(wrappedValue:)();
  *v9 = v32;
  v10 = a2 + v5[9];
  Text.Measurements.init()();
  v11 = v5[10];
  v12 = type metadata accessor for HMTSolution.Article();
  sub_100017BA0(v12);
  v14 = v13;
  v30 = v15;
  (*(v13 + 16))(a2 + v11, a1);
  v31 = a1;
  HMTSolution.Article.title.getter();
  sub_10000AC24();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  if (qword_100188108 != -1)
  {
    swift_once();
  }

  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  v29 = v26;
  sub_10000AC78(v16, v18, v20 & 1);

  result = (*(v14 + 8))(v31, v30);
  v28 = a2 + v5[11];
  *v28 = v21;
  *(v28 + 8) = v23;
  *(v28 + 16) = v25 & 1;
  *(v28 + 24) = v29;
  return result;
}

uint64_t sub_100014178()
{
  v2 = v0;
  v3 = type metadata accessor for LearnMoreArticleView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100003768(&qword_1001894C0, &qword_100122AB8);
  sub_10000AF7C(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_100017BAC();
  *v1 = static VerticalAlignment.center.getter();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v10 = sub_100003768(&qword_1001894C8, &qword_100122AC0);
  sub_100014324((v1 + *(v10 + 44)));
  *(v1 + *(v6 + 36)) = 0;
  sub_100003704(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_100015DF4(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_100015EB4();
  View.onTapGesture(count:perform:)();

  return sub_100015F98(v1);
}

uint64_t sub_100014324@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_100003768(&qword_100189500, &qword_100122AF0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  sub_100014554(&v19[-v8]);
  v10 = Image.init(systemName:)();
  static Font.footnote.getter();
  static Font.Weight.bold.getter();
  v11 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v20 = static HierarchicalShapeStyle.tertiary.getter();
  v13 = v3[2];
  v13(v7, v9, v2);
  v13(a1, v7, v2);
  v14 = sub_100003768(&qword_100189508, &qword_100122B28);
  v15 = &a1[*(v14 + 48)];
  *v15 = 0;
  v15[8] = 1;
  v16 = &a1[*(v14 + 64)];
  *v16 = v10;
  *(v16 + 1) = 0;
  *(v16 + 8) = 1;
  *(v16 + 3) = KeyPath;
  *(v16 + 4) = v11;
  *(v16 + 10) = v20;
  v17 = v3[1];

  v17(v9, v2);

  return (v17)(v7, v2);
}

uint64_t sub_100014554@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = type metadata accessor for ScenePhase();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v30);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LearnMoreArticleView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_100003768(&qword_100189510, &qword_100122B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = sub_100003768(&qword_100189518, &qword_100122B38);
  sub_100014C44(v1, &v12[*(v13 + 44)]);
  sub_100003704(v1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_100015DF4(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = &v12[*(sub_100003768(&qword_100189520, &qword_100122B40) + 36)];
  *v16 = sub_100015898;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_100017160;
  *(v16 + 3) = v15;
  sub_100003704(v1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  v18 = sub_100015DF4(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v14);
  v19 = &v12[*(v9 + 36)];
  *v19 = sub_1000171CC;
  *(v19 + 1) = v17;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  sub_100013D04(v18, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  sub_100003704(v1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_100015DF4(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v14);
  sub_1000173F4();
  sub_100017AD0(&qword_100189558, &type metadata accessor for ScenePhase);
  v28 = v30;
  View.onChange<A>(of:initial:_:)();

  (*(v2 + 8))(v5, v28);
  return sub_10000ABCC(v12, &qword_100189510, &qword_100122B30);
}

uint64_t sub_1000148C4()
{
  v0 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = var50 - v7;
  sub_100013BD8();
  v9 = *(type metadata accessor for LearnMoreArticleView() + 40);
  sub_100014AAC();
  sub_10008AEE0();

  sub_100013BD8();
  v10 = HMTSolution.Article.id.getter();
  v12 = v11;
  HMTSolution.Article.url.getter();
  (*(v1 + 104))(v4, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v0);
  sub_100085DC0(v10, v12, v8, v4, v13, v14, v15, v16, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);

  (*(v1 + 8))(v4, v0);
  return sub_10000ABCC(v8, &qword_100188EE0, &unk_100122AE0);
}

uint64_t sub_100014C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v86 = sub_100003768(&qword_100189580, &qword_100123A50);
  v3 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v79 = &v78 - v4;
  v5 = sub_100003768(&qword_100189588, &qword_100122B80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v89 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v78 - v9;
  v10 = sub_100003768(&qword_100189590, &qword_100122B88);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v88 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v78 - v14;
  v15 = sub_100003768(&qword_100189598, &qword_100122B90);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v87 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v78 - v19;
  v21 = type metadata accessor for LearnMoreArticleView();
  v22 = a1 + *(v21 + 44);
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v21 + 24);
  v28 = v21;
  v80 = a1;
  v81 = v21;
  __dst[0] = *(a1 + v27);

  sub_100017564(v23, v24, v25);
  v82 = sub_100003768(&qword_100189578, &unk_100122B70);
  State.wrappedValue.getter();
  v29 = v92[0];
  KeyPath = swift_getKeyPath();
  LOBYTE(v92[0]) = v25;
  v94 = 0;
  *&__dst[0] = v23;
  *(&__dst[0] + 1) = v24;
  LOBYTE(__dst[1]) = v25;
  *(&__dst[1] + 1) = v26;
  *&__dst[2] = KeyPath;
  *(&__dst[2] + 1) = v29;
  LOBYTE(__dst[3]) = 0;
  *(&__dst[3] + 1) = 256;
  static String.stepSectionLearnMoreArticleTitle.getter();
  sub_100003768(&qword_1001895A0, &qword_100122BC8);
  sub_10001757C();
  v85 = v20;
  View.accessibilityIdentifier(_:)();

  v95[0] = __dst[0];
  v95[1] = __dst[1];
  v96[0] = __dst[2];
  *(v96 + 15) = *(&__dst[2] + 15);
  sub_10000ABCC(v95, &qword_1001895A0, &qword_100122BC8);
  v83 = *(v28 + 40);
  *&__dst[0] = HMTSolution.Article.summary.getter();
  *(&__dst[0] + 1) = v31;
  v78 = sub_10000AC24();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  static Font.subheadline.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v20) = v40;
  v42 = v41;

  sub_10000AC78(v32, v34, v36 & 1);

  __dst[0] = *(v80 + *(v81 + 28));
  State.wrappedValue.getter();
  v43 = v92[0];
  v44 = swift_getKeyPath();
  v45 = static Color.secondary.getter();
  v46 = swift_getKeyPath();
  v94 = v20 & 1;
  v93 = 0;
  v92[0] = v37;
  v92[1] = v39;
  LOBYTE(v92[2]) = v20 & 1;
  v92[3] = v42;
  v92[4] = v44;
  v92[5] = v43;
  LOBYTE(v92[6]) = 0;
  v92[7] = v46;
  v92[8] = v45;
  static String.stepSectionLearnMoreArticleDescription.getter();
  sub_100003768(&qword_1001895C0, &unk_100122C10);
  sub_100017740();
  View.accessibilityIdentifier(_:)();

  memcpy(__dst, v92, 0x48uLL);
  sub_10000ABCC(__dst, &qword_1001895C0, &unk_100122C10);
  sub_1000153C8();
  if (v48)
  {
    v92[0] = v47;
    v92[1] = v48;
    v49 = Text.init<A>(_:)();
    v51 = v50;
    v53 = v52;
    static Font.footnote.getter();
    v54 = Text.font(_:)();
    v56 = v55;
    v58 = v57;

    sub_10000AC78(v49, v51, v53 & 1);

    v59 = [objc_opt_self() tertiaryLabelColor];
    Color.init(_:)();
    v60 = Text.foregroundColor(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    sub_10000AC78(v54, v56, v58 & 1);

    v92[0] = v60;
    v92[1] = v62;
    LOBYTE(v92[2]) = v64 & 1;
    v92[3] = v66;
    static String.stepSectionLearnMoreArticleAttribution.getter();
    v67 = v79;
    View.accessibilityIdentifier(_:)();

    sub_10000AC78(v60, v62, v64 & 1);

    v68 = v84;
    sub_1000177F8(v67, v84);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v68 = v84;
  }

  sub_100003CE8(v68, v69, 1, v86);
  v70 = v85;
  v71 = v87;
  sub_10000EC9C(v85, v87, &qword_100189598, &qword_100122B90);
  v72 = v91;
  v73 = v88;
  sub_10000EC9C(v91, v88, &qword_100189590, &qword_100122B88);
  v74 = v89;
  sub_10000EC9C(v68, v89, &qword_100189588, &qword_100122B80);
  v75 = v90;
  sub_10000EC9C(v71, v90, &qword_100189598, &qword_100122B90);
  v76 = sub_100003768(&qword_1001895E0, &qword_100122C20);
  sub_10000EC9C(v73, v75 + *(v76 + 48), &qword_100189590, &qword_100122B88);
  sub_10000EC9C(v74, v75 + *(v76 + 64), &qword_100189588, &qword_100122B80);
  sub_10000ABCC(v68, &qword_100189588, &qword_100122B80);
  sub_10000ABCC(v72, &qword_100189590, &qword_100122B88);
  sub_10000ABCC(v70, &qword_100189598, &qword_100122B90);
  sub_10000ABCC(v74, &qword_100189588, &qword_100122B80);
  sub_10000ABCC(v73, &qword_100189590, &qword_100122B88);
  return sub_10000ABCC(v71, &qword_100189598, &qword_100122B90);
}

void sub_1000153C8()
{
  sub_100017C00();
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v52[2] = v5 - v4;
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = sub_10000ED84(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v52[1] = v11 - v10;
  v12 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  sub_10000ED84(v12);
  v14 = *(v13 + 64);
  sub_10000ED78();
  __chkstk_darwin(v15);
  v17 = v52 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = sub_100008780(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000C30C();
  v26 = v25 - v24;
  v27 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v27);
  v29 = *(v28 + 64);
  sub_10000ED78();
  __chkstk_darwin(v30);
  v32 = v52 - v31;
  v33 = type metadata accessor for URL();
  v34 = sub_100008780(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_10000C30C();
  v41 = v40 - v39;
  HMTSolution.Article.url.getter();
  if (sub_10000E5F0(v32, 1, v33) == 1)
  {
    v42 = &qword_100188EE0;
    v43 = &unk_100122AE0;
    v44 = v32;
LABEL_5:
    sub_10000ABCC(v44, v42, v43);
    goto LABEL_6;
  }

  (*(v36 + 32))(v41, v32, v33);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (sub_10000E5F0(v17, 1, v18) == 1)
  {
    (*(v36 + 8))(v41, v33);
    v42 = &qword_100188EE8;
    v43 = &unk_10012A330;
    v44 = v17;
    goto LABEL_5;
  }

  (*(v21 + 32))(v26, v17, v18);
  v45 = URLComponents.host.getter();
  v47 = v46;
  (*(v21 + 8))(v26, v18);
  (*(v36 + 8))(v41, v33);
  if (v47)
  {
    v48 = v45 == 0xD000000000000011 && 0x8000000100133CD0 == v47;
    if (v48 || (sub_100017BBC() & 1) != 0)
    {

      sub_10001647C();
    }

    else
    {
      v49 = v45 == 0xD000000000000013 && 0x8000000100133CF0 == v47;
      if (v49 || (sub_100017BBC() & 1) != 0 || (v45 == 0x7070612E61746562 ? (v50 = v47 == 0xEE006D6F632E656CLL) : (v50 = 0), v50 || (sub_100017BBC() & 1) != 0))
      {

        sub_100017BD8();
        static Locale.current.getter();
        sub_100017B50();
      }

      else
      {
        v52[6] = v45;
        v52[7] = v47;
        v52[4] = 0x6F632E656C707061;
        v52[5] = 0xE90000000000006DLL;
        sub_10000AC24();
        v51 = StringProtocol.contains<A>(_:)();

        if ((v51 & 1) == 0)
        {
          goto LABEL_6;
        }

        sub_100017BD8();
        static Locale.current.getter();
        sub_100017B50();
      }

      String.init(localized:table:bundle:locale:comment:)();
    }
  }

LABEL_6:
  sub_100017C18();
}

uint64_t sub_100015898@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000158C4(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for LearnMoreArticleView() + 32));
  v4 = *v3;
  v5 = v3[1];
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  return sub_10001596C(v2);
}

uint64_t sub_10001596C(double a1)
{
  v3 = sub_100003768(&qword_100189568, &qword_100122B60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_100003768(&qword_100189570, &qword_100122B68);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Text.Measurements.Context();
  v12 = *(*(v11 - 8) + 64);
  result = __chkstk_darwin(v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 0.0)
  {
    v35 = v14;
    v17 = type metadata accessor for LearnMoreArticleView();
    v18 = *(v17 + 36);
    if (qword_100188110 != -1)
    {
      swift_once();
    }

    v32 = byte_1001893E0;
    v31 = qword_1001893E8;
    v34 = type metadata accessor for Text.WritingMode();
    sub_100003CE8(v10, 1, 1, v34);
    v33 = type metadata accessor for Text.Suffix();
    sub_100003CE8(v6, 1, 1, v33);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v20 = v19;
    v21 = *(v35 + 8);
    v21(v16, v11);
    v30 = v17;
    v22 = (v1 + *(v17 + 44));
    v23 = *v22;
    v35 = v22[1];
    v32 = *(v22 + 16);
    v31 = v22[3];
    sub_100003CE8(v10, 1, 1, v34);
    sub_100003CE8(v6, 1, 1, v33);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v25 = v24;
    result = (v21)(v16, v11);
    v26 = round(v25 / v20);
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v26 > -9.22337204e18)
    {
      if (v26 < 9.22337204e18)
      {
        v27 = v26;
        if (v26 >= 2)
        {
          v28 = v30;
          v37 = *(v1 + *(v30 + 28));
          v36 = 1;
          sub_100003768(&qword_100189578, &unk_100122B70);
          State.wrappedValue.setter();
          v27 = 2;
          goto LABEL_11;
        }

        v28 = v30;
        if (!__OFSUB__(3, v27))
        {
          v37 = *(v1 + *(v30 + 28));
          v36 = 3 - v27;
          sub_100003768(&qword_100189578, &unk_100122B70);
          State.wrappedValue.setter();
LABEL_11:
          v37 = *(v1 + *(v28 + 24));
          v36 = v27;
          sub_100003768(&qword_100189578, &unk_100122B70);
          return State.wrappedValue.setter();
        }

LABEL_16:
        __break(1u);
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100015D78(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LearnMoreArticleView() + 32));
  v4 = *v1;
  v5 = v1[1];
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.getter();
  return sub_10001596C(v3);
}

uint64_t sub_100015DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreArticleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015E58()
{
  v0 = type metadata accessor for LearnMoreArticleView();
  sub_10000ED84(v0);
  v2 = *(v1 + 80);

  return sub_1000148C4();
}

unint64_t sub_100015EB4()
{
  result = qword_1001894D8;
  if (!qword_1001894D8)
  {
    sub_100004D48(&qword_1001894C0, &qword_100122AB8);
    sub_10000AAEC(&qword_1001894E0, &qword_1001894E8, &unk_100122AD0);
    sub_10000AAEC(&qword_1001894F0, &qword_1001894F8, &qword_10012D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001894D8);
  }

  return result;
}

uint64_t sub_100015F98(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001894C0, &qword_100122AB8);
  sub_10000AF7C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100015FF8()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.body.getter();
  (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);
  Font.leading(_:)();

  (*(v1 + 8))(v4, v0);
  v5 = Font.bold()();

  qword_1001893C8 = v5;
  return result;
}

uint64_t sub_10001611C()
{
  if (qword_100188108 != -1)
  {
    swift_once();
  }

  v0 = Text.font(_:)();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  qword_1001893D0 = v0;
  *algn_1001893D8 = v2;
  byte_1001893E0 = v4 & 1;
  qword_1001893E8 = v6;
  return result;
}

void sub_1000161D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v20;
  a20 = v21;
  v22 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  sub_10000ED84(v22);
  v24 = *(v23 + 64);
  sub_10000ED78();
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for URLComponents();
  v29 = sub_100008780(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  sub_10000C30C();
  v36 = v35 - v34;
  v37 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v37);
  v39 = *(v38 + 64);
  sub_10000ED78();
  __chkstk_darwin(v40);
  v42 = &a9 - v41;
  v43 = type metadata accessor for URL();
  v44 = sub_100008780(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  sub_10000C30C();
  v51 = v50 - v49;
  HMTSolution.Article.url.getter();
  if (sub_10000E5F0(v42, 1, v43) == 1)
  {
    v52 = &qword_100188EE0;
    v53 = &unk_100122AE0;
    v54 = v42;
  }

  else
  {
    (*(v46 + 32))(v51, v42, v43);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if (sub_10000E5F0(v27, 1, v28) != 1)
    {
      (*(v31 + 32))(v36, v27, v28);
      URLComponents.host.getter();
      (*(v31 + 8))(v36, v28);
      (*(v46 + 8))(v51, v43);
      goto LABEL_7;
    }

    (*(v46 + 8))(v51, v43);
    v52 = &qword_100188EE8;
    v53 = &unk_10012A330;
    v54 = v27;
  }

  sub_10000ABCC(v54, v52, v53);
LABEL_7:
  sub_100017C18();
}

void sub_10001647C()
{
  sub_100017C00();
  v1 = type metadata accessor for Locale();
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v7 = v6 - v5;
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = sub_10000ED84(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000C30C();
  v14 = v13 - v12;
  v15 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v15);
  v17 = *(v16 + 64);
  sub_10000ED78();
  __chkstk_darwin(v18);
  sub_100017BAC();
  v19 = type metadata accessor for URL();
  v20 = sub_100008780(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000C30C();
  v27 = v26 - v25;
  HMTSolution.Article.url.getter();
  if (sub_10000E5F0(v0, 1, v19) == 1)
  {
    sub_10000ABCC(v0, &qword_100188EE0, &unk_100122AE0);
LABEL_31:
    sub_100017C18();
    return;
  }

  v69[1] = v14;
  v69[2] = v7;
  v71 = v19;
  v72 = v22;
  (*(v22 + 32))(v27, v0, v19);
  v70 = v27;
  v28 = URL.path.getter();
  v73 = 47;
  v74 = 0xE100000000000000;
  __chkstk_darwin(v28);
  v69[-2] = &v73;
  v31 = sub_100016D44(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000179F8, &v69[-4], v29, v30);
  v32 = v31;
  if (v31[2])
  {
    v33 = v31[4];
    v34 = v31[5];
    v36 = v31[6];
    v35 = v31[7];
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v36 = 0;
    v35 = 0;
  }

  v40 = Substring.init(_:)();
  v41 = v37;
  v42 = v38;
  v43 = v39;
  if (!v35)
  {

    v73 = v33;
    v74 = v34;
    v75 = v36;
    v76 = 0;
    v77 = v40;
    v78 = v41;
    v79 = v42;
    v80 = v43;
LABEL_11:
    sub_10000ABCC(&v73, &qword_1001895E8, &unk_100122C28);
LABEL_13:
    v49 = v72;
    goto LABEL_14;
  }

  v44 = sub_100016C8C(v33, v34, v36, v35, v40, v37, v38, v39);

  if ((v44 & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_100016A74(1, v32);
  if (v46 == v47 >> 1)
  {
    v48 = 0;
LABEL_17:
    swift_unknownObjectRelease();
    v54 = Substring.init(_:)();
    if (v48)
    {
      sub_100017B7C(v54, v55, v56);
      sub_100017C30();
      if (v44)
      {
        v57 = 0xE700000000000000;
        v58 = 0x73646F50726941;
LABEL_28:

        v49 = v72;
LABEL_29:
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        sub_100017B50();
        String.init(localized:table:bundle:locale:comment:)();
        sub_100003768(&qword_100188810, &unk_100121780);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_100121620;
        *(v65 + 56) = &type metadata for String;
        *(v65 + 64) = sub_100017A18();
        *(v65 + 32) = v58;
        *(v65 + 40) = v57;
        String.init(format:_:)();

        goto LABEL_30;
      }
    }

    else
    {
      sub_100017B68(v54, v55, v56);
      sub_10000ABCC(&v73, &qword_1001895E8, &unk_100122C28);
    }

    v58 = 1684099177;
    v59 = Substring.init(_:)();
    if (v48)
    {
      sub_100017B7C(v59, v60, v61);
      sub_100017C30();
      if (v44)
      {
        v57 = 0xE400000000000000;
        goto LABEL_28;
      }
    }

    else
    {
      sub_100017B68(v59, v60, v61);
      sub_10000ABCC(&v73, &qword_1001895E8, &unk_100122C28);
    }

    v58 = 0x656E6F685069;
    v62 = Substring.init(_:)();
    if (v48)
    {
      sub_100017B7C(v62, v63, v64);
      sub_100017C30();
      if (v44)
      {
        v57 = 0xE600000000000000;
        goto LABEL_28;
      }
    }

    else
    {
      sub_100017B68(v62, v63, v64);
      sub_10000ABCC(&v73, &qword_1001895E8, &unk_100122C28);
    }

    v66 = Substring.init(_:)();
    if (v48)
    {
      sub_100017B7C(v66, v67, v68);
      sub_100017C30();

      v49 = v72;
      if (v44)
      {
        v57 = 0xE300000000000000;
        v58 = 6512973;
        goto LABEL_29;
      }

LABEL_14:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_100017B50();
      String.init(localized:table:bundle:locale:comment:)();
LABEL_30:
      (*(v49 + 8))(v70, v71);
      goto LABEL_31;
    }

    sub_100017B68(v66, v67, v68);
    goto LABEL_11;
  }

  if (v46 < (v47 >> 1))
  {
    v50 = (v45 + 32 * v46);
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[2];
    v48 = v50[3];

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_100016A74(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_100017980(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_10001786C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100016B0C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v4)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v5 = Substring.subscript.getter();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100016BC4(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_100016C8C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_100016D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_100016D44(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_1000D0040();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1000D0040();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = &_swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = String.subscript.getter();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v49[2];
      sub_1000D0040();
      v49 = v28;
    }

    v12 = v49[2];
    v11 = v12 + 1;
    if (v12 >= v49[3] >> 1)
    {
      sub_1000D0040();
      v49 = v29;
    }

    v49[2] = v11;
    v26 = &v49[4 * v12];
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v49[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_1000D0040();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000170E0()
{
  sub_100017BF4();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100017108()
{
  sub_100017BF4();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100017130(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100017160(double *a1)
{
  v3 = type metadata accessor for LearnMoreArticleView();
  sub_10000ED84(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1000158C4(a1, v5);
}

uint64_t sub_1000171D0()
{
  v1 = type metadata accessor for LearnMoreArticleView();
  sub_10000ED84(v1);
  return sub_100015D78(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_100017220()
{
  v1 = type metadata accessor for LearnMoreArticleView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  sub_100003768(&qword_1001894D0, &qword_100122AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ScenePhase();
    sub_10000AF7C(v8);
    (*(v9 + 8))(v5 + v7);
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = *(v5 + v1[6] + 8);

  v12 = *(v5 + v1[7] + 8);

  v13 = *(v5 + v1[8] + 8);

  v14 = v1[9];
  v15 = type metadata accessor for Text.Measurements();
  sub_10000AF7C(v15);
  (*(v16 + 8))(v5 + v14);
  v17 = v1[10];
  v18 = type metadata accessor for HMTSolution.Article();
  sub_10000AF7C(v18);
  (*(v19 + 8))(v5 + v17);
  v20 = v5 + v1[11];
  sub_10000AC78(*v20, *(v20 + 8), *(v20 + 16));
  v21 = *(v20 + 24);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000173F4()
{
  result = qword_100189528;
  if (!qword_100189528)
  {
    sub_100004D48(&qword_100189510, &qword_100122B30);
    sub_100017480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189528);
  }

  return result;
}

unint64_t sub_100017480()
{
  result = qword_100189530;
  if (!qword_100189530)
  {
    sub_100004D48(&qword_100189520, &qword_100122B40);
    sub_10000AAEC(&qword_100189538, &qword_100189540, &qword_100122B48);
    sub_10000AAEC(&qword_100189548, &qword_100189550, &unk_100122B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189530);
  }

  return result;
}

uint64_t sub_100017564(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10001757C()
{
  result = qword_1001895A8;
  if (!qword_1001895A8)
  {
    sub_100004D48(&qword_1001895A0, &qword_100122BC8);
    sub_100017608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895A8);
  }

  return result;
}

unint64_t sub_100017608()
{
  result = qword_1001895B0;
  if (!qword_1001895B0)
  {
    sub_100004D48(&qword_1001895B8, &unk_100122BD0);
    sub_10000AAEC(&qword_100189080, &qword_100189088, &qword_100122428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895B0);
  }

  return result;
}

uint64_t sub_1000176C0()
{
  sub_100017BF4();
  result = EnvironmentValues.foregroundColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1000176E8()
{
  sub_100017BF4();
  result = EnvironmentValues.foregroundColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100017710(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_100017740()
{
  result = qword_1001895C8;
  if (!qword_1001895C8)
  {
    sub_100004D48(&qword_1001895C0, &unk_100122C10);
    sub_100017608();
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895C8);
  }

  return result;
}

uint64_t sub_1000177F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189580, &qword_100123A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001786C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000178D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = type metadata accessor for HMTSolution.Article();
    sub_10000ED84(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100017980(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_100017A18()
{
  result = qword_1001895F0;
  if (!qword_1001895F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895F0);
  }

  return result;
}

uint64_t sub_100017A6C()
{
  sub_100004D48(&qword_1001894C0, &qword_100122AB8);
  sub_100015EB4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017B68(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v7 - 152) = result;
  *(v7 - 144) = a2;
  *(v7 - 136) = a3;
  *(v7 - 128) = v3;
  *(v7 - 120) = v4;
  *(v7 - 112) = v5;
  *(v7 - 104) = v6;
  *(v7 - 96) = 0;
  return result;
}

uint64_t sub_100017B7C(unint64_t a1, unint64_t a2, uint64_t a3)
{

  return sub_100016C8C(a1, a2, a3, v4, v5, v6, v7, v3);
}

uint64_t sub_100017BBC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100017BD8()
{
  v2 = *(v0 - 136);

  return String.LocalizationValue.init(stringLiteral:)();
}

uint64_t sub_100017C30()
{
}

void sub_100017C48()
{
  sub_100017C00();
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000871C();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100018FBC();
    v20 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_100018C34();
    v12 = sub_10009CACC(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100018F80();
    *(v9 + 14) = sub_10009CACC(0xD00000000000002DLL, v13, v14);
    *(v9 + 22) = 2080;

    sub_100003768(&qword_1001896A0, &qword_100122C88);
    v15 = String.init<A>(describing:)();
    v17 = sub_10009CACC(v15, v16, &v20);

    *(v9 + 24) = v17;
    sub_100018F90(&_mh_execute_header, v18, v19, "%s.%s - launchOptions: %s");
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();
  }

  (*(v4 + 8))(v0, v1);
  sub_100017C18();
}

void sub_100017EF0()
{
  sub_100017C00();
  v2 = v1;
  v4 = v3;
  swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000871C();
  v11 = v4;
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315906;
    v17 = sub_100018C34();
    v34 = v5;
    v19 = sub_10009CACC(v17, v18, &v35);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_100018F80();
    *(v15 + 14) = sub_10009CACC(0xD000000000000032, v20, v21);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v11;
    *(v15 + 32) = 2112;
    *(v15 + 34) = v12;
    *v16 = v11;
    v16[1] = v12;
    v22 = v11;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s - sceneSession: %@, options: %@", v15, 0x2Au);
    sub_100003768(&qword_100189390, &qword_1001241D0);
    swift_arrayDestroy();
    sub_100008744();
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();

    (*(v8 + 8))(v0, v34);
  }

  else
  {

    (*(v8 + 8))(v0, v5);
  }

  v24 = [v11 role];
  v25 = objc_allocWithZone(UISceneConfiguration);
  v26 = sub_100018E4C(0, 0, v24);
  v27 = [v11 role];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {

    goto LABEL_11;
  }

  sub_100018FD4();
  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_11:
    type metadata accessor for SceneHostingDelegate();
    goto LABEL_12;
  }

  type metadata accessor for DefaultSceneDelegate();
LABEL_12:
  [v26 setDelegateClass:swift_getObjCClassFromMetadata()];
  sub_100017C18();
}

void sub_1000182B0()
{
  sub_100017C00();
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000871C();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100018FBC();
    v20 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_100018C34();
    v12 = sub_10009CACC(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100018F80();
    *(v9 + 14) = sub_10009CACC(0xD000000000000027, v13, v14);
    *(v9 + 22) = 2080;
    sub_100018EBC();
    sub_100018F38(&qword_100189698, sub_100018EBC);
    v15 = Set.description.getter();
    v17 = sub_10009CACC(v15, v16, &v20);

    *(v9 + 24) = v17;
    sub_100018F90(&_mh_execute_header, v18, v19, "%s.%s - sceneSessions: %s");
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();
  }

  (*(v4 + 8))(v0, v1);
  sub_100017C18();
}

void sub_100018570()
{
  sub_100017C00();
  swift_getObjectType();
  v0 = type metadata accessor for Logger();
  v1 = sub_100008780(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000871C();
  v4 = sub_100018FD4();
  sub_100008460(v4, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = sub_100018FD4();
  sub_100008408(v8, v9);
  if (os_log_type_enabled(v6, v7))
  {
    v22 = v0;
    v10 = sub_100018FBC();
    v23 = swift_slowAlloc();
    *v10 = 136315650;
    v11 = sub_100018C34();
    v13 = sub_10009CACC(v11, v12, &v23);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_100018F80();
    *(v10 + 14) = sub_10009CACC(0xD000000000000040, v14, v15);
    *(v10 + 22) = 2080;
    sub_100018FD4();
    v16 = Data.description.getter();
    v18 = sub_10009CACC(v16, v17, &v23);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s - deviceToken: %s", v10, 0x20u);
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();

    v19 = sub_100018FB0();
    v21 = v22;
  }

  else
  {

    v19 = sub_100018FB0();
    v21 = v0;
  }

  v20(v19, v21);
  sub_100017C18();
}

void sub_1000187F0()
{
  sub_100017C00();
  swift_getObjectType();
  v0 = type metadata accessor for Logger();
  v1 = sub_100008780(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000871C();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v0;
    v6 = sub_100018FBC();
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315650;
    v8 = sub_100018C34();
    v10 = sub_10009CACC(v8, v9, &v20);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    sub_100018F80();
    *(v6 + 14) = sub_10009CACC(0xD000000000000040, v11, v12);
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    sub_100018F90(&_mh_execute_header, v14, v15, "%s.%s - error: %@");
    sub_1000083A0(v7);
    sub_100008744();
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();

    v16 = sub_100018FB0();
    v18 = v19;
  }

  else
  {

    v16 = sub_100018FB0();
    v18 = v0;
  }

  v17(v16, v18);
  sub_100017C18();
}

void sub_100018A48()
{
  sub_100017C00();
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = sub_100008780(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000871C();
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v20 = v2;
    v9 = sub_100018FBC();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315650;
    v11 = sub_100018C34();
    v13 = sub_10009CACC(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_100018F80();
    *(v9 + 14) = sub_10009CACC(0xD00000000000002BLL, v14, v15);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s - userActivity: %@", v9, 0x20u);
    sub_1000083A0(v10);
    sub_100008744();
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();

    v17 = sub_100018FB0();
    v19 = v20;
  }

  else
  {

    v17 = sub_100018FB0();
    v19 = v2;
  }

  v18(v17, v19);
  sub_100017C18();
}

id sub_100018CFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100018D54()
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100018DE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100018E4C(uint64_t a1, uint64_t a2, void *a3)
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

unint64_t sub_100018EBC()
{
  result = qword_100189690;
  if (!qword_100189690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100189690);
  }

  return result;
}

uint64_t sub_100018F00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018F38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100018F90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t sub_100018FBC()
{

  return swift_slowAlloc();
}

uint64_t sub_100018FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for ImageResource();
  v10 = sub_100008780(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100019E84();
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v15 & 1;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_10000B4E0(a3, a4 + 32);
  if (qword_100188228 != -1)
  {
    swift_once();
  }

  if (byte_1001A57A0 == 1)
  {
    if (qword_100188428 != -1)
    {
      swift_once();
    }

    v16 = qword_1001A5AD0;
  }

  else
  {
    if (qword_100188430 != -1)
    {
      swift_once();
    }

    v16 = qword_1001A5AE8;
  }

  v17 = sub_10000C2D4(v9, v16);
  (*(v12 + 16))(v4, v17, v9);
  sub_10000ABCC(a3, &qword_100189310, &qword_1001221A0);
  restarted = _s17RestartDeviceViewVMa_0();
  return (*(v12 + 32))(a4 + *(restarted + 28), v4, v9);
}

uint64_t sub_1000191DC()
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = sub_100008780(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100019E84();
  v8 = *v0;
  v9 = *(v0 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v1, v2);
    return v12;
  }

  return v8;
}

uint64_t sub_100019300@<X0>(void *a1@<X8>)
{
  restarted = _s17RestartDeviceViewVMa_0();
  v4 = restarted - 8;
  v29 = *(restarted - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(restarted);
  v6 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = v6;
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v7 = type metadata accessor for FlowStepContentOption();
  sub_100019E9C(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100122C90;
  v13 = v12 + v11;
  v14 = *(v4 + 36);
  v15 = type metadata accessor for ImageResource();
  sub_10000AF7C(v15);
  (*(v16 + 16))(v13, v1 + v14, v15);
  sub_100003CE8(v13, 0, 1, v15);
  swift_storeEnumTagMultiPayload();
  v17 = enum case for ConstellationContentParagraphStyle.orderedList(_:);
  v18 = type metadata accessor for ConstellationContentParagraphStyle();
  sub_10000AF7C(v18);
  (*(v19 + 104))(v13 + v9, v17, v18);
  sub_100003CE8(v13 + v9, 0, 1, v18);
  swift_storeEnumTagMultiPayload();
  v20 = v27;

  v21 = sub_1000FF880(v12);
  sub_10000B4E0(v1 + 32, (a1 + 2));
  *a1 = v28;
  a1[1] = v20;
  a1[7] = 0;
  a1[8] = v21;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = 0;
  sub_100019B28(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = swift_allocObject();
  sub_100019B90(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  a1[12] = sub_100019BF4;
  a1[13] = v23;
  a1[14] = 0;
  a1[15] = 0;
  sub_100019B28(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  result = sub_100019B90(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = sub_100019CFC;
  a1[19] = v24;
  return result;
}

uint64_t sub_1000195F0(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189750, &qword_10012CC00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_1000191DC();
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = type metadata accessor for ReentrySignal();
  sub_100003CE8(v5, 1, 1, v8);
  sub_100085E7C();

  return sub_10000ABCC(v5, &qword_100189750, &qword_10012CC00);
}

uint64_t sub_1000196CC(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v10[1] = *a1;
  }

  else
  {
    v7 = *a1;

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  return static DeviceEventCoordinator.clearReentryNotification()();
}

uint64_t _s17RestartDeviceViewVMa_0()
{
  result = qword_100189700;
  if (!qword_100189700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100019890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ImageResource();
    v9 = a1 + *(a3 + 28);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_10001992C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageResource();
    v8 = v5 + *(a4 + 28);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000199AC()
{
  sub_100019A50();
  if (v0 <= 0x3F)
  {
    sub_100019AA8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImageResource();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100019A50()
{
  if (!qword_100189460)
  {
    type metadata accessor for FlowViewDataProvider(255);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100189460);
    }
  }
}

void sub_100019AA8()
{
  if (!qword_100189710)
  {
    sub_100004D48(&unk_100189718, &unk_100129EC0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100189710);
    }
  }
}

uint64_t sub_100019B28(uint64_t a1, uint64_t a2)
{
  restarted = _s17RestartDeviceViewVMa_0();
  (*(*(restarted - 8) + 16))(a2, a1, restarted);
  return a2;
}

uint64_t sub_100019B90(uint64_t a1, uint64_t a2)
{
  restarted = _s17RestartDeviceViewVMa_0();
  (*(*(restarted - 8) + 32))(a2, a1, restarted);
  return a2;
}