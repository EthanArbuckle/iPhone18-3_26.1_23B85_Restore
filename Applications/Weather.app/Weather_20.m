uint64_t sub_100221E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CE7510);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 52) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100221F20()
{

  return swift_deallocObject();
}

uint64_t sub_100221F58(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 32);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10022C350(&qword_100CAE8E8);
    sub_100003928();
    if (*(v8 + 84) == a2)
    {
      v9 = a3[6];
    }

    else
    {
      type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      sub_100003928();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[7];
      }

      else
      {
        sub_10022C350(&qword_100CE7868);
        v9 = a3[8];
      }
    }

    v11 = sub_1000039EC(v9);

    return sub_100024D10(v11, v12, v13);
  }
}

uint64_t sub_100222080(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    sub_10022C350(&qword_100CAE8E8);
    sub_100003928();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[6];
    }

    else
    {
      type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      sub_100003928();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[7];
      }

      else
      {
        sub_10022C350(&qword_100CE7868);
        v8 = a4[8];
      }
    }

    v10 = sub_1000039EC(v8);

    return sub_10001B350(v10, v11, a2, v12);
  }

  return result;
}

uint64_t sub_1002221C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for AttributedString();
    v6 = sub_1000039EC(*(a3 + 20));

    return sub_100024D10(v6, v7, v8);
  }
}

uint64_t sub_100222244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for AttributedString();
    v6 = sub_1000039EC(*(a4 + 20));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_10022233C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6CB0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CA7000);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  type metadata accessor for TimeZone();
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_100222480(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CA6CB0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA7000);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1002225C4()
{
  type metadata accessor for DailyForecastEditorView();
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v6 + 8))(v3 + v5);
  }

  v7 = *(v0 + 20);
  sub_10022C350(&qword_100CA7000);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);
  v9 = *(v0 + 28);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);

  return swift_deallocObject();
}

uint64_t sub_100222788()
{
  sub_10022E824(&qword_100CE7B58);
  sub_10022E824(&qword_100CA5528);
  sub_10022E824(&qword_100CE7B50);
  sub_10022E824(&qword_100CE7B48);
  type metadata accessor for InsetGroupedListStyle();
  sub_100011068();
  sub_100006F64(v0, v1);
  sub_100005DB4();
  swift_getOpaqueTypeConformance2();
  sub_100004C88();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v2, &qword_100CA5528);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100222900()
{
  v1 = type metadata accessor for WeatherMap.Event();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1002229E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MapComponentViewModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_10022C350(&qword_100CA61E0);
    v8 = a1 + *(a3 + 32);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 28));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_100222AD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MapComponentViewModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v9 = sub_10022C350(&qword_100CA61E0);
    v10 = a1 + *(a4 + 32);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_100222BB0()
{
  v1 = type metadata accessor for MapComponentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v3 + 8))(v2);
  v4 = type metadata accessor for MapComponentViewModel();
  v5 = *(v4 + 20);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v6 + 8))(v2 + v5);
  v7 = v2 + *(v4 + 24);
  v8 = type metadata accessor for WeatherData(0);
  v9 = sub_1000162A4();
  if (!sub_100024D10(v9, v10, v8))
  {

    v11 = v8[5];
    v12 = type metadata accessor for Locale();
    if (!sub_100024D10(v7 + v11, 1, v12))
    {
      sub_100003B20();
      (*(v13 + 8))(v7 + v11, v12);
    }

    v14 = v8[6];
    type metadata accessor for WeatherDataModel();
    sub_1000037E8();
    (*(v15 + 8))(v7 + v14);
    v16 = v7 + v8[7];
    v17 = sub_10022C350(&qword_100CAC710);
    if (!sub_100024D10(v16, 1, v17))
    {
      v18 = type metadata accessor for Date();
      sub_1000037E8();
      v40 = *(v19 + 8);
      v40(v16, v18);
      v20 = *(v17 + 48);
      v21 = type metadata accessor for WeatherDataRelevancy();
      if (!sub_100024D10(v16 + v20, 1, v21))
      {
        v40(v16 + v20, v18);
      }
    }

    v22 = v7 + v8[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_1000037E8();
      (*(v24 + 8))(v22);
    }

    else if (!EnumCaseMultiPayload)
    {
    }

    v25 = v7 + v8[9];
    v26 = type metadata accessor for WeatherDataOverrides();
    v27 = sub_1000162A4();
    if (!sub_100024D10(v27, v28, v26))
    {
      v29 = type metadata accessor for Date();
      v30 = sub_1000162A4();
      if (!sub_100024D10(v30, v31, v29))
      {
        sub_100003B20();
        (*(v32 + 8))(v25, v29);
      }

      v33 = *(v26 + 20);
      if (!sub_100024D10(v25 + v33, 1, v29))
      {
        sub_100003B20();
        (*(v34 + 8))(v25 + v33, v29);
      }
    }
  }

  sub_1000EBD74(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  sub_1000EBD74(*(v2 + v1[6]), *(v2 + v1[6] + 8));

  v35 = v1[8];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v35, 1, v36))
    {
      sub_100003B20();
      (*(v37 + 8))(v2 + v35, v36);
    }
  }

  else
  {
  }

  sub_100109A3C(*(v2 + v1[9]), *(v2 + v1[9] + 8), *(v2 + v1[9] + 9));
  v38 = v2 + v1[10];
  sub_100168B1C(*v38, *(v38 + 8), *(v38 + 16), *(v38 + 24), *(v38 + 32), *(v38 + 40), *(v38 + 48), *(v38 + 56), *(v38 + 64), *(v38 + 72));
  sub_1004BFF94(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16), *(v2 + v1[11] + 17));

  return swift_deallocObject();
}

uint64_t sub_100223098()
{
  sub_100003A00();
  sub_10022C350(&qword_100CE7D70);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_100223100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 72);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10022C350(&qword_100CA61E0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10022318C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 72) = -a2;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA61E0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10022321C()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  sub_10006768C(&qword_100CE7ED0, &qword_100CE7EC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002232B4()
{
  v1 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_100223400()
{

  return swift_deallocObject();
}

uint64_t sub_1002234B4()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1001B8300();
  swift_getWitnessTable();
  sub_100965958();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100017180();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Button();
  sub_100006C58();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1001B8354();
  swift_getOpaqueTypeMetadata2();
  sub_1001B83A8();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PlainButtonStyle();
  sub_100009354();
  sub_1001B83FC(v0, v1);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_1009659AC();
  swift_getWitnessTable();
  sub_10000EF1C();
  sub_10000EF1C();
  swift_getOpaqueTypeConformance2();
  sub_100049F70();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1002238C4(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 32);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for ScrubberViewModel(0);
    sub_100003928();
    if (*(v7 + 84) == a2)
    {
      v8 = a3[10];
    }

    else
    {
      sub_10022C350(&qword_100CAD050);
      sub_100003928();
      if (*(v9 + 84) == a2)
      {
        v8 = a3[13];
      }

      else
      {
        sub_10022C350(&qword_100CE86D8);
        sub_100003928();
        if (*(v10 + 84) == a2)
        {
          v8 = a3[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BD8);
          v8 = a3[20];
        }
      }
    }

    v11 = sub_1000039EC(v8);

    return sub_100024D10(v11, v12, v13);
  }
}

uint64_t sub_100223A2C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    type metadata accessor for ScrubberViewModel(0);
    sub_100003928();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[10];
    }

    else
    {
      sub_10022C350(&qword_100CAD050);
      sub_100003928();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[13];
      }

      else
      {
        sub_10022C350(&qword_100CE86D8);
        sub_100003928();
        if (*(v10 + 84) == a3)
        {
          v8 = a4[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BD8);
          v8 = a4[20];
        }
      }
    }

    v11 = sub_1000039EC(v8);

    return sub_10001B350(v11, v12, a2, v13);
  }

  return result;
}

uint64_t sub_100223BAC()
{
  type metadata accessor for ScrubberView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_100006F14(v1 + v3 + 8);

  v4 = v1 + v3 + v0[10];

  v5 = *(type metadata accessor for ScrubberViewModel(0) + 24);
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v6 + 8))(v4 + v5);
  sub_100023610();

  v7 = v1 + v3 + v0[13];
  v8 = type metadata accessor for Date();
  sub_1000037E8();
  v10 = *(v9 + 8);
  v10(v7, v8);
  sub_10022C350(&qword_100CAD050);

  sub_100023610();
  sub_100023610();

  sub_100023610();
  sub_100023610();
  v11 = v1 + v3 + v0[19];

  v12 = *(sub_10022C350(&qword_100CE86D8) + 32);
  v13 = type metadata accessor for ScrubberDateSelection();
  if (!sub_100024D10(v11 + v12, 1, v13) && !sub_100024D10(v11 + v12, 1, v8))
  {
    v10(v11 + v12, v8);
  }

  v14 = v0[20];
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v15 + 8))(v1 + v3 + v14);
  }

  else
  {
  }

  sub_100023610();

  return swift_deallocObject();
}

uint64_t sub_100223E6C()
{
  sub_10022E824(&qword_100CE87D8);
  sub_10022E824(&qword_100CA6BC0);
  sub_100974950();
  sub_1006BF6FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100223F38()
{

  return swift_deallocObject();
}

uint64_t sub_100223F70(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for ScrubberDay(0);
    v8 = sub_1000039EC(*(a3 + 20));

    return sub_100024D10(v8, v9, v10);
  }
}

_BYTE *sub_100223FF4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    type metadata accessor for ScrubberDay(0);
    v6 = sub_1000039EC(*(a4 + 20));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1002240C8()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  sub_100005A00();
  sub_100006F64(v1, &qword_100CE8AC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10022416C()
{
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v0 = swift_allocObject();
  v1 = sub_10003201C(v0, xmmword_100A3B030);

  return v1;
}

uint64_t sub_10022427C()
{
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v0 = swift_allocObject();
  v1 = sub_10003201C(v0, xmmword_100A3B030);

  return v1;
}

uint64_t sub_1002244B0()
{
  v1 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1002245F0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for WeatherData(0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for PreprocessedWeatherData();
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        type metadata accessor for NewsDataModel();
        sub_100003928();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          if (a2 == 254)
          {
            v17 = *(a1 + a3[8]);
            if (v17 >= 2)
            {
              return v17 - 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = type metadata accessor for AppConfiguration();
          v12 = a3[10];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100224774(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Location();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for WeatherData(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for PreprocessedWeatherData();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        type metadata accessor for NewsDataModel();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          if (a3 == 254)
          {
            *(a1 + a4[8]) = a2 + 1;
            return;
          }

          v10 = type metadata accessor for AppConfiguration();
          v14 = a4[10];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100224934@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100224A28(uint64_t a1, uint64_t a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 8);
    if (v2 > 1)
    {
      return (v2 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for WindComponentViewModel();
    v5 = sub_10001C19C();

    return sub_100024D10(v5, a2, v6);
  }
}

uint64_t sub_100224AA4(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    type metadata accessor for WindComponentViewModel();
    v4 = sub_10001C19C();

    return sub_10001B350(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_100224B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CAD870);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 8);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    type metadata accessor for WindComponentViewModel();
    v8 = sub_10001C19C();
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_100224C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CAD870);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    type metadata accessor for WindComponentViewModel();
    v10 = sub_10001C19C();
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_100224CD8()
{
  v1 = type metadata accessor for SimpleWindComponentContentView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10022C350(&qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  sub_1000E4DF8(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  v5 = v3 + *(v1 + 24);

  v6 = *(type metadata accessor for WindComponentViewModel() + 68);
  type metadata accessor for WindComponentCompassViewModel();
  sub_1000037E8();
  (*(v7 + 8))(v5 + v6);

  return swift_deallocObject();
}

uint64_t sub_100224EB4()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB6FB8);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_100224F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6D28);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100224FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6D28);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_100225004(uint64_t a1)
{
  sub_10022C350(&qword_100CE9640);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_100225064(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CE9640);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1002250CC()
{
  v1 = *(type metadata accessor for ReportWeatherSubmittedView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(sub_10022C350(&qword_100CA6D28) + 32);
  type metadata accessor for PresentationMode();
  sub_1000037E8();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1002251C4()
{
  sub_10022E824(&qword_100CE9640);
  sub_10022E824(&qword_100CE9650);
  sub_100005A00();
  sub_100006F64(v0, &qword_100CE9640);
  sub_100996FC4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002253B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherDescription();
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10022543C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherDescription();
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10022557C()
{
  sub_100003B38();
  v2 = type metadata accessor for PrecipitationTotalPlatterViewModel();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1002255BC()
{
  sub_100003B38();
  type metadata accessor for PrecipitationTotalPlatterViewModel();
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1002255F4()
{
  v1 = *(type metadata accessor for PrecipitationTotalPlatterView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for PrecipitationTotalPlatterViewModel();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1002256B8()
{
  sub_1000232FC();
  type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_100003928();
  if (*(v4 + 84) != v1)
  {
    return sub_1000093E8(*(v2 + 24));
  }

  return sub_100024D10(v0, v1, v3);
}

void sub_100225744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100005B64();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24)) = (v4 - 1);
  }
}

uint64_t sub_100225818()
{
  v1 = *(type metadata accessor for PrecipitationTotalSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_100225908()
{
  sub_1000232FC();
  type metadata accessor for PrecipitationTotalPlatterViewModel.RowModel();
  sub_100003928();
  if (*(v4 + 84) != v1)
  {
    return sub_1000093E8(*(v2 + 28));
  }

  return sub_100024D10(v0, v1, v3);
}

void sub_100225994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for PrecipitationTotalPlatterViewModel.RowModel();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100005B64();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 28)) = (v4 - 1);
  }
}

uint64_t sub_100225A58(uint64_t a1)
{
  sub_10022C350(&qword_100CEA588);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_100225BA8()
{

  return swift_deallocObject();
}

uint64_t sub_100225BE0()
{
  type metadata accessor for _ConditionalContent();
  sub_10001F590();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  sub_10001D440();
  return swift_getWitnessTable();
}

uint64_t sub_100225C7C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for LocationModel();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100020D78(v4 + a3[6]);
    }

    type metadata accessor for ListLocationRowPrimaryText(0);
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = a3[7];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0);
      sub_100003928();
      if (*(v15 + 84) == v3)
      {
        v8 = v14;
        v13 = a3[10];
      }

      else
      {
        sub_10022C350(&qword_100CACE08);
        sub_100003928();
        if (*(v17 + 84) == v3)
        {
          v8 = v16;
          v13 = a3[11];
        }

        else
        {
          v8 = type metadata accessor for WeatherConditionBackgroundModel();
          v13 = a3[22];
        }
      }
    }

    v9 = v4 + v13;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_100225E0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for LocationModel();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[6] + 8) = (v4 - 1);
      return;
    }

    type metadata accessor for ListLocationRowPrimaryText(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[10];
      }

      else
      {
        sub_10022C350(&qword_100CACE08);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          v10 = type metadata accessor for WeatherConditionBackgroundModel();
          v14 = a4[22];
        }
      }
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_100225FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_100020D78(a1 + *(a3 + 20));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_100226044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {

    sub_10001B350(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }
}

uint64_t sub_10022610C(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CEACE8);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = type metadata accessor for DynamicTypeSize();
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100226230()
{
  sub_1000041D8();
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      sub_10022C350(&qword_100CEACE8);
      sub_100003928();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        v6 = type metadata accessor for DynamicTypeSize();
        v10 = v2[7];
      }
    }

    v7 = v1 + v10;
  }

  return sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_100226350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return sub_100024D10(v9, a2, v8);
}

void sub_1002263F0()
{
  sub_1000041D8();
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 20);

    sub_10001B350(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_10022649C()
{
  sub_10000FE4C();
  v0 = sub_1000A3D80();
  return sub_100005F94(v0);
}

uint64_t sub_1002264F8()
{
  sub_10000FE4C();
  v0 = sub_10093EA20();
  return sub_100005F94(v0);
}

uint64_t sub_100226544(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    sub_10022C350(&qword_100CEAE70);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v9 = a3[6];
    }

    else
    {
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v8 = v12;
        v9 = a3[12];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return sub_1000039D8(*(a1 + a3[13]));
        }

        v8 = sub_10022C350(&qword_100CACB08);
        v9 = a3[19];
      }
    }
  }

  return sub_100024D10(a1 + v9, a2, v8);
}

void sub_1002266A8()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v2[5];
  }

  else
  {
    sub_10022C350(&qword_100CEAE70);
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v7 = v2[6];
    }

    else
    {
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_100003928();
      if (*(v11 + 84) == v3)
      {
        v6 = v10;
        v7 = v2[12];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          *(v1 + v2[13]) = (v0 - 1);
          return;
        }

        v6 = sub_10022C350(&qword_100CACB08);
        v7 = v2[19];
      }
    }
  }

  sub_10001B350(v1 + v7, v0, v0, v6);
}

uint64_t sub_100226834()
{
  type metadata accessor for WeatherConditionBackgroundModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for WeatherConditionBackgroundModel();
  sub_1000037C4();
  v8 = v7;
  v9 = *(v7 + 80);
  v21 = v1;
  v10 = v1 + v3;

  v11 = v0[5];
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v12 + 8))(v10 + v11);
  }

  else
  {
  }

  v13 = v0[6];
  sub_10022C350(&qword_100CB0588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for TargetWindowSizeClass();
    if (!sub_100024D10(v10 + v13, 1, v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v10 + v13, v14);
    }
  }

  else
  {
  }

  v16 = (v3 + v5 + v9) & ~v9;
  sub_100024CE0(v0[7]);
  sub_100024CE0(v0[8]);
  sub_100024CE0(v0[9]);
  sub_100024CE0(v0[10]);
  sub_100024CE0(v0[11]);
  v17 = *(v8 + 8);
  v17(v10 + v0[12], v6);
  swift_unknownObjectRelease();
  sub_1000872DC();

  v18 = v10 + v0[19];
  type metadata accessor for AnimatedGradient();
  sub_100003D98();
  (*(v19 + 8))(v18);
  sub_10022C350(&qword_100CACB08);

  sub_100071A7C();
  sub_100071A7C();
  sub_10003BCA4();
  sub_100071A7C();
  sub_10003BCA4();

  v17(v21 + v16, v6);

  return swift_deallocObject();
}

uint64_t sub_100226B44()
{
  type metadata accessor for WeatherConditionBackgroundModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v0[6];
  sub_10022C350(&qword_100CB0588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for TargetWindowSizeClass();
    if (!sub_10017084C(v7))
    {
      sub_100003B20();
      (*(v8 + 8))(v3 + v6, v4);
    }
  }

  else
  {
  }

  sub_100020D90(v0[7]);
  sub_100020D90(v0[8]);
  sub_100020D90(v0[9]);
  sub_100020D90(v0[10]);
  sub_100020D90(v0[11]);
  v9 = v0[12];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);
  swift_unknownObjectRelease();
  sub_10003270C();

  v11 = v3 + v0[19];
  type metadata accessor for AnimatedGradient();
  sub_100003D98();
  (*(v12 + 8))(v11);
  sub_10022C350(&qword_100CACB08);

  sub_1000795E0();
  sub_1000795E0();
  sub_100086998();
  sub_1000795E0();
  sub_100086998();

  return swift_deallocObject();
}

uint64_t sub_100226DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100226E28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_100226E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MainAction();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100226F40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MainAction();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100226FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MonthlyAveragesChartModel();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100227098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MonthlyAveragesChartModel();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100227194()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1002271CC()
{

  return swift_deallocObject();
}

uint64_t sub_100227210()
{
  v1 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1002272C8()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100227300()
{

  return swift_deallocObject();
}

uint64_t sub_100227344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  v6 = type metadata accessor for TemperatureChartKind();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_10022C350(&qword_100CEBB68);
    v8 = v3 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_100227420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000038D8();
  result = type metadata accessor for TemperatureChartKind();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_10022C350(&qword_100CEBB68);
    v10 = v4 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1002274F8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB5C40);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_10022755C(uint64_t a1)
{
  sub_10022C350(&qword_100CB5C40);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1002275C0(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for TemperatureChartKind();

  return sub_100024D10(v2, a2, v4);
}

uint64_t sub_100227604(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for TemperatureChartKind();

  return sub_10001B350(v2, a2, a2, v4);
}

uint64_t sub_100227650@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureChartKind.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10022767C()
{
  v1 = *(type metadata accessor for TemperatureChartSelectionSummaryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_100227788()
{

  return swift_deallocObject();
}

uint64_t sub_100227838(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherDescription();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_1002278C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherDescription();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002279B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009C6D38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100227A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100227B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100227C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CurrentWeather();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100227CB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CurrentWeather();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100227E5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  type metadata accessor for Date();
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = type metadata accessor for TimeZone();
    v10 = *(a3 + 32);
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

void *sub_100227F18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for TimeZone();
      v11 = *(a4 + 32);
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100227FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_10022807C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {

    sub_10001B350(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_10022814C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 32);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1002281D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100228254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_10022C350(&unk_100CB2CF0);
    sub_100003928();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 32));
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 24);
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_10022835C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&unk_100CB2CF0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100228450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100228498(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1002284F4(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for Location();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for LocationOfInterest();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = type metadata accessor for AttributedString();
        v11 = a3[7];
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1002285FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Location();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      type metadata accessor for LocationOfInterest();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for AttributedString();
        v11 = a4[7];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100228758()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100228790()
{

  return swift_deallocObject();
}

uint64_t sub_1002287DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for LocationViewModel();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for DisplayMetrics();
    sub_100003928();
    if (*(v11 + 84) != a2)
    {
      return sub_100017240();
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1002288B0()
{
  sub_10001A37C();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for DisplayMetrics();
    sub_100003928();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_100228984()
{
  type metadata accessor for LazyLocationGridViewContainer(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v6 = *(v5 + 8);
  v7 = sub_10002C8AC();
  (v6)(v7);
  v8 = type metadata accessor for LocationViewModel();
  v9 = v8[5];
  if (!sub_10003CAC0())
  {
    (v6)(v3 + v9, v4);
  }

  sub_10001888C();
  sub_10016AD1C(*(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40));

  sub_100037CD8();
  sub_10000CE10();
  v10 = type metadata accessor for LocationFooterViewModel();
  if (!sub_100005BB8(v10))
  {

    if (*(v4 + 24))
    {
    }

    v11 = v4 + *(v6 + 36);

    v12 = *(type metadata accessor for LearnMoreAttributorViewModel() + 24);
    v13 = type metadata accessor for URL();
    if (!sub_100024D10(v11 + v12, 1, v13))
    {
      sub_100003B20();
      (*(v14 + 8))(v11 + v12, v13);
    }

    v15 = *(v6 + 44);
    v16 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v4 + v15, 1, v16))
    {
      sub_100003B20();
      (*(v17 + 8))(v4 + v15, v16);
    }

    v18 = v4 + *(v6 + 56);
    v19 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
    if (!sub_100005BB8(v19))
    {
      v20 = *(v6 + 20);
      type metadata accessor for Location();
      sub_100003D98();
      (*(v21 + 8))(v18 + v20);
      sub_100020A90();
      (*(v22 + 8))(v18 + v23, v16);
    }
  }

  v24 = v8[19];
  type metadata accessor for Date();
  sub_100003D98();
  (*(v25 + 8))(v3 + v24);
  v26 = v8[20];
  v27 = type metadata accessor for ForegroundEffect();
  if (!sub_10003CAC0())
  {
    sub_100003B20();
    (*(v28 + 8))(v3 + v26, v27);
  }

  sub_10000CE10();
  v29 = type metadata accessor for PreviewLocation();
  if (!sub_100005BB8(v29))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        type metadata accessor for Location();
        goto LABEL_19;
      case 2u:
        type metadata accessor for LocationOfInterest();
LABEL_19:
        sub_100003D98();
        (*(v30 + 8))(v27);
        break;
      case 3u:

        v35 = *(type metadata accessor for SearchLocation() + 32);
        v36 = type metadata accessor for Location();
        if (!sub_10005227C(v36))
        {
          sub_100003B20();
          (*(v37 + 8))(v27 + v35);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  sub_10001888C();

  v31 = v0[5];
  v32 = v31 + *(type metadata accessor for DisplayMetrics() + 36);
  type metadata accessor for DynamicTypeSize();
  sub_100003D98();
  (*(v33 + 8))(v3 + v32);

  swift_unknownObjectRelease();
  sub_100006F14(v3 + v0[10]);
  sub_100028F38(v0[11]);
  sub_1000E4DF8(*(v3 + v0[12]), *(v3 + v0[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_100228EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocationViewModel();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_100228F94()
{
  sub_10001A37C();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {

    sub_10001B350(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }
}

uint64_t sub_100229024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for LocationViewModel();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for DisplayMetrics();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return sub_100017240();
      }

      v8 = type metadata accessor for LocationViewCellContentDescriptor(0);
      v12 = *(a3 + 48);
    }

    v9 = v3 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100229118()
{
  sub_10001A37C();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for DisplayMetrics();
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + v2[6]) = (v0 - 1);
        return;
      }

      v6 = type metadata accessor for LocationViewCellContentDescriptor(0);
      v10 = v2[12];
    }

    v7 = v1 + v10;
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_100229294()
{
  sub_10022E824(&qword_100CECDB0);
  sub_10022E824(&qword_100CECDB8);
  sub_10022E824(&qword_100CD47E0);
  sub_100006F64(&qword_100CECDC0, &qword_100CECDB8);
  sub_100708038();
  sub_100017540();
  return sub_100017540();
}

uint64_t sub_100229390()
{
  sub_10022E824(&qword_100CECDD0);
  sub_1009D70C0();
  return sub_100017540();
}

uint64_t sub_100229440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA61E0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100229508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA61E0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100229604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherActivity();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10022964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherActivity();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1002296A8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for DetailChartCondition();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[6];
    }

    else
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[10];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return sub_1000039D8(*(v3 + a3[11]));
        }

        type metadata accessor for CurrentWeather();
        sub_100003928();
        if (*(v17 + 84) == a2)
        {
          v8 = v16;
          v12 = a3[12];
        }

        else
        {
          sub_10022C350(&qword_100CAB9B0);
          sub_100003928();
          if (*(v19 + 84) == a2)
          {
            v8 = v18;
            v12 = a3[13];
          }

          else
          {
            v8 = type metadata accessor for ChartViewModelInterpolationMode();
            v12 = a3[14];
          }
        }
      }
    }

    v9 = v3 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100229870()
{
  sub_1000062E8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v4 + 84) != v3)
  {
    type metadata accessor for DetailChartCondition();
    sub_100003928();
    if (*(v5 + 84) != v3)
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v6 + 84) != v3)
      {
        if (v3 == 0x7FFFFFFF)
        {
          *(v1 + *(v2 + 44)) = (v0 - 1);
          return;
        }

        type metadata accessor for CurrentWeather();
        sub_100003928();
        if (*(v11 + 84) != v3)
        {
          sub_10022C350(&qword_100CAB9B0);
          sub_100003928();
          if (*(v12 + 84) != v3)
          {
            type metadata accessor for ChartViewModelInterpolationMode();
          }
        }
      }
    }
  }

  sub_1000178C4();

  sub_10001B350(v7, v8, v9, v10);
}

uint64_t sub_100229A58(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  type metadata accessor for Date();
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
  }

  else
  {
    type metadata accessor for DetailChartCondition();
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      v9 = sub_10022C350(&unk_100CB2CF0);
      v10 = a3[9];
    }
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

uint64_t sub_100229B60(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v4 + 84) != a3)
    {
      type metadata accessor for DetailChartCondition();
      sub_100003928();
      if (*(v5 + 84) != a3)
      {
        sub_10022C350(&unk_100CB2CF0);
      }
    }

    sub_1000178C4();

    return sub_10001B350(v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_100229C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20)));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_100229D08()
{
  sub_1000062E8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_1000178C4();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_100229D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for ConditionDetailChartHeaderInput();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for ConditionDetailChartDataInput(0);
    v9 = v3 + *(a3 + 20);
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100229E2C()
{
  sub_1000062E8();
  type metadata accessor for ConditionDetailChartHeaderInput();
  sub_100003928();
  if (*(v1 + 84) != v0)
  {
    type metadata accessor for ConditionDetailChartDataInput(0);
  }

  sub_1000178C4();

  return sub_10001B350(v2, v3, v4, v5);
}

uint64_t sub_100229EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100229F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_100229F74()
{
  sub_1000152DC();
  sub_100003928();
  if (*(v4 + 84) == v1)
  {

    return sub_100024D10(v0, v1, v3);
  }

  else
  {
    v6 = *(v0 + *(v2 + 20));
    if (v6 >= 2)
    {
      return ((v6 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10022A01C()
{
  sub_10001FFF8();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100005B64();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_10022A0A0()
{
  sub_1000152DC();
  sub_100003928();
  if (*(v4 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 20)));
  }

  return sub_100024D10(v0, v1, v3);
}

void sub_10022A12C()
{
  sub_10001FFF8();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100005B64();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_10022A1CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  v7 = type metadata accessor for TimeZone();
  v8 = a1 + *(a3 + 24);

  return sub_100024D10(v8, a2, v7);
}

void *sub_10022A248(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimeZone();
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10022A338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA61E0);
    sub_100003928();
    if (*(v11 + 84) != a2)
    {
      return sub_100020D78(a1 + *(a3 + 24));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_10022A430()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_10022C350(&qword_100CA61E0);
    sub_100003928();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_10022A528()
{
  sub_10000FE4C();
  result = EnvironmentValues.multilineTextAlignment.getter();
  *v0 = result;
  return result;
}

uint64_t sub_10022A580()
{
  sub_10000FE4C();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_10022A5AC()
{
  v1 = *(type metadata accessor for WindCategoryTableView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_10022A72C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[5] + 8) = -a2;
      return;
    }

    sub_10022C350(&qword_100CA3BD8);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_10022C350(&qword_100CAD870);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          sub_10022C350(&qword_100CEE148);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[13];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CA3BF0);
            v14 = a4[14];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10022A954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1009F9FA0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10022A9B4()
{
  sub_10022E824(&qword_100CEE538);
  sub_10022E824(&qword_100CEE530);
  sub_10022E824(&qword_100CEE540);
  sub_10022E824(&qword_100CEE548);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100006F64(v0, &qword_100CEE548);
  sub_100005DB4();
  sub_100015314();
  sub_10001D590();
  sub_100015314();
  sub_10002D5A4();
  sub_100005DE4();
  sub_100015314();
  return sub_100015314();
}

uint64_t sub_10022AAE0()
{
  v0 = sub_100003B38();
  type metadata accessor for LollipopDetailViewModel(v0);
  v1 = sub_100003B2C();

  return sub_100024D10(v1, v2, v3);
}

uint64_t sub_10022AB1C()
{
  v1 = sub_100003B38();
  type metadata accessor for LollipopDetailViewModel(v1);
  v2 = sub_100003B2C();

  return sub_10001B350(v2, v3, v0, v4);
}

uint64_t sub_10022AB5C()
{
  v0 = sub_100003B38();
  type metadata accessor for TitleAndDetailLollipopDetailViewModel(v0);
  v1 = sub_100003B2C();

  return sub_100024D10(v1, v2, v3);
}

uint64_t sub_10022AB98()
{
  v1 = sub_100003B38();
  type metadata accessor for TitleAndDetailLollipopDetailViewModel(v1);
  v2 = sub_100003B2C();

  return sub_10001B350(v2, v3, v0, v4);
}

uint64_t sub_10022ACF4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for AirQualityComponentViewModel();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(a1 + a3[5] + 8);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_10022C350(&qword_100CA3BE0);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CBB750);
      v14 = a3[10];
    }

    v9 = a1 + v14;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_10022AE14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for AirQualityComponentViewModel();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[5] + 8) = -a2;
      return;
    }

    sub_10022C350(&qword_100CA3BE0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CBB750);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10022AF3C()
{
  v1 = *(sub_10022C350(&qword_100CEE9C8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = sub_10022C350(&qword_100CB7090);
  v5(v2 + *(v6 + 36), v3);

  return swift_deallocObject();
}

uint64_t sub_10022B080()
{

  return swift_deallocObject();
}

uint64_t sub_10022B168()
{

  sub_100006F14(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10022B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    if (*(*(HourPrecipitationDetailView - 8) + 84) == a2)
    {
      v9 = HourPrecipitationDetailView;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CEED10);
      v10 = *(a3 + 28);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_10022B288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    if (*(*(HourPrecipitationDetailView - 8) + 84) == a3)
    {
      v9 = HourPrecipitationDetailView;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CEED10);
      v10 = *(a4 + 28);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_10022B3AC()
{
  HourPrecipitationDetailInnerView = type metadata accessor for NextHourPrecipitationDetailInnerView();
  v47 = *(*(HourPrecipitationDetailInnerView - 8) + 80);
  v3 = v0 + ((v47 + 16) & ~v47);
  sub_100006F14(v3);
  v4 = v3 + *(HourPrecipitationDetailInnerView + 20);

  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
  v6 = HourPrecipitationDetailView[7];
  type metadata accessor for NextHourPrecipitationChartViewModel();
  sub_100003D98();
  (*(v7 + 8))(v4 + v6);
  v8 = v4 + HourPrecipitationDetailView[8];

  v9 = type metadata accessor for ConditionDetailMapViewModel();
  v10 = v9[5];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v11 + 8))(v8 + v10);
  v12 = v8 + v9[6];
  v13 = type metadata accessor for WeatherData(0);
  if (!sub_1000057B4(v13))
  {

    v14 = v1[5];
    v15 = type metadata accessor for Locale();
    if (!sub_100024D10(v12 + v14, 1, v15))
    {
      sub_100003B20();
      (*(v16 + 8))(v12 + v14, v15);
    }

    v17 = v1[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v18 + 8))(v12 + v17);
    v19 = v12 + v1[7];
    v20 = sub_10022C350(&qword_100CAC710);
    if (!sub_100024D10(v19, 1, v20))
    {
      type metadata accessor for Date();
      sub_100003D98();
      v45 = *(v21 + 8);
      v46 = v22;
      v45(v19);
      v23 = *(v20 + 48);
      v24 = type metadata accessor for WeatherDataRelevancy();
      if (!sub_100024D10(v19 + v23, 1, v24))
      {
        (v45)(v19 + v23, v46);
      }
    }

    v25 = v12 + v1[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v27 + 8))(v25);
    }

    else if (!EnumCaseMultiPayload)
    {
    }

    v28 = v12 + v1[9];
    v29 = type metadata accessor for WeatherDataOverrides();
    if (!sub_100024D10(v28, 1, v29))
    {
      v30 = type metadata accessor for Date();
      if (!sub_1000057B4(v30))
      {
        sub_100003B20();
        (*(v31 + 8))(v28, v1);
      }

      v32 = *(v29 + 20);
      if (!sub_100024D10(v28 + v32, 1, v1))
      {
        sub_100003B20();
        (*(v33 + 8))(v28 + v32, v1);
      }
    }
  }

  v34 = v9[8];
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003D98();
  (*(v35 + 8))(v8 + v34);
  v36 = HourPrecipitationDetailView[9];
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v37 + 8))(v4 + v36);
  v38 = HourPrecipitationDetailView[10];
  v39 = sub_10022C350(&qword_100CAE8F0);
  if (!sub_100024D10(v4 + v38, 1, v39))
  {
    sub_100003B20();
    (*(v40 + 8))(v4 + v38, v39);
  }

  v41 = v3 + *(HourPrecipitationDetailInnerView + 28);
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point();
  if (!sub_100024D10(v41, 1, HourPrecipitationChartView))
  {
    sub_100003B20();
    (*(v43 + 8))(v41, HourPrecipitationChartView);
  }

  sub_10022C350(&qword_100CEED10);

  return swift_deallocObject();
}

uint64_t sub_10022B8E8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CEEE30);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10022B950(uint64_t a1)
{
  sub_10022C350(&qword_100CEEE30);
  sub_100003D98();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10022B9F0()
{

  return swift_deallocObject();
}

__n128 sub_10022BA74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10022BAB0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for TimeZone();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for ConditionUnits();
    sub_100003928();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[9];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CAC1B0);
      v12 = a3[10];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_10022BC08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      type metadata accessor for ConditionUnits();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CAC1B0);
        v14 = a4[10];
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10022BD5C()
{
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  return swift_getWitnessTable();
}

uint64_t sub_10022BDEC@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherIntentResponse.code.getter();
  *a1 = result;
  return result;
}

double sub_10022BF20@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_10022BF44(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_10022BF9C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10022C350(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_10022C398()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v6);
  sub_10001BA34();
  v9 = type metadata accessor for _TagTraitWritingModifier();
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10000C790();
  (*(v8 + 16))(v1, v7, v3);
  sub_10022E7A8(v1, v5, v3, v0);
  View.modifier<A>(_:)();
  (*(v11 + 8))(v0, v9);
  sub_10000536C();
}

uint64_t variable initialization expression of WeatherAsyncImage.url()
{
  sub_10000C76C();
  type metadata accessor for URL();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SessionEventsAndDataCoordinator.lock()
{
  v0 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CA2D40);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  sub_10022E90C(&qword_100CA2D48, &type metadata accessor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50);
  sub_1000037F8();
  sub_100006F64(v1, &qword_100CA2D50);
  sub_10003B8C0();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  sub_100037034();
  return UnfairLock.init(options:)();
}

uint64_t variable initialization expression of SessionEventsAndDataCoordinator.startMethod@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StartMethod.unknown(_:);
  type metadata accessor for StartMethod();
  sub_1000037E8();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_10022C788(uint64_t a1)
{
  type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  (*(v5 + 16))(v4 - v3, a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

void variable initialization expression of OpenWeatherAirQualityIntent._location()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100036C4C(v1);
  v2 = sub_10022C350(&qword_100CA2D68);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100028068(v4, v35);
  __chkstk_darwin(v5);
  sub_10002FD24(v6, v7, v8, v9, v10, v11, v12, v13, v36);
  v14 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100037908();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001BA34();
  v19 = type metadata accessor for Locale();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v21 = sub_10001621C();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100011330();
  v23 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_1000200F8();
  v25 = sub_10022C350(&qword_100CA2D78);
  sub_100069338(v25);
  static Locale.current.getter();
  v26 = *(v17 + 104);
  v27 = sub_10004E2F8();
  v26(v27);
  sub_100005354();
  sub_100043938();
  sub_1000B9830();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = sub_10004E2F8();
  v26(v28);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = sub_10002400C();
  sub_10001B350(v29, v30, v31, v23);
  static LocationSearchEntity.makeCurrentLocation()();
  v32 = sub_100049540();
  sub_100016638(v32);
  v33 = sub_100031B9C();
  v34(v33);
  sub_10022C350(&qword_100CA2D80);
  sub_1000226EC(&qword_100CA2D88);
  sub_10015E074();
  sub_100071BFC();
  sub_1000745B8();
  sub_10000536C();
}

void variable initialization expression of OpenWeatherAirQualityIntent._position()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v34 = v2;
  v35 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v33 = v4 - v3;
  v5 = sub_10022C350(&qword_100CA2D68);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = v30 - v9;
  v10 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v12 = sub_100037908();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_100011330();
  v16 = type metadata accessor for Locale();
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000037D8();
  v18 = sub_10001621C();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_10001BA34();
  v20 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v30[1] = sub_10022C350(&qword_100CA2D98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v14 + 104);
  v23(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10000E700();
  sub_100043938();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v0, v22, v12);
  sub_10000E700();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = sub_10002400C();
  sub_10001B350(v24, v25, v26, v20);
  v36 = 0;
  v27 = type metadata accessor for IntentDialog();
  sub_10001B350(v31, 1, 1, v27);
  sub_10001B350(v32, 1, 1, v27);
  v28 = sub_1000866C4();
  v29(v28);
  sub_10022E86C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10000536C();
}

void variable initialization expression of OpenSunriseSunsetIntent._location()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100036C4C(v1);
  v2 = sub_10022C350(&qword_100CA2D68);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100028068(v4, v35);
  __chkstk_darwin(v5);
  sub_10002FD24(v6, v7, v8, v9, v10, v11, v12, v13, v36);
  v14 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100037908();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001BA34();
  v19 = type metadata accessor for Locale();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v21 = sub_10001621C();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100011330();
  v23 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_1000200F8();
  v25 = sub_10022C350(&qword_100CA2D78);
  sub_100069338(v25);
  static Locale.current.getter();
  v26 = *(v17 + 104);
  v27 = sub_10004E2F8();
  v26(v27);
  sub_100005354();
  sub_100043938();
  sub_1000B9830();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = sub_10004E2F8();
  v26(v28);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = sub_10002400C();
  sub_10001B350(v29, v30, v31, v23);
  static LocationSearchEntity.makeCurrentLocation()();
  v32 = sub_100049540();
  sub_100016638(v32);
  v33 = sub_100031B9C();
  v34(v33);
  sub_10022C350(&qword_100CA2D80);
  sub_1000226EC(&qword_100CA2D88);
  sub_10015E074();
  sub_100071BFC();
  sub_1000745B8();
  sub_10000536C();
}

uint64_t variable initialization expression of LocaleMonitor.lastLocale()
{
  sub_10000C76C();
  type metadata accessor for Locale();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of LocaleMonitor.lastTemperatureUnit()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Temperature();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of LocationSearchEntity._name()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CA2DA8);
  LocalizedStringResource.init(stringLiteral:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of LocationSearchEntity._placemark()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CA2DB0);
  LocalizedStringResource.init(stringLiteral:)();
  return EntityProperty<>.init(title:)();
}

uint64_t sub_10022D41C(uint64_t *a1)
{
  sub_10022C350(a1);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  return AppDependency.__allocating_init(key:manager:)();
}

uint64_t variable initialization expression of LocationSearchEntityQuery.locationSearcher()
{
  type metadata accessor for LocationSearcher();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of LocalSearchRequestManager.geocodeRequestDeduper()
{
  type metadata accessor for PromiseDeduperFlags();
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_10000C790();
  sub_10022E90C(&qword_100CA2E08, &type metadata accessor for PromiseDeduperFlags);
  sub_10022C350(&qword_100CA2E10);
  sub_1000037F8();
  sub_100006F64(v1, &qword_100CA2E10);
  sub_10003B8C0();
  sub_10022C350(&qword_100CA2E20);
  swift_allocObject();
  sub_100037034();
  return PromiseDeduper.init(options:)();
}

double variable initialization expression of LocalSearchRequestManager.$__lazy_storage_$_store@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_100A2C400;
  return result;
}

uint64_t variable initialization expression of SettingsMonitor.lastDistanceConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Distance();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SettingsMonitor.lastWindSpeedConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.WindSpeed();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SettingsMonitor.lastPressureConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Pressure();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SettingsMonitor.lastPrecipitationConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Precipitation();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

void variable initialization expression of OpenMoonIntent._location()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100036C4C(v1);
  v2 = sub_10022C350(&qword_100CA2D68);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100028068(v4, v35);
  __chkstk_darwin(v5);
  sub_10002FD24(v6, v7, v8, v9, v10, v11, v12, v13, v36);
  v14 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100037908();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001BA34();
  v19 = type metadata accessor for Locale();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v21 = sub_10001621C();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100011330();
  v23 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_1000200F8();
  v25 = sub_10022C350(&qword_100CA2D78);
  sub_100069338(v25);
  static Locale.current.getter();
  v26 = *(v17 + 104);
  v27 = sub_10004E2F8();
  v26(v27);
  sub_100005354();
  sub_100043938();
  sub_1000B9830();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = sub_10004E2F8();
  v26(v28);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = sub_10002400C();
  sub_10001B350(v29, v30, v31, v23);
  static LocationSearchEntity.makeCurrentLocation()();
  v32 = sub_100049540();
  sub_100016638(v32);
  v33 = sub_100031B9C();
  v34(v33);
  sub_10022C350(&qword_100CA2D80);
  sub_1000226EC(&qword_100CA2D88);
  sub_10015E074();
  sub_100071BFC();
  sub_1000745B8();
  sub_10000536C();
}

void variable initialization expression of OpenMoonIntent._date()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v38 = v2;
  v39 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v37 = v4 - v3;
  sub_10022C350(&qword_100CA2E28);
  sub_1000037C4();
  v35 = v6;
  v36 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v34 = v32 - v8;
  v9 = sub_10022C350(&qword_100CA2D68);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v33 = v32 - v11;
  v12 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000200F8();
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for Locale();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_10000C790();
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  v25 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_10001BA34();
  v32[1] = sub_10022C350(&qword_100CA2E30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v28 = *(v16 + 104);
  v28(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_10000E700();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28(v20, v27, v14);
  sub_10000E700();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v0, 0, 1, v25);
  v29 = type metadata accessor for IntentDialog();
  sub_10001B350(v33, 1, 1, v29);
  (*(v35 + 104))(v34, enum case for IntentParameter.DateKind.dateTime<A>(_:), v36);
  v30 = sub_1000866C4();
  v31(v30);
  IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
  sub_10000536C();
}

uint64_t sub_10022DE08@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_10022C350(a1);

  return swift_storeEnumTagMultiPayload();
}

void variable initialization expression of NetworkConnectivityMonitor.setupMonitorQueue()
{
  sub_10000C778();
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000C70C(0, &qword_100CB4670);
  static DispatchQoS.unspecified.getter();
  sub_10022E90C(&qword_100CA2E50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58);
  sub_1000037F8();
  sub_100006F64(v9, &qword_100CA2E58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10000536C();
}

void sub_10022E0F8()
{
  sub_100020558();
  LocationSearchEntityFromStringResolver.init()();
  *v0 = v1;
}

uint64_t sub_10022E120@<X0>(uint64_t *a1@<X8>)
{
  result = _s7Weather31SessionEventsAndDataCoordinatorC25lastPushedTemperatureUnit33_8ECD549B82C3B8992579EA0CB842041CLLSo06NSUnitI0CSgvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_10022E148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BEDC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BF70(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E1A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BEE4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E1E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10022F29C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10022E214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10022F2F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10022E260@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BEFC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E2F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022F334(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10022E328@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10022E35C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void *sub_10022E3A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10022E3B4(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA3030, type metadata accessor for LaunchOptionsKey);
  v3 = sub_10022E90C(&qword_100CA3038, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E470(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA30E0, type metadata accessor for Key);
  v3 = sub_10022E90C(&qword_100CA30E8, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E52C(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA3040, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_10022E90C(&qword_100CA3048, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E5E8(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA3100, type metadata accessor for AttributeName);
  v3 = sub_10022E90C(&qword_100CA3108, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E6A4@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10022E6EC(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA30F0, type metadata accessor for TraitKey);
  v3 = sub_10022E90C(&qword_100CA30F8, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E7A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _TagTraitWritingModifier();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_10022E824(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10022E86C()
{
  result = qword_100CA2DA0;
  if (!qword_100CA2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA2DA0);
  }

  return result;
}

unint64_t sub_10022E8C0()
{
  result = qword_100CA2DC8;
  if (!qword_100CA2DC8)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA2DC8);
  }

  return result;
}

uint64_t sub_10022E90C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022E990()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10022E9E4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10022EA58()
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

uint64_t sub_10022EB10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022EB30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_10022ED30(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10022EDB0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hashValue.getter();
  sub_100037034();

  return v0;
}

uint64_t sub_10022EDE4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10022F268()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String._bridgeToObjectiveC()();
  sub_100037034();

  return v0;
}

uint64_t sub_10022F29C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 & a1;
  if (UIRectCorner.isEmpty.getter())
  {
    return 0;
  }

  *v1 = v3 & ~a1;
  return v4;
}

uint64_t sub_10022F2F0(uint64_t a1)
{
  v2 = *v1 & a1;
  *v1 |= a1;
  if (UIRectCorner.isEmpty.getter())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10022F334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10022F3EC(unsigned int *a1)
{
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005384();
  (*(v5 + 104))(v1, *a1, ParameterKey);
  WeatherQueryParameterKey.rawValue.getter();
  (*(v5 + 8))(v1, ParameterKey);
  v7 = URLHandlerMatch.Values.subscript.getter();
  v9 = v8;

  if (v9)
  {
    result = v7;
  }

  else
  {
    result = 48;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  v12 = HIBYTE(v11) & 0xF;
  v13 = result & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 0;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v16 = sub_10022FBE0(result, v11, 10);
    v32 = v33;
    goto LABEL_76;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    if (result == 43)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          sub_10001915C();
          while (1)
          {
            sub_10001BA4C();
            if (!v18 & v17)
            {
              break;
            }

            sub_10001E598();
            if (!v18)
            {
              break;
            }

            v16 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            sub_100007E48();
            if (v18)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      goto LABEL_83;
    }

    if (result != 45)
    {
      if (v12)
      {
        while (1)
        {
          sub_10001BA4C();
          if (!v18 & v17)
          {
            break;
          }

          sub_10001E598();
          if (!v18)
          {
            break;
          }

          v16 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          sub_100007E48();
          if (v18)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        sub_10001915C();
        while (1)
        {
          sub_10001BA4C();
          if (!v18 & v17)
          {
            break;
          }

          sub_10001E598();
          if (!v18)
          {
            break;
          }

          v16 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          sub_100007E48();
          if (v18)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }
  }

  else
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v15 = *result;
    if (v15 == 43)
    {
      if (v13 >= 1)
      {
        if (v13 != 1)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              sub_10001BA4C();
              if (!v18 & v17)
              {
                goto LABEL_74;
              }

              sub_10001E598();
              if (!v18)
              {
                goto LABEL_74;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_74;
              }

              sub_100007E48();
              if (v18)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      goto LABEL_82;
    }

    if (v15 != 45)
    {
      if (v13)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            v28 = *result - 48;
            if (v28 > 9)
            {
              goto LABEL_74;
            }

            v29 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_74;
            }

            v16 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_74;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_74:
      v16 = 0;
      v21 = 1;
      goto LABEL_75;
    }

    if (v13 >= 1)
    {
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            sub_10001BA4C();
            if (!v18 & v17)
            {
              goto LABEL_74;
            }

            sub_10001E598();
            if (!v18)
            {
              goto LABEL_74;
            }

            v16 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_74;
            }

            sub_100007E48();
            if (v18)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_65:
        v21 = 0;
LABEL_75:
        v32 = v21;
LABEL_76:

        return (v16 > 0) & ~v32;
      }

      goto LABEL_74;
    }

    __break(1u);
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_10022F730()
{
  v1 = v0;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v30[0] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = v30 - v12;
  v14 = *(v4 + 104);
  v14(v30 - v12, enum case for WeatherQueryParameterKey.lat(_:), ParameterKey, v11);
  WeatherQueryParameterKey.rawValue.getter();
  v15 = *(v4 + 8);
  v15(v13, ParameterKey);
  v30[1] = v1;
  v16 = URLHandlerMatch.Values.subscript.getter();
  v18 = v17;

  if (!v18)
  {
    return 0;
  }

  v19 = sub_10022F9A0(v16, v18);
  if (v20)
  {
    return 0;
  }

  v21 = v19;
  (v14)(v9, enum case for WeatherQueryParameterKey.long(_:), ParameterKey);
  WeatherQueryParameterKey.rawValue.getter();
  v22 = sub_100003834();
  (v15)(v22);
  v23 = URLHandlerMatch.Values.subscript.getter();
  v25 = v24;

  if (!v25)
  {
    (v14)(v30[0], enum case for WeatherQueryParameterKey.lng(_:), ParameterKey);
    WeatherQueryParameterKey.rawValue.getter();
    v26 = sub_100003834();
    (v15)(v26);
    v23 = URLHandlerMatch.Values.subscript.getter();
    v25 = v27;

    if (!v25)
    {
      return 0;
    }
  }

  sub_10022F9A0(v23, v25);
  if (v28)
  {
    return 0;
  }

  return v21;
}

uint64_t sub_10022F9A0(uint64_t a1, uint64_t a2)
{
  sub_100230640(a1, a2);

  return 0;
}

uint64_t sub_10022FA00()
{
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100005384();
  (*(v3 + 104))(v0, enum case for WeatherQueryParameterKey.city(_:), ParameterKey);
  WeatherQueryParameterKey.rawValue.getter();
  (*(v3 + 8))(v0, ParameterKey);
  v5 = URLHandlerMatch.Values.subscript.getter();
  v7 = v6;

  if (v7)
  {
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {

      if (qword_100CA2758 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000703C(v9, qword_100D90C60);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
      }

      return 0;
    }
  }

  return v5;
}

unsigned __int8 *sub_10022FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100230168();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100230168()
{
  v0 = sub_1002301D4();
  v4 = sub_100230208(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100230208(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10007996C(v9, 0), v12 = sub_100230368(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100230368(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_100230578(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_100230578(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100230578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_100014054(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_100014054(v3);
    return v4 | 8;
  }
}

_BYTE *sub_1002305D4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_100230640(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_100230754(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);

  return static LocationOfInterestType.== infix(_:_:)();
}

uint64_t sub_1002307D0()
{
  String.hash(into:)();
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  type metadata accessor for LocationOfInterestType();
  sub_10001BA5C();
  sub_1002357D8(v0, v1);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100230850()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  type metadata accessor for LocationOfInterestType();
  sub_1002357D8(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100230908()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for LocationOfInterestType();
  sub_10001BA5C();
  sub_1002357D8(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10023099C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C42900, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002309E8(char a1)
{
  result = 0x61647055656D6F68;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0x616470556B726F77;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD00000000000002ALL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_100230B18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10023099C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100230B48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002309E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100230B74()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v58 = v2;
  v59 = v4;
  v60 = v6;
  v61 = v5;
  v7 = v4;
  v9 = v8;
  v55 = v8;
  v10 = sub_10022C350(&qword_100CA34C8);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  sub_10022C350(&qword_100CA34D0);
  sub_1000037C4();
  v56 = v14;
  v57 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  type metadata accessor for WeatherMenuTipMutableAttributes();
  sub_100007E8C();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v0 + 16) = v19;
  *(v0 + 24) = 67109120;
  sub_10022C350(&qword_100CA34D8);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v20 = OBJC_IVAR____TtC7Weather18ListViewTipManager_tipStatus;
  type metadata accessor for Tips.Status();
  sub_100235718();
  *(v0 + v20) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cancellables) = 0;
  v21 = v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = -1;
  sub_100035B30(v7, v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_notificationsOptInStatusFactory);
  sub_100035B30(v3, v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager);
  v22 = (v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_dispatcher);
  v23 = v61;
  *v22 = v9;
  v22[1] = v23;
  *&v62[0] = *(v0 + 32);
  v24 = objc_opt_self();

  v25 = [v24 mainRunLoop];
  v63 = v25;
  type metadata accessor for NSRunLoop.SchedulerOptions();
  v26 = sub_1000313F0();
  sub_10001B350(v26, v27, v28, v29);
  sub_1000405D8();
  sub_100006F64(&qword_100CA34F0, &qword_100CA34D8);
  sub_1002357D8(&qword_100CA34F8, sub_1000405D8);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000180EC(v13, &qword_100CA34C8);

  sub_100007E8C();
  swift_allocObject();
  swift_weakInit();
  sub_100006F64(&qword_100CA3500, &qword_100CA34D0);
  v30 = v56;
  v31 = Publisher<>.sink(receiveValue:)();

  (*(v57 + 8))(v18, v30);
  *(v1 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cancellables) = v31;

  sub_10000E700();
  sub_1002336E8(v32, v33, v34);
  sub_10000E700();
  sub_1002336E8(v35, v36, v37);
  sub_10000E700();
  sub_1002336E8(v38, v39, v40);
  sub_10000E700();
  sub_1002336E8(v41, v42, v43);
  sub_10000E700();
  sub_1002336E8(v44, v45, v46);
  sub_10000E700();
  sub_1002336E8(v47, v48, v49);
  v50 = swift_allocObject();
  v51 = v61;
  *(v50 + 16) = v55;
  *(v50 + 24) = v51;

  sub_1002336E8(7, sub_100235774, v50);

  v52 = v60;
  sub_100035B30(v60, v62);
  v53 = swift_allocObject();
  sub_100013188(v62, v53 + 16);
  sub_1002336E8(5, sub_10023577C, v53);

  sub_100006F14(v58);
  sub_100006F14(v52);
  sub_100006F14(v59);
  sub_10000536C();
}

uint64_t sub_10023106C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002312FC();
  }

  return result;
}

uint64_t sub_1002310CC(uint64_t (*a1)(uint64_t))
{
  sub_10022C350(&qword_100CA3508);
  type metadata accessor for MainAction();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A2C3F0;
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_100035AD0(v7, v4, &unk_100CD81B0);
  v5 = v2;
  v6 = 0;
  sub_10004F1B0(v4, a1);
  sub_1000180EC(v4, &qword_100CA3510);
  return sub_1000180EC(v7, &unk_100CD81B0);
}

uint64_t sub_1002312B0(unsigned int a1)
{
  v2 = (a1 >> 8) & 1;
  v3 = HIWORD(a1);
  if ((a1 & 0xFE) == 2)
  {
    LOBYTE(v2) = 0;
    LOBYTE(v3) = 0;
  }

  v1[24] = ((a1 & 0xFE) != 2) & (a1 ^ 1);
  v1[25] = v3;
  v1[26] = v2;
  sub_10000E700();
  return sub_1002336E8(v4, v5, v6);
}

void sub_1002312FC()
{
  sub_10000C778();
  v1 = v0;
  sub_1000038D8();
  v222 = type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  v223 = v2;
  __chkstk_darwin(v3);
  sub_100003848();
  v234 = v4;
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_10000E70C();
  v237 = v6;
  v7 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v219 - v9;
  v241 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v235 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v240 = (v14 - v13);
  sub_1000038CC();
  v239 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v226 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v238 = v18 - v17;
  sub_1000038CC();
  v232 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  v225 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v233 = v22;
  sub_1000038CC();
  v23 = type metadata accessor for Tips.InvalidationReason();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = *(v0 + 64);
  sub_100234F84();
  if (v31)
  {
    v32 = *(v0 + 25);
    v33 = *(v0 + 26);
    LOBYTE(v243) = *(v0 + 24);
    BYTE1(v243) = v32;
    BYTE2(v243) = v33;
    (*(v25 + 104))(v29, enum case for Tips.InvalidationReason.actionPerformed(_:), v23);
    sub_100235784();
    Tip.invalidate(reason:)();
    (*(v25 + 8))(v29, v23);
    if (qword_100CA27B0 != -1)
    {
      sub_10000F960();
    }

    v34 = type metadata accessor for Logger();
    sub_1000212C4(v34, qword_100D90D68);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_10000389C();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Invalidate notification tip due to invalidation before TipKit migration or resubscription tip shown", v37, 2u);
      sub_100003884();
    }
  }

  else
  {
    sub_1002346E8();
    v39 = v38;
    if (qword_100CA1E70 != -1)
    {
      swift_once();
    }

    v40 = sub_10022C350(&qword_100CA35A0);
    sub_10000703C(v40, qword_100D8F350);
    sub_1000745EC(v39 & 1);
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
  }

  v41 = sub_100234B10(v30);
  if (qword_100CA1F98 != -1)
  {
    swift_once();
  }

  v236 = v10;
  v42 = sub_10022C350(&qword_100CA35A0);
  sub_10000703C(v42, qword_100D8FC10);
  sub_1000745EC(v41 & 1);
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v43 = sub_100234D3C(v30);
  if (qword_100CA21A8 != -1)
  {
    swift_once();
  }

  sub_10000703C(v42, qword_100D90310);
  sub_1000745EC(v43 & 1);
  v227 = v42;
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v44 = v30 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  sub_10004E308();
  sub_100094F38(v44, v233);
  v45 = *(v232 + 48);
  v224 = v44;
  v46 = v44 + v45;
  v47 = *v46;
  v48 = *(v46 + 8);
  LODWORD(v49) = *(v46 + 16);
  v50 = *(v1 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState + 16);
  v231 = (v1 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState);
  if (v50 == 255)
  {
    v80 = sub_10000385C();
    sub_1000DC3D4(v80, v81, v82);
    v83 = sub_10000385C();
    sub_1000DC3D4(v83, v84, v85);
LABEL_18:
    if (qword_100CA27B0 != -1)
    {
      sub_10000F960();
    }

    v86 = type metadata accessor for Logger();
    v87 = sub_10000703C(v86, qword_100D90D68);
    v88 = sub_10000385C();
    sub_1000DC3D4(v88, v89, v90);

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    v93 = sub_10000385C();
    sub_100187350(v93, v94, v95);

    v96 = os_log_type_enabled(v91, v92);
    v229 = v48;
    v230 = v47;
    v228 = v87;
    if (v96)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v221 = v98;
      *v97 = 141558787;
      *(v97 + 4) = 1752392040;
      *(v97 + 12) = 2081;
      v242 = v98;
      v243 = v47;
      v244 = v48;
      v245 = v49;
      sub_10016D534();
      v220 = v92;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = sub_100078694(v99, v100, &v242);

      *(v97 + 14) = v101;
      *(v97 + 22) = 2160;
      *(v97 + 24) = 1752392040;
      *(v97 + 32) = 2081;
      v102 = sub_100018254();
      sub_100236000(v102, v103, v104);
      v105 = sub_100018254();
      v108 = sub_1002784C0(v105, v106, v107);
      v110 = v109;
      v111 = sub_100018254();
      sub_100235FEC(v111, v112, v113);
      v114 = sub_100078694(v108, v110, &v242);

      *(v97 + 34) = v114;
      _os_log_impl(&_mh_execute_header, v91, v220, "ListViewTipManager detected location of interest state change new=%{private,mask.hash}s, old=%{private,mask.hash}s", v97, 0x2Au);
      swift_arrayDestroy();
      sub_100003884();
      v87 = v228;
      sub_100003884();
    }

    if (v49 < 2)
    {
      sub_100187350(v230, v229, v49);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = sub_10000389C();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "ListViewTipManager location of interest state is new or saved", v117, 2u);
        sub_100003884();
      }

      LODWORD(v225) = v49;

      v118 = *(v233 + *(v232 + 24));
      v119 = *(v118 + 16);
      if (v119)
      {
        v237 = *(v226 + 16);
        v120 = v118 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
        v121 = *(v226 + 72);
        v122 = (v226 + 8);
        v49 = v236;
        v91 = v235 + 4;
        v123 = _swiftEmptyArrayStorage;
        do
        {
          v124 = v238;
          v125 = v239;
          v237(v238, v120, v239);
          LocationModel.locationOfInterest.getter();
          (*v122)(v124, v125);
          v126 = v241;
          sub_1000038B4(v49, 1, v241);
          if (v127)
          {
            sub_1000180EC(v49, &qword_100CA3588);
          }

          else
          {
            isa = v91->isa;
            (v91->isa)(v240, v49, v126);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100032BC8();
              v123 = v133;
            }

            v130 = v123[2];
            if (v130 >= v123[3] >> 1)
            {
              sub_100032BC8();
              v123 = v134;
            }

            v123[2] = v130 + 1;
            sub_10000C7B8();
            isa(v123 + v131 + *(v132 + 72) * v130, v240, v241);
            v49 = v236;
          }

          v120 += v121;
          --v119;
        }

        while (v119);
      }

      else
      {
        v123 = _swiftEmptyArrayStorage;
      }

      v172 = v123[2];

      if (!v172)
      {
        v78 = v229;
        v77 = v230;
        v79 = v225;
        goto LABEL_57;
      }

      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.default.getter();
      sub_10000C79C(v174);
      sub_100037928();
      if (v175)
      {
        v176 = sub_10000389C();
        sub_100025054(v176);
        sub_1000133FC(&_mh_execute_header, v177, v178, "ListViewTipManager set HomeAndWorkAddedTip.displayTip = true");
        sub_100007E54();
      }

      if (qword_100CA27D0 != -1)
      {
        swift_once();
      }

      sub_1000212C4(v227, qword_100D90DC8);
      sub_1000745EC(1);
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      sub_10001E5AC();
      v180 = v91;
      goto LABEL_65;
    }

    v123 = v229;
    if (v49 != 2)
    {
      v162 = v87;
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.default.getter();
      if (!sub_10000C79C(v164))
      {

        sub_10001E5AC();
        v180 = v233;
LABEL_65:
        sub_100031148(v180, v179);
        v162 = v230;
LABEL_79:
        v207 = v231;
        v208 = *v231;
        v209 = v231[1];
        *v231 = v162;
        v207[1] = v123;
        v210 = *(v207 + 16);
        *(v207 + 16) = v49;
        sub_100235FEC(v208, v209, v210);
        goto LABEL_80;
      }

      v166 = sub_10000389C();
      sub_100025054(v166);
      sub_1000133FC(&_mh_execute_header, v167, v168, "ListViewTipManager location of interest state is none");
      sub_100007E54();
      v169 = sub_100069364();
      v171 = 3;
      goto LABEL_69;
    }

    sub_10004E308();
    v135 = v225;
    sub_100094F38(v224, v225);
    sub_1002323BC();
    v137 = v136;
    sub_10001E5AC();
    sub_100031148(v135, v138);
    if (!*(v137 + 16))
    {

      v162 = v87;
      v163 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v193))
      {
        v194 = sub_10000389C();
        sub_100025054(v194);
        sub_1000133FC(&_mh_execute_header, v195, v196, "ListViewTipManager changes is empty");
        sub_100007E54();
      }

      v169 = sub_100069364();
      v171 = 2;
LABEL_69:
      sub_100187350(v169, v170, v171);

      sub_10001E5AC();
      v198 = v233;
LABEL_78:
      sub_100031148(v198, v197);
      goto LABEL_79;
    }

    LODWORD(v225) = 2;
    sub_10022C350(&qword_100CA35A8);
    v139 = v223;
    v140 = *(v223 + 72);
    v141 = (*(v223 + 80) + 32) & ~*(v223 + 80);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_100A2D320;
    v236 = v142;
    v144 = *(v139 + 104);
    v143 = v142 + v141;
    LODWORD(v226) = enum case for LocationOfInterestType.home(_:);
    v145 = v222;
    v144(v143);
    v241 = v140;
    LODWORD(v221) = enum case for LocationOfInterestType.work(_:);
    v146 = v145;
    v235 = (v139 + 104);
    v232 = v144;
    v144(v143 + v140);
    v147 = *(v139 + 16);
    v239 = v137 + 56;
    v240 = v147;
    v148 = (v139 + 8);

    v149 = 0;
    v150 = v137;
    v224 = v143;
LABEL_41:
    if (v149 == 2)
    {

      swift_setDeallocating();
      sub_1005C1D60();

      v162 = v228;
      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v212))
      {
        v213 = sub_10000389C();
        sub_100025054(v213);
        sub_1000133FC(&_mh_execute_header, v214, v215, "ListViewTipManager set HomeAndWorkUpdatedTip.displayTip = true");
        sub_100007E54();
      }

      v216 = v233;
      LOBYTE(v49) = v225;
      v123 = v229;
      if (qword_100CA2370 != -1)
      {
        swift_once();
      }

      sub_1000212C4(v227, qword_100D905A0);
      sub_1000745EC(1);
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      v217 = sub_100069364();
      sub_100187350(v217, v218, 2u);
      sub_10001E5AC();
      v198 = v216;
      goto LABEL_78;
    }

    v238 = v149;
    v240(v237, v143 + v149 * v241, v145);
    if (*(v150 + 16))
    {
      ++v238;
      sub_10001BA5C();
      sub_1002357D8(&qword_100CA3590, v151);
      v152 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v153 = ~(-1 << *(v150 + 32));
      while (1)
      {
        v154 = v152 & v153;
        if (((*(v239 + (((v152 & v153) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v152 & v153)) & 1) == 0)
        {
          break;
        }

        v155 = *(v150 + 48) + v154 * v241;
        v156 = v150;
        v157 = v234;
        v240(v234, v155, v145);
        sub_10001BA5C();
        sub_1002357D8(&qword_100CA35B0, v158);
        v159 = dispatch thunk of static Equatable.== infix(_:_:)();
        v160 = *v148;
        v161 = v157;
        v150 = v156;
        (*v148)(v161, v145);
        v152 = v154 + 1;
        if (v159)
        {
          v160(v237, v145);
          v143 = v224;
          v149 = v238;
          goto LABEL_41;
        }
      }
    }

    v182 = *v148;
    (*v148)(v237, v145);
    swift_setDeallocating();
    sub_1005C1D60();

    v183 = v234;
    LOBYTE(v49) = v235;
    v123 = v232;
    (v232)(v234, v226, v145);
    sub_10069A148();
    v185 = v184;
    v182(v183, v146);
    if (v185)
    {

      v162 = v228;
      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.default.getter();
      sub_10000C79C(v187);
      sub_100037928();
      if (v188)
      {
        v189 = sub_10000389C();
        sub_100025054(v189);
        sub_1000133FC(&_mh_execute_header, v190, v191, "ListViewTipManager set HomeUpdatedTip.displayTip = true");
        sub_100007E54();
      }

      if (qword_100CA2358 != -1)
      {
        swift_once();
      }

      v192 = qword_100D90568;
    }

    else
    {
      (v123)(v183, v221, v146);
      sub_10069A148();
      v162 = v199;

      v182(v183, v146);
      sub_100037928();
      if ((v162 & 1) == 0)
      {
LABEL_77:
        v205 = sub_100069364();
        sub_100187350(v205, v206, 2u);
        sub_10001E5AC();
        v198 = v150;
        goto LABEL_78;
      }

      v162 = v228;
      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v201))
      {
        v202 = sub_10000389C();
        sub_100025054(v202);
        sub_1000133FC(&_mh_execute_header, v203, v204, "ListViewTipManager set WorkUpdatedTip.displayTip = true");
        sub_100007E54();
      }

      if (qword_100CA2350 != -1)
      {
        swift_once();
      }

      v192 = qword_100D90550;
    }

    sub_1000212C4(v227, v192);
    sub_1000745EC(1);
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    goto LABEL_77;
  }

  v51 = sub_10000385C();
  sub_1000DC3D4(v51, v52, v53);
  v54 = sub_10000385C();
  sub_1000DC3D4(v54, v55, v56);
  v57 = sub_10000385C();
  sub_1000DC3D4(v57, v58, v59);
  v60 = sub_100011340();
  sub_100236000(v60, v61, v62);
  v63 = sub_100011340();
  sub_1000B9E84(v63, v64, v65, v47, v48, v49);
  v67 = v66;
  v68 = sub_10000385C();
  sub_100187350(v68, v69, v70);
  v71 = sub_100011340();
  sub_100235FEC(v71, v72, v73);
  if ((v67 & 1) == 0)
  {
    goto LABEL_18;
  }

  v74 = sub_10000385C();
  sub_100187350(v74, v75, v76);
  v77 = sub_10000385C();
LABEL_57:
  sub_100187350(v77, v78, v79);
  sub_10001E5AC();
  sub_100031148(v233, v181);
LABEL_80:
  sub_10000536C();
}

void sub_1002323BC()
{
  sub_10000C778();
  v170 = v1;
  v165 = v2;
  v163 = v3;
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  sub_1000037C4();
  v168 = v5;
  v169 = v4;
  __chkstk_darwin(v4);
  sub_100003848();
  v158 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  sub_10000E70C();
  v152 = v8;
  v9 = sub_10022C350(&qword_100CA3588);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  v171 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_100003878();
  v164 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v160 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v150 - v17;
  v156 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100003848();
  v151 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v155 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v166 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v162 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v161 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  v33 = &v150 - v32;
  v34 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &v150 - v36;
  v38 = type metadata accessor for WeatherCoalescedLocationResult();
  v153 = v38;
  v172 = *(v38 - 8);
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  v42 = (v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager);
  v43 = *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager + 24);
  v154 = *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager), v43);
  sub_1000038D8();
  v159 = type metadata accessor for CurrentLocation();
  v44 = sub_1000313F0();
  sub_10001B350(v44, v45, v46, v47);
  v48 = type metadata accessor for LocationsState();
  v157 = *(v163 + *(v48 + 20));
  v163 = *(v163 + *(v48 + 52));
  dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();
  sub_1000180EC(v37, &unk_100CE49F0);
  v49 = WeatherCoalescedLocationResult.coalescedLocations.getter();
  v50 = *(v172 + 8);
  v172 += 8;
  v154 = v50;
  v50(v41, v38);
  sub_1000161C0(v42, v42[3]);
  v51 = sub_1000313F0();
  sub_10001B350(v51, v52, v53, v159);
  dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();
  sub_1000180EC(v37, &unk_100CE49F0);
  v54 = WeatherCoalescedLocationResult.coalescedLocations.getter();
  v55 = v156;
  v165 = v54;
  v154(v41, v153);
  v56 = 0;
  v57 = *(v49 + 16);
  v172 = v20 + 16;
  v157 = (v20 + 32);
  v58 = (v20 + 8);
  v163 = _swiftEmptyArrayStorage;
  v170 = v49;
  while (1)
  {
    v59 = v166;
    if (v57 == v56)
    {
      break;
    }

    if (v56 >= *(v49 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_1000B9840();
    v62 = v61 & ~v60;
    v63 = *(v20 + 72);
    (*(v20 + 16))(v33, v49 + v62 + v63 * v56, v55);
    v64 = v55;
    LocationModel.locationOfInterest.getter();
    v65 = type metadata accessor for LocationOfInterest();
    sub_1000038B4(v18, 1, v65);
    if (v66)
    {
      (*v58)(v33, v55);
      sub_1000180EC(v18, &qword_100CA3588);
      ++v56;
      v49 = v170;
    }

    else
    {
      sub_1000180EC(v18, &qword_100CA3588);
      v159 = *v157;
      (v159)(v161, v33, v55);
      v55 = v163;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v55;
      v173[0] = v55;
      if (isUniquelyReferenced_nonNull_native)
      {
        v55 = v64;
      }

      else
      {
        sub_100037040();
        sub_100071C0C();
      }

      v49 = v170;
      v70 = v68[2];
      v69 = v68[3];
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_1000166B4(v69);
        v163 = v72;
        v154 = v73;
        sub_1006A77CC();
        sub_100071C0C();
      }

      ++v56;
      v68[2] = v71;
      v163 = v68;
      (v159)(v68 + v62 + v70 * v63, v161, v55);
    }
  }

  v74 = v163;
  v75 = v163[2];
  v167 = v20;
  if (v75)
  {
    v161 = (v20 + 8);
    v173[0] = _swiftEmptyArrayStorage;
    sub_1006A7774();
    v55 = v156;
    v76 = 0;
    v77 = v173[0];
    sub_1000B9840();
    v159 = (v74 + (v79 & ~v78));
    v80 = v152;
    v81 = v162;
    while (v76 < v74[2])
    {
      v82 = v20;
      v83 = v75;
      (*(v82 + 16))(v81, v159 + *(v82 + 72) * v76, v55);
      v84 = v55;
      v85 = LocationModel.name.getter();
      v87 = v86;
      v88 = v160;
      LocationModel.locationOfInterest.getter();
      v89 = v88;
      v90 = type metadata accessor for LocationOfInterest();
      sub_1000038B4(v89, 1, v90);
      if (v66)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return;
      }

      LocationOfInterest.type.getter();
      (*v161)(v81, v84);
      (*(*(v90 - 8) + 8))(v89, v90);
      *v80 = v85;
      v80[1] = v87;
      v173[0] = v77;
      v92 = *(v77 + 16);
      v91 = *(v77 + 24);
      v55 = v84;
      if (v92 >= v91 >> 1)
      {
        sub_1000166B4(v91);
        sub_1006A7774();
        v55 = v156;
        v77 = v173[0];
      }

      ++v76;
      *(v77 + 16) = v92 + 1;
      sub_10000C7B8();
      sub_100235F88(v80, v77 + v93 + *(v94 + 72) * v92);
      v75 = v83;
      v66 = v83 == v76;
      v81 = v162;
      v74 = v163;
      v20 = v167;
      if (v66)
      {
        v162 = v77;

        v59 = v166;
        v58 = v161;
        goto LABEL_23;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v162 = _swiftEmptyArrayStorage;
LABEL_23:
  v95 = 0;
  v96 = v165;
  v97 = *(v165 + 16);
  v166 = _swiftEmptyArrayStorage;
  while (v97 != v95)
  {
    if (v95 >= *(v96 + 16))
    {
      goto LABEL_48;
    }

    sub_1000B9840();
    v100 = v99 & ~v98;
    v101 = *(v20 + 72);
    (*(v20 + 16))(v59, v96 + v100 + v101 * v95, v55);
    v102 = v59;
    v103 = v164;
    v104 = v55;
    LocationModel.locationOfInterest.getter();
    v105 = type metadata accessor for LocationOfInterest();
    sub_1000038B4(v103, 1, v105);
    if (v66)
    {
      (*v58)(v102, v55);
      sub_1000180EC(v103, &qword_100CA3588);
      ++v95;
      v59 = v102;
      v96 = v165;
    }

    else
    {
      sub_1000180EC(v103, &qword_100CA3588);
      v163 = *v157;
      (v163)(v155, v102, v55);
      v55 = v166;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v55;
      v173[0] = v55;
      v59 = v102;
      if (v106)
      {
        v55 = v104;
      }

      else
      {
        sub_100037040();
        sub_100071C0C();
      }

      v96 = v165;
      v109 = v107[2];
      v108 = v107[3];
      v110 = v109 + 1;
      if (v109 >= v108 >> 1)
      {
        sub_1000166B4(v108);
        v166 = v111;
        sub_1006A77CC();
        sub_100071C0C();
      }

      ++v95;
      v107[2] = v110;
      v166 = v107;
      (v163)(v107 + v100 + v109 * v101, v155, v55);
    }
  }

  v112 = v166;
  v113 = *(v166 + 2);
  if (v113)
  {
    v173[0] = _swiftEmptyArrayStorage;
    sub_1006A7774();
    v114 = v156;
    v115 = 0;
    v116 = v173[0];
    sub_1000B9840();
    v164 = v112 + (v118 & ~v117);
    v119 = v151;
    v163 = v113;
    while (v115 < v112[2])
    {
      v120 = v20;
      v121 = v116;
      (*(v120 + 16))(v119, v164 + *(v120 + 72) * v115, v114);
      v122 = LocationModel.name.getter();
      v124 = v123;
      LocationModel.locationOfInterest.getter();
      v125 = type metadata accessor for LocationOfInterest();
      sub_1000038B4(v171, 1, v125);
      if (v66)
      {
        goto LABEL_53;
      }

      v126 = v158;
      LocationOfInterest.type.getter();
      (*v58)(v119, v114);
      (*(*(v125 - 8) + 8))(v171, v125);
      *v126 = v122;
      v126[1] = v124;
      v116 = v121;
      v173[0] = v121;
      v128 = *(v121 + 16);
      v127 = *(v121 + 24);
      if (v128 >= v127 >> 1)
      {
        sub_1000166B4(v127);
        sub_1006A7774();
        v119 = v151;
        v114 = v156;
        v126 = v158;
        v116 = v173[0];
      }

      ++v115;
      *(v116 + 16) = v128 + 1;
      sub_10000C7B8();
      sub_100235F88(v126, v116 + v129 + *(v130 + 72) * v128);
      v112 = v166;
      v20 = v167;
      if (v163 == v115)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_50;
  }

LABEL_42:

  v131 = sub_10069A8CC();

  v132 = sub_10069A8CC();
  v173[0] = v131;
  sub_100235B64(v132);
  sub_1002331B8(v173[0]);

  sub_10069AA48();
  if (qword_100CA27B0 == -1)
  {
    goto LABEL_43;
  }

LABEL_51:
  sub_10000F960();
LABEL_43:
  v133 = type metadata accessor for Logger();
  sub_1000212C4(v133, qword_100D90D68);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v173[0] = v172;
    *v136 = 136316163;
    type metadata accessor for LocationOfInterestType();
    sub_10001BA5C();
    sub_1002357D8(v137, v138);
    v139 = Set.description.getter();
    v141 = sub_100078694(v139, v140, v173);

    *(v136 + 4) = v141;
    *(v136 + 12) = 2160;
    *(v136 + 14) = 1752392040;
    *(v136 + 22) = 2081;
    v142 = Array.description.getter();
    v144 = v143;

    v145 = sub_100078694(v142, v144, v173);

    *(v136 + 24) = v145;
    *(v136 + 32) = 2160;
    *(v136 + 34) = 1752392040;
    *(v136 + 42) = 2081;
    v146 = Array.description.getter();
    v148 = v147;

    v149 = sub_100078694(v146, v148, v173);

    *(v136 + 44) = v149;
    _os_log_impl(&_mh_execute_header, v134, v135, "Location of interest changes = %s, with oldSavedLocationsWithLocationOfInterest %{private,mask.hash}s, with newSavedLocationsWithLocationOfInterest %{private,mask.hash}s", v136, 0x34u);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  else
  {
  }

  sub_10000536C();
}

uint64_t sub_1002331B8(uint64_t a1)
{
  v3 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationOfInterestType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v32[1] = v1;
  v45 = _swiftEmptyArrayStorage;
  sub_1006A771C();
  v10 = v45;
  result = sub_1003E28BC();
  v14 = v6;
  v15 = result;
  v16 = 0;
  v44 = a1 + 56;
  v36 = (v14 + 16);
  v37 = v14;
  v34 = v9;
  v35 = v14 + 32;
  v33 = a1 + 64;
  v17 = a1;
  v41 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v15 < 1 << *(v17 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v44 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v17 + 36) != v12)
      {
        goto LABEL_26;
      }

      v43 = v13;
      v42 = v12;
      v19 = v38;
      sub_100094F38(*(v17 + 48) + *(v39 + 72) * v15, v38);
      (*v36)(v8, v19 + *(v40 + 20), v5);
      sub_100031148(v19, type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType);
      v45 = v10;
      v20 = v10[2];
      if (v20 >= v10[3] >> 1)
      {
        sub_1006A771C();
        v10 = v45;
      }

      v10[2] = v20 + 1;
      v21 = v8;
      v22 = v8;
      v23 = v5;
      result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v20, v22, v5);
      if (v43)
      {
        goto LABEL_30;
      }

      v17 = v41;
      v24 = 1 << *(v41 + 32);
      if (v15 >= v24)
      {
        goto LABEL_27;
      }

      v25 = *(v44 + 8 * v18);
      if ((v25 & (1 << v15)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v41 + 36) != v42)
      {
        goto LABEL_29;
      }

      v26 = v25 & (-2 << (v15 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v18 << 6;
        v28 = v18 + 1;
        v29 = (v33 + 8 * v18);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_100049534(v15, v42, 0);
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_100049534(v15, v42, 0);
LABEL_19:
        v17 = v41;
      }

      if (++v16 == v34)
      {
        return v10;
      }

      v13 = 0;
      v12 = *(v17 + 36);
      v15 = v24;
      v5 = v23;
      v8 = v21;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1002335A8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      *(a2 + 24) = &type metadata for HomeAndWorkUpdatedTip;
      result = sub_100235A9C();
      goto LABEL_11;
    case 2:
      *(a2 + 24) = &type metadata for HomeUpdatedTip;
      result = sub_1002359A0();
      goto LABEL_11;
    case 3:
      *(a2 + 24) = &type metadata for WorkUpdatedTip;
      result = sub_10023594C();
      goto LABEL_11;
    case 4:
      v5 = *(v2 + 24);
      v6 = *(v2 + 25);
      v7 = *(v2 + 26);
      *(a2 + 24) = &type metadata for NotificationsOptInListTip;
      result = sub_100235784();
      *(a2 + 32) = result;
      *a2 = v5;
      *(a2 + 1) = v6;
      *(a2 + 2) = v7;
      return result;
    case 5:
      *(a2 + 24) = &type metadata for NotificationsResubscriptionListTip;
      result = sub_100235A48();
      goto LABEL_11;
    case 6:
      v9 = *(v2 + 27);
      *(a2 + 24) = &type metadata for PredictedLocationsNotificationOptInListTip;
      result = sub_1002359F4();
      *(a2 + 32) = result;
      *a2 = v9;
      return result;
    case 7:
      v8 = *(v2 + 16);
      *(a2 + 24) = &type metadata for AddWeatherMenuListTip;
      *(a2 + 32) = sub_1002358F8();
      *a2 = v8;

    default:
      *(a2 + 24) = &type metadata for HomeAndWorkAddedTip;
      result = sub_100235AF0();
LABEL_11:
      *(a2 + 32) = result;
      return result;
  }
}

uint64_t sub_1002336E8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_10001B350(v11, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = sub_1000053B8();
  sub_10007A47C(v13);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v4;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  sub_1006C0138();
}

uint64_t sub_100233804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 208) = a5;
  *(v7 + 56) = a4;
  v8 = type metadata accessor for Tips.Status();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  sub_10022C350(&qword_100CA3528);
  *(v7 + 104) = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CA3540);
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  v10 = sub_10022C350(&qword_100CA3548);
  *(v7 + 136) = v10;
  *(v7 + 144) = *(v10 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 176) = v12;
  *(v7 + 184) = v11;

  return _swift_task_switch(sub_100233A0C, v12, v11);
}

uint64_t sub_100233A0C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  sub_1002335A8(*(v0 + 208), v0 + 16);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  sub_100006F14(v0 + 16);
  v4 = static MainActor.shared.getter();
  *(v0 + 192) = v4;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v6 = sub_100016688(v5);

  return AsyncStream.Iterator.next(isolation:)(v6, v4, &protocol witness table for MainActor);
}

uint64_t sub_100233B28()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_100233C6C, v3, v2);
}

uint64_t sub_100233C6C()
{
  v1 = v0[13];
  v2 = v0[10];
  sub_1000038B4(v1, 1, v2);
  if (v3)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v1, v2);
    sub_100233E18();
    v6 = sub_1000053B8();
    v7(v6);
    v8 = static MainActor.shared.getter();
    v0[24] = v8;
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v10 = sub_100016688();

    return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor);
  }
}

void sub_100233E18()
{
  sub_10000C778();
  v79 = v1;
  v86 = v2;
  v4 = v3;
  v90 = v5;
  type metadata accessor for Tips.InvalidationReason();
  sub_1000037C4();
  v84 = v7;
  v85 = v6;
  __chkstk_darwin(v6);
  sub_100003848();
  v82 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v83 = v10;
  sub_1000038CC();
  v11 = type metadata accessor for Tips.Status();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100003848();
  v87 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_10000E70C();
  v80 = v17;
  v18 = sub_10022C350(&qword_100CA3520) - 8;
  sub_100003828();
  __chkstk_darwin(v19);
  v89 = &v76[-v20];
  v21 = sub_10022C350(&qword_100CA3528);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  v92 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  v88 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_100020104();
  __chkstk_darwin(v27);
  v29 = &v76[-v28];
  sub_10002401C();

  sub_100879C58();

  v91 = v13;
  v30 = *(v13 + 16);
  v31 = v90;
  v30(v0, v90, v11);
  sub_10001B350(v0, 0, 1, v11);
  swift_beginAccess();
  v32 = v0;
  v33 = v29;
  v34 = v4;
  v36 = v88;
  v35 = v89;
  v81 = v34;
  sub_100403220(v32, v34);
  swift_endAccess();
  v30(v36, v31, v11);
  sub_10001B350(v36, 0, 1, v11);
  v37 = *(v18 + 56);
  sub_100035AD0(v33, v35, &qword_100CA3528);
  sub_100035AD0(v36, v35 + v37, &qword_100CA3528);
  sub_1000038B4(v35, 1, v11);
  if (!v39)
  {
    sub_100035AD0(v35, v92, &qword_100CA3528);
    sub_1000038B4(v35 + v37, 1, v11);
    if (!v39)
    {
      v38 = v91;
      v69 = v80;
      (*(v91 + 32))(v80, v35 + v37, v11);
      sub_1002357D8(&qword_100CA3530, &type metadata accessor for Tips.Status);
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v78 = v30;
      v70 = *(v38 + 8);
      v70(v69, v11);
      sub_1000180EC(v36, &qword_100CA3528);
      v70(v92, v11);
      v30 = v78;
      sub_1000180EC(v35, &qword_100CA3528);
      if (v77)
      {
        goto LABEL_33;
      }

LABEL_10:
      v40 = v87;
      v30(v87, v31, v11);
      v41 = (*(v38 + 88))(v40, v11);
      if (v41 == enum case for Tips.Status.invalidated(_:))
      {
        (*(v38 + 96))(v40, v11);
        v43 = v83;
        v42 = v84;
        v44 = v85;
        (*(v84 + 32))(v83, v40, v85);
        if (qword_100CA27B0 != -1)
        {
          sub_10000F960();
        }

        v45 = type metadata accessor for Logger();
        sub_1000212C4(v45, qword_100D90D68);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (sub_100007E70(v47))
        {
          sub_100018264();
          v48 = sub_10000539C();
          v93[0] = v48;
          sub_100051CF4(4.8149e-34);
          v49 = String.init<A>(describing:)();
          v51 = sub_100078694(v49, v50, v93);

          *(v40 + 4) = v51;
          sub_1000C86A0(&_mh_execute_header, v52, v53, "Update %s status to invalidated");
          sub_100006F14(v48);
          sub_100003884();
          sub_100003884();
        }

        v54 = v86;
        v55 = v82;
        (*(v42 + 104))(v82, enum case for Tips.InvalidationReason.tipClosed(_:), v44);
        v56 = static Tips.InvalidationReason.== infix(_:_:)();
        v57 = *(v42 + 8);
        v57(v55, v44);
        if ((v56 & 1) != 0 && v54)
        {

          v54(v58);
          sub_10002B028(v54);
        }

        v57(v43, v44);
        goto LABEL_33;
      }

      if (v41 == enum case for Tips.Status.pending(_:))
      {
        if (qword_100CA27B0 != -1)
        {
          sub_10000F960();
        }

        v59 = type metadata accessor for Logger();
        sub_1000212C4(v59, qword_100D90D68);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (!sub_100007E70(v61))
        {
          goto LABEL_32;
        }

        sub_100018264();
        v62 = sub_10000539C();
        v93[0] = v62;
        sub_100051CF4(4.8149e-34);
        v63 = String.init<A>(describing:)();
        v65 = sub_100078694(v63, v64, v93);

        *(v40 + 4) = v65;
        v68 = "Update %s status to pending";
      }

      else
      {
        if (v41 != enum case for Tips.Status.available(_:))
        {
          sub_1000180EC(v33, &qword_100CA3528);
          (*(v38 + 8))(v40, v11);
          goto LABEL_34;
        }

        if (qword_100CA27B0 != -1)
        {
          sub_10000F960();
        }

        v71 = type metadata accessor for Logger();
        sub_1000212C4(v71, qword_100D90D68);
        v60 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        if (!sub_100007E70(v72))
        {
          goto LABEL_32;
        }

        sub_100018264();
        v62 = sub_10000539C();
        v93[0] = v62;
        sub_100051CF4(4.8149e-34);
        v73 = String.init<A>(describing:)();
        v75 = sub_100078694(v73, v74, v93);

        *(v40 + 4) = v75;
        v68 = "Update %s status to available";
      }

      sub_1000C86A0(&_mh_execute_header, v66, v67, v68);
      sub_100006F14(v62);
      sub_100003884();
      sub_100003884();
LABEL_32:

      goto LABEL_33;
    }

    sub_1000180EC(v36, &qword_100CA3528);
    v38 = v91;
    (*(v91 + 8))(v92, v11);
LABEL_9:
    sub_1000180EC(v35, &qword_100CA3520);
    goto LABEL_10;
  }

  sub_1000180EC(v36, &qword_100CA3528);
  sub_1000038B4(v35 + v37, 1, v11);
  v38 = v91;
  if (!v39)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v35, &qword_100CA3528);
LABEL_33:
  sub_1000180EC(v33, &qword_100CA3528);
LABEL_34:
  sub_10000536C();
}

void sub_1002346E8()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&unk_100CE49F0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  v42 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100020104();
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_100035AD0(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, &v38 - v16, &unk_100CE49F0);
  v52 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  sub_100035B30(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_notificationsOptInStatusFactory, v53);
  v43 = v55;
  v46 = v54;
  v47 = sub_1000161C0(v53, v54);
  v18 = v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v19 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v44 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 17);
  v45 = v19;
  v38 = type metadata accessor for NotificationsOptInState();
  v20 = *(v38 + 44);
  v49 = v10;
  v50 = v6;
  v21 = *(v6 + 16);
  v41 = v18;
  v51 = v4;
  v21(v10, v18 + v20, v4);
  v22 = v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_10002401C();
  v40 = *(v22 + 1);
  v39 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v48 = v17;
  sub_100035AD0(v17, v1, &unk_100CE49F0);
  v23 = type metadata accessor for CurrentLocation();
  LODWORD(v4) = sub_100024D10(v1, 1, v23);

  if (v4 == 1)
  {
    sub_1000180EC(v1, &unk_100CE49F0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_10001406C();
    sub_100031148(v1, v24);
  }

  sub_10003B8E8();
  sub_100141E5C();
  v26 = v25;

  v27 = v48;
  v28 = v42;
  sub_100035AD0(v48, v42, &unk_100CE49F0);
  sub_1000038B4(v28, 1, v23);
  if (v29)
  {
    sub_1000180EC(v28, &unk_100CE49F0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_10001406C();
    sub_100031148(v28, v30);
  }

  sub_10003B8E8();
  sub_100141E74();
  v32 = v31;

  v33 = *(v41 + *(v38 + 48));

  v35 = sub_10058D62C(v34);
  v36 = v32 & 1;
  v37 = v49;
  (*(v43 + 8))(v45, v44, v49, v40, v39, v26 & 1, v36, v33, v35 & 0xFFFFFF, v46, v43);
  (*(v50 + 8))(v37, v51);
  sub_1000180EC(v27, &unk_100CE49F0);
  sub_100006F14(v53);
  sub_10000536C();
}

uint64_t sub_100234B10(uint64_t a1)
{
  v2 = type metadata accessor for ViewState(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_100094F38(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v5 - v4);
  v7 = *(v6 + *(v3 + 44) + 8);
  sub_100031148(v6, type metadata accessor for ViewState);
  if (v7 != 2)
  {
    goto LABEL_14;
  }

  v8 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_10002401C();
  if (LocationAuthorizationState.rawValue.getter(*(v8 + 1)) == 0xD000000000000010 && 0x8000000100ABA410 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
LABEL_14:
      v13 = 0;
      return v13 & 1;
    }
  }

  switch(*(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications))
  {
    case 1:

      break;
    default:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

      break;
  }

  if (*(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 18) != 1)
  {
    goto LABEL_14;
  }

  v13 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 19) ^ 1;
  return v13 & 1;
}

uint64_t sub_100234D3C(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE49F0);
  v3 = sub_100003810(v2);
  v4 = __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_10002401C();
  if (*(v9 + 2) < 2u || (v10 = , sub_100441CA8(v10) == 6) || (v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, (*(v11 + *(type metadata accessor for NotificationsOptInState() + 52)) & 1) != 0))
  {
    v12 = 0;
  }

  else
  {
    sub_100035AD0(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v8, &unk_100CE49F0);
    sub_100035AD0(v8, v6, &unk_100CE49F0);
    v14 = type metadata accessor for CurrentLocation();
    v15 = sub_100024D10(v6, 1, v14);

    if (v15 == 1)
    {
      sub_1000180EC(v6, &unk_100CE49F0);
    }

    else
    {
      CurrentLocation.id.getter();
      sub_10001406C();
      sub_100031148(v6, v16);
    }

    sub_100141E74();
    v12 = v17;

    sub_1000180EC(v8, &unk_100CE49F0);
  }

  return v12 & 1;
}

void sub_100234F84()
{
  sub_10000C778();
  sub_1000038D8();
  type metadata accessor for Tips.Status();
  sub_1000037C4();
  v2 = __chkstk_darwin(v1);
  __chkstk_darwin(v2);
  if ((*(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 18) & 1) == 0)
  {

    if ((sub_10058D62C(v3) & 0xFE) == 2)
    {
      v19 = 0;
      v20 = 0;
      sub_100235784();
      Tip.status.getter();
      v4 = sub_1000053B8();
      v6 = v5(v4);
      if (v6 == enum case for Tips.Status.invalidated(_:))
      {
LABEL_14:
        v16 = sub_1000053B8();
        v17(v16);
        goto LABEL_15;
      }

      if (v6 != enum case for Tips.Status.pending(_:) && v6 != enum case for Tips.Status.available(_:))
      {
        if (qword_100CA26C0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000212C4(v8, qword_100D90AA8);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = sub_100018264();
          v12 = swift_slowAlloc();
          v18 = v12;
          *v11 = 136315138;
          Tip.status.getter();
          v13 = String.init<A>(describing:)();
          v15 = sub_100078694(v13, v14, &v18);

          *(v11 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v9, v10, "Unhandled notificationTip.status =%s", v11, 0xCu);
          sub_100006F14(v12);
          sub_100003884();
          sub_100003884();
        }

        goto LABEL_14;
      }
    }
  }

LABEL_15:
  sub_10000536C();
}

uint64_t sub_100235220()
{

  v1 = OBJC_IVAR____TtC7Weather18ListViewTipManager_debounceTime;
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_notificationsOptInStatusFactory);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager);

  sub_100235FEC(*(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState), *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState + 8), *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState + 16));

  return v0;
}

uint64_t sub_1002352F4()
{
  sub_100235220();

  return swift_deallocClassInstance();
}

uint64_t sub_100235374()
{
  result = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10023549C()
{
  if (*(*v0 + 26))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return v1 | (*(*v0 + 25) << 8) | *(*v0 + 24);
}

uint64_t sub_10023550C()
{
  type metadata accessor for WeatherMenuTipMutableAttributes();
  sub_100007E8C();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ListViewTipManager.ListViewTip(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ListViewTipManager.ListViewTip(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002356AC()
{
  result = qword_100CA34C0;
  if (!qword_100CA34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA34C0);
  }

  return result;
}

unint64_t sub_100235718()
{
  result = qword_100CA34E0;
  if (!qword_100CA34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA34E0);
  }

  return result;
}

unint64_t sub_100235784()
{
  result = qword_100CA3518;
  if (!qword_100CA3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3518);
  }

  return result;
}

uint64_t sub_1002357D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100235820(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000926F8;

  return sub_100233804(a1, v4, v5, v6, v9, v7, v8);
}

unint64_t sub_1002358F8()
{
  result = qword_100CA3550;
  if (!qword_100CA3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3550);
  }

  return result;
}

unint64_t sub_10023594C()
{
  result = qword_100CA3558;
  if (!qword_100CA3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3558);
  }

  return result;
}

unint64_t sub_1002359A0()
{
  result = qword_100CA3560;
  if (!qword_100CA3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3560);
  }

  return result;
}

unint64_t sub_1002359F4()
{
  result = qword_100CA3568;
  if (!qword_100CA3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3568);
  }

  return result;
}

unint64_t sub_100235A48()
{
  result = qword_100CA3570;
  if (!qword_100CA3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3570);
  }

  return result;
}

unint64_t sub_100235A9C()
{
  result = qword_100CA3578;
  if (!qword_100CA3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3578);
  }

  return result;
}

unint64_t sub_100235AF0()
{
  result = qword_100CA3580;
  if (!qword_100CA3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3580);
  }

  return result;
}

uint64_t sub_100235B64(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CA3598);
  __chkstk_darwin(v3 - 8);
  v39 = &v38 - v4;
  v48 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v45 = *(v48 - 8);
  v5 = __chkstk_darwin(v48);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v40 = &v38 - v9;
  v10 = __chkstk_darwin(v8);
  v49 = (&v38 - v11);
  result = __chkstk_darwin(v10);
  v44 = &v38 - v13;
  v14 = 0;
  v46 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v42 = v21;
  v43 = v16;
  v41 = v1;
  if ((v19 & v15) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      do
      {
LABEL_9:
        v23 = *(v45 + 72);
        v24 = v44;
        sub_100094F38(*(v46 + 48) + v23 * (__clz(__rbit64(v20)) | (v14 << 6)), v44);
        sub_100235F88(v24, v49);
        v25 = *v1;
        if (*(*v1 + 16) && (Hasher.init(_seed:)(), v26 = *v49, v27 = v49[1], String.hash(into:)(), v28 = *(v48 + 20), type metadata accessor for LocationOfInterestType(), sub_1002357D8(&qword_100CA3590, &type metadata accessor for LocationOfInterestType), v47 = v28, dispatch thunk of Hashable.hash(into:)(), v29 = Hasher._finalize()(), v30 = -1 << *(v25 + 32), v31 = v29 & ~v30, ((*(v25 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          while (1)
          {
            sub_100094F38(*(v25 + 48) + v31 * v23, v7);
            v33 = *v7 == v26 && v7[1] == v27;
            if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static LocationOfInterestType.== infix(_:_:)())
            {
              break;
            }

            sub_100031148(v7, type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType);
            v31 = (v31 + 1) & v32;
            if (((*(v25 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          sub_100031148(v7, type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType);
          v36 = v39;
          v37 = v49;
          v1 = v41;
          sub_1008AF260();
          sub_1000180EC(v36, &qword_100CA3598);
          v35 = v37;
        }

        else
        {
LABEL_19:
          v34 = v40;
          v1 = v41;
          sub_1006A0B5C();
          v35 = v34;
        }

        v20 &= v20 - 1;
        result = sub_100031148(v35, type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType);
        v21 = v42;
        v16 = v43;
      }

      while (v20);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100235F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100235FEC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100187350(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100236000(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1000DC3D4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10023603C()
{
  result = type metadata accessor for LocationOfInterestType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for LollipopViewModel()
{
  result = qword_100CA36B0;
  if (!qword_100CA36B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100236174()
{
  result = type metadata accessor for DetailChartDataPoint();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LollipopDetailViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100236210(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for LollipopViewModel();
  if ((static DetailChartDataPoint.== infix(_:_:)() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(v5 + 28);

  return sub_10043057C(a1 + v6, a2 + v6);
}

uint64_t sub_1002362C8@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000100ABB8B0;
  v4 = type metadata accessor for LollipopViewModel();
  v5 = *(v4 + 20);
  v6 = type metadata accessor for DetailChartDataPoint();
  *(inited + 72) = v6;
  v7 = sub_100042FB0((inited + 48));
  (*(*(v6 - 8) + 16))(v7, v1 + v5, v6);
  *(inited + 80) = 0x69566C6961746564;
  *(inited + 88) = 0xEF6C65646F4D7765;
  v8 = *(v4 + 28);
  *(inited + 120) = type metadata accessor for LollipopDetailViewModel(0);
  v9 = sub_100042FB0((inited + 96));
  sub_1002364FC(v1 + v8, v9);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CA3700);
  a1[4] = sub_100236560();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100236470()
{
  sub_1002365C4(&qword_100CA3710);

  return ShortDescribable.description.getter();
}

uint64_t sub_1002364FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LollipopDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100236560()
{
  result = qword_100CA3708;
  if (!qword_100CA3708)
  {
    sub_10022E824(&qword_100CA3700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3708);
  }

  return result;
}

uint64_t sub_1002365C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LollipopViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100236608@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for Location();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  type metadata accessor for Location.Identifier();
  sub_100003934();
  sub_10001B350(v8, v9, v10, v11);
  static Location.current.getter();
  type metadata accessor for LocationOfInterest();
  sub_100031400();
  sub_100003934();
  sub_10001B350(v12, v13, v14, v15);
  v16 = type metadata accessor for LocationViewerInput();
  LocationModel.init(location:locationOfInterest:isPredictedLocation:)();
  type metadata accessor for CurrentLocation();
  sub_100003934();
  sub_10001B350(v17, v18, v19, v20);
  type metadata accessor for LocationDisplayContext();
  sub_1000140AC();
  sub_10003A500();
  type metadata accessor for WeatherCondition();
  v21 = sub_1000140AC();
  v22 = sub_1000140AC();
  static WeatherClock.date.getter();
  type metadata accessor for ContentStatusBanner();
  v23 = sub_1000140AC();
  type metadata accessor for LocationWeatherDataState(0);
  sub_100003934();
  result = sub_10001B350(v24, v25, v26, v27);
  *(a1 + v16[6]) = 0;
  *(a1 + v16[8]) = 0;
  *(a1 + v16[9]) = 0;
  v29 = a1 + v16[10];
  *v29 = 0;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(a1 + v16[12]) = 0;
  *(a1 + v16[13]) = 0;
  *(a1 + v16[14]) = 0;
  *(a1 + v16[15]) = 0;
  *(a1 + v16[16]) = v23;
  *(a1 + v16[17]) = 0;
  return result;
}

BOOL sub_100236888(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v33[-v9];
  v11 = sub_10022C350(&qword_100CA3890);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v33[-v13];
  if ((sub_1000BAF7C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for LocationViewerInput();
  if ((static LocationModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22 || (sub_1000B8D9C(a1 + v15[7]) & 1) == 0)
  {
    return 0;
  }

  v16 = v15[8];
  v17 = *(a1 + v16);
  v34 = *(a2 + v16);
  v18 = LocationAuthorizationState.rawValue.getter(v17);
  v20 = v19;
  v22 = v18 == LocationAuthorizationState.rawValue.getter(v34) && v20 == v21;
  if (v22)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1000038F8();
  if (!v22)
  {
    return 0;
  }

  if (*(a1 + v15[10]) != *(a2 + v15[10]))
  {
    return 0;
  }

  sub_1000BDA70();
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  sub_1000BDD2C();
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22)
  {
    return 0;
  }

  if (*(a1 + v15[13]) != *(a2 + v15[13]))
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22)
  {
    return 0;
  }

  sub_100133404();
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22)
  {
    return 0;
  }

  v26 = v15[18];
  v27 = *(v11 + 48);
  sub_100106A9C(a1 + v26, v14);
  sub_100106A9C(a2 + v26, &v14[v27]);
  sub_10000394C(v14);
  if (v22)
  {
    sub_10000394C(&v14[v27]);
    if (v22)
    {
      sub_1000180EC(v14, &qword_100CA37B0);
      return 1;
    }
  }

  else
  {
    sub_100106A9C(v14, v10);
    sub_10000394C(&v14[v27]);
    if (!v28)
    {
      sub_100106F30(&v14[v27], v6);
      sub_10070EA0C();
      v32 = v31;
      sub_100105E30(v6, type metadata accessor for LocationWeatherDataState);
      sub_100105E30(v10, type metadata accessor for LocationWeatherDataState);
      sub_1000180EC(v14, &qword_100CA37B0);
      return (v32 & 1) != 0;
    }

    sub_1000166C4();
    sub_100105E30(v10, v29);
  }

  sub_1000180EC(v14, &qword_100CA3890);
  return 0;
}

uint64_t sub_100236C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBanner();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SevereNotificationContent()
{
  result = qword_100CA3928;
  if (!qword_100CA3928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236D14()
{
  sub_100236DB4();
  if (v0 <= 0x3F)
  {
    sub_10000BB3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100236DB4()
{
  if (!qword_100CA3938)
  {
    sub_10022E824(&qword_100CB2D20);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3938);
    }
  }
}

uint64_t sub_100236E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  sub_10022C350(&qword_100CA3988);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  v24 = type metadata accessor for SevereNotificationContent();
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v25 = a1;
  sub_1000161C0(a1, v12);
  sub_100237E30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(v25);
  }

  v22 = v7;
  v31 = 0;
  sub_1000244BC();
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 1) = v13;
  v30 = 1;
  sub_1000244BC();
  *(v11 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 3) = v14;
  v29 = 2;
  sub_1000244BC();
  *(v11 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 5) = v15;
  v28 = 3;
  sub_1000244BC();
  *(v11 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 7) = v16;
  v27 = 4;
  sub_1000244BC();
  v11[72] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  type metadata accessor for Date();
  v26 = 7;
  sub_10005B6CC(&qword_100CA3998, &type metadata accessor for Date);
  v17 = v22;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100237E84(v17, &v11[*(v24 + 40)]);
  v18 = sub_100237258();
  v19 = sub_100020564();
  v20(v19);
  *(v11 + 8) = v18;
  sub_100237EF4(v11, v23);
  sub_100006F14(v25);
  return sub_100237F58(v11);
}

uint64_t sub_100237258()
{
  v1 = Dictionary.init(dictionaryLiteral:)();
  LOBYTE(v19) = 5;
  sub_10022C350(&qword_100CA3988);
  v2 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v0)
  {
  }

  else
  {
    if (v3)
    {
      v22 = &type metadata for String;
      *&v21 = v2;
      *(&v21 + 1) = v3;
      sub_100166170(&v21, &v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v1;
      sub_100238B64(&v19, 0x6E6F697461636F4CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v1 = v23;
    }

    else
    {
      v5 = sub_100031B34();
      if (v6)
      {
        v7 = v5;
        v8 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v1;
        v9 = *(v1 + 24);
        sub_10022C350(&qword_100CA39A0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9);
        v1 = v23;

        sub_100166170((*(v23 + 56) + 32 * v7), &v19);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      sub_1000180EC(&v19, &qword_100CE2F40);
    }

    LOBYTE(v19) = 6;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v11)
    {
      v22 = &type metadata for String;
      *&v21 = v10;
      *(&v21 + 1) = v11;
      sub_100166170(&v21, &v19);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v23 = v1;
      sub_100238B64(&v19, 0x55736C6961746544, 0xEA00000000004C52, v13);
      return v23;
    }

    else
    {
      v14 = sub_100031B34();
      if (v15)
      {
        v16 = v14;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v1;
        v18 = *(v1 + 24);
        sub_10022C350(&qword_100CA39A0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18);
        v1 = v23;

        sub_100166170((*(v1 + 56) + 32 * v16), &v19);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      sub_1000180EC(&v19, &qword_100CE2F40);
    }
  }

  return v1;
}

uint64_t sub_100237570(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CA39A8);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100237E30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16[0]) = 0;
  sub_10003C234();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  LOBYTE(v16[0]) = 1;
  sub_10003C234();
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16[0]) = 2;
  sub_10003C234();
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16[0]) = 3;
  sub_10003C234();
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16[0]) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  type metadata accessor for SevereNotificationContent();
  LOBYTE(v16[0]) = 7;
  sub_10022C350(&unk_100CB2CF0);
  sub_10023A1F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!*(v3 + 64))
  {
    return (*(v7 + 8))(v10, v5);
  }

  sub_100879D00();
  if (v15)
  {
    sub_100166170(&v14, v16);
    sub_100109514(v16, &v14);
    if (sub_100071438())
    {
      LOBYTE(v14) = 5;
      sub_10003C234();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      sub_100006F14(v16);
    }

    else
    {
      sub_100006F14(v16);
    }
  }

  else
  {
    sub_1000180EC(&v14, &qword_100CE2F40);
  }

  v11 = sub_100879D00();
  if (v15)
  {
    sub_100166170(&v14, v16);
    sub_100109514(v16, &v14);
    if (sub_100071438())
    {
      LOBYTE(v14) = 6;
      sub_10003C234();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    }

    sub_100006F14(v16);
    return (*(v7 + 8))(v10, v5);
  }

  (*(v7 + 8))(v10, v5, v11);
  return sub_1000180EC(&v14, &qword_100CE2F40);
}

uint64_t sub_1002378F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100ABB980 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61636974697263 && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6974617269707865 && a2 == 0xEE00656D69546E6FLL)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int WeatherFeatureFlags.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_100237BD8(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6C61636974697263;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x55736C6961746564;
      break;
    case 7:
      result = 0x6974617269707865;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100237CCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100237D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002378F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100237D60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100237B88();
  *a1 = result;
  return result;
}

uint64_t sub_100237D88(uint64_t a1)
{
  v2 = sub_100237E30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100237DC4(uint64_t a1)
{
  v2 = sub_100237E30();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100237E30()
{
  result = qword_100CA3990;
  if (!qword_100CA3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3990);
  }

  return result;
}

uint64_t sub_100237E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereNotificationContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237F58(uint64_t a1)
{
  v2 = type metadata accessor for SevereNotificationContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100237FB4()
{
  sub_100019170();
  type metadata accessor for Date();
  sub_10005B6CC(&qword_100CA39C8, &type metadata accessor for Date);
  sub_100031BB0();
  sub_100011350();
}

unint64_t sub_100238064(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100238448(v2, a1);
}

unint64_t sub_1002380B0(Swift::UInt a1)
{
  sub_10006A6C0();
  Hasher._combine(_:)(a1);
  sub_10003140C();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10003140C();

  return sub_1002384A4(v2, v3, v4, v5);
}

unint64_t sub_100238134(uint64_t a1)
{
  sub_10006A6C0();
  v2 = Edge.rawValue.getter();
  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_100238578(a1, v3);
}

uint64_t sub_1002381F4(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  sub_10006A6C0();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

uint64_t sub_100238288()
{
  sub_10006A6C0();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_1002389E8(v0);
}

void sub_1002382E8()
{
  sub_100019170();
  type metadata accessor for DetailChartCondition();
  sub_10005B6CC(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
  sub_100031BB0();
  sub_100011350();
}

void sub_100238398()
{
  sub_100019170();
  type metadata accessor for VFXEffectViewID();
  sub_10005B6CC(&qword_100CA3AB0, &type metadata accessor for VFXEffectViewID);
  sub_100031BB0();
  sub_100011350();
}

unint64_t sub_100238448(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1002384A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100238578(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = Edge.rawValue.getter();
    if (v5 == Edge.rawValue.getter())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10023861C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00706954646574;
      v8 = 0x61647055656D6F68;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100AB9C60;
          break;
        case 2:
          break;
        case 3:
          v8 = 0x616470556B726F77;
          v7 = 0xEE00706954646574;
          break;
        case 4:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100AB9CA0;
          break;
        case 5:
          v8 = 0xD000000000000022;
          v7 = 0x8000000100AB9CC0;
          break;
        case 6:
          v8 = 0xD00000000000002ALL;
          v7 = 0x8000000100AB9CF0;
          break;
        case 7:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100AB9D20;
          break;
        default:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100AB9C40;
          break;
      }

      v9 = 0x61647055656D6F68;
      v10 = 0xEE00706954646574;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100AB9C60;
          break;
        case 2:
          break;
        case 3:
          v9 = 0x616470556B726F77;
          v10 = 0xEE00706954646574;
          break;
        case 4:
          v9 = 0xD000000000000019;
          v10 = 0x8000000100AB9CA0;
          break;
        case 5:
          v9 = 0xD000000000000022;
          v10 = 0x8000000100AB9CC0;
          break;
        case 6:
          v9 = 0xD00000000000002ALL;
          v10 = 0x8000000100AB9CF0;
          break;
        case 7:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100AB9D20;
          break;
        default:
          v9 = 0xD000000000000013;
          v10 = 0x8000000100AB9C40;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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