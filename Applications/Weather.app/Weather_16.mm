uint64_t type metadata accessor for NextHourPrecipitationComponentView()
{
  result = qword_100CB2B28;
  if (!qword_100CB2B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BAF10()
{
  sub_10009BEE0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1001BB1C8(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1001BB1C8(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1001BB39C();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1001BB1C8(319, &qword_100CADCC8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            v1 = type metadata accessor for Text.Measurements();
            if (v11 <= 0x3F)
            {
              v1 = type metadata accessor for MoonComponentViewModel();
              if (v12 <= 0x3F)
              {
                sub_1001BB1C8(319, &unk_100CB6E90, type metadata accessor for CGRect, &type metadata accessor for State);
                v1 = v13;
                if (v14 <= 0x3F)
                {
                  sub_10009BEE0(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                  v1 = v15;
                  if (v16 <= 0x3F)
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

  return v1;
}

uint64_t type metadata accessor for NotificationsOptInComponentView()
{
  result = qword_100CC8140;
  if (!qword_100CC8140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BB1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1001BB22C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1001BB280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1001BB2E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1001BB338(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1001BB39C()
{
  if (!qword_100CB6E88)
  {
    sub_10022E824(&qword_100CA60E8);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB6E88);
    }
  }
}

uint64_t type metadata accessor for UVIndexComponentView()
{
  result = qword_100CC7BB0;
  if (!qword_100CC7BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BB46C()
{
  sub_1001BB338(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast);
  if (v0 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CE0E20);
    if (v1 <= 0x3F)
    {
      sub_10009BE44(319, &unk_100CACE88);
      if (v2 <= 0x3F)
      {
        sub_1001BB338(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory);
        if (v3 <= 0x3F)
        {
          type metadata accessor for NewsArticleComponentViewModel(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001BB5AC()
{
  type metadata accessor for NextHourPrecipitationComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CACE80);
    if (v1 <= 0x3F)
    {
      sub_10009BE44(319, &qword_100CA3C60);
      if (v2 <= 0x3F)
      {
        sub_1001BB6A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001BB6A0()
{
  if (!qword_100CB2B38)
  {
    sub_1001BB6FC();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB2B38);
    }
  }
}

unint64_t sub_1001BB6FC()
{
  result = qword_100CA5908;
  if (!qword_100CA5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5908);
  }

  return result;
}

unint64_t sub_1001BB750()
{
  result = qword_100CC1438;
  if (!qword_100CC1438)
  {
    sub_10022E824(&qword_100CC1440);
    sub_1001BB88C();
    sub_10023FBF4(&qword_100CC1458, &qword_100CC1460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1438);
  }

  return result;
}

unint64_t sub_1001BB808()
{
  result = type metadata accessor for NotificationsOptInComponentViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_100137A94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001BB88C()
{
  result = qword_100CC1448;
  if (!qword_100CC1448)
  {
    sub_10022E824(&qword_100CC1450);
    sub_10023FBF4(&qword_100CC1458, &unk_100CC1460);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1448);
  }

  return result;
}

uint64_t sub_1001BB974(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001BB9EC()
{
  result = qword_100CC1490;
  if (!qword_100CC1490)
  {
    sub_10022E824(&qword_100CC1498);
    sub_1001BBAA4();
    sub_10023FBF4(&qword_100CC14B0, &qword_100CC14B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1490);
  }

  return result;
}

unint64_t sub_1001BBAA4()
{
  result = qword_100CC14A0;
  if (!qword_100CC14A0)
  {
    sub_10022E824(&qword_100CC14A8);
    sub_10023FBF4(&qword_100CC14B0, &unk_100CC14B8);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC14A0);
  }

  return result;
}

uint64_t sub_1001BBB8C()
{
  sub_1001BB22C(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000077F0();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1001BB22C(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1001BBC88()
{
  type metadata accessor for UVIndexComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_10009BE44(319, &unk_100CACE88);
    if (v1 <= 0x3F)
    {
      sub_10009BE44(319, &qword_100CACE80);
      if (v2 <= 0x3F)
      {
        sub_10009BE44(319, &qword_100CE0E20);
        if (v3 <= 0x3F)
        {
          sub_1001BA8DC();
          if (v4 <= 0x3F)
          {
            sub_1001BA110();
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

void sub_1001BBD9C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WindComponentViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1001BBE20()
{
  result = qword_100CC14F8;
  if (!qword_100CC14F8)
  {
    sub_10022E824(&qword_100CC1500);
    sub_1001BBED8();
    sub_10023FBF4(&qword_100CC1518, &qword_100CC1520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC14F8);
  }

  return result;
}

unint64_t sub_1001BBED8()
{
  result = qword_100CC1508;
  if (!qword_100CC1508)
  {
    sub_10022E824(&qword_100CC1510);
    sub_10023FBF4(&qword_100CC1518, &unk_100CC1520);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1508);
  }

  return result;
}

unint64_t sub_1001BBFC0()
{
  result = qword_100CC1380;
  if (!qword_100CC1380)
  {
    sub_10022E824(&qword_100CC1388);
    sub_1001BC078();
    sub_10023FBF4(&qword_100CC13A0, &qword_100CC13A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1380);
  }

  return result;
}

unint64_t sub_1001BC078()
{
  result = qword_100CC1390;
  if (!qword_100CC1390)
  {
    sub_10022E824(&qword_100CC1398);
    sub_10023FBF4(&qword_100CC13A0, &unk_100CC13A8);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1390);
  }

  return result;
}

unint64_t sub_1001BC160()
{
  result = qword_100CC13D8;
  if (!qword_100CC13D8)
  {
    sub_10022E824(&qword_100CC13E0);
    sub_1001BC218();
    sub_10023FBF4(&qword_100CC13F8, &qword_100CC1400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC13D8);
  }

  return result;
}

unint64_t sub_1001BC218()
{
  result = qword_100CC13E8;
  if (!qword_100CC13E8)
  {
    sub_10022E824(&qword_100CC13F0);
    sub_10023FBF4(&qword_100CC13F8, &unk_100CC1400);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC13E8);
  }

  return result;
}

unint64_t sub_1001BC300()
{
  result = qword_100CC1550;
  if (!qword_100CC1550)
  {
    sub_10022E824(&qword_100CC1558);
    sub_1001BC3B8();
    sub_10023FBF4(&qword_100CC1570, &qword_100CC1578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1550);
  }

  return result;
}

unint64_t sub_1001BC3B8()
{
  result = qword_100CC1560;
  if (!qword_100CC1560)
  {
    sub_10022E824(&qword_100CC1568);
    sub_10023FBF4(&qword_100CC1570, &unk_100CC1578);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1560);
  }

  return result;
}

unint64_t sub_1001BC4A0()
{
  result = qword_100CC15B0;
  if (!qword_100CC15B0)
  {
    sub_10022E824(&qword_100CC15B8);
    sub_1001BC558();
    sub_10023FBF4(&qword_100CC15D0, &qword_100CC15D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC15B0);
  }

  return result;
}

unint64_t sub_1001BC558()
{
  result = qword_100CC15C0;
  if (!qword_100CC15C0)
  {
    sub_10022E824(&qword_100CC15C8);
    sub_10023FBF4(&qword_100CC15D0, &unk_100CC15D8);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC15C0);
  }

  return result;
}

unint64_t sub_1001BC640()
{
  result = qword_100CC1608;
  if (!qword_100CC1608)
  {
    sub_10022E824(&qword_100CC1610);
    sub_1001BC6F8();
    sub_10023FBF4(&qword_100CC1628, &qword_100CC1630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1608);
  }

  return result;
}

unint64_t sub_1001BC6F8()
{
  result = qword_100CC1618;
  if (!qword_100CC1618)
  {
    sub_10022E824(&qword_100CC1620);
    sub_10023FBF4(&qword_100CC1628, &unk_100CC1630);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1618);
  }

  return result;
}

unint64_t sub_1001BC7E0()
{
  result = qword_100CC1678;
  if (!qword_100CC1678)
  {
    sub_10022E824(&qword_100CC1680);
    sub_1001BC898();
    sub_10023FBF4(&qword_100CC1698, &qword_100CC16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1678);
  }

  return result;
}

unint64_t sub_1001BC898()
{
  result = qword_100CC1688;
  if (!qword_100CC1688)
  {
    sub_10022E824(&qword_100CC1690);
    sub_10023FBF4(&qword_100CC1698, &unk_100CC16A0);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1688);
  }

  return result;
}

unint64_t sub_1001BC980()
{
  result = qword_100CC16D0;
  if (!qword_100CC16D0)
  {
    sub_10022E824(&qword_100CC16D8);
    sub_1001BCA38();
    sub_10023FBF4(&qword_100CC16F0, &qword_100CC16F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC16D0);
  }

  return result;
}

unint64_t sub_1001BCA38()
{
  result = qword_100CC16E0;
  if (!qword_100CC16E0)
  {
    sub_10022E824(&qword_100CC16E8);
    sub_10023FBF4(&qword_100CC16F0, &unk_100CC16F8);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC16E0);
  }

  return result;
}

unint64_t sub_1001BCB20()
{
  result = qword_100CC1730;
  if (!qword_100CC1730)
  {
    sub_10022E824(&qword_100CC1738);
    sub_1001BCBD8();
    sub_10023FBF4(&qword_100CC1750, &qword_100CC1758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1730);
  }

  return result;
}

unint64_t sub_1001BCBD8()
{
  result = qword_100CC1740;
  if (!qword_100CC1740)
  {
    sub_10022E824(&qword_100CC1748);
    sub_10023FBF4(&qword_100CC1750, &unk_100CC1758);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1740);
  }

  return result;
}

unint64_t sub_1001BCCC0()
{
  result = qword_100CC1788;
  if (!qword_100CC1788)
  {
    sub_10022E824(&qword_100CC1790);
    sub_1001BCD78();
    sub_10023FBF4(&qword_100CC17A8, &qword_100CC17B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1788);
  }

  return result;
}

unint64_t sub_1001BCD78()
{
  result = qword_100CC1798;
  if (!qword_100CC1798)
  {
    sub_10022E824(&qword_100CC17A0);
    sub_10023FBF4(&qword_100CC17A8, &unk_100CC17B0);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1798);
  }

  return result;
}

uint64_t sub_1001BCE60()
{
  v1 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CBB908);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;

  Image.init(systemName:)();
  static Image.TemplateRenderingMode.macSafeOriginal.getter();
  v11 = type metadata accessor for Image.TemplateRenderingMode();
  sub_10001B350(v10, 0, 1, v11);
  Image.renderingMode(_:)();

  sub_1000180EC(v10, &qword_100CBB908);
  v12 = Text.init(_:)();
  v14 = v13;
  v16 = v15;
  v17 = (v0 + *(type metadata accessor for HourlyForecastComponentView() + 20));
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      static Font.title3.getter();
      goto LABEL_8;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = v4;
    v19 = static Log.runtimeIssuesLog.getter();
    v31 = v3;
    v20 = v5;
    v21 = v19;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v18, 0);
    (*(v20 + 8))(v7, v30);
    v3 = v31;
    if (v34 != 1)
    {
      goto LABEL_3;
    }
  }

  if (sub_1001C82B4())
  {
    static Font.footnote.getter();
  }

  else
  {
    static Font.body.getter();
  }

LABEL_8:
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  sub_10010CD64(v12, v14, v16 & 1);

  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v27 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  sub_10010CD64(v22, v24, v26 & 1);

  (*(v32 + 8))(v3, v33);
  return v27;
}

double sub_1001BD204()
{
  v1 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v1 - 8);
  v3 = v29 - v2;
  v4 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for Text.Measurements.Context();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v0;
  v10 = sub_1001BCE60();
  v39 = v11;
  v40 = v10;
  v32 = v12;
  v31 = v13;
  v14 = sub_1001BD510(623915057, 0xE400000000000000);
  v35 = v15;
  v36 = v14;
  v33 = v16;
  v34 = v17;
  v29[1] = *(type metadata accessor for HourlyForecastComponentView() + 24);
  v18 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v6, 1, 1, v18);
  v19 = type metadata accessor for Text.Suffix();
  sub_10001B350(v3, 1, 1, v19);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v21 = v20;
  v22 = v38;
  v23 = *(v37 + 8);
  v23(v9, v38);
  sub_10001B350(v6, 1, 1, v18);
  sub_10001B350(v3, 1, 1, v19);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  LOBYTE(v6) = v33;
  v25 = v35;
  v24 = v36;
  Text.Measurements.size(of:in:context:)();
  v27 = v26;
  sub_10010CD64(v24, v25, v6 & 1);

  sub_10010CD64(v40, v39, v32 & 1);

  v23(v9, v22);
  return v21 + v27;
}

uint64_t sub_1001BD510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font.Leading();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  sub_10002D5A4();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v27[1] = v19;
  (*(v11 + 104))(v13, enum case for Font.TextStyle.caption(_:), v10);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v6);
  Font.leading(_:)();

  (*(v7 + 8))(v9, v6);
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v9) = v23;

  sub_10010CD64(v14, v16, v18 & 1);

  v24 = v28;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v25 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  sub_10010CD64(v20, v22, v9 & 1);

  (*(v29 + 8))(v24, v30);
  return v25;
}

uint64_t sub_1001BD868@<X0>(uint64_t a1@<X8>)
{
  v441 = a1;
  v390 = sub_10022C350(&qword_100CC0FE8);
  __chkstk_darwin(v390);
  v336 = &v262 - v1;
  v2 = type metadata accessor for WindComponentViewModel();
  v329 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v331 = &v262 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = v3;
  __chkstk_darwin(v4);
  v335 = &v262 - v5;
  v387 = sub_10022C350(&qword_100CC0FF0);
  __chkstk_darwin(v387);
  v388 = &v262 - v6;
  v421 = sub_10022C350(&qword_100CC0FF8);
  __chkstk_darwin(v421);
  v389 = &v262 - v7;
  v386 = sub_10022C350(&qword_100CC1000);
  __chkstk_darwin(v386);
  v334 = &v262 - v8;
  v385 = sub_10022C350(&qword_100CC1008);
  __chkstk_darwin(v385);
  v333 = &v262 - v9;
  v10 = type metadata accessor for UVIndexComponentViewModel();
  v323 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v325 = &v262 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = v11;
  __chkstk_darwin(v12);
  v332 = &v262 - v13;
  v417 = sub_10022C350(&qword_100CC1010);
  __chkstk_darwin(v417);
  v419 = &v262 - v14;
  v382 = sub_10022C350(&qword_100CC1018);
  __chkstk_darwin(v382);
  v383 = &v262 - v15;
  v418 = sub_10022C350(&qword_100CC1020);
  __chkstk_darwin(v418);
  v384 = &v262 - v16;
  v440 = sub_10022C350(&qword_100CC1028);
  __chkstk_darwin(v440);
  v420 = &v262 - v17;
  v379 = sub_10022C350(&qword_100CC1030);
  __chkstk_darwin(v379);
  v322 = &v262 - v18;
  v378 = sub_10022C350(&qword_100CC1038);
  __chkstk_darwin(v378);
  v327 = &v262 - v19;
  v328 = type metadata accessor for SunriseSunsetViewModel();
  v326 = *(v328 - 8);
  __chkstk_darwin(v328);
  v317 = &v262 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = v20;
  __chkstk_darwin(v21);
  v381 = &v262 - v22;
  v375 = sub_10022C350(&qword_100CC1040);
  __chkstk_darwin(v375);
  v376 = &v262 - v23;
  v416 = sub_10022C350(&qword_100CC1048);
  __chkstk_darwin(v416);
  v377 = &v262 - v24;
  v374 = sub_10022C350(&qword_100CC1050);
  __chkstk_darwin(v374);
  v321 = &v262 - v25;
  v26 = type metadata accessor for SevereAlertComponentViewModel();
  v309 = *(v26 - 8);
  __chkstk_darwin(v26 - 8);
  v312 = &v262 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = v27;
  __chkstk_darwin(v28);
  v320 = &v262 - v29;
  v372 = sub_10022C350(&qword_100CC1058);
  __chkstk_darwin(v372);
  v313 = &v262 - v30;
  v380 = sub_10022C350(&qword_100CC1060);
  v319 = *(v380 - 8);
  __chkstk_darwin(v380);
  v318 = &v262 - v31;
  v412 = sub_10022C350(&qword_100CC1068);
  __chkstk_darwin(v412);
  v414 = &v262 - v32;
  v369 = sub_10022C350(&qword_100CC1070);
  __chkstk_darwin(v369);
  v371 = &v262 - v33;
  v413 = sub_10022C350(&qword_100CC1078);
  __chkstk_darwin(v413);
  v373 = &v262 - v34;
  v431 = sub_10022C350(&qword_100CC1080);
  __chkstk_darwin(v431);
  v415 = &v262 - v35;
  v368 = sub_10022C350(&qword_100CC1088);
  __chkstk_darwin(v368);
  v315 = &v262 - v36;
  v367 = sub_10022C350(&qword_100CC1090);
  __chkstk_darwin(v367);
  v314 = &v262 - v37;
  v38 = type metadata accessor for PressureComponentViewModel();
  v301 = *(v38 - 8);
  __chkstk_darwin(v38 - 8);
  v303 = &v262 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = v39;
  __chkstk_darwin(v40);
  v311 = &v262 - v41;
  v363 = sub_10022C350(&qword_100CC1098);
  __chkstk_darwin(v363);
  v364 = &v262 - v42;
  v411 = sub_10022C350(&qword_100CC10A0);
  __chkstk_darwin(v411);
  v365 = &v262 - v43;
  v362 = sub_10022C350(&qword_100CC10A8);
  __chkstk_darwin(v362);
  v300 = &v262 - v44;
  v370 = sub_10022C350(&qword_100CC10B0);
  v308 = *(v370 - 8);
  __chkstk_darwin(v370);
  v307 = &v262 - v45;
  v393 = type metadata accessor for ColorRenderingMode();
  v392 = *(v393 - 8);
  __chkstk_darwin(v393);
  v391 = &v262 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = sub_10022C350(&qword_100CC10B8);
  __chkstk_darwin(v361);
  v299 = &v262 - v47;
  v366 = sub_10022C350(&qword_100CC10C0);
  v306 = *(v366 - 8);
  __chkstk_darwin(v366);
  v305 = &v262 - v48;
  v49 = type metadata accessor for NotificationsOptInComponentViewModel();
  v294 = *(v49 - 8);
  __chkstk_darwin(v49 - 8);
  v296 = &v262 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = v50;
  __chkstk_darwin(v51);
  v304 = &v262 - v52;
  v427 = sub_10022C350(&qword_100CC10C8);
  __chkstk_darwin(v427);
  v429 = &v262 - v53;
  v407 = sub_10022C350(&qword_100CC10D0);
  __chkstk_darwin(v407);
  v409 = &v262 - v54;
  v358 = sub_10022C350(&qword_100CC10D8);
  __chkstk_darwin(v358);
  v359 = &v262 - v55;
  v408 = sub_10022C350(&qword_100CC10E0);
  __chkstk_darwin(v408);
  v360 = &v262 - v56;
  v428 = sub_10022C350(&qword_100CC10E8);
  __chkstk_darwin(v428);
  v410 = &v262 - v57;
  v436 = sub_10022C350(&qword_100CC10F0);
  __chkstk_darwin(v436);
  v430 = &v262 - v58;
  v357 = sub_10022C350(&qword_100CC10F8);
  __chkstk_darwin(v357);
  v298 = &v262 - v59;
  HourPrecipitationComponentViewModel = type metadata accessor for NextHourPrecipitationComponentViewModel();
  v286 = *(HourPrecipitationComponentViewModel - 8);
  __chkstk_darwin(HourPrecipitationComponentViewModel - 8);
  v288 = &v262 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = v61;
  __chkstk_darwin(v62);
  v297 = &v262 - v63;
  v356 = sub_10022C350(&qword_100CC1100);
  __chkstk_darwin(v356);
  v293 = &v262 - v64;
  v65 = type metadata accessor for NewsArticleComponentViewModel(0);
  v282 = *(v65 - 8);
  __chkstk_darwin(v65 - 8);
  v284 = &v262 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = v66;
  __chkstk_darwin(v67);
  v292 = &v262 - v68;
  v353 = sub_10022C350(&qword_100CC1108);
  __chkstk_darwin(v353);
  v354 = &v262 - v69;
  v406 = sub_10022C350(&qword_100CC1110);
  __chkstk_darwin(v406);
  v355 = &v262 - v70;
  v352 = sub_10022C350(&qword_100CC1118);
  __chkstk_darwin(v352);
  v291 = &v262 - v71;
  v72 = type metadata accessor for MoonComponentViewModel();
  v277 = *(v72 - 8);
  __chkstk_darwin(v72 - 8);
  v279 = &v262 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = v73;
  __chkstk_darwin(v74);
  v290 = &v262 - v75;
  v351 = sub_10022C350(&qword_100CC1120);
  __chkstk_darwin(v351);
  v289 = &v262 - v76;
  v77 = type metadata accessor for MapComponentViewModel();
  v273 = *(v77 - 8);
  __chkstk_darwin(v77 - 8);
  v275 = &v262 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = v78;
  __chkstk_darwin(v79);
  v285 = &v262 - v80;
  v402 = sub_10022C350(&qword_100CC1128);
  __chkstk_darwin(v402);
  v404 = &v262 - v81;
  v348 = sub_10022C350(&qword_100CC1130);
  __chkstk_darwin(v348);
  v349 = &v262 - v82;
  v403 = sub_10022C350(&qword_100CC1138);
  __chkstk_darwin(v403);
  v350 = &v262 - v83;
  v426 = sub_10022C350(&qword_100CC1140);
  __chkstk_darwin(v426);
  v405 = &v262 - v84;
  v347 = sub_10022C350(&qword_100CC1148);
  __chkstk_darwin(v347);
  v281 = &v262 - v85;
  v346 = sub_10022C350(&qword_100CC1150);
  __chkstk_darwin(v346);
  v280 = &v262 - v86;
  v87 = type metadata accessor for HourlyForecastComponentViewModel(0);
  v267 = *(v87 - 8);
  v88 = *(v267 + 64);
  __chkstk_darwin(v87 - 8);
  v268 = &v262 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v276 = &v262 - v90;
  v343 = sub_10022C350(&qword_100CC1158);
  __chkstk_darwin(v343);
  v344 = &v262 - v91;
  v401 = sub_10022C350(&qword_100CC1160);
  __chkstk_darwin(v401);
  v345 = &v262 - v92;
  v342 = sub_10022C350(&qword_100CC1168);
  __chkstk_darwin(v342);
  v272 = &v262 - v93;
  v94 = type metadata accessor for FeelsLikeComponentViewModel(0);
  v265 = *(v94 - 8);
  v95 = *(v265 + 64);
  __chkstk_darwin(v94 - 8);
  v266 = &v262 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v96);
  v271 = &v262 - v97;
  v98 = type metadata accessor for LocationComponentContainerContentView(0);
  v394 = *(v98 - 8);
  __chkstk_darwin(v98);
  v395 = v99;
  v396 = &v262 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_10022C350(&qword_100CC1170);
  __chkstk_darwin(v341);
  v270 = &v262 - v100;
  v101 = type metadata accessor for DailyForecastComponentViewModel(0);
  v263 = *(v101 - 8);
  v102 = *(v263 + 64);
  __chkstk_darwin(v101 - 8);
  v264 = &v262 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v103);
  v269 = &v262 - v104;
  v437 = sub_10022C350(&qword_100CC1178);
  __chkstk_darwin(v437);
  v439 = &v262 - v105;
  v432 = sub_10022C350(&qword_100CC1180);
  __chkstk_darwin(v432);
  v434 = &v262 - v106;
  v422 = sub_10022C350(&qword_100CC1188);
  __chkstk_darwin(v422);
  v424 = &v262 - v107;
  v397 = sub_10022C350(&qword_100CC1190);
  __chkstk_darwin(v397);
  v399 = &v262 - v108;
  v338 = sub_10022C350(&qword_100CC1198);
  __chkstk_darwin(v338);
  v339 = &v262 - v109;
  v398 = sub_10022C350(&qword_100CC11A0);
  __chkstk_darwin(v398);
  v340 = &v262 - v110;
  v423 = sub_10022C350(&qword_100CC11A8);
  __chkstk_darwin(v423);
  v400 = &v262 - v111;
  v433 = sub_10022C350(&qword_100CC11B0);
  __chkstk_darwin(v433);
  v425 = &v262 - v112;
  v438 = sub_10022C350(&qword_100CC11B8);
  __chkstk_darwin(v438);
  v435 = &v262 - v113;
  v337 = sub_10022C350(&qword_100CC11C0);
  __chkstk_darwin(v337);
  v262 = &v262 - v114;
  v115 = type metadata accessor for AirQualityComponentViewModel();
  __chkstk_darwin(v115 - 8);
  __chkstk_darwin(v116);
  v117 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v117);
  v119 = (&v262 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LocationComponentContainerViewModel();
  sub_1001993DC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1001AD070();
      sub_1001993DC();
      sub_1001993DC();
      v209 = swift_allocObject();
      sub_1001AD070();
      sub_1001AD070();
      v210 = v270;
      sub_1004E4A08(1, sub_1004FFF30, v209, v270);

      sub_1000302D8(v210, v339, &qword_100CC1170);
      swift_storeEnumTagMultiPayload();
      sub_1004FD92C();
      sub_1004FDA9C();
      v211 = v340;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v211, v399, &qword_100CC11A0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD8A0();
      sub_1004FDC0C();
      v212 = v400;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v211, &qword_100CC11A0);
      sub_1000302D8(v212, v424, &qword_100CC11A8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v213 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v212, &qword_100CC11A8);
      sub_1000302D8(v213, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v214 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v213, &qword_100CC11B0);
      sub_1000302D8(v214, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v214, &qword_100CC11B8);
      sub_100018198(v210, &qword_100CC1170);
      return sub_100192034();
    case 2u:
      sub_1001AD070();
      sub_1001993DC();
      v188 = swift_allocObject();
      sub_1001AD070();
      v189 = v272;
      sub_1004E4E00(1, sub_1004FFF04, v188, v272);

      sub_1000302D8(v189, v344, &qword_100CC1168);
      swift_storeEnumTagMultiPayload();
      sub_1004FDC98();
      sub_1004FDE08();
      v190 = v345;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v190, v399, &qword_100CC1160);
      swift_storeEnumTagMultiPayload();
      sub_1004FD8A0();
      sub_1004FDC0C();
      v191 = v400;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v190, &qword_100CC1160);
      sub_1000302D8(v191, v424, &qword_100CC11A8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v192 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v191, &qword_100CC11A8);
      sub_1000302D8(v192, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v193 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v192, &qword_100CC11B0);
      sub_1000302D8(v193, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v193, &qword_100CC11B8);
      sub_100018198(v189, &qword_100CC1168);
      return sub_100192034();
    case 3u:
      sub_1001AD070();
      sub_1001993DC();
      v197 = swift_allocObject();
      sub_1001AD070();
      v198 = v280;
      sub_1004E51F8(1, sub_1004FFED8, v197, v280);

      sub_1000302D8(v198, v344, &qword_100CC1150);
      swift_storeEnumTagMultiPayload();
      sub_1004FDC98();
      sub_1004FDE08();
      v199 = v345;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v199, v399, &qword_100CC1160);
      swift_storeEnumTagMultiPayload();
      sub_1004FD8A0();
      sub_1004FDC0C();
      v200 = v400;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v199, &qword_100CC1160);
      sub_1000302D8(v200, v424, &qword_100CC11A8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v201 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v200, &qword_100CC11A8);
      sub_1000302D8(v201, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v202 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v201, &qword_100CC11B0);
      sub_1000302D8(v202, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v202, &qword_100CC11B8);
      sub_100018198(v198, &qword_100CC1150);
      return sub_100192034();
    case 4u:
      v150 = *v119;
      v152 = *(v119 + 1);
      v151 = *(v119 + 2);
      v153 = swift_allocObject();
      v153[2] = v150;
      v153[3] = v152;
      v153[4] = v151;
      v154 = v281;
      sub_1004E55F0(1, sub_1004FFECC, v153, v281);

      v155 = &qword_100CC1148;
      sub_1000302D8(v154, v349, &qword_100CC1148);
      swift_storeEnumTagMultiPayload();
      sub_1004FE090();
      sub_1004FE200();
      v156 = v350;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v156, v404, &qword_100CC1138);
      swift_storeEnumTagMultiPayload();
      sub_1004FE004();
      sub_1004FE370();
      v157 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v156, &qword_100CC1138);
      sub_1000302D8(v157, v424, &qword_100CC1140);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v158 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v157, &qword_100CC1140);
      sub_1000302D8(v158, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v159 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v158, &qword_100CC11B0);
      goto LABEL_21;
    case 5u:
      sub_1001AD070();
      sub_1001993DC();
      v218 = swift_allocObject();
      sub_1001AD070();
      v219 = v289;
      sub_1004E59E8(0, sub_1004FFEA0, v218, v289);

      sub_1000302D8(v219, v349, &qword_100CC1120);
      swift_storeEnumTagMultiPayload();
      sub_1004FE090();
      sub_1004FE200();
      v220 = v350;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v220, v404, &qword_100CC1138);
      swift_storeEnumTagMultiPayload();
      sub_1004FE004();
      sub_1004FE370();
      v221 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v220, &qword_100CC1138);
      sub_1000302D8(v221, v424, &qword_100CC1140);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v222 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v221, &qword_100CC1140);
      sub_1000302D8(v222, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v223 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v222, &qword_100CC11B0);
      sub_1000302D8(v223, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v223, &qword_100CC11B8);
      sub_100018198(v219, &qword_100CC1120);
      return sub_100192034();
    case 6u:
      sub_1001AD070();
      sub_1001993DC();
      v230 = swift_allocObject();
      sub_1001AD070();
      v231 = v291;
      sub_1004E5DE0(1, sub_1004FFE74, v230, v291);

      sub_1000302D8(v231, v354, &qword_100CC1118);
      swift_storeEnumTagMultiPayload();
      sub_1004FE3FC();
      sub_1004FE56C();
      v232 = v355;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v232, v404, &qword_100CC1110);
      swift_storeEnumTagMultiPayload();
      sub_1004FE004();
      sub_1004FE370();
      v233 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v232, &qword_100CC1110);
      sub_1000302D8(v233, v424, &qword_100CC1140);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v234 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v233, &qword_100CC1140);
      sub_1000302D8(v234, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v235 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v234, &qword_100CC11B0);
      sub_1000302D8(v235, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v235, &qword_100CC11B8);
      sub_100018198(v231, &qword_100CC1118);
      return sub_100192034();
    case 7u:
      sub_1001AD070();
      sub_1001993DC();
      v203 = swift_allocObject();
      sub_1001AD070();
      v204 = v293;
      sub_1004E61D8(1, sub_1004FFE48, v203, v293);

      sub_1000302D8(v204, v354, &qword_100CC1100);
      swift_storeEnumTagMultiPayload();
      sub_1004FE3FC();
      sub_1004FE56C();
      v205 = v355;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v205, v404, &qword_100CC1110);
      swift_storeEnumTagMultiPayload();
      sub_1004FE004();
      sub_1004FE370();
      v206 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v205, &qword_100CC1110);
      sub_1000302D8(v206, v424, &qword_100CC1140);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v207 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v206, &qword_100CC1140);
      sub_1000302D8(v207, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v208 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v207, &qword_100CC11B0);
      sub_1000302D8(v208, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v208, &qword_100CC11B8);
      sub_100018198(v204, &qword_100CC1100);
      return sub_100192034();
    case 8u:
      sub_1001AD070();
      sub_1001993DC();
      v245 = swift_allocObject();
      sub_1001AD070();
      v246 = v298;
      sub_1004E65D0(1, sub_1004FFE1C, v245, v298);

      sub_1000302D8(v246, v359, &qword_100CC10F8);
      swift_storeEnumTagMultiPayload();
      sub_1004FE8C4();
      v247 = sub_1004FEA34();
      v442 = v361;
      v443 = v247;
      swift_getOpaqueTypeConformance2();
      v248 = v360;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v248, v409, &qword_100CC10E0);
      swift_storeEnumTagMultiPayload();
      sub_1004FE7F4();
      sub_1004FEBA4();
      v249 = v410;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v248, &qword_100CC10E0);
      sub_1000302D8(v249, v429, &qword_100CC10E8);
      swift_storeEnumTagMultiPayload();
      sub_1004FE768();
      sub_1004FEF4C();
      v250 = v430;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v249, &qword_100CC10E8);
      sub_1000302D8(v250, v434, &qword_100CC10F0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v251 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v250, &qword_100CC10F0);
      sub_1000302D8(v251, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v251, &qword_100CC11B8);
      sub_100018198(v246, &qword_100CC10F8);
      return sub_100192034();
    case 9u:
      sub_1001AD070();
      sub_1001993DC();
      sub_1001993DC();
      v174 = swift_allocObject();
      sub_1001AD070();
      sub_1001AD070();
      v175 = v299;
      sub_1004E69C8(1, sub_1004FFDF0, v174, v299);

      v176 = v392;
      v177 = v391;
      v178 = v393;
      (*(v392 + 104))(v391, enum case for ColorRenderingMode.nonLinear(_:), v393);
      v179 = sub_1004FEA34();
      v180 = v305;
      v181 = v361;
      View.drawingGroup(opaque:colorMode:)();
      (*(v176 + 8))(v177, v178);
      sub_100018198(v175, &qword_100CC10B8);
      v182 = v306;
      v183 = v366;
      (*(v306 + 16))(v359, v180, v366);
      swift_storeEnumTagMultiPayload();
      sub_1004FE8C4();
      v442 = v181;
      v443 = v179;
      swift_getOpaqueTypeConformance2();
      v184 = v360;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v184, v409, &qword_100CC10E0);
      swift_storeEnumTagMultiPayload();
      sub_1004FE7F4();
      sub_1004FEBA4();
      v185 = v410;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v184, &qword_100CC10E0);
      sub_1000302D8(v185, v429, &qword_100CC10E8);
      swift_storeEnumTagMultiPayload();
      sub_1004FE768();
      sub_1004FEF4C();
      v186 = v430;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v185, &qword_100CC10E8);
      sub_1000302D8(v186, v434, &qword_100CC10F0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v187 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v186, &qword_100CC10F0);
      sub_1000302D8(v187, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v187, &qword_100CC11B8);
      (*(v182 + 8))(v180, v183);
      return sub_100192034();
    case 0xAu:
      v240 = swift_allocObject();
      memcpy((v240 + 16), v119, 0x70uLL);
      v154 = v315;
      sub_1004E75B0(1, sub_1004FFD60, v240, v315);

      v155 = &qword_100CC1088;
      sub_1000302D8(v154, v371, &qword_100CC1088);
      swift_storeEnumTagMultiPayload();
      sub_1004FF0A8();
      v241 = sub_1004FF218();
      v442 = v372;
      v443 = v241;
      swift_getOpaqueTypeConformance2();
      v242 = v373;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v242, v414, &qword_100CC1078);
      swift_storeEnumTagMultiPayload();
      sub_1004FEFD8();
      sub_1004FF528();
      v243 = v415;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v242, &qword_100CC1078);
      sub_1000302D8(v243, v429, &qword_100CC1080);
      swift_storeEnumTagMultiPayload();
      sub_1004FE768();
      sub_1004FEF4C();
      v244 = v430;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v243, &qword_100CC1080);
      sub_1000302D8(v244, v434, &qword_100CC10F0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v159 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v244, &qword_100CC10F0);
LABEL_21:
      sub_1000302D8(v159, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v159, &qword_100CC11B8);
      return sub_100018198(v154, v155);
    case 0xBu:
      sub_1001AD070();
      sub_1001993DC();
      v143 = swift_allocObject();
      sub_1001AD070();
      v144 = v314;
      sub_1004E71B8(1, sub_1004FFD68, v143, v314);

      sub_1000302D8(v144, v364, &qword_100CC1090);
      swift_storeEnumTagMultiPayload();
      v145 = sub_1004FEC6C();
      v442 = v362;
      v443 = v145;
      swift_getOpaqueTypeConformance2();
      sub_1004FEDDC();
      v146 = v365;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v146, v409, &qword_100CC10A0);
      swift_storeEnumTagMultiPayload();
      sub_1004FE7F4();
      sub_1004FEBA4();
      v147 = v410;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v146, &qword_100CC10A0);
      sub_1000302D8(v147, v429, &qword_100CC10E8);
      swift_storeEnumTagMultiPayload();
      sub_1004FE768();
      sub_1004FEF4C();
      v148 = v430;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v147, &qword_100CC10E8);
      sub_1000302D8(v148, v434, &qword_100CC10F0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v149 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v148, &qword_100CC10F0);
      sub_1000302D8(v149, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v149, &qword_100CC11B8);
      sub_100018198(v144, &qword_100CC1090);
      return sub_100192034();
    case 0xCu:
      v160 = *v119;
      sub_1001993DC();
      v161 = swift_allocObject();
      *(v161 + 16) = v160;
      sub_1001AD070();
      v162 = v313;
      sub_1004E79A8(1, sub_1004FFCF4, v161, v313);

      v163 = v392;
      v164 = v391;
      v165 = v393;
      (*(v392 + 104))(v391, enum case for ColorRenderingMode.nonLinear(_:), v393);
      v166 = sub_1004FF218();
      v167 = v318;
      v168 = v372;
      View.drawingGroup(opaque:colorMode:)();
      (*(v163 + 8))(v164, v165);
      sub_100018198(v162, &qword_100CC1058);
      v169 = v319;
      v170 = v380;
      (*(v319 + 16))(v371, v167, v380);
      swift_storeEnumTagMultiPayload();
      sub_1004FF0A8();
      v442 = v168;
      v443 = v166;
      swift_getOpaqueTypeConformance2();
      v171 = v373;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v171, v414, &qword_100CC1078);
      swift_storeEnumTagMultiPayload();
      sub_1004FEFD8();
      sub_1004FF528();
      v172 = v415;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v171, &qword_100CC1078);
      v173 = &qword_100CC1080;
      sub_1000302D8(v172, v429, &qword_100CC1080);
      goto LABEL_27;
    case 0xDu:
      sub_1001AD070();
      sub_1001993DC();
      v224 = swift_allocObject();
      sub_1001AD070();
      v225 = v321;
      sub_1004E7DA0(1, sub_1004FFCC8, v224, v321);

      sub_1000302D8(v225, v376, &qword_100CC1050);
      swift_storeEnumTagMultiPayload();
      sub_1004FF5B4();
      sub_1004FF8C4();
      v226 = v377;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v226, v414, &qword_100CC1048);
      swift_storeEnumTagMultiPayload();
      sub_1004FEFD8();
      sub_1004FF528();
      v227 = v415;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v226, &qword_100CC1048);
      sub_1000302D8(v227, v429, &qword_100CC1080);
      swift_storeEnumTagMultiPayload();
      sub_1004FE768();
      sub_1004FEF4C();
      v228 = v430;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v227, &qword_100CC1080);
      sub_1000302D8(v228, v434, &qword_100CC10F0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v229 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v228, &qword_100CC10F0);
      sub_1000302D8(v229, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v229, &qword_100CC11B8);
      sub_100018198(v225, &qword_100CC1050);
      return sub_100192034();
    case 0xEu:
      v130 = v326;
      v131 = *(v326 + 32);
      v132 = v381;
      v133 = v328;
      v131(v381, v119, v328);
      v134 = v317;
      (*(v130 + 16))(v317, v132, v133);
      v135 = (*(v130 + 80) + 16) & ~*(v130 + 80);
      v136 = swift_allocObject();
      v131((v136 + v135), v134, v133);
      v137 = v327;
      sub_1004E8198(1, sub_1004FFC9C, v136, v327);

      sub_1000302D8(v137, v376, &qword_100CC1038);
      swift_storeEnumTagMultiPayload();
      sub_1004FF5B4();
      sub_1004FF8C4();
      v138 = v377;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v138, v414, &qword_100CC1048);
      swift_storeEnumTagMultiPayload();
      sub_1004FEFD8();
      sub_1004FF528();
      v139 = v415;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v138, &qword_100CC1048);
      sub_1000302D8(v139, v429, &qword_100CC1080);
      swift_storeEnumTagMultiPayload();
      sub_1004FE768();
      sub_1004FEF4C();
      v140 = v430;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v139, &qword_100CC1080);
      sub_1000302D8(v140, v434, &qword_100CC10F0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v141 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v140, &qword_100CC10F0);
      sub_1000302D8(v141, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v141, &qword_100CC11B8);
      sub_100018198(v137, &qword_100CC1038);
      return (*(v130 + 8))(v381, v133);
    case 0xFu:
      v194 = swift_allocObject();
      memcpy((v194 + 16), v119, 0xB0uLL);
      v154 = v322;
      sub_1004E8590(1, sub_1004FFC94, v194, v322);

      v155 = &qword_100CC1030;
      sub_1000302D8(v154, v383, &qword_100CC1030);
      swift_storeEnumTagMultiPayload();
      sub_1004FD050();
      sub_1004FD360();
      v195 = v384;
      _ConditionalContent<>.init(storage:)();
      v196 = &qword_100CC1020;
      sub_1000302D8(v195, v419, &qword_100CC1020);
      goto LABEL_15;
    case 0x10u:
      sub_1001AD070();
      sub_1001993DC();
      v126 = swift_allocObject();
      sub_1001AD070();
      v127 = v333;
      sub_1004E8988(1, sub_1004FFC68, v126, v333);

      sub_1000302D8(v127, v383, &qword_100CC1008);
      swift_storeEnumTagMultiPayload();
      sub_1004FD050();
      sub_1004FD360();
      v128 = v384;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v128, v419, &qword_100CC1020);
      swift_storeEnumTagMultiPayload();
      sub_1004FCFC4();
      sub_1004FD670();
      v129 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v128, &qword_100CC1020);
      sub_1000302D8(v129, v439, &qword_100CC1028);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v129, &qword_100CC1028);
      sub_100018198(v127, &qword_100CC1008);
      return sub_100192034();
    case 0x11u:
      v215 = swift_allocObject();
      v216 = v119[1];
      v215[1] = *v119;
      v215[2] = v216;
      v215[3] = v119[2];
      v154 = v334;
      sub_1004E8D80(1, sub_1004FFC60, v215, v334);

      v155 = &qword_100CC1000;
      sub_1000302D8(v154, v388, &qword_100CC1000);
      swift_storeEnumTagMultiPayload();
      sub_1004FC9A4();
      sub_1004FCCB4();
      v195 = v389;
      _ConditionalContent<>.init(storage:)();
      v196 = &qword_100CC0FF8;
      sub_1000302D8(v195, v419, &qword_100CC0FF8);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      sub_1004FCFC4();
      sub_1004FD670();
      v217 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v195, v196);
      sub_1000302D8(v217, v439, &qword_100CC1028);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v217, &qword_100CC1028);
      return sub_100018198(v154, v155);
    case 0x12u:
      sub_1001AD070();
      sub_1001993DC();
      v236 = swift_allocObject();
      sub_1001AD070();
      v237 = v336;
      sub_1004E9178(1, sub_1004FC978, v236, v336);

      sub_1000302D8(v237, v388, &qword_100CC0FE8);
      swift_storeEnumTagMultiPayload();
      sub_1004FC9A4();
      sub_1004FCCB4();
      v238 = v389;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v238, v419, &qword_100CC0FF8);
      swift_storeEnumTagMultiPayload();
      sub_1004FCFC4();
      sub_1004FD670();
      v239 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v238, &qword_100CC0FF8);
      sub_1000302D8(v239, v439, &qword_100CC1028);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v239, &qword_100CC1028);
      sub_100018198(v237, &qword_100CC0FE8);
      return sub_100192034();
    case 0x13u:
      sub_1001993DC();
      v252 = swift_allocObject();
      sub_1001AD070();
      v253 = v300;
      sub_1004E6DC0(1, sub_1004FFD94, v252, v300);

      v254 = v392;
      v255 = v391;
      v256 = v393;
      (*(v392 + 104))(v391, enum case for ColorRenderingMode.nonLinear(_:), v393);
      v257 = sub_1004FEC6C();
      v167 = v307;
      v258 = v362;
      View.drawingGroup(opaque:colorMode:)();
      (*(v254 + 8))(v255, v256);
      sub_100018198(v253, &qword_100CC10A8);
      v169 = v308;
      v170 = v370;
      (*(v308 + 16))(v364, v167, v370);
      swift_storeEnumTagMultiPayload();
      v442 = v258;
      v443 = v257;
      swift_getOpaqueTypeConformance2();
      sub_1004FEDDC();
      v259 = v365;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v259, v409, &qword_100CC10A0);
      swift_storeEnumTagMultiPayload();
      sub_1004FE7F4();
      sub_1004FEBA4();
      v172 = v410;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v259, &qword_100CC10A0);
      v173 = &qword_100CC10E8;
      sub_1000302D8(v172, v429, &qword_100CC10E8);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_1004FE768();
      sub_1004FEF4C();
      v260 = v430;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v172, v173);
      sub_1000302D8(v260, v434, &qword_100CC10F0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v261 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v260, &qword_100CC10F0);
      sub_1000302D8(v261, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v261, &qword_100CC11B8);
      return (*(v169 + 8))(v167, v170);
    default:
      sub_1001AD070();
      sub_1001993DC();
      v120 = swift_allocObject();
      sub_1001AD070();
      v121 = v262;
      sub_1004E4610(1, sub_10050003C, v120, v262);

      sub_1000302D8(v121, v339, &qword_100CC11C0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD92C();
      sub_1004FDA9C();
      v122 = v340;
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v122, v399, &qword_100CC11A0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD8A0();
      sub_1004FDC0C();
      v123 = v400;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v122, &qword_100CC11A0);
      sub_1000302D8(v123, v424, &qword_100CC11A8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD814();
      sub_1004FDF78();
      v124 = v425;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v123, &qword_100CC11A8);
      sub_1000302D8(v124, v434, &qword_100CC11B0);
      swift_storeEnumTagMultiPayload();
      sub_1004FD788();
      sub_1004FE6DC();
      v125 = v435;
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v124, &qword_100CC11B0);
      sub_1000302D8(v125, v439, &qword_100CC11B8);
      swift_storeEnumTagMultiPayload();
      sub_1004FD6FC();
      sub_1004FFBD4();
      _ConditionalContent<>.init(storage:)();
      sub_100018198(v125, &qword_100CC11B8);
      sub_100018198(v121, &qword_100CC11C0);
      return sub_100192034();
  }
}

uint64_t sub_1001C3810()
{
  sub_100020DF0();
  type metadata accessor for WindComponentViewModel();
  sub_100008560();
  sub_1000B97E4();

  v2 = *(v0 + 76);
  type metadata accessor for WindComponentCompassViewModel();
  sub_100003D98();
  (*(v3 + 8))(v1 + v2);

  sub_100018478();
  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001C3934()
{

  return swift_deallocObject();
}

uint64_t sub_1001C397C()
{
  sub_100020DF0();
  type metadata accessor for UVIndexComponentViewModel();
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 36);
  type metadata accessor for WeatherDescription();
  sub_100003D98();
  (*(v5 + 8))(v3 + v4);
  sub_10002418C(*(v0 + 40));

  sub_100018478();
  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001C3A5C()
{

  return swift_deallocObject();
}

uint64_t sub_1001C3AE4()
{
  type metadata accessor for SunriseSunsetViewModel();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001C3B60()
{
  type metadata accessor for SevereAlertComponentViewModel();
  sub_100008560();
  sub_1000B97E4();

  v2 = *(v0 + 44);
  type metadata accessor for WeatherAlert.Prominence();
  sub_100003D98();
  (*(v3 + 8))(v1 + v2);
  sub_100018478();

  return swift_deallocObject();
}

uint64_t sub_1001C46E8()
{

  return swift_deallocObject();
}

uint64_t sub_1001C4750()
{
  type metadata accessor for PressureComponentViewModel();
  sub_100008560();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  type metadata accessor for PressureTrend();
  sub_100003D98();
  (*(v4 + 8))(v1 + v3);
  sub_10001673C(v0[7]);

  sub_10001673C(v0[8]);

  sub_10001673C(v0[9]);

  sub_10001673C(v0[11]);

  return swift_deallocObject();
}

uint64_t sub_1001C52EC()
{
  v5 = v0;
  v6 = type metadata accessor for NotificationsOptInComponentViewModel();
  sub_100003AE8(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  type metadata accessor for LocationComponentContainerContentView(0);
  sub_100003A0C();
  v12 = *(v11 + 80);
  type metadata accessor for Location();
  sub_100003D98();
  v97 = *(v13 + 8);
  v98 = v14;
  v97(v5 + v8);
  sub_10002C7B8();
  v16 = v5 + ((v8 + v10 + v12) & ~v12) + v15;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:

      goto LABEL_6;
    case 1u:

      goto LABEL_6;
    case 2u:

      goto LABEL_6;
    case 3u:
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v17 + 8))(v16);
      v1 = v16 + *(type metadata accessor for LocationComponentHeaderViewModel.Description(0) + 20);

LABEL_6:

      break;
    default:
      break;
  }

  type metadata accessor for LocationComponentContainerViewModel();
  sub_1005026D4();
  switch(sub_1000C8BBC())
  {
    case 0u:

      v18 = type metadata accessor for AirQualityComponentViewModel();
      v19 = *(v18 + 60);
      type metadata accessor for AttributedString();
      sub_100003D98();
      (*(v20 + 8))(v2 + v19);
      v21 = *(v18 + 64);
      goto LABEL_54;
    case 1u:

      type metadata accessor for DailyForecastComponentViewModel(0);
      sub_1000C827C();
      v93 = v25;
      sub_10022C350(&qword_100CA53F8);
      sub_1000037E8();
      v27 = *(v26 + 8);
      v28 = sub_100037FEC(v93);
      v27(v28);
      v29 = sub_100037FEC(v3[6]);
      v27(v29);
      v30 = sub_100037FEC(v3[7]);
      v27(v30);
      v31 = v3[8];
      goto LABEL_23;
    case 2u:

      v56 = type metadata accessor for FeelsLikeComponentViewModel(0);
      v57 = sub_100199484();
      v58 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(v57);
      if (!sub_1000214B8(v58))
      {

        sub_10050269C();
        type metadata accessor for TemperatureScaleConfiguration();
        sub_100003D98();
        (*(v59 + 8))(v4);
        type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
        sub_10003C540();
      }

      sub_10002418C(*(v56 + 28));

      v21 = *(v56 + 32);
      goto LABEL_54;
    case 3u:
      v54 = type metadata accessor for UUID();
      if (!sub_1000D3BF0(v2))
      {
        sub_100003B20();
        (*(v55 + 8))(v2, v54);
      }

      type metadata accessor for HourlyForecastComponentViewModel(0);
      goto LABEL_55;
    case 4u:
      goto LABEL_55;
    case 5u:
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003D98();
      (*(v32 + 8))(v2);
      type metadata accessor for MapComponentViewModel();
      sub_1000C827C();
      (v97)(v2 + v33, v98);
      sub_100042D48();
      v34 = sub_100199484();
      v35 = type metadata accessor for WeatherData(v34);
      if (!sub_1000D3BF0(v4))
      {

        v94 = v35;
        v36 = *(v35 + 20);
        v37 = type metadata accessor for Locale();
        if (!sub_1000D3BF0(v4 + v36))
        {
          sub_100003B20();
          (*(v38 + 8))(v4 + v36, v37);
        }

        v39 = v94;
        v40 = *(v94 + 24);
        type metadata accessor for WeatherDataModel();
        sub_100003D98();
        (*(v41 + 8))(v4 + v40);
        v42 = v4 + *(v94 + 28);
        v91 = sub_10022C350(&qword_100CAC710);
        v92 = v42;
        v43 = sub_1000175DC();
        if (!sub_100024D10(v43, v44, v45))
        {
          type metadata accessor for Date();
          sub_100003D98();
          v89 = *(v46 + 8);
          v90 = v47;
          v89(v42);
          v48 = *(v91 + 48);
          v49 = type metadata accessor for WeatherDataRelevancy();
          v39 = v94;
          if (!sub_100024D10(v92 + v48, 1, v49))
          {
            (v89)(v92 + v48, v90);
          }
        }

        v50 = v4 + *(v39 + 32);
        type metadata accessor for WeatherData.WeatherStatisticsState(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for WeatherStatisticsModel();
          sub_100003D98();
          (*(v78 + 8))(v50);
        }

        else if (!EnumCaseMultiPayload)
        {
        }

        sub_10050269C();
        v79 = type metadata accessor for WeatherDataOverrides();
        if (!sub_1000214B8(v79))
        {
          v95 = type metadata accessor for Date();
          if (!sub_100024D10(v4, 1, v95))
          {
            sub_1000285CC();
            (*(v80 + 8))(v4);
          }

          v81 = *(v39 + 20);
          if (!sub_100024D10(v4 + v81, 1, v95))
          {
            sub_1000285CC();
            (*(v82 + 8))(v4 + v81);
          }
        }
      }

      sub_10019221C();
      goto LABEL_54;
    case 6u:

      v60 = *(v2 + 32);
      if (v60 != 255)
      {
        sub_1002773E8(*(v2 + 16), *(v2 + 24), v60);
      }

      v61 = type metadata accessor for MoonComponentViewModel();
      v62 = *(v61 + 28);
      type metadata accessor for Date();
      sub_100003D98();
      (*(v63 + 8))(v2 + v62);
      v21 = *(v61 + 40);
      goto LABEL_54;
    case 7u:
      type metadata accessor for NewsArticleComponentViewModel(0);
      if (sub_1000C8BBC() == 1)
      {

        v64 = type metadata accessor for NewsArticleComponentContentViewModel(0);
        v65 = v64[5];
        v66 = type metadata accessor for URL();
        if (!sub_1000D3BF0(v2 + v65))
        {
          sub_100003B20();
          (*(v67 + 8))(v2 + v65, v66);
        }

        sub_10002418C(v64[6]);

        sub_1000E171C();
        v96 = *(v68 + 8);
        v96(v2 + v69, v66);
        v70 = v64[8];
        if (!sub_1000D3BF0(v2 + v70))
        {
          v96(v2 + v70, v66);
        }
      }

      break;
    case 8u:

      v24 = *(type metadata accessor for NextHourPrecipitationComponentViewModel() + 20);
      type metadata accessor for NextHourPrecipitationChartViewModel();
      goto LABEL_42;
    case 9u:
      (v97)(v2, v98);
      break;
    case 0xAu:

      goto LABEL_55;
    case 0xBu:
      type metadata accessor for PressureTrend();
      sub_100003D98();
      (*(v52 + 8))(v2);
      type metadata accessor for PressureComponentViewModel();
      sub_1000C827C();
      sub_10002418C(v53);

      sub_10002418C(v3[6]);

      v31 = v3[7];
LABEL_23:
      sub_10002418C(v31);

      v21 = v3[9];
LABEL_54:
      sub_10002418C(v21);
      goto LABEL_55;
    case 0xDu:

      v24 = *(type metadata accessor for SevereAlertComponentViewModel() + 36);
      type metadata accessor for WeatherAlert.Prominence();
LABEL_42:
      sub_100003D98();
      (*(v74 + 8))(v2 + v24, v75);
      break;
    case 0xEu:
      type metadata accessor for SunriseSunsetViewModel();
      sub_100003D98();
      (*(v22 + 8))(v2, v23);
      break;
    case 0xFu:

      goto LABEL_55;
    case 0x10u:

      v71 = type metadata accessor for UVIndexComponentViewModel();
      v72 = *(v71 + 28);
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v73 + 8))(v2 + v72);
      sub_10002418C(*(v71 + 32));

      goto LABEL_55;
    case 0x11u:

      goto LABEL_55;
    case 0x12u:

      v76 = *(type metadata accessor for WindComponentViewModel() + 68);
      type metadata accessor for WindComponentCompassViewModel();
      sub_100003D98();
      (*(v77 + 8))(v2 + v76);
LABEL_55:

      break;
    default:
      break;
  }

  v83 = v16 + *(v1 + 32);
  v84 = type metadata accessor for LocationComponentAction(0);
  if (!sub_100003EB0(v84))
  {
    sub_100025214();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        type metadata accessor for URL();
        goto LABEL_61;
      case 1u:
        type metadata accessor for WeatherMapOverlayKind();
        goto LABEL_61;
      case 2u:
        type metadata accessor for DetailCondition();
LABEL_61:
        sub_100003D98();
        (*(v85 + 8))(v83, v86);
        break;
      case 4u:
        v87 = v83 + *(sub_10022C350(&qword_100CA6688) + 48);
        (v97)(v87, v98);
        break;
      default:
        break;
    }
  }

  sub_1005026F4();
  sub_1000377F8();
  sub_1000E1560();
  sub_1000D3D3C();

  return swift_deallocObject();
}

uint64_t sub_1001C5F74()
{
  type metadata accessor for NextHourPrecipitationComponentViewModel();
  sub_100008560();
  sub_1000B97E4();
  v2 = *(v0 + 28);
  type metadata accessor for NextHourPrecipitationChartViewModel();
  sub_100003D98();
  (*(v3 + 8))(v1 + v2);
  sub_100018478();

  return swift_deallocObject();
}

uint64_t sub_1001C6034()
{
  type metadata accessor for NewsArticleComponentViewModel(0);
  sub_100003DDC();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = type metadata accessor for NewsArticleComponentContentViewModel(0);
    v4 = v3[5];
    v5 = type metadata accessor for URL();
    if (!sub_100024D10(v2 + v4, 1, v5))
    {
      sub_100003B20();
      (*(v6 + 8))(v2 + v4, v5);
    }

    v7 = *(*(v5 - 8) + 8);
    v7(v2 + v3[7], v5);
    v8 = v3[8];
    if (!sub_100024D10(v2 + v8, 1, v5))
    {
      v7(v2 + v8, v5);
    }
  }

  sub_1000C84DC();

  return swift_deallocObject();
}

uint64_t sub_1001C61BC()
{
  sub_100020DF0();
  type metadata accessor for MoonComponentViewModel();
  sub_100003A0C();
  sub_1000B97E4();
  v2 = *(v1 + 32);
  if (v2 != 255)
  {
    sub_1002773E8(*(v1 + 16), *(v1 + 24), v2);
  }

  v3 = *(v0 + 28);
  type metadata accessor for Date();
  sub_100003D98();
  (*(v4 + 8))(v1 + v3);
  sub_10002418C(*(v0 + 40));

  sub_100018478();
  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001C62A4()
{
  type metadata accessor for MapComponentViewModel();
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003D98();
  (*(v5 + 8))(v4);
  v6 = *(v0 + 20);
  type metadata accessor for Location();
  sub_100003D98();
  (*(v7 + 8))(v4 + v6);
  v8 = sub_1005026C8();
  v9 = type metadata accessor for WeatherData(v8);
  if (!sub_100003EB0(v9))
  {

    v10 = v2[5];
    v11 = type metadata accessor for Locale();
    if (!sub_10000CAFC(v6 + v10))
    {
      sub_100022BC0();
      (*(v12 + 8))(v6 + v10, v11);
    }

    v13 = v2[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v14 + 8))(v6 + v13);
    v15 = v6 + v2[7];
    v16 = sub_10022C350(&qword_100CAC710);
    if (!sub_100024D10(v15, 1, v16))
    {
      v17 = type metadata accessor for Date();
      sub_1000037E8();
      v32 = *(v18 + 8);
      v32(v15, v17);
      v19 = *(v16 + 48);
      v20 = type metadata accessor for WeatherDataRelevancy();
      if (!sub_100024D10(v15 + v19, 1, v20))
      {
        v32(v15 + v19, v17);
      }
    }

    v21 = v6 + v2[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    v22 = sub_1000C8BBC();
    if (v22 == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v23 + 8))(v21);
    }

    else if (!v22)
    {
    }

    v24 = v6 + v2[9];
    v25 = type metadata accessor for WeatherDataOverrides();
    if (!sub_10000CAFC(v24))
    {
      v26 = type metadata accessor for Date();
      if (!sub_100003EB0(v26))
      {
        sub_100003B20();
        v27 = sub_100025214();
        v28(v27);
      }

      v29 = *(v25 + 20);
      if (!sub_100024D10(v24 + v29, 1, v2))
      {
        sub_100003B20();
        (*(v30 + 8))(v24 + v29, v2);
      }
    }
  }

  sub_10001673C(*(v0 + 28));

  return swift_deallocObject();
}

uint64_t sub_1001C65F0()
{

  return swift_deallocObject();
}

uint64_t sub_1001C6628()
{
  sub_100020DF0();
  type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_100003A0C();
  v0 = type metadata accessor for UUID();
  if (!sub_100020660(v0))
  {
    sub_100003B20();
    v1 = sub_10000C918();
    v2(v1);
  }

  sub_1000C84DC();
  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001C66FC()
{
  sub_100020DF0();
  type metadata accessor for FeelsLikeComponentViewModel(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + *(v0 + 24);
  v5 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  if (!sub_100020660(v5))
  {

    sub_1000BCE68();
    type metadata accessor for TemperatureScaleConfiguration();
    sub_100003D98();
    (*(v6 + 8))(v4);
    v7 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_10001673C(*(v7 + 32));
  }

  sub_10003C540();
  sub_10003C540();
  sub_1000C84DC();
  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001C6810()
{
  sub_100071768();
  v1 = type metadata accessor for DailyForecastComponentViewModel(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for LocationComponentContainerContentView(0);
  sub_100003A0C();
  v7 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v3;

  v9 = v1[5];
  v10 = sub_10022C350(&qword_100CA53F8);
  sub_1000037E8();
  v12 = *(v11 + 8);
  (v12)(v8 + v9, v10);
  (v12)(v8 + v1[6], v10);
  (v12)(v8 + v1[7], v10);

  sub_10002C7B8();
  sub_1000B90D8();
  sub_100031D74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:

      goto LABEL_6;
    case 1u:

      goto LABEL_6;
    case 2u:

      goto LABEL_6;
    case 3u:
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v13 + 8))(v9);
      type metadata accessor for LocationComponentHeaderViewModel.Description(0);
      sub_100021D70();

LABEL_6:

      break;
    default:
      break;
  }

  type metadata accessor for LocationComponentContainerViewModel();
  sub_100020F80();
  switch(sub_100088740())
  {
    case 0u:

      type metadata accessor for AirQualityComponentViewModel();
      sub_10005235C();
      sub_100003D98();
      (*(v14 + 8))(v7 + v10);
      v15 = v1[16];
      goto LABEL_55;
    case 1u:

      (v12)(v7 + v1[5], v10);
      v16 = sub_100020214();
      (v12)(v16);
      v17 = sub_10006A7B8();
      (v12)(v17);
      v18 = v1[8];
      goto LABEL_23;
    case 2u:

      type metadata accessor for FeelsLikeComponentViewModel(0);
      v40 = sub_100041A2C();
      if (!sub_1000138DC(v40))
      {

        sub_10007175C();
        type metadata accessor for TemperatureScaleConfiguration();
        sub_100003D98();
        (*(v41 + 8))(v10);
        type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
        sub_1000BAEF0();
      }

      sub_10000EADC(v1[7]);

      v15 = v1[8];
      goto LABEL_55;
    case 3u:
      v37 = type metadata accessor for UUID();
      if (!sub_100005BB8(v37))
      {
        sub_100022BC0();
        v38 = sub_10002C598();
        v39(v38);
      }

      type metadata accessor for HourlyForecastComponentViewModel(0);
      goto LABEL_56;
    case 4u:
      goto LABEL_56;
    case 5u:
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003D98();
      (*(v19 + 8))(v7);
      v20 = type metadata accessor for MapComponentViewModel();
      sub_100052698();
      type metadata accessor for Location();
      sub_100003D98();
      (*(v21 + 8))(v1 + v7);
      v22 = sub_100071988();
      v23 = type metadata accessor for WeatherData(v22);
      if (!sub_1000138DC(v23))
      {
        v71 = v20;

        v24 = *(v12 + 20);
        v25 = type metadata accessor for Locale();
        if (!sub_10000CAFC(v10 + v24))
        {
          sub_100022BC0();
          (*(v26 + 8))(v10 + v24, v25);
        }

        v27 = *(v12 + 24);
        type metadata accessor for WeatherDataModel();
        sub_100003D98();
        (*(v28 + 8))(v10 + v27);
        v29 = v10 + *(v12 + 28);
        v30 = sub_10022C350(&qword_100CAC710);
        if (!sub_10000CAFC(v29))
        {
          type metadata accessor for Date();
          sub_100003D98();
          v69 = *(v31 + 8);
          v70 = v32;
          v69(v29);
          v30 = *(v30 + 48);
          v33 = type metadata accessor for WeatherDataRelevancy();
          if (!sub_100024D10(v29 + v30, 1, v33))
          {
            (v69)(v29 + v30, v70);
          }
        }

        sub_1001706D8();
        v34 = sub_1000C8BBC();
        if (v34 == 1)
        {
          type metadata accessor for WeatherStatisticsModel();
          sub_100003D98();
          (*(v55 + 8))(v30);
          v20 = v71;
        }

        else
        {
          v20 = v71;
          if (!v34)
          {
          }
        }

        sub_10007175C();
        v56 = type metadata accessor for WeatherDataOverrides();
        if (!sub_1000138DC(v56))
        {
          type metadata accessor for Date();
          v57 = sub_1000175DC();
          v72 = v58;
          if (!sub_100024D10(v57, v59, v58))
          {
            sub_100049884();
            (*(v60 + 8))(v10);
          }

          v61 = sub_100036D44();
          if (!sub_100024D10(v61, v62, v72))
          {
            sub_100049884();
            (*(v63 + 8))(v10 + v30);
          }
        }
      }

      v15 = *(v20 + 28);
      goto LABEL_55;
    case 6u:

      sub_1000453EC();
      if (!v43)
      {
        sub_1002773E8(*(v7 + 16), *(v7 + 24), v42);
      }

      type metadata accessor for MoonComponentViewModel();
      sub_100017954();
      type metadata accessor for Date();
      sub_100003D98();
      (*(v44 + 8))(v7 + v10);
      v15 = v1[10];
      goto LABEL_55;
    case 7u:
      type metadata accessor for NewsArticleComponentViewModel(0);
      if (sub_100088740() == 1)
      {

        type metadata accessor for NewsArticleComponentContentViewModel(0);
        v45 = sub_1000C89D0();
        if (!sub_100037190(v45))
        {
          sub_100022BC0();
          v46 = sub_100040EC0();
          v47(v46);
        }

        sub_10000EADC(*(v10 + 24));

        sub_10003C52C();
        v49 = *(v48 + 8);
        v49(v7 + v50, v1);
        if (!sub_10003BA14())
        {
          v49(v7 + v10, v1);
        }
      }

      break;
    case 8u:

      type metadata accessor for NextHourPrecipitationComponentViewModel();
      sub_100052698();
      type metadata accessor for NextHourPrecipitationChartViewModel();
      goto LABEL_43;
    case 9u:
      type metadata accessor for Location();
      goto LABEL_41;
    case 0xAu:

      goto LABEL_56;
    case 0xBu:
      type metadata accessor for PressureTrend();
      sub_100003D98();
      (*(v35 + 8))(v7);
      type metadata accessor for PressureComponentViewModel();
      sub_10001325C();
      sub_10000EADC(v36);

      sub_10000EADC(v1[6]);

      v18 = v1[7];
LABEL_23:
      sub_10000EADC(v18);

      v15 = v1[9];
LABEL_55:
      sub_10000EADC(v15);
      goto LABEL_56;
    case 0xDu:

      type metadata accessor for SevereAlertComponentViewModel();
      sub_1000B9E54();
LABEL_43:
      sub_100003D98();
      (*(v53 + 8))(v1 + v7);
      break;
    case 0xEu:
      type metadata accessor for SunriseSunsetViewModel();
LABEL_41:
      sub_100003D98();
      (*(v52 + 8))(v7);
      break;
    case 0xFu:

      goto LABEL_56;
    case 0x10u:

      type metadata accessor for UVIndexComponentViewModel();
      sub_100017954();
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v51 + 8))(v7 + v10);
      sub_10000EADC(v1[8]);

      goto LABEL_56;
    case 0x11u:

      goto LABEL_56;
    case 0x12u:

      type metadata accessor for WindComponentViewModel();
      sub_1001924FC();
      sub_100003D98();
      (*(v54 + 8))(v7 + v10);
LABEL_56:

      break;
    default:
      break;
  }

  sub_100502684();
  v64 = sub_1000BCE68();
  v65 = type metadata accessor for LocationComponentAction(v64);
  if (!sub_100020660(v65))
  {
    sub_10000C918();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        type metadata accessor for URL();
        goto LABEL_63;
      case 1u:
        type metadata accessor for WeatherMapOverlayKind();
        goto LABEL_63;
      case 2u:
        type metadata accessor for DetailCondition();
        goto LABEL_63;
      case 4u:
        sub_10022C350(&qword_100CA6688);
        sub_1000BCE68();
        type metadata accessor for Location();
LABEL_63:
        sub_100003D98();
        (*(v66 + 8))(v9);
        break;
      default:
        break;
    }
  }

  sub_1005026F4();
  sub_1000377F8();
  sub_1000E1560();
  sub_1000D3D3C();

  sub_100051A4C();

  return swift_deallocObject();
}

uint64_t sub_1001C73D4()
{
  sub_100020DF0();
  type metadata accessor for AirQualityComponentViewModel();
  sub_100008560();
  sub_1000B97E4();

  v2 = *(v0 + 68);
  type metadata accessor for AttributedString();
  sub_100003D98();
  (*(v3 + 8))(v1 + v2);
  sub_10002418C(*(v0 + 72));

  sub_100018478();
  sub_1000212EC();

  return swift_deallocObject();
}

unint64_t sub_1001C74C8()
{
  result = qword_100CC17F0;
  if (!qword_100CC17F0)
  {
    sub_10022E824(&qword_100CC17F8);
    sub_1001C7580();
    sub_10023FBF4(&qword_100CC1810, &qword_100CC1818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC17F0);
  }

  return result;
}

unint64_t sub_1001C7580()
{
  result = qword_100CC1800;
  if (!qword_100CC1800)
  {
    sub_10022E824(&qword_100CC1808);
    sub_10023FBF4(&qword_100CC1810, &unk_100CC1818);
    sub_100061A3C(&qword_100CC0968, type metadata accessor for RowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC1800);
  }

  return result;
}

uint64_t sub_1001C7690(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001C76EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = type metadata accessor for Text.Sizing();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CDDBB8);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v25[1] = a1;
  sub_1001C905C();
  v10 = v9;
  v12 = v11;
  sub_1001C91A8();
  v14 = sub_1001CA3E0(v10, v12, v13);
  v16 = v15;
  LOBYTE(a1) = v17;
  v19 = v18;

  v28 = v14;
  v29 = v16;
  v30 = a1 & 1;
  v31 = v19;
  static Text.Sizing.adjustsForOversizedCharacters.getter();
  View.textSizing(_:)();
  (*(v3 + 8))(v5, v26);
  sub_10010CD64(v14, v16, a1 & 1);

  KeyPath = swift_getKeyPath();
  v21 = &v8[*(v6 + 36)];
  *v21 = KeyPath;
  *(v21 + 1) = 1;
  v21[16] = 0;
  sub_1001C8568();
  v28 = v22;
  v29 = v23;
  sub_10083DCD0();
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  return sub_1000180EC(v8, &qword_100CDDBB8);
}

uint64_t sub_1001C7944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001C79A8(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v5 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  v82[0] = v7;
  v8 = sub_1000038CC();
  v82[1] = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003848();
  v87 = v10;
  __chkstk_darwin(v11);
  sub_10000E70C();
  v85 = v12;
  v90 = sub_10022C350(&qword_100CC41B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v14 = sub_1000115E8();
  v92 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(v14);
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100003848();
  v84 = v18;
  __chkstk_darwin(v19);
  sub_100003878();
  v89 = v20;
  __chkstk_darwin(v21);
  v23 = v82 - v22;
  __chkstk_darwin(v24);
  sub_10004E424();
  v25 = 0;
  v26 = *(a2 + 16);
  v83 = a2;
  v86 = v26;
  v88 = v16;
  while (1)
  {
    if (v25 == v26)
    {
      return;
    }

    sub_1001113A0(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v25, v3, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    v27 = *(v90 + 48);
    sub_1001113A0(v3, v2, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    sub_1001113A0(v91, v2 + v27, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v29 = sub_10006968C();
      v30 = v89;
      sub_1001113A0(v29, v89, v31);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = sub_10003049C();
        v33 = v87;
        sub_100113754(v32, v87, v34);
        v35 = static Date.== infix(_:_:)();
        v16 = v88;
        if (v35 & 1) != 0 && (static TimeZone.== infix(_:_:)())
        {
          sub_100051A98();
          if (v40)
          {
            if (!v33 || v37 == v36)
            {
LABEL_19:
              sub_1000C89EC();
              v43 = v40 && v41 == v42;
              if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v44 = v89;
                sub_1000C89EC();
                if (v40 && v45 == v46)
                {
                  goto LABEL_70;
                }

                v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v16 = v88;
                if (v48)
                {
                  v44 = v89;
                  goto LABEL_70;
                }
              }
            }

            else
            {
              v38 = (v37 + 40);
              v39 = (v36 + 40);
              while (1)
              {
                v40 = *(v38 - 1) == *(v39 - 1) && *v38 == *v39;
                if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                v38 += 2;
                v39 += 2;
                v33 = (v33 - 1);
                if (!v33)
                {
                  goto LABEL_19;
                }
              }
            }
          }
        }

        sub_10000CC1C();
        sub_100533554(v87, v49);
        v50 = v89;
        goto LABEL_65;
      }

      sub_100071D08();
      sub_100533554(v30, v62);
      v16 = v88;
LABEL_37:
      sub_1000180EC(v2, &qword_100CC41B0);
      goto LABEL_66;
    }

    v54 = v23;
    v55 = sub_10006968C();
    v56 = v84;
    sub_1001113A0(v55, v84, v57);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100533554(v56, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
      v23 = v54;
      goto LABEL_37;
    }

    v58 = v82[0];
    sub_100113754(v2 + v27, v82[0], type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
    sub_1001C8C98(v56, v58);
    v60 = v59;
    sub_100533554(v58, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
    sub_100533554(v56, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
    if (v60)
    {
      goto LABEL_71;
    }

    sub_10003C5A4();
    sub_100533554(v2, v61);
    v26 = v86;
    v16 = v88;
    v23 = v54;
LABEL_66:
    sub_10003C5A4();
    sub_100533554(v3, v79);
    ++v25;
  }

  v51 = sub_10006968C();
  sub_1001113A0(v51, v23, v52);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100071D08();
    sub_100533554(v23, v53);
    goto LABEL_37;
  }

  v63 = sub_10003049C();
  v33 = v85;
  sub_100113754(v63, v85, v64);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static TimeZone.== infix(_:_:)() & 1) == 0 || (sub_100051A98(), !v40))
  {
LABEL_64:
    sub_10000CC1C();
    sub_100533554(v85, v77);
    v50 = v23;
LABEL_65:
    sub_100533554(v50, v33);
    sub_10003C5A4();
    sub_100533554(v2, v78);
    a2 = v83;
    v26 = v86;
    goto LABEL_66;
  }

  if (v33)
  {
    v67 = v66 == v65;
  }

  else
  {
    v67 = 1;
  }

  if (v67)
  {
LABEL_54:
    sub_1000C89EC();
    v73 = v40 && v71 == v72;
    if (v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000C89EC();
      v76 = v40 && v74 == v75;
      if (v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v44 = v23;
LABEL_70:
        sub_10000CC1C();
        sub_100533554(v80, v81);
        sub_100533554(v44, v33);
LABEL_71:
        sub_100533554(v2, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        sub_100533554(v3, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        return;
      }
    }

    goto LABEL_64;
  }

  v68 = (v66 + 40);
  v69 = (v65 + 40);
  while (v33)
  {
    v70 = *(v68 - 1) == *(v69 - 1) && *v68 == *v69;
    if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_64;
    }

    v68 += 2;
    v69 += 2;
    v33 = (v33 - 1);
    if (!v33)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
}

unint64_t sub_1001C8034(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1001C8078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C80C0()
{
  v2 = sub_100031708();
  __chkstk_darwin(v2);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  sub_10001F2D4();
  sub_10011C7D0(v1, v1);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_100004648();
    sub_10011A1F4(v1, v0);
    v4 = *(v0 + 48);
    sub_10001C7A0();
    sub_10011CA44(v0, v5);
  }

  else
  {
    sub_10011CA44(v1, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    return 0;
  }

  return v4;
}

uint64_t sub_1001C81B4()
{
  v2 = sub_100031708();
  __chkstk_darwin(v2);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  sub_10001F2D4();
  sub_10011C7D0(v1, v1);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_100004648();
    sub_10011A1F4(v1, v0);

    sub_10001C7A0();
    sub_10011CA44(v0, v4);
  }

  else
  {
    sub_10011CA44(v1, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  }

  return sub_100004464();
}

uint64_t sub_1001C82B4()
{
  v1 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Locale();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = (v0 + *(type metadata accessor for HourlyForecastComponentView() + 20));
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = v15;
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v23, 0);
    (*(v17 + 8))(v21, v27);
    if (v28 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    static Locale.current.getter();
    Locale.language.getter();
    (*(v10 + 8))(v14, v8);
    v24 = Locale.Language.languageContainsLowCharacters.getter();
    (*(v3 + 8))(v7, v1);
    return v24 & 1;
  }

  if (v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = 0;
  return v24 & 1;
}

void sub_1001C8568()
{
  sub_100020DF0();
  sub_1000871A4();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  sub_1000717C0();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000200F8();
  sub_10001F2D4();
  v6 = sub_10002C598();
  sub_10011C7D0(v6, v7);
  sub_100014AD8();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v10 = sub_100027E24();
    sub_10011A1F4(v10, v11);
    sub_1000422CC();
    sub_10001C7A0();
    v9 = v1;
  }

  else
  {
    sub_100006324();
    sub_10011A1F4(v2, v0);

    sub_10001052C();
    v9 = v0;
  }

  sub_10011CA44(v9, v8);
  sub_1000212EC();
}

uint64_t sub_1001C86B4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v50 = v3;
  v51 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v49 = v5 - v4;
  v44 = type metadata accessor for ScrollIndicatorVisibility();
  sub_1000037C4();
  v43 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CDDA80);
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v45 = sub_10022C350(&qword_100CDDA88);
  sub_1000037C4();
  v42 = v20;
  __chkstk_darwin(v21);
  v23 = &v42 - v22;
  sub_10022C350(&qword_100CDDA90);
  sub_1000037C4();
  v47 = v25;
  v48 = v24;
  __chkstk_darwin(v24);
  v46 = &v42 - v26;
  static Axis.Set.horizontal.getter();
  v52 = v1;
  v54 = v1;
  sub_10022C350(&qword_100CDDA98);
  sub_10083D600();
  ScrollView.init(_:showsIndicators:content:)();
  (*(v13 + 16))(v19, v16, v11);
  ScrollView.scrollsContentToBeginningInRightToLeft.setter();
  v27 = *(v13 + 8);
  v27(v16, v11);
  v28 = v10;
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v30 = static Axis.Set.vertical.getter();
  *(inited + 32) = v30;
  v31 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v31;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v30)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v31)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_1000090E4();
  v34 = sub_100006F64(v32, v33);
  View.scrollIndicators(_:axes:)();
  (*(v43 + 8))(v28, v44);
  v27(v19, v11);
  v35 = v49;
  static AccessibilityChildBehavior.contain.getter();
  v55 = v11;
  v56 = v34;
  sub_100014F8C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v45;
  v38 = v46;
  View.accessibilityElement(children:)();
  (*(v50 + 8))(v35, v51);
  v39 = (*(v42 + 8))(v23, v37);
  __chkstk_darwin(v39);
  sub_10022C350(&qword_100CDDAD0);
  v55 = v37;
  v56 = OpaqueTypeConformance2;
  sub_100005CEC();
  swift_getOpaqueTypeConformance2();
  sub_10083D74C();
  sub_100004C40(&qword_100CDDAE0);
  v40 = v48;
  View.staticIf<A, B>(_:then:)();
  return (*(v47 + 8))(v38, v40);
}

uint64_t sub_1001C8C70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10011E9B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1001C8C98(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6)
    {
      return;
    }

    v7 = *(a1 + 8) == *(a2 + 8) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return;
    }
  }

  else if (v6)
  {
    return;
  }

  v8 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    v9 = sub_1000871A4();
    v10 = sub_100003C48(*(v9 + 36));
    if (sub_1001CA754(v10, v11))
    {
      sub_100005824(v2[10]);
      v14 = v7 && v12 == v13;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100005824(v2[11]);
        v17 = v7 && v15 == v16;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_100005824(v2[12]);
          v20 = v7 && v18 == v19;
          if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            sub_100003C48(v2[13]);
            if (static Date.== infix(_:_:)())
            {
              sub_100003C48(v2[14]);
              if ((static TimeZone.== infix(_:_:)() & 1) != 0 && *(a1 + v2[15]) == *(a2 + v2[15]))
              {

                sub_1001CAA30();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001C8E18(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  sub_10022C350(&qword_100CBC408);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &__src[-v6 - 8];
  v8 = sub_10022C350(&qword_100CBC410);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &__src[-v10 - 8];
  if (v4 == 6)
  {
    sub_1000302D8(v2, v7, &qword_100CBC418);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBC418);
    sub_10047606C();
    sub_1001CD014();
    sub_10003C4E4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1001A0138(a1, __src);
    sub_1000302D8(v2, v11, &qword_100CBC418);
    memcpy(&v11[*(v8 + 36)], __src, 0x62uLL);
    sub_1000302D8(v11, v7, &qword_100CBC410);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBC418);
    sub_10047606C();
    sub_1001CD014();
    sub_10003C4E4();
    _ConditionalContent<>.init(storage:)();
    return sub_1001C8FFC(v11);
  }
}

uint64_t sub_1001C8FFC(uint64_t a1)
{
  sub_10022C350(&qword_100CBC410);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

void sub_1001C905C()
{
  sub_100020DF0();
  sub_1000871A4();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  sub_1000717C0();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000200F8();
  sub_10001F2D4();
  v6 = sub_10002C598();
  sub_10011C7D0(v6, v7);
  sub_100014AD8();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v10 = sub_100027E24();
    sub_10011A1F4(v10, v11);
    sub_1000422CC();
    sub_10001C7A0();
    v9 = v1;
  }

  else
  {
    sub_100006324();
    sub_10011A1F4(v2, v0);

    sub_10001052C();
    v9 = v0;
  }

  sub_10011CA44(v9, v8);
  sub_1000212EC();
}

void sub_1001C91A8()
{
  sub_100020DF0();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_100005384();
  sub_1000717C0();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_100016824();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000200F8();
  sub_10001F2D4();
  v6 = sub_10002C598();
  sub_10011C7D0(v6, v7);
  sub_100014AD8();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v10 = sub_100027E24();
    sub_10011A1F4(v10, v11);

    sub_10001C7A0();
    v9 = v0;
  }

  else
  {
    sub_100006324();
    sub_1000AF5CC();

    sub_10001052C();
    v9 = v1;
  }

  sub_10011CA44(v9, v8);
  sub_1000212EC();
}

uint64_t sub_1001C92F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for WireframeContentManager();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1006A9CCC(&v7[v6], result - v6, v5 + 8 * v3);
  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C93DC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_100073CE4(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1001CB594(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1001CAFF8(result);

  return sub_1001C92F4(v4, a2, 0);
}

uint64_t sub_1001C9480()
{
  sub_1000871A4();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_10002429C();
  sub_10001F2D4();
  sub_10011C7D0(v1, v0);
  sub_1000370B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v17 = sub_100003940();
      sub_10011A1F4(v17, v18);
      sub_1000422CC();
      sub_10001C7A0();
      v16 = v1;
      goto LABEL_7;
    }

    v6 = [objc_opt_self() mainBundle];
    v20 = 0x8000000100AD7540;
    sub_1000080F4();
    v14 = 0xD00000000000001ALL;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v20 = 0x8000000100AD7560;
    sub_1000080F4();
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, *&v9, v11, *&v12, *&v14)._countAndFlagsBits;

  sub_100019B90();
  v16 = v0;
LABEL_7:
  sub_10011CA44(v16, v15);
  return countAndFlagsBits;
}

uint64_t sub_1001C9644(uint64_t a1)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_10000548C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for MapComponentViewModel();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_1001B4294(a1, v16 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v19 = sub_10074B098();
      goto LABEL_14;
    case 18:
      v19 = sub_10074B4B8();
      goto LABEL_14;
    case 5:
      sub_10074DCD4(v17, v13);
      (*(v4 + 16))(v8, v13, v1);
      if ((*(v4 + 88))(v8, v1) != LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]))
      {
        v20 = sub_10074B1A0();
        v25 = sub_10002CA64();
        sub_100192084(v25, v26);
        (*(v4 + 8))(v8, v1);
        return v20 & 1;
      }

      if (sub_10074B2A8())
      {
        v20 = 1;
      }

      else
      {
        v20 = sub_10074B1A0();
      }

      v23 = sub_10002CA64();
      goto LABEL_15;
    case 16:
      v19 = sub_10074B3B0();
      goto LABEL_14;
    case 1:
      v19 = sub_1001CB898();
LABEL_14:
      v20 = v19;
      sub_10000ED8C();
      v23 = v17;
LABEL_15:
      sub_100192084(v23, v22);
      return v20 & 1;
  }

  sub_10000ED8C();
  sub_100192084(v17, v21);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1001C987C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Font.Leading();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  if (a3)
  {
    sub_10018ACBC(a4, v11);
    sub_10000394C(v11);
    if (v18)
    {
      v19 = sub_10001C384();
      v20(v19);
      sub_10000394C(v11);
      if (!v18)
      {
        sub_1001CA7E0(v11);
      }
    }

    else
    {
      (*(v13 + 32))(v17, v11, v12);
    }
  }

  else
  {
    v17 = v15;
    sub_10018ACBC(a4, v8);
    sub_10000394C(v8);
    if (v18)
    {
      v21 = sub_10001C384();
      v22(v21);
      sub_10000394C(v8);
      if (!v18)
      {
        sub_1001CA7E0(v8);
      }
    }

    else
    {
      (*(v13 + 32))(v17, v8, v12);
    }
  }

  v23 = Font.leading(_:)();

  sub_1001CA7E0(a4);
  (*(v13 + 8))(v17, v12);
  return v23;
}

uint64_t sub_1001C9B04()
{
  v2 = sub_100031708();
  __chkstk_darwin(v2);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  sub_10001F2D4();
  sub_10011C7D0(v1, v1);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_10011A1F4(v1, v0);

    sub_10001C7A0();
    sub_10011CA44(v0, v4);
  }

  else
  {
    sub_10011CA44(v1, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  }

  return sub_100004464();
}

uint64_t sub_1001C9C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  sub_1001B7010(a1, a4, type metadata accessor for LocationComponentContainerViewModel);
  v7 = type metadata accessor for ComputeAppropriateLocationComponentHeaderViewModelModifier(0);
  Text.Measurements.init()();
  v8 = v7[6];
  *(a4 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v9 = a4 + v7[7];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a4 + v7[8];
  *v10 = swift_getKeyPath();
  *(v10 + 72) = 0;
  v11 = a4 + v7[9];
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 9) = HIBYTE(a3) & 1;
  v12 = a4 + v7[10];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a4 + v7[11];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v7[12];
  *(a4 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  v15 = a4 + v7[13];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v7[14];
  *(a4 + v16) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001C9E84(uint64_t a1)
{
  v2 = type metadata accessor for AutomationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C9EE0(char a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v25 = a3;
  v30 = a2;
  v7 = sub_10022C350(&qword_100CA34C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_10022C350(&qword_100CC0728);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_10022C350(&qword_100CC0730);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  v33 = a3;
  *(v4 + *(*v4 + 112)) = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v31 = a1;
  Published.init(initialValue:)();
  swift_endAccess();
  LOBYTE(v32) = a1;
  sub_10022C350(&qword_100CC0738);
  swift_allocObject();
  v18 = CurrentValueSubject.init(_:)();
  *(v4 + *(*v4 + 104)) = v18;
  v32 = v18;
  v19 = type metadata accessor for NSRunLoop.SchedulerOptions();
  sub_10001B350(v9, 1, 1, v19);
  sub_10000C70C(0, &qword_100CA34E8);
  sub_10023FBF4(&qword_100CC0740, &qword_100CC0738);
  sub_100042F54();

  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100018198(v9, &qword_100CA34C8);

  sub_10023FBF4(&qword_100CC0748, &qword_100CC0728);
  v20 = v26;
  Publisher.dropFirst(_:)();
  (*(v27 + 8))(v13, v20);
  swift_allocObject();
  swift_weakInit();
  sub_10023FBF4(&qword_100CC0750, &qword_100CC0730);

  v21 = v28;
  Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v17, v21);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v22 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  (*(*(v22 - 8) + 8))(v30, v22);
  return v4;
}

uint64_t sub_1001CA3A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001CA3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a2;
  v20[2] = a3;
  v20[0] = a1;
  v4 = type metadata accessor for TimeStyle();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.Leading();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v3 + *(type metadata accessor for HourlyForecastComponentView() + 20));
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v16, 0);
    (*(v12 + 8))(v14, v11);
    if (v23 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    static Font.footnote.getter();
    goto LABEL_6;
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  static Font.subheadline.getter();
LABEL_6:
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  Font.leading(_:)();

  (*(v8 + 8))(v10, v7);
  Font.bold()();

  type metadata accessor for Style();
  static Style.componentTime.getter();
  v18 = TimeStyle.formatTime(_:periodSymbols:font:)();

  (*(v21 + 8))(v6, v22);
  return v18;
}

uint64_t sub_1001CA728()
{
  type metadata accessor for LocationComponentActionState();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1001CA79C()
{

  sub_1001CAEBC();

  return v0;
}

uint64_t sub_1001CA7E0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CACFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001CA848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  (*(v15 + 8))(v16, v17, v18, v19);
  sub_1000833D8(v12, a6, a7);
  v20 = *(v9 + 8);
  v20(v12, a6);
  sub_1000833D8(v14, a6, a7);
  return (v20)(v14, a6);
}

uint64_t sub_1001CA990(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void sub_1001CAA30()
{
  sub_1000C9128();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1001CAAB4()
{
  sub_1001CAE24();

  return swift_deallocClassInstance();
}

unint64_t sub_1001CAB0C()
{
  result = qword_100CDDBA0;
  if (!qword_100CDDBA0)
  {
    sub_10022E824(&qword_100CBB910);
    sub_1001C8078(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDBA0);
  }

  return result;
}

uint64_t sub_1001CABCC()
{
  v1 = sub_10022C350(&qword_100CABFD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC7Weather27PagingContentOffsetsStorage__offsets;
  v7 = xmmword_100CABEE0;
  v8 = byte_100CABEF0;
  v9 = unk_100CABEF8;
  v10 = byte_100CABF08;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_1001CACE4()
{
  type metadata accessor for PagingContentOffsetsStorage();
  swift_allocObject();
  return sub_1001CABCC();
}

uint64_t sub_1001CAD1C(char a1)
{
  v3 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10001365C();
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v5 = [objc_opt_self() mainRunLoop];
  sub_10022C350(&qword_100CC0720);
  swift_allocObject();
  return sub_1001C9EE0(a1, v1, v5);
}

uint64_t sub_1001CADF0()
{
  sub_1001CA79C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001CAE24()
{

  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC7Weather23WireframeContentManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001CAEBC()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001CB284();
  }

  return result;
}

unint64_t sub_1001CAF14()
{
  result = qword_100CBEC88;
  if (!qword_100CBEC88)
  {
    sub_10022E824(&qword_100CBEC80);
    sub_100006F64(&qword_100CBEC90, &qword_100CBEC78);
    sub_100006F64(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBEC88);
  }

  return result;
}

uint64_t sub_1001CAFFC(unint64_t *a1, uint64_t a2)
{

  v4 = sub_1001CB068(a1, a2);
  result = sub_100073CDC(*a1);
  if (result >= v4)
  {
    return sub_1001C93DC(v4, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CB068(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  result = sub_1001CB4A0(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    v8 = sub_100073CDC(v5);
LABEL_36:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        result = swift_unknownObjectRelease();
        if (v16 != a2)
        {
          if (v8 != v9)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_16;
          }

LABEL_26:
          v15 = __OFADD__(v8++, 1);
          if (v15)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v10)
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 32 + 8 * v9);
        if (v11 != a2)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v10)
            {
              goto LABEL_42;
            }

            v12 = *(v5 + 32 + 8 * v8);

LABEL_16:
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1008FBEE0(v5);
              v13 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            v14 = v5 & 0xFFFFFFFFFFFFFF8;
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v11;

            if ((v5 & 0x8000000000000000) != 0 || v13)
            {
              result = sub_1008FBEE0(v5);
              v5 = result;
              v14 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v14 + 16))
            {
              goto LABEL_43;
            }

            *(v14 + 8 * v9 + 32) = v12;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CB284()
{
  v1 = *(v0 + 56);

  os_unfair_lock_lock((v1 + 24));
  sub_1001CB578((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1001CB2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 24) = 0x3FF0000000000000;
  swift_weakInit();
  ObservationRegistrar.init()();
  *(v6 + 32) = a1;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 17) = a6;
  v12 = a6 & 1;
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  *(v6 + 16) = v13;
  swift_weakAssign();

  if (!v12)
  {

    sub_1009DBD90();
  }

  return v6;
}

uint64_t sub_1001CB3D4()
{
  sub_100071E44();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for LocationStackView();
  sub_100003810(v3);
  v4 = sub_100036EDC();

  return sub_1001CA848(v4, v5, v6, v7, v8, v1, v2);
}

uint64_t sub_1001CB4A0(uint64_t a1, uint64_t a2)
{
  result = sub_100073CDC(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for SizingBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001CB664);
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

uint64_t sub_1001CB68C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationComponentActionState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for DailyComponentForecastRowView()
{
  result = qword_100CBB7B8;
  if (!qword_100CBB7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001CB770()
{
  result = qword_100CC0AD8;
  if (!qword_100CC0AD8)
  {
    sub_10022E824(&qword_100CC0AE0);
    sub_100061A3C(&qword_100CC0AE8, type metadata accessor for LocationComponentContainerContentView);
    sub_1004FB294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0AD8);
  }

  return result;
}

uint64_t sub_1001CB82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyComponentForecastRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CB898()
{
  swift_getKeyPath();
  sub_10001F680();
  sub_10014986C(v1, v2);
  sub_100023108();

  return *(v0 + 35);
}

uint64_t sub_1001CB918()
{
  sub_100020AF8();
  v0 = sub_1001CB898();
  return sub_100005F94(v0);
}

unint64_t sub_1001CB964()
{
  result = qword_100CC0A28;
  if (!qword_100CC0A28)
  {
    sub_10022E824(&qword_100CC0A08);
    sub_10047606C();
    sub_1001CD014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0A28);
  }

  return result;
}

uint64_t sub_1001CB9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CBB8A0);
  return sub_10018AD2C(a1, a2 + *(v4 + 44));
}

uint64_t sub_1001CBA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = sub_10022C350(&qword_100CBB900);
  __chkstk_darwin(v128);
  v120 = &v100 - v4;
  v5 = type metadata accessor for Font.Leading();
  v124 = *(v5 - 8);
  __chkstk_darwin(v5);
  v114 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Font.TextStyle();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for ColorSchemeContrast();
  v132 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v122 = &v100 - v10;
  v11 = sub_10022C350(&qword_100CBB908);
  __chkstk_darwin(v11 - 8);
  v13 = &v100 - v12;
  v116 = sub_10022C350(&qword_100CBB910);
  __chkstk_darwin(v116);
  v119 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v117 = (&v100 - v16);
  __chkstk_darwin(v17);
  v129 = &v100 - v18;
  v19 = sub_10022C350(&qword_100CBB918);
  __chkstk_darwin(v19 - 8);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v100 - v23;
  v25 = type metadata accessor for EnvironmentValues();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DailyComponentForecastRowView();
  v29 = a1 + *(v115 + 72);
  v30 = *v29;
  v126 = *(v29 + 8);
  v127 = v24;
  v121 = v25;
  v130 = v28;
  v131 = v26;
  v118 = v5;
  if (v126 == 1)
  {
    LODWORD(v28) = v30;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = a1;
    v32 = v30;
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v30 = v32;
    a1 = v31;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v30, 0);
    (*(v26 + 8))(v28, v25);
    LODWORD(v28) = v133;
  }

  v34 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (*(a1 + *(v34 + 40) + 8))
  {
    v105 = v34;
    v108 = v30;
    v109 = v21;
    v110 = a2;

    Image.init(systemName:)();
    v35 = v122;
    sub_100463B38(v122);
    v36 = v132;
    v37 = *(v132 + 104);
    v38 = v123;
    v101 = enum case for ColorSchemeContrast.increased(_:);
    v39 = v125;
    v102 = v132 + 104;
    v100 = v37;
    v37(v123);
    v40 = static ColorSchemeContrast.== infix(_:_:)();
    v41 = *(v36 + 8);
    v41(v38, v39);
    v132 = v36 + 8;
    v103 = v41;
    v41(v35, v39);
    v42 = type metadata accessor for Image.TemplateRenderingMode();
    v43 = &enum case for Image.TemplateRenderingMode.template(_:);
    if ((v40 & 1) == 0)
    {
      v43 = &enum case for Image.TemplateRenderingMode.original(_:);
    }

    (*(*(v42 - 8) + 104))(v13, *v43, v42);
    sub_10001B350(v13, 0, 1, v42);
    v44 = Image.renderingMode(_:)();

    sub_1000180EC(v13, &qword_100CBB908);
    v104 = static Font.title3.getter();
    v45 = static Font.body.getter();
    v46 = a1 + *(v115 + 68);
    v47 = *v46;
    v48 = *(v46 + 8) == 1;
    v107 = a1;
    v106 = v28;
    if (!v48)
    {

      static os_log_type_t.fault.getter();
      v49 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v50 = v130;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v47, 0);
      (*(v131 + 8))(v50, v121);
      LOBYTE(v47) = v133;
    }

    v51 = v117;
    v52 = (v117 + *(v116 + 36));
    v53 = type metadata accessor for FontWithSmallVariantModifier();
    v54 = *(v53 + 24);
    v55 = enum case for Font.Leading.tight(_:);
    v56 = v118;
    v116 = *(v124 + 104);
    (v116)(v52 + v54, enum case for Font.Leading.tight(_:), v118);
    sub_10001B350(v52 + v54, 0, 1, v56);
    *v52 = v104;
    v52[1] = v45;
    *(v52 + *(v53 + 28)) = v47 & 1;
    *v51 = v44;
    sub_10011C0F0(v51, v129, &qword_100CBB910);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    if (*(v107 + *(v105 + 52)) == 1)
    {
      v61 = (v107 + *(v105 + 56));
      v62 = v61[1];
      v133 = *v61;
      v134 = v62;
      sub_10002D5A4();

      v117 = Text.init<A>(_:)();
      v64 = v63;
      v66 = v65;
      v115 = v67;
      v68 = v112;
      v69 = v111;
      v70 = v113;
      (*(v112 + 104))(v111, enum case for Font.TextStyle.caption(_:), v113);
      static Font.Weight.bold.getter();
      static Font.system(_:weight:)();
      (*(v68 + 8))(v69, v70);
      v71 = v114;
      (v116)(v114, v55, v56);
      Font.leading(_:)();

      (*(v124 + 8))(v71, v56);
      v72 = v117;
      v73 = Text.font(_:)();
      v75 = v74;
      v77 = v76;

      sub_10010CD64(v72, v64, v66 & 1);

      v78 = v122;
      sub_100463B38(v122);
      v79 = v123;
      v80 = v125;
      v100(v123, v101, v125);
      LOBYTE(v68) = static ColorSchemeContrast.== infix(_:_:)();
      v81 = v103;
      v103(v79, v80);
      v81(v78, v80);
      if (v68)
      {
        static Color.white.getter();
      }

      else
      {
        static Color.cyan.getter();
      }

      v57 = Text.foregroundColor(_:)();
      v58 = v85;
      v87 = v86;
      v60 = v88;

      sub_10010CD64(v73, v75, v77 & 1);

      v59 = v87 & 1;
      sub_10010CD54(v57, v58, v87 & 1);
    }

    v89 = v129;
    v90 = v119;
    sub_1000302D8(v129, v119, &qword_100CBB910);
    v28 = v120;
    sub_1000302D8(v90, v120, &qword_100CBB910);
    v91 = (v28 + *(sub_10022C350(&qword_100CBB928) + 48));
    sub_100148118(v57, v58, v59, v60);
    sub_10014A53C(v57, v58, v59, v60);
    *v91 = v57;
    v91[1] = v58;
    v91[2] = v59;
    v91[3] = v60;
    sub_1000180EC(v89, &qword_100CBB910);
    sub_10014A53C(v57, v58, v59, v60);
    sub_1000180EC(v90, &qword_100CBB910);
    v84 = v127;
    sub_10011C0F0(v28, v127, &qword_100CBB900);
    v82 = 0;
    a2 = v110;
    v83 = v128;
    v21 = v109;
    v30 = v108;
    LOBYTE(v28) = v106;
  }

  else
  {
    v82 = 1;
    v84 = v127;
    v83 = v128;
  }

  sub_10001B350(v84, v82, 1, v83);
  v93 = v130;
  v92 = v131;
  if (!v126)
  {

    static os_log_type_t.fault.getter();
    v94 = v30;
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v94, 0);
    (*(v92 + 8))(v93, v121);
    LOBYTE(v30) = v133;
  }

  if (v28)
  {
    v95 = 0;
  }

  else
  {
    v95 = 0x4020000000000000;
  }

  if (v30)
  {
    v96 = 0;
  }

  else
  {
    v96 = 0x4020000000000000;
  }

  sub_1000302D8(v84, v21, &qword_100CBB918);
  *a2 = v95;
  *(a2 + 8) = 0;
  v97 = sub_10022C350(&qword_100CBB920);
  sub_1000302D8(v21, a2 + *(v97 + 48), &qword_100CBB918);
  v98 = a2 + *(v97 + 64);
  *v98 = v96;
  *(v98 + 8) = 0;
  sub_1000180EC(v84, &qword_100CBB918);
  return sub_1000180EC(v21, &qword_100CBB918);
}

unint64_t sub_1001CC72C()
{
  result = qword_100CC0AA8;
  if (!qword_100CC0AA8)
  {
    sub_10022E824(&qword_100CC0AA0);
    sub_1004FB124();
    sub_1004FB2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0AA8);
  }

  return result;
}

unint64_t sub_1001CC7B8()
{
  result = qword_100CBB8C8;
  if (!qword_100CBB8C8)
  {
    sub_10022E824(&qword_100CBB8B0);
    sub_10033CBA4();
    sub_10018E874(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB8C8);
  }

  return result;
}

unint64_t sub_1001CC874()
{
  result = qword_100CD9A90;
  if (!qword_100CD9A90)
  {
    sub_10022E824(&qword_100CD99F0);
    sub_1001CC98C();
    sub_1001CC900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A90);
  }

  return result;
}

unint64_t sub_1001CC900()
{
  result = qword_100CD9A70;
  if (!qword_100CD9A70)
  {
    sub_10022E824(&qword_100CD99D8);
    sub_1007E8F90();
    sub_1007E9074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A70);
  }

  return result;
}

unint64_t sub_1001CC98C()
{
  result = qword_100CD9A00;
  if (!qword_100CD9A00)
  {
    sub_10022E824(&qword_100CD99F8);
    sub_1007E8C30();
    sub_100006F64(&qword_100CD48A8, &qword_100CD48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A00);
  }

  return result;
}

unint64_t sub_1001CCA44()
{
  result = qword_100CC0A20;
  if (!qword_100CC0A20)
  {
    sub_10022E824(&qword_100CC0A18);
    sub_1001CB964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0A20);
  }

  return result;
}

uint64_t sub_1001CCAE4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for LocationComponentHeaderViewModel(0);
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

    sub_10022C350(&qword_100CA3BD8);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE0);
      sub_100003928();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[7];
      }

      else
      {
        sub_10022C350(&qword_100CAD870);
        sub_100003928();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[11];
        }

        else
        {
          sub_10022C350(&qword_100CEE148);
          sub_100003928();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[13];
          }

          else
          {
            v8 = sub_10022C350(&qword_100CA3BF0);
            v14 = a3[14];
          }
        }
      }
    }

    v9 = a1 + v14;
  }

  return sub_100024D10(v9, a2, v8);
}

unint64_t sub_1001CCCE8()
{
  result = qword_100CC0AD0;
  if (!qword_100CC0AD0)
  {
    sub_10022E824(&qword_100CC0A80);
    sub_1001CB770();
    sub_100061A3C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0AD0);
  }

  return result;
}

__n128 sub_1001CCDA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001CCDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentHeaderViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CCE1C()
{
  sub_10022C350(&qword_100CEE218);
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  sub_10022C350(&qword_100CEE220);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  *v3 = static VerticalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v7 = sub_10022C350(&qword_100CEE228);
  sub_1009F5030(v0, &v3[*(v7 + 44)]);
  sub_10022C350(&qword_100CA7300);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2C3F0;
  *(v8 + 32) = sub_1003572E4();
  *(v8 + 40) = v9;
  sub_100006F64(&qword_100CEE230, &qword_100CEE218);
  sub_10002D5A4();
  View.accessibilityInputLabels<A>(_:)();

  sub_1000180EC(v3, &qword_100CEE218);
  type metadata accessor for LocationComponentHeaderView();
  ModifiedContent<>.accessibilitySortPriority(_:)();
  return sub_1000180EC(v6, &qword_100CEE220);
}

unint64_t sub_1001CD014()
{
  result = qword_100CBC428;
  if (!qword_100CBC428)
  {
    sub_10022E824(&qword_100CBC418);
    sub_1004760F8();
    sub_100006F64(&qword_100CBC3B0, &qword_100CBC3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC428);
  }

  return result;
}

uint64_t type metadata accessor for LocationComponentHeaderView()
{
  result = qword_100CEE1A8;
  if (!qword_100CEE1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CD140()
{
  sub_100003A00();
  type metadata accessor for LocationComponentBackgroundConfiguration.HeaderConfiguration(0);
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001CD17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, uint64_t a15)
{
  v112 = a7;
  v113 = a8;
  v111 = a6;
  v110 = a5;
  v109 = a4;
  v106 = a3;
  v107 = a2;
  v114 = a1;
  v101 = a9;
  v108 = a15;
  v20 = type metadata accessor for DailyComponentRowView(0);
  v21 = (v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10022C350(&qword_100CBC288);
  __chkstk_darwin(v96);
  v98 = &v91 - v24;
  v25 = sub_10022C350(&qword_100CBC290);
  __chkstk_darwin(v25 - 8);
  v97 = &v91 - v26;
  v95 = sub_10022C350(&qword_100CBC298);
  __chkstk_darwin(v95);
  v100 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v94 = &v91 - v29;
  __chkstk_darwin(v30);
  v99 = &v91 - v31;
  v32 = type metadata accessor for PrimaryDividerStyle();
  v105 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Divider();
  v102 = *(v35 - 8);
  __chkstk_darwin(v35);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10022C350(&qword_100CA7280);
  v39 = *(v38 - 8);
  v103 = v38;
  v104 = v39;
  __chkstk_darwin(v38);
  v41 = &v91 - v40;
  v93 = sub_10022C350(&qword_100CBC2A0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v91 - v44;
  Divider.init()();
  static DividerStyle<>.primary.getter();
  v46 = sub_1001CE5C4(&qword_100CA7298, &type metadata accessor for Divider);
  v47 = sub_1001CE5C4(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle);
  View.dividerStyle<A>(_:)();
  (*(v105 + 8))(v34, v32);
  (*(v102 + 8))(v37, v35);
  v48 = v106;
  sub_1001D163C(v114);
  v115 = v35;
  v116 = v32;
  v117 = v46;
  v118 = v47;
  swift_getOpaqueTypeConformance2();
  v49 = v45;
  v50 = v103;
  View.isHidden(_:defaultAccessibilityHidden:)();
  (*(v104 + 8))(v41, v50);
  sub_1001B5618(v48, v23, type metadata accessor for DailyForecastComponentViewModel);
  v51 = type metadata accessor for DailyComponentView(0);
  v52 = v48;
  v53 = (v48 + v51[6]);
  v55 = *v53;
  v54 = v53[1];
  v56 = *(v52 + v51[7]);
  sub_1001B5618(v107, &v23[v21[9]], type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);

  sub_10022C350(&qword_100CBC190);
  State.projectedValue.getter();
  v57 = &v23[v21[7]];
  *v57 = v55;
  *(v57 + 1) = v54;
  v59 = v108;
  v58 = v109;
  *&v23[v21[8]] = v56;
  v60 = v114;
  *&v23[v21[10]] = v114;
  v61 = &v23[v21[11]];
  *v61 = a10;
  v61[1] = a11;
  v62 = &v23[v21[12]];
  *v62 = a12;
  v62[1] = a13;
  *&v23[v21[13]] = a14;
  v63 = &v23[v21[14]];
  *v63 = v58;
  v63[8] = v110 & 1;
  v64 = &v23[v21[15]];
  *v64 = v111;
  v64[8] = v112 & 1;
  v65 = v21[16];
  v66 = v60;
  v23[v65] = v113;
  if (v60 != v59)
  {
    goto LABEL_5;
  }

  if (!*(v52 + v51[13]))
  {
LABEL_11:
    type metadata accessor for ObservableResolver();
    sub_1001CE5C4(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  type metadata accessor for TipCoordinator();

  ObservableResolver.resolve<A>(_:)();

  if (!v115)
  {
    __break(1u);
    goto LABEL_11;
  }

  v67 = sub_1001CB898();

  v68 = 10.0;
  if ((v67 & 1) == 0)
  {
LABEL_5:
    v68 = 0.0;
  }

  v69 = v98;
  sub_1001D1978(v23, v98, type metadata accessor for DailyComponentRowView);
  *(v69 + *(v96 + 36)) = v68;
  if (v66 == v59)
  {
    v70 = 0;
  }

  else
  {
    v70 = 6;
  }

  v71 = v97;
  sub_1001CEADC(v70);
  sub_1000180EC(v69, &qword_100CBC288);
  KeyPath = swift_getKeyPath();
  v73 = static Alignment.bottom.getter();
  v75 = v74;
  v76 = v71;
  v77 = v94;
  sub_10011C0F0(v76, v94, &qword_100CBC290);
  v78 = (v77 + *(v95 + 36));
  *v78 = KeyPath;
  v78[1] = v73;
  v78[2] = v75;
  v79 = v99;
  sub_10011C0F0(v77, v99, &qword_100CBC298);
  v80 = v92;
  v81 = *(v92 + 16);
  v82 = v91;
  v83 = v49;
  v84 = v49;
  v85 = v93;
  v81(v91, v84, v93);
  v86 = v100;
  sub_1000302D8(v79, v100, &qword_100CBC298);
  v87 = v101;
  v81(v101, v82, v85);
  v88 = sub_10022C350(&qword_100CBC2A8);
  sub_1000302D8(v86, &v87[*(v88 + 48)], &qword_100CBC298);
  sub_1000180EC(v79, &qword_100CBC298);
  v89 = *(v80 + 8);
  v89(v83, v85);
  sub_1000180EC(v86, &qword_100CBC298);
  return (v89)(v82, v85);
}

uint64_t sub_1001CDB0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100198A68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1001CDB3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1001CDBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a3;
  v64 = a1;
  v80 = a5;
  v8 = type metadata accessor for AccessibilityTraits();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessibilityChildBehavior();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for EnvironmentValues();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ColorSchemeContrast();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = sub_10022C350(&qword_100CEE2F8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v59 - v22;
  v65 = sub_10022C350(&qword_100CEE300);
  __chkstk_darwin(v65);
  v66 = &v59 - v24;
  v70 = sub_10022C350(&qword_100CEE308);
  __chkstk_darwin(v70);
  v67 = &v59 - v25;
  v73 = sub_10022C350(&qword_100CEE310);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = &v59 - v26;
  v27 = sub_10022C350(&qword_100CEE318);
  __chkstk_darwin(v27 - 8);
  v72 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v69 = &v59 - v30;
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v31 = sub_10022C350(&qword_100CEE320);
  sub_1009F6780(v5, v64, a2, v63 & 1, a4, &v23[*(v31 + 44)]);
  v32 = &v23[*(v21 + 44)];
  v33 = *(sub_10022C350(&qword_100CA5510) + 28);
  v34 = enum case for Text.Case.uppercase(_:);
  v35 = type metadata accessor for Text.Case();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  sub_10001B350(v32 + v33, 0, 1, v35);
  *v32 = swift_getKeyPath();
  sub_1009F4CF0(v19);
  (*(v14 + 104))(v16, enum case for ColorSchemeContrast.increased(_:), v13);
  LOBYTE(v35) = static ColorSchemeContrast.== infix(_:_:)();
  v36 = *(v14 + 8);
  v36(v16, v13);
  v36(v19, v13);
  if (v35)
  {
    goto LABEL_2;
  }

  v38 = v5 + *(type metadata accessor for LocationComponentHeaderView() + 40);
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v40 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v41 = v60;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v39, 0);
    (*(v61 + 8))(v41, v62);
    if (v81 != 1)
    {
LABEL_7:
      v37 = static HierarchicalShapeStyle.tertiary.getter();
      goto LABEL_8;
    }
  }

LABEL_2:
  v37 = static HierarchicalShapeStyle.primary.getter();
LABEL_8:
  v42 = v37;
  v43 = v66;
  sub_10011C0F0(v23, v66, &qword_100CEE2F8);
  *(v43 + *(v65 + 36)) = v42;
  v44 = v70;
  v45 = *(v70 + 36);
  v46 = enum case for BlendMode.plusLighter(_:);
  v47 = type metadata accessor for BlendMode();
  v48 = v67;
  (*(*(v47 - 8) + 104))(&v67[v45], v46, v47);
  sub_10011C0F0(v43, v48, &qword_100CEE300);
  v49 = v74;
  static AccessibilityChildBehavior.combine.getter();
  v50 = sub_1009F97E4();
  v51 = v68;
  View.accessibilityElement(children:)();
  (*(v75 + 8))(v49, v76);
  sub_1000180EC(v48, &qword_100CEE308);
  v52 = v77;
  static AccessibilityTraits.isHeader.getter();
  v81 = v44;
  v82 = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v69;
  v54 = v73;
  View.accessibilityAddTraits(_:)();
  (*(v78 + 8))(v52, v79);
  (*(v71 + 8))(v51, v54);
  v55 = v72;
  sub_1000302D8(v53, v72, &qword_100CEE318);
  v56 = v80;
  sub_1000302D8(v55, v80, &qword_100CEE318);
  v57 = v56 + *(sub_10022C350(&qword_100CEE350) + 48);
  *v57 = 0;
  *(v57 + 8) = 0;
  sub_1000180EC(v53, &qword_100CEE318);
  return sub_1000180EC(v55, &qword_100CEE318);
}

unint64_t sub_1001CE438()
{
  result = qword_100CBC3F0;
  if (!qword_100CBC3F0)
  {
    sub_10022E824(&qword_100CBC3D8);
    sub_1001CE5C4(&qword_100CBC3F8, type metadata accessor for DailyComponentForecastRowViewLargeText);
    sub_1001CE5C4(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC3F0);
  }

  return result;
}

unint64_t sub_1001CE524()
{
  result = qword_100CABDE8;
  if (!qword_100CABDE8)
  {
    type metadata accessor for PrimitiveButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CABDE8);
  }

  return result;
}

uint64_t sub_1001CE57C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CE5C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CE60C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001CE654()
{
  result = qword_100CBC3E0;
  if (!qword_100CBC3E0)
  {
    sub_10022E824(&qword_100CBC3C0);
    sub_1001CE5C4(&qword_100CBC3E8, type metadata accessor for DailyComponentForecastRowView);
    sub_1001CE5C4(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC3E0);
  }

  return result;
}

unint64_t sub_1001CE740()
{
  v0 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10013C79C(319, &qword_100CBB7C8, sub_10000F868, &type metadata accessor for Measurement);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1001CDB3C(319, &qword_100CBB7D0, &qword_100CA53F8, &unk_100A3B3E0, &type metadata accessor for Optional);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          v0 = sub_10013DB50();
          if (v8 <= 0x3F)
          {
            sub_1001CDB3C(319, &qword_100CABD88, &unk_100CABD90, &unk_100A3AC70, &type metadata accessor for Binding);
            v0 = v9;
            if (v10 <= 0x3F)
            {
              sub_1001D17EC(319, &qword_100CB2B38, sub_1001BB6FC, &type metadata for CGFloat, &type metadata accessor for ScaledMetric);
              v0 = v11;
              if (v12 <= 0x3F)
              {
                sub_1001D17EC(319, &qword_100CBB7D8, sub_10014AB54, &type metadata for Double, &type metadata accessor for ScaledValue);
                v0 = v13;
                if (v14 <= 0x3F)
                {
                  sub_10009BE44(319, &qword_100CE0E20);
                  v0 = v15;
                  if (v16 <= 0x3F)
                  {
                    sub_10009BE44(319, &qword_100CACE80);
                    if (v18 > 0x3F)
                    {
                      return v17;
                    }

                    else
                    {
                      sub_10013C79C(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
                      v0 = v19;
                      if (v20 <= 0x3F)
                      {
                        sub_10013C79C(319, &qword_100CBB7E0, type metadata accessor for FrameContainer, &type metadata accessor for State);
                        v0 = v21;
                        if (v22 <= 0x3F)
                        {
                          sub_1001CDB3C(319, &qword_100CBB7E8, &unk_100CB2CF0, &unk_100A2D7F0, &type metadata accessor for State);
                          v0 = v23;
                          if (v24 <= 0x3F)
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
      }
    }
  }

  return v0;
}

uint64_t sub_1001CEADC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = sub_10022C350(&qword_100CBC2B0);
  __chkstk_darwin(v5);
  v7 = &__src[-v6 - 8];
  v8 = sub_10022C350(&qword_100CBC2B8);
  __chkstk_darwin(v8);
  v10 = &__src[-v9 - 8];
  if (v4 == 6)
  {
    sub_1000302D8(v2, v7, &qword_100CBC288);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBC288);
    sub_100475D6C();
    sub_1001CFB08();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1001A0138(a1, __src);
    sub_1000302D8(v2, v10, &qword_100CBC288);
    memcpy(&v10[*(v8 + 36)], __src, 0x62uLL);
    sub_1000302D8(v10, v7, &qword_100CBC2B8);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBC288);
    sub_100475D6C();
    sub_1001CFB08();
    _ConditionalContent<>.init(storage:)();
    return sub_1000180EC(v10, &qword_100CBC2B8);
  }
}

unint64_t sub_1001CED10()
{
  result = qword_100CBB938;
  if (!qword_100CBB938)
  {
    sub_10022E824(&qword_100CBB878);
    sub_10022E824(&qword_100CBB868);
    sub_10022E824(&qword_100CBB860);
    type metadata accessor for DailyForecastRowViewButtonStyle(255);
    sub_100006F64(&qword_100CBB890, &qword_100CBB860);
    sub_10018E874(&qword_100CBB898, type metadata accessor for DailyForecastRowViewButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10018E874(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB938);
  }

  return result;
}

uint64_t sub_1001CEEC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TrackExposureModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_1001CF128(v1, &v17 - v9);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1001CF1AC(v10, v12 + v11);
  sub_10022C350(&qword_100CD3B78);
  sub_1001CF210();
  View.onScrollVisibilityChange(threshold:_:)();

  sub_1001CF128(v1, v10);
  v13 = swift_allocObject();
  sub_1001CF1AC(v10, v13 + v11);
  sub_1001CF128(v2, v7);
  v14 = swift_allocObject();
  sub_1001CF1AC(v7, v14 + v11);
  result = sub_10022C350(&qword_100CD3B88);
  v16 = a1 + *(result + 36);
  *v16 = sub_1006F48AC;
  *(v16 + 8) = v13;
  *(v16 + 16) = sub_1006F490C;
  *(v16 + 24) = v14;
  *(v16 + 32) = sub_1001CF3D0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  return result;
}

uint64_t sub_1001CF128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrackExposureModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CF1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrackExposureModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001CF210()
{
  result = qword_100CD3B80;
  if (!qword_100CD3B80)
  {
    sub_10022E824(&qword_100CD3B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3B80);
  }

  return result;
}

void sub_1001CF274()
{
  sub_1001D1874();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1001CF314()
{
  result = qword_100CBC400;
  if (!qword_100CBC400)
  {
    sub_10022E824(&qword_100CBC3C8);
    sub_1001CE654();
    sub_1001CE5C4(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC400);
  }

  return result;
}

uint64_t sub_1001CF3D0()
{
  type metadata accessor for VisibilityStateHolder();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1001CF41C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VisibilityStateHolder();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001CF45C()
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

uint64_t sub_1001CF4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = *(v3 + 32);
  v27 = *(v3 + 48);
  v6 = swift_allocObject();
  v7 = *(v3 + 16);
  *(v6 + 16) = *v3;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v3 + 32);
  *(v6 + 64) = *(v3 + 48);
  v8 = sub_10022C350(&qword_100CD7B78);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_10022C350(&qword_100CD7B80) + 36));
  *v9 = sub_100197920;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  v11 = *(v3 + 16);
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v3 + 32);
  *(v10 + 64) = *(v3 + 48);
  v12 = (a2 + *(sub_10022C350(&qword_100CD7B88) + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_1007A9240;
  v12[3] = v10;
  v13 = objc_opt_self();

  sub_1001CF8CC(&v26, v25);

  sub_1001CF8CC(&v26, v25);
  v14 = [v13 defaultCenter];
  v15 = sub_10022C350(&qword_100CD7B98);
  NSNotificationCenter.publisher(for:object:)();

  v16 = swift_allocObject();
  v17 = *(v3 + 16);
  *(v16 + 16) = *v3;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v3 + 32);
  *(v16 + 64) = *(v3 + 48);
  v18 = (a2 + *(v15 + 56));
  *v18 = sub_1007A9260;
  v18[1] = v16;

  sub_1001CF8CC(&v26, v25);
  v19 = [v13 defaultCenter];
  v20 = sub_10022C350(&qword_100CD7BA0);
  NSNotificationCenter.publisher(for:object:)();

  v21 = swift_allocObject();
  v22 = *(v3 + 16);
  *(v21 + 16) = *v3;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v3 + 32);
  *(v21 + 64) = *(v3 + 48);
  v23 = (a2 + *(v20 + 56));
  *v23 = sub_1007A92CC;
  v23[1] = v21;

  return sub_1001CF8CC(&v26, v25);
}

uint64_t type metadata accessor for FrameContainer()
{
  result = qword_100CD77B8;
  if (!qword_100CD77B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CF8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD7B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001CF93C()
{
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1001BB280(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000077F0();
      if (v2 <= 0x3F)
      {
        sub_10013DB50();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            sub_1001BB280(319, &qword_100CBB7E0, type metadata accessor for FrameContainer, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_1001D1874();
              if (v6 <= 0x3F)
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

uint64_t type metadata accessor for DailyComponentForecastRowViewLargeText()
{
  result = qword_100CC2828;
  if (!qword_100CC2828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001CFB08()
{
  result = qword_100CBC2C8;
  if (!qword_100CBC2C8)
  {
    sub_10022E824(&qword_100CBC288);
    sub_1001CE5C4(&qword_100CBC2D0, type metadata accessor for DailyComponentRowView);
    sub_100006F64(&unk_100CE1820, &qword_100CB3618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC2C8);
  }

  return result;
}

uint64_t sub_1001CFC0C()
{
  sub_10022E824(&qword_100CABDC8);
  sub_100191558();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001CFC70@<X0>(uint64_t a1@<X8>)
{
  v209 = a1;
  v203 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v203);
  v202 = &v183[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v201 = &v183[-v4];
  v5 = sub_10022C350(qword_100CA5418);
  __chkstk_darwin(v5 - 8);
  v215 = &v183[-v6];
  v219 = sub_10022C350(&qword_100CA53F8);
  v214 = *(v219 - 8);
  __chkstk_darwin(v219);
  v213 = &v183[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v212 = &v183[-v9];
  v10 = type metadata accessor for DailyComponentForecastRowView();
  __chkstk_darwin(v10);
  v12 = &v183[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v197 = sub_10022C350(&qword_100CBC3C0);
  __chkstk_darwin(v197);
  v14 = &v183[-v13];
  v15 = sub_10022C350(&qword_100CBC3C8);
  __chkstk_darwin(v15);
  v17 = &v183[-v16];
  v207 = sub_10022C350(&qword_100CBC3D0);
  __chkstk_darwin(v207);
  v208 = &v183[-v18];
  v204 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v204);
  v205 = &v183[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v216 = sub_10022C350(&qword_100CABDF8);
  __chkstk_darwin(v216);
  v200 = &v183[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v183[-v22];
  __chkstk_darwin(v24);
  v192 = &v183[-v25];
  v26 = sub_10022C350(&unk_100CABD90);
  __chkstk_darwin(v26 - 8);
  v188 = &v183[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v198 = &v183[-v29];
  __chkstk_darwin(v30);
  v199 = &v183[-v31];
  __chkstk_darwin(v32);
  v187 = &v183[-v33];
  __chkstk_darwin(v34);
  v36 = &v183[-v35];
  __chkstk_darwin(v37);
  v39 = &v183[-v38];
  __chkstk_darwin(v40);
  v186 = &v183[-v41];
  __chkstk_darwin(v42);
  v195 = &v183[-v43];
  __chkstk_darwin(v44);
  v46 = &v183[-v45];
  v210 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  __chkstk_darwin(v210);
  v211 = &v183[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v189 = &v183[-v49];
  __chkstk_darwin(v50);
  v196 = &v183[-v51];
  v194 = type metadata accessor for DailyComponentForecastRowViewLargeText();
  __chkstk_darwin(v194);
  v193 = &v183[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v206 = sub_10022C350(&qword_100CBC3D8);
  __chkstk_darwin(v206);
  v190 = &v183[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v54);
  v191 = &v183[-v55];
  v56 = type metadata accessor for DailyComponentRowView(0);
  v57 = *(v1 + v56[14]);
  v217 = v56;
  v218 = v1;
  if (v57 != 1 || (v58 = v1 + v56[12], (v58[8] & 1) != 0) || (v59 = v1 + v56[13], (v59[8] & 1) != 0))
  {
    v193 = v12;
    v194 = v10;
    v190 = v14;
    v191 = v17;
    v192 = v15;
    v60 = v56[7];
    sub_1001B5618(&v60[v1], v211, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    v61 = v39;
    v62 = type metadata accessor for DailyForecastComponentViewModel(0);
    v63 = v23;
    v64 = v36;
    v65 = *(v214 + 16);
    v66 = v219;
    (v65)(v212, v1 + *(v62 + 24), v219);
    v185 = v62;
    v67 = v1 + *(v62 + 28);
    v186 = v65;
    (v65)(v213, v67, v66);
    v68 = v64;
    v69 = v63;
    v196 = v60;
    sub_1001B5618(&v60[v1], v61, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    v70 = v210;
    sub_10001B350(v61, 0, 1, v210);
    v195 = *v1;
    sub_1001D2368(v195, v68);
    v71 = *(v216 + 48);
    sub_1000302D8(v61, v63, &unk_100CABD90);
    sub_1000302D8(v68, v63 + v71, &unk_100CABD90);
    if (sub_100024D10(v63, 1, v70) == 1)
    {
      sub_1000180EC(v68, &unk_100CABD90);
      v70 = v210;
      sub_1000180EC(v61, &unk_100CABD90);
      v72 = sub_100024D10(v63 + v71, 1, v70);
      v73 = v219;
      v74 = v194;
      v75 = v193;
      if (v72 == 1)
      {
        sub_1000180EC(v69, &unk_100CABD90);
        v76 = v218;
        v77 = v199;
        v78 = v198;
        goto LABEL_11;
      }
    }

    else
    {
      v79 = v187;
      sub_1000302D8(v63, v187, &unk_100CABD90);
      if (sub_100024D10(v63 + v71, 1, v70) != 1)
      {
        v82 = v63 + v71;
        v83 = v189;
        sub_1001D1978(v82, v189, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        v184 = sub_1001D1BB8(v79, v83);
        sub_1001B5728(v83, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        sub_1000180EC(v68, &unk_100CABD90);
        sub_1000180EC(v61, &unk_100CABD90);
        v70 = v210;
        sub_1001B5728(v79, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        sub_1000180EC(v63, &unk_100CABD90);
        v76 = v218;
        v73 = v219;
        v77 = v199;
        v78 = v198;
        v74 = v194;
        v75 = v193;
        if ((v184 & 1) == 0)
        {
          v80 = 1;
          v81 = v215;
LABEL_16:
          sub_10001B350(v81, v80, 1, v73);
          v99 = (v76 + v217[9]);
          v100 = *v99;
          v101 = v99[1];
          v102 = (v76 + v217[10]);
          v103 = *v102;
          v104 = v102[1];
          v105 = *(v76 + v217[11]);
          v106 = v217[6];
          v107 = v76 + v217[5];
          v108 = *(v107 + 8);
          v199 = *v107;
          v109 = *(v76 + v106);
          sub_1001B5618(&v196[v76], v77, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
          sub_10001B350(v77, 0, 1, v70);
          sub_1001D194C(v195);
          v110 = *(v216 + 48);
          v111 = v200;
          sub_1000302D8(v77, v200, &unk_100CABD90);
          sub_1000302D8(v78, &v111[v110], &unk_100CABD90);
          v112 = sub_100024D10(v111, 1, v70);
          v210 = v108;
          if (v112 == 1)
          {

            sub_1000180EC(v78, &unk_100CABD90);
            sub_1000180EC(v77, &unk_100CABD90);
            v113 = sub_100024D10(&v111[v110], 1, v70);
            v114 = v218;
            if (v113 == 1)
            {
              sub_1000180EC(v111, &unk_100CABD90);
              v115 = 1;
LABEL_23:
              v119 = v217;
              sub_10022C350(&qword_100CABD18);
              Binding.projectedValue.getter();
              *(v75 + v74[20]) = swift_getKeyPath();
              sub_10022C350(&qword_100CA71B0);
              swift_storeEnumTagMultiPayload();
              sub_1001D1978(v211, v75, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
              v120 = *(v214 + 32);
              v121 = v219;
              v120(v75 + v74[5], v212, v219);
              v120(v75 + v74[6], v213, v121);
              sub_10011C0F0(v215, v75 + v74[7], qword_100CA5418);
              v122 = (v75 + v74[8]);
              *v122 = v100;
              v122[1] = v101;
              v123 = (v75 + v74[9]);
              *v123 = v103;
              v123[1] = v104;
              *(v75 + v74[10]) = v105;
              v124 = (v75 + v74[11]);
              v125 = v210;
              *v124 = v199;
              v124[1] = v125;
              *(v75 + v74[12]) = v109;
              *(v75 + v74[13]) = v115 & 1;
              v220._countAndFlagsBits = 0x4049000000000000;
              sub_1001BB6FC();
              ScaledMetric.init(wrappedValue:)();
              v220._countAndFlagsBits = 0x4010000000000000;
              v221 = 0x3FF0000000000000;
              sub_10014AB54();
              ScaledValue.init(wrappedValue:step:)();
              v126 = v75 + v74[17];
              *v126 = swift_getKeyPath();
              *(v126 + 8) = 0;
              v127 = v75 + v74[18];
              *v127 = swift_getKeyPath();
              *(v127 + 8) = 0;
              v128 = v75 + v74[19];
              *v128 = swift_getKeyPath();
              *(v128 + 8) = 0;
              v129 = (v75 + v74[21]);
              type metadata accessor for FrameContainer();
              v130 = swift_allocObject();
              *(v130 + 16) = 0u;
              *(v130 + 32) = 0u;
              ObservationRegistrar.init()();
              v221 = v130;
              State.init(wrappedValue:)();
              object = v220._object;
              *v129 = v220._countAndFlagsBits;
              v129[1] = object;
              v132 = type metadata accessor for Date();
              v133 = v201;
              sub_10001B350(v201, 1, 1, v132);
              sub_1000302D8(v133, v202, &unk_100CB2CF0);
              State.init(wrappedValue:)();
              result = sub_1000180EC(v133, &unk_100CB2CF0);
              v220._countAndFlagsBits = 1601790308;
              v220._object = 0xE400000000000000;
              v135 = *(v114 + v119[8]);
              v136 = __OFADD__(v135, 1);
              v137 = v135 + 1;
              if (!v136)
              {
                v221 = v137;
                v138._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v138);

                v139 = v220._object;
                v140 = v205;
                *v205 = v220._countAndFlagsBits;
                *(v140 + 8) = v139;
                type metadata accessor for AutomationCellInfo(0);
                swift_storeEnumTagMultiPayload();
                swift_storeEnumTagMultiPayload();
                v141 = v190;
                v142 = &v190[*(v197 + 36)];
                v143 = type metadata accessor for AutomationInfoProperty();
                sub_1001B5618(v140, &v142[*(v143 + 24)], type metadata accessor for AutomationInfo);
                sub_1001B5728(v140, type metadata accessor for AutomationInfo);
                *v142 = 0;
                *(v142 + 1) = 0xE000000000000000;
                *(v142 + 2) = swift_getKeyPath();
                v142[24] = 0;
                sub_1001D1978(v75, v141, type metadata accessor for DailyComponentForecastRowView);
                v144 = [objc_opt_self() mainBundle];
                v222._object = 0x8000000100ACA9E0;
                v145._object = 0x8000000100ACA9C0;
                v222._countAndFlagsBits = 0xD00000000000004FLL;
                v145._countAndFlagsBits = 0xD00000000000001ALL;
                v146._countAndFlagsBits = 0;
                v146._object = 0xE000000000000000;
                v147 = NSLocalizedString(_:tableName:bundle:value:comment:)(v145, 0, v144, v146, v222);

                v220 = v147;
                sub_1001CE654();
                sub_10002D5A4();
                v148 = v191;
                View.accessibilityHint<A>(_:)();

                sub_1000180EC(v141, &qword_100CBC3C0);
                v149 = &qword_100CBC3C8;
                sub_1000302D8(v148, v208, &qword_100CBC3C8);
                swift_storeEnumTagMultiPayload();
                sub_1001CE438();
                sub_1001CF314();
                _ConditionalContent<>.init(storage:)();
                v150 = v148;
                return sub_1000180EC(v150, v149);
              }

              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            v116 = v188;
            sub_1000302D8(v111, v188, &unk_100CABD90);
            if (sub_100024D10(&v111[v110], 1, v70) != 1)
            {
              v117 = v116;
              v118 = v189;
              sub_1001D1978(&v111[v110], v189, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);

              v115 = sub_1001D1BB8(v117, v118);
              sub_1001B5728(v118, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
              sub_1000180EC(v78, &unk_100CABD90);
              sub_1000180EC(v77, &unk_100CABD90);
              sub_1001B5728(v117, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
              sub_1000180EC(v111, &unk_100CABD90);
              v114 = v218;
              goto LABEL_23;
            }

            sub_1000180EC(v78, &unk_100CABD90);
            sub_1000180EC(v77, &unk_100CABD90);
            sub_1001B5728(v116, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
            v114 = v218;
          }

          sub_1000180EC(v111, &qword_100CABDF8);
          v115 = 0;
          goto LABEL_23;
        }

LABEL_11:
        v81 = v215;
        (v186)(v215, v76 + *(v185 + 20), v73);
        v80 = 0;
        goto LABEL_16;
      }

      sub_1000180EC(v68, &unk_100CABD90);
      sub_1000180EC(v61, &unk_100CABD90);
      sub_1001B5728(v79, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      v73 = v219;
      v74 = v194;
      v75 = v193;
    }

    sub_1000180EC(v69, &qword_100CABDF8);
    v80 = 1;
    v76 = v218;
    v81 = v215;
    v77 = v199;
    v78 = v198;
    goto LABEL_16;
  }

  v84 = *v58;
  v85 = *v59;
  v86 = v56[7];
  v87 = v56;
  sub_1001B5618(v1 + v86, v196, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  v88 = v87[6];
  v89 = (v1 + v87[5]);
  v91 = *v89;
  v90 = v89[1];
  v92 = *(v1 + v88);
  v93 = v46;
  sub_1001B5618(v1 + v86, v46, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  v94 = v210;
  sub_10001B350(v46, 0, 1, v210);
  v95 = v195;
  sub_1001D194C(*v1);
  v96 = *(v216 + 48);
  v97 = v192;
  sub_1000302D8(v93, v192, &unk_100CABD90);
  sub_1000302D8(v95, &v97[v96], &unk_100CABD90);
  if (sub_100024D10(v97, 1, v94) == 1)
  {

    sub_1000180EC(v95, &unk_100CABD90);
    sub_1000180EC(v93, &unk_100CABD90);
    if (sub_100024D10(&v97[v96], 1, v94) == 1)
    {
      sub_1000180EC(v97, &unk_100CABD90);
      v98 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v151 = v186;
  sub_1000302D8(v97, v186, &unk_100CABD90);
  if (sub_100024D10(&v97[v96], 1, v94) == 1)
  {

    sub_1000180EC(v195, &unk_100CABD90);
    sub_1000180EC(v93, &unk_100CABD90);
    sub_1001B5728(v151, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
LABEL_28:
    sub_1000180EC(v97, &qword_100CABDF8);
    v98 = 0;
    goto LABEL_30;
  }

  v152 = v189;
  sub_1001D1978(&v97[v96], v189, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);

  v98 = sub_1001D1BB8(v151, v152);
  sub_1001B5728(v152, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  sub_1000180EC(v195, &unk_100CABD90);
  sub_1000180EC(v93, &unk_100CABD90);
  sub_1001B5728(v151, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  sub_1000180EC(v97, &unk_100CABD90);
LABEL_30:
  v154 = v217;
  v153 = v218;
  v155 = v217[10];
  v156 = (v218 + v217[9]);
  v157 = *v156;
  v158 = v156[1];
  v159 = *(v218 + v155);
  v160 = *(v218 + v155 + 8);
  v161 = *(v218 + v217[11]);
  v162 = v194;
  sub_10022C350(&qword_100CABD18);
  v163 = v193;
  v164 = v193;
  Binding.projectedValue.getter();
  *(v163 + v162[5]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_1001D1978(v196, v163, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  v166 = v163 + v162[6];
  *v166 = KeyPath;
  *(v166 + 8) = 0;
  v167 = v163 + v162[7];
  *v167 = swift_getKeyPath();
  *(v167 + 8) = 0;
  v168 = (v163 + v162[8]);
  *v168 = v91;
  v168[1] = v90;
  *(v163 + v162[9]) = v92;
  *(v163 + v162[10]) = v98 & 1;
  v169 = (v163 + v162[11]);
  *v169 = v157;
  v169[1] = v158;
  v170 = (v163 + v162[12]);
  *v170 = v159;
  v170[1] = v160;
  *(v163 + v162[13]) = v161;
  *(v163 + v162[14]) = v84;
  *(v163 + v162[15]) = v85;
  v171 = (v163 + v162[16]);
  type metadata accessor for FrameContainer();
  v172 = swift_allocObject();
  *(v172 + 16) = 0u;
  *(v172 + 32) = 0u;
  ObservationRegistrar.init()();
  v221 = v172;
  result = State.init(wrappedValue:)();
  v173 = v220._object;
  *v171 = v220._countAndFlagsBits;
  v171[1] = v173;
  v220._countAndFlagsBits = 1601790308;
  v220._object = 0xE400000000000000;
  v174 = *(v153 + v154[8]);
  v136 = __OFADD__(v174, 1);
  v175 = v174 + 1;
  if (!v136)
  {
    v221 = v175;
    v176._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v176);

    v177 = v220._object;
    v178 = v205;
    *v205 = v220._countAndFlagsBits;
    *(v178 + 8) = v177;
    type metadata accessor for AutomationCellInfo(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v179 = v190;
    v180 = &v190[*(v206 + 36)];
    v181 = type metadata accessor for AutomationInfoProperty();
    sub_1001B5618(v178, &v180[*(v181 + 24)], type metadata accessor for AutomationInfo);
    sub_1001B5728(v178, type metadata accessor for AutomationInfo);
    *v180 = 0;
    *(v180 + 1) = 0xE000000000000000;
    *(v180 + 2) = swift_getKeyPath();
    v180[24] = 0;
    sub_1001D1978(v164, v179, type metadata accessor for DailyComponentForecastRowViewLargeText);
    v149 = &qword_100CBC3D8;
    v182 = v191;
    sub_10011C0F0(v179, v191, &qword_100CBC3D8);
    sub_1000302D8(v182, v208, &qword_100CBC3D8);
    swift_storeEnumTagMultiPayload();
    sub_1001CE438();
    sub_1001CF314();
    _ConditionalContent<>.init(storage:)();
    v150 = v182;
    return sub_1000180EC(v150, v149);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1001D160C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceTransparency.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001D163C(uint64_t a1)
{
  v3 = sub_10022C350(&unk_100CABD90);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DailyComponentView(0);
  sub_10022C350(&qword_100CBC190);
  State.wrappedValue.getter();
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    sub_1000180EC(v5, &unk_100CABD90);
    return 0;
  }

  sub_1001D1978(v5, v8, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  v9 = sub_100529E20(v8, *v1);
  v11 = v10;
  result = sub_1001B5728(v8, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  if (v11)
  {
    return 0;
  }

  if (v9 == a1)
  {
    return 1;
  }

  if (!__OFSUB__(a1, 1))
  {
    return v9 == a1 - 1;
  }

  __break(1u);
  return result;
}

void sub_1001D17EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1001D1874()
{
  if (!qword_100CABD88)
  {
    sub_10022E824(&unk_100CABD90);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100CABD88);
    }
  }
}

unint64_t sub_1001D18D8()
{
  result = qword_100CBC2D8;
  if (!qword_100CBC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC2D8);
  }

  return result;
}

uint64_t sub_1001D1978(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001D19D4(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_10022C350(&qword_100CABA90);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1001D1A40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001D1A88()
{
  result = qword_100CABED0;
  if (!qword_100CABED0)
  {
    sub_10022E824(&qword_100CABEC8);
    sub_100006F64(&qword_100CABED8, &qword_100CABEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CABED0);
  }

  return result;
}

uint64_t sub_1001D1B40()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1001D1BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Precipitation();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CB5F98);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v14 = sub_10022C350(&qword_100CD0EF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_51;
  }

  v18 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100004680(v18[5]);
  v21 = v21 && v19 == v20;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_100004680(v18[6]);
  v24 = v21 && v22 == v23;
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_51;
  }

  v58 = v6;
  sub_10000F868();
  if ((static Measurement.== infix<A, B>(_:_:)() & 1) == 0 || (static Measurement.== infix<A, B>(_:_:)() & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_1000D3F28();
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_51;
    }

    v29 = *v27 == *v28 && v25 == v26;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v26)
  {
    goto LABEL_51;
  }

  sub_1000D3F28();
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_51;
    }

    v34 = *v32 == *v33 && v30 == v31;
    if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v31)
  {
    goto LABEL_51;
  }

  if (*(a1 + v18[12]) != *(a2 + v18[12]) || *(a1 + v18[13]) != *(a2 + v18[13]))
  {
    goto LABEL_51;
  }

  sub_100004680(v18[14]);
  v37 = v21 && v35 == v36;
  if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_51;
  }

  v38 = v18[15];
  v39 = *(v14 + 48);
  sub_10011422C(a1 + v38, v17);
  sub_10011422C(a2 + v38, &v17[v39]);
  sub_100003A40(v17);
  if (!v21)
  {
    sub_10011422C(v17, v13);
    sub_100003A40(&v17[v39]);
    if (!v40)
    {
      v41 = v58;
      (*(v58 + 32))(v10, &v17[v39], v4);
      sub_100028908();
      sub_1001D1A40(v42, v43);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v41 + 8);
      v45(v10, v4);
      v45(v13, v4);
      sub_1000180EC(v17, &qword_100CB5F98);
      if ((v44 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    (*(v58 + 8))(v13, v4);
LABEL_48:
    sub_1000180EC(v17, &qword_100CD0EF0);
    goto LABEL_51;
  }

  sub_100003A40(&v17[v39]);
  if (!v21)
  {
    goto LABEL_48;
  }

  sub_1000180EC(v17, &qword_100CB5F98);
LABEL_50:
  if (*(a1 + v18[16]) == *(a2 + v18[16]))
  {
    sub_100004680(v18[17]);
    v50 = v21 && v48 == v49;
    if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100004680(v18[18]);
      v53 = v21 && v51 == v52;
      if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100004680(v18[19]);
        v56 = v21 && v54 == v55;
        if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v46 = sub_1001D222C(*(a1 + v18[20]), *(a2 + v18[20]));
          return v46 & 1;
        }
      }
    }
  }

LABEL_51:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_1001D2034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(type metadata accessor for DailyComponentView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001CD17C(a1, a2, v3 + v8, *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + v12), *(v3 + v12 + 8), *(v3 + v12 + 9), a3, *(v3 + v9), *(v3 + v9 + 8), *(v3 + v10), *(v3 + v10 + 8), *(v3 + v11), *(v3 + ((v12 + 17) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001D2148(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 16))
  {
    v2 = a2(0);
    sub_100003DDC();
    sub_1001D1B40();
    sub_10000E7B0();
    v6 = v2;
  }

  else
  {
    a2(0);
    sub_100003934();
  }

  return sub_10001B350(v3, v4, v5, v6);
}

uint64_t sub_1001D222C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  if (!v2 || result == a2)
  {
    return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  }

  v3 = (result + 64);
  v4 = (a2 + 64);
  while (v2)
  {
    result = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 - 4), *(v4 - 4)), vceqq_f64(*(v3 - 2), *(v4 - 2))))) & (*v3 == *v4);
    v5 = result != 1 || v2-- == 1;
    v3 += 5;
    v4 += 5;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D22B0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_1001D2394(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return sub_10001B350(a4, v10, 1, v9);
}

uint64_t sub_1001D2394(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001D23F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001D24A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v35 = a1;
  v4 = sub_10022C350(&qword_100CC08A8);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v36 = sub_10022C350(&qword_100CC08B0);
  __chkstk_darwin(v36);
  v32 = &v31 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 97);
  if (v11 == 6)
  {
    goto LABEL_2;
  }

  v43 = *(v2 + 40);
  v14 = *(v2 + 32);
  v42 = v14;
  if (v43 == 1)
  {
    if (v14)
    {
      goto LABEL_2;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v42, &qword_100CB91B8);
    (*(v33 + 8))(v10, v8);
    if (v41)
    {
      goto LABEL_2;
    }
  }

  v41 = *v3;
  if (!v41)
  {
LABEL_18:
    type metadata accessor for ObservableResolver();
    sub_100061A3C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  type metadata accessor for TipCoordinator();

  ObservableResolver.resolve<A>(_:)();
  sub_100018198(&v41, &unk_100CC08E0);
  if (!v37)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = sub_10014A168();

  if ((v16 & 1) == 0)
  {
LABEL_2:
    v12 = sub_10022C350(&qword_100CC08B8);
    (*(*(v12 - 8) + 16))(v6, v35, v12);
    swift_storeEnumTagMultiPayload();
    sub_1001D2B64();
    sub_10023FBF4(&qword_100CC08C8, &qword_100CC08B8);
    return _ConditionalContent<>.init(storage:)();
  }

  ObservableResolver.resolve<A>(_:)();
  sub_100018198(&v41, &unk_100CC08E0);
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = sub_10074A40C(v11);

  if ((v17 & 1) == 0)
  {
    goto LABEL_2;
  }

  v39 = *(v3 + 48);
  v40 = *(v3 + 64);
  v18 = v39;
  if (v40)
  {
    v19 = &v39 + 1;
  }

  else
  {
    v19 = &v38;

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v39, &unk_100CC08E8);
    (*(v33 + 8))(v10, v8);
    v18 = v37;
  }

  v21 = v35;
  v22 = *v19;
  v23 = v32;
  v24 = &v32[*(v36 + 36)];
  sub_1004F7584(v3);
  *&v24[*(sub_10022C350(&qword_100CC08F0) + 36)] = 0x3FF0000000000000;
  v25 = static VerticalAlignment.bottom.getter();
  v26 = &v24[*(sub_10022C350(&qword_100CC08F8) + 36)];
  *v26 = v25;
  v26[1] = sub_1004F7EE8;
  v26[2] = 0;
  v27 = sub_1004F7F10();
  v28 = &v24[*(sub_10022C350(&qword_100CC0900) + 36)];
  *v28 = 0.0;
  v28[1] = v27;
  v29 = &v24[*(sub_10022C350(&qword_100CC08D8) + 36)];
  *v29 = v18;
  *(v29 + 1) = v22;
  v30 = sub_10022C350(&qword_100CC08B8);
  (*(*(v30 - 8) + 16))(v23, v21, v30);
  sub_1000302D8(v23, v6, &qword_100CC08B0);
  swift_storeEnumTagMultiPayload();
  sub_1001D2B64();
  sub_10023FBF4(&qword_100CC08C8, &qword_100CC08B8);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v23, &qword_100CC08B0);
}

unint64_t sub_1001D2B64()
{
  result = qword_100CC08C0;
  if (!qword_100CC08C0)
  {
    sub_10022E824(&qword_100CC08B0);
    sub_10023FBF4(&qword_100CC08C8, &unk_100CC08B8);
    sub_10023FBF4(&qword_100CC08D0, &unk_100CC08D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC08C0);
  }

  return result;
}

uint64_t sub_1001D2C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v49 = a1;
  v4 = type metadata accessor for BackgroundModifier(0);
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = v5;
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoundedCornerStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001D3424();
  v19 = *v18;
  sub_100192034();
  sub_1001D3424();
  v20 = *(v10 + 32);
  v21 = v18 + *(v16 + 28);
  v50 = v14;
  v47 = v9;
  v42 = v20;
  v20(v14, v21, v9);
  v22 = *(v2 + 16);
  if (*(v3 + 24) == 1)
  {
    v23 = *(v3 + 16);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v22, 0);
    (*(v40 + 8))(v8, v41);
    v23 = v51;
  }

  sub_1001993DC();
  v25 = v43;
  v26 = v47;
  (*(v10 + 16))(v43, v50, v47);
  v27 = (v44 + ((*(v45 + 80) + 16) & ~*(v45 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v10 + 80) + v28 + 8) & ~*(v10 + 80);
  v30 = swift_allocObject();
  sub_1001AD070();
  *(v30 + v27) = v23;
  *(v30 + v28) = v19;
  v42(v30 + v29, v25, v26);
  sub_10022C350(&qword_100CC2318);
  sub_10022C350(&qword_100CC2320);
  sub_10023FBF4(&qword_100CC2328, &qword_100CC2318);
  v31 = sub_10022E824(&qword_100CA4670);
  v32 = sub_10022E824(&qword_100CA4680);
  v33 = type metadata accessor for EmptyVisualEffect();
  v34 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v51 = v33;
  v52 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v32;
  v52 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_1001A7CA8();
  v51 = v31;
  v52 = &type metadata for Path;
  v53 = v36;
  v54 = v37;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return (*(v10 + 8))(v50, v26);
}

uint64_t sub_1001D3208()
{
  v1 = (type metadata accessor for BackgroundModifier(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = type metadata accessor for RoundedCornerStyle();
  sub_1000037C4();
  v5 = v4;
  v6 = *(v4 + 80);
  sub_1000EBD74(*(v0 + v2 + 16), *(v0 + v2 + 24));
  v7 = v0 + v2 + v1[9];
  sub_10022C350(&qword_100CABDD0);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
    v9 = *(v5 + 8);
    v9(v7 + *(v8 + 20), v3);
  }

  else
  {

    v9 = *(v5 + 8);
  }

  sub_1001923A8();
  v9(v0 + ((v10 + v6 + 8) & ~v6), v3);

  return swift_deallocObject();
}

uint64_t sub_1001D33D4()
{
  sub_100003A00();
  type metadata accessor for RoundedCornerStyle();
  sub_1000178C4();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001D3450()
{
  sub_100088884();
  sub_10003A0D8();
  sub_100017580();
  v0 = type metadata accessor for WeatherDataAction();
  sub_100003AE8(v0);
  sub_10003A294();
  v1 = swift_task_alloc();
  v2 = sub_100007F54(v1);
  *v2 = v3;
  v2[1] = sub_1000D8400;
  sub_100074CA4();
  sub_100044D14();

  return sub_1001D3534(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001D3534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_1001D35D0, v8, v7);
}

uint64_t sub_1001D35D0()
{
  sub_100003B08();
  v1 = *(*(v0 + 32) + 64);
  v2 = swift_task_alloc();
  v3 = sub_100040F7C(v2);
  *v3 = v4;
  v3[1] = sub_1005C2D98;
  v5 = sub_1000116B0(*(v0 + 24));

  return sub_1001D3664(v5, v1);
}

uint64_t sub_1001D3664(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for WeatherDataAction();
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005C2EAC, 0, 0);
}

BOOL sub_1001D3794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundMoonData();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CACCC0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v65 = &v59 - v13;
  v66 = sub_10022C350(&qword_100CC4FC8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v67 = &v59 - v15;
  v16 = type metadata accessor for Elevation();
  sub_1000037C4();
  v68 = v17;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = sub_10022C350(&qword_100CA58B8);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  v26 = sub_10022C350(&qword_100CC4FD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v59 - v28;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v60 = v10;
  v61 = v6;
  v64 = v4;
  v62 = type metadata accessor for WeatherConditionBackgroundTimeData();
  v63 = a1;
  v30 = *(v62 + 20);
  v31 = *(v26 + 48);
  sub_1000955E0(a1 + v30, v29, &qword_100CA58B8);
  sub_1000955E0(a2 + v30, &v29[v31], &qword_100CA58B8);
  sub_1000038B4(v29, 1, v16);
  if (v32)
  {
    sub_1000038B4(&v29[v31], 1, v16);
    if (v32)
    {
      sub_1000180EC(v29, &qword_100CA58B8);
      goto LABEL_12;
    }

LABEL_10:
    v33 = &qword_100CC4FD0;
    v34 = v29;
LABEL_21:
    sub_1000180EC(v34, v33);
    return 0;
  }

  sub_1000955E0(v29, v25, &qword_100CA58B8);
  sub_1000038B4(&v29[v31], 1, v16);
  if (v32)
  {
    (*(v68 + 8))(v25, v16);
    goto LABEL_10;
  }

  v35 = v68;
  (*(v68 + 32))(v21, &v29[v31], v16);
  sub_10001033C();
  sub_100127D04(v36, v37);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v35 + 8);
  v39(v21, v16);
  v39(v25, v16);
  sub_1000180EC(v29, &qword_100CA58B8);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v40 = v67;
  v41 = *(v66 + 48);
  sub_100016AFC();
  sub_1000955E0(v42, v43, v44);
  sub_100016AFC();
  sub_1000955E0(v45, v46, v47);
  v48 = v64;
  sub_1000038B4(v40, 1, v64);
  if (v32)
  {
    sub_1000038B4(v40 + v41, 1, v48);
    if (v32)
    {
      sub_1000180EC(v40, &qword_100CACCC0);
      return 1;
    }

    goto LABEL_20;
  }

  v49 = v65;
  sub_1000955E0(v40, v65, &qword_100CACCC0);
  sub_1000038B4(v40 + v41, 1, v48);
  if (v50)
  {
    (*(v61 + 8))(v49, v48);
LABEL_20:
    v33 = &qword_100CC4FC8;
    v34 = v40;
    goto LABEL_21;
  }

  v52 = v61;
  v53 = v40 + v41;
  v54 = v60;
  (*(v61 + 32))(v60, v53, v48);
  sub_10001F034();
  sub_100127D04(v55, v56);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v52 + 8);
  v58(v54, v48);
  v58(v49, v48);
  sub_1000180EC(v40, &qword_100CACCC0);
  return (v57 & 1) != 0;
}

uint64_t sub_1001D3D2C(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for PreprocessedWeatherData(), sub_1009ED6CC(*(a1 + v4[5]), *(a2 + v4[5]), v5, v6, v7, v8, v9, v10, v38, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]), (v11) && (v12 = sub_100003C48(v4[6]), (sub_100735648(v12, v13)) && (v14 = sub_100003C48(v4[7]), sub_100411C04(v14, v15)) && (v16 = sub_100003C48(v4[8]), sub_1005CEC58(v16, v17)) && (memcpy(__dst, (a1 + v4[9]), sizeof(__dst)), memcpy(v45, (a2 + v4[9]), 0x80uLL), (sub_100427D5C(__dst, v45)) && (sub_100003C48(v4[10]), (sub_100341F20()) && ((v18 = v4[11], v19 = *(a1 + v18), v20 = *(a1 + v18 + 8), v21 = *(a1 + v18 + 16), v22 = *(a1 + v18 + 24), v23 = *(a1 + v18 + 40), v39 = *(a1 + v18 + 32), v24 = (a2 + v18), v26 = v24[2], v25 = v24[3], v27 = v24[4], v28 = v24[5], v19 == *v24) ? (v29 = v20 == v24[1]) : (v29 = 0), (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v21 == v26 ? (v30 = v22 == v25) : (v30 = 0), (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v39 == v27 ? (v31 = v23 == v28) : (v31 = 0), (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v32 = sub_100003C48(v4[12]), (sub_1003BE378(v32, v33)) && (memcpy(v42, (a1 + v4[13]), sizeof(v42)), memcpy(v43, (a2 + v4[13]), sizeof(v43)), (sub_1008A1E20(v42, v43)) && (v34 = sub_100003C48(v4[14]), sub_1001D3794(v34, v35))))))
  {
    memcpy(v40, (a1 + v4[15]), sizeof(v40));
    memcpy(v41, (a2 + v4[15]), sizeof(v41));
    v36 = sub_1001D3F40(v40, v41);
  }

  else
  {
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t sub_1001D3F40(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[4] == a2[4] && a1[5] == a2[5];
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = a1[6] == a2[6] && a1[7] == a2[7];
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v10 = a1[8] == a2[8] && a1[9] == a2[9];
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = a1[10] == a2[10] && a1[11] == a2[11];
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v12 = a1[13];
          v13 = a2[13];
          if (v12)
          {
            if (v13)
            {
              v14 = a1[12] == a2[12] && v12 == v13;
              if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                return 1;
              }
            }
          }

          else if (!v13)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

void sub_1001D4080(uint64_t a1@<X8>)
{
  sub_1001D40B4();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1001D4108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10022F268();
  *a1 = result;
  return result;
}

uint64_t sub_1001D41C4()
{
  sub_100020558();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1001D41F8(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_1000D3DE8(a1);
  }

  else
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }
}

uint64_t sub_1001D420C(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_1000D3DE8(a1);
  }

  else
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }
}

uint64_t storeEnumTagSinglePayload for ForegroundEffectViewMask(uint64_t result, int a2, int a3)
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

uint64_t sub_1001D42D0()
{
  swift_weakDestroy();
  sub_100007E8C();

  return swift_deallocObject();
}

uint64_t sub_1001D4304()
{

  return swift_deallocObject();
}

uint64_t sub_1001D433C()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001D4374()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001D43C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LocationOfInterestType();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001D444C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationOfInterestType();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D44CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DetailChartDataPoint();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for LollipopDetailViewModel(0);
      v10 = *(a3 + 28);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001D4598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DetailChartDataPoint();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for LollipopDetailViewModel(0);
      v10 = *(a4 + 28);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001D4660(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&unk_100CB2CF0);
    v9 = a1 + *(a3 + 40);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001D46F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&unk_100CB2CF0);
    v8 = v5 + *(a4 + 40);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D480C(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  sub_10022C350(&qword_100CA42D8);
  v3 = sub_1000039C8();

  return sub_100024D10(v3, v4, v5);
}

void sub_1001D488C()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CA42D8);
    v3 = sub_1000039C8();

    sub_10001B350(v3, v4, v0, v5);
  }
}

uint64_t sub_1001D4914(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 24));
  }

  sub_10022C350(&qword_100CA42D8);
  v5 = sub_1000039EC(*(a3 + 32));

  return sub_100024D10(v5, v6, v7);
}

void sub_1001D4998()
{
  sub_100003A00();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CA42D8);
    v5 = sub_1000039EC(*(v4 + 32));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_1001D4AA8()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1001D4AE0()
{

  sub_100006F14(v0 + 24);
  sub_1000693B0();

  return swift_deallocObject();
}

uint64_t sub_1001D4D74(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for TimeZone();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for Date();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  sub_10022C350(&unk_100CB2CF0);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for MoonPhase.Hemisphere();
    v12 = a3[10];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[9]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_1001D4ECC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for TimeZone();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Date();
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
        v14 = a4[8];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[9]) = (a2 - 1);
          return;
        }

        v10 = type metadata accessor for MoonPhase.Hemisphere();
        v14 = a4[10];
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001D5020(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10022C350(&unk_100CB2CF0);
    v9 = &a1[*(a3 + 20)];

    return sub_100024D10(v9, a2, v8);
  }
}

_BYTE *sub_1001D50AC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_10022C350(&unk_100CB2CF0);
    v8 = &v5[*(a4 + 20)];

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D5134()
{
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  return swift_getWitnessTable();
}

uint64_t sub_1001D51C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA5010);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_10022C350(&qword_100CA3BE8);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1001D52B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA5010);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_10022C350(&qword_100CA3BE8);
    v10 = a1 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001D53A8(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for TemperatureScaleConfiguration();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[9];
    }

    else
    {
      sub_10022C350(&qword_100CA5130);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[13];
      }

      else
      {
        sub_10022C350(&qword_100CA5138);
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[14];
        }

        else
        {
          type metadata accessor for DetailHeroChartLollipopModel(0);
          sub_100003928();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[15];
          }

          else
          {
            type metadata accessor for Date();
            sub_100003928();
            if (*(v19 + 84) == a2)
            {
              v10 = v18;
              v11 = a3[16];
            }

            else
            {
              v10 = type metadata accessor for DetailChartGradientModel();
              v11 = a3[18];
            }
          }
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001D5588(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for TemperatureScaleConfiguration();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      sub_10022C350(&qword_100CA5130);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        sub_10022C350(&qword_100CA5138);
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[14];
        }

        else
        {
          type metadata accessor for DetailHeroChartLollipopModel(0);
          sub_100003928();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[15];
          }

          else
          {
            type metadata accessor for Date();
            sub_100003928();
            if (*(v19 + 84) == a3)
            {
              v10 = v18;
              v11 = a4[16];
            }

            else
            {
              v10 = type metadata accessor for DetailChartGradientModel();
              v11 = a4[18];
            }
          }
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1001D5764(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for Date();

  return sub_100024D10(v2, a2, v4);
}

uint64_t sub_1001D57A8(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for Date();

  return sub_10001B350(v2, a2, a2, v4);
}

uint64_t sub_1001D57F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for MoonPhase.Hemisphere();
    v11 = a1 + *(a3 + 24);

    return sub_100024D10(v11, a2, v10);
  }
}

uint64_t sub_1001D5878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for MoonPhase.Hemisphere();
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D5904(uint64_t a1)
{
  sub_10022C350(&qword_100CA5388);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001D5964(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CA5388);
  sub_1000037E8();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001D59D0()
{
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  return swift_getWitnessTable();
}

uint64_t sub_1001D5ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for Location();
    v8 = v3 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001D5B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000038D8();
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for Location();
    v10 = v4 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001D5BF8()
{

  sub_1000244CC();

  return swift_deallocObject();
}

uint64_t sub_1001D5C2C()
{
  sub_10000C778();
  type metadata accessor for Date();
  sub_1000037C4();
  type metadata accessor for Location();
  sub_1000037C4();
  swift_unknownObjectRelease();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001D5D60()
{
  sub_10000C778();
  type metadata accessor for Date();
  sub_1000037C4();
  type metadata accessor for Location();
  sub_1000037C4();
  swift_unknownObjectRelease();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001D5E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for OverviewTableViewModel();
    v8 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001D5F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for OverviewTableViewModel();
    v10 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001D5FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartGradientModel();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001D6024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartGradientModel();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001D6070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ConditionDetailLegendForeground(0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001D60F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ConditionDetailLegendForeground(0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D6178()
{

  return swift_deallocObject();
}

uint64_t sub_1001D61D8()
{
  sub_10022E824(&qword_100CA5CD8);
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_10001E6B0();
  sub_100006F64(v0, &qword_100CA5CD8);
  sub_100281D9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001D6278()
{
  sub_100003B38();
  v2 = type metadata accessor for WeatherMapOverlayKind();
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

uint64_t sub_1001D62B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WeatherMapOverlayKind();

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001D6314(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return sub_100024D10(v4 + v8, v3, v7);
  }

  if (v3 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for WeatherData(0);
    v8 = a3[7];
    goto LABEL_8;
  }

  v9 = *(v4 + a3[6]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1001D63DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[6]) = (v4 - 1);
      return result;
    }

    v9 = type metadata accessor for WeatherData(0);
    v10 = a4[7];
  }

  return sub_10001B350(v5 + v10, v4, v4, v9);
}

uint64_t sub_1001D6534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100283E6C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1001D659C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 24));
  }

  type metadata accessor for SearchResultsViewModel(0);
  sub_100003928();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    sub_10022C350(&qword_100CA61E0);
    v7 = *(a3 + 24);
  }

  v8 = sub_1000039EC(v7);

  return sub_100024D10(v8, v9, v10);
}

void sub_1001D6660()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for SearchResultsViewModel(0);
    sub_100003928();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      sub_10022C350(&qword_100CA61E0);
      v7 = *(v4 + 24);
    }

    v8 = sub_1000039EC(v7);

    sub_10001B350(v8, v9, v0, v10);
  }
}

uint64_t sub_1001D6730()
{
  sub_100003A00();
  sub_10022C350(&qword_100CA62A0);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001D6790(uint64_t a1)
{
  sub_10022C350(&qword_100CA62A0);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001D67F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA61E0);
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
      return sub_1000039D8(*(v4 + *(a3 + 20) + 24));
    }

    v8 = type metadata accessor for SearchResultsViewModel(0);
    v9 = v4 + *(a3 + 24);
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001D68BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA61E0);
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
      *(v5 + *(a4 + 20) + 24) = (v4 - 1);
      return;
    }

    v10 = type metadata accessor for SearchResultsViewModel(0);
    v11 = v5 + *(a4 + 24);
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001D6990(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 24));
  }

  type metadata accessor for SearchResultsViewModel(0);
  v5 = sub_1000039EC(*(a3 + 20));

  return sub_100024D10(v5, v6, v7);
}

void sub_1001D6A08()
{
  sub_100003A00();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for SearchResultsViewModel(0);
    v5 = sub_1000039EC(*(v4 + 20));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_1001D6AD8()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  sub_10022E824(&qword_100CA6458);
  sub_100006F64(&qword_100CA6460, &qword_100CA6440);
  swift_getOpaqueTypeConformance2();
  sub_10001758C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001D6CE0()
{

  sub_1000244CC();

  return swift_deallocObject();
}

__n128 sub_1001D6DB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001D6DC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001D6DF8()
{

  return swift_deallocObject();
}

uint64_t sub_1001D6E50()
{
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  return swift_getWitnessTable();
}

uint64_t sub_1001D6EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _LazyLayout_Subview_V1();
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

    return (v8 + 1);
  }
}

uint64_t sub_1001D6F90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _LazyLayout_Subview_V1();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001D7064(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6BC0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for Date();
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
    v8 = type metadata accessor for TimeZone();
    v12 = a3[10];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1001D717C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CA6BC0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Date();
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
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = type metadata accessor for TimeZone();
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001D7290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA6CB0);
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

uint64_t sub_1001D734C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA6CB0);
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

uint64_t sub_1001D7438()
{

  return swift_deallocObject();
}

uint64_t sub_1001D7490()
{

  return swift_deallocObject();
}

uint64_t sub_1001D74C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001D7508()
{
  type metadata accessor for ReportWeatherView();
  sub_100003A0C();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v1 + v3;
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v7 + 8))(v4 + v6);
  }

  sub_10001673C(v0[5]);

  sub_100006F14(v4 + v0[6]);
  sub_10001673C(v0[7]);

  sub_10001673C(v0[8]);

  return swift_deallocObject();
}

uint64_t sub_1001D7674@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BDD84(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001D76CC()
{
  sub_10022E824(&qword_100CA6D88);
  sub_10022E824(&qword_100CA6DE0);
  sub_1002AFDB8();
  sub_1002AFF70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001D7788()
{
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  return swift_getWitnessTable();
}

uint64_t sub_1001D7834(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for CalendarViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_5:

    return sub_100024D10(v3 + v10, a2, v9);
  }

  _s13CalendarStateVMa();
  sub_100003928();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = a3[6];
    goto LABEL_5;
  }

  v14 = *(v3 + a3[7] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1001D7920(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000038D8();
  type metadata accessor for CalendarViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    _s13CalendarStateVMa();
    sub_100003928();
    if (*(v14 + 84) != a3)
    {
      *(v4 + a4[7] + 24) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = a4[6];
  }

  sub_10001B350(v4 + v12, a2, a2, v11);
}

uint64_t sub_1001D7A58()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for MoonDetailInput.Input(v2);
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

uint64_t sub_1001D7A98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MoonDetailInput.Input(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001D7AF4(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for MoonDetailSelectedDate();
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        type metadata accessor for Locale();
        sub_100003928();
        if (*(v16 + 84) == v3)
        {
          v8 = v15;
          v12 = a3[9];
        }

        else
        {
          if (v3 == 254)
          {
            v17 = *(v4 + a3[11]);
            if (v17 >= 2)
            {
              return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = sub_10022C350(&qword_100CA74F8);
          v12 = a3[12];
        }
      }
    }

    v9 = v4 + v12;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001D7C90(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    type metadata accessor for MoonDetailSelectedDate();
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
        type metadata accessor for Locale();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[9];
        }

        else
        {
          if (a3 == 254)
          {
            *(v5 + a4[11]) = v4 + 1;
            return;
          }

          v10 = sub_10022C350(&qword_100CA74F8);
          v14 = a4[12];
        }
      }
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001D7E58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001D7E18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001D818C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002D8F38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001D81E8(char a1)
{
  if (!a1)
  {
    return 0x6E6F6D6D6F63;
  }

  if (a1 == 1)
  {
    return 7364973;
  }

  return 0x696C617551726961;
}

uint64_t sub_1001D8240@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002C3508();
  *a1 = result;
  return result;
}

uint64_t sub_1001D826C()
{
  result = sub_1002E5904();
  switch(v1)
  {
    case 1:
      result = sub_10002C588();
      break;
    case 2:
      result = sub_1000E1490();
      break;
    case 3:
      result = sub_100018340();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D82EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002C421C();
  *a1 = result;
  return result;
}

uint64_t sub_1001D833C()
{
  result = sub_1002E5904();
  switch(v1)
  {
    case 1:
      result = sub_10002C588();
      break;
    case 2:
      result = sub_1002E4D54();
      break;
    case 3:
      result = sub_1000E1490();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D83BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002CC478();
  *a1 = result;
  return result;
}

uint64_t sub_1001D8464()
{
  result = sub_1002E5904();
  switch(v1)
  {
    case 1:
      result = sub_10002C588();
      break;
    case 2:
      result = sub_1002E4D54();
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = sub_1000E1490();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D8504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002CDFE4();
  *a1 = result;
  return result;
}

uint64_t sub_1001D8638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002D8A1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001D87FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 2;
    }

    else
    {
      v9 = -3;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1001D88C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1001D896C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CABAD0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001D8A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CABAD0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D8A90()
{
  type metadata accessor for DebugLocationIntelligenceView();
  sub_100003A0C();
  swift_unknownObjectRelease();
  v2 = sub_100003D30();
  if (!sub_100074770(v2))
  {
    sub_100003D20();
    (*(v3 + 8))(v1, v0);
  }

  sub_10022C350(&qword_100CABAD0);

  if (!sub_100014274())
  {
    sub_100003D20();
    v4 = sub_10001920C();
    v5(v4);
  }

  return swift_deallocObject();
}