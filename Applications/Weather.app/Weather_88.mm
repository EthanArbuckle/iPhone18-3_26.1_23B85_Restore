uint64_t sub_10095AC10(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherMap.Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100040690();
  v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_10095B834;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C77290;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10095B898(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_10006768C(&qword_100CD81D0, &qword_100CB4680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_10095AFC0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for WeatherMap.Event();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for WeatherMapPurpose();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Location.Identifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((a1 + 16), *(a1 + 40));
  sub_10022C350(&qword_100CBA728);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v38)
  {
    sub_10003E2A0(&v36, v39);
    type metadata accessor for MapComponentViewModel();
    Location.identifier.getter();
    v14 = Location.Identifier.id.getter();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
    sub_1000161C0(v39, v40);
    v30[1] = v14;
    *v8 = v14;
    v8[1] = v16;
    v17 = v31;
    (*(v6 + 104))(v8, enum case for WeatherMapPurpose.snapshot(_:), v31);

    v18 = sub_100404FD8();
    __chkstk_darwin(v18);
    v19 = v32;
    v28 = v32;
    v29 = v8;
    sub_10051ACEC(sub_10095B8DC, &v30[-4], v18);

    (*(v6 + 8))(v8, v17);
    v21 = v33;
    v20 = v34;
    (*(v33 + 16))(v5, v19, v34);
    v22 = (*(v21 + 88))(v5, v20);
    if (v22 == enum case for WeatherMap.Event.didFinishLoading(_:))
    {
      (*(v21 + 96))(v5, v20);
      v23 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 8);
      v24 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 16);
      if (*v5 == 1)
      {
        *&v36 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState);
        *(&v36 + 1) = v23;
        v37 = v24;
        v25 = 1;
      }

      else
      {
        *&v36 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState);
        *(&v36 + 1) = v23;
        v37 = v24;
        v25 = 2;
      }

      v35 = v25;
      sub_10022C350(&qword_100CE7C88);
      Binding.wrappedValue.setter();
      sub_1000161C0(v39, v40);
      sub_100194F6C();
      goto LABEL_9;
    }

    if (v22 == enum case for WeatherMap.Event.overlay(_:))
    {

      (*(v21 + 8))(v5, v20);
      return sub_100006F14(v39);
    }

    if (v22 == enum case for WeatherMap.Event.willStartLoading(_:))
    {

      v26 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 8);
      v27 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 16);
      *&v36 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState);
      *(&v36 + 1) = v26;
      v37 = v27;
      v35 = 0;
      sub_10022C350(&qword_100CE7C88);
      Binding.wrappedValue.setter();
      return sub_100006F14(v39);
    }

    if (v22 == enum case for WeatherMap.Event.loadingWasInterruptedByUserInteraction(_:))
    {
LABEL_9:

      return sub_100006F14(v39);
    }

    LODWORD(v29) = 0;
    v28 = 230;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10095B4EC()
{
  sub_100006F14(v0 + 16);
  sub_10095BECC(v0 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate_model, type metadata accessor for MapComponentViewModel);

  return v0;
}

uint64_t sub_10095B554()
{
  sub_10095B4EC();

  return swift_deallocClassInstance();
}

uint64_t sub_10095B5D0()
{
  result = type metadata accessor for MapComponentViewModel();
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

_BYTE *storeEnumTagSinglePayload for MapComponentLoadingState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10095B754()
{
  result = qword_100CE7C78;
  if (!qword_100CE7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7C78);
  }

  return result;
}

uint64_t sub_10095B834()
{
  v1 = *(type metadata accessor for WeatherMap.Event() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10095AFC0(v2, v3);
}

uint64_t sub_10095B898(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10095B93C()
{
  result = qword_100CE7D78;
  if (!qword_100CE7D78)
  {
    sub_10022E824(&qword_100CE7D70);
    sub_10095B9C8();
    sub_10095BD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7D78);
  }

  return result;
}

unint64_t sub_10095B9C8()
{
  result = qword_100CE7D80;
  if (!qword_100CE7D80)
  {
    sub_10022E824(&qword_100CE7D68);
    sub_10095BA84();
    sub_10095B898(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7D80);
  }

  return result;
}

unint64_t sub_10095BA84()
{
  result = qword_100CE7D88;
  if (!qword_100CE7D88)
  {
    sub_10022E824(&qword_100CE7D60);
    sub_10022E824(&qword_100CE7D50);
    sub_10022E824(&qword_100CE7D90);
    sub_10095BC00();
    sub_10022E824(&qword_100CBA9F0);
    type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7D88);
  }

  return result;
}

unint64_t sub_10095BC00()
{
  result = qword_100CE7D98;
  if (!qword_100CE7D98)
  {
    sub_10022E824(&qword_100CE7D50);
    sub_10095BCB8();
    sub_10006768C(&qword_100CE7DB8, &qword_100CE7DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7D98);
  }

  return result;
}

unint64_t sub_10095BCB8()
{
  result = qword_100CE7DA0;
  if (!qword_100CE7DA0)
  {
    sub_10022E824(&qword_100CE7DA8);
    sub_10095B898(&qword_100CE7DB0, type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7DA0);
  }

  return result;
}

unint64_t sub_10095BD94()
{
  result = qword_100CE7DC8;
  if (!qword_100CE7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7DC8);
  }

  return result;
}

uint64_t sub_10095BDE8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapComponentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1009590A0(a1, v6, a2);
}

uint64_t sub_10095BE74()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10095BECC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10095BF40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_10095BF80(uint64_t result, int a2, int a3)
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
      *(result + 120) = (a2 - 1);
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

void sub_10095C028()
{
  sub_10009C0C0(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10010F438(319, &qword_100CE0E10, &qword_100CA6028);
    if (v1 <= 0x3F)
    {
      sub_10009C0C0(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10095C124()
{
  result = qword_100CE7EA8;
  if (!qword_100CE7EA8)
  {
    sub_10022E824(&qword_100CE7EB0);
    sub_10095B93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7EA8);
  }

  return result;
}

unint64_t sub_10095C204()
{
  result = qword_100CE7EF0;
  if (!qword_100CE7EF0)
  {
    sub_10022E824(&qword_100CE7EC0);
    sub_10006768C(&qword_100CE7EF8, &qword_100CE7EB8);
    sub_10006768C(&qword_100CE7F00, &qword_100CE7F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7EF0);
  }

  return result;
}

unint64_t sub_10095C2E8()
{
  result = qword_100CE7F10;
  if (!qword_100CE7F10)
  {
    sub_10022E824(&qword_100CE7EE0);
    sub_10006768C(&qword_100CE7F18, &qword_100CE7ED8);
    sub_10006768C(&qword_100CB3460, &qword_100CB3468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7F10);
  }

  return result;
}

char *sub_10095C3CC()
{
  v4 = type metadata accessor for MoonRiseSetEvent();
  sub_1000037C4();
  __chkstk_darwin(v5);
  v6 = sub_100075330();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002820C();
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  sub_100017D24();
  __chkstk_darwin(v12);
  v13 = sub_100004F2C();
  v14(v13);
  v15 = sub_10000810C();
  v17 = v16(v15);
  if (v17 != enum case for MoonRiseSetEvent.today(_:))
  {
    if (v17 == enum case for MoonRiseSetEvent.tomorrow(_:))
    {
      v24 = sub_100011084();
      v25(v24);
      sub_100069CA0();
      v26();
      (*(v8 + 16))(v0, v2, v6);
      sub_10004EDF4();
      v27 = sub_100003B2C();
      v29 = v28(v27);
      if (v29 == enum case for MoonRiseSet.rise(_:))
      {
        v4 = ".: 'Moonset: 10:43am'";
        v30 = [objc_opt_self() mainBundle];
        sub_100013F14();
        v32 = v31 | 1;
        v33 = 0x8000000100AE6F40;
        v34 = v31 + 151;
      }

      else
      {
        if (v29 != enum case for MoonRiseSet.set(_:))
        {
          v52 = *(v8 + 8);
          v53 = sub_1000046B4();
          v52(v53);
          v54 = sub_100003B2C();
          v52(v54);
          return 0;
        }

        v4 = "hen the moon rises.";
        v46 = [objc_opt_self() mainBundle];
        sub_100013F14();
        v33 = 0x8000000100AE6E70;
        v34 = v47 + 149;
        v32 = 0xD000000000000010;
      }

      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, 0, v1, v48, *(&v56 - 1));
      sub_100006C00();

      v49 = *(v8 + 8);
      v50 = sub_1000046B4();
      v49(v50);
      v51 = sub_100003B2C();
      v49(v51);
      return v4;
    }

    if (v17 != enum case for MoonRiseSetEvent.future(_:))
    {
      v42 = sub_10000810C();
      v43(v42);
      return 0;
    }
  }

  v18 = sub_100011084();
  v19(v18);
  v20 = *(v8 + 32);
  sub_100069CA0();
  v20();
  (v20)(v1, v3, v6);
  sub_10004EDF4();
  v21 = sub_1000053B8();
  v23 = v22(v21);
  if (v23 != enum case for MoonRiseSet.rise(_:) && v23 != enum case for MoonRiseSet.set(_:))
  {
    v44 = sub_1000053B8();
    v45(v44);
    return 0;
  }

  v35 = [objc_opt_self() mainBundle];
  sub_100023590();
  sub_1000080F4();
  NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v38, v39, *(&v56 - 1));
  sub_100006C00();

  v40 = sub_1000053B8();
  v41(v40);
  return v4;
}

uint64_t sub_10095C874()
{
  v4 = type metadata accessor for MoonRiseSetEvent();
  sub_1000037C4();
  __chkstk_darwin(v5);
  v6 = sub_100075330();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002820C();
  __chkstk_darwin(v10);
  sub_100017D24();
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v13 = sub_100004F2C();
  v14(v13);
  v15 = sub_10000810C();
  v17 = v16(v15);
  if (v17 != enum case for MoonRiseSetEvent.today(_:))
  {
    if (v17 == enum case for MoonRiseSetEvent.tomorrow(_:))
    {
      v33 = sub_100011084();
      v34(v33);
      sub_100069CA0();
      v35();
      (*(v8 + 16))(v0, v1, v6);
      sub_10004EDF4();
      v36 = sub_100003B2C();
      v38 = v37(v36);
      if (v38 == enum case for MoonRiseSet.rise(_:))
      {
        v4 = 0x8000000100AE6E30;
        v39 = [objc_opt_self() mainBundle];
        v40 = sub_100009330();
        v41 = 0xED0000657369726ELL;
        v43 = v42 + 7;
      }

      else
      {
        if (v38 != enum case for MoonRiseSet.set(_:))
        {
          v56 = *(v8 + 8);
          v57 = sub_1000053B8();
          v56(v57);
          v58 = sub_100003B2C();
          v56(v58);
          return 0;
        }

        v4 = 0x8000000100AE6DF0;
        v50 = [objc_opt_self() mainBundle];
        v40 = sub_100009330();
        v41 = 0xEC0000007465736ELL;
        v43 = v51 + 6;
      }

      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v40, 0, v2, v52, *(&v61 - 1));
      sub_100006C00();

      v53 = *(v8 + 8);
      v54 = sub_1000053B8();
      v53(v54);
      v55 = sub_100003B2C();
      v53(v55);
      return v4;
    }

    if (v17 != enum case for MoonRiseSetEvent.future(_:))
    {
      v46 = sub_10000810C();
      v47(v46);
      return 0;
    }
  }

  v18 = sub_100011084();
  v19(v18);
  v20 = *(v8 + 32);
  sub_100069CA0();
  v20();
  (v20)(v2, v3, v6);
  sub_10004EDF4();
  v21 = sub_1000046B4();
  v23 = v22(v21);
  if (v23 != enum case for MoonRiseSet.rise(_:))
  {
    if (v23 == enum case for MoonRiseSet.set(_:))
    {
      v24 = [objc_opt_self() mainBundle];
      v60 = 0x8000000100AE56F0;
      sub_1000080F4();
      v32 = 0xD00000000000002CLL;
      goto LABEL_9;
    }

    v48 = sub_1000046B4();
    v49(v48);
    return 0;
  }

  v24 = [objc_opt_self() mainBundle];
  v60 = 0x8000000100AE56A0;
  sub_1000080F4();
LABEL_9:
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v25, *&v27, v29, *&v30, *&v32);
  sub_100006C00();

  v44 = sub_1000046B4();
  v45(v44);
  return v4;
}

uint64_t sub_10095CD24()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v27 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v25 = v8;
  v26 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  sub_100040690();
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v14 + 8);
  v24(v17, v12);
  aBlock[4] = sub_10095D9DC;
  v29 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C77450;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v27 + 8))(v6, v1);
  (*(v25 + 8))(v11, v26);
  return (v24)(v20, v12);
}

uint64_t sub_10095D050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v51 = v7;
  v52 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = (v18 - v17);
  sub_100040690();
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v13);
  v20 = _dispatchPreconditionTest(_:)();
  v22 = *(v15 + 8);
  v21 = v15 + 8;
  v22(v19, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  v49 = v9;
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(v3 + 40);

  v24 = sub_100879F64(a1, a2, v23);
  v26 = v25;

  if (v26)
  {
    v21 = 0;
  }

  else
  {
    v21 = v24;
  }

  v48 = a2;
  a2 = a1;
  if (qword_100CA2710 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v53 = qword_100D90B98;
  OSSignpostID.init(_:)();
  static os_signpost_type_t.begin.getter();
  sub_10022C350(&qword_100CA40C8);
  v27 = swift_allocObject();
  v47 = v21;
  v28 = v27;
  *(v27 + 16) = xmmword_100A2D320;
  v29 = v12;
  v31 = *(v3 + 16);
  v30 = *(v3 + 24);
  *(v27 + 56) = &type metadata for String;
  v32 = sub_100035744();
  v28[4] = v31;
  v28[5] = v30;
  v28[12] = &type metadata for String;
  v28[13] = v32;
  v28[8] = v32;
  v28[9] = a2;
  v33 = v48;
  v28[10] = v48;

  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v34 = v50;
  v35 = v51;
  v36 = *(v51 + 16);
  v46 = v29;
  v37 = v52;
  v36(v50, v29, v52);
  v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v53;
  (*(v35 + 32))(v40 + v38, v34, v37);
  *(v40 + v39) = v3;
  v41 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v41 = a2;
  v41[1] = v33;
  type metadata accessor for WireframeInterestToken();
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = sub_10095D93C;
  *(result + 24) = v40;
  if (v47 == -1)
  {
    __break(1u);
  }

  else
  {
    v43 = result;
    swift_beginAccess();

    v44 = v53;

    swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v3 + 40);
    sub_100239434();
    *(v3 + 40) = v54;
    swift_endAccess();
    dispatch_group_enter(*(v3 + 32));
    (*(v35 + 8))(v46, v37);
    return v43;
  }

  return result;
}

void sub_10095D4C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  static os_signpost_type_t.end.getter();
  sub_10022C350(&qword_100CA40C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  v10 = a3[2];
  v9 = a3[3];
  *(v8 + 56) = &type metadata for String;
  v11 = sub_100035744();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v11;
  *(v8 + 64) = v11;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;

  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v12 = a3[4];

  dispatch_group_leave(v12);
}

void sub_10095D5E4()
{
  v0 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  sub_100040690();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v0);
  if (v7)
  {
    v8 = static OS_dispatch_queue.main.getter();
    OS_dispatch_group.notifySyncIfEmpty(queue:block:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10095D714()
{

  return v0;
}

uint64_t sub_10095D744()
{
  sub_10095D714();

  return swift_deallocClassInstance();
}

uint64_t sub_10095D7E8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_100040690();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      result = (*(v1 + 16))(result);
      *(v1 + 32) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10095D904()
{

  return swift_deallocClassInstance();
}

void sub_10095D93C()
{
  v1 = *(type metadata accessor for OSSignpostID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_10095D4C0(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_10095D9E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  v9 = qword_100CE80C8;
  swift_beginAccess();
  sub_1000E594C(v1 + v9, v8);
  v10 = type metadata accessor for URL();
  if (sub_100024D10(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_1000E6774(v8);
  sub_10095DB8C();
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  sub_10001B350(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10032A9F8(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_10095DB8C()
{
  v0 = type metadata accessor for URL();
  sub_1000037C4();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = WDWeatherLibraryDirectory();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [objc_opt_self() mainBundle];
  sub_1000380CC(v10);
  if (v11)
  {
    URL.appendingPathComponent(_:isDirectory:)();

    v12 = objc_opt_self();
    v13 = [v12 defaultManager];
    URL.path.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v13 fileExistsAtPath:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [v12 defaultManager];
      URL._bridgeToObjectiveC()(v17);
      v19 = v18;
      v26 = 0;
      v20 = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v26];

      if (v20)
      {
        v21 = v26;
      }

      else
      {
        v23 = v26;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    sub_10001D330();
    URL.appendingPathComponent(_:)();
    v24 = *(v2 + 8);
    v24(v6, v0);
    return (v24)(v8, v0);
  }

  else
  {
    sub_10001D330();
    URL.appendingPathComponent(_:)();
    return (*(v2 + 8))(v8, v0);
  }
}

void sub_10095DE50()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  if (v2)
  {
    URL._bridgeToObjectiveC()(v3);
    v5 = v4;
    v9 = 0;
    v6 = [v0 removeItemAtURL:v4 error:&v9];

    if (v6)
    {
      v7 = v9;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  Data.write(to:options:)();
}

void sub_10095DFCC()
{
  v1 = *v0;
  v2 = type metadata accessor for URL();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  UnfairLock.lock()();
  if (*(v0 + 16) == 1)
  {
    *(v0 + qword_100CE80E0) = 1;
    type metadata accessor for BinaryEncoder();
    v11 = v1[6];
    v35[0] = v1[5];
    v35[1] = v11;
    v35[2] = v1[7];
    type metadata accessor for StatePersistenceData();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v12 = static BinaryEncoder.encode<A>(_:)();
    v34 = v4;
    v14 = v13;
    v15 = v12;
    v16 = *(v0 + qword_100CE80F0);

    sub_10095D9E0(v10);
    v16(v15, v14, v10);
    v33 = *(v34 + 8);
    v34 += 8;
    v33(v10, v2);

    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C();
    }

    v17 = type metadata accessor for Logger();
    sub_10000703C(v17, qword_100D90B08);
    v18 = v15;
    v19 = v15;
    v20 = v14;
    sub_1006DE088(v19, v14);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v35[0] = v32;
      *v23 = 134349314;
      v24 = 0;
      switch(v20 >> 62)
      {
        case 1uLL:
          LODWORD(v24) = HIDWORD(v18) - v18;
          if (!__OFSUB__(HIDWORD(v18), v18))
          {
            v24 = v24;
            goto LABEL_15;
          }

          __break(1u);
          goto LABEL_18;
        case 2uLL:
          v26 = *(v18 + 16);
          v25 = *(v18 + 24);
          v27 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (!v27)
          {
            goto LABEL_15;
          }

LABEL_18:
          __break(1u);
          return;
        case 3uLL:
          goto LABEL_15;
        default:
          v24 = BYTE6(v20);
LABEL_15:
          *(v23 + 4) = v24 / 1024;
          sub_10030F778(v18, v20);
          *(v23 + 12) = 2082;
          sub_10095D9E0(v7);
          sub_10095E6B4();
          v28 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = v29;
          v33(v7, v2);
          v31 = sub_100078694(v28, v30, v35);

          *(v23 + 14) = v31;
          _os_log_impl(&_mh_execute_header, v21, v22, "Save state to disk with size %{public}ld kb to file %{public}s", v23, 0x16u);
          sub_100006F14(v32);
          sub_100003884();
          sub_100003884();
          goto LABEL_16;
      }
    }

    sub_10030F778(v18, v20);
LABEL_16:
    sub_10030F778(v18, v20);

    sub_10095E578();
  }

  else
  {

    sub_10095E578();
  }
}

uint64_t sub_10095E5A4()
{
  sub_1000E6774(v0 + qword_100CE80C8);
  sub_1003B3404(*(v0 + qword_100CE80D8), *(v0 + qword_100CE80D8 + 8));

  return v0;
}

uint64_t sub_10095E618()
{
  sub_10095E5A4();

  return swift_deallocClassInstance();
}

unint64_t sub_10095E6B4()
{
  result = qword_100CA5728;
  if (!qword_100CA5728)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5728);
  }

  return result;
}

uint64_t sub_10095E70C(uint64_t a1)
{
  v162 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v165 = v3;
  sub_1000038CC();
  v178 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v164 = v5;
  sub_1000038CC();
  v176 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v182 = v7;
  sub_1000038CC();
  v175 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v163 = v9;
  sub_1000038CC();
  v173 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v181 = v11;
  sub_1000038CC();
  v171 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v180 = v13;
  sub_1000038CC();
  v156 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v179 = v15;
  v16 = sub_1000038CC();
  v153 = type metadata accessor for ModalViewState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003908();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v177 = v20;
  sub_1000038CC();
  v152 = type metadata accessor for UUID();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v22 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA65E8);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v27 = v26;
  v28 = sub_10022C350(&qword_100CA6610);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v174 = v31;
  v32 = sub_10022C350(&qword_100CA6618);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v172 = v35;
  v36 = sub_10022C350(&qword_100CA6620);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v170 = v39;
  v40 = sub_10022C350(&qword_100CA6628);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v169 = v43;
  v44 = sub_10022C350(&qword_100CA6630);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  v168 = v47;
  v48 = sub_10022C350(&qword_100CA6638);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  v51 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  sub_10000E70C();
  v167 = v53;
  v54 = sub_10022C350(&qword_100CA6640);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  v57 = &v147 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v147 - v59;
  v158 = a1;

  v62 = sub_10095F5A0(v61, sub_10095FE60, sub_10095FE60);

  v64 = sub_10095F5A0(v63, sub_10095F71C, sub_10095F71C);
  v166 = v62;
  sub_1000BCFBC();
  v66 = v65;

  if (v66)
  {
    sub_1000BD330();
    v68 = v67;

    if (v68)
    {

      return 1;
    }
  }

  else
  {
  }

  v149 = v64;
  sub_100003934();
  v70 = v156;
  sub_10001B350(v71, v72, v73, v156);
  sub_100003934();
  sub_10001B350(v74, v75, v76, v171);
  sub_100003934();
  sub_10001B350(v77, v78, v79, v173);
  sub_100003934();
  sub_10001B350(v80, v81, v82, v175);
  sub_100003934();
  sub_10001B350(v83, v84, v85, v176);
  sub_100003934();
  sub_10001B350(v86, v87, v88, v178);
  sub_100003934();
  v89 = v162;
  sub_10001B350(v90, v91, v92, v162);
  sub_100003934();
  sub_10001B350(v93, v94, v95, v153);
  UUID.init()();
  v148 = UUID.uuidString.getter();
  v147 = v96;
  (*(v151 + 8))(v22, v152);
  v97 = v158;
  v98 = v154;
  sub_1000BCCAC(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v154, type metadata accessor for ModalViewState);
  v99 = v150;
  sub_100051B60(v27, v150, &qword_100CA65E8);
  sub_100003BFC(v99);
  if (v100)
  {
    sub_1000180EC(v99, &qword_100CA65E8);
  }

  else
  {
    sub_1000E0300(v98, type metadata accessor for ModalViewState);
    sub_100005518();
    sub_100072F7C(v99, v98, v101);
  }

  v102 = v165;
  sub_100005518();
  sub_100072F7C(v98, v103, v104);
  v105 = *(v97 + 16);
  LODWORD(v165) = *(v97 + 24);
  sub_100051B60(v60, v57, &qword_100CA6640);
  sub_1000038B4(v57, 1, v70);
  v106 = v171;
  if (v100)
  {
    v107 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000BCCAC(v107, v179, v108);
    v109 = sub_100024D10(v57, 1, v70);

    v110 = v176;
    if (v109 != 1)
    {
      sub_1000180EC(v57, &qword_100CA6640);
    }
  }

  else
  {
    sub_100072F7C(v57, v179, type metadata accessor for AppConfigurationState);

    v110 = v176;
  }

  sub_100051B60(v167, v51, &qword_100CA6638);
  v111 = v89;
  if (sub_100024D10(v51, 1, v106) == 1)
  {
    v112 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000BCCAC(v97 + v112, v180, type metadata accessor for EnvironmentState);
    sub_100003BFC(v51);
    v113 = v164;
    v114 = v178;
    if (!v100)
    {
      sub_1000180EC(v51, &qword_100CA6638);
    }
  }

  else
  {
    sub_100072F7C(v51, v180, type metadata accessor for EnvironmentState);
    v113 = v164;
    v114 = v178;
  }

  v178 = v105;
  v115 = v155;
  sub_100051B60(v168, v155, &qword_100CA6630);
  v116 = v173;
  v117 = v102;
  if (sub_100024D10(v115, 1, v173) == 1)
  {
    v118 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000BCCAC(v118, v181, v119);
    sub_1000038B4(v115, 1, v116);
    v120 = v163;
    if (!v100)
    {
      sub_1000180EC(v115, &qword_100CA6630);
    }
  }

  else
  {
    sub_100072F7C(v115, v181, type metadata accessor for LocationsState);
    v120 = v163;
  }

  v121 = v157;
  sub_100051B60(v169, v157, &qword_100CA6628);
  sub_100003BFC(v121);
  if (v100)
  {
    v122 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000BCCAC(v122, v120, v123);
    sub_100003BFC(v121);
    if (!v100)
    {
      sub_1000180EC(v121, &qword_100CA6628);
    }
  }

  else
  {
    sub_100072F7C(v121, v120, type metadata accessor for NotificationsState);
  }

  v124 = *(&v157 + 1);
  sub_100051B60(v170, *(&v157 + 1), &qword_100CA6620);
  sub_1000038B4(v124, 1, v110);
  if (v100)
  {
    v125 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000BCCAC(v125, v182, v126);
    sub_1000038B4(v124, 1, v110);
    v127 = v117;
    if (!v100)
    {
      sub_1000180EC(v124, &qword_100CA6620);
    }
  }

  else
  {
    sub_100072F7C(v124, v182, type metadata accessor for NotificationsOptInState);
    v127 = v117;
  }

  v128 = v159;
  sub_100051B60(v172, v159, &qword_100CA6618);
  sub_1000038B4(v128, 1, v114);
  v129 = v178;
  if (v100)
  {
    v130 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000BCCAC(v130, v113, v131);
    sub_1000038B4(v128, 1, v114);
    if (!v100)
    {
      sub_1000180EC(v128, &qword_100CA6618);
    }
  }

  else
  {
    sub_100072F7C(v128, v113, type metadata accessor for TimeState);
  }

  v132 = v160;
  sub_100051B60(v174, v160, &qword_100CA6610);
  sub_1000038B4(v132, 1, v111);
  if (v100)
  {
    v133 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_1000BCCAC(v133, v127, v134);
    sub_1000038B4(v132, 1, v111);
    if (!v100)
    {
      sub_1000180EC(v132, &qword_100CA6610);
    }
  }

  else
  {
    v135 = sub_100003940();
    sub_100072F7C(v135, v136, v137);
  }

  sub_100005518();
  v138 = v161;
  sub_100072F7C(v177, v161, v139);
  v140 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v141 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v142 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v143 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v146) = v140;
  sub_10003E038(v129, v165, v179, v180, v181, v120, v182, v113, v127, v138, v148, v147, v166, v149, v146, v141, v142, v143, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v69 = v144;

  return v69;
}

uint64_t sub_10095F5A0(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_1009601C0(v12, v7, v5, a3);

      return v5;
    }
  }

  __chkstk_darwin(a1);
  sub_1006A76B8(0, v7, &v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v9 = a2(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, v5);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

void sub_10095F71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a1;
  v65 = type metadata accessor for AvailableDataSets();
  v4 = *(v65 - 8);
  __chkstk_darwin(v65);
  v60 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_10022C350(&qword_100CAA7E0);
  __chkstk_darwin(v71);
  v78 = &v55[-v6];
  v70 = sub_10022C350(&qword_100CAA7F0);
  __chkstk_darwin(v70);
  v76 = &v55[-v7];
  v77 = type metadata accessor for LocationAvailableDataSetState(0);
  v69 = *(v77 - 8);
  __chkstk_darwin(v77);
  v64 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v55[-v10];
  __chkstk_darwin(v12);
  v75 = &v55[-v13];
  __chkstk_darwin(v14);
  v16 = &v55[-v15];
  v17 = 0;
  v72 = a3;
  v20 = *(a3 + 64);
  v19 = a3 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v59 = (v4 + 32);
  v61 = 0;
  v62 = (v4 + 8);
  v67 = v24;
  v68 = &v55[-v15];
  v63 = v11;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v73 = (v23 - 1) & v23;
LABEL_11:
    v28 = v25 | (v17 << 6);
    v29 = *(v72 + 56);
    v30 = (*(v72 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v69 + 72);
    v66 = v28;
    sub_1000BCCAC(v29 + v33 * v28, v16, type metadata accessor for LocationAvailableDataSetState);
    v34 = v76;
    *v76 = v31;
    v34[1] = v32;
    v74 = v32;
    v35 = *(v70 + 48);
    sub_1000BCCAC(v16, v34 + v35, type metadata accessor for LocationAvailableDataSetState);
    v36 = v75;
    swift_storeEnumTagMultiPayload();
    v37 = &v78[*(v71 + 48)];
    sub_1000BCCAC(v34 + v35, v78, type metadata accessor for LocationAvailableDataSetState);
    sub_1000BCCAC(v36, v37, type metadata accessor for LocationAvailableDataSetState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v39 = v64;
        sub_1000BCCAC(v78, v64, type metadata accessor for LocationAvailableDataSetState);
        v40 = *v39;
        v41 = v39[1];
        v42 = swift_getEnumCaseMultiPayload();
        v24 = v67;
        v23 = v73;
        if (v42 != 1)
        {
          swift_bridgeObjectRetain_n();

          v16 = v68;
LABEL_29:
          sub_1000180EC(v78, &qword_100CAA7E0);
          goto LABEL_30;
        }

        v43 = *v37;
        v44 = v37[1];
        v45 = v40 == v43 && v41 == v44;
        v16 = v68;
        if (v45)
        {
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_bridgeObjectRetain_n();

          if ((v56 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v52 = swift_getEnumCaseMultiPayload();
        swift_bridgeObjectRetain_n();
        v24 = v67;
        v16 = v68;
        v23 = v73;
        if (v52 != 2)
        {
          goto LABEL_29;
        }
      }

LABEL_26:
      sub_1000E0300(v78, type metadata accessor for LocationAvailableDataSetState);
      sub_1000E0300(v75, type metadata accessor for LocationAvailableDataSetState);
      sub_1000180EC(v76, &qword_100CAA7F0);
      sub_1000E0300(v16, type metadata accessor for LocationAvailableDataSetState);
    }

    else
    {
      v46 = v63;
      sub_1000BCCAC(v78, v63, type metadata accessor for LocationAvailableDataSetState);
      if (swift_getEnumCaseMultiPayload())
      {
        v53 = *v62;
        swift_bridgeObjectRetain_n();
        v53(v46, v65);
        v24 = v67;
        v16 = v68;
        v23 = v73;
        goto LABEL_29;
      }

      v47 = v60;
      v48 = v65;
      (*v59)(v60, v37, v65);
      sub_100960168();
      swift_bridgeObjectRetain_n();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v49 = *v62;
      (*v62)(v47, v48);
      v50 = v80;
      v51 = v79;
      v49(v46, v48);
      v24 = v67;
      v16 = v68;
      v23 = v73;
      if (v50 == v51)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_1000E0300(v78, type metadata accessor for LocationAvailableDataSetState);
LABEL_30:
      sub_1000E0300(v75, type metadata accessor for LocationAvailableDataSetState);
      sub_1000180EC(v76, &qword_100CAA7F0);
      sub_1000E0300(v16, type metadata accessor for LocationAvailableDataSetState);

      *(v58 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      if (__OFADD__(v61++, 1))
      {
        __break(1u);
LABEL_33:
        sub_10067341C();
        return;
      }
    }
  }

  v26 = v17;
  while (1)
  {
    v17 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      goto LABEL_33;
    }

    v27 = *(v19 + 8 * v17);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v73 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10095FE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a1;
  v41 = sub_10022C350(&qword_100CAA808);
  __chkstk_darwin(v41);
  v37 = (&v32 - v4);
  v5 = type metadata accessor for LocationWeatherDataState(0);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v32 - v8;
  v34 = 0;
  v9 = 0;
  v42 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = *(v42 + 56);
    v22 = (*(v42 + 48) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v39 + 72);
    v35 = v20;
    v26 = v36;
    sub_1000BCCAC(v21 + v25 * v20, v36, type metadata accessor for LocationWeatherDataState);
    v27 = v37;
    *v37 = v23;
    *(v27 + 8) = v24;
    sub_1000BCCAC(v26, v27 + *(v41 + 48), type metadata accessor for LocationWeatherDataState);
    v28 = v38;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    sub_10070EA0C();
    v30 = v29;
    sub_1000E0300(v28, type metadata accessor for LocationWeatherDataState);
    sub_1000180EC(v27, &qword_100CAA808);
    sub_1000E0300(v26, type metadata accessor for LocationWeatherDataState);

    v15 = v43;
    if ((v30 & 1) == 0)
    {
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100673648();
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_100960168()
{
  result = qword_100CAA7F8;
  if (!qword_100CAA7F8)
  {
    type metadata accessor for AvailableDataSets();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA7F8);
  }

  return result;
}

void *sub_1009601C0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4(v7, a2, a3);

    return v8;
  }

  return result;
}

uint64_t static LocationCompositionState.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v180 = type metadata accessor for LocationOfInterest();
  v176 = *(v180 - 8);
  __chkstk_darwin(v180);
  v173 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_10022C350(&qword_100CB9E68);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v175 = (v6 - v7);
  sub_10000386C();
  __chkstk_darwin(v8);
  v174 = &v165 - v9;
  v10 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v10 - 8);
  sub_100003C38();
  v172 = v11 - v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  v179 = &v165 - v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v178 = &v165 - v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v19 = &v165 - v18;
  __chkstk_darwin(v20);
  v182 = &v165 - v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v181 = &v165 - v23;
  type metadata accessor for LocationCompositionState();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003C38();
  v27 = (v25 - v26);
  __chkstk_darwin(v28);
  v30 = (&v165 - v29);
  v31 = sub_10022C350(&qword_100CE81E0);
  __chkstk_darwin(v31 - 8);
  v33 = &v165 - v32;
  v35 = (&v165 + *(v34 + 56) - v32);
  sub_100961058(a1, &v165 - v32);
  sub_100961058(a2, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100961058(v33, v27);
    v37 = *v27;
    v36 = v27[1];
    v39 = v27[2];
    v38 = v27[3];
    v40 = sub_10022C350(&qword_100CC4190);
    v41 = *(v40 + 48);
    v42 = *(v40 + 64);
    LODWORD(v182) = *(v27 + v42);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v37;
      v181 = v38;
      v171 = v33;
      v44 = *v35;
      v45 = v35[1];
      v46 = v35[3];
      v170 = v35[2];
      v174 = v46;
      v47 = *(v35 + v42);
      v48 = v27 + v41;
      v49 = v178;
      sub_1001A5050(v48, v178);
      v50 = v179;
      sub_1001A5050(v35 + v41, v179);
      v51 = v36;
      if (v36)
      {
        v52 = v39;
        v53 = v43;
        if (v45)
        {
          v54 = v43 == v44 && v51 == v45;
          if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v135 = sub_100008408();
            sub_100429240(v135, v136);
            sub_100429240(v43, v51);

            v137 = sub_100008408();
            sub_1001A6184(v137, v138);
            sub_1001A6184(v43, v51);

            goto LABEL_75;
          }

          if (v39 != v170 || v181 != v174)
          {
            LODWORD(v169) = _stringCompareWithSmolCheck(_:_:expecting:)();
            v56 = sub_100008408();
            sub_100429240(v56, v57);
            v58 = sub_10001D348();
            sub_100429240(v58, v59);

            v60 = sub_100008408();
            sub_1001A6184(v60, v61);
            v62 = sub_10001D348();
            sub_1001A6184(v62, v63);

            v50 = v179;
            if (v169)
            {
              goto LABEL_41;
            }

LABEL_75:
            sub_10000FEC4();
            sub_1000180EC(v159, v160);
            sub_10000FEC4();
LABEL_76:
            sub_1000180EC(v118, v117);
            goto LABEL_77;
          }

          v96 = sub_100008408();
          sub_100429240(v96, v97);
          v98 = sub_10001D348();
          sub_100429240(v98, v99);

          v100 = sub_100008408();
          sub_1001A6184(v100, v101);
          v102 = sub_10001D348();
          sub_1001A6184(v102, v103);

          v50 = v179;
LABEL_41:
          v104 = v47;
          v105 = *(v177 + 48);
          v106 = v175;
          sub_1005AC2E8(v49, v175);
          sub_1005AC2E8(v50, v106 + v105);
          v107 = v180;
          if (sub_100024D10(v106, 1, v180) == 1)
          {
            sub_10000FEC4();
            sub_1000180EC(v108, v109);
            sub_10000FEC4();
            sub_1000180EC(v110, v111);
            if (sub_100024D10(v106 + v105, 1, v107) == 1)
            {
              sub_1000180EC(v106, &qword_100CA3588);
LABEL_60:
              v147 = v182 ^ v104;
              sub_1009610BC(v171);
              return v147 ^ 1u;
            }
          }

          else
          {
            v112 = v172;
            sub_1005AC2E8(v106, v172);
            if (sub_100024D10(v106 + v105, 1, v107) != 1)
            {
              v143 = v176;
              v144 = v173;
              (*(v176 + 32))(v173, v106 + v105, v107);
              sub_100188240();
              v145 = dispatch thunk of static Equatable.== infix(_:_:)();
              v146 = *(v143 + 8);
              v146(v144, v107);
              sub_100028E5C(v50);
              sub_100028E5C(v178);
              v146(v112, v107);
              sub_100028E5C(v106);
              if (v145)
              {
                goto LABEL_60;
              }

              goto LABEL_77;
            }

            sub_10000FEC4();
            sub_1000180EC(v113, v114);
            sub_10000FEC4();
            sub_1000180EC(v115, v116);
            (*(v176 + 8))(v112, v107);
          }

          v117 = &qword_100CB9E68;
          v118 = v106;
          goto LABEL_76;
        }
      }

      else
      {
        v52 = v39;
        v53 = v43;
        if (!v45)
        {
          goto LABEL_41;
        }
      }

      v183 = v53;
      v184 = v51;
      v185 = v52;
      v186 = v181;
      v187 = v44;
      v188 = v45;
      v189 = v170;
      v190 = v174;
      sub_1000180EC(&v183, &qword_100CE81E8);
      goto LABEL_75;
    }

    sub_1000180EC(v27 + v41, &qword_100CA3588);
    sub_1001A6184(v37, v36);
LABEL_19:
    sub_1000180EC(v33, &qword_100CE81E0);
    return 0;
  }

  v175 = v19;
  sub_100961058(v33, v30);
  v64 = *v30;
  v179 = v30[1];
  v65 = v30[2];
  v66 = v30[3];
  v67 = sub_10022C350(&qword_100CC4198);
  v178 = *(v67 + 48);
  v68 = *(v67 + 64);
  v69 = *(v30 + v68 + 8);
  v170 = *(v30 + v68);
  v70 = *(v30 + v68 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001A6184(v64, v179);

    sub_1000180EC(v30 + v178, &qword_100CA3588);
    goto LABEL_19;
  }

  v71 = v69;
  v172 = v64;
  v166 = v70;
  v171 = v33;
  v73 = *v35;
  v72 = v35[1];
  v74 = v35[3];
  v169 = v35[2];
  v75 = *(v35 + v68 + 8);
  v167 = *(v35 + v68);
  v168 = v75;
  v165 = *(v35 + v68 + 16);
  v76 = v178;
  v77 = v30 + v178;
  v78 = v181;
  sub_1001A5050(v77, v181);
  v79 = v35 + v76;
  v80 = v182;
  sub_1001A5050(v79, v182);
  if (!v179)
  {
    v81 = v180;
    if (!v72)
    {
      goto LABEL_49;
    }

    v82 = v66;
    v94 = v179;

    v95 = v172;
LABEL_39:
    v183 = v95;
    v184 = v94;
    v185 = v65;
    v186 = v82;
    v187 = v73;
    v188 = v72;
    v189 = v169;
    v190 = v74;
    sub_1000180EC(&v183, &qword_100CE81E8);
    goto LABEL_75;
  }

  v81 = v180;
  v82 = v66;
  if (!v72)
  {
    v94 = v179;

    sub_1000235AC();

    v95 = v172;
    sub_1001A6184(v172, v94);
    goto LABEL_39;
  }

  v83 = v73;
  if (v172 != v73 || v179 != v72)
  {
    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v83 = v73;
    if ((v85 & 1) == 0)
    {
      sub_100429240(v73, v72);
      sub_100006C10();
      sub_100429240(v139, v140);

      sub_1000235AC();

      sub_1001A6184(v73, v72);
      sub_100006C10();
      sub_1001A6184(v141, v142);

      goto LABEL_75;
    }
  }

  if (v65 == v169 && v66 == v74)
  {
    sub_100006C10();
    sub_100429240(v119, v120);
    v121 = sub_10001FDA4();
    sub_100429240(v121, v122);

    sub_100006C10();
    sub_1001A6184(v123, v124);
    v125 = sub_10001FDA4();
    sub_1001A6184(v125, v126);
  }

  else
  {
    v87 = v83;
    LODWORD(v179) = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100429240(v87, v72);
    v88 = sub_10001FDA4();
    sub_100429240(v88, v89);

    sub_1001A6184(v87, v72);
    v90 = sub_10001FDA4();
    sub_1001A6184(v90, v91);
    if ((v179 & 1) == 0)
    {
      sub_1000235AC();

      v92 = sub_10001FDA4();
      sub_1001A6184(v92, v93);
      goto LABEL_75;
    }
  }

  v127 = sub_10001FDA4();
  sub_1001A6184(v127, v128);
  v78 = v181;
  v80 = v182;
LABEL_49:
  v129 = v71;
  v130 = *(v177 + 48);
  v131 = v174;
  sub_1005AC2E8(v78, v174);
  sub_1005AC2E8(v80, v131 + v130);
  sub_10000394C(v131);
  if (v54)
  {
    sub_10000394C(v131 + v130);
    if (v54)
    {
      sub_1000180EC(v131, &qword_100CA3588);
      v132 = v168;
      goto LABEL_63;
    }

    sub_1000235AC();

LABEL_61:
    sub_1000180EC(v131, &qword_100CB9E68);
    goto LABEL_75;
  }

  v133 = v175;
  sub_1005AC2E8(v131, v175);
  sub_10000394C(v131 + v130);
  if (v134)
  {
    sub_1000235AC();

    (*(v176 + 8))(v133, v81);
    goto LABEL_61;
  }

  v149 = v176;
  v150 = v173;
  (*(v176 + 32))(v173, v131 + v130, v81);
  sub_100188240();
  v151 = dispatch thunk of static Equatable.== infix(_:_:)();
  v152 = *(v149 + 8);
  v80 = v182;
  v152(v150, v81);
  v152(v133, v81);
  v78 = v181;
  sub_1000180EC(v131, &qword_100CA3588);
  v132 = v168;
  if ((v151 & 1) == 0)
  {

    goto LABEL_74;
  }

LABEL_63:
  if (!v129)
  {
    sub_10000FEC4();
    sub_1000180EC(v155, v156);
    sub_10000FEC4();
    sub_1000180EC(v157, v158);
    if (v132)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

  if (!v132)
  {
LABEL_74:

    goto LABEL_75;
  }

  if (v170 == v167 && v129 == v132)
  {
    sub_10000FEC4();
    sub_1000180EC(v161, v162);
    sub_10000FEC4();
    sub_1000180EC(v163, v164);
  }

  else
  {
    v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100028E5C(v80);
    sub_100028E5C(v78);
    if ((v154 & 1) == 0)
    {

LABEL_72:

LABEL_77:
      sub_1009610BC(v171);
      return 0;
    }
  }

  if ((v165 ^ v166))
  {
    goto LABEL_77;
  }

LABEL_81:
  sub_1009610BC(v171);
  return 1;
}

uint64_t sub_100961058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCompositionState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009610BC(uint64_t a1)
{
  v2 = type metadata accessor for LocationCompositionState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100961118()
{
  if (!qword_100CE8288)
  {
    sub_10022E824(&qword_100CE8278);
    sub_10022E824(&qword_100CA3588);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CE8288);
    }
  }
}

uint64_t type metadata accessor for SelectedSearchResult()
{
  result = qword_100CE8328;
  if (!qword_100CE8328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009611F8()
{
  result = sub_10096126C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationOfInterest();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10096126C()
{
  result = qword_100CE8338;
  if (!qword_100CE8338)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CE8338);
  }

  return result;
}

uint64_t sub_100961294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C686372616573 && a2 == 0xEE006E6F69746163;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000100AE7390 == a2;
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

uint64_t sub_1009613B4(char a1)
{
  if (!a1)
  {
    return 0x6F4C686372616573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 1701736302;
}

uint64_t sub_100961414(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5474756F6C6C6163 && a2 == 0xEC000000656C7469)
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

uint64_t sub_1009614B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100008064();
  __chkstk_darwin(v13);
  v15 = (&v29 - v14);
  sub_10022C350(&qword_100CE8368);
  sub_100003828();
  v17 = __chkstk_darwin(v16);
  v19 = &v29 - v18;
  v20 = (&v29 + *(v17 + 56) - v18);
  sub_100962610(a1, &v29 - v18);
  sub_100962610(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100962610(v19, v15);
    v25 = *v15;
    v24 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v25 == *v20 && v24 == v20[1])
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          sub_1009626DC(v19);
          goto LABEL_11;
        }
      }

LABEL_19:
      sub_1009626DC(v19);
      v22 = 1;
      return v22 & 1;
    }

LABEL_10:
    sub_100962674(v19);
LABEL_11:
    v22 = 0;
    return v22 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_100962610(v19, v2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v7 + 8))(v2, v5);
    goto LABEL_10;
  }

  (*(v7 + 32))(v11, v20, v5);
  v22 = static LocationOfInterest.== infix(_:_:)();
  v23 = *(v7 + 8);
  v23(v11, v5);
  v23(v2, v5);
  sub_1009626DC(v19);
  return v22 & 1;
}

uint64_t sub_100961788(void *a1)
{
  v42 = sub_10022C350(&qword_100CE83B0);
  sub_1000037C4();
  v40 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v38 = v4;
  sub_10022C350(&qword_100CE83B8);
  sub_1000037C4();
  v45 = v6;
  v46 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v41 = v8;
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v43 = v10;
  v44 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v39 = v12 - v11;
  v13 = sub_10022C350(&qword_100CE83C0);
  sub_1000037C4();
  v37 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v48 = sub_10022C350(&qword_100CE83C8);
  sub_1000037C4();
  v23 = v22;
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v36 - v25;
  sub_1000161C0(a1, a1[3]);
  sub_100962738();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100962610(v47, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v43;
      v28 = v44;
      v30 = v39;
      (*(v43 + 32))(v39, v21, v44);
      v50 = 1;
      sub_100962844();
      v31 = v41;
      sub_100049F50();
      sub_1009628EC(&qword_100CC7ED8);
      v32 = v46;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v45 + 8))(v31, v32);
      (*(v29 + 8))(v30, v28);
    }

    else
    {
      v51 = 2;
      sub_10096278C();
      v35 = v38;
      sub_100049F50();
      (*(v40 + 8))(v35, v42);
    }

    return (*(v23 + 8))(v26, v21);
  }

  else
  {
    v49 = 0;
    sub_100962898();
    v34 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v37 + 8))(v17, v13);
    return (*(v23 + 8))(v26, v34);
  }
}

uint64_t sub_100961C5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  sub_10022C350(&qword_100CE8370);
  sub_1000037C4();
  v67 = v5;
  v68 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v71 = v7;
  v76 = sub_10022C350(&qword_100CE8378);
  sub_1000037C4();
  v69 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v72 = v10;
  sub_10022C350(&qword_100CE8380);
  sub_1000037C4();
  v65 = v12;
  v66 = v11;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v70 = v14;
  sub_10022C350(&qword_100CE8388);
  sub_1000037C4();
  v74 = v16;
  v75 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100008064();
  __chkstk_darwin(v22);
  v24 = (&v60 - v23);
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  sub_1000161C0(a1, a1[3]);
  sub_100962738();
  v28 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return sub_100006F14(a1);
  }

  v60 = v24;
  v61 = v2;
  v29 = v75;
  v62 = v27;
  v64 = v20;
  v77 = a1;
  v30 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v30, 0);
  if (v33 == v34 >> 1)
  {
LABEL_9:
    v42 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    sub_10022C350(&qword_100CA7610);
    *v44 = v64;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v19, v29);
    a1 = v77;
    return sub_100006F14(a1);
  }

  v63 = v19;
  if (v33 >= (v34 >> 1))
  {
    __break(1u);
    return result;
  }

  v35 = v29;
  v36 = *(v32 + v33);
  sub_100618E7C(v33 + 1);
  v38 = v37;
  v40 = v39;
  swift_unknownObjectRelease();
  if (v38 != v40 >> 1)
  {
    v19 = v63;
    goto LABEL_9;
  }

  if (v36)
  {
    if (v36 == 1)
    {
      v79 = 1;
      sub_100962844();
      sub_100006C1C();
      type metadata accessor for LocationOfInterest();
      sub_1009628EC(&qword_100CC7E10);
      v41 = v61;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v50 = sub_100028E74();
      v51(v50);
      v52 = sub_1000235C4();
      v53(v52);
      swift_storeEnumTagMultiPayload();
      v54 = v62;
      sub_1009627E0(v41, v62);
    }

    else
    {
      v80 = 2;
      sub_10096278C();
      v46 = v71;
      sub_100006C1C();
      swift_unknownObjectRelease();
      (*(v67 + 8))(v46, v68);
      v48 = sub_100010434();
      v49(v48);
      v54 = v62;
      swift_storeEnumTagMultiPayload();
    }

    v45 = v73;
  }

  else
  {
    v78 = 0;
    sub_100962898();
    sub_100006C1C();
    v45 = v73;
    v76 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v74;
    v56 = v55;
    swift_unknownObjectRelease();
    v57 = sub_100004B88();
    v58(v57);
    (*(v47 + 8))(v63, v35);
    v59 = v60;
    *v60 = v76;
    *(v59 + 8) = v56;
    swift_storeEnumTagMultiPayload();
    v54 = v62;
    sub_1009627E0(v59, v62);
  }

  sub_1009627E0(v54, v45);
  return sub_100006F14(v77);
}

uint64_t sub_100962374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100961294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10096239C(uint64_t a1)
{
  v2 = sub_100962738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009623D8(uint64_t a1)
{
  v2 = sub_100962738();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962414(uint64_t a1)
{
  v2 = sub_10096278C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100962450(uint64_t a1)
{
  v2 = sub_10096278C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100961414(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1009624BC(uint64_t a1)
{
  v2 = sub_100962898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009624F8(uint64_t a1)
{
  v2 = sub_100962898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962534(uint64_t a1)
{
  v2 = sub_100962844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100962570(uint64_t a1)
{
  v2 = sub_100962844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedSearchResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100962674(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE8368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009626DC(uint64_t a1)
{
  v2 = type metadata accessor for SelectedSearchResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100962738()
{
  result = qword_100CE8390;
  if (!qword_100CE8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8390);
  }

  return result;
}

unint64_t sub_10096278C()
{
  result = qword_100CE8398;
  if (!qword_100CE8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8398);
  }

  return result;
}

uint64_t sub_1009627E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedSearchResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100962844()
{
  result = qword_100CE83A0;
  if (!qword_100CE83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83A0);
  }

  return result;
}

unint64_t sub_100962898()
{
  result = qword_100CE83A8;
  if (!qword_100CE83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83A8);
  }

  return result;
}

uint64_t sub_1009628EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationOfInterest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectedSearchResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100962A1C(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100962ADC()
{
  result = qword_100CE83D0;
  if (!qword_100CE83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83D0);
  }

  return result;
}

unint64_t sub_100962B34()
{
  result = qword_100CE83D8;
  if (!qword_100CE83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83D8);
  }

  return result;
}

unint64_t sub_100962B8C()
{
  result = qword_100CE83E0;
  if (!qword_100CE83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83E0);
  }

  return result;
}

unint64_t sub_100962BE4()
{
  result = qword_100CE83E8;
  if (!qword_100CE83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83E8);
  }

  return result;
}

unint64_t sub_100962C3C()
{
  result = qword_100CE83F0;
  if (!qword_100CE83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83F0);
  }

  return result;
}

unint64_t sub_100962C94()
{
  result = qword_100CE83F8;
  if (!qword_100CE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE83F8);
  }

  return result;
}

unint64_t sub_100962CEC()
{
  result = qword_100CE8400;
  if (!qword_100CE8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8400);
  }

  return result;
}

unint64_t sub_100962D44()
{
  result = qword_100CE8408;
  if (!qword_100CE8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8408);
  }

  return result;
}

unint64_t sub_100962D9C()
{
  result = qword_100CE8410;
  if (!qword_100CE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8410);
  }

  return result;
}

unint64_t sub_100962DF4()
{
  result = qword_100CE8418;
  if (!qword_100CE8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8418);
  }

  return result;
}

unint64_t sub_100962E4C()
{
  result = qword_100CE8420;
  if (!qword_100CE8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8420);
  }

  return result;
}

uint64_t sub_100962EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 154))
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

uint64_t sub_100962EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100962F64(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = sub_100003B38();
  type metadata accessor for MainState._Storage(v2);
  sub_100003B2C();
  sub_100073248();
  return v3 & 1;
}

uint64_t sub_100962FAC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v155 = a1;
  v162 = a2;
  v3 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v141[2] = v5;
  sub_1000038CC();
  v141[1] = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v153 = v7;
  v8 = sub_10022C350(&unk_100CE2F20);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  v145 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v146 = v12;
  sub_1000038CC();
  active = type metadata accessor for LocationViewerActiveLocationState();
  v14 = sub_100003810(active);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v151 = v15;
  v16 = sub_1000038CC();
  v159 = type metadata accessor for ViewState.SecondaryViewState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v160 = v18;
  v19 = sub_1000038CC();
  v161 = type metadata accessor for ViewState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v158 = v21;
  sub_1000038CC();
  v143 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003848();
  v154 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v142 = v25;
  v26 = sub_10022C350(&qword_100CADBA0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  v147 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v149 = v30;
  sub_1000038CC();
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v156 = v32;
  v157 = v31;
  __chkstk_darwin(v31);
  sub_100003848();
  v152 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  v144 = v141 - v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  v148 = v141 - v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  v40 = v141 - v39;
  v41 = sub_10022C350(&qword_100CA65D8);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  v141[0] = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v46 = v141 - v45;
  __chkstk_darwin(v47);
  sub_10003A2D4();
  __chkstk_darwin(v48);
  v50 = v141 - v49;
  v51 = type metadata accessor for Location();
  sub_1000037C4();
  v150 = v52;
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_1000037D8();
  v60 = v59 - v58;
  v61 = type metadata accessor for LocationPreviewViewState(0);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_1000037D8();
  v65 = v64 - v63;
  sub_10001FDB8();
  sub_1000BCD08();
  if (!swift_getEnumCaseMultiPayload())
  {
    v70 = v46;
    v71 = v40;
    v72 = v154;
    v73 = v155;
    sub_10003CA50();
    sub_100003B2C();
    sub_1000D3AB8();
    sub_1006E6234(v50);
    sub_10000394C(v50);
    if (v88)
    {
      sub_1000180EC(v50, &qword_100CA65D8);
      if ((v73 & 1) == 0)
      {
        v69 = type metadata accessor for LocationPreviewViewState;
        goto LABEL_22;
      }

      sub_100004F50();
      v74 = v142;
      sub_1000BCD08();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_10001D35C();
        sub_1000E0358(v65, v134);
        v107 = type metadata accessor for PreviewLocation;
        v108 = v74;
        goto LABEL_23;
      }

      sub_1000E0358(v74, type metadata accessor for PreviewLocation);
      sub_100004F50();
      sub_1000BCD08();
      sub_1006E6430();
      sub_1006E6834();
      sub_1006E6B60();
      v75 = v148;
      Location.Identifier.init(id:name:coordinate:)();
      sub_1000E0358(v72, type metadata accessor for PreviewLocation);
      sub_10001D35C();
      sub_1000E0358(v65, v76);
      v77 = v156;
      v78 = v157;
      v79 = v162;
      (*(v156 + 16))(v162, v75, v157);
      v80 = type metadata accessor for PresentedLocation();
      (*(v77 + 32))(v79 + *(v80 + 20), v75, v78);
      sub_10000E7B0();
      sub_10001B350(v81, v82, v83, v78);
      *(v79 + *(v80 + 24)) = 1;
    }

    else
    {
      v87 = v150;
      (*(v150 + 32))(v56, v50, v51);
      sub_100964314(v2);
      Location.identifier.getter();
      sub_100035AD0(v2, v70, &qword_100CA65D8);
      sub_10000394C(v70);
      if (v88)
      {
        sub_1000180EC(v2, &qword_100CA65D8);
        (*(v87 + 8))(v56, v51);
        sub_10001D35C();
        sub_1000E0358(v65, v89);
        sub_1000180EC(v70, &qword_100CA65D8);
        v116 = 1;
        v113 = v149;
      }

      else
      {
        v113 = v149;
        Location.identifier.getter();
        sub_1000180EC(v2, &qword_100CA65D8);
        v114 = *(v87 + 8);
        v114(v56, v51);
        sub_10001D35C();
        sub_1000E0358(v65, v115);
        v114(v70, v51);
        v116 = 0;
      }

      v117 = v157;
      sub_10001B350(v113, v116, 1, v157);
      v118 = v162;
      (*(v156 + 32))(v162, v71, v117);
      v80 = type metadata accessor for PresentedLocation();
      sub_1000E90D8(v113, v118 + *(v80 + 20));
      *(v118 + *(v80 + 24)) = 1;
    }

LABEL_36:
    sub_10000E7B0();
    v109 = v80;
    return sub_10001B350(v110, v111, v112, v109);
  }

  sub_100006C40();
  sub_1000E0358(v60, v66);
  sub_10001A29C();
  v67 = v158;
  sub_1000BCD08();
  v65 = v160;
  v68 = v161;
  sub_1000BCD08();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100075358();
    v69 = type metadata accessor for ViewState.SecondaryViewState;
LABEL_22:
    v107 = v69;
    v108 = v65;
LABEL_23:
    sub_1000E0358(v108, v107);
    goto LABEL_24;
  }

  if (*(v67 + v68[9] + 8) != 1)
  {
    sub_100075358();
    v85 = v157;
    v86 = v153;
LABEL_16:
    v65 = v151;
    sub_1000BCD08();
    v90 = sub_10000C834();
    sub_1000038B4(v90, v91, v85);
    if (v88)
    {

      v69 = type metadata accessor for LocationViewerActiveLocationState;
      goto LABEL_22;
    }

    v92 = v156;
    v93 = v144;
    v161 = *(v156 + 32);
    (v161)(v144, v65, v85);
    sub_100013F28();
    sub_1000BCD08();
    v94 = v148;
    static CurrentLocation.placeholderIdentifier.getter();
    v95 = static Location.Identifier.== infix(_:_:)();
    v160 = *(v92 + 8);
    v96 = v160(v94, v85);
    if (v95)
    {
      sub_10022C350(&qword_100CA38C0);
      type metadata accessor for CurrentLocation();
      v97 = v146;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for LocationOfInterest();
      v98 = sub_10000C7F0();
      sub_10001B350(v98, v99, 1, v100);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      v101 = enum case for LocationModel.current(_:);
      v102 = type metadata accessor for LocationModel();
      sub_1000037E8();
      (*(v103 + 104))(v97, v101, v102);
      sub_10000E7B0();
      sub_10001B350(v104, v105, v106, v102);
    }

    else
    {
      __chkstk_darwin(v96);
      v141[-2] = v93;
      v119 = v146;
      sub_100030C98();
      v97 = v119;
    }

    sub_1000E0358(v86, type metadata accessor for LocationsState);
    (*(v156 + 16))(v152, v93, v85);
    v120 = v145;
    sub_100035AD0(v97, v145, &unk_100CE2F20);
    v121 = type metadata accessor for LocationModel();
    v122 = sub_10000C7F0();
    sub_1000038B4(v122, v123, v121);
    if (v88)
    {

      sub_1000180EC(v97, &unk_100CE2F20);
      v124 = sub_10003200C();
      v125(v124);
      v126 = v120;
      v127 = &unk_100CE2F20;
    }

    else
    {
      v128 = v141[0];
      LocationModel.coalesceLocation.getter();
      v129 = sub_100003B2C();
      v130(v129);
      sub_10000394C(v128);
      if (!v131)
      {
        Location.identifier.getter();

        sub_1000180EC(v97, &unk_100CE2F20);
        v135 = sub_10003200C();
        v136(v135);
        (*(v150 + 8))(v128, v51);
        v137 = 0;
LABEL_35:
        v138 = v147;
        sub_10001B350(v147, v137, 1, v85);
        v139 = v162;
        (v161)(v162, v152, v85);
        v80 = type metadata accessor for PresentedLocation();
        sub_1000E90D8(v138, v139 + *(v80 + 20));
        *(v139 + *(v80 + 24)) = 0;
        goto LABEL_36;
      }

      sub_1000180EC(v97, &unk_100CE2F20);
      v132 = sub_10003200C();
      v133(v132);
      v127 = &qword_100CA65D8;
      v126 = v128;
    }

    sub_1000180EC(v126, v127);
    v137 = 1;
    goto LABEL_35;
  }

  v84 = [objc_opt_self() currentDevice];
  [v84 userInterfaceIdiom];

  LOBYTE(v84) = *(v67 + v68[7]);
  sub_100075358();
  v85 = v157;
  v86 = v153;
  if (v84)
  {
    goto LABEL_16;
  }

LABEL_24:
  v109 = type metadata accessor for PresentedLocation();
  v110 = v162;
  v111 = 1;
  v112 = 1;
  return sub_10001B350(v110, v111, v112, v109);
}

void sub_100963D14()
{
  type metadata accessor for MainAction();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 40);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      sub_1000BCD08();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v9 = type metadata accessor for MainAction;
      if (EnumCaseMultiPayload == 6 && (type metadata accessor for ViewAction(), v10 = swift_getEnumCaseMultiPayload(), v9 = type metadata accessor for ViewAction, v10 == 1))
      {
        type metadata accessor for LocationViewerViewAction();
        v11 = swift_getEnumCaseMultiPayload();
        sub_1000E0358(v4, type metadata accessor for LocationViewerViewAction);
        if (!v11)
        {
          return;
        }
      }

      else
      {
        sub_1000E0358(v4, v9);
      }

      if (v6 == ++v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100963EB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A30470;
  strcpy((inited + 32), "appLifecycle");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = *(a1 + 24);
  *(inited + 72) = &type metadata for AppLifecycleState;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000100ABE5C0;
  *(inited + 120) = type metadata accessor for AppConfigurationState();
  sub_100042FB0((inited + 96));
  sub_100024C68();
  sub_1000BCD08();
  *(inited + 128) = 0x6D6E6F7269766E65;
  *(inited + 136) = 0xEB00000000746E65;
  *(inited + 168) = type metadata accessor for EnvironmentState();
  sub_100042FB0((inited + 144));
  swift_beginAccess();
  sub_100069CAC();
  sub_1000BCD08();
  strcpy((inited + 176), "notifications");
  *(inited + 190) = -4864;
  *(inited + 216) = type metadata accessor for NotificationsState();
  sub_100042FB0((inited + 192));
  sub_10004EE00();
  sub_1000BCD08();
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000100ABAF40;
  *(inited + 264) = type metadata accessor for NotificationsOptInState();
  sub_100042FB0((inited + 240));
  sub_100020D18();
  sub_1000BCD08();
  strcpy((inited + 272), "modalViewState");
  *(inited + 287) = -18;
  *(inited + 312) = type metadata accessor for ModalViewState(0);
  sub_100042FB0((inited + 288));
  sub_10001FDB8();
  sub_1000BCD08();
  *(inited + 320) = 1701669236;
  *(inited + 328) = 0xE400000000000000;
  *(inited + 360) = type metadata accessor for TimeState();
  sub_100042FB0((inited + 336));
  sub_10000D004();
  sub_1000BCD08();
  *(inited + 368) = 2003134838;
  *(inited + 376) = 0xE400000000000000;
  *(inited + 408) = type metadata accessor for ViewState(0);
  sub_100042FB0((inited + 384));
  sub_10001A29C();
  sub_1000BCD08();
  *(inited + 416) = 0x4472656874616577;
  *(inited + 424) = 0xEB00000000617461;
  v6 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v5 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v7 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v8 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  *(inited + 456) = &type metadata for WeatherDataState;
  v9 = swift_allocObject();
  *(inited + 432) = v9;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v7;
  v9[5] = v8;
  *(inited + 464) = 0x6174536775626564;
  *(inited + 472) = 0xEA00000000006574;
  v10 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v11 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v12 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  *(inited + 496) = *(v10 + 16);
  *(inited + 504) = &type metadata for DebugState;
  *(inited + 480) = v11;
  *(inited + 488) = v12;

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CBCED8);
  a2[4] = sub_100056774();
  sub_100042FB0(a2);
  type metadata accessor for MainAction();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1009642D8()
{
  sub_1009644D0();

  return ShortDescribable.description.getter();
}

uint64_t sub_100964314@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationOfInterest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewLocation();
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCD08();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v3 + 32))(v5, v8, v2);
    LocationOfInterest.location.getter();
    (*(v3 + 8))(v5, v2);
    v9 = 0;
  }

  else
  {
    sub_1000E0358(v8, type metadata accessor for PreviewLocation);
    v9 = 1;
  }

  v10 = type metadata accessor for Location();
  return sub_10001B350(a1, v9, 1, v10);
}

unint64_t sub_1009644D0()
{
  result = qword_100CE8430[0];
  if (!qword_100CE8430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CE8430);
  }

  return result;
}

uint64_t sub_100964524(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  if (v10)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v6 + 64) + 7;
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v13 >= a2)
  {
LABEL_33:
    v30 = (a1 + v14 + 10) & ~v14;
    if (v7 == v13)
    {

      return sub_100024D10(v30, v7, v5);
    }

    else
    {
      v31 = ((v17 + v30) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0x80000000) != 0)
      {
        v33 = sub_100024D10((v20 + ((((((v31 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v19, v10, v16);
        if (v33 >= 2)
        {
          return v33 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v32 = *v31;
        if (*v31 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        return (v32 + 1);
      }
    }
  }

  else
  {
    v21 = ((v15 + *(*(v8 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((v17 + ((v14 + 10) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v19) + 8;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v13 + 1;
    }

    result = 4;
    if (v23 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v23 < 0x100)
    {
      v25 = 1;
    }

    if (v23 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 2:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

LABEL_30:
        v28 = v27 - 1;
        if (v22)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        result = v13 + (v29 | v28) + 1;
        break;
      default:
        goto LABEL_33;
    }
  }

  return result;
}

void sub_1009647CC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Date();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64) + 7;
  v19 = *(v12 + 80) & 0xF8;
  v20 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + 23;
  v22 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v22;
  }

  v23 = ((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20) + 8;
  if (v16 < a3)
  {
    if (((v22 + 7) & 0xFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & v20) == -8)
    {
      v24 = a3 - v16 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v22 + 7) & 0xFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & v20) == -8)
    {
      v26 = a2 - v16;
    }

    else
    {
      v26 = 1;
    }

    if (((v22 + 7) & 0xFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & v20) != -8)
    {
      v27 = ~v16 + a2;
      bzero(a1, v23);
      *a1 = v27;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v23) = v26;
        break;
      case 2:
        *(a1 + v23) = v26;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *(a1 + v23) = v26;
        break;
      default:
        return;
    }

    return;
  }

  switch(v11)
  {
    case 1:
      *(a1 + v23) = 0;
      if (a2)
      {
        goto LABEL_40;
      }

      return;
    case 2:
      *(a1 + v23) = 0;
      if (a2)
      {
        goto LABEL_40;
      }

      return;
    case 3:
LABEL_57:
      __break(1u);
      return;
    case 4:
      *(a1 + v23) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!a2)
      {
        return;
      }

LABEL_40:
      v28 = (a1 + v17 + 10) & ~v17;
      if (v9 == v16)
      {
        v29 = a2;
        v13 = v9;
        v10 = v7;
LABEL_42:

        sub_10001B350(v28, v29, v13, v10);
        return;
      }

      v30 = ((v18 + v28) & 0xFFFFFFFFFFFFFFF8);
      if ((v15 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v31 = a2 & 0x7FFFFFFF;
          v30[1] = 0;
        }

        else
        {
          v31 = (a2 - 1);
        }

        *v30 = v31;
        return;
      }

      v32 = ((v21 + ((((((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20);
      if (v14 >= a2)
      {
        v29 = (a2 + 1);
        v28 = (v21 + ((((((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20;
        goto LABEL_42;
      }

      v33 = (v22 + 7) & 0xFFFFFFF8;
      if (v33 != -8)
      {
        v34 = ~v14 + a2;
        bzero(((v21 + ((((((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20), (v33 + 8));
        *v32 = v34;
      }

      return;
  }
}

uint64_t sub_100964B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v99 = a2;
  v105 = *(a1 - 8);
  v104 = *(v105 + 64);
  __chkstk_darwin(a1);
  v97 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = v78 - v7;
  v103 = *(v8 + 16);
  v9 = type metadata accessor for ModifiedContent();
  v85 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v78 - v10;
  v80 = v9;
  v12 = type metadata accessor for ModifiedContent();
  v91 = *(v12 - 8);
  __chkstk_darwin(v12);
  v100 = v78 - v13;
  v102 = *(a1 + 24);
  v14 = v102;
  v15 = sub_1001B8300();
  v111 = v14;
  v112 = v15;
  v98 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v79 = WitnessTable;
  v17 = sub_100965958();
  v109 = WitnessTable;
  v110 = v17;
  v18 = swift_getWitnessTable();
  *&__src[0] = v12;
  *(&__src[0] + 1) = v18;
  v19 = v12;
  v81 = v12;
  v82 = v18;
  v20 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = OpaqueTypeMetadata2;
  v94 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v101 = v78 - v22;
  *&__src[0] = v19;
  *(&__src[0] + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&__src[0] = OpaqueTypeMetadata2;
  *(&__src[0] + 1) = OpaqueTypeConformance2;
  v92 = &opaque type descriptor for <<opaque return type of View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)>>;
  v88 = swift_getOpaqueTypeMetadata2();
  v95 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = v78 - v23;
  v93 = type metadata accessor for ModifiedContent();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v84 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v89 = v78 - v26;
  v27 = a1;
  v28 = (v3 + *(a1 + 48));
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  memset(__dst, 0, 32);
  sub_100148118(v29, v30, v31, v32);
  sub_10022C350(&qword_100CDB3D8);
  State.init(wrappedValue:)();
  v33 = *&__src[2];
  v34 = __src[0];
  v35 = __src[1];
  *&__src[0] = v29;
  *(&__src[0] + 1) = v30;
  *&__src[1] = v31;
  *(&__src[1] + 1) = v32;
  __src[2] = v34;
  __src[3] = v35;
  *&__src[4] = v33;
  View.modifier<A>(_:)();
  memcpy(__dst, __src, 0x48uLL);
  sub_100965A00(__dst);
  v36 = (v3 + *(v27 + 52));
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  memset(v108, 0, 32);
  sub_100148118(v37, v38, v39, v40);
  State.init(wrappedValue:)();
  *&v108[0] = v37;
  *(&v108[0] + 1) = v38;
  *&v108[1] = v39;
  *(&v108[1] + 1) = v40;
  v108[2] = __src[0];
  v108[3] = __src[1];
  *&v108[4] = *&__src[2];
  v41 = v80;
  View.modifier<A>(_:)();
  memcpy(__src, v108, 0x48uLL);
  sub_100965A30(__src);
  (*(v85 + 8))(v11, v41);
  v42 = v105;
  v43 = v105 + 16;
  v85 = *(v105 + 16);
  v44 = v90;
  v45 = v27;
  (v85)(v90, v3, v27);
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v78[1] = *(v42 + 80);
  v79 = v43;
  v47 = swift_allocObject();
  v48 = v102;
  *(v47 + 16) = v103;
  *(v47 + 24) = v48;
  v80 = *(v42 + 32);
  v105 = v42 + 32;
  v49 = v44;
  v80(v47 + v46, v44, v27);
  v50 = v100;
  v51 = v81;
  View.onTapGesture(count:perform:)();

  (*(v91 + 8))(v50, v51);
  v52 = v49;
  v53 = v49;
  v54 = v85;
  (v85)(v53, v3, v27);
  v55 = swift_allocObject();
  v57 = v102;
  v56 = v103;
  *(v55 + 16) = v103;
  *(v55 + 24) = v57;
  v58 = v80;
  v80(v55 + v46, v52, v45);
  v59 = v97;
  v54(v97, v3, v45);
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v57;
  v61 = v45;
  v58(v60 + v46, v59, v45);
  v62 = v83;
  v63 = v86;
  v64 = OpaqueTypeConformance2;
  v65 = v101;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  (*(v94 + 8))(v65, v63);
  v66 = (v3 + *(v61 + 56));
  v67 = *v66;
  v68 = *(v66 + 1);
  LOBYTE(v108[0]) = v67;
  *(&v108[0] + 1) = v68;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  *&v108[0] = v63;
  *(&v108[0] + 1) = v64;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v84;
  v71 = v88;
  sub_100965924();
  (*(v95 + 8))(v62, v71);
  v72 = sub_1009659AC();
  v106 = v69;
  v107 = v72;
  v73 = v93;
  v74 = swift_getWitnessTable();
  v75 = v89;
  sub_1000833D8(v70, v73, v74);
  v76 = *(v96 + 8);
  v76(v70, v73);
  sub_1000833D8(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_100965430(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for WeatherComponentButton();
  sub_10022C350(&qword_100CBB758);
  State.wrappedValue.getter();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1001AEDF4(v4);
    v13 = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v15 = v14;
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    v13 = v15 > 0.3;
  }

  return (*(a1 + *(v12 + 44)))(v13);
}

uint64_t sub_100965648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherComponentButton();
  sub_1000833D8(a1 + *(v9 + 40), a2, a3);
  sub_1000833D8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

void sub_100965740(char a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  if (a1)
  {
    Date.init()();
    v8 = type metadata accessor for Date();
    sub_10001B350(v7, 0, 1, v8);
    type metadata accessor for WeatherComponentButton();
    sub_1000D47CC(v7, v4);
    sub_10022C350(&qword_100CBB758);
    State.wrappedValue.setter();
    sub_1001AEDF4(v7);
  }
}

uint64_t sub_100965864()
{
  type metadata accessor for WeatherComponentButton();
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

unint64_t sub_100965958()
{
  result = qword_100CE84C0;
  if (!qword_100CE84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE84C0);
  }

  return result;
}

unint64_t sub_1009659AC()
{
  result = qword_100CE84D8;
  if (!qword_100CE84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE84D8);
  }

  return result;
}

uint64_t sub_100965A88(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_10003C724();
  v5 = *(type metadata accessor for WeatherComponentButton() - 8);
  return sub_1009658E0(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4, a1);
}

uint64_t sub_100965B04()
{
  v1 = *(type metadata accessor for WeatherComponentButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100965430(v2);
}

uint64_t sub_100965BAC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_10003C724();
  v6 = *(type metadata accessor for WeatherComponentButton() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for DefaultButtonStyleModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100965D54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_100965DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100965E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a1;
  v20 = a2;
  v4 = sub_10022C350(&qword_100CE84E0);
  __chkstk_darwin(v4 - 8);
  v19 = &v17 - v5;
  v18 = sub_10022C350(&qword_100CE84E8);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = *(v2 + 3);
  v28 = *(v2 + 2);
  v29 = v8;
  v30 = v2[8];
  v9 = *(v2 + 3);
  v21 = *(v2 + 2);
  v22 = v9;
  v23 = v2[8];
  sub_10022C350(&qword_100CE84F0);
  State.wrappedValue.getter();
  if (v27)
  {
    v10 = v24;
    v11 = v25;
    LOBYTE(v12) = v26;
    if (v2[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2[3])
    {
      v12 = *(v2 + 4);
      v10 = *v2;
      v11 = v2[1];
      sub_10010CD54(*v2, v11, v12 & 1);

      goto LABEL_9;
    }

    LOBYTE(v12) = 0;
    v10 = 0x444553554E55;
    v11 = 0xE600000000000000;
  }

  v21 = v28;
  v22 = v29;
  v23 = v30;
  State.wrappedValue.getter();
  if (v27)
  {
    sub_10014A53C(v24, v25, v26, v27);
  }

LABEL_9:
  sub_10022C350(&qword_100CE84F8);
  sub_100006F64(&qword_100CE8500, &qword_100CE84F8);
  v13 = v19;
  View.accessibilityLabel(_:isEnabled:)();
  sub_10010CD64(v10, v11, v12 & 1);

  v14 = swift_allocObject();
  memcpy((v14 + 16), v3, 0x48uLL);
  sub_1005AD458(v13, v7, &qword_100CE84E0);
  v15 = &v7[*(v18 + 36)];
  *v15 = sub_100191400;
  v15[1] = v14;
  sub_1005AD458(v7, v20, &qword_100CE84E8);
  return sub_10096693C(v3, &v21);
}

uint64_t sub_10096618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a1;
  v20 = a2;
  v4 = sub_10022C350(&qword_100CE8508);
  __chkstk_darwin(v4 - 8);
  v19 = &v17 - v5;
  v18 = sub_10022C350(&qword_100CE8510);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = *(v2 + 3);
  v28 = *(v2 + 2);
  v29 = v8;
  v30 = v2[8];
  v9 = *(v2 + 3);
  v21 = *(v2 + 2);
  v22 = v9;
  v23 = v2[8];
  sub_10022C350(&qword_100CE84F0);
  State.wrappedValue.getter();
  if (v27)
  {
    v10 = v24;
    v11 = v25;
    LOBYTE(v12) = v26;
    if (v2[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2[3])
    {
      v12 = *(v2 + 4);
      v10 = *v2;
      v11 = v2[1];
      sub_10010CD54(*v2, v11, v12 & 1);

      goto LABEL_9;
    }

    LOBYTE(v12) = 0;
    v10 = 0x444553554E55;
    v11 = 0xE600000000000000;
  }

  v21 = v28;
  v22 = v29;
  v23 = v30;
  State.wrappedValue.getter();
  if (v27)
  {
    sub_10014A53C(v24, v25, v26, v27);
  }

LABEL_9:
  sub_10022C350(&qword_100CE8518);
  sub_100006F64(&qword_100CE8520, &qword_100CE8518);
  v13 = v19;
  View.accessibilityValue(_:isEnabled:)();
  sub_10010CD64(v10, v11, v12 & 1);

  v14 = swift_allocObject();
  memcpy((v14 + 16), v3, 0x48uLL);
  sub_1005AD458(v13, v7, &qword_100CE8508);
  v15 = &v7[*(v18 + 36)];
  *v15 = sub_10096733C;
  v15[1] = v14;
  sub_1005AD458(v7, v20, &qword_100CE8510);
  return sub_100966974(v3, &v21);
}

uint64_t *sub_10096648C(uint64_t *result)
{
  if (result[3])
  {
    sub_10010CD54(*result, result[1], result[2] & 1);

    sub_10022C350(&qword_100CE84F0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100966564@<X0>(uint64_t a1@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v2 = static Color.clear.getter();
  v3 = static Edge.Set.all.getter();
  result = sub_10022C350(&qword_100CE8530);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_1009665CC@<X0>(uint64_t a1@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v2 = ButtonStyleConfiguration.isPressed.getter();
  result = sub_10022C350(&qword_100CE8528);
  *(a1 + *(result + 36)) = v2 & 1;
  return result;
}

uint64_t sub_100966620@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CE8538);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_10022C350(&qword_100CE8540);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_10022C350(&qword_100CE8548);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  v17 = static Color.clear.getter();
  v18 = static Edge.Set.all.getter();
  v19 = sub_10022C350(&qword_100CE8550);
  (*(*(v19 - 8) + 16))(v9, a1, v19);
  v20 = &v9[*(v7 + 44)];
  *v20 = v17;
  v20[8] = v18;
  if (a2)
  {
    v21 = 0.95;
  }

  else
  {
    v21 = 1.0;
  }

  static UnitPoint.center.getter();
  v23 = v22;
  v25 = v24;
  sub_1005AD458(v9, v13, &qword_100CE8538);
  v26 = &v13[*(v11 + 44)];
  *v26 = v21;
  *(v26 + 1) = v21;
  *(v26 + 2) = v23;
  *(v26 + 3) = v25;
  sub_1005AD458(v13, v16, &qword_100CE8540);
  if (a2)
  {
    v27 = static Animation.timingCurve(_:_:_:_:duration:)();
  }

  else
  {
    v27 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  }

  v28 = v27;
  sub_1005AD458(v16, a3, &qword_100CE8548);
  result = sub_10022C350(&qword_100CE8558);
  v30 = a3 + *(result + 36);
  *v30 = v28;
  *(v30 + 8) = a2 & 1;
  return result;
}

unint64_t sub_1009669CC()
{
  result = qword_100CE8560;
  if (!qword_100CE8560)
  {
    sub_10022E824(&qword_100CE84E8);
    sub_100966A84();
    sub_100006F64(&qword_100CE8570, &qword_100CE8578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8560);
  }

  return result;
}

unint64_t sub_100966A84()
{
  result = qword_100CE8568;
  if (!qword_100CE8568)
  {
    sub_10022E824(&qword_100CE84E0);
    sub_100006F64(&qword_100CE8500, &qword_100CE84F8);
    sub_1001B83FC(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8568);
  }

  return result;
}

unint64_t sub_100966B6C()
{
  result = qword_100CE8580;
  if (!qword_100CE8580)
  {
    sub_10022E824(&qword_100CE8510);
    sub_100966C24();
    sub_100006F64(&qword_100CE8590, &qword_100CE8598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8580);
  }

  return result;
}

unint64_t sub_100966C24()
{
  result = qword_100CE8588;
  if (!qword_100CE8588)
  {
    sub_10022E824(&qword_100CE8508);
    sub_100006F64(&qword_100CE8520, &qword_100CE8518);
    sub_1001B83FC(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8588);
  }

  return result;
}

unint64_t sub_100966D0C()
{
  result = qword_100CE85A0;
  if (!qword_100CE85A0)
  {
    sub_10022E824(&qword_100CE8528);
    sub_1001B83FC(&qword_100CBDD48, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_1009659AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85A0);
  }

  return result;
}

unint64_t sub_100966DC8()
{
  result = qword_100CE85A8;
  if (!qword_100CE85A8)
  {
    sub_10022E824(&qword_100CE8530);
    sub_1001B83FC(&qword_100CBDD48, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100006F64(&qword_100CC0538, &qword_100CC0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85A8);
  }

  return result;
}

unint64_t sub_100966EB0()
{
  result = qword_100CE85B0;
  if (!qword_100CE85B0)
  {
    sub_10022E824(&qword_100CE8558);
    sub_100966F68();
    sub_100006F64(&qword_100CBDD68, &qword_100CBDD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85B0);
  }

  return result;
}

unint64_t sub_100966F68()
{
  result = qword_100CE85B8;
  if (!qword_100CE85B8)
  {
    sub_10022E824(&qword_100CE8548);
    sub_100966FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85B8);
  }

  return result;
}

unint64_t sub_100966FF4()
{
  result = qword_100CE85C0;
  if (!qword_100CE85C0)
  {
    sub_10022E824(&qword_100CE8540);
    sub_100967080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85C0);
  }

  return result;
}

unint64_t sub_100967080()
{
  result = qword_100CE85C8;
  if (!qword_100CE85C8)
  {
    sub_10022E824(&qword_100CE8538);
    sub_100006F64(&qword_100CE85D0, &qword_100CE8550);
    sub_100006F64(&qword_100CC0538, &qword_100CC0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85C8);
  }

  return result;
}

unint64_t sub_100967164()
{
  result = qword_100CE85D8;
  if (!qword_100CE85D8)
  {
    sub_10022E824(&qword_100CDB3D8);
    sub_1009671E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85D8);
  }

  return result;
}

unint64_t sub_1009671E8()
{
  result = qword_100CE85E0;
  if (!qword_100CE85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE85E0);
  }

  return result;
}

unint64_t sub_10096723C(uint64_t a1)
{
  result = sub_100967264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100967264()
{
  result = qword_100CE8600;
  if (!qword_100CE8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8600);
  }

  return result;
}

unint64_t sub_1009672B8(uint64_t a1)
{
  result = sub_1009672E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1009672E0()
{
  result = qword_100CE8620;
  if (!qword_100CE8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8620);
  }

  return result;
}

uint64_t sub_100967348(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t))
{
  v462 = a2;
  v3 = sub_10022C350(&qword_100CA65C0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(&v404 - v5);
  v6 = sub_10022C350(&qword_100CA65D0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003990(&v404 - v8);
  v9 = sub_10022C350(&qword_100CA65C8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = sub_100003918(&v404 - v11);
  v465 = type metadata accessor for LocationPreviewModalViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v469 = v14;
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v464 = type metadata accessor for LocationPreviewViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v468 = v19;
  __chkstk_darwin(v20);
  sub_10000E70C();
  v22 = sub_100003918(v21);
  v471 = type metadata accessor for ViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  sub_100003918(v26);
  v467 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v461 = v30;
  sub_1000038CC();
  v466 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v460 = v34;
  sub_1000038CC();
  v470 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v459 = v38;
  sub_1000038CC();
  v474 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v458 = v42;
  sub_1000038CC();
  v473 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  sub_100003918(v46);
  v472 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CA65E8);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  sub_100003990(v58);
  v59 = sub_10022C350(&qword_100CA6610);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  sub_100003990(v66);
  v67 = sub_10022C350(&qword_100CA6618);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_10000E70C();
  sub_100003990(v74);
  v75 = sub_10022C350(&qword_100CA6620);
  v76 = sub_100003810(v75);
  __chkstk_darwin(v76);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_10000E70C();
  sub_100003990(v82);
  v83 = sub_10022C350(&qword_100CA6628);
  v84 = sub_100003810(v83);
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  sub_100003990(v90);
  v91 = sub_10022C350(&qword_100CA6630);
  v92 = sub_100003810(v91);
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_10000E70C();
  sub_100003990(v98);
  v99 = sub_10022C350(&qword_100CA6638);
  v100 = sub_100003810(v99);
  __chkstk_darwin(v100);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_10000E70C();
  sub_100003990(v106);
  v107 = sub_10022C350(&qword_100CA6640);
  v108 = sub_100003810(v107);
  __chkstk_darwin(v108);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_10000E70C();
  sub_100003918(v114);
  v115 = type metadata accessor for ConditionDetailViewState();
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  v120 = &v404 - v119;
  v121 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v122);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  v125 = __chkstk_darwin(v124);
  v127 = &v404 - v126;
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  v130 = __chkstk_darwin(v129);
  v132 = &v404 - v131;
  __chkstk_darwin(v130);
  sub_100003878();
  v463 = v133;
  v135 = __chkstk_darwin(v134);
  v137 = &v404 - v136;
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  v140 = &v404 - v139;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  v142 = __chkstk_darwin(v141);
  v144 = &v404 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v142);
  v146 = &v404 - v145;
  sub_10001D374();
  v475 = v147;
  sub_1000BCD60();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000D3B10();
    sub_1000BCD60();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100049F88();
      sub_1000D3B10();
      v205 = sub_100003BCC(&v477);
      sub_10001B350(v205, v206, v207, v472);
      v208 = sub_100003BCC(&v478);
      sub_10001B350(v208, v209, v210, v473);
      v211 = sub_100003BCC(&v479);
      sub_10001B350(v211, v212, v213, v474);
      v214 = sub_100003BCC(&v480);
      sub_10001B350(v214, v215, v216, v470);
      v217 = sub_100003BCC(&v481);
      v218 = v466;
      sub_10001B350(v217, v219, v220, v466);
      v221 = sub_100003BCC(&v482);
      v222 = v467;
      sub_10001B350(v221, v223, v224, v467);
      v225 = sub_100003BCC(&v483);
      sub_10001B350(v225, v226, v227, v471);
      sub_1009698C4(v462, v437);
      sub_10004EE30();
      sub_1000E03B0(v120, v228);
      sub_1000E03B0(v146, type metadata accessor for ModalViewState.LocationDetailModal);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v229, v230, v231, v121);
      sub_10001D374();
      v232 = a1;
      sub_1000BCD60();
      v233 = v438;
      sub_100051BBC();
      sub_100005404(v233);
      if (v204)
      {
        sub_1000180EC(v233, &qword_100CA65E8);
      }

      else
      {
        sub_1000110B0();
        sub_1000E03B0(v137, v292);
        sub_10001FDFC();
        sub_1000D3B10();
      }

      v293 = v441;
      v294 = v436;
      v295 = v435;
      sub_10001FDFC();
      sub_1000D3B10();
      v296 = *(v232 + 16);
      LODWORD(v469) = *(v232 + 24);
      sub_100051BBC();
      v297 = sub_1000162B0();
      v298 = v472;
      sub_1000038B4(v297, v299, v472);
      v475 = v296;
      if (v204)
      {
        sub_100075398();
        sub_1000BCD60();
        v300 = sub_1000162B0();
        v302 = sub_100024D10(v300, v301, v298);

        v304 = v473;
        v303 = v474;
        if (v302 != 1)
        {
          sub_1000180EC(v295, &qword_100CA6640);
        }
      }

      else
      {
        sub_100037EC4();
        sub_1000D3B10();

        v304 = v473;
        v303 = v474;
      }

      sub_1000325C0();
      sub_100051BBC();
      v305 = sub_1000162B0();
      sub_1000038B4(v305, v306, v304);
      if (v204)
      {
        sub_10002014C();
        sub_10000EF3C();
        sub_1000BCD60();
        v307 = sub_1000162B0();
        sub_1000038B4(v307, v308, v304);
        v309 = v443;
        v310 = v439;
        if (!v204)
        {
          sub_1000180EC(v295, &qword_100CA6638);
        }
      }

      else
      {
        sub_100028E88();
        sub_1000D3B10();
        v309 = v443;
        v310 = v439;
      }

      sub_100051BBC();
      sub_1000038B4(v294, 1, v303);
      if (v204)
      {
        sub_10002CC08();
        sub_1000BCD60();
        sub_1000038B4(v294, 1, v303);
        v311 = v440;
        if (!v204)
        {
          sub_1000180EC(v294, &qword_100CA6630);
        }
      }

      else
      {
        sub_100020D3C();
        sub_1000D3B10();
        v311 = v440;
      }

      sub_100051BBC();
      sub_100005404(v310);
      if (v204)
      {
        sub_10000D01C();
        sub_1000BCD60();
        sub_100005404(v310);
        v312 = v442;
        if (!v204)
        {
          sub_1000180EC(v310, &qword_100CA6628);
        }
      }

      else
      {
        sub_100024C80();
        sub_1000D3B10();
        v312 = v442;
      }

      sub_100051BBC();
      v313 = sub_1000162A4();
      sub_1000038B4(v313, v314, v218);
      if (v204)
      {
        sub_10003CA68();
        sub_1000BCD60();
        v315 = sub_1000162A4();
        sub_1000038B4(v315, v316, v218);
        if (!v204)
        {
          sub_1000180EC(v311, &qword_100CA6620);
        }
      }

      else
      {
        sub_10001805C();
        sub_1000D3B10();
      }

      sub_100051BBC();
      v317 = sub_10000C7F0();
      sub_1000038B4(v317, v318, v222);
      if (v204)
      {
        sub_100069CC4();
        sub_1000BCD60();
        v319 = sub_10000C7F0();
        sub_1000038B4(v319, v320, v222);
        if (!v204)
        {
          sub_1000180EC(v293, &qword_100CA6618);
        }
      }

      else
      {
        sub_100013F6C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      v321 = sub_1000131C4();
      sub_1000038B4(v321, v322, v471);
      if (v204)
      {
        sub_100017198();
        sub_1000BCD60();
        sub_100003A40(v312);
        v323 = v309;
        if (!v204)
        {
          sub_1000180EC(v312, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000235F4();
        sub_1000D3B10();
        v323 = v309;
      }

      sub_10001FDFC();
      v324 = v463;
      sub_1000D3B10();
      v326 = *(v232 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v325 = *(v232 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v328 = *(v232 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v327 = *(v232 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v329 = v232;
      v330 = *(v232 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v332 = *(v232 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v331 = *(v232 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v333 = *(v329 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v403) = v330;
      sub_10003E038(v475, v469, v456, v457, v458, v459, v460, v461, v323, v324, v326, v325, v328, v327, v403, v332, v331, v333, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420);
      v150 = v334;

      goto LABEL_115;
    }

    sub_1000E03B0(v146, type metadata accessor for ModalViewState.LocationDetailModal);
    v148 = v144;
    v149 = type metadata accessor for ModalViewState.LocationDetailModal;
  }

  else
  {
    sub_1000110B0();
    v148 = v140;
  }

  sub_1000E03B0(v148, v149);
  sub_10001D374();
  v150 = a1;
  sub_1000BCD60();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v152 = v473;
  v153 = v474;
  v154 = v469;
  if (EnumCaseMultiPayload)
  {
    sub_1000110B0();
    sub_1000E03B0(v132, v155);
    v156 = v472;
  }

  else
  {
    sub_1000373A0();
    v157 = v448;
    sub_1000D3B10();
    sub_10002446C();
    v158 = v447;
    sub_1000BCD60();
    v159 = v465;
    v160 = swift_getEnumCaseMultiPayload();
    v156 = v472;
    if (v160 == 1)
    {
      sub_100049F88();
      v161 = v417;
      sub_1000D3B10();
      v162 = sub_100003BCC(&v465);
      sub_10001B350(v162, v163, v164, v156);
      v165 = sub_100003BCC(&v466);
      sub_10001B350(v165, v166, v167, v473);
      v168 = sub_100003BCC(&v467);
      sub_10001B350(v168, v169, v170, v474);
      v171 = sub_100003BCC(&v468);
      sub_10001B350(v171, v172, v173, v470);
      v174 = sub_100003BCC(&v470);
      sub_10001B350(v174, v175, v176, v466);
      v177 = sub_100003BCC(&v472);
      sub_10001B350(v177, v178, v179, v467);
      v180 = sub_100003BCC(&v473);
      sub_10001B350(v180, v181, v182, v471);
      type metadata accessor for PreviewLocation();
      v183 = v444;
      sub_100003934();
      sub_10001B350(v184, v185, v186, v187);
      v188 = v445;
      sub_1009698C4(v462, v445);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v189, v190, v191, v159);
      type metadata accessor for SelectedSearchResult();
      v192 = v446;
      sub_100003934();
      sub_10001B350(v193, v194, v195, v196);
      sub_10043DB64(v183, v188, v192, v422);
      sub_1000180EC(v192, &qword_100CA65C0);
      sub_1000180EC(v188, &qword_100CA65D0);
      sub_1000180EC(v183, &qword_100CA65C8);
      sub_10004EE30();
      sub_1000E03B0(v161, v197);
      sub_1000151EC();
      sub_1000E03B0(v157, v198);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v199, v200, v201, v121);
      sub_10001D374();
      v202 = v418;
      sub_1000BCD60();
      v203 = v423;
      sub_100051BBC();
      sub_100005404(v203);
      if (v204)
      {
        sub_1000180EC(v203, &qword_100CA65E8);
      }

      else
      {
        sub_1000110B0();
        sub_1000E03B0(v202, v336);
        sub_10001FDFC();
        sub_1000D3B10();
      }

      v337 = v426;
      v338 = v425;
      v339 = v421;
      v340 = v419;
      sub_10001FDFC();
      sub_1000D3B10();
      v341 = *(v150 + 16);
      LODWORD(v469) = *(v150 + 24);
      sub_100051BBC();
      v342 = sub_10000C7F0();
      sub_1000038B4(v342, v343, v156);
      v344 = v474;
      if (v204)
      {
        sub_100075398();
        sub_1000BCD60();
        v345 = sub_10000C7F0();
        v347 = sub_100024D10(v345, v346, v156);

        if (v347 != 1)
        {
          sub_1000180EC(v340, &qword_100CA6640);
        }
      }

      else
      {
        sub_100037EC4();
        sub_1000D3B10();
      }

      sub_1000325C0();
      sub_100051BBC();
      v348 = sub_1000162B0();
      sub_1000038B4(v348, v349, v473);
      if (v204)
      {
        sub_10002014C();
        sub_10000EF3C();
        sub_1000BCD60();
        sub_100003A40(v156);
        v350 = v424;
        if (!v204)
        {
          sub_1000180EC(v156, &qword_100CA6638);
        }
      }

      else
      {
        sub_100028E88();
        sub_1000D3B10();
        v350 = v424;
      }

      sub_100051BBC();
      v351 = sub_1000162A4();
      sub_1000038B4(v351, v352, v344);
      if (v204)
      {
        sub_10002CC08();
        sub_1000BCD60();
        v353 = sub_1000162A4();
        sub_1000038B4(v353, v354, v344);
        if (!v204)
        {
          sub_1000180EC(v339, &qword_100CA6630);
        }
      }

      else
      {
        sub_100020D3C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      sub_100003A40(v350);
      if (v204)
      {
        sub_10000D01C();
        sub_1000BCD60();
        sub_100003A40(v350);
        if (!v204)
        {
          sub_1000180EC(v350, &qword_100CA6628);
        }
      }

      else
      {
        sub_100024C80();
        sub_1000D3B10();
      }

      sub_100051BBC();
      sub_1000038B4(v338, 1, v466);
      if (v204)
      {
        sub_10003CA68();
        sub_1000BCD60();
        sub_100005404(v338);
        v355 = v427;
        if (!v204)
        {
          sub_1000180EC(v338, &qword_100CA6620);
        }
      }

      else
      {
        sub_10001805C();
        sub_1000D3B10();
        v355 = v427;
      }

      sub_100051BBC();
      v356 = sub_10000C834();
      v357 = v467;
      sub_1000038B4(v356, v358, v467);
      if (v204)
      {
        sub_100069CC4();
        sub_1000BCD60();
        v359 = sub_10000C834();
        sub_1000038B4(v359, v360, v357);
        if (!v204)
        {
          sub_1000180EC(v337, &qword_100CA6618);
        }
      }

      else
      {
        sub_100013F6C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      v361 = sub_1000131C4();
      v362 = v471;
      sub_1000038B4(v361, v363, v471);
      v475 = v341;
      if (v204)
      {
        sub_100017198();
        sub_1000BCD60();
        v364 = sub_1000131C4();
        sub_1000038B4(v364, v365, v362);
        if (!v204)
        {
          sub_1000180EC(v355, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000235F4();
        sub_1000D3B10();
      }

      sub_10001FDFC();
      sub_1000D3B10();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v366 = sub_1000217AC();
      v368 = v451;
      v369 = v452;
      v370 = v453;
      v371 = v454[0];
      v372 = v454[1];
      v373 = &v476;
      goto LABEL_114;
    }

    sub_1000151EC();
    sub_1000E03B0(v157, v234);
    sub_100041C4C();
    sub_1000E03B0(v158, v235);
    v152 = v473;
    v153 = v474;
  }

  sub_10001D374();
  sub_1000BCD60();
  v236 = swift_getEnumCaseMultiPayload();
  v237 = v468;
  if (v236 != 4)
  {
    sub_1000110B0();
    v243 = v127;
LABEL_20:
    sub_1000E03B0(v243, v242);
    goto LABEL_21;
  }

  v238 = type metadata accessor for ModalViewState.MapViewModal(0);
  v239 = sub_10000C7F0();
  sub_1000038B4(v239, v240, v238);
  v241 = v471;
  if (!v204)
  {
    sub_1000373A0();
    sub_1000D3B10();
    sub_10002446C();
    sub_1000BCD60();
    v244 = v465;
    v245 = swift_getEnumCaseMultiPayload();
    if (v245 == 1)
    {
      sub_100049F88();
      sub_1000325C0();
      sub_1000D3B10();
      v246 = sub_100003BCC(&v448);
      sub_10001B350(v246, v247, v248, v156);
      v249 = sub_100003BCC(v449);
      sub_10001B350(v249, v250, v251, v152);
      v252 = sub_100003BCC(v450);
      sub_10001B350(v252, v253, v254, v153);
      v255 = sub_100003BCC(&v451);
      sub_10001B350(v255, v256, v257, v470);
      v258 = sub_100003BCC(&v452);
      sub_10001B350(v258, v259, v260, v466);
      v261 = sub_100003BCC(&v453);
      sub_10001B350(v261, v262, v263, v467);
      v264 = sub_100003BCC(v454);
      sub_10001B350(v264, v265, v266, v241);
      type metadata accessor for PreviewLocation();
      v267 = v444;
      sub_100003934();
      sub_10001B350(v268, v269, v270, v271);
      v272 = v445;
      v273 = v237;
      sub_1009698C4(v462, v445);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v274, v275, v276, v244);
      type metadata accessor for SelectedSearchResult();
      v277 = v446;
      sub_100003934();
      sub_10001B350(v278, v279, v280, v281);
      sub_10043DB64(v267, v272, v277, v410);
      sub_1000180EC(v277, &qword_100CA65C0);
      sub_1000180EC(v272, &qword_100CA65D0);
      sub_1000180EC(v267, &qword_100CA65C8);
      sub_10004EE30();
      sub_1000E03B0(v156, v282);
      sub_1000151EC();
      sub_1000E03B0(v273, v283);
      sub_10000E7B0();
      sub_10001B350(v284, v285, v286, v238);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v287, v288, v289, v121);
      sub_10001D374();
      v290 = v406;
      sub_1000BCD60();
      v291 = v411;
      sub_100051BBC();
      sub_100005404(v291);
      if (v204)
      {
        sub_1000180EC(v291, &qword_100CA65E8);
      }

      else
      {
        sub_1000110B0();
        sub_1000E03B0(v290, v374);
        sub_10001FDFC();
        sub_1000D3B10();
      }

      v375 = *(&v414 + 1);
      v376 = v414;
      v377 = v409;
      v378 = v407;
      sub_10001FDFC();
      sub_1000D3B10();
      v379 = *(v150 + 16);
      LODWORD(v469) = *(v150 + 24);
      sub_100051BBC();
      v380 = sub_10000C7F0();
      v381 = v472;
      sub_1000038B4(v380, v382, v472);
      v383 = v474;
      if (v204)
      {
        sub_100075398();
        sub_1000BCD60();
        v384 = sub_10000C7F0();
        v386 = sub_100024D10(v384, v385, v381);

        if (v386 != 1)
        {
          sub_1000180EC(v378, &qword_100CA6640);
        }
      }

      else
      {
        sub_100037EC4();
        sub_1000D3B10();
      }

      sub_1000325C0();
      sub_100051BBC();
      v387 = sub_1000162B0();
      sub_1000038B4(v387, v388, v473);
      if (v204)
      {
        sub_10002014C();
        sub_10000EF3C();
        sub_1000BCD60();
        sub_100003A40(v156);
        v389 = v413;
        if (!v204)
        {
          sub_1000180EC(v156, &qword_100CA6638);
        }
      }

      else
      {
        sub_100028E88();
        sub_1000D3B10();
        v389 = v413;
      }

      sub_100051BBC();
      sub_1000038B4(v377, 1, v383);
      if (v204)
      {
        sub_10002CC08();
        sub_1000BCD60();
        sub_1000038B4(v377, 1, v383);
        v390 = v471;
        if (!v204)
        {
          sub_1000180EC(v377, &qword_100CA6630);
        }
      }

      else
      {
        sub_100020D3C();
        sub_1000D3B10();
        v390 = v471;
      }

      sub_1000203EC();
      sub_100003A40(v389);
      if (v204)
      {
        sub_10000D01C();
        sub_1000BCD60();
        sub_100003A40(v389);
        if (!v204)
        {
          sub_1000180EC(v389, &qword_100CA6628);
        }
      }

      else
      {
        sub_100024C80();
        sub_1000D3B10();
      }

      sub_100051BBC();
      sub_1000038B4(v376, 1, v466);
      if (v204)
      {
        sub_10003CA68();
        sub_1000BCD60();
        sub_100005404(v376);
        v391 = v415;
        if (!v204)
        {
          sub_1000180EC(v376, &qword_100CA6620);
        }
      }

      else
      {
        sub_10001805C();
        sub_1000D3B10();
        v391 = v415;
      }

      sub_100051BBC();
      v392 = sub_10000C834();
      v393 = v467;
      sub_1000038B4(v392, v394, v467);
      if (v204)
      {
        sub_100069CC4();
        sub_1000BCD60();
        v395 = sub_10000C834();
        sub_1000038B4(v395, v396, v393);
        if (!v204)
        {
          sub_1000180EC(v375, &qword_100CA6618);
        }
      }

      else
      {
        sub_100013F6C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      v397 = sub_1000131C4();
      sub_1000038B4(v397, v398, v390);
      v475 = v379;
      if (v204)
      {
        sub_100017198();
        sub_1000BCD60();
        v399 = sub_1000131C4();
        sub_1000038B4(v399, v400, v390);
        if (!v204)
        {
          sub_1000180EC(v391, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000235F4();
        sub_1000D3B10();
      }

      sub_10001FDFC();
      sub_1000D3B10();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v366 = sub_1000217AC();
      v368 = v430;
      v369 = v431;
      v370 = v432;
      v371 = v433;
      v372 = v434;
      v373 = &v455;
LABEL_114:
      sub_10003E038(v366, v367, v368, v369, v370, v371, v372, *(v373 - 32), v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, *(&v414 + 1), v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429);
      v150 = v401;

LABEL_115:

      return v150;
    }

    sub_1000151EC();
    sub_1000E03B0(v237, v335);
    sub_100041C4C();
    v243 = v154;
    goto LABEL_20;
  }

  sub_1000180EC(v127, &qword_100CA65E0);
LABEL_21:

  return v150;
}

uint64_t sub_1009698C4@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v267 = a1;
  *&v272 = a2;
  v275 = type metadata accessor for DetailChartSelection();
  __chkstk_darwin(v275);
  v236 = &v224 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v274 = type metadata accessor for Location();
  *&v271 = *(v274 - 8);
  v3 = __chkstk_darwin(v274);
  v264 = &v224 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v265 = &v224 - v6;
  v7 = __chkstk_darwin(v5);
  v263 = &v224 - v8;
  __chkstk_darwin(v7);
  v262 = &v224 - v9;
  *&v273 = type metadata accessor for DetailCondition();
  v269 = *(v273 - 8);
  v10 = __chkstk_darwin(v273);
  v260 = &v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v261 = &v224 - v13;
  v14 = __chkstk_darwin(v12);
  v259 = &v224 - v15;
  __chkstk_darwin(v14);
  v258 = &v224 - v16;
  v17 = sub_10022C350(&qword_100CB0BA8);
  v18 = __chkstk_darwin(v17 - 8);
  v244 = &v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v247 = &v224 - v21;
  v22 = __chkstk_darwin(v20);
  v239 = &v224 - v23;
  v24 = __chkstk_darwin(v22);
  v242 = &v224 - v25;
  v26 = __chkstk_darwin(v24);
  v246 = &v224 - v27;
  v28 = __chkstk_darwin(v26);
  v238 = &v224 - v29;
  v30 = __chkstk_darwin(v28);
  v241 = &v224 - v31;
  v32 = __chkstk_darwin(v30);
  v245 = &v224 - v33;
  v34 = __chkstk_darwin(v32);
  v237 = &v224 - v35;
  v36 = __chkstk_darwin(v34);
  v240 = &v224 - v37;
  v38 = __chkstk_darwin(v36);
  v243 = &v224 - v39;
  __chkstk_darwin(v38);
  v254 = &v224 - v40;
  v41 = sub_10022C350(&unk_100CB2CF0);
  v42 = __chkstk_darwin(v41 - 8);
  v235 = &v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v257 = &v224 - v45;
  v46 = __chkstk_darwin(v44);
  v252 = &v224 - v47;
  v48 = __chkstk_darwin(v46);
  v234 = &v224 - v49;
  v50 = __chkstk_darwin(v48);
  v256 = &v224 - v51;
  v52 = __chkstk_darwin(v50);
  v251 = &v224 - v53;
  v54 = __chkstk_darwin(v52);
  v233 = &v224 - v55;
  v56 = __chkstk_darwin(v54);
  v255 = &v224 - v57;
  v58 = __chkstk_darwin(v56);
  v250 = &v224 - v59;
  v60 = __chkstk_darwin(v58);
  v232 = &v224 - v61;
  v62 = __chkstk_darwin(v60);
  v253 = &v224 - v63;
  __chkstk_darwin(v62);
  v249 = &v224 - v64;
  v65 = sub_10022C350(&qword_100CA65D8);
  v66 = __chkstk_darwin(v65 - 8);
  v231 = &v224 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v227 = &v224 - v69;
  v70 = __chkstk_darwin(v68);
  v230 = &v224 - v71;
  v72 = __chkstk_darwin(v70);
  v226 = &v224 - v73;
  v74 = __chkstk_darwin(v72);
  v229 = &v224 - v75;
  v76 = __chkstk_darwin(v74);
  v248 = &v224 - v77;
  v78 = __chkstk_darwin(v76);
  v228 = &v224 - v79;
  __chkstk_darwin(v78);
  v225 = &v224 - v80;
  v81 = sub_10022C350(&qword_100CE86C0);
  v82 = __chkstk_darwin(v81 - 8);
  v224 = &v224 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v82);
  v86 = &v224 - v85;
  v87 = __chkstk_darwin(v84);
  v89 = &v224 - v88;
  v90 = __chkstk_darwin(v87);
  v92 = &v224 - v91;
  v93 = __chkstk_darwin(v90);
  v95 = &v224 - v94;
  v96 = __chkstk_darwin(v93);
  v98 = &v224 - v97;
  v99 = __chkstk_darwin(v96);
  v101 = &v224 - v100;
  __chkstk_darwin(v99);
  v103 = &v224 - v102;
  v268 = type metadata accessor for Date();
  v266 = *(v268 - 8);
  __chkstk_darwin(v268);
  v105 = &v224 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ConditionDetailViewAction();
  __chkstk_darwin(v106);
  v108 = &v224 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCD60();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v149 = v269;
      v150 = v108;
      v151 = *(v269 + 32);
      v152 = v273;
      v151(v98, v150, v273);
      sub_10001B350(v98, 0, 1, v152);
      v153 = v274;
      sub_10001B350(v248, 1, 1, v274);
      v154 = v268;
      sub_10001B350(v250, 1, 1, v268);
      v155 = v275;
      sub_10001B350(v237, 1, 1, v275);
      sub_100051BBC();
      v156 = sub_100024D10(v95, 1, v152);
      v267 = v151;
      if (v156 == 1)
      {
        v157 = v270;
        (*(v149 + 16))(v259, v270, v152);
        v158 = sub_100024D10(v95, 1, v152);
        v159 = v229;
        if (v158 != 1)
        {
          sub_1000180EC(v95, &qword_100CE86C0);
        }
      }

      else
      {
        v151(v259, v95, v152);
        v157 = v270;
        v159 = v229;
      }

      sub_100051BBC();
      v198 = sub_100024D10(v159, 1, v153);
      v199 = v271;
      if (v198 == 1)
      {
        v200 = type metadata accessor for ConditionDetailViewState();
        (*(v199 + 16))(v263, v157 + *(v200 + 20), v153);
        v126 = sub_100024D10(v159, 1, v153) == 1;
        v201 = v159;
        v202 = v272;
        v203 = v233;
        if (!v126)
        {
          sub_1000180EC(v201, &qword_100CA65D8);
        }
      }

      else
      {
        (*(v271 + 32))(v263, v159, v153);
        v202 = v272;
        v203 = v233;
      }

      sub_100051BBC();
      if (sub_100024D10(v203, 1, v154) == 1)
      {
        type metadata accessor for ConditionDetailViewState();
        sub_100095588();
        if (sub_100024D10(v203, 1, v154) != 1)
        {
          sub_1000180EC(v203, &unk_100CB2CF0);
        }
      }

      else
      {
        v211 = v255;
        (*(v266 + 32))(v255, v203, v154);
        sub_10001B350(v211, 0, 1, v154);
      }

      v212 = type metadata accessor for ConditionDetailViewState();
      v213 = (v157 + v212[7]);
      v214 = *v213;
      v270 = v213[1];
      v272 = v214;
      v215 = *(v213 + 32);
      v216 = v241;
      sub_100051BBC();
      v217 = sub_100024D10(v216, 1, v155);
      v218 = v245;
      if (v217 == 1)
      {
        sub_100095588();
        if (sub_100024D10(v216, 1, v155) != 1)
        {
          sub_1000180EC(v216, &qword_100CB0BA8);
        }
      }

      else
      {
        sub_1000D3B10();
        sub_10001B350(v218, 0, 1, v155);
      }

      v221 = *(v157 + v212[9]);
      v267(v202, v259, v152);
      (*(v199 + 32))(v202 + v212[5], v263, v274);
      sub_100051BBC();
      v222 = v202 + v212[7];
      v223 = v270;
      *v222 = v272;
      *(v222 + 16) = v223;
      *(v222 + 32) = v215;
      result = sub_100051BBC();
      *(v202 + v212[9]) = v221;
      break;
    case 2u:
      sub_1000D3B10();
      v130 = v273;
      sub_10001B350(v92, 1, 1, v273);
      v131 = v274;
      sub_10001B350(v226, 1, 1, v274);
      sub_10001B350(v251, 1, 1, v268);
      v132 = v238;
      sub_1000D3B10();
      sub_10001B350(v132, 0, 1, v275);
      sub_100051BBC();
      if (sub_100024D10(v89, 1, v130) == 1)
      {
        v134 = v269;
        v133 = v270;
        (*(v269 + 16))(v261, v270, v130);
        v135 = sub_100024D10(v89, 1, v130);
        v136 = v234;
        v137 = v230;
        if (v135 != 1)
        {
          sub_1000180EC(v89, &qword_100CE86C0);
        }
      }

      else
      {
        v134 = v269;
        (*(v269 + 32))(v261, v89, v130);
        v133 = v270;
        v136 = v234;
        v137 = v230;
      }

      sub_100051BBC();
      v175 = sub_100024D10(v137, 1, v131);
      v176 = v271;
      if (v175 == 1)
      {
        v177 = type metadata accessor for ConditionDetailViewState();
        (*(v176 + 16))(v265, v133 + *(v177 + 20), v131);
        v126 = sub_100024D10(v137, 1, v131) == 1;
        v178 = v272;
        v179 = v137;
        v180 = v268;
        v181 = v242;
        if (!v126)
        {
          sub_1000180EC(v179, &qword_100CA65D8);
        }
      }

      else
      {
        (*(v271 + 32))(v265, v137, v131);
        v178 = v272;
        v180 = v268;
        v181 = v242;
      }

      sub_100051BBC();
      if (sub_100024D10(v136, 1, v180) == 1)
      {
        type metadata accessor for ConditionDetailViewState();
        sub_100095588();
        if (sub_100024D10(v136, 1, v180) != 1)
        {
          sub_1000180EC(v136, &unk_100CB2CF0);
        }
      }

      else
      {
        v182 = v136;
        v183 = v256;
        (*(v266 + 32))(v256, v182, v180);
        sub_10001B350(v183, 0, 1, v180);
      }

      v184 = type metadata accessor for ConditionDetailViewState();
      v185 = (v133 + v184[7]);
      v186 = *v185;
      v270 = v185[1];
      v272 = v186;
      LODWORD(v269) = *(v185 + 32);
      sub_100051BBC();
      v187 = v275;
      if (sub_100024D10(v181, 1, v275) == 1)
      {
        sub_100095588();
        if (sub_100024D10(v181, 1, v187) != 1)
        {
          sub_1000180EC(v181, &qword_100CB0BA8);
        }
      }

      else
      {
        v188 = v246;
        sub_1000D3B10();
        sub_10001B350(v188, 0, 1, v187);
      }

      v189 = *(v133 + v184[9]);
      (*(v134 + 32))(v178, v261, v130);
      (*(v176 + 32))(v178 + v184[5], v265, v131);
      sub_100051BBC();
      v190 = v178 + v184[7];
      v191 = v270;
      *v190 = v272;
      *(v190 + 16) = v191;
      *(v190 + 32) = v269;
      goto LABEL_69;
    case 3u:
      v138 = v270;
      v139 = v272;
      (*(v269 + 16))(v272, v270, v273);
      v140 = type metadata accessor for ConditionDetailViewState();
      (*(v271 + 16))(v139 + v140[5], v138 + v140[5], v274);
      sub_100095588();
      v141 = v140[8];
      v142 = (v138 + v140[7]);
      v143 = *(v142 + 32);
      v144 = *v142;
      v273 = v142[1];
      v274 = v144;
      result = sub_10001B350(v139 + v141, 1, 1, v275);
      v146 = *(v138 + v140[9]);
      v147 = v139 + v140[7];
      v148 = v273;
      *v147 = v274;
      *(v147 + 16) = v148;
      *(v147 + 32) = v143;
      *(v139 + v140[9]) = v146;
      break;
    case 4u:
      v119 = v273;
      sub_10001B350(v86, 1, 1, v273);
      v120 = v274;
      sub_10001B350(v227, 1, 1, v274);
      v121 = v268;
      sub_10001B350(v252, 1, 1, v268);
      v122 = v275;
      sub_10001B350(v239, 1, 1, v275);
      v123 = v224;
      sub_100051BBC();
      if (sub_100024D10(v123, 1, v119) == 1)
      {
        v125 = v269;
        v124 = v270;
        (*(v269 + 16))(v260, v270, v119);
        v126 = sub_100024D10(v123, 1, v119) == 1;
        v127 = v123;
        v128 = v235;
        v129 = v231;
        if (!v126)
        {
          sub_1000180EC(v127, &qword_100CE86C0);
        }
      }

      else
      {
        v125 = v269;
        (*(v269 + 32))(v260, v123, v119);
        v124 = v270;
        v128 = v235;
        v129 = v231;
      }

      sub_100051BBC();
      v160 = sub_100024D10(v129, 1, v120);
      v161 = v271;
      if (v160 == 1)
      {
        v162 = type metadata accessor for ConditionDetailViewState();
        (*(v161 + 16))(v264, v124 + *(v162 + 20), v120);
        v126 = sub_100024D10(v129, 1, v120) == 1;
        v163 = v129;
        v164 = v272;
        if (!v126)
        {
          sub_1000180EC(v163, &qword_100CA65D8);
        }
      }

      else
      {
        (*(v271 + 32))(v264, v129, v120);
        v164 = v272;
      }

      sub_100051BBC();
      if (sub_100024D10(v128, 1, v121) == 1)
      {
        type metadata accessor for ConditionDetailViewState();
        sub_100095588();
        if (sub_100024D10(v128, 1, v121) != 1)
        {
          sub_1000180EC(v128, &unk_100CB2CF0);
        }
      }

      else
      {
        v165 = v128;
        v166 = v257;
        (*(v266 + 32))(v257, v165, v121);
        sub_10001B350(v166, 0, 1, v121);
      }

      v167 = type metadata accessor for ConditionDetailViewState();
      v168 = (v124 + v167[7]);
      v169 = *v168;
      v270 = v168[1];
      v272 = v169;
      v170 = *(v168 + 32);
      v171 = v244;
      sub_100051BBC();
      if (sub_100024D10(v171, 1, v122) == 1)
      {
        sub_100095588();
        if (sub_100024D10(v171, 1, v122) != 1)
        {
          sub_1000180EC(v171, &qword_100CB0BA8);
        }
      }

      else
      {
        v172 = v247;
        sub_1000D3B10();
        sub_10001B350(v172, 0, 1, v122);
      }

      (*(v125 + 32))(v164, v260, v119);
      (*(v161 + 32))(v164 + v167[5], v264, v120);
      sub_100051BBC();
      v173 = v164 + v167[7];
      v174 = v270;
      *v173 = v272;
      *(v173 + 16) = v174;
      *(v173 + 32) = v170;
      result = sub_100051BBC();
      *(v164 + v167[9]) = 1;
      break;
    default:
      v110 = v266 + 32;
      v109 = *(v266 + 32);
      v111 = v268;
      v109(v105, v108, v268);
      v112 = v273;
      sub_10001B350(v103, 1, 1, v273);
      v113 = v274;
      sub_10001B350(v225, 1, 1, v274);
      v114 = v249;
      v266 = v110;
      v109(v249, v105, v111);
      sub_10001B350(v114, 0, 1, v111);
      sub_10001B350(v254, 1, 1, v275);
      sub_100051BBC();
      if (sub_100024D10(v101, 1, v112) == 1)
      {
        v116 = v269;
        v115 = v270;
        (*(v269 + 16))(v258, v270, v112);
        v117 = sub_100024D10(v101, 1, v112);
        v118 = v228;
        if (v117 != 1)
        {
          sub_1000180EC(v101, &qword_100CE86C0);
        }
      }

      else
      {
        v116 = v269;
        (*(v269 + 32))(v258, v101, v112);
        v115 = v270;
        v118 = v228;
      }

      sub_100051BBC();
      v192 = sub_100024D10(v118, 1, v113);
      v193 = v275;
      if (v192 == 1)
      {
        v194 = type metadata accessor for ConditionDetailViewState();
        v195 = v271;
        (*(v271 + 16))(v262, v115 + *(v194 + 20), v113);
        v196 = sub_100024D10(v118, 1, v113);
        v178 = v272;
        v197 = v232;
        if (v196 != 1)
        {
          sub_1000180EC(v118, &qword_100CA65D8);
        }
      }

      else
      {
        v195 = v271;
        (*(v271 + 32))(v262, v118, v113);
        v178 = v272;
        v197 = v232;
      }

      sub_100051BBC();
      if (sub_100024D10(v197, 1, v111) == 1)
      {
        type metadata accessor for ConditionDetailViewState();
        sub_100095588();
        if (sub_100024D10(v197, 1, v111) != 1)
        {
          sub_1000180EC(v197, &unk_100CB2CF0);
        }
      }

      else
      {
        v204 = v253;
        v109(v253, v197, v111);
        sub_10001B350(v204, 0, 1, v111);
      }

      v184 = type metadata accessor for ConditionDetailViewState();
      v205 = (v115 + v184[7]);
      v206 = *v205;
      v271 = v205[1];
      v272 = v206;
      v207 = *(v205 + 32);
      v208 = v240;
      sub_100051BBC();
      v209 = sub_100024D10(v208, 1, v193);
      v210 = v243;
      if (v209 == 1)
      {
        sub_100095588();
        if (sub_100024D10(v208, 1, v193) != 1)
        {
          sub_1000180EC(v208, &qword_100CB0BA8);
        }
      }

      else
      {
        sub_1000D3B10();
        sub_10001B350(v210, 0, 1, v193);
      }

      v189 = *(v115 + v184[9]);
      (*(v116 + 32))(v178, v258, v273);
      (*(v195 + 32))(v178 + v184[5], v262, v113);
      sub_100051BBC();
      v219 = v178 + v184[7];
      v220 = v271;
      *v219 = v272;
      *(v219 + 16) = v220;
      *(v219 + 32) = v207;
LABEL_69:
      result = sub_100051BBC();
      *(v178 + v184[9]) = v189;
      break;
  }

  return result;
}

unint64_t sub_10096B6C0()
{
  v0 = sub_1006BEA98();
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for MoonScrubberStorage();
    if (v2 <= 0x3F)
    {
      v0 = sub_10000C70C(319, &qword_100CE8748);
      if (v3 <= 0x3F)
      {
        v0 = type metadata accessor for ScrubberViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_100329AF4(319, &qword_100CAD690);
          v0 = v5;
          if (v6 <= 0x3F)
          {
            sub_10096B98C(319, &qword_100CE8750, &qword_100CA6188, &unk_100A53E20, &type metadata accessor for State);
            if (v8 > 0x3F)
            {
              return v7;
            }

            sub_10096B9F0(319, &qword_100CAD0D8, &type metadata accessor for Date, &type metadata accessor for State);
            if (v9 > 0x3F)
            {
              return v7;
            }

            sub_100329AF4(319, &qword_100CE8758);
            if (v10 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_100329AF4(319, &qword_100CA6D40);
              v0 = v11;
              if (v12 <= 0x3F)
              {
                sub_10096B98C(319, &qword_100CE8760, &qword_100CA6BC0, &unk_100A31BE0, &type metadata accessor for Binding);
                v0 = v13;
                if (v14 <= 0x3F)
                {
                  sub_10096B9F0(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                  v0 = v15;
                  if (v16 <= 0x3F)
                  {
                    sub_10096BA54();
                    v0 = v17;
                    if (v18 <= 0x3F)
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
      }
    }
  }

  return v0;
}

void sub_10096B98C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10096B9F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10096BA54()
{
  if (!qword_100CE8768)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE8768);
    }
  }
}

id sub_10096BAC8()
{
  result = sub_10096BAE8();
  qword_100CE86C8 = result;
  return result;
}

id sub_10096BAE8()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

id sub_10096BB74()
{
  result = sub_10096BB94();
  qword_100CE86D0 = result;
  return result;
}

id sub_10096BB94()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  static Date.uses24HourTime()();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

uint64_t sub_10096BC40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for ScrubberView(0);
  sub_1005C1F54(v1 + *(v13 + 80), v12, &qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_10096BE20@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for ScrubberView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10022C350(&qword_100CA6BC0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_10022C350(&qword_100CE87D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  *v11 = static Alignment.center.getter();
  *(v11 + 1) = v12;
  v13 = sub_10022C350(&qword_100CE87E0);
  sub_10096C104(v1, &v11[*(v13 + 44)]);
  *&v11[*(sub_10022C350(&qword_100CE87E8) + 36)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = &v11[*(v8 + 36)];
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *(v14 + 2) = v22;
  sub_10022C350(&qword_100CE86D8);
  Binding.wrappedValue.getter();
  sub_100974AF0(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScrubberView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_100974A94(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ScrubberView);
  sub_100974950();
  sub_1006BF6FC();
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v7, &qword_100CA6BC0);
  return sub_1000180EC(v11, &qword_100CE87D8);
}

uint64_t sub_10096C104@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v211 = a2;
  v207 = sub_10022C350(&qword_100CE8828);
  __chkstk_darwin(v207);
  v209 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v197 = (&v171 - v5);
  v208 = sub_10022C350(&qword_100CE8830);
  __chkstk_darwin(v208);
  v210 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v198 = (&v171 - v8);
  v205 = type metadata accessor for Date();
  v206 = *(v205 - 8);
  __chkstk_darwin(v205);
  v204 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_10022C350(&qword_100CCA228);
  v200 = *(v199 - 8);
  __chkstk_darwin(v199);
  v196 = &v171 - v10;
  v192 = type metadata accessor for KeyPress.Phases();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberView(0);
  v218 = *(v12 - 8);
  v221 = *(v218 + 64);
  v13 = (v12 - 8);
  __chkstk_darwin(v12 - 8);
  v223 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for AccessibilityTraits();
  *&v177 = *(v213 - 1);
  v178 = v213 - 8;
  v179 = v177;
  __chkstk_darwin(v213 - 8);
  v212 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_10022C350(&qword_100CE8838);
  v173 = *(v172 - 8);
  __chkstk_darwin(v172);
  v21 = &v171 - v20;
  v174 = sub_10022C350(&qword_100CE8840);
  __chkstk_darwin(v174);
  v171 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v219 = (&v171 - v24);
  __chkstk_darwin(v25);
  v175 = &v171 - v26;
  __chkstk_darwin(v27);
  v176 = &v171 - v28;
  __chkstk_darwin(v29);
  v181 = &v171 - v30;
  v182 = sub_10022C350(&qword_100CE8848);
  v183 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v171 - v31;
  v185 = sub_10022C350(&qword_100CE8850);
  v186 = *(v185 - 8);
  __chkstk_darwin(v185);
  v214 = &v171 - v32;
  v187 = sub_10022C350(&qword_100CE8858);
  __chkstk_darwin(v187);
  v184 = &v171 - v33;
  v193 = sub_10022C350(&qword_100CE8860);
  v194 = *(v193 - 8);
  __chkstk_darwin(v193);
  v189 = &v171 - v34;
  v195 = sub_10022C350(&qword_100CE8868);
  __chkstk_darwin(v195);
  v216 = &v171 - v35;
  v203 = sub_10022C350(&qword_100CE8870);
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v217 = &v171 - v38;
  v39 = static HorizontalAlignment.leading.getter();
  LOBYTE(v224) = 0;
  v40 = (a1 + v13[19]);
  v41 = *v40;
  v42 = v40[1];
  *&v229[0] = v41;
  *(&v229[0] + 1) = v42;
  v215 = sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v43 = v225;
  v44 = a1 + v13[20];
  v45 = *v44;
  v46 = *(v44 + 1);
  LOBYTE(v229[0]) = v45;
  *(&v229[0] + 1) = v46;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v220 = v13;
  v47 = v13[12];
  v48 = v13[13];
  v49 = a1;
  v222 = a1;
  v50 = *(a1 + v47);
  LOBYTE(a1) = v225;
  v51 = *(v49 + v48);
  v188 = *(v49 + v48 + 8);
  *&v229[0] = v51;
  *(&v229[0] + 1) = v188;

  State.wrappedValue.getter();
  v225 = v39;
  LOBYTE(v226) = LOBYTE(v224);
  *(&v226 + 1) = v43;
  LOBYTE(v227) = a1;
  *(&v227 + 1) = v50;
  *(&v228 + 1) = 0;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = sub_10022C350(&qword_100CE8878);
  v53 = sub_100006F64(&qword_100CE8880, &qword_100CE8878);
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v19, v16);
  v229[0] = v225;
  v229[1] = v226;
  v229[2] = v227;
  v229[3] = v228;
  sub_1000180EC(v229, &qword_100CE8878);
  LocalizedStringKey.init(stringLiteral:)();
  v54 = Text.init(_:tableName:bundle:comment:)();
  v56 = v55;
  v58 = v57;
  *&v225 = v52;
  *(&v225 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  v59 = v171;
  v60 = v172;
  View.accessibilityHint(_:)();
  sub_10010CD64(v54, v56, v58 & 1);

  (*(v173 + 8))(v21, v60);
  LocalizedStringKey.init(stringLiteral:)();
  v61 = Text.init(_:tableName:bundle:comment:)();
  v63 = v62;
  LOBYTE(v54) = v64;
  v65 = v174;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10010CD64(v61, v63, v54 & 1);

  sub_1000180EC(v59, &qword_100CE8840);
  sub_10022C350(&unk_100CE17E0);
  v66 = v179;
  v67 = swift_allocObject();
  v177 = xmmword_100A2C3F0;
  *(v67 + 16) = xmmword_100A2C3F0;
  static AccessibilityTraits.updatesFrequently.getter();
  *&v225 = v67;
  sub_100974B4C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
  sub_10022C350(&unk_100CE17F0);
  v178 = &protocol conformance descriptor for [A];
  sub_100006F64(&qword_100CB3370, &unk_100CE17F0);
  v68 = v212;
  v69 = v213;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v70 = v175;
  v71 = v219;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v66 + 8))(v68, v69);
  sub_1000180EC(v71, &qword_100CE8840);
  v72 = v222;
  v73 = sub_10096DC88();
  v75 = v74;
  LOBYTE(v54) = v76;
  v77 = v176;
  ModifiedContent<>.accessibilityValue(_:)();
  sub_10010CD64(v73, v75, v54 & 1);

  sub_1000180EC(v70, &qword_100CE8840);
  v213 = type metadata accessor for ScrubberView;
  v78 = v223;
  sub_100974AF0(v72, v223, type metadata accessor for ScrubberView);
  v212 = *(v218 + 80);
  v79 = (v212 + 16) & ~v212;
  v218 = v79;
  v80 = swift_allocObject();
  v219 = type metadata accessor for ScrubberView;
  sub_100974A94(v78, v80 + v79, type metadata accessor for ScrubberView);
  v81 = v181;
  ModifiedContent<>.accessibilityAdjustableAction(_:)();

  sub_1000180EC(v77, &qword_100CE8840);
  v82 = sub_100975FD0();
  v83 = v180;
  View.focusable(_:)();
  sub_1000180EC(v81, &qword_100CE8840);
  v84 = v72 + v220[23];
  v85 = *v84;
  v86 = *(v84 + 1);
  LOBYTE(v84) = v84[16];
  LOBYTE(v225) = v85;
  *(&v225 + 1) = v86;
  LOBYTE(v226) = v84;
  sub_10022C350(&qword_100CE8890);
  FocusState.projectedValue.getter();
  *&v225 = v65;
  *(&v225 + 1) = v82;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = v182;
  View.focused(_:)();

  (*(v183 + 8))(v83, v88);
  sub_10022C350(&qword_100CE8898);
  type metadata accessor for KeyEquivalent();
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_100A3B020;
  static KeyEquivalent.upArrow.getter();
  static KeyEquivalent.downArrow.getter();
  static KeyEquivalent.leftArrow.getter();
  static KeyEquivalent.rightArrow.getter();
  sub_10031B98C(v89);
  v90 = v223;
  v91 = v213;
  sub_100974AF0(v72, v223, v213);
  v92 = v218;
  v93 = swift_allocObject();
  v94 = v219;
  sub_100974A94(v90, v93 + v92, v219);
  v95 = v190;
  sub_10096EAC0();
  *&v225 = v88;
  *(&v225 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v96 = v184;
  v97 = v95;
  v98 = v185;
  v99 = v214;
  View.onKeyPress(keys:phases:action:)();

  (*(v191 + 8))(v97, v192);
  (*(v186 + 8))(v99, v98);
  v100 = v223;
  sub_100974AF0(v222, v223, v91);
  v101 = v218;
  v102 = swift_allocObject();
  sub_100974A94(v100, v102 + v101, v94);
  v103 = v96;
  v104 = &v96[*(sub_10022C350(&qword_100CE88A0) + 36)];
  *v104 = sub_10096EC40;
  *(v104 + 1) = 0;
  *(v104 + 2) = sub_100976168;
  *(v104 + 3) = v102;
  v96[*(sub_10022C350(&qword_100CE88A8) + 36)] = 0;
  sub_10022C350(&qword_100CE88B0);
  type metadata accessor for ContentShapeKinds();
  v105 = swift_allocObject();
  *(v105 + 16) = v177;
  static ContentShapeKinds.accessibility.getter();
  *&v225 = v105;
  v106 = v187;
  v107 = &v96[*(v187 + 36)];
  sub_10022C350(&qword_100CE88B8);
  sub_100974B4C(&qword_100CE88C0, &type metadata accessor for ContentShapeKinds);
  sub_10022C350(&qword_100CE88C8);
  sub_100006F64(&qword_100CE88D0, &qword_100CE88C8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v108 = v222;
  v109 = *v222;
  v110 = v220;
  v111 = (v222 + v220[17]);
  v112 = *v111;
  v113 = v111[1];
  *&v225 = v112;
  *(&v225 + 1) = v113;
  State.wrappedValue.getter();
  v114 = v224;
  v115 = (v108 + v110[16]);
  v116 = *v115;
  v117 = v115[1];
  *&v225 = v116;
  *(&v225 + 1) = v117;
  State.wrappedValue.getter();
  v118 = (v224 - v109) * 0.5;
  *v107 = v109;
  *(v107 + 1) = v114;
  *(v107 + 2) = v118;
  *(v107 + 3) = 0;
  v107[32] = 0;
  v119 = sub_1009761C4();
  v120 = v189;
  View.focusEffectDisabled(_:)();
  sub_1000180EC(v103, &qword_100CE8858);
  v121 = v196;
  v122 = v108;
  sub_10096F6CC(v196);
  static GestureMask.all.getter();
  *&v225 = v106;
  *(&v225 + 1) = v119;
  swift_getOpaqueTypeConformance2();
  sub_100006F64(&qword_100CCA260, &qword_100CCA228);
  v123 = v216;
  v124 = v121;
  v125 = v193;
  v126 = v199;
  View.gesture<A>(_:including:)();
  (*(v200 + 8))(v124, v126);
  (*(v194 + 8))(v120, v125);
  v127 = v122;
  v128 = v223;
  v129 = v213;
  sub_100974AF0(v122, v223, v213);
  v130 = v218;
  v131 = swift_allocObject();
  v132 = v219;
  sub_100974A94(v128, v131 + v130, v219);
  v133 = &v123[*(sub_10022C350(&qword_100CE88F8) + 36)];
  *v133 = sub_1009764A8;
  v133[1] = v131;
  v133[2] = 0;
  v133[3] = 0;
  *&v225 = v51;
  *(&v225 + 1) = v188;
  State.wrappedValue.getter();
  v134 = v224;
  sub_100974AF0(v127, v128, v129);
  v135 = swift_allocObject();
  sub_100974A94(v128, v135 + v130, v132);
  v136 = &v123[*(v195 + 36)];
  *v136 = v134;
  *(v136 + 1) = sub_1009764FC;
  *(v136 + 2) = v135;
  v136[3] = v134;
  sub_10022C350(&qword_100CAD050);
  v137 = v204;
  State.wrappedValue.getter();
  sub_100974AF0(v127, v128, v129);
  v138 = v217;
  v139 = swift_allocObject();
  sub_100974A94(v128, v139 + v130, v219);
  sub_1009765F8();
  sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date);
  v140 = v138;
  v141 = v137;
  v142 = v205;
  v143 = v216;
  View.onChange<A>(of:initial:_:)();

  (*(v206 + 8))(v141, v142);
  sub_1000180EC(v143, &qword_100CE8868);
  v144 = static HorizontalAlignment.center.getter();
  v145 = v198;
  *v198 = v144;
  v145[1] = 0;
  v146 = v145;
  *(v145 + 16) = 1;
  v147 = *(sub_10022C350(&qword_100CE8920) + 44);
  v148 = static Alignment.center.getter();
  v149 = v197;
  *v197 = v148;
  *(v149 + 8) = v150;
  v151 = sub_10022C350(&qword_100CE8928);
  sub_1009708E4(v222, v149 + *(v151 + 44));
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  v152 = v146 + v147;
  swift_beginAccess();
  v153 = sub_1008583AC();
  v154 = v149 + *(v207 + 36);
  *v154 = v153 * 0.5;
  *(v154 + 8) = 0;
  v155 = v209;
  sub_1005C1F54(v149, v209, &qword_100CE8828);
  sub_1005C1F54(v155, v152, &qword_100CE8828);
  v156 = v152 + *(sub_10022C350(&qword_100CE8930) + 48);
  *v156 = 0;
  *(v156 + 8) = 1;
  sub_1000180EC(v149, &qword_100CE8828);
  sub_1000180EC(v155, &qword_100CE8828);
  LOBYTE(v152) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v157 = v146 + *(v208 + 36);
  *v157 = v152;
  *(v157 + 8) = v158;
  *(v157 + 16) = v159;
  *(v157 + 24) = v160;
  *(v157 + 32) = v161;
  *(v157 + 40) = 0;
  v162 = v202;
  v163 = *(v202 + 16);
  v164 = v201;
  v165 = v203;
  v163(v201, v140, v203);
  v166 = v210;
  sub_1005C1F54(v146, v210, &qword_100CE8830);
  v167 = v211;
  v163(v211, v164, v165);
  v168 = sub_10022C350(&qword_100CE8938);
  sub_1005C1F54(v166, &v167[*(v168 + 48)], &qword_100CE8830);
  sub_1000180EC(v146, &qword_100CE8830);
  v169 = *(v162 + 8);
  v169(v217, v165);
  sub_1000180EC(v166, &qword_100CE8830);
  return (v169)(v164, v165);
}

uint64_t sub_10096DC88()
{
  v1 = type metadata accessor for AttributedString();
  __chkstk_darwin(v1 - 8);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for ScrubberView(0) + 44));
  v5 = *v4;
  v6 = v4[1];
  v8[2] = v5;
  v8[3] = v6;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  sub_100971544(v3, v8[1]);
  return Text.init(_:)();
}

uint64_t sub_10096DD80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a2;
  v74 = type metadata accessor for AccessibilityAdjustmentDirection();
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10022C350(&qword_100CE89A0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v63[-v6];
  v8 = type metadata accessor for KeyEquivalent();
  v77 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v63[-v12];
  v14 = type metadata accessor for LayoutDirection();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = a1;
  sub_10096BC40(v17);
  KeyPress.key.getter();
  v18 = *(v5 + 56);
  v73 = v15;
  v19 = *(v15 + 32);
  v20 = v7;
  v76 = v14;
  v21 = v14;
  v22 = v7;
  v23 = v77;
  v19(v20, v17, v21);
  (*(v23 + 32))(&v22[v18], v13, v8);
  static KeyEquivalent.upArrow.getter();
  sub_100974B4C(&qword_100CACD40, &type metadata accessor for KeyEquivalent);
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v23 + 8);
  v25 = v23 + 8;
  v24 = v26;
  v69 = v10;
  v26(v10, v8);
  if ((v5 & 1) == 0)
  {
    v66 = v24;
    v67 = v8;
    v68 = v18;
    v77 = v25;
    v30 = v73;
    v65 = *(v73 + 88);
    v31 = v65(v22, v76);
    v64 = enum case for LayoutDirection.leftToRight(_:);
    if (v31 == enum case for LayoutDirection.leftToRight(_:))
    {
      v32 = v69;
      static KeyEquivalent.rightArrow.getter();
      v33 = v67;
      v34 = v68;
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v66;
      v66(v32, v33);
    }

    else
    {
      v33 = v67;
      v34 = v68;
      v36 = v66;
      v32 = v69;
      if (v31 != enum case for LayoutDirection.rightToLeft(_:))
      {
        goto LABEL_9;
      }

      static KeyEquivalent.leftArrow.getter();
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36(v32, v33);
    }

    if (v35)
    {
      v36(&v22[v34], v33);
      (*(v30 + 8))(v22, v76);
      v37 = v70;
      v38 = v71;
      v39 = v74;
      (*(v70 + 104))(v71, enum case for AccessibilityAdjustmentDirection.increment(_:), v74);
      sub_10096E56C(v38, 12);
      (*(v37 + 8))(v38, v39);
      goto LABEL_17;
    }

LABEL_9:
    static KeyEquivalent.downArrow.getter();
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36(v32, v33);
    if (v40)
    {
      v41 = v70;
      v42 = v71;
      v43 = v74;
      (*(v70 + 104))(v71, enum case for AccessibilityAdjustmentDirection.decrement(_:), v74);
      sub_10096E56C(v42, 1);
      (*(v41 + 8))(v42, v43);
      v36(&v22[v34], v33);
      (*(v30 + 8))(v22, v76);
      goto LABEL_17;
    }

    v44 = v76;
    v45 = v65(v22, v76);
    if (v45 == v64)
    {
      v46 = v69;
      static KeyEquivalent.leftArrow.getter();
      v48 = v67;
      v47 = v68;
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = v76;
      v50 = v49;
      v51 = v66;
      v66(v46, v48);
      v52 = v74;
      if ((v50 & 1) == 0)
      {
LABEL_19:
        v61 = enum case for KeyPress.Result.ignored(_:);
        v62 = type metadata accessor for KeyPress.Result();
        (*(*(v62 - 8) + 104))(v75, v61, v62);
        v51(&v22[v47], v48);
        return (*(v30 + 8))(v22, v44);
      }
    }

    else
    {
      v52 = v74;
      v48 = v67;
      v47 = v68;
      v51 = v66;
      if (v45 != enum case for LayoutDirection.rightToLeft(_:))
      {
        goto LABEL_19;
      }

      v53 = v69;
      static KeyEquivalent.rightArrow.getter();
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = v76;
      v55 = v54;
      v51(v53, v48);
      if ((v55 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v51(&v22[v47], v48);
    (*(v30 + 8))(v22, v44);
    v56 = v70;
    v57 = v71;
    (*(v70 + 104))(v71, enum case for AccessibilityAdjustmentDirection.decrement(_:), v52);
    sub_10096E56C(v57, 12);
    (*(v56 + 8))(v57, v52);
    goto LABEL_17;
  }

  v27 = v70;
  v28 = v71;
  v29 = v74;
  (*(v70 + 104))(v71, enum case for AccessibilityAdjustmentDirection.increment(_:), v74);
  sub_10096E56C(v28, 1);
  (*(v27 + 8))(v28, v29);
  v24(&v22[v18], v8);
  (*(v73 + 8))(v22, v76);
LABEL_17:
  v58 = enum case for KeyPress.Result.handled(_:);
  v59 = type metadata accessor for KeyPress.Result();
  return (*(*(v59 - 8) + 104))(v75, v58, v59);
}

uint64_t sub_10096E56C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityNotification.Announcement();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityAdjustmentDirection();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CE89A8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = type metadata accessor for LayoutDirection();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10096BC40(v19);
  v20 = *(v13 + 56);
  v21 = v40;
  (*(v17 + 32))(v15, v19, v16);
  (*(v9 + 16))(&v15[v20], v21, v8);
  v22 = (*(v17 + 88))(v15, v16);
  if (v22 == enum case for LayoutDirection.leftToRight(_:))
  {
    v23 = (*(v9 + 88))(&v15[v20], v8);
    v24 = -1.0;
    if (v23 == enum case for AccessibilityAdjustmentDirection.increment(_:))
    {
      goto LABEL_9;
    }

    v25 = enum case for AccessibilityAdjustmentDirection.decrement(_:);
    v24 = 1.0;
    goto LABEL_7;
  }

  if (v22 != enum case for LayoutDirection.rightToLeft(_:))
  {
LABEL_8:
    (*(v9 + 8))(&v15[v20], v8);
    v24 = 0.0;
    goto LABEL_9;
  }

  v23 = (*(v9 + 88))(&v15[v20], v8);
  v24 = 1.0;
  if (v23 != enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    v25 = enum case for AccessibilityAdjustmentDirection.decrement(_:);
    v24 = -1.0;
LABEL_7:
    if (v23 != v25)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  (*(v17 + 8))(v15, v16);
  v26 = v24 * (*(v3 + 64) + *(v3 + 56)) * v41;
  v27 = (v3 + *(type metadata accessor for ScrubberView(0) + 44));
  v28 = *v27;
  v29 = v27[1];
  v47 = *v27;
  v48 = v29;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v30 = v46;
  v32 = sub_100971E08(v26 + v46);
  if (v33)
  {
    v34 = v31;
    (*(v9 + 104))(v11, enum case for AccessibilityAdjustmentDirection.increment(_:), v8);
    v35 = static AccessibilityAdjustmentDirection.== infix(_:_:)();
    (*(v9 + 8))(v11, v8);
    if (v35)
    {
      v32 = v34;
    }
  }

  v46 = sub_1009720F0(*&v32);
  v47 = v28;
  v48 = v29;
  State.wrappedValue.setter();
  v47 = v28;
  v48 = v29;
  State.wrappedValue.getter();
  sub_100972214(v30, v46);
  v47 = v28;
  v48 = v29;
  State.wrappedValue.getter();
  sub_10096FEB0(v46);
  v47 = v28;
  v48 = v29;
  State.wrappedValue.getter();
  sub_100971544(v43, v46);
  v36 = v42;
  AccessibilityNotification.Announcement.init(_:)();
  v37 = v45;
  _AccessibilityNotifications.post()();
  return (*(v44 + 8))(v36, v37);
}

uint64_t sub_10096EAC0()
{
  sub_10022C350(&qword_100CE8980);
  type metadata accessor for KeyPress.Phases();
  *(swift_allocObject() + 16) = xmmword_100A2D320;
  static KeyPress.Phases.down.getter();
  static KeyPress.Phases.repeat.getter();
  sub_100974B4C(&qword_100CE8988, &type metadata accessor for KeyPress.Phases);
  sub_10022C350(&qword_100CE8990);
  sub_100006F64(&qword_100CE8998, &qword_100CE8990);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10096EC40@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_10096ED4C(CGRect *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Height = CGRectGetHeight(*a1);
  v9 = type metadata accessor for ScrubberView(0);
  v10 = (a2 + v9[15]);
  v11 = *v10;
  v12 = v10[1];
  v28 = v11;
  v29 = v12;
  v26 = Height;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.setter();
  v13 = sub_10096EFAC(a2);
  v14 = (a2 + v9[14]);
  v16 = v14[1];
  v28 = *v14;
  v15 = v28;
  v29 = v16;
  v26 = v13;
  State.wrappedValue.setter();
  v28 = v15;
  v29 = v16;
  State.wrappedValue.getter();
  v17 = v26;
  sub_10022C350(&qword_100CAD050);
  State.wrappedValue.getter();
  sub_10097250C(v7);
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = sub_1008583AC();
  v21 = (a2 + v9[17]);
  v22 = *v21;
  v23 = *(v21 + 1);
  v25 = 0.0 - v17 * 0.5 + v19 + v20 * 0.5;
  v26 = v22;
  v27 = v23;
  State.wrappedValue.setter();
  sub_10096F00C();
  return sub_10096F1F8();
}

double sub_10096EFAC(uint64_t a1)
{
  v2 = *(*(a1 + *(type metadata accessor for ScrubberView(0) + 40) + 8) + 16);
  if (v2)
  {
    return *(a1 + 56) * (v2 - 1) + *(a1 + 64) * v2;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_10096F00C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD050);
  State.wrappedValue.getter();
  sub_10097250C(v4);
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = *(v0 + 64) + *(v0 + 56);
  v9 = v7 / v8;
  v10 = (v0 + *(v5 + 56));
  v12 = v10[1];
  *&v19 = *v10;
  v11 = v19;
  *(&v19 + 1) = v12;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v13 = v18[0] * 0.5 - v8 * floor(v9);
  *&v19 = v11;
  *(&v19 + 1) = v12;
  State.wrappedValue.getter();
  v14 = v18[0] * 0.5 - v8 * floor(v9 + 1.0);
  v15 = (v0 + *(v5 + 64));
  v16 = *(v15 + 2);
  v19 = *v15;
  v20 = v16;
  v18[0] = v13;
  v18[1] = v14;
  sub_10022C350(&qword_100CE8810);
  return State.wrappedValue.setter();
}

uint64_t sub_10096F1F8()
{
  v1 = type metadata accessor for Date();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(qword_100CA4F80);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for ScrubberView(0);
  v16 = (v0 + *(v15 + 44));
  v17 = *v16;
  v18 = v16[1];
  v34 = v17;
  v35 = v18;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  sub_100971B6C(v14, v33);
  sub_10022C350(&qword_100CAD050);
  v31 = v0;
  State.wrappedValue.getter();
  sub_10001B350(v11, 0, 1, v1);
  v19 = *(v4 + 56);
  sub_1005C1F54(v14, v6, &unk_100CB2CF0);
  sub_1005C1F54(v11, &v6[v19], &unk_100CB2CF0);
  if (sub_100024D10(v6, 1, v1) == 1)
  {
    sub_1000180EC(v11, &unk_100CB2CF0);
    sub_1000180EC(v14, &unk_100CB2CF0);
    if (sub_100024D10(&v6[v19], 1, v1) == 1)
    {
      sub_1000180EC(v6, &unk_100CB2CF0);
      v20 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1005C1F54(v6, v32, &unk_100CB2CF0);
  if (sub_100024D10(&v6[v19], 1, v1) == 1)
  {
    sub_1000180EC(v11, &unk_100CB2CF0);
    sub_1000180EC(v14, &unk_100CB2CF0);
    (*(v30 + 8))(v32, v1);
LABEL_6:
    sub_1000180EC(v6, qword_100CA4F80);
    v20 = 0;
    goto LABEL_8;
  }

  v21 = v29;
  v22 = v30;
  (*(v30 + 32))(v29, &v6[v19], v1);
  sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v22 + 8);
  v23(v21, v1);
  sub_1000180EC(v11, &unk_100CB2CF0);
  sub_1000180EC(v14, &unk_100CB2CF0);
  v23(v32, v1);
  sub_1000180EC(v6, &unk_100CB2CF0);
LABEL_8:
  v24 = (v31 + *(v15 + 72));
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v34) = *v24;
  v35 = v26;
  sub_10022C350(&qword_100CA5A80);
  result = State.wrappedValue.getter();
  if ((v20 & 1) != LOBYTE(v33))
  {
    LOBYTE(v34) = v25;
    v35 = v26;
    LOBYTE(v33) = v20 & 1;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10096F6CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for ScrubberView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v24[0] = v5;
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalCoordinateSpace();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = type metadata accessor for DragGesture();
  sub_1000037C4();
  v25 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_10022C350(&qword_100CCA220);
  sub_1000037C4();
  v26 = v14;
  v27 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = v24 - v17;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  sub_100974AF0(v2, v6, type metadata accessor for ScrubberView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_100974A94(v6, v20 + v19, type metadata accessor for ScrubberView);
  sub_100974B4C(&qword_100CCA238, &type metadata accessor for DragGesture);
  sub_100974B4C(&qword_100CCA240, &type metadata accessor for DragGesture.Value);
  Gesture<>.onChanged(_:)();

  (*(v25 + 8))(v13, v8);
  sub_100974AF0(v24[1], v6, type metadata accessor for ScrubberView);
  v21 = swift_allocObject();
  sub_100974A94(v6, v21 + v19, type metadata accessor for ScrubberView);
  sub_100006F64(&qword_100CCA248, &qword_100CCA220);
  v22 = v26;
  Gesture.onEnded(_:)();

  return (*(v27 + 8))(v18, v22);
}

uint64_t sub_10096FAA8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for ScrubberDateSelection();
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CE86D8);
  Binding.wrappedValue.getter();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1000180EC(v4, &qword_100CA6BC0);
    sub_10022C350(&qword_100CAD050);
    State.wrappedValue.getter();
  }

  else
  {
    sub_100974A94(v4, v10, type metadata accessor for ScrubberDateSelection);
    sub_100974AF0(v10, v7, type metadata accessor for ScrubberDateSelection);
    if (sub_100024D10(v7, 1, v11) == 1)
    {
      sub_10022C350(&qword_100CAD050);
      State.wrappedValue.getter();
      sub_100976B1C(v10, type metadata accessor for ScrubberDateSelection);
    }

    else
    {
      sub_100976B1C(v10, type metadata accessor for ScrubberDateSelection);
      (*(v12 + 32))(v14, v7, v11);
    }
  }

  sub_10096FE38(v14);
  v16 = (a1 + *(v15 + 44));
  v17 = *v16;
  v18 = v16[1];
  v23 = v17;
  v24 = v18;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  sub_10096FEB0(v26);
  sub_10096F1F8();
  v19 = (a1 + *(v15 + 84));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  LOBYTE(v23) = v20;
  v24 = v21;
  v25 = v19;
  LOBYTE(v26) = 1;
  sub_10022C350(&qword_100CE8890);
  FocusState.wrappedValue.setter();
  return (*(v12 + 8))(v14, v11);
}

void sub_10096FE38(uint64_t a1)
{
  sub_100972E60(a1);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for ScrubberView(0);
    sub_10022C350(&qword_100CAD708);
    State.wrappedValue.setter();
  }
}

void sub_10096FEB0(double a1)
{
  v3 = sub_10022C350(qword_100CA66A0);
  __chkstk_darwin(v3 - 8);
  v50 = &v42 - v4;
  v5 = sub_10022C350(qword_100CA4F80);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v52 = type metadata accessor for MoonDetailSelectedDate();
  __chkstk_darwin(v52);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v9 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = type metadata accessor for Date();
  v54 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v53 = &v42 - v24;
  v25 = *(v1 + 48);
  v26 = (v25 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_offset);
  if ((*(v25 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_offset + 8) & 1) != 0 || *v26 != a1)
  {
    v48 = v1;
    sub_100971B6C(v19, a1);
    if (sub_100024D10(v19, 1, v20) == 1)
    {
      sub_1000180EC(v19, &unk_100CB2CF0);
      return;
    }

    v47 = v26;
    v28 = v53;
    v27 = v54;
    v43 = *(v54 + 32);
    v44 = v54 + 32;
    v43(v53, v19, v20);
    v45 = *(v27 + 16);
    v46 = v27 + 16;
    v45(v16, v28, v20);
    v29 = 1;
    sub_10001B350(v16, 0, 1, v20);
    v30 = OBJC_IVAR____TtC7Weather19MoonScrubberStorage_selectedDate;
    swift_beginAccess();
    if (!sub_100024D10(v25 + v30, 1, v52))
    {
      v31 = v51;
      sub_100974AF0(v25 + v30, v51, type metadata accessor for MoonDetailSelectedDate);
      sub_10070B0DC(v13);
      sub_100976B1C(v31, type metadata accessor for MoonDetailSelectedDate);
      v29 = 0;
    }

    sub_10001B350(v13, v29, 1, v20);
    v32 = *(v5 + 48);
    sub_1005C1F54(v16, v7, &unk_100CB2CF0);
    sub_1005C1F54(v13, &v7[v32], &unk_100CB2CF0);
    if (sub_100024D10(v7, 1, v20) == 1)
    {
      sub_1000180EC(v13, &unk_100CB2CF0);
      sub_1000180EC(v16, &unk_100CB2CF0);
      if (sub_100024D10(&v7[v32], 1, v20) == 1)
      {
        sub_1000180EC(v7, &unk_100CB2CF0);
        (*(v54 + 8))(v53, v20);
        return;
      }

      goto LABEL_12;
    }

    v33 = v49;
    sub_1005C1F54(v7, v49, &unk_100CB2CF0);
    if (sub_100024D10(&v7[v32], 1, v20) == 1)
    {
      sub_1000180EC(v13, &unk_100CB2CF0);
      sub_1000180EC(v16, &unk_100CB2CF0);
      (*(v54 + 8))(v33, v20);
LABEL_12:
      sub_1000180EC(v7, qword_100CA4F80);
LABEL_13:
      v34 = v50;
      v35 = v53;
      v36 = v45;
      v45(v50, v53, v20);
      v37 = v52;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v34, 0, 1, v37);
      swift_beginAccess();
      sub_100976958(v34, v25 + v30);
      swift_endAccess();
      sub_1000161C0((v48 + 8), *(v48 + 32));
      v38 = v51;
      v36(v51, v35, v20);
      swift_storeEnumTagMultiPayload();
      v39 = sub_100971380();
      sub_100655714(v38, v39);
      sub_100976B1C(v38, type metadata accessor for MoonDetailSelectedDate);
      (*(v54 + 8))(v35, v20);
      v40 = v47;
      *v47 = a1;
      *(v40 + 8) = 0;
      return;
    }

    v43(v22, &v7[v32], v20);
    sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date);
    LODWORD(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
    v44 = v30;
    v41 = *(v54 + 8);
    v41(v22, v20);
    sub_1000180EC(v13, &unk_100CB2CF0);
    sub_1000180EC(v16, &unk_100CB2CF0);
    v30 = v44;
    v41(v33, v20);
    sub_1000180EC(v7, &unk_100CB2CF0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }

    v41(v53, v20);
  }
}

double sub_100970630(double a1)
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  if (vabdd_f64(a1, v3) < 5.0)
  {
    State.wrappedValue.getter();
    return v3;
  }

  return a1;
}

uint64_t sub_1009706E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberView(0);
  v9 = (a3 + *(v8 + 56));
  v10 = *v9;
  v11 = v9[1];
  v23 = v10;
  v24 = v11;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v12 = v21;
  sub_10022C350(&qword_100CAD050);
  State.wrappedValue.getter();
  sub_10097250C(v7);
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = sub_1008583AC();
  v16 = (a3 + *(v8 + 68));
  v17 = *v16;
  v18 = *(v16 + 1);
  v20 = 0.0 - v12 * 0.5 + v14 + v15 * 0.5;
  v21 = v17;
  v22 = v18;
  State.wrappedValue.setter();
  sub_10096F00C();
  return sub_10096F1F8();
}

uint64_t sub_1009708E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v2 = sub_10022C350(&qword_100CE8940);
  __chkstk_darwin(v2 - 8);
  v49 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v38 - v5;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CE8948);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_10022C350(&qword_100CE8950);
  __chkstk_darwin(v13 - 8);
  v47 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v45 = &v38 - v16;
  v43 = "bel for a scrubber view";
  Image.init(systemName:)();
  v17 = *(v7 + 104);
  v42 = enum case for Image.ResizingMode.stretch(_:);
  v41 = v17;
  v17(v9);
  v39 = Image.resizable(capInsets:resizingMode:)();

  v18 = *(v7 + 8);
  v44 = v6;
  v40 = v18;
  v18(v9, v6);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10085836C();
  sub_10085838C();
  sub_10085836C();
  sub_10085838C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v52[0]) = 1;
  *&v55[3] = *&v55[27];
  *&v55[11] = *&v55[35];
  *&v55[19] = *&v55[43];
  v19 = *(v10 + 36);
  v20 = enum case for BlendMode.destinationOut(_:);
  v21 = type metadata accessor for BlendMode();
  (*(*(v21 - 8) + 104))(&v12[v19], v20, v21);
  *v12 = v39;
  *(v12 + 1) = 0;
  *(v12 + 8) = 257;
  *(v12 + 18) = *v55;
  *(v12 + 34) = *&v55[8];
  *(v12 + 50) = *&v55[16];
  *(v12 + 8) = *&v55[23];
  sub_100976814();
  v22 = v45;
  View.accessibilityHidden(_:)();
  sub_1000180EC(v12, &qword_100CE8948);
  Image.init(systemName:)();
  v23 = v44;
  v41(v9, v42, v44);
  v24 = Image.resizable(capInsets:resizingMode:)();

  v40(v9, v23);
  sub_10085836C();
  sub_10085836C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = 1;
  *&v53[6] = *&v55[51];
  *&v53[22] = *&v55[59];
  *&v53[38] = *&v55[67];
  v25 = (v46 + *(type metadata accessor for ScrubberView(0) + 72));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v52[0]) = v26;
  v52[1] = v27;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (LOBYTE(v51[0]) == 1)
  {
    sub_10000C70C(0, &qword_100CB8BA0);
    static UIColor.macSafeSystemCyan.getter();
    v28 = Color.init(_:)();
  }

  else
  {
    v28 = static Color.white.getter();
  }

  v29 = v28;
  KeyPath = swift_getKeyPath();
  *(&v51[2] + 2) = *v53;
  v51[0] = v24;
  v51[1] = 0;
  LOWORD(v51[2]) = 257;
  *(&v51[4] + 2) = *&v53[16];
  *(&v51[6] + 2) = *&v53[32];
  v51[8] = *&v53[46];
  v51[9] = KeyPath;
  v51[10] = v29;
  sub_10022C350(&qword_100CE8960);
  sub_1009768A0();
  v31 = v48;
  View.accessibilityHidden(_:)();
  memcpy(v52, v51, sizeof(v52));
  sub_1000180EC(v52, &qword_100CE8960);
  v32 = v47;
  sub_1005C1F54(v22, v47, &qword_100CE8950);
  v33 = v22;
  v34 = v49;
  sub_1005C1F54(v31, v49, &qword_100CE8940);
  v35 = v50;
  sub_1005C1F54(v32, v50, &qword_100CE8950);
  v36 = sub_10022C350(&qword_100CE8970);
  sub_1005C1F54(v34, v35 + *(v36 + 48), &qword_100CE8940);
  sub_1000180EC(v31, &qword_100CE8940);
  sub_1000180EC(v33, &qword_100CE8950);
  sub_1000180EC(v34, &qword_100CE8940);
  return sub_1000180EC(v32, &qword_100CE8950);
}

uint64_t sub_100970FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = type metadata accessor for Date();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA6BC0);
  __chkstk_darwin(v7 - 8);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ScrubberDateSelection();
  __chkstk_darwin(v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v25 - v19;
  sub_1005C1F54(a2, v14, &qword_100CA6BC0);
  if (sub_100024D10(v14, 1, v15) == 1)
  {
    return sub_1000180EC(v14, &qword_100CA6BC0);
  }

  sub_100974A94(v14, v20, type metadata accessor for ScrubberDateSelection);
  sub_100974AF0(v20, v17, type metadata accessor for ScrubberDateSelection);
  if (sub_100024D10(v17, 1, v4) == 1)
  {
    type metadata accessor for ScrubberView(0);
    sub_10022C350(&qword_100CAD050);
    v22 = v28;
    State.wrappedValue.getter();
    v23 = v26;
  }

  else
  {
    v23 = v26;
    (*(v26 + 32))(v6, v17, v4);
    v22 = v28;
  }

  sub_10096FE38(v6);
  (*(v23 + 8))(v6, v4);
  sub_10001B350(v11, 1, 1, v15);
  type metadata accessor for ScrubberView(0);
  sub_1005C1F54(v11, v27, &qword_100CA6BC0);
  sub_10022C350(&qword_100CE86D8);
  Binding.wrappedValue.setter();
  sub_1000180EC(v11, &qword_100CA6BC0);
  sub_1000161C0((v22 + 8), *(v22 + 32));
  v24 = sub_100971380();
  sub_1006558B0(v24);
  sub_10096F1F8();
  return sub_100976B1C(v20, type metadata accessor for ScrubberDateSelection);
}

uint64_t sub_100971380()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD050);
  State.wrappedValue.getter();
  v7 = sub_100972E60(v5);
  v9 = v8;
  v11 = v10;
  (*(v3 + 8))(v5, v2, v7);
  if (v11)
  {
    return 2;
  }

  v13 = *v1 * 0.5;
  v14 = (v1 + *(v6 + 44));
  v15 = *v14;
  v16 = v14[1];
  v19 = *v14;
  v20 = v16;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  if (v13 + v9 < v18)
  {
    return 1;
  }

  v19 = v15;
  v20 = v16;
  State.wrappedValue.getter();
  return 2 * (v18 >= 0.0 - v13 + v9);
}

uint64_t sub_100971544@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v43 = a1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v41[2] = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v5);
  v41[1] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v11 - 8);
  v13 = v41 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  sub_100971B6C(v13, a2);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    type metadata accessor for ScrubberView(0);
    sub_10022C350(&qword_100CAD050);
    State.wrappedValue.getter();
    if (sub_100024D10(v13, 1, v14) != 1)
    {
      sub_1000180EC(v13, &unk_100CB2CF0);
    }
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
  }

  static WeatherClock.date.getter();
  Date.distance(to:)();
  v22 = v21;
  v42 = *(v15 + 8);
  v42(v17, v14);
  if (fabs(v22) >= 1800.0)
  {
    if (qword_100CA2B40 != -1)
    {
      swift_once();
    }

    v24 = qword_100CE86D0;
    type metadata accessor for ScrubberView(0);
    type metadata accessor for ScrubberViewModel(0);
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    [v24 setTimeZone:isa];

    if (qword_100CA2B38 != -1)
    {
      swift_once();
    }

    v26 = qword_100CE86C8;
    v27 = TimeZone._bridgeToObjectiveC()().super.isa;
    [v26 setTimeZone:v27];

    v28 = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v24 stringFromDate:v28];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v44 = v30;
    v45 = v32;
    v33._countAndFlagsBits = 8236;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    v34 = Date._bridgeToObjectiveC()().super.isa;
    v35 = [v26 stringFromDate:v34];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v23 = type metadata accessor for Locale();
    sub_10001B350(v9, 1, 1, v23);
    v44 = _swiftEmptyArrayStorage;
    sub_100974B4C(&qword_100CE89B0, &type metadata accessor for AttributedString.FormattingOptions);
    sub_10022C350(&qword_100CE89B8);
    sub_100006F64(&qword_100CE89C0, &qword_100CE89B8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
  }

  return (v42)(v20, v14);
}

uint64_t sub_100971B6C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for ScrubberHour(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScrubberView(0);
  v10 = (v2 + v9[16]);
  v11 = *(v10 + 2);
  v24 = *v10;
  v25 = v11;
  sub_10022C350(&qword_100CE8810);
  State.wrappedValue.getter();
  if (v23[0] > a2 && v23[1] < a2)
  {
    sub_10022C350(&qword_100CAD050);
    State.wrappedValue.getter();
    v22 = type metadata accessor for Date();
    v20 = a1;
    v21 = 0;
    return sub_10001B350(v20, v21, 1, v22);
  }

  v13 = (v2 + v9[14]);
  v14 = *v13;
  v15 = v13[1];
  *&v24 = v14;
  *(&v24 + 1) = v15;
  sub_10022C350(&qword_100CAD708);
  result = State.wrappedValue.getter();
  v17 = floor((v23[0] * 0.5 - a2) / (*(v2 + 64) + *(v2 + 56)));
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 < 9.22337204e18)
  {
    v18 = *(v2 + v9[10] + 8);
    if (*(v18 + 16) <= v17)
    {
      v22 = type metadata accessor for Date();
      v20 = a1;
      v21 = 1;
    }

    else
    {
      sub_100974AF0(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v8, type metadata accessor for ScrubberHour);
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 32))(a1, v8, v19);
      v20 = a1;
      v21 = 0;
      v22 = v19;
    }

    return sub_10001B350(v20, v21, 1, v22);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100971E08(double a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for ScrubberView(0) + 56));
  v8 = *v7;
  v9 = v7[1];
  v28 = *v7;
  v29 = v9;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v10 = v27 * 0.5 - a1;
  v11 = *(v1 + 64) + *(v1 + 56);
  v12 = v10 / v11;
  v13 = floor(v10 / v11);
  if (v12 == v13)
  {
    v28 = v8;
    v29 = v9;
    State.wrappedValue.getter();
    v14 = v27 * 0.5 - v11 * v12;
  }

  else
  {
    v15 = v11 * v13;
    v28 = v8;
    v29 = v9;
    State.wrappedValue.getter();
    v16 = v27 * 0.5 - v15;
    v28 = v8;
    v29 = v9;
    State.wrappedValue.getter();
    v17 = v27 * 0.5 - v11 * floor(v12 + 1.0);
    v14 = v16;
    sub_10022C350(&qword_100CAD050);
    State.wrappedValue.getter();
    v18 = sub_100972E60(v6);
    v20 = v19;
    v22 = v21;
    (*(v4 + 8))(v6, v3, v18);
    if ((v22 & 1) == 0)
    {
      v28 = v8;
      v29 = v9;
      State.wrappedValue.getter();
      v23 = v27 * 0.5 - v16;
      v28 = v8;
      v29 = v9;
      State.wrappedValue.getter();
      if (v23 < v27 * 0.5 - v20)
      {
        v28 = v8;
        v29 = v9;
        State.wrappedValue.getter();
        v24 = v27 * 0.5 - v20;
        v28 = v8;
        v29 = v9;
        State.wrappedValue.getter();
        if (v24 < v27 * 0.5 - v17)
        {
          v14 = v20;
        }
      }
    }
  }

  return *&v14;
}

double sub_1009720F0(double a1)
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v3 = *(v1 + 64);
  State.wrappedValue.getter();
  v4 = v6 * 0.5 - a1;
  if (v4 >= 0.0)
  {
    if (v6 - v3 < v4)
    {
      State.wrappedValue.getter();
      return v6 * 0.5 - (v6 - v3);
    }
  }

  else
  {
    State.wrappedValue.getter();
    return v6 * 0.5;
  }

  return a1;
}

uint64_t sub_100972214(double a1, double a2)
{
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Date();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v20 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  result = swift_unknownObjectRelease();
  if (v20)
  {
    sub_100971B6C(v10, a1);
    if (sub_100024D10(v10, 1, v11) == 1)
    {
      v22 = v10;
      return sub_1000180EC(v22, &unk_100CB2CF0);
    }

    v23 = *(v13 + 32);
    v23(v19, v10, v11);
    sub_100971B6C(v7, a2);
    if (sub_100024D10(v7, 1, v11) == 1)
    {
      (*(v13 + 8))(v19, v11);
      v22 = v7;
      return sub_1000180EC(v22, &unk_100CB2CF0);
    }

    v23(v16, v7, v11);
    v24 = 1.0;
    switch(sub_100972EEC(v19, v16, v2))
    {
      case 1u:
        v24 = 0.7;
        goto LABEL_10;
      case 2u:
        v24 = 0.3;
        goto LABEL_10;
      case 3u:
        goto LABEL_11;
      default:
LABEL_10:
        v25 = *(v2 + 72);
        [v25 prepare];
        [v25 impactOccurredWithIntensity:v24];
LABEL_11:
        v26 = *(v13 + 8);
        v26(v16, v11);
        result = (v26)(v19, v11);
        break;
    }
  }

  return result;
}

uint64_t sub_10097250C(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v69 - v6;
  v77 = sub_10022C350(&qword_100CE8818);
  __chkstk_darwin(v77);
  v69 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v69 - v9;
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  v13 = sub_10022C350(&qword_100CE8820);
  __chkstk_darwin(v13 - 8);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v69 - v16;
  v17 = sub_10022C350(&qword_100CBD410);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - v18;
  v20 = type metadata accessor for ScrubberHour(0);
  v81 = *(v20 - 8);
  __chkstk_darwin(v20);
  v79 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  __chkstk_darwin(v25);
  v27 = &v69 - v26;
  __chkstk_darwin(v28);
  v30 = &v69 - v29;
  v31 = *(type metadata accessor for ScrubberView(0) + 40);
  v78 = v1;
  v32 = *(v1 + v31 + 8);
  v76 = a1;
  v83 = a1;
  sub_1008DC6B4();
  v82 = v20;
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_1000180EC(v19, &qword_100CBD410);
    v33 = v81;
  }

  else
  {
    result = sub_100974A94(v19, v30, type metadata accessor for ScrubberHour);
    v35 = *(v32 + 16);
    v33 = v81;
    if (v35)
    {
      v36 = 0;
      v37 = v32 + ((v81[80] + 32) & ~v81[80]);
      while (v36 < *(v32 + 16))
      {
        sub_100974AF0(v37 + *(v33 + 72) * v36, v27, type metadata accessor for ScrubberHour);
        if (static Date.== infix(_:_:)())
        {
          v38 = v82;
          v39 = v12;
          v40 = v27[v82[5]];
          result = sub_100976B1C(v27, type metadata accessor for ScrubberHour);
          v41 = v40 == v30[v38[5]];
          v12 = v39;
          v33 = v81;
          if (v41)
          {
            return sub_100976B1C(v30, type metadata accessor for ScrubberHour);
          }
        }

        else
        {
          result = sub_100976B1C(v27, type metadata accessor for ScrubberHour);
        }

        if (v35 == ++v36)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_12:
    sub_100976B1C(v30, type metadata accessor for ScrubberHour);
  }

  v42 = v80;
  sub_100974598(v78, v76, v80);
  v43 = v75;
  sub_1005C1F54(v42, v75, &qword_100CE8820);
  if (sub_100024D10(v43, 1, v77) == 1)
  {
    sub_1000180EC(v42, &qword_100CE8820);
    v44 = v43;
    return sub_1000180EC(v44, &qword_100CE8820);
  }

  result = sub_100975F18(v43, v12);
  v45 = *(v32 + 16);
  if (!v45)
  {
LABEL_23:
    sub_1000180EC(v12, &qword_100CE8818);
    v44 = v80;
    return sub_1000180EC(v44, &qword_100CE8820);
  }

  v46 = 0;
  v47 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  while (v46 < *(v32 + 16))
  {
    v48 = *(v33 + 72);
    sub_100974AF0(v47 + v48 * v46, v24, type metadata accessor for ScrubberHour);
    if (static Date.== infix(_:_:)())
    {
      v49 = v82;
      v50 = v24[v82[5]];
      result = sub_100976B1C(v24, type metadata accessor for ScrubberHour);
      if (v50 == v12[v49[5]])
      {
        v51 = *(v32 + 16);
        if (!v51)
        {
          goto LABEL_23;
        }

        v52 = 0;
        v53 = &v12[*(v77 + 48)];
        v54 = v79;
        while (v52 < *(v32 + 16))
        {
          sub_100974AF0(v47, v54, type metadata accessor for ScrubberHour);
          if (static Date.== infix(_:_:)())
          {
            v55 = v82;
            v56 = *(v54 + v82[5]);
            result = sub_100976B1C(v54, type metadata accessor for ScrubberHour);
            if (v56 == v53[v55[5]])
            {
              v57 = v71;
              sub_1005C1F54(v12, v71, &qword_100CE8818);
              v58 = v77;
              v59 = *(v77 + 48);
              v60 = v72;
              v61 = v73;
              v62 = *(v73 + 16);
              v63 = v74;
              v62(v72, v57 + v59, v74);
              v82 = v62;
              sub_100976B1C(v57 + v59, type metadata accessor for ScrubberHour);
              v64 = v69;
              sub_1005C1F54(v12, v69, &qword_100CE8818);
              v81 = v12;
              v79 = *(v58 + 48);
              v65 = v70;
              v62(v70, v64, v63);
              sub_100976B1C(v64, type metadata accessor for ScrubberHour);
              Date.timeIntervalSince(_:)();
              v66 = *(v61 + 8);
              v66(v65, v63);
              v66(v60, v63);
              sub_100976B1C(v64 + v79, type metadata accessor for ScrubberHour);
              sub_100976B1C(v57, type metadata accessor for ScrubberHour);
              v67 = v81;
              sub_1005C1F54(v81, v57, &qword_100CE8818);
              v68 = *(v77 + 48);
              (v82)(v60, v57, v63);
              sub_100976B1C(v57, type metadata accessor for ScrubberHour);
              Date.timeIntervalSince(_:)();
              v66(v60, v63);
              sub_1000180EC(v67, &qword_100CE8818);
              sub_1000180EC(v80, &qword_100CE8820);
              return sub_100976B1C(v57 + v68, type metadata accessor for ScrubberHour);
            }
          }

          else
          {
            result = sub_100976B1C(v54, type metadata accessor for ScrubberHour);
          }

          ++v52;
          v47 += v48;
          if (v51 == v52)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      result = sub_100976B1C(v24, type metadata accessor for ScrubberHour);
    }

    if (v45 == ++v46)
    {
      goto LABEL_23;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

double sub_100972E60(uint64_t a1)
{
  sub_10097250C(a1);
  v2 = v1;
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  return v4 * 0.5 - v2;
}

uint64_t sub_100972EEC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return 3;
  }

  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD050);
  State.wrappedValue.getter();
  v11 = static Date.> infix(_:_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  if (v11)
  {
    State.wrappedValue.getter();
    sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date);
    v13 = dispatch thunk of static Comparable.< infix(_:_:)();
    v12(v9, v6);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  State.wrappedValue.getter();
  v14 = static Date.< infix(_:_:)();
  v12(v9, v6);
  if (v14)
  {
    State.wrappedValue.getter();
    sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date);
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    v12(v9, v6);
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1009731B0(a3, a1, a2))
  {
    return 1;
  }

  return 2;
}

BOOL sub_1009731B0(uint64_t a1, char *a2, char *a3)
{
  v6 = type metadata accessor for ScrubberDay(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ScrubberView(0);
  v17 = *(a1 + *(v16 + 40));
  v18 = *(v17 + 16);
  if (v18)
  {
    v26 = v15;
    v27 = a2;
    v28 = a3;
    v32 = _swiftEmptyArrayStorage;
    sub_1006A79AC();
    v19 = v32;
    v20 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    v30 = v10 + 32;
    v31 = v21;
    v22 = v29;
    do
    {
      sub_100974AF0(v20, v9, type metadata accessor for ScrubberDay);
      (*(v10 + 16))(v12, v9, v22);
      sub_100976B1C(v9, type metadata accessor for ScrubberDay);
      v32 = v19;
      v23 = v19[2];
      if (v23 >= v19[3] >> 1)
      {
        sub_1006A79AC();
        v19 = v32;
      }

      v19[2] = v23 + 1;
      v16 = (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v12, v22);
      v20 += v31;
      --v18;
    }

    while (v18);
    a2 = v27;
    a3 = v28;
    v15 = v26;
  }

  else
  {
    v22 = v29;
  }

  __chkstk_darwin(v16);
  *(&v26 - 2) = a2;
  *(&v26 - 1) = a3;
  sub_1008DC71C();

  v24 = sub_100024D10(v15, 1, v22) != 1;
  sub_1000180EC(v15, &unk_100CB2CF0);
  return v24;
}

BOOL sub_100973510()
{
  result = 1;
  if (static Date.> infix(_:_:)() & 1) == 0 || (type metadata accessor for Date(), sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date), (dispatch thunk of static Comparable.< infix(_:_:)()))
  {
    if ((static Date.< infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for Date();
    sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10097362C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  DragGesture.Value.translation.getter();
  v4 = v3;
  sub_10022C350(&qword_100CE8978);
  State.wrappedValue.getter();
  if (v12)
  {
    State.wrappedValue.getter();
    return State.wrappedValue.setter();
  }

  else
  {
    v6 = 0.0 - v4;
    v7 = sub_100973FB8(a2, v11, v6);
    sub_1009742A4(a2, v6);
    v8 = sub_1009720F0(v7);
    sub_1009737FC(0.5, v8);
    v10 = v9;
    State.wrappedValue.getter();
    if (v11 != v10)
    {
      State.wrappedValue.setter();
    }

    sub_10096F1F8();
    return sub_100972214(v11, v8);
  }
}

void sub_1009737FC(double a1, double a2)
{
  v2 = a2 / a1;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_100973850(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberView(0);
  v9 = v8 - 8;
  v44 = *(v8 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = (a2 + *(v9 + 52));
  v19 = *v18;
  v20 = v18[1];
  aBlock = v19;
  v52 = v20;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v21 = v57;
  v22 = sub_100973E6C();
  v23 = a2 + *(v9 + 56);
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  aBlock = v24;
  LOBYTE(v52) = v25;
  v53 = v26;
  sub_10022C350(&qword_100CE8978);
  result = State.wrappedValue.getter();
  if ((v58 & 1) == 0)
  {
    v28 = sub_100973FB8(a2, v57, v22);
    v29 = sub_1009742A4(a2, v22);
    *&v30 = COERCE_DOUBLE(sub_100971E08(v28));
    if (v32 & v29)
    {
      v33 = v31;
    }

    else
    {
      v33 = *&v30;
    }

    v34 = sub_1009720F0(v33);
    v35 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v35);
    *(&v43 - 2) = a2;
    *(&v43 - 1) = v34;
    withAnimation<A>(_:_:)();

    sub_10096F1F8();
    sub_10000C70C(0, &qword_100CB4670);
    v36 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v43 = *(v12 + 8);
    v43(v14, v50);
    sub_100974AF0(a2, &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScrubberView);
    v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_100974A94(v11, v39 + v37, type metadata accessor for ScrubberView);
    *(v39 + v38) = v21;
    *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v55 = sub_100976A88;
    v56 = v39;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1000742F0;
    v54 = &unk_100C77F10;
    v40 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100974B4C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
    v41 = v45;
    v42 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v40);

    (*(v48 + 8))(v41, v42);
    (*(v46 + 8))(v7, v47);
    return (v43)(v17, v50);
  }

  return result;
}

double sub_100973E6C()
{
  DragGesture.Value.predictedEndLocation.getter();
  v1 = v0;
  DragGesture.Value.location.getter();
  v3 = (v1 - v2) * 4.0;
  DragGesture.Value.location.getter();
  if (fabs(v3) <= 100.0)
  {
    DragGesture.Value.translation.getter();
  }

  else
  {
    DragGesture.Value.predictedEndTranslation.getter();
  }

  return 0.0 - v4;
}

uint64_t sub_100973ED8()
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.setter();
  sub_10022C350(&qword_100CE8978);
  return State.wrappedValue.setter();
}

double sub_100973FB8(uint64_t a1, double a2, double a3)
{
  v22 = type metadata accessor for EnvironmentValues();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA2D60);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for LayoutDirection();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScrubberView(0);
  sub_1005C1F54(a1 + *(v16 + 80), v11, &qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v22);
  }

  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == enum case for LayoutDirection.leftToRight(_:))
  {
    return a2 - a3;
  }

  if (v18 == enum case for LayoutDirection.rightToLeft(_:))
  {
    return a2 + a3;
  }

  v19 = a2 - a3;
  (*(v13 + 8))(v15, v12);
  return v19;
}

BOOL sub_1009742A4(uint64_t a1, double a2)
{
  v20 = type metadata accessor for EnvironmentValues();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA2D60);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for LayoutDirection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScrubberView(0);
  sub_1005C1F54(a1 + *(v14 + 80), v9, &qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v20);
  }

  v16 = (*(v11 + 88))(v13, v10);
  if (v16 == enum case for LayoutDirection.leftToRight(_:))
  {
    return a2 > 0.0;
  }

  if (v16 == enum case for LayoutDirection.rightToLeft(_:))
  {
    return a2 < 0.0;
  }

  v17 = a2 > 0.0;
  (*(v11 + 8))(v13, v10);
  return v17;
}