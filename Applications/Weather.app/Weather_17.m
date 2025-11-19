uint64_t sub_1001D8C58(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for TemperatureAveragesHeroChartInput();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_6:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for MonthlyAveragesChartInput();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = v3 + v12;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    type metadata accessor for NewsDataModel();
    sub_100003928();
    if (*(v17 + 84) == a2)
    {
      v8 = v16;
      v12 = a3[7];
    }

    else
    {
      sub_10022C350(&qword_100CABC20);
      sub_100003928();
      if (*(v19 + 84) == a2)
      {
        v8 = v18;
        v12 = a3[8];
      }

      else
      {
        type metadata accessor for TimeZone();
        sub_100003928();
        if (*(v21 + 84) == a2)
        {
          v8 = v20;
          v12 = a3[9];
        }

        else
        {
          type metadata accessor for Date();
          sub_100003928();
          if (*(v23 + 84) == a2)
          {
            v8 = v22;
            v12 = a3[10];
          }

          else
          {
            v8 = type metadata accessor for Calendar();
            v12 = a3[12];
          }
        }
      }
    }

    goto LABEL_5;
  }

  v14 = *(v3 + a3[6]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_1001D8E78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for TemperatureAveragesHeroChartInput();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for MonthlyAveragesChartInput();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(v4 + a4[6]) = a2;
        return;
      }

      type metadata accessor for NewsDataModel();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_10022C350(&qword_100CABC20);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for TimeZone();
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            type metadata accessor for Date();
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[10];
            }

            else
            {
              v10 = type metadata accessor for Calendar();
              v14 = a4[12];
            }
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001D9088(unsigned __int8 *a1, int a2, uint64_t a3)
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
    if (*(*(sub_10022C350(&qword_100CABD18) - 8) + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
      v8 = *(a3 + 24);
    }

    v9 = sub_1000039EC(v8);

    return sub_100024D10(v9, v10, v11);
  }
}

_BYTE *sub_1001D915C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    if (*(*(sub_10022C350(&qword_100CABD18) - 8) + 84) == a3)
    {
      v6 = *(a4 + 20);
    }

    else
    {
      type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
      v6 = *(a4 + 24);
    }

    v7 = sub_1000039EC(v6);

    return sub_10001B350(v7, v8, a2, v9);
  }

  return result;
}

uint64_t sub_1001D9228(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 8);
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
    sub_10022C350(&qword_100CABE00);
    v6 = sub_1000039EC(*(a3 + 20));

    return sub_100024D10(v6, v7, v8);
  }
}

uint64_t sub_1001D92B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    sub_10022C350(&qword_100CABE00);
    v6 = sub_1000039EC(*(a4 + 20));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1001D9338()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001D9370()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001D93B0()
{
  v1 = type metadata accessor for PredictedLocationsAuthorization();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1001D9470()
{
  v1 = *(type metadata accessor for NotificationsOptInAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      type metadata accessor for Date();
      break;
    case 2:

      goto LABEL_8;
    case 1:
      type metadata accessor for Location();
      break;
    default:
      goto LABEL_8;
  }

  sub_1000037E8();
  (*(v4 + 8))(v0 + v2);
LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_1001D958C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for DetailChartCondition();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_8:

    return sub_100024D10(v9, v3, v8);
  }

  sub_10022C350(&qword_100CAC1B0);
  sub_100003928();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = v4 + v12;
    goto LABEL_8;
  }

  type metadata accessor for ConditionUnits();
  sub_100003928();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(v4 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_1001D96C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for DetailChartCondition();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_10002FDE8();
  }

  else
  {
    sub_10022C350(&qword_100CAC1B0);
    sub_100003928();
    if (*(v12 + 84) == a3)
    {
      v10 = v11;
      v13 = a4[6];
    }

    else
    {
      type metadata accessor for ConditionUnits();
      sub_100003928();
      if (*(v15 + 84) != a3)
      {
        *(v5 + a4[10]) = v4;
        return;
      }

      v10 = v14;
      v13 = a4[7];
    }

    v9 = v5 + v13;
  }

  sub_10001B350(v9, v4, v4, v10);
}

uint64_t sub_1001D97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003B38();
  type metadata accessor for DetailChartCondition();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v10 = *(v4 + *(a3 + 24));
      if (v10 >= 2)
      {
        return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for ConditionUnits();
    v9 = v4 + *(a3 + 28);
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001D98C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for DetailChartCondition();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_10002FDE8();
  }

  else
  {
    if (a3 == 254)
    {
      *(v5 + *(a4 + 24)) = v4 + 1;
      return;
    }

    v10 = type metadata accessor for ConditionUnits();
    v9 = v5 + *(a4 + 28);
  }

  sub_10001B350(v9, v4, v4, v10);
}

uint64_t sub_1001D9978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003B38();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = type metadata accessor for TimeZone();
    v9 = v4 + *(a3 + 20);
  }

  return sub_100024D10(v9, v3, v8);
}

uint64_t sub_1001D9A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_10002FDE8();
  }

  else
  {
    v10 = type metadata accessor for TimeZone();
    v9 = v5 + *(a4 + 20);
  }

  return sub_10001B350(v9, v4, v4, v10);
}

uint64_t sub_1001D9AA8(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1001D9BCC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001D9C04()
{

  return swift_deallocObject();
}

uint64_t sub_1001D9C44()
{
  v1 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1001D9D3C()
{
  v1 = type metadata accessor for WeatherData(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  v3 = *(*(type metadata accessor for SunriseSunsetDetailViewState() - 8) + 80);
  swift_unknownObjectRelease();

  v4 = v0 + ((v2 + 40) & ~v2);

  v5 = v1[5];
  v6 = type metadata accessor for Locale();
  if (!sub_100024D10(v4 + v5, 1, v6))
  {
    sub_100003D20();
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = v1[6];
  type metadata accessor for WeatherDataModel();
  sub_1000037E8();
  (*(v9 + 8))(v4 + v8);
  v10 = v4 + v1[7];
  v11 = sub_10022C350(&qword_100CAC710);
  if (!sub_100024D10(v10, 1, v11))
  {
    v12 = type metadata accessor for Date();
    sub_1000037E8();
    v14 = *(v13 + 8);
    v14(v10, v12);
    v15 = *(v11 + 48);
    v16 = type metadata accessor for WeatherDataRelevancy();
    if (!sub_100024D10(v10 + v15, 1, v16))
    {
      v14(v10 + v15, v12);
    }
  }

  v17 = v4 + v1[8];
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_1000037E8();
    (*(v19 + 8))(v17);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v20 = v4 + v1[9];
  v21 = type metadata accessor for WeatherDataOverrides();
  if (!sub_100024D10(v20, 1, v21))
  {
    v22 = type metadata accessor for Date();
    if (!sub_100024D10(v20, 1, v22))
    {
      sub_100003D20();
      (*(v23 + 8))(v20, v22);
    }

    v24 = *(v21 + 20);
    if (!sub_100024D10(v20 + v24, 1, v22))
    {
      sub_100003D20();
      (*(v25 + 8))(v20 + v24, v22);
    }
  }

  type metadata accessor for Location();
  sub_1000037E8();
  (*(v26 + 8))(v0 + ((((v2 + 40) & ~v2) + v28 + v3) & ~v3));

  return swift_deallocObject();
}

uint64_t sub_1001DA0E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CAC800);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_1001DA174(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CAC800);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DA200()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001DA238()
{

  return swift_deallocObject();
}

uint64_t sub_1001DA270()
{

  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1001DA2BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CACB08);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001DA350(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CACB08);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DA3E0()
{
  sub_10022E824(&qword_100CACBB0);
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100319760();
  sub_100281D9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001DA490(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for SkyBackgroundGradient();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[9];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = type metadata accessor for Elevation();
        v11 = a3[13];
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001DA598(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for SkyBackgroundGradient();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = type metadata accessor for Elevation();
        v11 = a4[13];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1001DA6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeelsLikeComponentViewModel(0);
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

    v7 = sub_10022C350(&qword_100CA3BE0);
    v8 = a1 + *(a3 + 32);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001DA788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeelsLikeComponentViewModel(0);
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

    v9 = sub_10022C350(&qword_100CA3BE0);
    v10 = a1 + *(a4 + 32);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001DA8A4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CAD050);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    Options = v6;
    v9 = a3[5];
LABEL_12:

    return sub_100024D10(a1 + v9, a2, Options);
  }

  sub_10022C350(&qword_100CAD058);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    Options = v10;
    v9 = a3[7];
    goto LABEL_12;
  }

  sub_10022C350(&qword_100CAD060);
  sub_100003928();
  if (*(v13 + 84) == a2)
  {
    Options = v12;
    v9 = a3[8];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    Options = type metadata accessor for WeatherServiceFetchOptions();
    v9 = a3[14];
    goto LABEL_12;
  }

  v14 = *(a1 + a3[11]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1001DAA14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CAD050);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    Options = v8;
    v11 = a4[5];
  }

  else
  {
    sub_10022C350(&qword_100CAD058);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      Options = v12;
      v11 = a4[7];
    }

    else
    {
      sub_10022C350(&qword_100CAD060);
      sub_100003928();
      if (*(v15 + 84) == a3)
      {
        Options = v14;
        v11 = a4[8];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return;
        }

        Options = type metadata accessor for WeatherServiceFetchOptions();
        v11 = a4[14];
      }
    }
  }

  sub_10001B350(a1 + v11, a2, a2, Options);
}

uint64_t sub_1001DABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CB3AB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for WeatherAsyncImage.LoadingState();
    v7 = type metadata accessor for State();
    v8 = a1 + *(a3 + 48);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 44));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1001DAC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CB3AB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    type metadata accessor for WeatherAsyncImage.LoadingState();
    v9 = type metadata accessor for State();
    v10 = a1 + *(a4 + 48);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001DAD74()
{
  type metadata accessor for WeatherAsyncImage.Inner();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB3AB0);
  sub_10000FC60();
  swift_getWitnessTable();
  sub_100007E30();
  swift_getWitnessTable();
  sub_10032D6AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001DAE38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10022C350(&qword_100CB3AB0);
    v10 = a1 + *(a3 + 36);

    return sub_100024D10(v10, a2, v9);
  }
}

void *sub_1001DAED8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB3AB0);
    v8 = v5 + *(a4 + 36);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DAF74()
{
  type metadata accessor for WeatherAsyncImage();
  sub_100003E98();
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v13 = *(v4 + 64);
  v5 = type metadata accessor for URL();
  sub_1000037C4();
  v7 = v6;
  v8 = *(v6 + 80);
  if (!sub_100024D10(v0 + v3, 1, v5))
  {
    (*(v7 + 8))(v0 + v3, v5);
  }

  v9 = (v0 + v3 + *(v1 + 48));

  v10 = type metadata accessor for WeatherAsyncImage.LoadingState();
  v11 = *(v10 + 36);
  if (!sub_100024D10(v9 + v11, 1, v5))
  {
    (*(v7 + 8))(v9 + v11, v5);
  }

  sub_10032D76C(*(v9 + *(v10 + 40)));
  type metadata accessor for State();

  (*(v7 + 8))(v0 + ((((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8), v5);

  return swift_deallocObject();
}

uint64_t sub_1001DB18C()
{
  type metadata accessor for _UnaryViewAdaptor();

  return swift_getWitnessTable();
}

uint64_t sub_1001DB1D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100005784();
  }

  type metadata accessor for Text.Measurements();
  v5 = sub_1000039EC(*(a3 + 20));

  return sub_100024D10(v5, v6, v7);
}

void sub_1001DB24C()
{
  sub_100003A00();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Text.Measurements();
    v5 = sub_1000039EC(*(v4 + 20));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_1001DB2CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100005784();
  }

  sub_10022C350(&qword_100CA3BE0);
  v5 = sub_1000039EC(*(a3 + 28));

  return sub_100024D10(v5, v6, v7);
}

void sub_1001DB34C()
{
  sub_100003A00();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CA3BE0);
    v5 = sub_1000039EC(*(v4 + 28));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_1001DB41C()
{
  type metadata accessor for CoordinateSpace();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001DB49C()
{

  return swift_deallocObject();
}

uint64_t sub_1001DB4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  type metadata accessor for ConditionDetailLegend(0);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_10022C350(&qword_100CAD868);
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_10022C350(&qword_100CAD870);
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return sub_100024D10(v9, v3, v8);
}

uint64_t sub_1001DB5CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003A00();
  type metadata accessor for ConditionDetailLegend(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_10022C350(&qword_100CAD868);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_10022C350(&qword_100CAD870);
      v14 = *(a4 + 24);
    }

    v11 = v5 + v14;
  }

  return sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001DB6F0()
{
  v2 = type metadata accessor for UUID();
  sub_1000037C4();
  v4 = v3;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for LocationViewModel();
  sub_100003A0C();
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v6, v2);
  swift_unknownObjectRelease();
  v10 = v1 + v9;
  v11 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v13 = *(v12 + 8);
  (v13)(v1 + v9, v11);
  v14 = v0[5];
  if (!sub_100024D10(v1 + v9 + v14, 1, v11))
  {
    (v13)(v10 + v14, v11);
  }

  v15 = v10 + v0[6];

  sub_10016AD1C(*(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40));

  v16 = v10 + v0[9];
  v17 = type metadata accessor for LocationFooterViewModel();
  if (!sub_100003EB0(v17))
  {

    if (*(v16 + 24))
    {
    }

    v18 = v16 + *(v13 + 36);

    v19 = *(type metadata accessor for LearnMoreAttributorViewModel() + 24);
    v20 = type metadata accessor for URL();
    if (!sub_100024D10(v18 + v19, 1, v20))
    {
      sub_100003B20();
      (*(v21 + 8))(v18 + v19, v20);
    }

    v22 = *(v13 + 44);
    v23 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v16 + v22, 1, v23))
    {
      sub_100003B20();
      (*(v24 + 8))(v16 + v22, v23);
    }

    v25 = v16 + *(v13 + 56);
    v26 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
    if (!sub_100003EB0(v26))
    {
      v27 = *(v13 + 20);
      type metadata accessor for Location();
      sub_100003D98();
      (*(v28 + 8))(v25 + v27);
      (*(*(v23 - 8) + 8))(v25 + *(v13 + 24), v23);
    }
  }

  v29 = v0[19];
  type metadata accessor for Date();
  sub_100003D98();
  (*(v30 + 8))(v10 + v29);
  v31 = v0[20];
  v32 = type metadata accessor for ForegroundEffect();
  if (!sub_100024D10(v10 + v31, 1, v32))
  {
    sub_100003B20();
    (*(v33 + 8))(v10 + v31, v32);
  }

  v34 = (v10 + v0[26]);
  v35 = type metadata accessor for PreviewLocation();
  if (!sub_100003EB0(v35))
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
        (*(v36 + 8))(v34);
        break;
      case 3u:

        v38 = *(type metadata accessor for SearchLocation() + 32);
        v39 = type metadata accessor for Location();
        if (!sub_100024D10(v34 + v38, 1, v39))
        {
          sub_100003B20();
          (*(v40 + 8))(v34 + v38);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001DBC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DBCC4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10022C350(&qword_100CADBA0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001DBD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CADC58);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for LocationViewModel();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1001DBE28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10022C350(&qword_100CADC58);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for LocationViewModel();
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001DBF74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SearchLocation();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001DBFFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchLocation();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DC07C()
{
  v1 = type metadata accessor for SearchResultRowView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_100006F14(v2);
  v3 = (v2 + *(v1 + 20));

  v4 = *(type metadata accessor for SearchLocation() + 32);
  v5 = type metadata accessor for Location();
  if (!sub_100024D10(v3 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1001DC24C()
{

  return swift_deallocObject();
}

uint64_t sub_1001DC2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherDescription();
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

uint64_t sub_1001DC394(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WeatherDescription();
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

uint64_t sub_1001DC468(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for PrecipitationAveragesHeroChartInput();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_6:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for MonthlyAveragesChartInput();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = v3 + v12;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    type metadata accessor for NewsDataModel();
    sub_100003928();
    if (*(v17 + 84) == a2)
    {
      v8 = v16;
      v12 = a3[7];
    }

    else
    {
      type metadata accessor for Calendar();
      sub_100003928();
      if (*(v19 + 84) == a2)
      {
        v8 = v18;
        v12 = a3[8];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v21 + 84) == a2)
        {
          v8 = v20;
          v12 = a3[9];
        }

        else
        {
          v8 = type metadata accessor for Location();
          v12 = a3[10];
        }
      }
    }

    goto LABEL_5;
  }

  v14 = *(v3 + a3[6]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_1001DC63C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for PrecipitationAveragesHeroChartInput();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for MonthlyAveragesChartInput();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(v4 + a4[6]) = a2;
        return;
      }

      type metadata accessor for NewsDataModel();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        type metadata accessor for Calendar();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for Date();
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            v10 = type metadata accessor for Location();
            v14 = a4[10];
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001DC848(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA65D8);
      v10 = *(a3 + 44);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001DC920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA65D8);
      v10 = *(a4 + 44);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001DC9F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CB3AB0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for URL();
      v10 = *(a3 + 28);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001DCACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10022C350(&qword_100CB3AB0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for URL();
      v10 = *(a4 + 28);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001DCBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherDescription();
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

uint64_t sub_1001DCC80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WeatherDescription();
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

uint64_t sub_1001DCE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherData(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001DCE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherData(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001DCEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return v9 - 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_10022C350(&qword_100CAB960);
    v8 = a1 + *(a3 + 24);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001DCF9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = sub_10022C350(&qword_100CAB960);
    v10 = a1 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001DD0B8()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001DD0F4()
{

  return swift_deallocObject();
}

uint64_t sub_1001DD12C()
{
  type metadata accessor for LocationViewAction();
  sub_1000082C0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  v4 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      type metadata accessor for Location();
      sub_100003D98();
      (*(v8 + 8))(v0 + v3);
      v9 = *(sub_10022C350(&qword_100CA6650) + 48);
      type metadata accessor for LocationOfInterest();
      sub_100003D98();
      (*(v10 + 8))(v4 + v9, v11);
      break;
    case 1:
      type metadata accessor for LocationComponentAction(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          type metadata accessor for URL();
          goto LABEL_10;
        case 1u:
          type metadata accessor for WeatherMapOverlayKind();
          goto LABEL_10;
        case 2u:
          type metadata accessor for DetailCondition();
LABEL_10:
          sub_100003D98();
          (*(v12 + 8))(v0 + v3);
          break;
        case 4u:
          v1 = *(sub_10022C350(&qword_100CA6688) + 48);
          type metadata accessor for Location();
          sub_100003D98();
          (*(v13 + 8))(v4 + v1);
          break;
        default:
          break;
      }

      v14 = *(sub_10022C350(&qword_100CA6658) + 64);
      v15 = type metadata accessor for Date();
      if (!sub_100020EC4(v15))
      {
        (*(*(v1 - 8) + 8))(v4 + v14, v1);
      }

      break;
    case 0:
      type metadata accessor for Location();
      sub_100003D98();
      (*(v6 + 8))(v0 + v3, v7);
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1001DD3B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CA3BE0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_1001DD444(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA3BE0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1001DD52C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43638, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001DD578(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x726F727265;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001DD6AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CA61E0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001DD740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA61E0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DD820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA3BE0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 28);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001DD8E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA3BE0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 28);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001DDA18(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB0908);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1001DDA80()
{

  return swift_deallocObject();
}

uint64_t sub_1001DDAF4()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for ConditionDetailInput.Input(v2);
  v4 = sub_100024D10(v1, v0, v3);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DDB34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ConditionDetailInput.Input(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001DDB90(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_8:

    return sub_100024D10(v9, v3, v8);
  }

  sub_10022C350(&qword_100CA7030);
  sub_100003928();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = v4 + v12;
    goto LABEL_8;
  }

  sub_10022C350(&qword_100CB0BA0);
  sub_100003928();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  if (v3 != 0x7FFFFFFF)
  {
    type metadata accessor for DetailCondition();
    sub_100003928();
    if (*(v18 + 84) == v3)
    {
      v8 = v17;
      v12 = a3[8];
    }

    else
    {
      type metadata accessor for DetailChartCondition();
      sub_100003928();
      if (*(v20 + 84) == v3)
      {
        v8 = v19;
        v12 = a3[9];
      }

      else
      {
        type metadata accessor for Location();
        sub_100003928();
        if (*(v22 + 84) == v3)
        {
          v8 = v21;
          v12 = a3[13];
        }

        else
        {
          type metadata accessor for Locale();
          sub_100003928();
          if (*(v24 + 84) == v3)
          {
            v8 = v23;
            v12 = a3[14];
          }

          else
          {
            type metadata accessor for DayWeather();
            sub_100003928();
            if (*(v26 + 84) == v3)
            {
              v8 = v25;
              v12 = a3[15];
            }

            else
            {
              type metadata accessor for CurrentWeather();
              sub_100003928();
              if (*(v28 + 84) == v3)
              {
                v8 = v27;
                v12 = a3[16];
              }

              else
              {
                sub_10022C350(&qword_100CA7000);
                sub_100003928();
                if (*(v30 + 84) == v3)
                {
                  v8 = v29;
                  v12 = a3[17];
                }

                else
                {
                  type metadata accessor for WeatherData(0);
                  sub_100003928();
                  if (*(v32 + 84) == v3)
                  {
                    v8 = v31;
                    v12 = a3[18];
                  }

                  else
                  {
                    type metadata accessor for NewsDataModel();
                    sub_100003928();
                    if (*(v34 + 84) == v3)
                    {
                      v8 = v33;
                      v12 = a3[19];
                    }

                    else
                    {
                      sub_10022C350(&qword_100CB0BA8);
                      sub_100003928();
                      if (*(v36 + 84) == v3)
                      {
                        v8 = v35;
                        v12 = a3[20];
                      }

                      else
                      {
                        sub_10022C350(&qword_100CACDF8);
                        sub_100003928();
                        if (*(v38 + 84) == v3)
                        {
                          v8 = v37;
                          v12 = a3[22];
                        }

                        else
                        {
                          v8 = sub_10022C350(&qword_100CAC3E8);
                          v12 = a3[23];
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

    goto LABEL_7;
  }

  v16 = *(v4 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1001DDFDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_10022C350(&qword_100CA7030);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CB0BA0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v5 + a4[7]) = (v4 - 1);
          return;
        }

        type metadata accessor for DetailCondition();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for DetailChartCondition();
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            type metadata accessor for Location();
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[13];
            }

            else
            {
              type metadata accessor for Locale();
              sub_100003928();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[14];
              }

              else
              {
                type metadata accessor for DayWeather();
                sub_100003928();
                if (*(v26 + 84) == a3)
                {
                  v10 = v25;
                  v14 = a4[15];
                }

                else
                {
                  type metadata accessor for CurrentWeather();
                  sub_100003928();
                  if (*(v28 + 84) == a3)
                  {
                    v10 = v27;
                    v14 = a4[16];
                  }

                  else
                  {
                    sub_10022C350(&qword_100CA7000);
                    sub_100003928();
                    if (*(v30 + 84) == a3)
                    {
                      v10 = v29;
                      v14 = a4[17];
                    }

                    else
                    {
                      type metadata accessor for WeatherData(0);
                      sub_100003928();
                      if (*(v32 + 84) == a3)
                      {
                        v10 = v31;
                        v14 = a4[18];
                      }

                      else
                      {
                        type metadata accessor for NewsDataModel();
                        sub_100003928();
                        if (*(v34 + 84) == a3)
                        {
                          v10 = v33;
                          v14 = a4[19];
                        }

                        else
                        {
                          sub_10022C350(&qword_100CB0BA8);
                          sub_100003928();
                          if (*(v36 + 84) == a3)
                          {
                            v10 = v35;
                            v14 = a4[20];
                          }

                          else
                          {
                            sub_10022C350(&qword_100CACDF8);
                            sub_100003928();
                            if (*(v38 + 84) == a3)
                            {
                              v10 = v37;
                              v14 = a4[22];
                            }

                            else
                            {
                              v10 = sub_10022C350(&qword_100CAC3E8);
                              v14 = a4[23];
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

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001DE4D0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_11:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[11];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CA5010);
      v14 = a3[15];
    }

    v9 = v3 + v14;
    goto LABEL_11;
  }

  v10 = *(v3 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1001DE5E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5]) = (a2 - 1);
      return;
    }

    type metadata accessor for WeatherMapPresentationState(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CA5010);
      v14 = a4[15];
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001DE6F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001DE764(uint64_t *a1, uint64_t a2, int *a3)
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
    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for Locale();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        sub_10022C350(&qword_100CAB960);
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[8];
        }

        else
        {
          type metadata accessor for Date();
          sub_100003928();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[9];
          }

          else
          {
            v10 = sub_10022C350(&unk_100CABCA0);
            v11 = a3[11];
          }
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

void *sub_1001DE904(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      type metadata accessor for Locale();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        sub_10022C350(&qword_100CAB960);
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[8];
        }

        else
        {
          type metadata accessor for Date();
          sub_100003928();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[9];
          }

          else
          {
            v10 = sub_10022C350(&unk_100CABCA0);
            v11 = a4[11];
          }
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1001DEB18()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) >= 0xEuLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001DEB70()
{

  return swift_deallocObject();
}

uint64_t sub_1001DEBA8()
{
  v74 = type metadata accessor for PrivateUserData();
  sub_1000037C4();
  v72 = v1;
  v68 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v2 + 64);
  v71 = type metadata accessor for LocationData();
  sub_1000037C4();
  v5 = v4;
  v65 = (v68 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_10022C350(&qword_100CB1290);
  sub_100003AE8(v8);
  v56 = (v65 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v10 + 64);
  v73 = type metadata accessor for ForecastAgeData();
  sub_1000037C4();
  v61 = v12;
  v14 = *(v13 + 64);
  v69 = (v56 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v70 = type metadata accessor for ConditionsFeedbackData();
  sub_1000037C4();
  v60 = v15;
  v16 = (v69 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v18 = *(v17 + 64);
  v66 = v16;
  v67 = type metadata accessor for WindFeedbackData();
  sub_1000037C4();
  v20 = v19;
  v21 = (v16 + v18 + *(v19 + 80)) & ~*(v19 + 80);
  v23 = *(v22 + 64);
  v63 = v21;
  v64 = type metadata accessor for TemperatureFeedbackData();
  sub_1000037C4();
  v25 = v24;
  v26 = (v21 + v23 + *(v24 + 80)) & ~*(v24 + 80);
  v28 = *(v27 + 64);
  v29 = sub_10022C350(&qword_100CB1280);
  sub_100003AE8(v29);
  v59 = v26;
  v31 = (v26 + v28 + *(v30 + 80)) & ~*(v30 + 80);
  v33 = *(v32 + 64);
  v62 = type metadata accessor for OtherConditionsFeedbackData();
  sub_1000037C4();
  v35 = v34;
  v36 = (v31 + v33 + *(v34 + 80)) & ~*(v34 + 80);
  v38 = *(v37 + 64);
  v57 = v36;
  v58 = type metadata accessor for DescriptionFeedbackData();
  sub_1000037C4();
  v40 = v39;
  v41 = (v36 + v38 + *(v39 + 80)) & ~*(v39 + 80);
  v43 = *(v42 + 64);
  v44 = sub_10022C350(&qword_100CB1278);
  sub_100003AE8(v44);
  v46 = *(v45 + 80);
  v47 = v41 + v43 + v46;
  (*(v72 + 8))(v0 + v68, v74);
  (*(v5 + 8))(v0 + v65, v71);
  v48 = type metadata accessor for LocationConditionData();
  if (!sub_100024D10(v0 + v56, 1, v48))
  {
    sub_10004E4B8();
    (*(v49 + 8))(v0 + v56, v48);
  }

  v50 = v47 & ~v46;
  (*(v61 + 8))(v0 + v69, v73);
  (*(v60 + 8))(v0 + v66, v70);
  (*(v20 + 8))(v0 + v63, v67);
  (*(v25 + 8))(v0 + v59, v64);
  v51 = type metadata accessor for AQIFeedbackData();
  if (!sub_100024D10(v0 + v31, 1, v51))
  {
    sub_10004E4B8();
    (*(v52 + 8))(v0 + v31, v51);
  }

  (*(v35 + 8))(v0 + v57, v62);
  (*(v40 + 8))(v0 + v41, v58);
  v53 = type metadata accessor for WeatherJSONData();
  if (!sub_100024D10(v0 + v50, 1, v53))
  {
    sub_10004E4B8();
    (*(v54 + 8))(v0 + v50, v53);
  }

  return swift_deallocObject();
}

uint64_t sub_1001DF218()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001DF250()
{

  return swift_deallocObject();
}

uint64_t sub_1001DF288()
{

  sub_100006F14(v0 + 64);
  sub_100006F14(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_1001DF2F0(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for WeatherStatisticsModel();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CA7000);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        type metadata accessor for TimeZone();
        sub_100003928();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          type metadata accessor for Locale();
          sub_100003928();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            v8 = sub_10022C350(&qword_100CAB960);
            v12 = a3[9];
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_1001DF4A0(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    type metadata accessor for WeatherStatisticsModel();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA7000);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        type metadata accessor for TimeZone();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          type metadata accessor for Locale();
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[8];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CAB960);
            v14 = a4[9];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001DF658()
{
  v2 = sub_100003B38();
  HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(v2);
  v4 = sub_100024D10(v1, v0, HourPrecipitationDetail);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DF698(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(0);

  return sub_10001B350(a1, v5, a3, HourPrecipitationDetail);
}

uint64_t sub_1001DF6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003B38();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_10022C350(&qword_100CAE8F0);
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for WeatherData(0);
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return sub_100024D10(v9, v3, v8);
}

uint64_t sub_1001DF7D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_10022C350(&qword_100CAE8F0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for WeatherData(0);
      v14 = *(a4 + 24);
    }

    v11 = v5 + v14;
  }

  return sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001DF8B4()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001DF8EC()
{

  return swift_deallocObject();
}

uint64_t sub_1001DF924()
{

  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1001DF97C()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001DF9B4()
{

  return swift_deallocObject();
}

uint64_t sub_1001DF9FC()
{

  return swift_deallocObject();
}

uint64_t sub_1001DFA3C()
{

  return swift_deallocObject();
}

uint64_t sub_1001DFAE4(char a1)
{
  if (!a1)
  {
    return 0x656E696C6E69;
  }

  if (a1 == 1)
  {
    return 0x64656E6E6970;
  }

  return 0x657263736C6C7566;
}

uint64_t sub_1001DFB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10039B018(a1, a2);
  *a3 = result;
  return result;
}

BOOL sub_1001DFCC8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C437A0, v2);

  return v3 != 0;
}

uint64_t sub_1001DFD74()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001DFDAC()
{

  return swift_deallocObject();
}

uint64_t sub_1001DFDF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001DFE28()
{

  return swift_deallocObject();
}

uint64_t sub_1001DFE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CADC58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_1001DFF30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CADC58);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1001DFFE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100126A88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001E0054()
{
  type metadata accessor for RecordPinnedMapAnimatingViewModifier();
  sub_100003A0C();
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);

  sub_10022C350(&unk_100CE1000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  sub_100014490();

  return swift_deallocObject();
}

uint64_t sub_1001E015C()
{
  sub_10022E824(&qword_100CB24F8);
  type metadata accessor for ScenePhase();
  sub_1003A7430();
  sub_10001C024();
  sub_1003A7794(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001E0238()
{

  return swift_deallocObject();
}

uint64_t sub_1001E02C4(uint64_t a1, uint64_t a2)
{
  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
  v5 = sub_100024D10(a1, a2, HourPrecipitationDetailView);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E030C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);

  return sub_10001B350(a1, v5, a3, HourPrecipitationDetailView);
}

uint64_t sub_1001E0368(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for NextHourPrecipitationChartViewModel();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      type metadata accessor for ConditionDetailMapViewModel();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[8];
      }

      else
      {
        type metadata accessor for TimeZone();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[9];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CB0BA0);
          v11 = a3[10];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001E04BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for NextHourPrecipitationChartViewModel();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      type metadata accessor for ConditionDetailMapViewModel();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        type metadata accessor for TimeZone();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CB0BA0);
          v11 = a4[10];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1001E060C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel(0);
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

uint64_t sub_1001E0654(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ConditionDetailPlatterViewModel(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001E06C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001E0708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001E077C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001E07B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HourPrecipitationComponentViewModel = type metadata accessor for NextHourPrecipitationComponentViewModel();
  if (*(*(HourPrecipitationComponentViewModel - 8) + 84) == a2)
  {
    v7 = HourPrecipitationComponentViewModel;
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

    v7 = sub_10022C350(&qword_100CB2AC8);
    v8 = a1 + *(a3 + 28);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001E088C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NextHourPrecipitationComponentViewModel();
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

    v9 = sub_10022C350(&qword_100CB2AC8);
    v10 = a1 + *(a4 + 28);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001E096C(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB2BC8);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001E09E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001E0A68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_1001E0B04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001E0B10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001E0B48()
{

  return swift_deallocObject();
}

uint64_t sub_1001E0BC4()
{
  sub_10000406C();
  if (v1 == v3)
  {
    return sub_1000039D8(*(v0 + 24));
  }

  v5 = v2;
  if (*(*(type metadata accessor for DisplayMetrics() - 8) + 84) == v1)
  {
    v6 = *(v5 + 20);
  }

  else
  {
    sub_10022C350(&qword_100CA61E0);
    v6 = *(v5 + 28);
  }

  v7 = sub_1000039EC(v6);

  return sub_100024D10(v7, v8, v9);
}

void sub_1001E0C88(uint64_t a1, uint64_t a2)
{
  sub_10000406C();
  if (v4 == v6)
  {
    *(v2 + 24) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(type metadata accessor for DisplayMetrics() - 8) + 84) == v4)
    {
      v8 = *(v7 + 20);
    }

    else
    {
      sub_10022C350(&qword_100CA61E0);
      v8 = *(v7 + 28);
    }

    v9 = sub_1000039EC(v8);

    sub_10001B350(v9, v10, a2, v11);
  }
}

uint64_t sub_1001E0DB8()
{

  return swift_deallocObject();
}

uint64_t sub_1001E0E30()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001E0E68()
{
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001E0F10()
{

  return swift_deallocObject();
}

uint64_t sub_1001E0F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PressureTrend();
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

uint64_t sub_1001E1034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PressureTrend();
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

uint64_t sub_1001E1188(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  sub_10022C350(&qword_100CB3AB0);
  v4 = sub_10000FE68();

  return sub_100024D10(v4, a2, v5);
}

uint64_t sub_1001E120C(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CB3AB0);
    v4 = sub_10000FE68();

    return sub_10001B350(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1001E1294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CB3B80);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CB3AB0);
    sub_100003928();
    if (*(v10 + 84) != a2)
    {
      return sub_1000039D8(*(a1 + *(a3 + 24) + 8));
    }

    v9 = sub_10000FE68();
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001E138C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10022C350(&qword_100CB3B80);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CB3AB0);
    sub_100003928();
    if (*(v12 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v11 = sub_10000FE68();
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001E148C()
{

  return swift_deallocObject();
}

uint64_t sub_1001E14E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location.Identifier();
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E1530(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Location.Identifier();

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001E15B8()
{

  return swift_deallocObject();
}

uint64_t sub_1001E15F0()
{
  v1 = type metadata accessor for ViewData();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for TemperatureScaleData();
  sub_1000037C4();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001E1728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001E17D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
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

unint64_t sub_1001E18A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43940, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E18EC(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000015;
}

uint64_t sub_1001E1998(uint64_t a1, uint64_t a2, int *a3)
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
    sub_10022C350(qword_100CA66A0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0);
      sub_100003928();
      if (*(v14 + 84) != a2)
      {
        v16 = *(a1 + a3[8]);
        if (v16 >= 3)
        {
          return v16 - 2;
        }

        else
        {
          return 0;
        }
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001E1AD8(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    sub_10022C350(qword_100CA66A0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0);
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001E1C5C(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB42A8);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001E1CC4(uint64_t a1)
{
  sub_10022C350(&qword_100CB42A8);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001E1D68(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for Location();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_10022C350(&qword_100CA3898);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_1001E1EB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Location();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA3898);
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7] + 8) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001E1FE8()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001E2020()
{

  return swift_deallocObject();
}

uint64_t sub_1001E2060()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for LocationPreviewContentInput(v2);
  v4 = sub_100024D10(v1, v0, v3);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E20A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for LocationPreviewContentInput(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001E20FC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for PreviewLocation();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_11:

    return sub_100024D10(v9, v3, v8);
  }

  type metadata accessor for LocationPreviewModalViewState(0);
  sub_100003928();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = v4 + v12;
    goto LABEL_11;
  }

  if (v3 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for Date();
    v12 = a3[12];
    goto LABEL_10;
  }

  v13 = *(v4 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1001E2200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for PreviewLocation();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for LocationPreviewModalViewState(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[7]) = (v4 - 1);
        return;
      }

      v10 = type metadata accessor for Date();
      v14 = a4[12];
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001E2308(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_1001E2390(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001E2460(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  sub_10022C350(&qword_100CACF38);
  v5 = sub_1000039EC(*(a3 + 24));

  return sub_100024D10(v5, v6, v7);
}

void sub_1001E24E4()
{
  sub_100011510();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CACF38);
    v5 = sub_1000039EC(*(v4 + 24));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_1001E2560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TemperatureScaleConfiguration();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 32) + 8));
  }

  return sub_100024D10(a1, a2, v6);
}

uint64_t sub_1001E2604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TemperatureScaleConfiguration();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001E2718()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB4AD8);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001E2778(uint64_t a1)
{
  sub_10022C350(&qword_100CB4AD8);
  sub_100003D98();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001E27DC()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB4AD0);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001E284C()
{
  type metadata accessor for LocationFooterView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000E4DF8(*v3, *(v3 + 8));
  v4 = *(v0 + 20);
  sub_10022C350(&qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);

  if (*(v6 + 24))
  {
  }

  v7 = type metadata accessor for LocationFooterViewModel();
  v8 = v6 + v7[9];

  v9 = *(type metadata accessor for LearnMoreAttributorViewModel() + 24);
  v10 = type metadata accessor for URL();
  if (!sub_100024D10(v8 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  v11 = v7[11];
  v12 = type metadata accessor for LocationOfInterest();
  if (!sub_100024D10(v6 + v11, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  v13 = v6 + v7[14];
  v14 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
  if (!sub_100024D10(v13, 1, v14))
  {
    v15 = *(v14 + 20);
    type metadata accessor for Location();
    sub_100003D98();
    (*(v16 + 8))(v13 + v15);
    (*(*(v12 - 8) + 8))(v13 + *(v14 + 24), v12);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001E2B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CAD870);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = *(a3 + 24);
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100005B00();
    }

    type metadata accessor for HomeAndWorkRefinementRowViewModel();
    v6 = *(a3 + 32);
  }

  v8 = sub_1000039EC(v6);

  return sub_100024D10(v8, v9, v10);
}

void sub_1001E2BD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CAD870);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[7]) = (v4 - 1);
      return;
    }

    type metadata accessor for HomeAndWorkRefinementRowViewModel();
    v9 = a4[8];
  }

  v10 = sub_1000039EC(v9);

  sub_10001B350(v10, v11, v4, v12);
}

uint64_t sub_1001E2CE0()
{
  type metadata accessor for HomeAndWorkRefinementRow(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000E4DF8(*v3, *(v3 + 8));
  sub_1000E4DF8(*(v3 + 16), *(v3 + 24));
  v4 = *(v0 + 24);
  sub_10022C350(&qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v6 = v3 + *(v0 + 32);
  v7 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
  v8 = *(v7 + 20);
  type metadata accessor for Location();
  sub_100003D98();
  (*(v9 + 8))(v6 + v8);
  v10 = *(v7 + 24);
  type metadata accessor for LocationOfInterest();
  sub_100003D98();
  (*(v11 + 8))(v6 + v10);

  return swift_deallocObject();
}

uint64_t sub_1001E2EB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003D7244();
  *a1 = result;
  return result;
}

uint64_t sub_1001E2EE0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001E2F18()
{
  v1 = type metadata accessor for BackgroundAnimationData.Model();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for URL();
  sub_1000037C4();
  v9 = v8;
  v10 = (v6 + *(v8 + 80) + 40) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  sub_100006F14(v0 + v6);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t sub_1001E3078()
{

  return swift_deallocObject();
}

uint64_t sub_1001E30B0()
{
  v17 = type metadata accessor for BackgroundAnimationData.Model();
  sub_1000037C4();
  v2 = v1;
  v15 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = (*(v3 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for MicaLayer();
  sub_1000037C4();
  v6 = v5;
  v7 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for URL();
  sub_1000037C4();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  (*(v2 + 8))(v0 + v15, v17);

  (*(v6 + 8))(v0 + v7, v16);
  (*(v12 + 8))(v0 + v13, v10);

  return swift_deallocObject();
}

uint64_t sub_1001E3294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1003D7320();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001E332C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MoonScrubberHeaderViewModel(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for CoordinateSpace();
      v10 = *(a3 + 48);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001E33F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MoonScrubberHeaderViewModel(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for CoordinateSpace();
      v10 = *(a4 + 48);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001E34C8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB5028);
  sub_1000037E8();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001E3594()
{
  sub_10022E824(&qword_100CB5140);
  type metadata accessor for PlainButtonStyle();
  sub_100006F64(qword_100CB5178, &qword_100CB5140);
  sub_1003DEFB4(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001E369C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001E36D4()
{

  return swift_deallocObject();
}

uint64_t sub_1001E370C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001E377C()
{
  sub_10000410C();
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

void sub_1001E3824(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100005B78();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100005B64();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_1001E38BC()
{
  v2 = sub_100005B78();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001E38F8()
{
  sub_100005B78();
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001E39B4()
{
  v1 = *(type metadata accessor for ProminentPadBulletedDescription(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for SevereAlertComponentViewModel() + 36);
  type metadata accessor for WeatherAlert.Prominence();
  sub_1000037E8();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1001E3B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 40) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1001E3C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConditionDetailPlatterViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001E3CD4(uint64_t a1)
{
  sub_10022C350(&qword_100CB5B00);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001E3D34(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB5B08);
  sub_100003A9C();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1001E3DA0()
{
  sub_10022C350(&qword_100CB5C78);
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001E3E2C()
{
  sub_10022E824(&qword_100CB5AD8);
  sub_10022E824(&qword_100CB5AE0);
  sub_10022E824(&qword_100CB5AE8);
  sub_10022E824(&qword_100CB5AF0);
  type metadata accessor for Optional();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000E9D0();
  type metadata accessor for Group();
  sub_10022E824(&qword_100CB5AF8);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB5B00);
  sub_100005BA8();
  swift_getTupleTypeMetadata3();
  sub_10000E9D0();
  type metadata accessor for TupleView();
  sub_10001781C();
  sub_10000381C();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001377C();
  swift_getWitnessTable();
  sub_10004E558();
  swift_getWitnessTable();
  sub_100003940();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AutomationInfoViewModifier();
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000497AC();
  sub_1003F0910(v0, v1);
  swift_getWitnessTable();
  sub_10007497C();
  sub_1003F0910(v2, v3);
  sub_10001920C();
  return swift_getWitnessTable();
}

uint64_t sub_1001E4100()
{
  sub_10022E824(&qword_100CB5FA8);
  sub_1003F3E04();
  sub_10022E824(&qword_100CB5FB8);
  sub_100018414();
  sub_10000C90C();
  sub_10023FBF4(v0, v1);
  sub_100031590();
  swift_getOpaqueTypeConformance2();
  return sub_100017540();
}

uint64_t sub_1001E42C0(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB6420);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1001E4370(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  sub_10022C350(&qword_100CB6170);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    sub_10022C350(&qword_100CB6198);
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      v9 = sub_10022C350(&qword_100CB6558);
      v10 = a3[8];
    }
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

uint64_t sub_1001E4490(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CB6170);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CB6198);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CB6558);
        v11 = a4[8];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1001E45B8()
{
  type metadata accessor for MenuPickerStyle();
  type metadata accessor for PickerSection();
  return swift_getWitnessTable();
}

uint64_t sub_1001E4624()
{
  sub_10022E824(&qword_100CB6390);
  sub_10022E824(&qword_100CB6388);
  sub_1003FE6A0();
  sub_10002D5A4();
  sub_100017540();
  return sub_100017540();
}

uint64_t sub_1001E46DC()
{
  v2 = *(v1 + 16);
  v21 = *(v1 + 24);
  type metadata accessor for PickerSection();
  sub_100008560();
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  type metadata accessor for Binding();
  sub_1000C8768();
  (*(v5 + 8))(v4 + v6, v2);

  v15 = sub_100024680(v7, v8, v9, v10, v11, v12, v13, v14, v21);
  (*(v16 + 8))(v4 + v17, v15);

  v18 = *(v0 + 84);
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v19 + 8))(v4 + v18);
  }

  else
  {
  }

  sub_100030448();
  return swift_deallocObject();
}

uint64_t sub_1001E48A4()
{
  v2 = *(*(v1 + 32) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v24 = *(v1 + 32);
  v23 = *(v1 + 40);
  type metadata accessor for PickerSection();
  sub_100008560();
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v1 + v3, v24);

  v8 = type metadata accessor for Binding();
  v7(v1 + v6 + *(v8 + 32), v24);
  sub_100008544(v0[15]);

  v17 = sub_100024680(v9, v10, v11, v12, v13, v14, v15, v16, v23);
  (*(v18 + 8))(v1 + v6 + v19, v17);

  sub_100008544(v0[19]);

  sub_100008544(v0[20]);

  v20 = v0[21];
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v21 + 8))(v1 + v6 + v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001E4AD4()
{
  v1 = *(v0 + 32);
  v23 = *(v0 + 40);
  v2 = (type metadata accessor for PickerSection() - 8);
  v24 = *(*v2 + 64);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  sub_100007FD0();
  v5 = v4;
  v6 = *(v4 + 80);
  swift_unknownObjectRelease();

  v7 = type metadata accessor for Binding();
  v8 = *(v5 + 8);
  v8(v0 + v3 + *(v7 + 32), v1);

  v17 = sub_100024680(v9, v10, v11, v12, v13, v14, v15, v16, v23);
  (*(v18 + 8))(v0 + v3 + v19, v17);

  v20 = v2[21];
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v21 + 8))(v0 + v3 + v20);
  }

  else
  {
  }

  v8(v0 + ((v3 + v24 + v6) & ~v6), v1);
  return swift_deallocObject();
}

uint64_t sub_1001E4D24()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001E4D90()
{
  type metadata accessor for TemperatureView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  sub_100003AE8(v6);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = v1 + v3;

  v11 = v1 + v3 + v0[5];

  v12 = *(sub_10022C350(&qword_100CB6170) + 36);
  v13 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100017854(v11 + v12))
  {
    sub_100003D20();
    (*(v14 + 8))(v11 + v12, v13);
  }

  v15 = v3 + v9;
  sub_100006F14(v10 + v0[6]);
  v16 = v0[7];
  if (!sub_100017854(v10 + v16))
  {
    sub_100003D20();
    (*(v17 + 8))(v10 + v16, v13);
  }

  v18 = v15 & ~v8;
  v19 = v10 + v0[8];
  if (!sub_100017854(v19))
  {
    sub_100003D20();
    (*(v20 + 8))(v19, v13);
  }

  sub_10022C350(&qword_100CB6558);

  if (!sub_100017854(v1 + v18))
  {
    sub_100003D20();
    (*(v21 + 8))(v1 + v18, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_1001E4FE0()
{
  sub_10022E824(&qword_100CB66B0);
  sub_10022E824(&qword_100CB6648);
  type metadata accessor for Array();
  sub_10022E824(&qword_100CB6650);
  sub_100051DF8();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  sub_1003FFD40();
  sub_1003FFFA8();
  sub_100037A98();
  swift_getWitnessTable();
  type metadata accessor for Menu();
  type metadata accessor for DefaultMenuStyle();
  sub_10000E9DC();
  swift_getWitnessTable();
  sub_10002C6BC();
  sub_1003FD490(v0, v1);
  sub_1000206FC();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB6640);
  swift_getTupleTypeMetadata3();
  sub_10000E9D0();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10000E9D0();
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ViewThatFits();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1001E5318()
{
  sub_10022E824(&qword_100CB6750);
  type metadata accessor for UnitsConfigurationViewModel.Temperature(255);
  sub_10022E824(&qword_100CB6748);
  sub_100400938();
  sub_1003FD490(&qword_100CB67A0, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001E5454()
{
  sub_100003B38();
  v2 = type metadata accessor for Date();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001E5494()
{
  sub_100003B38();
  type metadata accessor for Date();
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001E54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LollipopMarkModel(0);
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

uint64_t sub_1001E557C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003B38();
  result = type metadata accessor for LollipopMarkModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = sub_100005B64();

    return sub_10001B350(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1001E5618(uint64_t a1, int a2, int *a3)
{
  sub_10022C350(&qword_100CAD870);
  sub_100003928();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
LABEL_13:
    v13 = sub_1000039EC(v7);

    return sub_100024D10(v13, v14, v15);
  }

  sub_10022C350(&qword_100CA3BE0);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v7 = a3[8];
    goto LABEL_13;
  }

  sub_10022C350(&qword_100CB6E18);
  sub_100003928();
  if (*(v9 + 84) == a2)
  {
    v7 = a3[9];
    goto LABEL_13;
  }

  sub_10022C350(&qword_100CADC58);
  sub_100003928();
  if (*(v10 + 84) == a2)
  {
    v7 = a3[10];
    goto LABEL_13;
  }

  type metadata accessor for Text.Measurements();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v7 = a3[11];
    goto LABEL_13;
  }

  type metadata accessor for MoonComponentViewModel();
  sub_100003928();
  if (*(v12 + 84) == a2)
  {
    v7 = a3[12];
    goto LABEL_13;
  }

  v17 = *(a1 + a3[13] + 32);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

void sub_1001E5840(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CAD870);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0);
    sub_100003928();
    if (*(v10 + 84) == a3)
    {
      v9 = a4[8];
    }

    else
    {
      sub_10022C350(&qword_100CB6E18);
      sub_100003928();
      if (*(v11 + 84) == a3)
      {
        v9 = a4[9];
      }

      else
      {
        sub_10022C350(&qword_100CADC58);
        sub_100003928();
        if (*(v12 + 84) == a3)
        {
          v9 = a4[10];
        }

        else
        {
          type metadata accessor for Text.Measurements();
          sub_100003928();
          if (*(v13 + 84) == a3)
          {
            v9 = a4[11];
          }

          else
          {
            type metadata accessor for MoonComponentViewModel();
            sub_100003928();
            if (*(v14 + 84) != a3)
            {
              *(a1 + a4[13] + 32) = a2;
              return;
            }

            v9 = a4[12];
          }
        }
      }
    }
  }

  v15 = sub_1000039EC(v9);

  sub_10001B350(v15, v16, a2, v17);
}

uint64_t sub_1001E5A5C(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB6F48);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1001E5AC0()
{
  sub_10000C778();
  type metadata accessor for MoonComponentView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  v4 = v1 + v3;
  sub_1000EBD74(*(v1 + v3), *(v1 + v3 + 8));
  v5 = v0[5];
  sub_10022C350(&qword_100CA71B0);
  if (sub_10001691C() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_100028448(v0[6]);
  sub_100028448(v0[7]);
  v7 = v0[8];
  sub_10022C350(&qword_100CAD618);
  if (sub_10001691C() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  v9 = v0[9];
  sub_10022C350(&qword_100CB6EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ForegroundEffect();
    if (!sub_10000CABC(v10))
    {
      (*(*(v7 - 8) + 8))(v4 + v9, v7);
    }
  }

  else
  {
  }

  v11 = v0[10];
  sub_10022C350(&unk_100CE1000);
  if (sub_10001691C() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v12 + 8))(v4 + v11);
  }

  else
  {
  }

  v13 = v0[11];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v14 + 8))(v4 + v13);
  v15 = v4 + v0[12];

  v16 = *(v15 + 32);
  if (v16 != 255)
  {
    sub_1002773E8(*(v15 + 16), *(v15 + 24), v16);
  }

  v17 = *(type metadata accessor for MoonComponentViewModel() + 28);
  type metadata accessor for Date();
  sub_100003D98();
  (*(v18 + 8))(v15 + v17);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001E5DD0()
{

  return swift_deallocObject();
}

uint64_t sub_1001E5E48(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 120);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for MoonComponentViewModel();
    v6 = sub_1000039EC(*(a3 + 32));

    return sub_100024D10(v6, v7, v8);
  }
}

uint64_t sub_1001E5ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
  }

  else
  {
    type metadata accessor for MoonComponentViewModel();
    v6 = sub_1000039EC(*(a4 + 32));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1001E5F48()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  type metadata accessor for ScenePhase();
  sub_100005A00();
  sub_100006F64(v1, &qword_100CB6EE8);
  sub_100005C60();
  sub_10040D9F0(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001E60F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001E618C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7518);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001E61E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7518);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001E6238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HourlyForecastComponentViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CAE8E8);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001E62E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HourlyForecastComponentViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10022C350(&qword_100CAE8E8);
    v10 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001E63B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_1000039D8(*(v4 + *(a3 + 24)));
    }

    v8 = type metadata accessor for ListLocationViewModel(0);
    v7 = v4 + *(a3 + 32);
  }

  return sub_100024D10(v7, v3, v8);
}

void sub_1001E647C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    type metadata accessor for ListLocationViewModel(0);
  }

  sub_1000178C4();

  sub_10001B350(v5, v6, v7, v8);
}

uint64_t sub_1001E6550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100929D08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001E65A8()
{
  type metadata accessor for ListLocationRowView(0);
  sub_100003A0C();
  v3 = *(v2 + 80);
  v26 = *(v4 + 64);
  v27 = type metadata accessor for ScrollEventState();
  sub_1000037C4();
  v6 = v5;
  v7 = *(v5 + 80);
  v28 = v1;
  v8 = v1 + ((v3 + 16) & ~v3);
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v9 + 8))(v8);
  }

  else
  {
  }

  sub_100014668(v0[5]);

  swift_unknownObjectRelease();
  sub_100006F14(v8 + v0[7]);
  v10 = v8 + v0[8];
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v11 + 8))(v10);
  v12 = type metadata accessor for ListLocationViewModel(0);
  sub_100003DC4();
  v13 = v10 + v12[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for Date();
    if (!sub_100024D10(v13, 1, v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v13, v14);
    }
  }

  else
  {
  }

  sub_10000EA08(v10 + v12[8]);
  v16 = v12[10];
  v17 = type metadata accessor for Date();
  if (!sub_1000714BC(v17))
  {
    sub_100003B20();
    (*(v18 + 8))(v10 + v16, v13);
  }

  v19 = v12[11];
  v20 = type metadata accessor for TimeZone();
  if (!sub_1000714BC(v20))
  {
    sub_100003B20();
    (*(v21 + 8))(v10 + v19, v13);
  }

  v22 = (((v3 + 16) & ~v3) + v26 + v7) & ~v7;
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  v23 = v12[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v24 + 8))(v10 + v23);
  sub_100003DC4();
  sub_100014668(v0[9]);

  sub_100014668(v0[11]);

  (*(v6 + 8))(v28 + v22, v27);

  return swift_deallocObject();
}

uint64_t sub_1001E6980(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  type metadata accessor for ListLocationViewModel(0);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 24);
  }

  else
  {
    v9 = sub_10022C350(&qword_100CA61E0);
    v10 = *(a3 + 56);
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

void sub_1001E6A48()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v3 = v2;
    type metadata accessor for ListLocationViewModel(0);
    sub_100003928();
    if (*(v4 + 84) != v3)
    {
      sub_10022C350(&qword_100CA61E0);
    }

    sub_1000178C4();

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1001E6B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA42D8);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    v8 = type metadata accessor for ListLocationViewModel(0);
    v7 = v4 + *(a3 + 20);
  }

  return sub_100024D10(v7, v3, v8);
}

uint64_t sub_1001E6BAC()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA42D8);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    type metadata accessor for ListLocationViewModel(0);
  }

  sub_1000178C4();

  return sub_10001B350(v2, v3, v4, v5);
}

uint64_t sub_1001E6C4C()
{
  type metadata accessor for LocationRowButtonStyle(0);
  sub_100003A0C();
  v4 = *(v3 + 80);
  v28 = *(v5 + 64);
  v29 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  sub_1000037C4();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = v1 + ((v4 + 16) & ~v4);
  swift_unknownObjectRelease();
  sub_100006F14(v9 + 16);
  v10 = v9 + v0[6];
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v11 + 8))(v10);
  v12 = type metadata accessor for ListLocationViewModel(0);
  sub_100014668(v12[6]);

  v13 = v10 + v12[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for Date();
    if (!sub_1000057B4(v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v13, v2);
    }
  }

  else
  {
  }

  sub_10000EA08(v10 + v12[8]);
  v16 = type metadata accessor for Date();
  if (!sub_1000246D4(v16))
  {
    sub_100022BC0();
    v17 = sub_1000B9940();
    v18(v17);
  }

  v19 = type metadata accessor for TimeZone();
  if (!sub_1000246D4(v19))
  {
    sub_100022BC0();
    v20 = sub_1000B9940();
    v21(v20);
  }

  sub_100014668(v12[12]);

  sub_100014668(v12[13]);

  sub_100014668(v12[15]);

  sub_100014668(v12[16]);

  sub_100014668(v12[17]);

  sub_100014668(v12[18]);

  sub_100014668(v12[19]);

  sub_100014668(v12[20]);

  v22 = v12[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v23 + 8))(v10 + v22);
  sub_100014668(v12[25]);

  sub_1000E4DF8(*(v9 + v0[13]), *(v9 + v0[13] + 8));
  v24 = v0[14];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v9 + v24, 1, v25))
    {
      sub_100003B20();
      (*(v26 + 8))(v9 + v24, v25);
    }
  }

  else
  {
  }

  (*(v7 + 8))(v1 + ((((v4 + 16) & ~v4) + v28 + v8) & ~v8), v29);

  return swift_deallocObject();
}

uint64_t sub_1001E7040()
{
  type metadata accessor for PrimitiveButtonStyleConfiguration();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001E70E0()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB7B80);
  v1 = sub_1000251E0();
  v3 = sub_100024D10(v1, v0, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E712C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  sub_10022C350(&qword_100CB7B80);
  v5 = sub_10002FDE8();

  return sub_10001B350(v5, v4, a3, v6);
}

uint64_t sub_1001E7190()
{
  v1 = sub_100003B38();
  type metadata accessor for ListLocationViewModel(v1);
  sub_100003928();
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1000251E0();
  }

  else
  {
    if (v0 == 254)
    {
      return sub_100011568();
    }

    type metadata accessor for Text.Measurements();
    v3 = sub_10001C19C();
  }

  return sub_100024D10(v3, v0, v4);
}

void sub_1001E7234(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_100003B38();
  type metadata accessor for ListLocationViewModel(v4);
  sub_100003928();
  if (*(v5 + 84) == a3)
  {
    sub_10002FDE8();
  }

  else
  {
    if (a3 == 254)
    {
      sub_10006A7A4();
      return;
    }

    type metadata accessor for Text.Measurements();
    sub_10001C19C();
  }

  sub_1000178C4();

  sub_10001B350(v6, v7, v8, v9);
}

uint64_t sub_1001E72DC()
{
  v1 = sub_100003B38();
  type metadata accessor for RowElementStyle(v1);
  v2 = sub_1000251E0();

  return sub_100024D10(v2, v0, v3);
}

uint64_t sub_1001E7318()
{
  v0 = sub_100003B38();
  type metadata accessor for RowElementStyle(v0);
  sub_10002FDE8();
  sub_1000178C4();

  return sub_10001B350(v1, v2, v3, v4);
}

uint64_t sub_1001E7354()
{
  v1 = sub_100003B38();
  type metadata accessor for ListLocationViewModel(v1);
  sub_100003928();
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1000251E0();
  }

  else
  {
    if (v0 == 254)
    {
      return sub_100011568();
    }

    sub_10022C350(&qword_100CB76D0);
    v3 = sub_10001C19C();
  }

  return sub_100024D10(v3, v0, v4);
}

void sub_1001E7404(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_100003B38();
  type metadata accessor for ListLocationViewModel(v4);
  sub_100003928();
  if (*(v5 + 84) == a3)
  {
    sub_10002FDE8();
  }

  else
  {
    if (a3 == 254)
    {
      sub_10006A7A4();
      return;
    }

    sub_10022C350(&qword_100CB76D0);
    sub_10001C19C();
  }

  sub_1000178C4();

  sub_10001B350(v6, v7, v8, v9);
}

uint64_t sub_1001E74B8()
{
  sub_10022E824(&qword_100CB79E8);
  sub_100420598();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001E7568()
{
  sub_10000C778();
  type metadata accessor for DescriptionView(0);
  sub_100003A0C();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = v1 + v4;
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v6 + 8))(v1 + v4);
  v7 = type metadata accessor for ListLocationViewModel(0);
  sub_10001673C(v7[6]);

  v8 = v1 + v4 + v7[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Date();
    if (!sub_100005BB8(v9))
    {
      sub_100022BC0();
      (*(v10 + 8))(v8, v2);
    }
  }

  else
  {
  }

  sub_10000EA08(v5 + v7[8]);
  v11 = type metadata accessor for Date();
  if (!sub_10000CADC(v11))
  {
    sub_100003B20();
    v12 = sub_10003B9E8();
    v13(v12);
  }

  v14 = type metadata accessor for TimeZone();
  if (!sub_10000CADC(v14))
  {
    sub_100003B20();
    v15 = sub_10003B9E8();
    v16(v15);
  }

  sub_10001673C(v7[12]);

  sub_10001673C(v7[13]);

  sub_10001673C(v7[15]);

  sub_10001673C(v7[16]);

  sub_10001673C(v7[17]);

  sub_10001673C(v7[18]);

  sub_10001673C(v7[19]);

  sub_10001673C(v7[20]);

  v17 = v7[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v18 + 8))(v5 + v17);
  sub_10001673C(v7[25]);

  v19 = *(v0 + 24);
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v20 + 8))(v5 + v19);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001E7848()
{
  sub_10000C778();
  v2 = type metadata accessor for LocationRowSubheadingView(0);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v4 + 8))(v3);
  v5 = type metadata accessor for ListLocationViewModel(0);
  sub_100020F38();
  v6 = v3 + v5[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    if (!sub_100005BB8(v7))
    {
      sub_100022BC0();
      (*(v8 + 8))(v6, v1);
    }
  }

  else
  {
  }

  sub_10000EA08(v3 + v5[8]);
  v9 = v5[10];
  v10 = type metadata accessor for Date();
  if (!sub_1000A7C28(v10))
  {
    sub_100003B20();
    (*(v11 + 8))(v3 + v9, v6);
  }

  v12 = v5[11];
  v13 = type metadata accessor for TimeZone();
  if (!sub_1000A7C28(v13))
  {
    sub_100003B20();
    (*(v14 + 8))(v3 + v12, v6);
  }

  sub_100020F38();
  sub_100020F38();
  sub_100020F38();
  sub_100020F38();
  sub_100020F38();
  sub_100020F38();
  sub_100020F38();
  sub_100020F38();
  v15 = v5[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v16 + 8))(v3 + v15);
  sub_100020F38();

  v17 = *(v2 + 24);
  sub_10022C350(&qword_100CA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v18 + 8))(v3 + v17);
  }

  else
  {
  }

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001E7B84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CB83F8);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001E7C18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB83F8);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001E7CA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004237C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001E7CFC(uint64_t a1, uint64_t a2, int *a3)
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
    sub_10022C350(&qword_100CA6BC0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = type metadata accessor for Locale();
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_1001E7E20(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    sub_10022C350(&qword_100CA6BC0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for Locale();
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001E7F4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for LocationComponentContainerViewModel();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE0);
      sub_100003928();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (v3 == 254)
        {
          sub_1000085D0();
          v17 = *(v16 + 8);
          if (v17 > 1)
          {
            return (v17 ^ 0xFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        sub_10022C350(&qword_100CA3BD8);
        sub_100003928();
        if (*(v19 + 84) == v3)
        {
          v8 = v18;
          v12 = a3[12];
        }

        else
        {
          v8 = sub_10022C350(&qword_100CB76D0);
          v12 = a3[14];
        }
      }
    }

    v9 = v4 + v12;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001E80EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for LocationComponentContainerViewModel();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 254)
        {
          sub_1000085D0();
          *(v17 + 8) = -v4;
          return;
        }

        sub_10022C350(&qword_100CA3BD8);
        sub_100003928();
        if (*(v19 + 84) == a3)
        {
          v10 = v18;
          v14 = a4[12];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CB76D0);
          v14 = a4[14];
        }
      }
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001E828C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003B38();
  type metadata accessor for LocationComponentHeaderViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (v3 == 254)
      {
        sub_1000085D0();
        v16 = *(v15 + 32);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      type metadata accessor for LayoutDirection();
      sub_100003928();
      if (*(v18 + 84) == v3)
      {
        v9 = v17;
        v13 = a3[8];
      }

      else
      {
        type metadata accessor for ContentSizeCategory();
        sub_100003928();
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v13 = a3[9];
        }

        else
        {
          v9 = type metadata accessor for DynamicTypeSize();
          v13 = a3[15];
        }
      }
    }

    v10 = v4 + v13;
  }

  return sub_100024D10(v10, v3, v9);
}

void sub_1001E8408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003B38();
  type metadata accessor for LocationComponentHeaderViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        sub_1000085D0();
        *(v16 + 32) = -v4;
        return;
      }

      type metadata accessor for LayoutDirection();
      sub_100003928();
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v15 = a4[8];
      }

      else
      {
        type metadata accessor for ContentSizeCategory();
        sub_100003928();
        if (*(v20 + 84) == a3)
        {
          v11 = v19;
          v15 = a4[9];
        }

        else
        {
          v11 = type metadata accessor for DynamicTypeSize();
          v15 = a4[15];
        }
      }
    }

    v12 = v5 + v15;
  }

  sub_10001B350(v12, v4, v4, v11);
}

uint64_t sub_1001E85B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for DetailComponentViewModel();
    sub_100003810(v9);
    if (*(v10 + 84) == a2)
    {
      v11 = *(a3 + 20);
      v12 = type metadata accessor for NewsArticleComponentViewModel(0);
      v13 = a1 + v11;
    }

    else
    {
      v12 = sub_10022C350(&qword_100CB8990);
      v13 = a1 + *(a3 + 24);
    }

    return sub_100024D10(v13, a2, v12);
  }
}

uint64_t sub_1001E869C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for DetailComponentViewModel();
    sub_100003810(v8);
    if (*(v9 + 84) == a3)
    {
      v10 = *(a4 + 20);
      v11 = type metadata accessor for NewsArticleComponentViewModel(0);
      v12 = v5 + v10;
    }

    else
    {
      v11 = sub_10022C350(&qword_100CB8990);
      v12 = v5 + *(a4 + 24);
    }

    return sub_10001B350(v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1001E8778()
{

  sub_100006F14(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1001E87BC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6CB0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CB8A78);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for AirQualityDetailViewModel.Model(0);
    v12 = a3[8];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[7] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1001E88E4(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    sub_10022C350(&qword_100CB8A78);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return;
      }

      v10 = type metadata accessor for AirQualityDetailViewModel.Model(0);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001E8A4C()
{
  v2 = v0;
  v3 = type metadata accessor for AirQualityDetailInnerView();
  sub_100003DDC();
  v5 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v8 + 8))(v5 + v7);
  }

  v9 = *(v3 + 20);
  sub_10022C350(&qword_100CB8A78);
  sub_100003D98();
  (*(v10 + 8))(v5 + v9);
  sub_10003C47C();

  v11 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  v12 = v11[14];
  v13 = type metadata accessor for AirPollutant();
  if (!sub_1000137E8(v13))
  {
    sub_100003B20();
    (*(v14 + 8))(v9 + v12, v5);
  }

  if (*(v9 + v11[15] + 8))
  {
  }

  v15 = v9 + v11[18];

  v16 = type metadata accessor for ConditionDetailMapViewModel();
  v17 = v16[5];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v18 + 8))(v15 + v17);
  v19 = v15 + v16[6];
  v20 = type metadata accessor for WeatherData(0);
  if (!sub_100003EB0(v20))
  {

    v21 = v1[5];
    v22 = type metadata accessor for Locale();
    if (!sub_10000CAFC(v19 + v21))
    {
      sub_100003B20();
      (*(v23 + 8))(v19 + v21, v22);
    }

    v24 = v1[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v25 + 8))(v19 + v24);
    v26 = v19 + v1[7];
    v27 = sub_10022C350(&qword_100CAC710);
    if (!sub_1000178D0(v27))
    {
      v28 = type metadata accessor for Date();
      sub_1000037E8();
      v56 = *(v29 + 8);
      v56(v26, v28);
      v30 = *(v2 + 48);
      v31 = type metadata accessor for WeatherDataRelevancy();
      if (!sub_100024D10(v26 + v30, 1, v31))
      {
        v56(v26 + v30, v28);
      }
    }

    v32 = v19 + v1[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    v33 = swift_getEnumCaseMultiPayload();
    if (v33 == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v34 + 8))(v32);
    }

    else if (!v33)
    {
    }

    v35 = v19 + v1[9];
    type metadata accessor for WeatherDataOverrides();
    if (!sub_10000CAFC(v35))
    {
      v36 = type metadata accessor for Date();
      if (!sub_100003EB0(v36))
      {
        sub_100003B20();
        (*(v37 + 8))(v35, v1);
      }

      if (!sub_10001974C())
      {
        sub_100003B20();
        v38 = sub_1000749D4();
        v39(v38);
      }
    }
  }

  v40 = v16[8];
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003D98();
  (*(v41 + 8))(v15 + v40);
  v42 = v9 + v11[19];
  v43 = type metadata accessor for DetailComponentContainerViewModel();
  if (!sub_1000041EC(v43))
  {
    if (*(v42 + 8))
    {
    }

    v44 = v42 + *(v40 + 20);
    type metadata accessor for NewsArticleComponentViewModel(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v45 = *(type metadata accessor for NewsArticleComponentContentViewModel(0) + 20);
      v46 = type metadata accessor for URL();
      if (!sub_10004E5A0(v46))
      {
        sub_100003B20();
        (*(v47 + 8))(v44 + v45, v1);
      }

      sub_100016960();
      v49 = *(v48 + 8);
      v49(v44 + v50, v1);
      if (!sub_10001974C())
      {
        v51 = sub_1000749D4();
        (v49)(v51);
      }
    }

    v52 = *(v40 + 24);
    v53 = type metadata accessor for DetailComponentAction();
    if (!sub_100024D10(v42 + v52, 1, v53))
    {
      type metadata accessor for URL();
      sub_100003D98();
      (*(v54 + 8))(v42 + v52);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001E9090()
{
  v1 = v0;
  v2 = type metadata accessor for AirQualityDetailInnerView();
  sub_100003DDC();
  v4 = *(v3 + 80);
  v63 = *(v5 + 64);
  v65 = type metadata accessor for ScrollViewProxy();
  sub_1000037C4();
  v7 = v6;
  v62 = *(v6 + 80);
  v64 = (v4 + 16) & ~v4;
  v8 = v0 + v64;
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v11 + 8))(v8 + v10);
  }

  v12 = v2[5];
  sub_10022C350(&qword_100CB8A78);
  sub_100003D98();
  (*(v13 + 8))(v8 + v12);
  sub_100006F14(v8 + v2[7]);
  v14 = v8 + v2[8];

  v15 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  v16 = v15[14];
  v17 = type metadata accessor for AirPollutant();
  if (!sub_100024D10(v14 + v16, 1, v17))
  {
    sub_100003B20();
    (*(v18 + 8))(v14 + v16, v17);
  }

  if (*(v14 + v15[15] + 8))
  {
  }

  v19 = v14 + v15[18];

  v20 = type metadata accessor for ConditionDetailMapViewModel();
  v21 = v20[5];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v22 + 8))(v19 + v21);
  v23 = v19 + v20[6];
  v24 = type metadata accessor for WeatherData(0);
  if (!sub_10000CAFC(v23))
  {
    v61 = v1;

    v25 = v24[5];
    v26 = type metadata accessor for Locale();
    if (!sub_100024D10(v23 + v25, 1, v26))
    {
      sub_100003B20();
      (*(v27 + 8))(v23 + v25, v26);
    }

    v28 = v24[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v29 + 8))(v23 + v28);
    v30 = v23 + v24[7];
    v31 = sub_10022C350(&qword_100CAC710);
    if (!sub_100024D10(v30, 1, v31))
    {
      v32 = type metadata accessor for Date();
      sub_1000037E8();
      v60 = *(v33 + 8);
      v60(v30, v32);
      v34 = *(v31 + 48);
      v35 = type metadata accessor for WeatherDataRelevancy();
      if (!sub_100024D10(v30 + v34, 1, v35))
      {
        v60(v30 + v34, v32);
      }
    }

    v36 = v23 + v24[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    v37 = swift_getEnumCaseMultiPayload();
    if (v37 == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v38 + 8))(v36);
      v1 = v61;
    }

    else
    {
      v1 = v61;
      if (!v37)
      {
      }
    }

    v39 = v23 + v24[9];
    v40 = type metadata accessor for WeatherDataOverrides();
    if (!sub_100024D10(v39, 1, v40))
    {
      v41 = type metadata accessor for Date();
      if (!sub_10000CAFC(v39))
      {
        sub_100003B20();
        (*(v42 + 8))(v39, v41);
      }

      v43 = *(v40 + 20);
      if (!sub_10000CAFC(v39 + v43))
      {
        sub_100003B20();
        (*(v44 + 8))(v39 + v43, v41);
      }
    }
  }

  v45 = v20[8];
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003D98();
  (*(v46 + 8))(v19 + v45);
  v47 = v14 + v15[19];
  v48 = type metadata accessor for DetailComponentContainerViewModel();
  if (!sub_100024D10(v47, 1, v48))
  {
    if (*(v47 + 8))
    {
    }

    v49 = v47 + *(v48 + 20);
    type metadata accessor for NewsArticleComponentViewModel(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v50 = type metadata accessor for NewsArticleComponentContentViewModel(0);
      v51 = v50[5];
      v52 = type metadata accessor for URL();
      if (!sub_10000CAFC(v49 + v51))
      {
        sub_100003B20();
        (*(v53 + 8))(v49 + v51, v52);
      }

      v54 = *(*(v52 - 8) + 8);
      v54(v49 + v50[7], v52);
      v55 = v50[8];
      if (!sub_10000CAFC(v49 + v55))
      {
        v54(v49 + v55, v52);
      }
    }

    v56 = *(v48 + 24);
    v57 = type metadata accessor for DetailComponentAction();
    if (!sub_100024D10(v47 + v56, 1, v57))
    {
      type metadata accessor for URL();
      sub_100003D98();
      (*(v58 + 8))(v47 + v56);
    }
  }

  (*(v7 + 8))(v1 + ((v64 + v63 + v62) & ~v62), v65);

  return swift_deallocObject();
}

uint64_t sub_1001E97D0()
{
  v1 = v0;
  v2 = type metadata accessor for ScrollViewProxy();
  sub_1000037C4();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for AirQualityDetailInnerView();
  sub_100003DDC();
  v10 = ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));
  (*(v4 + 8))(v1 + v5, v2);
  v11 = v10 + v1;
  sub_10022C350(&qword_100CA54B0);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();

  if (v5 == 1)
  {

    v12 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v13 + 8))(&v11[v12]);
  }

  v14 = *(v8 + 20);
  sub_10022C350(&qword_100CB8A78);
  sub_100003D98();
  (*(v15 + 8))(&v11[v14]);
  sub_10003C47C();

  v16 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  v17 = v16[14];
  v18 = type metadata accessor for AirPollutant();
  if (!sub_1000137E8(v18))
  {
    sub_100003B20();
    (*(v19 + 8))(v14 + v17, v10 + v1);
  }

  if (*(v14 + v16[15] + 8))
  {
  }

  v20 = v14 + v16[18];

  v21 = type metadata accessor for ConditionDetailMapViewModel();
  v22 = v21[5];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v23 + 8))(v20 + v22);
  v24 = v20 + v21[6];
  v25 = type metadata accessor for WeatherData(0);
  if (!sub_100003EB0(v25))
  {

    v26 = v10[5];
    v27 = type metadata accessor for Locale();
    if (!sub_10000CAFC(v24 + v26))
    {
      sub_100003B20();
      (*(v28 + 8))(v24 + v26, v27);
    }

    v29 = v10[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v30 + 8))(v24 + v29);
    v31 = v24 + v10[7];
    v32 = sub_10022C350(&qword_100CAC710);
    if (!sub_1000178D0(v32))
    {
      v33 = type metadata accessor for Date();
      sub_1000037E8();
      v61 = *(v34 + 8);
      v61(v31, v33);
      v35 = *(v1 + 48);
      v36 = type metadata accessor for WeatherDataRelevancy();
      if (!sub_100024D10(v31 + v35, 1, v36))
      {
        v61(v31 + v35, v33);
      }
    }

    v37 = v24 + v10[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v39 + 8))(v37);
    }

    else if (!EnumCaseMultiPayload)
    {
    }

    v40 = v24 + v10[9];
    type metadata accessor for WeatherDataOverrides();
    if (!sub_10000CAFC(v40))
    {
      v41 = type metadata accessor for Date();
      if (!sub_100003EB0(v41))
      {
        sub_100003B20();
        (*(v42 + 8))(v40, v10);
      }

      if (!sub_10001974C())
      {
        sub_100003B20();
        v43 = sub_1000749D4();
        v44(v43);
      }
    }
  }

  v45 = v21[8];
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003D98();
  (*(v46 + 8))(v20 + v45);
  v47 = v14 + v16[19];
  v48 = type metadata accessor for DetailComponentContainerViewModel();
  if (!sub_1000041EC(v48))
  {
    if (*(v47 + 8))
    {
    }

    v49 = v47 + *(v45 + 20);
    type metadata accessor for NewsArticleComponentViewModel(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v50 = *(type metadata accessor for NewsArticleComponentContentViewModel(0) + 20);
      v51 = type metadata accessor for URL();
      if (!sub_10004E5A0(v51))
      {
        sub_100003B20();
        (*(v52 + 8))(v49 + v50, v10);
      }

      sub_100016960();
      v54 = *(v53 + 8);
      v54(v49 + v55, v10);
      if (!sub_10001974C())
      {
        v56 = sub_1000749D4();
        (v54)(v56);
      }
    }

    v57 = *(v45 + 24);
    v58 = type metadata accessor for DetailComponentAction();
    if (!sub_100024D10(v47 + v57, 1, v58))
    {
      type metadata accessor for URL();
      sub_100003D98();
      (*(v59 + 8))(v47 + v57);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001E9E80()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB8B70);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001E9EE0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.preferredMapSize.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1001E9F20@<X0>(_BYTE *a1@<X8>)
{
  result = DynamicTypeSize.isAccessibilitySize.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001E9FDC()
{
  sub_10022E824(&qword_100CB8CD8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB8CE0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_1001EA0FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributedString();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001EA184(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001EA22C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA65C8);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CA65D8);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1001EA374(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CA65C8);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA65D8);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EA4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA3BE0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for Text.Measurements();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1001EA594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA3BE0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for Text.Measurements();
    v10 = a1 + *(a4 + 28);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001EA674()
{
  v1 = type metadata accessor for ComparisonBarChartView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v5 + 16))
  {
  }

  v6 = *(v1 + 28);
  type metadata accessor for Text.Measurements();
  sub_1000037E8();
  (*(v7 + 8))(v3 + v6);

  return swift_deallocObject();
}

uint64_t sub_1001EA88C(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for DetailCondition();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Location();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_10022C350(&qword_100CB0BA8);
        sub_100003928();
        if (*(v16 + 84) != a2)
        {
          v18 = *(a1 + a3[9]);
          if (v18 >= 2)
          {
            return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = a3[8];
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001EAA20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for DetailCondition();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Location();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_10022C350(&qword_100CB0BA8);
        sub_100003928();
        if (*(v18 + 84) != a3)
        {
          *(a1 + a4[9]) = a2 + 1;
          return;
        }

        v10 = v17;
        v14 = a4[8];
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EABE0()
{

  return swift_deallocObject();
}

__n128 sub_1001EAC54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001EAC98()
{
  v4 = *(v0 + 24);
  v1 = (type metadata accessor for ThrottleFrequentUpdateView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));

  sub_10003BCD8();
  (*(*(v4 - 8) + 8))(v2 + v1[16]);
  return swift_deallocObject();
}

uint64_t sub_1001EAE0C()
{
  type metadata accessor for ThrottleFrequentUpdateView.ContentView();
  sub_10001EC8C();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001EAEA4()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001EAEDC()
{

  return swift_deallocObject();
}

uint64_t sub_1001EAF14()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1001EAF64()
{

  return swift_deallocObject();
}

uint64_t sub_1001EAF9C()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001EB024(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001EB0F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1001EB48C()
{
  v3 = *(v0 + 16);
  v1 = *(type metadata accessor for CachableView() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001EB5F0()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001EB628()
{

  return swift_deallocObject();
}

uint64_t sub_1001EB710()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001EB748()
{

  return swift_deallocObject();
}

uint64_t sub_1001EB790(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001EB840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1001EB914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQuality();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001EB95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQuality();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001EB9D0()
{
  sub_10022E824(&qword_100CBA9D8);
  type metadata accessor for ZoomNavigationTransition();
  sub_100006F64(&qword_100CBA9E0, &qword_100CBA9D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001EBA80(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_10022C350(&qword_100CA3898);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[18];
    }

    else
    {
      type metadata accessor for WeatherMapTrackingState(0);
      sub_100003928();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[19];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CA5010);
        v14 = a3[20];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1001EBBE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for WeatherMapOverlayKind();
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

    sub_10022C350(&qword_100CA3898);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[18];
    }

    else
    {
      type metadata accessor for WeatherMapTrackingState(0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[19];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CA5010);
        v14 = a4[20];
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EBD44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10022C350(&qword_100CAD870);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return sub_100024D10(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
    v8 = a3[8];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7] + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1001EBE24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10022C350(&qword_100CAD870);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 24) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
    v10 = a4[8];
  }

  return sub_10001B350(a1 + v10, a2, a2, v9);
}

uint64_t sub_1001EBF04()
{
  v1 = type metadata accessor for TemperatureAveragesHeroChartView();
  sub_100003DDC();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v37 = *(v5 + 64);
  v38 = type metadata accessor for ChartProxy();
  v6 = *(v38 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v4;
  sub_1000E4DF8(*(v0 + v4), *(v0 + v4 + 8));
  v9 = v1[5];
  sub_10022C350(&qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v10 + 8))(v8 + v9);
  }

  else
  {
  }

  sub_100006F14(v8 + v1[7]);
  v11 = v8 + v1[8];

  v12 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v13 = v12[9];
  type metadata accessor for TemperatureScaleConfiguration();
  sub_100003D98();
  (*(v14 + 8))(v11 + v13);

  sub_100452DEC(*(v11 + v12[12]), *(v11 + v12[12] + 8), *(v11 + v12[12] + 16), *(v11 + v12[12] + 24));
  v15 = v12[13];
  v16 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  if (!sub_100024D10(v11 + v15, 1, v16))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v17 + 8))(v11 + v15);
  }

  v18 = v11 + v12[14];
  v19 = type metadata accessor for PeakUpperMarkModel(0);
  if (!sub_100024D10(v18, 1, v19))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v20 + 8))(v18);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  v21 = v11 + v12[15];
  type metadata accessor for DetailHeroChartLollipopModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
    v23 = *(active + 20);
    type metadata accessor for Date();
    sub_100003D98();
    (*(v24 + 8))(v21 + v23);
    v21 += *(active + 24);
  }

  type metadata accessor for LollipopDetailViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v26 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
    type metadata accessor for AttributedString();
    sub_100003D98();
    v28 = v21 + v26;
    v4 = (v3 + 16) & ~v3;
    (*(v27 + 8))(v28);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  else if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v29 = (v4 + v37 + v7) & ~v7;
  v30 = v12[16];
  v31 = type metadata accessor for Date();
  sub_1000037E8();
  v33 = *(v32 + 8);
  v33(v11 + v30, v31);
  v33(v11 + v12[17], v31);
  v34 = v12[18];
  type metadata accessor for DetailChartGradientModel();
  sub_100003D98();
  (*(v35 + 8))(v11 + v34);
  (*(v6 + 8))(v0 + v29, v38);

  return swift_deallocObject();
}

uint64_t sub_1001EC408()
{
  sub_100003A00();
  sub_10022C350(&qword_100CBADD0);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001EC4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000038D8();
  v7 = type metadata accessor for AveragesDetailInput.Content(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(v3 + *(a3 + 20));
      if (v10 >= 2)
      {
        return v10 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for Location();
    v9 = v3 + *(a3 + 24);
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_1001EC5B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000038D8();
  result = type metadata accessor for AveragesDetailInput.Content(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v10 = type metadata accessor for Location();
    v11 = v4 + *(a4 + 24);
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EC6B0()
{
  v1 = type metadata accessor for ScrollViewProxy();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_100006F14(v0 + 40);
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1001EC770()
{
  type metadata accessor for ScrollViewProxy();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001EC7F0()
{
  type metadata accessor for ScrollViewProxy();
  sub_1000037E8();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  sub_100006F14(v0 + v3 + 24);

  return swift_deallocObject();
}

uint64_t sub_1001EC894()
{
  v1 = *(type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);

  sub_100006F14(v0 + 40);
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1001EC9A4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
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
      v10 = *(a1 + a3[5]);
      if (v10 >= 2)
      {
        return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_10022C350(&qword_100CAD870);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CB76D0);
      v14 = a3[7];
    }

    v9 = a1 + v14;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001ECAD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
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
      *(a1 + a4[5]) = a2 + 1;
      return;
    }

    sub_10022C350(&qword_100CAD870);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CB76D0);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001ECC34(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CBB230);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1001ECD48@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001ECD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 64));
  }

  v7 = sub_10022C350(&qword_100CA3BD8);
  v8 = a1 + *(a3 + 32);

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001ECE00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA3BD8);
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001ECE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CB3B80);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 24)));
  }

  return sub_100024D10(a1, a2, v6);
}

uint64_t sub_1001ECF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CB3B80);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001ED058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  v7 = type metadata accessor for PrecipitationAmount();
  v8 = a1 + *(a3 + 20);

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001ED0D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PrecipitationAmount();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001ED158(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6CB0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_1000039D8(*(a1 + a3[5] + 8));
    }

    type metadata accessor for PrecipitationAmount();
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[6];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CBB640);
      v13 = a3[8];
    }

    v9 = a1 + v13;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001ED274(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return;
    }

    type metadata accessor for PrecipitationAmount();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CBB640);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001ED3E0()
{
  sub_10022E824(&qword_100CBB710);
  sub_10022E824(&qword_100CA5528);
  sub_10022E824(&qword_100CBB708);
  sub_10022E824(&qword_100CBB700);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100006F64(v0, &qword_100CBB700);
  sub_100005DB4();
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  sub_100005DE4();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v1, &qword_100CA5528);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001ED554(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CA53F8);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_10022C350(qword_100CA5418);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_10022C350(&qword_100CABD18);
    sub_100003928();
    if (*(v18 + 84) == a2)
    {
      v8 = v17;
      v12 = a3[14];
    }

    else
    {
      sub_10022C350(&qword_100CB2AC8);
      sub_100003928();
      if (*(v20 + 84) == a2)
      {
        v8 = v19;
        v12 = a3[15];
      }

      else
      {
        sub_10022C350(&qword_100CBB750);
        sub_100003928();
        if (*(v22 + 84) == a2)
        {
          v8 = v21;
          v12 = a3[16];
        }

        else
        {
          sub_10022C350(&qword_100CAD870);
          sub_100003928();
          if (*(v24 + 84) == a2)
          {
            v8 = v23;
            v12 = a3[20];
          }

          else
          {
            v8 = sub_10022C350(&qword_100CBB758);
            v12 = a3[22];
          }
        }
      }
    }

    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1001ED7F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA53F8);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(qword_100CA5418);
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
          *(a1 + a4[11]) = (a2 - 1);
          return;
        }

        sub_10022C350(&qword_100CABD18);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[14];
        }

        else
        {
          sub_10022C350(&qword_100CB2AC8);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[15];
          }

          else
          {
            sub_10022C350(&qword_100CBB750);
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[16];
            }

            else
            {
              sub_10022C350(&qword_100CAD870);
              sub_100003928();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[20];
              }

              else
              {
                v10 = sub_10022C350(&qword_100CBB758);
                v14 = a4[22];
              }
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EDAC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DetailHeroChartLollipopModel(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BF0);
      v10 = *(a3 + 24);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001EDBA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DetailHeroChartLollipopModel(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BF0);
      v10 = *(a4 + 24);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001EDC74()
{
  sub_100003A00();
  sub_10022C350(&qword_100CBBA28);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001EDCD4(uint64_t a1)
{
  sub_10022C350(&qword_100CBBA28);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001EDEF4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10004E5F0();
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
      return sub_1000497EC();
    }

    sub_10022C350(&qword_100CA3BE0);
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = a3[8];
    }

    else
    {
      type metadata accessor for Text.Measurements();
      sub_100003928();
      if (*(v15 + 84) == v3)
      {
        v8 = v14;
        v13 = a3[11];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CBC190);
        v13 = a3[12];
      }
    }

    v9 = v4 + v13;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001EE038(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10004E5F0();
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
      *(v5 + a4[5]) = (v4 - 1);
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
      type metadata accessor for Text.Measurements();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[11];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CBC190);
        v14 = a4[12];
      }
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001EE18C()
{
  v1 = type metadata accessor for DailyComponentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = type metadata accessor for DailyForecastComponentViewModel(0);
  v4 = v3[5];
  v5 = sub_10022C350(&qword_100CA53F8);
  sub_1000037E8();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v7(v2 + v3[6], v5);
  v7(v2 + v3[7], v5);

  swift_unknownObjectRelease();

  v8 = v1[8];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  sub_1000E4DF8(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  sub_1000E4DF8(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  v10 = v1[11];
  type metadata accessor for Text.Measurements();
  sub_1000037E8();
  (*(v11 + 8))(v2 + v10);
  v12 = v2 + v1[12];
  v13 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (!sub_100024D10(v12, 1, v13))
  {
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v14 + 8))(v12);
    sub_100003DAC();
    sub_100003DAC();
    v15 = v13[7];
    type metadata accessor for TimeZone();
    sub_1000037E8();
    (*(v16 + 8))(v12 + v15);
    v7(v12 + v13[8], v5);
    v7(v12 + v13[9], v5);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
    v17 = v13[15];
    v18 = type metadata accessor for Precipitation();
    if (!sub_100024D10(v12 + v17, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v12 + v17, v18);
    }

    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  sub_10022C350(&qword_100CBC190);

  return swift_deallocObject();
}

uint64_t sub_1001EE590()
{

  return swift_deallocObject();
}

uint64_t sub_1001EE5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004E5F0();
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
      return sub_1000497EC();
    }

    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = *(a3 + 28);
    }

    else
    {
      v8 = sub_10022C350(&qword_100CABD18);
      v13 = *(a3 + 60);
    }

    v9 = v4 + v13;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001EE6C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10004E5F0();
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
      *(v5 + a4[5]) = (v4 - 1);
      return;
    }

    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CABD18);
      v14 = a4[15];
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001EE7CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CBC548);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001EE860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CBC548);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001EE970()
{
  v2 = type metadata accessor for OpenL2Descriptor(0);
  sub_100003DDC();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = v0 + v4;
  v6 = *(v2 + 24);
  v7 = type metadata accessor for Location();
  if (!sub_10000CABC(v7))
  {
    (*(*(v1 - 8) + 8))(v5 + v6, v1);
  }

  v8 = *(v2 + 36);
  v9 = type metadata accessor for Date();
  if (!sub_10000CABC(v9))
  {
    (*(*(v1 - 8) + 8))(v5 + v8, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1001EEAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActualListInput(0);
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

uint64_t sub_1001EEB08(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ActualListInput(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001EEB64(uint64_t *a1, uint64_t a2, int *a3)
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
    sub_10022C350(&unk_100CE49F0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CB0250);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[14];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[21];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA5010);
          v11 = a3[34];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001EECD0(uint64_t a1, uint64_t a2, int *a3)
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
          v12 = a3[12];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001EEE54(uint64_t a1, uint64_t a2, int a3, int *a4)
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
          v14 = a4[12];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EF068()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for SunriseSunsetDetailInput.Input(v2);
  v4 = sub_100024D10(v1, v0, v3);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EF0A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SunriseSunsetDetailInput.Input(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001EF104(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for WeatherData(0);
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for NewsDataModel();
      sub_100003928();
      if (*(v14 + 84) != v3)
      {
        v16 = *(v4 + a3[7]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = v4 + v12;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001EF238(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
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
      type metadata accessor for NewsDataModel();
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(v5 + a4[7]) = v4 + 1;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001EF358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
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
    v8 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001EF3D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = -a2;
  }

  else
  {
    v7 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001EF480()
{

  return swift_deallocObject();
}

uint64_t sub_1001EF4B8()
{
  v1 = type metadata accessor for IndexPath();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1001EF574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Date();

  return sub_100024D10(a1 + v5, a2, v6);
}

uint64_t sub_1001EF5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Date();

  return sub_10001B350(a1 + v6, a2, a2, v7);
}

uint64_t sub_1001EF620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LollipopMarkModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    v7 = type metadata accessor for LollipopDetailViewModel(0);
    v8 = *(a3 + 24);
  }

  return sub_100024D10(a1 + v8, a2, v7);
}

uint64_t sub_1001EF6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LollipopMarkModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = type metadata accessor for LollipopDetailViewModel(0);
    v10 = *(a4 + 24);
  }

  return sub_10001B350(a1 + v10, a2, a2, v9);
}

uint64_t sub_1001EF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CADBA0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = *(a1 + *(a3 + 24));
  }

  v15 = v14 - 2;
  if (v13 >= 2)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_1001EF8B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CADBA0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_10001B350(v11, a2, a2, v10);
}