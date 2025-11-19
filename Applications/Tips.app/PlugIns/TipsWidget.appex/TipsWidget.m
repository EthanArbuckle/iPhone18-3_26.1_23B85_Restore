uint64_t sub_1000017C8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = (type metadata accessor for HorizontalTipViewWithBody(0) - 8);
  v5 = *(*v4 + 64);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[7];
  v9 = enum case for WidgetFamily.systemMedium(_:);
  v10 = sub_10001A12C();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  v11 = a1;
  sub_10001996C();
  v13 = v12;
  sub_10001996C();
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v7[32] = 0;
  *v7 = KeyPath;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *&v7[v4[8]] = a1;
  *&v7[v4[9]] = v13;
  *&v7[v4[10]] = v15;
  sub_10001996C();
  sub_10001996C();
  sub_10001A01C();
  sub_10001995C();
  sub_100002130(v7, a2);
  v17 = (a2 + *(sub_100001A1C(&qword_1000284C0, &unk_10001AD40) + 36));
  v18 = v20[1];
  *v17 = v20[0];
  v17[1] = v18;
  v17[2] = v20[2];
  return sub_100002194(v7);
}

uint64_t sub_100001988@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = sub_100002128;
  a1[1] = v3;

  return _objc_retain_x1();
}

uint64_t sub_100001A1C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100001C30@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_100001A1C(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100001C90(__int128 *a1)
{
  v2 = *a1;
  if (sub_100019334(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100001D04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_100019334(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100001D70(uint64_t *a1, uint64_t *a2)
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

uint64_t variable initialization expression of DocumentEntry.relevance@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001A1EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100001E4C()
{
  sub_100019B2C();
  sub_10000249C(&qword_1000284C8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100019BAC();
  return v1;
}

uint64_t sub_100001EC8@<X0>(_BYTE *a1@<X8>)
{
  sub_100019B2C();
  sub_10000249C(&qword_1000284C8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_100019BAC();
  *a1 = v3;
  return result;
}

uint64_t variable initialization expression of SquareTitleView._contentMargins@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

__n128 sub_100001FA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001FB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001FD0(uint64_t result, int a2, int a3)
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

uint64_t sub_100002018(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100002074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000020F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalTipViewWithBody(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002194(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalTipViewWithBody(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100002204(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002294(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000022DC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000198EC();
}

uint64_t sub_100002328()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000198DC();
}

Swift::Int sub_100002380()
{
  sub_10001A3EC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1000198DC();
  return sub_10001A3FC();
}

uint64_t sub_1000023E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1000198CC();
}

uint64_t sub_10000249C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002534()
{
  v0 = sub_10001989C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003AB8(v3, qword_10002A3A0);
  v6 = sub_100003A18(v0, qword_10002A3A0);
  v7 = objc_opt_self();
  v8 = TPSAnalyticsLaunchTypeWidget;
  v9 = [v7 URLWithTipIdentifier:0 collectionIdentifier:0 referrer:v8];

  sub_10001987C();
  return (*(v1 + 32))(v6, v5, v0);
}

uint64_t sub_100002678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(sub_100001A1C(&qword_1000284F8, &unk_10001C000) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = v29 - v5;
  v7 = *(*(sub_100001A1C(&qword_100028A30, &qword_10001AE60) - 8) + 64);
  v8 = (__chkstk_darwin)();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v13 = sub_10001A12C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for WidgetFamily.accessoryCircular(_:), v13);
  sub_1000039D0(&qword_1000285D0, &type metadata accessor for WidgetFamily);
  sub_10001A25C();
  sub_10001A25C();
  (*(v14 + 8))(v17, v13);
  if (v29[1] != v29[0])
  {
    sub_1000031E0(a1, v6, &qword_1000284F8, &unk_10001C000);
    v18 = type metadata accessor for DocumentEntry();
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      sub_100003504(v6, &qword_1000284F8, &unk_10001C000);
    }

    else
    {
      v19 = *&v6[*(v18 + 24)];
      v20 = v19;
      sub_100003564(v6);
      if (v19)
      {
        v21 = [v20 URLWithReferrer:TPSAnalyticsLaunchTypeWidget];

        if (v21)
        {
          sub_10001987C();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v27 = sub_10001989C();
        v28 = *(v27 - 8);
        (*(v28 + 56))(v10, v22, 1, v27);
        sub_100003A50(v10, v12, &qword_100028A30, &qword_10001AE60);
        if ((*(v28 + 48))(v12, 1, v27) != 1)
        {
          return (*(v28 + 32))(a2, v12, v27);
        }

        goto LABEL_8;
      }
    }

    v23 = sub_10001989C();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
LABEL_8:
    sub_100003504(v12, &qword_100028A30, &qword_10001AE60);
  }

  if (qword_100028450 != -1)
  {
    swift_once();
  }

  v24 = sub_10001989C();
  v25 = sub_100003A18(v24, qword_10002A3A0);
  return (*(*(v24 - 8) + 16))(a2, v25, v24);
}

uint64_t TipsWidgetWrapperView.family.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000031E0(v2, &v17 - v11, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001A12C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10001A29C();
    v16 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t TipsWidgetWrapperView.init(entry:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for TipsWidgetWrapperView();
  return sub_100003A50(a1, a2 + *(v4 + 20), &qword_1000284F8, &unk_10001C000);
}

uint64_t type metadata accessor for TipsWidgetWrapperView()
{
  result = qword_100028588;
  if (!qword_100028588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TipsWidgetWrapperView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_10001A12C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TipsWidgetView();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_100001A1C(&qword_100028500, &qword_10001AE68);
  v19 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v21 = &v30 - v20;
  v22 = *(type metadata accessor for TipsWidgetWrapperView() + 20);
  sub_1000031E0(v2 + v22, v18 + *(v15 + 28), &qword_1000284F8, &unk_10001C000);
  *v18 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_1000031E0(v2 + v22, v13, &qword_1000284F8, &unk_10001C000);
  v24 = type metadata accessor for DocumentEntry();
  if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
  {
    sub_100003504(v13, &qword_1000284F8, &unk_10001C000);
    v25 = 1;
  }

  else
  {
    v25 = DocumentEntry.isPlaceholder.getter();
    sub_100003564(v13);
  }

  sub_100003380(v18, v21);
  v26 = &v21[*(v31 + 36)];
  *v26 = KeyPath;
  v26[8] = v25 & 1;
  v27 = v32;
  TipsWidgetWrapperView.family.getter(v32);
  sub_100002678(v2 + v22, v9);
  (*(v33 + 8))(v27, v34);
  v28 = sub_10001989C();
  (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
  sub_1000033E4();
  sub_100019DFC();
  sub_100003504(v9, &qword_100028A30, &qword_10001AE60);
  return sub_100003504(v21, &qword_100028500, &qword_10001AE68);
}

uint64_t sub_1000031E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A1C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003248@<X0>(_BYTE *a1@<X8>)
{
  sub_100003B1C();
  result = sub_100019BAC();
  *a1 = v3;
  return result;
}

uint64_t sub_100003298@<X0>(_BYTE *a1@<X8>)
{
  sub_100003B1C();
  result = sub_100019BAC();
  *a1 = v3;
  return result;
}

uint64_t sub_1000032E8(char *a1)
{
  v2 = *a1;
  sub_100003B1C();
  return sub_100019BBC();
}

uint64_t sub_100003334(char *a1)
{
  v2 = *a1;
  sub_100003B1C();
  return sub_100019BBC();
}

uint64_t sub_100003380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000033E4()
{
  result = qword_100028508;
  if (!qword_100028508)
  {
    sub_100001D70(&qword_100028500, &qword_10001AE68);
    sub_1000039D0(&qword_100028510, type metadata accessor for TipsWidgetView);
    sub_1000034A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028508);
  }

  return result;
}

unint64_t sub_1000034A0()
{
  result = qword_100028518;
  if (!qword_100028518)
  {
    sub_100001D70(&qword_100028520, &qword_10001AE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028518);
  }

  return result;
}

uint64_t sub_100003504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003564(uint64_t a1)
{
  v2 = type metadata accessor for DocumentEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100003710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100003824()
{
  sub_100003908(319, &qword_100028598, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100003908(319, &unk_1000285A0, type metadata accessor for DocumentEntry, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10000396C()
{
  sub_100001D70(&qword_100028500, &qword_10001AE68);
  sub_1000033E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000039D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003A18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003A50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A1C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_100003AB8(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003B1C()
{
  result = qword_1000285D8;
  if (!qword_1000285D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285D8);
  }

  return result;
}

uint64_t sub_100003B70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A1C(&qword_100028478, &qword_10001AF50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000031E0(v2, &v17 - v11, &qword_100028478, &qword_10001AF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001992C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10001A29C();
    v16 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100003D70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100019B9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001A1C(&qword_100028480, qword_10001ABF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LargeTipView(0);
  sub_1000031E0(v1 + *(v12 + 20), v11, &qword_100028480, qword_10001ABF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001A0FC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10001A29C();
    v16 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_100003F78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10001997C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = *(a2 + 8);
  sub_10001996C();
  v15 = v14;
  sub_1000062F0(a2, v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  (*(v7 + 16))(v9, a1, v6);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_1000067AC(v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  (*(v7 + 32))(v18 + v17, v9, v6);
  sub_10001996C();
  v20 = v19;
  sub_10001996C();
  v22 = v21;
  sub_10001996C();
  sub_10001A01C();
  if (v20 > v22)
  {
    sub_10001A29C();
    v23 = sub_100019CEC();
    sub_1000198FC();
  }

  sub_100019A1C();
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 1.0 - v13 / v15;
  *(a3 + 16) = 0;
  v24 = v28[2];
  *(a3 + 88) = v28[3];
  v25 = v28[5];
  *(a3 + 104) = v28[4];
  *(a3 + 120) = v25;
  *(a3 + 136) = v28[6];
  result = *v28;
  v27 = v28[1];
  *(a3 + 40) = v28[0];
  *(a3 + 56) = v27;
  *(a3 + 24) = sub_1000055D4;
  *(a3 + 32) = v18;
  *(a3 + 72) = v24;
  return result;
}

uint64_t sub_1000042AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_100019C3C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100001A1C(&qword_100028788, &qword_10001B0A0);
  return sub_100004310(a1, a2 + *(v4 + 44));
}

uint64_t sub_100004310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for HorizontalTipViewWithBody(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100001A1C(&qword_100028790, &qword_10001B0A8);
  v8 = *(*(v45 - 8) + 64);
  v9 = __chkstk_darwin(v45);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - v12;
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v16 = type metadata accessor for ImageView(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v46 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v44 - v21;
  v23 = *(a1 + 16);
  v24 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) + 24);
  v25 = *(v17 + 32);
  v26 = sub_10001992C();
  (*(*(v26 - 8) + 16))(&v22[v25], a1 + v24, v26);
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *(v22 + 2) = v23;
  v27 = v4[7];
  v28 = enum case for WidgetFamily.systemLarge(_:);
  v29 = sub_10001A12C();
  (*(*(v29 - 8) + 104))(&v7[v27], v28, v29);
  v30 = v23;
  sub_10001996C();
  v32 = v31;
  v33 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v7[32] = 0;
  *v7 = KeyPath;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *&v7[v4[8]] = v23;
  *&v7[v4[9]] = v32;
  *&v7[v4[10]] = v33;
  sub_10001996C();
  sub_10001A02C();
  sub_100019A1C();
  sub_1000062F0(v7, v13, type metadata accessor for HorizontalTipViewWithBody);
  v35 = &v13[*(v45 + 36)];
  v36 = v54;
  *(v35 + 4) = v53;
  *(v35 + 5) = v36;
  *(v35 + 6) = v55;
  v37 = v50;
  *v35 = v49;
  *(v35 + 1) = v37;
  v38 = v52;
  *(v35 + 2) = v51;
  *(v35 + 3) = v38;
  sub_100006358(v7, type metadata accessor for HorizontalTipViewWithBody);
  sub_100003A50(v13, v15, &qword_100028790, &qword_10001B0A8);
  v39 = v46;
  sub_1000062F0(v22, v46, type metadata accessor for ImageView);
  v40 = v47;
  sub_1000031E0(v15, v47, &qword_100028790, &qword_10001B0A8);
  v41 = v48;
  sub_1000062F0(v39, v48, type metadata accessor for ImageView);
  v42 = sub_100001A1C(&qword_100028798, &qword_10001B110);
  sub_1000031E0(v40, v41 + *(v42 + 48), &qword_100028790, &qword_10001B0A8);
  sub_100003504(v15, &qword_100028790, &qword_10001B0A8);
  sub_100006358(v22, type metadata accessor for ImageView);
  sub_100003504(v40, &qword_100028790, &qword_10001B0A8);
  return sub_100006358(v39, type metadata accessor for ImageView);
}

uint64_t sub_1000047C0@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000062F0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000067AC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  *a2 = sub_1000053E8;
  a2[1] = v7;
  return result;
}

uint64_t LargeTipView.init(widgetContent:unitSize:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = swift_getKeyPath();
  sub_100001A1C(&qword_100028478, &qword_10001AF50);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LargeTipView(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  sub_100001A1C(&qword_100028480, qword_10001ABF0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v8[6]) = a1;
  v11 = (a2 + v8[7]);
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t LargeTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001A0FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = sub_100001A1C(&qword_1000285E0, &qword_10001AF90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v29 - v13);
  v15 = type metadata accessor for LargeTipView(0);
  v16 = (v1 + *(v15 + 28));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v1 + *(v15 + 24));
  v20 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) + 24);
  v21 = v19;
  sub_100003B70(v14 + v20);
  *v14 = v17;
  v14[1] = v18;
  v14[2] = v19;
  sub_100003D70(v10);
  sub_10001A0EC();
  sub_100005254(&qword_1000285E8, &type metadata accessor for WidgetRenderingMode);
  LOBYTE(v19) = sub_10001A21C();
  v22 = *(v4 + 8);
  v22(v8, v3);
  v22(v10, v3);
  v23 = 0;
  if ((v19 & 1) == 0)
  {
    sub_10000509C(0, &qword_1000285F0, UIColor_ptr);
    sub_10001A2DC();
    v23 = sub_100019F3C();
  }

  v24 = sub_10001A02C();
  v26 = v25;
  sub_100003A50(v14, a1, &qword_1000285E0, &qword_10001AF90);
  result = sub_100001A1C(&qword_1000285F8, &qword_10001AF98);
  v28 = (a1 + *(result + 36));
  *v28 = v23;
  v28[1] = v24;
  v28[2] = v26;
  return result;
}

uint64_t sub_100004C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028600, &qword_10001AFF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001A1C(&qword_100028608, &unk_10001B000);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
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

uint64_t sub_100004DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028600, &qword_10001AFF8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001A1C(&qword_100028608, &unk_10001B000);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100004EF4()
{
  sub_100004FE0(319, &qword_100028678, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_100004FE0(319, &qword_100028680, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_100005034();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100004FE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10001993C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100005034()
{
  if (!qword_100028688)
  {
    sub_10000509C(255, &unk_100028690, TPSWidgetContent_ptr);
    v0 = sub_10001A30C();
    if (!v1)
    {
      atomic_store(v0, &qword_100028688);
    }
  }
}

uint64_t sub_10000509C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1000050E8()
{
  result = qword_1000286C8;
  if (!qword_1000286C8)
  {
    sub_100001D70(&qword_1000285F8, &qword_10001AF98);
    sub_1000051A0();
    sub_100002294(&qword_1000286E0, &qword_1000286E8, &unk_10001B020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286C8);
  }

  return result;
}

unint64_t sub_1000051A0()
{
  result = qword_1000286D0;
  if (!qword_1000286D0)
  {
    sub_100001D70(&qword_1000285E0, &qword_10001AF90);
    sub_100005254(&qword_1000286D8, type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286D0);
  }

  return result;
}

uint64_t sub_100005254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005300()
{
  v1 = (type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_10001992C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1000053E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100003F78(a1, v6, a2);
}

uint64_t sub_100005468()
{
  v1 = (type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10001997C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  v12 = v1[8];
  v13 = sub_10001992C();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1000055D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10001997C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000042AC(v1 + v4, a1);
}

uint64_t sub_1000056C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005700()
{
  v0 = sub_10001992C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001A09C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A08C();
  sub_10001A0CC();
  (*(v6 + 8))(v9, v5);
  v10 = [objc_allocWithZone(type metadata accessor for Assets()) init];
  v11 = sub_10000780C();
  v21 = v12;

  v13 = *(type metadata accessor for ImageView(0) + 24);
  v14 = v1[13];
  v14(v4, enum case for ColorScheme.light(_:), v0);
  LOBYTE(v10) = sub_10001991C();
  v15 = v1[1];
  v15(v4, v0);
  if ((v10 & 1) == 0 || !v11)
  {
    v14(v4, enum case for ColorScheme.dark(_:), v0);
    v17 = sub_10001991C();
    v15(v4, v0);
    if (v17)
    {
      if (v21)
      {
        v18 = v21;
        v16 = sub_100019F4C();

        return v16;
      }
    }

    else
    {
    }

    return 0;
  }

  v16 = sub_100019F4C();

  return v16;
}

double sub_1000059AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100005700();
  if (v7)
  {
    v8 = v7;
    sub_1000062F0(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageView);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    sub_1000067AC(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ImageView);
    v16 = sub_100006814;
    v17 = v10;
    v18 = 0;
  }

  else
  {
    v11 = [objc_opt_self() whiteColor];
    sub_100019F3C();
    v12 = sub_100019EEC();

    v16 = v12;
    v17 = 0;
    v18 = 1;
  }

  sub_100001A1C(&qword_100028850, &qword_10001B180);
  sub_100002294(&qword_100028858, &qword_100028850, &qword_10001B180);
  sub_100019CBC();
  result = *&v19;
  v14 = v20;
  *a2 = v19;
  *(a2 + 16) = v14;
  return result;
}

uint64_t sub_100005BB0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v51 = a1;
  v54 = a2;
  v55 = sub_100019C2C();
  v53 = *(v55 - 8);
  v2 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001A1C(&qword_100028860, &qword_10001B188);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46 - v6;
  v8 = sub_100019F5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100001A1C(&qword_100028868, &qword_10001B190);
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v47);
  v16 = &v46 - v15;
  v46 = sub_100001A1C(&qword_100028870, &qword_10001B198);
  v17 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v19 = &v46 - v18;
  v48 = sub_100001A1C(&qword_100028878, &qword_10001B1A0);
  v20 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v22 = &v46 - v21;
  v49 = sub_100001A1C(&qword_100028880, &qword_10001B1A8);
  v23 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v50 = &v46 - v24;
  (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
  sub_100019F9C();
  (*(v9 + 8))(v12, v8);
  sub_10001A10C();
  v25 = sub_10001A11C();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  sub_100019F8C();

  sub_100003504(v7, &qword_100028860, &qword_10001B188);
  sub_10001996C();
  sub_10001996C();
  sub_10001A02C();
  sub_100019A1C();
  (*(v13 + 32))(v19, v16, v47);
  v26 = &v19[*(v46 + 36)];
  v27 = v63;
  *(v26 + 4) = v62;
  *(v26 + 5) = v27;
  *(v26 + 6) = v64;
  v28 = v59;
  *v26 = v58;
  *(v26 + 1) = v28;
  v29 = v61;
  *(v26 + 2) = v60;
  *(v26 + 3) = v29;
  sub_100006898(v19, v22);
  v30 = &v22[*(v48 + 36)];
  *v30 = 0;
  *(v30 + 4) = 257;
  v31 = *(v51 + 16);
  if (v31 && (v32 = [v31 assets]) != 0 && (v33 = v32, v34 = objc_msgSend(v32, "alt"), v33, v34))
  {
    v35 = sub_10001A22C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v56 = v35;
  v57 = v37;
  sub_100006908();
  v38 = sub_100019DCC();
  v40 = v39;
  v42 = v41;
  sub_10000695C();
  v43 = v50;
  sub_100019E6C();
  sub_100006A8C(v38, v40, v42 & 1);

  sub_100003504(v22, &qword_100028878, &qword_10001B1A0);
  v44 = v52;
  sub_100019C1C();
  sub_1000199CC();
  (*(v53 + 8))(v44, v55);
  return sub_100003504(v43, &qword_100028880, &qword_10001B1A8);
}

double sub_100006254@<D0>(uint64_t a1@<X8>)
{
  sub_1000059AC(v1, &v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006298@<X0>(void *a1@<X8>)
{
  result = sub_100019A6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1000062F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100006358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000063CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = sub_10001992C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100006498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_10001992C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100006554(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_100005034();
    if (v5 <= 0x3F)
    {
      sub_10001992C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000065F4()
{
  if (!qword_100028808)
  {
    v0 = sub_10001993C();
    if (!v1)
    {
      atomic_store(v0, &qword_100028808);
    }
  }
}

uint64_t sub_1000066A4()
{
  v1 = (type metadata accessor for ImageView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_1000067A0(*(v0 + v3), *(v0 + v3 + 8));

  v6 = v1[8];
  v7 = sub_10001992C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000067A0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000067AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100006814@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100005BB0(v5, a1);
}

uint64_t sub_100006898(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028870, &qword_10001B198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006908()
{
  result = qword_100028888;
  if (!qword_100028888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028888);
  }

  return result;
}

unint64_t sub_10000695C()
{
  result = qword_100028890;
  if (!qword_100028890)
  {
    sub_100001D70(&qword_100028878, &qword_10001B1A0);
    sub_1000069E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028890);
  }

  return result;
}

unint64_t sub_1000069E8()
{
  result = qword_100028898;
  if (!qword_100028898)
  {
    sub_100001D70(&qword_100028870, &qword_10001B198);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028898);
  }

  return result;
}

uint64_t sub_100006A8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100006AA0()
{
  result = qword_1000288A0;
  if (!qword_1000288A0)
  {
    sub_100001D70(&qword_1000288A8, &qword_10001B1B0);
    sub_100006B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288A0);
  }

  return result;
}

unint64_t sub_100006B24()
{
  result = qword_1000288B0;
  if (!qword_1000288B0)
  {
    sub_100001D70(&qword_1000288B8, &qword_10001B1B8);
    sub_100002294(&qword_100028858, &qword_100028850, &qword_10001B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288B0);
  }

  return result;
}

uint64_t sub_100006C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100006D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for TipsWidgetView()
{
  result = qword_100028918;
  if (!qword_100028918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000031E0(v2, &v17 - v11, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001A12C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10001A29C();
    v16 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10000709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for SystemWidgetView();
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100001A1C(&qword_100028950, &qword_10001B228);
  v6 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v8 = &v24 - v7;
  v9 = type metadata accessor for RectangularWidgetView();
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10001A12C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006E9C(v17);
  v18 = (*(v14 + 88))(v17, v13);
  v19 = enum case for WidgetFamily.accessoryRectangular(_:);
  v20 = *(type metadata accessor for TipsWidgetView() + 20);
  if (v18 == v19)
  {
    sub_1000031E0(a1 + v20, v12 + v9[7], &qword_1000284F8, &unk_10001C000);
    *v12 = swift_getKeyPath();
    sub_100001A1C(&qword_100028470, &qword_10001AB80);
    swift_storeEnumTagMultiPayload();
    v21 = v9[5];
    *(v12 + v21) = swift_getKeyPath();
    sub_100001A1C(&qword_100028480, qword_10001ABF0);
    swift_storeEnumTagMultiPayload();
    v22 = v12 + v9[6];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    sub_10000759C(v12, v8, type metadata accessor for RectangularWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100007548(&qword_100028958, type metadata accessor for RectangularWidgetView);
    sub_100007548(&qword_100028960, type metadata accessor for SystemWidgetView);
    sub_100019CBC();
    return sub_100007604(v12, type metadata accessor for RectangularWidgetView);
  }

  else
  {
    sub_1000031E0(a1 + v20, v5 + *(v27 + 20), &qword_1000284F8, &unk_10001C000);
    *v5 = swift_getKeyPath();
    sub_100001A1C(&qword_100028470, &qword_10001AB80);
    swift_storeEnumTagMultiPayload();
    sub_10000759C(v5, v8, type metadata accessor for SystemWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100007548(&qword_100028958, type metadata accessor for RectangularWidgetView);
    sub_100007548(&qword_100028960, type metadata accessor for SystemWidgetView);
    sub_100019CBC();
    sub_100007604(v5, type metadata accessor for SystemWidgetView);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_100007548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000759C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100007604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100007668()
{
  result = qword_100028968;
  if (!qword_100028968)
  {
    sub_100001D70(&qword_100028970, &qword_10001B2B8);
    sub_1000076EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028968);
  }

  return result;
}

unint64_t sub_1000076EC()
{
  result = qword_100028978;
  if (!qword_100028978)
  {
    sub_100001D70(&unk_100028980, &unk_10001B2C0);
    sub_100007548(&qword_100028958, type metadata accessor for RectangularWidgetView);
    sub_100007548(&qword_100028960, type metadata accessor for SystemWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028978);
  }

  return result;
}

id Assets.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000780C()
{
  v1 = sub_10001A09C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v35 = (v6 + 16);
  v7 = swift_allocObject();
  v36 = v7;
  *(v7 + 16) = 0;
  v34 = v7 + 16;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v9 = result;
    [result setDelegate:v0];
    v10 = objc_opt_self();
    v11 = [v10 defaultManager];
    [v11 setDelegate:v9];

    v12 = [v10 defaultManager];
    [v12 setDefaultSessionDelegate:v9];

    if ([objc_opt_self() isInternalDevice])
    {
      v13 = [v10 defaultManager];
      v14 = [objc_opt_self() defaultContext];
      v15 = [objc_allocWithZone(TPSURLSessionACAuthHandler) initWithAuthenticationContext:v14];

      [v13 setAuthenticationHandler:v15];
    }

    v16 = [objc_allocWithZone(TPSWidgetController) init];
    v17 = [v16 preferredDocument];
    sub_10001A08C();
    if (v17)
    {
      sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
      v18 = v6;
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10001B2D0;
      *(v19 + 56) = sub_1000083A8();
      *(v19 + 64) = sub_100008A7C(&qword_100028A28, sub_1000083A8);
      *(v19 + 32) = v17;
      v20 = v17;
      sub_10001A0DC();

      (*(v2 + 8))(v5, v1);
      v21 = dispatch_semaphore_create(0);
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v21;
      v41 = sub_1000083F8;
      v42 = v22;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_100007D9C;
      v40 = &unk_100025520;
      v23 = _Block_copy(&aBlock);

      v24 = v21;

      [v16 widgetAssetsForDocument:v20 preferCacheIfAvailable:1 userInterfaceStyle:0 completionHandler:v23];
      _Block_release(v23);
      sub_10001A2AC();
      v25 = dispatch_semaphore_create(0);
      v26 = swift_allocObject();
      v27 = v36;
      *(v26 + 16) = v36;
      *(v26 + 24) = v25;
      v41 = sub_100008484;
      v42 = v26;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v28 = v27;
      v39 = sub_100007D9C;
      v40 = &unk_100025570;
      v29 = _Block_copy(&aBlock);

      v30 = v25;

      [v16 widgetAssetsForDocument:v20 preferCacheIfAvailable:1 userInterfaceStyle:1 completionHandler:v29];
      _Block_release(v29);
      sub_10001A2AC();

      swift_beginAccess();
      v31 = *(v18 + 16);
      swift_beginAccess();
    }

    else
    {
      sub_10001A0CC();

      (*(v2 + 8))(v5, v1);
      v28 = v36;
      v31 = *v35;
    }

    v32 = *(v28 + 16);
    v33 = v31;

    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_10001987C();
    v12 = sub_10001989C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_10001989C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100003504(v9, &qword_100028A30, &qword_10001AE60);
}

Swift::Int sub_100007EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v44 = a5;
  v47 = a7;
  v45 = a6;
  v11 = sub_10001A09C();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v39 - v17;
  v19 = sub_10001989C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084B8(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100003504(v18, &qword_100028A30, &qword_10001AE60);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    sub_10001A08C();
    sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
    v24 = swift_allocObject();
    v41 = v11;
    v25 = v24;
    v39 = xmmword_10001B2D0;
    *(v24 + 16) = xmmword_10001B2D0;
    v26 = sub_10001988C();
    v42 = a4;
    v28 = v27;
    v25[7] = &type metadata for String;
    v40 = sub_100008528();
    v25[8] = v40;
    v25[4] = v26;
    v25[5] = v28;
    sub_10001A0DC();

    v29 = *(v46 + 8);
    v29(v14, v11);
    v30 = v29;
    v31 = sub_10000866C();
    swift_beginAccess();
    v32 = *(a3 + 16);
    *(a3 + 16) = v31;

    sub_10001A08C();
    v33 = swift_allocObject();
    *(v33 + 16) = v39;
    swift_beginAccess();
    v48 = *(a3 + 16);
    v34 = v48;
    sub_100001A1C(&qword_100028A40, &qword_10001B300);
    v35 = sub_10001A2FC();
    v36 = v40;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v36;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;

    sub_10001A0DC();

    v30(v14, v41);
    (*(v20 + 8))(v23, v19);
  }

  return sub_10001A2BC();
}

id Assets.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Assets();
  return objc_msgSendSuper2(&v2, "init");
}

id Assets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Assets();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008370()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000083A8()
{
  result = qword_100028A20;
  if (!qword_100028A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028A20);
  }

  return result;
}

uint64_t sub_10000842C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008444()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000084B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008528()
{
  result = qword_100028A38;
  if (!qword_100028A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A38);
  }

  return result;
}

unint64_t sub_10000857C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001A1C(&qword_100028A68, &qword_10001B318);
    v3 = sub_10001A39C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100015E40(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

id sub_10000866C()
{
  v0 = sub_10001A09C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A1C(&qword_100028A48, &qword_10001B308);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B2D0;
  *(inited + 32) = kCGImageSourceShouldCache;
  *(inited + 40) = 0;
  v6 = kCGImageSourceShouldCache;
  sub_10000857C(inited);
  swift_setDeallocating();
  sub_100003504(inited + 32, &unk_100028A50, &qword_10001B310);
  sub_10001986C(v7);
  v9 = v8;
  type metadata accessor for CFString(0);
  sub_100008A7C(&qword_1000284E8, type metadata accessor for CFString);
  isa = sub_10001A20C().super.isa;
  v11 = CGImageSourceCreateWithURL(v9, isa);

  if (v11)
  {
    v12 = sub_10001A20C().super.isa;

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, v12);

    sub_10001A08C();
    if (ImageAtIndex)
    {
      sub_10001A0CC();
      (*(v1 + 8))(v4, v0);
      v14 = [objc_allocWithZone(UIImage) initWithCGImage:ImageAtIndex];

      return v14;
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_10001A38C(57);
    v19._countAndFlagsBits = 0xD000000000000037;
    v19._object = 0x800000010001C320;
    sub_10001A24C(v19);
    sub_10001989C();
    sub_100008A7C(&qword_100028A60, &type metadata accessor for URL);
    v20._countAndFlagsBits = sub_10001A3BC();
    sub_10001A24C(v20);

    sub_10001A0CC();
  }

  else
  {

    sub_10001A08C();
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_10001A38C(47);

    v16 = 0xD00000000000002DLL;
    v17 = 0x800000010001C2F0;
    sub_10001989C();
    sub_100008A7C(&qword_100028A60, &type metadata accessor for URL);
    v18._countAndFlagsBits = sub_10001A3BC();
    sub_10001A24C(v18);

    sub_10001A0CC();
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_100008A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SystemWidgetView.init(entry:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for SystemWidgetView() + 20);

  return sub_100008B9C(a1, v4);
}

uint64_t type metadata accessor for SystemWidgetView()
{
  result = qword_100028B28;
  if (!qword_100028B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000031E0(v2, &v17 - v11, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001A12C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10001A29C();
    v16 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

id sub_100008E0C()
{
  v1 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for SystemWidgetView();
  sub_1000031E0(v0 + *(v5 + 20), v4, &qword_1000284F8, &unk_10001C000);
  v6 = type metadata accessor for DocumentEntry();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_100003504(v4, &qword_1000284F8, &unk_10001C000);
  }

  else
  {
    v7 = *&v4[*(v6 + 28)];
    v8 = v7;
    sub_10000A47C(v4, type metadata accessor for DocumentEntry);
    if (v7)
    {
      return v7;
    }
  }

  v9 = [objc_allocWithZone(TPSWidgetController) init];
  v10 = [v9 preferredDocument];
  v11 = [v10 widgetContent];
  if (v11)
  {

    v7 = [v10 widgetContent];
  }

  else
  {

    return [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
  }

  return v7;
}

uint64_t SystemWidgetView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for SystemWidgetView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000A178(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000090E8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_10000914C;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000090E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43[1] = a2;
  v49 = a3;
  v44 = sub_100001A1C(&qword_100028B70, &qword_10001B3E0);
  v4 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v6 = v43 - v5;
  v48 = sub_100001A1C(&qword_100028B78, &qword_10001B3E8);
  v7 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v46 = v43 - v8;
  v45 = type metadata accessor for LargeTipView(0);
  v9 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v11 = (v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100001A1C(&qword_100028B80, &qword_10001B3F0);
  v12 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v14 = v43 - v13;
  v15 = type metadata accessor for SystemWidgetView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001A12C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008C0C(v23);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10000A178(a1, v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
    v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v26 = swift_allocObject();
    sub_1000090E8(v18, v26 + v25);
    v50 = 0;
    v51 = 0;
    v52 = 1;
    v53 = sub_10000A414;
    v54 = v26;
    v55 = 0;
LABEL_5:

    sub_100001A1C(&qword_100028BB8, &qword_10001B408);
    sub_100001A1C(&qword_100028BC8, &qword_10001B410);
    sub_100002294(&qword_100028BB0, &qword_100028BB8, &qword_10001B408);
    sub_100002294(&qword_100028BC0, &qword_100028BC8, &qword_10001B410);
    sub_100019CBC();
    v29 = v58;
    v30 = v59;
    v31 = v57;
    *v14 = v56;
    *(v14 + 1) = v31;
    *(v14 + 4) = v29;
    v14[40] = v30;
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028BA0, &qword_10001B400);
    sub_100009FD0();
    sub_10000A0B0();
    sub_100019CBC();
  }

  if (v24 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10000A178(a1, v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
    v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v28 = swift_allocObject();
    sub_1000090E8(v18, v28 + v27);
    v50 = 0;
    v51 = 0;
    v52 = 1;
    v53 = sub_10000A4E8;
    v54 = v28;
    v55 = 1;
    goto LABEL_5;
  }

  if (v24 == enum case for WidgetFamily.systemLarge(_:))
  {
    v33 = sub_100008E0C();
    sub_10001996C();
    v35 = ceil(v34 * 0.47);
    sub_10001996C();
    v37 = ceil(v36 * 0.47);
    *v11 = swift_getKeyPath();
    sub_100001A1C(&qword_100028478, &qword_10001AF50);
    swift_storeEnumTagMultiPayload();
    v38 = v45;
    v39 = *(v45 + 20);
    *(v11 + v39) = swift_getKeyPath();
    sub_100001A1C(&qword_100028480, qword_10001ABF0);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(v38 + 24)) = v33;
    v40 = (v11 + *(v38 + 28));
    *v40 = v35;
    v40[1] = v37;
    sub_10000A178(v11, v6, type metadata accessor for LargeTipView);
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028B88, &qword_10001B3F8);
    sub_100009F78();
    sub_100002294(&qword_100028B98, &qword_100028B88, &qword_10001B3F8);
    v41 = v46;
    sub_100019CBC();
    sub_1000031E0(v41, v14, &qword_100028B78, &qword_10001B3E8);
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028BA0, &qword_10001B400);
    sub_100009FD0();
    sub_10000A0B0();
    sub_100019CBC();
    sub_100003504(v41, &qword_100028B78, &qword_10001B3E8);
    return sub_10000A47C(v11, type metadata accessor for LargeTipView);
  }

  else
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    v6[16] = 1;
    *(v6 + 3) = nullsub_2;
    *(v6 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028B88, &qword_10001B3F8);
    sub_100009F78();
    sub_100002294(&qword_100028B98, &qword_100028B88, &qword_10001B3F8);
    v42 = v46;
    sub_100019CBC();
    sub_1000031E0(v42, v14, &qword_100028B78, &qword_10001B3E8);
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028BA0, &qword_10001B400);
    sub_100009FD0();
    sub_10000A0B0();
    sub_100019CBC();
    sub_100003504(v42, &qword_100028B78, &qword_10001B3E8);
    return (*(v20 + 8))(v23, v19);
  }
}

void sub_10000998C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SystemWidgetView();
  sub_1000031E0(a1 + *(v8 + 20), v7, &qword_1000284F8, &unk_10001C000);
  v9 = type metadata accessor for DocumentEntry();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_100003504(v7, &qword_1000284F8, &unk_10001C000);
  }

  else
  {
    v10 = *&v7[*(v9 + 28)];
    v11 = v10;
    sub_10000A47C(v7, type metadata accessor for DocumentEntry);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  v12 = [objc_allocWithZone(TPSWidgetController) init];
  v13 = [v12 preferredDocument];
  v14 = [v13 widgetContent];
  if (v14)
  {

    v10 = [v13 widgetContent];
  }

  else
  {

    v10 = [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
  }

LABEL_7:
  *a2 = v10;
}

uint64_t sub_100009B70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000A178(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000090E8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10000A4EC;
  a2[1] = v7;
  return result;
}

uint64_t sub_100009C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100009DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100009EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SystemWidgetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000916C(v6, a1, a2);
}

unint64_t sub_100009F78()
{
  result = qword_100028B90;
  if (!qword_100028B90)
  {
    type metadata accessor for LargeTipView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B90);
  }

  return result;
}

unint64_t sub_100009FD0()
{
  result = qword_100028BA8;
  if (!qword_100028BA8)
  {
    sub_100001D70(&qword_100028BA0, &qword_10001B400);
    sub_100002294(&qword_100028BB0, &qword_100028BB8, &qword_10001B408);
    sub_100002294(&qword_100028BC0, &qword_100028BC8, &qword_10001B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BA8);
  }

  return result;
}

unint64_t sub_10000A0B0()
{
  result = qword_100028BD0;
  if (!qword_100028BD0)
  {
    sub_100001D70(&qword_100028B78, &qword_10001B3E8);
    sub_100009F78();
    sub_100002294(&qword_100028B98, &qword_100028B88, &qword_10001B3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD0);
  }

  return result;
}

uint64_t sub_10000A178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A1E0()
{
  v1 = type metadata accessor for SystemWidgetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10001A12C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = type metadata accessor for DocumentEntry();
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v10 = sub_1000198BC();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = v9[5];
    v12 = sub_10001A1EC();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(&v8[v11], 1, v12))
    {
      (*(v13 + 8))(&v8[v11], v12);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000A4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_10001A1EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(TPSWidgetController) init];
  v12 = [v11 preferredDocument];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 widgetContent];

    if (v14)
    {
      [v14 priority];
    }
  }

  sub_10001A1BC();
  sub_1000198AC();
  (*(v7 + 16))(v5, v10, v6);
  v15 = v5;
  v16 = *(v7 + 56);
  v16(v15, 0, 1, v6);
  v25 = [v11 preferredDocument];
  v17 = [v11 preferredDocument];
  v18 = [v17 widgetContent];

  (*(v7 + 8))(v10, v6);
  v19 = type metadata accessor for DocumentEntry();
  v20 = v19[5];
  v16(a1 + v20, 1, 1, v6);
  v21 = v19[6];
  v22 = v19[7];
  result = sub_10000C984(v15, a1 + v20);
  *(a1 + v21) = v25;
  *(a1 + v22) = v18;
  return result;
}

uint64_t sub_10000A798@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DocumentEntry();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001A09C();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_10001A1EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A1BC();
  sub_1000198AC();
  (*(v14 + 16))(v12, v17, v13);
  v18 = *(v14 + 56);
  v18(v12, 0, 1, v13);
  v19 = [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
  v20 = v3[7];
  v18((a1 + v20), 1, 1, v13);
  v21 = v3[8];
  v22 = v3[9];
  sub_10000C984(v12, a1 + v20);
  *(a1 + v21) = 0;
  *(a1 + v22) = v19;
  v23 = v30;
  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10001B2D0;
  v25 = v31;
  sub_10000C56C(a1, v31);
  v26 = DocumentEntry.description.getter();
  v28 = v27;
  sub_10000C924(v25, type metadata accessor for DocumentEntry);
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008528();
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  sub_10001A0BC();

  (*(v32 + 8))(v23, v33);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_10000AAFC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v28 = sub_10001A09C();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A1AC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v27 = sub_100001A1C(&qword_100028C28, &qword_10001B5A8);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v27);
  v12 = &v26 - v11;
  v13 = type metadata accessor for DocumentEntry();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A4F0(v17);
  sub_100001A1C(&qword_100028C30, &qword_10001B5B0);
  v18 = *(v14 + 72);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  v26 = xmmword_10001B2D0;
  *(v20 + 16) = xmmword_10001B2D0;
  sub_10000C56C(v17, v20 + v19);
  sub_10001A19C();
  sub_10000C8DC(&qword_100028C20, type metadata accessor for DocumentEntry);
  sub_10001A1FC();
  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  v22 = DocumentEntry.description.getter();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008528();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  sub_10001A0BC();

  (*(v3 + 8))(v6, v28);
  v30(v12);
  (*(v9 + 8))(v12, v27);
  return sub_10000C924(v17, type metadata accessor for DocumentEntry);
}

uint64_t sub_10000AE94(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_10001A09C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DocumentEntry();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A4F0(v11);
  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10001B2D0;
  v13 = DocumentEntry.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008528();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_10001A0BC();

  (*(v4 + 8))(v7, v3);
  a2(v11);
  return sub_10000C924(v11, type metadata accessor for DocumentEntry);
}

uint64_t sub_10000B06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B120;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000B120()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000C9F4;

  return TimelineProvider.relevance()(a1, a2, a3);
}

id sub_10000B2C8@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v91 = sub_100001A1C(&qword_1000284A8, &qword_10001AC28);
  v89 = *(v91 - 8);
  v1 = *(v89 + 64);
  __chkstk_darwin(v91);
  v87 = &v84 - v2;
  v92 = sub_100001A1C(&qword_1000284A0, &qword_10001AC20);
  v90 = *(v92 - 8);
  v3 = *(v90 + 64);
  __chkstk_darwin(v92);
  v88 = &v84 - v4;
  v97 = sub_100001A1C(&qword_100028498, &qword_10001AC18);
  v94 = *(v97 - 8);
  v5 = *(v94 + 64);
  __chkstk_darwin(v97);
  v93 = &v84 - v6;
  v101 = sub_100001A1C(&qword_100028490, &qword_10001AC10);
  v98 = *(v101 - 8);
  v7 = *(v98 + 64);
  __chkstk_darwin(v101);
  v95 = &v84 - v8;
  v102 = sub_100001A1C(&qword_100028488, &qword_10001AC08);
  v99 = *(v102 - 8);
  v9 = *(v99 + 64);
  __chkstk_darwin(v102);
  v96 = &v84 - v10;
  v11 = sub_100001A1C(&qword_100028BE0, &qword_10001B4E0);
  v103 = *(v11 - 8);
  v104 = v11;
  v12 = *(v103 + 64);
  __chkstk_darwin(v11);
  v100 = &v84 - v13;
  v14 = sub_10001A09C();
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = *(v109 + 64);
  __chkstk_darwin(v14);
  v108 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001A12C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v107 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v106 = &v84 - v22;
  __chkstk_darwin(v23);
  v113 = &v84 - v24;
  v26 = __chkstk_darwin(v25);
  v28 = &v84 - v27;
  v115 = v18[13];
  v115(&v84 - v27, enum case for WidgetFamily.accessoryRectangular(_:), v17, v26);
  v29 = sub_10000C2CC(0, 1, 1, &_swiftEmptyArrayStorage);
  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_10000C2CC(v30 > 1, v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v33 = v18[4];
  v32 = v18 + 4;
  v34 = (*(v32 + 48) + 32) & ~*(v32 + 48);
  v35 = v32[5];
  v114 = v33;
  v33(&v29[v34 + v35 * v31], v28, v17);
  sub_100019C0C();
  v36 = sub_100019DBC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  (v115)(v113, enum case for WidgetFamily.systemSmall(_:), v17);
  v111 = v40;
  v86 = v36;
  v85 = v38;
  sub_10000C4A4(v36, v38, v40 & 1);
  v43 = *(v29 + 2);
  v44 = *(v29 + 3);
  v45 = v43 + 1;
  v112 = v42;

  if (v43 >= v44 >> 1)
  {
    v29 = sub_10000C2CC(v44 > 1, v43 + 1, 1, v29);
  }

  v46 = v106;
  *(v29 + 2) = v45;
  v114(&v29[v34 + v43 * v35], v113, v17);
  (v115)(v46, enum case for WidgetFamily.systemMedium(_:), v17);
  v47 = *(v29 + 3);
  v48 = v43 + 2;
  if ((v43 + 2) > (v47 >> 1))
  {
    v29 = sub_10000C2CC(v47 > 1, v43 + 2, 1, v29);
  }

  *(v29 + 2) = v48;
  v114(&v29[v34 + v45 * v35], v46, v17);
  v49 = v107;
  (v115)(v107, enum case for WidgetFamily.systemLarge(_:), v17);
  v50 = *(v29 + 3);
  v51 = v43 + 3;
  if (v51 > (v50 >> 1))
  {
    v29 = sub_10000C2CC(v50 > 1, v51, 1, v29);
  }

  *(v29 + 2) = v51;
  v114(&v29[v34 + v48 * v35], v49, v17);
  v52 = v108;
  sub_10001A08C();
  sub_10001A0CC();
  (*(v109 + 8))(v52, v110);
  result = [objc_opt_self() clientBundleIdentifier];
  if (result)
  {
    v54 = result;
    sub_10001A22C();

    sub_100001A1C(&qword_100028BE8, &qword_10001B4E8);
    v55 = type metadata accessor for TipsWidgetWrapperView();
    v56 = sub_10000C8DC(&qword_100028BF0, type metadata accessor for TipsWidgetWrapperView);
    v116 = v55;
    v117 = v56;
    swift_getOpaqueTypeConformance2();
    sub_10000C4B4();
    v57 = v87;
    sub_10001A18C();
    sub_100019C0C();
    v58 = sub_100019DBC();
    v60 = v59;
    LOBYTE(v55) = v61;
    v62 = sub_10000C508();
    v63 = v88;
    v64 = v91;
    sub_100019C9C();
    sub_100006A8C(v58, v60, v55 & 1);

    (*(v89 + 8))(v57, v64);
    v116 = v64;
    v117 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = v93;
    v67 = v92;
    sub_100019C6C();
    (*(v90 + 8))(v63, v67);
    v116 = v67;
    v117 = OpaqueTypeConformance2;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = v111;
    v70 = v95;
    v71 = v86;
    v72 = v85;
    v73 = v97;
    sub_100019C5C();
    sub_100006A8C(v71, v72, v69 & 1);

    (*(v94 + 8))(v66, v73);
    sub_100001A1C(&qword_100028C00, &qword_10001B4F0);
    v74 = *(sub_10001A15C() - 8);
    v75 = *(v74 + 72);
    v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    *(swift_allocObject() + 16) = xmmword_10001B480;
    sub_10001A13C();
    sub_10001A14C();
    v116 = v73;
    v117 = v68;
    v77 = swift_getOpaqueTypeConformance2();
    v78 = v96;
    v79 = v101;
    sub_100019C7C();

    (*(v98 + 8))(v70, v79);
    v116 = v79;
    v117 = v77;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v100;
    v82 = v102;
    sub_100019C8C();
    (*(v99 + 8))(v78, v82);
    v116 = v82;
    v117 = v80;
    swift_getOpaqueTypeConformance2();
    v83 = v104;
    sub_100019CAC();
    sub_100006A8C(v71, v72, v111 & 1);

    return (*(v103 + 8))(v81, v83);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000BFA0(uint64_t a1)
{
  v2 = sub_1000199FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TipsWidgetWrapperView();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 20);
  sub_10000C56C(a1, v10 + v12);
  v13 = type metadata accessor for DocumentEntry();
  (*(*(v13 - 8) + 56))(v10 + v12, 0, 1, v13);
  *v10 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  if (DocumentEntry.isPlaceholder.getter())
  {
    sub_1000199EC();
  }

  else
  {
    v15[1] = 0;
    sub_10000C8DC(&qword_100028C08, &type metadata accessor for RedactionReasons);
    sub_10001A40C();
  }

  sub_10000C8DC(&qword_100028BF0, type metadata accessor for TipsWidgetWrapperView);
  sub_100019E9C();
  (*(v3 + 8))(v6, v2);
  return sub_10000C924(v10, type metadata accessor for TipsWidgetWrapperView);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000C24C();
  sub_100019FAC();
  return 0;
}

unint64_t sub_10000C24C()
{
  result = qword_100028BD8;
  if (!qword_100028BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD8);
  }

  return result;
}

size_t sub_10000C2CC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001A1C(&qword_100028C10, &qword_10001B528);
  v10 = *(sub_10001A12C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10001A12C() - 8);
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

uint64_t sub_10000C4A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000C4B4()
{
  result = qword_100028BF8;
  if (!qword_100028BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BF8);
  }

  return result;
}

unint64_t sub_10000C508()
{
  result = qword_1000284B0;
  if (!qword_1000284B0)
  {
    sub_100001D70(&qword_1000284A8, &qword_10001AC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000284B0);
  }

  return result;
}

uint64_t sub_10000C56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000C5D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A1C(&qword_100028C18, &qword_10001BCD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10000C6F4()
{
  sub_100001D70(&qword_100028BE0, &qword_10001B4E0);
  sub_100001D70(&qword_100028488, &qword_10001AC08);
  sub_100001D70(&qword_100028490, &qword_10001AC10);
  sub_100001D70(&qword_100028498, &qword_10001AC18);
  sub_100001D70(&qword_1000284A0, &qword_10001AC20);
  sub_100001D70(&qword_1000284A8, &qword_10001AC28);
  sub_10000C508();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000C8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000C984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DocumentEntry.isPlaceholder.getter()
{
  v1 = sub_10001A09C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() tps_userLanguageCode];
  v28 = sub_10001A22C();
  v8 = v7;

  v25 = type metadata accessor for DocumentEntry();
  v26 = v0;
  v9 = *(v0 + *(v25 + 24));
  v29 = v8;
  if (v9)
  {
    v10 = [v9 userLanguageCode];
    v11 = sub_10001A22C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v14 = swift_allocObject();
  v27 = xmmword_10001B2D0;
  *(v14 + 16) = xmmword_10001B2D0;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_100008528();
  *(v14 + 64) = v15;
  v24 = v11;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;

  sub_10001A0DC();

  v16 = *(v2 + 8);
  v16(v5, v1);
  sub_10001A08C();
  v17 = swift_allocObject();
  *(v17 + 16) = v27;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v15;
  v18 = v28;
  v19 = v29;
  *(v17 + 32) = v28;
  *(v17 + 40) = v19;

  sub_10001A0DC();

  v16(v5, v1);
  if (v9 && *(v26 + *(v25 + 28)))
  {
    if (v24 == v18 && v13 == v19)
    {

      v20 = 0;
    }

    else
    {
      v21 = sub_10001A3CC();

      v20 = v21 ^ 1;
    }
  }

  else
  {

    v20 = 1;
  }

  return v20 & 1;
}

uint64_t type metadata accessor for DocumentEntry()
{
  result = qword_100028CB0;
  if (!qword_100028CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentEntry.init(date:relevance:document:widgetContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for DocumentEntry();
  v11 = v10[5];
  v12 = sub_10001A1EC();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v14 = v10[6];
  v13 = v10[7];
  v15 = sub_1000198BC();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  result = sub_10000C984(a2, a5 + v11);
  *(a5 + v14) = a3;
  *(a5 + v13) = a4;
  return result;
}

uint64_t DocumentEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000198BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentEntry.date.setter(uint64_t a1)
{
  v3 = sub_1000198BC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DocumentEntry.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DocumentEntry() + 20);

  return sub_10000CF44(v3, a1);
}

uint64_t sub_10000CF44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DocumentEntry.relevance.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DocumentEntry() + 20);

  return sub_10000C984(a1, v3);
}

void *DocumentEntry.document.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentEntry() + 24));
  v2 = v1;
  return v1;
}

void DocumentEntry.document.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentEntry() + 24);

  *(v1 + v3) = a1;
}

void *DocumentEntry.widgetContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentEntry() + 28));
  v2 = v1;
  return v1;
}

void DocumentEntry.widgetContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentEntry() + 28);

  *(v1 + v3) = a1;
}

uint64_t DocumentEntry.description.getter()
{
  v1 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_10001A38C(105);
  v24._countAndFlagsBits = 0xD000000000000016;
  v24._object = 0x800000010001C5A0;
  sub_10001A24C(v24);
  sub_1000198BC();
  sub_10000D59C();
  v25._countAndFlagsBits = sub_10001A3BC();
  sub_10001A24C(v25);

  v26._countAndFlagsBits = 0x3A65726F6353202CLL;
  v26._object = 0xE900000000000020;
  sub_10001A24C(v26);
  v8 = type metadata accessor for DocumentEntry();
  v9 = v8[5];
  sub_10000CF44(v0 + v9, v7);
  v10 = sub_10001A1EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) == 1)
  {
    sub_10000D5F4(v7);
  }

  else
  {
    sub_10001A1CC();
    (*(v11 + 8))(v7, v10);
  }

  sub_10001A28C();
  v27._countAndFlagsBits = 0x697461727544202CLL;
  v27._object = 0xEC000000203A6E6FLL;
  sub_10001A24C(v27);
  sub_10000CF44(v0 + v9, v5);
  if (v12(v5, 1, v10) == 1)
  {
    sub_10000D5F4(v5);
  }

  else
  {
    sub_10001A1DC();
    (*(v11 + 8))(v5, v10);
  }

  sub_10001A27C();
  v28._countAndFlagsBits = 0x73646E6F63657320;
  v28._object = 0xEF203A706954202CLL;
  sub_10001A24C(v28);
  v21 = *(v0 + v8[6]);
  v13 = v21;
  sub_100001A1C(&qword_100028C48, &qword_10001B5C0);
  v29._countAndFlagsBits = sub_10001A23C();
  sub_10001A24C(v29);

  v30._countAndFlagsBits = 0xD000000000000012;
  v30._object = 0x800000010001C5C0;
  sub_10001A24C(v30);
  v21 = *(v0 + v8[7]);
  v14 = v21;
  sub_100001A1C(&qword_100028C50, &qword_10001B5C8);
  v31._countAndFlagsBits = sub_10001A23C();
  sub_10001A24C(v31);

  v32._object = 0x800000010001C5E0;
  v32._countAndFlagsBits = 0xD000000000000011;
  sub_10001A24C(v32);
  v15 = DocumentEntry.isPlaceholder.getter();
  v16 = (v15 & 1) == 0;
  if (v15)
  {
    v17._countAndFlagsBits = 1702195828;
  }

  else
  {
    v17._countAndFlagsBits = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  v17._object = v18;
  sub_10001A24C(v17);

  return v22;
}

unint64_t sub_10000D59C()
{
  result = qword_100028C40;
  if (!qword_100028C40)
  {
    sub_1000198BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C40);
  }

  return result;
}

uint64_t sub_10000D5F4(uint64_t a1)
{
  v2 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000198BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
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

uint64_t sub_10000D7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000198BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10000D8D0()
{
  sub_1000198BC();
  if (v0 <= 0x3F)
  {
    sub_10000D9B4();
    if (v1 <= 0x3F)
    {
      sub_10000DA0C(319, &unk_100028CC8, &qword_100028A20, TPSDocument_ptr);
      if (v2 <= 0x3F)
      {
        sub_10000DA0C(319, &qword_100028688, &unk_100028690, TPSWidgetContent_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000D9B4()
{
  if (!qword_100028CC0)
  {
    sub_10001A1EC();
    v0 = sub_10001A30C();
    if (!v1)
    {
      atomic_store(v0, &qword_100028CC0);
    }
  }
}

void sub_10000DA0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000509C(255, a3, a4);
    v5 = sub_10001A30C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_10000DA90@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SquareTitleView(0);
  v5 = v4[6];
  v6 = enum case for WidgetFamily.systemSmall(_:);
  v7 = sub_10001A12C();
  (*(*(v7 - 8) + 104))(a2 + v5, v6, v7);
  v8 = a1;
  sub_10001996C();
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + v4[7]) = a1;
  *(a2 + v4[8]) = v10;
  sub_10001996C();
  sub_10001996C();
  sub_10001A02C();
  sub_10001995C();
  v13 = (a2 + *(sub_100001A1C(&qword_100028D00, &qword_10001B718) + 36));
  *v13 = v15;
  v13[1] = v16;
  result = *&v17;
  v13[2] = v17;
  return result;
}

uint64_t sub_10000DBDC@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = sub_10000DC84;
  a1[1] = v3;

  return _objc_retain_x1();
}

uint64_t sub_10000DC4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000DC98()
{
  result = qword_100028D08;
  if (!qword_100028D08)
  {
    sub_100001D70(&qword_100028D10, &qword_10001B720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D08);
  }

  return result;
}

uint64_t HorizontalTipViewWithBody.init(family:widgetContent:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = swift_getKeyPath();
  v10 = type metadata accessor for HorizontalTipViewWithBody(0);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  v12 = v10[5];
  v11 = v10[6];
  v13 = sub_10001A12C();
  result = (*(*(v13 - 8) + 32))(a3 + v12, a1, v13);
  *(a3 + v11) = a2;
  *(a3 + v10[7]) = a4;
  *(a3 + v10[8]) = a5;
  return result;
}

uint64_t EnvironmentValues.isPlaceholder.getter()
{
  sub_100003B1C();
  sub_100019BAC();
  return v1;
}

uint64_t BackgroundGradient.init(endPoint:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_10000DE98()
{
  result = sub_100019EDC();
  qword_10002A3B8 = result;
  return result;
}

uint64_t sub_10000DEB8()
{
  v0 = sub_100019EBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A1C(&qword_100029220, &qword_10001BD88);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001B750;
  v6 = enum case for Color.RGBColorSpace.sRGB(_:);
  v7 = *(v1 + 104);
  v7(v4, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  sub_100019F1C();
  *(v5 + 32) = sub_100019FCC();
  *(v5 + 40) = v8;
  v7(v4, v6, v0);
  sub_100019F1C();
  *(v5 + 48) = sub_100019FCC();
  *(v5 + 56) = v9;
  v7(v4, v6, v0);
  sub_100019F1C();
  result = sub_100019FCC();
  *(v5 + 64) = result;
  *(v5 + 72) = v11;
  qword_10002A3C0 = v5;
  return result;
}

uint64_t sub_10000E0B0()
{
  sub_1000170F4();
  result = sub_100019BFC();
  qword_10002A3C8 = result;
  return result;
}

double sub_10000E0E0()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = *(v0 + 8);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    result = *v0;
    v11 = *(v0 + 8);
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
  }

  else
  {
    v14 = *v0;

    sub_10001A29C();
    v15 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();
    sub_100016FB0(*&v7, v6, v9, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v16;
  }

  return result;
}

uint64_t sub_10000E25C@<X0>(void *a1@<X8>)
{
  result = sub_100019B5C();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10000E28C@<X0>(void *a1@<X8>)
{
  result = sub_100019B5C();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10000E2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SquareTitleView(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for HorizontalTipViewWithBody(0);
  v13 = v12[5];
  v14 = v5[8];
  v15 = sub_10001A12C();
  (*(*(v15 - 8) + 16))(&v11[v14], a1 + v13, v15);
  v16 = *(a1 + v12[6]);
  v17 = *(a1 + v12[8]);
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  *v11 = KeyPath;
  v11[8] = 0;
  *(v11 + 2) = v19;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  v11[48] = 0;
  *&v11[v5[9]] = v16;
  *&v11[v5[10]] = v17;
  sub_10001702C(v11, v8, type metadata accessor for SquareTitleView);
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = sub_100001A1C(&qword_100029258, &unk_10001BE40);
  sub_10001702C(v8, a2 + *(v20 + 48), type metadata accessor for SquareTitleView);
  v21 = v16;
  sub_100017094(v11, type metadata accessor for SquareTitleView);
  return sub_100017094(v8, type metadata accessor for SquareTitleView);
}

uint64_t sub_10000E4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for HorizontalTipViewWithBody(0) + 24));
  v4 = v3;
  v5 = sub_10000E0E0();
  sub_10000E0E0();
  v7 = v6;
  sub_10000E0E0();
  v9 = v8;
  result = sub_100019CFC();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v3;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 64) = 0;
  return result;
}

double HorizontalTipViewWithBody.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_100028468 != -1)
  {
    swift_once();
  }

  *a1 = qword_10002A3C8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100001A1C(&qword_100028D18, &qword_10001B7D8);
  sub_10000E63C(v1, a1 + *(v3 + 44));
  v4 = type metadata accessor for HorizontalTipViewWithBody(0);
  v5 = *(v1 + *(v4 + 28));
  v6 = *(v1 + *(v4 + 32));
  sub_10001A01C();
  sub_10001995C();
  v7 = (a1 + *(sub_100001A1C(&qword_100028D20, &qword_10001B7E0) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_10000E63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001A1C(&qword_100029230, &qword_10001BE18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  *v10 = sub_100019C3C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_100001A1C(&qword_100029238, &qword_10001BE20);
  sub_10000E2DC(a1, &v10[*(v11 + 44)]);
  v12 = sub_100019C3C();
  v21 = 0;
  sub_10000E4A0(a1, &v31);
  v24 = *&v32[16];
  v25 = *&v32[32];
  v26 = v32[48];
  v22 = v31;
  v23 = *v32;
  v27[2] = *&v32[16];
  v27[3] = *&v32[32];
  v28 = v32[48];
  v27[0] = v31;
  v27[1] = *v32;
  sub_1000031E0(&v22, v29, &qword_100029240, &qword_10001BE28);
  sub_100003504(v27, &qword_100029240, &qword_10001BE28);
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v20[71] = v26;
  *&v20[7] = v22;
  v13 = v21;
  sub_1000031E0(v10, v7, &qword_100029230, &qword_10001BE18);
  sub_1000031E0(v7, a2, &qword_100029230, &qword_10001BE18);
  v14 = (a2 + *(sub_100001A1C(&qword_100029248, &qword_10001BE30) + 48));
  v29[0] = v12;
  v29[1] = 0;
  LOBYTE(v30[0]) = v13;
  *(v30 + 1) = *v20;
  *(&v30[1] + 1) = *&v20[16];
  *(&v30[2] + 1) = *&v20[32];
  *(&v30[3] + 1) = *&v20[48];
  *(&v30[4] + 1) = *&v20[64];
  v15 = v30[0];
  *v14 = v12;
  v14[1] = v15;
  v16 = v30[1];
  v17 = v30[2];
  v18 = v30[3];
  *(v14 + 73) = *(&v30[3] + 9);
  v14[3] = v17;
  v14[4] = v18;
  v14[2] = v16;
  sub_1000031E0(v29, &v31, &qword_100029250, &qword_10001BE38);
  sub_100003504(v10, &qword_100029230, &qword_10001BE18);
  v31 = v12;
  v32[0] = v13;
  *&v32[17] = *&v20[16];
  *&v32[33] = *&v20[32];
  v33 = *&v20[48];
  v34 = *&v20[64];
  *&v32[1] = *v20;
  sub_100003504(&v31, &qword_100029250, &qword_10001BE38);
  return sub_100003504(v7, &qword_100029230, &qword_10001BE18);
}

double sub_10000E8D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100028468 != -1)
  {
    swift_once();
  }

  *a2 = qword_10002A3C8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_100001A1C(&qword_100028D18, &qword_10001B7D8);
  sub_10000E63C(v2, a2 + *(v5 + 44));
  v6 = *(a1 + 32);
  v7 = *(v2 + *(a1 + 28));
  v8 = *(v2 + v6);
  sub_10001A01C();
  sub_10001995C();
  v9 = (a2 + *(sub_100001A1C(&qword_100028D20, &qword_10001B7E0) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

double sub_10000E9C8()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    result = *(v0 + 16);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
  }

  else
  {
    v14 = *(v0 + 16);

    sub_10001A29C();
    v15 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();
    sub_100016FB0(v7, v6, v9, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v16;
  }

  return result;
}

double SquareTitleView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100001A1C(&qword_100028D28, &qword_10001B7E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v26 - v5;
  v7 = sub_100001A1C(&qword_100028D30, &qword_10001B7F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  if (sub_1000126D4())
  {
    v11 = sub_100019BEC();
  }

  else
  {
    v11 = sub_100019BDC();
  }

  *v6 = v11;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v12 = sub_100001A1C(&qword_100028D38, &qword_10001B7F8);
  sub_10000ED48(v1, &v6[*(v12 + 44)]);
  v13 = sub_10000E9C8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_100019CFC();
  sub_100003A50(v6, v10, &qword_100028D28, &qword_10001B7E8);
  v21 = &v10[*(v7 + 36)];
  *v21 = v20;
  *(v21 + 1) = v13;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  v21[40] = 0;
  v22 = *(v1 + *(type metadata accessor for SquareTitleView(0) + 32));
  if (sub_1000126D4())
  {
    sub_10001A01C();
  }

  else
  {
    sub_10001A00C();
  }

  sub_10001995C();
  sub_100003A50(v10, a1, &qword_100028D30, &qword_10001B7F0);
  v23 = (a1 + *(sub_100001A1C(&qword_100028D40, &qword_10001B800) + 36));
  v24 = v26[1];
  *v23 = v26[0];
  v23[1] = v24;
  result = *&v27;
  v23[2] = v27;
  return result;
}

uint64_t sub_10000ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001A12C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SquareTitleView(0);
  v10 = *(a1 + v9[7]);
  v11 = *(a1 + v9[8]);
  v12 = v10;
  v13 = sub_10000E9C8();
  v14 = sub_10000E9C8();
  v16 = v15;
  (*(v5 + 16))(v8, a1 + v9[6], v4, v14);
  if (sub_1000126D4())
  {
    v17 = sub_100019FFC();
  }

  else
  {
    v17 = sub_100019FEC();
  }

  v35 = v17;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = type metadata accessor for TitleView(0);
  *(a2 + v22[5]) = v21;
  sub_100001A1C(&qword_100029228, &qword_10001BDE8);
  swift_storeEnumTagMultiPayload();
  v23 = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  v24 = a2 + v22[6];
  *v24 = v23;
  *(v24 + 8) = 0;
  *(a2 + v22[7]) = v10;
  *(a2 + v22[8]) = v11 - v13 - v16;
  result = (*(v5 + 32))(a2 + v22[9], v8, v4);
  *(a2 + v22[10]) = 0;
  v26 = (a2 + v22[11]);
  *v26 = v35;
  v26[1] = v19;
  v27 = (a2 + v22[12]);
  *v27 = 0x3E6E69616C703CLL;
  v27[1] = 0xE700000000000000;
  v28 = (a2 + v22[13]);
  *v28 = 0x3E6E69616C702F3CLL;
  v28[1] = 0xE800000000000000;
  v29 = (a2 + v22[14]);
  *v29 = 1701869940;
  v29[1] = 0xE400000000000000;
  v30 = (a2 + v22[15]);
  *v30 = 1954047348;
  v30[1] = 0xE400000000000000;
  v31 = (a2 + v22[16]);
  *v31 = 1954047348;
  v31[1] = 0xE400000000000000;
  v32 = (a2 + v22[17]);
  *v32 = 0x736B72616DLL;
  v32[1] = 0xE500000000000000;
  v33 = (a2 + v22[18]);
  *v33 = 0x6F43746E65636361;
  v33[1] = 0xEB00000000726F6CLL;
  return result;
}

uint64_t (*EnvironmentValues.isPlaceholder.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_100003B1C();
  sub_100019BAC();
  *(a1 + 16) = *(a1 + 17);
  return sub_10000F0C8;
}

uint64_t sub_10000F0C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_100019BBC();
}

uint64_t BackgroundGradient.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_100019CDC();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v30 = sub_10000F414();
  v38 = v9;
  v39 = &type metadata for LinearGradient;
  v40 = v14;
  v41 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = v16[8];
  __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v29 - v22;
  v24 = *(v2 + 24);
  v25 = *(v2 + 32);
  v24(v21);
  sub_100019CCC();
  v35 = v9;
  v36 = v14;
  v37 = v3;
  sub_10001A02C();
  sub_100019E7C();
  (*(v32 + 8))(v8, v33);
  (*(v31 + 8))(v13, v9);
  v26 = v16[2];
  v26(v23, v19, OpaqueTypeMetadata2);
  v27 = v16[1];
  v27(v19, OpaqueTypeMetadata2);
  v26(v34, v23, OpaqueTypeMetadata2);
  return (v27)(v23, OpaqueTypeMetadata2);
}

unint64_t sub_10000F414()
{
  result = qword_100028D48;
  if (!qword_100028D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D48);
  }

  return result;
}

double sub_10000F468@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100028460 != -1)
  {
    swift_once();
  }

  sub_100019FDC();
  sub_10001A06C();
  if (a1[2])
  {
    sub_10001A05C();
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
  }

  sub_10001999C();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

double sub_10000F538@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000F468(*(v1 + 32), a1);
}

uint64_t sub_10000F5C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return BackgroundGradient.body.getter(a1, a2);
}

uint64_t sub_10000F610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A12C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10000F6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A12C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_10000F7AC()
{
  sub_10000FAF4(319, &unk_100028DB8);
  if (v0 <= 0x3F)
  {
    sub_10001A12C();
    if (v1 <= 0x3F)
    {
      sub_100005034();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A12C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10000F95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A12C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_10000FA18()
{
  sub_10000FAF4(319, &qword_100028E60);
  if (v0 <= 0x3F)
  {
    sub_10000FAF4(319, &unk_100028DB8);
    if (v1 <= 0x3F)
    {
      sub_10001A12C();
      if (v2 <= 0x3F)
      {
        sub_100005034();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000FAF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10001993C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10000FB50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000FB98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FBAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FBF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000FC58()
{
  result = qword_100028F20;
  if (!qword_100028F20)
  {
    sub_100001D70(&qword_100028D20, &qword_10001B7E0);
    sub_100002294(&qword_100028F28, &qword_100028F30, &qword_10001B9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F20);
  }

  return result;
}

unint64_t sub_10000FD14()
{
  result = qword_100028F38;
  if (!qword_100028F38)
  {
    sub_100001D70(&qword_100028D40, &qword_10001B800);
    sub_10000FDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F38);
  }

  return result;
}

unint64_t sub_10000FDA0()
{
  result = qword_100028F40;
  if (!qword_100028F40)
  {
    sub_100001D70(&qword_100028D30, &qword_10001B7F0);
    sub_100002294(&qword_100028F48, &qword_100028D28, &qword_10001B7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F40);
  }

  return result;
}

uint64_t sub_10000FE58(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_10000F414();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000FEC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001A1C(&qword_100028F50, &qword_10001B9E8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10001A12C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10000FFF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001A1C(&qword_100028F50, &qword_10001B9E8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_10001A12C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_100010128()
{
  sub_10000FAF4(319, &qword_100028E60);
  if (v0 <= 0x3F)
  {
    sub_10001022C();
    if (v1 <= 0x3F)
    {
      sub_100005034();
      if (v2 <= 0x3F)
      {
        sub_10001A12C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001022C()
{
  if (!qword_100028FC0)
  {
    sub_1000199FC();
    v0 = sub_10001993C();
    if (!v1)
    {
      atomic_store(v0, &qword_100028FC0);
    }
  }
}

uint64_t sub_1000102B0()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TitleView(0);
  v7 = v0 + *(v6 + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {

    sub_10001A29C();
    v10 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();
    sub_1000067A0(v8, 0);
    (*(v2 + 8))(v5, v1);
    if (v11[15] != 1)
    {
      return 1;
    }
  }

  return *(v0 + *(v6 + 40));
}

void sub_10001042C()
{
  v1 = v0;
  v2 = sub_10001985C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TitleView(0);
  v6 = *(v1 + v53[7]);
  if (v6)
  {
    v7 = [v6 titleContent];
    if (v7)
    {
      v8 = v7;
      sub_100001A1C(&qword_1000291A0, &qword_10001BCD8);
      v9 = sub_10001A26C();

      v10 = *(v9 + 16);
      if (v10)
      {
        v44 = v2;
        v46 = 0;
        v11 = 0;
        v12 = (v1 + v53[14]);
        v43 = (v3 + 8);
        v45 = 0xE000000000000000;
        v13 = *v12;
        v14 = v12[1];
        v50 = v1;
        while (v11 < *(v9 + 16))
        {
          v15 = *(v9 + 32 + 8 * v11);
          *&v56 = v13;
          *(&v56 + 1) = v14;

          sub_10001A37C();
          if (*(v15 + 16))
          {
            v16 = sub_100015EF4(&v58);
            if (v17)
            {
              sub_100016BEC(*(v15 + 56) + 32 * v16, v60);
              sub_100016B98(&v58);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_17;
              }

              v18 = (v1 + v53[15]);
              if (v56 == *v18 && *(&v56 + 1) == v18[1])
              {
              }

              else
              {
                v20 = sub_10001A3CC();

                if ((v20 & 1) == 0)
                {
LABEL_17:

                  goto LABEL_7;
                }
              }

              v21 = v53[13];
              v22 = (v1 + v53[12]);
              v23 = v22[1];
              v47 = *v22;
              v24 = *(v1 + v21 + 8);
              v48 = *(v1 + v21);
              v25 = (v1 + v53[17]);
              v26 = v25[1];
              *&v56 = *v25;
              *(&v56 + 1) = v26;
              v49 = v23;

              v51 = v24;

              sub_10001A37C();
              if (*(v15 + 16) && (v27 = sub_100015EF4(&v58), (v28 & 1) != 0))
              {
                sub_100016BEC(*(v15 + 56) + 32 * v27, v60);
                sub_100016B98(&v58);
                sub_10000509C(0, &qword_1000291A8, NSArray_ptr);
                if (swift_dynamicCast())
                {
                  v42 = v56;
                  sub_10001A2CC();
                  sub_10001984C();
                  if (v59)
                  {
                    while (1)
                    {
                      sub_100016C48(&v58, v60);
                      sub_10000509C(0, &qword_1000291B0, NSDictionary_ptr);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
                        goto LABEL_26;
                      }

                      v29 = v56;
                      *&v56 = v13;
                      *(&v56 + 1) = v14;

                      v30 = [v29 __swift_objectForKeyedSubscript:sub_10001A3DC()];
                      swift_unknownObjectRelease();
                      if (v30)
                      {
                        sub_10001A34C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v56 = 0u;
                        v57 = 0u;
                      }

                      v31 = v50;
                      v60[0] = v56;
                      v60[1] = v57;
                      if (*(&v57 + 1))
                      {
                        if ((swift_dynamicCast() & 1) == 0)
                        {
                          goto LABEL_36;
                        }

                        v32 = (v31 + v53[18]);
                        if (v54 == *v32 && v55 == v32[1])
                        {
                        }

                        else
                        {
                          v33 = sub_10001A3CC();

                          if ((v33 & 1) == 0)
                          {
LABEL_36:

                            goto LABEL_26;
                          }
                        }

                        sub_10001984C();
                        v47 = 0;
                        v48 = 0;
                        v34 = 0;
                        v35 = 0;
                        v49 = 0xE000000000000000;
                        v51 = 0xE000000000000000;
                        v36 = 0xE000000000000000;
                        if (!v59)
                        {
                          goto LABEL_48;
                        }
                      }

                      else
                      {

                        sub_100003504(v60, &qword_1000291B8, &qword_10001BCE0);
LABEL_26:
                        sub_10001984C();
                        if (!v59)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v34 = v48;
                  v36 = v51;
                  v35 = v47;
LABEL_48:
                  (*v43)(v52, v44);

                  v48 = v34;
                  v51 = v36;
                  v47 = v35;
                  v1 = v50;
                }
              }

              else
              {
                sub_100016B98(&v58);
              }

              v37 = (v1 + v53[16]);
              v38 = v37[1];
              *&v56 = *v37;
              *(&v56 + 1) = v38;

              sub_10001A37C();
              if (*(v15 + 16))
              {
                v39 = sub_100015EF4(&v58);
                if (v40)
                {
                  sub_100016BEC(*(v15 + 56) + 32 * v39, v60);
                  sub_100016B98(&v58);

                  if (swift_dynamicCast())
                  {
                    v41 = *(&v56 + 1);
                    v42 = v56;
                    *&v58 = v46;
                    *(&v58 + 1) = v45;

                    v61._countAndFlagsBits = v47;
                    v61._object = v49;
                    sub_10001A24C(v61);

                    v62._countAndFlagsBits = v42;
                    v62._object = v41;
                    sub_10001A24C(v62);

                    v1 = v50;

                    v63._countAndFlagsBits = v48;
                    v63._object = v51;
                    sub_10001A24C(v63);

                    v45 = *(&v58 + 1);
                    v46 = v58;
                  }

                  else
                  {
                  }

                  goto LABEL_7;
                }
              }
            }
          }

          sub_100016B98(&v58);
LABEL_7:
          if (++v11 == v10)
          {

            return;
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

char *sub_100010BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = sub_10001983C();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v38);
  v37 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = a2;
  v9 = type metadata accessor for TitleView(0);
  v10 = (v3 + *(v9 + 48));
  v12 = *v10;
  v11 = v10[1];
  v39 = v12;
  v40 = v11;
  sub_100006908();
  v13 = sub_10001A31C();
  v14 = *(v13 + 16);
  v34[1] = v13;
  if (v14)
  {
    v15 = (v3 + *(v9 + 52));
    v16 = *v15;
    v17 = v15[1];
    v36 = (v6 + 8);
    v18 = (v13 + 40);
    v19 = &_swiftEmptyArrayStorage;
    v20 = &type metadata for String;
    v35 = v17;
    do
    {
      v21 = *v18;
      v41 = *(v18 - 1);
      v42 = v21;
      v39 = v16;
      v40 = v17;
      v22 = sub_10001A31C();
      if (v22[2] < 2uLL)
      {
      }

      else
      {
        v23 = v22[4];
        v24 = v22[5];

        v41 = v23;
        v42 = v24;
        v25 = v37;
        sub_10001982C();
        v26 = v20;
        v27 = sub_10001A32C();
        v29 = v28;
        (*v36)(v25, v38);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10000C5D8(0, *(v19 + 2) + 1, 1, v19);
        }

        v31 = *(v19 + 2);
        v30 = *(v19 + 3);
        if (v31 >= v30 >> 1)
        {
          v19 = sub_10000C5D8((v30 > 1), v31 + 1, 1, v19);
        }

        *(v19 + 2) = v31 + 1;
        v32 = &v19[16 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = v29;
        v17 = v35;
        v20 = v26;
      }

      v18 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  return v19;
}

__n128 sub_100010E7C@<Q0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v182 = a2;
  LODWORD(v196) = a1;
  v181 = a3;
  v180 = sub_100001A1C(&qword_1000290C8, &qword_10001BB40);
  v4 = *(*(v180 - 8) + 64);
  __chkstk_darwin(v180);
  v193 = v159 - v5;
  v189 = sub_10001A12C();
  v188 = *(v189 - 8);
  v6 = *(v188 + 64);
  __chkstk_darwin(v189);
  v187 = v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_100001A1C(&qword_100029158, &qword_10001BB78);
  v185 = *(v186 - 8);
  v8 = *(v185 + 64);
  __chkstk_darwin(v186);
  v184 = v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v183 = v159 - v11;
  v12 = sub_100001A1C(&qword_1000290E0, &qword_10001BB48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v202 = (v159 - v14);
  v190 = sub_100001A1C(&qword_1000290C0, &qword_10001BB38);
  v15 = *(*(v190 - 8) + 64);
  __chkstk_darwin(v190);
  v191 = (v159 - v16);
  v179 = sub_100001A1C(&qword_100029160, &qword_10001BB80);
  v177 = *(v179 - 8);
  v17 = *(v177 + 64);
  __chkstk_darwin(v179);
  v168 = v159 - v18;
  v175 = sub_100001A1C(&qword_1000290B0, &qword_10001BB30);
  v19 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175);
  v172 = v159 - v20;
  v176 = sub_100001A1C(&qword_100029168, &qword_10001BB88);
  v173 = *(v176 - 8);
  v21 = *(v173 + 64);
  __chkstk_darwin(v176);
  v167 = v159 - v22;
  v164 = sub_100001A1C(&qword_1000290A8, &qword_10001BB28);
  v23 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v166 = v159 - v24;
  v171 = sub_100001A1C(&qword_100029090, &qword_10001BB20);
  v25 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v169 = v159 - v26;
  v174 = sub_100001A1C(&qword_100029170, &qword_10001BB90);
  v170 = *(v174 - 8);
  v27 = *(v170 + 64);
  __chkstk_darwin(v174);
  v165 = v159 - v28;
  v163 = sub_100001A1C(&qword_100029088, &qword_10001BB18);
  v29 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v178 = v159 - v30;
  v162 = sub_100001A1C(&qword_100029078, &qword_10001BB10);
  v31 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v192 = v159 - v32;
  v197 = sub_10001983C();
  v33 = *(v197 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v197);
  v36 = v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001042C();
  v194 = sub_100010BF4(v37, v38);

  sub_10001042C();
  *&v208 = v39;
  *(&v208 + 1) = v40;
  v201 = type metadata accessor for TitleView(0);
  v41 = v201[12];
  v42 = (v3 + v201[13]);
  v44 = *v42;
  v43 = v42[1];
  v206 = v44;
  v207 = v43;
  v203 = v3;
  v46 = *(v3 + v41 + 8);
  v204 = *(v3 + v41);
  v45 = v204;
  v205 = v46;
  v47 = sub_100006908();

  v157 = v47;
  v158 = v47;
  v155 = &type metadata for String;
  v156 = v47;
  v48 = sub_10001A33C();
  v50 = v49;

  *&v208 = v48;
  *(&v208 + 1) = v50;
  sub_10001982C();
  v51 = sub_10001A32C();
  v53 = v52;
  v54 = *(v33 + 8);
  v55 = v36;
  v161 = v33 + 8;
  v195 = v54;
  (v54)(v36, v197);

  *&v208 = v51;
  *(&v208 + 1) = v53;
  v206 = v45;
  v207 = v46;
  v160 = v47;
  v56 = sub_10001A31C();

  v58 = *(v56 + 2);
  if (v58)
  {
    v59 = 0;
    v60 = v56 + 40;
    *&v200 = v58 - 1;
    v61 = &_swiftEmptyArrayStorage;
    *(&v200 + 1) = v56 + 40;
    do
    {
      v62 = &v60[16 * v59];
      v63 = v59;
      while (1)
      {
        if (v63 >= *(v56 + 2))
        {
          __break(1u);
          goto LABEL_29;
        }

        v64 = *(v62 - 1);
        v65 = *v62;
        if (v64 || v65 != 0xE000000000000000)
        {
          v67 = *(v62 - 1);
          v68 = *v62;
          if ((sub_10001A3CC() & 1) == 0)
          {
            break;
          }
        }

        ++v63;
        v62 += 16;
        if (v58 == v63)
        {
          goto LABEL_18;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v208 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001610C(0, v61[2] + 1, 1);
        v61 = v208;
      }

      v71 = v61[2];
      v70 = v61[3];
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        sub_10001610C((v70 > 1), v71 + 1, 1);
        v72 = v71 + 1;
        v61 = v208;
      }

      v59 = v63 + 1;
      v61[2] = v72;
      v73 = &v61[2 * v71];
      v73[4] = v64;
      v73[5] = v65;
      v36 = v55;
      v60 = *(&v200 + 1);
    }

    while (v200 != v63);
  }

  else
  {
    v61 = &_swiftEmptyArrayStorage;
LABEL_18:
    v36 = v55;
  }

  v74 = v61[2];
  if (v74)
  {
    v75 = v61[5];
    *&v208 = v61[4];
    *(&v208 + 1) = v75;

    sub_10001982C();
    LOBYTE(v55) = v160;
    v76 = sub_10001A32C();
    v78 = v77;
    v79 = v197;
    v63 = v161;
    (v195)(v36, v197);

    v159[1] = v76;
    v159[2] = v78;
    v80 = v78;
    v56 = v194;
    v81 = sub_1000163B4(v76, v80, v203, v196 & 1, v194);
    *(&v200 + 1) = v84;
    if (v74 > v61[2])
    {
LABEL_30:
      __break(1u);
      v203 = v57;
      sub_10001A29C();
      v152 = sub_100019CEC();
      sub_1000198FC();

      v145 = v203;
      goto LABEL_27;
    }

    v85 = &v61[2 * v74 + 2];
    v86 = v85[1];
    *&v208 = *v85;
    *(&v208 + 1) = v86;
    *&v200 = v81;
    v199 = v82;
    v198 = v83;

    sub_10001982C();
    v87 = v79;
    v88 = sub_10001A32C();
    v90 = v89;
    (v195)(v36, v87);
    v91 = v196;
    v92 = v203;
  }

  else
  {
    v91 = v196;
    v92 = v203;
    v56 = v194;
    v93 = sub_1000163B4(0, 0, v203, v196 & 1, v194);
    *&v200 = v93;
    *(&v200 + 1) = v94;
    v199 = v95;
    v198 = v96;
    v88 = 0;
    v90 = 0;
  }

  __chkstk_darwin(v93);
  v159[-8] = v98;
  v159[-7] = v97;
  v153 = v88;
  v154 = v90;
  LOBYTE(v155) = v91 & 1;
  BYTE1(v155) = v182 & 1;
  v156 = v56;
  v157 = v92;
  v55 = sub_100012620(0, 0, 0, 0, sub_100016784, &v159[-10], v61);
  v36 = v99;
  v196 = v100;
  v63 = v101;

  sub_100019D4C();
  sub_100019D2C();
  v197 = sub_100019D5C();

  v102 = sub_100019C4C();
  v103 = v202;
  *v202 = v102;
  v103[1] = 0;
  *(v103 + 16) = 0;
  v104 = v103 + *(sub_100001A1C(&qword_100029178, &qword_10001BB98) + 44);
  v208 = v200;
  *&v209 = v199;
  *(&v209 + 1) = v198;
  sub_100001A1C(&qword_100029180, &qword_10001BBA0);
  sub_1000167BC();
  v105 = v183;
  sub_100019DEC();
  v106 = v185;
  v107 = *(v185 + 16);
  v108 = v184;
  v109 = v186;
  v107(v184, v105, v186);
  v107(v104, v108, v109);
  v110 = &v104[*(sub_100001A1C(&qword_100029190, &qword_10001BBA8) + 48)];
  *v110 = v55;
  v110[1] = v36;
  v111 = v196;
  v110[2] = v196;
  v110[3] = v63;
  sub_100016838(v55, v36, v111, v63);
  LOBYTE(v107) = v111;
  sub_100016838(v55, v36, v111, v63);
  v112 = *(v106 + 8);
  v112(v105, v109);
  v195 = v55;
  v194 = v36;
  v113 = v36;
  LOBYTE(v36) = v107;
  v185 = v63;
  sub_10001687C(v55, v113, v107, v63);
  v112(v108, v109);
  v114 = v201[9];
  v115 = v188;
  v116 = v187;
  v117 = v189;
  (*(v188 + 104))(v187, enum case for WidgetFamily.accessoryRectangular(_:), v189);
  sub_1000168C0(&qword_1000285D0, &type metadata accessor for WidgetFamily);
  sub_10001A25C();
  sub_10001A25C();
  (*(v115 + 8))(v116, v117);
  v118 = 0;
  v119 = v190;
  if (v208 != v206)
  {
  }

  KeyPath = swift_getKeyPath();
  v61 = v191;
  sub_100003A50(v202, v191, &qword_1000290E0, &qword_10001BB48);
  v121 = (v61 + *(v119 + 36));
  *v121 = KeyPath;
  v121[1] = v118;
  v122 = enum case for DynamicTypeSize.xxLarge(_:);
  v123 = sub_1000199BC();
  v124 = v193;
  (*(*(v123 - 8) + 104))(v193, v122, v123);
  sub_1000168C0(&qword_100029198, &type metadata accessor for DynamicTypeSize);
  v125 = sub_10001A21C();
  v56 = v192;
  if ((v125 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_100015C54();
  sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40);
  v126 = v168;
  sub_100019E4C();
  sub_100003504(v124, &qword_1000290C8, &qword_10001BB40);
  sub_100003504(v61, &qword_1000290C0, &qword_10001BB38);
  v127 = swift_getKeyPath();
  v128 = v172;
  (*(v177 + 32))(v172, v126, v179);
  v129 = (v128 + *(v175 + 36));
  *v129 = v127;
  v129[1] = 0x3FE4CCCCCCCCCCCDLL;
  sub_100015B00();
  v130 = v167;
  sub_100019E2C();
  sub_100003504(v128, &qword_1000290B0, &qword_10001BB30);
  v131 = swift_getKeyPath();
  v132 = v166;
  (*(v173 + 32))(v166, v130, v176);
  v133 = v132 + *(v164 + 36);
  *v133 = v131;
  *(v133 + 8) = 0;
  LOBYTE(v55) = 1;
  *(v133 + 16) = 1;
  v134 = swift_getKeyPath();
  v135 = v169;
  sub_100003A50(v132, v169, &qword_1000290A8, &qword_10001BB28);
  v136 = (v135 + *(v171 + 36));
  *v136 = v134;
  v136[1] = 0xC000000000000000;
  sub_100015954();
  v137 = v165;
  sub_100019E5C();
  sub_100003504(v135, &qword_100029090, &qword_10001BB20);
  v138 = swift_getKeyPath();
  v139 = v178;
  (*(v170 + 32))(v178, v137, v174);
  v140 = v139 + *(v163 + 36);
  *v140 = v138;
  *(v140 + 8) = 0;
  v141 = &v56[*(v162 + 36)];
  v142 = *(sub_100001A1C(&qword_100029138, &qword_10001BB70) + 28);
  v143 = enum case for Image.Scale.small(_:);
  v144 = sub_100019F7C();
  (*(*(v144 - 8) + 104))(v141 + v142, v143, v144);
  *v141 = swift_getKeyPath();
  sub_100003A50(v139, v56, &qword_100029088, &qword_10001BB18);
  v145 = *(v203 + v201[8]);
  v146 = v203 + v201[11];
  v61 = *v146;
  v63 = *(v146 + 8);
LABEL_27:
  v157 = v61;
  v158 = v63;
  LOBYTE(v156) = 0;
  v155 = v145;
  LOBYTE(v154) = v55;
  v153 = 0;
  sub_100019A1C();
  sub_10001687C(v200, *(&v200 + 1), v199, v198);

  v147 = v181;
  sub_100003A50(v56, v181, &qword_100029078, &qword_10001BB10);
  sub_10001687C(v195, v194, v36, v185);
  v148 = v147 + *(sub_100001A1C(&qword_100029048, &qword_10001BAF0) + 36);
  v149 = v213;
  *(v148 + 64) = v212;
  *(v148 + 80) = v149;
  *(v148 + 96) = v214;
  v150 = v209;
  *v148 = v208;
  *(v148 + 16) = v150;
  result = v211;
  *(v148 + 32) = v210;
  *(v148 + 48) = result;
  return result;
}

uint64_t sub_100012264(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v55 = a1;
  LODWORD(v54) = a7;
  v53 = a5;
  v13 = sub_10001983C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[1];
  v57 = *a2;
  v58 = v18;
  sub_10001982C();
  sub_100006908();
  v19 = sub_10001A32C();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (a4)
  {
    v22 = v19 == a3 && v21 == a4;
    if (v22 || (sub_10001A3CC() & 1) != 0)
    {
    }
  }

  if (a6 && (v19 == v53 ? (v24 = v21 == a6) : (v24 = 0), v24 || (sub_10001A3CC() & 1) != 0))
  {

    v25 = v21;
    v26 = v19;
  }

  else
  {
    v57 = v19;
    v58 = v21;

    v59._countAndFlagsBits = 10;
    v59._object = 0xE100000000000000;
    sub_10001A24C(v59);
    v26 = v57;
    v25 = v58;
  }

  v57 = v19;
  v58 = v21;
  __chkstk_darwin(v27);
  *(&v50 - 2) = &v57;
  v28 = v56;
  v29 = sub_100016238(sub_100016B24, (&v50 - 4), a9);

  v30 = sub_1000126D4();
  v31 = sub_1000102B0();
  if (v54)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (v31)
    {
      sub_100019EFC();
LABEL_22:

      v32 = sub_100019D8C();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      sub_100006A8C(v26, v25, 0);

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v29)
  {
    goto LABEL_20;
  }

  if ((v30 & 1) == 0)
  {
    if (v31)
    {
      sub_100019F0C();
    }

    else
    {
      sub_100019ECC();
    }

    goto LABEL_22;
  }

LABEL_24:
  v36 = 0;
  v38 = &_swiftEmptyArrayStorage;
  v32 = v26;
  v34 = v25;
LABEL_25:
  sub_100006A8C(v26, v25, 0);

  v39 = v55;
  if (*(v55 + 24))
  {
    v41 = *v55;
    v40 = *(v55 + 8);
    LOBYTE(v57) = *(v55 + 16) & 1;
    v42 = v57;
    v51 = v36;
    v43 = v55;
    v44 = sub_100019DAC();
    v56 = v28;
    v53 = v45;
    v54 = v44;
    v47 = v46;
    v52 = v48;
    sub_100006A8C(v41, v40, v42);

    sub_100006A8C(v32, v34, v51 & 1);

    v49 = v53;
    *v43 = v54;
    v43[1] = v49;
    v43[2] = v47 & 1;
    v43[3] = v52;
  }

  else
  {
    *v55 = v32;
    v39[1] = v34;
    v39[2] = v36 & 1;
    v39[3] = v38;
  }

  return result;
}

uint64_t sub_100012620(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void *), uint64_t a6, uint64_t a7)
{
  v13 = result;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v8 = *(a7 + 16);
  if (v8)
  {
    for (i = (a7 + 40); ; i += 2)
    {
      v11 = *i;
      v12[0] = *(i - 1);
      v12[1] = v11;

      a5(&v13, v12);
      if (v7)
      {
        break;
      }

      if (!--v8)
      {
        return v13;
      }
    }

    return sub_10001687C(v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_1000126D4()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_10001A29C();
    v8 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();
    sub_1000067A0(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_10001281C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_100001A1C(&qword_100029038, &qword_10001BAE0);
  v3 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v5 = (v38 - v4);
  v6 = sub_100001A1C(&qword_100029040, &qword_10001BAE8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v38 - v8;
  v39 = sub_100001A1C(&qword_100029048, &qword_10001BAF0);
  v10 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v12 = v38 - v11;
  v13 = sub_100001A1C(&qword_100029050, &qword_10001BAF8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v40 = v38 - v15;
  v16 = sub_100001A1C(&qword_100029058, &qword_10001BB00);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v38 - v18;
  v20 = type metadata accessor for PlaceholderTitleView(0);
  v21 = *(*(v20 - 1) + 64);
  __chkstk_darwin(v20);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000126D4())
  {
    v24 = type metadata accessor for TitleView(0);
    v25 = *(v24 + 36);
    v26 = sub_10001A12C();
    (*(*(v26 - 8) + 16))(v23, a1 + v25, v26);
    v27 = (a1 + *(v24 + 44));
    v28 = *v27;
    v29 = v27[1];
    v30 = sub_1000102B0();
    v31 = &v23[v20[5]];
    *v31 = v28;
    *(v31 + 1) = v29;
    v23[v20[6]] = v30 & 1;
    *&v23[v20[7]] = 0x3FD3333333333333;
    sub_10001702C(v23, v19, type metadata accessor for PlaceholderTitleView);
    swift_storeEnumTagMultiPayload();
    sub_1000168C0(&qword_100029148, type metadata accessor for PlaceholderTitleView);
    sub_100015D38();
    sub_100019CBC();
    return sub_100017094(v23, type metadata accessor for PlaceholderTitleView);
  }

  else
  {
    v38[1] = v13;
    if (sub_1000102B0())
    {
      sub_100010E7C(0, 1, v12);
      sub_1000031E0(v12, v9, &qword_100029048, &qword_10001BAF0);
      swift_storeEnumTagMultiPayload();
      sub_10001571C();
      sub_100002294(&qword_100029140, &qword_100029038, &qword_10001BAE0);
      v33 = v40;
      sub_100019CBC();
      v34 = v12;
      v35 = &qword_100029048;
      v36 = &qword_10001BAF0;
    }

    else
    {
      *v5 = *(a1 + *(type metadata accessor for TitleView(0) + 44));
      v37 = sub_100001A1C(&qword_100029060, &qword_10001BB08);
      sub_100012DA0(v5 + *(v37 + 44));
      sub_1000031E0(v5, v9, &qword_100029038, &qword_10001BAE0);
      swift_storeEnumTagMultiPayload();
      sub_10001571C();
      sub_100002294(&qword_100029140, &qword_100029038, &qword_10001BAE0);
      v33 = v40;
      sub_100019CBC();
      v34 = v5;
      v35 = &qword_100029038;
      v36 = &qword_10001BAE0;
    }

    sub_100003504(v34, v35, v36);
    sub_1000031E0(v33, v19, &qword_100029050, &qword_10001BAF8);
    swift_storeEnumTagMultiPayload();
    sub_1000168C0(&qword_100029148, type metadata accessor for PlaceholderTitleView);
    sub_100015D38();
    sub_100019CBC();
    return sub_100003504(v33, &qword_100029050, &qword_10001BAF8);
  }
}

uint64_t sub_100012DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001A1C(&qword_1000291C0, &qword_10001BCE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_100001A1C(&qword_1000291C8, &qword_10001BCF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v16 = sub_1000102B0();
  sub_100010E7C(1, v16 & 1, v15);
  v17 = sub_1000102B0();
  sub_100010E7C(0, v17 & 1, v8);
  if (qword_100028458 != -1)
  {
    swift_once();
  }

  v18 = qword_10002A3B8;
  KeyPath = swift_getKeyPath();
  v20 = &v8[*(v2 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_1000031E0(v15, v12, &qword_1000291C8, &qword_10001BCF0);
  sub_1000031E0(v8, v5, &qword_1000291C0, &qword_10001BCE8);
  sub_1000031E0(v12, a1, &qword_1000291C8, &qword_10001BCF0);
  v21 = sub_100001A1C(&qword_1000291D0, &qword_10001BD28);
  sub_1000031E0(v5, a1 + *(v21 + 48), &qword_1000291C0, &qword_10001BCE8);

  sub_100003504(v8, &qword_1000291C0, &qword_10001BCE8);
  sub_100003504(v15, &qword_1000291C8, &qword_10001BCF0);
  sub_100003504(v5, &qword_1000291C0, &qword_10001BCE8);
  return sub_100003504(v12, &qword_1000291C8, &qword_10001BCF0);
}

uint64_t sub_100013018@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100019C4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100001A1C(&qword_100029028, &qword_10001BAD0);
  sub_10001281C(v1, a1 + *(v3 + 44));
  result = sub_100001A1C(&qword_100029030, &qword_10001BAD8);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100013088@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v46 = sub_10001A03C();
  v45 = *(v46 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v46);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019EBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v39 = *(a1 + 24);
  v40 = sub_10001994C();
  v11 = sub_1000199DC();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  sub_100019A0C();
  v15 = sub_1000199DC();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v15);
  v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v41 = &v37 - v19;
  sub_100001A1C(&qword_100029220, &qword_10001BD88);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001B480;
  v21 = enum case for Color.RGBColorSpace.sRGB(_:);
  v22 = *(v6 + 104);
  v22(v9, enum case for Color.RGBColorSpace.sRGB(_:), v5);
  sub_100019F2C();
  *(v20 + 32) = sub_100019FCC();
  *(v20 + 40) = v23;
  v22(v9, v21, v5);
  sub_100019F2C();
  *(v20 + 48) = sub_100019FCC();
  *(v20 + 56) = v24;
  sub_100019FDC();
  sub_10001A04C();
  sub_10001A07C();
  sub_10001999C();
  v52 = v55[0];
  v53 = v55[1];
  v54 = v56;
  v25 = sub_10000F414();
  sub_100019E8C();
  sub_100017AB8(v55);
  v26 = v45;
  v27 = v44;
  v28 = v46;
  (*(v45 + 104))(v44, enum case for BlendMode.plusLighter(_:), v46);
  WitnessTable = swift_getWitnessTable();
  v50 = v25;
  v51 = WitnessTable;
  v30 = swift_getWitnessTable();
  v31 = v38;
  sub_100019EAC();
  (*(v26 + 8))(v27, v28);
  (*(v43 + 8))(v14, v11);
  v48 = v30;
  v49 = &protocol witness table for _BlendModeEffect;
  swift_getWitnessTable();
  v32 = v42;
  v33 = *(v42 + 16);
  v34 = v41;
  v33(v41, v31, v15);
  v35 = *(v32 + 8);
  v35(v31, v15);
  v33(v47, v34, v15);
  return (v35)(v34, v15);
}

__n128 sub_1000135E4@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100001A1C(&qword_1000293C0, &qword_10001BF98);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v40 - v5;
  v7 = sub_100019D6C();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A12C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, enum case for WidgetFamily.accessoryRectangular(_:), v11, v14);
  sub_1000168C0(&qword_1000285D0, &type metadata accessor for WidgetFamily);
  v46 = v1;
  sub_10001A25C();
  sub_10001A25C();
  (*(v12 + 8))(v16, v11);
  if (v68[0].n128_u64[0] == v59.n128_u64[0])
  {
    v45 = sub_100019D0C();
  }

  else
  {
    v18 = v43;
    v17 = v44;
    (*(v43 + 104))(v10, enum case for Font.TextStyle.title2(_:), v44);
    v19 = sub_100019D1C();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_100019D2C();
    v45 = sub_100019D3C();
    sub_100003504(v6, &qword_1000293C0, &qword_10001BF98);
    (*(v18 + 8))(v10, v17);
  }

  v44 = sub_100019C4C();
  v58 = 0;
  sub_100013B74(0x1000000000000010, 0x800000010001C620, 0, &_swiftEmptyArrayStorage, &v48);
  v65 = v54;
  v66 = v55;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v59 = v48;
  v60 = v49;
  v68[5] = v53;
  v68[6] = v54;
  v68[7] = v55;
  v68[8] = v56;
  v68[1] = v49;
  v68[2] = v50;
  v68[3] = v51;
  v68[4] = v52;
  v67 = v56;
  v68[0] = v48;
  sub_1000031E0(&v59, &v47, &qword_1000293C8, &qword_10001BFA0);
  sub_100003504(v68, &qword_1000293C8, &qword_10001BFA0);
  *&v57[87] = v64;
  *&v57[103] = v65;
  *&v57[119] = v66;
  *&v57[135] = v67;
  *&v57[23] = v60;
  *&v57[39] = v61;
  *&v57[55] = v62;
  *&v57[71] = v63;
  *&v57[7] = v59;
  LODWORD(v43) = v58;
  if (qword_100028458 != -1)
  {
    swift_once();
  }

  v20 = qword_10002A3B8;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v48.n128_u8[0] = 0;
  v22 = type metadata accessor for PlaceholderTitleView(0);
  v23 = v46;
  v24 = *(v46 + *(v22 + 28));
  v25 = swift_getKeyPath();
  v26 = (v23 + *(v22 + 20));
  v28 = *v26;
  v27 = v26[1];

  v29 = v45;

  sub_100019A1C();

  v30 = *&v57[112];
  *(a1 + 113) = *&v57[96];
  *(a1 + 129) = v30;
  *(a1 + 145) = *&v57[128];
  v31 = *&v57[48];
  *(a1 + 49) = *&v57[32];
  *(a1 + 65) = v31;
  v32 = *&v57[80];
  *(a1 + 81) = *&v57[64];
  *(a1 + 97) = v32;
  v33 = *&v57[16];
  *(a1 + 17) = *v57;
  *a1 = v44;
  *(a1 + 8) = 0;
  *(a1 + 16) = v43;
  v34 = *&v57[143];
  *(a1 + 33) = v33;
  v35 = v41;
  v36 = KeyPath;
  *(a1 + 160) = v34;
  *(a1 + 168) = v36;
  *(a1 + 176) = v20;
  *(a1 + 184) = v35;
  *(a1 + 192) = v29;
  *(a1 + 200) = v21;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = v25;
  *(a1 + 232) = v24;
  v37 = v53;
  *(a1 + 304) = v52;
  *(a1 + 320) = v37;
  *(a1 + 336) = v54;
  v38 = v49;
  *(a1 + 240) = v48;
  *(a1 + 256) = v38;
  result = v51;
  *(a1 + 272) = v50;
  *(a1 + 288) = result;
  return result;
}

uint64_t sub_100013B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10001A02C();
  v12 = v11;
  a3 &= 1u;
  LOBYTE(v21[0]) = a3;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  LOBYTE(v17) = a3;
  *(&v17 + 1) = a4;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  LOBYTE(v19) = a3;
  *(&v19 + 1) = a4;
  *&v20 = v10;
  *(&v20 + 1) = v11;
  v13 = v19;
  *(a5 + 32) = v18;
  *(a5 + 48) = v13;
  v14 = v17;
  *a5 = v16;
  *(a5 + 16) = v14;
  *(a5 + 64) = v20;
  *(a5 + 80) = xmmword_10001B760;
  *(a5 + 96) = 0;
  *(a5 + 104) = &_swiftEmptyArrayStorage;
  *(a5 + 112) = xmmword_10001B770;
  *(a5 + 128) = 0;
  *(a5 + 136) = &_swiftEmptyArrayStorage;
  sub_10000C4A4(a1, a2, a3);

  sub_10000C4A4(a1, a2, a3);

  sub_1000031E0(&v16, v21, &qword_1000293D0, &qword_10001BFA8);
  sub_10000C4A4(0x202D202D202D202DLL, 0xED00002D202D202DLL, 0);

  sub_10000C4A4(0x202D202D202D202DLL, 0xEA0000000000202DLL, 0);

  sub_100006A8C(0x202D202D202D202DLL, 0xEA0000000000202DLL, 0);

  sub_100006A8C(0x202D202D202D202DLL, 0xED00002D202D202DLL, 0);

  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = v10;
  v29 = v12;
  return sub_100003504(v21, &qword_1000293D0, &qword_10001BFA8);
}

void sub_100013D64(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v137 = a2;
  v3 = sub_10001A09C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100001A1C(&qword_100029200, &qword_10001BD80);
  v8 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v131 = v120 - v9;
  v132 = sub_100019F7C();
  v130 = *(v132 - 8);
  v10 = *(v130 + 64);
  *&v11 = __chkstk_darwin(v132).n128_u64[0];
  v129 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a1;
  if (!a1 || (v13 = [v136 bodyContent]) == 0)
  {
    sub_10001A08C();
    sub_10001A0AC();
    (*(v4 + 8))(v7, v3);
    v20 = [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
    v21 = [v20 bodyText];

    if (v21)
    {
      v22 = sub_10001A22C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    *&v147 = v22;
    *(&v147 + 1) = v24;
    sub_100006908();
    v99 = sub_100019DCC();
    v101 = v100;
    v103 = v102;
    sub_100019EDC();
    v104 = sub_100019D8C();
    v106 = v105;
    v108 = v107;
    v110 = v109;

    sub_100006A8C(v99, v101, v103 & 1);

    *&v147 = v104;
    *(&v147 + 1) = v106;
    LOBYTE(v148) = v108 & 1;
    *(&v148 + 1) = v110;
    v111 = sub_100019FBC();
LABEL_68:
    *v137 = v111;
    return;
  }

  v14 = v13;
  sub_100001A1C(&qword_1000291A0, &qword_10001BCD8);
  v15 = sub_10001A26C();

  v140 = *(v15 + 16);
  if (!v140)
  {
    v17 = 0;
    v139 = 0;
    v142 = &_swiftEmptyArrayStorage;
    v18 = 0xE000000000000000;
LABEL_64:
    v112 = v129;
    sub_100014D50(v15, v129);

    KeyPath = swift_getKeyPath();
    v114 = v131;
    v115 = &v131[*(v133 + 36)];
    v116 = sub_100001A1C(&qword_100029138, &qword_10001BB70);
    v117 = v130;
    v118 = v132;
    (*(v130 + 16))(v115 + *(v116 + 28), v112, v132);
    *v115 = KeyPath;
    *v114 = v17;
    *(v114 + 1) = v18;
    v114[16] = v139 & 1;
    *(v114 + 3) = v142;
    sub_100016EAC();
    v111 = sub_100019FBC();
    (*(v117 + 8))(v112, v118);
    goto LABEL_68;
  }

  v16 = 0;
  v17 = 0;
  v139 = 0;
  v18 = 0xE000000000000000;
  v19 = &type metadata for String;
  v142 = &_swiftEmptyArrayStorage;
  v141 = v15;
  while (v16 < *(v15 + 16))
  {
    v25 = *(v15 + 8 * v16 + 32);

    isa = sub_10001A20C().super.isa;

    *&v145 = 1701869940;
    *(&v145 + 1) = 0xE400000000000000;
    v27 = v19;
    v28 = sub_10001A3DC();
    v143 = isa;
    v29 = [(objc_class *)isa __swift_objectForKeyedSubscript:v28];
    swift_unknownObjectRelease();
    if (v29)
    {
      sub_10001A34C();
      swift_unknownObjectRelease();
    }

    else
    {
      v145 = 0u;
      v146 = 0u;
    }

    v148 = v146;
    v147 = v145;
    if (!*(&v146 + 1))
    {

      sub_100003504(&v147, &qword_1000291B8, &qword_10001BCE0);
LABEL_67:
      *&v147 = v17;
      *(&v147 + 1) = v18;
      v119 = v139 & 1;
      LOBYTE(v148) = v139 & 1;
      *(&v148 + 1) = v142;
      sub_10000C4A4(v17, v18, v139 & 1);

      v111 = sub_100019FBC();

      sub_100006A8C(v17, v18, v119);

      goto LABEL_68;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_67;
    }

    v30 = v144;
    if (v144 == __PAIR128__(0xE400000000000000, 1954047348) || (sub_10001A3CC() & 1) != 0)
    {
      *&v145 = 1954047348;
      *(&v145 + 1) = 0xE400000000000000;
      v31 = [(objc_class *)v143 __swift_objectForKeyedSubscript:sub_10001A3DC()];
      swift_unknownObjectRelease();
      if (v31)
      {
        sub_10001A34C();
        swift_unknownObjectRelease();
      }

      else
      {
        v145 = 0u;
        v146 = 0u;
      }

      v148 = v146;
      v147 = v145;
      v15 = v141;
      if (*(&v146 + 1))
      {
        v138 = v16;
        v32 = v19;
        if (swift_dynamicCast())
        {

          v147 = v144;
          sub_100006908();
          v33 = sub_100019DCC();
          v35 = v34;
          v37 = v36;
          sub_100019EDC();
          v134 = v17;
          v38 = sub_100019D8C();
          v135 = v18;
          v40 = v39;
          v42 = v41;

          sub_100006A8C(v33, v35, v37 & 1);

          v43 = v139;
          v44 = v134;
          v45 = v135;
          v128 = sub_100019DAC();
          v127 = v46;
          v48 = v47;
          v50 = v49;
          sub_100006A8C(v38, v40, v42 & 1);

          sub_100006A8C(v44, v45, v43 & 1);

          v17 = v128;
          v18 = v127;
          v139 = v48;
          v15 = v141;
          v142 = v50;
          v19 = v32;
LABEL_23:
          v16 = v138;
          goto LABEL_8;
        }

        v16 = v138;
      }

      else
      {
        sub_100003504(&v147, &qword_1000291B8, &qword_10001BCE0);
      }
    }

    if (v30 == __PAIR128__(0xE600000000000000, 0x6C6F626D7973))
    {
    }

    else
    {
      v51 = sub_10001A3CC();

      if ((v51 & 1) == 0)
      {

        goto LABEL_46;
      }
    }

    *&v145 = 0x7372747461;
    *(&v145 + 1) = 0xE500000000000000;
    v52 = [(objc_class *)v143 __swift_objectForKeyedSubscript:sub_10001A3DC()];
    swift_unknownObjectRelease();
    if (v52)
    {
      sub_10001A34C();
      swift_unknownObjectRelease();
    }

    else
    {
      v145 = 0u;
      v146 = 0u;
    }

    v148 = v146;
    v147 = v145;
    if (*(&v146 + 1))
    {
      sub_10000509C(0, &qword_1000291B0, NSDictionary_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_8;
      }

      v53 = v144;
      *&v145 = 0x6449676E69727473;
      *(&v145 + 1) = 0xE800000000000000;
      v54 = [v144 __swift_objectForKeyedSubscript:sub_10001A3DC()];
      swift_unknownObjectRelease();
      if (v54)
      {
        sub_10001A34C();
        swift_unknownObjectRelease();
      }

      else
      {
        v145 = 0u;
        v146 = 0u;
      }

      v148 = v146;
      v147 = v145;
      if (!*(&v146 + 1))
      {
        v57 = v18;
        v58 = v17;
        v128 = v53;
        sub_100003504(&v147, &qword_1000291B8, &qword_10001BCE0);
        goto LABEL_45;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v57 = v18;
        v58 = v17;
        v128 = v53;
LABEL_45:
        v59 = v139;
        v60 = v57;
        v61 = sub_100019DAC();
        v63 = v62;
        v65 = v64;
        v67 = v66;

        sub_100006A8C(v58, v60, v59 & 1);

        v17 = v61;
        v18 = v63;
        v139 = v65;
        v142 = v67;
        v15 = v141;
LABEL_46:
        v19 = v27;
        goto LABEL_8;
      }

      v55 = *(&v144 + 1);
      v127 = v144;
      *&v147 = 7629921;
      *(&v147 + 1) = 0xE300000000000000;
      v56 = [v53 __swift_objectForKeyedSubscript:sub_10001A3DC()];
      swift_unknownObjectRelease();
      v135 = v18;
      if (v56)
      {
        sub_10001A34C();
        swift_unknownObjectRelease();
      }

      else
      {
        v145 = 0u;
        v146 = 0u;
      }

      v134 = v17;
      v148 = v146;
      v147 = v145;
      v68 = v127;
      if (*(&v146 + 1))
      {
        v69 = swift_dynamicCast();
        v70 = v144;
        if (!v69)
        {
          v70 = 0;
        }

        v126 = v70;
        if (v69)
        {
          v71 = *(&v144 + 1);
        }

        else
        {
          v71 = 0;
        }
      }

      else
      {
        sub_100003504(&v147, &qword_1000291B8, &qword_10001BCE0);
        v126 = 0;
        v71 = 0;
      }

      sub_10000509C(0, &qword_100029210, UIImage_ptr);

      v149._countAndFlagsBits = v68;
      v149._object = v55;
      v72 = sub_10001A2EC(v149);
      if (!v72)
      {

        v17 = v134;
        v18 = v135;
        v15 = v141;
        goto LABEL_8;
      }

      v128 = v53;

      sub_100019F6C();
      v125 = swift_retain_n();
      v73 = sub_100019DDC();
      v75 = v74;
      v77 = v76;
      sub_100019EDC();
      v123 = sub_100019D8C();
      v122 = v78;
      v121 = v79;
      v124 = v80;

      sub_100006A8C(v73, v75, v77 & 1);

      v138 = v16;
      v120[1] = v55;
      if (v71)
      {
        v81 = v71;
        v82 = v126;
      }

      else
      {

        v82 = v127;
        v81 = v55;
      }

      *&v147 = v82;
      *(&v147 + 1) = v81;
      sub_100006908();

      v83 = v121;
      v84 = v123;
      v85 = v122;
      v86 = sub_100019D9C();
      v88 = v87;
      v90 = v89;
      v127 = v91;
      sub_100006A8C(v84, v85, v83 & 1);

      v92 = v139;
      v93 = v134;
      v94 = v135;
      v126 = sub_100019DAC();
      v125 = v95;
      LODWORD(v124) = v96;
      v98 = v97;
      sub_100006A8C(v86, v88, v90 & 1);

      sub_100006A8C(v93, v94, v92 & 1);
      v19 = &type metadata for String;

      v17 = v126;
      v18 = v125;
      v139 = v124;
      v142 = v98;
      v15 = v141;
      goto LABEL_23;
    }

    sub_100003504(&v147, &qword_1000291B8, &qword_10001BCE0);
LABEL_8:
    if (v140 == ++v16)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
}

uint64_t sub_100014D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100019F7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 104);
  v34 = v10;
  v35 = v8;
  v32 = enum case for Image.Scale.small(_:);
  v33 = v9;
  v9(v6);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 32);
    v13 = &_swiftEmptyArrayStorage;
    do
    {
      v39 = *v12;
      sub_100015494(&v39, &v37);
      v15 = v38;
      if (v38)
      {
        v16 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10000C5D8(0, *(v13 + 2) + 1, 1, v13);
        }

        v18 = *(v13 + 2);
        v17 = *(v13 + 3);
        if (v18 >= v17 >> 1)
        {
          v13 = sub_10000C5D8((v17 > 1), v18 + 1, 1, v13);
        }

        *(v13 + 2) = v18 + 1;
        v14 = &v13[16 * v18];
        *(v14 + 4) = v16;
        *(v14 + 5) = v15;
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {

    return (*(v4 + 32))(v36, v35, v34);
  }

  v20 = *(v13 + 4);
  v21 = *(v13 + 5);
  v22 = v19 - 1;
  if (v19 != 1)
  {
    v26 = v13 + 56;
    while (1)
    {
      v27 = *(v26 - 1) == v20 && *v26 == v21;
      if (!v27 && (sub_10001A3CC() & 1) == 0)
      {
        break;
      }

      v26 += 2;
      if (!--v22)
      {
        goto LABEL_13;
      }
    }

    v24 = v34;
    return (*(v4 + 32))(v36, v35, v24);
  }

LABEL_13:

  v23 = sub_100016F64(v20, v21);
  if (v23 > 1)
  {
    v24 = v34;
    if (v23 == 2 || v23 == 3)
    {
      goto LABEL_28;
    }

    return (*(v4 + 32))(v36, v35, v24);
  }

  v24 = v34;
  if (v23)
  {

    (*(v4 + 8))(v35, v24);
    goto LABEL_31;
  }

LABEL_28:
  v28 = sub_10001A3CC();

  (*(v4 + 8))(v35, v24);
  if (v28)
  {
LABEL_31:
    v30 = enum case for Image.Scale.large(_:);
    v29 = v36;
    return (v33)(v29, v30, v24);
  }

  v29 = v36;
  v30 = v32;
  return (v33)(v29, v30, v24);
}

uint64_t sub_1000150A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001A1C(&qword_1000290C8, &qword_10001BB40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v30 - v6;
  v8 = sub_100001A1C(&qword_1000291D8, &qword_10001BD30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v30 - v10;
  v12 = sub_100001A1C(&qword_1000291E0, &qword_10001BD38);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v30 - v14;
  sub_100013D64(a1, v31);
  v30[1] = *&v31[0];
  v16 = enum case for DynamicTypeSize.xxLarge(_:);
  v17 = sub_1000199BC();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  sub_1000168C0(&qword_100029198, &type metadata accessor for DynamicTypeSize);
  result = sub_10001A21C();
  if (result)
  {
    v30[0] = a2;
    sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40);
    sub_100019E4C();
    sub_100003504(v7, &qword_1000290C8, &qword_10001BB40);

    KeyPath = swift_getKeyPath();
    v20 = &v11[*(v8 + 36)];
    *v20 = KeyPath;
    v20[1] = 0x3FE6666666666666;
    sub_100016D0C();
    sub_100019E5C();
    sub_100003504(v11, &qword_1000291D8, &qword_10001BD30);
    v21 = &v15[*(v12 + 36)];
    v22 = *(sub_100001A1C(&qword_1000291F0, &qword_10001BD40) + 28);
    v23 = enum case for Text.TruncationMode.tail(_:);
    v24 = sub_100019D7C();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    sub_100019FFC();
    sub_100019A1C();
    v25 = v30[0];
    sub_100003A50(v15, v30[0], &qword_1000291E0, &qword_10001BD38);
    result = sub_100001A1C(&qword_1000291F8, &qword_10001BD78);
    v26 = (v25 + *(result + 36));
    v27 = v31[5];
    v26[4] = v31[4];
    v26[5] = v27;
    v26[6] = v31[6];
    v28 = v31[1];
    *v26 = v31[0];
    v26[1] = v28;
    v29 = v31[3];
    v26[2] = v31[2];
    v26[3] = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_10001A37C();
  if (!*(v3 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_100015EF4(v12);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100016BEC(*(v3 + 56) + 32 * v4, v13);
  sub_100016B98(v12);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = sub_10001A3CC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001A37C();
  if (!*(v3 + 16))
  {
    goto LABEL_13;
  }

  v8 = sub_100015EF4(v12);
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100016BEC(*(v3 + 56) + 32 * v8, v13);
  sub_100016B98(v12);
  sub_100001A1C(&qword_1000291A0, &qword_10001BCD8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001A37C();
  if (!MEMORY[0x7372747471] || (v10 = sub_100015EF4(v12), (v11 & 1) == 0))
  {

LABEL_13:
    result = sub_100016B98(v12);
    goto LABEL_14;
  }

  sub_100016BEC(MEMORY[0x7372747499] + 32 * v10, v13);
  sub_100016B98(v12);

  result = swift_dynamicCast();
  if (result)
  {
    *a2 = 1702521203;
    a2[1] = 0xE400000000000000;
    return result;
  }

LABEL_14:
  *a2 = 0;
  a2[1] = 0;
  return result;
}

unint64_t sub_10001571C()
{
  result = qword_100029068;
  if (!qword_100029068)
  {
    sub_100001D70(&qword_100029048, &qword_10001BAF0);
    sub_1000157A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029068);
  }

  return result;
}

unint64_t sub_1000157A8()
{
  result = qword_100029070;
  if (!qword_100029070)
  {
    sub_100001D70(&qword_100029078, &qword_10001BB10);
    sub_100015860();
    sub_100002294(&qword_100029130, &qword_100029138, &qword_10001BB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029070);
  }

  return result;
}

unint64_t sub_100015860()
{
  result = qword_100029080;
  if (!qword_100029080)
  {
    sub_100001D70(&qword_100029088, &qword_10001BB18);
    sub_100001D70(&qword_100029090, &qword_10001BB20);
    sub_100015954();
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029120, &qword_100029128, &qword_10001BB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029080);
  }

  return result;
}

unint64_t sub_100015954()
{
  result = qword_100029098;
  if (!qword_100029098)
  {
    sub_100001D70(&qword_100029090, &qword_10001BB20);
    sub_100015A0C();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029098);
  }

  return result;
}

unint64_t sub_100015A0C()
{
  result = qword_1000290A0;
  if (!qword_1000290A0)
  {
    sub_100001D70(&qword_1000290A8, &qword_10001BB28);
    sub_100001D70(&qword_1000290B0, &qword_10001BB30);
    sub_100015B00();
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029110, &qword_100029118, &qword_10001BB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290A0);
  }

  return result;
}

unint64_t sub_100015B00()
{
  result = qword_1000290B8;
  if (!qword_1000290B8)
  {
    sub_100001D70(&qword_1000290B0, &qword_10001BB30);
    sub_100001D70(&qword_1000290C0, &qword_10001BB38);
    sub_100001D70(&qword_1000290C8, &qword_10001BB40);
    sub_100015C54();
    sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40);
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290B8);
  }

  return result;
}

unint64_t sub_100015C54()
{
  result = qword_1000290D0;
  if (!qword_1000290D0)
  {
    sub_100001D70(&qword_1000290C0, &qword_10001BB38);
    sub_100002294(&qword_1000290D8, &qword_1000290E0, &qword_10001BB48);
    sub_100002294(&qword_1000290E8, &qword_1000290F0, &qword_10001BB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290D0);
  }

  return result;
}

unint64_t sub_100015D38()
{
  result = qword_100029150;
  if (!qword_100029150)
  {
    sub_100001D70(&qword_100029050, &qword_10001BAF8);
    sub_10001571C();
    sub_100002294(&qword_100029140, &qword_100029038, &qword_10001BAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029150);
  }

  return result;
}

unint64_t sub_100015E40(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10001A3EC();
  type metadata accessor for CFString(0);
  sub_1000168C0(&qword_100029218, type metadata accessor for CFString);
  sub_1000198DC();
  v4 = sub_10001A3FC();

  return sub_100015F38(a1, v4);
}

unint64_t sub_100015EF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001A35C(*(v2 + 40));

  return sub_100016044(a1, v4);
}

unint64_t sub_100015F38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000168C0(&qword_100029218, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000198CC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100016044(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100016C58(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10001A36C();
      sub_100016B98(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_10001610C(char *a1, int64_t a2, char a3)
{
  result = sub_10001612C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001612C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A1C(&qword_100028C18, &qword_10001BCD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100016238(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000162E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000163B4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_10001A12C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  v42 = v14;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = *(type metadata accessor for TitleView(0) + 36);
  (*(v10 + 104))(v13, enum case for WidgetFamily.accessoryRectangular(_:), v9);
  sub_1000168C0(&qword_1000285D0, &type metadata accessor for WidgetFamily);

  sub_10001A25C();
  sub_10001A25C();
  v17 = (*(v10 + 8))(v13, v9);
  if (v44[0] == v44[2])
  {
    sub_100019F6C();
    v18 = sub_100019DDC();
    v20 = v19;
    v22 = v21;
    v23 = sub_100019DAC();
    v25 = v24;
    v40 = a5;
    v27 = v26;
    v41 = a4;
    sub_100006A8C(v18, v20, v22 & 1);

    v28 = v42;
    v43 = sub_100019DAC();
    v30 = v29;
    v32 = v31;
    a5 = v40;
    sub_100006A8C(v23, v25, v27 & 1);

    LOBYTE(a4) = v41;
  }

  else
  {
    v32 = 0;
    v28 = v42;
    v43 = v42;
    v30 = v15;
  }

  v44[0] = v28;
  v44[1] = v15;
  __chkstk_darwin(v17);
  *(&v39 - 2) = v44;
  v33 = sub_100016238(sub_100018004, (&v39 - 4), a5);

  v34 = sub_1000126D4();
  v35 = sub_1000102B0();
  if (a4)
  {
    if ((v33 & 1) == 0)
    {
      return v43;
    }

LABEL_14:
    if (v35)
    {
      sub_100019EFC();
LABEL_16:

      v36 = v43;
      v37 = sub_100019D8C();
      sub_100006A8C(v36, v30, v32 & 1);

      return v37;
    }

    return v43;
  }

  if (v33)
  {
    goto LABEL_14;
  }

  if ((v34 & 1) == 0)
  {
    if (v35)
    {
      sub_100019F0C();
    }

    else
    {
      sub_100019ECC();
    }

    goto LABEL_16;
  }

  return v43;
}

unint64_t sub_1000167BC()
{
  result = qword_100029188;
  if (!qword_100029188)
  {
    sub_100001D70(&qword_100029180, &qword_10001BBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029188);
  }

  return result;
}

uint64_t sub_100016838(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000C4A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001687C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006A8C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000168C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019B0C();
  *a1 = result;
  return result;
}

uint64_t sub_100016934(uint64_t *a1)
{
  v1 = *a1;

  return sub_100019B1C();
}

uint64_t sub_100016960@<X0>(void *a1@<X8>)
{
  result = sub_100019ACC();
  *a1 = v3;
  return result;
}

uint64_t sub_1000169B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100019B6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000169E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100019B7C();
}

uint64_t sub_100016A18@<X0>(void *a1@<X8>)
{
  result = sub_100019A4C();
  *a1 = v3;
  return result;
}

uint64_t sub_100016A6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100019AEC();
  *a1 = result;
  return result;
}

uint64_t sub_100016B40(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10001A3CC() & 1;
  }
}

uint64_t sub_100016BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100016C48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100016CB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019A9C();
  *a1 = result;
  return result;
}

uint64_t sub_100016CE0(uint64_t *a1)
{
  v1 = *a1;

  return sub_100019AAC();
}

unint64_t sub_100016D0C()
{
  result = qword_1000291E8;
  if (!qword_1000291E8)
  {
    sub_100001D70(&qword_1000291D8, &qword_10001BD30);
    sub_100001D70(&qword_1000290C8, &qword_10001BB40);
    sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40);
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291E8);
  }

  return result;
}

unint64_t sub_100016EAC()
{
  result = qword_100029208;
  if (!qword_100029208)
  {
    sub_100001D70(&qword_100029200, &qword_10001BD80);
    sub_100002294(&qword_100029130, &qword_100029138, &qword_10001BB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029208);
  }

  return result;
}

uint64_t sub_100016F64(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100025280;
  v6._object = a2;
  v4 = sub_10001A3AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100016FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10001702C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000170F4()
{
  result = qword_100029260[0];
  if (!qword_100029260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100029260);
  }

  return result;
}

uint64_t sub_100017190(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017200(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
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
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100017340(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_100017574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A12C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100017654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A12C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10001770C()
{
  result = sub_10001A12C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100017798()
{
  result = qword_100029380;
  if (!qword_100029380)
  {
    sub_100001D70(&qword_100029388, &qword_10001BEB8);
    sub_10001781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029380);
  }

  return result;
}

unint64_t sub_10001781C()
{
  result = qword_100029390;
  if (!qword_100029390)
  {
    sub_100001D70(&qword_100029030, &qword_10001BAD8);
    sub_100002294(&qword_100029398, &qword_1000293A0, qword_10001BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029390);
  }

  return result;
}

unint64_t sub_1000178D8()
{
  result = qword_1000293A8;
  if (!qword_1000293A8)
  {
    sub_100001D70(&qword_1000291F8, &qword_10001BD78);
    sub_100017964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293A8);
  }

  return result;
}

unint64_t sub_100017964()
{
  result = qword_1000293B0;
  if (!qword_1000293B0)
  {
    sub_100001D70(&qword_1000291E0, &qword_10001BD38);
    sub_100001D70(&qword_1000291D8, &qword_10001BD30);
    sub_100016D0C();
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_1000293B8, &qword_1000291F0, &qword_10001BD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293B0);
  }

  return result;
}

unint64_t sub_100017B10()
{
  result = qword_1000293D8;
  if (!qword_1000293D8)
  {
    sub_100001D70(&qword_1000293E0, &qword_10001BFB0);
    sub_100017B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293D8);
  }

  return result;
}

unint64_t sub_100017B9C()
{
  result = qword_1000293E8;
  if (!qword_1000293E8)
  {
    sub_100001D70(&qword_1000293F0, &qword_10001BFB8);
    sub_100017C54();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293E8);
  }

  return result;
}

unint64_t sub_100017C54()
{
  result = qword_1000293F8;
  if (!qword_1000293F8)
  {
    sub_100001D70(&qword_100029400, &qword_10001BFC0);
    sub_100017D0C();
    sub_100002294(&qword_100029110, &qword_100029118, &qword_10001BB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293F8);
  }

  return result;
}

unint64_t sub_100017D0C()
{
  result = qword_100029408;
  if (!qword_100029408)
  {
    sub_100001D70(&qword_100029410, &qword_10001BFC8);
    sub_100017DC4();
    sub_100002294(&qword_1000290E8, &qword_1000290F0, &qword_10001BB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029408);
  }

  return result;
}

unint64_t sub_100017DC4()
{
  result = qword_100029418;
  if (!qword_100029418)
  {
    sub_100001D70(&qword_100029420, &qword_10001BFD0);
    sub_100017E7C();
    sub_100002294(&qword_100029448, &qword_100029450, &qword_10001BFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029418);
  }

  return result;
}

unint64_t sub_100017E7C()
{
  result = qword_100029428;
  if (!qword_100029428)
  {
    sub_100001D70(&qword_100029430, &qword_10001BFD8);
    sub_100002294(&qword_100029438, &qword_100029440, &qword_10001BFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029428);
  }

  return result;
}

uint64_t sub_100017F2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10001994C();
  sub_1000199DC();
  sub_100019A0C();
  sub_1000199DC();
  sub_10000F414();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100018034(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001A1C(&qword_100028608, &unk_10001B000);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000181DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100001A1C(&qword_100028608, &unk_10001B000);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for RectangularWidgetView()
{
  result = qword_1000294B0;
  if (!qword_1000294B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000183C0()
{
  sub_100018554(319, &qword_100028598, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100018554(319, &qword_100028680, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100018504();
      if (v2 <= 0x3F)
      {
        sub_100018554(319, &unk_1000285A0, type metadata accessor for DocumentEntry, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100018504()
{
  if (!qword_100028E60)
  {
    v0 = sub_10001993C();
    if (!v1)
    {
      atomic_store(v0, &qword_100028E60);
    }
  }
}

void sub_100018554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000185D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000031E0(v2, &v17 - v11, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001A12C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10001A29C();
    v16 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_1000187D4@<D0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v47 = a5;
  v6 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43[-v8];
  v10 = type metadata accessor for TitleView(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100001A1C(&qword_1000294F0, &qword_10001C078);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43[-v17];
  v19 = type metadata accessor for RectangularWidgetView();
  sub_1000031E0(a1 + *(v19 + 28), v9, &qword_1000284F8, &unk_10001C000);
  v20 = type metadata accessor for DocumentEntry();
  if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
  {
    sub_10001915C(v9);
    v21 = 0;
  }

  else
  {
    v21 = *&v9[*(v20 + 28)];
    v22 = v21;
    sub_100019230(v9, type metadata accessor for DocumentEntry);
  }

  sub_10001996C();
  v24 = v23;
  sub_1000185D4(&v13[v10[9]]);
  v25 = sub_100019FEC();
  v27 = v26;
  KeyPath = swift_getKeyPath();
  *&v13[v10[5]] = swift_getKeyPath();
  sub_100001A1C(&qword_100029228, &qword_10001BDE8);
  swift_storeEnumTagMultiPayload();
  v29 = swift_getKeyPath();
  *v13 = KeyPath;
  v13[8] = 0;
  v30 = &v13[v10[6]];
  *v30 = v29;
  v30[8] = 0;
  *&v13[v10[7]] = v21;
  *&v13[v10[8]] = v24;
  v13[v10[10]] = v44 & 1;
  v31 = &v13[v10[11]];
  *v31 = v25;
  v31[1] = v27;
  v32 = &v13[v10[12]];
  *v32 = 0x3E6E69616C703CLL;
  v32[1] = 0xE700000000000000;
  v33 = &v13[v10[13]];
  *v33 = 0x3E6E69616C702F3CLL;
  v33[1] = 0xE800000000000000;
  v34 = &v13[v10[14]];
  *v34 = 1701869940;
  v34[1] = 0xE400000000000000;
  v35 = &v13[v10[15]];
  *v35 = 1954047348;
  v35[1] = 0xE400000000000000;
  v36 = &v13[v10[16]];
  *v36 = 1954047348;
  v36[1] = 0xE400000000000000;
  v37 = &v13[v10[17]];
  *v37 = 0x736B72616DLL;
  v37[1] = 0xE500000000000000;
  v38 = &v13[v10[18]];
  *v38 = 0x6F43746E65636361;
  v38[1] = 0xEB00000000726F6CLL;
  sub_1000191D8();
  sub_100019DEC();
  sub_100019230(v13, type metadata accessor for TitleView);
  sub_10001995C();
  v39 = v47;
  (*(v15 + 32))(v47, v18, v14);
  v40 = (v39 + *(sub_100001A1C(&qword_100029500, &qword_10001C108) + 36));
  v41 = v49;
  *v40 = v48;
  v40[1] = v41;
  result = *&v50;
  v40[2] = v50;
  return result;
}

uint64_t sub_100018C0C@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A00C();
  v9 = v8;
  sub_100018D24(v2, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = v10 + v5;
  v12 = swift_allocObject();
  result = sub_100019048(v6, v12 + v10);
  *(v12 + v11) = 1;
  v14 = v12 + (v11 & 0xFFFFFFFFFFFFFFF8);
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *a2 = sub_1000190AC;
  a2[1] = v12;
  return result;
}

uint64_t sub_100018D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangularWidgetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018D88()
{
  v1 = type metadata accessor for RectangularWidgetView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10001A12C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_100001A1C(&qword_100028480, qword_10001ABF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10001A0FC();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  sub_1000067A0(*&v5[v1[6]], v5[v1[6] + 8]);
  v11 = &v5[v1[7]];
  v12 = type metadata accessor for DocumentEntry();
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    v13 = sub_1000198BC();
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = v12[5];
    v15 = sub_10001A1EC();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&v11[v14], 1, v15))
    {
      (*(v16 + 8))(&v11[v14], v15);
    }
  }

  return _swift_deallocObject(v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_100019048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangularWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000190AC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RectangularWidgetView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);

  return sub_1000187D4(v1 + v4, v6, v8, v9, a1);
}

uint64_t sub_10001915C(uint64_t a1)
{
  v2 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000191D8()
{
  result = qword_1000294F8;
  if (!qword_1000294F8)
  {
    type metadata accessor for TitleView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294F8);
  }

  return result;
}

uint64_t sub_100019230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100019294()
{
  result = qword_100029508;
  if (!qword_100029508)
  {
    sub_100001D70(&qword_100029510, &unk_10001C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029508);
  }

  return result;
}

uint64_t sub_100019334(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10002A390 == -1)
  {
    if (qword_10002A398)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000197FC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10002A398)
    {
      return _availability_version_check();
    }
  }

  if (qword_10002A388 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100019814();
    a3 = v10;
    a4 = v9;
    v8 = dword_10002A378 < v11;
    if (dword_10002A378 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10002A37C > a3)
      {
        return 1;
      }

      if (dword_10002A37C >= a3)
      {
        return dword_10002A380 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10002A378 < a2;
  if (dword_10002A378 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000194C8(uint64_t result)
{
  v1 = qword_10002A398;
  if (qword_10002A398)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10002A398 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10002A378, &dword_10002A37C, &dword_10002A380);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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