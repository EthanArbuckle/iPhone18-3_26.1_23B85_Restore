uint64_t sub_100578098()
{
  sub_100014914();
  sub_10001164C();

  return sub_100572EF8();
}

unint64_t sub_1005780E8()
{
  result = qword_100CC5B98;
  if (!qword_100CC5B98)
  {
    sub_10022E824(&qword_100CC5B90);
    sub_100578174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5B98);
  }

  return result;
}

unint64_t sub_100578174()
{
  result = qword_100CC5BA0;
  if (!qword_100CC5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5BA0);
  }

  return result;
}

uint64_t sub_100578224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100014914();
  sub_10001164C();
  return sub_100570F3C(a1, a2);
}

uint64_t sub_1005782E0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  a3(0);
  sub_10001164C();

  return a4(a1, a2, v4 + v7);
}

uint64_t sub_100578394(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100014914();
  sub_10001164C();

  return a2(a1, v2 + v4);
}

uint64_t sub_100578444(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, __n128))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v2 + v5);
  v7.n128_u64[0] = *(v2 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a2(v2 + v4, v6, v7);
}

uint64_t sub_100578550(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100014914();
  sub_10001164C();

  return a2(a1, v2 + v4);
}

void sub_1005786D8()
{
  sub_100578820();
  if (v0 <= 0x3F)
  {
    sub_10009BF80(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10009BF80(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MoonViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_1003DB098();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CoordinateSpace();
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

void sub_100578820()
{
  if (!qword_100CA3C68)
  {
    type metadata accessor for LayoutDirection();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3C68);
    }
  }
}

uint64_t sub_1005788B8()
{
  type metadata accessor for MoonContainerView(0);
  sub_10001164C();

  return sub_100576590();
}

uint64_t sub_100578944()
{
  type metadata accessor for MoonContainerView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  sub_100017A54(v0[5]);
  sub_100017A54(v0[6]);
  sub_10001673C(v0[7]);

  v6 = v4 + v0[8];
  v7 = type metadata accessor for Date();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = type metadata accessor for MoonViewModel(0);
  v11 = *(v10 + 24);
  if (!sub_100024D10(v6 + v11, 1, v7))
  {
    v9(v6 + v11, v7);
  }

  v12 = *(v10 + 28);
  if (!sub_100024D10(v6 + v12, 1, v7))
  {
    v9(v6 + v12, v7);
  }

  sub_100006F14(v4 + v0[9]);
  v13 = v0[12];
  type metadata accessor for CoordinateSpace();
  sub_100003D98();
  (*(v14 + 8))(v4 + v13);

  return swift_deallocObject();
}

unint64_t sub_100578B7C()
{
  result = qword_100CC5F00;
  if (!qword_100CC5F00)
  {
    sub_10022E824(&qword_100CC5EF0);
    sub_100578C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5F00);
  }

  return result;
}

unint64_t sub_100578C08()
{
  result = qword_100CC5F08;
  if (!qword_100CC5F08)
  {
    sub_10022E824(&qword_100CC5EE8);
    sub_100576898(&qword_100CC5F10, &type metadata accessor for MoonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5F08);
  }

  return result;
}

uint64_t sub_100578CD0()
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey();

  return static Date.== infix(_:_:)();
}

uint64_t sub_100578D30()
{
  type metadata accessor for Location();
  sub_10001F0BC();
  sub_1005796EC(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey();
  type metadata accessor for Date();
  sub_100010374();
  sub_1005796EC(v2, v3);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100578DE8()
{
  Hasher.init(_seed:)();
  type metadata accessor for Location();
  sub_10001F0BC();
  sub_1005796EC(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey();
  type metadata accessor for Date();
  sub_100010374();
  sub_1005796EC(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100578EC0()
{
  Hasher.init(_seed:)();
  type metadata accessor for Location();
  sub_1005796EC(&qword_100CA39F8, &type metadata accessor for Location);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1005796EC(&qword_100CA39C8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100578FAC()
{

  Cache.subscript.getter();
}

uint64_t sub_100579004(uint64_t a1, uint64_t a2)
{
  v5 = sub_10022C350(&qword_100CA58A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Location();
  __chkstk_darwin(v8);
  sub_100006168();
  (*(v9 + 16))(v2, a1);
  sub_100579790(a2, v7);
  v10 = type metadata accessor for SunriseSunsetMonthlyViewModel();
  sub_10001B350(v7, 0, 1, v10);

  Cache.subscript.setter();
}

uint64_t sub_100579164(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  sub_100006168();
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v7 + 16))(v2, a1);
  v8 = *(v6 + 28);
  type metadata accessor for Date();
  sub_100003A9C();
  (*(v9 + 16))(v2 + v8, a2);

  Cache.subscript.getter();

  sub_100579734(v2);
  return v11;
}

uint64_t sub_100579268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v13 + 16))(v12, a1);
  v14 = *(v7 + 28);
  type metadata accessor for Date();
  sub_100003A9C();
  (*(v15 + 16))(&v12[v14], a2);
  sub_100579790(v12, v9);
  v17[1] = a3;

  Cache.subscript.setter();

  return sub_100579734(v12);
}

uint64_t sub_1005793D0()
{

  return v0;
}

uint64_t sub_1005793F8()
{
  sub_1005793D0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey()
{
  result = qword_100CC6040;
  if (!qword_100CC6040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005794C4()
{
  result = type metadata accessor for Location();
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

uint64_t sub_100579590()
{
  type metadata accessor for Location();
  sub_1000038D8();
  type metadata accessor for SunriseSunsetMonthlyViewModel();
  sub_10001F0BC();
  sub_1005796EC(v1, v2);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CC6080);
  swift_allocObject();
  *(v0 + 16) = Cache.init(_:)();
  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey();
  sub_10022C350(&qword_100CA58D8);
  sub_1005796EC(&qword_100CC6088, type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CC6090);
  swift_allocObject();
  *(v0 + 24) = Cache.init(_:)();
  return v0;
}

uint64_t sub_1005796EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100579734(uint64_t a1)
{
  v2 = type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100579790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_100003A9C();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100579810()
{
  result = type metadata accessor for CurrentWeather();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100579884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (static CurrentWeather.== infix(_:_:)())
  {
    v28 = *(type metadata accessor for DailyForecastComponent() + 20);
    v29 = *(a1 + v28);
    v30 = *(a2 + v28);

    sub_1009ED6CC(v29, v30, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1005798E4(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC6140);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_100579E50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for CurrentWeather();
  sub_1004499CC(&qword_100CBA800);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for DailyForecastComponent() + 20));
    v12[15] = 1;
    sub_100579FB8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100579A94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v23 = v4;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CC6128);
  sub_1000037C4();
  v24 = v8;
  v25 = v9;
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DailyForecastComponent();
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100579E50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v21 = v10;
  v13 = v23;
  v29 = 0;
  sub_1004499CC(&qword_100CBA7E8);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v13 + 32);
  v20 = v12;
  v15(v12, v7, v14);
  v28 = 1;
  sub_100579EA4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = sub_10001C5FC();
  v17(v16);
  v18 = v20;
  *&v20[*(v21 + 20)] = v27;
  sub_100579EF8(v18, v22);
  sub_100006F14(a1);
  return sub_100579F5C(v18);
}

uint64_t sub_100579DA4(uint64_t a1)
{
  v2 = sub_100579E50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100579DE0(uint64_t a1)
{
  v2 = sub_100579E50();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100579E50()
{
  result = qword_100CC6130;
  if (!qword_100CC6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6130);
  }

  return result;
}

unint64_t sub_100579EA4()
{
  result = qword_100CC6138;
  if (!qword_100CC6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6138);
  }

  return result;
}

uint64_t sub_100579EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100579F5C(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100579FB8()
{
  result = qword_100CC6148;
  if (!qword_100CC6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6148);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DailyForecastComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_10057A0EC()
{
  result = qword_100CC6150;
  if (!qword_100CC6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6150);
  }

  return result;
}

unint64_t sub_10057A144()
{
  result = qword_100CC6158;
  if (!qword_100CC6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6158);
  }

  return result;
}

unint64_t sub_10057A19C()
{
  result = qword_100CC6160;
  if (!qword_100CC6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6160);
  }

  return result;
}

uint64_t sub_10057A1F0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6218);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for PerformanceTestRunner();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6210);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6208);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v15)
  {
    v4 = sub_10002D7F8(v16, v17);
    __chkstk_darwin(v4);
    v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v7 + 16))(v6);
    v8 = sub_10002D7F8(v14, v15);
    __chkstk_darwin(v8);
    v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v11 + 16))(v10);
    v12 = sub_10057AAF0(&v18, v3, *v6, *v10);
    sub_100006F14(v14);
    sub_100006F14(v16);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10057A4A0()
{
  sub_10022C350(&qword_100CC6208);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6210);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for PerformanceTestRunner();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6218);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10057A5C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for StubPPTWeatherDataManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    v7 = type metadata accessor for LegacyPerformanceTestRunner();
    swift_allocObject();
    result = sub_1007AEC2C(v10, v11, v5, v6, &v8);
    a2[3] = v7;
    a2[4] = &off_100C6BC80;
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10057A750@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LegacyPerformanceTestManager();
  result = swift_allocObject();
  *(result + 16) = 33;
  a1[3] = v2;
  a1[4] = &off_100C50B88;
  *a1 = result;
  return result;
}

void *sub_10057A7A0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v15;
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v16;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for StubPPTWeatherDataManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5600);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v8 = v11;
  if (v11)
  {
    v9 = v12;
    sub_100035B30(a1, v10);
    type metadata accessor for PerformanceTestRunner();
    swift_allocObject();
    return sub_100628ABC(v3, v4, v5, v6, &v13, v7, v8, v9, v10);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10057A9CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    v4 = type metadata accessor for PerformanceTestDefinitions_Mac();
    v5 = &off_100C49BD0;
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = type metadata accessor for PerformanceTestDefinitions_iPad();
    v5 = &off_100C6F220;
LABEL_7:
    result = swift_allocObject();
    a1[3] = v4;
    a1[4] = v5;
    *a1 = result;
    return result;
  }

  if (!v3)
  {
    v4 = type metadata accessor for PerformanceTestDefinitions_iPhone();
    v5 = &off_100C63E60;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_10057AAF0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for LegacyPerformanceTestManager();
  v25[3] = v9;
  v25[4] = &off_100C50B88;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_100C6BC80;
  v22[0] = a4;
  type metadata accessor for PerformanceTestManager();
  v10 = swift_allocObject();
  v11 = sub_10002D7F8(v25, v9);
  __chkstk_darwin(v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10002D7F8(v22, v23);
  __chkstk_darwin(v15);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v10[11] = v9;
  v10[12] = &off_100C50B88;
  v10[8] = v19;
  v10[16] = v8;
  v10[17] = &off_100C6BC80;
  v10[13] = v20;
  sub_100013188(a1, (v10 + 2));
  v10[7] = a2;
  sub_100006F14(v22);
  sub_100006F14(v25);
  return v10;
}

uint64_t sub_10057AD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MapComponentViewModel();
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10057AF98(a2);
  v12 = v11;
  v13 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  v30 = *(v14 + 16);
  v30(v9, a2, v13);
  v15 = v7[7];
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v16 + 16))(&v9[v15], a1);
  v17 = v7[8];
  v18 = type metadata accessor for MapComponent();
  sub_1001113FC(a2 + *(v18 + 20), &v9[v17], type metadata accessor for WeatherData);
  v19 = type metadata accessor for WeatherData(0);
  sub_10001B350(&v9[v17], 0, 1, v19);
  v20 = &v9[v7[9]];
  *v20 = v10;
  v20[1] = v12;
  *a3 = sub_10057B600(a2);
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = v23;
  *(a3 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1001113FC(v9, a3 + v24[5], type metadata accessor for MapComponentViewModel);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v25 = v24[8];
  v30((a3 + v25), a2, v13);
  v26 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a3 + v25, 0, 1, v26);
  sub_10013D288();
  v27 = Dictionary.init(dictionaryLiteral:)();
  result = sub_10057BE74(v9);
  *(a3 + v24[6]) = 259;
  *(a3 + v24[7]) = v27;
  return result;
}

uint64_t sub_10057AF98(uint64_t a1)
{
  v2 = type metadata accessor for WeatherFormatPlaceholder();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA53F8);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v41 = &v33 - v6;
  v42 = type metadata accessor for WeatherCondition();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CurrentWeather();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for WeatherMapOverlayKind();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 != enum case for WeatherMapOverlayKind.precipitation(_:))
  {
    if (v22 == enum case for WeatherMapOverlayKind.airQuality(_:))
    {
      type metadata accessor for MapComponent();
      type metadata accessor for WeatherData(0);
      WeatherDataModel.airQuality.getter();
      v24 = type metadata accessor for AirQuality();
      if (sub_100024D10(v16, 1, v24) != 1)
      {
        v23 = AirQuality.displayDescription.getter();
        (*(*(v24 - 8) + 8))(v16, v24);
        return v23;
      }

      sub_10057BED0(v16);
    }

    else
    {
      if (v22 == enum case for WeatherMapOverlayKind.temperature(_:))
      {
        type metadata accessor for MapComponent();
        type metadata accessor for WeatherData(0);
        WeatherDataModel.currentWeather.getter();
        CurrentWeather.temperature.getter();
        (*(v11 + 8))(v13, v10);
        v25 = v35;
        static WeatherFormatStyle<>.weather.getter();
        v27 = v39;
        v26 = v40;
        v28 = v37;
        (*(v39 + 104))(v37, enum case for WeatherFormatPlaceholder.none(_:), v40);
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        sub_100114168();
        v29 = v34;
        v30 = v38;
        v31 = v41;
        v23 = Measurement.formatted<A>(_:placeholder:unitManager:)();

        (*(v27 + 8))(v28, v26);
        (*(v36 + 8))(v25, v30);
        (*(v33 + 8))(v31, v29);
        return v23;
      }

      (*(v18 + 8))(v21, v17);
    }

    return 0;
  }

  type metadata accessor for MapComponent();
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.condition.getter();
  (*(v11 + 8))(v13, v10);
  v23 = WeatherCondition.description.getter();
  (*(v7 + 8))(v9, v42);
  (*(v18 + 8))(v21, v17);
  return v23;
}

uint64_t sub_10057B600(uint64_t a1)
{
  v2 = type metadata accessor for AirQualityScaleCategory();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AirQualityScale();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v7 - 8);
  v9 = v48 - v8;
  v10 = type metadata accessor for AirQuality();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherMapOverlayKind();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for WeatherMapOverlayKind.precipitation(_:))
  {
    v20 = [objc_opt_self() mainBundle];
    v47 = 0x8000000100AD4F20;
    v21 = 0x7469706963657250;
    v22 = 0xED00006E6F697461;
    v23 = 0xD000000000000021;
    v24 = 0x8000000100AD5150;
    v25 = 0xD000000000000043;
    v26.super.isa = v20;
LABEL_3:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, 0, v26, *&v21, *&v25)._countAndFlagsBits;

    (*(v15 + 8))(v18, v14);
    return countAndFlagsBits;
  }

  if (v19 != enum case for WeatherMapOverlayKind.airQuality(_:))
  {
    if (v19 == enum case for WeatherMapOverlayKind.temperature(_:))
    {
      v32 = [objc_opt_self() mainBundle];
      v54._object = 0x8000000100AD5100;
      v33._countAndFlagsBits = 0x74617265706D6554;
      v33._object = 0xEB00000000657275;
      v34._object = 0x8000000100AD50E0;
      v54._countAndFlagsBits = 0xD000000000000041;
      v34._countAndFlagsBits = 0xD00000000000001FLL;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v32, v33, v54)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    if (v19 == LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]))
    {
      v44 = [objc_opt_self() mainBundle];
      v45._countAndFlagsBits = 0xD000000000000018;
      v56._object = 0x8000000100AD50A0;
      v46._countAndFlagsBits = 0x70614D20646E6957;
      v45._object = 0x8000000100AD5080;
      v56._countAndFlagsBits = 0xD00000000000003ALL;
      v46._object = 0xE800000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v56)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    v20 = [objc_opt_self() mainBundle];
    v47 = 0x8000000100AD4F20;
    v23 = 0x7469706963657250;
    v24 = 0xED00006E6F697461;
    v25 = 0xD000000000000043;
    v26.super.isa = v20;
    v21 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_3;
  }

  type metadata accessor for MapComponent();
  type metadata accessor for WeatherData(0);
  WeatherDataModel.airQuality.getter();
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_10057BED0(v9);
    v29 = [objc_opt_self() mainBundle];
    v53._object = 0x8000000100AD4F90;
    v30._countAndFlagsBits = 0x6C61755120726941;
    v30._object = 0xEF70614D20797469;
    v31._object = 0x8000000100AD4F70;
    v53._countAndFlagsBits = 0xD000000000000041;
    v31._countAndFlagsBits = 0xD00000000000001FLL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v29, v30, v53)._countAndFlagsBits;
  }

  else
  {
    v35 = v11;
    (*(v11 + 32))(v13, v9, v10);
    v36 = [objc_opt_self() mainBundle];
    v55._object = 0x8000000100AD4FE0;
    v37._countAndFlagsBits = 0x70614D204025;
    v55._countAndFlagsBits = 0xD000000000000090;
    v37._object = 0xE600000000000000;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v48[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v55)._countAndFlagsBits;

    sub_10022C350(&qword_100CA40C8);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100A2C3F0;
    AirQuality.scale.getter();
    v40 = AirQualityScale.displayLabel.getter();
    v42 = v41;
    (*(v49 + 8))(v6, v4);
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100035744();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    v43 = v50;
    AirQuality.currentScaleCategory.getter();
    AirQualityScaleCategory.glyph.getter();
    (*(v51 + 8))(v43, v52);
    (*(v35 + 8))(v13, v10);
  }

  return countAndFlagsBits;
}

uint64_t sub_10057BE74(uint64_t a1)
{
  v2 = type metadata accessor for MapComponentViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10057BED0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC62B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10057BF38(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2218 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2228 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2220 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2210 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2208 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_10057C0A4(char a1, char a2, uint64_t a3)
{
  v79 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v76 = &v72 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = sub_10057BF38(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v24, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v42);
    sub_100566A5C(v37, v81);
    if ((v82 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v45);
      v43 = 0;
      v44 = v79;
      v46 = &v33[*(v79 + 20)];
      v47 = v81[1];
      *v46 = v81[0];
      *(v46 + 1) = v47;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
  v44 = v79;
LABEL_7:
  sub_10001B350(v33, v43, 1, v44);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v37, v83);
  sub_100924AFC(v3, v83, v80);
  sub_10031694C(*(a3 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v37, v84);
  v48 = v74;
  if (v85 & 1) != 0 || (sub_100011474(), v49 = v76, sub_1001B6FB0(v20, v76, v50), v51 = (v49 + *(v44 + 20)), v52 = v84[1], *v51 = v84[0], v51[1] = v52, sub_100035AD0(v36, v48, &qword_100CAC7F8), sub_10001BD64(), v55 = v73, sub_10031694C(v53 + v54, v73, v56), sub_100566AB0(v37, v86), v57 = v77, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v55, v57, v58);
    v59 = (v57 + *(v44 + 20));
    v60 = v86[1];
    *v59 = v86[0];
    v59[1] = v60;
    sub_10001BD64();
    v63 = v75;
    sub_10031694C(v61 + v62, v75, v64);
    sub_100566AE8(v37, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v65 = v63;
      v66 = v78;
      sub_1001B6FB0(v65, v78, v67);
      v68 = (v66 + *(v44 + 20));
      v69 = v88[1];
      *v68 = v88[0];
      v68[1] = v69;
      v70 = sub_100924C14(v80, v49, v48, v57, v66);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v70;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10057C728(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_severeAlert, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(v9, v82 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v83;
    *(v12 + 120) = v84;
    sub_100016B54();
    v120 = v69;
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_severeAlert, v70 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_10057CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBB0;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3AEB0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A2C3F0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A4C530;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC10;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BC30;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D90408 = v8;
}

void sub_10057D100()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BC50;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100552E50();
  qword_100D90410 = v0;
}

void sub_10057D210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  v22[0] = xmmword_100A3BC40;
  v22[1] = xmmword_100A3BB80;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A2C3F0;
  v20[1] = xmmword_100A3BB80;
  v26 = v21;
  v27 = v20;
  v18[0] = 0;
  v18[1] = 4;
  v19 = xmmword_100A3BBD0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC50;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BB80;
  v13[0] = xmmword_100A3BBB0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A2C3F0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90418 = v8;
}

void sub_10057D328()
{
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BBB0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v17 = v16;
  v18 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3AEB0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC50;
  v19 = v14;
  v20 = v13;
  v10 = 0;
  v11 = xmmword_100A3BC70;
  v12 = 2;
  v9[0] = xmmword_100A3BBD0;
  v9[1] = xmmword_100A3BC60;
  v21 = &v10;
  v22 = v9;
  v8[0] = xmmword_100A3BC40;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A2D320;
  v5[1] = xmmword_100A3BBB0;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_100552E50();
  qword_100D90420 = v0;
}

void sub_10057D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  v23[0] = xmmword_100A3BC50;
  v23[1] = xmmword_100A3BC60;
  v25 = v24;
  v26 = v23;
  v20 = xmmword_100A3BB70;
  v21 = 1;
  v22 = 4;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v27 = &v20;
  v28 = v19;
  v18[0] = xmmword_100A41B90;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v29 = v18;
  v30 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BD20;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v31 = v16;
  v32 = v15;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC40;
  v33 = v14;
  v34 = v13;
  v12[0] = xmmword_100A2D320;
  v12[1] = xmmword_100A2C3F0;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC40;
  v35 = v12;
  v36 = v11;
  v10[0] = xmmword_100A3BC50;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v37 = v10;
  v38 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90428 = v8;
}

uint64_t sub_10057D56C(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v32 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v31 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for LocationViewComponent();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v29 - v23;

  sub_1005D71C4(v25, a2);
  v30 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiMinorAlertConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiMinorAlertConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiMinorAlertConfiguration8_Storage_severeAlert, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008);
  sub_10031694C(v13, v31, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v32, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiMinorAlertContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002BEB48(v30);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008);
  return v27;
}

uint64_t sub_10057D8BC()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for AutomationInfoProperty();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10057DB6C(v1, v10 - v9);
  v12 = *(v11 + 16);
  if (*(v11 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v12, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v12) = v21;
  }

  sub_10057DBD0(v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for AutomationInfo(0);
  sub_10057DC2C();
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;

  static String.Encoding.utf8.getter();
  v17 = String.init(data:encoding:)();
  v19 = v18;
  sub_10030F778(v14, v16);
  if (!v19)
  {
    __break(1u);
LABEL_6:
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *v1 = v17;
  v1[1] = v19;
  return result;
}

uint64_t sub_10057DB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationInfoProperty();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057DBD0(uint64_t a1)
{
  v2 = type metadata accessor for AutomationInfoProperty();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10057DC2C()
{
  result = qword_100CC6358;
  if (!qword_100CC6358)
  {
    type metadata accessor for AutomationInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6358);
  }

  return result;
}

uint64_t sub_10057DC84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6408);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NextHourPrecipitationStringBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    v7 = sub_10002D7F8(v21, v22);
    __chkstk_darwin(v7);
    v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    HourPrecipitationDetailInteractor = type metadata accessor for NextHourPrecipitationDetailInteractor();
    v20[3] = HourPrecipitationDetailInteractor;
    v20[4] = &off_100C60760;
    v20[0] = v11;
    HourPrecipitationDetailModule = type metadata accessor for NextHourPrecipitationDetailModule();
    v14 = swift_allocObject();
    v15 = sub_10002D7F8(v20, HourPrecipitationDetailInteractor);
    __chkstk_darwin(v15);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[5] = HourPrecipitationDetailInteractor;
    v14[6] = &off_100C60760;
    v14[2] = v19;
    v14[7] = v5;
    v14[8] = v6;
    sub_100006F14(v20);
    result = sub_100006F14(v21);
    a2[3] = HourPrecipitationDetailModule;
    a2[4] = &off_100C6AC78;
    *a2 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10057DF58()
{
  sub_10022C350(&qword_100CC6400);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6408);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6410);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6418);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6420);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for NextHourPrecipitationStringBuilder();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6428);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4B28);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10057E178@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    v5 = Tracker.chain(name:identifier:)();

    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for NextHourPrecipitationDetailTracker;
      a2[4] = &off_100C79F70;
      v6 = swift_allocObject();
      *a2 = v6;
      *(v6 + 16) = v5;
      return sub_100013188(&v7, v6 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10057E2C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v25;
  if (v25)
  {
    v21 = v26;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CC6400);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v24)
    {
      v6 = sub_10002D7F8(v23, v24);
      __chkstk_darwin(v6);
      v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v22[3] = &type metadata for NextHourPrecipitationDetailTracker;
      v22[4] = &off_100C79F70;
      v10 = swift_allocObject();
      v22[0] = v10;
      v11 = v8[1];
      v10[1] = *v8;
      v10[2] = v11;
      v10[3] = v8[2];
      HourPrecipitationDetailInteractor = type metadata accessor for NextHourPrecipitationDetailInteractor();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v22, &type metadata for NextHourPrecipitationDetailTracker);
      __chkstk_darwin(v14);
      v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v13[7] = &type metadata for NextHourPrecipitationDetailTracker;
      v13[8] = &off_100C79F70;
      v18 = swift_allocObject();
      v19 = v16[1];
      v18[1] = *v16;
      v18[2] = v19;
      v18[3] = v16[2];
      v13[2] = v5;
      v13[3] = v21;
      v13[4] = v18;
      sub_100006F14(v22);
      result = sub_100006F14(v23);
      a2[3] = HourPrecipitationDetailInteractor;
      a2[4] = &off_100C60760;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10057E5A4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_10057E5F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = sub_10057EB94();
    a2[3] = &type metadata for NextHourPrecipitationLeadingValueRule;
    a2[4] = v4;
    result = swift_allocObject();
    *a2 = result;
    *(result + 16) = v5;
    *(result + 24) = v6;
    *(result + 40) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10057E6AC()
{
  type metadata accessor for NextHourPrecipitationStringBuilder();
  swift_allocObject();
  return NextHourPrecipitationStringBuilder.init()();
}

uint64_t sub_10057E6E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6418);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NextHourPrecipitationStringBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherForecastDescriptionStringBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    HourPrecipitationDetailViewModelFactory = type metadata accessor for NextHourPrecipitationDetailViewModelFactory();
    swift_allocObject();
    result = sub_100346FA0(&v8, v5, v6);
    a2[3] = HourPrecipitationDetailViewModelFactory;
    a2[4] = &off_100C4F7B8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10057E814(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6410);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  HourPrecipitationDetailInputFactory = type metadata accessor for NextHourPrecipitationDetailInputFactory();
  v16 = &off_100C510D0;
  v14[0] = v7;
  sub_100035B30(v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10057EB84;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6428);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v10 = *sub_1000161C0(v17, v18);
    HourPrecipitationDetailInputFactory = type metadata accessor for NextHourPrecipitationDetailViewModelFactory();
    v16 = &off_100C4F7B8;
    v14[0] = v10;
    sub_100035B30(v14, v13);
    v11 = swift_allocObject();
    sub_100013188(v13, v11 + 16);

    sub_100006F14(v14);
    sub_100006F14(v17);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10057EB8C;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4B28);
    swift_allocObject();
    return sub_10024B4B0(v3, v6, v5, v4, sub_100266DE8, 0, sub_100104B5C, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_10057EB94()
{
  result = qword_100CC6430;
  if (!qword_100CC6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6430);
  }

  return result;
}

id sub_10057EBE8()
{
  sub_100035B30(v0, v4);
  v1 = *(v0 + 40) | (*(v0 + 42) << 16);
  v2 = objc_allocWithZone(type metadata accessor for SevereWeatherFeatureView.Coordinator());
  return sub_10057F2E4(v4, v1);
}

id sub_10057EC3C()
{
  v0 = [objc_opt_self() systemFontOfSize:60.0];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithFont:v0 scale:-1];

  v3 = [objc_opt_self() systemBlueColor];
  v42 = [v1 configurationWithHierarchicalColor:v3];

  sub_100169C04();
  v44 = v2;
  v43 = sub_10038F9FC(0x6461622E6C6C6562, 0xEF6C6C69662E6567, v2);
  v4 = [v43 imageByApplyingSymbolConfiguration:v42];
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v12 = sub_10001F0D4(0xD000000000000021, 0x8000000100AD5250, v7, v8, v9, v10, v11, 0xD000000000000052);
  v14 = v13;

  v15 = [v5 mainBundle];
  v21 = sub_10001F0D4(0xD00000000000007ELL, 0x8000000100AD52E0, v16, v17, v18, v19, v20, 0xD000000000000061);
  v23 = v22;

  v24 = objc_allocWithZone(OBWelcomeController);
  v41 = v4;
  v25 = sub_10038FDF4(v12, v14, v21, v23, v4);
  v26 = [objc_opt_self() boldButton];
  v27 = sub_10057F10C();
  sub_10038FE94(v27, v28, 0, v26);
  sub_10022C350(&qword_100CC6478);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v26 addTarget:v45 action:"continueButtonTapped" forControlEvents:64];

  v29 = [v25 buttonTray];
  [v29 addButton:v26];

  v30 = [objc_opt_self() linkButton];
  v31 = [v5 mainBundle];
  v46._object = 0x8000000100AC3D50;
  v32._countAndFlagsBits = 0x776F4E20746F4ELL;
  v46._countAndFlagsBits = 0xD000000000000028;
  v32._object = 0xE700000000000000;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v46);

  sub_10038FE94(v34._countAndFlagsBits, v34._object, 0, v30);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v30 addTarget:v45 action:"notNowButtonTapped" forControlEvents:64];

  v35 = [v25 buttonTray];
  [v35 addButton:v30];

  v36 = objc_opt_self();
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 linkWithBundleIdentifier:v37];

  v39 = [v25 buttonTray];
  [v39 setPrivacyLinkController:v38];

  [v25 setModalPresentationStyle:2];
  return v25;
}

uint64_t sub_10057F10C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100AD53F0;
  v1._countAndFlagsBits = 0x776F6C6C41;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000004DLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_10057F1CC@<X0>(void *a1@<X8>)
{
  result = sub_10057EBE8();
  *a1 = result;
  return result;
}

uint64_t sub_10057F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057F5D4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10057F258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057F5D4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10057F2BC()
{
  sub_10057F5D4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_10057F2E4(uint64_t a1, int a2)
{
  ObjectType = swift_getObjectType();
  sub_100035B30(a1, &v2[OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor]);
  v6 = &v2[OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_optInUserStatus];
  v6[2] = BYTE2(a2);
  *v6 = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_100006F14(a1);
  return v7;
}

uint64_t sub_10057F374()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor), v1);
  return (*(v2 + 8))(*(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_optInUserStatus) | (*(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_optInUserStatus + 2) << 16), v1, v2);
}

uint64_t sub_10057F434()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor), v1);
  return (*(v2 + 16))(v1, v2);
}

__n128 sub_10057F51C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10057F530(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_10057F570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10057F5D4()
{
  result = qword_100CC6470;
  if (!qword_100CC6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6470);
  }

  return result;
}

uint64_t sub_10057F628()
{
  sub_1005805F0(v0 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_selectedDate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MoonScrubberStorage()
{
  result = qword_100CC64A8;
  if (!qword_100CC64A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057F6E0()
{
  sub_10057F778();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10057F778()
{
  if (!qword_100CB4108)
  {
    type metadata accessor for MoonDetailSelectedDate();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB4108);
    }
  }
}

uint64_t sub_10057F7E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261776B636162 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64726177726F66 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10057F8F0(char a1)
{
  if (!a1)
  {
    return 0x647261776B636162;
  }

  if (a1 == 1)
  {
    return 0x64726177726F66;
  }

  return 1701736302;
}

uint64_t sub_10057F940(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CC6580);
  sub_1000037C4();
  v31 = v4;
  v32 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_10022C350(&qword_100CC6588);
  sub_1000037C4();
  v28 = v8;
  v29 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CC6590);
  sub_1000037C4();
  v27 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10022C350(&qword_100CC6598);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_1005804A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_100580548();
      sub_10000C88C();
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1005804F4();
      v24 = v30;
      sub_10000C88C();
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_10058059C();
    sub_10000C88C();
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_10057FC5C(void *a1)
{
  v63 = sub_10022C350(&qword_100CC6540);
  sub_1000037C4();
  v61 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_10022C350(&qword_100CC6548);
  sub_1000037C4();
  v58 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_10022C350(&qword_100CC6550);
  sub_1000037C4();
  v57 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_10022C350(&qword_100CC6558);
  sub_1000037C4();
  v62 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_1000161C0(a1, v17);
  sub_1005804A0();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100618E7C(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_100580548();
          v35 = v55;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_100003C88();
            v37(v36);
LABEL_21:
            sub_100006F14(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_1005804F4();
          v17 = v59;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_100003C88();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_100003C88();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_10058059C();
        v43 = v54;
        sub_10000803C();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100003C78();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100003C78();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_10022C350(&qword_100CA7610);
    *v40 = &type metadata for MoonScrubberHeaderArrowKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100003C78();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100006F14(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005801F0(uint64_t a1)
{
  v2 = sub_10058059C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058022C(uint64_t a1)
{
  v2 = sub_10058059C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10057F7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100580298(uint64_t a1)
{
  v2 = sub_1005804A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005802D4(uint64_t a1)
{
  v2 = sub_1005804A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580310(uint64_t a1)
{
  v2 = sub_100580548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058034C(uint64_t a1)
{
  v2 = sub_100580548();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580388(uint64_t a1)
{
  v2 = sub_1005804F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005803C4(uint64_t a1)
{
  v2 = sub_1005804F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580400@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10057FC5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10058044C()
{
  result = qword_100CC6538;
  if (!qword_100CC6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6538);
  }

  return result;
}

unint64_t sub_1005804A0()
{
  result = qword_100CC6560;
  if (!qword_100CC6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6560);
  }

  return result;
}

unint64_t sub_1005804F4()
{
  result = qword_100CC6568;
  if (!qword_100CC6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6568);
  }

  return result;
}

unint64_t sub_100580548()
{
  result = qword_100CC6570;
  if (!qword_100CC6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6570);
  }

  return result;
}

unint64_t sub_10058059C()
{
  result = qword_100CC6578;
  if (!qword_100CC6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6578);
  }

  return result;
}

uint64_t sub_1005805F0(uint64_t a1)
{
  v2 = sub_10022C350(qword_100CA66A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_100580658(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100580768()
{
  result = qword_100CC65A0;
  if (!qword_100CC65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65A0);
  }

  return result;
}

unint64_t sub_1005807C0()
{
  result = qword_100CC65A8;
  if (!qword_100CC65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65A8);
  }

  return result;
}

unint64_t sub_100580818()
{
  result = qword_100CC65B0;
  if (!qword_100CC65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65B0);
  }

  return result;
}

unint64_t sub_100580870()
{
  result = qword_100CC65B8;
  if (!qword_100CC65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65B8);
  }

  return result;
}

unint64_t sub_1005808C8()
{
  result = qword_100CC65C0;
  if (!qword_100CC65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65C0);
  }

  return result;
}

unint64_t sub_100580920()
{
  result = qword_100CC65C8;
  if (!qword_100CC65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65C8);
  }

  return result;
}

unint64_t sub_100580978()
{
  result = qword_100CC65D0;
  if (!qword_100CC65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65D0);
  }

  return result;
}

unint64_t sub_1005809D0()
{
  result = qword_100CC65D8;
  if (!qword_100CC65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65D8);
  }

  return result;
}

unint64_t sub_100580A28()
{
  result = qword_100CC65E0;
  if (!qword_100CC65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC65E0);
  }

  return result;
}

uint64_t sub_100580A80()
{
  Location.coordinate.getter();
  Location.coordinate.getter();

  return LocationData.init(latitudeDouble:longitudeDouble:)();
}

uint64_t sub_100580AEC(char *a1)
{
  v2 = sub_10022C350(&qword_100CC6688);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = sub_10022C350(&qword_100CC6690);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100580C54(a1[72], a1[73], &v17 - v15);
  sub_100580D00(a1[112], a1[113], v12);
  sub_100580D00(a1[152], a1[153], v9);
  sub_100580D00(a1[192], a1[193], v6);
  return ConditionsFeedbackData.init(sunnyReport:cloudCoverReport:rainReport:sleetReport:snowReport:)();
}

uint64_t sub_100580C54@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CloudCover();
  v7 = v6;
  if (a1)
  {
    (*(*(v6 - 8) + 104))(a3, **(&off_100C5EC10 + a2), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_10001B350(a3, v8, 1, v7);
}

uint64_t sub_100580D00@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    switch(a2)
    {
      case 1:
      case 4:
      case 7:
        v4 = &enum case for PrecipitationIntensity.light(_:);
        break;
      case 2:
      case 5:
      case 8:
        v4 = &enum case for PrecipitationIntensity.moderate(_:);
        break;
      case 3:
      case 6:
      case 9:
        v4 = &enum case for PrecipitationIntensity.heavy(_:);
        break;
      default:
        v4 = &enum case for PrecipitationIntensity.enabled(_:);
        break;
    }

    v8 = *v4;
    v9 = type metadata accessor for PrecipitationIntensity();
    (*(*(v9 - 8) + 104))(a3, v8, v9);
    v6 = a3;
    v7 = 0;
    v5 = v9;
  }

  else
  {
    v5 = type metadata accessor for PrecipitationIntensity();
    v6 = a3;
    v7 = 1;
  }

  return sub_10001B350(v6, v7, 1, v5);
}

uint64_t sub_100580DFC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a3;
  v32[2] = a2;
  v33 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  v9 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for TemperatureFeedback();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100003C38();
  v22 = v20 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = v32 - v25;
  (*(v18 + 104))(v32 - v25, **(&off_100C5EC30 + a1), v16, v24);
  (*(v18 + 16))(v22, v26, v16);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.dewPoint.getter();
  (*(v11 + 8))(v15, v9);
  v27 = v33;
  Measurement.value.getter();
  v29 = v28;
  result = (*(v5 + 8))(v8, v27);
  v31 = round(v29);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v31 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v31 < 2147483650.0)
  {
    TemperatureFeedbackData.init(reportedTemperature:currrentDewPoint:)();
    return (*(v18 + 8))(v26, v16);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005810C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v53[1] = a3;
  v62 = type metadata accessor for WindFeedback();
  sub_1000037C4();
  v66 = v4;
  __chkstk_darwin(v5);
  sub_100003848();
  v64 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v65 = v53 - v8;
  v9 = sub_10022C350(&qword_100CAEC90);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = v53 - v11;
  v13 = type metadata accessor for Wind();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100003848();
  v58 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  v20 = v53 - v19;
  v21 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003848();
  v56 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  v28 = v53 - v27;
  v29 = sub_10022C350(&qword_100CACCC8);
  sub_1000037C4();
  v63 = v30;
  __chkstk_darwin(v31);
  sub_100003848();
  v55 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  v35 = v53 - v34;
  v61 = a2;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.wind.getter();
  v36 = *(v23 + 8);
  v57 = v21;
  v54 = v36;
  v36(v28, v21);
  Wind.gust.getter();
  v37 = *(v15 + 8);
  v59 = v13;
  v37(v20, v13);
  v38 = sub_100024D10(v12, 1, v29);
  if (v38 == 1)
  {
    sub_10003FDF4(v12, &qword_100CAEC90);
    v53[0] = 0;
    v39 = v63;
    goto LABEL_7;
  }

  v39 = v63;
  (*(v63 + 32))(v35, v12, v29);
  Measurement.value.getter();
  v41 = v40;
  v42 = v40;
  result = (*(v39 + 8))(v35, v29);
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v41 <= -2147483650.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v41 < 2147483650.0)
  {
    v53[0] = v41;
LABEL_7:
    v44 = v65;
    v45 = v66;
    v46 = v62;
    (*(v66 + 104))(v65, **(&off_100C5EC48 + v60), v62);
    (*(v45 + 16))(v64, v44, v46);
    v47 = v56;
    WeatherDataModel.currentWeather.getter();
    v48 = v58;
    CurrentWeather.wind.getter();
    v54(v47, v57);
    v49 = v55;
    Wind.speed.getter();
    v37(v48, v59);
    Measurement.value.getter();
    v51 = v50;
    v52 = v50;
    result = (*(v39 + 8))(v49, v29);
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v51 > -2147483650.0)
    {
      if (v51 < 2147483650.0)
      {
        v67 = v38 == 1;
        WindFeedbackData.init(reportedWind:currrentWind:currrentWindGust:)();
        return (*(v66 + 8))(v65, v46);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100581604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v3 = type metadata accessor for AQIFeedback();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003848();
  v35 = v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10022C350(&qword_100CB1288);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_10022C350(&qword_100CC41C0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for AQIData();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v34 - v27;
  v29 = type metadata accessor for WeatherDataModel();
  (*(*(v29 - 8) + 16))(v14, v36, v29);
  sub_10001B350(v14, 0, 1, v29);
  sub_100727954(v14, v18);
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &qword_100CC41C0);
    v30 = 1;
    v31 = v37;
  }

  else
  {
    (*(v21 + 32))(v28, v18, v19);
    (*(v5 + 104))(v10, **(&off_100C5EC60 + v34), v3);
    (*(v5 + 16))(v35, v10, v3);
    (*(v21 + 16))(v25, v28, v19);
    v31 = v37;
    AQIFeedbackData.init(reportedAQI:currentAQI:)();
    (*(v5 + 8))(v10, v3);
    (*(v21 + 8))(v28, v19);
    v30 = 0;
  }

  v32 = type metadata accessor for AQIFeedbackData();
  return sub_10001B350(v31, v30, 1, v32);
}

uint64_t sub_100581974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v9 = 0;
    v10 = 0;
    v7 = 0;
LABEL_24:
    v13 = 0;
LABEL_25:
    v15 = 0;
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v4 = a1 + 56;
  sub_10001F0F8();
  sub_10002524C();
  if (v5)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v6)
      {
        case 1:
          goto LABEL_8;
        case 2:
          sub_100037BAC();
          goto LABEL_8;
        case 3:
          sub_100022DC8();
          goto LABEL_8;
        case 4:
          sub_10000EB50();
          goto LABEL_8;
        case 5:
          sub_1000139B4();
LABEL_8:
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v7)
          {
            goto LABEL_13;
          }

          sub_100014934();
          if ((v8 & 1) == 0)
          {
            goto LABEL_13;
          }

          continue;
        default:

          v7 = 1;
          goto LABEL_13;
      }
    }
  }

  v7 = 0;
LABEL_13:
  if (!*(a1 + 16))
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_24;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  sub_10002524C();
  if (v11)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v12)
      {
        case 1:

          v13 = 1;
          goto LABEL_31;
        case 2:
          sub_100037BAC();
          goto LABEL_20;
        case 3:
          sub_100022DC8();
          goto LABEL_20;
        case 4:
          sub_10000EB50();
          goto LABEL_20;
        case 5:
          sub_1000139B4();
          goto LABEL_20;
        default:
LABEL_20:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_31;
          }

          sub_100014934();
          if ((v14 & 1) == 0)
          {
            goto LABEL_31;
          }

          continue;
      }
    }
  }

  v13 = 0;
LABEL_31:
  if (!*(a1 + 16))
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  sub_10002524C();
  if (v17)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v18)
      {
        case 1:
          sub_100028740();
          goto LABEL_38;
        case 2:
          sub_100037BAC();
          goto LABEL_38;
        case 3:
          sub_100022DC8();
          goto LABEL_38;
        case 4:

          v10 = 1;
          goto LABEL_43;
        case 5:
          sub_1000139B4();
          goto LABEL_38;
        default:
LABEL_38:
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            goto LABEL_43;
          }

          sub_100014934();
          if ((v19 & 1) == 0)
          {
            goto LABEL_43;
          }

          continue;
      }
    }
  }

  v10 = 0;
LABEL_43:
  if (!*(a1 + 16))
  {
    v9 = 0;
    goto LABEL_25;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  sub_10002524C();
  if (v20)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v21)
      {
        case 1:
          sub_100028740();
          goto LABEL_50;
        case 2:

          v15 = 1;
          goto LABEL_55;
        case 3:
          sub_100022DC8();
          goto LABEL_50;
        case 4:
          sub_10000EB50();
          goto LABEL_50;
        case 5:
          sub_1000139B4();
          goto LABEL_50;
        default:
LABEL_50:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
            goto LABEL_55;
          }

          sub_100014934();
          if ((v22 & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
      }
    }
  }

  v15 = 0;
LABEL_55:
  if (!*(a1 + 16))
  {
    v9 = 0;
    goto LABEL_26;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100006180();
  sub_100011658();
  if (v24)
  {
    v25 = ~v23;
    while (2)
    {
      switch(*(*(a1 + 48) + a2))
      {
        case 1:
          sub_100028740();
          goto LABEL_60;
        case 3:

          v9 = 1;
          goto LABEL_66;
        default:
LABEL_60:
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v9)
          {
            goto LABEL_66;
          }

          a2 = (a2 + 1) & v25;
          sub_1000304CC();
          if ((v26 & 1) == 0)
          {
            goto LABEL_66;
          }

          continue;
      }
    }
  }

  v9 = 0;
LABEL_66:
  if (*(a1 + 16))
  {
    sub_100031D98();
    String.hash(into:)();
    Hasher._finalize()();
    sub_100006180();
    v29 = v28 & ~v27;
    if ((*(v4 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v31 = ~v27;
      while (2)
      {
        switch(*(*(a1 + 48) + v29))
        {
          case 1:
            sub_100028740();
            goto LABEL_71;
          case 5:

            v16 = 1;
            goto LABEL_27;
          default:
LABEL_71:
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
              goto LABEL_27;
            }

            v29 = (v29 + 1) & v31;
            if (((*(v4 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_27;
            }

            continue;
        }
      }
    }
  }

  v16 = 0;
LABEL_27:

  return OtherConditionsFeedbackData.init(rainbowsReport:lightningReport:fogReport:hailReport:smokeReport:hazeReport:)(v7 & 1, v13 & 1, v10 & 1, v15 & 1, v9 & 1, v16 & 1);
}

uint64_t sub_100581FD0(uint64_t a1)
{
  v3 = 0x746E617361656C70;
  v4 = 0x617361656C706E75;
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    v11 = 0;
    v9 = 0;
LABEL_36:
    v20 = 0;
LABEL_37:
    v52 = 0;
    goto LABEL_38;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  v5 = a1 + 56;
  sub_10001F0F8();
  if ((*(a1 + 56 + v7) >> v55))
  {
    v1 = ~v6;
    while (2)
    {
      sub_10000CC84();
      switch(v8)
      {
        case 1:
        case 2:
        case 4:
        case 5:
        case 6:
        case 7:
          goto LABEL_6;
        case 3:
          sub_100024204();
LABEL_6:
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v9)
          {
            goto LABEL_11;
          }

          sub_100020880();
          if ((v10 & 1) == 0)
          {
            goto LABEL_11;
          }

          continue;
        default:

          v9 = 1;
          goto LABEL_11;
      }
    }
  }

  v9 = 0;
LABEL_11:
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    v11 = 0;
    goto LABEL_36;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  if ((*(v5 + v13) >> v55))
  {
    v1 = ~v12;
    while (2)
    {
      sub_10000CC84();
      switch(v14)
      {
        case 1:

          v11 = 1;
          goto LABEL_21;
        case 3:
          sub_100024204();
          goto LABEL_16;
        default:
LABEL_16:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            goto LABEL_21;
          }

          sub_100020880();
          if ((v15 & 1) == 0)
          {
            goto LABEL_21;
          }

          continue;
      }
    }
  }

  v11 = 0;
LABEL_21:
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    goto LABEL_36;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001038C();
  if (v17)
  {
    v18 = ~v16;
    while (2)
    {
      sub_10003A258();
      switch(v19)
      {
        case 1:
          sub_10002C858();
          goto LABEL_32;
        case 2:

          v20 = 1;
          goto LABEL_57;
        case 3:
          sub_100019A54();
          goto LABEL_32;
        case 4:
          sub_100017A84();
          goto LABEL_32;
        case 5:
          sub_100016B64();
          goto LABEL_32;
        case 6:
          sub_10004E710();
          goto LABEL_32;
        case 7:
          sub_100049984();
          goto LABEL_32;
        default:
LABEL_32:
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_57;
          }

          v1 = (v1 + 1) & v18;
          sub_100074BF8();
          if ((v21 & 1) == 0)
          {
            goto LABEL_57;
          }

          continue;
      }
    }
  }

  v20 = 0;
LABEL_57:
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    goto LABEL_37;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001038C();
  if ((v29 & 1) == 0)
  {
    v54 = 0;
    goto LABEL_74;
  }

  v53 = ~v28;
  while (2)
  {
    sub_10003A258();
    switch(v30)
    {
      case 1:
        sub_10002C858();
        goto LABEL_68;
      case 2:
        sub_1000696D4();
        goto LABEL_68;
      case 3:

        v54 = 1;
        goto LABEL_74;
      case 4:
        sub_100017A84();
        goto LABEL_68;
      case 5:
        sub_100016B64();
        goto LABEL_68;
      case 6:
        sub_10004E710();
        goto LABEL_68;
      case 7:
        sub_100049984();
        goto LABEL_68;
      default:
LABEL_68:
        v31 = v4;
        v32 = v3;
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v54 = v33;
        if ((v33 & 1) == 0)
        {
          v1 = (v1 + 1) & v53;
          sub_100074BF8();
          v3 = v32;
          v4 = v31;
          if ((v34 & 1) == 0)
          {
            goto LABEL_74;
          }

          continue;
        }

        v4 = v31;
LABEL_74:
        if (!*(a1 + 16))
        {
          v50 = 0;
          goto LABEL_37;
        }

        sub_100031674();
        String.hash(into:)();
        Hasher._finalize()();
        sub_10001038C();
        if (v36)
        {
          v51 = ~v35;
          while (2)
          {
            sub_10003A258();
            switch(v37)
            {
              case 1:
                sub_10002C858();
                goto LABEL_84;
              case 2:
                sub_1000696D4();
                goto LABEL_84;
              case 3:
                sub_100019A54();
                goto LABEL_84;
              case 4:

                v52 = 1;
                goto LABEL_89;
              case 5:
                sub_100016B64();
                goto LABEL_84;
              case 6:
                sub_10004E710();
                goto LABEL_84;
              case 7:
                sub_100049984();
                goto LABEL_84;
              default:
LABEL_84:
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v52 = v38;
                if (v38)
                {
                  goto LABEL_89;
                }

                v1 = (v1 + 1) & v51;
                sub_100074BF8();
                if ((v39 & 1) == 0)
                {
                  goto LABEL_89;
                }

                continue;
            }
          }
        }

        v52 = 0;
LABEL_89:
        if (*(a1 + 16))
        {
          sub_100031674();
          String.hash(into:)();
          Hasher._finalize()();
          sub_10001038C();
          if (v41)
          {
            v49 = ~v40;
            while (2)
            {
              sub_10003A258();
              switch(v42)
              {
                case 1:
                  sub_10002C858();
                  goto LABEL_99;
                case 3:
                  sub_100019A54();
                  goto LABEL_99;
                case 4:
                  sub_100017A84();
                  goto LABEL_99;
                case 5:

                  v50 = 1;
                  goto LABEL_106;
                case 6:
                  sub_10004E710();
                  goto LABEL_99;
                case 7:
                  sub_100049984();
                  goto LABEL_99;
                default:
LABEL_99:
                  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v50 = v43;
                  if (v43)
                  {
                    goto LABEL_106;
                  }

                  v1 = (v1 + 1) & v49;
                  sub_100074BF8();
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_106;
                  }

                  continue;
              }
            }
          }

          v50 = 0;
LABEL_106:
          if (*(a1 + 16))
          {
            sub_100031674();
            String.hash(into:)();
            Hasher._finalize()();
            sub_100006180();
            v47 = v46 & ~v45;
            if ((*(v5 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
            {
              v4 = ~v45;
              while (2)
              {
                switch(*(*(a1 + 48) + v47))
                {
                  case 1:
                    sub_10002C858();
                    goto LABEL_115;
                  case 2:
                    sub_1000696D4();
                    goto LABEL_115;
                  case 3:
                    sub_100019A54();
                    goto LABEL_115;
                  case 5:
                    sub_100016B64();
                    goto LABEL_115;
                  case 6:

                    v22 = 1;
                    goto LABEL_39;
                  case 7:
                    sub_100049984();
                    goto LABEL_115;
                  default:
LABEL_115:
                    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v22)
                    {
                      goto LABEL_39;
                    }

                    v47 = (v47 + 1) & v4;
                    if (((*(v5 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    continue;
                }
              }
            }
          }
        }

        else
        {
          v50 = 0;
        }

LABEL_38:
        v22 = 0;
LABEL_39:
        if (*(a1 + 16))
        {
          sub_100031674();
          String.hash(into:)();
          Hasher._finalize()();
          sub_100006180();
          sub_100011658();
          if (v24)
          {
            v25 = ~v23;
            while (2)
            {
              switch(*(*(a1 + 48) + v4))
              {
                case 1:
                  sub_10002C858();
                  goto LABEL_49;
                case 2:
                  sub_1000696D4();
                  goto LABEL_49;
                case 3:
                  sub_100019A54();
                  goto LABEL_49;
                case 4:
                  sub_100017A84();
                  goto LABEL_49;
                case 5:
                  sub_100016B64();
                  goto LABEL_49;
                case 6:
                  sub_10004E710();
                  goto LABEL_49;
                case 7:

                  v26 = 1;
                  goto LABEL_53;
                default:
LABEL_49:
                  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v26)
                  {
                    goto LABEL_53;
                  }

                  v4 = (v4 + 1) & v25;
                  sub_1000304CC();
                  if ((v27 & 1) == 0)
                  {
                    goto LABEL_53;
                  }

                  continue;
              }
            }
          }
        }

        v26 = 0;
LABEL_53:

        return DescriptionFeedbackData.init(pleasantReport:unpleasantReport:hotReport:chillyReport:muggyReport:dryReport:windyReport:calmReport:)(v9 & 1, v11 & 1, v20 & 1, v54 & 1, v52 & 1, v50 & 1, v22 & 1, v26 & 1);
    }
  }
}

uint64_t sub_1005828F4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for String.Encoding();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = type metadata accessor for JSONEncoder.OutputFormatting();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  sub_100582CCC();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (v12)
  {
    WeatherJSONData.init(json:)();
    sub_10030F778(v8, v10);

    v13 = type metadata accessor for WeatherJSONData();
    return sub_10001B350(a1, 0, 1, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100582CCC()
{
  result = qword_100CC6680;
  if (!qword_100CC6680)
  {
    type metadata accessor for WeatherDataModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6680);
  }

  return result;
}

uint64_t sub_100582D24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC3788);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  swift_beginAccess();
  sub_100095588();
  v8 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  sub_1000180EC(v7, &qword_100CC3788);
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  sub_100585060();
  Configurable.setting<A>(_:)();

  (*(*(v8 - 8) + 16))(v4, a1, v8);
  sub_10001B350(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100097AA4();
  return swift_endAccess();
}

uint64_t sub_100582F70()
{
  v1 = OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___permitDuplicateLocations;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___permitDuplicateLocations);
  if (v2 == 2)
  {
    if (qword_100CA2A20 != -1)
    {
      swift_once();
    }

    sub_100585060();
    Configurable.setting<A>(_:)();
    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

uint64_t sub_100583034@<X0>(uint64_t a1@<X8>)
{
  v101 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v98 = v3;
  __chkstk_darwin(v4);
  sub_1000038E4();
  v100 = v5;
  type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v8 = sub_100003918(v7);
  type metadata accessor for LocationPreviewModalViewModel(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v11 = type metadata accessor for WeatherConditionBackgroundModel();
  sub_1000037C4();
  v93 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  sub_100003918(v14);
  v15 = type metadata accessor for PreviewLocation();
  __chkstk_darwin(v15 - 8);
  sub_1000038E4();
  sub_100003918(v16);
  v82 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  sub_1000037C4();
  v81 = v17;
  __chkstk_darwin(v18);
  sub_1000038E4();
  sub_100003918(v19);
  v80 = type metadata accessor for WeatherConditionBackgroundConfig.CameraPositionType();
  sub_1000037C4();
  v79 = v20;
  __chkstk_darwin(v21);
  sub_1000038E4();
  sub_100003918(v22);
  v78 = type metadata accessor for VFXEffectViewID();
  sub_1000037C4();
  v77 = v23;
  __chkstk_darwin(v24);
  sub_1000038E4();
  sub_100003918(v25);
  v89 = type metadata accessor for WeatherConditionBackgroundOptions();
  sub_1000037C4();
  v88 = v26;
  __chkstk_darwin(v27);
  sub_1000038E4();
  sub_100003918(v28);
  v29 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_1000037C4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  v95 = type metadata accessor for BackgroundAnimationKind();
  sub_1000037C4();
  v94 = v36;
  __chkstk_darwin(v37);
  sub_1000038E4();
  v96 = v38;
  v39 = type metadata accessor for LocationPreviewInput(0);
  __chkstk_darwin(v39 - 8);
  sub_1000037D8();
  v42 = v41 - v40;
  v43 = type metadata accessor for LocationPreviewContentInput(0);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_1000037D8();
  v47 = v46 - v45;
  sub_100584FB0();
  if (sub_100024D10(v42, 1, v43) == 1)
  {
    sub_1005850B8(v42, type metadata accessor for LocationPreviewInput);
    v48 = type metadata accessor for LocationPreviewViewContentModel(0);
    v49 = a1;
    v50 = 1;
  }

  else
  {
    sub_100585008();
    sub_100582D24(v35);
    v51 = (*(v31 + 88))(v35, v29);
    if (v51 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:))
    {
      *v96 = (*(v47 + v43[6]) & 1) == 0;
      (*(v94 + 104))(v96, enum case for BackgroundAnimationKind.vfx(_:), v95);
    }

    else if (v51 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:))
    {
      (*(v94 + 104))(v96, enum case for BackgroundAnimationKind.mica(_:), v95);
    }

    else
    {
      *v96 = 1;
      (*(v94 + 104))();
      (*(v31 + 8))(v35, v29);
    }

    v75 = v11;
    v86 = v47;
    v52 = *(v47 + v43[7]);
    v53 = *(v52 + 16);
    v76 = a1;
    if (v53)
    {
      v103[0] = _swiftEmptyArrayStorage;
      sub_10000369C(0, v53, 0);
      v54 = _swiftEmptyArrayStorage;
      v55 = v98 + 16;
      v56 = v52 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v97 = *(v98 + 72);
      v99 = *(v98 + 16);
      v57 = (v55 - 8);
      do
      {
        v99(v100, v56, v101);
        v58 = Location.Identifier.uniqueID.getter();
        v60 = v59;
        (*v57)(v100, v101);
        v103[0] = v54;
        v62 = v54[2];
        v61 = v54[3];
        if (v62 >= v61 >> 1)
        {
          sub_10000369C((v61 > 1), v62 + 1, 1);
          v54 = v103[0];
        }

        v54[2] = v62 + 1;
        v63 = &v54[2 * v62];
        v63[4] = v58;
        v63[5] = v60;
        v56 += v97;
        --v53;
      }

      while (v53);
      v64 = v1;
    }

    else
    {
      v64 = v1;
    }

    (*(v77 + 104))(v83, enum case for VFXEffectViewID.locationPreview(_:), v78);
    (*(v79 + 104))(v84, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v80);
    (*(v81 + 104))(v85, enum case for WeatherConditionBackgroundOptions.DisplayLocation.locationPreview(_:), v82);
    v65 = objc_opt_self();
    v66 = [v65 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(v103, v103[3]);
    dispatch thunk of WindowType.bounds.getter();
    v67 = [v65 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(v102, v102[3]);
    dispatch thunk of WindowType.displayScale.getter();
    WeatherConditionBackgroundOptions.init(locationIDs:applyMask:applyLegibilityScrim:effectViewID:canShowCollisionLayer:cameraPositionType:displayLocation:windowBounds:displayScale:locationViewerOrientation:)();
    sub_100006F14(v102);
    sub_100006F14(v103);
    sub_100584FB0();
    sub_100583C90(v86, v64, v96, v87, v92);
    v68 = sub_100584B90(v64);
    v69 = *(v86 + v43[9]) ^ 1;
    sub_100584FB0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 7u:
      case 8u:
        sub_100008938();
        swift_storeEnumTagMultiPayload();
        sub_1005850B8(v90, type metadata accessor for LocationPreviewModalViewState);
        goto LABEL_24;
      case 6u:
        sub_100585008();
        sub_100008938();
        goto LABEL_22;
      case 9u:
        sub_100008938();
        goto LABEL_22;
      default:
        type metadata accessor for URL();
        sub_1000037E8();
        (*(v70 + 32))();
        sub_100008938();
LABEL_22:
        swift_storeEnumTagMultiPayload();
LABEL_24:
        sub_1000161C0(v64 + 22, v64[25]);
        v71 = sub_100495F00(v91);
        (*(v88 + 8))(v87, v89);
        (*(v94 + 8))(v96, v95);
        a1 = v76;
        sub_100585008();
        v72 = type metadata accessor for LocationPreviewViewContentModel(0);
        *(v76 + v72[5]) = v68 & 1;
        *(v76 + v72[6]) = v71;
        *(v76 + v72[7]) = v69 & 1;
        (*(v93 + 32))(v76 + v72[8], v92, v75);
        sub_100585008();
        sub_1005850B8(v86, type metadata accessor for LocationPreviewContentInput);
        v49 = v76;
        v50 = 0;
        v48 = v72;
        break;
    }
  }

  sub_10001B350(v49, v50, 1, v48);
  v73 = type metadata accessor for LocationPreviewViewModel(0);
  return sub_10001B350(a1, 0, 1, v73);
}

uint64_t sub_100583C90@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v110 = a4;
  v111 = a3;
  v104 = a2;
  v101 = a1;
  v115 = a5;
  v5 = sub_10022C350(&qword_100CA75C8);
  __chkstk_darwin(v5 - 8);
  v86 = &v86 - v6;
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  v114 = &v86 - v8;
  v9 = sub_10022C350(&qword_100CB1288);
  __chkstk_darwin(v9 - 8);
  v113 = &v86 - v10;
  v107 = type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v112 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for WeatherConditionBackgroundOptions();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v125 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CACCC0);
  __chkstk_darwin(v13 - 8);
  v124 = &v86 - v14;
  v15 = sub_10022C350(&qword_100CA58B8);
  __chkstk_darwin(v15 - 8);
  v123 = &v86 - v16;
  v117 = type metadata accessor for Date();
  v99 = *(v117 - 8);
  __chkstk_darwin(v117);
  v122 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for BackgroundAnimationKind();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v121 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for WeatherConditionBackgroundTimeData();
  __chkstk_darwin(v95);
  v120 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v21 - 8);
  v91 = &v86 - v22;
  v89 = type metadata accessor for Location.Identifier();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Location();
  v94 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v27 - 8);
  v93 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v90 = &v86 - v30;
  __chkstk_darwin(v31);
  v33 = &v86 - v32;
  v34 = sub_10022C350(&qword_100CA2CD8);
  __chkstk_darwin(v34 - 8);
  v119 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v86 - v37;
  __chkstk_darwin(v39);
  v41 = &v86 - v40;
  v42 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v42 - 8);
  v97 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v86 - v45;
  __chkstk_darwin(v47);
  v49 = &v86 - v48;
  sub_1006E6234(&v86 - v48);
  v50 = type metadata accessor for WeatherCondition();
  sub_10001B350(v41, 1, 1, v50);
  v116 = type metadata accessor for WeatherData(0);
  sub_10001B350(v33, 1, 1, v116);
  v118 = v49;
  v51 = v24;
  sub_100095588();
  v52 = sub_100024D10(v46, 1, v24);
  v100 = v41;
  if (v52 == 1)
  {
    sub_1000180EC(v46, &qword_100CA65D8);
    v53 = v112;
    v54 = v101;
  }

  else
  {
    v55 = v26;
    (*(v94 + 32))(v26, v46, v51);
    v56 = type metadata accessor for LocationPreviewContentInput(0);
    v57 = v101;
    v58 = *(v101 + *(v56 + 44) + 8);
    v59 = v87;
    Location.identifier.getter();
    v60 = Location.Identifier.id.getter();
    sub_100113300(v60, v61, v58);

    (*(v88 + 8))(v59, v89);
    sub_1000180EC(v41, &qword_100CA2CD8);
    sub_1003C7D1C(v38, v41);
    v62 = *(v57 + *(v56 + 56) + 16);
    v63 = Location.id.getter();
    v64 = v91;
    sub_1000864C0(v63, v65, v62);

    v66 = type metadata accessor for LocationWeatherDataState(0);
    v54 = v57;
    if (sub_100024D10(v64, 1, v66) == 1)
    {
      (*(v94 + 8))(v55, v51);
      sub_1000180EC(v64, &qword_100CA37B0);
      sub_10001B350(v90, 1, 1, v116);
    }

    else
    {
      sub_1001A0D3C();
      (*(v94 + 8))(v55, v51);
      sub_1005850B8(v64, type metadata accessor for LocationWeatherDataState);
    }

    v53 = v112;
    sub_100097AA4();
  }

  v92 = v33;
  v67 = v104;
  sub_1000161C0(v104 + 12, v104[15]);
  v68 = v93;
  sub_100095588();
  v69 = type metadata accessor for LocationPreviewContentInput(0);
  v70 = v120;
  sub_1000756B0(v118, v68, v54 + *(v69 + 48), v120);
  sub_1000180EC(v68, &qword_100CA3898);
  sub_100035B30((v67 + 7), v126);
  v112 = v126[4];
  v104 = sub_1000161C0(v126, v126[3]);
  (*(v96 + 16))(v121, v111, v98);
  (*(v99 + 16))(v122, v70, v117);
  sub_100095588();
  sub_100095588();
  v71 = v100;
  sub_100095588();
  LODWORD(v101) = *(v54 + *(v69 + 52));
  sub_100095588();
  (*(v102 + 16))(v125, v110, v103);
  BackgroundAnimationKind.gradientContext.getter();
  (*(v105 + 104))(v53, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v107);
  v72 = v92;
  v73 = v116;
  if (sub_100024D10(v92, 1, v116))
  {
    v74 = type metadata accessor for WeatherDataModel();
    v75 = v113;
    v76 = 1;
  }

  else
  {
    v77 = *(v73 + 24);
    v78 = type metadata accessor for WeatherDataModel();
    v79 = v113;
    (*(*(v78 - 8) + 16))(v113, v72 + v77, v78);
    v75 = v79;
    v76 = 0;
    v74 = v78;
    v73 = v116;
  }

  sub_10001B350(v75, v76, 1, v74);
  v80 = sub_100024D10(v72, 1, v73);
  v81 = v114;
  if (!v80)
  {
    v82 = v86;
    sub_100095588();
    v83 = type metadata accessor for WeatherDataOverrides();
    if (sub_100024D10(v82, 1, v83) != 1)
    {
      sub_100095588();
      sub_1005850B8(v82, type metadata accessor for WeatherDataOverrides);
      goto LABEL_14;
    }

    sub_1000180EC(v82, &qword_100CA75C8);
  }

  sub_10001B350(v81, 1, 1, v117);
LABEL_14:
  v84 = v106;
  WeatherConditionBackgroundModelFactoryInput.init(animationKind:currentTime:elevation:moonData:debugConditionOverride:isReduceMotionEnabled:location:options:presentationContext:weatherData:conditionBackgroundDateOverride:)();
  dispatch thunk of WeatherConditionBackgroundModelFactoryType.makeModel(from:)();
  (*(v108 + 8))(v84, v109);
  sub_1005850B8(v120, type metadata accessor for WeatherConditionBackgroundTimeData);
  sub_1000180EC(v71, &qword_100CA2CD8);
  sub_1000180EC(v118, &qword_100CA65D8);
  sub_100006F14(v126);
  return sub_1000180EC(v72, &qword_100CA3898);
}

uint64_t sub_100584B90(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6890);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100582F70())
  {
    return 1;
  }

  sub_1006E6234(v7);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &qword_100CA65D8);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1000161C0((a1 + 16), *(a1 + 40));
    Location.coordinate.getter();
    Location.name.getter();
    sub_1001A34D0();

    (*(v9 + 8))(v11, v8);
    v13 = type metadata accessor for SavedLocation();
    v12 = sub_100024D10(v4, 1, v13) == 1;
    sub_1000180EC(v4, &qword_100CA6890);
  }

  return v12;
}

uint64_t sub_100584DF8()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);
  sub_100006F14(v0 + 176);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___locationAnimationKind, &qword_100CC3788);
  return v0;
}

uint64_t sub_100584E58()
{
  sub_100584DF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationPreviewViewModelFactory()
{
  result = qword_100CC66D0;
  if (!qword_100CC66D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100584F04()
{
  sub_100043F4C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100584FB0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100585008()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100585060()
{
  result = qword_100CC6788;
  if (!qword_100CC6788)
  {
    type metadata accessor for LocationPreviewViewModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6788);
  }

  return result;
}

uint64_t sub_1005850B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100585110(int a1, int a2, uint64_t a3, unsigned __int8 a4, char a5, int a6, unsigned int a7, int a8, char a9)
{
  v32 = a8;
  v33 = a6;
  v36 = a3;
  v34 = a2;
  v37 = a1;
  v12 = type metadata accessor for Calendar();
  sub_1000037C4();
  v35 = v13;
  __chkstk_darwin(v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v30 - v24;
  if (a9 == 2)
  {
    return 0;
  }

  sub_10001C610();
  v31 = a7;
  switch(a4)
  {
    case 2u:

      goto LABEL_7;
    case 4u:
      sub_1000103B0();
      break;
    default:
      break;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_7:
    if (a5 == 1)
    {
      result = 0;
      if (v31 & 1) == 0 || (v32)
      {
        return result;
      }
    }
  }

  static Calendar.current.getter();
  Date.wc_addDays(_:calendar:)();
  (*(v35 + 8))(v16, v12);
  static WeatherClock.date.getter();
  v28 = static Date.> infix(_:_:)();
  v29 = *(v19 + 8);
  v29(v22, v17);
  v29(v25, v17);
  result = 0;
  if ((v37 & 1) == 0 && (v28 & 1) == 0 && (v34 & 1) == 0)
  {
    return (a4 - 1 < 2) & (v33 | v31);
  }

  return result;
}

uint64_t sub_100585418(int a1, int a2, int a3, uint64_t a4, char a5, char a6, int a7, char a8)
{
  v31 = a3;
  v32 = a7;
  v34 = a4;
  v35 = a2;
  v12 = type metadata accessor for Calendar();
  sub_1000037C4();
  v33 = v13;
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v31 - v24;
  if (a8 == 2)
  {
    goto LABEL_9;
  }

  if (a6 == 1)
  {
    sub_10001C610();
    switch(a5)
    {
      case 2:

        goto LABEL_7;
      case 4:
        sub_1000103B0();
        break;
      default:
        break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((a1 & ~v26 & 1) == 0)
    {
LABEL_7:
      if (v32)
      {
        goto LABEL_9;
      }
    }
  }

  static Calendar.current.getter();
  Date.wc_addDays(_:calendar:)();
  (*(v33 + 8))(v16, v12);
  static WeatherClock.date.getter();
  v27 = static Date.> infix(_:_:)();
  v28 = *(v19 + 8);
  v28(v22, v17);
  v28(v25, v17);
  if ((v35 & 1) == 0)
  {
    v29 = (v31 | v27) ^ 1;
    return v29 & 1;
  }

LABEL_9:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_100585768()
{
  v0 = type metadata accessor for News();
  sub_100007074(v0, qword_100D90440);
  v1 = sub_10000703C(v0, qword_100D90440);
  return sub_1005857B4(v1);
}

uint64_t sub_1005857B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArticlePlacementLocation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v126 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v129 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticlePlacement();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v109 - v12;
  __chkstk_darwin(v14);
  v123 = &v109 - v15;
  __chkstk_darwin(v16);
  v122 = &v109 - v17;
  __chkstk_darwin(v18);
  v20 = &v109 - v19;
  __chkstk_darwin(v21);
  v121 = &v109 - v22;
  __chkstk_darwin(v23);
  v120 = &v109 - v24;
  __chkstk_darwin(v25);
  v119 = &v109 - v26;
  __chkstk_darwin(v27);
  v118 = &v109 - v28;
  __chkstk_darwin(v29);
  v117 = &v109 - v30;
  __chkstk_darwin(v31);
  v124 = &v109 - v32;
  __chkstk_darwin(v33);
  v116 = &v109 - v34;
  __chkstk_darwin(v35);
  v115 = &v109 - v36;
  __chkstk_darwin(v37);
  v114 = &v109 - v38;
  __chkstk_darwin(v39);
  v41 = &v109 - v40;
  if (qword_100CA25E8 != -1)
  {
    swift_once();
  }

  if (dispatch thunk of SettingGroup.isEnabled.getter())
  {
    v110 = v20;
    v42 = type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2570 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    v127 = v42;
    v128 = v8;
    v112 = v10;
    v113 = a1;
    v125 = v7;
    v111 = v13;
    if (v144 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      v43 = v126;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      v44 = v3;
      (*(v3 + 104))(v43, enum case for ArticlePlacementLocation.airQualityDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      sub_10069FB8C();
      v46 = v45;
      v47 = v45[2];
      if (v47 >= v45[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v80;
      }

      v46[2] = v47 + 1;
      v7 = v125;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v47, v41);
      v3 = v44;
    }

    else
    {
      v46 = _swiftEmptyArrayStorage;
    }

    static SettingReader.shared.getter();
    if (qword_100CA2578 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v143 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      v49 = v3;
      v50 = v2;
      (*(v49 + 104))(v126, enum case for ArticlePlacementLocation.feelsLikeDetail(_:), v2);
      v51 = v114;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v81;
      }

      v52 = v46[2];
      v53 = v125;
      if (v52 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v82;
      }

      v54 = v128;
      v46[2] = v52 + 1;
      v55 = v53;
      (*(v54 + 32))(v46 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, v51, v53);
      v2 = v50;
      v3 = v49;
    }

    else
    {
      v55 = v7;
    }

    static SettingReader.shared.getter();
    if (qword_100CA2580 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    v56 = v126;
    if (v142 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.humidityDetail(_:), v2);
      v57 = v115;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v83;
      }

      v58 = v46[2];
      v55 = v125;
      if (v58 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v84;
      }

      v46[2] = v58 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v58, v57, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA2588 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v141 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.moonDetail(_:), v2);
      v59 = v116;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v85;
      }

      v60 = v46[2];
      if (v60 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v86;
      }

      v46[2] = v60 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v60, v59, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA2590 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v140 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.precipitationDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v87;
      }

      v61 = v46[2];
      v55 = v125;
      if (v61 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v88;
      }

      v46[2] = v61 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v61, v124, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA2598 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v139 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.precipitationAveragesDetail(_:), v2);
      v62 = v117;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v89;
      }

      v63 = v46[2];
      if (v63 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v90;
      }

      v46[2] = v63 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v63, v62, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25A0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v138 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.pressureDetail(_:), v2);
      v64 = v118;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v91;
      }

      v65 = v46[2];
      if (v65 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v92;
      }

      v46[2] = v65 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v65, v64, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25A8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v137 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.severe(_:), v2);
      v66 = v119;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v93;
      }

      v67 = v46[2];
      if (v67 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v94;
      }

      v46[2] = v67 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v67, v66, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25B0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v136 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.sunriseSunsetDetail(_:), v2);
      v68 = v120;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v95;
      }

      v69 = v46[2];
      if (v69 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v96;
      }

      v46[2] = v69 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v69, v68, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25B8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v135 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.temperatureDetail(_:), v2);
      v70 = v121;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v97;
      }

      v71 = v46[2];
      if (v71 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v98;
      }

      v46[2] = v71 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v71, v70, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25C0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v134 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.temperatureAveragesDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v99;
      }

      v72 = v46[2];
      v55 = v125;
      if (v72 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v100;
      }

      v46[2] = v72 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v72, v110, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25C8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v133 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.trend(_:), v2);
      v73 = v122;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v101;
      }

      v74 = v46[2];
      if (v74 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v102;
      }

      v46[2] = v74 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v74, v73, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25D0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v132 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.uvIndexDetail(_:), v2);
      v75 = v123;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v103;
      }

      v76 = v46[2];
      if (v76 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v104;
      }

      v46[2] = v76 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v76, v75, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25D8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v131 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.visibilityDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v105;
      }

      v77 = v46[2];
      if (v77 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v106;
      }

      v46[2] = v77 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v77, v111, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25E0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v130 == 1)
    {
      sub_10022C350(&qword_100CC68C0);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.windDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v107;
      }

      v78 = v128;
      v79 = v46[2];
      if (v79 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v108;
      }

      v46[2] = v79 + 1;
      (*(v78 + 32))(v46 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v79, v112, v55);
    }
  }

  return News.init(placements:)();
}

BOOL sub_100587B64(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 1;
  }

  if (*(a1 + 88) & 1) != 0 || (*(a1 + 128) & 1) != 0 || (*(a1 + 168) & 1) != 0 || (*(a1 + 208))
  {
    return 1;
  }

  if (*(a1 + 232) && *(a1 + 232) == 1)
  {
  }

  else
  {
    v3 = sub_10001F114();

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  if (*(a1 + 256) && *(a1 + 256) == 1)
  {
  }

  else
  {
    v4 = sub_10001F114();

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  if (*(a1 + 296) && *(a1 + 296) == 1)
  {

    goto LABEL_19;
  }

  v5 = sub_10001F114();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

LABEL_19:
  if (*(*(a1 + 304) + 16))
  {
    return 1;
  }

  return *(*(a1 + 312) + 16) != 0;
}

uint64_t sub_100587D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A30470;
  sub_1000103C4();
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = v6;
  memcpy(__dst, (a1 + 16), 0xC2uLL);
  *(inited + 72) = &type metadata for ReportWeatherConditionsViewModel;
  v7 = swift_allocObject();
  *(inited + 48) = v7;
  memcpy((v7 + 16), __dst, 0xC2uLL);
  sub_1000103C4();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = v8;
  v9 = *(a1 + 224);
  *(inited + 96) = *(a1 + 216);
  *(inited + 104) = v9;
  sub_1000103C4();
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = v10;
  *(inited + 144) = *(a1 + 232);
  *(inited + 168) = &unk_100C5D330;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000100ABEA30;
  v11 = *(a1 + 248);
  *(inited + 192) = *(a1 + 240);
  *(inited + 200) = v11;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x69746152646E6977;
  *(inited + 232) = 0xEA0000000000676ELL;
  *(inited + 240) = *(a1 + 256);
  *(inited + 264) = &unk_100C5D2A0;
  *(inited + 272) = 0x696C617551726961;
  *(inited + 280) = 0xEF656C7469547974;
  v12 = *(a1 + 264);
  if (*(a1 + 272))
  {
    v13 = *(a1 + 272);
  }

  else
  {
    v12 = 7104878;
    v13 = 0xE300000000000000;
  }

  *(inited + 288) = v12;
  *(inited + 296) = v13;
  sub_1000103C4();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000019;
  *(inited + 328) = v16;
  v17 = *(a1 + 280);
  if (*(a1 + 288))
  {
    v18 = *(a1 + 288);
  }

  else
  {
    v17 = v14;
    v18 = v15;
  }

  *(inited + 336) = v17;
  *(inited + 344) = v18;
  sub_1000103C4();
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = v19;
  *(inited + 384) = *(a1 + 296);
  *(inited + 408) = &unk_100C5D210;
  *(inited + 416) = 0x6E6F43726568746FLL;
  *(inited + 424) = 0xEF736E6F69746964;
  v20 = *(a1 + 304);
  v21 = sub_10022C350(&qword_100CAA998);
  *(inited + 432) = v20;
  *(inited + 456) = v21;
  strcpy((inited + 464), "descriptions");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v22 = *(a1 + 312);
  *(inited + 504) = sub_10022C350(&qword_100CAA9B0);
  *(inited + 480) = v22;
  sub_1002DD184(__dst, v24);

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CC68D0);
  a2[4] = sub_1005880F0();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10058805C()
{
  sub_100588154();

  return ShortDescribable.description.getter();
}

unint64_t sub_10058809C()
{
  result = qword_100CC68C8;
  if (!qword_100CC68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC68C8);
  }

  return result;
}

unint64_t sub_1005880F0()
{
  result = qword_100CC68D8;
  if (!qword_100CC68D8)
  {
    sub_10022E824(&qword_100CC68D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC68D8);
  }

  return result;
}

unint64_t sub_100588154()
{
  result = qword_100CC68E0;
  if (!qword_100CC68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC68E0);
  }

  return result;
}

void sub_1005881A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90CA8);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v8 = 141558531;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      *(v8 + 14) = sub_100078694(a2, a3, &v17);
      *(v8 + 22) = 2082;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220);
      v9 = String.init<A>(describing:)();
      v11 = sub_100078694(v9, v10, &v17);

      *(v8 + 24) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to donate location interaction. persistentIdentifier=%{private,mask.hash}s, error=%{public}s", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90CA8);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      *(v14 + 14) = sub_100078694(a2, a3, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully donated location interaction. persistentIdentifier=%{private,mask.hash}s", v14, 0x16u);
      sub_100006F14(v15);
    }

    else
    {
    }
  }
}

void sub_10058851C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100588588()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v21 = v1;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v20 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = Location.Identifier.intentIdentifier.getter();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100588E0C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C5EDB8;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100006190();
  sub_100067444(v17, v18);
  sub_10022C350(&qword_100CB4680);
  sub_100067638(&qword_100CD81D0, &qword_100CB4680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v5, v0);
  (*(v7 + 8))(v11, v20);
}

void sub_10058881C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_10022C350(&qword_100CA7300);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_100588E14;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10058851C;
  v9[3] = &unk_100C5EE08;
  v8 = _Block_copy(v9);

  [v4 deleteInteractionsWithIdentifiers:isa completion:v8];
  _Block_release(v8);
}

void sub_100588974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90CA8);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v8 = 141558531;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      *(v8 + 14) = sub_100078694(a2, a3, &v19);
      *(v8 + 22) = 2082;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220);
      v9 = String.init<A>(describing:)();
      v11 = sub_100078694(v9, v10, &v19);

      *(v8 + 24) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete donated location interaction. persistentIdentifier=%{private,mask.hash}s, error=%{public}s", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90CA8);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315651;
      *(v14 + 4) = sub_100078694(a2, a3, &v19);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_10022C350(&qword_100CC69C0);
      v15 = String.init<A>(describing:)();
      v17 = sub_100078694(v15, v16, &v19);

      *(v14 + 24) = v17;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully deleted donated location interaction. persistentIdentifier=%s, error=%{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_100588D40()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather26InteractionDonationManager_previousDonatedLocationIdentifier, &qword_100CADBA0);

  return v0;
}

uint64_t sub_100588DA4()
{
  sub_100588D40();

  return swift_deallocClassInstance();
}

uint64_t sub_100588E2C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_10022C350(&qword_100CC69D8);
  if (swift_dynamicCast())
  {
    v4 = v9;
    v5 = v10;
    sub_1000161C0(v8, v9);
    v6 = (*(v5 + 16))(v4, v5);
    sub_100006F14(v8);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v8, &qword_100CC69E0);
    return 0;
  }

  return v6;
}

uint64_t sub_100588F78()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v8[0]);
  v3(v2);
  sub_10022C350(&qword_100CC69E8);
  if (sub_1000061A8())
  {
    v4 = sub_1000103D0();
    v5(v4);
    return sub_100006F14(v8);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v8, &qword_100CC69F0);
    v7 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000061CC(v7);
  }
}

uint64_t sub_100589060()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v9[0]);
  v3(v2);
  sub_10022C350(&qword_100CC6A08);
  if (sub_1000061A8())
  {
    v4 = sub_1000103D0();
    v5(v4);
    v6 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000044F0(v6);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v9, &qword_100CC6A10);
    v8 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000061CC(v8);
  }
}

uint64_t sub_10058914C()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v9[0]);
  v3(v2);
  sub_10022C350(&qword_100CC69C8);
  if (sub_1000061A8())
  {
    v4 = sub_1000103D0();
    v5(v4);
    v6 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000044F0(v6);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v9, &qword_100CC69D0);
    v8 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000061CC(v8);
  }
}

uint64_t sub_100589238()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v9[0]);
  v3(v2);
  sub_10022C350(&qword_100CC6A18);
  if (sub_1000061A8())
  {
    v4 = sub_1000103D0();
    v5(v4);
    v6 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000044F0(v6);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v9, qword_100CC6A20);
    v8 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000061CC(v8);
  }
}

uint64_t sub_100589324()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v9[0]);
  v3(v2);
  sub_10022C350(&qword_100CC69F8);
  if (sub_1000061A8())
  {
    v4 = sub_1000103D0();
    v5(v4);
    v6 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000044F0(v6);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v9, &qword_100CC6A00);
    v8 = type metadata accessor for LocationComponentContainerViewModel();
    return sub_1000061CC(v8);
  }
}

uint64_t sub_100589410(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    return sub_100024D10(a1, v5, v4);
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
        return sub_100024D10(a1, v5, v4);
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

void sub_10058954C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
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
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_100589768()
{
  sub_100018514();
  v43 = v2;
  v44 = v3;
  sub_100017A94();
  v4 = sub_10022C350(&unk_100CE2F20);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000115E8();
  v6 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v42 = v9 - v8;
  v10 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v41 - v20;
  v45 = v0;
  v22 = *(v0 + 16);
  v22(&v46, v19);
  v23 = v46;
  sub_10001C644();
  sub_1000BC84C(v23 + v24, v21, v25);

  sub_1001A00C8(v21, v13);
  sub_10001F158();
  sub_1000DFF38(v21, v26);
  LODWORD(v23) = sub_100024D10(v13, 1, v6);
  v27 = sub_1000180EC(v13, &unk_100CE49F0);
  if (v23 != 1)
  {
    (v22)(&v46, v27);
    v28 = v46;
    sub_10001C644();
    sub_1000BC84C(v28 + v29, v17, v30);

    v31 = *&v17[*(v14 + 24)];

    sub_10001F158();
    sub_1000DFF38(v17, v32);
    sub_100169AC0(v31, v1);

    v33 = type metadata accessor for LocationModel();
    if (sub_100024D10(v1, 1, v33) == 1)
    {
      sub_1000180EC(v1, &unk_100CE2F20);
    }

    else
    {
      sub_100007FD0();
      v35 = v34;
      if ((*(v36 + 88))(v1, v33) == enum case for LocationModel.current(_:))
      {
        (*(v35 + 96))(v1, v33);
        v37 = *(sub_10022C350(&qword_100CA38C0) + 48);
        v38 = v42;
        sub_1000D382C(v1, v42, &type metadata accessor for CurrentLocation);
        type metadata accessor for LocationModelData();
        sub_1000037E8();
        (*(v39 + 8))(v1 + v37);
        sub_1000161C0((v45 + 48), *(v45 + 72));
        CurrentLocation.name.getter();
        CurrentLocation.coordinate.getter();
        sub_10002089C();
        sub_100017600();
        LOBYTE(v37) = sub_100024844();

        if ((v37 & 1) == 0)
        {
          sub_100017600();
          sub_100589B78();
        }

        sub_100028754();
        sub_1000DFF38(v38, v40);
      }

      else
      {
        (*(v35 + 8))(v1, v33);
      }
    }
  }

  sub_10000CC90();
  sub_1000135C8();
}

void sub_100589B78()
{
  sub_100018514();
  v62 = v2;
  v63 = v3;
  sub_100017A94();
  v4 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v65 = &v58 - v6;
  v66 = type metadata accessor for Location();
  sub_100007FD0();
  v61 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v59 = v10 - v9;
  v11 = sub_10022C350(&unk_100CE2F20);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000115E8();
  v17 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v18);
  v64 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v58 - v25;
  v60 = v0;
  v27 = *(v0 + 16);
  v27(&v67, v24);
  v28 = v67;
  sub_10001C644();
  sub_1000BC84C(v28 + v29, v26, v30);

  sub_1001A00C8(v26, v1);
  sub_10001F158();
  sub_1000DFF38(v26, v31);
  v32 = type metadata accessor for CurrentLocation();
  LODWORD(v28) = sub_100024D10(v1, 1, v32);
  v33 = sub_1000180EC(v1, &unk_100CE49F0);
  if (v28 != 1)
  {
    (v27)(&v67, v33);
    v34 = v67;
    sub_10001C644();
    sub_1000BC84C(v34 + v35, v22, v36);

    v37 = *&v22[*(v17 + 24)];

    sub_10001F158();
    sub_1000DFF38(v22, v38);
    sub_100169AC0(v37, v14);

    v39 = type metadata accessor for LocationModel();
    if (sub_100024D10(v14, 1, v39) == 1)
    {
      v40 = &unk_100CE2F20;
      v41 = v14;
    }

    else
    {
      sub_100007FD0();
      v43 = v42;
      if ((*(v44 + 88))(v14, v39) != enum case for LocationModel.current(_:))
      {
        (*(v43 + 8))(v14, v39);
        goto LABEL_9;
      }

      (*(v43 + 96))(v14, v39);
      v45 = *(sub_10022C350(&qword_100CA38C0) + 48);
      sub_100028754();
      sub_1000DFF38(v14, v46);
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      v48 = (*(v47 + 8))(&v14[v45]);
      (v27)(&v67, v48);
      v49 = v67;
      sub_10001C644();
      v51 = v64;
      sub_1000BC84C(v49 + v50, v64, v52);

      v53 = v65;
      sub_1007BCB1C();
      sub_10001F158();
      sub_1000DFF38(v51, v54);
      v55 = v66;
      if (sub_100024D10(v53, 1, v66) != 1)
      {
        v56 = v61;
        v57 = v59;
        (*(v61 + 32))(v59, v53, v55);
        sub_1000161C0((v60 + 48), *(v60 + 72));
        Location.name.getter();
        Location.coordinate.getter();
        sub_10002089C();
        sub_100017600();
        sub_100024844();

        (*(v56 + 8))(v57, v55);
        goto LABEL_9;
      }

      v40 = &qword_100CA65D8;
      v41 = v53;
    }

    sub_1000180EC(v41, v40);
  }

LABEL_9:
  sub_10000CC90();
  sub_1000135C8();
}

void sub_10058A09C()
{
  sub_100018514();
  v3 = v2;
  sub_100017A94();
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v5 = sub_1000115E8();
  v6 = type metadata accessor for LocationPreviewViewState(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  if (v3)
  {
    v11 = v3;
  }

  else
  {
    (*(v0 + 16))(&v17);
    v11 = v17;
  }

  sub_100022DDC();
  sub_1000BC84C(v11 + v12, v1, v13);
  swift_retain_n();

  if (swift_getEnumCaseMultiPayload())
  {

    sub_100019A68();
    sub_1000DFF38(v1, v14);
  }

  else
  {
    sub_100004528();
    sub_1000D382C(v1, v10, v15);
    sub_1000161C0((v0 + 48), *(v0 + 72));
    sub_1006E6834();
    sub_1006E6B60();
    sub_10002089C();
    sub_100017600();
    dispatch thunk of LocationMatchHelperType.isSameLocation(first:second:)();

    sub_100014950();
    sub_1000DFF38(v10, v16);
  }

  sub_10000CC90();
  sub_1000135C8();
}

uint64_t sub_10058A254@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for LocationPreviewViewState(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  (*(v1 + 16))(&v21);
  v12 = v21;
  sub_100022DDC();
  sub_1000BC84C(v12 + v13, v6, v14);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_100019A68();
    sub_1000DFF38(v6, v15);
    v16 = 1;
  }

  else
  {
    sub_100004528();
    sub_1000D382C(v6, v11, v17);
    sub_1000BC84C(v11, a1, type metadata accessor for PreviewLocation);
    sub_100014950();
    sub_1000DFF38(v11, v18);
    v16 = 0;
  }

  v19 = type metadata accessor for PreviewLocation();
  return sub_10001B350(a1, v16, 1, v19);
}

void sub_10058A3B8()
{
  sub_100018514();
  sub_100017A94();
  active = type metadata accessor for LocationViewerActiveLocationState();
  v3 = sub_100003810(active);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Location.Identifier();
  sub_100007FD0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v11 = sub_1000115E8();
  type metadata accessor for ViewState.SecondaryViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = (v14 - v13);
  v16 = type metadata accessor for ViewState(0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  (*(v0 + 16))(&v23);
  sub_1000BC84C(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v20, type metadata accessor for ViewState);

  sub_1000BC84C(v20 + *(v17 + 28), v15, type metadata accessor for ViewState.SecondaryViewState);
  sub_1000DFF38(v20, type metadata accessor for ViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for ViewState.SecondaryViewState;
    v22 = v15;
  }

  else
  {
    sub_1000BC84C(*v15 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v6, type metadata accessor for LocationViewerActiveLocationState);
    if (sub_100024D10(v6, 1, v7) != 1)
    {
      (*(v9 + 32))(v1, v6, v7);
      sub_1000161C0((v0 + 48), *(v0 + 72));
      Location.Identifier.name.getter();
      Location.Identifier.coordinate.getter();
      sub_10002089C();
      sub_100017600();
      dispatch thunk of LocationMatchHelperType.isSameLocation(first:second:)();

      (*(v9 + 8))(v1, v7);
      goto LABEL_7;
    }

    v21 = type metadata accessor for LocationViewerActiveLocationState;
    v22 = v6;
  }

  sub_1000DFF38(v22, v21);
LABEL_7:
  sub_10000CC90();
  sub_1000135C8();
}

uint64_t sub_10058A6D0()
{

  sub_100006F14(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_10058A724@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC6BE0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  sub_1000304E0();
  sub_100024218();
  v10 = sub_10022C350(&qword_100CBD080);
  sub_1000038B4(v9, 1, v10);
  if (v11)
  {
    sub_1000180EC(v9, &qword_100CC6BE0);
    sub_10058AA2C();
    sub_1000302D8(a1, v6, &qword_100CBD080);
    sub_100017AA0();
    sub_100041A60();
    return swift_endAccess();
  }

  else
  {
    v12 = sub_100003984();
    return sub_10011C0F0(v12, v13, v14);
  }
}

uint64_t sub_10058A8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC6BD8);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  sub_1000304E0();
  sub_100024218();
  v10 = sub_10022C350(&qword_100CC6BC0);
  sub_1000038B4(v9, 1, v10);
  if (v11)
  {
    sub_1000180EC(v9, &qword_100CC6BD8);
    sub_10058AA2C();
    sub_1000302D8(a1, v6, &qword_100CC6BC0);
    sub_100017AA0();
    sub_100041A60();
    return swift_endAccess();
  }

  else
  {
    v12 = sub_100003984();
    return sub_10011C0F0(v12, v13, v14);
  }
}

void sub_10058AA2C()
{
  sub_10000C778();
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB2D08);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = (&v17 - v4);
  v6 = type metadata accessor for Expression();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v1();
  dispatch thunk of Table.query.getter();

  SubscriptionEntity.id.getter();
  dispatch thunk of Column.value.getter();

  if (v18)
  {
    sub_100010408(v18);
    == infix(_:_:)();
    sub_100006F14(&v19);
    sub_100014968();
    *v5 = v13 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    v5[1] = 0xE700000000000000;
    v14 = enum case for OrderBy.descending(_:);
    v15 = type metadata accessor for OrderBy();
    sub_1000037E8();
    (*(v16 + 104))(v5, v14, v15);
    sub_10001B350(v5, 0, 1, v15);
    dispatch thunk of Query.first(_:orderBy:)();

    sub_1000180EC(v5, &qword_100CB2D08);
    (*(v8 + 8))(v12, v6);
    sub_10000536C();
  }

  else
  {
    __break(1u);
  }
}

id sub_10058ACC0()
{
  v1 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    sub_100021524([v4 setDateStyle:1], "setTimeStyle:");
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10058AD54(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___fetchSchedule;
  v6 = sub_10022C350(&qword_100CBD080);
  sub_10000E830(&v2[v5], v7, v8, v6);
  v9 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___deliverySchedule;
  v10 = sub_10022C350(&qword_100CC6BC0);
  sub_10000E830(&v2[v9], v11, v12, v10);
  *&v2[OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter] = 0;
  *&v2[OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController_notificationStore] = a1;
  v13 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController_subscription;
  v14 = type metadata accessor for SubscriptionEntity();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v2[v13], a2, v14);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for DebugNotificationSubscriptionViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithStyle:", 2);
  (*(v15 + 8))(a2, v14);
  return v16;
}

void sub_10058AE94()
{
  v1 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___fetchSchedule;
  v2 = sub_10022C350(&qword_100CBD080);
  sub_10000E830(v0 + v1, v3, v4, v2);
  v5 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___deliverySchedule;
  v6 = sub_10022C350(&qword_100CC6BC0);
  sub_10000E830(v0 + v5, v7, v8, v6);
  *(v0 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10058AF60()
{
  v1 = v0;
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10000CC9C();
  v3 = sub_10022C350(&qword_100CBD088);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DebugNotificationSubscriptionViewController();
  v20.receiver = v0;
  v20.super_class = v7;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v8 = [v0 tableView];
  if (v8)
  {
    v9 = v8;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = String._bridgeToObjectiveC()();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

    SubscriptionEntity.location.getter();
    dispatch thunk of Column.value.getter();

    v12 = sub_10022C350(&qword_100CBD090);
    sub_1000038B4(v6, 1, v12);
    if (!v13)
    {
      JSON.value.getter();
      sub_100003B20();
      (*(v14 + 8))(v6, v12);
      v15 = Location.name.getter();
      v17 = v16;
      v18 = sub_100003984();
      v19(v18);
      sub_1003C1790(v15, v17, v1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10058B1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC6BC0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_10022C350(&qword_100CBD080);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_10000CC9C();
  switch(a2)
  {
    case 0:
      return 8;
    case 2:
      sub_10058A8A8(v7);
      v13 = type metadata accessor for DeliveryScheduleEntity();
      v14 = sub_100024D10(v7, 1, v13);
      sub_1000180EC(v7, &qword_100CC6BC0);
      if (v14 == 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }

    case 1:
      sub_10058A724(v2);
      ScheduleEntity = type metadata accessor for FetchScheduleEntity();
      v11 = sub_100024D10(v2, 1, ScheduleEntity);
      sub_1000180EC(v2, &qword_100CBD080);
      if (v11 == 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }

    default:
      return 0;
  }
}

unint64_t sub_10058B398(uint64_t a1, uint64_t a2)
{
  v2 = 0x6353206863746546;
  v3 = 0x6E6F697461636F4CLL;
  if (a2)
  {
    v3 = 0;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

id sub_10058B464(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      IndexPath.row.getter();
      sub_1000139C4();
      sub_10058C56C();
    }

    else if (IndexPath.section.getter() == 2)
    {
      IndexPath.row.getter();
      sub_1000139C4();
      sub_10058CB34();
    }
  }

  else
  {
    IndexPath.row.getter();
    sub_1000139C4();
    sub_10058BE3C();
  }

  return v4;
}

void sub_10058B648()
{
  sub_10000C778();
  v54 = v0;
  v2 = sub_10022C350(&qword_100CC6BC0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v53 - v4;
  v6 = type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v53[0] = v7;
  __chkstk_darwin(v8);
  sub_100003C38();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = sub_10022C350(&qword_100CB2D08);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003C38();
  v19 = (v17 - v18);
  __chkstk_darwin(v20);
  sub_10004E424();
  type metadata accessor for Expression();
  sub_1000037C4();
  v53[1] = v22;
  v53[2] = v21;
  __chkstk_darwin(v21);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = v53 - v27;
  if (IndexPath.section.getter() == 1 && IndexPath.row.getter() == 1)
  {
    v29 = v54;
    NotificationStore.fetchSchedules.getter();
    dispatch thunk of Table.query.getter();

    SubscriptionEntity.id.getter();
    dispatch thunk of Column.value.getter();

    if (v55)
    {
      sub_100010408(v55);
      == infix(_:_:)();
      sub_100006F14(v56);
      sub_100014968();
      *v1 = v30 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      v1[1] = 0xE700000000000000;
      v31 = enum case for OrderBy.descending(_:);
      v32 = type metadata accessor for OrderBy();
      sub_1000037E8();
      (*(v33 + 104))(v1, v31, v32);
      sub_10001B350(v1, 0, 1, v32);
      v34 = dispatch thunk of Query.where(_:orderBy:limit:)();

      sub_1000180EC(v1, &qword_100CB2D08);
      sub_10003C5FC();
      v35(v28);
      objc_allocWithZone(type metadata accessor for DebugNotificationFetchSchedulesViewController());
      v36 = sub_100987374(v34);
      v37 = [v29 navigationController];
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    if (IndexPath.section.getter() != 2)
    {
      goto LABEL_16;
    }

    if (!IndexPath.row.getter())
    {
      v1 = v54;
      sub_10058A8A8(v5);
      sub_1000038B4(v5, 1, v6);
      if (!v38)
      {
        v48 = v53[0];
        (*(v53[0] + 32))(v14, v5, v6);
        (*(v48 + 16))(v11, v14, v6);
        objc_allocWithZone(type metadata accessor for DebugNotificationDeliveryScheduleViewController());
        sub_1007BA4F4();
        v36 = v49;
        v50 = [v1 navigationController];
        if (v50)
        {
          v51 = v50;
          [v50 pushViewController:v36 animated:1];

          (*(v48 + 8))(v14, v6);
          goto LABEL_16;
        }

        (*(v48 + 8))(v14, v6);
        goto LABEL_15;
      }

      sub_1000180EC(v5, &qword_100CC6BC0);
    }

    if (IndexPath.row.getter() != 1)
    {
LABEL_16:
      sub_10000536C();
      return;
    }

    v39 = v54;
    NotificationStore.deliverySchedules.getter();
    dispatch thunk of Table.query.getter();

    SubscriptionEntity.id.getter();
    dispatch thunk of Column.value.getter();

    if (v55)
    {
      sub_100010408(v55);
      == infix(_:_:)();
      sub_100006F14(v56);
      sub_100014968();
      *v19 = v40 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      v19[1] = 0xE700000000000000;
      v41 = enum case for OrderBy.descending(_:);
      v42 = type metadata accessor for OrderBy();
      sub_1000037E8();
      (*(v43 + 104))(v19, v41, v42);
      sub_10001B350(v19, 0, 1, v42);
      v44 = dispatch thunk of Query.where(_:orderBy:limit:)();

      sub_1000180EC(v19, &qword_100CB2D08);
      sub_10003C5FC();
      v45(v25);
      objc_allocWithZone(type metadata accessor for DebugNotificationDeliverySchedulesViewController());
      v36 = sub_10078E880(v44);
      v37 = [v39 navigationController];
LABEL_13:
      v46 = v37;
      if (v46)
      {
        v47 = v46;
        [v46 pushViewController:v36 animated:1];
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  __break(1u);

  sub_1000180EC(v1, &qword_100CB2D08);
  sub_10003C5FC();
  v52(v28);
  swift_unexpectedError();
  __break(1u);
}

void sub_10058BE3C()
{
  sub_10000C778();
  v2 = v1;
  v60 = v3;
  type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  v51 = v5;
  v52 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v50 = v7 - v6;
  v55 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v53 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = sub_10022C350(&unk_100CB2CF0);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_100003C38();
  v54 = v15 - v16;
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v58 = v21;
  v59 = v20;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10000CC9C();
  v22 = sub_10022C350(&qword_100CBD088);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v49 - v24;
  type metadata accessor for Location();
  sub_1000037C4();
  v56 = v27;
  v57 = v26;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v30 = v29 - v28;
  SubscriptionEntity.location.getter();
  dispatch thunk of Column.value.getter();

  v31 = sub_10022C350(&qword_100CBD090);
  sub_1000038B4(v25, 1, v31);
  if (v32)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    JSON.value.getter();
    sub_100003B20();
    (*(v33 + 8))(v25, v31);
    static UIListContentConfiguration.valueCell()();
    switch(v2)
    {
      case 0:
        UIListContentConfiguration.text.setter();
        Location.id.getter();
        goto LABEL_17;
      case 1:
        UIListContentConfiguration.text.setter();
        Location.name.getter();
        goto LABEL_17;
      case 2:
        UIListContentConfiguration.text.setter();
        v34 = sub_10058ACC0();
        SubscriptionEntity.created.getter();
        dispatch thunk of Column.value.getter();
        v35 = type metadata accessor for Date();
        sub_1000038B4(v19, 1, v35);
        if (v32)
        {
          goto LABEL_20;
        }

        v36.super.isa = Date._bridgeToObjectiveC()().super.isa;
        sub_100003B20();
        (*(v37 + 8))(v19, v35);
        v38 = [v34 stringFromDate:v36.super.isa];

        goto LABEL_9;
      case 3:
        sub_100014978();
        v39 = sub_10058ACC0();
        SubscriptionEntity.modified.getter();
        v40 = v54;
        dispatch thunk of Column.value.getter();
        v41 = type metadata accessor for Date();
        sub_1000038B4(v40, 1, v41);
        if (v32)
        {
          goto LABEL_21;
        }

        v36.super.isa = Date._bridgeToObjectiveC()().super.isa;
        sub_100003B20();
        (*(v42 + 8))(v40, v41);
        v38 = [v39 stringFromDate:v36.super.isa];

LABEL_9:
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100003940();
        goto LABEL_17;
      case 4:
        sub_100014978();
        Location.timeZone.getter();
        TimeZone.identifier.getter();
        (*(v53 + 8))(v12, v55);
        goto LABEL_17;
      case 5:
        sub_100014978();
        sub_100018530();
        Location.coordinate.getter();
        goto LABEL_16;
      case 6:
        UIListContentConfiguration.text.setter();
        sub_100018530();
        Location.coordinate.getter();
LABEL_16:
        Double.write<A>(to:)();
LABEL_17:
        UIListContentConfiguration.secondaryText.setter();
        break;
      case 7:
        SubscriptionEntity.precipitation.getter();
        dispatch thunk of Column.value.getter();

        if (LOBYTE(v62[0]) == 3)
        {
          goto LABEL_22;
        }

        SubscriptionEntity.severe.getter();
        dispatch thunk of Column.value.getter();

        if (v61 == 3)
        {
          goto LABEL_23;
        }

        v43 = v50;
        NotificationSubscription.Kind.init(precipitation:severe:)();
        UIListContentConfiguration.text.setter();
        NotificationSubscription.Kind.description.getter();
        UIListContentConfiguration.secondaryText.setter();
        (*(v51 + 8))(v43, v52);
        break;
      default:
        break;
    }

    v44 = v59;
    v62[3] = v59;
    v62[4] = &protocol witness table for UIListContentConfiguration;
    v45 = sub_100042FB0(v62);
    v46 = v58;
    (*(v58 + 16))(v45, v0, v44);
    v47 = v60;
    UITableViewCell.contentConfiguration.setter();
    [v47 setSelectionStyle:0];
    (*(v46 + 8))(v0, v44);
    sub_10003C5FC();
    v48(v30);
    sub_10000536C();
  }
}

void sub_10058C56C()
{
  sub_10000C778();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&unk_100CB2CF0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  sub_10002FF34();
  __chkstk_darwin(v11);
  sub_100031DB0();
  __chkstk_darwin(v12);
  sub_10004E424();
  v13 = sub_10022C350(&qword_100CBD080);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000114FC();
  type metadata accessor for FetchScheduleEntity();
  sub_1000037C4();
  v58 = v16;
  v59 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_10000CC9C();
  static UIListContentConfiguration.subtitleCell()();
  if (v6 == 1)
  {
    v24 = sub_1000696E4();
    sub_100021524(v24, "setAccessoryType:");
    v23 = 3;
    goto LABEL_18;
  }

  if (v6)
  {
LABEL_19:
    v61[3] = v20;
    v61[4] = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(v61);
    sub_100025258();
    v51();
    UITableViewCell.contentConfiguration.setter();
    v52 = sub_100003984();
    v53(v52);
    sub_10000536C();
    return;
  }

  sub_10058A724(v3);
  sub_1000038B4(v3, 1, v59);
  if (v22)
  {
    sub_1000180EC(v3, &qword_100CBD080);
    sub_1000371D0();
    v23 = 0;
LABEL_18:
    [v8 setSelectionStyle:v23];
    goto LABEL_19;
  }

  v54 = v8;
  (*(v58 + 32))(v19, v3, v59);
  v61[0] = 91;
  v61[1] = 0xE100000000000000;
  FetchScheduleEntity.valid.getter();
  dispatch thunk of Column.value.getter();

  if (v60 == 2)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v60)
  {
    v25 = 0x64696C6156;
  }

  else
  {
    v25 = 0x64696C61766E49;
  }

  if (v60)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  v28._countAndFlagsBits = 8285;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v56 = v4;
  v29 = sub_10058ACC0();
  FetchScheduleEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v30 = type metadata accessor for Date();
  sub_1000038B4(v1, 1, v30);
  if (v22)
  {
    goto LABEL_21;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  sub_100003B20();
  v55 = *(v32 + 8);
  v55(v1, v30);
  v33 = [v29 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36._countAndFlagsBits = sub_100049994();
  v36._object = v35;
  String.append(_:)(v36);

  sub_10003A264();
  UIListContentConfiguration.text.setter();
  sub_100018530();
  _StringGuts.grow(_:)(25);

  sub_100014968();
  sub_100051ED4(v37);
  v38 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter;
  v39 = *(v56 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  FetchScheduleEntity.created.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v2, 1, v30);
  if (v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = Date._bridgeToObjectiveC()().super.isa;
  v55(v2, v30);
  v41 = [v39 stringFromDate:v40];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44._countAndFlagsBits = sub_100049994();
  v44._object = v43;
  String.append(_:)(v44);

  sub_100016B74();
  v45 = *(v56 + v38);
  FetchScheduleEntity.modified.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v57, 1, v30);
  if (!v22)
  {

    v46 = Date._bridgeToObjectiveC()().super.isa;
    v55(v57, v30);
    v47 = [v45 stringFromDate:v46];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50._countAndFlagsBits = sub_100049994();
    v50._object = v49;
    String.append(_:)(v50);

    sub_10003A264();
    UIListContentConfiguration.secondaryText.setter();
    (*(v58 + 8))(v19, v59);
    v23 = 0;
    v8 = v54;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_10058CB34()
{
  sub_10000C778();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&unk_100CB2CF0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  sub_10002FF34();
  __chkstk_darwin(v11);
  sub_100031DB0();
  __chkstk_darwin(v12);
  sub_10004E424();
  v13 = sub_10022C350(&qword_100CC6BC0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000114FC();
  type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v55 = v16;
  v56 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_10000CC9C();
  static UIListContentConfiguration.subtitleCell()();
  if (v6 == 1)
  {
    v22 = sub_1000696E4();
    sub_100021524(v22, "setAccessoryType:");
    [v8 setSelectionStyle:3];
    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    v57[3] = v20;
    v57[4] = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(v57);
    sub_100025258();
    v48();
    UITableViewCell.contentConfiguration.setter();
    v49 = sub_100003984();
    v50(v49);
    sub_10000536C();
    return;
  }

  sub_10058A8A8(v3);
  sub_1000038B4(v3, 1, v56);
  if (v26)
  {
    sub_1000180EC(v3, &qword_100CC6BC0);
    sub_1000371D0();
    [v8 setSelectionStyle:0];
    goto LABEL_12;
  }

  v51 = v8;
  (*(v55 + 32))(v19, v3, v56);
  v57[0] = 91;
  v57[1] = 0xE100000000000000;
  DeliveryScheduleEntity.state.getter();
  sub_10022C350(&qword_100CC6BC8);
  sub_10058D440();
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8285;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = sub_10058ACC0();
  DeliveryScheduleEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v53 = type metadata accessor for Date();
  sub_1000038B4(v1, 1, v53);
  if (v26)
  {
    __break(1u);
    goto LABEL_14;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  sub_100003B20();
  v52 = *(v28 + 8);
  v52(v1, v53);
  v29 = [v25 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = sub_100049994();
  v32._object = v31;
  String.append(_:)(v32);

  sub_10003A264();
  UIListContentConfiguration.text.setter();
  sub_100018530();
  _StringGuts.grow(_:)(25);

  sub_100014968();
  sub_100051ED4(v33);
  v34 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter;
  v35 = *(v4 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  DeliveryScheduleEntity.created.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v2, 1, v53);
  if (v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = Date._bridgeToObjectiveC()().super.isa;
  v52(v2, v53);
  v37 = [v35 stringFromDate:v36];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40._countAndFlagsBits = sub_100049994();
  v40._object = v39;
  String.append(_:)(v40);

  sub_100016B74();
  v41 = *(v4 + v34);
  DeliveryScheduleEntity.modified.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v54, 1, v53);
  if (!v26)
  {

    v42 = Date._bridgeToObjectiveC()().super.isa;
    v52(v54, v53);
    v43 = [v41 stringFromDate:v42];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46._countAndFlagsBits = sub_100049994();
    v46._object = v45;
    String.append(_:)(v46);

    sub_10003A264();
    v47 = UIListContentConfiguration.secondaryText.setter();
    sub_100021524(v47, "setAccessoryType:");
    [v51 setSelectionStyle:3];
    (*(v55 + 8))(v19, v56);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

id sub_10058D1A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugNotificationSubscriptionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugNotificationSubscriptionViewController()
{
  result = qword_100CC6BA0;
  if (!qword_100CC6BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10058D2F4()
{
  type metadata accessor for SubscriptionEntity();
  if (v0 <= 0x3F)
  {
    sub_10002C0CC(319, &qword_100CC6BB0, &qword_100CBD080);
    if (v1 <= 0x3F)
    {
      sub_10002C0CC(319, &qword_100CC6BB8, &qword_100CC6BC0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10058D440()
{
  result = qword_100CC6BD0;
  if (!qword_100CC6BD0)
  {
    sub_10022E824(&qword_100CC6BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6BD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptInUserStatus(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (*a1 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OptInUserStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_10058D5D4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10058D5F0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_10058D62C(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE49F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v20[-v7];
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  v22 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  sub_1001A00C8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, &v20[-v9]);
  v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v23 = *(v11 + *(type metadata accessor for NotificationsOptInState() + 64));
  sub_1001A00C8(v10, v8);
  v12 = type metadata accessor for CurrentLocation();
  v13 = sub_100024D10(v8, 1, v12);

  if (v13 == 1)
  {
    sub_10048E678(v8);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100169C48(v8);
  }

  sub_100019A80();
  sub_100141E5C();
  v21 = v14;

  sub_1001A00C8(v10, v5);
  if (sub_100024D10(v5, 1, v12) == 1)
  {
    sub_10048E678(v5);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100169C48(v5);
  }

  sub_100019A80();
  sub_100141E74();
  v16 = v15;

  v17 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v18 = sub_100141E8C(v23, v21 & 1, v16 & 1, *(v17 + 1), *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications), *(v17 + 2));

  sub_10048E678(v10);
  return v18;
}

uint64_t sub_10058D8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265735577656ELL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E49646574706FLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10058D9F4(char a1)
{
  if (!a1)
  {
    return 0x7265735577656ELL;
  }

  if (a1 == 1)
  {
    return 0x6E49646574706FLL;
  }

  return 0x64656E696C636564;
}

uint64_t sub_10058DA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265766F4377656ELL && a2 == 0xEB00000000656761;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000100AD5990 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001FLL && 0x8000000100AD59B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10058DB6C(char a1)
{
  if (!a1)
  {
    return 0x7265766F4377656ELL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_10058DBD4(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CC6C30);
  sub_1000037C4();
  v29 = v4;
  v30 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10022C350(&qword_100CC6C38);
  sub_1000037C4();
  v28 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_10022C350(&qword_100CC6C40);
  sub_1000037C4();
  v31 = v14;
  v32 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  sub_10022C350(&qword_100CC6C48);
  sub_1000037C4();
  v34 = v18;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000161C0(a1, a1[3]);
  sub_10058E8E0();
  v20 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20 == 2)
  {
    v41 = 1;
    sub_10058E988();
    sub_100008958();
    (*(v28 + 8))(v12, v8);
    goto LABEL_5;
  }

  if (v20 == 3)
  {
    v42 = 2;
    sub_10058E934();
    sub_100008958();
    (*(v29 + 8))(v7, v30);
LABEL_5:
    v21 = sub_100004540();
    return v22(v21);
  }

  v40 = 0;
  sub_10058E9DC();
  sub_100008958();
  v39 = 0;
  v24 = v32;
  v25 = v35;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v25)
  {
    v38 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = BYTE2(v20);
    v36 = 2;
    sub_10058EA84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v31 + 8))(v17, v24);
  v26 = sub_100004540();
  return v27(v26);
}

uint64_t sub_10058DF94(void *a1)
{
  v61 = sub_10022C350(&qword_100CC6BE8);
  sub_1000037C4();
  v58 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v59 = &v52 - v4;
  sub_10022C350(&qword_100CC6BF0);
  sub_1000037C4();
  v56 = v6;
  v57 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  sub_10022C350(&qword_100CC6BF8);
  sub_1000037C4();
  v60 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_10022C350(&qword_100CC6C00);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  v20 = a1[3];
  v62 = a1;
  v21 = sub_1000161C0(a1, v20);
  sub_10058E8E0();
  v22 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    goto LABEL_10;
  }

  v54 = v9;
  v55 = v13;
  v23 = v61;
  v63 = v16;
  v24 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v24, 0);
  if (v27 == v28 >> 1)
  {
LABEL_9:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_10022C350(&qword_100CA7610);
    *v39 = &type metadata for OptInUserStatus;
    v21 = v19;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v63 + 8))(v19, v14);
LABEL_10:
    v40 = v62;
LABEL_11:
    sub_100006F14(v40);
    return v21;
  }

  v53 = v19;
  if (v27 < (v28 >> 1))
  {
    v29 = *(v26 + v27);
    sub_100618E7C(v27 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          v69 = 1;
          sub_10058E988();
          v34 = v54;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v56 + 8))(v34, v57);
          v35 = sub_10001C65C();
          v36(v35);
          v21 = 2;
        }

        else
        {
          v70 = 2;
          sub_10058E934();
          v41 = v59;
          sub_100022DF4();
          swift_unknownObjectRelease();
          (*(v58 + 8))(v41, v23);
          v44 = sub_10001C65C();
          v45(v44);
          v21 = 3;
        }

        v40 = v62;
      }

      else
      {
        v68 = 0;
        sub_10058E9DC();
        sub_100022DF4();
        v67 = 0;
        v42 = KeyedDecodingContainer.decode(_:forKey:)();
        v43 = v63;
        v46 = v42;
        v66 = 1;
        v47 = KeyedDecodingContainer.decode(_:forKey:)();
        v64 = 2;
        sub_10058EA30();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v48 = v53;
        swift_unknownObjectRelease();
        v49 = sub_100010434();
        v50(v49);
        (*(v43 + 8))(v48, v14);
        if (v47)
        {
          v51 = 256;
        }

        else
        {
          v51 = 0;
        }

        v21 = v51 & 0xFFFFFFFE | v46 & 1 | (v65 << 16);
        v40 = v62;
      }

      goto LABEL_11;
    }

    v19 = v53;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10058E634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10058D8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10058E65C(uint64_t a1)
{
  v2 = sub_10058E8E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E698(uint64_t a1)
{
  v2 = sub_10058E8E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E6D4(uint64_t a1)
{
  v2 = sub_10058E934();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E710(uint64_t a1)
{
  v2 = sub_10058E934();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10058DA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10058E77C(uint64_t a1)
{
  v2 = sub_10058E9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E7B8(uint64_t a1)
{
  v2 = sub_10058E9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E7F4(uint64_t a1)
{
  v2 = sub_10058E988();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058E830(uint64_t a1)
{
  v2 = sub_10058E988();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10058E888@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10058DF94(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

unint64_t sub_10058E8E0()
{
  result = qword_100CC6C08;
  if (!qword_100CC6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C08);
  }

  return result;
}

unint64_t sub_10058E934()
{
  result = qword_100CC6C10;
  if (!qword_100CC6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C10);
  }

  return result;
}

unint64_t sub_10058E988()
{
  result = qword_100CC6C18;
  if (!qword_100CC6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C18);
  }

  return result;
}

unint64_t sub_10058E9DC()
{
  result = qword_100CC6C20;
  if (!qword_100CC6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C20);
  }

  return result;
}

unint64_t sub_10058EA30()
{
  result = qword_100CC6C28;
  if (!qword_100CC6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C28);
  }

  return result;
}

unint64_t sub_10058EA84()
{
  result = qword_100CC6C50;
  if (!qword_100CC6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C50);
  }

  return result;
}

_BYTE *sub_10058EAE8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_10058EBE8()
{
  result = qword_100CC6C58;
  if (!qword_100CC6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C58);
  }

  return result;
}

unint64_t sub_10058EC40()
{
  result = qword_100CC6C60;
  if (!qword_100CC6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C60);
  }

  return result;
}

unint64_t sub_10058EC98()
{
  result = qword_100CC6C68;
  if (!qword_100CC6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C68);
  }

  return result;
}

unint64_t sub_10058ECF0()
{
  result = qword_100CC6C70;
  if (!qword_100CC6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C70);
  }

  return result;
}

unint64_t sub_10058ED48()
{
  result = qword_100CC6C78;
  if (!qword_100CC6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C78);
  }

  return result;
}

unint64_t sub_10058EDA0()
{
  result = qword_100CC6C80;
  if (!qword_100CC6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C80);
  }

  return result;
}

unint64_t sub_10058EDF8()
{
  result = qword_100CC6C88;
  if (!qword_100CC6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C88);
  }

  return result;
}

unint64_t sub_10058EE50()
{
  result = qword_100CC6C90;
  if (!qword_100CC6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C90);
  }

  return result;
}

unint64_t sub_10058EEA8()
{
  result = qword_100CC6C98;
  if (!qword_100CC6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6C98);
  }

  return result;
}

unint64_t sub_10058EF00()
{
  result = qword_100CC6CA0[0];
  if (!qword_100CC6CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC6CA0);
  }

  return result;
}

void sub_10058EF68()
{
  type metadata accessor for LocationDynamicContentConfiguration();
  if (v0 <= 0x3F)
  {
    sub_10013DB50();
    if (v1 <= 0x3F)
    {
      sub_100137C80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10058F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v239 = a2;
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  v7 = v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationDynamicContentConfiguration();
  v9 = *(v2 + *(v8 + 28));
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000703C(v10, qword_100D90A90);
  (*(v5 + 16))(v7, v2, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v240 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v238 = v8;
    v16 = v15;
    *&v403 = v15;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v17 = Location.Identifier.name.getter();
    *&v237 = v3;
    v18 = v9;
    v20 = v19;
    (*(v5 + 8))(v7, v240);
    v21 = sub_100078694(v17, v20, &v403);

    *(v14 + 14) = v21;
    *(v14 + 22) = 1026;
    *(v14 + 24) = v18;
    v3 = v237;
    _os_log_impl(&_mh_execute_header, v11, v12, "LocationGridView: location=%{private,mask.hash}s wantsMapCell=%{BOOL,public}d", v14, 0x1Cu);
    sub_100006F14(v16);
    v8 = v238;

    v4 = v240;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v22 = *(v3 + *(v8 + 32));
  if (v22)
  {
    sub_1005909EC(&v399, v22, v4);
    *&v237 = *(&v399 + 1);
    v238 = v399;
    v235 = *(&v400 + 1);
    *&v236 = v400;
    LODWORD(v234) = v401;
    LODWORD(v233) = v402;
    v294 = v399;
    v295 = v400;
    v296 = v401;
    v297 = v402;
    sub_100011670();
    type metadata accessor for DefaultContentView();
    type metadata accessor for _ConditionalContent();
    sub_100011670();
    type metadata accessor for NoAqiNewsContentView();
    sub_100011670();
    v193 = type metadata accessor for SevereContentView();
    sub_100030500();
    v194 = type metadata accessor for _ConditionalContent();
    v192[1] = sub_1000163D4();
    sub_100011670();
    v195 = type metadata accessor for NhpContentView();
    sub_100011670();
    v197 = type metadata accessor for ElevatedAqiSevereContentView();
    v192[2] = sub_10002153C();
    sub_100011670();
    v198 = type metadata accessor for DefaultNewsContentView();
    sub_100011670();
    v199 = type metadata accessor for DefaultTrendNewsContentView();
    v201 = sub_10002153C();
    sub_1000371F0();
    v202 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v192[0] = type metadata accessor for _ConditionalContent();
    sub_100011670();
    v203 = type metadata accessor for ElevatedAqiNewsContentView();
    sub_100011670();
    v204 = type metadata accessor for NoAqiSevereNewsContentView();
    v200 = sub_10002153C();
    sub_100011670();
    v205 = type metadata accessor for NoAqiSevereNhpContentView();
    sub_100011670();
    v207 = type metadata accessor for NoAqiNhpNewsContentView();
    v208 = sub_10002153C();
    sub_1000371F0();
    v196 = type metadata accessor for _ConditionalContent();
    sub_100011670();
    v209 = type metadata accessor for SevereNhpContentView();
    sub_100011670();
    v210 = type metadata accessor for SevereNhpAqiContentView();
    v206 = sub_10002153C();
    sub_100011670();
    v211 = type metadata accessor for SevereNewsContentView();
    sub_100011670();
    v213 = type metadata accessor for NhpNewsContentView();
    v214 = sub_10002153C();
    sub_1000371F0();
    v216 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v217 = type metadata accessor for _ConditionalContent();
    sub_100024238();
    type metadata accessor for _ConditionalContent();
    sub_100011670();
    v218 = type metadata accessor for ElevatedAqiSevereNewsContentView();
    sub_100011670();
    v219 = type metadata accessor for NoAqiSevereNhpNewsContentView();
    sub_1000371F0();
    v215 = type metadata accessor for _ConditionalContent();
    sub_100011670();
    v220 = type metadata accessor for ElevatedAqiContentView();
    sub_100011670();
    v222 = type metadata accessor for NoAqiSevereContentView();
    sub_1000371F0();
    v223 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v212 = type metadata accessor for _ConditionalContent();
    sub_100011670();
    v224 = type metadata accessor for NoAqiNhpContentView();
    sub_100011670();
    v225 = type metadata accessor for NoAqiContentView();
    sub_1000371F0();
    v221 = type metadata accessor for _ConditionalContent();
    sub_100011670();
    v226 = type metadata accessor for SevereNhpNewsContentView();
    sub_100011670();
    v227 = type metadata accessor for MinorAlertContentView();
    sub_1000371F0();
    v228 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    v229 = type metadata accessor for _ConditionalContent();
    sub_100024238();
    type metadata accessor for _ConditionalContent();
    sub_100011670();
    v230 = type metadata accessor for NhpMinorAlertContentView();
    sub_100011670();
    v231 = type metadata accessor for ElevatedAqiMinorAlertContentView();
    sub_1000371F0();
    v232 = type metadata accessor for _ConditionalContent();
    sub_10002FF48();
    type metadata accessor for _ConditionalContent();
    v23 = type metadata accessor for _ConditionalContent();
    sub_1000208A8();
    WitnessTable = swift_getWitnessTable();
    v292 = &protocol witness table for EmptyView;
    v293 = WitnessTable;
    v25 = swift_getWitnessTable();
    sub_100017AE4();
    v26 = swift_getWitnessTable();
    sub_10006970C();
    v27 = swift_getWitnessTable();
    v290 = v26;
    v291 = v27;
    v28 = swift_getWitnessTable();
    v288 = v25;
    v289 = v28;
    v29 = swift_getWitnessTable();
    sub_100074C34();
    v30 = swift_getWitnessTable();
    sub_10002876C();
    v31 = swift_getWitnessTable();
    v286 = v30;
    v287 = v31;
    v32 = swift_getWitnessTable();
    sub_100004554();
    v33 = swift_getWitnessTable();
    sub_100014994();
    v34 = swift_getWitnessTable();
    v284 = v33;
    v285 = v34;
    v35 = swift_getWitnessTable();
    v282 = v32;
    v283 = v35;
    v36 = swift_getWitnessTable();
    v280 = v29;
    v281 = v36;
    v37 = swift_getWitnessTable();
    sub_10001C670();
    v38 = swift_getWitnessTable();
    sub_100051EE8();
    v39 = swift_getWitnessTable();
    v278 = v38;
    v279 = v39;
    v40 = swift_getWitnessTable();
    sub_100037BBC();
    v41 = swift_getWitnessTable();
    sub_10000EB60();
    v42 = swift_getWitnessTable();
    v276 = v41;
    v277 = v42;
    v43 = swift_getWitnessTable();
    v274 = v40;
    v275 = v43;
    v44 = swift_getWitnessTable();
    sub_10003C608();
    v45 = swift_getWitnessTable();
    sub_10004E720();
    v46 = swift_getWitnessTable();
    v272 = v45;
    v273 = v46;
    v47 = swift_getWitnessTable();
    sub_100016BA0();
    v48 = swift_getWitnessTable();
    sub_1000499A0();
    v49 = swift_getWitnessTable();
    v270 = v48;
    v271 = v49;
    v50 = swift_getWitnessTable();
    v268 = v47;
    v269 = v50;
    v51 = swift_getWitnessTable();
    v266 = v44;
    v267 = v51;
    v52 = swift_getWitnessTable();
    v264 = v37;
    v265 = v52;
    v53 = swift_getWitnessTable();
    sub_100008974();
    v54 = swift_getWitnessTable();
    sub_1000061EC();
    v55 = swift_getWitnessTable();
    v262 = v54;
    v263 = v55;
    v56 = swift_getWitnessTable();
    sub_100010448();
    v57 = swift_getWitnessTable();
    sub_10001F170();
    v58 = swift_getWitnessTable();
    v260 = v57;
    v261 = v58;
    v59 = swift_getWitnessTable();
    v258 = v56;
    v259 = v59;
    v60 = swift_getWitnessTable();
    sub_10002C864();
    v61 = swift_getWitnessTable();
    sub_10000CCA8();
    v62 = swift_getWitnessTable();
    v256 = v61;
    v257 = v62;
    v63 = swift_getWitnessTable();
    sub_100024868();
    v64 = swift_getWitnessTable();
    sub_1000139D4();
    v65 = swift_getWitnessTable();
    v254 = v64;
    v255 = v65;
    v66 = swift_getWitnessTable();
    v252 = v63;
    v253 = v66;
    v67 = swift_getWitnessTable();
    v250 = v60;
    v251 = v67;
    v68 = swift_getWitnessTable();
    sub_100022E14();
    v69 = swift_getWitnessTable();
    sub_100019A94();
    v70 = swift_getWitnessTable();
    v248 = v69;
    v249 = v70;
    v71 = swift_getWitnessTable();
    v246 = v68;
    v247 = v71;
    v72 = swift_getWitnessTable();
    v244 = v53;
    v245 = v72;
    v73 = swift_getWitnessTable();
    sub_1000833D8(&v294, v23, v73);
    sub_1005A6B08(v238, v237, v236, v235, v234, v233);
    v74 = v405;
    v75 = v406;
    v294 = v403;
    v295 = v404;
    v296 = v405;
    v297 = v406;
    sub_1000833D8(&v294, v23, v73);
    v76 = sub_10001EAB0();
    sub_1005A6B08(v76, v77, v78, v79, v74, v75);
    v80 = v401;
    v81 = v402;
    v82 = &_mh_execute_header;
    if (!v402)
    {
      BYTE4(v82) = 0;
    }

    v241[0] = v399;
    v241[1] = v400;
    v242 = v401;
    v243 = BYTE4(v82);
    sub_1003E7FD4(v241, &v294);
    v83 = sub_10001EAB0();
    sub_1005A6B08(v83, v84, v85, v86, v80, v81);
    v87 = v294;
    v88 = v295;
    v89 = v297;
    v90 = v296;
  }

  else
  {
    v399 = 0u;
    v400 = 0u;
    v401 = 0;
    v402 = -1;
    sub_10003168C();
    type metadata accessor for DefaultContentView();
    type metadata accessor for _ConditionalContent();
    sub_10003168C();
    type metadata accessor for NoAqiNewsContentView();
    sub_10003168C();
    v198 = type metadata accessor for SevereContentView();
    v199 = sub_1000163D4();
    sub_100011680();
    v196 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v200 = type metadata accessor for NhpContentView();
    sub_10003168C();
    v202 = type metadata accessor for ElevatedAqiSevereContentView();
    sub_100030500();
    v197 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v203 = type metadata accessor for DefaultNewsContentView();
    sub_10003168C();
    v204 = type metadata accessor for DefaultTrendNewsContentView();
    sub_100030500();
    v206 = type metadata accessor for _ConditionalContent();
    v207 = sub_10002153C();
    sub_1000371F0();
    v195 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v208 = type metadata accessor for ElevatedAqiNewsContentView();
    sub_10003168C();
    v209 = type metadata accessor for NoAqiSevereNewsContentView();
    sub_100030500();
    v205 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v210 = type metadata accessor for NoAqiSevereNhpContentView();
    sub_10003168C();
    v212 = type metadata accessor for NoAqiNhpNewsContentView();
    sub_100030500();
    v213 = type metadata accessor for _ConditionalContent();
    v201 = sub_10002153C();
    sub_10003168C();
    v214 = type metadata accessor for SevereNhpContentView();
    sub_10003168C();
    v215 = type metadata accessor for SevereNhpAqiContentView();
    sub_100030500();
    v211 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v216 = type metadata accessor for SevereNewsContentView();
    sub_10003168C();
    v218 = type metadata accessor for NhpNewsContentView();
    sub_100030500();
    v219 = type metadata accessor for _ConditionalContent();
    v221 = sub_10002153C();
    sub_1000371F0();
    v222 = type metadata accessor for _ConditionalContent();
    sub_10002526C();
    type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v223 = type metadata accessor for ElevatedAqiSevereNewsContentView();
    sub_10003168C();
    v224 = type metadata accessor for NoAqiSevereNhpNewsContentView();
    sub_100030500();
    v220 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v226 = type metadata accessor for ElevatedAqiContentView();
    sub_10003168C();
    v228 = type metadata accessor for NoAqiSevereContentView();
    sub_100030500();
    v229 = type metadata accessor for _ConditionalContent();
    sub_1000371F0();
    v217 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v230 = type metadata accessor for NoAqiNhpContentView();
    sub_10003168C();
    v231 = type metadata accessor for NoAqiContentView();
    sub_100030500();
    v227 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    v232 = type metadata accessor for SevereNhpNewsContentView();
    sub_10003168C();
    v233 = type metadata accessor for MinorAlertContentView();
    sub_100030500();
    v234 = type metadata accessor for _ConditionalContent();
    sub_10002526C();
    v235 = type metadata accessor for _ConditionalContent();
    sub_1000371F0();
    v225 = type metadata accessor for _ConditionalContent();
    sub_10003168C();
    *&v236 = type metadata accessor for NhpMinorAlertContentView();
    sub_10003168C();
    *&v237 = type metadata accessor for ElevatedAqiMinorAlertContentView();
    sub_10002526C();
    v238 = type metadata accessor for _ConditionalContent();
    sub_100030500();
    type metadata accessor for _ConditionalContent();
    type metadata accessor for _ConditionalContent();
    sub_1000208A8();
    v91 = swift_getWitnessTable();
    v397 = &protocol witness table for EmptyView;
    v398 = v91;
    v92 = swift_getWitnessTable();
    sub_100017AE4();
    v93 = swift_getWitnessTable();
    sub_10006970C();
    v94 = swift_getWitnessTable();
    v395 = v93;
    v396 = v94;
    v95 = swift_getWitnessTable();
    v393 = v92;
    v394 = v95;
    v96 = swift_getWitnessTable();
    sub_100074C34();
    v97 = swift_getWitnessTable();
    sub_10002876C();
    v98 = swift_getWitnessTable();
    v391 = v97;
    v392 = v98;
    v99 = swift_getWitnessTable();
    sub_100004554();
    v100 = swift_getWitnessTable();
    sub_100014994();
    v101 = swift_getWitnessTable();
    v389 = v100;
    v390 = v101;
    v102 = swift_getWitnessTable();
    v387 = v99;
    v388 = v102;
    v103 = swift_getWitnessTable();
    v385 = v96;
    v386 = v103;
    v104 = swift_getWitnessTable();
    sub_10001C670();
    v105 = swift_getWitnessTable();
    sub_100051EE8();
    v106 = swift_getWitnessTable();
    v383 = v105;
    v384 = v106;
    v107 = swift_getWitnessTable();
    sub_100037BBC();
    v108 = swift_getWitnessTable();
    sub_10000EB60();
    v109 = swift_getWitnessTable();
    v381 = v108;
    v382 = v109;
    v110 = swift_getWitnessTable();
    v379 = v107;
    v380 = v110;
    v111 = swift_getWitnessTable();
    sub_10003C608();
    v112 = swift_getWitnessTable();
    sub_10004E720();
    v113 = swift_getWitnessTable();
    v377 = v112;
    v378 = v113;
    v114 = swift_getWitnessTable();
    sub_100016BA0();
    v115 = swift_getWitnessTable();
    sub_1000499A0();
    v116 = swift_getWitnessTable();
    v375 = v115;
    v376 = v116;
    v117 = swift_getWitnessTable();
    v373 = v114;
    v374 = v117;
    v118 = swift_getWitnessTable();
    v371 = v111;
    v372 = v118;
    v119 = swift_getWitnessTable();
    v369 = v104;
    v370 = v119;
    v120 = swift_getWitnessTable();
    sub_100008974();
    v121 = swift_getWitnessTable();
    sub_1000061EC();
    v122 = swift_getWitnessTable();
    v367 = v121;
    v368 = v122;
    v123 = swift_getWitnessTable();
    sub_100010448();
    v124 = swift_getWitnessTable();
    sub_10001F170();
    v125 = swift_getWitnessTable();
    v365 = v124;
    v366 = v125;
    v126 = swift_getWitnessTable();
    v363 = v123;
    v364 = v126;
    v127 = swift_getWitnessTable();
    sub_10002C864();
    v128 = swift_getWitnessTable();
    sub_10000CCA8();
    v129 = swift_getWitnessTable();
    v361 = v128;
    v362 = v129;
    v130 = swift_getWitnessTable();
    sub_100024868();
    v131 = swift_getWitnessTable();
    sub_1000139D4();
    v132 = swift_getWitnessTable();
    v359 = v131;
    v360 = v132;
    v133 = swift_getWitnessTable();
    v357 = v130;
    v358 = v133;
    v134 = swift_getWitnessTable();
    v355 = v127;
    v356 = v134;
    v135 = swift_getWitnessTable();
    sub_100022E14();
    v136 = swift_getWitnessTable();
    sub_100019A94();
    v137 = swift_getWitnessTable();
    v353 = v136;
    v354 = v137;
    v138 = swift_getWitnessTable();
    v351 = v135;
    v352 = v138;
    v139 = swift_getWitnessTable();
    v349 = v120;
    v350 = v139;
    swift_getWitnessTable();
    sub_1003E7FD4(&v399, &v403);
    v87 = v403;
    v88 = v404;
    v89 = v406;
    v90 = v405;
  }

  v236 = v87;
  v237 = v88;
  v238 = v90 | (v89 << 32);
  v403 = v87;
  v404 = v88;
  v405 = v90;
  v406 = BYTE4(v238);
  sub_100031DC4();
  type metadata accessor for DefaultContentView();
  type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  type metadata accessor for NoAqiNewsContentView();
  sub_100031DC4();
  v196 = type metadata accessor for SevereContentView();
  sub_1000371F0();
  v197 = type metadata accessor for _ConditionalContent();
  v194 = sub_1000163D4();
  sub_100031DC4();
  v198 = type metadata accessor for NhpContentView();
  sub_100031DC4();
  v200 = type metadata accessor for ElevatedAqiSevereContentView();
  sub_100030500();
  v195 = type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  v201 = type metadata accessor for DefaultNewsContentView();
  sub_100031DC4();
  v202 = type metadata accessor for DefaultTrendNewsContentView();
  sub_100030500();
  v204 = type metadata accessor for _ConditionalContent();
  v205 = sub_10002153C();
  sub_10002FF48();
  v193 = type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  v206 = type metadata accessor for ElevatedAqiNewsContentView();
  sub_100031DC4();
  v207 = type metadata accessor for NoAqiSevereNewsContentView();
  sub_100030500();
  v203 = type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  v208 = type metadata accessor for NoAqiSevereNhpContentView();
  sub_100031DC4();
  v210 = type metadata accessor for NoAqiNhpNewsContentView();
  sub_100030500();
  v211 = type metadata accessor for _ConditionalContent();
  v199 = sub_10002153C();
  sub_100031DC4();
  v212 = type metadata accessor for SevereNhpContentView();
  sub_100031DC4();
  v213 = type metadata accessor for SevereNhpAqiContentView();
  sub_100030500();
  v209 = type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  v214 = type metadata accessor for SevereNewsContentView();
  sub_100031DC4();
  v216 = type metadata accessor for NhpNewsContentView();
  sub_100030500();
  v217 = type metadata accessor for _ConditionalContent();
  v219 = sub_10002153C();
  sub_10002FF48();
  v220 = type metadata accessor for _ConditionalContent();
  sub_100024238();
  type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  v221 = type metadata accessor for ElevatedAqiSevereNewsContentView();
  sub_100031DC4();
  v222 = type metadata accessor for NoAqiSevereNhpNewsContentView();
  v218 = sub_10002153C();
  sub_100031DC4();
  v223 = type metadata accessor for ElevatedAqiContentView();
  sub_100031DC4();
  v225 = type metadata accessor for NoAqiSevereContentView();
  v226 = sub_10002153C();
  sub_10002FF48();
  v215 = type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  v227 = type metadata accessor for NoAqiNhpContentView();
  sub_100031DC4();
  v228 = type metadata accessor for NoAqiContentView();
  v224 = sub_10002153C();
  sub_100031DC4();
  v229 = type metadata accessor for SevereNhpNewsContentView();
  sub_100031DC4();
  v230 = type metadata accessor for MinorAlertContentView();
  v231 = sub_10002153C();
  sub_10002FF48();
  v232 = type metadata accessor for _ConditionalContent();
  sub_100024238();
  type metadata accessor for _ConditionalContent();
  sub_100031DC4();
  v233 = type metadata accessor for NhpMinorAlertContentView();
  sub_100031DC4();
  v234 = type metadata accessor for ElevatedAqiMinorAlertContentView();
  v235 = sub_10002153C();
  sub_10002FF48();
  v240 = type metadata accessor for _ConditionalContent();
  sub_100030500();
  type metadata accessor for _ConditionalContent();
  v140 = type metadata accessor for Optional();
  sub_1000208A8();
  v141 = swift_getWitnessTable();
  v347 = &protocol witness table for EmptyView;
  v348 = v141;
  v142 = swift_getWitnessTable();
  sub_100017AE4();
  v143 = swift_getWitnessTable();
  sub_10006970C();
  v144 = swift_getWitnessTable();
  v345 = v143;
  v346 = v144;
  v145 = swift_getWitnessTable();
  v343 = v142;
  v344 = v145;
  v146 = swift_getWitnessTable();
  sub_100074C34();
  v147 = swift_getWitnessTable();
  sub_10002876C();
  v148 = swift_getWitnessTable();
  v341 = v147;
  v342 = v148;
  v149 = swift_getWitnessTable();
  sub_100004554();
  v150 = swift_getWitnessTable();
  sub_100014994();
  v151 = swift_getWitnessTable();
  v339 = v150;
  v340 = v151;
  v152 = swift_getWitnessTable();
  v337 = v149;
  v338 = v152;
  v153 = swift_getWitnessTable();
  v335 = v146;
  v336 = v153;
  v154 = swift_getWitnessTable();
  sub_10001C670();
  v155 = swift_getWitnessTable();
  sub_100051EE8();
  v156 = swift_getWitnessTable();
  v333 = v155;
  v334 = v156;
  v157 = swift_getWitnessTable();
  sub_100037BBC();
  v158 = swift_getWitnessTable();
  sub_10000EB60();
  v159 = swift_getWitnessTable();
  v331 = v158;
  v332 = v159;
  v160 = swift_getWitnessTable();
  v329 = v157;
  v330 = v160;
  v161 = swift_getWitnessTable();
  sub_10003C608();
  v162 = swift_getWitnessTable();
  sub_10004E720();
  v163 = swift_getWitnessTable();
  v327 = v162;
  v328 = v163;
  v164 = swift_getWitnessTable();
  sub_100016BA0();
  v165 = swift_getWitnessTable();
  sub_1000499A0();
  v166 = swift_getWitnessTable();
  v325 = v165;
  v326 = v166;
  v167 = swift_getWitnessTable();
  v323 = v164;
  v324 = v167;
  v168 = swift_getWitnessTable();
  v321 = v161;
  v322 = v168;
  v169 = swift_getWitnessTable();
  v319 = v154;
  v320 = v169;
  v170 = swift_getWitnessTable();
  sub_100008974();
  v171 = swift_getWitnessTable();
  sub_1000061EC();
  v172 = swift_getWitnessTable();
  v317 = v171;
  v318 = v172;
  v173 = swift_getWitnessTable();
  sub_100010448();
  v174 = swift_getWitnessTable();
  sub_10001F170();
  v175 = swift_getWitnessTable();
  v315 = v174;
  v316 = v175;
  v176 = swift_getWitnessTable();
  v313 = v173;
  v314 = v176;
  v177 = swift_getWitnessTable();
  sub_10002C864();
  v178 = swift_getWitnessTable();
  sub_10000CCA8();
  v179 = swift_getWitnessTable();
  v311 = v178;
  v312 = v179;
  v180 = swift_getWitnessTable();
  sub_100024868();
  v181 = swift_getWitnessTable();
  sub_1000139D4();
  v182 = swift_getWitnessTable();
  v309 = v181;
  v310 = v182;
  v183 = swift_getWitnessTable();
  v307 = v180;
  v308 = v183;
  v184 = swift_getWitnessTable();
  v305 = v177;
  v306 = v184;
  v185 = swift_getWitnessTable();
  sub_100022E14();
  v186 = swift_getWitnessTable();
  sub_100019A94();
  v187 = swift_getWitnessTable();
  v303 = v186;
  v304 = v187;
  v188 = swift_getWitnessTable();
  v301 = v185;
  v302 = v188;
  v189 = swift_getWitnessTable();
  v299 = v170;
  v300 = v189;
  v298 = swift_getWitnessTable();
  sub_10000898C();
  v190 = swift_getWitnessTable();
  sub_1000833D8(&v403, v140, v190);
  return sub_1005A6AF0(v236, *(&v236 + 1), v237, *(&v237 + 1), v238);
}