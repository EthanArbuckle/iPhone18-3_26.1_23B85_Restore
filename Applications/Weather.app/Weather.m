int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for WeatherApp();
  sub_1000030C8(&qword_100CD5448, type metadata accessor for WeatherApp);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for WeatherApp()
{
  result = qword_100CD54B8;
  if (!qword_100CD54B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002FC0()
{
  sub_10000304C();
  if (v0 <= 0x3F)
  {
    sub_100720268();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000304C()
{
  if (!qword_100CD54C8)
  {
    type metadata accessor for AppDelegate();
    v0 = type metadata accessor for UIApplicationDelegateAdaptor();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD54C8);
    }
  }
}

uint64_t sub_1000030C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100003110(uint64_t a1@<X8>)
{
  v2 = sub_100003940();
  sub_10022C350(v2);
  sub_1000037E8();
  v4 = __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  type metadata accessor for AppDelegate();
  UIApplicationDelegateAdaptor.init(_:)();
  v7 = (a1 + *(type metadata accessor for WeatherApp() + 20));
  *v7 = 0xD000000000000018;
  v7[1] = 0x8000000100ADC240;
  v8 = type metadata accessor for WeatherMenuCommands();
  sub_10001B350(v6, 1, 1, v8);
  sub_100095588();
  State.init(wrappedValue:)();
  sub_1000180EC(v6, &unk_100CD54D8);
  sub_100003338();
}

uint64_t WeatherFeatureFlags.isEnabled.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v5 = &type metadata for WeatherFeatureFlags;
    v6 = sub_1000032E4();
    v4[0] = 2;
  }

  else
  {
    v5 = &type metadata for WeatherFeatureFlags;
    v6 = sub_1000032E4();
    v4[0] = a1;
  }

  v2 = isFeatureEnabled(_:)();
  sub_100006F14(v4);
  return v2 & 1;
}

unint64_t sub_1000032E4()
{
  result = qword_100CBDEE8;
  if (!qword_100CBDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBDEE8);
  }

  return result;
}

void sub_100003338()
{
  v26 = &_swiftEmptyArrayStorage;
  sub_10000369C(0, 3, 0);
  v0 = 0;
  v1 = &_swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_100C44A58 + v0 + 32);
    v24 = 9;
    v25 = 0xE100000000000000;
    v3._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 8250;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    v23[3] = &type metadata for WeatherFeatureFlags;
    v23[4] = sub_1000032E4();
    if (v2 >= 2)
    {
      LOBYTE(v23[0]) = 2;
    }

    else
    {
      LOBYTE(v23[0]) = v2;
    }

    v5 = isFeatureEnabled(_:)();
    sub_100006F14(v23);
    if (v5)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v5)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = v7;
    String.append(_:)(*&v6);

    v9 = v24;
    v10 = v25;
    v26 = v1;
    v12 = v1[2];
    v11 = v1[3];
    if (v12 >= v11 >> 1)
    {
      sub_10000369C((v11 > 1), v12 + 1, 1);
      v1 = v26;
    }

    ++v0;
    v1[2] = v12 + 1;
    v13 = &v1[2 * v12];
    v13[4] = v9;
    v13[5] = v10;
  }

  while (v0 != 3);
  v23[0] = v1;
  sub_10022C350(&qword_100CCC930);
  sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  if (qword_100CA27A8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000703C(v17, qword_100D90D50);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23[0] = v21;
    *v20 = 136315138;
    v22 = sub_100078694(v14, v16, v23);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Weather feature enablement states:\n%s", v20, 0xCu);
    sub_100006F14(v21);
  }

  else
  {
  }
}

char *sub_10000369C(char *a1, int64_t a2, char a3)
{
  result = sub_1000036BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000036BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CA7300);
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

uint64_t sub_100003884()
{
}

uint64_t sub_10000389C()
{

  return swift_slowAlloc();
}

uint64_t sub_10000399C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_10022C350(a3);
}

uint64_t sub_1000039D8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void *sub_100003A30(void *result)
{
  result[2] = v4;
  result[3] = v3;
  result[4] = v1;
  result[5] = v2;
  return result;
}

uint64_t sub_100003AB0()
{

  return swift_once();
}

uint64_t sub_100003B6C()
{

  return swift_allocObject();
}

uint64_t sub_100003D30()
{
  sub_100006F14(v0 + v1);
  sub_100006F14(v0 + v1 + 40);

  return type metadata accessor for PredictedLocationsFeatureState();
}

uint64_t sub_100003D70()
{
  v2 = *(v0 - 152);

  return sub_100105E88(v2, type metadata accessor for NewsDataModel);
}

uint64_t sub_100003DAC()
{
}

uint64_t sub_100003DC4()
{
}

__n128 sub_100003E18(__n128 *a1)
{
  result = *(v1 - 128);
  a1[1] = result;
  return result;
}

uint64_t sub_100003EB0(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_100003ED0(void *a1)
{
  sub_1000161C0(a1, v1);

  return dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
}

id sub_100003F38()
{
  v3 = *(v1 + 248);

  return [v0 v3];
}

uint64_t sub_100003F50()
{
  v2 = *(v1 + 16);
  *(v0 + 160) = *v1;
  *(v0 + 176) = v2;
  *(v0 + 192) = *(v1 + 32);
  *(v0 + 208) = *(v1 + 48);
  return v0 + 32;
}

uint64_t sub_100004000()
{

  return swift_once();
}

uint64_t sub_100004020()
{

  return sub_10038F34C(v0, type metadata accessor for NextHourPrecipitationDetailInput);
}

uint64_t sub_1000040EC()
{

  return type metadata accessor for MoonScrubberHeaderView();
}

uint64_t sub_10000410C()
{

  return type metadata accessor for SevereAlertComponentViewModel();
}

uint64_t sub_10000413C()
{

  return sub_100404A54(v0, type metadata accessor for LocationWeatherDataState);
}

uint64_t sub_1000041B8()
{

  return swift_once();
}

uint64_t sub_1000041EC(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_100004224()
{

  return sub_10045578C(v0, type metadata accessor for AveragesDetailInput.Content);
}

uint64_t sub_10000425C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100004298(uint64_t a1, uint64_t a2)
{
  sub_10000703C(v2, a2);

  return swift_beginAccess();
}

uint64_t sub_1000042E4()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000043A0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000043E8()
{

  return swift_getWitnessTable();
}

uint64_t sub_1000044C4()
{
  *(v2 - 48) = 0;
  *(v2 - 80) = 0u;
  *(v2 - 64) = 0u;

  return sub_10004F034(v0, v2 - 80, v1);
}

uint64_t sub_1000044F0(uint64_t a1)
{
  sub_10001B350(v1, 0, 1, a1);

  return sub_100006F14(v2 - 80);
}

uint64_t sub_100004594()
{

  return Setting<>.init(_:defaultValue:access:)();
}

__n128 sub_1000045B4(__n128 *a1)
{
  result = *(v1 - 128);
  a1[1] = result;
  return result;
}

void sub_1000045C4(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_100004660()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_100004698()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10000473C(uint64_t a1)
{

  return sub_10001B350(a1, 0, 1, v1);
}

uint64_t sub_100004758()
{

  return type metadata accessor for PrecipitationAveragesHeroChartView();
}

uint64_t sub_10000478C()
{

  return swift_allocObject();
}

uint64_t sub_1000047B4()
{

  return sub_10004F034(v0, v2 - 96, v1);
}

uint64_t sub_100004838()
{

  return Promise.init(value:)();
}

uint64_t sub_100004854()
{

  return type metadata accessor for LocationViewCellContentDescriptor(0);
}

uint64_t sub_10000488C()
{

  return swift_beginAccess();
}

uint64_t sub_1000048C8()
{

  return sub_10009F020(v0, type metadata accessor for ViewState);
}

uint64_t sub_100004914@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 8);
  if (v2 > 1)
  {
    return (v2 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004984()
{

  return _FrameLayout.init(width:height:alignment:)();
}

uint64_t sub_100004A14()
{

  return swift_storeEnumTagMultiPayload();
}

void sub_100004A7C(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v3;

  type metadata accessor for TraitKey(0);
}

uint64_t sub_100004A98()
{

  return UIListContentConfiguration.text.setter();
}

uint64_t sub_100004AB4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100004AE0()
{

  return swift_getWitnessTable();
}

uint64_t sub_100004B14(unint64_t *a1)
{

  return sub_100006F64(a1, v1);
}

uint64_t sub_100004BB8()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100004C28()
{
}

uint64_t sub_100004C40(unint64_t *a1)
{

  return sub_100006F64(a1, v1);
}

uint64_t sub_100004CA0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100004D4C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100004D6C()
{

  return swift_beginAccess();
}

uint64_t sub_100004D8C()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100004DC0()
{

  return swift_once();
}

void sub_100004E28()
{

  sub_100095730();
}

uint64_t sub_100004E74()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100004EF4()
{

  return State.init(wrappedValue:)();
}

uint64_t sub_100004F68()
{
  v3 = *(v0 + 144);
  *(v1 - 152) = *(v0 + 152);
  *(v1 - 144) = v3;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100004F9C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100004FF0()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100005070()
{

  return type metadata accessor for LocationPreviewViewAction();
}

uint64_t sub_10000509C()
{
  if (sub_1000864EC())
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_10000C754();
    swift_getWitnessTable();
    sub_10000381C();
    type metadata accessor for _TraitWritingModifier();
    sub_10000381C();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    sub_1000244A4();
    swift_getWitnessTable();
    sub_10000381C();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_10000381C();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1000051C0()
{
  if (sub_1000864EC())
  {
    type metadata accessor for _TagTraitWritingModifier();
    sub_100087D40();
    swift_getWitnessTable();
    sub_100007E30();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_10000C754();
    swift_getWitnessTable();
    sub_10000381C();
    type metadata accessor for _TraitWritingModifier();
    sub_100087D40();
    type metadata accessor for Optional();
    sub_1000244A4();
    swift_getWitnessTable();
    sub_10000381C();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_10000381C();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

uint64_t sub_10000539C()
{

  return swift_slowAlloc();
}

uint64_t sub_100005448(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0xE000000000000000;
  v8 = 0xD00000000000004ELL;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v4, v2, *&v6, *&v8)._countAndFlagsBits;
}

BOOL sub_1000054A4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000055CC(unint64_t *a1)
{

  return sub_100006F64(a1, v1);
}

uint64_t sub_100005680()
{

  return swift_once();
}

__n128 sub_1000056EC(__n128 *a1)
{
  result = *(v1 - 128);
  a1[1] = result;
  return result;
}

uint64_t sub_1000056FC()
{
  *(v2 - 64) = 0;
  *(v2 - 96) = 0u;
  *(v2 - 80) = 0u;

  return sub_10004F034(v0, v2 - 96, v1);
}

uint64_t sub_100005750()
{

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_100005784()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000057B4(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_1000057EC()
{

  return sub_10033FEE4(v0, v1, &type metadata accessor for SavedLocation);
}

uint64_t sub_100005908()
{

  return Setting.init(_:defaultValue:domain:access:)();
}

BOOL sub_100005954(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000059C4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

BOOL sub_100005A44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

_OWORD *sub_100005A60(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return sub_100166180(va, va1);
}

uint64_t sub_100005AA8()
{

  return LocalizedStringKey.init(stringLiteral:)();
}

uint64_t sub_100005AE0()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100005B00()
{
  v2 = *(v0 + *(v1 + 28));
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005B78()
{

  return type metadata accessor for SevereAlertComponentViewModel();
}

__n128 sub_100005B94@<Q0>(uint64_t a1@<X8>)
{
  result = v1[3];
  v3 = *v1;
  v4 = v1[1];
  *(a1 + 32) = v1[2];
  *(a1 + 48) = result;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100005BB8(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_100005C78(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 272);

  return sub_10001B350(a1, a2, 1, v4);
}

__n128 *sub_100005CB0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6E6F69746361;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_100005CCC()
{

  return swift_once();
}

uint64_t sub_100005D1C()
{

  return sub_1004268E4(v0, type metadata accessor for WeatherData);
}

uint64_t sub_100005D98(uint64_t result)
{
  v7 = v2 + *(result + 36);
  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_100005E7C()
{

  return swift_beginAccess();
}

NSString sub_100005ECC()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100005F5C()
{

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_100006030()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t sub_1000060FC()
{

  return sub_1005458EC(v0, type metadata accessor for NotificationsAction);
}

double sub_100006154()
{
  *(v0 - 80) = 0;
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t sub_1000061A8()
{

  return swift_dynamicCast();
}

uint64_t sub_1000061CC(uint64_t a1)
{

  return sub_10001B350(v1, 1, 1, a1);
}

uint64_t sub_1000062B8()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000062D0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100006300@<X0>(char a1@<W8>)
{
  *(v1 - 184) = a1;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_1000063D8()
{

  return sub_100108F54(v0, type metadata accessor for LocationViewerInput);
}

uint64_t sub_10000652C(unint64_t *a1)
{

  return sub_100006F64(a1, v1);
}

uint64_t sub_1000065F4()
{
}

uint64_t sub_100006700()
{

  return swift_once();
}

uint64_t sub_100006738()
{

  return type metadata accessor for Domain();
}

uint64_t sub_100006754()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100006774()
{

  return UIListContentConfiguration.text.setter();
}

uint64_t sub_1000067A4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000068F4()
{
  *(v0 - 104) = 2;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100006970()
{
  v4 = *(v0 + 16);

  return sub_10087A064(v2, v1, v4, &type metadata accessor for Location);
}

uint64_t sub_1000069B0()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100006A20()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100006A4C()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_100006A70()
{
  v0[42] = 0;
  v0[46] = 0;
  v0[48] = 0;
  v0[50] = 0;
}

uint64_t sub_100006AB0()
{

  return swift_once();
}

uint64_t sub_100006AE8()
{

  return sub_1008C96F8(v0, type metadata accessor for ConditionDetailDynamicContentIdentifier);
}

uint64_t sub_100006BC4()
{

  return swift_once();
}

uint64_t sub_100006BE4()
{

  return State.init(wrappedValue:)();
}

uint64_t sub_100006C1C()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100006C70()
{

  return swift_once();
}

uint64_t sub_100006CEC()
{

  return sub_10030F778(v0, v1);
}

uint64_t sub_100006D44()
{
  v2 = *(v0 - 120);

  return sub_10004FD58(v2, type metadata accessor for ConfiguredUnitsAction);
}

uint64_t sub_100006D84()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_100006DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xE000000000000000;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v10, v8, *&v12, *&a8)._countAndFlagsBits;
}

void sub_100006DF8()
{
  v1 = 0x292E2E2E202CLL;
  v2 = 0xE600000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100006E30()
{

  return sub_10004FEC0(v0, type metadata accessor for MainAction);
}

uint64_t sub_100006E74()
{

  return sub_100A09BA8(v0 - 96, v0 - 136);
}

const char *WeatherFeatureFlags.feature.getter(char a1)
{
  if (!a1)
  {
    return "link_de";
  }

  if (a1 == 1)
  {
    return "link_it";
  }

  return "enableIncreasedLocationLimit";
}

uint64_t sub_100006F14(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006F64(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006FCC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100007074(v3, a2);
  sub_10000703C(v3, a2);
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000703C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007074(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000070F8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007130()
{
  sub_100007370();
  if (v0 <= 0x3F)
  {
    sub_100007A00(319, &qword_100CE0DE0);
    if (v1 <= 0x3F)
    {
      sub_100007A00(319, &qword_100CE0DE8);
      if (v2 <= 0x3F)
      {
        sub_100007A00(319, &qword_100CE0DF0);
        if (v3 <= 0x3F)
        {
          sub_100007BB8(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory);
          if (v4 <= 0x3F)
          {
            sub_10010F438(319, &unk_100CE0E00, &qword_100CDCD58);
            if (v5 <= 0x3F)
            {
              sub_10010F438(319, &qword_100CE0E10, &qword_100CA6028);
              if (v6 <= 0x3F)
              {
                sub_10009C070(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_10009C070(319, &qword_100CE0E28, &type metadata for String, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_100009994();
                    if (v9 <= 0x3F)
                    {
                      sub_100007A00(319, &unk_100CE0E48);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100007370()
{
  if (!qword_100CB3588)
  {
    type metadata accessor for MainViewModel(255);
    sub_100007908();
    sub_100007A54(&qword_100CB3590, type metadata accessor for MainViewModel);
    v0 = type metadata accessor for Selector();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB3588);
    }
  }
}

void sub_10000744C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000749C()
{
  if (!qword_100CE0310)
  {
    type metadata accessor for MainViewModel.ModalModule(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0310);
    }
  }
}

void sub_1000074F4()
{
  sub_10000744C(319, &unk_100CE03E0, &type metadata for MainViewModel.ModalModule.SecondaryModalModule, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1000075AC()
{
  sub_1000096DC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for URL();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata accessor for DisplayMetrics()
{
  result = qword_100CE97B0;
  if (!qword_100CE97B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000076A8()
{
  type metadata accessor for UIInterfaceOrientation(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIUserInterfaceSizeClass(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DynamicTypeSize();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100007760()
{
  if (!qword_100CA45C0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA45C0);
    }
  }
}

void sub_1000077F0()
{
  if (!qword_100CE0E20)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0E20);
    }
  }
}

void sub_100007864(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000078B0()
{
  sub_10000952C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_100007908()
{
  result = qword_100CE0DD0;
  if (!qword_100CE0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0DD0);
  }

  return result;
}

void sub_10000798C()
{
  if (!qword_100CEB908)
  {
    sub_10022E824(&qword_100CB5AD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CEB908);
    }
  }
}

uint64_t sub_100007A00(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100007A54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100007A9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100007AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100007B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100007BB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000201F8();
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100007C38()
{
  result = type metadata accessor for AppConfigurationAction();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EnvironmentAction();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LocationsAction();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NotificationsAction();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for NotificationsOptInAction();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ViewAction();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ModalViewAction();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for LocationViewAction();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for WeatherDataAction();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for DebugAction();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for ConditionDetailViewAction();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for MoonDetailViewAction();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for AveragesDetailViewAction();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for PerformanceTestAction();
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              return 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100007DC4()
{
  if (!qword_100CB65D8)
  {
    type metadata accessor for UnitConfiguration.Temperature();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB65D8);
    }
  }
}

uint64_t sub_100007E54()
{
}

BOOL sub_100007E70(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_100007ED0(void *result)
{
  result[2] = v5;
  result[3] = v3;
  result[4] = v1;
  result[5] = v2;
  result[6] = v4;
  result[7] = v6;
  return result;
}

uint64_t sub_100007F04()
{

  return dispatch thunk of UVISummaryStringBuilderType.makeTodayDescription(from:timeZone:currentUVIndex:hourlyForecast:)();
}

uint64_t sub_100007F64()
{

  return swift_once();
}

uint64_t sub_1000080D4()
{

  return swift_once();
}

uint64_t sub_10000812C()
{

  return sub_1003113A8(v0, type metadata accessor for MainAction);
}

uint64_t sub_100008154()
{

  return type metadata accessor for String.LocalizationValue();
}

uint64_t sub_1000081BC()
{

  return sub_10033FF44(v0, &type metadata accessor for SavedLocation);
}

uint64_t sub_10000822C()
{

  return sub_1000E8348(v0, type metadata accessor for LocationViewerActiveLocationState);
}

id sub_10000827C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v6 + 296);

  return [a1 v8];
}

double sub_1000082D8()
{
  *(v0 - 64) = 0;
  result = 0.0;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  return result;
}

uint64_t sub_100008328(uint64_t a1)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100008370()
{
}

uint64_t sub_100008414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xE000000000000000;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v10, v8, *&v12, *&a8)._countAndFlagsBits;
}

uint64_t sub_10000845C()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1000084A0()
{

  return sub_1003C9EF8(v0, type metadata accessor for LocationPreviewInput);
}

void sub_100008514(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
}

__n128 sub_100008528(uint64_t a1)
{
  v2 = *(v1 - 152);
  *(a1 + 16) = *(v1 - 168);
  *(a1 + 32) = v2;
  result = *(v1 - 136);
  v4 = *(v1 - 120);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t sub_100008588()
{

  return Measurement.init(value:unit:)();
}

uint64_t sub_100008608()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100008644()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000086B4()
{

  return Tips.Rule.init<A>(_:_:)();
}

uint64_t sub_1000087C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  a19 = 0;
  a17 = 0u;
  a18 = 0u;

  return sub_10006D53C(&a17, &a10);
}

uint64_t sub_100008828()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

unint64_t sub_100008864(uint64_t a1)
{
  sub_10001B350(v1, 1, 1, a1);

  return sub_100066E08();
}

double sub_100008948()
{
  *(v0 - 48) = 0;
  result = 0.0;
  *(v0 - 80) = 0u;
  *(v0 - 64) = 0u;
  return result;
}

uint64_t sub_100008958()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100008A14()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100008A2C@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_100008B34()
{

  return sub_100631B40(v0, type metadata accessor for AirQualityDetailViewModel);
}

uint64_t sub_100008B68(unint64_t *a1, uint64_t *a2)
{

  return sub_100006F64(a1, a2);
}

uint64_t sub_100008BBC()
{

  return sub_10009EF70(v0, type metadata accessor for ModalViewState);
}

uint64_t sub_100008BE4()
{

  return type metadata accessor for Access();
}

uint64_t sub_100008C0C()
{
  v5 = v2 + *(v1 + 44);

  return sub_1000A3D20(v5, v0, v3);
}

double sub_100008CE0()
{
  result = *(v1 - 176);
  v3 = *(v1 - 168);
  *v0 = result;
  *(v0 + 8) = v3;
  return result;
}

uint64_t sub_100008D0C()
{

  return swift_getWitnessTable();
}

uint64_t sub_100008DA4()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

__n128 sub_100008DC0()
{
  v1 = *(v0 + 912);
  *(v0 + 544) = *(v0 + 928);
  *(v0 + 560) = v1;
  v2 = *(v0 + 944);
  *(v0 + 480) = *(v0 + 960);
  *(v0 + 496) = v2;
  v4 = *(v0 + 976);
  result = *(v0 + 992);
  *(v0 + 448) = result;
  *(v0 + 464) = v4;
  return result;
}

void sub_100008DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 112) = v10;
  *(v11 - 104) = &a9 - v9;
  *(v11 - 88) = v10 + 32;
}

__n128 sub_100008E7C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t sub_100008E8C()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100008F34(unint64_t *a1, uint64_t *a2)
{

  return sub_100006F64(a1, a2);
}

uint64_t sub_100008FD0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000901C()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000904C()
{

  return swift_once();
}

uint64_t sub_100009140(uint64_t result)
{
  *(v1 - 192) = result;
  *(v1 - 65) = 1;
  return result;
}

uint64_t sub_100009154()
{

  return Definition.whenTesting(_:_:)();
}

uint64_t sub_10000919C()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000091F4()
{

  return swift_once();
}

uint64_t sub_100009214()
{
  v3 = *(v1 - 264);

  return sub_10001B350(v0, 1, 1, v3);
}

uint64_t sub_10000926C()
{

  return swift_once();
}

uint64_t sub_1000092C4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100009310@<X0>(uint64_t a1@<X8>)
{

  return sub_100024D10(v2 + a1, 1, v1);
}

uint64_t sub_10000936C()
{

  return swift_once();
}

uint64_t sub_1000093A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 56) = a2;
  *(result + 64) = v2;
  return result;
}

uint64_t sub_1000093E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100009400()
{

  return sub_1009D13A8(v0, type metadata accessor for HomeAndWorkRefinementViewModel);
}

void sub_100009454(uint64_t a1@<X8>)
{
  *(v4 - 80) = v1;
  *(v4 - 72) = a1;
  v6 = v3;
  v7 = v2;

  String.append(_:)(*&v6);
}

uint64_t sub_100009488()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000094B4()
{
  *(v2 - 48) = 0;
  *(v2 - 80) = 0u;
  *(v2 - 64) = 0u;

  return sub_10004F034(v0, v2 - 80, v1);
}

void sub_10000952C()
{
  if (!qword_100CB1C48)
  {
    type metadata accessor for WeatherMapOverlayKind();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CB1C48);
    }
  }
}

void sub_1000095B0()
{
  sub_10000744C(319, &qword_100CE0308, &type metadata for MainViewModel.StackModule, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10000749C();
    if (v1 <= 0x3F)
    {
      sub_10000744C(319, &unk_100CE0318, &type metadata for MainViewModel.SecondaryViewOverlayModule, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherMapPresentationState(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for DisplayMetrics();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000096DC()
{
  if (!qword_100CE0490)
  {
    type metadata accessor for CGRect(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0490);
    }
  }
}

void sub_100009724()
{
  type metadata accessor for WeatherMapOverlayKind();
  if (v0 <= 0x3F)
  {
    sub_100007760();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WeatherMapTrackingState(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000097F4()
{
  result = type metadata accessor for Selector.ModelState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000098A0()
{
  sub_10000798C();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100009940(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10022E824(a3);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100009994()
{
  if (!qword_100CE0E30)
  {
    type metadata accessor for ActiveLocationInput(255);
    type metadata accessor for ActiveLocationModel(255);
    sub_100007A54(&qword_100CB3598, type metadata accessor for ActiveLocationInput);
    sub_100007A54(&qword_100CE0E40, type metadata accessor for ActiveLocationModel);
    v0 = type metadata accessor for Selector();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0E30);
    }
  }
}

void sub_100009AAC()
{
  sub_100009C04(319, &qword_100CAEB38, type metadata accessor for LocationViewerActiveLocationState, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100009C04(319, &unk_100CAEB40, &type metadata accessor for Location.Identifier, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100009C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100009C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100009CCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100009D20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_100031D74();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100009D80()
{
  v0 = type metadata accessor for Location.Identifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_100009DD8()
{
  sub_100009C04(319, &qword_100CADC30, &type metadata accessor for Location.Identifier, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100009E8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009E8C()
{
  if (!qword_100CAEAA0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAEAA0);
    }
  }
}

uint64_t type metadata accessor for MainAction()
{
  result = qword_100CBCE98;
  if (!qword_100CBCE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AppConfigurationAction()
{
  result = qword_100CDB578;
  if (!qword_100CDB578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009F74(uint64_t a1)
{
  v2 = type metadata accessor for AppConfiguration();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t type metadata accessor for EnvironmentAction()
{
  result = qword_100CC70D8;
  if (!qword_100CC70D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A068()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActivityAction();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ConfiguredUnitsAction();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for ActivityAction()
{
  result = qword_100CC7938;
  if (!qword_100CC7938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A188()
{
  result = type metadata accessor for SavedLocation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PreviewLocation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PreviewLocation()
{
  result = qword_100CD2FA8;
  if (!qword_100CD2FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A248()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationOfInterest();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchLocation();
      if (v2 <= 0x3F)
      {
        sub_1006E61AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for SearchLocation()
{
  result = qword_100CDBBA8;
  if (!qword_100CDBBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A330()
{
  sub_10000A470(319, &qword_100CDBBB8, sub_10000A42C);
  if (v0 <= 0x3F)
  {
    sub_10000A470(319, &qword_100CAEE10, &type metadata accessor for Location);
    if (v1 <= 0x3F)
    {
      sub_10000A470(319, &unk_100CDBBC0, type metadata accessor for CLLocationCoordinate2D);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000A42C()
{
  result = qword_100CB6A48;
  if (!qword_100CB6A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB6A48);
  }

  return result;
}

void sub_10000A470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for ConfiguredUnitsAction()
{
  result = qword_100CDC708;
  if (!qword_100CDC708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A524()
{
  type metadata accessor for ConfiguredUnit();
  if (v0 <= 0x3F)
  {
    sub_100007DC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for LocationsAction()
{
  result = qword_100CCC9A8;
  if (!qword_100CCC9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A5E4()
{
  sub_10000A6F4(319, &qword_100CCC9B8, &type metadata accessor for CurrentLocation);
  if (v0 <= 0x3F)
  {
    sub_10000A740();
    if (v1 <= 0x3F)
    {
      sub_10000A7A8();
      if (v2 <= 0x3F)
      {
        sub_10000A834();
        if (v3 <= 0x3F)
        {
          sub_10000A894();
          if (v4 <= 0x3F)
          {
            sub_10000A6F4(319, &qword_100CCC9F0, sub_10000A8BC);
            if (v5 <= 0x3F)
            {
              sub_10000A914();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000A6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000A740()
{
  if (!qword_100CCC9C0)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CCC9C0);
    }
  }
}

void sub_10000A7A8()
{
  if (!qword_100CCC9C8)
  {
    sub_10022E824(&qword_100CCC9D0);
    sub_10022E824(&qword_100CCC9D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CCC9C8);
    }
  }
}

void sub_10000A834()
{
  if (!qword_100CCC9E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CCC9E0);
    }
  }
}

void *sub_10000A894()
{
  result = qword_100CCC9E8;
  if (!qword_100CCC9E8)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_100CCC9E8);
  }

  return result;
}

void sub_10000A8BC()
{
  if (!qword_100CBC8E0)
  {
    type metadata accessor for SavedLocation();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBC8E0);
    }
  }
}

ValueMetadata *sub_10000A914()
{
  result = qword_100CCC9F8;
  if (!qword_100CCC9F8)
  {
    result = &type metadata for LocationsOfInterestState;
    atomic_store(&type metadata for LocationsOfInterestState, &qword_100CCC9F8);
  }

  return result;
}

uint64_t type metadata accessor for NotificationsAction()
{
  result = qword_100CC4D30;
  if (!qword_100CC4D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A988()
{
  sub_10000AAA8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10000ABE4(319, &qword_100CC4D48, &type metadata accessor for NotificationSubscription.Location);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
      if (v5 <= 0x3F)
      {
        sub_10000AC58();
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_10000ABE4(319, &unk_100CC4D58, &type metadata accessor for Location);
        if (v8 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_10000AAA8()
{
  if (!qword_100CC4D40)
  {
    type metadata accessor for NotificationLocation();
    sub_10022E824(&qword_100CB3AB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CC4D40);
    }
  }
}

uint64_t type metadata accessor for NotificationLocation()
{
  result = qword_100CDACC0;
  if (!qword_100CDACC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000AB70()
{
  type metadata accessor for LocationModel();
  if (v0 <= 0x3F)
  {
    sub_1007F5C24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10000ABE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for NotificationSubscription.Kind();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10000AC58()
{
  if (!qword_100CC4D50)
  {
    type metadata accessor for NotificationSubscription.Location();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC4D50);
    }
  }
}

uint64_t type metadata accessor for NotificationsOptInAction()
{
  result = qword_100CE0AA0;
  if (!qword_100CE0AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000ACFC()
{
  sub_10000AD90();
  if (v0 <= 0x3F)
  {
    sub_10000ADFC();
    if (v1 <= 0x3F)
    {
      sub_10000AE74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10000AD90()
{
  if (!qword_100CE0AB0)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CE0AB0);
    }
  }
}

void sub_10000ADFC()
{
  if (!qword_100CE0AB8)
  {
    sub_10022E824(&qword_100CCC930);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CE0AB8);
    }
  }
}

void sub_10000AE74()
{
  if (!qword_100CE0AC0)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0AC0);
    }
  }
}

uint64_t type metadata accessor for ViewAction()
{
  result = qword_100CE8B60;
  if (!qword_100CE8B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return type metadata accessor for ViewAction();
}

uint64_t sub_10000AF08()
{
  result = type metadata accessor for ListViewAction();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationViewerViewAction();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SearchViewAction();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for InteractiveMapViewAction();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for DisplayMetricsChangeAction();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for ListViewAction()
{
  result = qword_100CBBCB0;
  if (!qword_100CBBCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B014()
{
  sub_10000B090();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Location.Identifier();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10000B090()
{
  if (!qword_100CBBCC0)
  {
    type metadata accessor for LocationModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CBBCC0);
    }
  }
}

uint64_t type metadata accessor for LocationViewerViewAction()
{
  result = qword_100CD0A20;
  if (!qword_100CD0A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B148()
{
  result = type metadata accessor for LocationModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherMapOverlayKind();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Location.Identifier();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchViewAction()
{
  result = qword_100CC7CB8;
  if (!qword_100CC7CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B21C()
{
  type metadata accessor for CodableError();
  if (v0 <= 0x3F)
  {
    sub_10000B334();
    if (v1 <= 0x3F)
    {
      sub_1005B7108();
      if (v2 <= 0x3F)
      {
        type metadata accessor for LocationOfInterest();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SearchLocation();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Location();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for LocationViewerActiveLocationState()
{
  result = qword_100CE23B8;
  if (!qword_100CE23B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B334()
{
  if (!qword_100CB0100)
  {
    type metadata accessor for SearchLocation();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0100);
    }
  }
}

uint64_t type metadata accessor for InteractiveMapViewAction()
{
  result = qword_100CACAC0;
  if (!qword_100CACAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000B424(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Location();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10000B46C()
{
  sub_1007F5C24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t type metadata accessor for LocationViewAction()
{
  result = qword_100CB7388;
  if (!qword_100CB7388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B544()
{
  if (!qword_100CACAD0)
  {
    v0 = type metadata accessor for Location();
    if (!v1)
    {
      atomic_store(v0, &qword_100CACAD0);
    }
  }
}

void sub_10000B58C()
{
  if (!qword_100CAE1B8)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CAE1B8);
    }
  }
}

ValueMetadata *sub_10000B5F8()
{
  result = qword_100CAE1B0;
  if (!qword_100CAE1B0)
  {
    result = &type metadata for AirQualityDetailAnchor;
    atomic_store(&type metadata for AirQualityDetailAnchor, &qword_100CAE1B0);
  }

  return result;
}

void sub_10000B620()
{
  if (!qword_100CB73A8)
  {
    type metadata accessor for LocationFooterAction(255);
    sub_10022E824(&qword_100CB73A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CB73A8);
    }
  }
}

void sub_10000B6C0()
{
  if (!qword_100CAE268)
  {
    type metadata accessor for Location();
    type metadata accessor for LocationOfInterest();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CAE268);
    }
  }
}

uint64_t type metadata accessor for WeatherDataAction()
{
  result = qword_100CED150;
  if (!qword_100CED150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10000B780()
{
  v0 = sub_10000B8F4();
  if (v1 <= 0x3F)
  {
    sub_10000DE78();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_10000B91C();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_10000C16C();
    if (v6 > 0x3F)
    {
      return v2;
    }

    sub_10000DB90(319, &qword_100CED180, type metadata accessor for NewsDataModel);
    if (v7 > 0x3F)
    {
      return v2;
    }

    sub_10000DB90(319, &qword_100CED188, &type metadata accessor for AvailableDataSets);
    if (v8 > 0x3F)
    {
      return v2;
    }

    else
    {
      sub_10000DB90(319, &unk_100CED190, &type metadata accessor for WeatherStatisticsModel);
      v0 = v9;
      if (v10 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void *sub_10000B8F4()
{
  result = qword_100CED160;
  if (!qword_100CED160)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CED160);
  }

  return result;
}

void sub_10000B91C()
{
  if (!qword_100CED170)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CED170);
    }
  }
}

void sub_10000B99C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10000B9F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for WeatherDataRelevancy()
{
  result = qword_100CDC9B8;
  if (!qword_100CDC9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000BAD0()
{
  sub_10000BB3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000BB3C()
{
  if (!qword_100CA3940)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3940);
    }
  }
}

uint64_t type metadata accessor for PreprocessedWeatherData()
{
  result = qword_100CE54E0;
  if (!qword_100CE54E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000BC20()
{
  if (!qword_100CB7650)
  {
    type metadata accessor for WeatherDescription();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB7650);
    }
  }
}

uint64_t sub_10000BC78(uint64_t a1)
{
  v2 = type metadata accessor for DisplayMetrics();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t type metadata accessor for ModalViewAction()
{
  result = qword_100CBD968;
  if (!qword_100CBD968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000BD6C()
{
  result = type metadata accessor for LocationPreviewViewAction();
  if (v1 <= 0x3F)
  {
    result = sub_10000BE48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for LocationPreviewViewAction()
{
  result = qword_100CE1930;
  if (!qword_100CE1930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10000BE48()
{
  result = qword_100CBD978;
  if (!qword_100CBD978)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100CBD978);
  }

  return result;
}

void sub_10000BE70()
{
  sub_10000B544();
  if (v0 <= 0x3F)
  {
    sub_10000DD8C();
    if (v1 <= 0x3F)
    {
      sub_10000B620();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10000BEF8()
{
  sub_10000BFF0(319, &qword_100CAE198, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_10000DE30();
    if (v1 <= 0x3F)
    {
      sub_10000BFF0(319, &qword_100CAE1A8, &type metadata accessor for DetailCondition);
      if (v2 <= 0x3F)
      {
        sub_10000B5F8();
        if (v3 <= 0x3F)
        {
          sub_10000B58C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000BFF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_10000C060(uint64_t a1)
{
  sub_10000B6C0();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for Location();
    if (v5 <= 0x3F)
    {
      v3 = type metadata accessor for LocationOfInterest();
      if (v6 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v3 = 0;
        *(*(a1 - 8) + 84) = v8;
      }
    }
  }

  return v3;
}

void sub_10000C16C()
{
  if (!qword_100CED178)
  {
    __chkstk_darwin(0);
    type metadata accessor for WeatherData(255);
    type metadata accessor for PreprocessedWeatherData();
    type metadata accessor for NewsDataModel();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_100CED178);
    }
  }
}

void sub_10000C278()
{
  sub_10000B9F0(319, &unk_100CBE768, &type metadata accessor for Locale);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherDataModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WeatherData.CachingState(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherData.WeatherStatisticsState(319);
        if (v3 <= 0x3F)
        {
          sub_10000B9F0(319, &unk_100CE0620, type metadata accessor for WeatherDataOverrides);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10000C38C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000C400()
{
  result = sub_10000C474();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherStatisticsModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10000C474()
{
  result = qword_100CD4F80;
  if (!qword_100CD4F80)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CD4F80);
  }

  return result;
}

void sub_10000C49C()
{
  sub_100007760();
  if (v0 <= 0x3F)
  {
    sub_10000E174();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000C530()
{
  result = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000C5AC()
{
  result = type metadata accessor for TemperatureScaleConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for HourlyForecastComponentPreprocessedDataModel()
{
  result = qword_100CB7640;
  if (!qword_100CB7640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C688()
{
  type metadata accessor for HourlyForecastComponentViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10000BC20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000C70C(uint64_t a1, unint64_t *a2)
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

BOOL sub_10000C79C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000C840()
{

  return dispatch thunk of Collection.endIndex.getter();
}

uint64_t sub_10000C860()
{

  return sub_100072F20(v1, v0, type metadata accessor for ViewState);
}

uint64_t sub_10000C88C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10000C940()
{

  return swift_slowAlloc();
}

unint64_t sub_10000C95C()
{

  return sub_100078694(v0, v1, (v2 - 112));
}

void sub_10000C978()
{

  sub_1006A7AB4();
}

uint64_t sub_10000C998()
{

  return swift_allocObject();
}

void sub_10000CA4C(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
}

uint64_t sub_10000CABC(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_10000CADC(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_10000CAFC(uint64_t a1)
{

  return sub_100024D10(a1, 1, v1);
}

void sub_10000CB2C(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_10000CB48()
{

  return static Measurement.== infix<A, B>(_:_:)();
}

uint64_t sub_10000CB64()
{

  return String.LocalizationValue.init(stringLiteral:)();
}

uint64_t sub_10000CB84()
{
  *(v1 - 112) = v0;
}

uint64_t sub_10000CB9C(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_10000CBD8()
{
}

uint64_t sub_10000CCC0@<X0>(uint64_t a1@<X8>)
{

  return sub_10031694C(v1 + a1, v3 + v4, v2);
}

uint64_t sub_10000CCDC()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_10000CD44()
{

  sub_10004FF70();
}

uint64_t sub_10000CD5C()
{

  return swift_beginAccess();
}

uint64_t sub_10000CD7C()
{

  return Measurement.formatted<A>(_:placeholder:unitManager:)();
}

uint64_t sub_10000CDFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[25] = result;
  v3[26] = a2;
  v3[27] = a3;
  return result;
}

uint64_t sub_10000CE64()
{

  return swift_allocObject();
}

uint64_t sub_10000CED8()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

id sub_10000CF50()
{
  v2 = *(v0 - 16);

  return v2;
}

uint64_t sub_10000CFA0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000CFBC(unint64_t *a1)
{

  return sub_100006F64(a1, v1);
}

uint64_t sub_10000CFE8()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void sub_10000D054()
{
  if (!qword_100CC2610)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC2610);
    }
  }
}

uint64_t type metadata accessor for ListPreprocessedDataModel()
{
  result = qword_100CC8BA8;
  if (!qword_100CC8BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WeatherConditionBackgroundTimeData()
{
  result = qword_100CC4F78;
  if (!qword_100CC4F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D144()
{
  result = type metadata accessor for WeatherConditionBackgroundTimeData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10000D1B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for UVIndexComponentPreprocessedDataModel()
{
  result = qword_100CAE3D8;
  if (!qword_100CAE3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D250()
{
  result = type metadata accessor for PressureTrend();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for NewsDataModel()
{
  result = qword_100CECEC8;
  if (!qword_100CECEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D324()
{
  if (!qword_100CECED8)
  {
    type metadata accessor for NewsArticlePlacement();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CECED8);
    }
  }
}

void sub_10000D37C()
{
  if (!qword_100CDE9D8)
  {
    type metadata accessor for NewsArticle();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDE9D8);
    }
  }
}

uint64_t type metadata accessor for NewsArticle()
{
  result = qword_100CE3400;
  if (!qword_100CE3400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return type metadata accessor for NewsArticle();
}

void sub_10000D420(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10000D474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10000D4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10000D53C()
{
  sub_10000D4D8(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NewsChannel();
        if (v3 <= 0x3F)
        {
          sub_10000D054();
          if (v4 <= 0x3F)
          {
            sub_10000D4D8(319, &unk_100CE3410, &type metadata accessor for UUID, &type metadata accessor for Array);
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

uint64_t type metadata accessor for NewsChannel()
{
  result = qword_100CD01F8;
  if (!qword_100CD01F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return type metadata accessor for NewsChannel();
}

void sub_10000D6DC()
{
  sub_10001DB20(319, &qword_100CD6C00, &qword_100CA2CD8);
  if (v0 <= 0x3F)
  {
    sub_10000B544();
    if (v1 <= 0x3F)
    {
      sub_10001DB20(319, &qword_100CD6C08, &unk_100CD6C10);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for ConditionDetailViewAction()
{
  result = qword_100CC4AF0;
  if (!qword_100CC4AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D7F0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DetailCondition();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DetailChartSelection();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for DetailChartSelection()
{
  result = qword_100CCEB80;
  if (!qword_100CCEB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D8C4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10000D964();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000D964()
{
  if (!qword_100CAFF88)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAFF88);
    }
  }
}

uint64_t sub_10000D9B4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000DA18()
{
  result = type metadata accessor for DetailHeroChartLollipopPosition(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_10000DA84()
{
  result = qword_100CC7A90;
  if (!qword_100CC7A90)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_100CC7A90);
  }

  return result;
}

void sub_10000DAAC()
{
  if (!qword_100CC7A98)
  {
    type metadata accessor for WeatherMapOverlayKind();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CC7A98);
    }
  }
}

void sub_10000DB38()
{
  if (!qword_100CAD3B0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAD3B0);
    }
  }
}

void sub_10000DB90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_10000DC00()
{
  result = type metadata accessor for MoonDetailSelectedDate();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000DC7C()
{
  sub_10000B3D8(319, &qword_100CACAD0, &type metadata accessor for Location);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10000B3D8(319, &unk_100CACAD8, &type metadata accessor for WeatherMapOverlayKind);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata accessor for DisplayMetricsChangeAction()
{
  result = qword_100CE3618;
  if (!qword_100CE3618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DD8C()
{
  if (!qword_100CB7398)
  {
    type metadata accessor for LocationComponentAction(255);
    sub_10022E824(&qword_100CB73A0);
    sub_10022E824(&unk_100CB2CF0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CB7398);
    }
  }
}

void sub_10000DE30()
{
  if (!qword_100CAE1A0)
  {
    v0 = type metadata accessor for WeatherMapOverlayKind();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAE1A0);
    }
  }
}

void sub_10000DE78()
{
  if (!qword_100CED168)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CED168);
    }
  }
}

uint64_t sub_10000DEE0()
{
  sub_10000DF38();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10000DF38()
{
  if (!qword_100CE0788)
  {
    type metadata accessor for Date();
    sub_10022E824(&qword_100CC8178);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CE0788);
    }
  }
}

uint64_t type metadata accessor for WeatherDataOverrides()
{
  result = qword_100CBDA20;
  if (!qword_100CBDA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E004()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ListPreprocessedDataModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for UVIndexComponentPreprocessedDataModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PressureComponentPreprocessedDataModel();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for FeelsLikeComponentPreprocessedDataModel()
{
  result = qword_100CD5D38;
  if (!qword_100CD5D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E174()
{
  if (!qword_100CB4808)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB4808);
    }
  }
}

uint64_t type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel()
{
  result = qword_100CCB038;
  if (!qword_100CCB038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E218()
{
  sub_100007760();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000E2B4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10000D1B0(319, &qword_100CC4F88, &type metadata accessor for Elevation);
    if (v1 <= 0x3F)
    {
      sub_10000D1B0(319, &unk_100CC4F90, &type metadata accessor for BackgroundMoonData);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000E388()
{
  result = type metadata accessor for WeatherDescription();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PressureComponentPreprocessedDataModel()
{
  result = qword_100CB38F0;
  if (!qword_100CB38F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E450()
{
  type metadata accessor for News();
  if (v0 <= 0x3F)
  {
    sub_10000D324();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for NewsArticlePlacement()
{
  result = qword_100CDE9C8;
  if (!qword_100CDE9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E510()
{
  sub_10000D37C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArticlePlacementLocation();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000E594()
{
  sub_10000DB38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10000E640()
{
  result = type metadata accessor for Published();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000E748()
{
}

uint64_t sub_10000E830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10001B350(a1, 1, 1, a4);
}

unint64_t sub_10000E848()
{
  v2 = v0[54];
  v3 = v0[55];

  return sub_100078694(v2, v3, v0 + 56);
}

uint64_t sub_10000E864()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10000E904(uint64_t a1)
{

  return sub_10031694C(a1, v2 + v3, v1);
}

uint64_t sub_10000E944()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000E974()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_10000E98C()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t sub_10000EA08@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);

  return sub_10041429C(v2, v3, v4, v5, v6);
}

uint64_t sub_10000EA24()
{

  return sub_100441000(v0, type metadata accessor for NextHourPrecipitationDetailViewState);
}

uint64_t sub_10000EA60()
{
}

uint64_t *sub_10000EAA0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 64) = v1;
  *(v2 - 56) = a1;

  return sub_100042FB0((v2 - 88));
}

uint64_t sub_10000EAE8()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000EBB0()
{
}

uint64_t sub_10000EC28()
{

  return sub_1001B331C(v0, type metadata accessor for PressureComponent);
}

uint64_t sub_10000EC60()
{

  return swift_getOpaqueTypeConformance2();
}

NSDate sub_10000ECA0()
{

  return Date._bridgeToObjectiveC()();
}

uint64_t sub_10000ED34()
{

  return sub_1001A126C(v0, type metadata accessor for LocationAvailableDataSetState);
}

uint64_t sub_10000EDD8(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10000EE08()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_10000EE74()
{

  return sub_1001920DC(v1, v0);
}

uint64_t sub_10000EE8C()
{
  sub_100006F14(v1 + *(v0 + 36));
}

uint64_t sub_10000EEE0()
{

  return dispatch thunk of Collection.endIndex.getter();
}

uint64_t sub_10000EF1C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000EF54(uint64_t a1)
{
  v3 = *(v1 - 224);

  return sub_10001B350(a1, 0, 1, v3);
}

uint64_t sub_10000EF70()
{

  return sub_100099AEC(v1, v3 + v2, v0);
}

uint64_t sub_10000EFCC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10000F05C()
{
  type metadata accessor for ModalViewState(319);
  if (v0 <= 0x3F)
  {
    sub_10001E2B8(319, &qword_100CAEE10, &type metadata accessor for Location, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10001E2B8(319, &qword_100CADC30, &type metadata accessor for Location.Identifier, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherMapOverlayKind();
        if (v3 <= 0x3F)
        {
          sub_10001E2B8(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10000F1E8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConditionDetailViewState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AirQualityDetailViewState();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NextHourPrecipitationDetailViewState();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SunriseSunsetDetailViewState();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for MoonDetailViewState();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for NewsArticle();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for AveragesDetailViewState();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for HomeAndWorkRefinementViewState();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for AirQualityDetailViewState()
{
  result = qword_100CB3F70;
  if (!qword_100CB3F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F334()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_10000F3C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000F3C0()
{
  if (!qword_100CAF988)
  {
    type metadata accessor for CGRect(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAF988);
    }
  }
}

uint64_t type metadata accessor for NextHourPrecipitationDetailViewState()
{
  result = qword_100CEDAA0;
  if (!qword_100CEDAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F464()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_10000F3C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SunriseSunsetDetailViewState()
{
  result = qword_100CEC180;
  if (!qword_100CEC180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F534(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for AveragesDetailViewState()
{
  result = qword_100CAF970;
  if (!qword_100CAF970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F5D4()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_10000F6B0(319, &qword_100CAF980, type metadata accessor for DetailHeroChartLollipopPosition);
    if (v1 <= 0x3F)
    {
      sub_10000F6B0(319, &qword_100CAF988, type metadata accessor for CGRect);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000F6B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for HomeAndWorkRefinementViewState()
{
  result = qword_100CCB8C8;
  if (!qword_100CCB8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F750(uint64_t a1)
{
  v2 = type metadata accessor for LocationPreviewViewState(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_10000F818()
{
  if (!qword_100CB8F28)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8F28);
    }
  }
}

unint64_t sub_10000F868()
{
  result = qword_100CA51B0;
  if (!qword_100CA51B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA51B0);
  }

  return result;
}

unint64_t sub_10000F8AC()
{
  result = qword_100CE9140;
  if (!qword_100CE9140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CE9140);
  }

  return result;
}

void sub_10000F908()
{
  if (!qword_100CE9150)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE9150);
    }
  }
}

uint64_t sub_10000F960()
{

  return swift_once();
}

uint64_t sub_10000F9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a1[2] = v15;
  a1[3] = a13;
  a1[4] = a15;
  a1[5] = a12;
  a1[6] = v16;
  a1[7] = a11;
  a1[8] = v17;
}

void sub_10000FA14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000FA48()
{

  return swift_once();
}

uint64_t sub_10000FAB4()
{

  return swift_once();
}

uint64_t sub_10000FAD4(unint64_t *a1)
{

  return sub_100006F64(a1, v1);
}

uint64_t sub_10000FB60()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_10000FB84()
{
  v2 = *(v0 + 96);
  sub_1000161C0((*(v1 - 224) + 72), v2);
  return v2;
}

uint64_t sub_10000FC14()
{
}

uint64_t sub_10000FC90()
{
  sub_1000161C0((v0 + 48), *(v0 + 72));

  return dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
}

uint64_t sub_10000FD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xE000000000000000;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v10, v8, *&v12, *&a8)._countAndFlagsBits;
}

uint64_t sub_10000FDC0()
{

  return swift_once();
}

double sub_10000FE08()
{
  *(v0 - 48) = 0;
  result = 0.0;
  *(v0 - 80) = 0u;
  *(v0 - 64) = 0u;
  return result;
}

__n128 sub_10000FE30(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __n128 a12)
{
  a1[1] = a10;
  a1[2] = a11;
  result = a12;
  a1[3] = a12;
  return result;
}

uint64_t sub_10000FE94()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10000FED0(unint64_t *a1, uint64_t *a2)
{

  return sub_100006F64(a1, a2);
}

uint64_t sub_10000FF3C()
{

  return swift_dynamicCast();
}

uint64_t sub_10000FF74()
{

  return sub_1004268E4(v0, type metadata accessor for LocationWeatherDataState);
}

uint64_t sub_10000FFB0()
{

  return sub_10001B350(v1, 0, 1, v0);
}

uint64_t sub_100010004()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100010058()
{

  return swift_once();
}

uint64_t sub_10001008C()
{
  *(v0 - 280) = 0;
  *(v0 - 272) = 0xE000000000000000;
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0xE000000000000000;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0xE000000000000000;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0xE000000000000000;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0xE000000000000000;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0xE000000000000000;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;
  return v0 - 280;
}

uint64_t sub_1000100FC()
{

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_100010180()
{

  return StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
}

uint64_t sub_100010238()
{

  return sub_10050A8BC(v0, type metadata accessor for MoonDetailViewModel);
}

double sub_1000102C8()
{
  result = *(v1 - 184);
  v3 = *(v1 - 176);
  *v0 = result;
  *(v0 + 8) = v3;
  return result;
}

void sub_1000102DC(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_1000103D0()
{
  v1 = *(v0 - 56);
  sub_1000161C0((v0 - 80), v1);
  return v1;
}

uint64_t sub_100010408@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  *(v4 - 128) = v1;
  *(v4 - 120) = a1;
  return 0x7069726373627573;
}

unint64_t sub_100010460()
{

  return sub_100078694(v0, v1, (v2 - 192));
}

uint64_t sub_1000104D4()
{

  return sub_100141A8C(v0, type metadata accessor for PreviewLocation);
}

id sub_1000104FC()
{
  v3 = *(v0 + 3744);

  return [v1 v3];
}

uint64_t sub_10001067C()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000106B4()
{
  sub_10001B350(v0, 0, 1, v1);

  return swift_beginAccess();
}

uint64_t sub_10001072C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void sub_1000107C8()
{

  sub_1006A7FAC();
}

uint64_t sub_1000108A8()
{

  return sub_10009F020(v0, type metadata accessor for LocationPreviewViewState);
}

uint64_t sub_100010934()
{

  return type metadata accessor for PressureComponentViewModel();
}

void sub_100010A7C()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

NSDictionary sub_100010AB0()
{

  return Dictionary._bridgeToObjectiveC()();
}

void sub_100010AE8()
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];

  sub_100197CF4(v0, v3, v4, v5);
}

uint64_t sub_100010B38()
{

  return sub_1007BC244(v0, type metadata accessor for SearchViewModel);
}

uint64_t sub_100010C24()
{
  *(v1 - 128) = 0;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0u;
  return v0;
}

uint64_t sub_100010C6C()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100010CE8(uint64_t a1)
{
  *v1 = *(v2 + *(a1 + 20));

  return type metadata accessor for Location();
}

uint64_t sub_100010D50()
{

  return swift_getWitnessTable();
}

uint64_t sub_100010DEC()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_100010E54()
{

  return type metadata accessor for MainAction();
}

uint64_t sub_100010EB0()
{

  return sub_1001115D0(v0, type metadata accessor for WeatherConditionBackgroundTimeData);
}

uint64_t sub_100010ED8(unint64_t *a1)
{

  return sub_1008B4DC0(a1, v1);
}

uint64_t sub_100010F18()
{

  return swift_once();
}

uint64_t sub_100010F98()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void sub_100011094()
{
  v3 = *(v0 + 176);
  *(v2 - 136) = v1;
  *(v2 - 128) = v3;
}

uint64_t sub_100011100()
{

  return swift_once();
}

__n128 *sub_100011138(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1702125924;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_1000111C8()
{

  return objc_opt_self();
}

uint64_t sub_100011284()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100011350()
{

  sub_1000873CC();
}

uint64_t sub_1000113F8(char a1)
{

  return sub_100366814(v2, v1 & 1, a1 & 1);
}

uint64_t sub_100011418()
{

  return swift_slowAlloc();
}

uint64_t sub_100011450()
{

  return swift_slowAlloc();
}

uint64_t sub_1000114DC()
{

  return swift_once();
}

uint64_t sub_100011530()
{

  return swift_beginAccess();
}

uint64_t sub_100011568()
{
  v2 = *(v0 + *(v1 + 20) + 8);
  if (v2 > 1)
  {
    return (v2 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001159C()
{
}

uint64_t sub_1000115B4()
{
  v4 = v1 + *(v0 + 32);

  return sub_100024D10(v4, 1, v2);
}

uint64_t sub_1000115F8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001161C()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100011714()
{

  return static Optional<A>.read(from:)();
}

uint64_t sub_100011780()
{

  return sub_100703000();
}

uint64_t sub_100011800()
{
  v2 = *(v0 - 144);
  *(v0 - 224) = *(v0 - 160);
  *(v0 - 208) = v2;
  *(v0 - 192) = *(v0 - 128);

  return sub_1007A7EB8(v0 - 224);
}

uint64_t sub_100011874()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10001191C()
{
}

uint64_t sub_100011958()
{

  return sub_10004FD00(v0, type metadata accessor for ActivityAction);
}

id sub_1000119C0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___containerManager] = 0;
  *&v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___container] = 0;
  v2 = &v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___resolver];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___observableResolver] = 0;
  *&v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___tracker] = 0;
  v3 = &v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___stateManager];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___windowFocusManager];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___debugPresenter];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___testManager] = 0;
  *&v0[OBJC_IVAR____TtC7Weather11AppDelegate_sessionManager] = 0;
  *&v0[OBJC_IVAR____TtC7Weather11AppDelegate_appSessionManager] = 0;
  v6 = &v0[OBJC_IVAR____TtC7Weather11AppDelegate_appLaunchTime];
  *v6 = 0;
  v6[8] = 1;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_100011AB8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v6 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000058A0();
    sub_100015F40(v9, 255, v10);
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a3;
  v12 = a1;
  a5(v11, v6);

  return 1;
}

uint64_t sub_100011B98()
{
  sub_10000C70C(0, &qword_100CACDF0);
  v0 = static NSBundle.weatherInternalExtras.getter();
  if (!v0)
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    goto LABEL_7;
  }

  NSBundle.internalExtrasAssembly.getter();
  if (!*(&v121 + 1))
  {
LABEL_7:
    sub_1000180EC(&v120, &qword_100CAF280);
    v2 = &_swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  sub_100013188(&v120, &v123);
  sub_100035B30(&v123, &v120);
  sub_1000131A0();
  v2 = v1;
  v126 = v1;
  v3 = *(v1 + 16);
  if (v3 >= *(v1 + 24) >> 1)
  {
    sub_1000131A0();
    v2 = v118;
    v126 = v118;
  }

  sub_100006F14(&v123);
  v4 = *(&v121 + 1);
  v5 = v122;
  v6 = sub_10002D7F8(&v120, *(&v121 + 1));
  __chkstk_darwin(v6);
  v8 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  sub_100356CF4(v3, v8, &v126, v4, v5);
  sub_100006F14(&v120);
LABEL_8:
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (sub_100015344(v11, &off_100C432D0))
  {
    v12 = type metadata accessor for WeatherMenuAssembly();
    v13 = swift_allocObject();
    sub_1000131A0();
    v15 = v14;
    v16 = v14[2];
    if (v16 >= v14[3] >> 1)
    {
      sub_1000131A0();
      v15 = v117;
    }

    v124 = v12;
    v125 = sub_100015F40(&qword_100CAF418, 255, type metadata accessor for WeatherMenuAssembly);
    *&v123 = v13;
    v15[2] = v16 + 1;
    sub_100013188(&v123, &v15[5 * v16 + 4]);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  sub_10022C350(&qword_100CAF288);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100A3ECD0;
  v18 = type metadata accessor for FrameworkAssembly();
  v19 = [objc_allocWithZone(v18) init];
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for FrameworkAssembly;
  *(v17 + 32) = v19;
  v20 = type metadata accessor for FrameworkAssembly();
  v21 = [objc_allocWithZone(v20) init];
  *(v17 + 96) = v20;
  *(v17 + 104) = sub_100015F40(&qword_100CAF290, 255, &type metadata accessor for FrameworkAssembly);
  *(v17 + 72) = v21;
  v22 = type metadata accessor for Assembly();
  swift_allocObject();
  v23 = Assembly.init()();
  *(v17 + 136) = v22;
  *(v17 + 144) = sub_100015F40(&qword_100CAF298, 255, &type metadata accessor for Assembly);
  *(v17 + 112) = v23;
  v24 = type metadata accessor for Assembly();
  swift_allocObject();
  v25 = Assembly.init()();
  *(v17 + 176) = v24;
  *(v17 + 184) = sub_100015F40(&qword_100CAF2A0, 255, &type metadata accessor for Assembly);
  *(v17 + 152) = v25;
  v26 = type metadata accessor for Assembly();
  swift_allocObject();
  v27 = Assembly.init()();
  *(v17 + 216) = v26;
  *(v17 + 224) = sub_100015F40(&qword_100CAF2A8, 255, &type metadata accessor for Assembly);
  *(v17 + 192) = v27;
  v28 = type metadata accessor for Assembly();
  swift_allocObject();
  v29 = Assembly.init()();
  *(v17 + 256) = v28;
  *(v17 + 264) = sub_100015F40(&qword_100CAF2B0, 255, &type metadata accessor for Assembly);
  *(v17 + 232) = v29;
  v30 = type metadata accessor for Assembly();
  swift_allocObject();
  v31 = Assembly.init()();
  *(v17 + 296) = v30;
  *(v17 + 304) = sub_100015F40(&qword_100CAF2B8, 255, &type metadata accessor for Assembly);
  *(v17 + 272) = v31;
  v32 = type metadata accessor for Assembly();
  swift_allocObject();
  v33 = Assembly.init()();
  *(v17 + 336) = v32;
  *(v17 + 344) = sub_100015F40(&qword_100CAF2C0, 255, &type metadata accessor for Assembly);
  *(v17 + 312) = v33;
  sub_10022C350(&qword_100CAF2C8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100A3ECE0;
  v35 = type metadata accessor for AutomationAssembly();
  v36 = swift_allocObject();
  *(v34 + 56) = v35;
  *(v34 + 64) = sub_100015F40(&qword_100CAF2D0, 255, type metadata accessor for AutomationAssembly);
  *(v34 + 32) = v36;
  v37 = type metadata accessor for AnalyticsAssembly();
  v38 = swift_allocObject();
  *(v34 + 96) = v37;
  *(v34 + 104) = sub_100015F40(&qword_100CAF2D8, 255, type metadata accessor for AnalyticsAssembly);
  *(v34 + 72) = v38;
  v39 = type metadata accessor for DebugAssembly();
  v40 = swift_allocObject();
  *(v34 + 136) = v39;
  *(v34 + 144) = sub_100015F40(&qword_100CAF2E0, 255, type metadata accessor for DebugAssembly);
  *(v34 + 112) = v40;
  v41 = type metadata accessor for DemoAssembly();
  v42 = swift_allocObject();
  *(v34 + 176) = v41;
  *(v34 + 184) = sub_100015F40(&qword_100CAF2E8, 255, type metadata accessor for DemoAssembly);
  *(v34 + 152) = v42;
  v43 = type metadata accessor for HandlerAssembly();
  v44 = swift_allocObject();
  *(v34 + 216) = v43;
  *(v34 + 224) = sub_100015F40(&qword_100CAF2F0, 255, type metadata accessor for HandlerAssembly);
  *(v34 + 192) = v44;
  v45 = type metadata accessor for ManagerAssembly();
  v46 = swift_allocObject();
  *(v34 + 256) = v45;
  *(v34 + 264) = sub_100015F40(&qword_100CAF2F8, 255, type metadata accessor for ManagerAssembly);
  *(v34 + 232) = v46;
  v47 = type metadata accessor for PerformanceTestAssembly();
  v48 = swift_allocObject();
  *(v34 + 296) = v47;
  *(v34 + 304) = sub_100015F40(&qword_100CAF300, 255, type metadata accessor for PerformanceTestAssembly);
  *(v34 + 272) = v48;
  v49 = type metadata accessor for ProviderAssembly();
  v50 = swift_allocObject();
  *(v34 + 336) = v49;
  *(v34 + 344) = sub_100015F40(&qword_100CAF308, 255, type metadata accessor for ProviderAssembly);
  *(v34 + 312) = v50;
  v51 = type metadata accessor for SettingsAssembly();
  v52 = swift_allocObject();
  *(v34 + 376) = v51;
  *(v34 + 384) = sub_100015F40(&qword_100CAF310, 255, type metadata accessor for SettingsAssembly);
  *(v34 + 352) = v52;
  v53 = type metadata accessor for StartupAssembly();
  v54 = swift_allocObject();
  *(v34 + 416) = v53;
  *(v34 + 424) = sub_100015F40(&qword_100CAF318, 255, type metadata accessor for StartupAssembly);
  *(v34 + 392) = v54;
  v55 = type metadata accessor for ToolbarAssembly();
  v56 = swift_allocObject();
  *(v34 + 456) = v55;
  *(v34 + 464) = sub_100015F40(&qword_100CAF320, 255, type metadata accessor for ToolbarAssembly);
  *(v34 + 432) = v56;
  v57 = type metadata accessor for MonitorsAssembly();
  v58 = swift_allocObject();
  *(v34 + 496) = v57;
  *(v34 + 504) = sub_100015F40(&qword_100CAF328, 255, type metadata accessor for MonitorsAssembly);
  *(v34 + 472) = v58;
  v59 = type metadata accessor for WeatherConditionBackgroundAssembly();
  v60 = swift_allocObject();
  *(v34 + 536) = v59;
  *(v34 + 544) = sub_100015F40(&qword_100CAF330, 255, type metadata accessor for WeatherConditionBackgroundAssembly);
  *(v34 + 512) = v60;
  v61 = type metadata accessor for InteractionsAssembly();
  v62 = swift_allocObject();
  *(v34 + 576) = v61;
  *(v34 + 584) = sub_100015F40(&qword_100CAF338, 255, type metadata accessor for InteractionsAssembly);
  *(v34 + 552) = v62;
  v63 = type metadata accessor for AirQualityDetailAssembly();
  v64 = swift_allocObject();
  *(v34 + 616) = v63;
  *(v34 + 624) = sub_100015F40(&qword_100CAF340, 255, type metadata accessor for AirQualityDetailAssembly);
  *(v34 + 592) = v64;
  v65 = type metadata accessor for ConditionDetailAssembly();
  v66 = swift_allocObject();
  *(v34 + 656) = v65;
  *(v34 + 664) = sub_100015F40(&qword_100CAF348, 255, type metadata accessor for ConditionDetailAssembly);
  *(v34 + 632) = v66;
  v67 = type metadata accessor for DetailChartAssembly();
  v68 = swift_allocObject();
  *(v34 + 696) = v67;
  *(v34 + 704) = sub_100015F40(&qword_100CAF350, 255, type metadata accessor for DetailChartAssembly);
  *(v34 + 672) = v68;
  HourPrecipitationDetailAssembly = type metadata accessor for NextHourPrecipitationDetailAssembly();
  v70 = swift_allocObject();
  *(v34 + 736) = HourPrecipitationDetailAssembly;
  *(v34 + 744) = sub_100015F40(&qword_100CAF358, 255, type metadata accessor for NextHourPrecipitationDetailAssembly);
  *(v34 + 712) = v70;
  v71 = type metadata accessor for SunriseSunsetDetailAssembly();
  v72 = swift_allocObject();
  *(v34 + 776) = v71;
  *(v34 + 784) = sub_100015F40(&qword_100CAF360, 255, type metadata accessor for SunriseSunsetDetailAssembly);
  *(v34 + 752) = v72;
  v73 = type metadata accessor for MoonCalendarAssembly();
  v74 = swift_allocObject();
  *(v34 + 816) = v73;
  *(v34 + 824) = sub_100015F40(&qword_100CAF368, 255, type metadata accessor for MoonCalendarAssembly);
  *(v34 + 792) = v74;
  v75 = type metadata accessor for MoonScrubberAssembly();
  v76 = swift_allocObject();
  *(v34 + 856) = v75;
  *(v34 + 864) = sub_100015F40(&qword_100CAF370, 255, type metadata accessor for MoonScrubberAssembly);
  *(v34 + 832) = v76;
  v77 = type metadata accessor for MoonDetailAssembly();
  v78 = swift_allocObject();
  *(v34 + 896) = v77;
  *(v34 + 904) = sub_100015F40(&qword_100CAF378, 255, type metadata accessor for MoonDetailAssembly);
  *(v34 + 872) = v78;
  v79 = type metadata accessor for MessageCoverAssembly();
  v80 = swift_allocObject();
  *(v34 + 936) = v79;
  *(v34 + 944) = sub_100015F40(&qword_100CAF380, 255, type metadata accessor for MessageCoverAssembly);
  *(v34 + 912) = v80;
  v81 = type metadata accessor for MainAssembly();
  v82 = swift_allocObject();
  *(v34 + 976) = v81;
  *(v34 + 984) = sub_100015F40(&qword_100CAF388, 255, type metadata accessor for MainAssembly);
  *(v34 + 952) = v82;
  v83 = type metadata accessor for NotificationSettingsAssembly();
  v84 = swift_allocObject();
  *(v34 + 1016) = v83;
  *(v34 + 1024) = sub_100015F40(&qword_100CAF390, 255, type metadata accessor for NotificationSettingsAssembly);
  *(v34 + 992) = v84;
  v85 = type metadata accessor for NotificationsOptInAssembly();
  v86 = swift_allocObject();
  *(v34 + 1056) = v85;
  *(v34 + 1064) = sub_100015F40(&qword_100CAF398, 255, type metadata accessor for NotificationsOptInAssembly);
  *(v34 + 1032) = v86;
  v87 = type metadata accessor for ListAssembly();
  v88 = swift_allocObject();
  *(v34 + 1096) = v87;
  *(v34 + 1104) = sub_100015F40(&qword_100CAF3A0, 255, type metadata accessor for ListAssembly);
  *(v34 + 1072) = v88;
  v89 = type metadata accessor for ListMenuAssembly();
  v90 = swift_allocObject();
  *(v34 + 1136) = v89;
  *(v34 + 1144) = sub_100015F40(&qword_100CAF3A8, 255, type metadata accessor for ListMenuAssembly);
  *(v34 + 1112) = v90;
  v91 = type metadata accessor for LocationAssembly();
  v92 = swift_allocObject();
  *(v34 + 1176) = v91;
  *(v34 + 1184) = sub_100015F40(&qword_100CAF3B0, 255, type metadata accessor for LocationAssembly);
  *(v34 + 1152) = v92;
  v93 = type metadata accessor for LocationPreviewAssembly();
  v94 = swift_allocObject();
  *(v34 + 1216) = v93;
  *(v34 + 1224) = sub_100015F40(&qword_100CAF3B8, 255, type metadata accessor for LocationPreviewAssembly);
  *(v34 + 1192) = v94;
  v95 = type metadata accessor for LocationViewerAssembly();
  v96 = swift_allocObject();
  *(v34 + 1256) = v95;
  *(v34 + 1264) = sub_100015F40(&qword_100CAF3C0, 255, type metadata accessor for LocationViewerAssembly);
  *(v34 + 1232) = v96;
  v97 = type metadata accessor for ReportWeatherAssembly();
  v98 = swift_allocObject();
  *(v34 + 1296) = v97;
  *(v34 + 1304) = sub_100015F40(&qword_100CAF3C8, 255, type metadata accessor for ReportWeatherAssembly);
  *(v34 + 1272) = v98;
  v99 = type metadata accessor for SharedSearchAssembly();
  v100 = swift_allocObject();
  *(v34 + 1336) = v99;
  *(v34 + 1344) = sub_100015F40(&qword_100CAF3D0, 255, type metadata accessor for SharedSearchAssembly);
  *(v34 + 1312) = v100;
  v101 = type metadata accessor for SearchAssembly();
  v102 = swift_allocObject();
  *(v34 + 1376) = v101;
  *(v34 + 1384) = sub_100015F40(&qword_100CAF3D8, 255, type metadata accessor for SearchAssembly);
  *(v34 + 1352) = v102;
  v103 = type metadata accessor for AveragesDetailAssembly();
  v104 = swift_allocObject();
  *(v34 + 1416) = v103;
  *(v34 + 1424) = sub_100015F40(&qword_100CAF3E0, 255, type metadata accessor for AveragesDetailAssembly);
  *(v34 + 1392) = v104;
  v105 = type metadata accessor for VFXTestAssembly();
  v106 = swift_allocObject();
  *(v34 + 1456) = v105;
  *(v34 + 1464) = sub_100015F40(&qword_100CAF3E8, 255, type metadata accessor for VFXTestAssembly);
  *(v34 + 1432) = v106;
  v107 = type metadata accessor for InteractiveMapAssembly();
  v108 = swift_allocObject();
  *(v34 + 1496) = v107;
  *(v34 + 1504) = sub_100015F40(&qword_100CAF3F0, 255, type metadata accessor for InteractiveMapAssembly);
  *(v34 + 1472) = v108;
  v109 = type metadata accessor for DayPickerAssembly();
  v110 = swift_allocObject();
  *(v34 + 1536) = v109;
  *(v34 + 1544) = sub_100015F40(&qword_100CAF3F8, 255, type metadata accessor for DayPickerAssembly);
  *(v34 + 1512) = v110;
  *(v34 + 1576) = &type metadata for ContentStatusBannerAssembly;
  *(v34 + 1584) = sub_100021B1C();
  v111 = type metadata accessor for UnitsConfigurationAssembly();
  v112 = swift_allocObject();
  *(v34 + 1616) = v111;
  *(v34 + 1624) = sub_100015F40(&qword_100CAF408, 255, type metadata accessor for UnitsConfigurationAssembly);
  *(v34 + 1592) = v112;
  v113 = type metadata accessor for HomeAndWorkRefinementAssembly();
  v114 = swift_allocObject();
  *(v34 + 1656) = v113;
  *(v34 + 1664) = sub_100015F40(&qword_100CAF410, 255, type metadata accessor for HomeAndWorkRefinementAssembly);
  *(v34 + 1632) = v114;
  v119[1] = v34;
  sub_100016180(&_swiftEmptyArrayStorage);
  sub_100016180(&_swiftEmptyArrayStorage);
  sub_100016180(v2);
  sub_100016180(v15);
  type metadata accessor for SingletonPool();
  swift_allocObject();
  SingletonPool.init()();
  type metadata accessor for ContainerManager();
  swift_allocObject();
  v115 = ContainerManager.init(singletonPool:bundleAssemblies:assemblies:)();

  return v115;
}

uint64_t sub_100013188(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013288(uint64_t result, uint64_t a2)
{
  *(v2 - 360) = result;
  *(v2 - 368) = a2;
  return result;
}

uint64_t sub_1000132AC()
{
}

uint64_t sub_1000132CC()
{
}

uint64_t sub_1000132F8()
{

  return sub_10068275C();
}

uint64_t sub_1000133AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 280);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_1000133E4(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 - 368);

  return sub_100018144(v4, a2);
}

void sub_1000133FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10001341C()
{

  return sub_100105E30(v0, type metadata accessor for LocationViewerActiveLocationState);
}

uint64_t sub_1000134B0()
{

  return swift_task_alloc();
}

uint64_t sub_10001356C()
{
  sub_100006F14(v0);
}

uint64_t sub_1000135E4@<X0>(uint64_t a1@<X8>)
{

  return sub_10031694C(v1 + a1, v3, v2);
}

uint64_t sub_100013600()
{

  return swift_allocObject();
}

__n128 *sub_10001361C(__n128 *result, __n128 a2)
{
  *(v2 - 128) = a2;
  result[1] = a2;
  return result;
}

void sub_10001363C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_1000136DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;

  sub_1005631C0();
}

uint64_t sub_10001372C()
{

  return sub_100166104(v0);
}

void sub_100013794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;

  sub_10055D184();
}

uint64_t sub_1000137E8(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_100013848()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000138DC(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_1000138FC(uint64_t a1, uint64_t *a2)
{

  return sub_10022E824(a2);
}

uint64_t sub_100013A20()
{

  return sub_10060701C((v1 + 16), v0);
}

uint64_t sub_100013A8C()
{
  *(v0 - 80) = 0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return v0 - 112;
}

uint64_t sub_100013B24()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100013B60()
{
}

uint64_t sub_100013BC0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100013C0C(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return sub_100035AD0(va1, va, v1);
}

uint64_t sub_100013C84()
{

  return sub_1000E01F8(v0, type metadata accessor for ModalViewState);
}

id sub_100013CC0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 72) + 40);

  return v3;
}

uint64_t sub_100013D5C()
{
}

uint64_t sub_100013D8C()
{

  return swift_dynamicCast();
}

uint64_t sub_100013DF8()
{

  return type metadata accessor for MainView(0);
}

uint64_t sub_100013E18()
{

  return type metadata accessor for WeatherNetworkActivity.Label();
}

uint64_t sub_100013E38()
{

  return sub_1001920DC(v0, type metadata accessor for MapComponentViewModel);
}

uint64_t sub_100013E60()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100013EDC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100013EF8(uint64_t a1)
{

  return sub_10001B350(a1, 0, 1, v1);
}

uint64_t sub_100013F40()
{

  return swift_getOpaqueTypeConformance2();
}

void sub_100013FF8(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 32) = a1;
  *(v2 - 24) = &a2;

  sub_10055FBE4();
}

uint64_t sub_10001402C()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t sub_100014084()
{

  return sub_100105E30(v0, type metadata accessor for ContentStatusBanner);
}

uint64_t sub_1000140AC()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000140E0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

void sub_100014120()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
}

uint64_t sub_100014178()
{

  return swift_getOpaqueTypeConformance2();
}

double sub_1000141D4(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return v4;
}

uint64_t sub_100014274()
{
  v4 = v2 + *(v0 + 28);

  return sub_100024D10(v4, 1, v1);
}

uint64_t sub_100014298()
{
}

uint64_t sub_1000142D4()
{
  *(v2 - 96) = 0;
  *(v2 - 128) = 0u;
  *(v2 - 112) = 0u;

  return sub_10004F034(v1, v2 - 128, v0);
}

uint64_t sub_100014300()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100014370()
{

  return sub_1003552D0(v0, type metadata accessor for NewsArticleComponentViewModel);
}

uint64_t sub_1000143E0()
{
  v1 = type metadata accessor for ConditionDetailInput.Input(0);
  v2 = *(v0 - 176);
  sub_10001B350(v2, 1, 1, v1);
  type metadata accessor for ConditionDetailInput(0);
  return v2;
}

uint64_t sub_100014454()
{

  return swift_once();
}

uint64_t sub_100014490()
{
  sub_1000EBD74(*(v1 + *(v0 + 20)), *(v1 + *(v0 + 20) + 8));
}

void sub_1000145A4()
{
  *v4 = v2;
  v4[1] = v3;
  *v0 = 0;
  v0[1] = 0;
  v5 = v0 + v1[10];
  *v5 = 0;
  v5[8] = 1;
  v6 = (v0 + v1[12]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + v1[13]);
  *v7 = 0;
  v7[1] = 0;
}

BOOL sub_1000145E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_100014644(unint64_t *a1, uint64_t *a2)
{

  return sub_100006F64(a1, a2);
}

uint64_t sub_1000146E0()
{

  return swift_once();
}

uint64_t sub_10001484C()
{

  return swift_getTupleTypeMetadata();
}

uint64_t sub_1000148A4()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000148C0()
{
  v5 = *(v4 - 96);
  *v5 = v3;
  *(v5 + 8) = v0;
  *(v5 + 16) = v2;
  return v5 + *(v1 + 28);
}

uint64_t sub_100014978()
{

  return UIListContentConfiguration.text.setter();
}

uint64_t sub_1000149C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1000149F0(float a1)
{
  *v1 = a1;
}

uint64_t sub_100014A60@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100014A84()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100014B08()
{

  return swift_once();
}

double sub_100014BBC()
{
  *(v0 - 64) = 0;
  result = 0.0;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  return result;
}

uint64_t sub_100014BE8()
{

  return sub_1001B331C(v0, type metadata accessor for LocationViewComponent);
}

uint64_t sub_100014C34()
{

  return sub_100097CF4(v0, v1);
}

uint64_t sub_100014C64()
{

  return type metadata accessor for FeatureState();
}

uint64_t sub_100014CEC()
{
  *(v0 - 144) = 0;

  return State.init(wrappedValue:)();
}

uint64_t sub_100014D10(unint64_t *a1, uint64_t a2)
{

  return sub_10023FBF4(a1, a2);
}

uint64_t sub_100014E1C()
{

  return swift_allocObject();
}

uint64_t sub_100014E74()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100014EA4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return sub_100850994(a1, a2, a3, v4, 0xD00000000000001DLL, v5, a4);
}

uint64_t sub_10001500C()
{
}

uint64_t sub_100015024()
{

  return AttributedString.init(_:attributes:)();
}

uint64_t sub_1000150BC()
{

  return swift_once();
}

uint64_t sub_100015124(unint64_t *a1, uint64_t *a2)
{

  return sub_10006768C(a1, a2);
}

uint64_t sub_1000151AC()
{

  return swift_once();
}

uint64_t sub_1000151CC()
{

  return swift_once();
}

id sub_100015298()
{
  v3 = *(v1 + 3744);

  return [v0 v3];
}

uint64_t sub_1000152B8()
{

  return WeatherInterpolator.reduce(_:from:to:clampRange:useMonotone:)();
}

uint64_t sub_1000152DC()
{

  return type metadata accessor for Date();
}

uint64_t sub_100015314()
{

  return swift_getOpaqueTypeConformance2();
}

BOOL sub_100015344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t type metadata accessor for DebugAction()
{
  result = qword_100CD6BF0;
  if (!qword_100CD6BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PerformanceTestAction()
{
  result = qword_100CDA450;
  if (!qword_100CDA450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015480()
{
  sub_10001DC28(319, &qword_100CC7A88, &type metadata accessor for DetailCondition);
  if (v0 <= 0x3F)
  {
    sub_10000DA84();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Location();
      if (v2 <= 0x3F)
      {
        sub_10000DAAC();
        if (v3 <= 0x3F)
        {
          sub_10001DC28(319, &unk_100CDA460, &type metadata accessor for WeatherCondition);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for WeatherMenuCommands()
{
  result = qword_100CE9128;
  if (!qword_100CE9128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WeatherMenuInput()
{
  result = qword_100CC8A00;
  if (!qword_100CC8A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailViewState()
{
  result = qword_100CB9318;
  if (!qword_100CB9318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001568C()
{
  type metadata accessor for DetailCondition();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Location();
    if (v1 <= 0x3F)
    {
      sub_10001DEC8(319, &qword_100CA3940, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        sub_10001DEC8(319, &qword_100CAF988, type metadata accessor for CGRect);
        if (v3 <= 0x3F)
        {
          sub_10001DEC8(319, &qword_100CB0C68, type metadata accessor for DetailChartSelection);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000157B4()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_10000F3C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100015840()
{
  if (!qword_100CDA7A0)
  {
    type metadata accessor for ModalViewState.MapViewModal(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDA7A0);
    }
  }
}

uint64_t type metadata accessor for WeatherMenuViewModel()
{
  result = qword_100CB8F10;
  if (!qword_100CB8F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000158E4()
{
  if (!qword_100CE9148)
  {
    sub_10022E824(&qword_100CB6198);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE9148);
    }
  }
}

uint64_t sub_10001597C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  sub_1000038D8();
  type metadata accessor for StartupTaskExecutionPhase();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100005888();
  v5 = type metadata accessor for Container.Environment();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 launchedToTest])
  {
    [v2 _stopHangTracer];
  }

  [objc_opt_self() setSuppressEngagement:1];
  if (DeviceRequiresProMotionOptOut())
  {
    v11 = [objc_opt_self() mainDisplay];
    if (v11)
    {
      v12 = v11;
      [v11 overrideMinimumFrameDuration:4];
    }
  }

  sub_10022C350(&qword_100CA40C8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A2C3F0;
  sub_100015EDC();
  ContainerManager.containerEnvironment.getter();

  sub_100015F40(&qword_100CAF490, 255, &type metadata accessor for Container.Environment);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  (*(v7 + 8))(v10, v5);
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100035744();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_10000C70C(0, &qword_100CA2E40);
  v17 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  sub_1000167F8();
  os_log(_:dso:log:type:_:)();

  if (qword_100CA1F30 != -1)
  {
    swift_once();
  }

  v18 = qword_100D8FB80;

  *(v18 + 16) = TFSetupCrashDetector();

  sub_10002A3D8();
  sub_10002A55C();
  sub_1000359CC(v27);
  sub_1000161C0(v27, v28);
  sub_1000038D8();
  type metadata accessor for StartupTaskManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_100006F14(v27);
  if (v26)
  {
    Dictionary<>.applicationStateLaunchOptions.getter();
  }

  v20 = sub_1000194B4();
  v21(v20);
  StartupTaskManager.startAllTasks(launchOptions:phase:)();

  v22 = sub_100003984();
  v23(v22);
  sub_100074834();
  sub_1000161C0(v27, v28);
  sub_1000038D8();
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    goto LABEL_20;
  }

  *&v3[OBJC_IVAR____TtC7Weather11AppDelegate_sessionManager] = result;

  sub_100006F14(v27);
  sub_100074834();
  sub_1000161C0(v27, v28);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100006F14(v27);
  sub_100074834();
  sub_1000161C0(v27, v28);
  sub_1000038D8();
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v24 = OBJC_IVAR____TtC7Weather11AppDelegate_appSessionManager;
  *&v3[OBJC_IVAR____TtC7Weather11AppDelegate_appSessionManager] = result;

  sub_100006F14(v27);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  sub_100074834();
  swift_beginAccess();
  sub_100035B94(v27, &xmmword_100D8FB90, &unk_100CAF270);
  swift_endAccess();
  if (*&v3[v24])
  {

    AppSessionManager.startAppSession()();
  }

  return 1;
}

uint64_t sub_100015EDC()
{
  v1 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___containerManager;
  if (*(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___containerManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___containerManager);
  }

  else
  {
    v2 = sub_100011B98();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100015F40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_1000161C0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001621C()
{

  return type metadata accessor for String.LocalizationValue();
}

uint64_t sub_10001624C()
{

  return Text.Measurements.size(of:in:context:)();
}

uint64_t sub_1000162E4()
{
  *(v1 - 112) = v0;

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void sub_100016320()
{
  v1 = 0x209480E220;
  v2 = 0xA500000000000000;

  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t sub_10001638C()
{

  return swift_beginAccess();
}

uint64_t sub_1000163C0()
{
  result = v0;
  *(v2 - 240) = v1;
  return result;
}

uint64_t sub_1000163D4()
{

  return type metadata accessor for _ConditionalContent();
}

uint64_t sub_100016410()
{

  return type metadata accessor for WeatherCondition();
}

uint64_t sub_10001642C(unint64_t *a1)
{

  return sub_1005FFB2C(a1);
}

uint64_t sub_100016450(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_10065F7C4(v5, v3 + v4, a3);
}

uint64_t sub_100016468()
{
  v3 = *(v1 + 56);
  v4 = *(*(v2 - 144) + 72);
  *(v2 - 128) = v4;
  return v3 + v4 * v0;
}

uint64_t sub_100016480()
{

  return sub_100682704(v0, type metadata accessor for ViewState.SecondaryViewState);
}

uint64_t sub_1000164A8()
{

  return String.hash(into:)();
}

uint64_t sub_1000164F4()
{
}

uint64_t sub_100016588()
{
}

uint64_t sub_100016638(uint64_t a1)
{
  sub_10001B350(*(v1 - 200), 1, 1, a1);
  v3 = *(v1 - 192);

  return sub_10001B350(v3, 1, 1, a1);
}

uint64_t sub_100016708()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000167BC@<X0>(uint64_t a1@<X8>)
{

  return sub_10031694C(v1 + a1, v3, v2);
}

uint64_t sub_1000167D8()
{

  return swift_once();
}

uint64_t sub_100016804@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 96) = a2;
  *(result + 120) = v3;
  *(result + 128) = 1702125924;
  *(result + 136) = v2;
  return result;
}

uint64_t sub_100016840()
{

  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_10001691C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100016934(uint64_t a1, uint64_t a2)
{

  return sub_100035AD0(a1, a2, v2);
}

uint64_t sub_10001699C()
{

  return sub_10047E5A8(v0, type metadata accessor for SearchViewState);
}

uint64_t sub_1000169DC()
{

  return sub_100484F94(v0, type metadata accessor for SunriseSunsetDetailInput);
}

uint64_t sub_100016A14()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100016A48()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100016A84()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100016B34()
{

  return os_log(_:dso:log:_:_:)();
}

void sub_100016B74()
{
  v1 = 0x696669646F6D203BLL;
  v2 = 0xEC000000203A6465;

  String.append(_:)(*&v1);
}

uint64_t sub_100016BB8()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100016BD8()
{
}

uint64_t sub_100016C88(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for ListViewAction();
}

uint64_t sub_100016CB0()
{

  return static WeatherFormatStyle<>.weather(_:usage:locale:)();
}

uint64_t sub_100016CE4(uint64_t a1)
{

  return sub_10001B350(a1, 0, 1, v1);
}

void *sub_100016D74()
{
  v2 = *(v0 - 264);
  v3 = *(v2 + 40);

  return sub_1000161C0((v2 + 16), v3);
}

void sub_100016DB8()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_100016E10()
{

  return type metadata accessor for WeatherMenuCommands();
}

uint64_t sub_100016E9C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for LocationViewAction();
}

uint64_t sub_100016ED0()
{

  return swift_beginAccess();
}

uint64_t sub_100016EF0(float a1)
{
  *v3 = a1;
  *(v2 + 80) = v1;

  return swift_errorRetain();
}

uint64_t sub_100016FF4()
{

  return sub_100024D10(v0 + v2, 1, v1);
}

uint64_t sub_100017038()
{

  return type metadata accessor for Location();
}

__n128 sub_1000170C8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11, __int128 a12)
{
  a1[2] = a9;
  a1[3] = a10;
  result = a11;
  a1[4] = a11;
  a1[5] = a12;
  return result;
}

uint64_t sub_1000170DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 128) = v3;
  *(v5 - 120) = v4;
  *(v5 - 144) = a1;
  *(v5 - 136) = a2;
  *(v5 - 160) = a3;
  return 0;
}

uint64_t sub_10001710C(uint64_t a1, uint64_t a2)
{
  *(v3 - 648) = a1;
  *(v3 - 656) = a2;
  return v2;
}

uint64_t sub_1000171B0()
{

  return sub_1000302D8(v1 + v3, v0, v2);
}

void sub_100017200()
{
  v1 = *(v0 - 792);
  *(v0 - 232) = *(v0 - 784);
  *(v0 - 224) = v1;
}

uint64_t *sub_100017228(uint64_t a1)
{
  v1[4] = a1;

  return sub_100042FB0(v1);
}

uint64_t sub_100017240()
{
  v2 = *(v0 + *(v1 + 24));
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for AppIntentsDependencyStartupTask()
{
  result = qword_100CB2F28;
  if (!qword_100CB2F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017304()
{
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CAC9F0);
  sub_10001BAD0();

  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CAC9F8);
  sub_10001BAD0();

  ProxyContainer.public.getter();
  sub_10001BAD0();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_100017414()
{
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CA6F50);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t type metadata accessor for MoonDetailSelectedDate()
{
  result = qword_100CD4B48;
  if (!qword_100CD4B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017540()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017568(uint64_t a1, uint64_t a2)
{

  return sub_10001B350(a1, a2, 1, v2);
}

uint64_t sub_1000175A4()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100017644()
{
  *(v0 - 83) = 2;

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void sub_10001768C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

BOOL sub_1000176AC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000176E8@<X0>(uint64_t a1@<X8>)
{

  return sub_10031694C(v3 + a1, v2, v1);
}

void sub_100017704(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 32) = a8;
  *(v20 - 24) = &a9;

  sub_100561178(v20 - 144, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10001775C(uint64_t a1)
{

  return sub_1000180EC(a1, v1);
}

uint64_t sub_100017774()
{

  return swift_allocObject();
}

id sub_1000177C4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000177DC(uint64_t a1, uint64_t a2)
{

  return sub_1000955E0(a1, a2, v2);
}

void sub_1000177F4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 32) = a8;
  *(v20 - 24) = &a9;

  sub_1005605FC(v20 - 144, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10001781C()
{

  return swift_getWitnessTable();
}

uint64_t sub_100017854(uint64_t a1)
{

  return sub_100024D10(a1, 1, v1);
}

uint64_t sub_100017884()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_1000178A4@<X0>(uint64_t a1@<X8>)
{

  return sub_1000302D8(v1 + a1, v2, v3);
}

uint64_t sub_1000178D0(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_100017920()
{

  return swift_beginAccess();
}

uint64_t sub_10001793C()
{

  return type metadata accessor for UIListContentConfiguration();
}

uint64_t sub_100017964()
{

  return sub_10004F7D8(v0, type metadata accessor for LocationsState);
}

void sub_1000179EC(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

void sub_100017A10()
{
}

uint64_t sub_100017A3C()
{
  result = v0;
  *(v2 - 272) = v1;
  return result;
}

uint64_t sub_100017A54@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_1000E4DF8(v4, v5);
}

uint64_t sub_100017A70(uint64_t result)
{
  *(result + 16) = 2;
  *(result + 24) = 4;
  return result;
}

uint64_t sub_100017AA0()
{
  sub_10001B350(v0, 0, 1, v1);

  return swift_beginAccess();
}

uint64_t sub_100017AFC()
{

  return swift_allocObject();
}

void sub_100017B38(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 32) = a8;
  *(v20 - 24) = &a9;

  sub_10055E650(v20 - 144, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_100017B54(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 32) = a8;
  *(v20 - 24) = &a9;

  sub_100565EA8(v20 - 144, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100017BA8()
{
}

uint64_t sub_100017BD8()
{

  return swift_beginAccess();
}

uint64_t sub_100017BF0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_1000A08E8(a1, v4, a2);
}

uint64_t sub_100017C38(uint64_t a1)
{

  return _swift_dynamicCastUnknownClassUnconditional(a1, v1, 0, 0, 0);
}

uint64_t sub_100017C80(uint64_t a1)
{
  *(a1 + 16) = 0;

  return swift_allocObject();
}

uint64_t sub_100017D80()
{

  return swift_allocObject();
}

uint64_t sub_100017DA0()
{
  v2 = *(v0 - 192);
  *(v0 - 272) = *(v0 - 208);
  v3 = *(v0 - 176);
  *(v0 - 256) = v2;
  *(v0 - 240) = v3;
  *(v0 - 231) = *(v0 - 167);

  return sub_1007A7D24(v0 - 272);
}

uint64_t sub_100017DD0()
{
  v6 = *(v0 + 152) + v3;

  return sub_100035AD0(v6, v4 + v2, v1);
}

uint64_t sub_100017E50()
{

  return swift_beginAccess();
}

uint64_t sub_100017F3C()
{

  return AttributeContainer.init()();
}

uint64_t sub_100017FAC()
{

  return swift_once();
}

uint64_t sub_100017FCC()
{
}

uint64_t sub_100018074()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000180EC(uint64_t a1, uint64_t *a2)
{
  sub_10022C350(a2);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100018144(uint64_t a1, uint64_t *a2)
{
  sub_10022C350(a2);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100018198(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A24(a1, a2);
  sub_10022C350(v3);
  sub_100003D98();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100018264()
{

  return swift_slowAlloc();
}

uint64_t sub_1000182D0(uint64_t a1)
{

  return sub_1000CA5D8(a1, type metadata accessor for NotificationsOptInState);
}

uint64_t sub_100018304()
{
  *(v0 - 84) = 3;

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100018360()
{

  return swift_allocObject();
}

__n128 sub_1000183F4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  result = (*a1)[2];
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  a2[2] = result;
  a2[3] = v3;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001842C()
{

  return _NativeDictionary._delete(at:)();
}

uint64_t sub_10001845C()
{
}

__n128 sub_100018488()
{
  *(v1 - 120) = *v0;
  result = *(v0 + 8);
  *(v1 - 112) = result;
  return result;
}

uint64_t sub_1000184E0()
{

  return type metadata accessor for NotificationsState();
}

uint64_t sub_10001854C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t sub_1000185A4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000185D0()
{

  return sub_10001B350(v0, 0, 1, v1);
}

uint64_t sub_1000185F0()
{

  return sub_10062C204(v1, v0);
}

uint64_t sub_100018608@<X0>(uint64_t a1@<X8>)
{

  return sub_10002C4AC(v2 + a1, v1);
}

uint64_t sub_100018654(unint64_t *a1)
{

  return sub_100698CB0(a1);
}

uint64_t sub_1000186A8(uint64_t a1)
{

  return sub_100024D10(a1, 1, v1);
}

uint64_t sub_100018794(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1000187E0(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

unint64_t sub_10001882C()
{
  v3 = *(v1 - 424);

  return sub_100078694(v3, v0, (v1 - 160));
}

uint64_t sub_10001888C()
{
}

uint64_t sub_1000188C0(uint64_t a1)
{
  type metadata accessor for CallbackScope();
  sub_1000037C4();
  v49 = v2;
  v50 = v3;
  __chkstk_darwin(v2);
  v48 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Scope();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_1000038D8();
  type metadata accessor for Client();
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  v11 = enum case for Scope.singleton(_:);
  v12 = *(v7 + 104);
  (v12)(v10, enum case for Scope.singleton(_:), v5);
  v43 = v12;
  v45 = v7 + 104;
  Definition.inScope(_:)();

  v13 = *(v7 + 8);
  v14 = sub_1000059A0();
  v13(v14);
  v42 = v13;
  v44 = v7 + 8;
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBE1A0);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  (v12)(v10, v11, v5);
  Definition.inScope(_:)();

  v15 = sub_1000059A0();
  v13(v15);
  ProxyContainer.callback.getter();
  sub_1000161C0(v53, v53[3]);
  sub_10022C350(&qword_100CB1480);
  v51 = enum case for CallbackScope.any(_:);
  v16 = v49;
  v17 = v50;
  v52 = *(v50 + 104);
  v47 = v50 + 104;
  v18 = v48;
  v52(v48);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v46 = *(v17 + 8);
  v50 = v17 + 8;
  v46(v18, v16);
  sub_100006F14(v53);
  ProxyContainer.public.getter();
  sub_1000038D8();
  type metadata accessor for DiagnosticsConsentProvider();
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_1000038D8();
  type metadata accessor for SessionEventsAndDataCoordinator();
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  v19 = sub_100005F1C();
  v20 = v43;
  v43(v19);
  Definition.inScope(_:)();

  v21 = sub_1000059A0();
  v22 = v42;
  v42(v21);
  ProxyContainer.public.getter();
  RegistrationContainer.register<A>(_:name:factory:)();

  v23 = sub_100005F1C();
  v20(v23);
  Definition.inScope(_:)();

  v24 = sub_1000059A0();
  v22(v24);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBE1A8);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  v25 = sub_100005F1C();
  v20(v25);
  Definition.inScope(_:)();

  v26 = sub_1000059A0();
  v22(v26);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CB1498);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_1000038D8();
  type metadata accessor for SessionScenePhaseObserver();
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  v27 = sub_100005F1C();
  v20(v27);
  Definition.inScope(_:)();

  v28 = sub_1000059A0();
  v22(v28);
  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();

  v41[1] = a1;
  ProxyContainer.callback.getter();
  v45 = v54;
  sub_100008740();
  sub_10022C350(&qword_100CBE1B0);
  v29 = v48;
  v30 = v49;
  v31 = v51;
  v32 = v52;
  (v52)(v48, v51, v49);
  sub_10001C350();
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v33 = v30;
  v34 = v46;
  v46(v29, v33);
  sub_100006F14(v53);
  ProxyContainer.callback.getter();
  v45 = v54;
  sub_100008740();
  sub_10022C350(&qword_100CB3D68);
  v35 = v49;
  v32(v29, v31, v49);
  sub_10001C350();
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v34(v29, v35);
  sub_100006F14(v53);
  ProxyContainer.callback.getter();
  sub_100008740();
  sub_10022C350(&qword_100CBE1B8);
  v36 = sub_1000147A0();
  v37(v36);
  sub_10001C350();
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v34(v29, v35);
  sub_100006F14(v53);
  ProxyContainer.private.getter();
  sub_10022C350(&qword_100CBE1C0);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.callback.getter();
  sub_100008740();
  sub_10022C350(&qword_100CBA718);
  v38 = sub_1000147A0();
  v39(v38);
  sub_10001C350();
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v34(v29, v35);
  sub_100006F14(v53);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBE1C8);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBE1D0);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100019244()
{

  return sub_1002A4304(v0, &type metadata accessor for SavedLocation);
}

void sub_10001927C()
{
  *(v1 - 136) = v0 + 32;
  *(v1 - 200) = v0;
  *(v1 - 176) = v0 + 8;
  *(v1 - 168) = v0 + 16;
}

uint64_t sub_1000192E4()
{

  return sub_100066B44();
}

unint64_t sub_100019354(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;

  return sub_1002F33A8();
}

uint64_t sub_1000193AC()
{
}

void sub_100019430()
{
  *(v1 - 88) = v0;

  sub_10003DC90();
}

uint64_t sub_100019478()
{

  return swift_allocObject();
}

uint64_t sub_100019490()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000194C4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000194DC@<X0>(uint64_t a1@<X8>)
{

  return sub_10019435C(v1 + a1, v3, v2);
}

uint64_t sub_100019510()
{

  return dispatch thunk of Collection.distance(from:to:)();
}

uint64_t sub_100019554(unint64_t *a1)
{

  return sub_100006F64(a1, v1);
}

uint64_t sub_100019580()
{

  return swift_once();
}

uint64_t sub_1000195C4()
{

  return type metadata accessor for UIListContentConfiguration();
}

void sub_1000195E0(void *a1@<X3>, unint64_t a2@<X8>)
{

  sub_10069F394(a2 > 1, v2, 1, a1);
}

uint64_t sub_100019600(uint64_t a1, uint64_t a2)
{
  sub_10000703C(a1, a2);

  return Logger.logObject.getter();
}

uint64_t sub_100019678()
{

  return GeometryProxy.frame(in:)();
}

uint64_t sub_100019690()
{

  return dispatch thunk of Collection.subscript.read();
}

uint64_t sub_1000196B0()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000196F4()
{

  return swift_dynamicCast();
}

uint64_t sub_100019714()
{

  return swift_once();
}

uint64_t sub_10001974C()
{

  return sub_100024D10(v0 + v2, 1, v1);
}

uint64_t sub_100019780()
{

  return type metadata accessor for TemperatureAveragesHeroChartView();
}

uint64_t sub_10001979C()
{
}

uint64_t sub_1000197C4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100019814()
{

  return sub_1001B5728(v0, type metadata accessor for DailyComponentView);
}

uint64_t sub_10001983C(uint64_t a1, uint64_t a2)
{
  sub_10000703C(v2, a2);

  return swift_beginAccess();
}

uint64_t sub_100019874()
{

  return URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();
}

uint64_t sub_10001989C(uint64_t a1)
{

  return sub_10001B350(a1, 1, 1, v1);
}

uint64_t sub_1000198B8(uint64_t a1, uint64_t a2)
{

  return sub_100050C90(v3, a2, v2);
}

uint64_t sub_100019920()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001994C()
{

  return swift_weakInit();
}

double sub_10001997C()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void sub_1000199B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x1Cu);
}

uint64_t sub_100019A0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v3 - 120) = *(a1 + 28);
  *(v3 - 112) = v4;
  return v2;
}

uint64_t sub_100019ABC()
{

  return Option.init(label:value:description:)();
}

uint64_t sub_100019B30()
{

  return sub_1005CBCA0(v0, type metadata accessor for LocationPreviewViewModel);
}

uint64_t sub_100019BA8()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t sub_100019C40()
{

  return Setting.init(_:defaultValue:domain:access:)();
}

uint64_t sub_100019C5C()
{

  return swift_once();
}

uint64_t sub_100019CA0()
{

  return TimeZone.init(abbreviation:)(5524807, 0xE300000000000000);
}

uint64_t sub_100019CD4()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_100019D18()
{
  sub_1000E4DF8(*(v1 + v0[24]), *(v1 + v0[24] + 8));
  sub_1000E4DF8(*(v1 + v0[25]), *(v1 + v0[25] + 8));
  v2 = (v1 + v0[26]);
  v3 = *v2;
  v4 = *(v2 + 8);

  return sub_1000E4DF8(v3, v4);
}

uint64_t sub_100019D9C()
{

  return swift_getTupleTypeMetadata();
}

void sub_100019EF8(uint64_t a1)
{
  *(v1 + 64) = a1;
  *(v1 + 40) = v2;

  type metadata accessor for AttributeName(0);
}

uint64_t sub_100019FE8()
{

  return static NSObject.== infix(_:_:)();
}

uint64_t sub_10001A01C()
{

  return Definition.inScope(_:)();
}

uint64_t sub_10001A050()
{

  return Definition.inScope(_:)();
}

uint64_t sub_10001A100()
{

  return swift_once();
}

uint64_t sub_10001A220()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return swift_getErrorValue();
}

uint64_t sub_10001A248()
{

  return sub_1000180EC(v1, v0);
}

uint64_t sub_10001A2CC()
{

  return sub_100987238(v0, type metadata accessor for LocationContentState);
}

uint64_t sub_10001A334()
{

  return Measurement.formatted<A>(_:placeholder:unitManager:)();
}

uint64_t sub_10001A354()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001A37C()
{

  return type metadata accessor for LocationViewModel();
}

uint64_t sub_10001A3D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_1000180EC(v3, v1);
}

uint64_t sub_10001A420()
{

  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

uint64_t type metadata accessor for SessionEventsAndDataCoordinator()
{
  result = qword_100CB52B0;
  if (!qword_100CB52B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001A4BC()
{
  result = type metadata accessor for StartMethod();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10001A5E0()
{
  type metadata accessor for Scope();
  sub_1000037C4();
  v16 = v1;
  v17 = v0;
  __chkstk_darwin(v0);
  sub_1000037D8();
  v15 = v3 - v2;
  v4 = type metadata accessor for CallbackScope();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  ProxyContainer.callback.getter();
  sub_1000161C0(v18, v19);
  sub_1000038D8();
  type metadata accessor for DebugDataSource();
  v14 = enum case for CallbackScope.any(_:);
  v13 = *(v6 + 104);
  v13(v10);
  swift_allocObject();
  swift_weakInit();
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();

  v11 = *(v6 + 8);
  v11(v10, v4);
  sub_100006F14(v18);
  ProxyContainer.public.getter();
  sub_10022C350(&unk_100CAF440);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.callback.getter();
  sub_1000161C0(v18, v19);
  sub_1000038D8();
  type metadata accessor for DebugCacheRegistry();
  (v13)(v10, v14, v4);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v11(v10, v4);
  sub_100006F14(v18);
  ProxyContainer.public.getter();
  sub_1000038D8();
  type metadata accessor for DiagnosticManager();
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v16 + 104))(v15, enum case for Scope.singleton(_:), v17);
  Definition.inScope(_:)();

  (*(v16 + 8))(v15, v17);
  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();

  ProxyContainer.public.getter();
  sub_1000038D8();
  type metadata accessor for DebugNotificationSubscriptionsViewController();
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10001A998()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10001AA30(uint64_t a1)
{
  v35 = type metadata accessor for Container.TestSuite();
  v42 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Scope();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBA720);
  sub_10001BAD0();

  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CD1928);
  sub_10001BAD0();
  sub_10001500C();
  v7 = enum case for Scope.singleton(_:);
  v8 = *(v4 + 104);
  v9 = sub_100010DDC();
  v8(v9);
  sub_10001A050();

  v10 = *(v4 + 8);
  v11 = sub_1000053B8();
  v10(v11);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CDEF58);
  sub_10001BAD0();
  sub_10001500C();
  v12 = sub_100010DDC();
  v8(v12);
  sub_10001A050();

  v13 = sub_1000053B8();
  v10(v13);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CB2FD8);
  sub_10001BAD0();
  sub_10001500C();
  v14 = sub_100010DDC();
  v8(v14);
  v38 = v4 + 104;
  sub_10001A050();

  v15 = sub_1000053B8();
  v10(v15);
  v39 = v4 + 8;
  v40 = v10;
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CD19B0);
  sub_10001BAD0();
  sub_10001500C();
  v16 = sub_100010DDC();
  v8(v16);
  sub_10001A050();

  v17 = sub_1000053B8();
  v10(v17);
  type metadata accessor for NetworkActivityManager();
  swift_allocObject();
  v37 = sub_1000236EC();
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBA728);

  sub_10001CF4C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100004C28();

  v41 = v8;
  (v8)(v6, v7, v3);
  sub_100023380();

  v18 = v40;
  (v40)(v6, v3);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CD1900);
  sub_10001BAD0();
  sub_100004C28();
  (v8)(v6, v7, v3);
  sub_100023380();

  v18(v6, v3);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CD1290);

  sub_10001CF4C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CDEF60);

  sub_10001CF4C();
  RegistrationContainer.register<A>(_:name:factory:)();

  v19 = a1;
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CCBB68);
  sub_10001BAD0();
  sub_100004C28();
  v36 = v7;
  v20 = v41;
  (v41)(v6, v7, v3);
  sub_100023380();

  v21 = v40;
  (v40)(v6, v3);
  v31 = v19;
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CDEF68);
  sub_10001BAD0();
  sub_100004C28();
  v20(v6, v7, v3);
  sub_100023380();

  v22 = sub_1000053B8();
  v21(v22);
  v23 = v21;
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CCC310);
  sub_10001BAD0();

  v33 = enum case for Container.TestSuite.performance(_:);
  v24 = v42;
  v32 = *(v42 + 104);
  v26 = v34;
  v25 = v35;
  v32(v34);
  sub_100009154();

  v27 = *(v24 + 8);
  v42 = v24 + 8;
  v27(v26, v25);
  (v41)(v6, v36, v3);
  Definition.inScope(_:)();

  v28 = sub_1000053B8();
  v23(v28);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CB97A0);
  sub_10001BAD0();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();

  ProxyContainer.public.getter();
  RegistrationContainer.register<A>(_:name:factory:)();

  (v32)(v26, v33, v25);
  sub_100009154();

  v27(v26, v25);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CAF430);
  sub_10001BAD0();

  (v41)(v6, v36, v3);
  Definition.inScope(_:)();

  v29 = sub_1000053B8();
  return (v40)(v29);
}

uint64_t sub_10001B38C()
{
  v0 = type metadata accessor for CallbackScope();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  ProxyContainer.callback.getter();
  sub_10001930C(v8, v8[3]);
  sub_10022C350(&qword_100CBDE10);
  (*(v2 + 104))(v6, enum case for CallbackScope.any(_:), v0);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  (*(v2 + 8))(v6, v0);
  sub_100006F14(v8);
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBDE18);

  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10001B5A0(uint64_t a1)
{
  v2 = type metadata accessor for CallbackScope();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Scope();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for DisplayMetricsMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v10 + 104))(v13, enum case for Scope.containerSingleton(_:), v8);
  Definition.inScope(_:)();

  (*(v10 + 8))(v13, v8);
  v18[2] = a1;
  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();

  ProxyContainer.callback.getter();
  sub_1000161C0(v19, v20);
  sub_10022C350(&qword_100CAF430);
  v14 = enum case for CallbackScope.any(_:);
  v15 = *(v4 + 104);
  v15(v7, enum case for CallbackScope.any(_:), v2);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v16 = *(v4 + 8);
  v18[1] = v4 + 8;
  v16(v7, v2);
  sub_100006F14(v19);
  ProxyContainer.callback.getter();
  sub_1000161C0(v19, v20);
  sub_10022C350(&qword_100CAF458);
  v15(v7, v14, v2);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v16(v7, v2);
  return sub_100006F14(v19);
}

uint64_t sub_10001B90C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001B998()
{
  result = type metadata accessor for PreviewLocation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationPreviewModalViewState(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SelectedSearchResult();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001BAD0()
{

  return RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10001BB4C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_100278D5C(v2, &a2 - a1, v3);
}

uint64_t sub_10001BB90()
{

  return sub_100280F1C(v0, type metadata accessor for ConditionDetailLegendForeground);
}

uint64_t sub_10001BC2C()
{

  return swift_dynamicCast();
}

unint64_t sub_10001BC4C()
{
  *(v0 + 16) = v2;
  v4 = *(v3 - 200);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(v3 - 184) = v0;
  return v0 + v5 + *(v4 + 72) * v1;
}

uint64_t sub_10001BD3C()
{

  return sub_1003113A8(v0, type metadata accessor for SunriseSunsetDetailViewState);
}

void sub_10001BD7C()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t sub_10001BDB8()
{
  v2 = *(v0 + 368);
  *(v0 + 128) = *(v0 + 451);
  *(v0 + 136) = v2;
  *(v0 + 450) = 0;

  return State.wrappedValue.setter();
}

uint64_t sub_10001BE20()
{

  return swift_once();
}

uint64_t sub_10001BE68()
{

  return sub_1000E8348(v0, type metadata accessor for ViewState);
}

uint64_t sub_10001BED8()
{

  return sub_10035B29C();
}

void sub_10001BF80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10001BFE8(unint64_t *a1)
{

  return sub_100399704(a1);
}

uint64_t sub_10001C03C()
{

  return sub_1003AC138(v0, type metadata accessor for NextHourPrecipitationDetailViewModel);
}

uint64_t sub_10001C080()
{

  return static Published.subscript.getter();
}

uint64_t sub_10001C0B8()
{

  return swift_once();
}

uint64_t sub_10001C17C(uint64_t result)
{
  v3 = *(v2 - 244);
  *(result + 18) = *(v2 - 248);
  *(result + 16) = v3;
  *(result + 19) = v1;
  v4 = *(v2 - 240);
  *(result + 24) = *(v2 - 232);
  *(result + 32) = v4;
  return result;
}

uint64_t sub_10001C1C0()
{

  return String.hash(into:)();
}

uint64_t sub_10001C1DC()
{

  return sub_10001B350(v1, 1, 1, v0);
}

uint64_t sub_10001C230(uint64_t a1, uint64_t a2)
{

  return sub_10001B350(a1, a2, 1, v2);
}

uint64_t sub_10001C26C()
{

  return Location.identifier.getter();
}

uint64_t sub_10001C298()
{

  return swift_once();
}

uint64_t sub_10001C2D0()
{

  return sub_10048F7BC(v0, type metadata accessor for DetailHeroChartLollipopModel);
}

uint64_t sub_10001C2F8()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void sub_10001C36C()
{
  *v0 = v6;
  *(v0 + 8) = v2;
  *(v0 + 12) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v1;
  *(v0 + 32) = v5;
}

uint64_t sub_10001C448()
{

  return sub_100512AB0();
}

uint64_t sub_10001C524()
{

  return sub_10053948C(v0, type metadata accessor for HomeAndWorkRefinementInput);
}

uint64_t sub_10001C5B4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_10001C688(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t sub_10001C6E4@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10001C708@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_10001C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xE000000000000000;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v10, v8, *&v12, *&a8)._countAndFlagsBits;
}

uint64_t sub_10001C77C@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10001C7D0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001C854()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001C8F0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10001C92C()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

__n128 sub_10001C96C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *v3;
  *(v2 - 144) = *(v3 + 16);
  *(v2 - 176) = result;
  return result;
}

uint64_t sub_10001C9D4(uint64_t result)
{
  *v1 = result;
  *(v1 + 6) = BYTE6(result);
  *(v1 + 4) = WORD2(result);
  return result;
}

__n128 sub_10001CABC(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 32) = *v1;
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 32);
  return result;
}

void sub_10001CB78(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_10001CBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xE000000000000000;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v10, v8, *&v12, *&a8)._countAndFlagsBits;
}

uint64_t sub_10001CC58(uint64_t a1, uint64_t a2)
{

  return sub_1004372D4(a1, a2);
}

uint64_t sub_10001CCD4()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10001CCF8()
{

  return StateObject.wrappedValue.getter();
}

uint64_t sub_10001CDD4()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_10001CDF0()
{

  return sub_10009F078(v0, type metadata accessor for ViewState);
}

uint64_t sub_10001CEA0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001CF28()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

NSString sub_10001CF60()
{

  return String._bridgeToObjectiveC()();
}

double sub_10001CFCC()
{

  return sub_100879F04();
}

uint64_t sub_10001CFE8()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

__n128 *sub_10001D050(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "overThreshold");
  result[2].n128_u16[7] = -4864;
  return result;
}

uint64_t sub_10001D0C8(uint64_t a1)
{

  return static MonthlyWeatherStatistics.== infix(_:_:)(v2 + v6, v1 + v6, v3, v4, v5, a1);
}

uint64_t sub_10001D170()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10001D1DC()
{

  return sub_10090C87C(v0, type metadata accessor for OpenL2Descriptor);
}

uint64_t sub_10001D204()
{

  return sub_10090EF18(v0, type metadata accessor for ConditionDetailViewModel);
}

uint64_t sub_10001D280()
{

  return sub_10019213C(v0, type metadata accessor for LocationComponentContainerViewModel);
}

uint64_t sub_10001D2D8()
{
}

uint64_t sub_10001D38C()
{

  return _AssistantIntent.init<A>(_:phrases:parameterValues:)();
}

uint64_t sub_10001D3B4()
{

  return sub_100987238(v0, type metadata accessor for LocationViewConfigurationInputs);
}

uint64_t sub_10001D4A0()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10001D4CC()
{

  return LocalizedStringKey.init(stringLiteral:)();
}

uint64_t sub_10001D5A8()
{

  return swift_once();
}

uint64_t sub_10001D5E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
}

void sub_10001D604()
{

  sub_10004FF70();
}

NSString sub_10001D628()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_10001D65C@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v4;
  type metadata accessor for WeatherNetworkActivity.Label();
  sub_10000548C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v7, v3);
  v15 = (*(v10 + 88))(v14, v3);
  if (v15 == enum case for WeatherNetworkActivity.Label.appLaunch(_:))
  {
    v16 = *a1;
LABEL_5:
    (*(v10 + 104))(a3, v16, v3);
    return sub_10000FFB0();
  }

  if (v15 == enum case for WeatherNetworkActivity.Label.openPreview(_:))
  {
    v16 = *a2;
    goto LABEL_5;
  }

  sub_10001C1DC();
  return (*(v10 + 8))(v14, v3);
}

uint64_t sub_10001D7B0()
{
  ProxyContainer.public.getter();
  type metadata accessor for PerformanceTestManager();
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CC6200);
  sub_100005F04();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t type metadata accessor for DisplayMetricsMonitor()
{
  result = qword_100CBD470;
  if (!qword_100CBD470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D8D4()
{
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CC5C00);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_10001D984()
{
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CC5EC0);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

void sub_10001DA4C()
{
  sub_10000DB38();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10001DB20(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10022E824(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for MoonDetailViewAction()
{
  result = qword_100CE9988;
  if (!qword_100CE9988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AveragesDetailViewAction()
{
  result = qword_100CAFAC8;
  if (!qword_100CAFAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001DC28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001DC90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10001DCCC()
{
  sub_10001DD80();
  if (v0 <= 0x3F)
  {
    sub_10000F8AC();
    if (v1 <= 0x3F)
    {
      sub_1000158E4();
      if (v2 <= 0x3F)
      {
        sub_10000F908();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001DD80()
{
  if (!qword_100CE9138)
  {
    sub_10022E824(&qword_100CA4A70);
    sub_100006F64(&qword_100CA4A78, &qword_100CA4A70);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE9138);
    }
  }
}

void sub_10001DE24()
{
  type metadata accessor for LocationPreviewViewState(319);
  if (v0 <= 0x3F)
  {
    sub_100015840();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ModalViewState.LocationDetailModal(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10001DEC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10001DF1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for MoonDetailViewState()
{
  result = qword_100CB40F8;
  if (!qword_100CB40F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001DFBC()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_10000F534(319, &qword_100CB4108, type metadata accessor for MoonDetailSelectedDate);
    if (v1 <= 0x3F)
    {
      sub_10000F534(319, &qword_100CA3940, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        sub_10000F534(319, &qword_100CAF988, type metadata accessor for CGRect);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001E0CC()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationOfInterest();
    if (v1 <= 0x3F)
    {
      sub_10000F3C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001E168()
{
  result = type metadata accessor for ConditionDetailViewState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AirQualityDetailViewState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NextHourPrecipitationDetailViewState();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SunriseSunsetDetailViewState();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for MoonDetailViewState();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for AveragesDetailViewState();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for URL();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for HomeAndWorkRefinementViewState();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_10001E254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10001E2B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10001E31C()
{
  sub_10001E458(319, &qword_100CB8F20, type metadata accessor for PreviewLocation);
  if (v0 <= 0x3F)
  {
    sub_10000F818();
    if (v1 <= 0x3F)
    {
      sub_10001E458(319, &qword_100CAEE10, &type metadata accessor for Location);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherMapOverlayKind();
        if (v3 <= 0x3F)
        {
          sub_10001E458(319, &unk_100CB8F30, sub_10000F868);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001E458(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10001E4C8()
{
  sub_10022E824(&qword_100CD5518);
  sub_10022E824(&qword_100CD5568);
  sub_10022E824(&qword_100CD5510);
  sub_100010998();
  sub_100006F64(v0, &qword_100CD5510);
  sub_10000663C();
  swift_getOpaqueTypeConformance2();
  sub_100720470();
  sub_10001CBF8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E660()
{

  return swift_once();
}

uint64_t sub_10001E73C()
{

  return swift_once();
}

uint64_t sub_10001E858()
{

  return swift_once();
}

uint64_t sub_10001E9E8()
{

  return swift_once();
}

uint64_t sub_10001EA08()
{

  return sub_1003AC5C4(v0, type metadata accessor for MonthlyAveragesChartModel);
}

uint64_t sub_10001EA90()
{

  return swift_beginAccess();
}

uint64_t sub_10001EAC4()
{

  return swift_once();
}

uint64_t sub_10001EAFC()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_10001ED28()
{

  return swift_once();
}

uint64_t sub_10001ED60()
{
  v2 = *(v0 - 88);

  return sub_10004F72C(v2, type metadata accessor for WeatherDataAction);
}

uint64_t sub_10001EDB8()
{

  return sub_100154090(v0, type metadata accessor for DisplayMetrics);
}

uint64_t sub_10001EDE0()
{

  return swift_once();
}

uint64_t sub_10001EE14()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_10001EE84(uint64_t a1)
{

  return sub_10001B350(v1 + v2, 1, 1, a1);
}

uint64_t sub_10001EEA4()
{

  return swift_getWitnessTable();
}

uint64_t sub_10001EF70@<X0>(char a1@<W8>)
{
  *(v1 - 200) = a1;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_10001EFAC(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

__n128 *sub_10001F01C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684957547;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_10001F088()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xE000000000000000;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v10, v8, *&v12, *&a8)._countAndFlagsBits;
}

uint64_t sub_10001F114()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001F1B4()
{

  return swift_once();
}

uint64_t sub_10001F1D4()
{

  return sub_1005B4D14(v0, type metadata accessor for Navigate);
}

uint64_t sub_10001F23C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001F270@<X0>(uint64_t a1@<X8>)
{

  return sub_1001AB2F0(v1 + a1, v2);
}

uint64_t sub_10001F288@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10001F2AC()
{

  return sub_1005D9338(v0, type metadata accessor for ToolbarSearchViewModel.State);
}

double sub_10001F46C()
{
  if (v0)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  *&result = vbicq_s8(*(v1 - 144), vdupq_n_s64(v2)).u64[0];
  return result;
}

uint64_t sub_10001F48C(uint64_t result)
{
  v4 = v3 + *(result + 36);
  *v4 = v2;
  *(v4 + 8) = v1;
  return result;
}

uint64_t sub_10001F570()
{

  return swift_once();
}

uint64_t sub_10001F698()
{

  return sub_1007524A4(v0, type metadata accessor for WeatherMenuInput);
}

uint64_t sub_10001F75C()
{

  return swift_once();
}

uint64_t sub_10001FAB8()
{

  return swift_once();
}

uint64_t sub_10001FB30()
{

  return swift_once();
}

uint64_t sub_10001FB68()
{

  return swift_once();
}

uint64_t sub_10001FB88()
{

  return sub_1001115D0(v0, type metadata accessor for ViewState);
}

uint64_t sub_10001FCCC()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}