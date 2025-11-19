uint64_t sub_100374F20@<X0>(BOOL *a1@<X8>)
{
  v2 = type metadata accessor for LocationPreviewModalViewModel(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationPreviewViewContentModel(0);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationPreviewViewModel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationPreviewView();
  sub_100988BE0();
  result = sub_100024D10(v10, 1, v5);
  if (result == 1)
  {
    v12 = 0;
  }

  else
  {
    sub_100377B20(v10, v7);
    sub_1003781BC(&v7[*(v5 + 36)], v4);
    sub_100377ACC(v7, type metadata accessor for LocationPreviewViewContentModel);
    result = swift_getEnumCaseMultiPayload();
    v12 = 0;
    if ((result - 2) >= 8)
    {
      v12 = result == 0;
      result = sub_100377ACC(v4, type metadata accessor for LocationPreviewModalViewModel);
    }
  }

  *a1 = v12;
  return result;
}

_BYTE *sub_100375124(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v5 = type metadata accessor for LocationPreviewView();
    sub_1000161C0((a4 + *(v5 + 52)), *(a4 + *(v5 + 52) + 24));
    return sub_100A05D80();
  }

  return result;
}

uint64_t sub_100375170@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for LocationPreviewModalViewModel(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationPreviewViewContentModel(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationPreviewViewModel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  type metadata accessor for LocationPreviewView();
  sub_100988BE0();
  sub_100377B20(v13, v10);
  result = sub_100024D10(v10, 1, v5);
  if (result == 1)
  {
LABEL_2:
    v15 = 0;
  }

  else
  {
    sub_100377B20(v10, v7);
    sub_1003781BC(&v7[*(v5 + 36)], v4);
    sub_100377ACC(v7, type metadata accessor for LocationPreviewViewContentModel);
    result = swift_getEnumCaseMultiPayload();
    v15 = 0;
    switch(result)
    {
      case 1:
        result = sub_100377ACC(v4, type metadata accessor for LocationPreviewModalViewModel);
        goto LABEL_4;
      case 2:
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
LABEL_4:
        v15 = 1;
        break;
      default:
        result = sub_100377ACC(v4, type metadata accessor for LocationPreviewModalViewModel);
        goto LABEL_2;
    }
  }

  *a1 = v15;
  return result;
}

void sub_1003753E4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LocationPreviewViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v9 = type metadata accessor for LocationPreviewView();
    sub_100988BE0();
    v10 = sub_1005CA908();
    sub_100377ACC(v8, type metadata accessor for LocationPreviewViewModel);
    if (v10)
    {
      sub_1000161C0((a4 + *(v9 + 52)), *(a4 + *(v9 + 52) + 24));
      sub_100A05D80();
    }
  }
}

uint64_t sub_1003754C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_10022C350(&qword_100CB0950);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10022C350(&qword_100CB0958);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v26 = *(v2 + 8);
  v12 = *(v2 + 32);
  *&v27 = *(v2 + 24);
  *(&v27 + 1) = v12;
  sub_10022C350(&qword_100CB0960);
  State.wrappedValue.getter();
  v26 = *(v2 + 8);
  *&v27 = *(v2 + 24);
  *(&v27 + 1) = v12;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = sub_10022C350(&qword_100CB0968);
  (*(*(v13 - 8) + 16))(v7, v22, v13);
  v14 = &v7[*(v5 + 44)];
  v15 = v27;
  *v14 = v26;
  *(v14 + 1) = v15;
  *(v14 + 2) = v28;
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v2 + 32);
  v18 = swift_allocObject();
  v19 = *(v3 + 16);
  *(v18 + 16) = *v3;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v3 + 32);
  sub_10011C0F0(v7, v11, &qword_100CB0950);
  v20 = &v11[*(v9 + 44)];
  *v20 = sub_1003783C8;
  v20[1] = v16;
  v20[2] = sub_1003783D0;
  v20[3] = v18;
  sub_10011C0F0(v11, v23, &qword_100CB0958);
  v25 = v12;
  sub_1000302D8(&v25, v24, &qword_100CB0970);
  return sub_1000302D8(&v25, v24, &qword_100CB0970);
}

uint64_t sub_10037579C@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0uLL;
  if (*a1)
  {
    result = GeometryProxy.size.getter();
    *(&v4 + 1) = v6;
  }

  *a2 = v4;
  *(a2 + 16) = (v3 & 1) == 0;
  return result;
}

uint64_t sub_1003757EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v17 = *(a2 + 8);
  v6 = *(a2 + 32);
  v18 = *(a2 + 24);
  v7 = *(a2 + 24);
  v19 = v6;
  v14 = *(a2 + 8);
  v15 = v7;
  v16 = v6;
  sub_1000302D8(&v19, &v11, &qword_100CB0970);
  sub_10022C350(&qword_100CB0960);
  State.wrappedValue.getter();
  v8 = v11;
  v9 = v12;
  if (v13)
  {
    v8 = v3;
    v9 = v4;
  }

  v14 = v17;
  v15 = v18;
  v16 = v6;
  v11 = v8;
  v12 = v9;
  v13 &= v5;
  State.wrappedValue.setter();
  return sub_1003783D8(a2);
}

unint64_t sub_100375960()
{
  result = qword_100CB0500;
  if (!qword_100CB0500)
  {
    sub_10022E824(&qword_100CB04F8);
    sub_100375A18();
    sub_100006F64(&qword_100CB0570, &qword_100CE1050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0500);
  }

  return result;
}

unint64_t sub_100375A18()
{
  result = qword_100CB0508;
  if (!qword_100CB0508)
  {
    sub_10022E824(&qword_100CB0510);
    sub_100375AD0();
    sub_100006F64(&qword_100CB0560, &qword_100CB0568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0508);
  }

  return result;
}

unint64_t sub_100375AD0()
{
  result = qword_100CB0518;
  if (!qword_100CB0518)
  {
    sub_10022E824(&qword_100CB0520);
    sub_10022E824(&qword_100CB0528);
    sub_10022E824(&qword_100CB0530);
    sub_100006F64(&qword_100CB0538, &qword_100CB0528);
    sub_100375C38();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0518);
  }

  return result;
}

unint64_t sub_100375C38()
{
  result = qword_100CB0540;
  if (!qword_100CB0540)
  {
    sub_10022E824(&qword_100CB0530);
    sub_100006F64(&qword_100CB0538, &qword_100CB0528);
    sub_100006F64(&qword_100CB0548, &qword_100CB0550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0540);
  }

  return result;
}

unint64_t sub_100375D24()
{
  result = qword_100CB0610;
  if (!qword_100CB0610)
  {
    sub_10022E824(&qword_100CB0600);
    sub_100006F64(&qword_100CB0608, &qword_100CB05B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0610);
  }

  return result;
}

uint64_t sub_100375DDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationPreviewView();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003810(v6);
  sub_1000694E8();

  return sub_100370258(v1 + v5, v1 + v7, a1);
}

unint64_t sub_100375E9C()
{
  result = qword_100CB0620;
  if (!qword_100CB0620)
  {
    sub_10022E824(&qword_100CB05D0);
    sub_10022E824(&qword_100CB05C8);
    sub_10022E824(&qword_100CA5528);
    sub_10022E824(&qword_100CB05C0);
    sub_10022E824(&qword_100CB05B8);
    sub_10022E824(&qword_100CB05F8);
    sub_10022E824(&qword_100CB0600);
    sub_100006F64(&qword_100CB0608, &qword_100CB05B8);
    sub_100375D24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002D5A4();
    sub_100006F64(&qword_100CA5548, &qword_100CA5528);
    swift_getOpaqueTypeConformance2();
    sub_1000619F4(&qword_100CA6E78, type metadata accessor for SafariSheetModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0620);
  }

  return result;
}

unint64_t sub_10037614C()
{
  result = qword_100CB0628;
  if (!qword_100CB0628)
  {
    sub_10022E824(&qword_100CB0618);
    sub_100376204();
    sub_100006F64(&qword_100CB0748, &qword_100CB0750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0628);
  }

  return result;
}

unint64_t sub_100376204()
{
  result = qword_100CB0630;
  if (!qword_100CB0630)
  {
    sub_10022E824(&qword_100CB0638);
    sub_100376288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0630);
  }

  return result;
}

unint64_t sub_100376288()
{
  result = qword_100CB0640;
  if (!qword_100CB0640)
  {
    sub_10022E824(&qword_100CB0648);
    sub_100376314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0640);
  }

  return result;
}

unint64_t sub_100376314()
{
  result = qword_100CB0650;
  if (!qword_100CB0650)
  {
    sub_10022E824(&qword_100CB0658);
    sub_1003763A0();
    sub_1003765EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0650);
  }

  return result;
}

unint64_t sub_1003763A0()
{
  result = qword_100CB0660;
  if (!qword_100CB0660)
  {
    sub_10022E824(&qword_100CB0668);
    sub_10037642C();
    sub_10037650C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0660);
  }

  return result;
}

unint64_t sub_10037642C()
{
  result = qword_100CB0670;
  if (!qword_100CB0670)
  {
    sub_10022E824(&qword_100CB0678);
    sub_100006F64(&qword_100CB0680, &qword_100CB0688);
    sub_100006F64(&qword_100CB0690, &qword_100CB0698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0670);
  }

  return result;
}

unint64_t sub_10037650C()
{
  result = qword_100CB06A0;
  if (!qword_100CB06A0)
  {
    sub_10022E824(&qword_100CB06A8);
    sub_100006F64(&qword_100CB06B0, &qword_100CB06B8);
    sub_100006F64(&qword_100CB06C0, &qword_100CB06C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB06A0);
  }

  return result;
}

unint64_t sub_1003765EC()
{
  result = qword_100CB06D0;
  if (!qword_100CB06D0)
  {
    sub_10022E824(&qword_100CB06D8);
    sub_100376678();
    sub_100376758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB06D0);
  }

  return result;
}

unint64_t sub_100376678()
{
  result = qword_100CB06E0;
  if (!qword_100CB06E0)
  {
    sub_10022E824(&qword_100CB06E8);
    sub_100006F64(&qword_100CB06F0, &qword_100CB06F8);
    sub_100006F64(&qword_100CB0700, &qword_100CB0708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB06E0);
  }

  return result;
}

unint64_t sub_100376758()
{
  result = qword_100CB0710;
  if (!qword_100CB0710)
  {
    sub_10022E824(&qword_100CB0718);
    sub_100376810();
    sub_100006F64(&qword_100CB0738, &qword_100CB0740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0710);
  }

  return result;
}

unint64_t sub_100376810()
{
  result = qword_100CB0720;
  if (!qword_100CB0720)
  {
    sub_10022E824(&qword_100CB0728);
    sub_1000619F4(&qword_100CB0730, &type metadata accessor for NewsArticleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0720);
  }

  return result;
}

uint64_t sub_1003768FC(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for LocationPreviewView();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003810(v6);
  sub_1000694E8();
  return sub_1003729FC(v1 + v5, v1 + v7, a1);
}

uint64_t sub_1003769B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LocationPreviewView();
  sub_100003810(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1003703F8(a1, a2, v7);
}

unint64_t sub_100376A2C()
{
  result = qword_100CB0770;
  if (!qword_100CB0770)
  {
    sub_10022E824(&qword_100CB05E0);
    sub_100376AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0770);
  }

  return result;
}

unint64_t sub_100376AB8()
{
  result = qword_100CB0778;
  if (!qword_100CB0778)
  {
    sub_10022E824(&qword_100CB0768);
    sub_100376B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0778);
  }

  return result;
}

unint64_t sub_100376B44()
{
  result = qword_100CB0780;
  if (!qword_100CB0780)
  {
    sub_10022E824(&qword_100CB0760);
    sub_100376C00();
    sub_1000619F4(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0780);
  }

  return result;
}

unint64_t sub_100376C00()
{
  result = qword_100CB0788;
  if (!qword_100CB0788)
  {
    sub_10022E824(&qword_100CB0758);
    sub_10022E824(&qword_100CB05D8);
    sub_10022E824(&qword_100CB05D0);
    sub_10022E824(&qword_100CB0618);
    sub_100375E9C();
    sub_10037614C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0788);
  }

  return result;
}

unint64_t sub_100376D48()
{
  result = qword_100CB07B0;
  if (!qword_100CB07B0)
  {
    sub_10022E824(&qword_100CB05E8);
    sub_100376E00();
    sub_100006F64(&qword_100CACCF8, &qword_100CACD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB07B0);
  }

  return result;
}

unint64_t sub_100376E00()
{
  result = qword_100CB07B8;
  if (!qword_100CB07B8)
  {
    sub_10022E824(&qword_100CB0798);
    sub_10022E824(&qword_100CB05E0);
    type metadata accessor for LocationPreviewViewContentModel(255);
    sub_100376A2C();
    sub_1000619F4(&qword_100CB0790, type metadata accessor for LocationPreviewViewContentModel);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CB07C0, &qword_100CB07C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB07B8);
  }

  return result;
}

unint64_t sub_100376F44()
{
  result = qword_100CB07F0;
  if (!qword_100CB07F0)
  {
    sub_10022E824(&qword_100CB07E8);
    sub_100006F64(&qword_100CB07D8, &qword_100CB07D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB07F0);
  }

  return result;
}

unint64_t sub_100377040()
{
  result = qword_100CB0820;
  if (!qword_100CB0820)
  {
    sub_10022E824(&qword_100CB0818);
    sub_100006F64(&qword_100CA6EE8, &unk_100CE1740);
    sub_10022E824(&qword_100CB0828);
    type metadata accessor for PlainButtonStyle();
    sub_100377198();
    sub_1000619F4(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0820);
  }

  return result;
}

unint64_t sub_100377198()
{
  result = qword_100CB0830;
  if (!qword_100CB0830)
  {
    sub_10022E824(&qword_100CB0828);
    sub_100006F64(&qword_100CB0838, &qword_100CB0840);
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0830);
  }

  return result;
}

uint64_t sub_1003772D8()
{
  v1 = v0;
  v2 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003DDC();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for LocationPreviewView();
  sub_100003DDC();
  v39 = *(v8 + 80);
  v9 = v4 + v6 + v39;
  v38 = *(v10 + 64);
  v11 = type metadata accessor for Location();
  sub_1000037C4();
  v13 = v12;
  v37 = *(v12 + 80);
  v14 = (v1 + v4);
  type metadata accessor for PreviewLocation();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      (*(v13 + 8))(v1 + v4, v11);
      break;
    case 2u:
      type metadata accessor for LocationOfInterest();
      sub_100003D98();
      (*(v15 + 8))(v1 + v4);
      break;
    case 3u:

      v16 = *(type metadata accessor for SearchLocation() + 32);
      if (!sub_100024D10(v14 + v16, 1, v11))
      {
        (*(v13 + 8))(v14 + v16, v11);
      }

      break;
    case 4u:

      break;
    default:
      break;
  }

  v17 = v9 & ~v39;
  v18 = *(v2 + 32);
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v19 + 8))(v14 + v18);
  v20 = v14 + *(v2 + 36);
  type metadata accessor for LocationPreviewModalViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v35 = v11;
    v36 = v1;

    v23 = type metadata accessor for NewsArticle();
    v24 = v23[6];
    v25 = type metadata accessor for URL();
    if (!sub_100024D10(&v20[v24], 1, v25))
    {
      (*(*(v25 - 8) + 8))(&v20[v24], v25);
    }

    v26 = v23[7];
    type metadata accessor for Date();
    sub_100003D98();
    (*(v27 + 8))(&v20[v26]);
    v28 = *(*(v25 - 8) + 8);
    v28(&v20[v23[8]], v25);
    v29 = &v20[v23[9]];

    v30 = *(type metadata accessor for NewsChannel() + 24);
    if (!sub_100024D10(&v29[v30], 1, v25))
    {
      v28(&v29[v30], v25);
    }

    v11 = v35;
    v1 = v36;
  }

  else if (!EnumCaseMultiPayload)
  {
    type metadata accessor for URL();
    sub_100003D98();
    (*(v22 + 8))(v20);
  }

  v31 = v1 + v17;

  sub_1000EBD74(*(v31 + 24), *(v31 + 32));
  v32 = v7[7];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v33 + 8))(v31 + v32);
  }

  else
  {
  }

  sub_1000EBD74(*(v31 + v7[8]), *(v31 + v7[8] + 8));

  sub_10004E484();
  sub_10004E484();
  sub_1000206CC();
  sub_100006F14(v31 + v7[13]);
  swift_unknownObjectRelease();
  sub_100006F14(v31 + v7[15]);
  sub_1000206CC();
  (*(v13 + 8))(v1 + ((v17 + v38 + v37) & ~v37), v11);

  return swift_deallocObject();
}

uint64_t sub_10037781C()
{
  v1 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for LocationPreviewView();
  sub_100003AE8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = type metadata accessor for Location();
  sub_100003810(v9);
  sub_1000694E8();
  return sub_1003733B0(v0 + v3, v0 + v8, v0 + v10);
}

uint64_t sub_100377948()
{
  v1 = type metadata accessor for LocationPreviewView();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003810(v4);

  return sub_1003724C4(v0 + v3);
}

uint64_t sub_100377ACC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100377B20(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100377B90(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = type metadata accessor for LocationPreviewView();
  sub_100003810(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return a1(v4, v5, v6);
}

uint64_t sub_100377C14()
{
  v1 = type metadata accessor for LocationPreviewView();
  sub_100003DDC();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  sub_1000EBD74(*(v4 + 24), *(v4 + 32));
  v5 = *(v1 + 28);
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_10003C3A0();
  sub_100074868();
  sub_100006F14(v4 + *(v1 + 52));
  swift_unknownObjectRelease();
  sub_10002C648();

  return swift_deallocObject();
}

uint64_t sub_100377D74(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = type metadata accessor for LocationPreviewView();
  sub_100003810(v4);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(a1, v6, v7, v8);
}

unint64_t sub_100377E00()
{
  result = qword_100CB08C0;
  if (!qword_100CB08C0)
  {
    sub_10022E824(&qword_100CB08B8);
    sub_100377E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB08C0);
  }

  return result;
}

unint64_t sub_100377E8C()
{
  result = qword_100CB08C8;
  if (!qword_100CB08C8)
  {
    sub_10022E824(&qword_100CB0580);
    sub_1000619F4(&qword_100CB08D0, type metadata accessor for WeatherConditionBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB08C8);
  }

  return result;
}

unint64_t sub_100377F50()
{
  result = qword_100CB08F8;
  if (!qword_100CB08F8)
  {
    sub_10022E824(&qword_100CB08F0);
    sub_100006F64(&qword_100CB0900, &qword_100CB0908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB08F8);
  }

  return result;
}

uint64_t sub_100378000()
{
  v1 = type metadata accessor for LocationPreviewView();
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1000EBD74(*(v3 + 24), *(v3 + 32));
  v4 = *(v1 + 28);
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_10003C3A0();
  sub_100074868();
  sub_100006F14(v3 + *(v1 + 52));
  swift_unknownObjectRelease();
  sub_10002C648();

  return swift_deallocObject();
}

double sub_100378140@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationPreviewView();
  sub_100003810(v4);

  return sub_10036FAB4(a1, a2);
}

uint64_t sub_1003781BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100378224(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_100378278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1003782E4()
{
  result = qword_100CB0940;
  if (!qword_100CB0940)
  {
    sub_10022E824(&qword_100CB0948);
    sub_10022E824(&qword_100CB04F8);
    sub_100375960();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0940);
  }

  return result;
}

unint64_t sub_100378408()
{
  result = qword_100CB0978;
  if (!qword_100CB0978)
  {
    sub_10022E824(&qword_100CB0958);
    sub_1003784C0();
    sub_100006F64(&qword_100CB0990, &qword_100CB0998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0978);
  }

  return result;
}

unint64_t sub_1003784C0()
{
  result = qword_100CB0980;
  if (!qword_100CB0980)
  {
    sub_10022E824(&qword_100CB0950);
    sub_100006F64(&qword_100CB0988, &qword_100CB0968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0980);
  }

  return result;
}

uint64_t sub_10037858C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v699 = a5;
  v704 = a4;
  v701 = a2;
  v702 = a3;
  v698 = a1;
  v640 = type metadata accessor for Location();
  v639 = *(v640 - 8);
  __chkstk_darwin(v640);
  v6 = sub_100003918(&v605 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v710 = type metadata accessor for ViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_100003918(v11);
  v709 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003848();
  v695 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v696 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v694 = v18;
  v707 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  v693 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_10000E70C();
  sub_100003918(v24);
  v706 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003918(v29);
  v711 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  sub_100003918(v34);
  v708 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  sub_100003918(v39);
  v705 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v45 = sub_100003918(v44);
  v700 = type metadata accessor for ModalViewState(v45);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  v703 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  sub_100003990(v56);
  v57 = sub_10022C350(&qword_100CA65E8);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
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
  v67 = sub_10022C350(&qword_100CA6610);
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_10000E70C();
  sub_100003990(v76);
  v77 = sub_10022C350(&qword_100CA6618);
  v78 = sub_100003810(v77);
  __chkstk_darwin(v78);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_10000E70C();
  sub_100003990(v86);
  v87 = sub_10022C350(&qword_100CA6620);
  v88 = sub_100003810(v87);
  __chkstk_darwin(v88);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_10000E70C();
  sub_100003990(v96);
  v97 = sub_10022C350(&qword_100CA6628);
  v98 = sub_100003810(v97);
  __chkstk_darwin(v98);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
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
  v107 = sub_10022C350(&qword_100CA6630);
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_10000E70C();
  sub_100003990(v116);
  v117 = sub_10022C350(&qword_100CA6638);
  v118 = sub_100003810(v117);
  __chkstk_darwin(v118);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_10000E70C();
  sub_100003990(v126);
  v127 = sub_10022C350(&qword_100CA6640);
  v128 = sub_100003810(v127);
  v129 = __chkstk_darwin(v128);
  v131 = &v605 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __chkstk_darwin(v129);
  v134 = &v605 - v133;
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  v136 = __chkstk_darwin(v135);
  v138 = &v605 - v137;
  v139 = __chkstk_darwin(v136);
  v141 = &v605 - v140;
  v142 = __chkstk_darwin(v139);
  v144 = &v605 - v143;
  v145 = __chkstk_darwin(v142);
  v147 = &v605 - v146;
  __chkstk_darwin(v145);
  v149 = &v605 - v148;
  v150 = sub_10022C350(&qword_100CA2CD8);
  v151 = sub_100003810(v150);
  __chkstk_darwin(v151);
  v153 = &v605 - v152;
  type metadata accessor for DebugAction();
  sub_1000037E8();
  __chkstk_darwin(v154);
  v156 = &v605 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037B030(v699, v156, type metadata accessor for DebugAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v276 = *(v639 + 32);
      v277 = v637;
      v278 = v156;
      v279 = v640;
      v276(v637, v278, v640);
      sub_100003934();
      sub_10001B350(v280, v281, v282, v705);
      v283 = v608;
      sub_100003934();
      v284 = v708;
      sub_10001B350(v285, v286, v287, v708);
      v288 = sub_100003BCC(&v684);
      sub_10001B350(v288, v289, v290, v711);
      v291 = sub_100003BCC(&v688);
      v292 = v706;
      sub_10001B350(v291, v293, v294, v706);
      v295 = sub_100003BCC(&v692);
      v296 = v707;
      sub_10001B350(v295, v297, v298, v707);
      v299 = sub_100003BCC(&v696);
      sub_10001B350(v299, v300, v301, v709);
      v302 = sub_100003BCC(&v701);
      sub_10001B350(v302, v303, v304, v710);
      v305 = v622;
      v276(v622, v277, v279);
      type metadata accessor for PreviewLocation();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for LocationPreviewViewState(0);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SelectedSearchResult();
      swift_storeEnumTagMultiPayload();
      v306 = v700;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v305, 0, 1, v306);
      sub_1000694F8();
      v307 = v704;
      v309 = v631;
      sub_10037B030(v704 + v308, v631, v310);
      v311 = v625;
      sub_100051B60(v305, v625, &qword_100CA65E8);
      v312 = sub_1000131C4();
      sub_1000038B4(v312, v313, v306);
      if (v197)
      {
        sub_1000180EC(v311, &qword_100CA65E8);
      }

      else
      {
        sub_10037B08C(v309);
        sub_100005518();
        sub_100072F7C(v311, v309, v477);
      }

      v478 = v614;
      sub_100005518();
      sub_100072F7C(v309, v672, v479);
      v480 = *(v307 + 16);
      LODWORD(v701) = *(v307 + 24);
      sub_100021424();
      sub_100051B60(v481, v482, v483);
      v484 = sub_100016298();
      v485 = v705;
      sub_1000038B4(v484, v486, v705);
      v702 = v480;
      if (v197)
      {
        sub_10003C3DC();
        sub_10037B030(v307 + v487, v677, v488);
        v489 = sub_100016298();
        v491 = sub_100024D10(v489, v490, v485);

        v507 = v636;
        v492 = v138;
        v508 = v632;
        if (v491 != 1)
        {
          sub_1000180EC(v492, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072F7C(v138, v677, v506);

        v507 = v636;
        v508 = v632;
      }

      v509 = v283;
      v510 = v610;
      sub_100051B60(v509, v610, &qword_100CA6638);
      sub_1000038B4(v510, 1, v284);
      if (v197)
      {
        v511 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_1000136AC();
        sub_10037B030(v307 + v511, v681, v512);
        sub_1000038B4(v510, 1, v284);
        v519 = v643;
        v520 = v623;
        if (!v197)
        {
          sub_1000180EC(v510, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072F7C(v510, v681, v518);
        v519 = v643;
        v520 = v623;
      }

      sub_100051B60(v653, v478, &qword_100CA6630);
      sub_100003A40(v478);
      if (v197)
      {
        sub_10001686C();
        sub_10037B030(v307 + v521, v685, v522);
        sub_100003A40(v478);
        v527 = v647;
        if (!v197)
        {
          sub_1000180EC(v478, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072F7C(v478, v685, v526);
        v527 = v647;
      }

      sub_100051B60(v656, v520, &qword_100CA6628);
      v528 = sub_1000201BC();
      sub_1000038B4(v528, v529, v292);
      if (v197)
      {
        sub_1000748BC();
        sub_10037B030(v307 + v530, v689, v531);
        v532 = sub_1000201BC();
        sub_1000038B4(v532, v533, v292);
        if (!v197)
        {
          sub_1000180EC(v520, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072F7C(v520, v689, v539);
      }

      sub_100051B60(v660, v508, &qword_100CA6620);
      v540 = sub_100016298();
      sub_1000038B4(v540, v541, v296);
      if (v197)
      {
        sub_100022A14();
        sub_10037B030(v307 + v542, v693, v543);
        v544 = sub_100016298();
        sub_1000038B4(v544, v545, v296);
        if (!v197)
        {
          sub_1000180EC(v508, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072F7C(v508, v693, v555);
      }

      sub_100051B60(v664, v507, &qword_100CA6618);
      v556 = sub_10000C834();
      v557 = v709;
      sub_1000038B4(v556, v558, v709);
      if (v197)
      {
        sub_100003FC8();
        sub_10037B030(v307 + v559, v696, v560);
        v561 = sub_10000C834();
        sub_1000038B4(v561, v562, v557);
        if (!v197)
        {
          sub_1000180EC(v507, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072F7C(v507, v696, v570);
      }

      sub_100051B60(v668, v519, &qword_100CA6610);
      v571 = sub_1000131C4();
      v572 = v710;
      sub_1000038B4(v571, v573, v710);
      if (v197)
      {
        sub_100008358();
        sub_10037B030(v307 + v574, v527, v575);
        v576 = sub_1000131C4();
        sub_1000038B4(v576, v577, v572);
        v589 = v527;
        if (!v197)
        {
          sub_1000180EC(v519, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072F7C(v519, v527, v588);
        v589 = v527;
      }

      sub_100005518();
      v590 = v703;
      sub_100072F7C(v672, v703, v591);
      v593 = *(v307 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v592 = *(v307 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v594 = *(v307 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v595 = *(v307 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v596 = v307;
      v597 = v307 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v598 = *(v307 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v599 = *(v597 + 8);
      v600 = *(v597 + 16);
      v601 = *(v596 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v604) = v598;
      sub_10003E038(v702, v701, v677, v681, v685, v689, v693, v696, v589, v590, v593, v592, v594, v595, v604, v599, v600, v601, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621);
      v587 = v602;

      goto LABEL_131;
    case 2u:
      v198 = *(v156 + 1);
      v199 = *(v156 + 2);
      v200 = *v156;
      sub_100003934();
      v201 = v705;
      sub_10001B350(v202, v203, v204, v705);
      v205 = sub_100003BCC(&v680);
      sub_10001B350(v205, v206, v207, v708);
      v208 = sub_100003BCC(&v683);
      sub_10001B350(v208, v209, v210, v711);
      v211 = sub_100003BCC(&v687);
      sub_10001B350(v211, v212, v213, v706);
      v214 = sub_100003BCC(&v691);
      sub_10001B350(v214, v215, v216, v707);
      v217 = sub_100003BCC(&v695);
      sub_10001B350(v217, v218, v219, v709);
      v220 = sub_100003BCC(&v700);
      v221 = v710;
      sub_10001B350(v220, v222, v223, v710);
      v224 = v619;
      sub_100003934();
      v225 = v700;
      sub_10001B350(v226, v227, v228, v700);
      LODWORD(v702) = sub_1008D95F8(v200, v198, v199, v698 & 1, v701, v702);
      v701 = v229;
      v699 = v230;

      sub_1000694F8();
      v231 = v704;
      v233 = v629;
      sub_10037B030(v704 + v232, v629, v234);
      v235 = v624;
      sub_100051B60(v224, v624, &qword_100CA65E8);
      v236 = sub_1000162A4();
      sub_1000038B4(v236, v237, v225);
      if (v197)
      {
        sub_1000180EC(v235, &qword_100CA65E8);
      }

      else
      {
        sub_10037B08C(v233);
        sub_100005518();
        sub_100072F7C(v235, v233, v314);
      }

      v315 = v613;
      sub_100005518();
      sub_100072F7C(v233, v671, v316);
      v317 = *(v231 + 16);
      v318 = *(v231 + 24);
      sub_100051B60(v134, v131, &qword_100CA6640);
      v319 = sub_1000131C4();
      sub_1000038B4(v319, v320, v201);
      if (v197)
      {
        sub_10003C3DC();
        sub_10037B030(v231 + v321, v675, v322);
        v323 = sub_1000131C4();
        v325 = sub_100024D10(v323, v324, v201);

        v197 = v325 == 1;
        v327 = v709;
        v329 = v706;
        v328 = v707;
        if (!v197)
        {
          sub_1000180EC(v131, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072F7C(v131, v675, v326);

        v327 = v709;
        v329 = v706;
        v328 = v707;
      }

      v330 = v648;
      sub_100051B60(v650, v648, &qword_100CA6638);
      v331 = sub_1000131C4();
      sub_1000038B4(v331, v332, v708);
      if (v197)
      {
        v333 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_1000136AC();
        v334 = v231 + v333;
        v335 = v648;
        sub_10037B030(v334, v679, v336);
        sub_100003A40(v335);
        v338 = v646;
        if (!v197)
        {
          sub_1000180EC(v335, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072F7C(v330, v679, v337);
        v338 = v646;
      }

      sub_100051B60(v652, v315, &qword_100CA6630);
      v339 = sub_100016298();
      v340 = v711;
      sub_1000038B4(v339, v341, v711);
      if (v197)
      {
        sub_10001686C();
        sub_10037B030(v231 + v342, v683, v343);
        v344 = sub_100016298();
        sub_1000038B4(v344, v345, v340);
        v347 = v635;
        if (!v197)
        {
          sub_1000180EC(v315, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072F7C(v315, v683, v346);
        v347 = v635;
      }

      sub_100021424();
      sub_100051B60(v348, v349, v350);
      v351 = sub_100016298();
      sub_1000038B4(v351, v352, v329);
      if (v197)
      {
        sub_1000748BC();
        sub_10037B030(v231 + v353, v687, v354);
        v355 = sub_100016298();
        sub_1000038B4(v355, v356, v329);
        if (!v197)
        {
          sub_1000180EC(v315, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072F7C(v315, v687, v357);
      }

      v358 = v630;
      sub_100051B60(v659, v630, &qword_100CA6620);
      v359 = sub_1000201BC();
      sub_1000038B4(v359, v360, v328);
      if (v197)
      {
        sub_100022A14();
        sub_10037B030(v231 + v361, v691, v362);
        v363 = sub_1000201BC();
        sub_1000038B4(v363, v364, v328);
        if (!v197)
        {
          sub_1000180EC(v358, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072F7C(v358, v691, v365);
      }

      sub_100051B60(v663, v347, &qword_100CA6618);
      v366 = sub_1000131C4();
      sub_1000038B4(v366, v367, v327);
      if (v197)
      {
        sub_100003FC8();
        sub_10037B030(v231 + v368, v695, v369);
        v370 = sub_1000131C4();
        sub_1000038B4(v370, v371, v327);
        if (!v197)
        {
          sub_1000180EC(v347, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072F7C(v347, v695, v372);
      }

      v373 = v642;
      sub_100051B60(v667, v642, &qword_100CA6610);
      v374 = sub_10000C834();
      sub_1000038B4(v374, v375, v221);
      if (v197)
      {
        sub_100008358();
        sub_10037B030(v231 + v376, v338, v377);
        v378 = sub_10000C834();
        sub_1000038B4(v378, v379, v221);
        if (!v197)
        {
          sub_1000180EC(v373, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        v380 = sub_100003940();
        sub_100072F7C(v380, v381, v382);
      }

      sub_100005518();
      v383 = v703;
      sub_100072F7C(v671, v703, v384);
      v385 = v231 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
      v386 = v231;
      v387 = *(v231 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v388 = *(v231 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v389 = *(v385 + 16);
      v390 = *(v385 + 24);
      v391 = *(v386 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v604) = v702 & 1;
      sub_10003E038(v317, v318, v675, v679, v683, v687, v691, v695, v338, v383, v387, v388, v389, v390, v604, v701, v699, v391, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621);
      goto LABEL_129;
    case 3u:
      sub_100003934();
      sub_10001B350(v238, v239, v240, v705);
      v241 = v606;
      sub_100003934();
      sub_10001B350(v242, v243, v244, v708);
      v245 = sub_100003BCC(&v681);
      sub_10001B350(v245, v246, v247, v711);
      v248 = sub_100003BCC(&v685);
      v249 = v706;
      sub_10001B350(v248, v250, v251, v706);
      v252 = sub_100003BCC(&v689);
      v253 = v707;
      sub_10001B350(v252, v254, v255, v707);
      v256 = sub_100003BCC(&v693);
      v257 = v709;
      sub_10001B350(v256, v258, v259, v709);
      v260 = sub_100003BCC(v697);
      sub_10001B350(v260, v261, v262, v710);
      v263 = v615;
      sub_100003934();
      v264 = v700;
      sub_10001B350(v265, v266, v267, v700);
      sub_1000694F8();
      v268 = v704;
      sub_100021424();
      sub_10037B030(v269, v270, v271);
      v272 = v263;
      v273 = v618;
      sub_100051B60(v272, v618, &qword_100CA65E8);
      v274 = sub_1000162A4();
      LODWORD(v264) = sub_100024D10(v274, v275, v264);

      if (v264 == 1)
      {
        sub_1000180EC(v273, &qword_100CA65E8);
      }

      else
      {
        sub_10037B08C(v138);
        sub_100005518();
        sub_100072F7C(v273, v138, v393);
      }

      sub_100005518();
      sub_100072F7C(v138, v669, v394);
      v395 = *(v268 + 16);
      LODWORD(v700) = *(v268 + 24);
      sub_100051B60(v144, v141, &qword_100CA6640);
      v396 = sub_1000175DC();
      v397 = v705;
      sub_1000038B4(v396, v398, v705);
      v399 = *(&v615 + 1);
      if (v197)
      {
        sub_10003C3DC();
        sub_10037B030(v268 + v400, v673, v401);
        v402 = sub_1000175DC();
        v404 = sub_100024D10(v402, v403, v397);

        if (v404 != 1)
        {
          sub_1000180EC(v141, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072F7C(v141, v673, v405);
      }

      v406 = v607;
      sub_100051B60(v241, v607, &qword_100CA6638);
      v407 = sub_10000C834();
      v408 = v708;
      v410 = v395;
      if (sub_100024D10(v407, v409, v708) == 1)
      {
        v395 = v406;
        v411 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_1000136AC();
        sub_10037B030(v268 + v411, v676, v412);
        v413 = sub_100016298();
        sub_1000038B4(v413, v414, v408);
        v415 = v638;
        v416 = v633;
        if (!v197)
        {
          sub_1000180EC(v395, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072F7C(v406, v676, v417);
        v415 = v638;
        v416 = v633;
      }

      sub_100021424();
      sub_100051B60(v418, v419, v420);
      sub_100003A40(v395);
      if (v197)
      {
        sub_10001686C();
        sub_10037B030(v268 + v421, v680, v422);
        sub_100003A40(v395);
        v424 = v644;
        if (!v197)
        {
          sub_1000180EC(v395, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072F7C(v395, v680, v423);
        v424 = v644;
      }

      sub_100051B60(v654, v399, &qword_100CA6628);
      v425 = sub_1000162A4();
      sub_1000038B4(v425, v426, v249);
      if (v197)
      {
        sub_1000748BC();
        sub_10037B030(v268 + v427, v684, v428);
        v429 = sub_1000162A4();
        sub_1000038B4(v429, v430, v249);
        v432 = v410;
        if (!v197)
        {
          sub_1000180EC(v399, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072F7C(v399, v684, v431);
        v432 = v410;
      }

      v433 = v626;
      sub_100051B60(v657, v626, &qword_100CA6620);
      v434 = sub_1000201BC();
      sub_1000038B4(v434, v435, v253);
      if (v197)
      {
        sub_100022A14();
        sub_10037B030(v268 + v436, v688, v437);
        v438 = sub_1000201BC();
        sub_1000038B4(v438, v439, v253);
        v441 = v710;
        if (!v197)
        {
          sub_1000180EC(v433, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072F7C(v433, v688, v440);
        v441 = v710;
      }

      sub_100051B60(v661, v416, &qword_100CA6618);
      v442 = sub_10000C834();
      sub_1000038B4(v442, v443, v257);
      if (v197)
      {
        sub_100003FC8();
        sub_10037B030(v268 + v444, v692, v445);
        v446 = sub_10000C834();
        sub_1000038B4(v446, v447, v257);
        if (!v197)
        {
          sub_1000180EC(v416, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072F7C(v416, v692, v448);
      }

      v449 = v698 ^ 1;
      sub_100051B60(v665, v415, &qword_100CA6610);
      v450 = sub_1000175DC();
      sub_1000038B4(v450, v451, v441);
      if (v197)
      {
        sub_100008358();
        sub_10037B030(v268 + v452, v424, v453);
        v454 = sub_1000175DC();
        sub_1000038B4(v454, v455, v441);
        v457 = v424;
        if (!v197)
        {
          sub_1000180EC(v415, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072F7C(v415, v424, v456);
        v457 = v424;
      }

      sub_100005518();
      v458 = v703;
      sub_100072F7C(v669, v703, v459);
      v460 = *(v268 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v461 = *(v268 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v462 = *(v268 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v463 = *(v268 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v464 = *(v268 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v604) = v449 & 1;
      sub_10003E038(v432, v700, v673, v676, v680, v684, v688, v692, v457, v458, v460, v461, v462, v463, v604, v701, v702, v464, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621);
      goto LABEL_129;
    default:
      v157 = &v156[*(sub_10022C350(&qword_100CB0A38) + 48)];
      v158 = *v157;
      v159 = v157[1];
      sub_100051B60(v156, v153, &qword_100CA2CD8);
      sub_100003934();
      v160 = v705;
      sub_10001B350(v161, v162, v163, v705);
      v164 = sub_100003BCC(&v679);
      sub_10001B350(v164, v165, v166, v708);
      v167 = sub_100003BCC(&v682);
      sub_10001B350(v167, v168, v169, v711);
      v170 = sub_100003BCC(&v686);
      sub_10001B350(v170, v171, v172, v706);
      v173 = sub_100003BCC(&v690);
      sub_10001B350(v173, v174, v175, v707);
      v176 = sub_100003BCC(&v694);
      sub_10001B350(v176, v177, v178, v709);
      v179 = sub_100003BCC(&v699);
      sub_10001B350(v179, v180, v181, v710);
      sub_100003934();
      v182 = v700;
      sub_10001B350(v183, v184, v185, v700);
      LODWORD(v702) = sub_1008D9338(v153, v158, v159, v698 & 1, v701);
      v701 = v186;
      v699 = v187;

      sub_1000180EC(v153, &qword_100CA2CD8);
      sub_1000694F8();
      v188 = v704;
      v190 = v627;
      sub_10037B030(v704 + v189, v627, v191);
      sub_100021424();
      sub_100051B60(v192, v193, v194);
      v195 = sub_100016298();
      sub_1000038B4(v195, v196, v182);
      if (v197)
      {
        sub_1000180EC(v158, &qword_100CA65E8);
      }

      else
      {
        sub_10037B08C(v190);
        sub_100005518();
        sub_100072F7C(v158, v190, v465);
      }

      v466 = v612;
      sub_100005518();
      sub_100072F7C(v190, v670, v467);
      v468 = *(v188 + 16);
      v469 = *(v188 + 24);
      sub_100051B60(v149, v147, &qword_100CA6640);
      v470 = sub_1000162A4();
      sub_1000038B4(v470, v471, v160);
      if (v197)
      {
        sub_10003C3DC();
        sub_10037B030(v188 + v472, v674, v473);
        v474 = sub_1000162A4();
        v476 = sub_100024D10(v474, v475, v160);

        v494 = v710;
        v495 = v634;
        v496 = v617;
        if (v476 != 1)
        {
          sub_1000180EC(v147, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072F7C(v147, v674, v493);

        v494 = v710;
        v495 = v634;
        v496 = v617;
      }

      v497 = v609;
      sub_100051B60(v649, v609, &qword_100CA6638);
      v498 = sub_1000162A4();
      v499 = v708;
      sub_1000038B4(v498, v500, v708);
      if (v197)
      {
        v501 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_1000136AC();
        sub_10037B030(v188 + v501, v678, v502);
        v503 = sub_1000162A4();
        sub_1000038B4(v503, v504, v499);
        v514 = v641;
        v505 = v497;
        v515 = v628;
        if (!v197)
        {
          sub_1000180EC(v505, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072F7C(v497, v678, v513);
        v514 = v641;
        v515 = v628;
      }

      sub_100051B60(v651, v466, &qword_100CA6630);
      sub_100003A40(v466);
      if (v197)
      {
        sub_10001686C();
        sub_10037B030(v188 + v516, v682, v517);
        sub_100003A40(v466);
        if (!v197)
        {
          sub_1000180EC(v466, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072F7C(v466, v682, v523);
      }

      sub_100051B60(v655, v496, &qword_100CA6628);
      sub_1000038B4(v496, 1, v706);
      if (v197)
      {
        sub_1000748BC();
        sub_10037B030(v188 + v524, v686, v525);
        sub_100003A40(v496);
        if (!v197)
        {
          sub_1000180EC(v496, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072F7C(v496, v686, v534);
      }

      sub_100051B60(v658, v515, &qword_100CA6620);
      v535 = sub_1000162A4();
      sub_1000038B4(v535, v536, v707);
      if (v197)
      {
        sub_100022A14();
        sub_10037B030(v188 + v537, v690, v538);
        sub_100003A40(v515);
        v547 = v645;
        if (!v197)
        {
          sub_1000180EC(v515, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072F7C(v515, v690, v546);
        v547 = v645;
      }

      sub_100051B60(v662, v495, &qword_100CA6618);
      v548 = sub_10000C834();
      v549 = v709;
      sub_1000038B4(v548, v550, v709);
      if (v197)
      {
        sub_100003FC8();
        sub_10037B030(v188 + v551, v694, v552);
        v553 = sub_10000C834();
        sub_1000038B4(v553, v554, v549);
        if (!v197)
        {
          sub_1000180EC(v495, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072F7C(v495, v694, v563);
      }

      sub_100051B60(v666, v514, &qword_100CA6610);
      v564 = sub_100016298();
      sub_1000038B4(v564, v565, v494);
      if (v197)
      {
        sub_100008358();
        sub_10037B030(v188 + v566, v547, v567);
        v568 = sub_100016298();
        sub_1000038B4(v568, v569, v494);
        v579 = v547;
        if (!v197)
        {
          sub_1000180EC(v514, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072F7C(v514, v547, v578);
        v579 = v547;
      }

      sub_100005518();
      v580 = v703;
      sub_100072F7C(v670, v703, v581);
      v582 = *(v188 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v583 = *(v188 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v584 = *(v188 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v585 = *(v188 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v586 = *(v188 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v604) = v702 & 1;
      sub_10003E038(v468, v469, v674, v678, v682, v686, v690, v694, v579, v580, v582, v583, v584, v585, v604, v701, v699, v586, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621);
LABEL_129:
      v587 = v392;
LABEL_131:

      return v587;
  }
}

uint64_t sub_10037B030(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10037B08C(uint64_t a1)
{
  v2 = type metadata accessor for ModalViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037B0E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MidpointInterpolator.InterpolationMode();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CAC3E8);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100003990(v13);
  v114 = sub_10022C350(&qword_100CB0D08);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  v17 = type metadata accessor for WeatherChanges();
  v18 = sub_100003E5C(v17, &v133);
  v116 = v19;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = sub_10022C350(&qword_100CACDF8);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  sub_100003990(v25);
  v118 = sub_10022C350(&qword_100CB0D10);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003918(v27);
  v124 = type metadata accessor for DetailChartSelection();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000038E4();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CB0BA8);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v123 = v32;
  v122 = sub_10022C350(&qword_100CB0D18);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v125 = v34;
  v35 = sub_10022C350(&qword_100CAE8F0);
  sub_1000037C4();
  v128 = v36;
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v126 = v38;
  v39 = sub_10022C350(&qword_100CB0BA0);
  sub_100003810(v39);
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v127 = v41;
  v42 = sub_10022C350(&qword_100CB0D20);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = &v108 - v44;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  v111 = v22;
  v113 = v16;
  v109 = v10;
  v110 = v6;
  v112 = v4;
  v46 = type metadata accessor for ConditionDetailInput.Input(0);
  v129 = a2;
  type metadata accessor for HourWeather();
  sub_1000F420C(&qword_100CB0C20, &type metadata accessor for HourWeather);
  v47 = a1;
  sub_1000F420C(&qword_100CB0C28, &type metadata accessor for HourWeather);
  sub_1000F420C(&qword_100CB0C30, &type metadata accessor for HourWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  v48 = *(v42 + 48);
  sub_100095588();
  v49 = v129;
  sub_100095588();
  sub_1000038B4(v45, 1, v35);
  v50 = v46;
  if (v56)
  {
    v51 = sub_100071490();
    sub_1000038B4(v51, v52, v35);
    if (v56)
    {
      sub_1000180EC(v45, &qword_100CB0BA0);
      goto LABEL_14;
    }

LABEL_11:
    v57 = &qword_100CB0D20;
    v58 = v45;
LABEL_12:
    sub_1000180EC(v58, v57);
    goto LABEL_63;
  }

  v53 = v127;
  sub_100095588();
  v54 = sub_100071490();
  sub_1000038B4(v54, v55, v35);
  if (v56)
  {
    (*(v128 + 8))(v53, v35);
    goto LABEL_11;
  }

  v59 = v128;
  v60 = v126;
  (*(v128 + 32))(v126, &v45[v48], v35);
  sub_100381020();
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v59 + 8);
  v62(v60, v35);
  v62(v53, v35);
  v49 = v129;
  sub_1000180EC(v45, &qword_100CB0BA0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_14:
  sub_1009EDEE4();
  if ((v63 & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_100021430(v50[8]);
  if ((static DetailCondition.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  v64 = sub_100021430(v50[9]);
  if ((sub_10074742C(v64, v65) & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_100021430(v50[10]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  if (*(v47 + v50[11]) != *(v49 + v50[11]))
  {
    goto LABEL_63;
  }

  sub_100021430(v50[12]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_100021430(v50[13]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_100021430(v50[14]);
  if ((static Locale.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_100021430(v50[15]);
  if ((static DayWeather.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_100021430(v50[16]);
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  type metadata accessor for DayWeather();
  sub_1000F420C(&qword_100CB0C50, &type metadata accessor for DayWeather);
  sub_1000F420C(&qword_100CB0C58, &type metadata accessor for DayWeather);
  sub_1000F420C(&qword_100CB0C60, &type metadata accessor for DayWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  v66 = v47;
  if ((sub_100883064((v47 + v50[18]), (v49 + v50[18])) & 1) == 0 || (sub_1009D82EC(v47 + v50[19], v129 + v50[19]) & 1) == 0)
  {
    goto LABEL_63;
  }

  v67 = *(v122 + 48);
  v68 = v125;
  sub_10006A750();
  sub_1000303AC();
  sub_1000038B4(v68, 1, v124);
  if (v56)
  {
    sub_1000038B4(v125 + v67, 1, v124);
    if (v56)
    {
      sub_1000180EC(v125, &qword_100CB0BA8);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v69 = v125;
  sub_100095588();
  sub_1000038B4(v69 + v67, 1, v124);
  if (v70)
  {
    sub_100380FC8(v123, type metadata accessor for DetailChartSelection);
LABEL_35:
    v57 = &qword_100CB0D18;
    v58 = v125;
    goto LABEL_12;
  }

  v71 = v125;
  v72 = v117;
  sub_1001145E8();
  v73 = v123;
  v74 = sub_100658114(v123, v72);
  sub_100380FC8(v72, type metadata accessor for DetailChartSelection);
  sub_100380FC8(v73, type metadata accessor for DetailChartSelection);
  sub_1000180EC(v71, &qword_100CB0BA8);
  if ((v74 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_37:
  v75 = v50[21];
  v76 = *(v47 + v75);
  v77 = *(v47 + v75 + 8);
  v78 = (v129 + v75);
  v79 = v76 == *v78 && v77 == v78[1];
  if (!v79 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_63;
  }

  v80 = *(v118 + 48);
  v81 = v121;
  sub_10006A750();
  sub_1000303AC();
  sub_1000038B4(v81, 1, v120);
  if (v56)
  {
    sub_1000038B4(v121 + v80, 1, v120);
    if (!v56)
    {
      goto LABEL_49;
    }

    sub_1000180EC(v121, &qword_100CACDF8);
  }

  else
  {
    v82 = v121;
    sub_100095588();
    v83 = sub_100024D10(v82 + v80, 1, v120);
    if (v83 == 1)
    {
      sub_10000E73C();
      v84(v119, v120);
LABEL_49:
      v57 = &qword_100CB0D10;
      v85 = &v134;
LABEL_59:
      v58 = *(v85 - 32);
      goto LABEL_12;
    }

    v86 = v121;
    v87 = v121 + v80;
    v88 = v120;
    (*(v116 + 32))(v111, v87, v120);
    sub_1000F420C(&qword_100CB0D30, &type metadata accessor for WeatherChanges);
    sub_1000D3E60();
    v89 = sub_1000C872C();
    (unk_100A3E410)(v89);
    (unk_100A3E410)(v48, v88);
    sub_1000180EC(v86, &qword_100CACDF8);
    if ((v82 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v90 = *(v114 + 48);
  v91 = v113;
  sub_10006A750();
  sub_1000303AC();
  sub_1000038B4(v91, 1, v112);
  if (v56)
  {
    sub_1000038B4(&v113[v90], 1, v112);
    if (!v56)
    {
      goto LABEL_58;
    }

    sub_1000180EC(v113, &qword_100CAC3E8);
  }

  else
  {
    v92 = v113;
    sub_100095588();
    v93 = sub_100024D10(v92 + v90, 1, v112);
    if (v93 == 1)
    {
      sub_10000E73C();
      v94(v115, v112);
LABEL_58:
      v57 = &qword_100CB0D08;
      v85 = &v132;
      goto LABEL_59;
    }

    v95 = v113;
    v96 = &v113[v90];
    v97 = v112;
    (*(v110 + 32))(v109, v96, v112);
    sub_1000F420C(&qword_100CB0D28, &type metadata accessor for MidpointInterpolator.InterpolationMode);
    sub_1000D3E60();
    v98 = sub_1000C872C();
    (unk_100A40F90)(v98);
    (unk_100A40F90)(v48, v97);
    sub_1000180EC(v95, &qword_100CAC3E8);
    if ((v92 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v99 = v50[24];
  v100 = *(v66 + v99 + 16);
  v130[0] = *(v66 + v99);
  v130[1] = v100;
  v101 = *(v66 + v99 + 32);
  v102 = (v129 + v99);
  v103 = *v102;
  v104 = v102[1];
  v130[2] = v101;
  v131[0] = v103;
  v105 = v102[2];
  v131[1] = v104;
  v131[2] = v105;
  if ((sub_1000B8A2C(v130, v131) & 1) != 0 && *(v66 + v50[25]) == *(v129 + v50[25]))
  {
    v106 = *(v66 + v50[26]) ^ *(v129 + v50[26]) ^ 1;
    return v106 & 1;
  }

LABEL_63:
  v106 = 0;
  return v106 & 1;
}

uint64_t sub_10037BEA0()
{
  v0 = type metadata accessor for ConditionDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = type metadata accessor for ConditionDetailInput(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CB0D00);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_10011C3AC();
  sub_10011C3AC();
  sub_1000038B4(v13, 1, v0);
  if (!v19)
  {
    sub_10011C3AC();
    v17 = sub_100071490();
    sub_1000038B4(v17, v18, v0);
    if (!v19)
    {
      sub_1001145E8();
      v16 = sub_10037B0E8(v9, v4);
      sub_100380FC8(v4, type metadata accessor for ConditionDetailInput.Input);
      sub_100380FC8(v9, type metadata accessor for ConditionDetailInput.Input);
      sub_100025104();
      return v16 & 1;
    }

    sub_100380FC8(v9, type metadata accessor for ConditionDetailInput.Input);
LABEL_9:
    sub_1000180EC(v13, &qword_100CB0D00);
    v16 = 0;
    return v16 & 1;
  }

  v14 = sub_100071490();
  sub_1000038B4(v14, v15, v0);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_100025104();
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10037C0D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v341) = a2;
  v361 = a3;
  v362 = a1;
  v4 = type metadata accessor for ConditionDetailChartInputs(0);
  v5 = sub_100003E5C(v4, &v352);
  v356 = v6;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v364 = v7;
  v8 = sub_10022C350(&qword_100CB0BA0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100003990(v10);
  v11 = sub_10022C350(&qword_100CA7030);
  sub_100003E5C(v11, &v351);
  v319 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  sub_100003918(v14);
  v15 = type metadata accessor for TimeState();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  sub_100003990(v17);
  v18 = sub_10022C350(&qword_100CB0D40);
  v312 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  sub_100003848();
  v357 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_100003878();
  v363 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CB0D48);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_100003990(v26);
  v27 = sub_10022C350(&qword_100CAC3E8);
  sub_100003810(v27);
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CAB9B0);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  sub_100003990(v32);
  v33 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v33);
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003918(v35);
  v36 = type metadata accessor for DayWeather();
  v37 = sub_100003E5C(v36, &v368);
  v337 = v38;
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  sub_100003918(v41);
  v42 = type metadata accessor for CurrentWeather();
  v43 = sub_100003E5C(v42, &v361);
  v329 = v44;
  __chkstk_darwin(v43);
  sub_1000038E4();
  sub_100003918(v45);
  v46 = type metadata accessor for Date();
  v47 = sub_100003E5C(v46, &v370);
  v351 = v48;
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  v352 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_10000E70C();
  sub_100003918(v55);
  v56 = type metadata accessor for TimeZone();
  v57 = sub_100003E5C(v56, &v369);
  v327 = v58;
  __chkstk_darwin(v57);
  sub_1000038E4();
  sub_100003918(v59);
  v60 = type metadata accessor for Calendar();
  v61 = sub_100003E5C(v60, v366);
  v335 = v62;
  __chkstk_darwin(v61);
  sub_1000038E4();
  v353 = v63;
  v64 = type metadata accessor for NewsDataModel();
  v65 = sub_100003810(v64);
  __chkstk_darwin(v65);
  sub_1000038E4();
  v67 = sub_100003918(v66);
  v324 = type metadata accessor for WeatherData(v67);
  sub_1000037E8();
  __chkstk_darwin(v68);
  sub_1000038E4();
  v355 = v69;
  v70 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v70);
  sub_100003828();
  __chkstk_darwin(v71);
  v73 = (&v308 - v72);
  v74 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v75);
  sub_100003848();
  sub_100003908();
  v77 = __chkstk_darwin(v76);
  v79 = &v308 - v78;
  __chkstk_darwin(v77);
  sub_10000E70C();
  v354 = v80;
  v81 = sub_10022C350(&qword_100CB0D50);
  sub_100003810(v81);
  sub_100003828();
  __chkstk_darwin(v82);
  v84 = &v308 - v83;
  v85 = type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v86);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  v94 = &v308 - v93;
  v95 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v360 = v96;
  __chkstk_darwin(v97);
  sub_1000037D8();
  v100 = v99 - v98;
  v340 = v3;
  v101 = *(v3 + 96);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v358 = v101;
  v359 = v100;
  v102 = v85;
  v103 = v362;
  os_signpost(_:dso:log:name:signpostID:)();
  sub_10037E2D0(v84);
  sub_1000038B4(v84, 1, v85);
  if (v119)
  {
    sub_1000180EC(v84, &qword_100CB0D50);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v104 = type metadata accessor for Logger();
    sub_10000703C(v104, qword_100D90B68);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    v107 = sub_10000C79C(v106);
    v109 = v359;
    v108 = v360;
    v73 = v95;
    if (v107)
    {
      *swift_slowAlloc() = 0;
      sub_1000133FC(&_mh_execute_header, v110, v111, "Failed to create condition detail input due to missing conditionDetailViewState");
      sub_100007E54();
    }

    v112 = sub_1000143E0();
    sub_10001B350(v112, v113, 1, v114);
  }

  else
  {
    v308 = v95;
    sub_1001145E8();
    v115 = *(v103 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v116 = *(v102 + 20);

    v117 = Location.id.getter();
    sub_1000864C0(v117, v118, v115);

    sub_1000038B4(v73, 1, v74);
    v120 = v94;
    v338 = v94;
    if (!v119)
    {
      v139 = v354;
      sub_1001145E8();
      sub_100031568();
      sub_10011C3AC();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        sub_10001E958();
        sub_100380FC8(v79, v178);
        if (qword_100CA2700 != -1)
        {
          sub_100003AB0();
        }

        v179 = type metadata accessor for Logger();
        sub_10000703C(v179, qword_100D90B68);
        sub_100049740();
        v73 = v322;
        sub_10011C3AC();
        v180 = v323;
        sub_10011C3AC();
        sub_100031568();
        v181 = v325;
        sub_10011C3AC();
        v182 = Logger.logObject.getter();
        v183 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          v364 = swift_slowAlloc();
          v367 = v364;
          *v184 = 136315907;
          type metadata accessor for DetailCondition();
          sub_1000748D4();
          sub_1000F420C(v185, v186);
          LODWORD(v363) = v183;
          v187 = dispatch thunk of CustomStringConvertible.description.getter();
          v189 = v188;
          sub_100380FC8(v73, type metadata accessor for ConditionDetailViewState);
          v73 = v181;
          v190 = sub_100078694(v187, v189, &v367);

          *(v184 + 4) = v190;
          *(v184 + 12) = 2160;
          *(v184 + 14) = 1752392040;
          *(v184 + 22) = 2081;
          Location.id.getter();
          v139 = v354;
          sub_100380FC8(v180, type metadata accessor for ConditionDetailViewState);
          v191 = sub_100003940();
          v194 = sub_100078694(v191, v192, v193);

          *(v184 + 24) = v194;
          *(v184 + 32) = 2080;
          sub_10070D0D8();
          sub_10022C350(&qword_100CB0D60);
          String.init<A>(describing:)();
          sub_10001E958();
          sub_100380FC8(v73, v195);
          v196 = sub_100003940();
          v199 = sub_100078694(v196, v197, v198);

          *(v184 + 34) = v199;
          _os_log_impl(&_mh_execute_header, v182, v363, "Failed to create condition detail input due to missing weather data; condition=%s, location=%{private,mask.hash}s, currentLocationWeather=%s", v184, 0x2Au);
          swift_arrayDestroy();
          sub_100003884();
          sub_100003884();
        }

        else
        {

          sub_10001E958();
          sub_100380FC8(v181, v206);
          sub_10002FE64();
          sub_100380FC8(v180, v207);
          sub_100380FC8(v73, v183);
        }

        sub_100086748();
        v109 = v359;
        v108 = v360;
        if (v341)
        {
          if (qword_100CA2740 != -1)
          {
            sub_100019580();
          }

          sub_10000703C(v179, qword_100D90C18);
          v208 = Logger.logObject.getter();
          v209 = static os_log_type_t.fault.getter();
          if (sub_10000C79C(v209))
          {
            *swift_slowAlloc() = 0;
            sub_1000133FC(&_mh_execute_header, v210, v211, "Error: Could not create an initial input in ConditionDetailInputFactory due to missing data! This is a bug and should be investigated.");
            sub_100007E54();
          }

          simulateCrash(_:_:)();
          sub_10001E958();
          sub_100380FC8(v139, v212);
          v213 = sub_1000143E0();
        }

        else
        {
          sub_10001E958();
          sub_100380FC8(v139, v216);
          v215 = type metadata accessor for ConditionDetailInput(0);
          v213 = v361;
          v214 = 1;
        }

        sub_10001B350(v213, v214, 1, v215);
        goto LABEL_51;
      }

      v325 = v102;
      v141 = *(sub_10022C350(&qword_100CA75D8) + 48);
      sub_1001145E8();
      sub_1001145E8();
      sub_100380FC8(&v79[v141], type metadata accessor for PreprocessedWeatherData);
      v142 = v326;
      Location.timeZone.getter();
      static Calendar.currentCalendar(with:)();
      v323 = *(v327 + 8);
      v323(v142, v345);
      v143 = v340;
      v327 = *(v324 + 24);
      v144 = v328;
      WeatherDataModel.currentWeather.getter();
      v145 = v339;
      CurrentWeather.date.getter();
      sub_10000E73C();
      v146(v144, v330);
      IsSameDayCache.startOfDay(_:calendar:)();
      v147 = *(v351 + 8);
      v148 = v145;
      v149 = v350;
      v344 = v351 + 8;
      v343 = v147;
      v147(v148, v350);
      Date.wc_addDays(_:calendar:)();
      v150 = sub_1000161C0((v143 + 16), *(v143 + 40));
      v330 = v116;
      Location.timeZone.getter();
      v151 = *v150;
      v152 = sub_1000FD610(v355, v142, 1, 11, 0);
      v323(v142, v345);
      if (*(v152 + 2) < 7uLL)
      {
        if (qword_100CA2700 != -1)
        {
          sub_100003AB0();
        }

        v153 = type metadata accessor for Logger();
        sub_10000703C(v153, qword_100D90B68);
        sub_100049740();
        v73 = v313;
        sub_10011C3AC();
        v154 = v314;
        sub_10011C3AC();

        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        v157 = os_log_type_enabled(v155, v156);
        v158 = v354;
        if (v157)
        {
          v159 = swift_slowAlloc();
          v365 = swift_slowAlloc();
          *v159 = 134218755;
          v160 = *(v152 + 2);

          *(v159 + 4) = v160;

          *(v159 + 12) = 2080;
          type metadata accessor for DetailCondition();
          sub_1000748D4();
          sub_1000F420C(v161, v162);
          dispatch thunk of CustomStringConvertible.description.getter();
          v164 = v163;
          v165 = v73;
          v73 = type metadata accessor for ConditionDetailViewState;
          sub_100380FC8(v165, type metadata accessor for ConditionDetailViewState);
          v166 = sub_1000D41D8();
          v168 = sub_100078694(v166, v164, v167);

          *(v159 + 14) = v168;
          *(v159 + 22) = 2160;
          *(v159 + 24) = 1752392040;
          *(v159 + 32) = 2081;
          Location.id.getter();
          v170 = v169;
          sub_100380FC8(v154, type metadata accessor for ConditionDetailViewState);
          v171 = sub_1000D41D8();
          v173 = sub_100078694(v171, v170, v172);

          *(v159 + 34) = v173;
          _os_log_impl(&_mh_execute_header, v155, v156, "Failed to create condition detail input due to invalid daily data; dayCount=%ld, condition=%s, location=%{private,mask.hash}s", v159, 0x2Au);
          swift_arrayDestroy();
          sub_100003884();
          sub_100003884();
        }

        else
        {

          swift_bridgeObjectRelease_n();
          sub_10002FE64();
          sub_100380FC8(v154, v217);
          sub_100380FC8(v73, v151);
        }

        sub_100086748();
        v109 = v359;
        v108 = v360;
        v218 = v353;
        if (v341)
        {
          if (qword_100CA2740 != -1)
          {
            sub_100019580();
          }

          sub_10000703C(v153, qword_100D90C18);
          v219 = Logger.logObject.getter();
          v220 = static os_log_type_t.fault.getter();
          if (sub_10000C79C(v220))
          {
            v155 = swift_slowAlloc();
            LOWORD(v155->isa) = 0;
            sub_1000133FC(&_mh_execute_header, v221, v222, "Error: Could not create an initial input in ConditionDetailInputFactory! This is a bug and should be investigated.");
            sub_100007E54();
          }

          simulateCrash(_:_:)();
          v223 = sub_10004196C();
          (v155)(v223);
          (v155)(v349, v219);
          sub_100016884();
          sub_100380FC8(v348, v224);
          sub_10001E958();
          sub_100380FC8(v158, v225);
          v226 = sub_1000143E0();
        }

        else
        {
          v235 = sub_10004196C();
          (v155)(v235);
          (v155)(v349, v153);
          sub_100016884();
          sub_100380FC8(v348, v236);
          sub_10001E958();
          sub_100380FC8(v158, v237);
          v228 = type metadata accessor for ConditionDetailInput(0);
          v226 = v361;
          v227 = 1;
        }

        sub_10001B350(v226, v227, 1, v228);
        sub_10000E73C();
        v238(v218, v336);
        sub_1000240F0();
LABEL_51:
        sub_1000136C4();
        sub_100380FC8(v338, v239);
        goto LABEL_69;
      }

      v201 = (v337 + 16);
      v200 = *(v337 + 16);
      v202 = v332;
      v203 = v342;
      v200(v332, &v152[((*(v337 + 80) + 32) & ~*(v337 + 80)) + *(v337 + 72)], v342);
      v204 = v315;
      sub_100095588();
      sub_1000038B4(v204, 1, v149);
      v205 = v149;
      v345 = v200;
      if (v119)
      {
        sub_1000180EC(v204, &unk_100CB2CF0);
      }

      else
      {
        v341 = v201;
        v229 = v351;
        v230 = v310;
        v231 = (*(v351 + 32))(v310, v204, v205);
        __chkstk_darwin(v231);
        *(&v308 - 2) = v230;
        v232 = v311;
        sub_1008DBCAC();
        sub_1000038B4(v232, 1, v203);
        if (!v233)
        {
          v240 = v203;
          v241 = *(v337 + 32);
          v242 = v205;
          v243 = v230;
          v244 = v309;
          v241(v309, v232, v240);
          (*(v229 + 16))(v346, v243, v242);
          v241(v347, v244, v240);
          v205 = v242;
          v120 = v338;
          sub_10002C680();
          v245();
          v246 = v316;
          v247 = v353;
LABEL_52:
          v248 = sub_100437520();
          sub_1003DF9BC(v248, v246);

          v249 = type metadata accessor for DetailChartCondition();
          sub_1000038B4(v246, 1, v249);
          if (v119)
          {
            sub_1000180EC(v246, &qword_100CB0D48);
            v250 = type metadata accessor for MidpointInterpolator.InterpolationMode();
            sub_10001B350(v333, 1, 1, v250);
          }

          else
          {
            sub_10037FBAC(v333);
            (*(*(v249 - 8) + 8))(v246, v249);
          }

          v251 = v317;
          sub_10001B350(v317, 1, 1, v321);
          v367 = sub_1008EF934(v251, *(v152 + 2));
          v252 = sub_100040690();
          __chkstk_darwin(v252);
          *(&v308 - 10) = v152;
          *(&v308 - 9) = v202;
          *(&v308 - 8) = v340;
          *(&v308 - 7) = v247;
          *(&v308 - 6) = v362;
          *(&v308 - 5) = v120;
          v253 = v347;
          *(&v308 - 4) = v355;
          *(&v308 - 3) = v253;
          *(&v308 - 2) = &v367;
          static OS_dispatch_queue.concurrentPerform(iterations:execute:)();

          DayWeather.date.getter();
          LODWORD(v340) = static Date.== infix(_:_:)();
          sub_10002C680();
          v254();
          v255 = v318;
          sub_10011C3AC();
          v256 = *(v351 + 32);
          v339 = v351 + 32;
          v329 = v256;
          v256(v331, v255, v205);
          WeatherDataModel.hourlyForecast.getter();
          WeatherDataModel.minuteForecast.getter();
          v257 = v367[2];
          v341 = v367;
          if (v257)
          {
            v258 = v367 + ((*(v312 + 80) + 32) & ~*(v312 + 80));
            v259 = *(v312 + 72);
            v260 = _swiftEmptyArrayStorage;
            v261 = v321;
            v262 = v357;
            do
            {
              sub_100095588();
              sub_100051BBC();
              sub_1000038B4(v262, 1, v261);
              if (v119)
              {
                sub_1000180EC(v262, &qword_100CB0D40);
              }

              else
              {
                sub_100031CC8();
                sub_1001145E8();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_10069EE3C();
                  v260 = v265;
                }

                v264 = v260[2];
                if (v264 >= v260[3] >> 1)
                {
                  sub_10069EE3C();
                  v260 = v266;
                }

                v260[2] = v264 + 1;
                sub_100031CC8();
                sub_1001145E8();
                v262 = v357;
              }

              v258 += v259;
              --v257;
            }

            while (v257);
          }

          else
          {
            v260 = _swiftEmptyArrayStorage;
          }

          v267 = type metadata accessor for ConditionDetailInput.Input(0);
          v268 = v267[8];
          type metadata accessor for DetailCondition();
          sub_1000037E8();
          v270 = v361;
          v271 = v338;
          (*(v269 + 16))(v361 + v268, v338);
          sub_100437830(v270 + v267[9]);
          v272 = *(v351 + 16);
          v273 = v350;
          v272(v270 + v267[10], v346, v350);
          v272(v270 + v267[12], v352, v273);
          v274 = v267[13];
          type metadata accessor for Location();
          sub_1000037E8();
          (*(v275 + 16))(v270 + v274, v271 + v330);
          v276 = v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
          v363 = v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
          swift_beginAccess();
          v364 = type metadata accessor for EnvironmentState();
          v277 = v364[8];
          v278 = v267[14];
          type metadata accessor for Locale();
          sub_1000037E8();
          (*(v279 + 16))(v270 + v278, v276 + v277);
          v345(v270 + v267[15], v347, v342);
          v280 = v355;
          WeatherDataModel.currentWeather.getter();
          WeatherDataModel.dailyForecast.getter();
          sub_10011C3AC();
          v281 = v348;
          sub_10011C3AC();
          v282 = v325;
          sub_100095588();
          v283 = v280[1];
          v362 = *v280;
          v357 = v283;

          WeatherDataModel.weatherChanges.getter();
          v284 = v343;
          v343(v346, v273);
          v284(v352, v273);
          v284(v349, v273);
          sub_100016884();
          sub_100380FC8(v281, v285);
          sub_10001E958();
          sub_100380FC8(v354, v286);
          v287 = v363 + v364[18];
          v288 = *v287;
          v352 = *(v287 + 8);
          v73 = *(v287 + 24);
          v354 = *(v287 + 16);
          v290 = *(v287 + 32);
          v289 = *(v287 + 40);
          LODWORD(v356) = *(v271 + *(v282 + 36));
          LOBYTE(v282) = *(v363 + v364[12]);
          v329(v270, v331, v273);
          (*(v319 + 32))(v270 + v267[5], v334, v320);
          sub_100051BBC();
          *(v270 + v267[7]) = v260;
          *(v270 + v267[11]) = v340 & 1;
          v291 = (v270 + v267[21]);
          v292 = v357;
          *v291 = v362;
          v291[1] = v292;
          sub_100051BBC();
          v293 = (v270 + v267[24]);
          v294 = v352;
          *v293 = v288;
          v293[1] = v294;
          v295 = v354;
          v293[2] = v354;
          v293[3] = v73;
          v293[4] = v290;
          v293[5] = v289;
          *(v270 + v267[25]) = v356;
          *(v270 + v267[26]) = v282;
          sub_10001B350(v270, 0, 1, v267);
          v296 = type metadata accessor for ConditionDetailInput(0);
          sub_10001B350(v270, 0, 1, v296);
          v297 = v289;
          v298 = v288;
          v299 = v294;
          v300 = v295;
          v301 = v73;
          v302 = v290;

          v303 = *(v337 + 8);
          v304 = v342;
          v303(v347, v342);
          v303(v332, v304);
          sub_10000E73C();
          v305(v353, v336);
          sub_1000240F0();
          sub_1000136C4();
          sub_100380FC8(v271, v306);
          sub_100086748();
          v109 = v359;
          v108 = v360;
          goto LABEL_69;
        }

        sub_1000180EC(v232, &qword_100CAB9B0);
        sub_10002C680();
        v234();
        v200 = v345;
      }

      v200(v347, v202, v203);
      DayWeather.date.getter();
      v246 = v316;
      v247 = v353;
      goto LABEL_52;
    }

    sub_1000180EC(v73, &qword_100CA37B0);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v121 = type metadata accessor for Logger();
    sub_10000703C(v121, qword_100D90B68);
    sub_100049740();
    v122 = v343;
    sub_10011C3AC();
    v123 = v344;
    sub_10011C3AC();
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v365 = swift_slowAlloc();
      *v126 = 136315651;
      type metadata accessor for DetailCondition();
      sub_1000748D4();
      sub_1000F420C(v127, v128);
      dispatch thunk of CustomStringConvertible.description.getter();
      v130 = v129;
      v73 = type metadata accessor for ConditionDetailViewState;
      sub_100380FC8(v122, type metadata accessor for ConditionDetailViewState);
      v131 = sub_1000D41D8();
      v133 = sub_100078694(v131, v130, v132);

      *(v126 + 4) = v133;
      *(v126 + 12) = 2160;
      *(v126 + 14) = 1752392040;
      *(v126 + 22) = 2081;
      Location.id.getter();
      v135 = v134;
      sub_100380FC8(v123, type metadata accessor for ConditionDetailViewState);
      v136 = sub_1000D41D8();
      v138 = sub_100078694(v136, v135, v137);

      *(v126 + 24) = v138;
      _os_log_impl(&_mh_execute_header, v124, v125, "Failed to create condition detail input due to missing weather data for location; condition=%s, location=%{private,mask.hash}s", v126, 0x20u);
      swift_arrayDestroy();
      sub_100003884();
      sub_100007E54();
    }

    else
    {

      sub_100380FC8(v123, type metadata accessor for ConditionDetailViewState);
      sub_100380FC8(v122, type metadata accessor for ConditionDetailViewState);
    }

    sub_100086748();
    v108 = v360;
    v174 = sub_1000143E0();
    sub_10001B350(v174, v175, 1, v176);
    sub_1000136C4();
    sub_100380FC8(v338, v177);
    v109 = v359;
  }

LABEL_69:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v108 + 8))(v109, v73);
}

uint64_t sub_10037E2D0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v48 = type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_100003848();
  v44 = v2;
  sub_10000386C();
  __chkstk_darwin(v3);
  sub_10000E70C();
  v46 = v4;
  v47 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v43 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  sub_10000E70C();
  v45 = v8;
  v50 = type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003848();
  v42[1] = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v42[2] = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  v49 = v15;
  sub_10000386C();
  v17 = __chkstk_darwin(v16);
  v19 = v42 - v18;
  __chkstk_darwin(v17);
  v21 = v42 - v20;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  v23 = __chkstk_darwin(v22);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  sub_10004E4A0();
  sub_10011C3AC();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1001145E8();
    sub_1001145E8();
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_19;
    }

    v26 = type metadata accessor for ModalViewState.LocationDetailModal;
    v27 = v25;
  }

  else
  {
    sub_1000114C4();
    v27 = v21;
  }

  sub_100380FC8(v27, v26);
  sub_10004E4A0();
  sub_10011C3AC();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1000114C4();
    v29 = v19;
    goto LABEL_11;
  }

  v30 = v45;
  sub_1001145E8();
  v31 = v46;
  sub_100037A54();
  sub_10011C3AC();
  sub_1000183CC();
  sub_100380FC8(v30, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_19:
    sub_1001145E8();
    sub_1001145E8();
    v37 = 0;
    return sub_10001B350(v51, v37, 1, v50);
  }

  v28 = type metadata accessor for LocationPreviewModalViewState;
  v29 = v31;
LABEL_11:
  sub_100380FC8(v29, v28);
  sub_10004E4A0();
  v33 = v49;
  sub_10011C3AC();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v36 = type metadata accessor for ModalViewState;
LABEL_16:
    sub_100380FC8(v33, v36);
    goto LABEL_17;
  }

  v34 = type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000038B4(v33, 1, v34);
  if (!v35)
  {
    v38 = v43;
    sub_1001145E8();
    sub_100037A54();
    v33 = v44;
    sub_10011C3AC();
    sub_1000183CC();
    sub_100380FC8(v38, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_19;
    }

    v36 = type metadata accessor for LocationPreviewModalViewState;
    goto LABEL_16;
  }

  sub_1000180EC(v33, &qword_100CA65E0);
LABEL_17:
  v37 = 1;
  return sub_10001B350(v51, v37, 1, v50);
}

uint64_t sub_10037E7E4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_10037E8D0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  DayWeather.date.getter();
  DayWeather.date.getter();
  v7 = static Date.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return 1;
  }

  DayWeather.date.getter();
  DayWeather.date.getter();
  v10 = static Date.< infix(_:_:)();
  v8(v4, v0);
  v8(v6, v0);
  if (v10)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10037EA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, NSObject *a10, uint64_t a11)
{
  v125 = a8;
  v150 = a7;
  v164 = a6;
  v149 = a5;
  v162 = a4;
  v165 = a1;
  v156 = a9;
  v158 = type metadata accessor for ConditionDetailViewState();
  v13 = __chkstk_darwin(v158);
  v137 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v138 = &v120 - v15;
  v16 = type metadata accessor for DayWeather();
  v154 = *(v16 - 8);
  v155 = v16;
  __chkstk_darwin(v16);
  v134 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeZone();
  __chkstk_darwin(v18 - 8);
  v136 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CA7030);
  __chkstk_darwin(v20 - 8);
  v135 = &v120 - v21;
  v128 = type metadata accessor for DetailChartCondition();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v131 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind();
  v130 = *(v133 - 8);
  v23 = __chkstk_darwin(v133);
  v151 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v124 = &v120 - v26;
  __chkstk_darwin(v25);
  v126 = &v120 - v27;
  v132 = type metadata accessor for ConditionDetailChartHeaderInput();
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v152 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CAC3E8);
  __chkstk_darwin(v29 - 8);
  v141 = &v120 - v30;
  v146 = type metadata accessor for ChartViewModelInterpolationMode();
  v145 = *(v146 - 8);
  v31 = __chkstk_darwin(v146);
  v121 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v143 = &v120 - v33;
  v140 = type metadata accessor for Location();
  v160 = *(v140 - 8);
  __chkstk_darwin(v140);
  v35 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10022C350(&qword_100CB0D70);
  __chkstk_darwin(v36 - 8);
  v144 = &v120 - v37;
  v142 = type metadata accessor for ConditionDetailChartDataInput(0);
  __chkstk_darwin(v142);
  v148 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v120 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v147 = &v120 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v120 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v120 - v49;
  __chkstk_darwin(v48);
  v52 = &v120 - v51;
  DayWeather.date.getter();
  v163 = v52;
  v53 = v141;
  IsSameDayCache.startOfDay(_:calendar:)();
  v123 = v40;
  v54 = *(v40 + 8);
  v157 = v50;
  v55 = v50;
  v56 = v140;
  v159 = v39;
  v161 = v54;
  v162 = v40 + 8;
  v54(v55, v39);
  sub_100035B30(a2 + 56, &v166);
  v57 = v167;
  v58 = v168;
  v139 = sub_1000161C0(&v166, v167);
  isa = v160[2].isa;
  v122 = *(v158 + 20);
  v60 = v35;
  (isa)(v35, v164 + v122, v56);
  v153 = a3;
  DayWeather.date.getter();
  sub_10037FBAC(v53);
  v61 = type metadata accessor for MidpointInterpolator.InterpolationMode();
  if (sub_100024D10(v53, 1, v61) == 1)
  {
    sub_1000180EC(v53, &qword_100CAC3E8);
    v62 = v145;
    v63 = v143;
    v64 = v146;
    (*(v145 + 104))(v143, enum case for ChartViewModelInterpolationMode.none(_:), v146);
  }

  else
  {
    v65 = v121;
    sub_10037FDD8(v121);
    (*(*(v61 - 8) + 8))(v53, v61);
    v62 = v145;
    v63 = v143;
    v64 = v146;
    (*(v145 + 32))(v143, v65, v146);
  }

  v66 = *(v58 + 8);
  v119 = v58;
  v67 = v144;
  v66(v149, v60, v47, v163, v165, v150, v63, v57, v119);
  (*(v62 + 8))(v63, v64);
  v68 = v159;
  v69 = v161;
  v161(v47, v159);
  (v160[1].isa)(v60, v56);
  if (sub_100024D10(v67, 1, v142) == 1)
  {
    sub_1000180EC(v67, &qword_100CB0D70);
    sub_100006F14(&v166);
    v71 = v154;
    v70 = v155;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000703C(v72, qword_100D90B68);
    v73 = v134;
    (*(v71 + 16))(v134, v153, v70);
    v74 = v138;
    sub_10011C3AC();
    v75 = v137;
    sub_10011C3AC();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v166 = v165;
      *v78 = 136315907;
      v79 = v157;
      LODWORD(v164) = v77;
      DayWeather.date.getter();
      sub_1000F420C(&qword_100CA5720, &type metadata accessor for Date);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v83 = v79;
      v160 = v76;
      v84 = v161;
      v161(v83, v68);
      (*(v71 + 8))(v73, v70);
      v85 = sub_100078694(v80, v82, &v166);

      *(v78 + 4) = v85;
      *(v78 + 12) = 2080;
      type metadata accessor for DetailCondition();
      sub_1000F420C(&qword_100CB0D58, &type metadata accessor for DetailCondition);
      v86 = v138;
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      sub_100380FC8(v86, type metadata accessor for ConditionDetailViewState);
      v90 = sub_100078694(v87, v89, &v166);

      *(v78 + 14) = v90;
      *(v78 + 22) = 2160;
      *(v78 + 24) = 1752392040;
      *(v78 + 32) = 2081;
      v91 = Location.id.getter();
      v93 = v92;
      sub_100380FC8(v75, type metadata accessor for ConditionDetailViewState);
      v94 = sub_100078694(v91, v93, &v166);

      *(v78 + 34) = v94;
      v95 = v160;
      _os_log_impl(&_mh_execute_header, v160, v164, "Failed to create chart input for date=%s, condition=%s, location=%{private,mask.hash}s", v78, 0x2Au);
      swift_arrayDestroy();

      v84(v163, v68);
    }

    else
    {

      sub_100380FC8(v75, type metadata accessor for ConditionDetailViewState);
      sub_100380FC8(v74, type metadata accessor for ConditionDetailViewState);
      (*(v71 + 8))(v73, v70);
      v161(v163, v68);
    }

    v106 = type metadata accessor for ConditionDetailChartInput(0);
    v107 = v156;
    v108 = 1;
  }

  else
  {
    sub_1001145E8();
    sub_100006F14(&v166);
    DayWeather.date.getter();
    v96 = v157;
    DayWeather.date.getter();
    v97 = static Date.== infix(_:_:)();
    v69(v96, v68);
    v99 = v154;
    v98 = v155;
    if (v97)
    {
      v100 = *(sub_10022C350(&qword_100CB0D78) + 48);
      type metadata accessor for WeatherData(0);
      v101 = v124;
      WeatherDataModel.currentWeather.getter();
      v102 = &v101[v100];
      v103 = v101;
      (*(v99 + 16))(v102, a11, v98);
      v104 = v130;
      v105 = v133;
      (*(v130 + 104))(v103, enum case for ConditionDetailChartHeaderInput.HeaderKind.today(_:), v133);
    }

    else
    {
      v160 = a10;
      DayWeather.date.getter();
      v109 = v120;
      DayWeather.date.getter();
      v110 = static Date.< infix(_:_:)();
      v69(v109, v68);
      v69(v96, v68);
      v103 = v124;
      (*(v99 + 16))(v124, a11, v98);
      v104 = v130;
      if (v110)
      {
        v111 = &enum case for ConditionDetailChartHeaderInput.HeaderKind.pastDay(_:);
      }

      else
      {
        v111 = &enum case for ConditionDetailChartHeaderInput.HeaderKind.futureDay(_:);
      }

      v105 = v133;
      (*(v130 + 104))(v103, *v111, v133);
    }

    v112 = v126;
    (*(v104 + 32))(v126, v103, v105);
    (*(v104 + 16))(v151, v112, v105);
    (*(v127 + 16))(v131, v165, v128);
    type metadata accessor for WeatherData(0);
    WeatherDataModel.hourlyForecast.getter();
    v113 = v147;
    v114 = v159;
    (*(v123 + 16))(v157, v147, v159);
    Location.timeZone.getter();
    ConditionDetailChartHeaderInput.init(kind:condition:hourlyForecast:selectedDate:timeZone:)();
    (*(v104 + 8))(v112, v105);
    v115 = v161;
    v161(v113, v114);
    v115(v163, v114);
    v116 = type metadata accessor for ConditionDetailChartInput(0);
    v117 = v156;
    sub_1001145E8();
    (*(v129 + 32))(v117, v152, v132);
    v107 = v117;
    v108 = 0;
    v106 = v116;
  }

  return sub_10001B350(v107, v108, 1, v106);
}

uint64_t sub_10037FBAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DetailChartCondition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for DetailChartCondition.humidity(_:) || v8 == enum case for DetailChartCondition.pressure(_:))
  {
    goto LABEL_6;
  }

  if (v8 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
LABEL_9:
    v15 = type metadata accessor for MidpointInterpolator.InterpolationMode();
    v13 = a1;
    v14 = 1;
    return sub_10001B350(v13, v14, 1, v15);
  }

  if (v8 == enum case for DetailChartCondition.temperature(_:) || v8 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    goto LABEL_6;
  }

  if (v8 == enum case for DetailChartCondition.uvIndex(_:))
  {
LABEL_16:
    v10 = &enum case for MidpointInterpolator.InterpolationMode.monotoneCubic(_:);
    goto LABEL_7;
  }

  if (v8 == enum case for DetailChartCondition.visibility(_:))
  {
LABEL_6:
    v10 = &enum case for MidpointInterpolator.InterpolationMode.cubic(_:);
LABEL_7:
    v11 = *v10;
    v12 = type metadata accessor for MidpointInterpolator.InterpolationMode();
    (*(*(v12 - 8) + 104))(a1, v11, v12);
    v13 = a1;
    v14 = 0;
    v15 = v12;
    return sub_10001B350(v13, v14, 1, v15);
  }

  if (v8 == enum case for DetailChartCondition.wind(_:))
  {
    goto LABEL_16;
  }

  if (v8 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10037FDD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MidpointInterpolator.InterpolationMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for MidpointInterpolator.InterpolationMode.cubic(_:))
  {
    v9 = enum case for ChartViewModelInterpolationMode.cubic(_:);
    v10 = type metadata accessor for ChartViewModelInterpolationMode();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  else
  {
    v12 = v8;
    v13 = enum case for MidpointInterpolator.InterpolationMode.monotoneCubic(_:);
    v14 = type metadata accessor for ChartViewModelInterpolationMode();
    v15 = *(*(v14 - 8) + 104);
    if (v12 == v13)
    {
      return v15(a1, enum case for ChartViewModelInterpolationMode.monotoneCubic(_:), v14);
    }

    else
    {
      v15(a1, enum case for ChartViewModelInterpolationMode.cubic(_:), v14);
      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_10037FFAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, NSObject *a10, uint64_t a11, uint64_t a12)
{
  v20 = sub_10022C350(&qword_100CB0D68);
  result = __chkstk_darwin(v20 - 8);
  v23 = &v27[-v22];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    v29 = a7;
    v30 = a12;
    v28 = a8;
    v24 = *(type metadata accessor for DetailChartCondition() - 8);
    v25 = sub_10037EA64(a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * a1, a3, a4, a5, a6, v29, v28, a9, v23, a10, a11);
    v31 = *(a3 + 104);
    __chkstk_darwin(v25);
    *&v27[-32] = v30;
    *&v27[-24] = a1;
    v26 = v23;
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    return sub_1000180EC(v23, &qword_100CB0D68);
  }

  __break(1u);
  return result;
}

void sub_1003801BC(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1008FBAD0();
  v6 = v10;
  *a1 = v10;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = *(sub_10022C350(&qword_100CB0D68) - 8);
  v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2;

  sub_1003811A4(a3, v9);
}

uint64_t sub_1003802A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8, uint64_t a9, uint64_t a10)
{
  v65 = a7;
  v66 = a8;
  v63 = a5;
  v64 = a6;
  v70 = a4;
  v13 = type metadata accessor for ConditionDetailChartInput(0);
  v71 = *(v13 - 8);
  __chkstk_darwin(v13);
  v73 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v69 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CB0D68);
  v55 = *(v18 - 8);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  v24 = (&v54 - v23);
  v67 = type metadata accessor for ConditionDetailChartInputs(0);
  __chkstk_darwin(v67);
  v68 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DayWeather();
  result = __chkstk_darwin(v26);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v60 = v16;
  v61 = v15;
  v56 = a9;
  v57 = a10;
  v58 = v29;
  v59 = v28;
  v32 = *(v29 + 16);
  v33 = a2 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v34 = *(v29 + 72);
  v62 = a1;
  v32(v31, v33 + v34 * a1, v28);
  v35 = sub_10037E8D0();
  v36 = v65;
  v37 = sub_100437520();
  v72 = v13;
  sub_10001B350(v24, 1, 1, v13);
  v74 = sub_1008EF948(v24, *(v37 + 16));
  v38 = sub_100040690();
  __chkstk_darwin(v38);
  v39 = v70;
  *(&v54 - 12) = v37;
  *(&v54 - 11) = v39;
  v41 = v63;
  v40 = v64;
  *(&v54 - 10) = v31;
  *(&v54 - 9) = v41;
  *(&v54 - 8) = v40;
  *(&v54 - 7) = v36;
  *(&v54 - 48) = v35;
  v42 = v66;
  *(&v54 - 5) = a3;
  *(&v54 - 4) = v42;
  *(&v54 - 3) = v56;
  *(&v54 - 2) = &v74;
  static OS_dispatch_queue.concurrentPerform(iterations:execute:)();

  v66 = v31;
  DayWeather.date.getter();
  v43 = v74[2];
  v65 = v74;
  if (v43)
  {
    v44 = v74 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v45 = *(v55 + 72);
    v46 = _swiftEmptyArrayStorage;
    v47 = v72;
    do
    {
      sub_100095588();
      sub_100051BBC();
      if (sub_100024D10(v21, 1, v47) == 1)
      {
        sub_1000180EC(v21, &qword_100CB0D68);
      }

      else
      {
        sub_1001145E8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069EF14();
          v46 = v49;
        }

        v48 = v46[2];
        if (v48 >= v46[3] >> 1)
        {
          sub_10069EF14();
          v46 = v50;
        }

        v46[2] = v48 + 1;
        sub_1001145E8();
        v47 = v72;
      }

      v44 += v45;
      --v43;
    }

    while (v43);
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  v51 = v68;
  (*(v60 + 32))(v68, v69, v61);

  *(v51 + *(v67 + 20)) = v46;
  v74 = *(v70 + 104);
  __chkstk_darwin(v52);
  v53 = v62;
  *(&v54 - 4) = v57;
  *(&v54 - 3) = v53;
  *(&v54 - 2) = v51;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  (*(v58 + 8))(v66, v59);
  return sub_100380FC8(v51, type metadata accessor for ConditionDetailChartInputs);
}

void sub_10038092C(uint64_t *a1, unint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB0D40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10011C3AC();
  v8 = type metadata accessor for ConditionDetailChartInputs(0);
  sub_10001B350(v7, 0, 1, v8);
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1008FBAE8();
  v9 = v11;
  *a1 = v11;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v9 + 16) > a2)
  {
    sub_100381128(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100380A7C()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);

  return v0;
}

uint64_t sub_100380ABC()
{
  sub_100380A7C();

  return swift_deallocClassInstance();
}

uint64_t sub_100380B7C()
{
  v0 = type metadata accessor for ConditionDetailInput.Input(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100380BFC()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000F432C();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_100380F00();
    if (v4 > 0x3F)
    {
      return v2;
    }

    sub_100380F64(319, &qword_100CB0C40, type metadata accessor for ConditionDetailChartInputs, &type metadata accessor for Array);
    if (v5 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for DetailCondition();
    if (v6 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for DetailChartCondition();
    if (v7 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = type metadata accessor for Location();
      if (v8 <= 0x3F)
      {
        v0 = type metadata accessor for Locale();
        if (v9 <= 0x3F)
        {
          v0 = type metadata accessor for DayWeather();
          if (v10 <= 0x3F)
          {
            v0 = type metadata accessor for CurrentWeather();
            if (v11 <= 0x3F)
            {
              sub_1000F4460();
              v0 = v12;
              if (v13 <= 0x3F)
              {
                v0 = type metadata accessor for WeatherData(319);
                if (v14 <= 0x3F)
                {
                  v0 = type metadata accessor for NewsDataModel();
                  if (v15 <= 0x3F)
                  {
                    sub_100380F64(319, &qword_100CB0C68, type metadata accessor for DetailChartSelection, &type metadata accessor for Optional);
                    v0 = v16;
                    if (v17 <= 0x3F)
                    {
                      sub_100380F64(319, &qword_100CB0C70, &type metadata accessor for WeatherChanges, &type metadata accessor for Optional);
                      v0 = v18;
                      if (v19 <= 0x3F)
                      {
                        sub_100380F64(319, &unk_100CB0C78, &type metadata accessor for MidpointInterpolator.InterpolationMode, &type metadata accessor for Optional);
                        v0 = v20;
                        if (v21 <= 0x3F)
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

  return v0;
}

void sub_100380F00()
{
  if (!qword_100CB0C38)
  {
    sub_10022E824(&qword_100CAE8F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0C38);
    }
  }
}

void sub_100380F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100380FC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100381020()
{
  result = qword_100CB0D38;
  if (!qword_100CB0D38)
  {
    sub_10022E824(&qword_100CAE8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0D38);
  }

  return result;
}

uint64_t sub_100381128(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB0D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003811A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB0D68);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100381214()
{

  result = sub_100381258();
  *(v0 + 16) = result;
  return result;
}

uint64_t sub_100381258()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for LegacyPerformanceTest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LegacyPerformanceTest(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100381434(char a1)
{
  result = 0x776569567473694CLL;
  switch(a1)
  {
    case 1:
      sub_10001E970();
      result = v3 - 15;
      break;
    case 2:
      sub_10001E970();
      result = v6 - 2;
      break;
    case 3:
    case 4:
    case 6:
      sub_10001E970();
      result = v14 | 6;
      break;
    case 5:
      sub_10001E970();
      result = v11 | 0xC;
      break;
    case 7:
      sub_10001E970();
      result = v8 - 13;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
    case 10:
    case 12:
      sub_10001E970();
      result = v16 | 8;
      break;
    case 11:
      sub_10001E970();
      result = v5 | 0xE;
      break;
    case 13:
      sub_10001E970();
      result = v13 - 16;
      break;
    case 14:
    case 16:
    case 18:
      sub_10001E970();
      result = v15 - 9;
      break;
    case 15:
      sub_10001E970();
      result = v7 - 17;
      break;
    case 17:
    case 31:
      sub_10001E970();
      result = v9 - 3;
      break;
    case 19:
      result = 0xD00000000000002BLL;
      break;
    case 20:
      sub_10001E970();
      result = v10 + 11;
      break;
    case 21:
      sub_10001E970();
      result = v12 - 5;
      break;
    case 22:
      result = 0xD000000000000021;
      break;
    case 23:
      result = 0xD000000000000021;
      break;
    case 24:
      result = 0xD000000000000021;
      break;
    case 25:
      result = 0xD000000000000021;
      break;
    case 26:
      sub_10001E970();
      result = v21 + 1;
      break;
    case 27:
      sub_10001E970();
      result = v4 - 4;
      break;
    case 28:
      sub_10001E970();
      result = v19 | 2;
      break;
    case 29:
      sub_10001E970();
      result = v20 | 4;
      break;
    case 30:
      sub_10001E970();
      result = v17 - 6;
      break;
    case 32:
      sub_10001E970();
      result = v18 - 14;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100381830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100381258();
  *a1 = result;
  return result;
}

uint64_t sub_100381860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100381434(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100381890()
{
  result = qword_100CB0E20;
  if (!qword_100CB0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0E20);
  }

  return result;
}

BOOL sub_1003818E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentStatusBanner();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v8 - 8);
  v10 = v44 - v9;
  v11 = sub_10022C350(&qword_100CA50C0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = v44 - v13;
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for InteractiveMapInput();
  sub_1000B9728();
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1000B9424();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v15[7];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v15[8];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = *(a1 + v23 + 24);
  v27 = (a2 + v23);
  v28 = *v27;
  v29 = v27[1];
  v44[0] = v27[3];
  v44[1] = v26;
  v30 = v24 == v28 && v25 == v29;
  if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000BCFBC();
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1000BD330();
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22 || (sub_1000BBA50((a1 + v15[11]), (a2 + v15[11])) & 1) == 0 || *(a1 + v15[12]) != *(a2 + v15[12]))
  {
    return 0;
  }

  v33 = v15[13];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }

    v38 = *v34 == *v36 && v35 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v22)
  {
    return 0;
  }

  v39 = v15[15];
  v40 = *(v11 + 48);
  sub_100035AD0(a1 + v39, v14, &qword_100CA5010);
  sub_100035AD0(a2 + v39, &v14[v40], &qword_100CA5010);
  sub_10000394C(v14);
  if (v22)
  {
    sub_10000394C(&v14[v40]);
    if (v22)
    {
      sub_1000180EC(v14, &qword_100CA5010);
      return 1;
    }
  }

  else
  {
    sub_100035AD0(v14, v10, &qword_100CA5010);
    sub_10000394C(&v14[v40]);
    if (!v41)
    {
      sub_10003DEC8(&v14[v40], v7);
      v43 = sub_100133BA0(v10, v7);
      sub_100383360(v7, type metadata accessor for ContentStatusBanner);
      sub_100383360(v10, type metadata accessor for ContentStatusBanner);
      sub_1000180EC(v14, &qword_100CA5010);
      return v43;
    }

    sub_100383360(v10, type metadata accessor for ContentStatusBanner);
  }

  sub_1000180EC(v14, &qword_100CA50C0);
  return 0;
}

uint64_t sub_100381CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v128 = a1;
  type metadata accessor for Logger();
  sub_1000037C4();
  v122 = v3;
  v123 = v2;
  __chkstk_darwin(v2);
  sub_100003C38();
  v124 = v4 - v5;
  __chkstk_darwin(v6);
  v118 = v112 - v7;
  v119 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v117 = v10 - v9;
  v115 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v114 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v113 = v14 - v13;
  v112[1] = sub_10022C350(&qword_100CB0F88);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003C38();
  v112[0] = v16 - v17;
  __chkstk_darwin(v18);
  v116 = v112 - v19;
  __chkstk_darwin(v20);
  v22 = v112 - v21;
  __chkstk_darwin(v23);
  v121 = v112 - v24;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = (v27 - v26);
  v29 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003C38();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = v112 - v35;
  v37 = objc_opt_self();
  v38 = [v37 currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if (v39 == 1)
  {
    v40 = 0.85;
  }

  else
  {
    v40 = 0.5;
  }

  v41 = 0x8000000100AC37F0;
  v42 = 0xD000000000000014;
  if (!v39)
  {
    v42 = 0;
    v41 = 0;
  }

  v125 = v42;
  v126 = v41;
  sub_10022C350(&qword_100CA4AE0);
  v43 = swift_allocBox();
  v45 = v44;
  v46 = type metadata accessor for InteractiveMapInput();
  v47 = v45;
  v48 = v128;
  v129 = v46;
  sub_10001B350(v47, 1, 1, v46);
  sub_10000FD6C();
  v120 = v49;
  sub_100094FEC(v49, v36);
  sub_100094FEC(&v36[v29[5]], v28);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v66 = *v28;
    if (*&v36[v29[9] + 8] == 1)
    {
      v67 = [v37 currentDevice];
      [v67 userInterfaceIdiom];

      v68 = v36[v29[7]];
      sub_10001E984();
      sub_100383360(v36, v69);
      if ((v68 & 1) == 0)
      {

        goto LABEL_8;
      }
    }

    else
    {
      sub_10001E984();
      sub_100383360(v36, v71);
    }

    v72 = v121;
    sub_100962FAC(1, v121);
    sub_100035AD0(v72, v22, &qword_100CB0F88);
    v73 = type metadata accessor for PresentedLocation();
    if (sub_100024D10(v22, 1, v73) == 1)
    {
      sub_1000180EC(v22, &qword_100CB0F88);
      v74 = v118;
      static Logger.map.getter();
      v75 = v116;
      sub_100035AD0(v72, v116, &qword_100CB0F88);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v131[0] = v79;
        *v78 = 141558275;
        *(v78 + 4) = 1752392040;
        *(v78 + 12) = 2081;
        v119 = v43;
        sub_100035AD0(v75, v112[0], &qword_100CB0F88);
        v80 = v74;
        v81 = String.init<A>(describing:)();
        v83 = v82;
        v72 = v121;
        sub_1000180EC(v75, &qword_100CB0F88);
        v84 = sub_100078694(v81, v83, v131);

        *(v78 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v76, v77, "Failed to get selected location id from presentedLocation=%{private,mask.hash}s", v78, 0x16u);
        sub_100006F14(v79);
        v48 = v128;
        sub_100003884();
        sub_100003884();

        sub_1000195A0();
        v86 = v80;
      }

      else
      {

        sub_1000180EC(v75, &qword_100CB0F88);
        sub_1000195A0();
        v86 = v74;
      }

      v85(v86, v123);
      v70 = v127;
      sub_100382828(v48, v125, v126, v127, v40);

      sub_1000180EC(v72, &qword_100CB0F88);
    }

    else
    {
      v87 = v113;
      sub_100495C68(v113);
      sub_100383360(v22, type metadata accessor for PresentedLocation);
      v88 = Location.Identifier.id.getter();
      v123 = v89;
      v124 = v88;
      (*(v114 + 8))(v87, v115);
      v122 = sub_100382D88(v48);
      v90 = v29[10];
      v118 = v66;
      v91 = v117;
      sub_100094FEC(v120 + v90, v117);
      v92 = *(v119 + 24);
      type metadata accessor for WeatherMapOverlayKind();
      sub_1000037E8();
      v70 = v127;
      (*(v93 + 16))(v127, v91 + v92);
      v94 = v48 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v95 = *(v94 + *(type metadata accessor for LocationsState() + 28));
      v96 = v48 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
      v97 = *(v48 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v119 = v43;
      v120 = v97;
      v98 = v48;
      v99 = *(v48 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v100 = *(v96 + 16);
      v101 = *(v96 + 24);
      v102 = v98 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      LODWORD(v116) = *(v102 + 3) == 4;
      LODWORD(v115) = *(v102 + 1) - 1 < 2;
      v103 = v129;
      sub_100094FEC(v91, v70 + v129[11]);
      LOBYTE(v102) = *(v130 + 16);
      v104 = *(v98 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v105 = v103[15];

      sub_1007348DC(0, 1, v104, v70 + v105);

      sub_100383360(v91, type metadata accessor for WeatherMapPresentationState);
      sub_1000180EC(v121, &qword_100CB0F88);
      *(v70 + v103[5]) = v122;
      *(v70 + v103[6]) = v95;
      v106 = (v70 + v103[7]);
      v107 = v123;
      *v106 = v124;
      v106[1] = v107;
      v108 = (v70 + v103[8]);
      *v108 = v120;
      v108[1] = v99;
      v108[2] = v100;
      v108[3] = v101;
      *(v70 + v103[9]) = v116;
      *(v70 + v103[10]) = v115;
      *(v70 + v103[12]) = v40;
      v109 = (v70 + v103[13]);
      v110 = v126;
      *v109 = v125;
      v109[1] = v110;
      *(v70 + v103[14]) = (v102 & 1) == 0;
    }

    goto LABEL_28;
  }

  sub_10001E984();
  sub_100383360(v36, v50);
  sub_100383360(v28, type metadata accessor for ViewState.SecondaryViewState);
LABEL_8:
  v51 = v124;
  static Logger.map.getter();
  swift_retain_n();
  v52 = v130;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v119 = v43;
    v56 = v48;
    v57 = v55;
    v58 = swift_slowAlloc();
    v131[0] = v58;
    *v57 = 136446466;
    if (*(v52 + 16))
    {
      v59 = 0xD000000000000012;
    }

    else
    {
      v59 = 0x776569566E69616DLL;
    }

    if (*(v52 + 16))
    {
      v60 = 0x8000000100AC3810;
    }

    else
    {
      v60 = 0xE800000000000000;
    }

    v61 = sub_100078694(v59, v60, v131);

    *(v57 + 4) = v61;
    *(v57 + 12) = 1026;
    sub_10000FD6C();
    sub_100094FEC(v120, v33);
    v62 = *(v33 + v29[9] + 8);
    sub_10001E984();
    sub_100383360(v33, v63);

    *(v57 + 14) = v62 == 1;

    _os_log_impl(&_mh_execute_header, v53, v54, "Unable to obtain locationViewerState for InteractiveMapInput.\npresentationContext=%{public}s\nisCompact=%{BOOL,public}d,", v57, 0x12u);
    sub_100006F14(v58);
    sub_100003884();
    v48 = v56;
    sub_100003884();

    sub_1000195A0();
    v65 = v124;
  }

  else
  {

    sub_1000195A0();
    v65 = v51;
  }

  v64(v65, v123);
  v70 = v127;
  sub_100382828(v48, v125, v126, v127, v40);

LABEL_28:
  sub_10001B350(v70, 0, 1, v129);
}

uint64_t sub_100382828@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_10022C350(&qword_100CA4AE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = swift_projectBox();
  sub_100035AD0(v16, v15, &qword_100CA4AE0);
  v17 = type metadata accessor for InteractiveMapInput();
  if (sub_100024D10(v15, 1, v17) != 1)
  {
    return sub_10003DEC8(v15, a4);
  }

  sub_1000180EC(v15, &qword_100CA4AE0);
  sub_1003829F4(a1, a2, a3, a4, a5);
  sub_100094FEC(a4, v12);
  sub_10001B350(v12, 0, 1, v17);
  swift_beginAccess();
  return sub_1003833B8(v12, v16);
}

uint64_t sub_1003829F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v46 = a2;
  v47 = a3;
  v42 = a1;
  v36 = type metadata accessor for UUID();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
  v38 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
  v11 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
  v12 = *(v11 - 8);
  v37 = *(v12 + 104);
  v39 = v12 + 104;
  v37(a4, v10, v11);
  v13 = enum case for WeatherMapOverlayKind.precipitation(_:);
  HIDWORD(v35) = enum case for WeatherMapOverlayKind.precipitation(_:);
  v14 = type metadata accessor for WeatherMapOverlayKind();
  v15 = *(*(v14 - 8) + 104);
  v15(a4, v13, v14);
  type metadata accessor for LocationWeatherDataState(0);
  v44 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for LocationAvailableDataSetState(0);
  v43 = Dictionary.init(dictionaryLiteral:)();
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v40 = v17;
  v41 = v16;
  (*(v7 + 8))(v9, v36);
  v18 = v42 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  LODWORD(v42) = *(v18 + 3) == 4;
  LOBYTE(v13) = *(v18 + 1) - 1 < 2;
  v19 = type metadata accessor for InteractiveMapInput();
  v20 = (a4 + v19[11]);
  v21 = type metadata accessor for WeatherMapPresentationState(0);
  v22 = v21[6];
  v37(v20 + v22, v38, v11);
  v15(v20 + v22, HIDWORD(v35), v14);
  v23 = v21[8];
  v24 = sub_10022C350(&qword_100CA6660);
  sub_10001B350(v20 + v23, 3, 3, v24);
  *v20 = 16643;
  v25 = (v20 + v21[7]);
  *v25 = 0;
  v25[1] = 0;
  *(v20 + v21[9]) = 1;
  LOBYTE(v23) = *(v45 + 16);
  v26 = v19[15];
  v27 = type metadata accessor for ContentStatusBanner();
  sub_10001B350(a4 + v26, 1, 1, v27);
  *(a4 + v19[5]) = _swiftEmptyArrayStorage;
  *(a4 + v19[6]) = _swiftEmptyArrayStorage;
  v28 = (a4 + v19[7]);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (a4 + v19[8]);
  v30 = v40;
  *v29 = v41;
  v29[1] = v30;
  v31 = v43;
  v29[2] = v44;
  v29[3] = v31;
  *(a4 + v19[9]) = v42;
  *(a4 + v19[10]) = v13;
  *(a4 + v19[12]) = a5;
  v32 = (a4 + v19[13]);
  v33 = v47;
  *v32 = v46;
  v32[1] = v33;
  *(a4 + v19[14]) = (v23 & 1) == 0;
}

void *sub_100382D88(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LocationModel();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v12 = *(v11 + *(type metadata accessor for LocationsState() + 24));
  v13 = *(v12 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(v8 + 16);
  v14 = v8 + 16;
  v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v29 = *(v14 + 56);
  v30 = v15;
  v28 = (v6 + 32);
  v25 = v12;

  v17 = _swiftEmptyArrayStorage;
  v26 = v6;
  v27 = v5;
  do
  {
    v18 = v31;
    v30(v10, v16, v31);
    LocationModel.coalesceLocation.getter();
    (*(v14 - 8))(v10, v18);
    if (sub_100024D10(v4, 1, v5) == 1)
    {
      sub_1000180EC(v4, &qword_100CA65D8);
    }

    else
    {
      v19 = *v28;
      (*v28)(v32, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003C154();
        v17 = v22;
      }

      v20 = v17[2];
      if (v20 >= v17[3] >> 1)
      {
        sub_10003C154();
        v17 = v23;
      }

      v17[2] = v20 + 1;
      v21 = v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20;
      v5 = v27;
      v19(v21, v32, v27);
    }

    v16 += v29;
    --v13;
  }

  while (v13);

  return v17;
}

uint64_t type metadata accessor for InteractiveMapInput()
{
  result = qword_100CB0F20;
  if (!qword_100CB0F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038315C()
{
  type metadata accessor for WeatherMapOverlayKind();
  if (v0 <= 0x3F)
  {
    sub_1003832FC(319, &qword_100CAEE08, &type metadata accessor for Location, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1003832FC(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherMapPresentationState(319);
        if (v3 <= 0x3F)
        {
          sub_100007760();
          if (v4 <= 0x3F)
          {
            sub_1003832FC(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
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

void sub_1003832FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100383360(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003833B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA4AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100383428@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100AC3880;
  v3._object = 0x8000000100AC0350;
  v10._countAndFlagsBits = 0xD000000000000030;
  v3._countAndFlagsBits = 0xD000000000000014;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

  *a1 = v5;
  strcpy((a1 + 16), "location.fill");
  *(a1 + 30) = -4864;
  *(a1 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v7 = v6[8];
  v8 = type metadata accessor for LocationComponentAction(0);
  sub_10001B350(a1 + v7, 1, 1, v8);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a1 + v6[6]) = 258;
  *(a1 + v6[7]) = result;
  return result;
}

uint64_t sub_1003835BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = sub_1009E8CE8();
  v7 = v6;
  v8 = sub_1009E8D90();
  v10 = v9;
  v11 = sub_1009E8E34();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *(type metadata accessor for TipView(0) + 32);
  *(a3 + v16) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  *(a3 + 32) = 0xD00000000000001ELL;
  *(a3 + 40) = 0x8000000100AC04B0;
  *(a3 + 48) = 2;
  *(a3 + 56) = v18;
  *(a3 + 64) = v7;
  *(a3 + 72) = v8;
  *(a3 + 80) = v10;
  *(a3 + 88) = v11;
  *(a3 + 96) = v13;
  *a3 = 1;
  *(a3 + 8) = 0x4044000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 104) = sub_100383738;
  *(a3 + 112) = v14;
  *(a3 + 120) = sub_10038375C;
  *(a3 + 128) = v15;
  return swift_unknownObjectRetain_n();
}

unint64_t sub_100383780()
{
  result = qword_100CB1028;
  if (!qword_100CB1028)
  {
    type metadata accessor for TipView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB1028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SwipeDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003838B8()
{
  result = qword_100CB1030;
  if (!qword_100CB1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB1030);
  }

  return result;
}

uint64_t type metadata accessor for TemperatureAveragesHeroChartInput()
{
  result = qword_100CB1090;
  if (!qword_100CB1090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100383980()
{
  sub_100383B3C(319, &qword_100CB10A0, &type metadata accessor for HourWeather, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Locale();
      if (v2 <= 0x3F)
      {
        sub_100383B3C(319, &qword_100CB10A8, &type metadata accessor for HourTemperatureStatistics, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100383B3C(319, &qword_100CAF980, type metadata accessor for DetailHeroChartLollipopPosition, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v5 <= 0x3F)
            {
              sub_100383B3C(319, &unk_100CB10B0, sub_10000F868, &type metadata accessor for Trend);
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

void sub_100383B3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100383BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_10022C350(&qword_100CAB960);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = (&v28 - v10);
  v12 = sub_10022C350(&qword_100CAF9C8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  sub_1001D3704();
  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = type metadata accessor for TemperatureAveragesHeroChartInput();
  sub_100003C48(v17[5]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100003C48(v17[6]);
  if ((static Locale.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1009EE784();
  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

  v19 = v17[8];
  v20 = *(v12 + 48);
  sub_1002ED164(a1 + v19, v15);
  sub_1002ED164(a2 + v19, &v15[v20]);
  sub_100005404(v15);
  if (v22)
  {
    sub_100005404(&v15[v20]);
    if (v22)
    {
      sub_1000180EC(v15, &qword_100CAB960);
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  sub_1002ED164(v15, v11);
  sub_100005404(&v15[v20]);
  if (v22)
  {
    sub_100385550(v11);
LABEL_16:
    v23 = &qword_100CAF9C8;
LABEL_23:
    sub_1000180EC(v15, v23);
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  sub_10035F228(&v15[v20], v8);
  if (*v11 != *v8 || (static Date.== infix(_:_:)() & 1) == 0 || *(v11 + *(v4 + 24)) != *(v8 + *(v4 + 24)))
  {
    sub_100385550(v8);
    sub_100385550(v11);
    v23 = &qword_100CAB960;
    goto LABEL_23;
  }

  v24 = *(v4 + 28);
  v25 = *(v11 + v24);
  v26 = *(v8 + v24);
  sub_100385550(v8);
  sub_100385550(v11);
  sub_1000180EC(v15, &qword_100CAB960);
  if (v25 != v26)
  {
    goto LABEL_24;
  }

LABEL_10:
  sub_100003C48(v17[9]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100003C48(v17[10]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_10000F868();
  v21 = static Trend.== infix(_:_:)();
  return v21 & 1;
}

uint64_t sub_100383E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v126 = a6;
  v130 = a5;
  v135 = a3;
  v153 = a2;
  v151 = a1;
  v147 = a7;
  v140 = type metadata accessor for Location();
  sub_1000037C4();
  v139 = v8;
  __chkstk_darwin(v9);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003990(&v123 - v11);
  v128 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v127 = v12;
  __chkstk_darwin(v13);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003990(&v123 - v15);
  v134 = sub_10022C350(&qword_100CB10F8);
  sub_1000037C4();
  v133 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003990(&v123 - v18);
  sub_10022C350(&qword_100CAC490);
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100003990(&v123 - v20);
  v150 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v152 = v21;
  __chkstk_darwin(v22);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v23);
  v25 = &v123 - v24;
  v26 = type metadata accessor for TimeState();
  __chkstk_darwin(v26 - 8);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = type metadata accessor for Date();
  sub_1000037C4();
  v154 = v31;
  __chkstk_darwin(v32);
  sub_100003C38();
  v35 = v33 - v34;
  __chkstk_darwin(v36);
  v38 = &v123 - v37;
  v39 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_1000037D8();
  v45 = v44 - v43;
  v145 = type metadata accessor for Calendar();
  sub_1000037C4();
  v144 = v46;
  __chkstk_darwin(v47);
  sub_1000037D8();
  v50 = v49 - v48;
  v148 = a4;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v41 + 8))(v45, v39);
  sub_10004363C(v151 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v29);
  v51 = v35;
  v52 = *(v154 + 32);
  v146 = v30;
  v53 = v150;
  v52(v38, v29, v30);
  Date.wc_addDays(_:calendar:)();
  v54 = *(type metadata accessor for WeatherData(0) + 24);
  WeatherDataModel.hourlyForecast.getter();
  v159 = v50;
  v160 = v38;
  v143 = v38;
  sub_1008EF6E4(sub_1003855F8, v158, v55, v56, v57, v58, v59, v60, v123, v124);
  v137 = v61;
  LODWORD(v149) = v62;
  v64 = v152 + 8;
  v63 = *(v152 + 8);
  v63(v25, v53);
  v136 = v54;
  WeatherDataModel.hourlyForecast.getter();
  v141 = v50;
  v156 = v50;
  v157 = v51;
  v142 = v51;
  sub_1008EF6E4(sub_1003855AC, v155, v65, v66, v67, v68, v69, v70, v123, v124);
  v72 = v71;
  v74 = v73;
  v75 = v25;
  v76 = v53;
  v63(v25, v53);
  if (v149 & 1) != 0 || (v74)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v137, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v137 - 1 < 0)
  {
LABEL_12:
    if (qword_100CA2720 != -1)
    {
      sub_100005680();
    }

    v98 = type metadata accessor for Logger();
    v95 = sub_10000703C(v98, qword_100D90BB8);
    v99 = v139;
    v72 = v138;
    v100 = v140;
    (*(v139 + 16))(v138, v148, v140);
    v101 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v101, v86))
    {

      (*(v99 + 8))(v72, v100);
      goto LABEL_18;
    }

    v75 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v161 = v102;
    sub_100019354(7.2225e-34);
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = v72;
    v72 = v105;
    (*(v99 + 8))(v104, v100);
    v95 = sub_100078694(v103, v72, &v161);

    *(v75 + 14) = v95;
    sub_10001768C(&_mh_execute_header, v106, v107, "Not enough hourly data to create create detail chart; location=%{private,mask.hash}s");
    sub_100006F14(v102);
LABEL_16:

LABEL_18:
    v108 = v147;
    sub_100003FE0();
    v109 = type metadata accessor for TemperatureAveragesHeroChartInput();
    sub_10001B350(v108, 1, 1, v109);
    goto LABEL_19;
  }

  v149 = v137 - 1;
  if (__OFADD__(v72, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000282DC();
  WeatherDataModel.hourlyForecast.getter();
  sub_10011A67C();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v77 = dispatch thunk of Collection.distance(from:to:)();
  v63(v25, v53);
  v78 = v149;
  if ((v72 + 1) >= v77)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v72, v137))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v72 - v137) < 13)
  {
    goto LABEL_12;
  }

  v138 = v72;
  sub_1000282DC();
  WeatherDataModel.hourlyForecast.getter();
  if ((v72 + 1) < v78)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v79 = v131;
  sub_100384D28();
  v63(v25, v53);
  v80 = sub_10030744C(v79);
  sub_1000180EC(v79, &qword_100CAC490);
  v72 = v132;
  WeatherStatisticsModel.hourlyTemperatureStatistics.getter();
  v81 = v134;
  v82 = HourlyWeatherStatistics.hours.getter();
  (*(v133 + 8))(v72, v81);
  v83 = sub_100384DB8(v82, v80);

  if (v80[2] != *(v83 + 16))
  {

    if (qword_100CA2720 == -1)
    {
LABEL_21:
      v112 = type metadata accessor for Logger();
      v95 = sub_10000703C(v112, qword_100D90BB8);
      v113 = v139;
      v114 = v129;
      v115 = v140;
      (*(v139 + 16))(v129, v148, v140);
      v101 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v101, v86))
      {

        v122 = *(v113 + 8);
        v75 = v113 + 8;
        v122(v114, v115);
        goto LABEL_18;
      }

      v116 = v113;
      v75 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v161 = v117;
      sub_100019354(7.2225e-34);
      v118 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v119;
      (*(v116 + 8))(v114, v115);
      v95 = sub_100078694(v118, v72, &v161);

      *(v75 + 14) = v95;
      sub_10001768C(&_mh_execute_header, v120, v121, "Not enough hourly data to create create detail chart; location=%{private,mask.hash}s");
      sub_100006F14(v117);
      goto LABEL_16;
    }

LABEL_28:
    sub_100005680();
    goto LABEL_21;
  }

  v84 = type metadata accessor for TemperatureAveragesHeroChartInput();
  v149 = v83;
  v75 = v84;
  v85 = v25;
  v86 = v147;
  Location.timeZone.getter();
  v87 = v151 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v88 = *(type metadata accessor for EnvironmentState() + 32);
  v89 = *(v75 + 24);
  type metadata accessor for Locale();
  sub_1000037E8();
  (*(v90 + 16))(&v86[v89], &v87[v88]);
  sub_1002ED164(v126, &v86[*(v75 + 32)]);
  v151 = v80;
  WeatherDataModel.hourlyForecast.getter();
  v152 = v64;
  v91 = v124;
  Forecast.subscript.getter();
  v63(v85, v76);
  HourWeather.date.getter();
  v148 = *(v127 + 8);
  v92 = v91;
  v93 = v128;
  v148(v92, v128);
  v94 = v123;
  WeatherDataModel.hourlyForecast.getter();
  v72 = v125;
  Forecast.subscript.getter();
  v63(v94, v76);
  v95 = v72;
  HourWeather.date.getter();
  v148(v72, v93);
  v96 = *(v75 + 44);
  sub_10022C350(&unk_100CABCA0);
  sub_1000037E8();
  (*(v97 + 16))(&v86[v96], v130);
  *v86 = v151;
  *&v86[*(v75 + 28)] = v149;
  sub_10001B350(v86, 0, 1, v75);
  sub_100003FE0();
LABEL_19:
  v110 = *(v75 + 8);
  v110(v142, v95);
  v110(v143, v95);
  return (*(v72 + 8))(v141, v86);
}

uint64_t sub_100384B90()
{
  v0 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  HourWeather.date.getter();
  (*(v2 + 104))(v6, enum case for Calendar.Component.day(_:), v0);
  v14 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v2 + 8))(v6, v0);
  (*(v9 + 8))(v13, v7);
  return v14 & 1;
}

uint64_t sub_100384D28()
{
  sub_10022C350(&qword_100CA7030);
  sub_10011A67C();
  dispatch thunk of Collection.index(after:)();
  return dispatch thunk of Collection.subscript.getter();
}

uint64_t sub_100384DB8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v3 - 8);
  v57 = &v51 - v4;
  v58 = type metadata accessor for TimeZone();
  v53 = *(v58 - 8);
  __chkstk_darwin(v58);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HourTemperatureStatistics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = &v51 - v13;
  v16 = *(a1 + 16);
  if (v16)
  {
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v65 = v18;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    v60 = (v17 + 16);
    v62 = (v17 - 8);
    v21 = &_swiftEmptyDictionarySingleton;
    v59 = (v17 + 24);
    v61 = v17;
    v63 = v20;
    v64 = &v51 - v13;
    v22 = v18;
    while (1)
    {
      v66 = v16;
      v22(v15, v19, v8, v14);
      v23 = HourTemperatureStatistics.hour.getter();
      v24 = v11;
      v25 = v8;
      (v22)(v11, v15, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v21;
      v27 = sub_1000D5F5C(v23);
      v29 = *(v21 + 2);
      v30 = (v28 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v32 = v27;
      v33 = v28;
      sub_10022C350(&qword_100CB1100);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v31))
      {
        v34 = sub_1000D5F5C(v23);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_19;
        }

        v32 = v34;
      }

      v21 = v67;
      if (v33)
      {
        v36 = v63;
        v37 = *(v67 + 7) + v32 * v63;
        v11 = v24;
        v8 = v25;
        (*v59)(v37, v24, v25);
        v15 = v64;
        (*v62)(v64, v25);
      }

      else
      {
        *&v67[8 * (v32 >> 6) + 64] |= 1 << v32;
        *(*(v21 + 6) + 8 * v32) = v23;
        v36 = v63;
        v38 = *(v21 + 7) + v32 * v63;
        v11 = v24;
        v8 = v25;
        (*v60)(v38, v24, v25);
        v15 = v64;
        (*v62)(v64, v25);
        v39 = *(v21 + 2);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_17;
        }

        *(v21 + 2) = v41;
      }

      v19 += v36;
      v16 = v66 - 1;
      if (v66 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
LABEL_14:
    v42 = v57;
    TimeZone.init(secondsFromGMT:)();
    v43 = v58;
    if (sub_100024D10(v42, 1, v58) != 1)
    {
      v44 = v53;
      v45 = v51;
      (*(v53 + 32))(v51, v42, v43);
      v46 = v52;
      static Calendar.gregorianCalendar(with:)();
      v47 = (*(v44 + 8))(v45, v43);
      __chkstk_darwin(v47);
      *(&v51 - 2) = v46;
      *(&v51 - 1) = v21;
      sub_100744920();
      v49 = v48;

      (*(v54 + 8))(v46, v55);
      return v49;
    }
  }

  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100385304@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a2;
  v21 = a1;
  v22 = a3;
  v20 = type metadata accessor for Date();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v14 = *(v7 + 104);
  v14(&v19 - v12, enum case for Calendar.Component.hour(_:), v6, v11);
  (v14)(v9, enum case for Calendar.Component.year(_:), v6);
  HourWeather.date.getter();
  Calendar.ordinality(of:in:for:)();
  LOBYTE(v14) = v15;
  (*(v3 + 8))(v5, v20);
  v16 = *(v7 + 8);
  v16(v9, v6);
  v16(v13, v6);
  if ((v14 & 1) == 0)
  {
    return sub_100879E5C();
  }

  v17 = type metadata accessor for HourTemperatureStatistics();
  return sub_10001B350(v22, 1, 1, v17);
}

uint64_t sub_100385550(uint64_t a1)
{
  v2 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100385624()
{
  sub_1009E8CE8();
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_100385664()
{
  sub_1009E8D90();
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_1003856C4()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_1000037D8();
  v4 = v3 - v2;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  (*(v1 + 32))(v6 + v5, v4, v0);
  v7 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v7;
}

uint64_t sub_10038583C()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = sub_1009E8E34();
  v12[3] = v4;
  sub_10002D5A4();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  (*(v1 + 104))(v3, enum case for Font.TextStyle.body(_:), v0);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v1 + 8))(v3, v0);
  v10 = Text.font(_:)();

  sub_10010CD64(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_1003859D0()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100385E84()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D8FC10);
  sub_10000703C(v0, qword_100D8FC10);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100385FD4()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA1F98 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D8FC10);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100386208@<X0>(uint64_t *a1@<X8>)
{
  sub_100235A48();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10038624C()
{
  result = qword_100CB1108;
  if (!qword_100CB1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB1108);
  }

  return result;
}

void sub_1003862A4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v55 - v6;
  v60 = type metadata accessor for WeatherDataAction();
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for MainAction();
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    do
    {
      sub_100050BD0(v20, v17, type metadata accessor for MainAction);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
        case 0x10u:
        case 0x11u:
          v22 = type metadata accessor for MainAction;
          v23 = v17;
LABEL_5:
          sub_100386C04(v23, v22);
          break;
        case 9u:
          sub_1003869EC(v17, v13);
          sub_100050BD0(v13, v10, type metadata accessor for WeatherDataAction);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 2u:
              v57 = *v10;
              v58 = v4;
              v30 = *(v10 + 2);
              v55 = *(v10 + 3);
              v56 = v30;

              v31 = type metadata accessor for TaskPriority();
              sub_10001B350(v7, 1, 1, v31);
              v32 = swift_allocObject();
              *(v32 + 16) = 0;
              *(v32 + 24) = 0;
              *(v32 + 32) = v59;
              *(v32 + 40) = v57;
              v33 = v55;
              *(v32 + 56) = v56;
              *(v32 + 64) = v33;
              *&v57 = v7;
              v34 = v7;
              v35 = v58;
              sub_100386B2C(v34, v58);
              v56 = v31;
              LODWORD(v35) = sub_100024D10(v35, 1, v31);

              if (v35 == 1)
              {
                sub_100386B9C(v58);
                v36 = 7168;
              }

              else
              {
                v49 = v58;
                v50 = TaskPriority.rawValue.getter();
                (*(*(v56 - 8) + 8))(v49);
                v36 = v50 | 0x1C00;
              }

              v55 = v36;
              v51 = *(v32 + 16);
              swift_unknownObjectRetain();

              if (v51)
              {
                swift_getObjectType();
                v56 = dispatch thunk of Actor.unownedExecutor.getter();
                v53 = v52;
                swift_unknownObjectRelease();
              }

              else
              {
                v56 = 0;
                v53 = 0;
              }

              v7 = v57;
              sub_100386B9C(v57);
              v54 = swift_allocObject();
              *(v54 + 16) = &unk_100A416F8;
              *(v54 + 24) = v32;
              if (v53 | v56)
              {
                v61 = 0;
                v62 = 0;
                v63 = v56;
                v64 = v53;
              }

              v4 = v58;
              swift_task_create();

              v23 = sub_10001E99C();
              goto LABEL_5;
            case 4u:
              v37 = sub_10001E99C();
              sub_100386C04(v37, v38);

              v39 = sub_10022C350(&qword_100CAC0C8);
              *&v57 = v7;
              v40 = v39[12];
              v41 = v4;
              v42 = v39[16];
              v43 = sub_10001BF64(v39[20]);
              sub_100386C04(v43, v44);
              v45 = &v10[v42];
              v4 = v41;
              sub_100386C04(v45, type metadata accessor for PreprocessedWeatherData);
              v22 = type metadata accessor for WeatherData;
              v23 = &v10[v40];
              v7 = v57;
              goto LABEL_5;
            case 5u:
              v27 = sub_10001E99C();
              sub_100386C04(v27, v28);

              v29 = sub_10022C350(&qword_100CAC0B8);
              v23 = sub_10001BF64(*(v29 + 48));
              goto LABEL_5;
            case 6u:
              v46 = sub_10001E99C();
              sub_100386C04(v46, v47);

              v26 = *(sub_10022C350(&qword_100CAC0C0) + 48);
              type metadata accessor for AvailableDataSets();
              break;
            case 8u:
              v24 = sub_10001E99C();
              sub_100386C04(v24, v25);

              v26 = *(sub_10022C350(&qword_100CAC0B0) + 48);
              type metadata accessor for WeatherStatisticsModel();
              break;
            default:
              sub_100386C04(v13, type metadata accessor for WeatherDataAction);
              v23 = v10;
              v22 = type metadata accessor for WeatherDataAction;
              goto LABEL_5;
          }

          sub_1000037E8();
          (*(v48 + 8))(&v10[v26]);
          break;
        default:
          break;
      }

      v20 += v21;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_100386888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1003868B0, 0, 0);
}

uint64_t sub_1003868B0()
{
  v0[7] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[8] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100386958, v2, v1);
}

uint64_t sub_100386958()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  sub_1007C69C8(v4, v3, v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003869EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100386A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000926F8;

  return sub_100386888(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100386B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100386B9C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA3538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100386C04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100386C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SunriseSunsetViewModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v1 + OBJC_IVAR____TtC7Weather38SunriseSunsetComponentViewModelFactory_viewModelFactory), *(v1 + OBJC_IVAR____TtC7Weather38SunriseSunsetComponentViewModelFactory_viewModelFactory + 24));
  dispatch thunk of SunriseSunsetViewModelFactoryType.makeViewModel(for:component:)();
  v7 = SunriseSunsetViewModel.headerTitle.getter();
  v9 = v8;
  v10 = SunriseSunsetViewModel.headerIcon.getter();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LocationComponentContainerViewModel();
  (*(v4 + 16))(a1 + v12[5], v6, v3);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v13 = v12[8];
  v14 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a1 + v13, 0, 1, v14);
  sub_10013D288();
  v15 = Dictionary.init(dictionaryLiteral:)();
  result = (*(v4 + 8))(v6, v3);
  *(a1 + v12[6]) = 259;
  *(a1 + v12[7]) = v15;
  return result;
}

uint64_t sub_100386E60()
{
  v1 = OBJC_IVAR____TtC7Weather38SunriseSunsetComponentViewModelFactory_sunriseSunsetEventCalculator;
  v2 = type metadata accessor for SunriseSunsetEventCalculator();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather38SunriseSunsetComponentViewModelFactory_viewModelFactory);

  return swift_deallocClassInstance();
}

uint64_t sub_100386F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100386F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100386FA4(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CA7300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  *(v4 + 32) = Double.formattedPercent(roundToNearestPercent:)(1);
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;

  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v5 = BidirectionalCollection<>.joined(separator:)();

  return v5;
}

uint64_t sub_100387080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a5 != a6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1003870C8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100387108(uint64_t result, int a2, int a3)
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

void sub_100387178(uint64_t a1)
{
  v205 = a1;
  v214 = type metadata accessor for UUID();
  sub_1000037C4();
  v212 = v2;
  __chkstk_darwin(v3);
  sub_1000038E4();
  v210 = v4;
  sub_1000038CC();
  v234 = type metadata accessor for Session.Kind();
  sub_1000037C4();
  v208 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v207 = v7;
  v8 = sub_10022C350(&qword_100CB1278);
  v9 = sub_100003AE8(v8);
  v217 = v10;
  __chkstk_darwin(v9);
  sub_10000FBD0();
  v243 = v11;
  v218 = v12;
  __chkstk_darwin(v13);
  sub_10000E70C();
  v265 = v14;
  sub_1000038CC();
  type metadata accessor for DescriptionFeedbackData();
  sub_1000037C4();
  v246 = v16;
  v247 = v15;
  __chkstk_darwin(v15);
  sub_10000FBD0();
  v242 = v17;
  v216 = v18;
  __chkstk_darwin(v19);
  sub_10000E70C();
  v264 = v20;
  sub_1000038CC();
  type metadata accessor for OtherConditionsFeedbackData();
  sub_1000037C4();
  v244 = v22;
  v245 = v21;
  __chkstk_darwin(v21);
  sub_10000FBD0();
  v240 = v23;
  v215 = v24;
  __chkstk_darwin(v25);
  sub_10000E70C();
  v263 = v26;
  v27 = sub_10022C350(&qword_100CB1280);
  v28 = sub_100003AE8(v27);
  v211 = v29;
  __chkstk_darwin(v28);
  sub_10000FBD0();
  v239 = v30;
  v213 = v31;
  __chkstk_darwin(v32);
  sub_10000E70C();
  v261 = v33;
  sub_1000038CC();
  v262 = type metadata accessor for WindFeedbackData();
  sub_1000037C4();
  v260 = v34;
  __chkstk_darwin(v35);
  sub_10000FBD0();
  v238 = v36;
  v209 = v37;
  __chkstk_darwin(v38);
  sub_10000E70C();
  v259 = v39;
  sub_1000038CC();
  v241 = type metadata accessor for TemperatureFeedbackData();
  sub_1000037C4();
  v258 = v40;
  __chkstk_darwin(v41);
  sub_10000FBD0();
  v237 = v42;
  v206 = v43;
  __chkstk_darwin(v44);
  sub_10000E70C();
  v256 = v45;
  sub_1000038CC();
  v257 = type metadata accessor for ConditionsFeedbackData();
  sub_1000037C4();
  v255 = v46;
  __chkstk_darwin(v47);
  sub_10000FBD0();
  v236 = v48;
  v204 = v49;
  __chkstk_darwin(v50);
  sub_10000E70C();
  v253 = v51;
  sub_1000038CC();
  v254 = type metadata accessor for ForecastAgeData();
  sub_1000037C4();
  v272 = v52;
  __chkstk_darwin(v53);
  sub_10000FBD0();
  v233 = v54;
  v203 = v55;
  __chkstk_darwin(v56);
  sub_10000E70C();
  v252 = v57;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v226 = v59;
  v227 = v58;
  __chkstk_darwin(v58);
  sub_1000038E4();
  v225 = v60;
  sub_1000038CC();
  v270 = type metadata accessor for Date();
  sub_1000037C4();
  v273 = v61;
  __chkstk_darwin(v62);
  sub_100003C38();
  v224 = v63 - v64;
  __chkstk_darwin(v65);
  sub_10000E70C();
  v268 = v66;
  v67 = sub_10022C350(&qword_100CB1288);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  v223 = &v198 - v69;
  v70 = sub_10022C350(&qword_100CB1290);
  v71 = sub_100003AE8(v70);
  v201 = v72;
  __chkstk_darwin(v71);
  sub_10000FBD0();
  v231 = v73;
  v202 = v74;
  __chkstk_darwin(v75);
  sub_10000E70C();
  v269 = v76;
  sub_1000038CC();
  v251 = type metadata accessor for LocationData();
  sub_1000037C4();
  v235 = v77;
  __chkstk_darwin(v78);
  sub_10000FBD0();
  v230 = v79;
  v200 = v80;
  __chkstk_darwin(v81);
  sub_10000E70C();
  v267 = v82;
  sub_1000038CC();
  type metadata accessor for UserIdentity();
  sub_1000037C4();
  v221 = v84;
  v222 = v83;
  __chkstk_darwin(v83);
  sub_1000038E4();
  v220 = v85;
  sub_1000038CC();
  v250 = type metadata accessor for PrivateUserData();
  sub_1000037C4();
  v232 = v86;
  __chkstk_darwin(v87);
  sub_10000FBD0();
  v229 = v88;
  v199 = v89;
  __chkstk_darwin(v90);
  sub_10000E70C();
  v266 = v91;
  v92 = sub_1000038CC();
  v219 = type metadata accessor for WeatherData(v92);
  sub_1000037E8();
  __chkstk_darwin(v93);
  sub_1000038E4();
  v248 = v94;
  v95 = sub_10022C350(&qword_100CA37B0);
  v96 = sub_100003810(v95);
  __chkstk_darwin(v96);
  v274 = &v198 - v97;
  v98 = sub_1000038CC();
  v275 = type metadata accessor for LocationWeatherDataState(v98);
  sub_1000037E8();
  __chkstk_darwin(v99);
  sub_100003C38();
  v249 = (v100 - v101);
  __chkstk_darwin(v102);
  sub_10000E70C();
  v271 = v103;
  sub_1000038CC();
  v278 = type metadata accessor for Location();
  sub_1000037C4();
  v277 = v104;
  __chkstk_darwin(v105);
  sub_1000038E4();
  v276 = v106;
  v107 = sub_10022C350(&unk_100CE49F0);
  v108 = sub_100003810(v107);
  __chkstk_darwin(v108);
  v110 = &v198 - v109;
  v111 = type metadata accessor for LocationsState();
  v112 = sub_100003810(v111);
  __chkstk_darwin(v112);
  v114 = &v198 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v116);
  sub_100003C38();
  v119 = v117 - v118;
  v121 = __chkstk_darwin(v120);
  v123 = &v198 - v122;
  v228 = v1;
  v124 = v1[2];
  v124(v280, v121);
  sub_1003898A0();

  sub_100095588();
  sub_100389D00(v114, type metadata accessor for LocationsState);
  if (sub_100024D10(v110, 1, v115) != 1)
  {
    sub_10003074C();
    sub_1003898A0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100389D00(v123, &type metadata accessor for CurrentLocation);
      sub_100389D00(v119, &type metadata accessor for CurrentLocation);
      goto LABEL_5;
    }

    v130 = v277;
    v131 = v276;
    v132 = v278;
    v133 = (*(v277 + 32))(v276, v119, v278);
    (v124)(v280, v133);
    v134 = *(v280[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v135 = Location.id.getter();
    v136 = v274;
    sub_1000864C0(v135, v137, v134);

    if (sub_100024D10(v136, 1, v275) == 1)
    {
      sub_1000180EC(v136, &qword_100CA37B0);
      if (qword_100CA26F8 != -1)
      {
        sub_100004000();
      }

      v138 = type metadata accessor for Logger();
      sub_10000703C(v138, qword_100D90B50);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.error.getter();
      if (sub_100005954(v140))
      {
        *swift_slowAlloc() = 0;
        sub_10001BF80(&_mh_execute_header, v141, v142, "Failed to submit report weather data, no weather for the current location");
        sub_100008370();
      }

LABEL_25:
      (*(v130 + 8))(v131, v132);
      sub_1000282F0();
      v190 = v123;
      goto LABEL_26;
    }

    v143 = v271;
    sub_10003074C();
    v144 = v249;
    sub_1003898A0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v145 = sub_10022C350(&qword_100CA75D8);
      v146 = *(v145 + 48);
      v147 = *(v145 + 64);
      v148 = v248;
      sub_10003074C();
      sub_100389D00(v144 + v147, type metadata accessor for NewsDataModel);
      sub_100389D00(v144 + v146, type metadata accessor for PreprocessedWeatherData);
      v143 = v228;
      type metadata accessor for ReportWeatherDNUEvent();
      sub_100389D5C(&qword_100CB1298, &type metadata accessor for ReportWeatherDNUEvent);
      Tracker.submit<A>(_:onlyIfTimed:completion:)();
      sub_1000161C0(v143 + 11, v143[14]);
      v149 = v220;
      dispatch thunk of IdentityServiceType.identity.getter();
      UserIdentity.reportWeatherIdentifier.getter();
      (*(v221 + 8))(v149, v222);
      LOBYTE(v280[0]) = 0;
      PrivateUserData.init(privateUserID:privateUserHashMod:)();
      sub_1000748EC();
      sub_100580A80();
      v150 = v148 + *(v219 + 24);
      v151 = type metadata accessor for WeatherDataModel();
      sub_1000037E8();
      v153 = v223;
      (*(v152 + 16))(v223, v150, v151);
      sub_10001B350(v153, 0, 1, v151);
      sub_1008B1ED0(v153, v269);
      v132 = v268;
      static WeatherClock.date.getter();
      v154 = v225;
      WeatherDataModel.currentWeather.getter();
      v130 = v224;
      CurrentWeather.date.getter();
      (*(v226 + 8))(v154, v227);
      Date.timeIntervalSince(_:)();
      v156 = v155;
      v157 = v155;
      v158 = v273 + 8;
      v131 = *(v273 + 8);
      v159 = v270;
      v131(v130, v270);
      v131(v132, v159);
      if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v156 <= -2147483650.0)
        {
          __break(1u);
        }

        else
        {
          v273 = v158;
          v275 = v131;
          v249 = v123;
          if (v156 < 2147483650.0)
          {
            ForecastAgeData.init(fetchDate:)();
            sub_1000161C0(v143 + 6, v143[9]);
            v160 = v205;
            memcpy(v280, (v205 + 16), 0xC2uLL);
            sub_1002DD184(v280, &v279);
            sub_100580AEC(v280);
            sub_1002DD1E0(v280);
            sub_1000748EC();
            sub_100580DFC(*(v160 + 232), v150, v256);
            sub_1000748EC();
            sub_1005810C0(*(v160 + 256), v150, v259);
            sub_1000748EC();
            sub_100581604(*(v160 + 296), v150, v261);
            sub_1000161C0(v143 + 6, v143[9]);

            sub_100581974(v161, v263);

            sub_1000161C0(v143 + 6, v143[9]);

            sub_100581FD0(v162);

            sub_1000748EC();
            sub_1005828F4(v265);
            v163 = *(v143[1] + 32);

            v228 = v163;
            v274 = SessionManager.tracker.getter();
            v164 = v207;
            v165 = v208;
            (*(v208 + 104))(v207, enum case for Session.Kind.userEvents(_:), v234);
            v166 = v210;
            UUID.init()();
            UUID.uuidString.getter();
            v227 = *(v212 + 8);
            v167 = v214;
            (v227)(v166, v214);
            v168 = v268;
            Date.init()();
            SessionManager.start(for:identifier:startDate:)();

            v275(v168, v270);
            (*(v165 + 8))(v164, v234);
            UUID.init()();
            UUID.uuidString.getter();
            (v227)(v166, v167);
            Tracker.enterGroup(groupName:contentType:)();

            v169 = v232;
            (*(v232 + 16))(v229, v266, v250);
            v170 = v235;
            (*(v235 + 16))(v230, v267, v251);
            sub_100095588();
            (*(v272 + 16))(v233, v252, v254);
            v171 = v255;
            (*(v255 + 16))(v236, v253, v257);
            v172 = v260;
            (*(v260 + 16))(v238, v259, v262);
            v173 = v258;
            (*(v258 + 16))(v237, v256, v241);
            sub_100095588();
            v174 = v244;
            (*(v244 + 16))(v240, v263, v245);
            (*(v246 + 16))(v242, v264, v247);
            sub_100095588();
            v175 = (*(v169 + 80) + 16) & ~*(v169 + 80);
            v176 = (v199 + *(v170 + 80) + v175) & ~*(v170 + 80);
            v177 = (v200 + *(v201 + 80) + v176) & ~*(v201 + 80);
            v178 = (v203 + *(v171 + 80) + ((v202 + *(v272 + 80) + v177) & ~*(v272 + 80))) & ~*(v171 + 80);
            v223 = ((v202 + *(v272 + 80) + v177) & ~*(v272 + 80));
            v224 = v178;
            v179 = (v204 + *(v172 + 80) + v178) & ~*(v172 + 80);
            v180 = (v206 + *(v211 + 80) + ((v209 + *(v173 + 80) + v179) & ~*(v173 + 80))) & ~*(v211 + 80);
            v225 = (v209 + *(v173 + 80) + v179) & ~*(v173 + 80);
            v226 = v180;
            v227 = ((v213 + *(v174 + 80) + v180) & ~*(v174 + 80));
            v181 = v246;
            v234 = &v227[v215 + *(v246 + 80)] & ~*(v246 + 80);
            v182 = swift_allocObject();
            (*(v169 + 32))(v182 + v175, v229, v250);
            (*(v170 + 32))(v182 + v176, v230, v251);
            sub_100051BBC();
            (*(v272 + 32))(&v223[v182], v233, v254);
            (*(v255 + 32))(v182 + v224, v236, v257);
            (*(v260 + 32))(v182 + v179, v238, v262);
            v183 = v241;
            (*(v258 + 32))(v182 + v225, v237, v241);
            sub_100051BBC();
            v184 = v244;
            v185 = v245;
            (*(v244 + 32))(&v227[v182], v240, v245);
            v186 = v247;
            (*(v181 + 32))(v182 + v234, v242, v247);
            sub_100051BBC();
            Tracker.transaction(block:)();

            v187 = v268;
            Date.init()();
            SessionManager.end(endDate:completion:)();

            v275(v187, v270);
            sub_1000180EC(v265, &qword_100CB1278);
            (*(v181 + 8))(v264, v186);
            (*(v184 + 8))(v263, v185);
            sub_1000180EC(v261, &qword_100CB1280);
            (*(v260 + 8))(v259, v262);
            (*(v258 + 8))(v256, v183);
            (*(v255 + 8))(v253, v257);
            (*(v272 + 8))(v252, v254);
            sub_1000180EC(v269, &qword_100CB1290);
            (*(v235 + 8))(v267, v251);
            (*(v232 + 8))(v266, v250);
            sub_100389D00(v248, type metadata accessor for WeatherData);
            sub_10000593C();
            sub_100389D00(v271, v188);
            (*(v277 + 8))(v276, v278);
            sub_1000282F0();
            v190 = v249;
LABEL_26:
            sub_100389D00(v190, v189);
            return;
          }
        }

        __break(1u);
        return;
      }

      __break(1u);
    }

    else
    {
      sub_10000593C();
      sub_100389D00(v144, v191);
      if (qword_100CA26F8 == -1)
      {
LABEL_22:
        v192 = type metadata accessor for Logger();
        sub_10000703C(v192, qword_100D90B50);
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.error.getter();
        if (sub_100005954(v194))
        {
          *swift_slowAlloc() = 0;
          sub_10001BF80(&_mh_execute_header, v195, v196, "Failed to submit report weather data, no data for the current location's weather");
          sub_100008370();
        }

        sub_10000593C();
        sub_100389D00(v143, v197);
        goto LABEL_25;
      }
    }

    sub_100004000();
    goto LABEL_22;
  }

  sub_1000180EC(v110, &unk_100CE49F0);
LABEL_5:
  if (qword_100CA26F8 != -1)
  {
    sub_100004000();
  }

  v125 = type metadata accessor for Logger();
  sub_10000703C(v125, qword_100D90B50);
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.error.getter();
  if (sub_100005954(v127))
  {
    *swift_slowAlloc() = 0;
    sub_10001BF80(&_mh_execute_header, v128, v129, "Failed to submit report weather data, no current location");
    sub_100008370();
  }
}

uint64_t sub_100388AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v79 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v74 = a4;
  v73 = a3;
  v92 = a2;
  v83 = a11;
  v84 = a12;
  v82 = a10;
  v80 = a9;
  v12 = sub_10022C350(&qword_100CB1278);
  __chkstk_darwin(v12 - 8);
  v85 = &v65 - v13;
  v86 = type metadata accessor for WeatherJSONData();
  v70 = *(v86 - 8);
  __chkstk_darwin(v86);
  v69 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CB1280);
  __chkstk_darwin(v15 - 8);
  v78 = &v65 - v16;
  v81 = type metadata accessor for AQIFeedbackData();
  v68 = *(v81 - 8);
  __chkstk_darwin(v81);
  v67 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CB1290);
  __chkstk_darwin(v18 - 8);
  v71 = &v65 - v19;
  v72 = type metadata accessor for LocationConditionData();
  v66 = *(v72 - 8);
  __chkstk_darwin(v72);
  v65 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10022C350(&qword_100CAE2B0);
  v21 = type metadata accessor for DataEventTrait();
  v89 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v95 = xmmword_100A2C3F0;
  *(v25 + 16) = xmmword_100A2C3F0;
  v26 = enum case for DataEventTrait.onlyOnce(_:);
  v27 = *(v22 + 104);
  v27(v25 + v24, enum case for DataEventTrait.onlyOnce(_:), v21);
  type metadata accessor for PrivateUserData();
  sub_100389D5C(&qword_100CB12A0, &type metadata accessor for PrivateUserData);
  AccessTracker.push<A>(data:traits:file:line:)();

  v93 = v23;
  v28 = v71;
  v29 = v89;
  v30 = swift_allocObject();
  *(v30 + 16) = v95;
  v87 = v24;
  v88 = v27;
  v31 = v30 + v24;
  v90 = v26;
  v32 = v29;
  v92 = v22 + 104;
  v27(v31, v26, v29);
  type metadata accessor for LocationData();
  sub_100389D5C(&qword_100CB12A8, &type metadata accessor for LocationData);
  AccessTracker.push<A>(data:traits:file:line:)();
  v33 = v72;

  sub_100095588();
  if (sub_100024D10(v28, 1, v33) == 1)
  {
    sub_1000180EC(v28, &qword_100CB1290);
    v34 = v90;
    v35 = v88;
  }

  else
  {
    v36 = v66;
    v37 = v65;
    (*(v66 + 32))(v65, v28, v33);
    v38 = v87;
    v39 = swift_allocObject();
    *(v39 + 16) = v95;
    v40 = v39 + v38;
    v41 = v90;
    v35 = v88;
    v88(v40, v90, v32);
    sub_100389D5C(&qword_100CB12F8, &type metadata accessor for LocationConditionData);
    AccessTracker.push<A>(data:traits:file:line:)();

    (*(v36 + 8))(v37, v33);
    v34 = v41;
  }

  v42 = v87;
  v43 = swift_allocObject();
  *(v43 + 16) = v95;
  v35(v43 + v42, v34, v32);
  type metadata accessor for ForecastAgeData();
  sub_100389D5C(&qword_100CB12B0, &type metadata accessor for ForecastAgeData);
  v91 = "viewModelFactory";
  AccessTracker.push<A>(data:traits:file:line:)();

  v44 = swift_allocObject();
  *(v44 + 16) = v95;
  v35(v44 + v42, v34, v32);
  type metadata accessor for ConditionsFeedbackData();
  sub_100389D5C(&qword_100CB12B8, &type metadata accessor for ConditionsFeedbackData);
  AccessTracker.push<A>(data:traits:file:line:)();

  v45 = swift_allocObject();
  *(v45 + 16) = v95;
  v46 = v90;
  v35(v45 + v42, v90, v32);
  type metadata accessor for WindFeedbackData();
  sub_100389D5C(&qword_100CB12C0, &type metadata accessor for WindFeedbackData);
  AccessTracker.push<A>(data:traits:file:line:)();

  v47 = swift_allocObject();
  *(v47 + 16) = v95;
  v48 = v89;
  v35(v47 + v42, v46, v89);
  type metadata accessor for TemperatureFeedbackData();
  sub_100389D5C(&qword_100CB12C8, &type metadata accessor for TemperatureFeedbackData);
  AccessTracker.push<A>(data:traits:file:line:)();

  v49 = v78;
  sub_100095588();
  v50 = v81;
  if (sub_100024D10(v49, 1, v81) == 1)
  {
    sub_1000180EC(v49, &qword_100CB1280);
    v51 = v90;
  }

  else
  {
    v52 = v68;
    v53 = v67;
    (*(v68 + 32))(v67, v49, v50);
    v54 = swift_allocObject();
    *(v54 + 16) = v95;
    v51 = v90;
    v88(v54 + v42, v90, v48);
    sub_100389D5C(&qword_100CB12F0, &type metadata accessor for AQIFeedbackData);
    AccessTracker.push<A>(data:traits:file:line:)();

    (*(v52 + 8))(v53, v50);
    v48 = v89;
  }

  v55 = swift_allocObject();
  *(v55 + 16) = v95;
  v56 = v88;
  v88(v55 + v42, v51, v48);
  type metadata accessor for OtherConditionsFeedbackData();
  sub_100389D5C(&qword_100CB12D0, &type metadata accessor for OtherConditionsFeedbackData);
  AccessTracker.push<A>(data:traits:file:line:)();

  v57 = v89;
  v58 = swift_allocObject();
  *(v58 + 16) = v95;
  v56(v58 + v42, v51, v57);
  type metadata accessor for DescriptionFeedbackData();
  sub_100389D5C(&qword_100CB12D8, &type metadata accessor for DescriptionFeedbackData);
  AccessTracker.push<A>(data:traits:file:line:)();

  v59 = v85;
  sub_100095588();
  v60 = v86;
  if (sub_100024D10(v59, 1, v86) == 1)
  {
    sub_1000180EC(v59, &qword_100CB1278);
  }

  else
  {
    v61 = v70;
    v62 = v69;
    (*(v70 + 32))(v69, v59, v60);
    v63 = swift_allocObject();
    *(v63 + 16) = v95;
    v88(v63 + v42, v90, v57);
    sub_100389D5C(&qword_100CB12E8, &type metadata accessor for WeatherJSONData);
    AccessTracker.push<A>(data:traits:file:line:)();

    (*(v61 + 8))(v62, v60);
  }

  type metadata accessor for ReportWeatherEvent();
  memset(v96, 0, sizeof(v96));
  sub_100389D5C(&qword_100CB12E0, &type metadata accessor for ReportWeatherEvent);

  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();

  return sub_1000180EC(v96, &qword_100CE2F40);
}

uint64_t sub_1003898A0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1003898F8(uint64_t a1)
{
  v2 = type metadata accessor for PrivateUserData();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v55 = v4;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for LocationData();
  sub_100003AE8(v7);
  v54 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v9 + 64);
  v11 = sub_10022C350(&qword_100CB1290);
  sub_100003AE8(v11);
  v13 = (v54 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v15 = *(v14 + 64);
  v16 = type metadata accessor for ForecastAgeData();
  sub_100003AE8(v16);
  v18 = (v13 + v15 + *(v17 + 80)) & ~*(v17 + 80);
  v20 = *(v19 + 64);
  v21 = type metadata accessor for ConditionsFeedbackData();
  sub_100003AE8(v21);
  v23 = (v18 + v20 + *(v22 + 80)) & ~*(v22 + 80);
  v25 = *(v24 + 64);
  v26 = type metadata accessor for WindFeedbackData();
  sub_100003AE8(v26);
  v28 = (v23 + v25 + *(v27 + 80)) & ~*(v27 + 80);
  v30 = *(v29 + 64);
  v31 = type metadata accessor for TemperatureFeedbackData();
  sub_100003AE8(v31);
  v33 = (v28 + v30 + *(v32 + 80)) & ~*(v32 + 80);
  v35 = *(v34 + 64);
  v36 = sub_10022C350(&qword_100CB1280);
  sub_100003AE8(v36);
  v38 = (v33 + v35 + *(v37 + 80)) & ~*(v37 + 80);
  v40 = *(v39 + 64);
  v41 = type metadata accessor for OtherConditionsFeedbackData();
  sub_100003AE8(v41);
  v43 = (v38 + v40 + *(v42 + 80)) & ~*(v42 + 80);
  v45 = *(v44 + 64);
  v46 = type metadata accessor for DescriptionFeedbackData();
  sub_100003AE8(v46);
  v48 = (v43 + v45 + *(v47 + 80)) & ~*(v47 + 80);
  v50 = *(v49 + 64);
  v51 = sub_10022C350(&qword_100CB1278);
  sub_100003810(v51);
  return sub_100388AC0(a1, v1 + v55, v1 + v54, v1 + v13, v1 + v18, v1 + v23, v1 + v28, v1 + v33, v1 + v38, v1 + v43, v1 + v48, v1 + ((v48 + v50 + *(v52 + 80)) & ~*(v52 + 80)));
}

uint64_t sub_100389D00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100389D5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100389DC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4968);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1468);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v45)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v36 = v5;
  v37 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1440);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v43)
  {
    v6 = sub_10002D7F8(v44, v45);
    v35[2] = v35;
    v7 = __chkstk_darwin(v6);
    v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = sub_10002D7F8(v42, v43);
    v35[1] = v35;
    v12 = __chkstk_darwin(v11);
    v14 = (v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = *v9;
    v17 = *v14;
    v18 = type metadata accessor for ReportWeatherInteractor();
    v41[3] = v18;
    v41[4] = &off_100C697D8;
    v41[0] = v16;
    v19 = type metadata accessor for ReportWeatherViewModelFactory();
    v39 = v19;
    v40 = &off_100C69CE0;
    v38[0] = v17;
    v20 = type metadata accessor for ReportWeatherModule();
    v21 = swift_allocObject();
    v22 = sub_10002D7F8(v41, v18);
    v23 = __chkstk_darwin(v22);
    v25 = (v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25, v23);
    v27 = sub_10002D7F8(v38, v39);
    v28 = __chkstk_darwin(v27);
    v30 = (v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = *v25;
    v33 = *v30;
    v21[6] = v18;
    v21[7] = &off_100C697D8;
    v21[8] = v33;
    v21[11] = v19;
    v21[12] = &off_100C69CE0;
    v21[2] = v36;
    v21[3] = v32;
    sub_100006F14(v38);
    sub_100006F14(v41);
    sub_100006F14(v42);
    result = sub_100006F14(v44);
    v34 = v37;
    v37[3] = v20;
    v34[4] = &off_100C69D00;
    *v34 = v21;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10038A244()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for Tracker();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.containerSingleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  type metadata accessor for SessionManager();
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  type metadata accessor for SessionEventsAndDataCoordinator();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1448);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1450);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1458);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1460);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1468);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4968);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1470);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10038A610(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = Tracker.chain(name:identifier:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038A6A4(void *a1)
{
  v2 = type metadata accessor for TimeDurationGranularity();
  __chkstk_darwin(v2 - 8);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB14B8);
  __chkstk_darwin(v4 - 8);
  v25 = &v22 - v5;
  v6 = sub_10022C350(&qword_100CB14C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SessionManager.Options();
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SessionManagerConfiguration();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB14C8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2D320;
  static SessionManager.Options.gracefulNoSessionEventSubmission.getter();
  static SessionManager.Options.gracefulEventCreation.getter();
  v28[0] = v15;
  sub_10038BCF8();
  sub_10022C350(&qword_100CB14D8);
  sub_10004BFC4();
  v24 = v11;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for FlushProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v22 = v12;
  sub_1000161C0(a1, a1[3]);
  v17 = type metadata accessor for TimestampJitter();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v8, 1, v17);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v28[3] = v17;
  v28[4] = &protocol witness table for TimestampJitter;
  v18 = sub_100042FB0(v28);
  (*(*(v17 - 8) + 32))(v18, v8, v17);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  v19 = type metadata accessor for DiagnosticsConsentProvider();
  v20 = v25;
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v20, 1, v19);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  static TimeDurationGranularity.milliseconds.getter();
  SessionManagerConfiguration.init(options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:timeDurationGranularity:)();
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v21 = AppSessionManager.createSessionManager(with:)();

    (*(v23 + 8))(v14, v22);
    return v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10038AB74(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LoggingEventProcessorFormat();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CB14A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1000161C0(a2, a2[3]);
  v10 = type metadata accessor for Configuration();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = Configuration.isEnabled.getter();
  result = (*(*(v10 - 8) + 8))(v9, v10);
  if ((v12 & 1) == 0)
  {
    return result;
  }

  SessionManager.processorManager.getter();
  type metadata accessor for LoggingEventProcessor();
  *v6 = 11;
  (*(v4 + 104))(v6, enum case for LoggingEventProcessorFormat.json(_:), v3);
  LoggingEventProcessor.__allocating_init(logFormat:)();
  ProcessorManager.add(eventProcessor:)();

  SessionManager.processorManager.getter();
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for Client();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    goto LABEL_9;
  }

  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CB14B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a2, a2[3]);
  type metadata accessor for UploadBatchEventConfig();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  type metadata accessor for UploadBatchEventProcessor();
  UploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)();
  ProcessorManager.add(eventProcessor:)();
}

void sub_10038AE88(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionManager();
  v2 = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Client();
  v4 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1480);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1478);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1488);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1490);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1498);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1450);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    type metadata accessor for SessionEventsAndDataCoordinator();
    swift_allocObject();
    LOBYTE(v6) = 0;
    sub_100067E9C(0, v3, v5, v24, v22, v20, v18, v16, v13, v10, v6, v7, v7[0], v7[1], v7[2], v8, v9, v10[0], v10[1], v10[2], v11, v12, v13[0], v14);
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_10038B1E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1480);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for PrivacySaltProvider();
    swift_allocObject();
    result = PrivacySaltProvider.init(identityService:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySaltProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038B288@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1448);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for PrivacySampler();
    swift_allocObject();
    result = PrivacySampler.init(saltProvider:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySampler;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038B330@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionEventsAndDataCoordinator();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v12 = v5;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v7 = v17;
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v19;
  v8 = v20;
  v10 = v18;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1470);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1480);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    a2[3] = &type metadata for ReportWeatherTracker;
    a2[4] = &off_100C50EE8;
    v11 = swift_allocObject();
    *a2 = v11;
    v11[2] = v12;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v10;
    v11[6] = v9;
    v11[7] = v8;
    sub_100013188(&v15, (v11 + 8));
    return sub_100013188(&v13, (v11 + 13));
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10038B558@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1478);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CAFC60);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      v5 = type metadata accessor for ReportWeatherSubmissionTracker();
      v6 = swift_allocObject();
      sub_100013188(&v9, v6 + 56);
      result = sub_100013188(&v7, v6 + 16);
      a2[3] = v5;
      a2[4] = &off_100C59F00;
      *a2 = v6;
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

uint64_t sub_10038B664@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1458);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = v27;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1460);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    v6 = sub_10002D7F8(v24, v25);
    v7 = __chkstk_darwin(v6);
    v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9, v7);
    v21[3] = &type metadata for ReportWeatherTracker;
    v21[4] = &off_100C50EE8;
    v21[0] = swift_allocObject();
    memcpy((v21[0] + 16), v9, 0x80uLL);
    v11 = type metadata accessor for ReportWeatherInteractor();
    v12 = swift_allocObject();
    v13 = sub_10002D7F8(v21, &type metadata for ReportWeatherTracker);
    v14 = __chkstk_darwin(v13);
    v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    v12[7] = &type metadata for ReportWeatherTracker;
    v12[8] = &off_100C50EE8;
    v18 = swift_allocObject();
    v12[4] = v18;
    memcpy((v18 + 16), v16, 0x80uLL);
    v19 = v20;
    v12[2] = v5;
    v12[3] = v19;
    sub_100013188(&v22, (v12 + 9));
    sub_100006F14(v21);
    result = sub_100006F14(v24);
    a2[3] = v11;
    a2[4] = &off_100C697D8;
    *a2 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10038B980(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v16;
  if (v16)
  {
    v5 = v18;
    v4 = v19;
    v6 = v17;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB1440);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v15)
    {
      v7 = *sub_1000161C0(v14, v15);
      v13[3] = type metadata accessor for ReportWeatherViewModelFactory();
      v13[4] = &off_100C69CE0;
      v13[0] = v7;
      sub_100035B30(v13, v12);
      v8 = swift_allocObject();
      sub_100013188(v12, v8 + 16);

      sub_100006F14(v13);
      sub_100006F14(v14);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_10038BC5C;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_10038BC64;
      *(v10 + 24) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_10038BCAC;
      *(v11 + 24) = v10;
      sub_10022C350(&qword_100CA4968);
      swift_allocObject();
      return sub_10024A5AC(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F610, 0, sub_10026AB64, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10038BBCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1000161C0(a2, a2[3]);
  sub_1007381FC(a1, 1, v6);
  return memcpy(a3, v6, 0x60uLL);
}

unint64_t sub_10038BCF8()
{
  result = qword_100CB14D0;
  if (!qword_100CB14D0)
  {
    type metadata accessor for SessionManager.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB14D0);
  }

  return result;
}

uint64_t sub_10038BD60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewComponentContainerDescriptor();
  v3 = sub_100588E2C(v2);
  if (v3)
  {
    sub_1001B3B30(v3 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for LocationComponentContainerViewModel();

  return sub_10001B350(a1, v4, 1, v5);
}

uint64_t type metadata accessor for PrecipitationAveragesHeroChartInput()
{
  result = qword_100CB1548;
  if (!qword_100CB1548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038BE64()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherStatisticsModel();
    if (v1 <= 0x3F)
    {
      sub_1000F4460();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TimeZone();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Locale();
          if (v4 <= 0x3F)
          {
            sub_10038BF8C();
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

uint64_t sub_10038BF48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DayWeather();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10038BF8C()
{
  if (!qword_100CAF980)
  {
    type metadata accessor for DetailHeroChartLollipopPosition(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAF980);
    }
  }
}

BOOL sub_10038BFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10022C350(&qword_100CAB960);
  __chkstk_darwin(v8 - 8);
  v10 = (v25 - v9);
  v11 = sub_10022C350(&qword_100CAF9C8);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for PrecipitationAveragesHeroChartInput();
  if ((static WeatherStatisticsModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v25[0] = v4;
  v25[1] = type metadata accessor for DayWeather();
  sub_10038BF48(&qword_100CB0C50);
  sub_10038BF48(&qword_100CB0C58);
  sub_10038BF48(&qword_100CB0C60);
  if ((static Forecast.== infix(_:_:)() & 1) == 0 || (static TimeZone.== infix(_:_:)() & 1) == 0 || (static Locale.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 36);
  v17 = *(v11 + 48);
  sub_1002ED164(a1 + v16, v14);
  sub_1002ED164(a2 + v16, &v14[v17]);
  v18 = v25[0];
  if (sub_100024D10(v14, 1, v25[0]) == 1)
  {
    if (sub_100024D10(&v14[v17], 1, v18) == 1)
    {
      sub_1000180EC(v14, &qword_100CAB960);
      return 1;
    }

    goto LABEL_12;
  }

  sub_1002ED164(v14, v10);
  if (sub_100024D10(&v14[v17], 1, v18) == 1)
  {
    sub_100385550(v10);
LABEL_12:
    v20 = &qword_100CAF9C8;
LABEL_19:
    sub_1000180EC(v14, v20);
    return 0;
  }

  sub_10035F228(&v14[v17], v7);
  v21 = v25[0];
  if (*v10 != *v7 || (static Date.== infix(_:_:)() & 1) == 0 || *(v10 + *(v21 + 24)) != *(v7 + *(v21 + 24)))
  {
    sub_100385550(v7);
    sub_100385550(v10);
    v20 = &qword_100CAB960;
    goto LABEL_19;
  }

  v22 = *(v21 + 28);
  v23 = *(v10 + v22);
  v24 = *(v7 + v22);
  sub_100385550(v7);
  sub_100385550(v10);
  sub_1000180EC(v14, &qword_100CAB960);
  return v23 == v24;
}

uint64_t sub_10038C384@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v22[4] = a3;
  v22[2] = a4;
  v22[3] = a1;
  v22[0] = a2;
  v22[1] = a5;
  v5 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  sub_1000037C4();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v22 - v18;
  CurrentWeather.date.getter();
  Location.timeZone.getter();
  Date.startOfDay(timeZone:)();
  (*(v7 + 8))(v10, v5);
  v20 = *(v13 + 8);
  v20(v17, v11);
  type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  dispatch thunk of SunriseSunsetDetailChartViewModelFactoryType.makeViewModel(location:startDate:numberOfMinutesShownOnChart:currentWeather:sunEvents:cachedElevations:cachedDateHoursString:)();
  return (v20)(v19, v11);
}

uint64_t sub_10038C588(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA1FB0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA1FC0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA1FB8 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA1FA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA1FA0 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

void sub_10038C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BBF0;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BC00;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BBD0;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BC00;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A41B80;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BBF0;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC10;
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
  sub_1000136DC(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D8FC28 = v8;
}

void sub_10038C80C()
{
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC00;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC20;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC00;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC10;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC30;
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
  sub_1005588CC();
  qword_100D8FC30 = v0;
}

void sub_10038C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BB80;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v26 = v21;
  v27 = v19;
  v18[0] = xmmword_100A3BBD0;
  v18[1] = xmmword_100A3BC50;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BB80;
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
  sub_1000136DC(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D8FC38 = v8;
}

void sub_10038CA34()
{
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v17 = v16;
  v18 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC50;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v19 = v14;
  v20 = &v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BBB0;
  v5[1] = xmmword_100A3BC50;
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
  sub_1005588CC();
  qword_100D8FC40 = v0;
}

void sub_10038CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A3BC50;
  v24[1] = xmmword_100A3BC60;
  v22 = 1;
  v23 = 4;
  v25 = v24;
  v26 = &v21;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v21 = xmmword_100A3BB70;
  v19[0] = xmmword_100A41B90;
  v19[1] = xmmword_100A3BBB0;
  v27 = v20;
  v28 = v19;
  v18[0] = xmmword_100A3BBD0;
  v18[1] = xmmword_100A3BC60;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BD20;
  v29 = v18;
  v30 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BC60;
  v15[0] = xmmword_100A2D320;
  v15[1] = xmmword_100A2C3F0;
  v31 = v16;
  v32 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A3BC60;
  v13[1] = xmmword_100A3BC60;
  v33 = v14;
  v34 = v13;
  v12[0] = xmmword_100A3BC40;
  v12[1] = xmmword_100A3BC40;
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
  sub_1000136DC(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D8FC48 = v8;
}

uint64_t sub_10038CC74(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v33 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v32 = v8;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for LocationViewComponent();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA5008);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v30 - v24;

  sub_1005D71C4(v26, a2);
  v31 = v27;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather33LocationNoAqiNhpNewsConfiguration8_Storage_map, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10001B350(v25, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather33LocationNoAqiNhpNewsConfiguration8_Storage_newsArticle, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather33LocationNoAqiNhpNewsConfiguration8_Storage_nextHourPrecipitation, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v25, v22, &qword_100CA5008);
  sub_10031694C(v14, v32, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v11, v33, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NoAqiNhpNewsContent._Storage(0);
  swift_allocObject();
  v28 = sub_1002D3D8C(v31);
  sub_1003169AC(v11, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v25, &qword_100CA5008);
  return v28;
}

uint64_t sub_10038CFBC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v125 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather19NoAqiNhpNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v129 = a1;
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
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather19NoAqiNhpNewsContent8_Storage_newsArticle, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v126 = v13 + 2 * v14;
    v127 = v14;
    v30 = v14;
    v31 = v15;
    v32 = swift_allocObject();
    v33 = sub_10001361C(v32, xmmword_100A2D320) + v13;
    v34 = a1;
    v35 = *(a1 + 16);
    v36 = v34;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v35 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v33[v30], v7);
    *(v12 + 128) = sub_1001B38A0(v32);
    *(v12 + 136) = v37;
    *(v12 + 144) = v38;
    v128 = v31;
    v39 = swift_allocObject();
    sub_1000056EC(v39);
    v41 = v40 + v13;
    v42 = *(v36 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v42 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v127[v41], v7);
    *(v12 + 152) = sub_1001B38A0(v32);
    *(v12 + 160) = v43;
    *(v12 + 168) = v44;
    v45 = swift_allocObject();
    sub_1000056EC(v45);
    v47 = v46 + v13;
    v48 = v129;
    v49 = *(v129 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v50 = v127;
    sub_10031694C(v49 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v127[v47], v7);
    *(v12 + 176) = sub_1001B38A0(v32);
    *(v12 + 184) = v51;
    *(v12 + 192) = v52;
    v53 = sub_10000C998();
    sub_1000056EC(v53);
    v55 = v54 + v13;
    v56 = *(v48 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v57 = v55 + v50;
    v58 = v50;
    sub_10031694C(v56 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v57, v7);
    *(v12 + 200) = sub_1001B38A0(v32);
    *(v12 + 208) = v59;
    *(v12 + 216) = v60;
    v61 = sub_10000C998();
    sub_100003E18(v61);
    v63 = v62 + v13;
    v64 = *(v48 + 16);
    sub_10031694C(v64 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v62 + v13, v7);
    sub_10031694C(v64 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v63 + v58, v7);
    *(v12 + 224) = sub_1001B38A0(v61);
    *(v12 + 232) = v65;
    *(v12 + 240) = v66;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v67 = sub_10022C350(&qword_100CAC7F0);
    v68 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v69 = *(v7 + 72);
    v70 = *(v7 + 80);
    v71 = v67;
    v72 = swift_allocObject();
    sub_10001361C(v72, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v73, v72 + v68, v74);
    *(v12 + 32) = sub_1001B38A0(v72);
    *(v12 + 40) = v75;
    *(v12 + 48) = v76;
    sub_1000167B0();
    v77 = swift_allocObject();
    sub_1000056EC(v77);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather19NoAqiNhpNewsContent8_Storage_newsArticle, v72 + v68, v7);
    *(v12 + 56) = sub_1001B38A0(v72);
    *(v12 + 64) = v78;
    *(v12 + 72) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v72 + v68, v7);
    *(v12 + 80) = sub_1001B38A0(v72);
    *(v12 + 88) = v81;
    *(v12 + 96) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v72 + v68, v7);
    *(v12 + 104) = sub_1001B38A0(v72);
    *(v12 + 112) = v84;
    *(v12 + 120) = v85;
    v128 = v70;
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10031694C(v9, v87 + v68, v7);
    *(v12 + 128) = sub_1001B38A0(v72);
    *(v12 + 136) = v88;
    *(v12 + 144) = v89;
    v90 = v68 + 2 * v69;
    v91 = v69;
    sub_1000167B0();
    v92 = swift_allocObject();
    v93 = sub_10001361C(v92, xmmword_100A2D320);
    v127 = v9;
    v94 = v93 + v68;
    v95 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v125[0] = v91;
    sub_10031694C(v95 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v94[v91], v7);
    *(v12 + 152) = sub_1001B38A0(v92);
    *(v12 + 160) = v96;
    *(v12 + 168) = v97;
    v125[1] = v90;
    v98 = swift_allocObject();
    sub_100003E18(v98);
    v100 = v99 + v68;
    v101 = v129;
    v102 = *(v129 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v100 + v91, v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v103;
    *(v12 + 192) = v104;
    sub_1000167B0();
    v126 = v71;
    v105 = swift_allocObject();
    sub_100003E18(v105);
    v107 = v106 + v68;
    v108 = *(v101 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v109 = v125[0];
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v107 + v125[0], v7);
    *(v12 + 200) = sub_1001B38A0(v105);
    *(v12 + 208) = v110;
    *(v12 + 216) = v111;
    sub_1000167B0();
    v112 = swift_allocObject();
    sub_100003E18(v112);
    v114 = v113 + v68;
    v115 = *(v101 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v115 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v114 + v109, v7);
    *(v12 + 224) = sub_1001B38A0(v112);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v68;
    v121 = *(v129 + 16);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v119 + v68, v7);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v120 + v109, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    sub_1003169AC(v127, v7);
  }

  return v12;
}

uint64_t sub_10038D860(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
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
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
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
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v74 - v31;
  __chkstk_darwin(v33);
  v35 = &v74 - v34;
  v36 = sub_10038C588(a1, a2);
  v37 = OBJC_IVAR____TtCV7Weather19NoAqiNhpNewsContent8_Storage_map;
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

uint64_t sub_10038DE70(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(0);
  type metadata accessor for MinuteWeather();
  sub_10038F464(&qword_100CB1738, &type metadata accessor for MinuteWeather);
  sub_100014424();
  sub_10038F464(v5, &type metadata accessor for MinuteWeather);
  sub_10000838C();
  sub_10038F464(v6, &type metadata accessor for MinuteWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(HourPrecipitationDetail + 24);

  return sub_100883064((a1 + v7), (a2 + v7));
}

uint64_t sub_10038DF90(uint64_t a1, uint64_t a2)
{
  HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  v10 = sub_100003810(HourPrecipitationDetailInput);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CB1780);
  sub_100003810(v14);
  sub_100003828();
  v16 = __chkstk_darwin(v15);
  v18 = &v31 - v17;
  v19 = *(v16 + 56);
  sub_10038F404(a1, &v31 - v17, type metadata accessor for NextHourPrecipitationDetailInput);
  sub_10038F404(a2, &v18[v19], type metadata accessor for NextHourPrecipitationDetailInput);
  sub_100005404(v18);
  if (v21)
  {
    sub_100005404(&v18[v19]);
    if (v21)
    {
LABEL_5:
      sub_100004020();
      return 1;
    }

    goto LABEL_9;
  }

  sub_10038F404(v18, v13, type metadata accessor for NextHourPrecipitationDetailInput);
  sub_100005404(&v18[v19]);
  if (v21)
  {
    sub_10001E9B8();
    sub_10038F34C(v13, v22);
LABEL_9:
    sub_1000180EC(v18, &qword_100CB1780);
    return 0;
  }

  sub_10038F3A4(&v18[v19], v8, type metadata accessor for NextHourPrecipitationDetailInput.Input);
  v23 = static Location.== infix(_:_:)();
  if (v23 & 1) != 0 && (type metadata accessor for MinuteWeather(), sub_10038F464(&qword_100CB1738, &type metadata accessor for MinuteWeather), sub_100014424(), sub_10038F464(v24, &type metadata accessor for MinuteWeather), sub_10000838C(), sub_10038F464(v25, &type metadata accessor for MinuteWeather), (static Forecast.== infix(_:_:)()))
  {
    v26 = sub_100883064((v13 + *(HourPrecipitationDetail + 24)), (v8 + *(HourPrecipitationDetail + 24)));
    sub_10001E9B8();
    sub_10038F34C(v8, v27);
    if (v26)
    {
      sub_10001E9B8();
      sub_10038F34C(v13, v28);
      goto LABEL_5;
    }
  }

  else
  {
    sub_10001E9B8();
    sub_10038F34C(v8, v29);
  }

  sub_10001E9B8();
  sub_10038F34C(v13, v30);
  sub_100004020();
  return 0;
}

uint64_t sub_10038E264@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a3;
  v4 = sub_10022C350(&qword_100CB0BA0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v80 - v6;
  v8 = sub_10022C350(&qword_100CAE8F0);
  v81 = *(v8 - 8);
  v82 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  v80 = &v80 - v10;
  v11 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v80 - v13;
  v15 = sub_10022C350(&qword_100CA3898);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  v19 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = sub_10022C350(&qword_100CB1788);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v80 - v26;
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  v30 = __chkstk_darwin(v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v80 - v33;
  sub_10038EA7C(a1, v27);
  if (sub_100024D10(v27, 1, HourPrecipitationDetailViewState) != 1)
  {
    sub_10038F3A4(v27, v34, type metadata accessor for NextHourPrecipitationDetailViewState);
    v40 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v41 = Location.id.getter();
    sub_1000864C0(v41, v42, v40);

    v43 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v14, 1, v43) == 1)
    {
      sub_1000180EC(v14, &qword_100CA37B0);
      sub_10001B350(v18, 1, 1, v19);
    }

    else
    {
      sub_1001A0D3C();
      sub_10038F34C(v14, type metadata accessor for LocationWeatherDataState);
      sub_100005404(v18);
      if (!v44)
      {
        sub_100005970();
        sub_10038F3A4(v18, v23, v71);
        WeatherDataModel.minuteForecast.getter();
        v72 = v82;
        v73 = sub_100024D10(v7, 1, v82);
        if (v73 != 1)
        {
          v74 = v80;
          v75 = *(v81 + 32);
          v75(v80, v7, v72);
          type metadata accessor for Location();
          sub_1000037E8();
          v64 = v84;
          (*(v76 + 32))(v84, v34);
          HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(0);
          v75((v64 + *(HourPrecipitationDetail + 20)), v74, v72);
          sub_100005970();
          sub_10038F3A4(v23, v64 + v78, v79);
          v65 = v64;
          v66 = 0;
          v63 = HourPrecipitationDetail;
          goto LABEL_24;
        }

        sub_10038F34C(v23, type metadata accessor for WeatherData);
        v45 = &qword_100CB0BA0;
        v46 = v7;
        goto LABEL_12;
      }
    }

    v45 = &qword_100CA3898;
    v46 = v18;
LABEL_12:
    sub_1000180EC(v46, v45);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v47 = type metadata accessor for Logger();
    sub_10000703C(v47, qword_100D90B68);
    sub_10038F404(v34, v32, type metadata accessor for NextHourPrecipitationDetailViewState);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v85 = v51;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      type metadata accessor for Location();
      sub_10038F464(&qword_100CA6678, &type metadata accessor for Location);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      sub_10001BFA0();
      sub_10038F34C(v32, v55);
      v56 = sub_100078694(v52, v54, &v85);

      *(v50 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to create next hour precipitation detail input due to missing weather data; location=%{private,mask.hash}s", v50, 0x16u);
      sub_100006F14(v51);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      sub_10001BFA0();
      sub_10038F34C(v32, v57);
    }

    if ((v83 & 1) == 0)
    {
      sub_10001BFA0();
      sub_10038F34C(v34, v68);
      v67 = 1;
      v64 = v84;
      goto LABEL_26;
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    sub_10000703C(v47, qword_100D90C18);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v58, v59))
    {
      *swift_slowAlloc() = 0;
      sub_1000133FC(&_mh_execute_header, v60, v61, "Error: Could not create an initial input in NextHourPrecipitationDetailInputFactory! This is a bug and should be investigated.");
      sub_100003884();
    }

    simulateCrash(_:_:)();
    sub_10001BFA0();
    sub_10038F34C(v34, v62);
    goto LABEL_23;
  }

  sub_1000180EC(v27, &qword_100CB1788);
  if (qword_100CA2700 != -1)
  {
    sub_100003AB0();
  }

  v35 = type metadata accessor for Logger();
  sub_10000703C(v35, qword_100D90B68);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    *swift_slowAlloc() = 0;
    sub_1000133FC(&_mh_execute_header, v38, v39, "Unable to make NextHourPrecipitationDetailInput due to missing nextHourPrecipitationDetail.");
    sub_100003884();
  }

LABEL_23:
  v63 = type metadata accessor for NextHourPrecipitationDetailInput.Input(0);
  v64 = v84;
  v65 = v84;
  v66 = 1;
LABEL_24:
  sub_10001B350(v65, v66, 1, v63);
  v67 = 0;
LABEL_26:
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  return sub_10001B350(v64, v67, 1, HourPrecipitationDetailInput);
}