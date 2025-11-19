uint64_t sub_1000FE59C()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

__n128 sub_1000FE680@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = (a1 + 40);
  if (*(a1 + 48) < 2u || *(a1 + 49) == 3)
  {
    v6 = *(a1 + 16);
    *(v2 + 16) = *a1;
    *(v2 + 32) = v6;
    *(v2 + 48) = v3;
    v7 = *(a1 + 56);
    *(v2 + 56) = *v4;
    *(v2 + 72) = v7;
  }

  else if (*(v2 + 48) != 0xFF)
  {
    a1 = v2 + 16;
    v4 = (v2 + 56);
    v3 = *(v2 + 48);
  }

  result = *(a1 + 16);
  v10 = v4[1];
  v9 = *v4;
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  *(a2 + 56) = v10;
  *(a2 + 40) = v9;
  return result;
}

BOOL sub_1000FE700()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  sub_1000FE8B0();
  v4 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t sub_1000FE834(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 32);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    v6 = sub_1000039EC(*(a3 + 24));

    return sub_100024D10(v6, v7, v8);
  }
}

unint64_t sub_1000FE8B0()
{
  result = qword_100CA7020;
  if (!qword_100CA7020)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA7020);
  }

  return result;
}

uint64_t sub_1000FE91C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 32) = -a2;
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    v6 = sub_1000039EC(*(a4 + 24));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

void sub_1000FE994()
{
  sub_100170778();
  sub_10003275C();
  *v0 = v1;
}

uint64_t sub_1000FE9DC()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    UnfairLock.lock()();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Location.identifier.getter();
    swift_beginAccess();
    sub_1000FEC1C(v3, v6);
    swift_endAccess();

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    sub_10001B350(v6, 1, 1, v0);
  }

  sub_100018144(v6, &qword_100CADBA0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    UnfairLock.unlock()();
  }

  return result;
}

uint64_t sub_1000FEC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for Location.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1000675AC(&qword_100CA3A40, &type metadata accessor for Location.Identifier);
  v25 = a1;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_10001B350(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1000675AC(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006A1E20();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1000FEF54(v11);
  v14 = 0;
  *v16 = v26;
  return sub_10001B350(v15, v14, 1, v4);
}

uint64_t sub_1000FEEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CA61E0);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 28) + 8));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 24);

  return sub_100024D10(v9, a2, v8);
}

void sub_1000FEF54(int64_t a1)
{
  v3 = type metadata accessor for Location.Identifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_1000675AC(&qword_100CA3A40, &type metadata accessor for Location.Identifier);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

uint64_t sub_1000FF260()
{
  v1 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_10022C350(&qword_100CE29C8);
  sub_100003AE8(v11);
  v14 = (((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80)) + *(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = type metadata accessor for OSSignpostID();
  sub_100003810(v15);
  v16 = *(v0 + v14);
  v17 = swift_task_alloc();
  *(v26 + 16) = v17;
  *v17 = v26;
  v17[1] = sub_1000FE59C;
  sub_1000A7D8C();

  return sub_1000FF4F4(v18, v19, v20, v21, v22, v23, v24, v16);
}

unint64_t sub_1000FF4A0()
{
  result = qword_100CE22B8;
  if (!qword_100CE22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE22B8);
  }

  return result;
}

uint64_t sub_1000FF4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v18;
  *(v8 + 64) = v19;
  *(v8 + 216) = v17;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for Location();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = *(type metadata accessor for WeatherData(0) - 8);
  *(v8 + 104) = v11;
  *(v8 + 112) = *(v11 + 64);
  *(v8 + 120) = swift_task_alloc();
  sub_10022C350(&qword_100CE29C8);
  *(v8 + 128) = swift_task_alloc();
  v12 = type metadata accessor for NewsDataModel();
  *(v8 + 136) = v12;
  v13 = *(v12 - 8);
  *(v8 + 144) = v13;
  *(v8 + 152) = *(v13 + 64);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v14 = *(type metadata accessor for PreprocessedWeatherData() - 8);
  *(v8 + 176) = v14;
  *(v8 + 184) = *(v14 + 64);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1000FF74C, 0, 0);
}

uint64_t sub_1000FF74C()
{
  sub_100003B08();
  sub_1000161C0((v0[2] + 160), *(v0[2] + 184));
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_10012A7F4;
  v2 = v0[25];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1000FF7F4(v2, v3, v4);
}

uint64_t sub_1000FF7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[70] = v3;
  v4[69] = a3;
  v4[68] = a2;
  v4[67] = a1;
  v5 = type metadata accessor for Date();
  v4[71] = v5;
  v4[72] = *(v5 - 8);
  v4[73] = swift_task_alloc();

  return _swift_task_switch(sub_1000FF914, 0, 0);
}

unint64_t sub_1000FF8C0()
{
  result = qword_100CA60B8;
  if (!qword_100CA60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60B8);
  }

  return result;
}

uint64_t sub_1000FF914()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v36 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 536);
  sub_1000FFB84();
  sub_100010A34(v3 + 4, v3[7]);
  v5 = sub_100017B70();
  v35 = sub_1000FFCC0(v5, v6);
  sub_100010A34(v3 + 9, v3[12]);
  v7 = type metadata accessor for PreprocessedWeatherData();
  v8 = sub_10001F6C0();
  sub_1001146C8(v8, v9);
  sub_100010A34(v3 + 14, v3[17]);
  v10 = sub_10001F6C0();
  sub_100116468(v10, v11, v12);
  sub_100010A34(v3 + 19, v3[22]);
  v13 = sub_10001F6C0();
  sub_10011ECE4(v13, v14, v1, v15);
  sub_100010A34(v3 + 24, v3[27]);
  v16 = sub_100017B70();
  sub_100120938(v16, v17, v18);
  sub_100010A34(v3 + 29, v3[32]);
  v19 = sub_10001F6C0();
  sub_1001228F8(v19, v20, v21);
  sub_100010A34(v3 + 34, v3[37]);
  sub_100017B70();
  sub_100122EB0(v22);
  sub_100010A34(v3 + 39, v3[42]);
  sub_10001F6C0();
  sub_100123790(v23);
  sub_100010A34(v3 + 44, v3[47]);
  sub_100017B70();
  sub_10012499C(v24);
  sub_100010A34(v3 + 49, v3[52]);
  sub_10001F6C0();
  sub_100126AF4(v25, v1, v26);
  sub_100010A34(v3 + 54, v3[57]);
  v27 = sub_100017B70();
  sub_100127D64(v27, v28, v29);
  UUID.init()();
  (*(v2 + 8))(v1, v36);
  *(v4 + v7[5]) = v35;
  memcpy((v4 + v7[9]), (v0 + 248), 0x80uLL);
  v30 = (v4 + v7[11]);
  v31 = *(v0 + 488);
  v32 = *(v0 + 520);
  v30[1] = *(v0 + 504);
  v30[2] = v32;
  *v30 = v31;
  memcpy((v4 + v7[13]), (v0 + 16), 0xE8uLL);
  memcpy((v4 + v7[15]), (v0 + 376), 0x70uLL);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1000FFB84()
{
  swift_beginAccess();

  Atomic.wrappedValue.getter();
}

uint64_t sub_1000FFBDC()
{
  v0 = sub_1000FF8C0();
  sub_1000054C8(v0, &unk_100C49E78);

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_1000FFC4C()
{
}

uint64_t sub_1000FFCC0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v47 = a1;
  v2 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  v56 = v4 - v3;
  v57 = type metadata accessor for TemperatureScaleConfiguration();
  sub_1000037C4();
  v54 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v49 = v8 - v7;
  v50 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v48 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for TimeZone();
  v46 = v14;
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  type metadata accessor for Date();
  sub_1000037C4();
  v51 = v26;
  v52 = v25;
  __chkstk_darwin(v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v45 - v30;
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v20 + 8))(v24, v18);
  v32 = v53;
  Location.timeZone.getter();
  Date.startOfDay(timeZone:)();
  v33 = *(v58 + 8);
  v58 += 8;
  v33(v17, v14);
  v34 = v55;
  sub_1000161C0((v55 + 16), *(v55 + 40));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v35 = v49;
  AppConfiguration.temperatureScale.getter();
  (*(v48 + 8))(v13, v50);
  v36 = v56;
  TemperatureScaleConfiguration.gradient.getter();
  (*(v54 + 8))(v35, v57);
  v37 = sub_100100224(v36);
  sub_1000161C0((v34 + 56), *(v34 + 80));
  Location.timeZone.getter();
  v38 = v47;
  sub_1000FD610(v47, v17, 0, 10, 0);
  v33(v17, v46);
  v59 = v28;
  v60 = v38;
  v61 = v34;
  v62 = v32;
  v63 = v31;
  v64 = v37;
  sub_100100C4C();
  v40 = v39;

  v41 = *(v51 + 8);
  v42 = v28;
  v43 = v52;
  v41(v42, v52);
  v41(v31, v43);
  return v40;
}

uint64_t sub_100100164@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1E90 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CE1230);
  v3 = sub_10000703C(v2, qword_100D8F3A0);
  return sub_100060DE0(v3, a1, &qword_100CE1230);
}

void *sub_100100224(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureScaleConfiguration.ColorStop();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = TemperatureScaleConfiguration.Gradient.stops.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = a1;
    v41 = &_swiftEmptyArrayStorage;
    sub_1001005E0(0, v9, 0);
    v10 = sub_100100664();
    v11 = v41;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v39 = v13;
    v40 = v10;
    v14 = *(v12 + 64);
    v36 = v8;
    v15 = v8 + ((v14 + 32) & ~v14);
    v38 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v39(v7, v15, v2);
      v18._countAndFlagsBits = TemperatureScaleConfiguration.ColorStop.color.getter();
      isa = UIColor.init(hex:)(v18).super.isa;
      UIColor.rgbaComponents.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      TemperatureScaleConfiguration.ColorStop.location.getter();
      v29 = v28;
      (*v16)(v7, v2);
      v41 = v11;
      v31 = v11[2];
      v30 = v11[3];
      if (v31 >= v30 >> 1)
      {
        sub_1001005E0((v30 > 1), v31 + 1, 1);
        v11 = v41;
      }

      v11[2] = v31 + 1;
      v32 = &v11[5 * v31];
      v32[4] = v21;
      v32[5] = v23;
      v32[6] = v25;
      v32[7] = v27;
      v32[8] = v29;
      v15 += v38;
      --v9;
      v12 = v17;
    }

    while (v9);
    type metadata accessor for TemperatureScaleConfiguration.Gradient();
    sub_100003D98();
    (*(v33 + 8))(v37);
  }

  else
  {

    type metadata accessor for TemperatureScaleConfiguration.Gradient();
    sub_100003D98();
    (*(v34 + 8))(a1);
    return &_swiftEmptyArrayStorage;
  }

  return v11;
}

char *sub_1001004A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_1001005E0(char *a1, int64_t a2, char a3)
{
  result = sub_1001004A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10010063C()
{
  sub_10000FE4C();
  v0 = sub_1001006A8();
  return sub_100005F94(v0);
}

unint64_t sub_100100664()
{
  result = qword_100CB8BA0;
  if (!qword_100CB8BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB8BA0);
  }

  return result;
}

unint64_t sub_1001006C8()
{
  result = qword_100CA60F8;
  if (!qword_100CA60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60F8);
  }

  return result;
}

uint64_t sub_10010071C(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_1000746B4();

      return sub_100016748();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100100844(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_100100890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000EB3AC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_1001008F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_100003810(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001009A8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  return 0;
}

void *sub_100100A18@<X0>(void *a1@<X8>)
{
  sub_1000EF7D4();
  EnvironmentValues.subscript.getter();
  return memcpy(a1, __src, 0x48uLL);
}

void sub_100100A6C()
{
  sub_10000E8AC();
  v30 = v2;
  v31 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v32 = v10;
  v12 = v11(0);
  v13 = sub_100003AE8(v12);
  v15 = v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = *(v9 + 16);
  if (v18)
  {
    v19 = sub_100021788();
    v28 = v6;
    v6(v19, v18, 0);
    v20 = v4(0);
    sub_100003AE8(v20);
    v22 = v9 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v29 = *(v23 + 72);
    while (1)
    {
      v31(v22);
      if (v7)
      {
        break;
      }

      v7 = 0;
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        v28(v24 > 1, v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      sub_100011468();
      sub_100114640(v17, _swiftEmptyArrayStorage + v26 + *(v15 + 72) * v25, v30);
      v22 += v29;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_10002FE90();
    sub_10000C8F4();
  }
}

uint64_t sub_100100D18(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1000EF7D4();
  return EnvironmentValues.subscript.setter();
}

void sub_100100D90()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v1 <= 0x3F)
    {
      sub_100100F0C(319, &qword_100CBB7C8, sub_10000F868, &type metadata accessor for Measurement);
      if (v2 <= 0x3F)
      {
        sub_100007760();
        if (v3 <= 0x3F)
        {
          sub_100100F0C(319, &unk_100CD0E80, &type metadata accessor for Precipitation, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100100F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100100F70()
{
  sub_10000C778();
  v1 = v0;
  v58 = v2;
  type metadata accessor for LocationModel();
  sub_1000037C4();
  v59 = v3;
  v60 = v4;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v51 = v6 - v5;
  v7 = type metadata accessor for LocationViewerViewModel();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_100003984();
  sub_10022C350(v12);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = (&v47 - v14);
  v52 = sub_10022C350(&qword_100CC9A30);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v47 = &v47 - v17;
  v55 = sub_10022C350(&qword_100CC9A38);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  v53 = &v47 - v19;
  sub_10022C350(&qword_100CC9A40);
  sub_1000037C4();
  v56 = v20;
  v57 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v54 = &v47 - v23;
  *v15 = static Alignment.center.getter();
  v15[1] = v24;
  v25 = sub_10022C350(&qword_100CC9A48);
  sub_100103E98(v0, v15 + *(v25 + 44));
  Solarium.init()();
  v63 = v0;
  sub_10022C350(&qword_100CC9A50);
  sub_10001E6B0();
  sub_1005F6F6C(v26);
  sub_1005F0710();
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v15, &qword_100CC9A28);
  v49 = *(v0 + *(type metadata accessor for MeasuredLocationViewerView(0) + 28) + 8);
  sub_100104794();
  v27 = v60;
  v48 = *(v60 + 16);
  v28 = v51;
  v29 = v59;
  v48(v51, v11, v59);
  sub_1001095D0();
  v30 = LocationModel.name.getter();
  v32 = v31;
  v33 = *(v27 + 8);
  v60 = v27 + 8;
  v50 = v33;
  v33(v28, v29);
  v34 = v47;
  v35 = &v47[*(v52 + 36)];
  *v35 = v30;
  v35[1] = v32;
  Solarium.init()();
  v62 = v1;
  sub_10022C350(&qword_100CC9A78);
  sub_1005F07FC();
  sub_1005F0964();
  v36 = v53;
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v34, &qword_100CC9A30);
  sub_100104794();
  v37 = v59;
  v48(v28, v11, v59);
  sub_1001095D0();
  v38 = v36 + *(sub_10022C350(&qword_100CC9AB0) + 36);
  LocationModel.coalesceLocationIdentifier.getter();
  v50(v28, v37);
  v39 = v38 + *(type metadata accessor for LocationViewerFullscreenMapPresentationSourceModifier(0) + 20);
  KeyPath = swift_getKeyPath();
  v66 = 0;
  *v39 = KeyPath;
  *(v39 + 72) = 0;
  v41 = v36 + *(sub_10022C350(&qword_100CC9AB8) + 36);
  *v41 = sub_100104614;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  v42 = v55;
  v43 = v36 + *(v55 + 36);
  *v43 = sub_100109BBC;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  v44 = sub_1005F0A1C();
  View.enableForegroundEffects()();
  sub_100018198(v36, &qword_100CC9A38);
  Solarium.init()();
  v61 = v1;
  sub_10022C350(&qword_100CC9AF0);
  v64 = v42;
  v65 = v44;
  swift_getOpaqueTypeConformance2();
  sub_1005F0C74();
  View.staticIf<A, B>(_:then:)();
  v45 = sub_100003984();
  v46(v45);
  sub_10000536C();
}

uint64_t sub_1001015CC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1007DB27C();
  sub_10022C350(&qword_100CDA2B0);
  sub_1000037E8();
  v4 = sub_1000053B8();
  v5(v4);
  result = sub_10022C350(&qword_100CDA2B8);
  v7 = a1 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1001016D4@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, void (*a3)(char *, uint64_t)@<X4>, void (*a4)(char *, char *, uint64_t)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v135 = a5;
  v124 = a4;
  v125 = a3;
  v142 = a2;
  v136 = a1;
  v134 = a6;
  v150 = type metadata accessor for WeatherFormatPlaceholder();
  v162 = *(v150 - 8);
  __chkstk_darwin(v150);
  v133 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v159 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v128 = &v112 - v9;
  v130 = type metadata accessor for Calendar();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v152 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  __chkstk_darwin(v163);
  v149 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CB5F98);
  __chkstk_darwin(v12 - 8);
  v158 = &v112 - v13;
  v118 = type metadata accessor for WeatherConditionIcon();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for TimeZone();
  v119 = *(v157 - 8);
  __chkstk_darwin(v157);
  v153 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v112 - v17;
  v161 = sub_10022C350(&qword_100CA53F8);
  v148 = *(v161 - 8);
  __chkstk_darwin(v161);
  v156 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v160 = &v112 - v21;
  __chkstk_darwin(v22);
  v147 = &v112 - v23;
  __chkstk_darwin(v24);
  v146 = &v112 - v25;
  v138 = type metadata accessor for CurrentWeather();
  v137 = *(v138 - 1);
  __chkstk_darwin(v138);
  v115 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v112 - v28;
  v30 = type metadata accessor for Precipitation();
  v144 = *(v30 - 8);
  v145 = v30;
  __chkstk_darwin(v30);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for WeatherCondition();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v151 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v141 = &v112 - v39;
  __chkstk_darwin(v40);
  v42 = &v112 - v41;
  DayWeather.date.getter();
  v43 = static Date.== infix(_:_:)();
  v114 = v36;
  v44 = *(v36 + 8);
  v154 = v35;
  v140 = v36 + 8;
  v139 = v44;
  v44(v42, v35);
  v45 = v43 & 1;
  v143 = v34;
  DayWeather.conditionOfRelevance(isToday:)();
  v155 = v32;
  DayWeather.precipitationOfRelevance(isToday:)();
  if (v43)
  {
    type metadata accessor for WeatherData(0);
    WeatherDataModel.currentWeather.getter();
    LODWORD(v113) = CurrentWeather.isDaylight.getter();
    (*(v137 + 8))(v29, v138);
  }

  else
  {
    LODWORD(v113) = 1;
  }

  Double.roundedPrecipitationPercent.getter();
  v47 = v46;
  v48 = v146;
  DayWeather.lowTemperature.getter();
  v49 = v147;
  DayWeather.highTemperature.getter();
  DayWeather.date.getter();
  Location.timeZone.getter();
  v123 = sub_1001028B4(v47, v42, v143, v155, v48, v49, v45);
  v122 = v50;
  v51 = v119;
  v52 = *(v119 + 8);
  v121 = v119 + 8;
  v120 = v52;
  v52(v18, v157);
  v53 = v154;
  v139(v42, v154);
  v54 = v141;
  DayWeather.date.getter();
  v112 = *(v114 + 16);
  v112(v151, v124, v53);
  Location.timeZone.getter();
  v55 = (v148 + 16);
  v56 = *(v148 + 16);
  v57 = v161;
  v56(v160, v48, v161);
  v125 = v55;
  v124 = v56;
  v56(v156, v49, v57);
  v58 = v116;
  WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
  v114 = WeatherConditionIcon.name.getter();
  v113 = v59;
  (*(v117 + 8))(v58, v118);
  v118 = WeatherCondition.description.getter();
  v117 = v60;
  LODWORD(v116) = WeatherCondition.isPrecipitation.getter();
  v61 = v145;
  v62 = v158;
  v63 = v54;
  (*(v144 + 16))(v158, v155, v145);
  sub_10001B350(v62, 0, 1, v61);
  type metadata accessor for WeatherData(0);
  v64 = v115;
  WeatherDataModel.currentWeather.getter();
  v65 = CurrentWeather.isDaylight.getter();
  (*(v137 + 8))(v64, v138);
  v66 = v153;
  v67 = *(v142 + 96);
  v68 = v149;
  v112(v149, v63, v154);
  (*(v51 + 16))(&v68[v163[7]], v66, v157);
  static Calendar.currentCalendar(with:)();
  if (Calendar.isDateInToday(_:)() & 1) != 0 || (v67 & 1) != 0 && (Calendar.isDate(_:inSameDayAs:)())
  {
    v69 = [objc_opt_self() mainBundle];
    v164._object = 0x8000000100AC6200;
    v70._countAndFlagsBits = 0x7961646F54;
    v71._object = 0x8000000100AC61E0;
    v164._countAndFlagsBits = 0xD000000000000044;
    v71._countAndFlagsBits = 0xD000000000000015;
    v70._object = 0xE500000000000000;
    v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v69, v70, v164);

    v73 = v163;
    *&v68[v163[5]] = v72;
    *&v68[v73[6]] = v72;
  }

  else
  {
    v74 = Date.shortDayOfWeek(timeZone:isStandalone:)();
    v75 = v163;
    v76 = &v68[v163[5]];
    *v76 = v74;
    v76[1] = v77;
    v78 = Date.dayOfWeek(timeZone:context:)();
    v79 = &v68[v75[6]];
    *v79 = v78;
    v79[1] = v80;
  }

  v81 = v163;
  v82 = v161;
  v83 = v124;
  v124(&v68[v163[8]], v160, v161);
  v83(&v68[v81[9]], v156, v82);
  v84 = &v68[v81[10]];
  v85 = v113;
  *v84 = v114;
  v84[1] = v85;
  v86 = &v68[v81[11]];
  v87 = v117;
  *v86 = v118;
  v86[1] = v87;
  v68[v81[13]] = v116 & 1;
  *&v68[v81[12]] = v47;
  *&v68[v81[14]] = Double.formattedPercent(roundToNearestPercent:)(1);
  sub_10011422C(v158, &v68[v81[15]]);
  v68[v81[16]] = v65 & 1;
  v88 = v128;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v125 = *(v131 + 1);
  v89 = v132;
  v125(v88, v132);
  LODWORD(v142) = enum case for WeatherFormatPlaceholder.none(_:);
  v138 = *(v162 + 104);
  v90 = v133;
  v138(v133);
  v137 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v136 = sub_100114168();
  v124 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v119 = v91;

  v92 = *(v162 + 8);
  v162 += 8;
  v131 = v92;
  v93 = v150;
  v92(v90, v150);
  v94 = v125;
  v125(v159, v89);
  v95 = &v68[v163[17]];
  v96 = v119;
  *v95 = v124;
  *(v95 + 1) = v96;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v94(v88, v89);
  v97 = v93;
  (v138)(v90, v142, v93);
  static UnitManager.standard.getter();
  v98 = v159;
  v99 = v161;
  v100 = v156;
  v142 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v138 = v101;

  v131(v90, v97);
  v94(v98, v89);
  (*(v129 + 8))(v152, v130);
  sub_1000180EC(v158, &qword_100CB5F98);
  v102 = *(v148 + 8);
  v102(v100, v99);
  v102(v160, v99);
  v120(v153, v157);
  v103 = v154;
  v104 = v139;
  v139(v151, v154);
  v104(v141, v103);
  v102(v147, v99);
  v102(v146, v99);
  (*(v144 + 8))(v155, v145);
  (*(v126 + 8))(v143, v127);
  v105 = v163;
  v106 = v149;
  v107 = &v149[v163[18]];
  v108 = v138;
  *v107 = v142;
  v107[1] = v108;
  *(v106 + v105[20]) = v135;
  v109 = (v106 + v105[19]);
  v110 = v122;
  *v109 = v123;
  v109[1] = v110;
  sub_10011429C(v106, v134, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
}

uint64_t sub_100102814()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29B0 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  byte_100CD9418 = v0 & 1;
  return result;
}

uint64_t sub_1001028B4(Swift::Double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v85 = a4;
  v86 = a6;
  v90 = a5;
  v9 = type metadata accessor for WeatherFormatPlaceholder();
  v87 = *(v9 - 8);
  v88 = v9;
  __chkstk_darwin(v9);
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v11 - 8);
  v82 = &v72 - v12;
  v84 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v89 = *(v84 - 8);
  __chkstk_darwin(v84);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    v15 = [objc_opt_self() mainBundle];
    v95._object = 0x8000000100AC62C0;
    v16._countAndFlagsBits = 0x7961646F54;
    v95._countAndFlagsBits = 0xD00000000000006DLL;
    v16._object = 0xE500000000000000;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v95);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;
  }

  else
  {
    countAndFlagsBits = Date.dayOfWeek(timeZone:context:)();
    object = v21;
  }

  sub_100109810();
  v23 = v22;
  v24 = *(v22 + 16);
  if (v24 >= *(v22 + 24) >> 1)
  {
    sub_100109810();
    v23 = v67;
  }

  *(v23 + 16) = v24 + 1;
  v25 = v23;
  v26 = v23 + 16 * v24;
  *(v26 + 32) = countAndFlagsBits;
  *(v26 + 40) = object;
  if ((WeatherCondition.isPrecipitation.getter() & 1) != 0 && (v27 = Precipitation.accessibilityDescription(with:)(a1), v27.value._object))
  {
    v28 = v27.value._countAndFlagsBits;
    v29 = v27.value._object;
    v93 = WeatherCondition.description.getter();
    v94 = v30;
    v91 = Precipitation.accessibilityDescription.getter();
    v92 = v31;
    sub_10002D5A4();
    v32 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

    if (v32)
    {
      v33 = WeatherCondition.description.getter();
      v35 = v34;
      v36 = *(v25 + 16);
      v37 = v36 + 1;
      if (v36 >= *(v25 + 24) >> 1)
      {
        sub_100109810();
        v25 = v71;
      }

      *(v25 + 16) = v37;
      v38 = v25 + 16 * v36;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
    }

    else
    {
      v37 = *(v25 + 16);
    }

    v40 = v37 + 1;
    if (v37 >= *(v25 + 24) >> 1)
    {
      sub_100109810();
      v25 = v70;
    }
  }

  else
  {
    v28 = WeatherCondition.description.getter();
    v29 = v39;
    v37 = *(v25 + 16);
    v40 = v37 + 1;
    if (v37 >= *(v25 + 24) >> 1)
    {
      sub_100109810();
      v25 = v69;
    }
  }

  v85 = v25;
  *(v25 + 16) = v40;
  v41 = v25 + 16 * v37;
  *(v41 + 32) = v28;
  *(v41 + 40) = v29;
  v42 = [objc_opt_self() mainBundle];
  v96._object = 0x8000000100AC6270;
  v43._object = 0x8000000100AC6250;
  v96._countAndFlagsBits = 0xD00000000000004FLL;
  v43._countAndFlagsBits = 0xD000000000000015;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v96);
  v80 = v45._object;
  v81 = v45._countAndFlagsBits;

  sub_10022C350(&qword_100CA40C8);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100A2D320;
  static Set<>.value.getter();
  v79 = type metadata accessor for Locale();
  v47 = v82;
  sub_10001B350(v82, 1, 1, v79);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1000180EC(v47, &qword_100CAA9F0);
  v78 = enum case for WeatherFormatPlaceholder.none(_:);
  v48 = v87;
  v49 = v88;
  v77 = *(v87 + 104);
  v50 = v83;
  v77(v83);
  v76 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v75 = sub_10022C350(&qword_100CA53F8);
  v74 = sub_100114168();
  v51 = v84;
  v52 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v73 = v53;

  v87 = *(v48 + 8);
  (v87)(v50, v49);
  v89 = *(v89 + 8);
  (v89)(v14, v51);
  *(v46 + 56) = &type metadata for String;
  v86 = sub_100035744();
  *(v46 + 64) = v86;
  v54 = v73;
  *(v46 + 32) = v52;
  *(v46 + 40) = v54;
  static Set<>.value.getter();
  sub_10001B350(v47, 1, 1, v79);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1000180EC(v47, &qword_100CAA9F0);
  (v77)(v50, v78, v49);
  static UnitManager.standard.getter();
  v55 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v57 = v56;

  (v87)(v50, v49);
  (v89)(v14, v51);
  v58 = v86;
  *(v46 + 96) = &type metadata for String;
  *(v46 + 104) = v58;
  *(v46 + 72) = v55;
  *(v46 + 80) = v57;
  v59 = String.init(format:_:)();
  v61 = v60;

  v62 = v85;
  v63 = *(v85 + 16);
  if (v63 >= *(v85 + 24) >> 1)
  {
    sub_100109810();
    v62 = v68;
  }

  *(v62 + 16) = v63 + 1;
  v64 = v62 + 16 * v63;
  *(v64 + 32) = v59;
  *(v64 + 40) = v61;
  v93 = v62;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v65 = BidirectionalCollection<>.joined(separator:)();

  return v65;
}

uint64_t sub_100103084()
{
  v1 = type metadata accessor for Access();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for FeatureState();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000101A4();
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = &enum case for FeatureState.disabled(_:);
  if (v13)
  {
    v14 = &enum case for FeatureState.enabled(_:);
  }

  (*(v10 + 104))(v0, *v14, v8);
  sub_10022C350(&qword_100CC74A0);
  (*(v3 + 104))(v7, enum case for Access.protected(_:), v1);
  result = Setting<>.init(_:defaultValue:access:)();
  qword_100D91270 = result;
  return result;
}

uint64_t sub_100103254()
{
  sub_10000FE4C();
  v0 = sub_10010327C();
  return sub_100005F94(v0);
}

uint64_t sub_10010329C(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

unint64_t sub_1001032E4()
{
  result = qword_100CD95A8;
  if (!qword_100CD95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD95A8);
  }

  return result;
}

unint64_t sub_1001033C4()
{
  result = qword_100CA6138;
  if (!qword_100CA6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6138);
  }

  return result;
}

uint64_t sub_100103438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v3 = type metadata accessor for PageControlDisplayStateModifier(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10022C350(&qword_100CCAA48);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  LOBYTE(v20) = sub_1001038B0() & 1;
  sub_1005F1770(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_100103E40(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = sub_10022C350(&qword_100CCAA50);
  v14 = sub_1005F6F6C(&unk_100CCAA58);
  View.onChange<A>(of:initial:_:)();

  v15 = (v2 + *(v4 + 32));
  v17 = *v15;
  v16 = v15[1];
  v20 = v17;
  v21 = v16;
  sub_10022C350(&qword_100CCAA60);
  State.wrappedValue.getter();
  type metadata accessor for PageControlDisplayState(0);
  v20 = v13;
  v21 = &type metadata for Bool;
  v22 = v14;
  v23 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_1000EA178(&unk_100CCA1B8);
  View.environment<A>(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100103770()
{
  type metadata accessor for PageControlDisplayStateModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000EBD74(*v3, *(v3 + 8));
  v4 = *(v0 + 20);
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100017854(v3 + v4))
    {
      sub_100003D20();
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001038B0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  type metadata accessor for PageControlDisplayStateModifier(0);
  v35 = v0;
  sub_10009D114();
  v19 = v4;
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.compact(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028);
  sub_1000302D8(v15, &v9[v20], &qword_100CA6028);
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    if (sub_100024D10(&v9[v20], 1, v3) == 1)
    {
      sub_100018198(v9, &qword_100CA6028);
LABEL_12:
      v26 = 0;
      return v26 & 1;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v9, v12, &qword_100CA6028);
  if (sub_100024D10(&v9[v20], 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v19 + 8))(v12, v3);
LABEL_6:
    sub_100018198(v9, &qword_100CA64E8);
    goto LABEL_7;
  }

  v27 = v34;
  (*(v19 + 32))(v34, &v9[v20], v3);
  sub_1000EA178(&qword_100CA6088);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v19 + 8);
  v29(v27, v3);
  sub_100018198(v15, &qword_100CA6028);
  sub_100018198(v18, &qword_100CA6028);
  v29(v12, v3);
  sub_100018198(v9, &qword_100CA6028);
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_7:
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 != 1)
  {
    goto LABEL_12;
  }

  v23 = *v35;
  if (*(v35 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v25 = v31;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v23, 0);
    (*(v32 + 8))(v25, v33);
    LOBYTE(v23) = v36;
  }

  v26 = v23 ^ 1;
  return v26 & 1;
}

uint64_t sub_100103E40(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100103E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v48 = a2;
  v2 = type metadata accessor for MeasuredLocationViewerView(0);
  v3 = v2 - 8;
  v52 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v4;
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v51);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v45 - v7;
  v46 = type metadata accessor for LocationModel();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Location.Identifier();
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocationViewerViewModel();
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  sub_100104794();
  v21 = *&v20[*(v15 + 56)];

  sub_1001095D0();
  sub_100104794();
  v22 = v46;
  (*(v8 + 16))(v10, v17, v46);
  sub_1001095D0();
  LocationModel.identifier.getter();
  (*(v8 + 8))(v10, v22);
  v23 = Location.Identifier.id.getter();
  v25 = v24;
  v26 = v13;
  v27 = v48;
  (*(v11 + 8))(v26, v47);
  sub_100109678(v23, v25, v21);
  v28 = v45;

  v29 = *(v3 + 60);
  v30 = type metadata accessor for LocationViewBannerContainer(0);
  sub_10042F370(v28 + v29, v27 + v30[5]);
  v31 = v27 + v30[6];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  v32 = v30[7];
  *(v27 + v32) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v33 = v30[8];
  *(v27 + v33) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  if (qword_100CA2320 != -1)
  {
    swift_once();
  }

  v34 = sub_10000703C(v51, qword_100CC9760);
  v35 = v49;
  sub_1005F1770(v34, v49);
  sub_1005F1770(v35, v50);
  State.init(wrappedValue:)();
  sub_1001095D0();
  v36 = v28;
  v37 = v54;
  sub_1005F1770(v36, v54);
  v38 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v39 = swift_allocObject();
  sub_100103E40(v37, v39 + v38);
  v40 = static Alignment.center.getter();
  v42 = v41;
  result = sub_10022C350(&qword_100CC9B18);
  v44 = (v27 + *(result + 36));
  *v44 = sub_10010DCAC;
  v44[1] = v39;
  v44[2] = v40;
  v44[3] = v42;
  return result;
}

uint64_t sub_100104438()
{
  type metadata accessor for MeasuredLocationViewerView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[6];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100017854(v3 + v4))
    {
      sub_100003D20();
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_100006F14(v3 + v0[9]);
  swift_unknownObjectRelease();
  sub_100006F14(v3 + v0[12]);
  sub_100006F14(v3 + v0[13]);

  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_1001045B4()
{
  sub_10000FE4C();
  v0 = sub_1000EF7B4();
  return sub_100005F94(v0);
}

double sub_1001045DC()
{
  v0.n128_f64[0] = sub_1000834F0(v10);
  *&result = sub_1000A7D44(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v0).n128_u64[0];
  return result;
}

uint64_t sub_100104640()
{
  v1 = sub_10022C350(&qword_100CE2750);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC7Weather28LocationViewCollisionOptions__value;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_100104750@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationViewCollisionOptions();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100104794()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for LocationViewerInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4C10);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4C10);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA4BF0);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_100104954(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4C08);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for LocationViewerInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4C08);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC150;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000100ABC170;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100104BE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v233) = a2;
  v224 = a3;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v213 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for TimeState();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  v11 = sub_100003918(v10);
  v208 = type metadata accessor for ModalViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v15 = type metadata accessor for LocationsState();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  v221 = v17;
  sub_1000038CC();
  v199 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v198 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v197 = v20;
  v21 = sub_10022C350(&qword_100CA3898);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = sub_100003918(&v190[-v23]);
  v202 = type metadata accessor for WeatherData(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000038E4();
  v196 = v26;
  v27 = sub_10022C350(&qword_100CA37B0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v220 = v30;
  sub_1000038CC();
  v31 = type metadata accessor for ContentStatusBanner();
  v229 = *(v31 - 8);
  __chkstk_darwin(v31 - 8);
  sub_100003848();
  v216 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  v230 = &v190[-v34];
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v228 = v36;
  v37 = sub_10022C350(&qword_100CA38A0);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  v40 = &v190[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v41);
  v43 = &v190[-v42];
  v219 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v207 = v44;
  __chkstk_darwin(v45);
  sub_100003848();
  v218 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_10000E70C();
  v223 = v48;
  sub_1000038CC();
  active = type metadata accessor for LocationViewerActiveLocationState();
  v50 = sub_100003810(active);
  __chkstk_darwin(v50);
  sub_100003848();
  v217 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  v54 = &v190[-v53];
  __chkstk_darwin(v55);
  v57 = &v190[-v56];
  v222 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v215 = v58;
  __chkstk_darwin(v59);
  sub_1000038E4();
  v225 = v60;
  v61 = sub_1000038CC();
  v62 = type metadata accessor for ViewState.SecondaryViewState(v61);
  sub_1000037E8();
  __chkstk_darwin(v63);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003908();
  __chkstk_darwin(v65);
  v67 = &v190[-v66];
  v68 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v69);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v70);
  v72 = &v190[-v71];
  v226 = a1;
  sub_100028088();
  *(v74 - 256) = v73;
  sub_100094F94(v73, v72);
  sub_10007460C();
  sub_100094F94(&v72[v75], v67);
  v206 = v62;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001E5C4();
    sub_100105E30(v72, v76);
    sub_100105E30(v67, type metadata accessor for ViewState.SecondaryViewState);
    goto LABEL_3;
  }

  v85 = *v67;
  if (*&v72[*(v68 + 36) + 8] == 1)
  {
    v86 = [objc_opt_self() currentDevice];
    [v86 userInterfaceIdiom];

    LOBYTE(v86) = v72[*(v68 + 28)];
    sub_10001E5C4();
    sub_100105E30(v72, v87);
    if ((v86 & 1) == 0)
    {

LABEL_3:
      v77 = v224;
      if (v233)
      {
        if (qword_100CA2740 != -1)
        {
          goto LABEL_48;
        }

        goto LABEL_5;
      }

      type metadata accessor for LocationViewerInput();
      v82 = sub_100031400();
      v84 = 1;
      return sub_10001B350(v82, v84, 1, v83);
    }
  }

  else
  {
    sub_10001E5C4();
    sub_100105E30(v72, v88);
  }

  v194 = v68;
  v193 = v85;
  v192 = v85 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState;
  sub_100094F94(v85 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v57);
  sub_100094F94(v57, v54);
  v89 = v222;
  v90 = sub_100024D10(v54, 1, v222);
  v233 = v40;
  v195 = v4;
  if (v90 == 1)
  {
    v91 = v225;
    static CurrentLocation.placeholderIdentifier.getter();
    sub_10001341C();
  }

  else
  {
    sub_10001341C();
    v91 = v225;
    (*(v215 + 32))(v225, v54, v89);
  }

  v92 = v230;
  v93 = v226;
  sub_1001060E8(v226, v91, v223);
  v94 = *(v93 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  v97 = *(v94 + 64);
  v96 = v94 + 64;
  v95 = v97;
  v98 = 1 << *(*(v93 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners) + 32);
  v99 = -1;
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  v100 = v99 & v95;
  v77 = (v98 + 63) >> 6;
  v227 = *(v93 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);

  v101 = 0;
  v102 = &_swiftEmptyDictionarySingleton;
  v231 = v96;
  v232 = v43;
  while (2)
  {
    v214 = v102;
    if (!v100)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v103 = v101;
LABEL_25:
      v104 = __clz(__rbit64(v100));
      v100 &= v100 - 1;
      v105 = v228;
      v106 = (*(v227 + 48) + 16 * (v104 | (v103 << 6)));
      v107 = *v106;
      v108 = v106[1];
      sub_100049574();
      sub_100094F94(v109, v105);
      v110 = sub_10022C350(&qword_100CA38A8);
      v111 = v233;
      *v233 = v107;
      *(v111 + 8) = v108;
      sub_1000053C4();
      sub_100106F30(v105, v111 + v112);
      sub_10001B350(v111, 0, 1, v110);
      sub_10010ABD0(v107, v108);
      v92 = v230;
LABEL_26:
      v113 = v111;
      v114 = v232;
      sub_100051B60(v113, v232, &qword_100CA38A0);
      v115 = sub_10022C350(&qword_100CA38A8);
      if (sub_100024D10(v114, 1, v115) == 1)
      {

        v143 = *(v226 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

        v144 = Location.Identifier.id.getter();
        v145 = v220;
        sub_1000864C0(v144, v146, v143);

        v147 = v200;
        sub_100106A9C(v145, v200);
        v148 = type metadata accessor for LocationWeatherDataState(0);
        if (sub_100024D10(v147, 1, v148) == 1)
        {
          sub_1000180EC(v147, &qword_100CA37B0);
          v149 = v203;
          sub_100003934();
          sub_10001B350(v150, v151, v152, v202);
          v153 = v210;
          v154 = v209;
          v155 = v192;
        }

        else
        {
          v149 = v203;
          sub_1001A0D3C();
          sub_1000166C4();
          sub_100105E30(v147, v156);
          v157 = sub_100024D10(v149, 1, v202);
          v153 = v210;
          v154 = v209;
          v155 = v192;
          if (v157 != 1)
          {
            v158 = v196;
            sub_100106F30(v149, v196);
            v159 = v197;
            WeatherDataModel.currentWeather.getter();
            LODWORD(v233) = CurrentWeather.requiresAdditionalContrast.getter();
            (*(v198 + 8))(v159, v199);
            sub_100105E30(v158, type metadata accessor for WeatherData);
            goto LABEL_44;
          }
        }

        sub_1000180EC(v149, &qword_100CA3898);
        LODWORD(v233) = 0;
LABEL_44:
        v160 = v211;
        v161 = v193;
        LODWORD(v232) = *(v193 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
        sub_100094F94(v155, v217);
        v162 = v207;
        v163 = v219;
        v164 = v223;
        (*(v207 + 16))(v218, v223, v219);
        LODWORD(v231) = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v161);
        v165 = v226;
        sub_100094F94(v226 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v221);
        v166 = v165 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        LODWORD(v230) = *(v166 + 1);
        sub_100094F94(v165 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v154);
        type metadata accessor for ModalViewState.MapViewModal(0);
        sub_100031400();
        sub_100003934();
        sub_10001B350(v167, v168, v169, v170);
        swift_storeEnumTagMultiPayload();
        sub_1000BC008();
        LODWORD(v229) = v171;

        sub_100105E30(v153, type metadata accessor for ModalViewState);
        sub_100105E30(v154, type metadata accessor for ModalViewState);
        (*(v162 + 8))(v164, v163);
        (*(v215 + 8))(v225, v222);
        LODWORD(v228) = *(v165 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
        v172 = *(v165 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
        v173 = *(v165 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
        sub_100094F94(v165 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v160);
        v174 = *(v213 + 32);
        v175 = v212;
        v176 = sub_100003940();
        v177 = v195;
        v174(v176);
        LODWORD(v227) = *(v166 + *(type metadata accessor for EnvironmentState() + 40));
        sub_100028088();
        v179 = *(v178 - 256);
        v180 = v201;
        sub_100094F94(v179, v201);
        v226 = *(v180 + *(v194 + 36));

        sub_10001E5C4();
        sub_100105E30(v180, v181);
        sub_10007460C();
        v183 = v204;
        sub_100094F94(v179 + v182, v204);
        v184 = v183;
        v185 = v205;
        sub_100106F30(v184, v205);
        LOBYTE(v180) = swift_getEnumCaseMultiPayload() != 1;
        sub_100105E30(v185, type metadata accessor for ViewState.SecondaryViewState);
        v186 = v224;
        sub_100106F30(v217, v224);
        v187 = type metadata accessor for LocationViewerInput();
        (*(v162 + 32))(v186 + v187[5], v218, v219);
        *(v186 + v187[6]) = v231;
        sub_100106F30(v221, v186 + v187[7]);
        *(v186 + v187[8]) = v230;
        *(v186 + v187[9]) = v229 & 1;
        v188 = v186 + v187[10];
        *v188 = v228;
        *(v188 + 8) = v172;
        *(v188 + 16) = v173;
        (v174)(v186 + v187[11], v175, v177);
        *(v186 + v187[12]) = v227;
        *(v186 + v187[13]) = v226;
        *(v186 + v187[14]) = v232 & 1;
        *(v186 + v187[15]) = v180;
        *(v186 + v187[16]) = v214;
        *(v186 + v187[17]) = v233 & 1;
        sub_100051B60(v220, v186 + v187[18], &qword_100CA37B0);
        v82 = v186;
        v84 = 0;
        v83 = v187;
        return sub_10001B350(v82, v84, 1, v83);
      }

      v116 = *v114;
      v117 = v114[1];
      sub_1000053C4();
      sub_100106F30(v114 + v118, v92);
      if (v117 >= 2)
      {
        break;
      }

      v119 = sub_10000E718();
      sub_1000B84FC(v119, v120);
      sub_100014084();
      v96 = v231;
      if (!v100)
      {
LABEL_21:
        while (1)
        {
          v103 = v101 + 1;
          if (__OFADD__(v101, 1))
          {
            break;
          }

          if (v103 >= v77)
          {
            sub_10022C350(&qword_100CA38A8);
            v111 = v233;
            sub_100003934();
            sub_10001B350(v121, v122, v123, v124);
            v100 = 0;
            goto LABEL_26;
          }

          v100 = *(v96 + 8 * v103);
          ++v101;
          if (v100)
          {
            v101 = v103;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
LABEL_5:
        v78 = type metadata accessor for Logger();
        sub_10000703C(v78, qword_100D90C18);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "Error: Could not create an initial input in LocationViewerInputFactory! This is a bug and should be investigated.", v81, 2u);
        }

        simulateCrash(_:_:)();
        sub_100236608(v77);
        type metadata accessor for LocationViewerInput();
        v82 = sub_100031400();
        v84 = 0;
        return sub_10001B350(v82, v84, 1, v83);
      }
    }

    sub_100049574();
    sub_100094F94(v92, v216);
    v125 = v214;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v234 = v125;
    sub_10000E718();
    v126 = sub_100031B34();
    v128 = v125[2];
    v129 = (v127 & 1) == 0;
    v130 = v128 + v129;
    v96 = v231;
    if (__OFADD__(v128, v129))
    {
      goto LABEL_47;
    }

    v131 = v126;
    v132 = v127;
    sub_10022C350(&qword_100CA38B0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v130))
    {
      sub_10000E718();
      v133 = sub_100031B34();
      v92 = v230;
      if ((v132 & 1) == (v134 & 1))
      {
        v131 = v133;
        if ((v132 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_38:
        v140 = sub_10000E718();
        sub_1000B84FC(v140, v141);
        v102 = v234;
        sub_10001827C();
        sub_100236C3C(v216, v142);
        sub_100014084();
        continue;
      }
    }

    else
    {
      v92 = v230;
      if (v132)
      {
        goto LABEL_38;
      }

LABEL_35:
      v102 = v234;
      v234[(v131 >> 6) + 8] |= 1 << v131;
      v135 = (v102[6] + 16 * v131);
      *v135 = v116;
      v135[1] = v117;
      sub_10001827C();
      sub_1000053C4();
      sub_100106F30(v216, v136);
      sub_100014084();
      v137 = v102[2];
      v138 = __OFADD__(v137, 1);
      v139 = v137 + 1;
      if (!v138)
      {
        v102[2] = v139;
        continue;
      }

      __break(1u);
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100105E30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105E88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105EE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105F38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105F90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105FE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10010603C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100106090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001060E8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v5 - 8);
  v56 = &v54 - v6;
  v7 = type metadata accessor for Location.Identifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for LocationsState();
  __chkstk_darwin(v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v16 - 8);
  v18 = &v54 - v17;
  v19 = type metadata accessor for LocationModel();
  v61 = *(v19 - 8);
  __chkstk_darwin(v19);
  v55 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100094F94(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v15);
  static CurrentLocation.placeholderIdentifier.getter();
  v21 = a2;
  LOBYTE(a1) = static Location.Identifier.== infix(_:_:)();
  v59 = v8;
  v60 = v7;
  v22 = *(v8 + 8);
  v54 = v12;
  v23 = v22(v12, v7);
  if (a1)
  {
    sub_10022C350(&qword_100CA38C0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v56, 1, 1, v24);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    (*(v61 + 104))(v18, enum case for LocationModel.current(_:), v19);
    sub_10001B350(v18, 0, 1, v19);
  }

  else
  {
    __chkstk_darwin(v23);
    *(&v54 - 2) = v21;
    sub_100030C98();
  }

  v25 = v21;
  sub_100105E30(v15, type metadata accessor for LocationsState);
  v26 = sub_100024D10(v18, 1, v19);
  v27 = v57;
  if (v26 != 1)
  {
    v40 = *(v61 + 32);
    v41 = v55;
    v40(v55, v18, v19);
    return (v40)(v58, v41, v19);
  }

  sub_1000180EC(v18, &unk_100CE2F20);
  if (qword_100CA26B0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000703C(v28, qword_100D90A78);
  v29 = v60;
  v30 = *(v59 + 16);
  v55 = v25;
  v59 += 16;
  v30(v27, v25, v60);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62 = v34;
    *v33 = 141558275;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2081;
    sub_10005BDF0();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v27;
    v38 = v37;
    v22(v36, v60);
    v39 = sub_100078694(v35, v38, &v62);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Location identifier: %{private,mask.hash}s, was not found in LocationsState", v33, 0x16u);
    sub_100006F14(v34);
    v29 = v60;
  }

  else
  {

    v22(v27, v29);
  }

  v43 = v55;
  Location.Identifier.kind.getter();
  v44 = Location.Identifier.Kind.rawValue.getter();
  v46 = v45;
  if (v44 == Location.Identifier.Kind.rawValue.getter() && v46 == v47)
  {

    goto LABEL_18;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
LABEL_18:
    sub_10022C350(&qword_100CA38C0);
    type metadata accessor for CurrentLocation();
    v50 = v58;
    swift_storeEnumTagMultiPayload();
    v53 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v56, 1, 1, v53);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v52 = &enum case for LocationModel.current(_:);
    return (*(v61 + 104))(v50, *v52, v19);
  }

  sub_10022C350(&qword_100CA38B8);
  v30(v54, v43, v29);
  v50 = v58;
  SavedLocation.Placeholder.init(identifier:searchTitle:searchSubtitle:)();
  type metadata accessor for SavedLocation();
  swift_storeEnumTagMultiPayload();
  v51 = type metadata accessor for LocationOfInterest();
  sub_10001B350(v56, 1, 1, v51);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v52 = &enum case for LocationModel.saved(_:);
  return (*(v61 + 104))(v50, *v52, v19);
}

uint64_t sub_100106868()
{
  v0 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  LocationModel.identifier.getter();
  v7 = static Location.Identifier.== infix(_:_:)();
  (*(v2 + 8))(v6, v0);
  return v7 & 1;
}

uint64_t sub_100106940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10010699C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001069F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100075174();
  if (v8 && (v9 = v7, v10 = v6, v11 = sub_100031B34(), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    sub_1000037E8();
    sub_1001AF774(v14 + *(v16 + 72) * v13, v4, v9);
    v17 = sub_10000FEF4();
    v20 = v15;
  }

  else
  {
    a4(0);
    v17 = sub_100007E1C();
  }

  return sub_10001B350(v17, v18, v19, v20);
}

uint64_t sub_100106A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA37B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100106B20(uint64_t a1, uint64_t a2, int *a3)
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
    sub_10022C350(&qword_100CAA9F0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for WeatherDataModel();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        type metadata accessor for WeatherData.CachingState(0);
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[7];
        }

        else
        {
          type metadata accessor for WeatherData.WeatherStatisticsState(0);
          sub_100003928();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[8];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CA75C8);
            v11 = a3[9];
          }
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100106CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationPreviewViewState(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100106D28);
}

uint64_t sub_100106D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000038D8();
  type metadata accessor for PreviewLocation();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for LocationPreviewModalViewState(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for SelectedSearchResult();
      v14 = *(a4 + 24);
    }

    v11 = v4 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100106E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewState(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_100106E5C);
}

uint64_t sub_100106E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for PreviewLocation();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for LocationPreviewModalViewState(0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for SelectedSearchResult();
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100106F30(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100106F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_100106FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_100107040()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_10010709C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1001070F4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10010714C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001071AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_10010721C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for LocationViewerActiveLocationState();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for LocationModel();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for LocationsState();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[10] + 8) = (a2 - 1);
          return;
        }

        type metadata accessor for Date();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA37B0);
          v14 = a4[18];
        }
      }
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001073C4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for LocationViewerActiveLocationState();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for LocationModel();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = v3 + v12;
    goto LABEL_8;
  }

  type metadata accessor for LocationsState();
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v18 + 84) == a2)
    {
      v8 = v17;
      v12 = a3[11];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CA37B0);
      v12 = a3[18];
    }

    goto LABEL_7;
  }

  v16 = *(v3 + a3[10] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10010755C(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4BF8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for LocationViewerViewModel();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4BF8);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABC150;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x8000000100ABC170;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100107728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = type metadata accessor for LocationViewerInput();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v68 = v7 - v6;
  v73 = sub_10022C350(&qword_100CCD848) - 8;
  __chkstk_darwin(v73);
  v72 = &v62 - v8;
  v9 = sub_10022C350(&qword_100CA4BF8);
  __chkstk_darwin(v9 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003908();
  __chkstk_darwin(v11);
  v71 = &v62 - v12;
  v13 = type metadata accessor for LocationViewerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for ConditionPickerMenuViewModel(0);
  __chkstk_darwin(v18 - 8);
  sub_1000037D8();
  v21 = (v20 - v19);
  v22 = type metadata accessor for Location.Identifier();
  v76 = *(v22 - 8);
  v77 = v22;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  sub_100107F10(a1, v24 - v23);
  v74 = v25;
  sub_100108084(a1, v21);
  v70 = sub_100108AC8(a1);
  v26 = v4[5];
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v27 + 16))(v17, a1 + v26);
  v28 = &v17[v13[6]];
  v75 = v21;
  sub_100108024(v21, v28, type metadata accessor for ConditionPickerMenuViewModel);
  LOBYTE(v21) = *(a1 + v4[10]);
  LOBYTE(v25) = *(a1 + v4[6]);
  v29 = *(a1 + v4[14]);
  v30 = *(a1 + v4[9]);
  v69 = *(a1 + v4[15]);
  v64 = v4;
  v31 = *(a1 + v4[16]);
  LOBYTE(v4) = *(a1 + v4[17]);

  v67 = a1;
  v32 = a1;
  v33 = v72;
  sub_100108FAC(v32, v80);
  *&v17[v13[5]] = v70;
  v17[v13[7]] = v21;
  v17[v13[8]] = v25;
  v17[v13[9]] = v29;
  v34 = v71;
  v17[v13[10]] = (v30 & 1) == 0;
  v17[v13[11]] = v69;
  *&v17[v13[12]] = v31;
  v17[v13[13]] = v4;
  v35 = &v17[v13[14]];
  v36 = v80[1];
  *v35 = v80[0];
  *(v35 + 1) = v36;
  *(v35 + 2) = v80[2];
  v37 = OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_lastViewModel;
  swift_beginAccess();
  v38 = sub_10001C8AC();
  sub_100108024(v38, v34, v39);
  sub_10000473C(v34);
  v40 = *(v73 + 56);
  sub_100035AD0(v2 + v37, v33, &qword_100CA4BF8);
  sub_100035AD0(v34, v33 + v40, &qword_100CA4BF8);
  sub_100005404(v33);
  if (v42)
  {
    sub_1000180EC(v34, &qword_100CA4BF8);
    sub_100005404(v33 + v40);
    if (v42)
    {
      sub_1000180EC(v33, &qword_100CA4BF8);
      goto LABEL_16;
    }
  }

  else
  {
    v41 = v65;
    sub_100035AD0(v33, v65, &qword_100CA4BF8);
    sub_100005404(v33 + v40);
    if (!v42)
    {
      sub_100010628();
      v55 = v33 + v40;
      v56 = v63;
      sub_100109570(v55, v63, v57);
      v58 = sub_100132BC0(v41, v56);
      sub_100108F54(v56, type metadata accessor for LocationViewerViewModel);
      sub_1000180EC(v34, &qword_100CA4BF8);
      sub_100108F54(v41, type metadata accessor for LocationViewerViewModel);
      sub_1000180EC(v33, &qword_100CA4BF8);
      if (v58)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    sub_1000180EC(v34, &qword_100CA4BF8);
    sub_100108F54(v41, type metadata accessor for LocationViewerViewModel);
  }

  sub_1000180EC(v33, &qword_100CCD848);
LABEL_10:
  v43 = sub_10001C8AC();
  v44 = v66;
  sub_100108024(v43, v66, v45);
  sub_10000473C(v44);
  swift_beginAccess();
  sub_1001093A4(v44, v2 + v37);
  swift_endAccess();
  if (qword_100CA26B0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000703C(v46, qword_100D90A78);
  sub_100108024(v67, v68, type metadata accessor for LocationViewerInput);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v79[0] = v50;
    *v49 = 141558275;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    v51 = LocationModel.id.getter();
    v53 = v52;
    sub_1000063D8();
    v54 = sub_100078694(v51, v53, v79);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v47, v48, "Created new view model with activeLocation=%{private,mask.hash}s", v49, 0x16u);
    sub_100006F14(v50);
  }

  else
  {

    sub_1000063D8();
  }

LABEL_16:
  sub_100108F54(v75, type metadata accessor for ConditionPickerMenuViewModel);
  (*(v76 + 8))(v74, v77);
  sub_100010628();
  v59 = v78;
  sub_100109570(v17, v78, v60);
  return sub_10000473C(v59);
}

uint64_t sub_100107F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100108024(a1, v6, type metadata accessor for LocationViewerActiveLocationState);
  v7 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  sub_100108F54(v6, type metadata accessor for LocationViewerActiveLocationState);
  return static CurrentLocation.placeholderIdentifier.getter();
}

uint64_t sub_100108024(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_100108084(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA2CD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = Location.Identifier.id.getter();
  v9 = v8;
  if (sub_10010819C())
  {
    v10 = *(a1 + *(type metadata accessor for LocationViewerInput() + 40) + 8);
    v11 = Location.Identifier.id.getter();
    sub_100113300(v11, v12, v10);
  }

  else
  {
    v13 = type metadata accessor for WeatherCondition();
    sub_10001B350(v6, 1, 1, v13);
  }

  sub_100108290(v7, v9, v6, a2);
}

uint64_t sub_10010819C()
{
  v1 = OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory____lazy_storage___conditionBackgroundOverridden;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory____lazy_storage___conditionBackgroundOverridden);
  if (v2 == 2)
  {
    static Settings.VFX.overrideConditionBackground.getter();
    sub_100108238();
    Configurable.setting<A>(_:)();

    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

unint64_t sub_100108238()
{
  result = qword_100CCD860;
  if (!qword_100CCD860)
  {
    type metadata accessor for LocationViewerViewModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD860);
  }

  return result;
}

void sub_100108290(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v62 = sub_10022C350(&qword_100CB7308);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v61 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = (&v44 - v11);
  __chkstk_darwin(v12);
  v59 = &v44 - v13;
  v14 = type metadata accessor for ConditionPickerMenuViewModel.Row(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v55 = (v17 - v16);
  *a4 = a1;
  a4[1] = a2;
  v47 = type metadata accessor for ConditionPickerMenuViewModel(0);
  sub_100108724(a3, a4 + *(v47 + 20));
  sub_10022C350(&qword_100CB7310);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v57 = *(v15 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A2C3F0;
  v46 = v19;
  v56 = v18;
  v20 = (v19 + v18);
  v58 = v14;
  v21 = *(v14 + 20);
  v22 = type metadata accessor for WeatherCondition();
  sub_10001B350(v20 + v21, 1, 1, v22);
  *v20 = 0x302D776F72;
  v20[1] = 0xE500000000000000;
  v23 = static WeatherCondition.allCases.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v44 = a3;
    v45 = a4;
    v66 = _swiftEmptyArrayStorage;
    sub_100108794();
    v25 = 0;
    v26 = v66;
    v27 = *(v23 + 16);
    v53 = v23;
    v54 = v27;
    v28 = *(v22 - 8);
    v50 = v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v51 = v28;
    v48 = v28 + 32;
    v49 = v28 + 16;
    v52 = v24;
    while (v54 != v25)
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_12;
      }

      v29 = v62;
      v30 = *(v62 + 48);
      v31 = v51;
      v32 = v59;
      (*(v51 + 16))(&v59[v30], v50 + *(v51 + 72) * v25, v22);
      v33 = v60;
      *v60 = v25;
      v34 = *(v31 + 32);
      v34(v33 + *(v29 + 48), &v32[v30], v22);
      v64 = 762802034;
      v65 = 0xE400000000000000;
      v63 = ++v25;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36 = v64;
      v37 = v65;
      v38 = *(v58 + 20);
      v39 = v33;
      v40 = v61;
      sub_1001087EC(v39, v61);
      v41 = *(v29 + 48);
      v42 = v55;
      v34(v55 + v38, (v40 + v41), v22);
      sub_10001B350(v42 + v38, 0, 1, v22);
      *v42 = v36;
      v42[1] = v37;
      v66 = v26;
      v43 = v26[2];
      if (v43 >= v26[3] >> 1)
      {
        sub_100108794();
        v26 = v66;
      }

      v26[2] = v43 + 1;
      sub_10010885C(v42, v26 + v56 + v43 * v57);
      v23 = v53;
      if (v52 == v25)
      {

        a4 = v45;
        a3 = v44;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
LABEL_10:
    v64 = v46;
    sub_1001089C4(v26);
    sub_1000180EC(a3, &qword_100CA2CD8);
    *(a4 + *(v47 + 24)) = v64;
  }
}

uint64_t sub_100108724(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA2CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001087EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionPickerMenuViewModel.Row(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001088C0(uint64_t a1)
{
  result = sub_10001E90C(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_100021C64(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1001089F0()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CB7310, &unk_100A4AFA0);
  v8 = sub_100011748();
  type metadata accessor for ConditionPickerMenuViewModel.Row(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ConditionPickerMenuViewModel.Row, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

uint64_t sub_100108AC8(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100108024(a1, v10, type metadata accessor for LocationViewerActiveLocationState);
  v11 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_10022C350(&qword_100CCD858);
    v12 = type metadata accessor for LocationModel();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100A2C3F0;
    sub_10022C350(&qword_100CA38C0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v7, 1, 1, v16);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    (*(v13 + 104))(v15 + v14, enum case for LocationModel.current(_:), v12);
    type metadata accessor for LocationViewerInput();
    sub_1007BD314();
    v31 = v15;
    sub_10035DC44(v17);
    return v31;
  }

  else
  {
    v19 = type metadata accessor for LocationViewerInput();
    v20 = a1 + *(v19 + 28);
    sub_100035AD0(v20, v4, &unk_100CE49F0);
    v21 = type metadata accessor for CurrentLocation();
    v22 = sub_100024D10(v4, 1, v21);
    sub_1000180EC(v4, &unk_100CE49F0);
    if (v22 == 1 && *(a1 + *(v19 + 32)) - 1 <= 1)
    {
      sub_10022C350(&qword_100CCD858);
      v23 = type metadata accessor for LocationModel();
      v24 = *(v23 - 8);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100A2C3F0;
      sub_10022C350(&qword_100CA38C0);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v7, 1, 1, v27);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      (*(v24 + 104))(v26 + v25, enum case for LocationModel.current(_:), v23);
      sub_1007BD314();
      v31 = v26;
      sub_10035DC44(v28);
      v18 = v31;
    }

    else
    {
      v18 = *(v20 + *(type metadata accessor for LocationsState() + 24));
    }

    sub_100108F54(v10, type metadata accessor for LocationViewerActiveLocationState);
  }

  return v18;
}

uint64_t sub_100108F54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100108FAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCD850);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for PreprocessedWeatherData();
  __chkstk_darwin(v7);
  v29[0] = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for LocationViewerInput() + 72);
  v29[1] = a1;
  sub_100035AD0(a1 + v15, v11, &qword_100CA37B0);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    v16 = &qword_100CA37B0;
    v17 = v11;
  }

  else
  {
    sub_100109570(v11, v14, type metadata accessor for LocationWeatherDataState);
    sub_1001ACCC0();
    if (sub_100024D10(v6, 1, v7) != 1)
    {
      v25 = v29[0];
      sub_100109570(v6, v29[0], type metadata accessor for PreprocessedWeatherData);
      v19 = sub_100637610();
      v23 = v26;
      v20 = sub_100637758();
      v21 = v27;
      sub_100108F54(v14, type metadata accessor for LocationWeatherDataState);
      v28 = (v25 + *(v7 + 60));
      v22 = *v28;
      v24 = v28[1];

      result = sub_100108F54(v25, type metadata accessor for PreprocessedWeatherData);
      goto LABEL_7;
    }

    sub_100108F54(v14, type metadata accessor for LocationWeatherDataState);
    v16 = &qword_100CCD850;
    v17 = v6;
  }

  result = sub_1000180EC(v17, v16);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0xE000000000000000;
  v24 = 0xE000000000000000;
LABEL_7:
  *a2 = v19;
  a2[1] = v23;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v24;
  return result;
}

uint64_t sub_1001092D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for ConditionPickerMenuViewModel(0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1001093A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA4BF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100109414(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10005AD0C(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_100109514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100109570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001095D0()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003D98();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100109620(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001096A4()
{
  v0 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for ContentStatusBanner();
  sub_100007074(v3, qword_100CC9760);
  v4 = sub_10000703C(v3, qword_100CC9760);
  static WeatherClock.date.getter();
  v5 = type metadata accessor for Date();
  sub_10001B350(v2, 0, 1, v5);
  *v4 = 1;
  *(v4 + 8) = xmmword_100A3A770;
  return sub_10011C0F0(v2, v4 + *(v3 + 24), &unk_100CB2CF0);
}

uint64_t sub_1001097A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1001097BC()
{
  result = qword_100CCA038;
  if (!qword_100CCA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA038);
  }

  return result;
}

void sub_100109810()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CA7300);
    v7 = sub_1000BCEFC();
    j__malloc_size(v7);
    sub_100016D38();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1001098E0()
{
  v0 = type metadata accessor for LocationModel();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocationViewerViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100104794();
  (*(v1 + 16))(v3, v6, v0);
  sub_1001095D0();
  LocationModel.identifier.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100109A3C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100109A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100109A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Map(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100109A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LocationViewCollisionOptions();
  sub_1000EA178(&qword_100CACC60);
  v4 = StateObject.wrappedValue.getter();
  v5 = static ObservableObject.environmentStore.getter();
  v6 = sub_10022C350(&qword_100CCA080);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10022C350(&qword_100CCA088);
  v8 = (a2 + *(result + 36));
  *v8 = v5;
  v8[1] = v4;
  return result;
}

uint64_t sub_100109BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WeatherVFXConditionBackground();
  sub_1000EA178(&qword_100CB0478);
  v4 = StateObject.wrappedValue.getter();
  v5 = static ObservableObject.environmentStore.getter();
  v6 = sub_10022C350(&qword_100CCA090);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10022C350(&qword_100CCA098);
  v8 = (a2 + *(result + 36));
  *v8 = v5;
  v8[1] = v4;
  return result;
}

uint64_t sub_100109D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v3 - 8);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CCA288);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_10022C350(&qword_100CCA290);
  v26 = *(v14 - 8);
  v27 = v14;
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v17 = sub_10022C350(&qword_100CCA298);
  sub_1005EF680(v2, &v13[*(v17 + 44)]);
  v28 = v2;
  sub_1000302D8(v2, v7, &qword_100CA5010);
  v18 = type metadata accessor for ContentStatusBanner();
  v19 = sub_100024D10(v7, 1, v18);
  sub_100018198(v7, &qword_100CA5010);
  if (v19 == 1)
  {
    static AccessibilityChildBehavior.ignore.getter();
  }

  else
  {
    static AccessibilityChildBehavior.contain.getter();
  }

  v20 = sub_1005F6F6C(&unk_100CCA2A0);
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v10, v25);
  sub_100018198(v13, &qword_100CCA288);
  v21 = v24;
  sub_1000302D8(v28, v24, &qword_100CA5010);
  sub_100024D10(v21, 1, v18);
  sub_100018198(v21, &qword_100CA5010);
  v30 = v11;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v27;
  View.accessibilityHidden(_:)();
  return (*(v26 + 8))(v16, v22);
}

uint64_t sub_10010A0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_1000302D8(v1, &v8 - v4, &qword_100CA5010);
  v6 = type metadata accessor for ContentStatusBanner();
  if (sub_100024D10(v5, 1, v6) != 1)
  {
    return sub_100103E40(v5, a1);
  }

  type metadata accessor for LocationViewBannerContainer(0);
  sub_10022C350(&qword_100CC9F58);
  State.wrappedValue.getter();
  result = sub_100024D10(v5, 1, v6);
  if (result != 1)
  {
    return sub_100018198(v5, &qword_100CA5010);
  }

  return result;
}

double sub_10010A228@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v4 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_10010A338(a1, v11 - v8);
  sub_10010A338(v9, v6);
  if (qword_100CA2028 != -1)
  {
    swift_once();
  }

  sub_10010A40C(v6, qword_100CB5FA0, v11);
  sub_10010ABE4(v9);
  return sub_10010AC40(v11, a2);
}

uint64_t sub_10010A338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBanner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10010A39C()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDoesRelativeDateFormatting:1];
  [v0 setTimeStyle:1];

  qword_100CB5FA0 = v0;
}

uint64_t sub_10010A40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = &type metadata for FoundationContentStatusBannerLastUpdatedFormatter;
  v53 = &off_100C54C38;
  v51[0] = a2;
  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = type metadata accessor for ContentStatusBanner();
  sub_1000D47CC(a1 + *(v15 + 24), v8);
  v16 = sub_100024D10(v8, 1, v9);
  v50 = v13;
  if (v16 == 1)
  {
    sub_10010ABD0(v14, v13);
    sub_1001AEDF4(v8);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v19 = *sub_1000161C0(v51, v52);
    v49 = v14;
    sub_10010ABD0(v14, v13);
    v20 = sub_10010AA90(v12, v19);
    v21 = v13;
    v23 = v22;
    if (v21)
    {
      v24 = [objc_opt_self() mainBundle];
      v46 = 0x8000000100AE89F0;
      v25 = 0x8000000100AE89D0;
      v26 = 0xD000000000000170;
      v27 = 0xD000000000000010;
    }

    else
    {
      v24 = [objc_opt_self() mainBundle];
      v46 = 0x8000000100AE8B70;
      v27 = 0x6C6E6F207473614CLL;
      v25 = 0xEF4025203A656E69;
      v26 = 0xD00000000000016DLL;
    }

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v27, 0, v24, v28, *&v26);

    sub_10022C350(&qword_100CA40C8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100035744();
    *(v29 + 32) = v20;
    *(v29 + 40) = v23;
    v17 = static String.localizedStringWithFormat(_:_:)();
    v18 = v30;

    (*(v10 + 8))(v12, v9);
    v14 = v49;
  }

  switch(*a1)
  {
    case 1:
      v31 = [objc_opt_self() mainBundle];
      v54._object = 0x8000000100AE8900;
      v35._countAndFlagsBits = 0xD000000000000016;
      v35._object = 0x8000000100AE0630;
      v54._countAndFlagsBits = 0xD000000000000057;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v31, v36, v54);
      countAndFlagsBits = v37._countAndFlagsBits;
      object = v37._object;
      v40 = 0xEA00000000006873;
      v41 = 0x616C732E69666977;
      goto LABEL_16;
    case 2:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE88B0;
      v32 = 0xD000000000000014;
      v33 = 0x8000000100AE0750;
      v34 = 0xD000000000000046;
      goto LABEL_15;
    case 3:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8850;
      v32 = 0xE2676E6964616F4CLL;
      v34 = 0xD000000000000058;
      v33 = 0xAA0000000000A680;
      goto LABEL_15;
    case 4:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE87C0;
      v32 = 0xD00000000000001CLL;
      v33 = 0x8000000100AE87A0;
      v34 = 0xD00000000000008FLL;
      goto LABEL_15;
    case 5:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8710;
      v32 = 0xD000000000000013;
      v33 = 0x8000000100ADCC90;
      v34 = 0xD00000000000008CLL;
      goto LABEL_15;
    case 6:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8690;
      v32 = 0xD000000000000028;
      v33 = 0x8000000100AE8660;
      v34 = 0xD00000000000007CLL;
      goto LABEL_15;
    default:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8980;
      v32 = 0xD00000000000001BLL;
      v33 = 0x8000000100AE8960;
      v34 = 0xD00000000000004BLL;
LABEL_15:
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, 0, v31, v42, *&v34);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
      v41 = 0;
      v40 = 0;
LABEL_16:

      sub_10010ABE4(a1);
      result = sub_100006F14(v51);
      *a3 = countAndFlagsBits;
      a3[1] = object;
      a3[2] = v41;
      a3[3] = v40;
      a3[4] = v17;
      a3[5] = v18;
      v45 = v50;
      a3[6] = v14;
      a3[7] = v45;
      return result;
  }
}

uint64_t sub_10010AA90(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v7 = Calendar.isDateInToday(_:)();
  (*(v4 + 8))(v6, v3);
  [a2 setDateStyle:(v7 & 1) == 0];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = [a2 stringFromDate:isa];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_10010ABD0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10010ABE4(uint64_t a1)
{
  v2 = type metadata accessor for ContentStatusBanner();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10010AC40@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100003940();
  sub_10022C350(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = a1[1];
  *a2 = *a1;
  a2[1] = v8;
  v9 = a1[3];
  a2[2] = a1[2];
  a2[3] = v9;
  v10 = type metadata accessor for ContentStatusBannerView();
  v11 = *(v10 + 20);
  *(a2 + v11) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + *(v10 + 24);
  v13 = type metadata accessor for UserInterfaceSizeClass();
  sub_10001B350(v7, 1, 1, v13);
  v14 = sub_10010AE04(0, 0);
  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  v17 = Color.init(uiColor:)();
  v18 = static Font.footnote.getter();
  v19 = [v15 labelColor];
  v20 = Color.init(uiColor:)();
  sub_1000180EC(v7, &qword_100CA6028);
  v25[1] = v14;
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v20;
  v26 = 0;
  State.init(wrappedValue:)();
  v21 = v29;
  v22 = v30;
  result = *&v27;
  v24 = v28;
  *v12 = v27;
  *(v12 + 1) = v24;
  v12[32] = v21;
  *(v12 + 5) = v22;
  return result;
}

uint64_t sub_10010AE04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v23 - v14;
  if (!a2)
  {
    static Font.body.getter();
    static Font.Weight.semibold.getter();
    v18 = Font.weight(_:)();

    return v18;
  }

  (*(v4 + 104))(&v23 - v14, enum case for UserInterfaceSizeClass.compact(_:), v3, v15);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(v7 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_1000180EC(v16, &qword_100CA6028);
    if (sub_100024D10(&v9[v17], 1, v3) == 1)
    {
      sub_1000180EC(v9, &qword_100CA6028);
LABEL_11:
      static Font.caption.getter();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  sub_100095588();
  if (sub_100024D10(&v9[v17], 1, v3) == 1)
  {
    sub_1000180EC(v16, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_8:
    sub_1000180EC(v9, &qword_100CA64E8);
    goto LABEL_9;
  }

  (*(v4 + 32))(v6, &v9[v17], v3);
  sub_1000F1FA8(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v4 + 8);
  v21(v6, v3);
  sub_1000180EC(v16, &qword_100CA6028);
  v21(v12, v3);
  sub_1000180EC(v9, &qword_100CA6028);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.body.getter();
LABEL_12:
  static Font.Weight.medium.getter();
  v22 = Font.weight(_:)();

  return v22;
}

double sub_10010B204()
{
  v0 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v0 - 8);
  __chkstk_darwin(v1);
  v2 = sub_1005EF038();
  type metadata accessor for LocationViewBannerContainer(0);
  sub_1000FC9C8();
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  sub_1001095D0();
  if (v5 == 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 2.0;
  }

  sub_1000FC9C8();
  v7 = [v3 currentDevice];
  [v7 userInterfaceIdiom];

  sub_1001095D0();
  return v2 + v6;
}

__n128 sub_10010B39C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_10010B3B0()
{
  result = qword_100CCA2F8;
  if (!qword_100CCA2F8)
  {
    sub_10022E824(&qword_100CCA2B8);
    sub_1005F31E0();
    sub_1005F6F6C(&unk_100CCA318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA2F8);
  }

  return result;
}

unint64_t sub_10010B468()
{
  result = qword_100CCA308;
  if (!qword_100CCA308)
  {
    sub_10022E824(&qword_100CCA2A8);
    sub_10010B4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA308);
  }

  return result;
}

unint64_t sub_10010B4F4()
{
  result = qword_100CCA310;
  if (!qword_100CCA310)
  {
    sub_10022E824(&qword_100CCA2E0);
    sub_1000EA178(&qword_100CA5108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA310);
  }

  return result;
}

unint64_t sub_10010B5B0()
{
  result = qword_100CCA338;
  if (!qword_100CCA338)
  {
    sub_10022E824(&qword_100CA5010);
    sub_1000EA178(&unk_100CCA340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA338);
  }

  return result;
}

uint64_t sub_10010B664()
{
  IsDeviceSlowViewInputPredicate = type metadata accessor for IsDeviceSlowViewInputPredicate();
  __chkstk_darwin(IsDeviceSlowViewInputPredicate);
  static ViewInputPredicate<>.deviceIsSlow.getter();
  sub_10022C350(&qword_100CEB590);
  sub_1009BA20C();
  sub_10010B778();
  return StaticIf<>.init(_:then:else:)();
}

unint64_t sub_10010B778()
{
  result = qword_100CEB598;
  if (!qword_100CEB598)
  {
    sub_10022E824(&qword_100CEB590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEB598);
  }

  return result;
}

uint64_t sub_10010B8D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010B918(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10010B958@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for ContentStatusBannerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10022C350(&qword_100CA6028);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  sub_10022C350(&qword_100CD5850);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_10022C350(&qword_100CD5858);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = sub_10022C350(&qword_100CD5860);
  sub_10010BE4C(v1, &v10[*(v15 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10010BC58();
  memcpy(&v14[*(v11 + 36)], __src, 0x70uLL);
  sub_10009D114();
  sub_10010CF10(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_10010CF74(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1000F1DF4();
  sub_1000F1EAC();
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v7, &qword_100CA6028);
  return sub_1000180EC(v14, &qword_100CD5858);
}

uint64_t sub_10010BC58()
{
  sub_100003A00();
  sub_10022C350(&qword_100CD5850);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_10010BCB8()
{
  v1 = type metadata accessor for ContentStatusBannerView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 56) >= 2uLL)
  {
  }

  v3 = *(v1 + 20);
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10010BE4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v85 = type metadata accessor for BlendMode();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10022C350(&qword_100CA4000);
  __chkstk_darwin(v101);
  v82 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = v79 - v6;
  v7 = sub_10022C350(&qword_100CD5880);
  __chkstk_darwin(v7 - 8);
  v102 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = v79 - v10;
  v99 = type metadata accessor for AccessibilityTraits();
  v92 = *(v99 - 8);
  v93 = v99 - 8;
  v94 = v92;
  __chkstk_darwin(v99 - 8);
  v98 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for AccessibilityChildBehavior();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10022C350(&qword_100CD5888);
  __chkstk_darwin(v87);
  v14 = v79 - v13;
  v95 = sub_10022C350(&qword_100CD5890);
  v97 = *(v95 - 8);
  __chkstk_darwin(v95);
  v86 = v79 - v15;
  v96 = sub_10022C350(&qword_100CD5898);
  __chkstk_darwin(v96);
  v109 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v108 = v79 - v18;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v19 = &v14[*(sub_10022C350(&qword_100CD58A0) + 44)];
  v90 = a1;
  sub_10010CACC(a1, v19);
  v20 = a1 + *(type metadata accessor for ContentStatusBannerView() + 24);
  v22 = *(v20 + 1);
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  v25 = v20[32];
  v26 = *(v20 + 5);
  v113 = *v20;
  v21 = v113;
  v114 = v22;
  v115 = v23;
  v116 = v24;
  v117 = v25;
  v118 = v26;
  v27 = sub_10022C350(&qword_100CD5878);
  State.wrappedValue.getter();
  v28 = v110;

  KeyPath = swift_getKeyPath();
  v30 = &v14[*(sub_10022C350(&qword_100CD58A8) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v106 = v22;
  v107 = v21;
  v113 = v21;
  v114 = v22;
  v79[0] = v23;
  v115 = v23;
  v116 = v24;
  v105 = v24;
  v80 = v25;
  v117 = v25;
  v104 = v26;
  v118 = v26;
  v79[1] = v27;
  State.wrappedValue.getter();

  v31 = v111;

  v32 = swift_getKeyPath();
  v33 = v87;
  v34 = &v14[*(v87 + 36)];
  *v34 = v32;
  v34[1] = v31;
  v35 = v88;
  static AccessibilityChildBehavior.ignore.getter();
  v36 = sub_10010CD74();
  v37 = v86;
  View.accessibilityElement(children:)();
  (*(v89 + 8))(v35, v91);
  sub_1000180EC(v14, &qword_100CD5888);
  sub_10022C350(&unk_100CE17E0);
  v38 = v94;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100A2C3F0;
  static AccessibilityTraits.isHeader.getter();
  v113 = v39;
  sub_1000F1FA8(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
  sub_10022C350(&unk_100CE17F0);
  sub_100006F64(&qword_100CB3370, &unk_100CE17F0);
  v40 = v98;
  v41 = v99;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v113 = v33;
  v114 = v36;
  swift_getOpaqueTypeConformance2();
  v42 = v109;
  v43 = v95;
  View.accessibilityAddTraits(_:)();
  (*(v38 + 8))(v40, v41);
  (*(v97 + 8))(v37, v43);
  v44 = v90;
  v45 = v90[1];
  v113 = *v90;
  v114 = v45;
  sub_10002D5A4();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000180EC(v42, &qword_100CD5898);
  v46 = v44[5];
  if (v46)
  {
    v113 = v44[4];
    v114 = v46;

    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    v113 = v107;
    v114 = v106;
    v115 = v79[0];
    v52 = v79[0];
    v116 = v105;
    v53 = v80;
    v117 = v80;
    v118 = v104;
    State.wrappedValue.getter();

    v95 = Text.font(_:)();
    v94 = v54;
    LODWORD(v92) = v55;
    v93 = v56;

    sub_10010CD64(v47, v49, v51 & 1);

    v113 = v107;
    v114 = v106;
    v57 = v52;
    v58 = v105;
    v115 = v52;
    v116 = v105;
    v117 = v53;
    v59 = v104;
    v118 = v104;
    State.wrappedValue.getter();

    LOBYTE(v49) = v92;
    v60 = v95;
    v61 = v94;
    v96 = Text.foregroundColor(_:)();
    v98 = v62;
    LODWORD(v97) = v63;
    v99 = v64;

    sub_10010CD64(v60, v61, v49 & 1);

    v113 = v107;
    v114 = v106;
    v115 = v57;
    v116 = v58;
    v117 = v53;
    v118 = v59;
    State.wrappedValue.getter();

    v65 = v84;
    v66 = &enum case for BlendMode.plusLighter(_:);
    if (!v112)
    {
      v66 = &enum case for BlendMode.normal(_:);
    }

    v67 = v83;
    v68 = v85;
    (*(v84 + 104))(v83, *v66, v85);
    v69 = v101;
    v70 = v82;
    (*(v65 + 32))(&v82[*(v101 + 36)], v67, v68);
    v71 = v98;
    *v70 = v96;
    *(v70 + 1) = v71;
    v70[16] = v97 & 1;
    *(v70 + 3) = v99;
    sub_100051BBC();
    v72 = v100;
    sub_100051BBC();
    v73 = 0;
    v74 = v69;
  }

  else
  {
    v74 = v101;
    v72 = v100;
    v73 = 1;
  }

  sub_10001B350(v72, v73, 1, v74);
  v76 = v108;
  v75 = v109;
  sub_10010CA6C();
  v77 = v102;
  sub_100095588();
  sub_10010CA6C();
  sub_10022C350(&qword_100CD58D0);
  sub_100095588();
  sub_1000180EC(v72, &qword_100CD5880);
  sub_1000180EC(v76, &qword_100CD5898);
  sub_1000180EC(v77, &qword_100CD5880);
  return sub_1000180EC(v75, &qword_100CD5898);
}

uint64_t sub_10010CA6C()
{
  sub_100003A00();
  sub_10022C350(&qword_100CD5898);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_10010CACC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CD2718);
  __chkstk_darwin(v4);
  v5 = sub_10022C350(&qword_100CD58D8);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  if (a1[3])
  {

    v22[0] = Image.init(systemName:)();
    View.accessibilityHidden(_:)();

    sub_100051BBC();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_10001B350(v10, v11, 1, v4);
  v12 = a1[1];
  v22[0] = *a1;
  v22[1] = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100095588();
  sub_100095588();
  v20 = a2 + *(sub_10022C350(&qword_100CD58E0) + 48);
  *v20 = v13;
  *(v20 + 8) = v15;
  *(v20 + 16) = v17 & 1;
  *(v20 + 24) = v19;
  sub_10010CD54(v13, v15, v17 & 1);

  sub_1000180EC(v10, &qword_100CD58D8);
  sub_10010CD64(v13, v15, v17 & 1);

  return sub_1000180EC(v7, &qword_100CD58D8);
}

uint64_t sub_10010CD54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10010CD64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10010CD74()
{
  result = qword_100CD58B0;
  if (!qword_100CD58B0)
  {
    sub_10022E824(&qword_100CD5888);
    sub_10010CE2C();
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD58B0);
  }

  return result;
}

unint64_t sub_10010CE2C()
{
  result = qword_100CD58B8;
  if (!qword_100CD58B8)
  {
    sub_10022E824(&qword_100CD58A8);
    sub_100006F64(&qword_100CD58C0, &qword_100CD58C8);
    sub_100006F64(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD58B8);
  }

  return result;
}

uint64_t sub_10010CF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010CF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBannerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10010CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  type metadata accessor for ContentStatusBanner();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = sub_10022C350(&qword_100CA5010);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = sub_10022C350(&qword_100CA50C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &a9 - v36;
  if (*v25 == *v23 && v25[1] == v23[1])
  {
    v39 = *(type metadata accessor for ContentStatusBannerPresentationMetrics(0) + 20);
    v40 = *(v34 + 48);
    sub_1000302D8(v25 + v39, v37, &qword_100CA5010);
    sub_1000302D8(v23 + v39, &v37[v40], &qword_100CA5010);
    if (sub_100030484(v37) == 1)
    {
      if (sub_100030484(&v37[v40]) == 1)
      {
        sub_100018198(v37, &qword_100CA5010);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1000302D8(v37, v33, &qword_100CA5010);
      if (sub_100030484(&v37[v40]) != 1)
      {
        sub_100103E40(&v37[v40], v29);
        v41 = sub_1000053B8();
        sub_100133BA0(v41, v42);
        sub_1001095D0();
        sub_1001095D0();
        sub_100018198(v37, &qword_100CA5010);
        goto LABEL_12;
      }

      sub_1001095D0();
    }

    sub_100018198(v37, &qword_100CA50C0);
  }

LABEL_12:
  sub_10000536C();
}

uint64_t sub_10010D250(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a2(0);
  sub_100003810(v5);
  sub_10001164C();

  return a3(a1, v3 + v6);
}

uint64_t sub_10010D2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v48 = a2;
  v3 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v3 - 8);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v39 - v6;
  v7 = type metadata accessor for ContentStatusBannerPresentationMetrics(0) - 8;
  v40 = v7;
  __chkstk_darwin(v7);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CCABB0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v42 = sub_10022C350(&qword_100CCABB8);
  __chkstk_darwin(v42);
  v20 = &v39 - v19;
  v21 = sub_10022C350(&qword_100CCABC0);
  __chkstk_darwin(v21 - 8);
  v43 = &v39 - v22;
  sub_1005F1770(v2, v14);
  v23 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v24 = swift_allocObject();
  sub_100103E40(v14, v24 + v23);
  v25 = sub_10022C350(&qword_100CCABC8);
  (*(*(v25 - 8) + 16))(v18, v44, v25);
  v26 = &v18[*(v16 + 44)];
  *v26 = sub_100130B3C;
  v26[1] = v24;
  sub_10022C350(&qword_100CCA710);
  State.wrappedValue.getter();
  v27 = v45;
  sub_10011C0F0(&v11[*(v7 + 28)], v45, &qword_100CA5010);
  v28 = type metadata accessor for ContentStatusBanner();
  LODWORD(v7) = sub_100024D10(v27, 1, v28);
  sub_100018198(v27, &qword_100CA5010);
  if (v7 == 1)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 1.0;
  }

  sub_10011C0F0(v18, v20, &qword_100CCABB0);
  *&v20[*(v42 + 36)] = v29;
  v30 = v46;
  State.wrappedValue.getter();
  v31 = &v30[*(v40 + 28)];
  v32 = v47;
  sub_10011C0F0(v31, v47, &qword_100CA5010);
  sub_100024D10(v32, 1, v28);
  sub_100018198(v32, &qword_100CA5010);
  sub_1005F60F8();
  v33 = v43;
  View.accessibilityHidden(_:)();
  sub_100018198(v20, &qword_100CCABB8);
  sub_10010D9B8();
  v35 = v34;
  v36 = v48;
  sub_10011C0F0(v33, v48, &qword_100CCABC0);
  result = sub_10022C350(&qword_100CCABF8);
  v38 = (v36 + *(result + 36));
  *v38 = 0;
  v38[1] = v35;
  return result;
}

uint64_t sub_10010D7FC()
{
  type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_100109A48(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
  v4 = *(v0 + 20);
  sub_10022C350(&unk_100CE1000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  v7 = v6 + *(type metadata accessor for ContentStatusBannerPresentationMetrics(0) + 20);
  v8 = type metadata accessor for ContentStatusBanner();
  if (!sub_100017854(v7))
  {
    if (*(v7 + 16) >= 2uLL)
    {
    }

    v9 = *(v8 + 24);
    v10 = type metadata accessor for Date();
    if (!sub_100017854(v7 + v9))
    {
      sub_100003D20();
      (*(v11 + 8))(v7 + v9, v10);
    }
  }

  sub_10022C350(&qword_100CCA710);

  return swift_deallocObject();
}

uint64_t sub_10010D9B8()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  sub_10022C350(&qword_100CCA710);
  State.wrappedValue.getter();
  sub_10011C0F0(&v11[*(v8 + 28)], v6, &qword_100CA5010);
  v12 = type metadata accessor for ContentStatusBanner();
  LODWORD(v11) = sub_100024D10(v6, 1, v12);
  result = sub_100018198(v6, &qword_100CA5010);
  if (v11 == 1)
  {
    State.wrappedValue.getter();
    result = sub_1001095D0();
    v14 = *v0;
    if (*(v1 + 32) != 1)
    {
      v15 = v1[1];
      v16 = v1[2];
      v17 = v1[3];

      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v19 = v21;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v14, v15, v16, v17, 0);
      return (*(v22 + 8))(v19, v23);
    }
  }

  return result;
}

uint64_t sub_10010DCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v5 - 8);
  v35 = &v33 - v6;
  v7 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  v8 = v7 - 8;
  v34 = *(v7 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MeasuredLocationViewerView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CC9B20);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  sub_1005F1770(a2, v14);
  sub_1005F1770(a1, v10);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v13 + *(v34 + 80) + v19) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_100103E40(v14, v21 + v19);
  sub_100103E40(v10, v21 + v20);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = &v18[*(v16 + 44)];
  v26 = sub_10022C350(&qword_100CC9B28);
  sub_1005F1770(a1, v25 + *(v26 + 28));
  *v25 = v24;
  *v18 = KeyPath;
  v18[8] = 0;
  *(v18 + 2) = v23;
  v18[24] = 0;
  *(v18 + 4) = sub_1005F17C8;
  *(v18 + 5) = v21;
  v27 = sub_10010EC9C();
  v28 = v35;
  sub_1000302D8(a1 + *(v8 + 28), v35, &qword_100CA5010);
  v29 = type metadata accessor for ContentStatusBanner();
  LOBYTE(a1) = sub_100024D10(v28, 1, v29) != 1;
  sub_100018198(v28, &qword_100CA5010);
  v30 = v36;
  sub_10011C0F0(v18, v36, &qword_100CC9B20);
  result = sub_10022C350(&qword_100CC9B30);
  v32 = v30 + *(result + 36);
  *v32 = v27;
  *(v32 + 8) = a1;
  return result;
}

uint64_t sub_10010E09C()
{
  sub_10000C778();
  type metadata accessor for MeasuredLocationViewerView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_100003DDC();
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1 + v3;

  v10 = v0[6];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100030484(v9 + v10))
    {
      sub_100003B20();
      (*(v12 + 8))(v9 + v10, v11);
    }
  }

  else
  {
  }

  sub_100006F14(v9 + v0[9]);
  swift_unknownObjectRelease();
  sub_100006F14(v9 + v0[12]);
  sub_100006F14(v9 + v0[13]);

  v13 = v1 + v8 + *(v6 + 20);
  type metadata accessor for ContentStatusBanner();
  if (!sub_100017854(v13))
  {
    if (*(v13 + 16) >= 2uLL)
    {
    }

    v14 = type metadata accessor for Date();
    if (!sub_10000CB9C(v14))
    {
      sub_100003D20();
      v15 = sub_100044E18();
      v16(v15);
    }
  }

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10010E2E0()
{
  sub_10000FE4C();
  v0 = sub_1006E4ABC();
  return sub_100005F94(v0);
}

uint64_t sub_10010E308()
{
  sub_10000FE4C();
  result = sub_1004470F4();
  *v0 = result;
  return result;
}

unint64_t sub_10010E37C()
{
  result = qword_100CCA8E0;
  if (!qword_100CCA8E0)
  {
    sub_10022E824(&qword_100CCA8D0);
    sub_1005F6F6C(&unk_100CCA8E8);
    sub_1000EA178(&unk_100CCA8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA8E0);
  }

  return result;
}

unint64_t sub_10010E464()
{
  result = qword_100CCA9A0;
  if (!qword_100CCA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA9A0);
  }

  return result;
}

uint64_t sub_10010E4B8()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.overrideConditionBackground.getter();
  SettingReader.read<A>(_:)();
}

uint64_t sub_10010E52C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ConditionPickerMenuViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10022C350(&qword_100CB41C0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_10010E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConditionPickerMenuViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB41C0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_10010E700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_10010E740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010E7E0()
{
  v0 = type metadata accessor for Material();
  sub_100007074(v0, qword_100D90600);
  sub_10000703C(v0, qword_100D90600);
  return sub_10010E82C();
}

uint64_t sub_10010E82C()
{
  v0 = type metadata accessor for Material();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2260 != -1)
  {
    swift_once();
  }

  DeviceSupportsMaterialBackgrounds();
  v4 = SettingReader.isEnabled(_:with:)();

  v5 = [objc_opt_self() mainBundle];
  *(swift_allocObject() + 16) = v4 & 1;
  static Material.coreMaterial(bundle:provider:)();

  Material.applyingFiltersInPlace(_:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_10010E9FC()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90480 = sub_100004594();
  sub_1000212EC();
}

unint64_t sub_10010EB50()
{
  if (*(v0 + 16))
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t sub_10010EB90()
{
  result = qword_100CCAA00;
  if (!qword_100CCAA00)
  {
    sub_10022E824(&qword_100CCA9E8);
    sub_1005F6F6C(&unk_100CCAA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAA00);
  }

  return result;
}

unint64_t sub_10010EC48()
{
  result = qword_100CCA0D0;
  if (!qword_100CCA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA0D0);
  }

  return result;
}

uint64_t sub_10010EC9C()
{
  v1 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_1000302D8(v0 + *(v4 + 20), v3, &qword_100CA5010);
  v5 = type metadata accessor for ContentStatusBanner();
  v6 = sub_100024D10(v3, 1, v5);
  sub_100018198(v3, &qword_100CA5010);
  if (v6 == 1)
  {
    if (qword_100CA2078 == -1)
    {
    }

    goto LABEL_6;
  }

  if (qword_100CA2070 != -1)
  {
LABEL_6:
    swift_once();
  }
}

uint64_t sub_10010EDE8()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100D8FD48 = result;
  return result;
}

unint64_t sub_10010EE50()
{
  result = qword_100CCA820;
  if (!qword_100CCA820)
  {
    sub_10022E824(&qword_100CCA278);
    sub_1005F6F6C(&unk_100CCA828);
    sub_10010EF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA820);
  }

  return result;
}

unint64_t sub_10010EF08()
{
  result = qword_100CCA830;
  if (!qword_100CCA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA830);
  }

  return result;
}

void sub_10010EF7C()
{
  sub_10010F29C();
  if (v0 <= 0x3F)
  {
    sub_1009B5F18(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1009B7F0C();
      if (v2 <= 0x3F)
      {
        sub_10010F4E8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          type metadata accessor for WeatherConditionBackgroundModel();
          if (v4 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CACC68);
            if (v5 <= 0x3F)
            {
              sub_100081B54(319, &unk_100CACC70);
              if (v6 <= 0x3F)
              {
                sub_10010F4E8(319, &unk_100CEAE10, &type metadata for CollisionVFXOptions, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1009B5F18(319, &qword_100CACB80, &type metadata accessor for AnimatedGradient, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10010F4E8(319, &qword_100CEAEE8, &type metadata for Double, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_10010F774();
                      if (v10 <= 0x3F)
                      {
                        sub_10010F8F4(319, &qword_100CEAF00, &type metadata accessor for ObservedObject);
                        if (v11 <= 0x3F)
                        {
                          sub_10010F9DC();
                          if (v12 <= 0x3F)
                          {
                            sub_1009B5F18(319, &unk_100CEAF18, type metadata accessor for WeatherConditionBackgroundModifierState, &type metadata accessor for State);
                            if (v13 <= 0x3F)
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
    }
  }
}

void sub_10010F29C()
{
  if (!qword_100CCB7B0)
  {
    type metadata accessor for LocationViewCollisionOptions();
    sub_100061E3C(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCB7B0);
    }
  }
}

void sub_10010F330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10010F394(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10010F3E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10010F438(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10022E824(a3);
    sub_1000201F8();
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10010F488(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_10022E824(a3);
    v7 = sub_100031D74();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10010F4E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10010F558()
{
  sub_1009B5F18(319, &qword_100CEAAF8, &type metadata accessor for WeatherConditionBackgroundModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1009B5F18(319, &qword_100CEAB00, type metadata accessor for VFXLoadRequestModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1009B5F18(319, &unk_100CEAB08, &type metadata accessor for TargetWindowSizeClass, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DynamicTypeSize();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ObservationRegistrar();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10010F774()
{
  if (!qword_100CEAEF0)
  {
    type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor(255);
    sub_1009B7E78(&qword_100CEAEF8, type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CEAEF0);
    }
  }
}

void sub_10010F828()
{
  sub_10010F4E8(319, &qword_100CB4E30, &type metadata for Bool, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10010F8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for WeatherVFXConditionBackground();
    v7 = sub_1009B7E78(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for WeatherMicaConditionBackground()
{
  result = qword_100CB4E18;
  if (!qword_100CB4E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010F9DC()
{
  if (!qword_100CEAF08)
  {
    type metadata accessor for WeatherMicaConditionBackground();
    sub_1009B7E78(&qword_100CEAF10, type metadata accessor for WeatherMicaConditionBackground);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CEAF08);
    }
  }
}

void sub_10010FA70()
{
  if (!qword_100CB4E28)
  {
    type metadata accessor for MicaBackgroundAnimation();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB4E28);
    }
  }
}

void sub_10010FAC8()
{
  sub_10010FA70();
  if (v0 <= 0x3F)
  {
    sub_10010FBAC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10010FBAC()
{
  if (!qword_100CB4E30)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB4E30);
    }
  }
}

unint64_t sub_10010FC1C()
{
  result = qword_100CC3940;
  if (!qword_100CC3940)
  {
    sub_10022E824(&qword_100CC3930);
    sub_10010FCD8();
    sub_100061DF4(&qword_100CB08D0, type metadata accessor for WeatherConditionBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC3940);
  }

  return result;
}

unint64_t sub_10010FCD8()
{
  result = qword_100CC3948;
  if (!qword_100CC3948)
  {
    sub_10022E824(&qword_100CC3938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC3948);
  }

  return result;
}

unint64_t sub_10010FD7C()
{
  result = qword_100CEAFD8;
  if (!qword_100CEAFD8)
  {
    sub_10022E824(&qword_100CEAFD0);
    sub_100006F64(&qword_100CEAFE0, &qword_100CEAFE8);
    sub_100006F64(&qword_100CC0538, &qword_100CC0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEAFD8);
  }

  return result;
}

unint64_t sub_10010FE60()
{
  result = qword_100CC9B38;
  if (!qword_100CC9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9B38);
  }

  return result;
}

uint64_t sub_10010FEB4()
{
  sub_10010FE60();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_10010FF2C(uint64_t a1)
{
  v2 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v2 - 8);
  sub_1005F1770(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FE60();
  EnvironmentValues.subscript.setter();
  return sub_1001095D0();
}

uint64_t sub_10010FFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CCA278);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = *(v2 + 72);
  if (v9)
  {
    v10 = *(v2 + 64);
    v11 = &v8[*(v6 + 36)];
    v15 = *(v2 + 8);
    sub_10042F370(v2 + 24, (v11 + 32));

    sub_10022C350(&qword_100CA4BD8);
    sub_1005F6F6C(&qword_100CA4BE0);
    *v11 = ObservedObject.init(wrappedValue:)();
    *(v11 + 1) = v12;
    *(v11 + 1) = v15;
    *(v11 + 9) = v10;
    *(v11 + 10) = v9;
    v13 = sub_10022C350(&qword_100CCA280);
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    sub_10011C0F0(v8, a2, &qword_100CCA278);
    return swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for WeatherVFXConditionBackground();
    sub_1000EA178(&qword_100CB0478);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100110204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  type metadata accessor for SkyBackgroundGradient();
  sub_1000037C4();
  v62 = v6;
  v63 = v5;
  __chkstk_darwin(v5);
  v59 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherConditionBackgroundModel();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v52 - v15;
  __chkstk_darwin(v17);
  v19 = v52 - v18;
  sub_1001108E0();
  v65 = *(v2 + 16);
  sub_100035B30(v2 + 32, v70);
  v58 = *(v2 + 80);
  sub_1001108E0();
  v20 = sub_1001142FC();
  v22 = v21;
  v60 = *(v10 + 8);
  v61 = v10 + 8;
  v60(v16, v8);
  v57 = v22;
  if (v22)
  {
    v56 = *(v3 + 72);
    v55 = v20;
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v23 = static Color.black.getter();
  v24 = *(v10 + 16);
  v24(v13, v19, v8);
  sub_100035B30(v70, v69);
  v25 = (a2 + *(sub_10022C350(&qword_100CC3930) + 36));
  type metadata accessor for LocationViewCollisionOptions();
  sub_100061DF4(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
  *v25 = EnvironmentObject.init()();
  v25[1] = v26;
  v27 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  v28 = v27[5];
  *(v25 + v28) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  swift_storeEnumTagMultiPayload();
  v29 = v27[6];
  *(v25 + v29) = swift_getKeyPath();
  sub_10022C350(&qword_100CB0588);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_10001EFAC(KeyPath);
  v31 = swift_getKeyPath();
  sub_10001EFAC(v31);
  v32 = swift_getKeyPath();
  sub_10001EFAC(v32);
  v33 = swift_getKeyPath();
  sub_10001EFAC(v33);
  v34 = swift_getKeyPath();
  sub_10001EFAC(v34);
  *(v25 + v27[17]) = 0;
  v54 = v19;
  v66 = 0;
  State.init(wrappedValue:)();
  sub_1000102C8();
  v66 = 0;
  State.init(wrappedValue:)();
  sub_1000102C8();
  v35 = v25 + v27[22];
  *v35 = sub_10011469C;
  *(v35 + 1) = 0;
  v35[16] = 0;
  v36 = v25 + v27[24];
  *v36 = sub_100116F64;
  *(v36 + 1) = 0;
  v36[16] = 0;
  v37 = v27[25];
  v53 = a2;
  v38 = (v25 + v37);
  type metadata accessor for WeatherConditionBackgroundModifierState(0);
  swift_allocObject();
  v66 = sub_1009B5F9C();
  State.init(wrappedValue:)();
  v39 = v68;
  *v38 = v67;
  v38[1] = v39;
  *(v25 + v27[26]) = 1092616192;
  v24(v25 + v27[12], v13, v8);
  *(v25 + v27[13]) = v65;
  sub_100035B30(v69, v25 + v27[14]);
  v40 = (v25 + v27[23]);
  type metadata accessor for WeatherVFXConditionBackground();
  sub_100061DF4(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
  swift_unknownObjectRetain();

  *v40 = ObservedObject.init(wrappedValue:)();
  v40[1] = v41;
  v42 = (v25 + v27[15]);
  v43 = v55;
  *v42 = v56;
  v42[1] = v43;
  v42[2] = v57;
  *(v25 + v27[18]) = 0;
  v44 = v27[16];
  v52[1] = v23;
  *(v25 + v44) = v23;

  v45 = v59;
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v46 = v63;
  v47 = *(v62 + 8);
  v47(v45, v63);
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v47(v45, v46);
  v48 = v25 + v27[19];
  AnimatedGradient.init(baseGradient:animatedGradient:showAnimatedGradient:)();

  sub_100006F14(v69);
  v49 = v60;
  v60(v13, v8);
  sub_100006F14(v70);
  v49(v54, v8);
  *&v48[*(sub_10022C350(&qword_100CACB08) + 28)] = 0;
  v50 = sub_10022C350(&qword_100CC3938);
  return (*(*(v50 - 8) + 16))(v53, v64, v50);
}

void sub_1001108E0()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v24 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA4BA8);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_10001D3DC();
  v16 = *(v15 + 120);
  sub_100069CDC();
  sub_1000302D8(v0 + v16, v0, &qword_100CA4BA8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(sub_10022C350(&qword_100CA4BC8) + 48);
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_1000037E8();
      (*(v19 + 32))(v3, v0 + v18);
      (*(v5 + 8))(v0, v24);
    }

    else
    {
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_1000037E8();
      (*(v22 + 32))(v3, v0);
    }
  }

  else
  {
    v23 = *(v0 + 16);
    (*v0)();
    v23(v9);

    v20 = *(sub_10022C350(&qword_100CA4BC8) + 48);
    (*(v5 + 32))(v13, v9, v24);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_1000037E8();
    (*(v21 + 16))(v13 + v20, v3);
    swift_storeEnumTagMultiPayload();
    sub_100017BD8();
    sub_10053347C(v13, v1 + v16, &qword_100CA4BA8);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_100110BB4@<X0>(void (*a1)(void *, uint64_t)@<X0>, void (*a2)(void *__return_ptr, __n128)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&unk_100CA4BC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  a2(v17, v7);
  a1(v17, 1);

  v10 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  if (sub_100024D10(v9, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a3, v9, v10);
  }

  sub_1000180EC(v9, &unk_100CA4BC0);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v12._countAndFlagsBits = 0xD00000000000004BLL;
  v12._object = 0x8000000100ABBDF0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000002BLL;
  v13._object = 0x8000000100ABC100;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._object = 0x8000000100ABC130;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100110E28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = sub_10022C350(&unk_100CE2F20);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = sub_10022C350(&qword_100CA65D8);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v40 - v25;
  if ((static Solarium.isEnabled.getter() & 1) != 0 && (*(v4 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_backgroundViewType) & 1) == 0)
  {
    v35 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
    v36 = type metadata accessor for LocationsState();
    sub_100169AC0(*(v35 + *(v36 + 24)), v19);
    v37 = type metadata accessor for LocationModel();
    if (sub_100024D10(v19, 1, v37) == 1)
    {
      sub_1000180EC(v19, &unk_100CE2F20);
      v38 = type metadata accessor for Location();
      sub_10001B350(v26, 1, 1, v38);
    }

    else
    {
      LocationModel.location.getter();
      (*(*(v37 - 8) + 8))(v19, v37);
    }

    sub_100111AFC(a1, v26, v41);
    v39 = v26;
    return sub_1000180EC(v39, &qword_100CA65D8);
  }

  sub_1001114B8();
  sub_1001114B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001FB88();
    sub_1001115D0(v10, type metadata accessor for ViewState.SecondaryViewState);
    if (a2)
    {
LABEL_5:
      if (qword_100CA2740 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000703C(v27, qword_100D90C18);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error: Could not create an initial input in WeatherConditionBackgroundModelFactoryInput! This is a bug and should be investigated.", v30, 2u);
      }

      simulateCrash(_:_:)();
      v31 = type metadata accessor for Location();
      sub_10001B350(v23, 1, 1, v31);
      sub_100023468();
      goto LABEL_18;
    }

LABEL_13:
    v33 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
    return sub_10001B350(v41, 1, 1, v33);
  }

  if (*(v15 + *(v11 + 36) + 8) == 1)
  {
    v32 = [objc_opt_self() currentDevice];
    [v32 userInterfaceIdiom];

    LOBYTE(v32) = *(v15 + *(v11 + 28));
    sub_10001FB88();
    if ((v32 & 1) == 0)
    {

      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_10001FB88();
  }

  sub_100111628(a1, v23);
  sub_100023468();

LABEL_18:
  v39 = v23;
  return sub_1000180EC(v39, &qword_100CA65D8);
}

uint64_t sub_1001112E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100111344(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001113A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001113FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10011145C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001114B8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100111510(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100111570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001115D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100111628@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v3 - 8);
  v32 = &v31 - v4;
  v5 = type metadata accessor for LocationsState();
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Location.Identifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001114B8();
  if (sub_100024D10(v20, 1, v11) == 1)
  {
    goto LABEL_7;
  }

  v31 = a2;
  (*(v12 + 32))(v17, v20, v11);
  sub_1001114B8();
  static CurrentLocation.placeholderIdentifier.getter();
  v21 = static Location.Identifier.== infix(_:_:)();
  v22 = *(v12 + 8);
  v23 = v22(v14, v11);
  if (v21)
  {
    sub_10022C350(&qword_100CA38C0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v32, 1, 1, v24);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v25 = enum case for LocationModel.current(_:);
    v26 = type metadata accessor for LocationModel();
    (*(*(v26 - 8) + 104))(v10, v25, v26);
    sub_10001B350(v10, 0, 1, v26);
  }

  else
  {
    __chkstk_darwin(v23);
    *(&v31 - 2) = v17;
    sub_100030C98();
  }

  sub_1001115D0(v7, type metadata accessor for LocationsState);
  v27 = type metadata accessor for LocationModel();
  v28 = sub_100024D10(v10, 1, v27);
  a2 = v31;
  if (v28 == 1)
  {
    v22(v17, v11);
    sub_1000180EC(v10, &unk_100CE2F20);
LABEL_7:
    v29 = type metadata accessor for Location();
    return sub_10001B350(a2, 1, 1, v29);
  }

  LocationModel.location.getter();
  v22(v17, v11);
  return (*(*(v27 - 8) + 8))(v10, v27);
}

uint64_t sub_100111AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a3;
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v163 = &v127 - v6;
  v7 = sub_10022C350(&qword_100CB1288);
  __chkstk_darwin(v7 - 8);
  v9 = &v127 - v8;
  v10 = sub_10022C350(&qword_100CACCC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v127 - v11;
  v13 = sub_10022C350(&qword_100CA58B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v127 - v14;
  v179 = type metadata accessor for Date();
  v160 = *(v179 - 8);
  __chkstk_darwin(v179);
  v178 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for BackgroundAnimationKind();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v176 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v156 = &v127 - v19;
  v177 = type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  v175 = *(v177 - 8);
  __chkstk_darwin(v177);
  v161 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v174 = &v127 - v22;
  v23 = type metadata accessor for TimeState();
  __chkstk_darwin(v23 - 8);
  v136 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v25 - 8);
  v133 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v135 = &v127 - v28;
  v29 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
  __chkstk_darwin(v29 - 8);
  v129 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&qword_100CCD850);
  __chkstk_darwin(v31 - 8);
  v152 = &v127 - v32;
  v151 = type metadata accessor for PreprocessedWeatherData();
  __chkstk_darwin(v151);
  v128 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for WeatherConditionBackgroundTimeData();
  __chkstk_darwin(v155);
  v153 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v173 = &v127 - v36;
  v37 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v37 - 8);
  v159 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v148 = &v127 - v40;
  v149 = type metadata accessor for Location();
  v132 = *(v149 - 8);
  __chkstk_darwin(v149);
  v131 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CA2CD8);
  __chkstk_darwin(v42 - 8);
  v165 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v184 = &v127 - v45;
  v46 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v46 - 8);
  v154 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v134 = &v127 - v49;
  __chkstk_darwin(v50);
  v150 = &v127 - v51;
  __chkstk_darwin(v52);
  v183 = &v127 - v53;
  v147 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v147);
  v146 = &v127 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for Location.Identifier();
  v55 = *(v188 - 8);
  __chkstk_darwin(v188);
  v187 = &v127 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v145 = &v127 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for WeatherConditionBackgroundConfig.CameraPositionType();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v144 = &v127 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for VFXEffectViewID();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v143 = &v127 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for WeatherConditionBackgroundOptions();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v127 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v182 = &v127 - v62;
  v63 = [objc_opt_self() sharedApplication];
  v169 = UIApplication.maybeWindow.getter();

  v64 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v65 = *(v64 + *(type metadata accessor for LocationsState() + 36));
  v66 = *(v65 + 16);
  v166 = a1;
  v162 = v9;
  v180 = v15;
  v181 = v12;
  v167 = a2;
  v130 = v55;
  if (v66)
  {
    v189[0] = _swiftEmptyArrayStorage;

    sub_10000369C(0, v66, 0);
    v67 = v189[0];
    v69 = *(v55 + 16);
    v68 = v55 + 16;
    v186 = v69;
    v70 = (*(v68 + 64) + 32) & ~*(v68 + 64);
    v127 = v65;
    v71 = v65 + v70;
    v185 = *(v68 + 56);
    do
    {
      v72 = v187;
      v73 = v188;
      v186(v187, v71, v188);
      v74 = Location.Identifier.uniqueID.getter();
      v76 = v75;
      (*(v68 - 8))(v72, v73);
      v189[0] = v67;
      v78 = *(v67 + 16);
      v77 = *(v67 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_10000369C((v77 > 1), v78 + 1, 1);
        v67 = v189[0];
      }

      *(v67 + 16) = v78 + 1;
      v79 = v67 + 16 * v78;
      *(v79 + 32) = v74;
      *(v79 + 40) = v76;
      v71 += v185;
      --v66;
    }

    while (v66);

    a2 = v167;
    a1 = v166;
  }

  (*(v137 + 104))(v143, enum case for VFXEffectViewID.locationViewer(_:), v138);
  (*(v139 + 104))(v144, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v140);
  (*(v141 + 104))(v145, enum case for WeatherConditionBackgroundOptions.DisplayLocation.locationViewer(_:), v142);
  v80 = v169;
  v81 = v149;
  if (v169)
  {
    [v169 bounds];
    v82 = v80;
    UIWindow.displayScale.getter();
  }

  v83 = v146;
  sub_1001114B8();
  sub_1001115D0(v83, type metadata accessor for ViewState);
  WeatherConditionBackgroundOptions.init(locationIDs:applyMask:applyLegibilityScrim:effectViewID:canShowCollisionLayer:cameraPositionType:displayLocation:windowBounds:displayScale:locationViewerOrientation:)();
  v84 = v148;
  sub_100095588();
  if (sub_100024D10(v84, 1, v81) == 1)
  {
    sub_1000180EC(v84, &qword_100CA65D8);
    v85 = type metadata accessor for LocationWeatherDataState(0);
    sub_10001B350(v183, 1, 1, v85);
    v86 = type metadata accessor for WeatherCondition();
    sub_10001B350(v184, 1, 1, v86);
  }

  else
  {
    v87 = v132;
    v88 = v131;
    (*(v132 + 32))(v131, v84, v81);
    v89 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v90 = Location.id.getter();
    sub_1000864C0(v90, v91, v89);

    v92 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);

    v93 = v187;
    Location.identifier.getter();
    v94 = Location.Identifier.id.getter();
    sub_100113300(v94, v95, v92);

    (*(v130 + 8))(v93, v188);
    (*(v87 + 8))(v88, v81);
  }

  v96 = v179;
  v97 = v160;
  v98 = v152;
  v99 = v150;
  sub_100095588();
  v100 = type metadata accessor for LocationWeatherDataState(0);
  v101 = sub_100024D10(v99, 1, v100);
  v188 = v100;
  if (v101 == 1)
  {
    sub_1000180EC(v99, &qword_100CA37B0);
    sub_10001B350(v98, 1, 1, v151);
LABEL_15:
    sub_1000180EC(v98, &qword_100CCD850);
    sub_100035B30(v168 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory, v189);
    sub_1000161C0(v189, v189[3]);
    v102 = v134;
    sub_100095588();
    if (sub_100024D10(v102, 1, v100) == 1)
    {
      sub_1000180EC(v102, &qword_100CA37B0);
      v103 = type metadata accessor for WeatherData(0);
      v104 = v135;
      sub_10001B350(v135, 1, 1, v103);
    }

    else
    {
      v104 = v135;
      sub_1001A0D3C();
      sub_1001115D0(v102, type metadata accessor for LocationWeatherDataState);
    }

    v105 = v136;
    sub_1001114B8();
    sub_1000756B0(a2, v104, v105, v153);
    sub_1000180EC(v104, &qword_100CA3898);
    (*(v97 + 8))(v105, v96);
    sub_100006F14(v189);
    v106 = v97;
    goto LABEL_20;
  }

  sub_1001ACCC0();
  sub_1001115D0(v99, type metadata accessor for LocationWeatherDataState);
  if (sub_100024D10(v98, 1, v151) == 1)
  {
    goto LABEL_15;
  }

  v107 = v128;
  sub_100113818();
  sub_1001114B8();
  sub_1001115D0(v107, type metadata accessor for PreprocessedWeatherData);
  sub_100113818();
  v106 = v97;
LABEL_20:
  v108 = v173;
  sub_100113818();
  v109 = *(v168 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_forceTileGradientPresentationContext);
  v110 = v156;
  sub_100113870(v156);
  v111 = v174;
  BackgroundAnimationKind.gradientContext.getter();
  (*(v157 + 8))(v110, v158);
  v112 = v175;
  v113 = &enum case for WeatherConditionGradientModel.PresentationContext.tile(_:);
  if (!v109)
  {
    v113 = &enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:);
  }

  v114 = v177;
  (*(v175 + 104))(v111, *v113, v177);
  sub_100113870(v176);
  (*(v106 + 16))(v178, v108, v96);
  sub_100095588();
  sub_100095588();
  sub_100095588();
  swift_beginAccess();
  type metadata accessor for EnvironmentState();
  sub_100095588();
  (*(v171 + 16))(v170, v182, v172);
  (*(v112 + 16))(v161, v111, v114);
  v115 = v154;
  sub_100095588();
  if (sub_100024D10(v115, 1, v188) == 1)
  {
    sub_1000180EC(v115, &qword_100CA37B0);
    v116 = v164;
    v117 = v163;
    v118 = v162;
  }

  else
  {
    v119 = v133;
    sub_1001A0D3C();
    sub_1001115D0(v115, type metadata accessor for LocationWeatherDataState);
    v120 = type metadata accessor for WeatherData(0);
    v121 = sub_100024D10(v119, 1, v120);
    v116 = v164;
    v118 = v162;
    if (v121 != 1)
    {
      v123 = *(v120 + 24);
      v124 = type metadata accessor for WeatherDataModel();
      (*(*(v124 - 8) + 16))(v118, v119 + v123, v124);
      sub_1001115D0(v119, type metadata accessor for WeatherData);
      sub_10001B350(v118, 0, 1, v124);
      v117 = v163;
      goto LABEL_28;
    }

    sub_1000180EC(v119, &qword_100CA3898);
    v117 = v163;
  }

  v122 = type metadata accessor for WeatherDataModel();
  sub_10001B350(v118, 1, 1, v122);
LABEL_28:
  sub_10001B350(v117, 1, 1, v179);
  WeatherConditionBackgroundModelFactoryInput.init(animationKind:currentTime:elevation:moonData:debugConditionOverride:isReduceMotionEnabled:location:options:presentationContext:weatherData:conditionBackgroundDateOverride:)();

  (*(v175 + 8))(v174, v177);
  sub_1001115D0(v173, type metadata accessor for WeatherConditionBackgroundTimeData);
  sub_1000180EC(v184, &qword_100CA2CD8);
  sub_1000180EC(v183, &qword_100CA37B0);
  (*(v171 + 8))(v182, v172);
  v125 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  return sub_10001B350(v116, 0, 1, v125);
}

void sub_10011332C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for UUID();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        type metadata accessor for ListPreprocessedDataModel();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for UVIndexComponentPreprocessedDataModel();
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[10];
          }

          else
          {
            type metadata accessor for PressureComponentPreprocessedDataModel();
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[12];
            }

            else
            {
              v10 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
              v14 = a4[14];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100113548(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for UUID();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_19:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
      sub_100003928();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[7];
      }

      else
      {
        type metadata accessor for ListPreprocessedDataModel();
        sub_100003928();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[8];
        }

        else
        {
          type metadata accessor for UVIndexComponentPreprocessedDataModel();
          sub_100003928();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[10];
          }

          else
          {
            type metadata accessor for PressureComponentPreprocessedDataModel();
            sub_100003928();
            if (*(v22 + 84) == a2)
            {
              v8 = v21;
              v14 = a3[12];
            }

            else
            {
              v8 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
              v14 = a3[14];
            }
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_19;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_100113754(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001137B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100113818()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100113870@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CE2C00);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  swift_beginAccess();
  sub_100095588();
  v8 = type metadata accessor for BackgroundAnimationKind();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  sub_1000180EC(v7, &qword_100CE2C00);
  sub_100113A58(a1);
  (*(*(v8 - 8) + 16))(v4, a1, v8);
  sub_10001B350(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100097AA4();
  return swift_endAccess();
}

uint64_t sub_100113A58@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100113C1C(v5);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:))
  {
    *a1 = 1;
    v7 = &enum case for BackgroundAnimationKind.vfx(_:);
LABEL_5:
    v8 = *v7;
    v9 = type metadata accessor for BackgroundAnimationKind();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  if (v6 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:))
  {
    v7 = &enum case for BackgroundAnimationKind.mica(_:);
    goto LABEL_5;
  }

  *a1 = 1;
  v11 = enum case for BackgroundAnimationKind.vfx(_:);
  v12 = type metadata accessor for BackgroundAnimationKind();
  (*(*(v12 - 8) + 104))(a1, v11, v12);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100113C1C@<X0>(uint64_t a1@<X8>)
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

  sub_100113E68();
  Configurable.setting<A>(_:)();

  (*(*(v8 - 8) + 16))(v4, a1, v8);
  sub_10001B350(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100097AA4();
  return swift_endAccess();
}

unint64_t sub_100113E68()
{
  result = qword_100CE2C08[0];
  if (!qword_100CE2C08[0])
  {
    type metadata accessor for WeatherConditionBackgroundModelInputFactory();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CE2C08);
  }

  return result;
}

uint64_t sub_100113ED8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, __n128)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CA4BB0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  a2(a1, 1, v7);
  v10 = type metadata accessor for WeatherConditionBackgroundModel();
  if (sub_100024D10(v9, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a3, v9, v10);
  }

  sub_1000180EC(v9, &qword_100CA4BB0);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v12._countAndFlagsBits = 0xD000000000000050;
  v12._object = 0x8000000100ABBD90;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000002BLL;
  v13._object = 0x8000000100ABC100;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._object = 0x8000000100ABC130;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001140BC@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for WeatherConditionBackgroundModel();

  return sub_10001B350(a2, 0, 1, v3);
}

unint64_t sub_100114168()
{
  result = qword_100CA5410;
  if (!qword_100CA5410)
  {
    type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5410);
  }

  return result;
}

unint64_t sub_1001141C8()
{
  result = qword_100CB2D00;
  if (!qword_100CB2D00)
  {
    sub_10022E824(&qword_100CCC930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2D00);
  }

  return result;
}

uint64_t sub_10011422C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB5F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011429C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001142FC()
{
  v0 = type metadata accessor for Location();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BackgroundAnimationData.Model();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BackgroundAnimationData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeatherConditionBackgroundModel.animationData.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for BackgroundAnimationData.none(_:) || v12 != enum case for BackgroundAnimationData.loaded(_:))
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    BackgroundAnimationData.Model.location.getter();
    v13 = Location.id.getter();
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }

  return v13;
}

uint64_t sub_1001145A0(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_1001145E8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100114640(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001146C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v119 = a2;
  v129 = a1;
  sub_10022C350(&qword_100CACF38);
  sub_100003828();
  __chkstk_darwin(v2);
  v130 = &v99 - v3;
  v124 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  countAndFlagsBits = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v123 = v7 - v6;
  sub_10022C350(&qword_100CAA9F0);
  sub_100003828();
  __chkstk_darwin(v8);
  v108 = &v99 - v9;
  v116 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  object = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v111 = v13 - v12;
  v131 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v121 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v99 - v16;
  v18 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  v117 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v99 - v24;
  v26 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v33 = type metadata accessor for Locale();
  sub_1000037C4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  static Locale.current.getter();
  Locale.language.getter();
  v40 = *(v35 + 8);
  v110 = v33;
  v40(v39, v33);
  LOBYTE(v35) = Locale.Language.prefersFullTemperatureScale.getter();
  (*(v28 + 8))(v32, v26);
  v115 = type metadata accessor for WeatherData(0);
  v41 = v129 + *(v115 + 24);
  WeatherDataModel.currentWeather.getter();
  v128 = v17;
  CurrentWeather.apparentTemperature.getter();
  v42 = *(v20 + 8);
  v109 = v25;
  v125 = v18;
  v122 = v42;
  v120 = v20 + 8;
  v42(v25, v18);
  if (v35)
  {
    static Set<>.value.getter();
    v43 = v108;
    sub_100009214();
    v103 = v41;
    v44 = v111;
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v43, &qword_100CAA9F0);
    v107 = enum case for WeatherFormatPlaceholder.none(_:);
    v45 = countAndFlagsBits;
    v46 = *(countAndFlagsBits + 104);
    v105 = countAndFlagsBits + 104;
    v106 = v46;
    v47 = v123;
    v48 = v124;
    v46(v123);
    v104 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100006AD0();
    v102 = sub_1001151A4(v49, 255, v50);
    v51 = v131;
    v52 = v116;
    v53 = v128;
    v54 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v113 = v55;
    v114 = v54;

    v56 = *(v45 + 8);
    countAndFlagsBits = v45 + 8;
    v101 = v56;
    v56(v47, v48);
    v57 = object[1];
    ++object;
    v100 = v57;
    v57(v44, v52);
    v58 = v44;
    v59 = v121 + 8;
    v121 = *(v121 + 1);
    v112 = v59 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v121(v53, v51);
    v60 = v109;
    WeatherDataModel.currentWeather.getter();
    CurrentWeather.apparentTemperature.getter();
    v122(v60, v125);
    static Set<>.unit.getter();
    sub_100009214();
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v43, &qword_100CAA9F0);
    v61 = v123;
    v62 = v124;
    v106(v123, v107, v124);
    static UnitManager.standard.getter();
    v63 = v61;
    v64 = v131;
    v110 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v108 = v65;

    v101(v63, v62);
    v100(v58, v52);
    v121(v53, v64);
    v66 = v60;
  }

  else
  {
    v67 = v111;
    static WeatherFormatStyle<>.weather.getter();
    v68 = countAndFlagsBits;
    v70 = v123;
    v69 = v124;
    (*(countAndFlagsBits + 104))(v123, enum case for WeatherFormatPlaceholder.none(_:), v124);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100006AD0();
    sub_1001151A4(v71, 255, v72);
    v73 = v131;
    v74 = v116;
    v75 = v128;
    v76 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v113 = v77;
    v114 = v76;

    (*(v68 + 8))(v70, v69);
    (object[1])(v67, v74);
    v78 = *(v121 + 1);
    v112 = (v121 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v121 = v78;
    v78(v75, v73);
    v110 = 0;
    v108 = 0;
    v66 = v109;
  }

  v79 = v130;
  sub_100115490(v118, v129, v130);
  v80 = [objc_opt_self() mainBundle];
  v132._object = 0x8000000100AE4560;
  v81._countAndFlagsBits = 0x694C20736C656546;
  v81._object = 0xEA0000000000656BLL;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v132._countAndFlagsBits = 0x10000000000002E6;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v81, 0, v80, v82, v132);
  object = v83._object;
  countAndFlagsBits = v83._countAndFlagsBits;

  v84 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  v85 = v119;
  sub_1001163D0(v79, v119 + *(v84 + 28));
  WeatherDataModel.currentWeather.getter();
  v86 = v128;
  CurrentWeather.apparentTemperature.getter();
  v87 = v66;
  v88 = v125;
  v89 = v122;
  v122(v87, v125);
  v90 = v117;
  WeatherDataModel.currentWeather.getter();
  v91 = StringBuilder.makeString(for:data:formattedForAccessibility:)();
  v93 = v92;
  v89(v90, v88);
  v121(v86, v131);
  result = sub_1000180EC(v130, &qword_100CACF38);
  v95 = object;
  *v85 = countAndFlagsBits;
  v85[1] = v95;
  v96 = v113;
  v85[2] = v114;
  v85[3] = v96;
  v97 = v108;
  v85[4] = v110;
  v85[5] = v97;
  v98 = (v85 + *(v84 + 32));
  *v98 = v91;
  v98[1] = v93;
  return result;
}

uint64_t sub_1001150CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100115114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011515C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001151A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1001151EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100115234()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB4ED0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor__animatedBackgroundsEnabled;
  v14 = 1;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v6, v5, v2);
  *(v1 + OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_observer) = 0;
  v7 = OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_defaults;
  v8 = [objc_opt_self() standardUserDefaults];
  *(v1 + v7) = v8;
  v13 = v8;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v9 = v8;
  v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v11 = *(v1 + OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_observer);
  *(v1 + OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_observer) = v10;

  return v1;
}

id sub_100115404@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 weather_vfx_animatedBackgrounds_enabled];
  *a2 = result;
  return result;
}

uint64_t sub_10011544C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100115490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = type metadata accessor for AppConfiguration();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherFormatPlaceholder();
  v8 = *(v7 - 8);
  v120 = v7;
  v121 = v8;
  __chkstk_darwin(v7);
  v119 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v108 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CA53F8);
  v124 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v118 = &v93 - v15;
  __chkstk_darwin(v16);
  v123 = &v93 - v17;
  __chkstk_darwin(v18);
  v126 = &v93 - v19;
  v122 = type metadata accessor for CurrentWeather();
  v125 = *(v122 - 8);
  __chkstk_darwin(v122);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  v115 = type metadata accessor for TemperatureDifferenceThresholdDetector();
  v25 = *(v115 - 8);
  __chkstk_darwin(v115);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2A18 != -1)
  {
    swift_once();
  }

  type metadata accessor for FeelsLikeComponentViewModelFactory();
  sub_1001151A4(&qword_100CE39D0, v28, type metadata accessor for FeelsLikeComponentViewModelFactory);
  Configurable.setting<A>(_:)();
  if (v127 == 1)
  {
    if (qword_100CA2000 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    v30 = sub_10000703C(v29, qword_100D8FCC8);
    sub_1008C84AC(v30, a3, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
    v31 = a3;
    v32 = 0;
    v33 = v29;
  }

  else
  {
    v105 = a1;
    v114 = a3;
    TemperatureDifferenceThresholdDetector.init()();
    v34 = a2 + *(type metadata accessor for WeatherData(0) + 24);
    WeatherDataModel.currentWeather.getter();
    v35 = v126;
    CurrentWeather.temperature.getter();
    v36 = v12;
    v37 = v24;
    v39 = v125 + 8;
    v38 = *(v125 + 8);
    v106 = v37;
    v40 = v122;
    v38();
    v116 = v34;
    WeatherDataModel.currentWeather.getter();
    v41 = v123;
    CurrentWeather.apparentTemperature.getter();
    v107 = v38;
    v125 = v39;
    (v38)(v21, v40);
    v42 = v36;
    v43 = [objc_opt_self() fahrenheit];
    v44 = TemperatureDifferenceThresholdDetector.areTemperaturesSignificantlyDifferent(_:_:threshold:thresholdUnit:)();

    v46 = v124 + 8;
    v45 = *(v124 + 8);
    v45(v41, v36);
    v45(v35, v36);
    (*(v25 + 8))(v27, v115);
    if (v44)
    {
      v115 = type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      v47 = UnitManager.temperature.getter();

      NSUnitTemperature.feelsLikeVarianceThreshold.getter();
      v49 = v48;

      static UnitManager.standard.getter();
      v103 = UnitManager.temperature.getter();

      v50 = v45;
      v51 = v106;
      v52 = v122;
      WeatherDataModel.currentWeather.getter();
      v53 = v118;
      CurrentWeather.temperature.getter();
      v54 = v107;
      (v107)(v51, v52);
      Measurement<>.converted(to:)();
      v50(v53, v42);
      Measurement.rounded.getter();
      v50(v41, v42);
      v104 = v50;
      v55 = v106;
      WeatherDataModel.currentWeather.getter();
      v56 = v117;
      CurrentWeather.apparentTemperature.getter();
      (v54)(v55, v52);
      v57 = v103;
      Measurement<>.converted(to:)();
      v50(v56, v42);
      Measurement.rounded.getter();
      v50(v53, v42);
      Measurement.value.getter();
      Measurement.value.getter();
      sub_10000F868();
      v103 = v57;
      Measurement.init(value:unit:)();
      v58 = [objc_opt_self() mainBundle];
      v128._object = 0x8000000100AE4880;
      v59._countAndFlagsBits = 0x203A6C6175746341;
      v60._object = 0x8000000100AE4850;
      v128._countAndFlagsBits = 0xD00000000000004ALL;
      v60._countAndFlagsBits = 0xD000000000000027;
      v59._object = 0xEA00000000004025;
      v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v58, v59, v128);
      countAndFlagsBits = v61._countAndFlagsBits;
      object = v61._object;

      sub_10022C350(&qword_100CA40C8);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_100A2C3F0;
      v63 = v55;
      WeatherDataModel.currentWeather.getter();
      v64 = v117;
      CurrentWeather.temperature.getter();
      (v107)(v63, v122);
      v65 = v108;
      static WeatherFormatStyle<>.weather.getter();
      v102 = enum case for WeatherFormatPlaceholder.none(_:);
      v66 = v121;
      v67 = *(v121 + 104);
      v100 = v121 + 104;
      v101 = v67;
      v69 = v119;
      v68 = v120;
      v67(v119);
      static UnitManager.standard.getter();
      v124 = v46;
      v97 = sub_1001151A4(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
      v70 = v113;
      v71 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v94 = v72;

      v73 = *(v66 + 8);
      v121 = v66 + 8;
      v96 = v73;
      v73(v69, v68);
      v95 = *(v112 + 8);
      v95(v65, v70);
      v104(v64, v42);
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = sub_100035744();
      v74 = v94;
      *(v62 + 32) = v71;
      *(v62 + 40) = v74;
      v117 = static String.localizedStringWithFormat(_:_:)();
      v112 = v75;

      sub_1000161C0((v105 + 24), *(v105 + 48));
      v76 = v109;
      dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
      v105 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
      v77 = v114 + *(v105 + 20);
      AppConfiguration.temperatureScale.getter();
      (*(v110 + 8))(v76, v111);
      Measurement.value.getter();
      v79 = v78;
      Measurement.value.getter();
      v81 = v80;
      static WeatherFormatStyle<>.weather.getter();
      v82 = v119;
      v83 = v120;
      v101(v119, v102, v120);
      static UnitManager.standard.getter();
      v84 = v118;
      v115 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v111 = v85;

      v96(v82, v83);
      v95(v65, v70);
      v86 = v106;
      WeatherDataModel.currentWeather.getter();
      LOBYTE(v71) = CurrentWeather.isDaylight.getter();

      (v107)(v86, v122);
      v87 = v104;
      v104(v84, v42);
      v87(v123, v42);
      v87(v126, v42);
      v88 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
      *&v77[v88[5]] = v79;
      *&v77[v88[6]] = v81;
      *&v77[v88[7]] = v49;
      v89 = &v77[v88[8]];
      v90 = v111;
      *v89 = v115;
      v89[1] = v90;
      v77[v88[9]] = v71 & 1;
      v31 = v114;
      v91 = v112;
      *v114 = v117;
      *(v31 + 8) = v91;
      v32 = 0;
      v33 = v105;
    }

    else
    {
      v33 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
      v31 = v114;
      v32 = 1;
    }
  }

  return sub_10001B350(v31, v32, 1, v33);
}

uint64_t sub_1001161BC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912D8 = result;
  return result;
}

uint64_t sub_10011630C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100116360()
{
  sub_100011510();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    v5 = sub_1000039EC(*(v4 + 20));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_1001163D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100116440()
{
  sub_10000FE4C();
  v0 = sub_1000A3D80();
  return sub_100005F94(v0);
}

uint64_t sub_100116468@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v5 = sub_10022C350(&qword_100CABD00);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003990(&v90 - v7);
  v8 = sub_10022C350(&qword_100CACDF8);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003990(&v90 - v10);
  v110 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100003990(v13 - v12);
  v14 = sub_10022C350(&qword_100CC2B20);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003990(&v90 - v18);
  v19 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  v115 = *(v19 - 8);
  v116 = v19 - 8;
  v117 = v115;
  __chkstk_darwin(v19 - 8);
  sub_1000037D8();
  sub_100003990(v21 - v20);
  v22 = sub_10022C350(&qword_100CAB9B0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003990(&v90 - v25);
  v26 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v109 = type metadata accessor for Calendar();
  sub_1000037C4();
  v108 = v33;
  __chkstk_darwin(v34);
  sub_1000037D8();
  v37 = v36 - v35;
  v102 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v101 = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  v41 = &v90 - v40;
  v100 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v98 = v42;
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = &v90 - v44;
  v99 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v97 = v46;
  __chkstk_darwin(v47);
  sub_1000037D8();
  v50 = (v49 - v48);
  v51 = a1 + *(type metadata accessor for WeatherData(0) + 24);
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.hourlyForecast.getter();
  v93 = v51;
  WeatherDataModel.dailyForecast.getter();
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v52 = *(v28 + 8);
  v103 = v32;
  v105 = v26;
  v104 = v28 + 8;
  v94 = v52;
  v52(v32, v26);
  v130 = v37;
  v53 = v37;
  v54 = v119;
  sub_1001190BC();
  v129 = v53;
  v55 = v120;
  sub_1001190BC();
  v121 = a2;
  sub_100119580(a2, v122);
  v124 = a2;
  v125 = v53;
  v126 = v54;
  v127 = v55;
  v128 = v50;
  sub_10011A2A8();
  v57 = v56;
  v96 = v50;
  v91 = v45;
  v92 = v41;
  v107 = v53;
  v58 = sub_10011A800(v121, v50, v45, v41, v53, v54, v55);
  v131[0] = v57;

  sub_10011C194(v59);
  v60 = v122;
  v123 = v122;
  sub_10011C1D0();
  v62 = v61;
  sub_10022C350(&qword_100CC2B28);
  v63 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100A2C3F0;
  sub_10011C770(v60, v64 + v63, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  v131[0] = v64;
  sub_10011C194(v62);
  v65 = v131[0];
  v66 = *(v58 + 2);

  v67 = v66 + 24;
  if (__OFADD__(v66, 24))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA29C0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  SettingReader.read<A>(_:)();

  v68 = v118;
  v69 = v106;
  v70 = v95;
  if (LOBYTE(v131[0]) == 1)
  {
    UUID.init()();
    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = type metadata accessor for UUID();
  sub_10001B350(v70, v71, 1, v72);
  sub_100508840(v70, v68);
  sub_100035AD0(v68, v69, &qword_100CC2B20);
  v131[0] = v65;

  sub_10011CC6C(v131);

  v131[0] = sub_10011E62C(v67, v131[0]);
  v131[1] = v73;
  v131[2] = v74;
  v131[3] = v75;
  sub_10022C350(&qword_100CC2B30);
  sub_10011E808();
  v76 = Sequence.unique<A>(by:)();
  swift_unknownObjectRelease();
  v77 = v113;
  sub_100508840(v69, v113);
  *(v77 + *(v110 + 20)) = v76;
  v78 = v111;
  WeatherDataModel.weatherChanges.getter();
  v79 = v112;
  WeatherDataModel.historicalFacts.getter();
  v80 = v103;
  Location.timeZone.getter();
  type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  v81 = v114;
  v82 = v96;
  v83 = v91;
  v84 = v92;
  WeatherForecastDescriptionStringBuilder.buildWeatherDescription(from:hourlyForecast:dailyForecast:weatherChanges:historicalFacts:timeZone:)();
  v94(v80, v105);
  sub_1000180EC(v79, &qword_100CABD00);
  sub_1000180EC(v78, &qword_100CACDF8);
  sub_1000180EC(v118, &qword_100CC2B20);
  sub_10000E73C();
  v85(v84, v102);
  sub_10000E73C();
  v86(v83, v100);
  sub_1000180EC(v120, &qword_100CAB9B0);
  sub_1000180EC(v119, &qword_100CAB9B0);
  sub_10000E73C();
  v87(v82, v99);
  sub_100509B1C(v77, v81, type metadata accessor for HourlyForecastComponentViewModel);
  sub_10011E508(v122, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  sub_10000E73C();
  return v88(v107, v109);
}

uint64_t sub_100116FB0()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB4ED8);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v6 = &v24[-1] - v5;
  v7 = sub_10022C350(&qword_100CB4ED0);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v24[-1] - v11;
  v13 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__isLoaded;
  LOBYTE(v24[0]) = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v13, v12, v7);
  *(v0 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) = 1;
  v14 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__lastModel;
  v15 = type metadata accessor for BackgroundAnimationData.Model();
  sub_10001B350(v6, 1, 1, v15);
  sub_10000FEC4();
  sub_100035AD0(v16, v17, v18);
  sub_10022C350(&qword_100CB4EE0);
  swift_allocObject();
  v19 = Atomic.init(wrappedValue:)();
  sub_1000180EC(v6, &qword_100CB4ED8);
  *(v1 + v14) = v19;
  type metadata accessor for MicaBackgroundAnimation();
  v20 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v24, v24[3]);
  dispatch thunk of WindowType.bounds.getter();
  v21 = MicaBackgroundAnimation.__allocating_init(windowBounds:)();
  sub_100006F14(v24);
  swift_beginAccess();
  v23 = v21;
  Published.init(initialValue:)();
  swift_endAccess();
  return v1;
}

uint64_t sub_100117270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v43 = a2;
  v3 = sub_10022C350(&qword_100CEAFC0);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v42 = v7;
  v44 = sub_10022C350(&qword_100CEAFC8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_10022C350(&qword_100CEAFD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v41 = v13;
  v14 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  v22 = (v2 + *(v21 + 32));
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    if ((v23 & 1) == 0)
    {
LABEL_3:
      v24 = v42;
      sub_1001177F0(v45, v42);
      (*(v5 + 16))(v10, v24, v3);
      swift_storeEnumTagMultiPayload();
      sub_10010FD7C();
      v25 = sub_10022E824(&qword_100CEAFF0);
      v26 = sub_1009B8058();
      v46 = v25;
      v47 = &type metadata for Bool;
      v48 = v26;
      v49 = &protocol witness table for Bool;
      sub_100008CC8();
      swift_getOpaqueTypeConformance2();
      sub_100071668();
      _ConditionalContent<>.init(storage:)();
      return (*(v5 + 8))(v24, v3);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v39 = v14;
    v28 = static Log.runtimeIssuesLog.getter();
    v40 = v11;
    v29 = v3;
    v30 = v28;
    os_log(_:dso:log:_:_:)();

    v3 = v29;
    v11 = v40;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v23, 0);
    (*(v16 + 8))(v20, v39);
    if (v46 != 1)
    {
      goto LABEL_3;
    }
  }

  v31 = *(v2 + *(v21 + 64));
  v32 = static Edge.Set.all.getter();
  sub_10022C350(&qword_100CEAFE8);
  sub_1000037E8();
  v34 = v41;
  (*(v33 + 16))(v41, v45);
  v35 = v34 + *(v11 + 36);
  *v35 = v31;
  *(v35 + 8) = v32;
  sub_1000302D8(v34, v10, &qword_100CEAFD0);
  swift_storeEnumTagMultiPayload();
  sub_10010FD7C();

  v36 = sub_10022E824(&qword_100CEAFF0);
  v37 = sub_1009B8058();
  v46 = v36;
  v47 = &type metadata for Bool;
  v48 = v37;
  v49 = &protocol witness table for Bool;
  sub_100008CC8();
  swift_getOpaqueTypeConformance2();
  sub_100071668();
  _ConditionalContent<>.init(storage:)();
  return sub_100036F90(v34);
}

uint64_t sub_1001176B4()
{
  result = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100117728()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v1 <= 0x3F)
    {
      sub_10013C9EC(319, &qword_100CC2610, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001177F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v176 = sub_10022C350(&qword_100CE1230);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  sub_100003918(v5);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = sub_100003E5C(v6, &v191);
  v149 = v8;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = sub_100003918(v10 - v9);
  v12 = type metadata accessor for WeatherConditionBackgroundModifier(v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = v12 - 8;
  v179[0] = v12 - 8;
  __chkstk_darwin(v12 - 8);
  v178 = sub_10022C350(&qword_100CEB048);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = (&v142 - v17);
  v19 = sub_10022C350(&qword_100CEB040);
  sub_100003E5C(v19, &v176);
  v148 = v20;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  sub_100003990(v22);
  v23 = sub_10022C350(&qword_100CEB038);
  sub_100003E5C(v23, v179);
  v151 = v24;
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_100003990(v26);
  v27 = sub_10022C350(&qword_100CEB030);
  sub_100003E5C(v27, &v180);
  v153 = v28;
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  sub_100003990(v30);
  v31 = sub_10022C350(&qword_100CEB028);
  sub_100003E5C(v31, &v182);
  v155 = v32;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v171 = v34;
  v35 = sub_10022C350(&qword_100CEB020);
  sub_100003E5C(v35, &v184);
  v157 = v36;
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v172 = v38;
  v174 = sub_10022C350(&qword_100CEB018);
  sub_1000037C4();
  v158 = v39;
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v173 = v41;
  v42 = sub_10022C350(&qword_100CEB010);
  sub_100003E5C(v42, &v189);
  v161 = v43;
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v175 = v45;
  v46 = sub_10022C350(&qword_100CEB060);
  sub_100003E5C(v46, &v190);
  v162 = v47;
  sub_100003828();
  __chkstk_darwin(v48);
  sub_1000039BC();
  sub_100003990(v49);
  v159 = sub_10022C350(&qword_100CEB008);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v167 = sub_10022C350(&qword_100CEAFF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v52);
  sub_1000039BC();
  sub_100003990(v53);
  sub_10011895C();
  *v18 = static Alignment.top.getter();
  v18[1] = v54;
  v55 = sub_10022C350(&qword_100CEB068);
  sub_100118C68(v2, a1, v18 + *(v55 + 44));
  v144 = *(v15 + 56);
  sub_100018874();
  v181 = v56;
  v177 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009B8AB4(v2, v177, v57);
  v182 = *(v13 + 80);
  v58 = (v182 + 16) & ~v182;
  v179[1] = v14;
  v59 = swift_allocObject();
  sub_1000423B0(v59);
  v143 = type metadata accessor for WeatherConditionBackgroundModel();
  v60 = sub_100006F64(&qword_100CEB050, &qword_100CEB048);
  sub_100052264();
  v63 = sub_1009B7E78(v61, v62);
  v180 = v2;
  v64 = v178;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v18, &qword_100CEB048);
  v65 = v146;
  sub_1009ACFA0();
  v66 = v177;
  sub_1009B8AB4(v2, v177, v181);
  v145 = v58;
  v67 = swift_allocObject();
  sub_10011A168(v66, v67 + v58);
  v185 = v64;
  v186 = v143;
  v187 = v60;
  v188 = v63;
  sub_100008CC8();
  v178 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100037F30();
  v72 = sub_1009B7E78(v70, v71);
  v73 = v147;
  v74 = v170;
  View.onChange<A>(of:initial:_:)();

  (*(v149 + 8))(v65, v74);
  v75 = sub_10007544C();
  v76(v75, v73);
  v77 = v180;
  type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor(0);
  sub_1009B7E78(&qword_100CEAEF8, type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor);
  StateObject.wrappedValue.getter();
  LOBYTE(v65) = sub_10011A5B4();

  LOBYTE(v183) = v65 & 1;
  v78 = v177;
  v79 = v181;
  sub_1009B8AB4(v77, v177, v181);
  v80 = v145;
  v81 = swift_allocObject();
  sub_10011A168(v78, v81 + v80);
  v185 = v73;
  v186 = v170;
  v187 = OpaqueTypeConformance2;
  v188 = v72;
  v82 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v83 = v150;
  View.onChange<A>(of:initial:_:)();

  v84 = sub_10007544C();
  v85(v84, v83);
  LOBYTE(v183) = *(v180 + *(v179[0] + 80));
  sub_1009B8AB4(v180, v78, v79);
  v86 = swift_allocObject();
  sub_10011A168(v78, v86 + v80);
  v185 = v83;
  v186 = &type metadata for Bool;
  v187 = v82;
  v188 = &protocol witness table for Bool;
  v87 = v80;
  v88 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v89 = v152;
  View.onChange<A>(of:initial:_:)();

  v90 = sub_10007544C();
  v91(v90, v89);
  v92 = v180;
  LOBYTE(v183) = sub_1009AD368() & 1;
  v93 = v181;
  sub_1009B8AB4(v92, v78, v181);
  v94 = swift_allocObject();
  sub_10011A168(v78, v94 + v80);
  v185 = v89;
  v186 = &type metadata for Bool;
  v187 = v88;
  v188 = &protocol witness table for Bool;
  v95 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v96 = v154;
  View.onChange<A>(of:initial:_:)();

  v97 = sub_10007544C();
  v98(v97, v96);
  v99 = v180;
  LOBYTE(v183) = sub_1009AD170() & 1;
  v100 = v177;
  sub_1009B8AB4(v99, v177, v93);
  v101 = swift_allocObject();
  sub_10011A168(v100, v101 + v80);
  v185 = v96;
  v186 = &type metadata for Bool;
  v187 = v95;
  v188 = &protocol witness table for Bool;
  v102 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v103 = v156;
  View.onChange<A>(of:initial:_:)();

  v104 = sub_10007544C();
  v105(v104, v103);
  v106 = v166;
  sub_10011A6E0();
  sub_1009B8AB4(v99, v100, v181);
  v107 = swift_allocObject();
  sub_10011A168(v100, v107 + v87);
  v185 = v103;
  v186 = &type metadata for Bool;
  v187 = v102;
  v188 = &protocol witness table for Bool;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = sub_10011A74C();
  v110 = v174;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v106, &qword_100CE1230);
  v111 = sub_10007544C();
  v112(v111, v110);
  if (*v99)
  {

    v113 = sub_10011BE3C();
    v115 = v114;
    v116 = v113;

    v183 = v115;
    v184 = v116;
    sub_100018874();
    v181 = v117;
    sub_1009B8AB4(v99, v100, v118);
    v119 = swift_allocObject();
    sub_1000423B0(v119);
    v185 = v174;
    v186 = v176;
    v187 = v108;
    v188 = v109;
    sub_100008CC8();
    swift_getOpaqueTypeConformance2();
    sub_10011BEE8();
    sub_1000D43C0();
    v120 = v160;
    sub_1000718C0();
    v121 = v163;
    View.onChange<A>(of:initial:_:)();

    v122 = sub_10007544C();
    v123(v122, v121);
    v124 = sub_100021048();
    v125 = v181;
    sub_1009B8AB4(v124, v126, v181);
    v127 = swift_allocObject();
    sub_1000423B0(v127);
    v128 = v164;
    (*(v162 + 32))(v164, v120, v165);
    v129 = (v128 + *(v159 + 36));
    *v129 = sub_1009B8874;
    v129[1] = v127;
    v129[2] = 0;
    v129[3] = 0;
    v130 = sub_100021048();
    sub_1009B8AB4(v130, v131, v125);
    v132 = swift_allocObject();
    sub_1000423B0(v132);
    v133 = v128;
    v134 = v168;
    sub_100118874(v133, v168);
    sub_100086690();
    v135 = (v134 + *(v125 + 9));
    *v135 = 0;
    v135[1] = 0;
    v135[2] = sub_1009B888C;
    v135[3] = v132;
    LOBYTE(v185) = sub_1009AD26C() & 1;
    v136 = sub_100021048();
    sub_1009B8AB4(v136, v137, v125);
    v138 = swift_allocObject();
    sub_1000423B0(v138);
    sub_1009B8058();
    View.onChange<A>(of:initial:_:)();

    return sub_1001188D8(v134);
  }

  else
  {
    type metadata accessor for LocationViewCollisionOptions();
    sub_100031970();
    sub_1009B7E78(v140, v141);
    sub_1000164CC();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100118874(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CEB008);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1001188D8(uint64_t a1)
{
  sub_10022C350(&qword_100CEAFF0);
  sub_100003D98();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10011895C()
{
  v0 = type metadata accessor for WeatherConditionBackgroundOptions();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BackgroundAnimationData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BackgroundAnimationData.Model();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherConditionBackgroundModifier(0);
  WeatherConditionBackgroundModel.animationData.getter();
  if ((*(v5 + 88))(v7, v4) == enum case for BackgroundAnimationData.loaded(_:))
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    BackgroundAnimationData.Model.options.getter();
    v12 = WeatherConditionBackgroundOptions.applyLegibilityScrim.getter();
    (*(v1 + 8))(v3, v0);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v12 = 0;
  }

  return v12 & 1;
}

void sub_100118BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100118C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a2;
  v5 = sub_10022C350(&qword_100CEB0B8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = sub_10022C350(&qword_100CEB0C0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  sub_1009B41A8(a1, &v24 - v17);
  *&v18[*(v13 + 44)] = 0x409F400000000000;
  static Color.black.getter();
  v19 = Color.opacity(_:)();

  v20 = sub_10022C350(&qword_100CEAFE8);
  (*(*(v20 - 8) + 16))(v11, v25, v20);
  *&v11[*(v6 + 44)] = 0x409F480000000000;
  sub_1000302D8(v18, v15, &qword_100CEB0C0);
  sub_1000302D8(v11, v8, &qword_100CEB0B8);
  sub_1000302D8(v15, a3, &qword_100CEB0C0);
  v21 = sub_10022C350(&qword_100CEB0C8);
  v22 = (a3 + *(v21 + 48));
  *v22 = v19;
  v22[1] = 0x409F440000000000;
  sub_1000302D8(v8, a3 + *(v21 + 64), &qword_100CEB0B8);

  sub_100018144(v11, &qword_100CEB0B8);
  sub_100018144(v18, &qword_100CEB0C0);
  sub_100018144(v8, &qword_100CEB0B8);

  return sub_100018144(v15, &qword_100CEB0C0);
}

void sub_100118F2C()
{
  sub_10013C9EC(319, &qword_100CA45C0, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Precipitation();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TimeZone();
        if (v3 <= 0x3F)
        {
          sub_10013C9EC(319, &qword_100CC2610, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100119068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001190BC()
{
  sub_10000E8AC();
  sub_1000170DC(v3, v4, v5);
  v6 = type metadata accessor for DayWeather();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  v9 = __chkstk_darwin(v8);
  sub_100049EB8(v9, v10, v11, v12, v13, v14, v15, v16, v37);
  v17 = sub_100020E44();
  sub_10022C350(v17);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v18);
  sub_100031EE8();
  sub_10022C350(&qword_100CA7008);
  sub_100031900();
  sub_100003828();
  __chkstk_darwin(v19);
  v20 = sub_100015148();
  v21(v20);
  sub_10003CA04(&qword_100CA7010);
  sub_10003733C();
  sub_10000CFBC(&qword_100CA7018);
  sub_10001A168();
  while (1)
  {
    sub_10000EEE0();
    sub_10003A430();
    if (v22)
    {
      sub_1000180EC(v2, &qword_100CA7008);
      sub_1000243F8();
      goto LABEL_9;
    }

    sub_10004ED04();
    v23 = sub_100028D90();
    v24(v23);
    v25 = sub_10003014C();
    v0(v25);
    sub_10002CBA0();
    v26 = sub_10000928C();
    v6(v26);
    v27 = sub_10002546C();
    v29 = v28(v27);
    v0 = v1;
    if (v1)
    {
      v34 = sub_1000521C0();
      v35(v34);
      sub_1000180EC(v2, &qword_100CA7008);
      goto LABEL_10;
    }

    if (v29)
    {
      break;
    }

    v30 = sub_1000234E8();
    v31(v30);
  }

  sub_1000180EC(v2, &qword_100CA7008);
  v36 = sub_100075248();
  v6(v36);
  sub_1000165A8();
LABEL_9:
  sub_100041C00(v32, v33);
LABEL_10:
  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t sub_100119330(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100119370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  DayWeather.date.getter();
  LOBYTE(a3) = a3(v10);
  (*(v6 + 8))(v10, v4);
  return a3 & 1;
}

unint64_t sub_1001194CC()
{
  result = qword_100CEB140;
  if (!qword_100CEB140)
  {
    sub_10022E824(&qword_100CEB0D0);
    sub_1009B7E78(&qword_100CEB148, &type metadata accessor for MicaView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEB140);
  }

  return result;
}

uint64_t sub_100119580@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v94 = a2;
  v93 = type metadata accessor for WeatherFormatPlaceholder();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v75 - v5;
  v97 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  __chkstk_darwin(v97);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10022C350(&qword_100CA53F8);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v75 - v10;
  v103 = type metadata accessor for Precipitation();
  v96 = *(v103 - 8);
  __chkstk_darwin(v103);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v75 - v15;
  v84 = type metadata accessor for WeatherCondition();
  v16 = *(v84 - 8);
  __chkstk_darwin(v84);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimeZone();
  v100 = *(v19 - 8);
  v101 = v19;
  __chkstk_darwin(v19);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v98 = *(v22 - 8);
  v99 = v22;
  __chkstk_darwin(v22);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v75 - v26;
  CurrentWeather.date.getter();
  Location.timeZone.getter();
  CurrentWeather.condition.getter();
  v28 = CurrentWeather.isDaylight.getter();
  v29 = WeatherCondition.conditionIconName(isDaytime:)(v28 & 1);
  countAndFlagsBits = v29.value._countAndFlagsBits;
  object = v29.value._object;
  (*(v16 + 8))(v18, v84);
  v77 = CurrentWeather.conditionDescription.getter();
  v76 = v30;
  v31 = v96;
  v32 = v103;
  (*(v96 + 13))(v13, enum case for Precipitation.rain(_:), v103);
  v33 = v102;
  static Precipitation.mock(kind:)();
  v34 = (v31 + 8);
  v35 = *(v31 + 1);
  v36 = v13;
  v37 = v97;
  v38 = v32;
  v84 = v34;
  v83 = v35;
  v35(v36, v32);
  v95 = v11;
  CurrentWeather.temperature.getter();
  CurrentWeather.temperature.getter();
  sub_100119F7C();
  v39 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  *v7 = 0;
  (*(v98 + 16))(&v7[v37[13]], v27, v99);
  (*(v100 + 16))(&v7[v37[14]], v21, v101);
  v40 = object;
  *(v7 + 1) = countAndFlagsBits;
  *(v7 + 2) = v40;
  v41 = v76;
  *(v7 + 3) = v77;
  *(v7 + 4) = v41;
  *(v7 + 5) = 0;
  v7[48] = 0;
  (*(v96 + 2))(&v7[v37[9]], v33, v38);
  *&v7[v37[16]] = v39;
  static WeatherClock.date.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v43 = v42;
  v96 = v24;
  Date.timeIntervalSinceReferenceDate.getter();
  v82 = v27;
  v81 = v7;
  v80 = v21;
  if (v43 - v44 > 0.0 || (Date.timeIntervalSinceReferenceDate.getter(), v46 = v45, Date.timeIntervalSinceReferenceDate.getter(), v46 - v47 <= -3600.0))
  {
    v52 = Date.formattedHours(timeZone:forAccessibility:)();
    v53 = &v7[v37[11]];
    *v53 = v52;
    v53[1] = v54;
    v55 = Date.formattedHours(timeZone:forAccessibility:)();
    v56 = &v7[v37[12]];
    *v56 = v55;
    v56[1] = v57;
    v7[v37[15]] = 0;
  }

  else
  {
    v48 = [objc_opt_self() mainBundle];
    v106._object = 0x8000000100AD2A40;
    v49._countAndFlagsBits = 7827278;
    v49._object = 0xE300000000000000;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v106._countAndFlagsBits = 0xD000000000000035;
    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v106);

    *&v7[v37[11]] = v51;
    *&v7[v37[12]] = v51;
    v7[v37[15]] = 1;
  }

  v58 = v85;
  static WeatherFormatStyle<>.weather.getter();
  v59 = v86;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v89 = *(v89 + 8);
  v60 = v90;
  (v89)(v58, v90);
  v61 = v92;
  v62 = v91;
  v63 = v93;
  (*(v92 + 104))(v91, enum case for WeatherFormatPlaceholder.none(_:), v93);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100114168();
  v64 = v88;
  v65 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v67 = v66;

  (*(v61 + 8))(v62, v63);
  (v89)(v59, v60);
  v68 = v81;
  v69 = (v81 + *(v97 + 40));
  *v69 = v65;
  v69[1] = v67;
  Hasher.init(_seed:)();
  sub_100119FC0(v105);
  v70 = Hasher._finalize()();
  v71 = v99;
  v72 = *(v98 + 8);
  v72(v96, v99);
  v73 = *(v87 + 8);
  v73(v104, v64);
  v73(v95, v64);
  v83(v102, v103);
  (*(v100 + 8))(v80, v101);
  v72(v82, v71);
  *v68 = v70;
  sub_100509B1C(v68, v94, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100119F7C()
{
  result = qword_100CA53F0;
  if (!qword_100CA53F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA53F0);
  }

  return result;
}

void sub_100119FC0(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    sub_1000370B0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v3 = *(v1 + 40);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(*(v1 + 48));
  v4 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  type metadata accessor for Precipitation();
  sub_10003C668();
  sub_1005FE610(v5, v6);
  sub_100031E3C();
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v7, v8);
  sub_100031E3C();
  type metadata accessor for TimeZone();
  sub_100008A60();
  sub_1005FE610(v9, v10);
  sub_100031E3C();
  Hasher._combine(_:)(*(v1 + *(v4 + 60)));
  v11 = *(v1 + *(v4 + 64));

  sub_10016D390(a1, v11);
}

uint64_t sub_10011A168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011A1F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10011A24C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_10011A2A8()
{
  sub_10000E8AC();
  v1 = v0;
  v28 = v2;
  v3 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  v11 = sub_100003AE8(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  v30 = v13 - v12;
  sub_10022C350(&qword_100CA7030);
  sub_10011A67C();
  v14 = dispatch thunk of Collection.count.getter();
  if (v14)
  {
    sub_100021788();
    sub_10011A704();
    v31 = _swiftEmptyArrayStorage;
    dispatch thunk of Collection.startIndex.getter();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v5;
      v16 = 0;
      v26 = (v15 + 16);
      v27 = (v15 + 8);
      v25 = v9;
      while (!__OFADD__(v16, 1))
      {
        v29 = v16 + 1;
        v17 = dispatch thunk of Collection.subscript.read();
        (*v26)(v9);
        v17(v32, 0);
        v28(v9);
        if (v1)
        {
          goto LABEL_12;
        }

        v1 = 0;
        v18 = v9;
        v19 = v3;
        (*v27)(v18, v3);
        v20 = v31;
        v21 = v31[2];
        if (v21 >= v31[3] >> 1)
        {
          sub_10011A704();
          v20 = v31;
        }

        v20[2] = v21 + 1;
        sub_10000C7B8();
        v31 = v22;
        sub_1000306D0();
        sub_100114640(v30, v23, v24);
        dispatch thunk of Collection.formIndex(after:)();
        ++v16;
        v3 = v19;
        v9 = v25;
        if (v29 == v14)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v3);

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_10002FE90();
    sub_10000C8F4();
  }
}

uint64_t sub_10011A5B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

unint64_t sub_10011A67C()
{
  result = qword_100CA7040;
  if (!qword_100CA7040)
  {
    sub_10022E824(&qword_100CA7030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA7040);
  }

  return result;
}

void sub_10011A704()
{
  sub_1000EFFE8();
  sub_10003275C();
  *v0 = v1;
}

unint64_t sub_10011A74C()
{
  result = qword_100CA6128;
  if (!qword_100CA6128)
  {
    sub_10022E824(&qword_100CE1230);
    sub_1000F1F60(&qword_100CA6130, &type metadata accessor for TargetWindowSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6128);
  }

  return result;
}

void (*sub_10011A800(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7))(char *, uint64_t)
{
  v228 = a7;
  v234 = a6;
  v213 = a3;
  v232 = a2;
  v218 = a1;
  v7 = sub_10022C350(&qword_100CAC3C8);
  __chkstk_darwin(v7 - 8);
  v229 = (&v190 - v8);
  v223 = type metadata accessor for HourWeather();
  v214 = *(v223 - 8);
  __chkstk_darwin(v223);
  v220 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for TimeZone();
  v221 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  v219 = *(v216 - 8);
  __chkstk_darwin(v216);
  v202 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v201 = &v190 - v13;
  __chkstk_darwin(v14);
  v211 = &v190 - v15;
  __chkstk_darwin(v16);
  v205 = &v190 - v17;
  v18 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v18 - 8);
  v209 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v207 = &v190 - v21;
  __chkstk_darwin(v22);
  v226 = &v190 - v23;
  __chkstk_darwin(v24);
  v26 = &v190 - v25;
  v27 = type metadata accessor for SunEvents();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v208 = &v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v206 = &v190 - v31;
  __chkstk_darwin(v32);
  v225 = &v190 - v33;
  __chkstk_darwin(v34);
  v36 = &v190 - v35;
  v37 = type metadata accessor for Date();
  v233 = *(v37 - 8);
  __chkstk_darwin(v37);
  v203 = &v190 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v204 = &v190 - v40;
  __chkstk_darwin(v41);
  v224 = &v190 - v42;
  __chkstk_darwin(v43);
  v231 = &v190 - v44;
  __chkstk_darwin(v45);
  v222 = &v190 - v46;
  v47 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v47 - 8);
  v227 = &v190 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &v190 - v50;
  v52 = type metadata accessor for DayWeather();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v230 = &v190 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v190 - v56;
  v59 = v58;
  sub_100035AD0(v234, v51, &qword_100CAB9B0);
  if (sub_100024D10(v51, 1, v59) == 1)
  {
    sub_1000180EC(v51, &qword_100CAB9B0);
    return _swiftEmptyArrayStorage;
  }

  v61 = *(v53 + 32);
  v196 = v53 + 32;
  v195 = v61;
  v61(v57, v51, v59);
  DayWeather.sun.getter();
  SunEvents.sunrise.getter();
  v62 = *(v28 + 8);
  v210 = v28 + 8;
  v212 = v62;
  v62(v36, v27);
  v63 = sub_100024D10(v26, 1, v37);
  v64 = v53;
  v65 = v37;
  v66 = v27;
  v200 = v57;
  if (v63 == 1)
  {
    sub_1000180EC(v26, &unk_100CB2CF0);
    v234 = _swiftEmptyArrayStorage;
    v67 = v233;
  }

  else
  {
    v199 = v59;
    v198 = v27;
    v67 = v233;
    v68 = v222;
    (*(v233 + 32))(v222, v26, v65);
    v69 = v231;
    CurrentWeather.date.getter();
    v70 = static Date.< infix(_:_:)();
    v71 = *(v67 + 8);
    v71(v69, v65);
    if (v70)
    {
      v234 = v71;
      v197 = v64;
      v72 = *(v67 + 16);
      v73 = v205;
      v194 = v65;
      v72(v205, v68, v65);
      v74 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
      Location.timeZone.getter();
      sub_100119F7C();
      v193 = static NSDateFormatter.prevailingPeriodSymbols.getter();
      v75 = v215;
      Location.timeZone.getter();
      v192 = Date.formattedTime(timeZone:)();
      v191 = v76;
      v77 = *(v221 + 8);
      v78 = v217;
      v77(v75, v217);
      Location.timeZone.getter();
      v79 = Date.accessibilityFormattedTime(timeZone:)();
      v81 = v80;
      v77(v75, v78);
      *(v73 + v74[6]) = v193;
      v82 = (v73 + v74[7]);
      v83 = v191;
      *v82 = v192;
      v82[1] = v83;
      v84 = (v73 + v74[8]);
      *v84 = v79;
      v84[1] = v81;
      swift_storeEnumTagMultiPayload();
      sub_10011CB7C();
      v86 = v85;
      v87 = *(v85 + 2);
      if (v87 >= *(v85 + 3) >> 1)
      {
        sub_10011CB7C();
        v86 = v183;
      }

      v57 = v200;
      v65 = v194;
      v234(v222, v194);
      *(v86 + 2) = v87 + 1;
      v88 = (*(v219 + 80) + 32) & ~*(v219 + 80);
      v234 = v86;
      sub_100509B1C(v73, v86 + v88 + *(v219 + 72) * v87, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      v67 = v233;
      v59 = v199;
      v64 = v197;
      v66 = v198;
    }

    else
    {
      v71(v68, v65);
      v234 = _swiftEmptyArrayStorage;
      v66 = v198;
      v59 = v199;
    }
  }

  v89 = v225;
  DayWeather.sun.getter();
  v90 = v226;
  SunEvents.sunset.getter();
  v212(v89, v66);
  if (sub_100024D10(v90, 1, v65) == 1)
  {
    sub_1000180EC(v90, &unk_100CB2CF0);
LABEL_19:
    v112 = v229;
    v113 = v230;
    goto LABEL_20;
  }

  v91 = v224;
  (*(v67 + 32))(v224, v90, v65);
  v92 = v231;
  CurrentWeather.date.getter();
  v93 = static Date.< infix(_:_:)();
  v94 = v92;
  v95 = *(v67 + 8);
  v95(v94, v65);
  if ((v93 & 1) == 0)
  {
    v95(v91, v65);
    v57 = v200;
    goto LABEL_19;
  }

  v225 = v95;
  v226 = (v67 + 8);
  v198 = v66;
  v197 = v64;
  v199 = v59;
  v96 = *(v67 + 16);
  v97 = v211;
  v194 = v65;
  v96(v211, v91, v65);
  v98 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  Location.timeZone.getter();
  sub_100119F7C();
  v222 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v99 = v215;
  Location.timeZone.getter();
  v205 = Date.formattedTime(timeZone:)();
  v101 = v100;
  v102 = *(v221 + 8);
  v103 = v217;
  v102(v99, v217);
  Location.timeZone.getter();
  v104 = Date.accessibilityFormattedTime(timeZone:)();
  v106 = v105;
  v102(v99, v103);
  *(v97 + v98[6]) = v222;
  v107 = (v97 + v98[7]);
  *v107 = v205;
  v107[1] = v101;
  v108 = (v97 + v98[8]);
  *v108 = v104;
  v108[1] = v106;
  swift_storeEnumTagMultiPayload();
  v109 = v234;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10011CB7C();
    v109 = v184;
  }

  v111 = *(v109 + 2);
  v110 = *(v109 + 3);
  v234 = v109;
  v59 = v199;
  v64 = v197;
  v65 = v194;
  v112 = v229;
  v113 = v230;
  v66 = v198;
  v114 = v224;
  if (v111 >= v110 >> 1)
  {
    sub_10011CB7C();
    v114 = v224;
    v234 = v185;
  }

  (v225)(v114, v65);
  v115 = v234;
  *(v234 + 2) = v111 + 1;
  sub_100509B1C(v211, v115 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v111, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  v57 = v200;
LABEL_20:
  v116 = v227;
  sub_100035AD0(v228, v227, &qword_100CAB9B0);
  if (sub_100024D10(v116, 1, v59) == 1)
  {
    (*(v64 + 8))(v57, v59);
    v117 = &qword_100CAB9B0;
    v118 = v116;
LABEL_37:
    sub_1000180EC(v118, v117);
    return v234;
  }

  v195(v113, v116, v59);
  sub_10011BF3C(v112);
  v119 = v223;
  if (sub_100024D10(v112, 1, v223) == 1)
  {
    v120 = *(v64 + 8);
    v120(v113, v59);
    v120(v57, v59);
    v117 = &qword_100CAC3C8;
    v118 = v112;
    goto LABEL_37;
  }

  (*(v214 + 32))(v220, v112, v119);
  v121 = v206;
  DayWeather.sun.getter();
  v122 = v207;
  SunEvents.sunrise.getter();
  v212(v121, v66);
  v123 = sub_100024D10(v122, 1, v65);
  v197 = v64;
  if (v123 == 1)
  {
    sub_1000180EC(v122, &unk_100CB2CF0);
  }

  else
  {
    v124 = v233;
    v125 = v204;
    (*(v233 + 32))(v204, v122, v65);
    v126 = v231;
    CurrentWeather.date.getter();
    v127 = static Date.< infix(_:_:)();
    v128 = *(v124 + 8);
    v128(v126, v65);
    if (v127 & 1) != 0 && (v229 = v128, HourWeather.date.getter(), v128 = v229, v129 = static Date.< infix(_:_:)(), v128(v126, v65), (v129))
    {
      v198 = v66;
      v199 = v59;
      v130 = *(v233 + 16);
      v131 = v201;
      v194 = v65;
      v130(v201, v125, v65);
      v132 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
      Location.timeZone.getter();
      sub_100119F7C();
      v228 = static NSDateFormatter.prevailingPeriodSymbols.getter();
      v133 = v215;
      Location.timeZone.getter();
      v134 = Date.formattedTime(timeZone:)();
      v226 = v135;
      v227 = v134;
      v136 = *(v221 + 8);
      v137 = v217;
      v136(v133, v217);
      Location.timeZone.getter();
      v138 = Date.accessibilityFormattedTime(timeZone:)();
      v140 = v139;
      v136(v133, v137);
      v141 = v227;
      *(v131 + v132[6]) = v228;
      v142 = (v131 + v132[7]);
      v143 = v226;
      *v142 = v141;
      v142[1] = v143;
      v144 = (v131 + v132[8]);
      *v144 = v138;
      v144[1] = v140;
      swift_storeEnumTagMultiPayload();
      v145 = v234;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10011CB7C();
        v145 = v186;
      }

      v147 = *(v145 + 2);
      v146 = *(v145 + 3);
      v234 = v145;
      v59 = v199;
      v65 = v194;
      v113 = v230;
      v66 = v198;
      v148 = v204;
      if (v147 >= v146 >> 1)
      {
        sub_10011CB7C();
        v148 = v204;
        v234 = v187;
      }

      v229(v148, v65);
      v149 = v234;
      *(v234 + 2) = v147 + 1;
      sub_100509B1C(v201, v149 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v147, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    }

    else
    {
      v128(v125, v65);
    }

    v64 = v197;
    v57 = v200;
  }

  v150 = v208;
  DayWeather.sun.getter();
  v151 = v209;
  SunEvents.sunset.getter();
  v212(v150, v66);
  if (sub_100024D10(v151, 1, v65) == 1)
  {
    (*(v214 + 8))(v220, v223);
    v152 = *(v64 + 8);
    v152(v113, v59);
    v152(v57, v59);
    v117 = &unk_100CB2CF0;
    v118 = v151;
    goto LABEL_37;
  }

  v154 = v221;
  v155 = v233;
  v156 = v203;
  (*(v233 + 32))(v203, v151, v65);
  v157 = v231;
  CurrentWeather.date.getter();
  v158 = static Date.< infix(_:_:)();
  v159 = *(v155 + 8);
  v159(v157, v65);
  if ((v158 & 1) == 0)
  {
    v159(v156, v65);
    (*(v214 + 8))(v220, v223);
LABEL_49:
    v182 = *(v197 + 8);
    v182(v113, v59);
    v182(v200, v59);
    return v234;
  }

  v160 = v220;
  HourWeather.date.getter();
  v161 = static Date.< infix(_:_:)();
  v159(v157, v65);
  if ((v161 & 1) == 0)
  {
    v159(v156, v65);
    (*(v214 + 8))(v160, v223);
    goto LABEL_49;
  }

  v232 = v159;
  v199 = v59;
  v162 = *(v233 + 16);
  v163 = v202;
  v194 = v65;
  v162(v202, v156, v65);
  v164 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  Location.timeZone.getter();
  sub_100119F7C();
  v233 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v165 = v215;
  Location.timeZone.getter();
  v231 = Date.formattedTime(timeZone:)();
  v229 = v166;
  v167 = *(v154 + 8);
  v168 = v217;
  v167(v165, v217);
  Location.timeZone.getter();
  v169 = Date.accessibilityFormattedTime(timeZone:)();
  v171 = v170;
  v167(v165, v168);
  *(v163 + v164[6]) = v233;
  v172 = (v163 + v164[7]);
  v173 = v229;
  *v172 = v231;
  v172[1] = v173;
  v174 = (v163 + v164[8]);
  *v174 = v169;
  v174[1] = v171;
  swift_storeEnumTagMultiPayload();
  v60 = v234;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10011CB7C();
    v60 = v188;
  }

  v175 = *(v60 + 2);
  v176 = v220;
  v177 = v199;
  v178 = v194;
  v179 = v203;
  v180 = v232;
  if (v175 >= *(v60 + 3) >> 1)
  {
    sub_10011CB7C();
    v60 = v189;
  }

  v180(v179, v178);
  (*(v214 + 8))(v176, v223);
  v181 = *(v197 + 8);
  v181(v230, v177);
  v181(v200, v177);
  *(v60 + 2) = v175 + 1;
  sub_100509B1C(v202, v60 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v175, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  return v60;
}