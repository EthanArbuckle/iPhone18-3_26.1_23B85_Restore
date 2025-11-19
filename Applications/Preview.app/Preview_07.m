id sub_1000D8BEC(uint64_t a1)
{
  sub_1000D8314(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1000D8384(v8);
  }

  sub_1000D8314(a1, v8);
  if (v9)
  {
    sub_1000D8E08(0, &qword_10020BC58);
    if (swift_dynamicCast())
    {
      [v6 doubleValue];
      v4 = v3;

      return v4;
    }
  }

  else
  {
    sub_1000D8384(v8);
  }

  sub_1000D8314(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v8[0] = 0;
      v5 = sub_1000D86D4(v6, v7);

      if (v5)
      {
        return v8[0];
      }
    }
  }

  else
  {
    sub_1000D8384(v8);
  }

  return 0;
}

unint64_t sub_1000D8D60()
{
  result = qword_10020BC38;
  if (!qword_10020BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC38);
  }

  return result;
}

unint64_t sub_1000D8DB4()
{
  result = qword_10020BC50;
  if (!qword_10020BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC50);
  }

  return result;
}

uint64_t sub_1000D8E08(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_BYTE *sub_1000D8E50@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1000D8ED0(uint64_t *a1, int a2)
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

uint64_t sub_1000D8F18(uint64_t result, int a2, int a3)
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

uint64_t sub_1000D8F80@<X0>(_BYTE *a1@<X8>)
{
  result = _ConditionalContent<>.init(storage:)();
  *a1 = v3;
  return result;
}

unint64_t sub_1000D8FE0()
{
  result = qword_10020BC60;
  if (!qword_10020BC60)
  {
    sub_1000C3C50(&qword_10020BC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC60);
  }

  return result;
}

uint64_t sub_1000D905C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t sub_1000D961C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t sub_1000D9B50@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v6 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  static Locale.current.getter();
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v8 = type metadata accessor for LocalizedStringResource();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t sub_1000D9D74()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t sub_1000D9FD8(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        return 0;
      case 2:
        return 1;
      case 3:
        return 2;
    }

    return 7;
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      return 5;
    }

    if (a1 == 255)
    {
      return 6;
    }

    return 7;
  }

  if (a1 == 4)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1000DA060(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_1000DA074(char a1)
{
  result = 0x64726F6F4370616DLL;
  switch(a1)
  {
    case 1:
      result = 0x6572757472657061;
      break;
    case 2:
    case 9:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6F7250726F6C6F63;
      break;
    case 4:
      result = 0x617053726F6C6F63;
      break;
    case 5:
      result = 0x6E6F6974706163;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x54726F7461657263;
      break;
    case 8:
      result = 0x6544746964657263;
      break;
    case 10:
    case 11:
      result = 0x657275736F707865;
      break;
    case 12:
      result = 0x7265626D754E66;
      break;
    case 13:
      result = 0x6E4F6873616C66;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x6E654C6C61636F66;
      break;
    case 16:
      result = 0x6168706C41736168;
      break;
    case 17:
      result = 0x64656570536F7369;
      break;
    case 18:
      result = 0x7364726F7779656BLL;
      break;
    case 19:
      result = 0x6974756C6F736572;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x6C61426574696877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DA3AC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000DA074(*a1);
  v5 = v4;
  if (v3 == sub_1000DA074(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000DA434()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2._countAndFlagsBits = sub_1000DA074(v1);
  String.append(_:)(v2);

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000DA4D8()
{
  v1 = *v0;
  String.hash(into:)();
  v2._countAndFlagsBits = sub_1000DA074(v1);
  String.append(_:)(v2);

  String.hash(into:)();
}

Swift::Int sub_1000DA57C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2._countAndFlagsBits = sub_1000DA074(v1);
  String.append(_:)(v2);

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000DA61C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DAA40();
  *a1 = result;
  return result;
}

unint64_t sub_1000DA64C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000DA074(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000DA6BC(uint64_t a1)
{
  *(a1 + 8) = sub_1000DA6EC();
  result = sub_1000DA740();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000DA6EC()
{
  result = qword_10020BC70;
  if (!qword_10020BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC70);
  }

  return result;
}

unint64_t sub_1000DA740()
{
  result = qword_10020BC78;
  if (!qword_10020BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC78);
  }

  return result;
}

unint64_t sub_1000DA798()
{
  result = qword_10020BC80;
  if (!qword_10020BC80)
  {
    sub_1000C3C50(&qword_10020BC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC80);
  }

  return result;
}

unint64_t sub_1000DA814(uint64_t a1)
{
  result = sub_1000DA83C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA83C()
{
  result = qword_10020BC90;
  if (!qword_10020BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC90);
  }

  return result;
}

unint64_t sub_1000DA894()
{
  result = qword_10020BC98;
  if (!qword_10020BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageMetadataKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageMetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000DAA40()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000DAAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_1000DAB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t type metadata accessor for LocalizedMapCoordinate()
{
  result = qword_10020BCF8;
  if (!qword_10020BCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DAC04()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocalizedStringResource();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000DAC88(double a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = -a1;
  if (a1 >= 0.0)
  {
    v4 = a1;
  }

  if (v4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = (v4 - v4) * 60.0;
  v6 = COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v6)
  {
    goto LABEL_17;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v4;
  v8 = v5;
  v9 = (floor((v5 - v5) * 60.0 * 1000.0) + 0.5) / 1000.0;
  if (v9 != 60.0)
  {
LABEL_14:
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for BundleLookupReference_ContentInfoViewer();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    v13 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
    v15 = v14;
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for BundleLookupReference_ContentInfoViewer();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:defaultValue:table:bundle:locale:comment:)();
    sub_1000BFBAC(&qword_10020BC48);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10019D780;
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v7;
    *(v17 + 96) = &type metadata for Int;
    *(v17 + 104) = &protocol witness table for Int;
    *(v17 + 72) = v8;
    *(v17 + 136) = &type metadata for Double;
    *(v17 + 144) = &protocol witness table for Double;
    *(v17 + 112) = v9;
    *(v17 + 176) = &type metadata for String;
    *(v17 + 184) = sub_1000D8DB4();
    *(v17 + 152) = v13;
    *(v17 + 160) = v15;
    static String.localizedStringWithFormat(_:_:)();

    LocalizedStringResource.init(stringLiteral:)();
    return;
  }

  if (__OFADD__(v8, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = 0.0;
  if (v8 != 59)
  {
    goto LABEL_14;
  }

  if (!__OFADD__(v7++, 1))
  {
    v8 = 60;
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

BOOL sub_1000DB1D0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for Date();
    ++v2;
    sub_1000DE154(&qword_10020BDE0, &type metadata accessor for Date);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1000DB2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 2)
  {
    v11 = *(v5 + 56);

    return v11(a2, 1, 1, v4, v6);
  }

  else
  {
    v14 = v5;
    sub_1000D9D74();
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1000DB434()
{
  v2[0] = sub_1000DB51C;
  v2[1] = 0;
  v2[2] = sub_1000DB730;
  v2[3] = 0;
  v2[4] = sub_1000DB734;
  v2[5] = 0;
  v2[6] = sub_1000DB7A8;
  v2[7] = 0;
  v2[8] = sub_1000DB7BC;
  v2[9] = 0;
  v2[10] = sub_1000DB818;
  v2[11] = 0;
  v2[12] = sub_1000DB81C;
  v2[13] = 0;
  v2[14] = sub_1000DB9E8;
  v2[15] = 0;
  type metadata accessor for MetadataLocalizer();
  qword_100222538 = swift_initStaticObject();
  return sub_1000DBE00(v2, &v1);
}

uint64_t sub_1000DB51C(double a1, double a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  sub_1000DD2EC(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_ContentInfoViewer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000BFBAC(&qword_10020BC48);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10019B3A0;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_1000D8DB4();
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v17;
  *(v16 + 64) = v17;
  *(v16 + 72) = v12;
  *(v16 + 80) = v13;
  v18 = static String.localizedStringWithFormat(_:_:)();

  return v18;
}

id sub_1000DB734()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:0];
  [v0 setAllowedUnits:192];
  [v0 setZeroFormattingBehavior:0x10000];
  return v0;
}

id sub_1000DB7D0(Class *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(*a1) init];
  [v3 *a2];
  return v3;
}

uint64_t sub_1000DB81C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t sub_1000DBA24()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t sub_1000DBC7C()
{
  v1 = v0[6];
  v6[4] = v0[5];
  v6[5] = v1;
  v2 = v0[8];
  v6[6] = v0[7];
  v6[7] = v2;
  v3 = v0[2];
  v6[0] = v0[1];
  v6[1] = v3;
  v4 = v0[4];
  v6[2] = v0[3];
  v6[3] = v4;
  sub_1000DBDD0(v6);
  return swift_deallocClassInstance();
}

__n128 sub_1000DBCF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1000DBD18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1000DBD60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000DBE38(void **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000C9170(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1000DBEE0(v5);
  *a1 = v3;
}

void sub_1000DBEE0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000DC2D0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000DC00C(0, v2, 1, a1);
  }
}

void sub_1000DC00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1000DE154(&qword_10020BDD8, &type metadata accessor for Date);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000DC2D0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1000C8BE4(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1000DCCF8(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000C8BE4(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_1000C8B58(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1000DE154(&qword_10020BDD8, &type metadata accessor for Date);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1000C8CF8(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1000C8CF8((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1000DCCF8(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000C8BE4(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_1000C8B58(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1000DE154(&qword_10020BDD8, &type metadata accessor for Date);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1000DCCF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for Date();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1000DE154(&qword_10020BDD8, &type metadata accessor for Date);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1000DE154(&qword_10020BDD8, &type metadata accessor for Date);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1000C8BF8(&v54, &v53, &v52);
}

void sub_1000DD2EC(double a1, double a2)
{
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:0];
  [v4 setMaximumFractionDigits:0];
  [v4 setMinimumFractionDigits:0];
  v5 = round(a1);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v7 = [v4 stringFromNumber:isa];

  if (v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = round(a2);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v11 = Int._bridgeToObjectiveC()().super.super.isa;
  v12 = [v4 stringFromNumber:v11];

  if (!v12)
  {

LABEL_15:

    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (!v9 || !v14)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1000DD4F0(double a1, double a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  sub_1000DD2EC(a1, a2);
  v10 = v7;
  if (v7)
  {
    v11 = v6;
    v12 = v8;
    v13 = v9;
    if (v6 == v8 && v7 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      String.LocalizationValue.init(stringLiteral:)();
      type metadata accessor for BundleLookupReference_ContentInfoViewer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      sub_1000BFBAC(&qword_10020BC48);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10019A9F0;

      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_1000D8DB4();
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      type metadata accessor for BundleLookupReference_ContentInfoViewer();
      v17 = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:v17];
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      sub_1000BFBAC(&qword_10020BC48);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10019B3A0;
      *(v19 + 56) = &type metadata for String;
      v20 = sub_1000D8DB4();
      *(v19 + 32) = v11;
      *(v19 + 40) = v10;
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v20;
      *(v19 + 64) = v20;
      *(v19 + 72) = v12;
      *(v19 + 80) = v13;
    }

    v10 = static String.localizedStringWithFormat(_:_:)();
  }

  return v10;
}

uint64_t sub_1000DD810(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = objc_opt_self();
  v10 = [v9 distantPast];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v10) = sub_1000DB1D0(v8, a1);
  v11 = *(v3 + 8);
  v11(v8, v2);
  if ((v10 & 1) == 0)
  {
    v12 = [v9 distantFuture];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v12) = sub_1000DB1D0(v8, a1);
    v11(v8, v2);
    if ((v12 & 1) == 0)
    {
      if (a1[2] == 1)
      {
        v14 = [objc_allocWithZone(NSDateFormatter) init];
        [v14 setDateStyle:3];
        [v14 setTimeStyle:1];
        isa = Date._bridgeToObjectiveC()().super.isa;
        v16 = [v14 stringFromDate:isa];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v17;
      }

      v29 = a1;

      sub_1000DBE38(&v29);
      v18 = v29[2];
      if (v18)
      {
        v20 = *(v3 + 16);
        v19 = v3 + 16;
        v21 = v29 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
        v20(v5, v21, v2);
        v20(v8, &v21[*(v19 + 56) * (v18 - 1)], v2);

        v22 = [objc_allocWithZone(NSDateIntervalFormatter) init];
        v23 = String._bridgeToObjectiveC()();
        [v22 setDateTemplate:v23];

        v24 = Date._bridgeToObjectiveC()().super.isa;
        v25 = Date._bridgeToObjectiveC()().super.isa;
        v26 = [v22 stringFromDate:v24 toDate:v25];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11(v8, v2);
        v11(v5, v2);
        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_1000DDBD0()
{
  v0 = CFLocaleCopyCurrent();
  if (v0)
  {
    v1 = v0;
    if (CFLocaleGetValue(v0, kCFLocaleUsesMetricSystem))
    {
      type metadata accessor for CFBoolean(0);
      v2 = swift_dynamicCastUnknownClassUnconditional();
      if (kCFBooleanTrue)
      {
        sub_1000DE154(&qword_10020BDE8, type metadata accessor for CFBoolean);
        v3 = v2;
        v4 = kCFBooleanTrue;
        v5 = static _CFObject.== infix(_:_:)();

        v2 = v1;
        v1 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1000DDCF4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setFormatterBehavior:1040];
  [v2 setNumberStyle:1];
  [v2 setUsesGroupingSeparator:0];
  [v2 setMaximumFractionDigits:2];
  sub_1000DE108();
  isa = NSNumber.init(floatLiteral:)(0.01).super.super.isa;
  [v2 setRoundingIncrement:isa];

  sub_1000DDBD0();
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_ContentInfoViewer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v7 = [v2 stringFromNumber:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v12 = [v2 stringFromNumber:v11];

  if (v12 && (v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v15 = v14, v12, v10) && v15)
  {
    sub_1000BFBAC(&qword_10020BC48);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10019B3A0;
    *(v16 + 56) = &type metadata for String;
    v17 = sub_1000D8DB4();
    *(v16 + 32) = v8;
    *(v16 + 40) = v10;
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v17;
    *(v16 + 64) = v17;
    *(v16 + 72) = v13;
    *(v16 + 80) = v15;
    v18 = static String.localizedStringWithFormat(_:_:)();

    return v18;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1000DE108()
{
  result = qword_10020BC58;
  if (!qword_10020BC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020BC58);
  }

  return result;
}

uint64_t sub_1000DE154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DE19C(uint64_t a1, char a2, void *a3)
{
  v6 = swift_allocObject();
  sub_1000E1AB4(a1, a2, a3);
  return v6;
}

uint64_t sub_1000DE1F4()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000DE2B4()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_1000F4630(*(v0 + 16));
}

uint64_t sub_1000DE358()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000DE410()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1000C421C(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1000DE464@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  swift_getKeyPath();
  v10 = v1;
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16))
  {
    swift_getKeyPath();
    v10 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return sub_1000F4A58();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    *v6 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
    (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
    static Locale.current.getter();
    return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  }
}

uint64_t sub_1000DE6EC()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1000DE784, v3, v2);
}

uint64_t sub_1000DE784()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  v0[9] = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata___observationRegistrar;
  v0[10] = sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__needsInitialMetadataFetch) == 1)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__performingInitialMetadataFetch;
    v0[11] = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__performingInitialMetadataFetch;
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;
    }

    else
    {
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = 1;
      v0[3] = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v0[12] = 0;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1000DE9A8;

    return sub_1000E1D74();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000DE9A8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1000DEAC8, v3, v2);
}

uint64_t sub_1000DEAC8()
{
  v1 = v0[11];
  v2 = v0[5];

  if (*(v2 + v1))
  {
    v3 = v0[5];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[4] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0[5] + v0[11]) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000DEBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BFBAC(&qword_10020BAC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000E3B8C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000C5624(v11, &qword_10020BAC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
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

      sub_1000C5624(a3, &qword_10020BAC0);

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

  sub_1000C5624(a3, &qword_10020BAC0);
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

uint64_t sub_1000DEEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BFBAC(&qword_10020BAC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000E3B8C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000C5624(v11, &qword_10020BAC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000BFBAC(&qword_10020C0C0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000C5624(a3, &qword_10020BAC0);

      return v22;
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

  sub_1000C5624(a3, &qword_10020BAC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000BFBAC(&qword_10020C0C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000DF1CC()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption);

  return v1;
}

uint64_t sub_1000DF288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BFBAC(&qword_10020BAC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;

  sub_1000DFC74(a1, a2);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v3;
  sub_1000DEEC8(0, 0, v8, &unk_1001A1E60, v11);
}

uint64_t sub_1000DF3CC()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000DF490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000DF550(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000DF590(v1, v2);
}

uint64_t sub_1000DF590(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000DF6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void (*sub_1000DF750(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000DF890;
}

uint64_t sub_1000DF89C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_contentURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000DF914()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__mapCoordinate);
}

__n128 sub_1000DF9C4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__mapCoordinate + 16);
  result = *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__mapCoordinate);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1000DFA80()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000DFB60(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = result + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__mapCoordinate;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4 & 1;
  return result;
}

uint64_t sub_1000DFB7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption);
  a2[1] = v4;
}

uint64_t sub_1000DFC34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000DFC74(v1, v2);
}

uint64_t sub_1000DFC74(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption);
  v6 = *(v2 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000DFDF0(double a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1000DFE6C(9, sub_1000E2D70, v4);
}

uint64_t sub_1000DFE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000E4DF8(0);
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000E004C((v7 + 24), a1, v3, a2, a3);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000DFFD4(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  sub_1000DFE6C(19, sub_1000E2DAC, v2);
}

void sub_1000E004C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v9 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v9);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *a1 >> 62;
  v45 = a5;
  v46 = v11;
  v43 = a4;
  v44 = v14;
  v42 = a3;
  if (v13)
  {
LABEL_48:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      v16 = 0;
      v48 = v12 & 0xFFFFFFFFFFFFFF8;
      v49 = v12 & 0xC000000000000001;
      v40 = 0x80000001001B3210;
      v41 = 0x80000001001B3230;
      v38 = 0x80000001001B31A0;
      v39 = 0x80000001001B31F0;
      v36 = 0x80000001001B3120;
      v37 = 0x80000001001B3160;
      v35 = 0x80000001001B30E0;
      v47 = 0x80000001001B3D80;
      do
      {
        if (v49)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:

LABEL_45:
            v30 = swift_allocObject();
            swift_weakInit();
            v31 = swift_allocObject();
            v32 = v43;
            *(v31 + 2) = v30;
            *(v31 + 3) = v32;
            v33 = v46;
            *(v31 + 4) = v45;
            *v33 = sub_1000E5654;
            v33[1] = v31;
            swift_storeEnumTagMultiPayload();
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            *(&v35 - 2) = v17;
            *(&v35 - 1) = v33;
            v51 = v17;
            sub_1000E551C(&qword_10020B680, type metadata accessor for ContentMetadata.RowData);

            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            sub_1000E8990(v33, type metadata accessor for ContentMetadataValue);

            return;
          }
        }

        else
        {
          if (v16 >= *(v48 + 16))
          {
            __break(1u);
            goto LABEL_48;
          }

          v17 = *(v12 + 8 * v16 + 32);

          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_43;
          }
        }

        type metadata accessor for MainActor();
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v19 = v17[5];
        v20 = v17[6];
        sub_1000C421C(v17 + 2, v19);
        v21 = (*(v20 + 24))(v19, v20);
        v22 = 0xED00006574616E69;
        v23 = 0x64726F6F4370616DLL;
        v25 = v24;
        switch(v50)
        {
          case 1:
            v23 = 0x6572757472657061;
            v22 = 0xEF676E6974746553;
            break;
          case 2:
            v23 = 0xD000000000000012;
            v22 = v35;
            break;
          case 3:
            v23 = 0x6F7250726F6C6F63;
            v26 = 1701603686;
            goto LABEL_33;
          case 4:
            v22 = 0xEA00000000006563;
            v23 = 0x617053726F6C6F63;
            break;
          case 5:
            v22 = 0xE700000000000000;
            v23 = 0x6E6F6974706163;
            break;
          case 6:
            v23 = 0xD000000000000017;
            v22 = v36;
            break;
          case 7:
            v23 = 0x54726F7461657263;
            v22 = 0xEB000000006C6F6FLL;
            break;
          case 8:
            v23 = 0x6544746964657263;
            v22 = 0xED0000736C696174;
            break;
          case 9:
            v23 = 0xD000000000000012;
            v22 = v37;
            break;
          case 10:
            v23 = 0x657275736F707865;
            v22 = 0xEF6D6172676F7250;
            break;
          case 11:
            v23 = 0x657275736F707865;
            v26 = 1701669204;
            goto LABEL_33;
          case 12:
            v22 = 0xE700000000000000;
            v23 = 0x7265626D754E66;
            break;
          case 13:
            v22 = 0xE700000000000000;
            v23 = 0x6E4F6873616C66;
            break;
          case 14:
            v23 = 0xD000000000000016;
            v22 = v38;
            break;
          case 15:
            v23 = 0x6E654C6C61636F66;
            v22 = 0xEB00000000687467;
            break;
          case 16:
            v23 = 0x6168706C41736168;
            v22 = 0xEF6C656E6E616843;
            break;
          case 17:
            v22 = 0xE800000000000000;
            v23 = 0x64656570536F7369;
            break;
          case 18:
            v22 = 0xE800000000000000;
            v23 = 0x7364726F7779656BLL;
            break;
          case 19:
            v22 = 0xEA00000000006E6FLL;
            v23 = 0x6974756C6F736572;
            break;
          case 20:
            v23 = 0xD000000000000010;
            v22 = v39;
            break;
          case 21:
            v23 = 0xD000000000000010;
            v22 = v40;
            break;
          case 22:
            v23 = 0xD000000000000011;
            v22 = v41;
            break;
          case 23:
            v23 = 0x6C61426574696877;
            v26 = 1701015137;
LABEL_33:
            v22 = v26 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v51 = 0xD000000000000020;
        v52 = v47;
        v27 = v22;
        String.append(_:)(*&v23);

        if (v21 == v51 && v25 == v52)
        {
          goto LABEL_44;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {
          goto LABEL_45;
        }

        ++v16;
      }

      while (v18 != v15);
    }
  }
}

uint64_t sub_1000E07C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = *(Strong + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_metadataLocalizer);

  v5 = a2(v4);

  return v5;
}

uint64_t sub_1000E0870@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__groupedRowData;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000E0938()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000E0A04()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000E0AD4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__groupedRowData;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*sub_1000E0B44(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000E0C8C;
}

void sub_1000E0C98(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_1000E0D1C()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000E0DBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000E0E8C(char a1)
{
  v3 = sub_1000F4630(*(v1 + 16));
  v5 = v4;
  if (v3 == sub_1000F4630(a1) && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000E0FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1000E10B8()
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000E1184(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_1000E11EC()
{

  v1 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata12RowDataGroup___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000E1254()
{

  v1 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata12RowDataGroup___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E12F8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000E551C(&qword_10020B680, type metadata accessor for ContentMetadata.RowData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata;
  swift_beginAccess();
  return sub_1000C9298(v5 + v3, a1, type metadata accessor for ContentMetadataValue);
}

uint64_t sub_1000E13D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B680, type metadata accessor for ContentMetadata.RowData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata;
  swift_beginAccess();
  return sub_1000C9298(v3 + v4, a2, type metadata accessor for ContentMetadataValue);
}

uint64_t sub_1000E14B0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000C9298(a1, v6, type metadata accessor for ContentMetadataValue);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000E551C(&qword_10020B680, type metadata accessor for ContentMetadata.RowData);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000E8990(v6, type metadata accessor for ContentMetadataValue);
}

uint64_t sub_1000E1600(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata;
  swift_beginAccess();
  sub_1000E5684(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000E166C()
{
  sub_1000BFDE4(v0 + 16);
  sub_1000E8990(v0 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, type metadata accessor for ContentMetadataValue);
  v1 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000E16F8()
{
  sub_1000BFDE4(v0 + 16);
  sub_1000E8990(v0 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, type metadata accessor for ContentMetadataValue);
  v1 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E185C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000E18FC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000E19B0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000E1AB4(uint64_t a1, char a2, void *a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v7 = v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__mapCoordinate;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = (v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__needsInitialMetadataFetch;
  *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__needsInitialMetadataFetch) = 0;
  *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__performingInitialMetadataFetch) = 0;
  v10 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__updatePersistenceManagedExternally;
  *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__updatePersistenceManagedExternally) = 0;
  v11 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_metadataLocalizer;
  if (qword_10020B278 != -1)
  {
    swift_once();
  }

  *(v3 + v11) = qword_100222538;

  ObservationRegistrar.init()();
  v12 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_contentURL;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3 + v12, a1, v13);
  *(v3 + v10) = a2 & 1;
  *(v3 + v9) = a3 == 0;
  if (!a3)
  {
    a3 = &_swiftEmptyArrayStorage;
  }

  (*(v14 + 8))(a1, v13);
  *(v3 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__groupedRowData) = a3;
  return v3;
}

uint64_t sub_1000E1D74()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1000E1E0C, v3, v2);
}

uint64_t sub_1000E1E0C()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__needsInitialMetadataFetch))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[2] = v1;
    sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__needsInitialMetadataFetch) = 0;
  }

  v3 = sub_1000EEA98(v0[3] + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_contentURL, *(v0[3] + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_metadataLocalizer));
  v0[7] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1000E201C;

    return sub_1000EB010();
  }

  else
  {

    v6 = sub_1000E87E8(_swiftEmptyArrayStorage, &qword_10020B788);
    sub_1000E2308(v6);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000E201C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000E21B4;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1000E2148;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E2148()
{
  v0[10] = v0[9];

  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1000E2238, v1, v2);
}

uint64_t sub_1000E21B4()
{
  v0[10] = sub_1000E87E8(_swiftEmptyArrayStorage, &qword_10020B788);

  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1000E2238, v1, v2);
}

uint64_t sub_1000E2238()
{

  sub_1000E2308(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E22C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000DFC74(v1, v2);
}

uint64_t sub_1000E2308(uint64_t a1)
{
  v3 = type metadata accessor for ContentMetadataItem(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v47 = &v45 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_1000E570C(*(a1 + 16), 0);
  v49 = sub_1000E8140(v51, v10 + 32, v9, a1);
  v1 = v51[3];

  sub_1000D0818();
  if (v49 != v9)
  {
    __break(1u);
LABEL_4:
    v10 = _swiftEmptyArrayStorage;
  }

  v51[0] = v10;
  sub_1000E5780(v51);
  v11 = v51[0];
  v12 = *(v51[0] + 2);
  v46 = a1;
  if (v12)
  {
    v13 = 0;
    v48 = type metadata accessor for MainActor();
    v49 = v11 + 32;
    while (1)
    {
      if (v13 >= *(v11 + 2))
      {
        goto LABEL_73;
      }

      v14 = v13[v49];
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v15 = sub_1000F4630(v14);
      v1 = v16;
      if (v15 == 0x6C6172656E6567 && v16 == 0xE700000000000000)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_19;
      }

      if (v12 == ++v13)
      {
        v1 = *(v11 + 2);
        v13 = v1;
        v19 = v47;
        goto LABEL_41;
      }
    }

LABEL_19:
    v1 = v13 + 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_20;
  }

  v1 = 0;
  v13 = 0;
  v19 = v47;
LABEL_41:
  while (__OFADD__(v1, v13 - v1))
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    v11 = sub_1000E823C(v11);
LABEL_20:
    v19 = v47;
    v20 = *(v11 + 2);
    if ((v20 - 1) != v13)
    {
      v21 = v13 + 33;
      v45 = v11 + 32;
      v49 = v11;
      while (1)
      {
        v24 = v21 - 32;
        if ((v21 - 32) >= v20)
        {
          goto LABEL_74;
        }

        v25 = v21[v11];
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v26 = sub_1000F4630(v25);
        v1 = v27;
        if (v26 == 0x6C6172656E6567 && v27 == 0xE700000000000000)
        {
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            v11 = v49;
            if (v24 != v13)
            {
              if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_79;
              }

              v30 = *(v49 + 2);
              if (v13 >= v30)
              {
                goto LABEL_80;
              }

              if (v24 >= v30)
              {
                goto LABEL_81;
              }

              v31 = v13[v45];
              v13[v45] = v21[v49];
              v21[v11] = v31;
            }

            ++v13;
            goto LABEL_24;
          }
        }

        v11 = v49;
LABEL_24:
        v20 = *(v11 + 2);
        v22 = v21 + 1;
        v23 = v21 - 31;
        ++v21;
        if (v23 == v20)
        {
          v1 = v22 - 32;
          v19 = v47;
          if ((v22 - 32) < v13)
          {
            goto LABEL_76;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          goto LABEL_41;
        }
      }
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v11;
  if (isUniquelyReferenced_nonNull_native && v13 <= *(v11 + 3) >> 1)
  {
    v49 = v11;
  }

  else
  {
    if (v1 <= v13)
    {
      v33 = v13;
    }

    else
    {
      v33 = v1;
    }

    v49 = sub_1000EC9B0(isUniquelyReferenced_nonNull_native, v33, 1, v11);
    v51[0] = v49;
  }

  sub_1000E88EC(v13, v1, 0);
  v34 = v46;
  if (*(v46 + 16))
  {
    v35 = sub_1000EDE8C(0);
    if (v36)
    {
      v11 = *(*(v34 + 56) + 8 * v35);
      v37 = *(v11 + 2);

      if (v37)
      {
        v38 = 0;
        while (v38 < *(v11 + 2))
        {
          sub_1000C9298(&v11[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v38], v19, type metadata accessor for ContentMetadataItem);
          sub_1000E3BFC(v19, v50, 0);
          ++v38;
          sub_1000E8990(v19, type metadata accessor for ContentMetadataItem);
          if (v37 == v38)
          {
            goto LABEL_55;
          }
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_55:

      v34 = v46;
    }
  }

  v11 = v49;
  v48 = *(v49 + 2);
  if (v48)
  {
    type metadata accessor for MainActor();
    v39 = 0;
    v47 = v11 + 32;
    while (v39 < *(v11 + 2))
    {
      v13 = v47[v39];
      v1 = static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v34 + 16) && (v40 = sub_1000EDE8C(v13), (v41 & 1) != 0))
      {
        v11 = *(*(v34 + 56) + 8 * v40);
        v42 = *(v11 + 2);

        if (v42)
        {
          v43 = 0;
          while (v43 < *(v11 + 2))
          {
            sub_1000C9298(&v11[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v43], v6, type metadata accessor for ContentMetadataItem);
            sub_1000E3BFC(v6, v50, v13);
            ++v43;
            sub_1000E8990(v6, type metadata accessor for ContentMetadataItem);
            if (v42 == v43)
            {
              goto LABEL_69;
            }
          }

          __break(1u);
          break;
        }

LABEL_69:

        v34 = v46;
      }

      else
      {
      }

      ++v39;
      v11 = v49;
      if (v39 == v48)
      {
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }
}

uint64_t sub_1000E2A34(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1000E2AE4;

  return sub_1000E2DF8();
}

uint64_t sub_1000E2AE4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_1000E8A98;
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_1000E2C68;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_1000E2C68()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000E2CF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000DF590(v1, v2);
}

uint64_t sub_1000E2DF8()
{
  v1[4] = v0;
  sub_1000BFBAC(&qword_10020C0C8);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for UTType();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v4;
  v1[12] = v3;

  return _swift_task_switch(sub_1000E2F30, v4, v3);
}

uint64_t sub_1000E2F30()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__updatePersistenceManagedExternally) & 1) != 0 || (v2 = v0[4], swift_getKeyPath(), v0[3] = v2, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v3 = v2 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption, v0[13] = *(v2 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption), v4 = *(v3 + 8), (v0[14] = v4) == 0))
  {

    v11 = v0[1];

    return v11();
  }

  else
  {
    v5 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v0[15] = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_contentURL;

    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v8 = *(v5 + 48);
    if (v8(v7, 1, v6) == 1)
    {
      v9 = v0[5];
      v10 = v0[6];
      static UTType.item.getter();
      if (v8(v9, 1, v10) != 1)
      {
        sub_1000C5624(v0[5], &qword_10020C0C8);
      }
    }

    else
    {
      (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    }

    return _swift_task_switch(sub_1000E31C0, 0, 0);
  }
}

uint64_t sub_1000E31C0()
{
  v6 = *(v0 + 104);
  v1 = *(v0 + 72);
  v2 = *(v0 + 32) + *(v0 + 120);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1000E32DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001FLL, 0x80000001001B4EE0, sub_1000E863C, v3, &type metadata for () + 8);
}

uint64_t sub_1000E32DC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000E34F8;
  }

  else
  {

    v2 = sub_1000E3404;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E3404()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v1 = v0[11];
  v2 = v0[12];

  return _swift_task_switch(sub_1000E3478, v1, v2);
}

uint64_t sub_1000E3478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E34F8()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);
  v4 = v0[11];
  v5 = v0[12];

  return _swift_task_switch(sub_1000E3590, v4, v5);
}

uint64_t sub_1000E3590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E361C()
{

  v1 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_contentURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1000E36F8()
{

  v1 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata_contentURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E3818()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000E397C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E3A64(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3A9C()
{
  result = type metadata accessor for ContentMetadataValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E3B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020BAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3BFC(void *a1, uint64_t a2, int a3)
{
  v42 = a3;
  v44 = a2;
  v4 = type metadata accessor for ContentMetadataMapCoordinate(0);
  __chkstk_darwin(v4 - 8);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v43);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = sub_1000BFBAC(&qword_10020B670);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v40 - v18;
  type metadata accessor for MainActor();
  v46 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a1[3];
  v20 = a1[4];
  sub_1000C421C(a1, v19);
  v21 = (*(v20 + 24))(v19, v20);
  v23 = v22;
  *&v47[0] = 0xD000000000000020;
  *(&v47[0] + 1) = 0x80000001001B3D80;
  v24._countAndFlagsBits = 0x6E6F6974706163;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  if (__PAIR128__(v23, v21) == v47[0])
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  type metadata accessor for ContentMetadataItem(0);
  sub_1000EFA8C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000C5624(v12, &qword_10020B670);
LABEL_8:
    v26 = *(type metadata accessor for ContentMetadataItem(0) + 20);
    sub_1000C9298(a1 + v26, v9, type metadata accessor for ContentMetadataValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 4) < 2)
      {
      }

      v37 = type metadata accessor for ContentMetadataValue;
    }

    else
    {
      if (EnumCaseMultiPayload < 2)
      {
        sub_1000E8990(v9, type metadata accessor for ContentMetadataValue);
        sub_1000BFD88(a1, v47);
        v28 = a1 + v26;
        v29 = v41;
        sub_1000C9298(v28, v41, type metadata accessor for ContentMetadataValue);
        type metadata accessor for ContentMetadata.RowData(0);
        v30 = swift_allocObject();
        ObservationRegistrar.init()();
        v31 = v47[1];
        *(v30 + 16) = v47[0];
        *(v30 + 32) = v31;
        *(v30 + 48) = v47[2];
        *(v30 + 64) = v48;
        sub_1000E89F0(v29, v30 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, type metadata accessor for ContentMetadataValue);
        sub_1000E4910(v42, v30);
      }

      v38 = v9;
      v9 = v40;
      sub_1000E89F0(v38, v40, type metadata accessor for ContentMetadataMapCoordinate);
      sub_1000E4264(v42, a1, v9);
      v37 = type metadata accessor for ContentMetadataMapCoordinate;
    }

    sub_1000E8990(v9, v37);
  }

  v32 = v45;
  (*(v14 + 32))(v45, v12, v13);
  (*(v14 + 16))(v16, v32, v13);
  v33 = String.init(localized:)();
  v35 = v34;
  swift_getKeyPath();
  v36 = v44;
  *&v47[0] = v44;
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v36 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__performingInitialMetadataFetch) == 1 && (swift_getKeyPath(), *&v47[0] = v36, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v36 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption + 8)))
  {
  }

  else
  {
    sub_1000DFC74(v33, v35);
  }

  (*(v14 + 8))(v45, v13);
}

uint64_t sub_1000E4264(int a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v47 = a1;
  v46 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v46);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v41 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v48 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v40 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = (a3 + *(type metadata accessor for ContentMetadataMapCoordinate(0) + 20));
  v17 = *v43;
  v16 = v43[1];
  swift_getKeyPath();
  v49 = v3;
  v50 = v17;
  v51 = v16;
  v52 = 0;
  v58[0] = v3;
  v45 = v3;
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  String.LocalizationValue.init(stringLiteral:)();
  v39 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  *v9 = v39;
  v36 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v18 = *(v48 + 104);
  v48 += 104;
  v38 = v18;
  v34 = v9;
  v18(v9);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000EFDDC(7627116, 0xE300000000000000, v15, v58);
  v19 = *(v13 + 8);
  v19(v15, v12);
  v32[0] = v19;
  sub_1000BFD88(v58, v57);
  v35 = type metadata accessor for LocalizedMapCoordinate();
  v20 = *(v13 + 16);
  v20(v15, v43 + *(v35 + 20), v12);
  v32[1] = v13 + 16;
  sub_1000BFD88(v57, v55);
  v21 = v42;
  v20(v42, v15, v12);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ContentMetadata.RowData(0);
  v22 = swift_allocObject();
  ObservationRegistrar.init()();
  v19(v15, v12);
  sub_1000BFDE4(v57);
  v23 = v55[1];
  v24 = v55[2];
  *(v22 + 16) = v55[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v24;
  *(v22 + 64) = v56;
  v33 = type metadata accessor for ContentMetadataValue;
  sub_1000E89F0(v21, v22 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, type metadata accessor for ContentMetadataValue);
  sub_1000E4910(v47, v22);
  String.LocalizationValue.init(stringLiteral:)();
  v25 = v38;
  v26 = v34;
  *v34 = v39;
  v25(v26, v36, v37);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000EFDDC(7237484, 0xE300000000000000, v15, v57);
  v27 = v32[0];
  (v32[0])(v15, v12);
  sub_1000BFD88(v57, v55);
  v20(v15, v43 + *(v35 + 24), v12);
  sub_1000BFD88(v55, v53);
  v28 = v42;
  v20(v42, v15, v12);
  swift_storeEnumTagMultiPayload();
  v29 = swift_allocObject();
  ObservationRegistrar.init()();
  v27(v15, v12);
  sub_1000BFDE4(v55);
  v30 = v53[1];
  *(v29 + 16) = v53[0];
  *(v29 + 32) = v30;
  *(v29 + 48) = v53[2];
  *(v29 + 64) = v54;
  sub_1000E89F0(v28, v29 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v33);
  sub_1000E4910(v47, v29);

  sub_1000BFDE4(v57);
  return sub_1000BFDE4(v58);
}

uint64_t sub_1000E4910(char a1, uint64_t a2)
{
  v3 = sub_1000E4DF8(a1);
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000E4A54((v3 + 24), a2);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000E4A54(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *a1 >> 62;
  v22 = v6;
  v23 = a1;
  v24 = a2;
  if (v8)
  {
LABEL_17:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            swift_getKeyPath();
            v14 = v24;
            v26[0] = v24;
            sub_1000E551C(&qword_10020B680, type metadata accessor for ContentMetadata.RowData);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v15 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata;
            swift_beginAccess();
            v16 = v14 + v15;
            v17 = v22;
            sub_1000C9298(v16, v22, type metadata accessor for ContentMetadataValue);
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            *(&v21 - 2) = v11;
            *(&v21 - 1) = v17;
            v25 = v11;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            return sub_1000E8990(v17, type metadata accessor for ContentMetadataValue);
          }
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v11 = *(v7 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_14;
          }
        }

        type metadata accessor for MainActor();
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v13 = *(v11 + 56);
        v26[3] = &type metadata for ContentMetadataKey;
        v26[0] = swift_allocObject();
        sub_1000BFD88(v24 + 16, v26[0] + 16);
        LOBYTE(v13) = v13(v26);
        sub_1000D05A0(v26);

        if (v13)
        {
          goto LABEL_15;
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  v20 = v23;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_1000E4DF8(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1000E551C(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__groupedRowData;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v15 = v2;
  if (v4 >> 62)
  {
LABEL_25:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }
      }

      type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      sub_1000E551C(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = sub_1000F4630(*(v7 + 16));
      v11 = v10;
      if (v9 == sub_1000F4630(a1) && v11 == v12)
      {

LABEL_22:

        return v7;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_22;
      }

      ++v6;
    }

    while (v8 != v5);
  }

  type metadata accessor for ContentMetadata.RowDataGroup(0);
  v7 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v7 + 16) = a1;
  *(v7 + 24) = _swiftEmptyArrayStorage;
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v15 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return v7;
}

uint64_t sub_1000E5234(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000E532C;

  return v6(a1);
}

uint64_t sub_1000E532C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E5424()
{

  return swift_deallocObject();
}

uint64_t sub_1000E545C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000E8B20;

  return sub_1000E5234(a1, v4);
}

uint64_t sub_1000E551C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E55BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E560C(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000E5684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentMetadataValue(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_1000E56E8()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__mapCoordinate);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void *sub_1000E570C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000BFBAC(&qword_10020B7A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int sub_1000E5780(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000C915C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000E57EC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000E57EC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1000E6374(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000E58E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E58E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for MainActor();
    v7 = (v6 + v4);
    v8 = v5 - v4;
    while (1)
    {
      v25 = v4;
      v9 = *(v6 + v4);
      v23 = v8;
      v24 = v7;
      while (2)
      {
        v10 = *(v7 - 1);
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v11 = 0xE700000000000000;
        v12 = 0x6C6172656E6567;
        switch(v9)
        {
          case 1:
            v11 = 0xE400000000000000;
            v12 = 1718188133;
            break;
          case 2:
            v12 = 0x78754166697865;
            break;
          case 3:
            v11 = 0xE400000000000000;
            v12 = 1668575337;
            break;
          case 4:
            v11 = 0xE300000000000000;
            v12 = 7565415;
            break;
          case 5:
            v12 = 1717987700;
            v11 = 0xE400000000000000;
            break;
          case 6:
            v11 = 0xE400000000000000;
            v12 = 1667851624;
            break;
          case 7:
            v12 = 6711655;
            v11 = 0xE300000000000000;
            break;
          case 8:
            v11 = 0xE400000000000000;
            v12 = 1718183530;
            break;
          case 9:
            v12 = 6778480;
            v11 = 0xE300000000000000;
            break;
          case 10:
            v11 = 0xE300000000000000;
            v12 = 7823730;
            break;
          case 11:
            v11 = 0xE400000000000000;
            v12 = 1717987683;
            break;
          case 12:
            v11 = 0xE900000000000070;
            v12 = 0x6F68736F746F6870;
            break;
          case 13:
            v11 = 0xE300000000000000;
            v12 = 6778468;
            break;
          case 14:
            v11 = 0xE300000000000000;
            v12 = 6383476;
            break;
          case 15:
            v11 = 0xE500000000000000;
            v12 = 0x6D6F636964;
            break;
          case 16:
            v11 = 0xE300000000000000;
            v12 = 7501925;
            break;
          case 17:
            v11 = 0xE300000000000000;
            v12 = 7303277;
            break;
          case 18:
            v11 = 0xE300000000000000;
            v12 = 6710384;
            break;
          case 19:
            v11 = 0xE300000000000000;
            v12 = 7368056;
            break;
          case 20:
            v12 = 0x6E614372656B616DLL;
            goto LABEL_44;
          case 21:
            v12 = 0x73704572656B616DLL;
            goto LABEL_44;
          case 22:
            v11 = 0xE900000000000069;
            v12 = 0x6A754672656B616DLL;
            break;
          case 23:
            v12 = 0x73614872656B616DLL;
            v11 = 0xEF64616C626C6573;
            break;
          case 24:
            v11 = 0xEA00000000006B61;
            v12 = 0x646F4B72656B616DLL;
            break;
          case 25:
            v12 = 0x61654C72656B616DLL;
            v11 = 0xE900000000000066;
            break;
          case 26:
            v11 = 0xEA00000000006163;
            v12 = 0x69654C72656B616DLL;
            break;
          case 27:
            v12 = 0x6E694D72656B616DLL;
            v11 = 0xEC00000061746C6FLL;
            break;
          case 28:
            v12 = 0x6B694E72656B616DLL;
LABEL_44:
            v11 = 0xEA00000000006E6FLL;
            break;
          case 29:
            v12 = 0x746F4E72656B616DLL;
            v11 = 0xED00006F666E4965;
            break;
          case 30:
            v12 = 0x796C4F72656B616DLL;
            v11 = 0xEC0000007375706DLL;
            break;
          case 31:
            v12 = 0x6E615072656B616DLL;
            v11 = 0xEE0063696E6F7361;
            break;
          case 32:
            v12 = 0x6E655072656B616DLL;
            v11 = 0xEB00000000786174;
            break;
          case 33:
            v11 = 0xE900000000000079;
            v12 = 0x6E6F5372656B616DLL;
            break;
          case 34:
            v11 = 0xEA00000000006369;
            v12 = 0x74736F6E67616964;
            break;
          case 35:
            v11 = 0xE800000000000000;
            v12 = 0x617461646174656DLL;
            break;
          case 36:
            v12 = 0x5365727574636970;
            v11 = 0xEC000000656C7974;
            break;
          default:
            break;
        }

        v13 = 0xE700000000000000;
        v14 = 0x6C6172656E6567;
        switch(v10)
        {
          case 1:
            v13 = 0xE400000000000000;
            v15 = 30821;
            goto LABEL_98;
          case 2:
            if (v12 != 0x78754166697865)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 3:
            v13 = 0xE400000000000000;
            if (v12 != 1668575337)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 4:
            v13 = 0xE300000000000000;
            if (v12 != 7565415)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 5:
            v13 = 0xE400000000000000;
            if (v12 != 1717987700)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 6:
            v13 = 0xE400000000000000;
            if (v12 != 1667851624)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 7:
            v18 = 6711655;
            goto LABEL_79;
          case 8:
            v13 = 0xE400000000000000;
            v15 = 26218;
LABEL_98:
            if (v12 != (v15 | 0x66690000))
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 9:
            v18 = 6778480;
LABEL_79:
            v13 = 0xE300000000000000;
            if (v12 != v18)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 10:
            v13 = 0xE300000000000000;
            if (v12 != 7823730)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 11:
            v13 = 0xE400000000000000;
            if (v12 != 1717987683)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 12:
            v13 = 0xE900000000000070;
            if (v12 != 0x6F68736F746F6870)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 13:
            v13 = 0xE300000000000000;
            if (v12 != 6778468)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 14:
            v13 = 0xE300000000000000;
            if (v12 != 6383476)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 15:
            v13 = 0xE500000000000000;
            if (v12 != 0x6D6F636964)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 16:
            v13 = 0xE300000000000000;
            if (v12 != 7501925)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 17:
            v13 = 0xE300000000000000;
            if (v12 != 7303277)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 18:
            v13 = 0xE300000000000000;
            if (v12 != 6710384)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 19:
            v13 = 0xE300000000000000;
            if (v12 != 7368056)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 20:
            v19 = 0x6E614372656B616DLL;
            goto LABEL_112;
          case 21:
            v19 = 0x73704572656B616DLL;
            goto LABEL_112;
          case 22:
            v13 = 0xE900000000000069;
            if (v12 != 0x6A754672656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 23:
            v13 = 0xEF64616C626C6573;
            if (v12 != 0x73614872656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 24:
            v13 = 0xEA00000000006B61;
            if (v12 != 0x646F4B72656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 25:
            v13 = 0xE900000000000066;
            if (v12 != 0x61654C72656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 26:
            v13 = 0xEA00000000006163;
            if (v12 != 0x69654C72656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 27:
            v16 = 0x6E694D72656B616DLL;
            v17 = 1635019887;
            goto LABEL_101;
          case 28:
            v19 = 0x6B694E72656B616DLL;
LABEL_112:
            v13 = 0xEA00000000006E6FLL;
            if (v12 != v19)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 29:
            v14 = 0x746F4E72656B616DLL;
            v13 = 0xED00006F666E4965;
            goto LABEL_115;
          case 30:
            v16 = 0x796C4F72656B616DLL;
            v17 = 1937076333;
            goto LABEL_101;
          case 31:
            v13 = 0xEE0063696E6F7361;
            if (v12 != 0x6E615072656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 32:
            v13 = 0xEB00000000786174;
            if (v12 != 0x6E655072656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 33:
            v13 = 0xE900000000000079;
            if (v12 != 0x6E6F5372656B616DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 34:
            v13 = 0xEA00000000006369;
            if (v12 != 0x74736F6E67616964)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 35:
            v13 = 0xE800000000000000;
            if (v12 != 0x617461646174656DLL)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          case 36:
            v16 = 0x5365727574636970;
            v17 = 1701607796;
LABEL_101:
            v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v12 != v16)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          default:
LABEL_115:
            if (v12 != v14)
            {
              goto LABEL_117;
            }

LABEL_116:
            if (v11 != v13)
            {
LABEL_117:
              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v20 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (!v6)
              {
                __break(1u);
                JUMPOUT(0x1000E624CLL);
              }

              v9 = *v7;
              *v7 = *(v7 - 1);
              *--v7 = v9;
              if (__CFADD__(v8++, 1))
              {
                goto LABEL_5;
              }

              continue;
            }

LABEL_5:
            ++v4;
            v7 = v24 + 1;
            v8 = v23 - 1;
            if (v25 + 1 == a2)
            {
              return result;
            }

            break;
        }

        break;
      }
    }
  }

  return result;
}

uint64_t sub_1000E6374(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = (v9 + 1);
      if (v9 + 1 < v8)
      {
        v12 = v11[*v6];
        v116 = *v6;
        v13 = *(*v6 + v9);
        type metadata accessor for MainActor();
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v14 = sub_1000F4630(v12);
        v16 = v15;
        if (v14 == sub_1000F4630(v13) && v16 == v17)
        {
          v118 = 0;
        }

        else
        {
          v118 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v111 = v9;
        v11 = (v9 + 2);
        if (v9 + 2 < v8)
        {
          while (2)
          {
            v20 = v11;
            v21 = &v11[v116];
            v22 = v11[v116];
            v23 = *(v21 - 1);
            static MainActor.shared.getter();
            dispatch thunk of Actor.unownedExecutor.getter();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v24 = 0xE700000000000000;
            v25 = 0x6C6172656E6567;
            switch(v22)
            {
              case 1:
                v24 = 0xE400000000000000;
                v25 = 1718188133;
                break;
              case 2:
                v25 = 0x78754166697865;
                break;
              case 3:
                v24 = 0xE400000000000000;
                v25 = 1668575337;
                break;
              case 4:
                v24 = 0xE300000000000000;
                v25 = 7565415;
                break;
              case 5:
                v25 = 1717987700;
                v24 = 0xE400000000000000;
                break;
              case 6:
                v24 = 0xE400000000000000;
                v25 = 1667851624;
                break;
              case 7:
                v25 = 6711655;
                v24 = 0xE300000000000000;
                break;
              case 8:
                v24 = 0xE400000000000000;
                v25 = 1718183530;
                break;
              case 9:
                v25 = 6778480;
                v24 = 0xE300000000000000;
                break;
              case 10:
                v24 = 0xE300000000000000;
                v25 = 7823730;
                break;
              case 11:
                v24 = 0xE400000000000000;
                v25 = 1717987683;
                break;
              case 12:
                v24 = 0xE900000000000070;
                v25 = 0x6F68736F746F6870;
                break;
              case 13:
                v24 = 0xE300000000000000;
                v25 = 6778468;
                break;
              case 14:
                v24 = 0xE300000000000000;
                v25 = 6383476;
                break;
              case 15:
                v24 = 0xE500000000000000;
                v25 = 0x6D6F636964;
                break;
              case 16:
                v24 = 0xE300000000000000;
                v25 = 7501925;
                break;
              case 17:
                v24 = 0xE300000000000000;
                v25 = 7303277;
                break;
              case 18:
                v24 = 0xE300000000000000;
                v25 = 6710384;
                break;
              case 19:
                v24 = 0xE300000000000000;
                v25 = 7368056;
                break;
              case 20:
                v25 = 0x6E614372656B616DLL;
                goto LABEL_54;
              case 21:
                v25 = 0x73704572656B616DLL;
                goto LABEL_54;
              case 22:
                v24 = 0xE900000000000069;
                v25 = 0x6A754672656B616DLL;
                break;
              case 23:
                v25 = 0x73614872656B616DLL;
                v24 = 0xEF64616C626C6573;
                break;
              case 24:
                v24 = 0xEA00000000006B61;
                v25 = 0x646F4B72656B616DLL;
                break;
              case 25:
                v25 = 0x61654C72656B616DLL;
                v24 = 0xE900000000000066;
                break;
              case 26:
                v24 = 0xEA00000000006163;
                v25 = 0x69654C72656B616DLL;
                break;
              case 27:
                v25 = 0x6E694D72656B616DLL;
                v24 = 0xEC00000061746C6FLL;
                break;
              case 28:
                v25 = 0x6B694E72656B616DLL;
LABEL_54:
                v24 = 0xEA00000000006E6FLL;
                break;
              case 29:
                v25 = 0x746F4E72656B616DLL;
                v24 = 0xED00006F666E4965;
                break;
              case 30:
                v25 = 0x796C4F72656B616DLL;
                v24 = 0xEC0000007375706DLL;
                break;
              case 31:
                v25 = 0x6E615072656B616DLL;
                v24 = 0xEE0063696E6F7361;
                break;
              case 32:
                v25 = 0x6E655072656B616DLL;
                v24 = 0xEB00000000786174;
                break;
              case 33:
                v24 = 0xE900000000000079;
                v25 = 0x6E6F5372656B616DLL;
                break;
              case 34:
                v24 = 0xEA00000000006369;
                v25 = 0x74736F6E67616964;
                break;
              case 35:
                v24 = 0xE800000000000000;
                v25 = 0x617461646174656DLL;
                break;
              case 36:
                v25 = 0x5365727574636970;
                v24 = 0xEC000000656C7974;
                break;
              default:
                break;
            }

            v26 = 0xE700000000000000;
            v27 = 0x6C6172656E6567;
            switch(v23)
            {
              case 1:
                v26 = 0xE400000000000000;
                v28 = 30821;
                goto LABEL_108;
              case 2:
                if (v25 != 0x78754166697865)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 3:
                v26 = 0xE400000000000000;
                if (v25 != 1668575337)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 4:
                v26 = 0xE300000000000000;
                if (v25 != 7565415)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 5:
                v26 = 0xE400000000000000;
                if (v25 != 1717987700)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 6:
                v26 = 0xE400000000000000;
                if (v25 != 1667851624)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 7:
                v31 = 6711655;
                goto LABEL_89;
              case 8:
                v26 = 0xE400000000000000;
                v28 = 26218;
LABEL_108:
                if (v25 != (v28 | 0x66690000))
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 9:
                v31 = 6778480;
LABEL_89:
                v26 = 0xE300000000000000;
                if (v25 != v31)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 10:
                v26 = 0xE300000000000000;
                if (v25 != 7823730)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 11:
                v26 = 0xE400000000000000;
                if (v25 != 1717987683)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 12:
                v26 = 0xE900000000000070;
                if (v25 != 0x6F68736F746F6870)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 13:
                v26 = 0xE300000000000000;
                if (v25 != 6778468)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 14:
                v26 = 0xE300000000000000;
                if (v25 != 6383476)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 15:
                v26 = 0xE500000000000000;
                if (v25 != 0x6D6F636964)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 16:
                v26 = 0xE300000000000000;
                if (v25 != 7501925)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 17:
                v26 = 0xE300000000000000;
                if (v25 != 7303277)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 18:
                v26 = 0xE300000000000000;
                if (v25 != 6710384)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 19:
                v26 = 0xE300000000000000;
                if (v25 != 7368056)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 20:
                v32 = 0x6E614372656B616DLL;
                goto LABEL_122;
              case 21:
                v32 = 0x73704572656B616DLL;
                goto LABEL_122;
              case 22:
                v26 = 0xE900000000000069;
                if (v25 != 0x6A754672656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 23:
                v26 = 0xEF64616C626C6573;
                if (v25 != 0x73614872656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 24:
                v26 = 0xEA00000000006B61;
                if (v25 != 0x646F4B72656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 25:
                v26 = 0xE900000000000066;
                if (v25 != 0x61654C72656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 26:
                v26 = 0xEA00000000006163;
                if (v25 != 0x69654C72656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 27:
                v29 = 0x6E694D72656B616DLL;
                v30 = 1635019887;
                goto LABEL_111;
              case 28:
                v32 = 0x6B694E72656B616DLL;
LABEL_122:
                v26 = 0xEA00000000006E6FLL;
                if (v25 != v32)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 29:
                v27 = 0x746F4E72656B616DLL;
                v26 = 0xED00006F666E4965;
                goto LABEL_125;
              case 30:
                v29 = 0x796C4F72656B616DLL;
                v30 = 1937076333;
                goto LABEL_111;
              case 31:
                v26 = 0xEE0063696E6F7361;
                if (v25 != 0x6E615072656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 32:
                v26 = 0xEB00000000786174;
                if (v25 != 0x6E655072656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 33:
                v26 = 0xE900000000000079;
                if (v25 != 0x6E6F5372656B616DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 34:
                v26 = 0xEA00000000006369;
                if (v25 != 0x74736F6E67616964)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 35:
                v26 = 0xE800000000000000;
                if (v25 != 0x617461646174656DLL)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              case 36:
                v29 = 0x5365727574636970;
                v30 = 1701607796;
LABEL_111:
                v26 = v30 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                if (v25 != v29)
                {
                  goto LABEL_15;
                }

                goto LABEL_126;
              default:
LABEL_125:
                if (v25 != v27)
                {
                  goto LABEL_15;
                }

LABEL_126:
                if (v24 == v26)
                {

                  v11 = v20;
                  if (v118)
                  {
                    v6 = a3;
                    v9 = v111;
                    v7 = a1;
                    if (v11 < v111)
                    {
                      goto LABEL_354;
                    }

                    goto LABEL_134;
                  }
                }

                else
                {
LABEL_15:
                  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v11 = v20;
                  if ((v118 ^ v19))
                  {
                    break;
                  }
                }

                if (v8 != ++v11)
                {
                  continue;
                }

                v11 = v8;
                break;
            }

            break;
          }
        }

        v6 = a3;
        v9 = v111;
        v7 = a1;
        if (v118)
        {
          if (v11 < v111)
          {
            goto LABEL_354;
          }

LABEL_134:
          if (v9 < v11)
          {
            v33 = v11 - 1;
            v34 = v9;
            do
            {
              if (v34 != v33)
              {
                v36 = *v6;
                if (!*v6)
                {
                  goto LABEL_360;
                }

                v37 = v34[v36];
                v34[v36] = v33[v36];
                v33[v36] = v37;
              }
            }

            while (++v34 < v33--);
          }
        }
      }

      v38 = v6[1];
      if (v11 >= v38)
      {
        goto LABEL_272;
      }

      if (__OFSUB__(v11, v9))
      {
        goto LABEL_353;
      }

      if (&v11[-v9] >= a4)
      {
        goto LABEL_272;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_355;
      }

      v39 = (v9 + a4 >= v38 ? v6[1] : v9 + a4);
      if (v39 < v9)
      {
        break;
      }

      if (v11 == v39)
      {
        goto LABEL_272;
      }

      v108 = v5;
      v40 = *v6;
      type metadata accessor for MainActor();
      v41 = &v11[v40];
      v112 = v9;
      v42 = v9 - v11;
      v114 = v39;
LABEL_153:
      v117 = v41;
      v119 = v11;
      v43 = v11[v40];
      v115 = v42;
      v44 = v42;
      while (2)
      {
        v45 = *(v41 - 1);
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v46 = 0xE700000000000000;
        v47 = 0x6C6172656E6567;
        switch(v43)
        {
          case 1:
            v46 = 0xE400000000000000;
            v47 = 1718188133;
            break;
          case 2:
            v47 = 0x78754166697865;
            break;
          case 3:
            v46 = 0xE400000000000000;
            v47 = 1668575337;
            break;
          case 4:
            v46 = 0xE300000000000000;
            v47 = 7565415;
            break;
          case 5:
            v47 = 1717987700;
            v46 = 0xE400000000000000;
            break;
          case 6:
            v46 = 0xE400000000000000;
            v47 = 1667851624;
            break;
          case 7:
            v47 = 6711655;
            v46 = 0xE300000000000000;
            break;
          case 8:
            v46 = 0xE400000000000000;
            v47 = 1718183530;
            break;
          case 9:
            v47 = 6778480;
            v46 = 0xE300000000000000;
            break;
          case 10:
            v46 = 0xE300000000000000;
            v47 = 7823730;
            break;
          case 11:
            v46 = 0xE400000000000000;
            v47 = 1717987683;
            break;
          case 12:
            v46 = 0xE900000000000070;
            v47 = 0x6F68736F746F6870;
            break;
          case 13:
            v46 = 0xE300000000000000;
            v47 = 6778468;
            break;
          case 14:
            v46 = 0xE300000000000000;
            v47 = 6383476;
            break;
          case 15:
            v46 = 0xE500000000000000;
            v47 = 0x6D6F636964;
            break;
          case 16:
            v46 = 0xE300000000000000;
            v47 = 7501925;
            break;
          case 17:
            v46 = 0xE300000000000000;
            v47 = 7303277;
            break;
          case 18:
            v46 = 0xE300000000000000;
            v47 = 6710384;
            break;
          case 19:
            v46 = 0xE300000000000000;
            v47 = 7368056;
            break;
          case 20:
            v47 = 0x6E614372656B616DLL;
            goto LABEL_191;
          case 21:
            v47 = 0x73704572656B616DLL;
            goto LABEL_191;
          case 22:
            v46 = 0xE900000000000069;
            v47 = 0x6A754672656B616DLL;
            break;
          case 23:
            v47 = 0x73614872656B616DLL;
            v46 = 0xEF64616C626C6573;
            break;
          case 24:
            v46 = 0xEA00000000006B61;
            v47 = 0x646F4B72656B616DLL;
            break;
          case 25:
            v47 = 0x61654C72656B616DLL;
            v46 = 0xE900000000000066;
            break;
          case 26:
            v46 = 0xEA00000000006163;
            v47 = 0x69654C72656B616DLL;
            break;
          case 27:
            v47 = 0x6E694D72656B616DLL;
            v46 = 0xEC00000061746C6FLL;
            break;
          case 28:
            v47 = 0x6B694E72656B616DLL;
LABEL_191:
            v46 = 0xEA00000000006E6FLL;
            break;
          case 29:
            v47 = 0x746F4E72656B616DLL;
            v46 = 0xED00006F666E4965;
            break;
          case 30:
            v47 = 0x796C4F72656B616DLL;
            v46 = 0xEC0000007375706DLL;
            break;
          case 31:
            v47 = 0x6E615072656B616DLL;
            v46 = 0xEE0063696E6F7361;
            break;
          case 32:
            v47 = 0x6E655072656B616DLL;
            v46 = 0xEB00000000786174;
            break;
          case 33:
            v46 = 0xE900000000000079;
            v47 = 0x6E6F5372656B616DLL;
            break;
          case 34:
            v46 = 0xEA00000000006369;
            v47 = 0x74736F6E67616964;
            break;
          case 35:
            v46 = 0xE800000000000000;
            v47 = 0x617461646174656DLL;
            break;
          case 36:
            v47 = 0x5365727574636970;
            v46 = 0xEC000000656C7974;
            break;
          default:
            break;
        }

        v48 = 0xE700000000000000;
        v49 = 0x6C6172656E6567;
        switch(v45)
        {
          case 1:
            v48 = 0xE400000000000000;
            v50 = 30821;
            goto LABEL_245;
          case 2:
            if (v47 != 0x78754166697865)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 3:
            v48 = 0xE400000000000000;
            if (v47 != 1668575337)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 4:
            v48 = 0xE300000000000000;
            if (v47 != 7565415)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 5:
            v48 = 0xE400000000000000;
            if (v47 != 1717987700)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 6:
            v48 = 0xE400000000000000;
            if (v47 != 1667851624)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 7:
            v53 = 6711655;
            goto LABEL_226;
          case 8:
            v48 = 0xE400000000000000;
            v50 = 26218;
LABEL_245:
            if (v47 != (v50 | 0x66690000))
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 9:
            v53 = 6778480;
LABEL_226:
            v48 = 0xE300000000000000;
            if (v47 != v53)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 10:
            v48 = 0xE300000000000000;
            if (v47 != 7823730)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 11:
            v48 = 0xE400000000000000;
            if (v47 != 1717987683)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 12:
            v48 = 0xE900000000000070;
            if (v47 != 0x6F68736F746F6870)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 13:
            v48 = 0xE300000000000000;
            if (v47 != 6778468)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 14:
            v48 = 0xE300000000000000;
            if (v47 != 6383476)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 15:
            v48 = 0xE500000000000000;
            if (v47 != 0x6D6F636964)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 16:
            v48 = 0xE300000000000000;
            if (v47 != 7501925)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 17:
            v48 = 0xE300000000000000;
            if (v47 != 7303277)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 18:
            v48 = 0xE300000000000000;
            if (v47 != 6710384)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 19:
            v48 = 0xE300000000000000;
            if (v47 != 7368056)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 20:
            v54 = 0x6E614372656B616DLL;
            goto LABEL_259;
          case 21:
            v54 = 0x73704572656B616DLL;
            goto LABEL_259;
          case 22:
            v48 = 0xE900000000000069;
            if (v47 != 0x6A754672656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 23:
            v48 = 0xEF64616C626C6573;
            if (v47 != 0x73614872656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 24:
            v48 = 0xEA00000000006B61;
            if (v47 != 0x646F4B72656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 25:
            v48 = 0xE900000000000066;
            if (v47 != 0x61654C72656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 26:
            v48 = 0xEA00000000006163;
            if (v47 != 0x69654C72656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 27:
            v51 = 0x6E694D72656B616DLL;
            v52 = 1635019887;
            goto LABEL_248;
          case 28:
            v54 = 0x6B694E72656B616DLL;
LABEL_259:
            v48 = 0xEA00000000006E6FLL;
            if (v47 != v54)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 29:
            v49 = 0x746F4E72656B616DLL;
            v48 = 0xED00006F666E4965;
            goto LABEL_262;
          case 30:
            v51 = 0x796C4F72656B616DLL;
            v52 = 1937076333;
            goto LABEL_248;
          case 31:
            v48 = 0xEE0063696E6F7361;
            if (v47 != 0x6E615072656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 32:
            v48 = 0xEB00000000786174;
            if (v47 != 0x6E655072656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 33:
            v48 = 0xE900000000000079;
            if (v47 != 0x6E6F5372656B616DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 34:
            v48 = 0xEA00000000006369;
            if (v47 != 0x74736F6E67616964)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 35:
            v48 = 0xE800000000000000;
            if (v47 != 0x617461646174656DLL)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          case 36:
            v51 = 0x5365727574636970;
            v52 = 1701607796;
LABEL_248:
            v48 = v52 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v47 != v51)
            {
              goto LABEL_264;
            }

            goto LABEL_263;
          default:
LABEL_262:
            if (v47 != v49)
            {
              goto LABEL_264;
            }

LABEL_263:
            if (v46 != v48)
            {
LABEL_264:
              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v55 & 1) == 0)
              {
                goto LABEL_152;
              }

              if (!v40)
              {
                __break(1u);
LABEL_359:
                __break(1u);
LABEL_360:
                __break(1u);
LABEL_361:
                __break(1u);
LABEL_362:
                __break(1u);
LABEL_363:
                __break(1u);
                JUMPOUT(0x1000E7B14);
              }

              v43 = *v41;
              *v41 = *(v41 - 1);
              *--v41 = v43;
              if (__CFADD__(v44++, 1))
              {
                goto LABEL_152;
              }

              continue;
            }

LABEL_152:
            v11 = v119 + 1;
            v41 = v117 + 1;
            v42 = v115 - 1;
            if (v119 + 1 != v114)
            {
              goto LABEL_153;
            }

            v11 = v114;
            v5 = v108;
            v6 = a3;
            v9 = v112;
            v7 = a1;
LABEL_272:
            if (v11 < v9)
            {
              goto LABEL_352;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1000C8CF8(0, *(v10 + 2) + 1, 1, v10);
            }

            v58 = *(v10 + 2);
            v57 = *(v10 + 3);
            v59 = v58 + 1;
            if (v58 >= v57 >> 1)
            {
              v10 = sub_1000C8CF8((v57 > 1), v58 + 1, 1, v10);
            }

            *(v10 + 2) = v59;
            v60 = &v10[16 * v58];
            *(v60 + 4) = v9;
            *(v60 + 5) = v11;
            v61 = *v7;
            if (!*v7)
            {
              goto LABEL_362;
            }

            v9 = v11;
            if (v58)
            {
              while (2)
              {
                v62 = v59 - 1;
                if (v59 >= 4)
                {
                  v67 = &v10[16 * v59 + 32];
                  v68 = *(v67 - 64);
                  v69 = *(v67 - 56);
                  v73 = __OFSUB__(v69, v68);
                  v70 = v69 - v68;
                  if (v73)
                  {
                    goto LABEL_339;
                  }

                  v72 = *(v67 - 48);
                  v71 = *(v67 - 40);
                  v73 = __OFSUB__(v71, v72);
                  v65 = v71 - v72;
                  v66 = v73;
                  if (v73)
                  {
                    goto LABEL_340;
                  }

                  v74 = &v10[16 * v59];
                  v76 = *v74;
                  v75 = *(v74 + 1);
                  v73 = __OFSUB__(v75, v76);
                  v77 = v75 - v76;
                  if (v73)
                  {
                    goto LABEL_342;
                  }

                  v73 = __OFADD__(v65, v77);
                  v78 = v65 + v77;
                  if (v73)
                  {
                    goto LABEL_345;
                  }

                  if (v78 >= v70)
                  {
                    v96 = &v10[16 * v62 + 32];
                    v98 = *v96;
                    v97 = *(v96 + 1);
                    v73 = __OFSUB__(v97, v98);
                    v99 = v97 - v98;
                    if (v73)
                    {
                      goto LABEL_349;
                    }

                    if (v65 < v99)
                    {
                      v62 = v59 - 2;
                    }
                  }

                  else
                  {
LABEL_292:
                    if (v66)
                    {
                      goto LABEL_341;
                    }

                    v79 = &v10[16 * v59];
                    v81 = *v79;
                    v80 = *(v79 + 1);
                    v82 = __OFSUB__(v80, v81);
                    v83 = v80 - v81;
                    v84 = v82;
                    if (v82)
                    {
                      goto LABEL_344;
                    }

                    v85 = &v10[16 * v62 + 32];
                    v87 = *v85;
                    v86 = *(v85 + 1);
                    v73 = __OFSUB__(v86, v87);
                    v88 = v86 - v87;
                    if (v73)
                    {
                      goto LABEL_347;
                    }

                    if (__OFADD__(v83, v88))
                    {
                      goto LABEL_348;
                    }

                    if (v83 + v88 < v65)
                    {
                      goto LABEL_306;
                    }

                    if (v65 < v88)
                    {
                      v62 = v59 - 2;
                    }
                  }
                }

                else
                {
                  if (v59 == 3)
                  {
                    v63 = *(v10 + 4);
                    v64 = *(v10 + 5);
                    v73 = __OFSUB__(v64, v63);
                    v65 = v64 - v63;
                    v66 = v73;
                    goto LABEL_292;
                  }

                  v89 = &v10[16 * v59];
                  v91 = *v89;
                  v90 = *(v89 + 1);
                  v73 = __OFSUB__(v90, v91);
                  v83 = v90 - v91;
                  v84 = v73;
LABEL_306:
                  if (v84)
                  {
                    goto LABEL_343;
                  }

                  v92 = &v10[16 * v62];
                  v94 = *(v92 + 4);
                  v93 = *(v92 + 5);
                  v73 = __OFSUB__(v93, v94);
                  v95 = v93 - v94;
                  if (v73)
                  {
                    goto LABEL_346;
                  }

                  if (v95 < v83)
                  {
                    break;
                  }
                }

                v100 = v62 - 1;
                if (v62 - 1 >= v59)
                {
                  __break(1u);
LABEL_337:
                  __break(1u);
LABEL_338:
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  __break(1u);
LABEL_342:
                  __break(1u);
LABEL_343:
                  __break(1u);
LABEL_344:
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
LABEL_347:
                  __break(1u);
LABEL_348:
                  __break(1u);
LABEL_349:
                  __break(1u);
LABEL_350:
                  __break(1u);
LABEL_351:
                  __break(1u);
LABEL_352:
                  __break(1u);
LABEL_353:
                  __break(1u);
LABEL_354:
                  __break(1u);
LABEL_355:
                  __break(1u);
                  goto LABEL_356;
                }

                if (!*v6)
                {
                  goto LABEL_359;
                }

                v101 = *&v10[16 * v100 + 32];
                v11 = *&v10[16 * v62 + 40];
                sub_1000E7D64((*v6 + v101), (*v6 + *&v10[16 * v62 + 32]), &v11[*v6], v61);
                if (v5)
                {
                }

                if (v11 < v101)
                {
                  goto LABEL_337;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = sub_1000C8BE4(v10);
                }

                if (v100 >= *(v10 + 2))
                {
                  goto LABEL_338;
                }

                v102 = &v10[16 * v100];
                *(v102 + 4) = v101;
                *(v102 + 5) = v11;
                sub_1000C8B58(v62);
                v59 = *(v10 + 2);
                if (v59 <= 1)
                {
                  break;
                }

                continue;
              }
            }

            v8 = v6[1];
            v7 = a1;
            if (v9 >= v8)
            {
              goto LABEL_325;
            }

            break;
        }

        break;
      }
    }

LABEL_356:
    __break(1u);
    goto LABEL_357;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_325:
  v11 = *v7;
  if (!*v7)
  {
    goto LABEL_363;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_357:
    v10 = sub_1000C8BE4(v10);
  }

  v103 = *(v10 + 2);
  if (v103 >= 2)
  {
    while (*v6)
    {
      v104 = *&v10[16 * v103];
      v105 = *&v10[16 * v103 + 24];
      sub_1000E7D64((*v6 + v104), (*v6 + *&v10[16 * v103 + 16]), *v6 + v105, v11);
      if (v5)
      {
      }

      if (v105 < v104)
      {
        goto LABEL_350;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000C8BE4(v10);
      }

      if (v103 - 2 >= *(v10 + 2))
      {
        goto LABEL_351;
      }

      v106 = &v10[16 * v103];
      *v106 = v104;
      *(v106 + 1) = v105;
      sub_1000C8B58(v103 - 1);
      v103 = *(v10 + 2);
      if (v103 <= 1)
      {
      }
    }

    goto LABEL_361;
  }
}

uint64_t sub_1000E7D64(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      type metadata accessor for MainActor();
      v35 = v4;
LABEL_34:
      v21 = v6 - 1;
      --v5;
      v22 = v10;
      v33 = v6 - 1;
      do
      {
        v24 = *--v22;
        v23 = v24;
        v25 = *v21;
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v26 = sub_1000F4630(v23);
        v28 = v27;
        if (v26 == sub_1000F4630(v25) && v28 == v29)
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            if (v5 + 1 < v6 || v5 >= v6)
            {
              *v5 = *v33;
            }

            v4 = v35;
            if (v10 <= v35 || (--v6, v33 <= v7))
            {
              v6 = v33;
              goto LABEL_56;
            }

            goto LABEL_34;
          }
        }

        if ((v5 + 1) < v10 || v5 >= v10)
        {
          *v5 = *v22;
        }

        --v5;
        v10 = v22;
        v4 = v35;
        v21 = v6 - 1;
      }

      while (v22 > v35);
      v10 = v22;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      type metadata accessor for MainActor();
      while (1)
      {
        v11 = *v6;
        v34 = v4;
        v12 = *v4;
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v13 = sub_1000F4630(v11);
        v15 = v14;
        if (v13 == sub_1000F4630(v12) && v15 == v16)
        {
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            v19 = v6 + 1;
            v20 = v6;
            if (v7 < v6)
            {
              v4 = v34;
            }

            else
            {
              v4 = v34;
              if (v7 < v19)
              {
                goto LABEL_25;
              }
            }

            goto LABEL_24;
          }
        }

        v20 = v34;
        v19 = v6;
        if (v7 < v34)
        {
          v4 = v34 + 1;
        }

        else
        {
          v4 = v34 + 1;
          if (v7 < v34 + 1)
          {
            goto LABEL_25;
          }
        }

LABEL_24:
        *v7 = *v20;
LABEL_25:
        ++v7;
        if (v4 < v10)
        {
          v6 = v19;
          if (v19 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_56:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

void *sub_1000E8140(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000E8250(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000E8344;

  return v5(v2 + 32);
}

uint64_t sub_1000E8344()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000E8458(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000E8B20;

  return sub_1000E8250(a1, v4);
}

uint64_t sub_1000E8510(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000D5B00;

  return sub_1000E8250(a1, v4);
}

uint64_t sub_1000E8660()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption);
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_1000E86C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BFBAC(&qword_10020C0D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1000EE098(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 2 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000E87E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000BFBAC(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 8);
      v7 = *i;

      result = sub_1000EDE8C(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
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

char *sub_1000E88EC(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E8990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E89F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E8A58()
{
  sub_1000D05A0(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_1000E8B24(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C746974;
    v6 = 0x726F7461657263;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x73726F68747561;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x7974697275636573;
    if (a1 != 7)
    {
      v2 = 0x6E6F6973726576;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7364726F7779656BLL;
    if (a1 != 4)
    {
      v3 = 0x6E756F4365676170;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1000E8C60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1000F7B58(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E8CD8()
{
  v1 = *v0;
  String.hash(into:)();
  sub_1000F7B58(v1);
  String.hash(into:)();
}

Swift::Int sub_1000E8D40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1000F7B58(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E8DB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9198(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000E8DE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E8B24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000E8E1C(uint64_t a1)
{
  *(a1 + 8) = sub_1000E8E4C();
  result = sub_1000E8EA0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000E8E4C()
{
  result = qword_10020C0E0;
  if (!qword_10020C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C0E0);
  }

  return result;
}

unint64_t sub_1000E8EA0()
{
  result = qword_10020C0E8;
  if (!qword_10020C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C0E8);
  }

  return result;
}

unint64_t sub_1000E8EF8()
{
  result = qword_10020C0F0;
  if (!qword_10020C0F0)
  {
    sub_1000C3C50(&qword_10020C0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C0F0);
  }

  return result;
}

unint64_t sub_1000E8F74(uint64_t a1)
{
  result = sub_1000E8F9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E8F9C()
{
  result = qword_10020C100;
  if (!qword_10020C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C100);
  }

  return result;
}

unint64_t sub_1000E8FF4()
{
  result = qword_10020C108;
  if (!qword_10020C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C108);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDFMetadataKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PDFMetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000E9198(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F3900, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E91F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFMetadataProvider.Ivars(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E9298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFMetadataProvider.Ivars(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000E9328()
{
  result = type metadata accessor for PDFMetadataProvider.Ivars(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000E93A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000E9478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000E9530()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_1000E95CC();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MetadataLocalizer();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000E95CC()
{
  result = qword_10020C208;
  if (!qword_10020C208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020C208);
  }

  return result;
}

unint64_t sub_1000E961C()
{
  result = qword_10020C240;
  if (!qword_10020C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C240);
  }

  return result;
}

uint64_t sub_1000E9670(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000EA7B4(a1, a2, &v14);
    _os_log_impl(&dword_100000000, v8, v9, "ERROR: %s", v10, 0xCu);
    sub_1000D05A0(v11);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E9850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.pdf.getter();
  v10 = UTType.conforms(to:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) != 0 && (v11 = objc_allocWithZone(PDFDocument), URL._bridgeToObjectiveC()(v12), v14 = v13, v15 = [v11 initWithURL:v13], v14, v15))
  {
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 16))(a3, a1, v16);
    v17 = type metadata accessor for PDFMetadataProvider.Ivars(0);
    *(a3 + *(v17 + 20)) = v15;
    *(a3 + *(v17 + 24)) = a2;
    v18 = type metadata accessor for PDFMetadataProvider(0);
    (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
  }

  else
  {
    v20 = type metadata accessor for PDFMetadataProvider(0);
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }
}

uint64_t sub_1000E9A5C@<X0>(unsigned __int8 a1@<W0>, uint64_t (**a2)()@<X8>)
{
  v5 = type metadata accessor for PDFMetadataProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v8 = &PDFDocumentCreatorAttribute;
      }

      else
      {
        v8 = &PDFDocumentProducerAttribute;
      }
    }

    else if (a1)
    {
      v8 = &PDFDocumentAuthorAttribute;
    }

    else
    {
      v8 = &PDFDocumentTitleAttribute;
    }

    sub_1000EA1FC(*v8);
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v9 = sub_1000EA4CC(PDFDocumentKeywordsAttribute);
      if (!v9)
      {
LABEL_28:
        type metadata accessor for ContentMetadataValue(v9);
LABEL_29:

        return swift_storeEnumTagMultiPayload();
      }

      v10 = objc_opt_self();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v12 = [v10 localizedStringByJoiningStrings:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_19:
      LocalizedStringResource.init(stringLiteral:)();
      goto LABEL_20;
    }

    v23 = type metadata accessor for PDFMetadataProvider.Ivars(0);
    v24 = [*(v2 + *(v23 + 20)) pageCount];
    if (v24 >= 1)
    {
      v25 = v24;
      v26 = (*(*(v2 + *(v23 + 24)) + 80))();
      v27 = Int._bridgeToObjectiveC()().super.super.isa;
      v28 = [v26 stringForObjectValue:v27];

      if (v28)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v29[1] = v25;
        dispatch thunk of CustomStringConvertible.description.getter();
      }

      LocalizedStringResource.init(stringLiteral:)();
      type metadata accessor for ContentMetadataValue(0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_27:
    v9 = 0;
    goto LABEL_28;
  }

  if (a1 == 6)
  {
    v13 = sub_1000E9FBC(0);
    if ((v15 & 1) == 0)
    {
      v16 = v13;
      v17 = v14;
      sub_1000EAD5C(v2, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v19 = swift_allocObject();
      sub_1000EAEC8(v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
      v20 = (v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v20 = v16;
      v20[1] = v17;
      *a2 = sub_1000EAF2C;
      a2[1] = v19;
      type metadata accessor for ContentMetadataValue(0);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_27;
  }

  if (a1 == 7)
  {
    [*(v2 + *(type metadata accessor for PDFMetadataProvider.Ivars(0) + 20)) isEncrypted];
    sub_1000F2594();
LABEL_20:
    type metadata accessor for ContentMetadataValue(0);
    goto LABEL_29;
  }

  return sub_1000E9E34();
}

uint64_t sub_1000E9E34()
{
  v1 = *(v0 + *(type metadata accessor for PDFMetadataProvider.Ivars(0) + 20));
  if ([v1 majorVersion] < 1 || (objc_msgSend(v1, "minorVersion") & 0x8000000000000000) != 0)
  {
    type metadata accessor for ContentMetadataValue(0);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v2._countAndFlagsBits = 46;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4 = objc_allocWithZone(NSString);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithString:v5];

    String.init(_:)(v6);
    LocalizedStringResource.init(stringLiteral:)();
    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1000E9FBC(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for PDFMetadataProvider.Ivars(0) + 20));
  if ([v3 pageCount] <= a1)
  {
    _StringGuts.grow(_:)(77);
    v9._countAndFlagsBits = 0xD000000000000030;
    v9._object = 0x80000001001B4FA0;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._object = 0x80000001001B4FE0;
    v11._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v11);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
  }

  else
  {
    v4 = [v3 pageAtIndex:a1];
    if (v4)
    {
      v5 = v4;
      [v4 boundsForBox:1];
      v7 = v6;

      return v7;
    }

    _StringGuts.grow(_:)(78);
    v14._countAndFlagsBits = 0xD00000000000004CLL;
    v14._object = 0x80000001001B5000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);
  }

  sub_1000E9670(0, 0xE000000000000000);

  return 0;
}

uint64_t sub_1000EA1FC(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for PDFMetadataProvider.Ivars(0) + 20));
  v4 = [v3 isLocked];
  result = 0;
  if ((v4 & 1) == 0)
  {
    v6 = [v3 documentAttributes];
    if (v6)
    {
      v7 = v6;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for PDFDocumentAttribute(0);
      sub_1000EAFB8();
      v9 = a1;
      AnyHashable.init<A>(_:)();
      if (*(v8 + 16))
      {
        v10 = sub_1000EDF14(&v22);
        if (v11)
        {
          sub_1000D0544(*(v8 + 56) + 32 * v10, &v24);
          sub_1000D05EC(&v22);

          if (*(&v25 + 1))
          {
            sub_1000D0820(&v24, &v26);
            sub_1000D0544(&v26, &v22);
            if (swift_dynamicCast())
            {
              sub_1000D05A0(&v26);
              return v24;
            }

            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;
            v22 = 0;
            v23 = 0xE000000000000000;
            _StringGuts.grow(_:)(72);
            v15._countAndFlagsBits = 0xD000000000000019;
            v15._object = 0x80000001001B3E80;
            String.append(_:)(v15);
            v16._countAndFlagsBits = v12;
            v16._object = v14;
            String.append(_:)(v16);

            v17._countAndFlagsBits = 0x206E692029;
            v17._object = 0xE500000000000000;
            String.append(_:)(v17);
            v18._object = 0x80000001001B4F80;
            v18._countAndFlagsBits = 0xD000000000000016;
            String.append(_:)(v18);
            v19._countAndFlagsBits = 0x20646E756F46202ELL;
            v19._object = 0xE800000000000000;
            String.append(_:)(v19);
            sub_1000C421C(&v26, v27);
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            v20._countAndFlagsBits = 0xD00000000000001ALL;
            v20._object = 0x80000001001B3EA0;
            String.append(_:)(v20);
            v21._countAndFlagsBits = 0x676E69727453;
            v21._object = 0xE600000000000000;
            String.append(_:)(v21);
            sub_1000E9670(v22, v23);

            sub_1000D05A0(&v26);
            return 0;
          }

LABEL_10:
          sub_1000D8384(&v24);
          return 0;
        }
      }

      sub_1000D05EC(&v22);
    }

    v24 = 0u;
    v25 = 0u;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1000EA4CC(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for PDFMetadataProvider.Ivars(0) + 20));
  v4 = [v3 isLocked];
  result = 0;
  if ((v4 & 1) == 0)
  {
    v6 = [v3 documentAttributes];
    if (v6)
    {
      v7 = v6;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for PDFDocumentAttribute(0);
      sub_1000EAFB8();
      v9 = a1;
      AnyHashable.init<A>(_:)();
      if (*(v8 + 16))
      {
        v10 = sub_1000EDF14(&v22);
        if (v11)
        {
          sub_1000D0544(*(v8 + 56) + 32 * v10, &v24);
          sub_1000D05EC(&v22);

          if (*(&v25 + 1))
          {
            sub_1000D0820(&v24, &v26);
            sub_1000D0544(&v26, &v22);
            sub_1000BFBAC(&qword_10020B988);
            if (swift_dynamicCast())
            {
              sub_1000D05A0(&v26);
              return v24;
            }

            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;
            v22 = 0;
            v23 = 0xE000000000000000;
            _StringGuts.grow(_:)(72);
            v15._countAndFlagsBits = 0xD000000000000019;
            v15._object = 0x80000001001B3E80;
            String.append(_:)(v15);
            v16._countAndFlagsBits = v12;
            v16._object = v14;
            String.append(_:)(v16);

            v17._countAndFlagsBits = 0x206E692029;
            v17._object = 0xE500000000000000;
            String.append(_:)(v17);
            v18._object = 0x80000001001B4F80;
            v18._countAndFlagsBits = 0xD000000000000016;
            String.append(_:)(v18);
            v19._countAndFlagsBits = 0x20646E756F46202ELL;
            v19._object = 0xE800000000000000;
            String.append(_:)(v19);
            sub_1000C421C(&v26, v27);
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            v20._countAndFlagsBits = 0xD00000000000001ALL;
            v20._object = 0x80000001001B3EA0;
            String.append(_:)(v20);
            v21._countAndFlagsBits = 0x74533C7961727241;
            v21._object = 0xED00003E676E6972;
            String.append(_:)(v21);
            sub_1000E9670(v22, v23);

            sub_1000D05A0(&v26);
            return 0;
          }

LABEL_10:
          sub_1000D8384(&v24);
          return 0;
        }
      }

      sub_1000D05EC(&v22);
    }

    v24 = 0u;
    v25 = 0u;
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1000EA7B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000EA880(v11, 0, 0, 1, a1, a2);
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
    sub_1000D0544(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000D05A0(v11);
  return v7;
}

unint64_t sub_1000EA880(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000EA98C(a5, a6);
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

void *sub_1000EA98C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000EA9D8(a1, a2);
  sub_1000EAB08(&off_1001F3418);
  return v3;
}

void *sub_1000EA9D8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000EABF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000EABF4(v10, 0);
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

uint64_t sub_1000EAB08(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000EAC68(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000EABF4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000BFBAC(&qword_10020C278);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000EAC68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BFBAC(&qword_10020C278);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_1000EAD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFMetadataProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EADC0()
{
  v1 = *(type metadata accessor for PDFMetadataProvider(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000EAEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFMetadataProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EAF2C()
{
  type metadata accessor for PDFMetadataProvider(0);

  return sub_1000DDCF4();
}

unint64_t sub_1000EAFB8()
{
  result = qword_10020B3A8;
  if (!qword_10020B3A8)
  {
    type metadata accessor for PDFDocumentAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B3A8);
  }

  return result;
}

uint64_t sub_1000EB030()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_cache);
  v0[10] = v1;
  os_unfair_lock_lock((v1 + 16));
  v2 = *(*(v1 + 24) + 16);

  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
LABEL_2:
    v3 = v0[1];

    return v3(v2);
  }

  v5 = v0[9];
  v2 = sub_1000E87D4(_swiftEmptyArrayStorage);
  v6 = sub_1000F5B14(v5 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_url, v5 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_contentType, *(v5 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_metadataLocalizer), *(v5 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_domainProviderRegistry), *(v5 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_domainProviderRegistry + 8), *(v5 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_domainProviderRegistry + 16));
  v0[11] = v6;
  v14 = v6[2];
  v0[12] = v14;
  if (!v14)
  {

    goto LABEL_2;
  }

  v0[14] = 0;
  v0[15] = v2;
  v0[13] = v2;
  if (v6[2])
  {
    v15 = v0[9];
    sub_1000EE6E4((v6 + 4), (v0 + 2));
    v16 = swift_task_alloc();
    v0[16] = v16;
    *(v16 + 16) = v15;
    *(v16 + 24) = v0 + 2;
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_1000EB228;
    v13 = &type metadata for ContentMetadataProvider.FetchResult;
    v11 = sub_1000EE748;
    v6 = v0 + 7;
    v10 = 0x80000001001B51D0;
    v7 = 0;
    v8 = 0;
    v9 = 0xD00000000000001CLL;
    v12 = v16;
  }

  else
  {
    __break(1u);
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000EB228()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_1000EB8CC;
  }

  else
  {

    v2 = sub_1000EB370;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EB370()
{
  v1 = v0[7];
  v51 = (v0 + 2);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = v0[15];
  v54 = v0[7];
  v55 = v0 + 7;
  v8 = v0[13];

  v17 = 0;
  v53 = v6;
  while (v5)
  {
LABEL_11:
    v19 = __clz(__rbit64(v5)) | (v17 << 6);
    v20 = *(*(v54 + 48) + v19);
    v21 = *(*(v54 + 56) + 8 * v19);
    if (v8[2])
    {

      v9 = sub_1000EDE8C(v20);
      v22 = _swiftEmptyArrayStorage;
      if ((v10 & 1) == 0)
      {
        goto LABEL_16;
      }

      v22 = *(v8[7] + 8 * v9);
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

LABEL_16:
    v56 = v20;
    v23 = *(v21 + 16);
    v24 = v22[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v25 <= v22[3] >> 1)
    {
      if (*(v21 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v31 = v24 + v23;
      }

      else
      {
        v31 = v24;
      }

      v22 = sub_1000EC584(isUniquelyReferenced_nonNull_native, v31, 1, v22);
      if (*(v21 + 16))
      {
LABEL_20:
        v27 = (v22[3] >> 1) - v22[2];
        v9 = type metadata accessor for ContentMetadataItem(0);
        if (v27 < v23)
        {
          goto LABEL_54;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v28 = v22[2];
          v29 = __OFADD__(v28, v23);
          v30 = v28 + v23;
          if (v29)
          {
            goto LABEL_56;
          }

          v22[2] = v30;
        }

        goto LABEL_29;
      }
    }

    if (v23)
    {
      goto LABEL_52;
    }

LABEL_29:
    v32 = v2;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v55[1] = v7;
    v34 = sub_1000EDE8C(v56);
    v35 = v7[2];
    v36 = (v10 & 1) == 0;
    v9 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_53;
    }

    v37 = v10;
    if (v7[3] >= v9)
    {
      if ((v33 & 1) == 0)
      {
        v9 = sub_1000EE138(&qword_10020B788);
      }

      v38 = v56;
    }

    else
    {
      sub_1000ECAD8(v9, v33, &qword_10020B788);
      v38 = v56;
      v9 = sub_1000EDE8C(v56);
      if ((v37 & 1) != (v10 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v34 = v9;
    }

    v7 = v55[1];
    if (v37)
    {
      *(v7[7] + 8 * v34) = v22;
    }

    else
    {
      v7[(v34 >> 6) + 8] |= 1 << v34;
      *(v7[6] + v34) = v38;
      *(v7[7] + 8 * v34) = v22;
      v39 = v7[2];
      v29 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v29)
      {
        goto LABEL_55;
      }

      v7[2] = v40;
    }

    v5 &= v5 - 1;

    v8 = v7;
    v2 = v32;
    v6 = v53;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v18 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v18);
    ++v17;
    if (v5)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  v41 = v52[14];
  v42 = v52[12];
  v43 = v52[10];

  os_unfair_lock_lock((v43 + 16));
  *(*(v43 + 24) + 16) = v8;

  os_unfair_lock_unlock((v43 + 16));
  v9 = sub_1000D05A0(v51);
  if (v41 + 1 != v42)
  {
    v46 = v52[14] + 1;
    v52[14] = v46;
    v52[15] = v7;
    v52[13] = v8;
    v47 = v52[11];
    if (v46 >= *(v47 + 16))
    {
      goto LABEL_57;
    }

    v48 = v52[9];
    sub_1000EE6E4(v47 + 40 * v46 + 32, v51);
    v49 = swift_task_alloc();
    v52[16] = v49;
    *(v49 + 16) = v48;
    *(v49 + 24) = v51;
    v50 = swift_task_alloc();
    v52[17] = v50;
    *v50 = v52;
    v50[1] = sub_1000EB228;
    v16 = &type metadata for ContentMetadataProvider.FetchResult;
    v14 = sub_1000EE748;
    v13 = 0x80000001001B51D0;
    v9 = v55;
    v10 = 0;
    v11 = 0;
    v12 = 0xD00000000000001CLL;
    v15 = v49;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v44 = v52[1];

  return v44(v8);
}

uint64_t sub_1000EB8CC()
{
  sub_1000D05A0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EB93C()
{
  v1 = OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_contentType;
  v4 = type metadata accessor for UTType();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContentMetadataProvider()
{
  result = qword_10020C2B8;
  if (!qword_10020C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EBAB0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UTType();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000EBBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BFBAC(&qword_10020C4D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - v13;
  v19[1] = *(a2 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_fetchSerialQueue);
  sub_1000EE6E4(a3, v24);
  (*(v12 + 16))(v14, v19[0], v11);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  sub_1000EE820(v24, v16 + 16);
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1000EE838;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000EC458;
  aBlock[3] = &unk_1001F5378;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000EF238(&qword_10020C4D8, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BFBAC(&qword_10020C4E0);
  sub_1000EF130(&qword_10020C4E8, &qword_10020C4E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v7, v5);
  (*(v8 + 8))(v10, v20);
}

uint64_t sub_1000EBF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020C4D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_1000BFBAC(&qword_10020BAC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1000EE6E4(a1, v16);
  (*(v5 + 16))(v7, a2, v4);
  v12 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1000EE820(v16, v13 + 32);
  (*(v5 + 32))(v13 + v12, v7, v4);
  sub_1000DEBD8(0, 0, v10, &unk_1001A2750, v13);
}

uint64_t sub_1000EC14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_1000EC16C, 0, 0);
}

uint64_t sub_1000EC16C()
{
  v1 = *(v0 + 32);
  v3 = v1[3];
  v2 = v1[4];
  sub_1000C421C(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1000EC220;

  return sub_1000C5A3C(v3, v2);
}

uint64_t sub_1000EC220(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1000EC3D0;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1000EC348;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000EC348()
{
  v0[3] = v0[8];
  sub_1000BFBAC(&qword_10020C4D0);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000EC3D0()
{
  v0[2] = v0[7];
  sub_1000BFBAC(&qword_10020C4D0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000EC458(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000EC49C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000EC4D4()
{

  return swift_deallocClassInstance();
}

char *sub_1000EC530()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000BFBAC(&qword_10020C410);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

size_t sub_1000EC584(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BFBAC(&qword_10020B798);
  v10 = *(type metadata accessor for ContentMetadataItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ContentMetadataItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000EC75C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BFBAC(&qword_10020C530);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000EC868(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BFBAC(&qword_10020C4F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BFBAC(&qword_10020C4F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000EC9C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000BFBAC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t sub_1000ECAD8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000BFBAC(a3);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      sub_1000F4630(v21);
      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}