uint64_t sub_10077AF84()
{
  v1 = type metadata accessor for WeatherMetadata();
  v10 = *(v1 - 8);
  v11 = v1;
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v12 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CD6650);
  v13 = v0;
  MonthlyWeatherStatistics.months.getter();
  type metadata accessor for MonthTemperatureStatistics();
  sub_10077C574(&unk_100CD6848);
  sub_10077C574(&unk_100CD6850);
  v7 = v14;
  Array<A>.write(to:)();

  if (!v7)
  {
    v9 = v12;
    MonthlyWeatherStatistics.baselineStartDate.getter();
    Date.write(to:)();
    (*(v9 + 8))(v6, v4);
    MonthlyWeatherStatistics.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v10 + 8))(v3, v11);
  }

  return result;
}

uint64_t sub_10077B210()
{
  v1 = type metadata accessor for WeatherMetadata();
  v10 = *(v1 - 8);
  v11 = v1;
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v12 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB5468);
  v13 = v0;
  MonthlyWeatherStatistics.months.getter();
  type metadata accessor for MonthPrecipitationStatistics();
  sub_10077C574(&unk_100CD6838);
  sub_10077C574(&unk_100CD6840);
  v7 = v14;
  Array<A>.write(to:)();

  if (!v7)
  {
    v9 = v12;
    MonthlyWeatherStatistics.baselineStartDate.getter();
    Date.write(to:)();
    (*(v9 + 8))(v6, v4);
    MonthlyWeatherStatistics.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v10 + 8))(v3, v11);
  }

  return result;
}

uint64_t sub_10077B49C()
{
  v1 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2);
  type metadata accessor for MonthTemperatureStatistics();
  sub_10077C574(&unk_100CD6848);
  sub_10077C574(&unk_100CD6850);
  result = static Array<A>.read(from:)();
  if (!v0)
  {
    static Date.read(from:)();
    static WeatherMetadata.read(from:)();
    sub_10077C574(&qword_100CD6890);
    sub_10077C574(&qword_100CD6898);
    sub_10077C574(&qword_100CD68A0);
    return MonthlyWeatherStatistics.init(months:baselineStartDate:metadata:)();
  }

  return result;
}

uint64_t sub_10077B740()
{
  v1 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2);
  type metadata accessor for MonthPrecipitationStatistics();
  sub_10077C574(&unk_100CD6838);
  sub_10077C574(&unk_100CD6840);
  result = static Array<A>.read(from:)();
  if (!v0)
  {
    static Date.read(from:)();
    static WeatherMetadata.read(from:)();
    sub_10077C574(&qword_100CD6878);
    sub_10077C574(&qword_100CD6880);
    sub_10077C574(&qword_100CD6888);
    return MonthlyWeatherStatistics.init(months:baselineStartDate:metadata:)();
  }

  return result;
}

uint64_t sub_10077B9E4(uint64_t a1)
{
  v4 = sub_10022C350(&qword_100CA53F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  __chkstk_darwin(v11);
  v13 = v16 - v12;
  sub_10022C350(&qword_100CD6680);
  v17 = v1;
  Percentiles.p10.getter();
  v16[1] = a1;
  sub_100779504();
  v14 = *(v5 + 8);
  result = v14(v13, v4);
  if (!v2)
  {
    Percentiles.p50.getter();
    sub_100779504();
    v14(v10, v4);
    Percentiles.p90.getter();
    sub_100779504();
    return v14(v7, v4);
  }

  return result;
}

uint64_t sub_10077BC34()
{
  v1 = sub_10022C350(&qword_100CA53F8);
  __chkstk_darwin(v1);
  __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_10000C70C(0, &qword_100CA51B0);
    static NSUnitTemperature.read(from:)();
    Measurement.init(value:unit:)();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static NSUnitTemperature.read(from:)();
    Measurement.init(value:unit:)();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static NSUnitTemperature.read(from:)();
    Measurement.init(value:unit:)();
    return Percentiles.init(p10:p50:p90:)();
  }

  return result;
}

uint64_t sub_10077BEE0()
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    return sub_1007527F8();
  }

  return result;
}

void sub_10077BF3C()
{
  sub_100017580();
  v3 = type metadata accessor for VFXTestViewState();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100006168();
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100005384();
  v6 = sub_100027E24();
  sub_1000E82F4(v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100073AF4();
    sub_100187600(v0, v2);
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_1000E0F90();
      WeatherCondition.write(to:)();
    }

    sub_10078735C();
  }

  else
  {
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_1000E0F90();
      sub_100752B24();
    }
  }

  sub_100787148();
}

uint64_t sub_10077C0B0(uint64_t a1)
{
  result = UIInterfaceOrientation.write(to:)(a1, *v1);
  if (!v2)
  {
    v4 = sub_10000CDB0();
    UIUserInterfaceSizeClass.write(to:)(v4, v5);
    sub_10000CDB0();
    sub_1007822A0();
    sub_10000CDB0();
    sub_100783DE0();
    sub_10000CDB0();
    sub_100784630();
    type metadata accessor for DisplayMetrics();
    sub_10000CDB0();
    return DynamicTypeSize.write(to:)();
  }

  return result;
}

uint64_t sub_10077C158()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_100051AC0();
    if (v2)
    {
      type metadata accessor for ListViewState._Storage();
      sub_10000CDB0();
      return sub_1007525A8();
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v3);
      v4 = sub_100074D7C();
      sub_10002C964(v4, v5);
      sub_100006494();
      (*(v6 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_10077C238()
{
  sub_100032568();
  sub_1000E62AC();
  type metadata accessor for WeatherCondition();
  sub_100024A44();
  __chkstk_darwin(v2);
  sub_100049BF8();
  v3 = type metadata accessor for VFXTestViewState();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000520E4();
  sub_100786A40();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    if (v14 == 2)
    {
      sub_1007866F0();
      static WeatherCondition.read(from:)();
      v6 = sub_100020E44();
      v7(v6);
      sub_100073AF4();
      v8 = sub_10008650C();
      sub_100187600(v8, v9);
      type metadata accessor for ViewState.SecondaryViewState(0);
      sub_100003E0C();
    }

    else
    {
      if (v14 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v10);
        v11 = sub_1007863A0();
        sub_100787298(v11, v12);
        sub_10004E4B8();
        (*(v13 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_1007866F0();
      sub_1007529E8();
      *v0 = v5;
      type metadata accessor for ViewState.SecondaryViewState(0);
      sub_100003E0C();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  sub_100786F80();
  sub_10008835C();
}

void sub_10077C42C()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100006168();
  sub_1007865E4();
  v3 = static UIInterfaceOrientation.read(from:)();
  if (!v1)
  {
    v4 = v3;
    sub_1007865E4();
    v5 = static UIUserInterfaceSizeClass.read(from:)();
    sub_1007865E4();
    v6 = sub_1007824D8();
    sub_1007865E4();
    v7 = sub_100783E40();
    v12 = v7;
    sub_1007865E4();
    v8 = sub_1007846BC();
    v11 = v8;
    sub_1007865E4();
    static DynamicTypeSize.read(from:)(v9);
    *v0 = v4;
    *(v0 + 8) = v5;
    *(v0 + 16) = v6;
    *(v0 + 17) = v12 & 1;
    *(v0 + 18) = v11;
    type metadata accessor for DisplayMetrics();
    sub_10078660C();
    v10();
  }

  sub_1007865A4();
  sub_10000C8F4();
}

unint64_t sub_10077C574(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v3(255);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10077C5B4(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_10000C70C(255, v3);
    sub_1000201F8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10077C5F0(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_10022E824(&qword_100CA53F8);
    sub_10002CA80();
    sub_10077C5B4(v3);
    sub_10002CA80();
    sub_10077C5B4(v4);
    result = sub_1007875E4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10077C6AC(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_10022E824(&qword_100CACCC8);
    sub_10002CA80();
    sub_10077C5B4(v3);
    sub_10002CA80();
    sub_10077C5B4(v4);
    result = sub_1007875E4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10077C768()
{
  result = Location.write(to:)();
  if (!v1)
  {
    HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
    sub_1000326B4(v0 + *(HourPrecipitationDetailViewState + 20));
    sub_10022C350(&qword_100CB73A0);
    sub_100008E34();
    sub_1007863C0();
    sub_10077C574(v4);
    sub_100010A4C();
    sub_10077C574(v5);
    return sub_1001721CC();
  }

  return result;
}

uint64_t sub_10077C820()
{
  sub_1007863D8();
  result = Location.write(to:)();
  if (!v0)
  {
    type metadata accessor for SunriseSunsetDetailViewState();
    sub_10001325C();
    sub_1000326B4(v1 + v3);
    sub_10022C350(&qword_100CB73A0);
    sub_100008E34();
    sub_10077C574(v4);
    sub_100010A4C();
    sub_10077C574(v5);
    sub_100192570();
    Optional<A>.write(to:)();
    sub_10000CDB0();
    return sub_100784630();
  }

  return result;
}

uint64_t sub_10077C90C()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for NewsArticle();
    sub_10022C350(&qword_100CB3AB0);
    sub_1000D42A0();
    Optional<A>.write(to:)();
    sub_100013AD0();
    Date.write(to:)();
    sub_100013AD0();
    URL.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for NewsChannel();
    sub_1000D42A0();
    Optional<A>.write(to:)();
    sub_10000CDB0();
    Array<A>.write(to:)();
    sub_10000CDB0();
    Array<A>.write(to:)();
    type metadata accessor for UUID();
    sub_100031474();
    return Array<A>.write(to:)();
  }

  return result;
}

void sub_10077CAD4()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100006168();
  sub_1007865E4();
  static Location.read(from:)();
  if (!v0)
  {
    type metadata accessor for CGRect(0);
    sub_10078683C();
    sub_10077C574(v2);
    sub_100010A4C();
    sub_10077C574(v3);
    sub_100786C4C();
    sub_100787190();
    static Optional<A>.read(from:)();
    sub_100786BA8();
    sub_10078660C();
    v4();
    HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
    sub_100786CE8(*(HourPrecipitationDetailViewState + 20));
    *(v6 + 32) = v7;
  }

  sub_1007865A4();
  sub_10000C8F4();
}

void sub_10077CC2C()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v2);
  sub_100006168();
  sub_100786618();
  static Location.read(from:)();
  if (!v1)
  {
    type metadata accessor for CGRect(0);
    sub_10078683C();
    sub_10077C574(v3);
    sub_100010A4C();
    sub_10077C574(v4);
    sub_100786C4C();
    sub_100787190();
    static Optional<A>.read(from:)();
    sub_100786618();
    v5 = sub_1007846BC();
    v6 = sub_1000E14D4();
    v7(v6);
    v8 = type metadata accessor for SunriseSunsetDetailViewState();
    sub_100786CE8(*(v8 + 20));
    *(v9 + 32) = v11;
    *(v0 + *(v10 + 24)) = v5;
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void sub_10077CD9C()
{
  sub_10000E8AC();
  v8 = v7;
  v41 = v9;
  v10 = type metadata accessor for NewsChannel();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000106FC();
  v12 = type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v13);
  sub_1000317E4();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v14);
  sub_100005384();
  v15 = sub_10022C350(&qword_100CB3AB0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000305F4();
  __chkstk_darwin(v17);
  sub_100040F00();
  v42 = v8;
  v18 = static String.read(from:)();
  if (!v1)
  {
    v20 = v19;
    v38 = v5;
    v37 = v18;
    v40 = v0;
    v43 = v4;
    v21 = static String.read(from:)();
    v23 = v22;
    sub_100787054();
    static Optional<A>.read(from:)();
    static Date.read(from:)();
    static URL.read(from:)();
    v36 = v21;
    v35 = static String.read(from:)();
    v25 = v24;
    v33 = static String.read(from:)();
    v34 = v26;
    sub_10000810C();
    static Optional<A>.read(from:)();
    *v3 = v35;
    v3[1] = v25;
    v3[2] = v33;
    v3[3] = v34;
    sub_100786150(v38, v3 + *(v10 + 24), &qword_100CB3AB0);
    v39 = static Array<A>.read(from:)();
    static Array<A>.read(from:)();
    sub_100786DE4();
    type metadata accessor for UUID();
    sub_1007871CC();
    v27 = static Array<A>.read(from:)();
    *v41 = v37;
    v41[1] = v20;
    v41[2] = v36;
    v41[3] = v23;
    v28 = type metadata accessor for NewsArticle();
    sub_100786150(v43, v41 + v28[6], &qword_100CB3AB0);
    v29 = sub_1007871D8(v28[7]);
    v30(v29, v40, v2);
    v31 = sub_1007871D8(v28[8]);
    v32(v31, v6, v12);
    sub_100187600(v3, v41 + v28[9]);
    *(v41 + v28[10]) = v39;
    *(v41 + v28[11]) = v42;
    *(v41 + v28[12]) = v27;
  }

  sub_10000C8F4();
}

uint64_t sub_10077D39C()
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    return sub_100787344();
  }

  return result;
}

void sub_10077D408()
{
  sub_10000E8AC();
  v55 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v61 = v6;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v58 = v8;
  v59 = v7;
  __chkstk_darwin(v7);
  sub_1000520E4();
  v56 = type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v62 = v10;
  sub_1000038CC();
  v57 = type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_1000FD184(v12);
  v53 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v60 = v14;
  sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000317E4();
  v17 = type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_10001BA34();
  v54 = type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v21 = v20;
  v22 = sub_1000038CC();
  type metadata accessor for ModalViewState.LocationDetailModal(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000106FC();
  v24 = sub_1000167A4();
  sub_1000E82F4(v24, v1);
  sub_10000810C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v43 = sub_100786784();
      sub_100187600(v43, v3);
      sub_10003BED8();
      if (!v0)
      {
        Location.write(to:)();
        sub_100786DC0();
        sub_100783DE0();
        sub_1000288F4(v3 + *(v17 + 24));
        sub_10022C350(&qword_100CB73A0);
        sub_100008E34();
        sub_10077C574(v44);
        sub_100010A4C();
        sub_10077C574(v45);
        sub_100044E94();
      }

      goto LABEL_22;
    case 2u:
      v34 = sub_100786784();
      sub_100187600(v34, v4);
      sub_10003BED8();
      if (!v0)
      {
        Location.write(to:)();
        sub_1000288F4(v4 + *(HourPrecipitationDetailViewState + 20));
        sub_10022C350(&qword_100CB73A0);
        sub_100008E34();
        sub_10077C574(v35);
        sub_100010A4C();
        sub_10077C574(v36);
        sub_100044E94();
      }

      goto LABEL_22;
    case 3u:
      v37 = sub_100786784();
      sub_100187600(v37, v60);
      sub_10003BED8();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_1000288F4(v60 + *(v53 + 20));
        sub_10022C350(&qword_100CB73A0);
        sub_100008E34();
        sub_10077C574(v38);
        sub_100010A4C();
        sub_10077C574(v39);
        sub_100044E94();
        sub_100786DC0();
        sub_100784630();
      }

      goto LABEL_22;
    case 4u:
      v29 = sub_100786784();
      sub_100187600(v29, v63);
      sub_1007866A4();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_10022C350(qword_100CA66A0);
        sub_1000E6670();
        sub_10077C574(v30);
        sub_1000C8548();
        sub_10077C574(v31);
        sub_100786380();
        sub_10022C350(&unk_100CB2CF0);
        sub_100786DC0();
        Optional<A>.write(to:)();
        sub_1000288F4(v63 + *(v57 + 28));
        sub_10022C350(&qword_100CB73A0);
        sub_100008E34();
        sub_10077C574(v32);
        sub_100010A4C();
        sub_10077C574(v33);
        sub_100044E94();
        sub_100786DC0();
        sub_100784630();
      }

      goto LABEL_22;
    case 5u:
      v46 = sub_100786784();
      sub_100187600(v46, v62);
      sub_1007866A4();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_100783DE0();
        sub_10022C350(&qword_100CAB960);
        sub_1000E6478();
        sub_10077C574(v47);
        sub_100025304();
        sub_10077C574(v48);
        sub_100786380();
        sub_1000288F4(v62 + *(v56 + 28));
        sub_10022C350(&qword_100CB73A0);
        sub_100008E34();
        sub_10077C574(v49);
        sub_100010A4C();
        sub_10077C574(v50);
        sub_100044E94();
      }

      goto LABEL_22;
    case 6u:
      sub_100787118();
      v51 = sub_10000EB30();
      v52(v51);
      sub_1007866A4();
      if (!v0)
      {
        URL.write(to:)();
      }

      (*(v58 + 8))(v2, v59);
      goto LABEL_23;
    case 7u:
      v40 = sub_100786784();
      sub_100187600(v40, v61);
      sub_10003BED8();
      if (!v0)
      {
        sub_100163724();
        Location.write(to:)();
        sub_100786DC0();
        LocationOfInterest.write(to:)();
        sub_1000288F4(v61 + *(v55 + 24));
        sub_10022C350(&qword_100CB73A0);
        sub_100008E34();
        sub_10077C574(v41);
        sub_100010A4C();
        sub_10077C574(v42);
        sub_100044E94();
      }

      goto LABEL_22;
    default:
      v25 = sub_100786784();
      sub_100187600(v25, v21);
      sub_10003BED8();
      if (!v0)
      {
        sub_100163724();
        DetailCondition.write(to:)();
        sub_100786DC0();
        Location.write(to:)();
        sub_10022C350(&unk_100CB2CF0);
        sub_100786DC0();
        Optional<A>.write(to:)();
        sub_1000288F4(v21 + *(v54 + 28));
        sub_10022C350(&qword_100CB73A0);
        sub_100008E34();
        sub_10077C574(v26);
        sub_100010A4C();
        sub_10077C574(v27);
        sub_100044E94();
        sub_10022C350(&qword_100CB0BA8);
        sub_1000B91B0();
        sub_10077C574(v28);
        sub_100088014(&qword_100CD0088);
        sub_100786380();
        sub_100786DC0();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

LABEL_22:
      sub_1000E83A0();
LABEL_23:
      sub_1001333F8();
      sub_10000C8F4();
      return;
  }
}

uint64_t sub_10077DFAC()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    if (v3)
    {
      v2 = 256;
    }

    else
    {
      v2 = 0;
    }

    return v2 | v4;
  }

  return result;
}

void sub_10077E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = type metadata accessor for LocationOfInterest();
  v29 = sub_100003E5C(v28, &a17);
  v110 = v30;
  __chkstk_darwin(v29);
  sub_1000038E4();
  v117 = v31;
  sub_1000038CC();
  v108 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000038E4();
  sub_100003918(v33);
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v34);
  sub_1000038E4();
  sub_100786F74(v35);
  v36 = sub_10022C350(&qword_100CAB960);
  sub_100003810(v36);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v116 = v38;
  sub_1000038CC();
  v105 = type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000038E4();
  v115 = v40;
  sub_1000038CC();
  v41 = type metadata accessor for MoonDetailViewState();
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_1000038E4();
  sub_1000038CC();
  v106 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_1000038E4();
  v114 = v44;
  sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_1000038E4();
  sub_100003918(v46);
  type metadata accessor for Location();
  sub_1000037C4();
  v111 = v47;
  v112 = v48;
  __chkstk_darwin(v47);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100031DB0();
  __chkstk_darwin(v50);
  sub_1000886FC();
  __chkstk_darwin(v51);
  sub_100079578();
  __chkstk_darwin(v52);
  sub_10078631C();
  v53 = type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v54);
  sub_100005888();
  v55 = type metadata accessor for ConditionDetailViewState();
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100006168();
  sub_100786760();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v20)
  {
    v104 = v21;
    sub_100787154();
    switch(v66)
    {
      case 0:
        sub_100757638(v27, v57, v58, v59, v60, v61, v62, v63, v103, v21, SWORD2(v21), SBYTE6(v21), SHIBYTE(v21));
        sub_1007872B0(v22);
        goto LABEL_12;
      case 1:
        static Location.read(from:)();
        v75 = sub_100783E40();
        type metadata accessor for CGRect(0);
        sub_1000E1788();
        sub_10077C574(v76);
        sub_100010A4C();
        sub_10077C574(v77);
        sub_100786FCC();
        sub_100049C10();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v97 = sub_100037280();
        v98(v97);
        *(v104 + *(v53 + 20)) = v75 & 1;
        sub_100786D48(v104 + *(v53 + 24));
        *(v99 + 32) = v120;
        v100 = sub_100786790();
        sub_1007872B0(v100);
        goto LABEL_12;
      case 2:
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100786824();
        sub_10077C574(v68);
        sub_100010A4C();
        sub_10077C574(v69);
        sub_100786FCC();
        sub_1000215E0();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v84 = sub_1000D42A0();
        v85(v84);
        sub_100786D48(v109 + *(HourPrecipitationDetailViewState + 20));
        *(v86 + 32) = v120;
        sub_1007872B0(v109);
        goto LABEL_12;
      case 3:
        v70 = v65;
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100786824();
        sub_10077C574(v71);
        sub_100010A4C();
        sub_10077C574(v72);
        sub_100786FCC();
        sub_100786B24();
        static Optional<A>.read(from:)();
        v91 = sub_1007846BC();
        (*(v112 + 32))(v114, v70, v111);
        sub_100786CE8(*(v106 + 20));
        *(v92 + 32) = v120;
        *(v114 + *(v93 + 24)) = v91;
        sub_1007872B0(v114);
        goto LABEL_12;
      case 4:
        v67 = v64;
        sub_1007570D8();
        sub_1007872B0(v67);
        goto LABEL_12;
      case 5:
        sub_100787208();
        static Location.read(from:)();
        v87 = sub_100783E40();
        type metadata accessor for DetailHeroChartLollipopPosition(0);
        sub_10077C574(&qword_100CD0050);
        sub_100025304();
        sub_10077C574(v88);
        sub_1002E54F8();
        static Optional<A>.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100073C9C();
        sub_10077C574(v89);
        sub_100010A4C();
        sub_10077C574(v90);
        sub_100786FCC();
        sub_1002E54F8();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v101(v115, v23);
        *(v115 + v105[5]) = v87 & 1;
        sub_100786150(v116, v115 + v105[6], &qword_100CAB960);
        v102 = v115 + v105[7];
        *v102 = v118;
        *(v102 + 16) = v119;
        *(v102 + 32) = v120;
        sub_1007872B0(v115);
        goto LABEL_12;
      case 6:
        static URL.read(from:)();
        v78 = sub_1000046B4();
        v79(v78);
        goto LABEL_12;
      case 7:
        static Location.read(from:)();
        static LocationOfInterest.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100073C9C();
        sub_10077C574(v73);
        sub_100010A4C();
        sub_10077C574(v74);
        sub_100786FCC();
        sub_1000046B4();
        static Optional<A>.read(from:)();
        sub_1007875CC();
        v94 = sub_100011498();
        v95(v94);
        (*(v110 + 32))(v107 + *(v108 + 20), v117);
        v96 = v107 + *(v108 + 24);
        *v96 = v118;
        *(v96 + 16) = v119;
        *(v96 + 32) = v120;
        sub_1007872B0(v107);
LABEL_12:
        type metadata accessor for ModalViewState.LocationDetailModal(0);
        sub_100017BC0();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v80);
        v81 = sub_1007863A0();
        sub_100787280(v81, v82);
        sub_10004E4B8();
        (*(v83 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_10000C8F4();
}

void sub_10077EBA4()
{
  sub_100032568();
  sub_100786C5C();
  v5 = sub_10022C350(&qword_100CB3AB0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CF8();
  sub_1007867A8();
  static String.read(from:)();
  if (!v1)
  {
    sub_10078748C();
    sub_1007867A8();
    v7 = static String.read(from:)();
    v9 = v8;
    type metadata accessor for URL();
    sub_1007867A8();
    static Optional<A>.read(from:)();
    *v0 = v4;
    v0[1] = v3;
    v0[2] = v7;
    v0[3] = v9;
    v10 = type metadata accessor for NewsChannel();
    sub_100786150(v2, v0 + *(v10 + 24), &qword_100CB3AB0);
  }

  sub_100786E70();
  sub_10008835C();
}

uint64_t sub_10077ECBC()
{
  result = String.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for NewsChannel();
    sub_10022C350(&qword_100CB3AB0);
    sub_10000CDB0();
    return Optional<A>.write(to:)();
  }

  return result;
}

uint64_t sub_10077ED98()
{
  result = sub_1000526D4();
  if (!v0)
  {
    result = sub_100786BE4(result, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
    if (result >= 7)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v9);
      v10 = sub_100074D7C();
      sub_10002C964(v10, v11);
      sub_100006494();
      (*(v12 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10077EF90()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_100051AC0();
    if (v3)
    {
      return 0;
    }

    else if (v2 == 3)
    {
      return 0;
    }

    else if (v2 == 2)
    {
      sub_10000CDB0();
      return static String.read(from:)();
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v4);
      v5 = sub_100074D7C();
      sub_10002C964(v5, v6);
      sub_100006494();
      (*(v7 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10077F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100787430();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  if (a3 == 1)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  result = sub_100787344();
  if (!v3)
  {
    sub_1000E14D4();
    return String.write(to:)();
  }

  return result;
}

void sub_10077F140()
{
  sub_1000D3C1C();
  sub_100786C5C();
  v3 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CF8();
  sub_1007867A8();
  v5 = sub_10077ED98();
  if (!v1)
  {
    v6 = v5;
    sub_1007867A8();
    v7 = sub_10077EF90();
    v9 = v8;
    type metadata accessor for Date();
    sub_1007867A8();
    static Optional<A>.read(from:)();
    *v0 = v6;
    *(v0 + 8) = v7;
    *(v0 + 16) = v9;
    v10 = type metadata accessor for ContentStatusBanner();
    sub_100786150(v2, v0 + *(v10 + 24), &unk_100CB2CF0);
  }

  sub_100786E70();
  sub_100088758();
}

uint64_t sub_10077F248()
{
  result = sub_10077EE70();
  if (!v0)
  {
    v2 = sub_10000CDB0();
    sub_10077F090(v2, v3, v4);
    type metadata accessor for ContentStatusBanner();
    sub_10022C350(&unk_100CB2CF0);
    sub_10000CDB0();
    return Optional<A>.write(to:)();
  }

  return result;
}

void sub_10077F2DC()
{
  sub_100786DFC();
  v26 = v2;
  v3 = type metadata accessor for SearchLocation();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100049BF8();
  type metadata accessor for LocationOfInterest();
  sub_10000FB48();
  __chkstk_darwin(v5);
  sub_10001BA34();
  v6 = type metadata accessor for Location();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v10);
  sub_10078631C();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_100787154();
    switch(v11)
    {
      case 0:
        static Location.read(from:)();
        v12 = sub_100003B2C();
        v13(v12);
        type metadata accessor for PreviewLocation();
        sub_1000201F8();
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        static Location.read(from:)();
        (*(v8 + 32))(v26, v1, v6);
        type metadata accessor for PreviewLocation();
        sub_100003E0C();
        goto LABEL_9;
      case 2:
        static LocationOfInterest.read(from:)();
        v18 = sub_100786E7C();
        v19(v18);
        type metadata accessor for PreviewLocation();
        sub_100003E0C();
        goto LABEL_9;
      case 3:
        static SearchLocation.read(from:)();
        v20 = sub_100037280();
        sub_100187600(v20, v21);
        type metadata accessor for PreviewLocation();
        sub_100003E0C();
LABEL_9:
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        static CLLocationCoordinate2D.read(from:)();
        v15 = v14;
        v17 = v16;
        static Optional<A>.read(from:)();
        sub_100786760();
        static FixedSizeTypeBinaryCodable.read(from:)();
        *v26 = v15;
        *(v26 + 8) = v17;
        *(v26 + 16) = v27;
        *(v26 + 24) = v28;
        *(v26 + 32) = v27;
        type metadata accessor for PreviewLocation();
        sub_1000201F8();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v22);
        v23 = sub_1007863A0();
        sub_100787280(v23, v24);
        sub_10004E4B8();
        (*(v25 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_100786E18();
}

void sub_10077F6B8()
{
  sub_100786DFC();
  type metadata accessor for SearchLocation();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_1000FD184(v5);
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  __chkstk_darwin(v6);
  sub_10001BA34();
  v7 = type metadata accessor for Location();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v11);
  sub_10078631C();
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000106FC();
  v13 = sub_1000167A4();
  sub_1000E82F4(v13, v2);
  sub_10000810C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10007956C();
      v26 = sub_100787480();
      v27(v26);
      sub_1007866A4();
      if (!v1)
      {
        Location.write(to:)();
      }

      v16 = *(v9 + 8);
      v17 = v3;
      goto LABEL_21;
    case 2u:
      sub_10007956C();
      v18 = sub_1002E58CC();
      v19(v18);
      sub_1007866A4();
      if (!v1)
      {
        sub_100787244();
        LocationOfInterest.write(to:)();
      }

      v17 = sub_100017B70();
      goto LABEL_22;
    case 3u:
      v21 = sub_100786784();
      sub_100187600(v21, v28);
      sub_100787664();
      if (!v1)
      {
        sub_100787214();
        String.write(to:)();
        sub_100787214();
        String.write(to:)();
        sub_100787214();
        String.write(to:)();
        sub_10022C350(&qword_100CA65D8);
        sub_1000C8DAC();
        sub_10077C574(v22);
        sub_100019EA4();
        sub_10077C574(v23);
        sub_100037280();
        Optional<A>.write(to:)();
        sub_10022C350(&qword_100CD6698);
        sub_100786A28();
        sub_10077C574(v24);
        sub_100171218();
        sub_10077C574(v25);
        sub_100037280();
        Optional<A>.write(to:)();
      }

      sub_1000E83A0();
      goto LABEL_23;
    case 4u:
      sub_100787664();
      if (v1)
      {
      }

      else
      {
        CLLocationCoordinate2D.write(to:)();
        sub_10022C350(&qword_100CA6078);
        sub_100787214();
        Optional<A>.write(to:)();

        sub_100787214();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

      goto LABEL_23;
    default:
      sub_10007956C();
      v14 = sub_10003C620();
      v15(v14);
      sub_10003BED8();
      if (!v1)
      {
        sub_100786B18();
        Location.write(to:)();
      }

      v16 = *(v9 + 8);
      v17 = v0;
LABEL_21:
      v20 = v7;
LABEL_22:
      v16(v17, v20);
LABEL_23:
      sub_100786E18();
      return;
  }
}

void sub_10077FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  sub_10000C76C();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v14);
  sub_1000088C0();
  __chkstk_darwin(v15);
  sub_10002137C();
  __chkstk_darwin(v16);
  sub_1000B9E20();
  sub_100786A40();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    if (a13 == 3 || a13 == 2 || a13 == 1)
    {
      sub_1007867A8();
      static Date.read(from:)();
      v17 = sub_10003C620();
      v18(v17);
      type metadata accessor for MoonDetailSelectedDate();
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v19);
      v20 = sub_1007863A0();
      sub_100787280(v20, v21);
      sub_10004E4B8();
      (*(v22 + 104))();
      swift_willThrow();
    }
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void sub_10077FDF8()
{
  sub_10000E8AC();
  sub_1002E5718();
  type metadata accessor for Date();
  sub_10000548C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100030084();
  __chkstk_darwin(v9);
  sub_100079578();
  __chkstk_darwin(v10);
  sub_10004E424();
  type metadata accessor for MoonDetailSelectedDate();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_10001BA34();
  v12 = sub_1000167A4();
  sub_1000E82F4(v12, v5);
  sub_1002E54F8();
  swift_getEnumCaseMultiPayload();
  sub_10007956C();
  if (v13)
  {
    if (v13 != 1)
    {
      sub_100786FD8();
      v17();
      sub_1000BCE14();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_1000E6768();
        Date.write(to:)();
      }

      goto LABEL_11;
    }

    sub_100786FD8();
    v14();
    sub_1000C8FEC();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      Date.write(to:)();
      v2 = v3;
LABEL_11:
      (*(v7 + 8))(v2, v0);
      goto LABEL_12;
    }

    (*(v7 + 8))(v3, v0);
  }

  else
  {
    v15 = sub_10000CDBC();
    v16(v15);
    sub_10001635C();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      Date.write(to:)();
      v2 = v4;
      goto LABEL_11;
    }

    (*(v7 + 8))(v4, v0);
  }

LABEL_12:
  sub_100041B68();
  sub_10000C8F4();
}

void sub_100780068()
{
  sub_100032568();
  static String.read(from:)();
  if (!v0)
  {
    type metadata accessor for LocationWeatherDataState(0);
    sub_1000E5A48();
    sub_10077C574(v1);
    sub_1000D42FC();
    sub_10077C574(v2);
    static Dictionary<>.read(from:)();
    v3 = sub_100786DE4();
    type metadata accessor for LocationAvailableDataSetState(v3);
    sub_10077C574(&unk_100CD66D0);
    sub_1000715CC();
    sub_10077C574(v4);
    sub_10078776C();
  }

  sub_100031474();
  sub_100786B0C();
  sub_10008835C();
}

uint64_t sub_1007801F0()
{
  result = String.write(to:)();
  if (!v0)
  {
    type metadata accessor for LocationWeatherDataState(0);
    sub_1000E5A48();
    sub_10077C574(v2);
    sub_1000D42FC();
    sub_10077C574(v3);
    sub_100025214();
    sub_10078773C();
    type metadata accessor for LocationAvailableDataSetState(0);
    sub_10077C574(&unk_100CD66D0);
    sub_1000715CC();
    sub_10077C574(v4);
    sub_100031474();
    return Dictionary<>.write(to:)();
  }

  return result;
}

void sub_100780364()
{
  sub_100032568();
  sub_100192434();
  v4 = type metadata accessor for PreprocessedWeatherData();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100006168();
  v6 = type metadata accessor for WeatherData(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100049BF8();
  v8 = type metadata accessor for NewsDataModel();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100020E28();
  __chkstk_darwin(v10);
  sub_10003C300();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_100787154();
    switch(v11)
    {
      case 0:
        type metadata accessor for LocationWeatherDataState(0);
        sub_100017BC0();
        goto LABEL_9;
      case 1:
        v24 = sub_1000236E0();
        sub_100769530(v24, v25, v26, v27, v28, v29, v30, v31, v44, v45, SWORD2(v45), SBYTE6(v45), SHIBYTE(v45));
        sub_100086604();
        v32 = sub_1002E52D0();
        sub_100187600(v32, v33);
        type metadata accessor for LocationWeatherDataState(0);
        sub_1007864F4();
        goto LABEL_9;
      case 2:
        sub_1000236E0();
        sub_100882D6C();
        sub_1000236E0();
        sub_10067F898();
        v12 = sub_1000236E0();
        sub_100769530(v12, v13, v14, v15, v16, v17, v18, v19, v44, v45, SWORD2(v45), SBYTE6(v45), SHIBYTE(v45));
        v39 = sub_10022C350(&qword_100CA75D8);
        v40 = *(v39 + 48);
        v41 = *(v39 + 64);
        sub_1007869E0();
        v42 = sub_100008408();
        sub_100187600(v42, v43);
        sub_1000B9E6C();
        sub_100187600(v2, v1 + v40);
        sub_100086604();
        sub_100187600(v3, v1 + v41);
        type metadata accessor for LocationWeatherDataState(0);
        sub_1007864E4();
        goto LABEL_9;
      case 3:
        sub_1000236E0();
        v20 = static String.read(from:)();
        v22 = v21;
        sub_1000236E0();
        v23 = sub_100784E4C();
        *v1 = v20;
        v1[1] = v22;
        v1[2] = v23;
        v1[3] = v38;
        type metadata accessor for LocationWeatherDataState(0);
        sub_100017BC0();
LABEL_9:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v34);
        v35 = sub_100074D7C();
        sub_10002C964(v35, v36);
        sub_100006494();
        (*(v37 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_1002E5564();
  sub_10008835C();
}

void sub_100780648()
{
  sub_10000E8AC();
  sub_100786DE4();
  v3 = type metadata accessor for PreprocessedWeatherData();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000038E4();
  v6 = v5;
  v7 = sub_1000038CC();
  type metadata accessor for WeatherData(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100006168();
  v9 = type metadata accessor for NewsDataModel();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000088C0();
  __chkstk_darwin(v11);
  sub_10003C300();
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000317E4();
  v13 = sub_1000167A4();
  sub_1000E82F4(v13, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = sub_10022C350(&qword_100CA75D8);
      v20 = *(v19 + 48);
      v21 = *(v19 + 64);
      sub_1007869E0();
      v22 = sub_100049C10();
      sub_100187600(v22, v23);
      sub_1000B9E6C();
      sub_100187600(v2 + v20, v6);
      sub_100086604();
      sub_100187600(v2 + v21, v1);
      sub_1007877B4();
      if (!v0)
      {
        sub_1007865E4();
        String.write(to:)();
        v24 = sub_1007865E4();
        WeatherDataModel.write(to:)(v24);
        sub_1007865E4();
        sub_100785D30();
        sub_1007865E4();
        sub_1007857C8();
        sub_100031268();
        sub_10067F2CC();
        sub_100786EE4();
        sub_100769770();
      }

      sub_1007869C8();
      sub_1000E83A0();
      sub_100786A10();
      sub_1000E83A0();
      sub_1007869F8();
      goto LABEL_17;
    case 2u:
      v16 = *(v2 + 24);
      sub_1007877B4();
      if (v0)
      {
        v17 = sub_1000370B0();
        sub_10031EF8C(v17, v18);
      }

      else
      {
        sub_100024350();
        sub_10078738C();
        String.write(to:)();

        v25 = sub_1000215E0();
        sub_100784BF8(v25, v26, v16);
        v27 = sub_1000370B0();
        sub_10031EF8C(v27, v28);
      }

      break;
    case 3u:
      sub_1007877B4();
      break;
    default:
      sub_100086604();
      v14 = sub_1000BA488();
      sub_100187600(v14, v15);
      sub_1007877B4();
      if (!v0)
      {
        sub_1007870D0();
        sub_100769770();
      }

      sub_1007869C8();
LABEL_17:
      sub_1000E83A0();
      break;
  }

  sub_1007865A4();
  sub_10000C8F4();
}

void sub_1007809B8()
{
  sub_1000D3C1C();
  sub_100192434();
  type metadata accessor for AvailableDataSets();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1007872A4();
    if (v4)
    {
      sub_1000236E0();
      *v1 = static String.read(from:)();
      v1[1] = v7;
      type metadata accessor for LocationAvailableDataSetState(0);
      sub_1007864E4();
    }

    else if (v3 == 2)
    {
      sub_1000BC6E4();
      static FixedSizeTypeBinaryCodable.read(from:)();
      AvailableDataSets.init(rawValue:)();
      v5 = sub_1000D42A0();
      v6(v5);
      type metadata accessor for LocationAvailableDataSetState(0);
      sub_1007864F4();
    }

    else
    {
      if (v3 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v8);
        v9 = sub_100074D7C();
        sub_10002C964(v9, v10);
        sub_100006494();
        (*(v11 + 104))();
        swift_willThrow();
        goto LABEL_12;
      }

      type metadata accessor for LocationAvailableDataSetState(0);
      sub_100017BC0();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_12:
  sub_1002E5564();
  sub_100088758();
}

void sub_100780B8C()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for AvailableDataSets();
  sub_10000FB48();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000BCE14();
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_10003C620();
        String.write(to:)();
      }
    }

    else
    {
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    v6 = sub_100786504();
    v7(v6);
    sub_1000C8FEC();
    sub_100786574();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      AvailableDataSets.rawValue.getter();
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
    }

    v8 = sub_10000C8E8();
    v9(v8);
  }

  sub_100786C88();
  sub_10008835C();
}

void sub_100780D78()
{
  sub_100032568();
  sub_100786524();
  type metadata accessor for ContentStatusBanner();
  sub_100072E1C();
  sub_100784394();
  sub_1007843E8();
  sub_1007869B0();
  sub_10077C574(v0);
  sub_10006A8C8();
  sub_10077C574(v1);
  sub_10078776C();
  sub_10008835C();
}

uint64_t sub_100780E2C()
{
  sub_1000926C0();
  type metadata accessor for ContentStatusBanner();
  sub_100072E1C();
  sub_100784394();
  sub_1007843E8();
  sub_10077C574(&unk_100CD6710);
  sub_10006A8C8();
  sub_10077C574(v0);
  sub_100031474();
  return Dictionary<>.write(to:)();
}

void BackgroundMoonData.write(to:)()
{
  sub_10000E8AC();
  sub_10022C350(&unk_100CB2CF0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v4);
  sub_10004E424();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000317E4();
  BackgroundMoonData.date.getter();
  sub_100787078();
  Date.write(to:)();
  if (v0)
  {
    v6 = sub_10078642C();
    v7(v6);
  }

  else
  {
    v8 = sub_10078642C();
    v9(v8);
    BackgroundMoonData.moonrise.getter();
    Optional<A>.write(to:)();
    sub_1006827B8(v2, &unk_100CB2CF0);
    BackgroundMoonData.moonset.getter();
    sub_100786E7C();
    Optional<A>.write(to:)();
    sub_1006827B8(v1, &unk_100CB2CF0);
    BackgroundMoonData.elevation.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    BackgroundMoonData.phaseAngle.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    BackgroundMoonData.rotationAngle.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    BackgroundMoonData.moonImageName.getter();
    sub_1000B0EE4();
    String.write(to:)();
    sub_1000E6714();
  }

  sub_1007865A4();
  sub_10000C8F4();
}

uint64_t static BackgroundMoonData.read(from:)()
{
  v1 = sub_10022C350(&unk_100CB2CF0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000088C0();
  __chkstk_darwin(v3);
  sub_1000B9E20();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_100006168();
  sub_100786778();
  result = static Date.read(from:)();
  if (!v0)
  {
    sub_1002E52D0();
    static Optional<A>.read(from:)();
    sub_1002E52D0();
    static Optional<A>.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786778();
    static String.read(from:)();
    sub_10002C598();
    sub_1000B854C();
    return BackgroundMoonData.init(date:moonrise:moonset:elevation:phaseAngle:rotationAngle:moonImageName:)();
  }

  return result;
}

uint64_t sub_10078146C()
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    type metadata accessor for WeatherCondition();
    sub_10077C574(&unk_100CD66E0);
    sub_10002035C();
    sub_10077C574(v2);
    sub_10002C598();
    sub_10078773C();
    sub_1007842EC();
    sub_100784340();
    sub_100014268();
    return Dictionary<>.write(to:)();
  }

  return result;
}

void sub_1007815BC()
{
  sub_1007877E4();
  sub_1000526D4();
  if (!v0)
  {
    type metadata accessor for WeatherCondition();
    sub_10077C574(&unk_100CD66E0);
    sub_10002035C();
    sub_10077C574(v1);
    static Dictionary<>.read(from:)();
    sub_1007842EC();
    sub_100784340();
    static Dictionary<>.read(from:)();
  }

  sub_1007877F8();
}

uint64_t sub_100781718()
{
  sub_1007863D8();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    UVIndex.ExposureCategory.write(to:)();
    sub_10000CDB0();
    UVIndex.ExposureCategory.write(to:)();
    v2 = sub_10000CDB0();
    sub_100778940(v2, v3);
    type metadata accessor for EnvironmentState();
    sub_100013AD0();
    Locale.write(to:)();
    sub_1000C82DC();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786D84();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    return sub_100784630();
  }

  return result;
}

void sub_100781958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v24;
  a20 = v25;
  sub_1000E67F4();
  type metadata accessor for Locale();
  sub_10000FB48();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000106FC();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v20)
  {
    sub_1007863CC();
    v29 = static UVIndex.ExposureCategory.read(from:)();
    sub_1007863CC();
    v30 = static UVIndex.ExposureCategory.read(from:)();
    sub_1007863CC();
    v39 = sub_100778854();
    sub_1007863CC();
    static Locale.read(from:)();
    sub_1007863CC();
    v36 = static String.read(from:)();
    v37 = v30;
    v38 = v31;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10002F7A8();
    sub_1007863CC();
    v32 = sub_1007846BC();
    *v22 = v48;
    v22[1] = v29;
    v22[2] = v37;
    v22[3] = v39;
    v33 = type metadata accessor for EnvironmentState();
    (*(v27 + 32))(&v22[v33[8]], v23, v21);
    v34 = &v22[v33[9]];
    *v34 = v36;
    v34[1] = v38;
    v22[v33[10]] = v47;
    v22[v33[11]] = v46;
    v22[v33[12]] = v45;
    v22[v33[13]] = v44;
    *&v22[v33[14]] = v43;
    v22[v33[15]] = v42;
    v22[v33[16]] = v41;
    v22[v33[17]] = v40;
    v35 = &v22[v33[18]];
    *v35 = v49;
    v35[1] = v50;
    v35[2] = v51;
    v22[v33[19]] = v32;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_100781DA4()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for LocationOfInterest();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_100786504();
      v7(v6);
      sub_1000C8FEC();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_1007866E0();
        LocationOfInterest.write(to:)();
      }

      v8 = sub_10000810C();
      v9(v8);
    }

    else
    {
      sub_1000BCE14();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    sub_10001635C();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_10003C620();
      String.write(to:)();
    }
  }

  sub_100786F80();
  sub_10008835C();
}

void sub_100781F6C()
{
  sub_1000D3C1C();
  sub_100192434();
  type metadata accessor for LocationOfInterest();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1007872A4();
    if (v4)
    {
      type metadata accessor for SelectedSearchResult();
      sub_100017BC0();
    }

    else if (v3 == 2)
    {
      sub_1000236E0();
      static LocationOfInterest.read(from:)();
      v6 = sub_1000D42A0();
      v7(v6);
      type metadata accessor for SelectedSearchResult();
      sub_1007864E4();
    }

    else
    {
      if (v3 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v8);
        v9 = sub_100074D7C();
        sub_10002C964(v9, v10);
        sub_100006494();
        (*(v11 + 104))();
        swift_willThrow();
        goto LABEL_12;
      }

      sub_1000236E0();
      *v1 = static String.read(from:)();
      v1[1] = v5;
      type metadata accessor for SelectedSearchResult();
      sub_1007864F4();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_12:
  sub_1002E5564();
  sub_100088758();
}

void sub_10078211C()
{
  sub_1000D3C1C();
  sub_1000926C0();
  type metadata accessor for Location.Identifier();
  sub_10000548C();
  __chkstk_darwin(v3);
  sub_1000106FC();
  active = type metadata accessor for LocationViewerActiveLocationState();
  v5 = sub_100003810(active);
  __chkstk_darwin(v5);
  sub_100005384();
  v6 = sub_100786790();
  sub_1000E82F4(v6, v1);
  if (sub_100024D10(v1, 1, v0) == 1)
  {
    sub_100786D18();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    v7 = sub_100786504();
    v8(v7);
    sub_100786D18();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_1000E6768();
      Location.Identifier.write(to:)();
    }

    v9 = sub_10078670C();
    v10(v9);
  }

  sub_100786C88();
  sub_100088758();
}

void sub_100782360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  sub_1000D3C1C();
  sub_100192434();
  type metadata accessor for Location.Identifier();
  sub_100017D50();
  __chkstk_darwin(v16);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    v17 = a13;
    if (a13 != 1)
    {
      if (a13 != 2)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v20);
        v21 = sub_100074D7C();
        sub_10002C964(v21, v22);
        sub_100006494();
        (*(v23 + 104))();
        swift_willThrow();
        goto LABEL_8;
      }

      sub_1000236E0();
      static Location.Identifier.read(from:)();
      v18 = sub_1000D42A0();
      v19(v18);
      v17 = 0;
    }

    sub_10001B350(v14, v17, 1, v15);
  }

LABEL_8:
  sub_1002E5564();
  sub_100088758();
}

uint64_t sub_1007824D8()
{
  result = sub_1000526D4();
  if (!v0)
  {
    result = sub_100786BE4(result, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
    if (result >= 4u)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v9);
      v10 = sub_100074D7C();
      sub_10002C964(v10, v11);
      sub_100006494();
      (*(v12 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_10078259C()
{
  sub_10005246C();
  sub_10022C350(&unk_100CE49F0);
  sub_10077C574(&unk_100CD6768);
  sub_1000E3220();
  sub_10077C574(v1);
  sub_1000370B0();
  sub_10078738C();
  Optional<A>.write(to:)();
  if (!v0)
  {
    type metadata accessor for LocationsState();
    sub_1007874FC();
    type metadata accessor for SavedLocation();
    sub_10077C574(&unk_100CD6778);
    sub_100030268();
    sub_10077C574(v2);
    sub_10003C620();
    Array<A>.write(to:)();
    type metadata accessor for LocationModel();
    sub_10077C574(&unk_100CD6788);
    sub_1000BAF30();
    sub_10077C574(v3);
    sub_100786E7C();
    Array<A>.write(to:)();
    type metadata accessor for LocationOfInterest();
    sub_100786980();
    sub_10077C574(v4);
    sub_100023154();
    sub_10077C574(v5);
    sub_1000E14AC();
    sub_1007877CC();
    type metadata accessor for Location();
    sub_10077C574(&unk_100CD6688);
    sub_100019EA4();
    sub_10077C574(v6);
    sub_100786E7C();
    Array<A>.write(to:)();
    type metadata accessor for Location.Identifier();
    sub_10077C574(&unk_100CD67A8);
    sub_1000C8C08();
    sub_10077C574(v7);
    sub_1000E14AC();
    sub_1007877CC();
    Dictionary<>.write(to:)();
    Dictionary<>.write(to:)();
    sub_100787574();
    sub_1007863E4();
    sub_100782A34();
    type metadata accessor for LocationDisplayContext();
    sub_10077C574(&unk_100CD67B8);
    sub_10008878C();
    sub_10077C574(v8);
    sub_100003940();
    Dictionary<>.write(to:)();
  }

  sub_1001707D4();
}

void sub_100782A34()
{
  sub_1000D3C1C();
  switch(v1)
  {
    case 2:
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        type metadata accessor for LocationOfInterest();
        sub_10077C574(&unk_100CD6798);
        sub_100023154();
        sub_10077C574(v2);
        sub_100025214();
        Array<A>.write(to:)();
        sub_1007867B4();
        goto LABEL_7;
      }

      break;
    case 3:
      FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        type metadata accessor for LocationOfInterest();
        sub_100786980();
        sub_10077C574(v3);
        sub_100023154();
        sub_10077C574(v4);
        sub_100025214();
LABEL_7:
        Array<A>.write(to:)();
      }

      break;
  }

  sub_100088758();
}

void sub_100782C30()
{
  sub_10000E8AC();
  v58 = v5;
  type metadata accessor for LocationModel();
  sub_100024A44();
  v56 = v6;
  __chkstk_darwin(v7);
  sub_100006168();
  v8 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v59 = v9;
  __chkstk_darwin(v10);
  sub_1000317E4();
  v11 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10078647C();
  type metadata accessor for CurrentLocation();
  sub_10077C574(&unk_100CD6768);
  sub_1000E3220();
  sub_10077C574(v13);
  static Optional<A>.read(from:)();
  if (!v1)
  {
    v54 = v2;
    v55 = v8;
    v61 = v0;
    type metadata accessor for SavedLocation();
    sub_10077C574(&unk_100CD6778);
    sub_100030268();
    sub_10077C574(v14);
    sub_1007871A8();
    v15 = static Array<A>.read(from:)();
    sub_10077C574(&unk_100CD6788);
    sub_1000BAF30();
    sub_10077C574(v16);
    v17 = static Array<A>.read(from:)();
    type metadata accessor for LocationOfInterest();
    sub_10077C574(&unk_100CD6798);
    sub_100023154();
    sub_10077C574(v18);
    sub_100008408();
    sub_1007871A8();
    v19 = static Array<A>.read(from:)();
    type metadata accessor for Location();
    sub_10077C574(&unk_100CD6688);
    sub_100019EA4();
    sub_10077C574(v20);
    sub_100008408();
    sub_1007871C0();
    v51 = static Array<A>.read(from:)();
    sub_10077C574(&unk_100CD67A8);
    sub_1000C8C08();
    sub_10077C574(v21);
    sub_1000523E0();
    static Array<A>.read(from:)();

    v22 = static Dictionary<>.read(from:)();
    v50 = static Dictionary<>.read(from:)();
    v23 = sub_100786420();
    sub_1007835B4(v23, v24, v25, v26, v27, v28, v29, v30, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
    v46 = v31;
    v47 = v32;
    v48 = v33;
    v49 = v22;
    type metadata accessor for LocationDisplayContext();
    sub_10077C574(&unk_100CD67B8);
    sub_10008878C();
    sub_10077C574(v34);
    v45 = sub_10078776C();
    sub_1001A00C8(v61, v58);
    v35 = type metadata accessor for LocationsState();
    *(v58 + v35[5]) = v15;
    *(v58 + v35[6]) = v17;
    *(v58 + v35[7]) = v19;
    v52 = v35;
    *(v58 + v35[8]) = v51;
    if (*(v17 + 16))
    {
      v36 = *(v17 + 16);

      sub_10003DC90();
      v37 = v56 + 16;
      v60 = *(v56 + 16);
      v38 = v17 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v57 = *(v56 + 72);
      v53 = (v37 - 8);
      do
      {
        v39 = sub_100053370();
        v60(v39);
        LocationModel.identifier.getter();
        (*v53)(v54, v3);
        v40 = _swiftEmptyArrayStorage[2];
        v41 = v40 + 1;
        if (v40 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          sub_10003DC90();
          v41 = v40 + 1;
        }

        _swiftEmptyArrayStorage[2] = v41;
        (*(v59 + 32))(_swiftEmptyArrayStorage + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40, v4, v55);
        v38 += v57;
        --v36;
      }

      while (v36);

      sub_1006827B8(v61, &unk_100CE49F0);
    }

    else
    {
      sub_1006827B8(v61, &unk_100CE49F0);
    }

    *(v58 + v52[9]) = _swiftEmptyArrayStorage;
    *(v58 + v52[10]) = v49;
    *(v58 + v52[11]) = v50;
    v42 = v58 + v52[12];
    *v42 = v46;
    *(v42 + 8) = v47;
    *(v42 + 16) = v48;
    *(v58 + v52[13]) = v45;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_1007835B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1007877E4();
  sub_1000526D4();
  if (!v13)
  {
    switch(a13)
    {
      case 1:
        break;
      case 2:
      case 3:
        type metadata accessor for LocationOfInterest();
        sub_100786950();
        sub_10077C574(v14);
        sub_100023154();
        sub_10077C574(v15);
        sub_100031474();
        sub_100786B0C();
        static Array<A>.read(from:)();
        break;
      case 4:
        type metadata accessor for LocationOfInterest();
        sub_100786968();
        sub_10077C574(v16);
        sub_100023154();
        sub_10077C574(v17);
        sub_100040F9C();
        static Array<A>.read(from:)();
        sub_100040F9C();
        static Array<A>.read(from:)();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v18);
        v19 = sub_100074D7C();
        sub_10002C964(v19, v20);
        sub_100006494();
        (*(v21 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_10003BB20();
  sub_1007877F8();
}

void sub_100783890()
{
  sub_100032568();
  v2 = v1;
  v3 = sub_10000C76C();
  v4(v3);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001320C();
  v6 = sub_10078728C();
  v2(v6);
  if (!v0)
  {
    v7 = sub_1000E14D4();
    v8(v7);
  }

  sub_100786E70();
  sub_10008835C();
}

void sub_100783958()
{
  sub_1000D3C1C();
  type metadata accessor for NewsArticle();
  sub_10077C574(&unk_100CD6828);
  sub_1007865D8();
  sub_10077C574(v1);
  sub_1000E14AC();
  sub_1000300A0();
  Array<A>.write(to:)();
  if (!v0)
  {
    type metadata accessor for NewsArticlePlacement();
    sub_1007863E4();
    ArticlePlacementLocation.write(to:)();
  }

  sub_100088758();
}

void sub_100783A34()
{
  sub_10000E8AC();
  sub_10000C76C();
  type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100006168();
  type metadata accessor for NewsArticle();
  sub_10077C574(&unk_100CD6828);
  sub_10077C574(&unk_100CD6830);
  sub_1000D42A0();
  v3 = static Array<A>.read(from:)();
  if (!v1)
  {
    v4 = v3;
    static ArticlePlacementLocation.read(from:)();
    *v0 = v4;
    type metadata accessor for NewsArticlePlacement();
    sub_10078660C();
    v5();
  }

  sub_1001333F8();
  sub_10000C8F4();
}

uint64_t sub_100783BA0()
{
  sub_100787048();
  result = String.write(to:)();
  if (!v0)
  {
    String.write(to:)();
    sub_10078732C();
    sub_100787344();
    sub_10078779C();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t sub_100783C68()
{
  sub_100786ED8();
  result = static String.read(from:)();
  if (!v0)
  {
    v4 = result;
    v5 = v3;
    sub_1007863CC();
    v6 = static String.read(from:)();
    v8 = v7;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    result = static FixedSizeTypeBinaryCodable.read(from:)();
    *v1 = v4;
    *(v1 + 8) = v5;
    *(v1 + 16) = v6;
    *(v1 + 24) = v8;
    *(v1 + 32) = v12;
    *(v1 + 33) = v11;
    *(v1 + 34) = v10;
    *(v1 + 35) = v9;
  }

  return result;
}

uint64_t sub_100783E40()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_100051AC0();
    if (v3)
    {
      return 0;
    }

    else if (v2 == 2)
    {
      return 1;
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v4);
      v5 = sub_100074D7C();
      sub_10002C964(v5, v6);
      sub_100006494();
      (*(v7 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t SearchLocation.write(to:)()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for SearchLocation();
    sub_10022C350(&qword_100CA65D8);
    sub_1000C8DAC();
    sub_10077C574(v2);
    sub_100019EA4();
    sub_10077C574(v3);
    sub_100052444();
    sub_10022C350(&qword_100CD6698);
    sub_100786A28();
    sub_10077C574(v4);
    sub_100171218();
    sub_10077C574(v5);
    return sub_1001721CC();
  }

  return result;
}

void static SearchLocation.read(from:)()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100003CF8();
  sub_100786420();
  v6 = static String.read(from:)();
  if (!v0)
  {
    v8 = v6;
    v9 = v7;
    sub_100786420();
    v10 = static String.read(from:)();
    v12 = v11;
    sub_100786420();
    v19 = static String.read(from:)();
    v23 = v13;
    type metadata accessor for Location();
    sub_1000B8534();
    sub_10077C574(v14);
    sub_100019EA4();
    sub_10077C574(v15);
    static Optional<A>.read(from:)();
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_10077C574(&unk_100CD66A0);
    sub_100171218();
    sub_10077C574(v16);
    sub_1007871A8();
    static Optional<A>.read(from:)();
    *v3 = 0;
    v3[1] = v8;
    v3[2] = v9;
    v3[3] = v10;
    v3[4] = v12;
    v3[5] = v19;
    v3[6] = v23;
    v17 = type metadata accessor for SearchLocation();
    sub_100786150(v1, v3 + *(v17 + 32), &qword_100CA65D8);
    v18 = v3 + *(v17 + 36);
    *v18 = v20;
    *(v18 + 1) = v21;
    v18[16] = v22;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

unint64_t sub_1007842EC()
{
  result = qword_100CD66F0;
  if (!qword_100CD66F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD66F0);
  }

  return result;
}

unint64_t sub_100784340()
{
  result = qword_100CD66F8;
  if (!qword_100CD66F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD66F8);
  }

  return result;
}

unint64_t sub_100784394()
{
  result = qword_100CD6700;
  if (!qword_100CD6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6700);
  }

  return result;
}

unint64_t sub_1007843E8()
{
  result = qword_100CD6708;
  if (!qword_100CD6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6708);
  }

  return result;
}

uint64_t sub_10078443C()
{
  result = String.write(to:)();
  if (!v0)
  {
    sub_100787468();
    dispatch thunk of BinaryEncodable.write(to:)();
    sub_100787468();
    return dispatch thunk of BinaryEncodable.write(to:)();
  }

  return result;
}

void sub_1007844A4()
{
  sub_10000E8AC();
  v5 = v4;
  v7 = v6;
  sub_100786ED8();
  __chkstk_darwin(v8);
  sub_1000317E4();
  __chkstk_darwin(v9);
  sub_100049BF8();
  v10 = static String.read(from:)();
  if (!v0)
  {
    v12 = v10;
    v13 = v11;
    sub_100031268();
    dispatch thunk of static BinaryDecodable.read(from:)();
    dispatch thunk of static BinaryDecodable.read(from:)();
    sub_100888D18(v12, v13, v2, v3, v7, v5, v1);
  }

  sub_1007865A4();
  sub_10000C8F4();
}

uint64_t sub_1007846BC()
{
  result = sub_1000526D4();
  if (!v0)
  {
    result = sub_100786BE4(result, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
    if (result >= 3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v9);
      v10 = sub_100074D7C();
      sub_10002C964(v10, v11);
      sub_100006494();
      (*(v12 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_10078477C()
{
  result = qword_100CD6720;
  if (!qword_100CD6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6720);
  }

  return result;
}

unint64_t sub_1007847D0()
{
  result = qword_100CD6728;
  if (!qword_100CD6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6728);
  }

  return result;
}

unint64_t sub_100784824()
{
  result = qword_100CD6730;
  if (!qword_100CD6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6730);
  }

  return result;
}

unint64_t sub_100784878()
{
  result = qword_100CD6738;
  if (!qword_100CD6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6738);
  }

  return result;
}

unint64_t sub_1007848CC()
{
  result = qword_100CD6740;
  if (!qword_100CD6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6740);
  }

  return result;
}

unint64_t sub_100784920()
{
  result = qword_100CD6748;
  if (!qword_100CD6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6748);
  }

  return result;
}

unint64_t sub_100784974()
{
  result = qword_100CD6750;
  if (!qword_100CD6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6750);
  }

  return result;
}

unint64_t sub_1007849C8()
{
  result = qword_100CD6758;
  if (!qword_100CD6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6758);
  }

  return result;
}

unint64_t sub_100784A1C()
{
  result = qword_100CD6760;
  if (!qword_100CD6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6760);
  }

  return result;
}

uint64_t sub_100784A70()
{
  result = Date.write(to:)();
  if (!v0)
  {
    type metadata accessor for WeatherDataRelevancy();
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t sub_100784ADC()
{
  sub_10000C76C();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v2);
  sub_1000106FC();
  result = static Date.read(from:)();
  if (!v1)
  {
    sub_100786760();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v4 = sub_10003C620();
    v5(v4);
    result = type metadata accessor for WeatherDataRelevancy();
    *(v0 + *(result + 20)) = v6;
  }

  return result;
}

uint64_t sub_100784BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      result = FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      result = sub_10078732C();
      if (!v3)
      {
        sub_1000E14D4();
        result = String.write(to:)();
      }

      break;
  }

  return result;
}

uint64_t sub_100784E4C()
{
  result = sub_1000526D4();
  if (!v0)
  {
    result = 0;
    switch(v6)
    {
      case 1:
        return result;
      case 2:
        result = 0;
        break;
      case 3:
        result = 0;
        break;
      case 4:
        result = 0;
        break;
      case 5:
        result = 0;
        break;
      case 6:
        result = 0;
        break;
      case 7:
        result = 0;
        break;
      case 8:
        result = 0;
        break;
      case 9:
        result = 0;
        break;
      case 10:
        result = 0;
        break;
      case 11:
        result = 0;
        break;
      case 12:
        result = 0;
        break;
      case 13:
        result = 0;
        break;
      case 14:
        result = 0;
        break;
      case 15:
        sub_10000CDB0();
        result = static String.read(from:)();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v2);
        v3 = sub_100074D7C();
        sub_10002C964(v3, v4);
        sub_100006494();
        (*(v5 + 104))();
        result = swift_willThrow();
        break;
    }
  }

  return result;
}

uint64_t sub_100784FF0()
{
  v2 = sub_1000926C0();
  type metadata accessor for LocationPreviewViewState(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_10002429C();
  v4 = type metadata accessor for ModalViewState.MapViewModal(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100049BF8();
  v6 = sub_1000167A4();
  sub_1000E82F4(v6, v1);
  sub_100786920();
  v7 = sub_100037280();
  sub_100187600(v7, v8);
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_100786B18();
    sub_10077F6B8();
    sub_100787468();
    sub_1006801AC();
    sub_100787468();
    sub_100781DA4();
  }

  return sub_1000E83A0();
}

void sub_100785144()
{
  v1 = sub_100786560();
  v2 = type metadata accessor for LocationPreviewViewState(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    if (v10 == 1)
    {
      sub_1000B0CA4();
      sub_100757C30();
      sub_100786920();
      v4 = sub_10000C8E8();
      sub_100187600(v4, v5);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      sub_10077C574(v6);
      v7 = sub_100074D7C();
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      swift_willThrow();
    }
  }
}

void sub_100785270()
{
  sub_10000E8AC();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_1000106FC();
  type metadata accessor for LocationModel();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000520E4();
  type metadata accessor for NotificationLocation();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_10001BA34();
  v7 = sub_1000167A4();
  sub_1000E82F4(v7, v3);
  sub_1002E54F8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10022C350(&unk_100CE2F60);
      sub_100787118();
      v9(v2, v3, v1);
      sub_1000BCE14();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_1000E6768();
        Location.write(to:)();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

      v10 = sub_10000C8E8();
      v11(v10);
    }

    else
    {
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    v12 = sub_10000CDBC();
    v13(v12);
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      LocationModel.write(to:)();
    }

    v14 = sub_100020E44();
    v15(v14);
  }

  sub_100041B68();
  sub_10000C8F4();
}

void sub_10078551C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v28 = v15;
  v16 = type metadata accessor for Location();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100049BF8();
  type metadata accessor for LocationModel();
  sub_1000037C4();
  __chkstk_darwin(v20);
  sub_10001BA34();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    if (a13 != 1)
    {
      if (a13 == 3)
      {
        sub_1007865E4();
        static Location.read(from:)();
        sub_100786580();
        static FixedSizeTypeBinaryCodable.read(from:)();
        v27 = *(sub_10022C350(&unk_100CE2F60) + 48);
        (*(v18 + 32))(v28, v14, v16);
        *(v28 + v27) = a12;
      }

      else
      {
        if (a13 != 2)
        {
          type metadata accessor for BinaryDecoder.Error();
          sub_10001F6D0();
          sub_10077C574(v23);
          v24 = sub_1007863A0();
          sub_100787298(v24, v25);
          sub_10004E4B8();
          (*(v26 + 104))();
          swift_willThrow();
          goto LABEL_2;
        }

        sub_1007865E4();
        static LocationModel.read(from:)();
        v21 = sub_1000BA488();
        v22(v21);
      }
    }

    type metadata accessor for NotificationLocation();
    swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  sub_1007865A4();
  sub_10000C8F4();
}

void sub_1007857C8()
{
  sub_10000E8AC();
  sub_10022C350(&qword_100CC8178);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000132E8();
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v4);
  sub_100005888();
  v5 = type metadata accessor for WeatherData.CachingState(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_10001BA34();
  v7 = sub_1000167A4();
  sub_1000E82F4(v7, v2);
  v8 = sub_10022C350(&qword_100CAC710);
  if (sub_100024D10(v2, 1, v8) == 1)
  {
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    v9 = *(v8 + 48);
    v10 = sub_1000E17A0();
    v11(v10);
    sub_100786150(v2 + v9, v1, &qword_100CC8178);
    sub_1001706C0();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      Date.write(to:)();
      sub_10077C574(&unk_100CD6818);
      sub_1007863C0();
      sub_10077C574(v12);
      Optional<A>.write(to:)();
    }

    sub_1006827B8(v1, &qword_100CC8178);
    v13 = sub_1000046B4();
    v14(v13);
  }

  sub_10078716C();
  sub_10000C8F4();
}

void sub_100785A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v16 = v15;
  v17 = sub_10022C350(&qword_100CC8178);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000132E8();
  type metadata accessor for Date();
  sub_100024A44();
  __chkstk_darwin(v19);
  sub_1000520E4();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    if (a13 == 2)
    {
      sub_100786420();
      static Date.read(from:)();
      type metadata accessor for WeatherDataRelevancy();
      sub_10077C574(&unk_100CD6818);
      sub_100786F08(&unk_100CD6820);
      sub_10078671C();
      static Optional<A>.read(from:)();
      v27 = sub_10022C350(&qword_100CAC710);
      v28 = *(v27 + 48);
      v29 = sub_100020B28();
      v30(v29);
      sub_100786150(v14, v16 + v28, &qword_100CC8178);
      v20 = v16;
      v22 = 0;
      v21 = v27;
    }

    else
    {
      if (a13 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v23);
        v24 = sub_100074D7C();
        sub_10002C964(v24, v25);
        sub_100006494();
        (*(v26 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      sub_10022C350(&qword_100CAC710);
      v20 = sub_100031400();
      v22 = 1;
    }

    sub_10001B350(v20, v22, 1, v21);
  }

LABEL_2:
  sub_10002FE90();
  sub_10000C8F4();
}

void sub_100785D30()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for WeatherStatisticsModel();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_100786504();
      v7(v6);
      sub_1000BCE14();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_1007866E0();
        WeatherStatisticsModel.write(to:)();
      }

      v8 = sub_10000810C();
      v9(v8);
    }

    else
    {
      sub_1000C8FEC();
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  else
  {
    sub_10001635C();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_10003C620();
      String.write(to:)();
    }
  }

  sub_100786F80();
  sub_10008835C();
}

void sub_100785EF8()
{
  sub_1000D3C1C();
  sub_100786560();
  type metadata accessor for WeatherStatisticsModel();
  sub_100024A44();
  __chkstk_darwin(v2);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1007872A4();
    if (v4)
    {
      sub_1000B0CA4();
      static WeatherStatisticsModel.read(from:)();
      v6 = sub_1000D42A0();
      v7(v6);
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      sub_1007864E4();
    }

    else if (v3 == 2)
    {
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      sub_100017BC0();
    }

    else
    {
      if (v3 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        sub_10077C574(v8);
        v9 = sub_100074D7C();
        sub_10002C964(v9, v10);
        sub_100006494();
        (*(v11 + 104))();
        swift_willThrow();
        goto LABEL_12;
      }

      sub_1000B0CA4();
      *v1 = static String.read(from:)();
      v1[1] = v5;
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      sub_1007864F4();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_12:
  sub_1002E5564();
  sub_100088758();
}

unint64_t sub_1007860A8()
{
  result = qword_100CD67E8;
  if (!qword_100CD67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD67E8);
  }

  return result;
}

unint64_t sub_1007860FC()
{
  result = qword_100CD67F0;
  if (!qword_100CD67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD67F0);
  }

  return result;
}

uint64_t sub_100786150(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10022C350(a3);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10078635C()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t sub_100786380()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_1007863A0()
{

  return swift_allocError();
}

uint64_t sub_1007865F0()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_1007866A4()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100786728()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_1007867C0()
{

  return String.write(to:)();
}

unint64_t sub_100786B30(uint64_t a1)
{

  return sub_10077C574(a1);
}

unint64_t sub_100786B58(uint64_t a1)
{

  return sub_10077C574(a1);
}

unint64_t sub_100786B80(uint64_t a1)
{

  return sub_10077C574(a1);
}

__n128 sub_100786BA8()
{
  v1 = *(v0 - 120);
  result = *(v0 - 104);
  *(v0 - 160) = result;
  *(v0 - 144) = v1;
  return result;
}

uint64_t sub_100786C28()
{

  return static Array<A>.read(from:)();
}

__n128 sub_100786CE8@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v5 = *(v2 - 160);
  result = *(v2 - 144);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

__n128 sub_100786D48@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 160);
  result = *(v1 - 144);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100786EB8()
{
  result = v0;
  *(v2 - 72) = v1;
  return result;
}

uint64_t sub_100786EF0()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

unint64_t sub_100786F08(uint64_t a1)
{

  return sub_10077C574(a1);
}

uint64_t sub_100786F20()
{

  return Measurement.init(value:unit:)();
}

uint64_t sub_100786F40()
{

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100787030()
{
}

double sub_1007870A0()
{
  result = *(v0 - 232);
  *(v0 - 648) = result;
  return result;
}

uint64_t sub_1007870F0()
{

  return String.write(to:)();
}

void sub_100787130(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = v6;
  v7[7] = a1;
  v7[8] = a5;
  v7[9] = a6;
  v7[10] = a3;
  v7[11] = a4;
}

uint64_t sub_1007872B0(uint64_t a1)
{
  v3 = *(v1 - 248);

  return sub_100187600(a1, v3);
}

uint64_t sub_1007872C8()
{

  return Measurement.init(value:unit:)();
}

uint64_t sub_1007872E0()
{
}

uint64_t sub_1007872F8()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

unint64_t sub_100787314(uint64_t a1)
{

  return sub_10077C574(a1);
}

uint64_t sub_10078732C()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100787344()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_10078735C()
{

  return sub_1000E83A0();
}

uint64_t sub_1007875E4()
{

  return swift_getWitnessTable();
}

uint64_t sub_100787604()
{

  return Set<>.write(to:)();
}

uint64_t sub_100787624()
{

  return static Date.read(from:)();
}

void sub_100787644()
{

  sub_1007587A8();
}

uint64_t sub_100787664()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100787684()
{

  return static NSUnitTemperature.read(from:)();
}

uint64_t sub_1007876A4()
{

  return String.write(to:)();
}

uint64_t sub_1007876C4()
{

  return Array<A>.write(to:)();
}

uint64_t sub_1007876E4()
{

  return Array<A>.write(to:)();
}

void *sub_100787704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = (a1 + 16);

  return memcpy(v10, &a9, 0x60uLL);
}

uint64_t sub_100787724()
{
}

uint64_t sub_10078773C()
{

  return Dictionary<>.write(to:)();
}

uint64_t sub_100787754()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_10078776C()
{

  return static Dictionary<>.read(from:)();
}

uint64_t sub_100787784()
{
}

uint64_t sub_10078779C()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_1007877B4()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_1007877CC()
{

  return Array<A>.write(to:)();
}

uint64_t type metadata accessor for LocationRowContentViewLargeText()
{
  result = qword_100CD6938;
  if (!qword_100CD6938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100787880()
{
  result = type metadata accessor for ListLocationViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100787968(uint64_t a1, unsigned __int8 a2)
{
  if (sub_10069A6AC(a2, a1))
  {
    sub_10022C350(&qword_100CB7C58);
    type metadata accessor for RedactionReasons();
    *(swift_allocObject() + 16) = xmmword_100A2C3F0;
    static RedactionReasons.placeholder.getter();
  }

  else
  {
    type metadata accessor for RedactionReasons();
  }

  sub_1007897B0(&qword_100CAD9E8, &type metadata accessor for RedactionReasons);
  sub_10022C350(&qword_100CB7C48);
  sub_100006F64(&qword_100CB7C50, &qword_100CB7C48);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100787B0C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveForegroundStyle.getter();
  *a1 = result;
  return result;
}

void *sub_100787B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CD6970);
  __chkstk_darwin(v3 - 8);
  v5 = &__src[-v4];
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_10022C350(&qword_100CD6978);
  sub_100787C80(v1, &v5[*(v6 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10027FB54(v5, a1, &qword_100CD6970);
  v7 = sub_10022C350(&qword_100CD6980);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_100787C80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v107 = a2;
  v106 = sub_10022C350(&qword_100CD6988);
  __chkstk_darwin(v106);
  v103 = &v98 - v3;
  v4 = sub_10022C350(&qword_100CD6990);
  __chkstk_darwin(v4 - 8);
  v109 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v98 - v7;
  v9 = type metadata accessor for LocationRowSubheadingView(0);
  __chkstk_darwin(v9);
  v108 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for ListLocationViewModel(0);
  v15 = v14[6];
  v110 = a1;
  v16 = (a1 + v15);
  v17 = v16[1];
  v122 = *v16;
  v123 = v17;
  v18 = sub_10002D5A4();

  v105 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  v117 = v8;
  swift_beginAccess();
  sub_1007A3ACC();
  swift_endAccess();
  v114 = Text.font(_:)();
  v113 = v24;
  v26 = v25;
  v115 = v27;

  sub_10010CD64(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v111 = v26 & 1;
  LOBYTE(v122) = v26 & 1;
  LOBYTE(v119) = 0;
  v28 = v110;
  sub_1007895DC(v110, v13, type metadata accessor for ListLocationViewModel);
  v29 = &v13[*(v9 + 20)];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = *(v9 + 24);
  *&v13[v30] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  v116 = v13;
  swift_storeEnumTagMultiPayload();
  v31 = (v28 + v14[17]);
  v32 = v31[1];
  v33 = v14;
  if (v32)
  {
    v34 = *v31;
    v35 = (v28 + v14[16]);
    v36 = v35[1];
    v122 = *v35;
    v123 = v36;

    v37 = Text.init<A>(_:)();
    v102 = v14;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    swift_beginAccess();
    sub_1007A43C0();
    swift_endAccess();
    Font.init(_:)();
    v101 = Text.font(_:)();
    v100 = v43;
    v99 = v44;
    v98 = v45;

    sub_10010CD64(v38, v40, v42 & 1);

    v122 = v34;
    v123 = v32;
    v46 = Text.init<A>(_:)();
    v48 = v47;
    v50 = v49;
    swift_beginAccess();
    sub_1007A44C4();
    swift_endAccess();
    Font.init(_:)();
    v51 = Text.font(_:)();
    v53 = v52;
    v55 = v54;

    sub_10010CD64(v46, v48, v50 & 1);

    swift_beginAccess();
    v56 = sub_1007A43C0();
    swift_endAccess();
    [v56 capHeight];

    swift_beginAccess();
    v57 = sub_1007A44C4();
    swift_endAccess();
    [v57 capHeight];

    v58 = Text.baselineOffset(_:)();
    v60 = v59;
    LOBYTE(v46) = v61;
    sub_10010CD64(v51, v53, v55 & 1);

    LOBYTE(v53) = v99;
    v62 = v101;
    v63 = v100;
    v104 = static Text.+ infix(_:_:)();
    v65 = v64;
    LODWORD(v105) = v66;
    v68 = v67;
    LOBYTE(v66) = v46 & 1;
    v28 = v110;
    sub_10010CD64(v58, v60, v66);
    v33 = v102;

    v69 = v53 & 1;
    v70 = v62;
    v71 = v63;
  }

  else
  {
    v72 = (v28 + v14[16]);
    v73 = v72[1];
    v122 = *v72;
    v123 = v73;

    v74 = Text.init<A>(_:)();
    v76 = v75;
    v78 = v77;
    swift_beginAccess();
    sub_1007A43C0();
    swift_endAccess();
    Font.init(_:)();
    v104 = Text.font(_:)();
    v65 = v79;
    LODWORD(v105) = v80;
    v68 = v81;

    v69 = v78 & 1;
    v70 = v74;
    v71 = v76;
  }

  sub_10010CD64(v70, v71, v69);

  v110 = swift_getKeyPath();
  v82 = v117;
  if (*(v28 + v33[21]))
  {
    sub_10001B350(v117, 1, 1, v106);
    v83 = v105;
    v84 = v104;
    sub_10010CD54(v104, v65, v105 & 1);
  }

  else
  {
    v83 = v105;
    v84 = v104;
    sub_10010CD54(v104, v65, v105 & 1);

    v85 = v103;
    sub_100788708(v28, v103);
    sub_10027FB54(v85, v82, &qword_100CD6988);
    sub_10001B350(v82, 0, 1, v106);
  }

  v86 = v68;
  v87 = v108;
  sub_1007895DC(v116, v108, type metadata accessor for LocationRowSubheadingView);
  v88 = v83 & 1;
  v118 = v83 & 1;
  v89 = v109;
  sub_10018CF14(v82, v109, &qword_100CD6990);
  *&v119 = v114;
  *(&v119 + 1) = v113;
  LOBYTE(v120) = v111;
  *(&v120 + 1) = v135[0];
  DWORD1(v120) = *(v135 + 3);
  *(&v120 + 1) = v115;
  *v121 = 256;
  *&v121[2] = v133;
  *&v121[6] = v134;
  *&v121[8] = KeyPath;
  *&v121[16] = 2;
  v121[24] = 0;
  v90 = v119;
  v91 = v120;
  v92 = *v121;
  v93 = v107;
  *(v107 + 41) = *&v121[9];
  v93[1] = v91;
  v93[2] = v92;
  *v93 = v90;
  v94 = sub_10022C350(&qword_100CD6998);
  sub_1007895DC(v87, v93 + v94[12], type metadata accessor for LocationRowSubheadingView);
  v95 = v93 + v94[16];
  *v95 = v84;
  *(v95 + 1) = v65;
  v95[16] = v88;
  v96 = v110;
  *(v95 + 3) = v86;
  *(v95 + 4) = v96;
  *(v95 + 5) = 1;
  v95[48] = 0;
  sub_10018CF14(v89, v93 + v94[20], &qword_100CD6990);
  sub_10018CF14(&v119, &v122, &qword_100CB5830);
  sub_10010CD54(v84, v65, v88);

  sub_10010CD64(v84, v65, v88);

  sub_100018144(v117, &qword_100CD6990);
  sub_100789634(v116);
  sub_100018144(v89, &qword_100CD6990);
  sub_10010CD64(v84, v65, v118);

  sub_100789634(v87);
  v122 = v114;
  v123 = v113;
  v124 = v111;
  *v125 = v135[0];
  *&v125[3] = *(v135 + 3);
  v126 = v115;
  v127 = 256;
  v128 = v133;
  v129 = v134;
  v130 = KeyPath;
  v131 = 2;
  v132 = 0;
  return sub_100018144(&v122, &qword_100CB5830);
}

uint64_t sub_100788708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v120 = sub_10022C350(&qword_100CB7B38);
  __chkstk_darwin(v120);
  v104 = &v97 - v3;
  v108 = sub_10022C350(&qword_100CD69A0);
  __chkstk_darwin(v108);
  v112 = &v97 - v4;
  v109 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v109);
  v103 = &v97 - v5;
  v101 = type metadata accessor for TemperatureHighLowTextVertical();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10022C350(&qword_100CB7BE0);
  __chkstk_darwin(v105);
  v102 = &v97 - v7;
  v107 = sub_10022C350(&qword_100CD69A8);
  v98 = *(v107 - 8);
  __chkstk_darwin(v107);
  v97 = &v97 - v8;
  v9 = sub_10022C350(&qword_100CD69B0);
  __chkstk_darwin(v9 - 8);
  v111 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v97 - v12;
  v114 = sub_10022C350(&qword_100CD69B8);
  __chkstk_darwin(v114);
  v14 = &v97 - v13;
  v116 = sub_10022C350(&qword_100CD69C0);
  __chkstk_darwin(v116);
  v118 = &v97 - v15;
  v115 = sub_10022C350(&qword_100CD69C8);
  __chkstk_darwin(v115);
  v106 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v97 - v18;
  __chkstk_darwin(v19);
  v121 = &v97 - v20;
  v119 = a1;
  v21 = sub_100789464();
  v23 = v22;
  v25 = v24;
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3FE8();
  swift_endAccess();
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10010CD64(v21, v23, v25 & 1);

  v33 = &v14[*(sub_10022C350(&qword_100CB7FF0) + 36)];
  v34 = *(sub_10022C350(&qword_100CAF750) + 28);
  v35 = enum case for Image.Scale.small(_:);
  v36 = type metadata accessor for Image.Scale();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v14 = v26;
  *(v14 + 1) = v28;
  v14[16] = v30 & 1;
  *(v14 + 3) = v32;
  LODWORD(v28) = static HierarchicalShapeStyle.secondary.getter();
  *&v14[*(sub_10022C350(&qword_100CD69D0) + 36)] = v28;
  v37 = *(sub_10022C350(&qword_100CD69D8) + 36);
  v38 = enum case for BlendMode.plusLighter(_:);
  v39 = type metadata accessor for BlendMode();
  (*(*(v39 - 8) + 104))(&v14[v37], v38, v39);
  *&v14[*(v114 + 36)] = 256;
  v40 = v119;
  v41 = *(sub_1009AA9D0() + 2);

  if (v41)
  {
    v42 = 1;
  }

  else
  {
    v42 = 4;
  }

  KeyPath = swift_getKeyPath();
  v44 = v118;
  sub_10027FB54(v14, v118, &qword_100CD69B8);
  v45 = v44 + *(v116 + 36);
  *v45 = KeyPath;
  *(v45 + 8) = v42;
  *(v45 + 16) = 0;
  v46 = swift_getKeyPath();
  v47 = sub_1009AA9D0();
  v48 = v117;
  v49 = &v117[*(v115 + 36)];
  sub_10022C350(&qword_100CB7B88);
  sub_100787968(v47, 0);

  *v49 = v46;
  sub_10027FB54(v44, v48, &qword_100CD69C0);
  sub_10027FB54(v48, v121, &qword_100CD69C8);
  v50 = type metadata accessor for ListLocationViewModel(0);
  if (*(v40 + v50[24]) != 1 || (v51 = sub_1009AA9D0(), v52 = sub_10069A6AC(2u, v51), , (v52 & 1) != 0))
  {
    v53 = (v40 + v50[18]);
    v54 = *v53;
    v55 = v53[1];
    v56 = (v40 + v50[19]);
    v57 = v56[1];
    v117 = *v56;
    v118 = v54;

    v58 = sub_1009AA9D0();
    v59 = sub_10069A6AC(2u, v58);

    v60 = (v40 + v50[20]);
    v62 = *v60;
    v61 = v60[1];
    v63 = swift_getKeyPath();

    v64 = sub_1009AA9D0();
    v65 = v104;
    v66 = &v104[*(v120 + 36)];
    sub_100787968(v64, 2u);

    *v66 = v63;
    v67 = v117;
    *v65 = v118;
    *(v65 + 8) = v55;
    *(v65 + 16) = v67;
    *(v65 + 24) = v57;
    *(v65 + 32) = v59 & 1;
    *(v65 + 40) = v62;
    *(v65 + 48) = v61;
    sub_10018CF14(v65, v112, &qword_100CB7B38);
    swift_storeEnumTagMultiPayload();
    v68 = sub_100420FEC();
    v69 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    v122 = v105;
    v123 = v109;
    v124 = v68;
    v125 = v69;
    swift_getOpaqueTypeConformance2();
    sub_1004210D8();
    v70 = v110;
    v71 = v121;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v65, &qword_100CB7B38);
LABEL_11:
    v93 = v106;
    sub_10018CF14(v71, v106, &qword_100CD69C8);
    v94 = v111;
    sub_10018CF14(v70, v111, &qword_100CD69B0);
    v95 = v113;
    sub_10018CF14(v93, v113, &qword_100CD69C8);
    v96 = sub_10022C350(&qword_100CD69E0);
    sub_10018CF14(v94, v95 + *(v96 + 48), &qword_100CD69B0);
    sub_100018144(v70, &qword_100CD69B0);
    sub_100018144(v71, &qword_100CD69C8);
    sub_100018144(v94, &qword_100CD69B0);
    return sub_100018144(v93, &qword_100CD69C8);
  }

  v72 = v99;
  TemperatureHighLowTextVertical.init(highTemperature:lowTemperature:showNumericOnlyHighLow:scaleFactor:additionalSpacing:)();
  v73 = (v40 + v50[20]);
  v74 = v73[1];
  v122 = *v73;
  v123 = v74;
  sub_10002D5A4();

  v75 = Text.init<A>(_:)();
  v77 = v76;
  v79 = v78;
  sub_1007897B0(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical);
  v80 = v102;
  v81 = v101;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v75, v77, v79 & 1);

  (*(v100 + 8))(v72, v81);
  v82 = enum case for DynamicTypeSize.accessibility3(_:);
  v83 = type metadata accessor for DynamicTypeSize();
  v84 = v103;
  (*(*(v83 - 8) + 104))(v103, v82, v83);
  sub_1007897B0(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v86 = sub_100420FEC();
    v87 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    v88 = v97;
    v89 = v105;
    v90 = v109;
    View.dynamicTypeSize<A>(_:)();
    sub_100018144(v84, &unk_100CE1680);
    sub_100018144(v80, &qword_100CB7BE0);
    v91 = v98;
    v92 = v107;
    (*(v98 + 16))(v112, v88, v107);
    swift_storeEnumTagMultiPayload();
    v122 = v89;
    v123 = v90;
    v124 = v86;
    v125 = v87;
    swift_getOpaqueTypeConformance2();
    sub_1004210D8();
    v70 = v110;
    _ConditionalContent<>.init(storage:)();
    (*(v91 + 8))(v88, v92);
    v71 = v121;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100789464()
{
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for ListLocationViewModel(0);
  if (*(v0 + *(v2 + 52) + 8))
  {

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v0 + *(v2 + 48)));
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
    LocalizedStringKey.init(stringInterpolation:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    sub_10002D5A4();

    return Text.init<A>(_:)();
  }
}

uint64_t sub_1007895DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100789634(uint64_t a1)
{
  v2 = type metadata accessor for LocationRowSubheadingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007896E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1007897B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007897F8()
{
  result = qword_100CD69E8;
  if (!qword_100CD69E8)
  {
    sub_10022E824(&qword_100CD6980);
    sub_100006F64(&qword_100CD69F0, &qword_100CD6970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD69E8);
  }

  return result;
}

uint64_t sub_1007898B0(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = *(v1 + 16);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v8 + 16))(v6, a1);
  type metadata accessor for LocationViewerViewAction();
  sub_100004A14();
  type metadata accessor for ViewAction();
  sub_100004A14();
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10004F034(v6, v11, v7);
  sub_1000180EC(v11, &unk_100CD81B0);
  sub_10001F6E8();
  return sub_10004FA98(v6, v9);
}

uint64_t sub_1007899C8(uint64_t a1, char a2)
{
  v6 = sub_10022C350(&qword_100CA65C8);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100019530();
  sub_100035AD0(a1, v9, &qword_100CA65C8);
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    return sub_1000180EC(v9, &qword_100CA65C8);
  }

  sub_100431B6C(v9, v3);
  if (a2 != 2)
  {
    sub_1000161C0((v2 + 72), *(v2 + 96));
    sub_1005CF77C(v3, a2 & 1);
  }

  return sub_10004FA98(v3, type metadata accessor for PreviewLocation);
}

uint64_t sub_100789B28()
{
  v1 = *(v0 + 16);
  sub_10022C350(&qword_100CA3508);
  type metadata accessor for MainAction();
  sub_100003DDC();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A3BBA0;
  v7 = v6 + v5;
  type metadata accessor for ActivityAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v7 + v3) = 1;
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v7 + 2 * v3) = 1;
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_100035AD0(v12, v9, &unk_100CD81B0);
  v10 = v6;
  v11 = 0;
  sub_10004F1B0(v9, v1);
  sub_1000180EC(v9, &qword_100CA3510);
  return sub_1000180EC(v12, &unk_100CD81B0);
}

uint64_t sub_100789D1C(uint64_t a1)
{
  v4 = sub_10022C350(&qword_100CA3588);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v8 = sub_10022C350(&qword_100CA65D8);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for Location();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_100019530();
  sub_100035AD0(a1, v11, &qword_100CA65D8);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    return sub_1000180EC(v11, &qword_100CA65D8);
  }

  (*(v14 + 32))(v2, v11, v12);
  v17 = *(v1 + 16);
  v26[1] = *(v1 + 24);
  v27 = v17;
  sub_10022C350(&qword_100CA3508);
  type metadata accessor for MainAction();
  sub_100003DDC();
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100A2D320;
  v21 = sub_10022C350(&qword_100CBBE20);
  v26[0] = v1;
  v22 = *(v21 + 48);
  sub_10022C350(&qword_100CA38C0);
  (*(v14 + 16))(v20 + v19, v2, v12);
  type metadata accessor for CurrentLocation();
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for LocationOfInterest();
  sub_10001B350(v7, 1, 1, v23);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v24 = enum case for LocationModel.current(_:);
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v25 + 104))(v20 + v19, v24);
  *(v20 + v19 + v22) = 0;
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SearchViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_100035AD0(v31, v28, &unk_100CD81B0);
  v29 = v20;
  v30 = 0;
  sub_10004F1B0(v28, v27);
  sub_1000180EC(v28, &qword_100CA3510);
  sub_1000180EC(v31, &unk_100CD81B0);
  swift_getObjectType();
  dispatch thunk of WeatherMapZoomControllerType.goToCurrentLocation()();
  return (*(v14 + 8))(v2, v12);
}

uint64_t sub_10078A150(char a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100019530();
  v5 = *(v1 + 16);
  if (a1)
  {
    *v2 = 0;
    type metadata accessor for ViewAction();
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100006154();
    sub_10004F034(v2, v6, v5);
    sub_1000180EC(v11, &unk_100CD81B0);
    sub_10001F6E8();
    sub_10004FA98(v2, v7);
    if (qword_100CA29A0 != -1)
    {
      sub_100006700();
    }

    v11[0] = 0;
  }

  else
  {
    *v2 = 1;
    type metadata accessor for ViewAction();
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100006154();
    sub_10004F034(v2, v8, v5);
    sub_1000180EC(v11, &unk_100CD81B0);
    sub_10001F6E8();
    sub_10004FA98(v2, v9);
    if (qword_100CA29A0 != -1)
    {
      sub_100006700();
    }

    v11[0] = 1;
  }

  sub_10078A9FC(&qword_100CD6AC0);
  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_10078A34C(char a1, uint64_t a2)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *(v2 + 16);
  if (a1)
  {
    type metadata accessor for ViewAction();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = sub_10022C350(&qword_100CA6658);
    v11 = v8 + *(v10 + 48);
    v12 = *(v10 + 64);
    type metadata accessor for WeatherMapOverlayKind();
    sub_1000037E8();
    (*(v13 + 16))(v8, a2);
    type metadata accessor for LocationComponentAction(0);
    swift_storeEnumTagMultiPayload();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 1;
    v14 = type metadata accessor for Date();
    sub_10001B350(v8 + v12, 1, 1, v14);
    type metadata accessor for LocationViewAction();
    sub_100004A14();
  }

  swift_storeEnumTagMultiPayload();
  sub_100006154();
  sub_10004F034(v8, v15, v9);
  sub_1000180EC(v18, &unk_100CD81B0);
  sub_10001F6E8();
  return sub_10004FA98(v8, v16);
}

uint64_t sub_10078A4E8()
{
  type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v35 = v2;
  v36 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v5 = v4 - v3;
  v38 = type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100019530();
  v7 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v39 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v37 = v11 - v10;
  v12 = sub_10022C350(&qword_100CB6198);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = objc_opt_self();
  v20 = [v19 celsius];
  sub_10000F868();
  v21 = static NSObject.== infix(_:_:)();

  if (v21)
  {
    v22 = &enum case for UnitConfiguration.Temperature.celsius(_:);
LABEL_5:
    v25 = v39;
    (*(v39 + 104))(v18, *v22, v7);
    v26 = 0;
    goto LABEL_7;
  }

  v23 = [v19 fahrenheit];
  v24 = static NSObject.== infix(_:_:)();

  if (v24)
  {
    v22 = &enum case for UnitConfiguration.Temperature.fahrenheit(_:);
    goto LABEL_5;
  }

  v26 = 1;
  v25 = v39;
LABEL_7:
  sub_10001B350(v18, v26, 1, v7);
  sub_100035AD0(v18, v15, &qword_100CB6198);
  if (sub_100024D10(v15, 1, v7) == 1)
  {
    sub_1000180EC(v18, &qword_100CB6198);
    v27 = v15;
  }

  else
  {
    v28 = v37;
    (*(v25 + 32))(v37, v15, v7);
    v29 = *(v34 + 16);
    (*(v25 + 16))(v5, v28, v7);
    sub_10001B350(v5, 0, 1, v7);
    v31 = v35;
    v30 = v36;
    (*(v35 + 104))(v5, enum case for ConfiguredUnit.temperature(_:), v36);
    (*(v31 + 32))(v0, v5, v30);
    type metadata accessor for ConfiguredUnitsAction();
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction();
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_10004F034(v0, v40, v29);
    sub_1000180EC(v40, &unk_100CD81B0);
    sub_10001F6E8();
    sub_10004FA98(v0, v32);
    (*(v25 + 8))(v28, v7);
    v27 = v18;
  }

  return sub_1000180EC(v27, &qword_100CB6198);
}

uint64_t sub_10078A930()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 128);
  return v0;
}

uint64_t sub_10078A970()
{
  sub_10078A930();

  return swift_deallocClassInstance();
}

uint64_t sub_10078A9FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherMenuInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10078AA3C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Location();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA2CD8);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for DebugAction();
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CD6C48);
  sub_1000037C4();
  v41 = v19;
  v42 = v18;
  __chkstk_darwin(v18);
  v21 = &v41 - v20;
  sub_10078B0A0(v2, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v5 + 32))(v8, v17, v3);
      sub_10022C350(&qword_100CA36F8);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_10001CCA8();
      v33[4] = v34;
      v33[5] = 0xE800000000000000;
      v33[9] = v3;
      v35 = sub_100042FB0(v33 + 6);
      (*(v5 + 16))(v35, v8, v3);
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      (*(v5 + 8))(v8, v3);
      break;
    case 2u:
      v27 = *v17;
      v28 = *(v17 + 1);
      v29 = *(v17 + 2);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2D320;
      *(inited + 32) = 0x74756F79616CLL;
      *(inited + 40) = 0xE600000000000000;
      sub_10022C350(&unk_100CD6C10);
      *(inited + 48) = v27;
      sub_10001CCA8();
      *(inited + 72) = v31;
      *(inited + 80) = v32;
      *(inited + 120) = &type metadata for String;
      *(inited + 88) = 0xEA00000000004449;
      *(inited + 96) = v28;
      *(inited + 104) = v29;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_6;
    case 3u:
      Dictionary.init(dictionaryLiteral:)();
LABEL_6:
      ShortDescription.init(name:_:)();
      break;
    default:
      v22 = &v17[*(sub_10022C350(&qword_100CB0A38) + 48)];
      v23 = *v22;
      v24 = *(v22 + 1);
      sub_1003C7D1C(v17, v14);
      sub_10022C350(&qword_100CA36F8);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_100A2D320;
      *(v25 + 32) = 0x6F697469646E6F63;
      *(v25 + 40) = 0xE90000000000006ELL;
      sub_100108724(v14, v11);
      v26 = type metadata accessor for WeatherCondition();
      if (sub_100024D10(v11, 1, v26) == 1)
      {
        sub_10078B168(v11);
        *(v25 + 72) = &type metadata for String;
        *(v25 + 48) = 0;
        *(v25 + 56) = 0xE000000000000000;
      }

      else
      {
        v45 = v26;
        v36 = sub_100042FB0(&v44);
        (*(*(v26 - 8) + 32))(v36, v11, v26);
        sub_100166170(&v44, (v25 + 48));
      }

      *(v25 + 80) = 0x6E6F697461636F6CLL;
      *(v25 + 88) = 0xE800000000000000;
      *(v25 + 120) = &type metadata for String;
      *(v25 + 96) = v23;
      *(v25 + 104) = v24;
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      sub_10078B168(v14);
      break;
  }

  v38 = v42;
  v37 = v43;
  v43[3] = v42;
  v37[4] = sub_10078B104();
  v39 = sub_100042FB0(v37);
  return (*(v41 + 32))(v39, v21, v38);
}

uint64_t sub_10078B014()
{
  sub_10078B1D0(qword_100CD6C58);

  return ShortDescribable.description.getter();
}

uint64_t sub_10078B0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10078B104()
{
  result = qword_100CD6C50;
  if (!qword_100CD6C50)
  {
    sub_10022E824(&qword_100CD6C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD6C50);
  }

  return result;
}

uint64_t sub_10078B168(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA2CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10078B1D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10078B214()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10078B2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v363 = a6;
  v358 = a4;
  v362 = a3;
  v357 = a2;
  v339 = a1;
  v320 = a7;
  v8 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v8 - 8);
  v299 = v296 - v9;
  v297 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v297);
  sub_100003848();
  v318 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = v296 - v12;
  __chkstk_darwin(v14);
  v16 = v296 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v315 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v314 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v312 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v310 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v308 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v306 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v304 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v302 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v300 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v296[0] = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v296 - v38;
  v40 = *(a5 - 8);
  __chkstk_darwin(v41);
  sub_100003848();
  v319 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v337 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v336 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v335 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v334 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v333 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v331 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v330 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v329 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v316 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v328 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v313 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v69 = v296 - v68;
  __chkstk_darwin(v70);
  sub_100003878();
  v311 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v353 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v309 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v352 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v307 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v351 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v305 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v350 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v303 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v349 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v301 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v348 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v298 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v347 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v296[3] = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v346 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v296[2] = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v345 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v296[1] = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v344 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  v112 = v296 - v111;
  __chkstk_darwin(v113);
  v115 = v296 - v114;
  v361 = type metadata accessor for Optional();
  v322 = *(v361 - 8);
  __chkstk_darwin(v361);
  sub_100003848();
  v326 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v325 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v324 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v343 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v342 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v341 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  v129 = v296 - v128;
  __chkstk_darwin(v130);
  v340 = v296 - v131;
  sub_100566A24(v357, v383);
  v327 = v40;
  v356 = v112;
  v360 = v115;
  v323 = v13;
  v321 = v39;
  v354 = v69;
  v317 = v16;
  if (v384)
  {
    v132 = 1;
  }

  else
  {
    v359 = v383[3];
    v133 = v383[2];
    v134 = v383[1];
    v135 = v383[0];
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_severeAlert, v39);
    v362(v39, v135, v134, v133, v359);
    sub_1001B4354(v39);
    v136 = sub_100007EE8();
    v137 = v363;
    sub_1000833D8(v136, v138, v363);
    v139 = *(v40 + 8);
    v140 = sub_100007EE8();
    v139(v140);
    v141 = sub_100005474();
    sub_1000833D8(v141, v142, v137);
    v143 = sub_100005474();
    v139(v143);
    (*(v40 + 32))(v129, v112, a5);
    v132 = 0;
  }

  v144 = v129;
  v145 = 1;
  sub_100017568(v129, v132);
  sub_100007F30();
  sub_1003E7FD4(v146, v147);
  v148 = v322 + 8;
  v359 = *(v322 + 8);
  v359(v129, v361);
  sub_100566BE4(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_nextHourPrecipitation, v321);
    v150 = v356;
    sub_10004E364();
    v151();
    sub_1001B4354(v149);
    v152 = sub_100007EE8();
    v153 = v363;
    sub_1000833D8(v152, v154, v363);
    v155 = v327;
    v156 = *(v327 + 8);
    v157 = sub_100007EE8();
    v156(v157);
    v158 = sub_100005480();
    sub_1000833D8(v158, v159, v153);
    v160 = sub_100005480();
    v156(v160);
    v144 = v355;
    (*(v155 + 32))(v355, v150, a5);
    v145 = 0;
  }

  v161 = 1;
  sub_100017568(v144, v145);
  sub_100007F30();
  sub_1003E7FD4(v162, v163);
  v164 = sub_100049604();
  v165(v164);
  v166 = v357;
  sub_100566A40(v357, v386);
  v167 = v321;
  if ((v386[32] & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality, v321);
    v166 = v357;
    sub_10004E364();
    v168();
    sub_1001B4354(v167);
    v169 = sub_100003A80();
    v170 = v363;
    sub_1000833D8(v169, v171, v363);
    v144 = *(v327 + 8);
    v172 = sub_100003A80();
    (v144)(v172);
    v173 = sub_100005474();
    sub_1000833D8(v173, v174, v170);
    v175 = sub_100005474();
    (v144)(v175);
    v176 = sub_1000280F8();
    v177(v176);
    v161 = 0;
  }

  sub_100017568(v144, v161);
  sub_100007F30();
  sub_1003E7FD4(v178, v179);
  v180 = sub_100049604();
  v181(v180);
  v182 = OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_map;
  v183 = v339;
  swift_beginAccess();
  v184 = v183 + v182;
  v185 = v299;
  sub_10026E174(v184, v299);
  if (sub_100024D10(v185, 1, v297) == 1)
  {
    sub_10026E1E4(v185);
    v186 = 1;
    v187 = v327;
  }

  else
  {
    v188 = v185;
    v189 = v296[0];
    sub_10026E24C(v188, v296[0]);
    sub_100566A5C(v166, v387);
    v187 = v327;
    if (v388)
    {
      sub_1001B4354(v189);
      v186 = 1;
    }

    else
    {
      v362(v189, v387[0], v387[1], v387[2], v387[3]);
      sub_1001B4354(v189);
      v190 = sub_100003A80();
      v191 = v363;
      sub_1000833D8(v190, v192, v363);
      v144 = *(v187 + 8);
      v193 = sub_100003A80();
      (v144)(v193);
      sub_1000833D8(v360, a5, v191);
      (v144)(v360, a5);
      v194 = sub_1000280F8();
      v195(v194);
      v186 = 0;
    }
  }

  v196 = v300;
  sub_100017568(v144, v186);
  sub_100007F30();
  sub_1003E7FD4(v197, v198);
  v199 = sub_100049604();
  v200(v199);
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v196);
  sub_100566A78(v166, v389);
  if (v390)
  {
    goto LABEL_31;
  }

  v362(v196, v389[0], v389[1], v389[2], v389[3]);
  sub_1001B4354(v196);
  sub_100007F30();
  sub_1000833D8(v201, v202, v203);
  v204 = *(v187 + 8);
  v205 = sub_100003A80();
  v204(v205);
  v206 = v302;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v302);
  sub_100566A94(v166, v391);
  if (v391[32])
  {
    goto LABEL_31;
  }

  v207 = sub_100014130();
  v208(v207);
  sub_1001B4354(v206);
  v209 = sub_100005474();
  sub_1000833D8(v209, v210, v363);
  v211 = sub_100005474();
  v204(v211);
  v212 = v304;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v304);
  sub_100566AB0(v166, v392);
  if (v392[32])
  {
    goto LABEL_34;
  }

  v213 = sub_100014130();
  v214(v213);
  sub_1001B4354(v212);
  v215 = sub_100005474();
  sub_1000833D8(v215, v216, v363);
  v217 = sub_100005474();
  v204(v217);
  v218 = v306;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v306);
  sub_100566ACC(v166, v393);
  if (v393[32])
  {
    goto LABEL_31;
  }

  v219 = sub_10002279C();
  v220(v219);
  sub_1001B4354(v218);
  sub_100007F30();
  sub_1000833D8(v221, v222, v223);
  v224 = sub_100003A80();
  v204(v224);
  v225 = v308;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v308);
  sub_100566AE8(v166, v394);
  if (v394[32])
  {
    goto LABEL_34;
  }

  v226 = sub_10002279C();
  v227(v226);
  sub_1001B4354(v225);
  sub_100007F30();
  sub_1000833D8(v228, v229, v230);
  v231 = sub_100003A80();
  v204(v231);
  v232 = v310;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v310);
  sub_100566B04(v166, v395);
  if (v395[32])
  {
    goto LABEL_31;
  }

  v233 = sub_10002279C();
  v234(v233);
  sub_1001B4354(v232);
  sub_100007F30();
  sub_1000833D8(v235, v236, v237);
  v238 = sub_100003A80();
  v204(v238);
  v239 = v312;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v312);
  sub_100566B20(v166, v396);
  if (v396[32])
  {
    goto LABEL_31;
  }

  v240 = sub_100014130();
  v241(v240);
  sub_1001B4354(v239);
  v242 = sub_100005474();
  sub_1000833D8(v242, v243, v363);
  v244 = sub_100005474();
  v204(v244);
  v245 = v314;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v314);
  sub_100566B3C(v166, v397);
  if (v397[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v246 = sub_100014130();
  v247(v246);
  sub_1001B4354(v245);
  v248 = sub_100005474();
  sub_1000833D8(v248, v249, v363);
  v250 = sub_100005474();
  v204(v250);
  v251 = v315;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v315);
  sub_100566B58(v166, &v398);
  if ((v399 & 1) == 0)
  {
    v252 = sub_10002279C();
    v253(v252);
    sub_1001B4354(v251);
    sub_100007F30();
    sub_1000833D8(v254, v255, v256);
    v257 = sub_100003A80();
    v204(v257);
    v258 = v317;
    sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v317);
    sub_100566B74(v166, &v400);
    if ((v401 & 1) == 0)
    {
      v259 = sub_100014130();
      v260(v259);
      sub_1001B4354(v258);
      v261 = sub_100005474();
      sub_1000833D8(v261, v262, v363);
      v263 = sub_100005474();
      v204(v263);
      sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v323);
      sub_100566B90(v166, v402);
      if ((v403 & 1) == 0)
      {
        v264 = v323;
        v362(v323, v402[0], v402[1], v402[2], v402[3]);
        sub_1001B4354(v264);
        v265 = sub_100005474();
        sub_1000833D8(v265, v266, v363);
        v267 = sub_100005474();
        v204(v267);
        v268 = v318;
        sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v318);
        sub_100566BAC(v166, v404);
        if ((v405 & 1) == 0)
        {
          v362(v268, v404[0], v404[1], v404[2], v404[3]);
          sub_1001B4354(v268);
          v269 = sub_100005480();
          v270 = v363;
          sub_1000833D8(v269, v271, v363);
          v272 = sub_100005480();
          v204(v272);
          v273 = *(v322 + 16);
          v274 = v355;
          v275 = v361;
          v273(v355, v340, v361);
          v382[0] = v274;
          v276 = v324;
          v273(v324, v341, v275);
          v382[1] = v276;
          v277 = v325;
          v273(v325, v342, v275);
          v382[2] = v277;
          v278 = v326;
          v273(v326, v343, v275);
          v382[3] = v278;
          v279 = *(v187 + 16);
          v280 = v360;
          v279(v360, v344, a5);
          v382[4] = v280;
          v281 = v356;
          v279(v356, v345, a5);
          v382[5] = v281;
          v282 = v329;
          v279(v329, v346, a5);
          v382[6] = v282;
          v283 = v330;
          v279(v330, v347, a5);
          v382[7] = v283;
          v284 = v331;
          v279(v331, v348, a5);
          v382[8] = v284;
          v285 = v332;
          v279(v332, v349, a5);
          v382[9] = v285;
          v286 = v333;
          v279(v333, v350, a5);
          v382[10] = v286;
          v287 = v334;
          v279(v334, v351, a5);
          v382[11] = v287;
          v288 = v335;
          v279(v335, v352, a5);
          v382[12] = v288;
          v289 = v336;
          v279(v336, v353, a5);
          v382[13] = v289;
          v290 = v337;
          v279(v337, v354, a5);
          v382[14] = v290;
          v291 = v319;
          v279(v319, v328, a5);
          v382[15] = v291;
          v381[0] = v275;
          v381[1] = v275;
          v381[2] = v275;
          v381[3] = v275;
          v381[4] = a5;
          v381[5] = a5;
          v381[6] = a5;
          v381[7] = a5;
          v381[8] = a5;
          v381[9] = a5;
          v381[10] = a5;
          v381[11] = a5;
          v381[12] = a5;
          v381[13] = a5;
          v381[14] = a5;
          v381[15] = a5;
          v364 = v270;
          WitnessTable = swift_getWitnessTable();
          v366 = WitnessTable;
          v367 = WitnessTable;
          v368 = WitnessTable;
          v369 = v270;
          v370 = v270;
          v371 = v270;
          v372 = v270;
          v373 = v270;
          v374 = v270;
          v375 = v270;
          v376 = v270;
          v377 = v270;
          v378 = v270;
          v379 = v270;
          v380 = v270;
          sub_10012E24C(v382, 16, v381);
          v292 = sub_100005480();
          v204(v292);
          (v204)(v354, a5);
          (v204)(v353, a5);
          (v204)(v352, a5);
          (v204)(v351, a5);
          (v204)(v350, a5);
          (v204)(v349, a5);
          (v204)(v348, a5);
          (v204)(v347, a5);
          (v204)(v346, a5);
          (v204)(v345, a5);
          (v204)(v344, a5);
          v293 = v359;
          v359(v343, v275);
          v293(v342, v275);
          v293(v341, v275);
          v293(v340, v275);
          v294 = sub_100007EE8();
          v204(v294);
          (v204)(v337, a5);
          (v204)(v336, a5);
          (v204)(v335, a5);
          (v204)(v334, a5);
          (v204)(v333, a5);
          (v204)(v332, a5);
          (v204)(v331, a5);
          (v204)(v330, a5);
          (v204)(v329, a5);
          (v204)(v356, a5);
          (v204)(v360, a5);
          v293(v326, v275);
          v293(v325, v275);
          v293(v324, v275);
          return (v293)(v355, v275);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10078CC38()
{
  sub_100011748();
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = *(v0 + 16);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v7 + 16))(v5, v1);
  type metadata accessor for LocationViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10004F034(v5, v10, v6);
  sub_1000180EC(v10, &unk_100CD81B0);
  sub_10001F718();
  return sub_10078E6E4(v5, v8);
}

uint64_t sub_10078CD48()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  type metadata accessor for NotificationsOptInAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v5);
  sub_1000180EC(v8, &unk_100CD81B0);
  sub_10001F718();
  return sub_10078E6E4(v4, v6);
}

uint64_t sub_10078CE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = sub_100074F7C();
  type metadata accessor for LocationComponentAction(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for URL();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = sub_100004A48();
  sub_10078E73C(v19, v11, v20);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10078E6E4(v11, type metadata accessor for LocationComponentAction);
  }

  else
  {
    v21 = *(v11 + *(sub_10022C350(&qword_100CA6680) + 48));
    (*(v14 + 32))(v18, v11, v12);
    if ((v21 & 1) == 0)
    {
      v37 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v22);
      v36 = v23;
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_10078E79C(&qword_100CA3040, 255, type metadata accessor for OpenExternalURLOptionsKey);
      Dictionary.init(dictionaryLiteral:)();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v37 openURL:v36 options:isa completionHandler:0];
    }

    (*(v14 + 8))(v18, v12);
  }

  sub_10074C2C8();
  v25 = sub_10022C350(&qword_100CA6658);
  v26 = v4 + *(v25 + 48);
  v27 = *(v25 + 64);
  v28 = sub_100004A48();
  sub_10078E73C(v28, v4, v29);
  v30 = *(a3 + 16);
  *v26 = *a3;
  *(v26 + 16) = v30;
  *(v26 + 32) = *(a3 + 32);
  sub_100035AD0(a4, v4 + v27, &unk_100CB2CF0);
  type metadata accessor for LocationViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v31 = sub_100023184();
  sub_10004F034(v31, v32, v33);
  sub_1000180EC(v39, &unk_100CD81B0);
  sub_10001F718();
  return sub_10078E6E4(v4, v34);
}

uint64_t sub_10078D194(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *(v2 + 16);
  v10 = v7 - v6 + *(sub_10022C350(&qword_100CA6648) + 48);
  sub_10078E73C(a1, v8, type metadata accessor for LocationFooterAction);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a2 + 32);
  type metadata accessor for LocationViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_10004F034(v8, v14, v9);
  sub_1000180EC(v14, &unk_100CD81B0);
  sub_10001F718();
  return sub_10078E6E4(v8, v12);
}

uint64_t sub_10078D2CC()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100074F7C();
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if (qword_100CA2158 != -1)
  {
    swift_once();
  }

  static WeatherClock.date.getter();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  (*(v4 + 8))(v8, v2);
  v17[0] = v10;
  sub_10078E79C(&qword_100CD6DA8, v11, type metadata accessor for LocationInteractor);
  Updatable.save<A>(setting:value:)();
  if (qword_100CA2160 != -1)
  {
    swift_once();
  }

  LOBYTE(v17[0]) = 1;
  Updatable.save<A>(setting:value:)();
  type metadata accessor for LocationViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = sub_100023184();
  sub_10004F034(v12, v13, v14);
  sub_1000180EC(v17, &unk_100CD81B0);
  sub_10001F718();
  return sub_10078E6E4(v0, v15);
}

uint64_t sub_10078D534()
{
  sub_10022C350(&qword_100CA3508);
  sub_100011748();
  type metadata accessor for MainAction();
  sub_100008E64();
  v0 = sub_100014E1C();
  sub_100016E9C(v0, xmmword_100A2D320);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationsOptInAction();
  swift_storeEnumTagMultiPayload();
  v1 = swift_storeEnumTagMultiPayload();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v2 = sub_100013C0C(v1);
  sub_100049C34(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0], v13, v14, v15, v16, v17, v18);
  sub_1000180EC(v12, &qword_100CA3510);
  return sub_1000180EC(v19, &unk_100CD81B0);
}

uint64_t sub_10078D6F4()
{
  sub_10022C350(&qword_100CA3508);
  sub_100011748();
  type metadata accessor for MainAction();
  sub_100008E64();
  v0 = sub_100014E1C();
  sub_100016E9C(v0, xmmword_100A2D320);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationsOptInAction();
  swift_storeEnumTagMultiPayload();
  v1 = swift_storeEnumTagMultiPayload();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v2 = sub_100013C0C(v1);
  sub_100049C34(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0], v13, v14, v15, v16, v17, v18);
  sub_1000180EC(v12, &qword_100CA3510);
  return sub_1000180EC(v19, &unk_100CD81B0);
}

uint64_t sub_10078D828()
{
  sub_100011748();
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (v10 == 1)
  {
    static WeatherClock.date.getter();
    sub_1000161C0((v0 + 32), *(v0 + 56));
    sub_100533CDC();

    sub_1007C5B30(v1, v8);

    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    sub_1000161C0((v0 + 32), *(v0 + 56));
    return sub_100533B74();
  }
}

void sub_10078D97C(uint64_t a1)
{
  State = type metadata accessor for VisibleLocationWeatherLoadState();
  __chkstk_darwin(State - 8);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (HIBYTE(v22) == 1)
  {
    static WeatherClock.date.getter();

    sub_1007C6C04(v6);

    sub_1000161C0((v1 + 32), *(v1 + 56));
    sub_100535DE0();
    sub_10078E6E4(v6, type metadata accessor for VisibleLocationWeatherLoadState);
    (*(v9 + 8))(v13, v7);
  }

  else
  {
    sub_1000161C0((v1 + 32), *(v1 + 56));
    sub_100534E74(a1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
  }
}

uint64_t sub_10078DB3C(uint64_t a1, int a2)
{
  sub_100011748();
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (v5 == 1)
  {

    sub_1007C6158(v2, a2);
  }

  return result;
}

uint64_t sub_10078DBD8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a5;
  v73 = a6;
  v78 = a3;
  v79 = a4;
  v80 = a2;
  v88 = a1;
  type metadata accessor for Date();
  sub_1000037C4();
  v76 = v9;
  v77 = v8;
  __chkstk_darwin(v8);
  v87 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  __chkstk_darwin(v11);
  v86 = &v68 - v12;
  v85 = type metadata accessor for ComponentPositionData();
  sub_1000037C4();
  v75 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v84 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v83 = &v68 - v18;
  v89 = type metadata accessor for LocationData();
  sub_1000037C4();
  v82 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v81 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v90 = &v68 - v24;
  v25 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v25 - 8);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = sub_10022C350(&qword_100CD5370);
  __chkstk_darwin(v29 - 8);
  sub_100074F7C();
  type metadata accessor for ComponentData();
  sub_1000037C4();
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v37 = &v68 - v36;
  v38 = *(v7 + 56);
  v39 = (v7 + 32);
  v41 = v40;
  v42 = sub_1000161C0(v39, v38);
  v43 = type metadata accessor for LocationComponentContainerViewModel();
  sub_10078E73C(&v88[*(v43 + 20)], v28, type metadata accessor for LocationComponentViewModel);
  sub_1005376E8();
  if (sub_100024D10(v6, 1, v41) == 1)
  {
    return sub_1000180EC(v6, &qword_100CD5370);
  }

  v88 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v31;
  v46 = v78;
  v71 = v45;
  v47 = *(v45 + 32);
  v70 = v45 + 32;
  v69 = v47;
  v47(v37, v6, v41);
  sub_1000161C0(v42 + 1, v42[4]);
  if (dispatch thunk of LocationPrivacySamplerType.canRecordLocation(_:)())
  {
    Location.Identifier.coordinate.getter();
    Location.Identifier.coordinate.getter();
  }

  LocationData.init(latitudeDouble:longitudeDouble:)();
  result = v79;
  if (v79 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v46 < 0xFFFFFFFF80000000 || v79 < 0xFFFFFFFF80000000)
  {
    goto LABEL_13;
  }

  if (v46 <= 0x7FFFFFFF)
  {
    v49 = v37;
    v50 = v83;
    ComponentPositionData.init(row:column:)();
    v80 = *v42;
    v51 = v82;
    (*(v82 + 16))(v81, v90, v89);
    v68 = v15;
    v52 = v71;
    (*(v71 + 16))(v88, v37, v41);
    v53 = v75;
    (*(v75 + 16))(v84, v50, v85);
    v55 = v76;
    v54 = v77;
    v79 = v49;
    v56 = *(v76 + 16);
    v56(v86, v72, v77);
    v78 = v41;
    v56(v87, v73, v54);
    v57 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v58 = (v21 + *(v52 + 80) + v57) & ~*(v52 + 80);
    v59 = (v33 + *(v53 + 80) + v58) & ~*(v53 + 80);
    v60 = *(v55 + 80);
    v61 = (v68 + v60 + v59) & ~v60;
    v62 = (v74 + v60 + v61) & ~v60;
    v63 = swift_allocObject();
    (*(v51 + 32))(v63 + v57, v81, v89);
    v64 = v63 + v58;
    v65 = v78;
    v69(v64, v88, v78);
    v66 = v85;
    (*(v53 + 32))(v63 + v59, v84, v85);
    v67 = *(v55 + 32);
    v67(v63 + v61, v86, v54);
    v67(v63 + v62, v87, v54);
    Tracker.transaction(block:)();

    (*(v53 + 8))(v83, v66);
    (*(v82 + 8))(v90, v89);
    return (*(v71 + 8))(v79, v65);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10078E2B4(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = *(v3 + 16);
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  type metadata accessor for DebugAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v15 = 0;
  memset(v14, 0, sizeof(v14));

  sub_10004F034(v10, v14, v11);
  sub_1000180EC(v14, &unk_100CD81B0);
  sub_10001F718();
  return sub_10078E6E4(v10, v12);
}

uint64_t sub_10078E3B8()
{
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  sub_1008673F0(byte_100D8FB8A, 0xD000000000000010, 0x8000000100ADD660);
  sub_10095CD24();
}

uint64_t sub_10078E44C()
{

  sub_100006F14(v0 + 32);

  return v0;
}

uint64_t sub_10078E48C()
{
  sub_10078E44C();

  return swift_deallocClassInstance();
}

void sub_10078E544()
{
  v0 = type metadata accessor for LocationData();
  sub_100003AE8(v0);
  v1 = type metadata accessor for ComponentData();
  sub_100003AE8(v1);
  v2 = type metadata accessor for ComponentPositionData();
  sub_100003AE8(v2);
  v3 = type metadata accessor for Date();
  sub_100003AE8(v3);

  sub_100537A30();
}

uint64_t sub_10078E6E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10078E73C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10078E79C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_10078E7E4()
{
  v1 = OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10078E880(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController_deliverySchedules] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugNotificationDeliverySchedulesViewController();
  return objc_msgSendSuper2(&v3, "initWithStyle:", 2);
}

void sub_10078E8D0()
{
  *(v0 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10078E948()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugNotificationDeliverySchedulesViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    sub_1003C1790(0xD000000000000012, 0x8000000100AD5970, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10078EA9C(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v3 - 8);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v56 = v16 - v15;
  type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v57 = v18;
  v58 = v17;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v24 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:isa];

  v25 = *(v1 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController_deliverySchedules);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v25 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v51 = v24;
  v52 = v13;
  v53 = v11;
  (*(v57 + 16))(v21, v25 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * result, v58);
  static UIListContentConfiguration.subtitleCell()();
  v59 = 91;
  v60 = 0xE100000000000000;
  v63 = DeliveryScheduleEntity.state.getter();
  sub_10022C350(&qword_100CC6BC8);
  sub_10058D440();
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 8285;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29 = sub_10078E7E4();
  DeliveryScheduleEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v30 = type metadata accessor for Date();
  v55 = v1;
  v31 = v30;
  result = sub_10000556C(v10);
  if (v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v33 = Date._bridgeToObjectiveC()().super.isa;
  v34 = *(*(v31 - 8) + 8);
  v34(v10, v31);
  v35 = [v29 stringFromDate:v33];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010A7C();

  UIListContentConfiguration.text.setter();
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v59 = 0x3A64657461657263;
  v60 = 0xE900000000000020;
  v36 = OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter;
  v37 = *(v55 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter);
  DeliveryScheduleEntity.created.getter();
  dispatch thunk of Column.value.getter();
  result = sub_10000556C(v7);
  if (v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v38 = Date._bridgeToObjectiveC()().super.isa;
  v34(v7, v31);
  v39 = [v37 stringFromDate:v38];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010A7C();

  v40._countAndFlagsBits = 0x696669646F6D203BLL;
  v40._object = 0xEC000000203A6465;
  String.append(_:)(v40);
  v41 = *(v55 + v36);
  DeliveryScheduleEntity.modified.getter();
  v42 = v54;
  dispatch thunk of Column.value.getter();
  result = sub_10000556C(v42);
  if (!v32)
  {

    v43 = Date._bridgeToObjectiveC()().super.isa;
    v34(v42, v31);
    v44 = [v41 stringFromDate:v43];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100010A7C();

    v45 = v56;
    UIListContentConfiguration.secondaryText.setter();
    v46 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v46(&v59, 0);
    v47 = v53;
    v61 = v53;
    v62 = &protocol witness table for UIListContentConfiguration;
    v48 = sub_100042FB0(&v59);
    v49 = v52;
    (*(v52 + 16))(v48, v45, v47);
    v50 = v51;
    UITableViewCell.contentConfiguration.setter();
    [v50 setAccessoryType:1];
    (*(v49 + 8))(v45, v47);
    (*(v57 + 8))(v21, v58);
    return v50;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_10078F1D0()
{
  v1 = v0;
  v2 = type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController_deliverySchedules];
  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v2);
  v11 = objc_allocWithZone(type metadata accessor for DebugNotificationDeliveryScheduleViewController());
  sub_1007BA4F4();
  v13 = v12;
  v14 = [v1 navigationController];
  if (v14)
  {
    v15 = v14;
    [v14 pushViewController:v13 animated:1];

    v13 = v15;
  }
}

id sub_10078F4B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugNotificationDeliverySchedulesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10078F554@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v208 = a2;
  v3 = sub_10022C350(&qword_100CB8BE0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v203 = &v168 - v5;
  sub_1000038CC();
  v190 = type metadata accessor for AirQualityScaleCategory();
  sub_1000037C4();
  v189 = v6;
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_10000E70C();
  v187 = v9;
  sub_1000038CC();
  type metadata accessor for AirQualityScale();
  sub_1000037C4();
  v192 = v11;
  v193 = v10;
  __chkstk_darwin(v10);
  sub_100003848();
  v191 = v12;
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v180 = v18;
  v19 = sub_10022C350(&qword_100CA7188);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  v202 = v21;
  __chkstk_darwin(v22);
  sub_10000E70C();
  v200 = v23;
  sub_1000038CC();
  v178 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v177 = v24;
  __chkstk_darwin(v25);
  sub_1000038E4();
  v176 = v26;
  v27 = sub_10022C350(&qword_100CB8A48);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v199 = v30;
  sub_1000038CC();
  v174 = type metadata accessor for ConditionDetailMapViewModel();
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003848();
  v194 = v32;
  __chkstk_darwin(v33);
  sub_10000E70C();
  v198 = v34;
  v35 = sub_10022C350(&qword_100CC62B8);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  v196 = &v168 - v37;
  sub_1000038CC();
  v206 = type metadata accessor for AirQuality();
  sub_1000037C4();
  v197 = v38;
  __chkstk_darwin(v39);
  sub_1000038E4();
  v184 = v40;
  sub_1000038CC();
  v41 = type metadata accessor for NewsDataModel();
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_1000038E4();
  v205 = v43;
  v44 = sub_1000038CC();
  v195 = type metadata accessor for WeatherData(v44);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_1000038E4();
  v204 = v46;
  v47 = sub_10022C350(&qword_100CA37B0);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  v50 = &v168 - v49;
  v51 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  v53 = __chkstk_darwin(v52);
  v55 = &v168 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  sub_10000E70C();
  v207 = v56;
  v57 = sub_10022C350(&qword_100CD6E90);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  v61 = &v168 - v60;
  v62 = type metadata accessor for Location();
  sub_1000037C4();
  v64 = v63;
  v66 = __chkstk_darwin(v65);
  v68 = &v168 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v70 = &v168 - v69;
  sub_100790728(v61);
  v179 = type metadata accessor for AirQualityDetailViewState();
  if (sub_100024D10(v61, 1, v179) == 1)
  {
    sub_1000180EC(v61, &qword_100CD6E90);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10000703C(v71, qword_100D90B68);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Unable to make AirQualityDetailViewModel due to missing airQualityDetailViewState.", v74, 2u);
    }

    goto LABEL_14;
  }

  v171 = *(v64 + 16);
  v171(v68, v61, v62);
  sub_1000231A0();
  sub_1007915C0(v61, v75);
  (*(v64 + 32))(v70, v68, v62);
  v173 = a1;
  v76 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v77 = Location.id.getter();
  sub_1000864C0(v77, v78, v76);

  if (sub_100024D10(v50, 1, v51) == 1)
  {
    (*(v64 + 8))(v70, v62);
    v79 = &qword_100CA37B0;
    v80 = v50;
LABEL_9:
    sub_1000180EC(v80, v79);
LABEL_14:
    v92 = type metadata accessor for AirQualityDetailViewModel.Model(0);
    v93 = v208;
    sub_10001B350(v208, 1, 1, v92);
    v94 = type metadata accessor for AirQualityDetailViewModel(0);
    v95 = v93;
    return sub_10001B350(v95, 0, 1, v94);
  }

  v170 = v64;
  v172 = v62;
  v81 = v207;
  sub_1001070F4();
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1007915C0(v81, type metadata accessor for LocationWeatherDataState);
    (*(v170 + 8))(v70, v172);
    sub_1007915C0(v55, type metadata accessor for LocationWeatherDataState);
    goto LABEL_14;
  }

  v169 = v70;
  v82 = *(sub_10022C350(&qword_100CA75D8) + 48);
  v83 = v204;
  sub_1001070F4();
  v84 = v205;
  sub_1001070F4();
  sub_1007915C0(&v55[v82], type metadata accessor for PreprocessedWeatherData);
  v85 = v196;
  WeatherDataModel.airQuality.getter();
  v86 = v206;
  if (sub_100024D10(v85, 1, v206) == 1)
  {
    sub_100019EE0();
    sub_1007915C0(v84, v87);
    sub_100004A64();
    sub_1007915C0(v83, v88);
    sub_100014E44();
    sub_1007915C0(v81, v89);
    v90 = sub_100016EB8();
    v91(v90);
    v79 = &qword_100CC62B8;
    v80 = v85;
    goto LABEL_9;
  }

  v97 = v184;
  (*(v197 + 32))(v184, v85, v86);
  v98 = sub_100790D4C();
  v195 = v99;
  v196 = v98;
  v100 = v174;
  v101 = v198;
  v171(&v198[*(v174 + 20)], v169, v172);
  sub_1001A0D3C();
  v102 = [objc_opt_self() mainBundle];
  v209._object = 0x8000000100ADD7E0;
  v103._countAndFlagsBits = 0x65726F4D20656553;
  v103._object = 0xE800000000000000;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v209._countAndFlagsBits = 0xD000000000000030;
  v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v102, v104, v209);

  v106 = v100[8];
  v107 = enum case for WeatherMapOverlayKind.airQuality(_:);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v108 + 104))(&v101[v106], v107);
  *v101 = 0;
  *(v101 + 1) = 0;
  *&v101[v100[7]] = v105;
  v101[v100[9]] = 1;
  sub_1000161C0((v201 + 16), *(v201 + 40));
  v109 = v177;
  v110 = v176;
  v111 = v178;
  (*(v177 + 104))(v176, enum case for ArticlePlacementLocation.airQualityDetail(_:), v178);
  sub_1005C188C(v110, v199);
  (*(v109 + 8))(v110, v111);
  v112 = v175;
  sub_100095588();
  sub_100428C50(v112, v200);
  v113 = v180;
  AirQuality.scale.getter();
  v178 = AirQualityScale.displayName.getter();
  v177 = v114;
  v115 = *(v192 + 8);
  v116 = v113;
  v117 = v193;
  v115(v116, v193);
  v118 = v181;
  AirQuality.scale.getter();
  v119 = AirQualityScale.longDisplayName.getter();
  v121 = v120;
  v115(v118, v117);
  if (v121)
  {
    v181 = v121;
    v192 = v119;
    v122 = v185;
  }

  else
  {
    v122 = v185;
    AirQuality.scale.getter();
    v192 = AirQualityScale.displayName.getter();
    v181 = v123;
    v115(v122, v117);
  }

  v185 = AirQuality.displayDescription.getter();
  v180 = v124;
  v125 = v183;
  AirQuality.scale.getter();
  v176 = AirQualityScale.range.getter();
  v175 = v126;
  v115(v125, v117);
  AirQuality.scale.getter();
  v127 = AirQuality.index.getter();
  v128 = AirQualityScale.fraction(for:)(v127);
  v115(v122, v117);
  v129 = v187;
  AirQuality.currentScaleCategory.getter();
  v183 = AirQualityScaleCategory.description.getter();
  v174 = v130;
  v131 = v97;
  v132 = *(v189 + 8);
  v133 = v190;
  v132(v129, v190);
  v134 = v186;
  AirQuality.scale.getter();
  v189 = AirQualityScale.displayLabel.getter();
  v187 = v135;
  v115(v134, v117);
  v136 = v188;
  AirQuality.currentScaleCategory.getter();
  v171 = AirQualityScaleCategory.recommendation.getter();
  v168 = v137;
  v132(v136, v133);
  AirQuality.primaryPollutant.getter();
  v138 = v201;
  sub_100790E6C(v97);
  v190 = v139;
  v188 = v140;
  v186 = v141;
  sub_1000161C0((v138 + 56), *(v138 + 80));
  v142 = dispatch thunk of AirQualityDetailStringBuilderType.attributionDescription(for:)();
  v143 = v191;
  AirQuality.scale.getter();
  v144 = AirQualityScale.gradientStops.getter();
  v115(v143, v117);
  v145 = v198;
  sub_1001AF71C();
  v146 = v200;
  sub_100095588();
  v147 = v182;
  sub_100790728(v182);
  sub_1000180EC(v146, &qword_100CA7188);
  sub_1000180EC(v199, &qword_100CB8A48);
  sub_1007915C0(v145, type metadata accessor for ConditionDetailMapViewModel);
  (*(v197 + 8))(v131, v206);
  sub_100019EE0();
  sub_1007915C0(v205, v148);
  sub_100004A64();
  sub_1007915C0(v204, v149);
  sub_100014E44();
  sub_1007915C0(v207, v150);
  v151 = sub_100016EB8();
  v152(v151);
  v153 = v179;
  if (sub_100024D10(v147, 1, v179) == 1)
  {
    sub_1000180EC(v147, &qword_100CD6E90);
    v154 = 0;
  }

  else
  {
    v154 = *(v147 + *(v153 + 20));
    sub_1000231A0();
    sub_1007915C0(v147, v155);
  }

  v156 = v181;
  v157 = v208;
  v158 = v177;
  *v208 = v178;
  v157[1] = v158;
  v157[2] = v192;
  v157[3] = v156;
  v159 = v195;
  v157[4] = v196;
  v157[5] = v159;
  v160 = v180;
  v157[6] = v185;
  v157[7] = v160;
  *(v157 + 64) = 0;
  v161 = v175;
  v157[9] = v176;
  v157[10] = v161;
  *(v157 + 11) = v128;
  v162 = v174;
  v157[12] = v183;
  v157[13] = v162;
  v163 = v187;
  v157[14] = v189;
  v157[15] = v163;
  v164 = v168;
  v157[16] = v171;
  v157[17] = v164;
  v165 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  sub_100051BBC();
  v166 = (v157 + v165[15]);
  v167 = v188;
  *v166 = v190;
  v166[1] = v167;
  v166[2] = v186;
  *(v157 + v165[16]) = v142;
  *(v157 + v165[17]) = v144;
  sub_1001070F4();
  sub_100051BBC();
  *(v157 + v165[20]) = v154;
  sub_10001B350(v157, 0, 1, v165);
  v94 = type metadata accessor for AirQualityDetailViewModel(0);
  v95 = v157;
  return sub_10001B350(v95, 0, 1, v94);
}

uint64_t sub_100790728@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v39 = type metadata accessor for LocationPreviewModalViewState(0);
  v1 = __chkstk_darwin(v39);
  v35 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v37 = v33 - v3;
  v38 = type metadata accessor for LocationPreviewViewState(0);
  v4 = __chkstk_darwin(v38);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = v33 - v6;
  v41 = type metadata accessor for AirQualityDetailViewState();
  v7 = __chkstk_darwin(v41);
  v33[1] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v33[2] = v33 - v10;
  __chkstk_darwin(v9);
  v11 = type metadata accessor for ModalViewState(0);
  v12 = __chkstk_darwin(v11);
  v40 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v33 - v15;
  __chkstk_darwin(v14);
  v18 = v33 - v17;
  v19 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v20 = __chkstk_darwin(v19);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1001070F4();
    sub_1001070F4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_17;
    }

    v23 = type metadata accessor for ModalViewState.LocationDetailModal;
    v24 = v22;
  }

  else
  {
    v23 = type metadata accessor for ModalViewState;
    v24 = v18;
  }

  sub_1007915C0(v24, v23);
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload())
  {
    v25 = type metadata accessor for ModalViewState;
  }

  else
  {
    v26 = v36;
    sub_1001070F4();
    v16 = v37;
    sub_1001AF71C();
    sub_1007915C0(v26, type metadata accessor for LocationPreviewViewState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_17:
      sub_1001070F4();
      sub_1001070F4();
      v30 = 0;
      return sub_10001B350(v42, v30, 1, v41);
    }

    v25 = type metadata accessor for LocationPreviewModalViewState;
  }

  sub_1007915C0(v16, v25);
  v27 = v40;
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v29 = type metadata accessor for ModalViewState;
    goto LABEL_14;
  }

  v28 = type metadata accessor for ModalViewState.MapViewModal(0);
  if (sub_100024D10(v27, 1, v28) != 1)
  {
    v31 = v34;
    sub_1001070F4();
    v27 = v35;
    sub_1001AF71C();
    sub_1007915C0(v31, type metadata accessor for LocationPreviewViewState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_17;
    }

    v29 = type metadata accessor for LocationPreviewModalViewState;
LABEL_14:
    sub_1007915C0(v27, v29);
    goto LABEL_15;
  }

  sub_1000180EC(v27, &qword_100CA65E0);
LABEL_15:
  v30 = 1;
  return sub_10001B350(v42, v30, 1, v41);
}

uint64_t sub_100790D4C()
{
  v0 = 0x776F6C2E697161;
  v1 = type metadata accessor for AirQualityScaleCategory();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AirQuality.currentScaleCategory.getter();
  v5 = AirQualityScaleCategory.glyph.getter();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }

    else
    {
    }
  }

  return v0;
}

void sub_100790E6C(uint64_t a1)
{
  v2 = type metadata accessor for AirQuality();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AirPollutant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = 0;
  v55 = a1;
  v10 = AirQuality.pollutants.getter();
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v64 = v7 + 16;
  v65 = v7;
  v63 = (v7 + 8);

  v18 = 0;
  v60 = _swiftEmptyArrayStorage;
  v62 = v17;
LABEL_4:
  v19 = v18;
  while (v15)
  {
    v18 = v19;
LABEL_10:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v65 + 16))(v9, *(v11 + 56) + *(v65 + 72) * (v20 | (v18 << 6)), v6);
    v21 = AirPollutant.standaloneDisplayName.getter();
    if (!v22)
    {
      (*v63)(v9, v6);
      goto LABEL_4;
    }

    v23 = v22;
    v61 = v21;
    v24 = v6;
    v25 = sub_1007914F8(&v67);
    v26 = AirPollutant.abbreviatedDisplayName(font:)(v25);

    if (v26)
    {
      v27 = AirPollutant.formattedValueString.getter();
      v29 = v28;
      (*v63)(v9, v24);
      if (v29)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069DF1C();
          v60 = v34;
        }

        v30 = v60[2];
        v31 = v30 + 1;
        if (v30 >= v60[3] >> 1)
        {
          v51 = v60[2];
          v52 = v30 + 1;
          sub_10069DF1C();
          v30 = v51;
          v31 = v52;
          v60 = v35;
        }

        v32 = v60;
        v60[2] = v31;
        v33 = &v32[5 * v30];
        v33[4] = v61;
        v33[5] = v23;
        v33[6] = v26;
        v33[7] = v27;
        v33[8] = v29;
        v6 = v24;
        v11 = v62;
        goto LABEL_4;
      }

      v19 = v18;
      v6 = v24;
      v11 = v62;
    }

    else
    {
      v6 = v24;
      (*v63)(v9, v24);

      v19 = v18;
      v11 = v62;
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  if (v60[2])
  {
    v36 = [objc_opt_self() mainBundle];
    v68._object = 0x8000000100ADD820;
    v37._object = 0x8000000100ACAE90;
    v68._countAndFlagsBits = 0xD00000000000005FLL;
    v37._countAndFlagsBits = 0xD000000000000011;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v68);

    Array.sorting<A>(on:)();
  }

  else
  {

    v39 = v59;
    static Logger.airPollutant.getter();
    v40 = v56;
    v41 = v57;
    v42 = v58;
    (*(v57 + 16))(v56, v55, v58);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      *v45 = 136446210;
      AirQuality.pollutants.getter();
      v46 = Dictionary.description.getter();
      v48 = v47;

      (*(v41 + 8))(v40, v42);
      v49 = sub_100078694(v46, v48, &v66);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "No view models created for pollutants = %{public}s", v45, 0xCu);
      sub_100006F14(v65);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    (*(v53 + 8))(v39, v54);
  }
}

id sub_1007914F8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    swift_beginAccess();
    v5 = *a1;
    *a1 = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1007915C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AutomationInfoSetting(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100791760@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v56 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = (&v46 - v6);
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v51 = v8;
  v52 = v7;
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CD6FC0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v47 = sub_10022C350(&qword_100CD6FC8);
  sub_1000037E8();
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  sub_10022C350(&qword_100CD6FD0);
  sub_1000037C4();
  v48 = v21;
  v49 = v22;
  __chkstk_darwin(v21);
  v24 = &v46 - v23;
  v50 = sub_10022C350(&qword_100CD6FD8);
  sub_1000037E8();
  __chkstk_darwin(v25);
  v27 = &v46 - v26;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v28 = &v20[*(sub_10022C350(&qword_100CD6FE0) + 44)];
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v29 = sub_10022C350(&qword_100CD6FE8);
  sub_100791D10(v2, &v17[*(v29 + 44)]);
  *&v17[*(v12 + 44)] = 0x3FF0000000000000;
  sub_100095588();
  sub_100095588();
  v30 = &v28[*(sub_10022C350(&qword_100CD6FF0) + 48)];
  *v30 = 0;
  v30[8] = 0;
  sub_1000180EC(v17, &qword_100CD6FC0);
  sub_1000180EC(v14, &qword_100CD6FC0);
  static AccessibilityChildBehavior.ignore.getter();
  v31 = sub_100006F64(&qword_100CD6FF8, &qword_100CD6FC8);
  v32 = v47;
  View.accessibilityElement(children:)();
  (*(v51 + 8))(v10, v52);
  sub_1000180EC(v20, &qword_100CD6FC8);
  v57 = v32;
  v58 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v48;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v49 + 8))(v24, v33);
  v34 = *(v2 + 104);
  v57 = *(v2 + 96);
  v58 = v34;
  sub_10002D5A4();

  v35 = Text.init<A>(_:)();
  v37 = v36;
  LOBYTE(v32) = v38;
  v39 = v54;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10010CD64(v35, v37, v32 & 1);

  sub_1000180EC(v27, &qword_100CD6FD8);
  v40 = *(v2 + 80);
  v41 = *(v2 + 88);
  v42 = v53;
  *v53 = v40;
  *(v42 + 8) = v41;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v43 = v55;
  sub_100793A4C();
  v44 = v39 + *(sub_10022C350(&qword_100CD7000) + 36);
  type metadata accessor for AutomationInfoProperty();
  sub_100793A4C();

  sub_1007939F4(v43, type metadata accessor for AutomationInfo);
  sub_1007939F4(v42, type metadata accessor for AutomationInfo);
  *v44 = 0;
  *(v44 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v44 + 16) = result;
  *(v44 + 24) = 0;
  return result;
}

uint64_t sub_100791D10@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v79 = sub_10022C350(&qword_100CD7008);
  __chkstk_darwin(v79);
  v82 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = &v62 - v5;
  v6 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CD7010);
  v72 = *(v18 - 8);
  v73 = v18;
  __chkstk_darwin(v18);
  v71 = &v62 - v19;
  v70 = sub_10022C350(&qword_100CD7018);
  __chkstk_darwin(v70);
  v78 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = &v62 - v22;
  v23 = *(a1 + 1);
  v87[0] = *a1;
  v87[1] = v23;
  v24 = sub_10002D5A4();

  v69 = v24;
  v25 = Text.init<A>(_:)();
  v66 = v26;
  v67 = v25;
  v28 = v27;
  v68 = v29;
  v30 = static Font.largeTitle.getter();
  v65 = static Font.title2.getter();
  v31 = *(type metadata accessor for PrecipitationTotalComponentView(0) + 24);
  v80 = a1;
  v32 = &a1[v31];
  v33 = *v32;
  if (v32[8] == 1)
  {
    v89 = v33 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v64 = v10;
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v33, 0);
    v10 = v64;
    (*(v15 + 8))(v17, v14);
    LOBYTE(v33) = v89;
  }

  v35 = enum case for Font.Leading.tight(_:);
  v36 = type metadata accessor for Font.Leading();
  (*(*(v36 - 8) + 104))(v13, v35, v36);
  sub_10001B350(v13, 0, 1, v36);
  sub_100095588();

  v37 = v65;

  sub_1001C987C(v30, v37, v33 & 1, v10);
  v38 = v13;
  v39 = v67;
  v40 = v66;
  v41 = Text.font(_:)();
  v63 = v42;
  v64 = v41;
  v44 = v43;
  v62 = v45;

  sub_10010CD64(v39, v40, v28 & 1);

  sub_1000180EC(v38, &qword_100CACFF0);
  KeyPath = swift_getKeyPath();
  v47 = swift_getKeyPath();
  v91 = v44 & 1;
  v90 = 0;
  v87[0] = v64;
  v87[1] = v63;
  LOBYTE(v87[2]) = v44 & 1;
  v87[3] = v62;
  v87[4] = KeyPath;
  v87[5] = 1;
  LOBYTE(v87[6]) = 0;
  v87[7] = v47;
  v87[8] = 0x3FE0000000000000;
  v48 = v74;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v49 = sub_10022C350(&qword_100CB7080);
  v50 = sub_10040DCEC();
  v51 = v71;
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  (*(v75 + 8))(v48, v76);
  memcpy(__dst, v87, 0x48uLL);
  sub_1000180EC(__dst, &qword_100CB7080);
  v52 = v80;
  v53 = *(v80 + 3);
  v87[0] = *(v80 + 2);
  v87[1] = v53;
  v84 = v49;
  v85 = v50;
  swift_getOpaqueTypeConformance2();
  v54 = v77;
  v55 = v73;
  View.accessibilityLabel<A>(_:)();
  (*(v72 + 8))(v51, v55);
  *(v54 + *(v70 + 36)) = 0x3FF0000000000000;
  v56 = *(v79 + 44);
  v57 = swift_getKeyPath();
  v58 = v81;
  *&v81[v56] = v57;
  sub_10022C350(&qword_100CA3EE8);
  swift_storeEnumTagMultiPayload();
  v84 = v87;
  v85 = &v87[17];
  v86 = &v87[34];
  sub_100792518(v52, &v84);
  memcpy(v58, v87, 0x198uLL);
  v59 = v78;
  sub_100095588();
  v60 = v82;
  sub_100095588();
  sub_100095588();
  sub_10022C350(&qword_100CD7020);
  sub_100095588();
  sub_1000180EC(v58, &qword_100CD7008);
  sub_1000180EC(v54, &qword_100CD7018);
  sub_1000180EC(v60, &qword_100CD7008);
  return sub_1000180EC(v59, &qword_100CD7018);
}

uint64_t sub_100792518@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v45 - v6;
  v52 = type metadata accessor for Font.Leading();
  v7 = *(v52 - 8);
  __chkstk_darwin(v52);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EnvironmentValues();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PrecipitationTotalComponentView(0);
  v17 = &a1[*(v46 + 24)];
  v18 = *v17;
  v51 = v17[8];
  if (v51 == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      (*(v11 + 104))(v13, enum case for Font.TextStyle.title3(_:), v10);
      static Font.Weight.semibold.getter();
      v19 = static Font.system(_:weight:)();
      (*(v11 + 8))(v13, v10);
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v45 = v18;
    v21 = v9;
    v22 = v16;
    v23 = v7;
    v24 = a1;
    v25 = v11;
    v26 = v10;
    v27 = v20;
    os_log(_:dso:log:_:_:)();

    v10 = v26;
    v11 = v25;
    a1 = v24;
    v7 = v23;
    v16 = v22;
    v9 = v21;
    v18 = v45;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v18, 0);
    (*(v53 + 8))(v16, v54);
    if (__dst[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = static Font.headline.getter();
LABEL_6:
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v28 = v52;
  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v52);
  v29 = Font.leading(_:)();

  (*(v7 + 8))(v9, v28);
  if (!v51)
  {

    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v18, 0);
    (*(v53 + 8))(v16, v54);
    if (__dst[0] != 1)
    {
      goto LABEL_8;
    }

LABEL_11:
    v39 = static Font.footnote.getter();
    goto LABEL_14;
  }

  if (v18)
  {
    goto LABEL_11;
  }

LABEL_8:
  v30 = v29;
  v31 = v47;
  sub_10009ECC8();
  v33 = v48;
  v32 = v49;
  v34 = v50;
  (*(v49 + 104))(v48, enum case for ContentSizeCategory.extraExtraLarge(_:), v50);
  v35 = sub_1005B51FC(v31, v33);
  v36 = *(v32 + 8);
  v36(v33, v34);
  v36(v31, v34);
  if (v35)
  {
    v37 = static Font.caption2.getter();
  }

  else
  {
    v37 = static Font.subheadline.getter();
  }

  v39 = v37;
  v29 = v30;
LABEL_14:
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v40 = 0.0;
  }

  else
  {
    v40 = -4.0;
  }

  memcpy(v59, a1, sizeof(v59));
  memcpy(v58, a1, sizeof(v58));
  memcpy(v60, a1, sizeof(v60));
  memcpy(v57, a1, sizeof(v57));
  memcpy(v61, a1, sizeof(v61));
  memcpy(v56, a1, sizeof(v56));
  v41 = *v55;
  v42 = *(v55 + 8);
  v43 = *(v55 + 16);
  memcpy(v62, a1, 0x70uLL);
  v62[14] = v19;
  *&v62[15] = v40;
  v62[16] = v39;
  memcpy(v41, v62, 0x88uLL);
  memcpy(v63, v57, 0x70uLL);
  v63[14] = v29;
  v63[15] = 0xC014000000000000;
  v63[16] = v39;
  memcpy(v42, v63, 0x88uLL);
  memcpy(v64, v56, 0x70uLL);
  v64[14] = v19;
  *&v64[15] = v40;
  v64[16] = 0;
  memcpy(v43, v64, 0x88uLL);
  memcpy(v65, v56, sizeof(v65));
  v66 = v19;
  v67 = v40;
  v68 = 0;
  sub_100428584(v59, __dst);

  sub_100428584(v60, __dst);
  sub_100428584(v61, __dst);
  sub_100793768(v62, __dst);
  sub_100793768(v63, __dst);
  sub_100793768(v64, __dst);
  sub_1007937A0(v65);
  memcpy(v69, v57, sizeof(v69));
  v70 = v29;
  v71 = 0xC014000000000000;
  v72 = v39;
  sub_1007937A0(v69);
  memcpy(__dst, v58, sizeof(__dst));
  v74 = v19;
  v75 = v40;
  v76 = v39;
  return sub_1007937A0(__dst);
}

double sub_100792C64(uint64_t a1)
{
  v3 = type metadata accessor for Font.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CanvasContentSizeEstimationContext(0);
  (*(v4 + 16))(v6, a1 + *(v7 + 20), v3);
  Font.lineHeight(in:)();
  if (*(v1 + 128))
  {

    Font.lineHeight(in:)();
  }

  (*(v4 + 8))(v6, v3);
  return *a1;
}

uint64_t sub_100792DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a1;
  v72 = a2;
  v76 = type metadata accessor for PrecipitationTotalCanvasContent.MeasurementCache(0);
  __chkstk_darwin(v76);
  v77 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v71 = &v64[-v6];
  v7 = type metadata accessor for MeasuredText(0);
  __chkstk_darwin(v7);
  v75 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v64[-v10];
  v12 = sub_10022C350(&qword_100CD7068);
  __chkstk_darwin(v12 - 8);
  v74 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v64[-v15];
  __chkstk_darwin(v17);
  v19 = &v64[-v18];
  v78 = v7;
  sub_10001B350(&v64[-v18], 1, 1, v7);
  if (*(v3 + 128))
  {
    v80 = *(v3 + 48);
    v81 = v80;

    sub_100358150(&v81, v79);
    sub_10002D5A4();
    v20 = Text.init<A>(_:)();
    v69 = v16;
    v21 = v20;
    v68 = v11;
    v23 = v22;
    v70 = v19;
    v25 = v24;

    v26 = Text.font(_:)();
    v67 = v27;
    v65 = v28;
    v66 = v29;

    v19 = v70;
    sub_10010CD64(v21, v23, v25 & 1);

    type metadata accessor for CanvasContentMeasurementContext(0);
    v30 = v68;
    v31 = v67;
    GraphicsContext.resolve(_:)();
    GraphicsContext.ResolvedText.measure(in:)();
    v33 = v32;
    v35 = v34;
    v36 = v78;
    v37 = &v30[*(v78 + 20)];
    *v37 = v32;
    v37[1] = v34;
    Font.lineHeight(in:)();
    v39 = v38;
    sub_10010CD64(v26, v31, v65 & 1);

    sub_1000180EC(v19, &qword_100CD7068);
    if (v39 * 3.0 < v35)
    {
      v35 = v39 * 3.0;
    }

    v40 = type metadata accessor for GraphicsContext.ResolvedText();
    v41 = v69;
    (*(*(v40 - 8) + 32))(v69, v30, v40);
    v42 = v41 + *(v36 + 20);
    *v42 = v33;
    *(v42 + 8) = v35;
    sub_10001B350(v41, 0, 1, v36);
    sub_100793AA4(v41, v19);
  }

  v43 = *(v3 + 40);
  *&v80 = *(v3 + 32);
  *(&v80 + 1) = v43;
  sub_10002D5A4();
  v44 = v3;

  v45 = Text.init<A>(_:)();
  v47 = v46;
  v49 = v48;
  type metadata accessor for CanvasContentMeasurementContext(0);
  v50 = v75;
  GraphicsContext.resolve(_:)();
  GraphicsContext.ResolvedText.measure(in:)();
  v52 = v51;
  v54 = v53;
  sub_10010CD64(v45, v47, v49 & 1);

  v55 = v78;
  v56 = &v50[*(v78 + 20)];
  *v56 = v52;
  v56[1] = v54;
  v57 = *(v44 + 120);
  sub_100793A4C();
  sub_100095588();
  v58 = v74;
  sub_100793AA4(v19, v74);
  if (sub_100024D10(v58, 1, v55) == 1)
  {
    sub_1000180EC(v74, &qword_100CD7068);
    v59 = 0.0;
    v60 = 0.0;
  }

  else
  {
    v61 = &v74[*(v78 + 20)];
    v59 = *v61;
    v60 = v61[1];
    sub_1007939F4(v74, type metadata accessor for MeasuredText);
  }

  if (v52 <= v59)
  {
    v52 = v59;
  }

  sub_1007939F4(v75, type metadata accessor for MeasuredText);
  v62 = &v77[*(v76 + 24)];
  *v62 = v52;
  v62[1] = v54 + v57 + v60;
  sub_100793B14();
  return sub_100793B14();
}

uint64_t sub_1007933E0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CD7068);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for MeasuredText(0);
  __chkstk_darwin(v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10053D9FC();
  type metadata accessor for PrecipitationTotalCanvasContent.MeasurementCache(0);
  sub_100095588();
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    return sub_1000180EC(v6, &qword_100CD7068);
  }

  sub_100793B14();
  static Locale.current.getter();
  Locale.textDirectionIsRTL.getter();
  (*(v1 + 8))(v3, v0);
  GraphicsContext.draw(_:in:)();
  return sub_1007939F4(v9, type metadata accessor for MeasuredText);
}

unint64_t sub_1007937E0()
{
  result = qword_100CD7028;
  if (!qword_100CD7028)
  {
    sub_10022E824(&qword_100CD7000);
    sub_10079389C();
    sub_100322C80(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7028);
  }

  return result;
}

unint64_t sub_10079389C()
{
  result = qword_100CD7030;
  if (!qword_100CD7030)
  {
    sub_10022E824(&qword_100CD6FD8);
    sub_10022E824(&qword_100CD6FC8);
    sub_100006F64(&qword_100CD6FF8, &qword_100CD6FC8);
    swift_getOpaqueTypeConformance2();
    sub_100322C80(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7030);
  }

  return result;
}

uint64_t sub_1007939F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100793A4C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100793AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD7068);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100793B14()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_100793B94()
{
  type metadata accessor for MeasuredText(319);
  if (v0 <= 0x3F)
  {
    sub_100007B54(319, &unk_100CD70D8, type metadata accessor for MeasuredText, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100793C60(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2628 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2638 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2630 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2620 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2618 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_100793DCC(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003908();
  __chkstk_darwin(v9);
  v79 = &v74 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v74 - v31;
  __chkstk_darwin(v33);
  v35 = &v74 - v34;
  v36 = sub_100793C60(a1, a2);
  v37 = OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v37, v14, &qword_100CA5008);
  v38 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v38) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v39], v23, v40);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v41);
    sub_100566A5C(v36, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v43);
      v42 = 0;
      v44 = &v32[*(v6 + 20)];
      v45 = v82[1];
      *v44 = v82[0];
      *(v44 + 1) = v45;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v42 = 1;
LABEL_7:
  v46 = v76;
  sub_10001B350(v32, v42, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v46, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v47 + v48, v20, v49);
  sub_100566A94(v36, v84);
  v50 = v77;
  if (v85 & 1) != 0 || (sub_100011474(), v51 = v79, sub_1001B6FB0(v20, v79, v52), v53 = (v51 + *(v6 + 20)), v54 = v84[1], *v53 = v84[0], v53[1] = v54, sub_100035AD0(v35, v50, &qword_100CAC7F8), sub_10001BD64(), v57 = v75, sub_10031694C(v55 + v56, v75, v58), sub_100566AB0(v36, v86), v59 = v80, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v57, v59, v60);
    v61 = (v59 + *(v6 + 20));
    v62 = v86[1];
    *v61 = v86[0];
    v61[1] = v62;
    sub_10001BD64();
    v65 = v78;
    sub_10031694C(v63 + v64, v78, v66);
    sub_100566AE8(v36, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v67 = v65;
      v68 = v81;
      sub_1001B6FB0(v67, v81, v69);
      v70 = (v68 + *(v6 + 20));
      v71 = v88[1];
      *v70 = v88[0];
      v70[1] = v71;
      v72 = sub_100924C14(v46, v51, v50, v59, v68);
      sub_1000180EC(v35, &qword_100CAC7F8);
      return v72;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007943F4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v115 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v120 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3ECD0;
    v13 = sub_10022C350(&qword_100CAC7F0);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    v16 = *(v7 + 80);
    v17 = v13;
    v18 = swift_allocObject();
    sub_10001361C(v18, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v19, v18 + v14, v20);
    *(v12 + 32) = sub_1001B38A0(v18);
    *(v12 + 40) = v21;
    *(v12 + 48) = v22;
    v23 = swift_allocObject();
    sub_100003E18(v23);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v23 + v14, v7);
    *(v12 + 56) = sub_1001B38A0(v23);
    *(v12 + 64) = v24;
    *(v12 + 72) = v25;
    v117 = v17;
    v26 = swift_allocObject();
    sub_100003E18(v26);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v26 + v14, v7);
    *(v12 + 80) = sub_1001B38A0(v26);
    *(v12 + 88) = v27;
    *(v12 + 96) = v28;
    v29 = v15;
    v118 = v14 + 2 * v15;
    v119 = v15;
    v30 = v16;
    v31 = swift_allocObject();
    v32 = sub_10001361C(v31, xmmword_100A2D320) + v14;
    v33 = *(a1 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v32[v29], v7);
    *(v12 + 104) = sub_1001B38A0(v31);
    *(v12 + 112) = v34;
    *(v12 + 120) = v35;
    v116 = v30;
    v36 = swift_allocObject();
    sub_1000056EC(v36);
    v38 = v37 + v14;
    v39 = v120;
    v40 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v38 + v119, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v14;
    v46 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v47 = v119;
    sub_10031694C(v46 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v48;
    *(v12 + 168) = v49;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v14;
    v53 = v120;
    v54 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v52 + v47;
    v56 = v47;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v57;
    *(v12 + 192) = v58;
    v59 = swift_allocObject();
    sub_100003E18(v59);
    v61 = v60 + v14;
    v62 = *(v53 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v14, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 200) = sub_1001B38A0(v59);
    *(v12 + 208) = v63;
    *(v12 + 216) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    v65 = sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    sub_10001361C(v70, xmmword_100A2C3F0);
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
    v116 = v69;
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(v9, v82 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v83;
    *(v12 + 120) = v84;
    v85 = v67;
    v118 = v67;
    v86 = swift_allocObject();
    v87 = sub_10001361C(v86, xmmword_100A2D320);
    v117 = v9;
    v88 = v87 + v66;
    v89 = a1;
    v90 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v90 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v88[v85], v7);
    *(v12 + 128) = sub_1001B38A0(v86);
    *(v12 + 136) = v91;
    *(v12 + 144) = v92;
    v119 = v68;
    v93 = swift_allocObject();
    sub_100003E18(v93);
    v95 = v94 + v66;
    v96 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v95 + v118, v7);
    *(v12 + 152) = sub_1001B38A0(v93);
    *(v12 + 160) = v97;
    *(v12 + 168) = v98;
    v99 = swift_allocObject();
    sub_100003E18(v99);
    v101 = v100 + v66;
    v102 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v103 = v118;
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v101 + v118, v7);
    *(v12 + 176) = sub_1001B38A0(v99);
    *(v12 + 184) = v104;
    *(v12 + 192) = v105;
    v106 = sub_100017D80();
    *(v106 + 16) = 2;
    *(v106 + 24) = 4;
    v107 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v106 + v66 + v103, v7);
    *(v12 + 200) = sub_1001B38A0(v106);
    *(v12 + 208) = v108;
    *(v12 + 216) = v109;
    v110 = sub_100017D80();
    *(v110 + 16) = 2;
    *(v110 + 24) = 4;
    v111 = *(v120 + 16);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v110 + v66, v7);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v110 + v66 + v103, v7);
    *(v12 + 224) = sub_1001B38A0(v110);
    *(v12 + 232) = v112;
    *(v12 + 240) = v113;
    sub_1003169AC(v117, v7);
  }

  return v12;
}

void sub_100794C4C()
{
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v14 = v13;
  v15 = v12;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC10;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
  v16 = v11;
  v17 = v10;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC10;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A4C530;
  v18 = v9;
  v19 = v8;
  v7[0] = xmmword_100A3BBB0;
  v7[1] = xmmword_100A3BBC0;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC00;
  v20 = v7;
  v21 = v6;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC20;
  v4[0] = xmmword_100A3BB70;
  v4[1] = xmmword_100A3BBB0;
  v22 = v5;
  v23 = v4;
  v3[0] = xmmword_100A2C3F0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC30;
  v24 = v3;
  v25 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC00;
  sub_10004EA7C(v1, 0);
  qword_100D908F0 = v0;
}

void sub_100794D50()
{
  sub_100013C2C(xmmword_100A2C3F0, xmmword_100A3BC10);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3AEB0;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC30;
  v20[0] = xmmword_100A3BB70;
  v20[1] = v1;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = v1;
  v19[1] = xmmword_100A3BC30;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = v2;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = v1;
  v17[1] = xmmword_100A3BC20;
  v16[0] = v1;
  v16[1] = xmmword_100A3BB80;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC50;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100557F40(v23, v3, v4, v5, v6, v7, v8, v9, 0, 1, 6, 7, 0, 1, 8, 9, 0, 1, 5, 6);
  qword_100D908F8 = v10;
}

void sub_100794E4C()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC50);
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v16 = v0;
  v17 = v15;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A2C3F0;
  v18 = v14;
  v19 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = v2;
  v11[0] = xmmword_100A2D320;
  v11[1] = xmmword_100A3BB70;
  v20 = v12;
  v21 = v11;
  v10[0] = xmmword_100A3BC40;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = v2;
  v22 = v10;
  v23 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = v2;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC40;
  v5[0] = v1;
  v5[1] = xmmword_100A3BC40;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = v1;
  sub_10004EA7C(v4, v1);
  qword_100D90900 = v3;
}

void sub_100794F44()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC60);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3F970;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = v1;
  v21[1] = xmmword_100A3BC40;
  v20[0] = xmmword_100A2D320;
  v20[1] = xmmword_100A3BBB0;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = xmmword_100A2C3F0;
  v19[1] = v2;
  v18[0] = xmmword_100A3BC40;
  v18[1] = xmmword_100A3BC40;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = xmmword_100A3BC40;
  v17[1] = v2;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = v2;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC40;
  v14[1] = v1;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100557F40(v23, v3, v4, v5, v6, v7, v8, v9, v1, *(&v1 + 1), 1, 2, 3, 4, 1, 2, v1, *(&v1 + 1), v1, *(&v1 + 1));
  qword_100D90908 = v10;
}

void sub_100795038()
{
  sub_100013C2C(xmmword_100A3BC50, xmmword_100A3BC60);
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3F970;
  v17 = v0;
  v18 = v16;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC40;
  v14[0] = xmmword_100A41B90;
  v14[1] = xmmword_100A3BBB0;
  v19 = v15;
  v20 = v14;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = v1;
  v9[1] = v1;
  v10 = xmmword_100A3BC90;
  v11 = 1;
  v12 = 4;
  v21 = v13;
  v22 = &v10;
  v8[1] = v1;
  v9[0] = xmmword_100A3BB70;
  v7[1] = v1;
  v8[0] = v1;
  v23 = v9;
  v24 = v8;
  v6[1] = xmmword_100A3BBB0;
  v7[0] = xmmword_100A3BC40;
  v5[1] = xmmword_100A3BC40;
  v6[0] = xmmword_100A3BB70;
  v25 = v7;
  v26 = v6;
  v4[1] = xmmword_100A3BBD0;
  v5[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BBD0;
  v4[0] = xmmword_100A3BC40;
  v27 = v5;
  v28 = v4;
  v3[0] = xmmword_100A3BBD0;
  sub_10004EA7C(v3, 2);
  qword_100D90910 = v2;
}

uint64_t sub_10079514C(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationViewComponent();
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA5008);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v29 - v22;

  sub_1005D71C4(v24, a2);
  v29[1] = v25;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationNoAqiSevereConfiguration8_Storage_map, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_10001B350(v23, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationNoAqiSevereConfiguration8_Storage_severeAlert, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v23, v20, &qword_100CA5008);
  sub_100003E24();
  sub_10031694C(v11, v8, v26);
  type metadata accessor for NoAqiSevereContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002D3EF4();
  sub_1003169AC(v11, v15);
  sub_1000180EC(v23, &qword_100CA5008);
  return v27;
}

uint64_t sub_1007953DC()
{
  result = swift_checkMetadataState();
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

uint64_t sub_10079547C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_100795508()
{
  sub_10079547C();

  return swift_deallocClassInstance();
}

uint64_t sub_100795578(void (**a1)(char *, uint64_t))
{
  v3 = sub_10022C350(&qword_100CA7188);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  v121 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v129 = v7;
  sub_1000038CC();
  v8 = type metadata accessor for MonthlyAveragesChartModel();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  v120 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v128 = v12;
  sub_1000038CC();
  v115 = type metadata accessor for Calendar.Identifier();
  sub_1000037C4();
  v113 = v13;
  __chkstk_darwin(v14);
  sub_100003848();
  v108 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_10000E70C();
  v107 = v17;
  sub_1000038CC();
  v117 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v114 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v105 = v21 - v20;
  sub_1000038CC();
  v112 = type metadata accessor for Date();
  sub_1000037C4();
  v109 = v22;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v103 = v25 - v24;
  v101 = sub_10022C350(&qword_100CAB990);
  sub_1000037C4();
  v102 = v26;
  __chkstk_darwin(v27);
  v29 = &v98 - v28;
  v99 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  v118 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_100003878();
  v119 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v122 = v35;
  sub_1000038CC();
  v36 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_1000037D8();
  v42 = v41 - v40;
  v43 = sub_10022C350(&qword_100CB8A48);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  v106 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = &v98 - v47;
  v49 = sub_10022C350(&qword_100CA71A0);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  v116 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v110 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v111 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v125 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v130 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  v62 = &v98 - v61;
  v63 = type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  v64 = sub_100003810(v63);
  __chkstk_darwin(v64);
  sub_100003848();
  v104 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v123 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v98 - v69;
  sub_1000161C0(v1 + 5, v1[8]);
  sub_1002E5F80(a1, v70);
  v71 = *(v70 + 8);
  v72 = *(v70 + 9);
  v124 = v70;
  v126 = v62;
  v100 = v1;
  sub_100795FE0(a1, v71, v72, v62);
  sub_1000161C0(v1 + 20, v1[23]);
  v73 = type metadata accessor for PrecipitationAveragesDetailInput();
  (*(v38 + 104))(v42, enum case for ArticlePlacementLocation.precipitationAveragesDetail(_:), v36);
  v74 = a1;
  v127 = v48;
  sub_1005C188C(v42, v48);
  (*(v38 + 8))(v42, v36);
  type metadata accessor for PrecipitationAveragesHeroChartInput();
  WeatherStatisticsModel.dailyPrecipitationStatistics.getter();
  v75 = v103;
  v76 = v101;
  DailyWeatherStatistics.baselineStartDate.getter();
  (*(v102 + 8))(v29, v76);
  v77 = v105;
  Calendar.timeZone.getter();
  v78 = v107;
  Calendar.identifier.getter();
  v79 = v113;
  v80 = v108;
  v81 = v115;
  (*(v113 + 104))(v108, enum case for Calendar.Identifier.gregorian(_:), v115);
  v82 = v80;
  LOBYTE(v80) = static Calendar.Identifier.== infix(_:_:)();
  v83 = *(v79 + 8);
  v83(v82, v81);
  v83(v78, v81);
  v84 = v100;
  v85 = v122;
  sub_100797118(v75, (v80 & 1) == 0, v122);
  (*(v114 + 8))(v77, v117);
  (*(v109 + 8))(v75, v112);
  v86 = *(v74 + *(v73 + 24));
  if (v86)
  {
    sub_1000161C0(v84, v84[3]);
    sub_10086A71C(v86, v130);
  }

  else
  {
    sub_10001B350(v130, 1, 1, v99);
  }

  v87 = v123;
  sub_1007980F0(v124, v123, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  v88 = v125;
  sub_100035AD0(v126, v125, &qword_100CA71A0);
  sub_1000161C0(v84 + 15, v84[18]);
  v89 = v74 + *(v73 + 20);
  v90 = v128;
  sub_10094FEF8(v89, v128);
  v91 = v106;
  sub_100035AD0(v127, v106, &qword_100CB8A48);
  sub_100428C50(v91, v129);
  v92 = v119;
  sub_1007980F0(v85, v119, type metadata accessor for ConditionDetailPlatterViewModel);
  v93 = v111;
  sub_100035AD0(v130, v111, &qword_100CA71A0);
  sub_1007980F0(v87, v104, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  sub_100035AD0(v88, v110, &qword_100CA71A0);
  sub_1007980F0(v90, v120, type metadata accessor for MonthlyAveragesChartModel);
  v94 = v129;
  sub_100035AD0(v129, v121, &qword_100CA7188);
  sub_1007980F0(v92, v118, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_100035AD0(v93, v116, &qword_100CA71A0);
  type metadata accessor for PrecipitationAveragesDetailViewModel._Storage(0);
  swift_allocObject();
  sub_1002D50A8();
  v96 = v95;
  sub_1000180EC(v93, &qword_100CA71A0);
  sub_100798150(v92, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_1000180EC(v94, &qword_100CA7188);
  sub_100798150(v128, type metadata accessor for MonthlyAveragesChartModel);
  sub_1000180EC(v125, &qword_100CA71A0);
  sub_100798150(v123, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  sub_1000180EC(v130, &qword_100CA71A0);
  sub_100798150(v122, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_1000180EC(v127, &qword_100CB8A48);
  sub_1000180EC(v126, &qword_100CA71A0);
  sub_100798150(v124, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  return v96;
}

uint64_t sub_100795FE0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v155 = a2;
  v158 = a4;
  v5 = type metadata accessor for PrecipitationAveragesDetailInput();
  __chkstk_darwin(v5);
  v153 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v146 = &v129 - v8;
  __chkstk_darwin(v9);
  v132 = &v129 - v10;
  v142 = type metadata accessor for WeatherDescription();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10022C350(&qword_100CAB938);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v134 = (&v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v133 = &v129 - v14;
  v137 = type metadata accessor for TimeZone();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v147 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v16 - 8);
  v143 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v129 - v19;
  __chkstk_darwin(v20);
  v22 = &v129 - v21;
  v23 = type metadata accessor for DetailChartDataElement();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v149 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v129 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v145 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v131 = &v129 - v33;
  __chkstk_darwin(v34);
  v144 = &v129 - v35;
  __chkstk_darwin(v36);
  v38 = &v129 - v37;
  v39 = type metadata accessor for Calendar();
  v40 = __chkstk_darwin(v39);
  v42 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v5 + 32);
  v156 = v45;
  v157 = v44;
  (*(v45 + 16))(v42, a1 + v43, v40);
  v150 = v5;
  v46 = *(v5 + 36);
  v159 = v30;
  v160 = v29;
  v47 = *(v30 + 16);
  v154 = a1;
  v47(v38, a1 + v46, v29);
  v161 = v42;
  v162 = v38;
  v48 = v155;
  sub_1008DBA9C();
  if (sub_100024D10(v22, 1, v23) != 1)
  {
    v153 = v24;
    v59 = *(v24 + 32);
    v148 = v28;
    v60 = v59(v28, v22, v23);
    __chkstk_darwin(v60);
    v129 = v42;
    v130 = v38;
    v61 = v151;
    sub_1008DBA9C();
    v62 = v23;
    if (sub_100024D10(v61, 1, v23) == 1)
    {
      sub_1000180EC(v61, &qword_100CAB930);
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10000703C(v63, qword_100D90BD0);
      v64 = v146;
      sub_1007980F0(v154, v146, type metadata accessor for PrecipitationAveragesDetailInput);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v129;
      v69 = v153;
      v70 = v148;
      if (v67)
      {
        v71 = v129;
        v72 = v64;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v163 = v74;
        *v73 = 141558275;
        *(v73 + 4) = 1752392040;
        *(v73 + 12) = 2081;
        type metadata accessor for Location();
        sub_1002F33A8();
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v78 = v72;
        v68 = v71;
        sub_100798150(v78, type metadata accessor for PrecipitationAveragesDetailInput);
        v79 = sub_100078694(v75, v77, &v163);

        *(v73 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v65, v66, "Missing historical average precipitation accumulation up to today, for creating platter view summary. location=%{private,mask.hash}s", v73, 0x16u);
        sub_100006F14(v74);

        (*(v69 + 8))(v148, v62);
      }

      else
      {

        sub_100798150(v64, type metadata accessor for PrecipitationAveragesDetailInput);
        (*(v69 + 8))(v70, v62);
      }
    }

    else
    {
      v82 = v149;
      v59(v149, v61, v23);
      v83 = v143;
      sub_1003DF9A4(v48, v143);
      if (sub_100024D10(v83, 1, v23) != 1)
      {
        v97 = v131;
        DetailChartDataElement.date.getter();
        v98 = *(v153 + 8);
        v153 += 8;
        v155 = v98;
        v98(v83, v23);
        v99 = *(v159 + 32);
        v154 = v23;
        v99(v144, v97, v160);
        v68 = v129;
        Calendar.timeZone.getter();
        v100 = Date.formattedMonthAndDay(timeZone:)();
        v102 = v101;
        DetailChartDataElement.date.getter();
        v103 = Date.formattedMonthAndDay(timeZone:)();
        v105 = v104;
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        v106 = UnitManager.precipitationRainfall.getter();

        DetailChartDataElement.value.getter();
        sub_1002ED0CC();
        v107 = v106;
        v108 = v133;
        Measurement.init(value:unit:)();
        DetailChartDataElement.value.getter();
        v109 = v107;
        v110 = v134;
        Measurement.init(value:unit:)();
        sub_1000161C0((v136 + 80), *(v136 + 104));
        v111 = v140;
        sub_100855E1C(v100, v102, v103, v105, v108, v110, v140);

        v112 = [objc_opt_self() mainBundle];
        v164._object = 0x8000000100AC9030;
        v113._countAndFlagsBits = 0x7972616D6D7553;
        v114._object = 0x8000000100ADE0F0;
        v164._countAndFlagsBits = 0xD000000000000023;
        v114._countAndFlagsBits = 0xD00000000000001ELL;
        v113._object = 0xE700000000000000;
        v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, 0, v112, v113, v164);

        v116 = *(v138 + 8);
        v117 = v139;
        v116(v110, v139);
        v116(v108, v117);
        v118 = v160;
        v119 = *(v159 + 8);
        v119(v145, v160);
        (*(v135 + 8))(v147, v137);
        v119(v144, v118);
        v121 = v154;
        v120 = v155;
        v155(v149, v154);
        v120(v148, v121);
        v122 = type metadata accessor for ConditionDetailPlatterViewModel(0);
        v123 = v158;
        v124 = v142;
        sub_10001B350(v158 + v122[6], 1, 1, v142);
        (*(v141 + 32))(v123 + v122[7], v111, v124);
        v125 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v123 + v122[8], 1, 1, v125);
        *v123 = 0;
        *(v123 + 8) = 0;
        *(v123 + 16) = 2;
        *(v123 + 24) = v115;
        *(v123 + v122[9]) = 0;
        *(v123 + v122[10]) = 0;
        sub_10001B350(v123, 0, 1, v122);
        v80 = v130;
        goto LABEL_22;
      }

      sub_1000180EC(v83, &qword_100CAB930);
      v68 = v129;
      v84 = v153;
      v85 = v148;
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_10000703C(v86, qword_100D90BD0);
      v87 = v132;
      sub_1007980F0(v154, v132, type metadata accessor for PrecipitationAveragesDetailInput);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v163 = v91;
        *v90 = 141558275;
        *(v90 + 4) = 1752392040;
        *(v90 + 12) = 2081;
        type metadata accessor for Location();
        sub_1002F33A8();
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v93;
        sub_100798150(v87, type metadata accessor for PrecipitationAveragesDetailInput);
        v95 = sub_100078694(v92, v94, &v163);

        *(v90 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v88, v89, "Could not derive a start date, for creating platter view summary. location=%{private,mask.hash}s", v90, 0x16u);
        sub_100006F14(v91);

        v96 = *(v84 + 8);
        v96(v149, v62);
        v96(v148, v62);
      }

      else
      {

        sub_100798150(v87, type metadata accessor for PrecipitationAveragesDetailInput);
        v126 = *(v84 + 8);
        v126(v82, v62);
        v126(v85, v62);
      }
    }

    v80 = v130;
    v127 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_10001B350(v158, 1, 1, v127);
    goto LABEL_22;
  }

  sub_1000180EC(v22, &qword_100CAB930);
  if (qword_100CA2728 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000703C(v49, qword_100D90BD0);
  v50 = v153;
  sub_1007980F0(v154, v153, type metadata accessor for PrecipitationAveragesDetailInput);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v163 = v54;
    *v53 = 141558275;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    type metadata accessor for Location();
    sub_1002F33A8();
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    sub_100798150(v50, type metadata accessor for PrecipitationAveragesDetailInput);
    v58 = sub_100078694(v55, v57, &v163);

    *(v53 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v51, v52, "Missing precipitation accumulation up to today, for creating platter view summary. location=%{private,mask.hash}s", v53, 0x16u);
    sub_100006F14(v54);
  }

  else
  {

    sub_100798150(v50, type metadata accessor for PrecipitationAveragesDetailInput);
  }

  v80 = v38;
  v81 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_10001B350(v158, 1, 1, v81);
  v68 = v42;
LABEL_22:
  (*(v159 + 8))(v80, v160);
  return (*(v156 + 8))(v68, v157);
}

uint64_t sub_100797118@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v128 = a1;
  v120 = a3;
  v118 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v118);
  v119 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAE8E8);
  __chkstk_darwin(v5 - 8);
  v131 = &v103 - v6;
  v7 = sub_10022C350(&qword_100CBADB0);
  __chkstk_darwin(v7 - 8);
  countAndFlagsBits = &v103 - v8;
  v126 = type metadata accessor for DateComponents();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v10 - 8);
  v121 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v103 - v13;
  __chkstk_darwin(v14);
  v132 = &v103 - v15;
  __chkstk_darwin(v16);
  v133 = &v103 - v17;
  v130 = type metadata accessor for Calendar();
  v117 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v19 - 8);
  v106 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v103 - v22;
  __chkstk_darwin(v23);
  v25 = &v103 - v24;
  __chkstk_darwin(v26);
  v28 = &v103 - v27;
  __chkstk_darwin(v29);
  v31 = &v103 - v30;
  v32 = type metadata accessor for TimeZone();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v104 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v105 = &v103 - v36;
  __chkstk_darwin(v37);
  v39 = &v103 - v38;
  __chkstk_darwin(v40);
  v42 = &v103 - v41;
  v43 = sub_100797FE4(a2);
  v115 = v44;
  v116 = v43;
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v31, 1, v32);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v46 = *(v33 + 32);
  v46(v42, v31, v32);
  v127 = Date.formattedYear(timeZone:)();
  v128 = v47;
  v48 = *(v33 + 8);
  v48(v42, v32);
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v28, 1, v32);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v114 = v33 + 32;
  v110 = v46;
  v46(v39, v28, v32);
  static Calendar.gregorianCalendar(with:)();
  v111 = v33 + 8;
  v109 = v48;
  v48(v39, v32);
  v49 = countAndFlagsBits;
  v50 = v130;
  sub_10001B350(countAndFlagsBits, 1, 1, v130);
  v51 = v25;
  sub_10001B350(v25, 1, 1, v32);
  v52 = v123;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  v53 = *(v124 + 8);
  v54 = v126;
  v53(v52, v126);
  sub_10001B350(v49, 1, 1, v50);
  v124 = v32;
  sub_10001B350(v51, 1, 1, v32);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  v53(v52, v54);
  v55 = type metadata accessor for Date();
  v56 = sub_100024D10(v133, 1, v55);
  v57 = v127;
  if (v56 == 1 || sub_100024D10(v132, 1, v55) == 1)
  {
    if (qword_100CA2728 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_10000703C(v58, qword_100D90BD0);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Could not derive dates for describing average range in platter view summary.", v61, 2u);
    }
  }

  v62 = [objc_opt_self() mainBundle];
  v134._object = 0x8000000100ADD8D0;
  v134._countAndFlagsBits = 0xD000000000000032;
  v63._countAndFlagsBits = 0xD00000000000001BLL;
  v123 = 0x8000000100ADD8B0;
  v63._object = 0x8000000100ADD8B0;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v134);
  countAndFlagsBits = v65._countAndFlagsBits;
  object = v65._object;

  v66 = type metadata accessor for WeatherDescription();
  sub_10001B350(v131, 1, 1, v66);
  sub_10022C350(&qword_100CA5408);
  v67 = type metadata accessor for WeatherDescription.Argument();
  v68 = *(v67 - 8);
  v69 = *(v68 + 72);
  v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100A3B030;
  v112 = v71;
  v72 = (v71 + v70);
  v73 = v128;
  *v72 = v57;
  v72[1] = v73;
  v74 = *(v68 + 104);
  (v74)(v72, enum case for WeatherDescription.Argument.string(_:), v67);
  v126 = v69;
  v75 = (v72 + v69);
  *v75 = v57;
  v75[1] = v73;
  v74();
  v76 = v125;
  sub_100035AD0(v133, v125, &unk_100CB2CF0);
  LODWORD(v62) = sub_100024D10(v76, 1, v55);
  swift_bridgeObjectRetain_n();
  v108 = v55;
  if (v62 != 1)
  {
    v79 = v107;
    TimeZone.init(secondsFromGMT:)();
    v80 = v124;
    result = sub_100024D10(v79, 1, v124);
    if (result != 1)
    {
      v81 = v105;
      v110(v105, v79, v80);
      v77 = Date.formattedMonthAndDay(timeZone:)();
      v82 = v76;
      v78 = v83;
      v109(v81, v80);
      v55 = v108;
      (*(*(v108 - 8) + 8))(v82, v108);
      v57 = v127;
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000180EC(v76, &unk_100CB2CF0);
  v77 = 0;
  v78 = 0xE000000000000000;
LABEL_14:
  v84 = (v72 + 2 * v126);
  *v84 = v77;
  v84[1] = v78;
  v74();
  v85 = v121;
  sub_100035AD0(v132, v121, &unk_100CB2CF0);
  if (sub_100024D10(v85, 1, v55) == 1)
  {
    sub_1000180EC(v85, &unk_100CB2CF0);
    v86 = v57;
    v87 = 0;
    v88 = 0xE000000000000000;
LABEL_18:
    v93 = v126;
    v94 = (v72 + 3 * v126);
    *v94 = v87;
    v94[1] = v88;
    v74();
    v95 = (v72 + 4 * v93);
    v96 = v128;
    *v95 = v86;
    v95[1] = v96;
    v74();
    v97 = v119;
    WeatherDescription.init(format:_:)();
    (*(v117 + 8))(v129, v130);
    v98 = v118;
    swift_storeEnumTagMultiPayload();
    v99 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v100 = v120;
    sub_10001B350(v120 + v99[8], 1, 1, v98);
    *v100 = 0xD00000000000001BLL;
    v101 = countAndFlagsBits;
    *(v100 + 8) = v123;
    *(v100 + 16) = 0;
    v102 = object;
    *(v100 + 24) = v101;
    *(v100 + 32) = v102;
    sub_100412514(v131, v100 + v99[6]);
    sub_10046104C(v97, v100 + v99[7]);
    *(v100 + v99[9]) = 0;
    *(v100 + v99[10]) = 0;
    sub_1000180EC(v133, &unk_100CB2CF0);
    return sub_1000180EC(v132, &unk_100CB2CF0);
  }

  v89 = v106;
  TimeZone.init(secondsFromGMT:)();
  v90 = v124;
  result = sub_100024D10(v89, 1, v124);
  if (result != 1)
  {
    v91 = v104;
    v110(v104, v89, v90);
    v87 = Date.formattedMonthAndDay(timeZone:)();
    v88 = v92;
    v109(v91, v90);
    (*(*(v108 - 8) + 8))(v85);
    v86 = v127;
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100797EFC()
{
  v0 = type metadata accessor for Date();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  DetailChartDataElement.date.getter();
  v7 = Calendar.isDate(_:inSameDayAs:)();
  (*(v2 + 8))(v6, v0);
  return v7 & 1;
}

uint64_t sub_100797FE4(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v11 = 0x8000000100ADDE70;
    v3 = 0xD00000000000018CLL;
    v4 = 0x8000000100ADDCE0;
    v5 = 0x1000000000000279;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x8000000100ADDA80;
    v4 = 0x8000000100ADD910;
    v3 = 0xD00000000000016ELL;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    v5 = 0x100000000000025BLL;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v6, *&v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1007980F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100798150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10079821C()
{
  v1 = v0;
  v2 = type metadata accessor for CloudAltitudeKind();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Elevation();
  __chkstk_darwin(v16 - 8);
  sub_1000037D8();
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v17);
  sub_1000037D8();
  (*(v20 + 16))(v19 - v18, v1);
  Elevation.init(_:isPM:)();
  v21 = enum case for WeatherConditionGradientModel.AnimationContext.vfx(_:);
  v22 = type metadata accessor for WeatherConditionGradientModel.AnimationContext();
  (*(*(v22 - 8) + 104))(v15, v21, v22);
  (*(v11 + 104))(v15, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v9);
  (*(v4 + 104))(v8, enum case for CloudAltitudeKind.low(_:), v2);
  return WeatherConditionGradientModel.init(conditionKind:elevation:isDaylight:presentation:cloudCover:cloudKind:)();
}

uint64_t sub_1007984AC@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD7240);
  a1[4] = sub_100798600();
  sub_100042FB0(a1);
  type metadata accessor for VFXTestViewModel();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100798574()
{
  sub_100798664(&qword_100CD7250);

  return ShortDescribable.description.getter();
}

unint64_t sub_100798600()
{
  result = qword_100CD7248;
  if (!qword_100CD7248)
  {
    sub_10022E824(&qword_100CD7240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD7248);
  }

  return result;
}

uint64_t sub_100798664(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VFXTestViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailChartHeaderView()
{
  result = qword_100CD72B0;
  if (!qword_100CD72B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10079871C()
{
  result = type metadata accessor for ConditionDetailChartHeaderViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}