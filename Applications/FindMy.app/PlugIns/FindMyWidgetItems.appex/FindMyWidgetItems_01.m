uint64_t sub_10001C784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemplateInformationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C7E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TemplateInformationView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10001C2C4(v4, a1);
}

unint64_t sub_10001C868()
{
  result = qword_10004D128;
  if (!qword_10004D128)
  {
    sub_100001B74(&qword_10004D118, &unk_10003D0A0);
    sub_10001C920();
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D128);
  }

  return result;
}

unint64_t sub_10001C920()
{
  result = qword_10004CE48;
  if (!qword_10004CE48)
  {
    type metadata accessor for WidgetGridBackground();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE48);
  }

  return result;
}

uint64_t sub_10001C978(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004D110, &qword_10003D038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C9F0()
{
  sub_100001B74(&qword_10004D110, &qword_10003D038);
  sub_100001B74(&qword_10004D118, &unk_10003D0A0);
  sub_1000073FC(&qword_10004D120, &qword_10004D110, &qword_10003D038);
  sub_10001C868();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001CAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001CB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WidgetBlurBackground()
{
  result = qword_10004D188;
  if (!qword_10004D188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CC14()
{
  sub_10001CC80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10001CC80()
{
  if (!qword_10004C670)
  {
    sub_10003A458();
    v0 = sub_1000399D8();
    if (!v1)
    {
      atomic_store(v0, &qword_10004C670);
    }
  }
}

uint64_t sub_10001CCF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10001D0D4(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10003A458();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10003A858();
    v16 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001CEDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100039848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003A458();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_10001CCF4(&v19 - v13);
  sub_10003A448();
  v15 = sub_10003A438();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v14, v7);
  if (v15)
  {
    sub_100039838();
    (*(v3 + 32))(a1, v6, v2);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v3 + 56))(a1, v17, 1, v2);
}

uint64_t sub_10001D0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D148()
{
  result = qword_10004D1C0;
  if (!qword_10004D1C0)
  {
    sub_100001B74(&qword_10004D1C8, &unk_10003D190);
    sub_10001D1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D1C0);
  }

  return result;
}

unint64_t sub_10001D1CC()
{
  result = qword_10004D1D0;
  if (!qword_10004D1D0)
  {
    sub_100039848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D1D0);
  }

  return result;
}

uint64_t sub_10001D2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B2C(&qword_10004D268, &qword_10003D1D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001D3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001B2C(&qword_10004D268, &qword_10003D1D8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10001D4E0()
{
  sub_10001DAFC(319, &unk_10004D2D8, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetEntryViewContent.Model.State(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001D5D0()
{
  result = type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001D6AC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for LoadedView.Callout(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_10001D844(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for LoadedView.Callout(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_10001D9C8()
{
  sub_10001DB50(319, &qword_10004C7F8);
  if (v0 <= 0x3F)
  {
    sub_10001DAFC(319, &qword_10004C800, &type metadata accessor for FindMyRelativeDate);
    if (v1 <= 0x3F)
    {
      sub_10001DAFC(319, &qword_10004C808, &type metadata accessor for Symbol);
      if (v2 <= 0x3F)
      {
        sub_10001DB50(319, &qword_10004CD78);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LoadedView.Callout(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001DAFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10003A888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001DB50(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10003A888();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10001DB9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001DBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001DC34(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001DC4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001DC60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001DCA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001DD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039958();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001DDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100039958();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001DEAC()
{
  result = sub_100039958();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001E004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001E098()
{
  result = type metadata accessor for WidgetEntryViewContent.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001E168@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  v128 = type metadata accessor for LoadedView(0);
  v1 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v3 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
  v4 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TemplateInformationView();
  v7 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100001B2C(&qword_10004D5E8, &qword_10003D388);
  v10 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v115 = &v106 - v11;
  v121 = sub_100001B2C(&qword_10004D5C8, &qword_10003D380);
  v12 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v117 = &v106 - v13;
  v113 = type metadata accessor for CenteredInformationView();
  v14 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for EmptyStateView();
  v17 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100001B2C(&qword_10004D5F0, &qword_10003D390);
  v24 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v126 = &v106 - v25;
  v118 = sub_100001B2C(&qword_10004D5F8, &qword_10003D398);
  v26 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v120 = &v106 - v27;
  v108 = sub_100001B2C(&qword_10004D600, &qword_10003D3A0);
  v28 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v110 = &v106 - v29;
  v119 = sub_100001B2C(&qword_10004D5A8, &qword_10003D378);
  v30 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v111 = &v106 - v31;
  v125 = sub_100001B2C(&qword_10004D598, &qword_10003D370);
  v32 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v122 = &v106 - v33;
  v109 = type metadata accessor for PlaceholderView();
  v34 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v36 = (&v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for WidgetEntryViewContent.Model(0);
  sub_10001F928(v123 + *(v41 + 20), v40, type metadata accessor for WidgetEntryViewContent.Model.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v93 = *v40;
      v92 = *(v40 + 1);
      v94 = v40[16];
      v95 = *(v40 + 3);
      v96 = *(v40 + 4);
      v97 = *(v40 + 5);
      v98 = *(v40 + 6);
      v99 = *(v40 + 7);

      sub_100018048(v96, v97);

      sub_10001FA10(v96, v97);
      *v16 = v93;
      *(v16 + 1) = v92;
      v16[16] = v94;
      *(v16 + 3) = v95;
      *(v16 + 4) = v96;
      *(v16 + 5) = v97;
      *(v16 + 6) = v98;
      *(v16 + 7) = v99;
      *(v16 + 4) = xmmword_10003D1A0;
      *(v16 + 10) = 0x4040000000000000;
      v100 = v113;
      v101 = *(v113 + 28);
      *&v16[v101] = swift_getKeyPath();
      sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
      swift_storeEnumTagMultiPayload();
      v102 = *(v100 + 32);
      *&v16[v102] = swift_getKeyPath();
      sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
      swift_storeEnumTagMultiPayload();
      sub_10001F928(v16, v115, type metadata accessor for CenteredInformationView);
      swift_storeEnumTagMultiPayload();
      sub_10001F7F4(&qword_10004D5D0, type metadata accessor for CenteredInformationView);
      sub_10001F7F4(&qword_10004D5D8, type metadata accessor for TemplateInformationView);
      v103 = v117;
      sub_100039EA8();
      sub_100009AB0(v103, v120, &qword_10004D5C8, &qword_10003D380);
      swift_storeEnumTagMultiPayload();
      sub_10001F708();
      sub_10001F83C();
      v104 = v122;
      sub_100039EA8();
      sub_100009B18(v103, &qword_10004D5C8, &qword_10003D380);
      sub_100009AB0(v104, v126, &qword_10004D598, &qword_10003D370);
      swift_storeEnumTagMultiPayload();
      sub_10001F67C();
      sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView);
      sub_100039EA8();
      sub_100009B18(v104, &qword_10004D598, &qword_10003D370);
      v63 = type metadata accessor for CenteredInformationView;
      v64 = v16;
    }

    else
    {
      sub_10001FA54(v40, v23, type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage);
      v65 = &v23[*(v20 + 20)];
      v67 = *v65;
      v66 = *(v65 + 1);
      v68 = v65[16];
      v69 = *(v65 + 3);
      v70 = v114;
      v71 = *(v114 + 20);
      v72 = sub_100039958();
      (*(*(v72 - 8) + 16))(&v19[v71], v23, v72);
      *v19 = v67;
      *(v19 + 1) = v66;
      v19[16] = v68;
      *(v19 + 3) = v69;
      v73 = &v19[v70[6]];
      *v73 = xmmword_10003D1B0;
      *(v73 + 2) = 0x4040000000000000;
      v74 = v70[7];
      *&v19[v74] = swift_getKeyPath();
      sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
      swift_storeEnumTagMultiPayload();
      v75 = &v19[v70[8]];
      *v75 = swift_getKeyPath();
      *(v75 + 1) = 0;
      *(v75 + 2) = 0;
      *(v75 + 3) = 0;
      v75[32] = 0;
      v76 = v70[9];
      *&v19[v76] = swift_getKeyPath();
      sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
      swift_storeEnumTagMultiPayload();
      sub_10001F928(v19, v110, type metadata accessor for EmptyStateView);
      swift_storeEnumTagMultiPayload();
      sub_10001F7F4(&qword_10004D5B0, type metadata accessor for PlaceholderView);
      sub_10001F7F4(&qword_10004D5B8, type metadata accessor for EmptyStateView);

      v77 = v111;
      sub_100039EA8();
      sub_100009AB0(v77, v120, &qword_10004D5A8, &qword_10003D378);
      swift_storeEnumTagMultiPayload();
      sub_10001F708();
      sub_10001F83C();
      v78 = v122;
      sub_100039EA8();
      sub_100009B18(v77, &qword_10004D5A8, &qword_10003D378);
      sub_100009AB0(v78, v126, &qword_10004D598, &qword_10003D370);
      swift_storeEnumTagMultiPayload();
      sub_10001F67C();
      sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView);
      sub_100039EA8();
      sub_100009B18(v78, &qword_10004D598, &qword_10003D370);
      sub_10001F9B0(v19, type metadata accessor for EmptyStateView);
      v63 = type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage;
      v64 = v23;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v79 = *(v40 + 1);
    v80 = v40[16];
    v81 = *(v40 + 3);
    *v9 = *v40;
    *(v9 + 1) = v79;
    v9[16] = v80;
    *(v9 + 3) = v81;
    v82 = v116;
    v83 = *(v116 + 20);
    *&v9[v83] = swift_getKeyPath();
    sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
    swift_storeEnumTagMultiPayload();
    v84 = *(v82 + 24);
    *&v9[v84] = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
    swift_storeEnumTagMultiPayload();
    sub_10001F928(v9, v115, type metadata accessor for TemplateInformationView);
    swift_storeEnumTagMultiPayload();
    sub_10001F7F4(&qword_10004D5D0, type metadata accessor for CenteredInformationView);
    sub_10001F7F4(&qword_10004D5D8, type metadata accessor for TemplateInformationView);
    v85 = v117;
    sub_100039EA8();
    sub_100009AB0(v85, v120, &qword_10004D5C8, &qword_10003D380);
    swift_storeEnumTagMultiPayload();
    sub_10001F708();
    sub_10001F83C();
    v86 = v122;
    sub_100039EA8();
    sub_100009B18(v85, &qword_10004D5C8, &qword_10003D380);
    sub_100009AB0(v86, v126, &qword_10004D598, &qword_10003D370);
    swift_storeEnumTagMultiPayload();
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView);
    sub_100039EA8();
    sub_100009B18(v86, &qword_10004D598, &qword_10003D370);
    v63 = type metadata accessor for TemplateInformationView;
    v64 = v9;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10001FA54(v40, v6, type metadata accessor for WidgetEntryViewContent.Model.State.Loaded);
    v43 = *v6;
    v123 = *(v6 + 1);
    LODWORD(v119) = v6[16];
    v45 = *(v6 + 3);
    v44 = *(v6 + 4);
    v120 = v43;
    v121 = v45;
    v118 = v44;
    v46 = *(v6 + 5);
    v47 = *(v6 + 6);
    v48 = *(v6 + 7);
    v49 = v107;
    v50 = v128;
    sub_100009AB0(&v6[*(v107 + 24)], &v3[*(v128 + 24)], &qword_10004C778, &unk_10003C4D0);
    sub_100009AB0(&v6[v49[7]], &v3[v50[7]], &qword_10004C780, "P*");
    v51 = v49[9];
    v52 = &v6[v49[8]];
    v53 = *(v52 + 1);
    v117 = *v52;
    sub_10001F928(&v6[v51], &v3[v50[9]], type metadata accessor for LoadedView.Callout);
    v122 = *&v6[v49[10]];
    v54 = v122;
    *&v3[v50[13]] = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
    swift_storeEnumTagMultiPayload();
    v55 = v123;
    *v3 = v120;
    *(v3 + 1) = v55;
    v3[16] = v119;
    v56 = v117;
    v57 = v118;
    *(v3 + 3) = v45;
    *(v3 + 4) = v57;
    *(v3 + 5) = v46;
    *(v3 + 6) = v47;
    *(v3 + 7) = v48;
    v58 = &v3[v50[8]];
    *v58 = v56;
    *(v58 + 1) = v53;
    *&v3[v50[10]] = v54;
    *&v3[v50[11]] = 0x400C000000000000;
    v59 = v50[12];
    *&v3[v59] = swift_getKeyPath();
    sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
    swift_storeEnumTagMultiPayload();
    v60 = &v3[v50[14]];
    *v60 = swift_getKeyPath();
    *(v60 + 1) = 0;
    v60[16] = 0;
    v61 = &v3[v50[15]];
    *v61 = swift_getKeyPath();
    *(v61 + 1) = 0;
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    v61[32] = 0;
    v62 = v50[16];
    *&v3[v62] = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
    swift_storeEnumTagMultiPayload();
    sub_10001F928(v3, v126, type metadata accessor for LoadedView);
    swift_storeEnumTagMultiPayload();

    sub_100018048(v57, v46);

    sub_100017EAC(v122);
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView);
    sub_100039EA8();
    sub_10001F9B0(v3, type metadata accessor for LoadedView);
    v63 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded;
    v64 = v6;
  }

  else
  {
    *v36 = swift_getKeyPath();
    sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
    swift_storeEnumTagMultiPayload();
    v87 = v109;
    v88 = *(v109 + 20);
    *(v36 + v88) = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
    swift_storeEnumTagMultiPayload();
    v89 = *(v87 + 24);
    *(v36 + v89) = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
    swift_storeEnumTagMultiPayload();
    sub_10001F928(v36, v110, type metadata accessor for PlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_10001F7F4(&qword_10004D5B0, type metadata accessor for PlaceholderView);
    sub_10001F7F4(&qword_10004D5B8, type metadata accessor for EmptyStateView);
    v90 = v111;
    sub_100039EA8();
    sub_100009AB0(v90, v120, &qword_10004D5A8, &qword_10003D378);
    swift_storeEnumTagMultiPayload();
    sub_10001F708();
    sub_10001F83C();
    v91 = v122;
    sub_100039EA8();
    sub_100009B18(v90, &qword_10004D5A8, &qword_10003D378);
    sub_100009AB0(v91, v126, &qword_10004D598, &qword_10003D370);
    swift_storeEnumTagMultiPayload();
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView);
    sub_100039EA8();
    sub_100009B18(v91, &qword_10004D598, &qword_10003D370);
    v63 = type metadata accessor for PlaceholderView;
    v64 = v36;
  }

  return sub_10001F9B0(v64, v63);
}

uint64_t sub_10001F4FC()
{
  v0 = sub_100001B2C(&qword_10004D580, &qword_10003D368);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_10001E168(&v5 - v2);
  sub_10001F5C0();
  sub_10003A158();
  return sub_100009B18(v3, &qword_10004D580, &qword_10003D368);
}

unint64_t sub_10001F5C0()
{
  result = qword_10004D588;
  if (!qword_10004D588)
  {
    sub_100001B74(&qword_10004D580, &qword_10003D368);
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D588);
  }

  return result;
}

unint64_t sub_10001F67C()
{
  result = qword_10004D590;
  if (!qword_10004D590)
  {
    sub_100001B74(&qword_10004D598, &qword_10003D370);
    sub_10001F708();
    sub_10001F83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D590);
  }

  return result;
}

unint64_t sub_10001F708()
{
  result = qword_10004D5A0;
  if (!qword_10004D5A0)
  {
    sub_100001B74(&qword_10004D5A8, &qword_10003D378);
    sub_10001F7F4(&qword_10004D5B0, type metadata accessor for PlaceholderView);
    sub_10001F7F4(&qword_10004D5B8, type metadata accessor for EmptyStateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D5A0);
  }

  return result;
}

uint64_t sub_10001F7F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001F83C()
{
  result = qword_10004D5C0;
  if (!qword_10004D5C0)
  {
    sub_100001B74(&qword_10004D5C8, &qword_10003D380);
    sub_10001F7F4(&qword_10004D5D0, type metadata accessor for CenteredInformationView);
    sub_10001F7F4(&qword_10004D5D8, type metadata accessor for TemplateInformationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D5C0);
  }

  return result;
}

uint64_t sub_10001F928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001FA10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001FA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FABC()
{
  sub_100001B74(&qword_10004D580, &qword_10003D368);
  sub_10001F5C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001FB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001FBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WidgetGridBackground()
{
  result = qword_10004D660;
  if (!qword_10004D660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001FCB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100009AB0(v2, &v17 - v11, &qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10003A458();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10003A858();
    v16 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001FEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39[1] = a1;
  v44 = a2;
  v45 = sub_100039868();
  v42 = *(v45 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v45);
  v43 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = v39 - v5;
  v6 = sub_100039828();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v39[0] = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003A458();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_100001B2C(&qword_10004D6A0, &qword_10003D520);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v39 - v23;
  sub_10003A7A8();
  v41 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10001FCB0(v17);
  sub_10003A448();
  sub_100020370();
  v25 = sub_10003A628();
  v26 = *(v11 + 8);
  v26(v14, v10);
  v26(v17, v10);
  if (v25)
  {
    v27 = v39[0];
    sub_100039818();
    (*(v7 + 32))(v24, v27, v6);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v7 + 56))(v24, v28, 1, v6);
  v29 = v40;
  sub_100039858();
  v30 = v24;
  sub_100009AB0(v24, v21, &qword_10004D6A0, &qword_10003D520);
  v31 = v42;
  v32 = v43;
  v33 = *(v42 + 16);
  v34 = v45;
  v33(v43, v29, v45);
  v35 = v44;
  sub_100009AB0(v21, v44, &qword_10004D6A0, &qword_10003D520);
  v36 = sub_100001B2C(&qword_10004D6A8, &unk_10003D528);
  v33((v35 + *(v36 + 48)), v32, v34);
  v37 = *(v31 + 8);
  v37(v29, v34);
  sub_1000203C8(v30);
  v37(v32, v34);
  sub_1000203C8(v21);
}

uint64_t sub_100020324@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10003A3D8();
  a1[1] = v3;
  v4 = sub_100001B2C(&qword_10004D698, &qword_10003D518);
  return sub_10001FEB0(v1, a1 + *(v4 + 44));
}

unint64_t sub_100020370()
{
  result = qword_10004D070;
  if (!qword_10004D070)
  {
    sub_10003A458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D070);
  }

  return result;
}

uint64_t sub_1000203C8(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004D6A0, &qword_10003D520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100020434()
{
  result = qword_10004D6B0;
  if (!qword_10004D6B0)
  {
    sub_100001B74(&qword_10004D6B8, &qword_10003D538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D6B0);
  }

  return result;
}

uint64_t type metadata accessor for WidgetItemEntity()
{
  result = qword_10004D788;
  if (!qword_10004D788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002064C()
{
  v0 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100039678();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100039078();
  sub_100004650(v7, qword_100050160);
  sub_100004618(v7, qword_100050160);
  sub_100039658();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100039068();
}

uint64_t sub_1000207BC()
{
  v0 = sub_100039998();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for WidgetItemEntityQuery();
  sub_100004650(v7, qword_100050178);
  v8 = sub_100004618(v7, qword_100050178);
  sub_100039988();
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  v12 = v8 + *(v7 + 20);
  result = sub_100039988();
  *v8 = &unk_10003D7E0;
  v8[1] = v11;
  return result;
}

uint64_t sub_100020990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v97 = sub_100039168();
  v96 = *(v97 - 8);
  v3 = *(v96 + 64);
  __chkstk_darwin(v97);
  v88 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001B2C(&qword_10004D7F8, "X8");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v98 = (&v88 - v7);
  v8 = sub_100001B2C(&qword_10004D800, "X8");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v88 - v12;
  v109 = sub_1000391A8();
  v92 = *(v109 - 8);
  v13 = *(v92 + 64);
  __chkstk_darwin(v109);
  v91 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001B2C(&qword_10004D808, "X8");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v116 = &v88 - v17;
  v18 = sub_100001B2C(&qword_10004D810, "X8");
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v115 = &v88 - v20;
  v21 = sub_100038EB8();
  v117 = *(v21 - 8);
  v118 = v21;
  v22 = *(v117 + 64);
  __chkstk_darwin(v21);
  v95 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v90 = &v88 - v25;
  v26 = sub_100038E98();
  v103 = *(v26 - 8);
  v104 = v26;
  v27 = *(v103 + 64);
  __chkstk_darwin(v26);
  v110 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v89 = &v88 - v30;
  v31 = sub_100039598();
  v32 = *(v31 - 8);
  v101 = v31;
  v102 = v32;
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v100 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100038F18();
  v113 = *(v35 - 8);
  v114 = v35;
  v36 = *(v113 + 64);
  __chkstk_darwin(v35);
  v111 = &v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v112 = &v88 - v39;
  v99 = sub_100039478();
  v40 = *(v99 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v99);
  v43 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000393F8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v88 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for WidgetItemEntity();
  v50 = v49[5];
  sub_100001B2C(&qword_10004D818, &qword_10003D7B8);
  *(a2 + v50) = sub_100038F58();
  v51 = v49[6];
  sub_100001B2C(&qword_10004D820, &qword_10003D7C0);
  v108 = sub_100038F48();
  *(a2 + v51) = v108;
  v52 = v49[7];
  sub_100001B2C(&qword_10004D828, &qword_10003D7C8);
  *(a2 + v52) = sub_100038F68();
  v53 = sub_100039638();
  v106 = *(v53 - 8);
  v107 = v53;
  v54 = a2;
  v55 = v105;
  (*(v106 + 16))(v54, v105);
  sub_100039408();
  v56 = sub_1000393E8();
  v58 = v57;
  (*(v45 + 8))(v48, v44);
  v119 = v56;
  v120 = v58;
  v59 = v55;
  v60 = v100;
  sub_100038F38();
  sub_100039488();
  LOBYTE(v56) = sub_100039468();
  (*(v40 + 8))(v43, v99);
  v61 = v101;
  LOBYTE(v119) = v56 & 1;
  sub_100038F38();
  sub_1000395A8();
  v62 = v102;
  v63 = (*(v102 + 88))(v60, v61);
  if (v63 == enum case for ItemModel.Owner.other(_:))
  {
    (*(v62 + 96))(v60, v61);
    v64 = *(sub_100001B2C(&qword_10004D830, &unk_10003D7D0) + 48);
    v65 = v92;
    v66 = v91;
    (*(v92 + 32))(v91, v60, v109);
    v67 = v93;
    sub_1000225BC(&v60[v64], v93);
    (*(v103 + 104))(v110, enum case for IntentPerson.Identifier.unknown(_:), v104);
    v68 = v94;
    sub_10002262C(v67, v94);
    v69 = v96;
    v70 = 1;
    v71 = v97;
    v72 = (*(v96 + 48))(v68, 1, v97);
    v73 = v98;
    if (v72 != 1)
    {
      v74 = v88;
      (*(v69 + 32))(v88, v68, v71);
      v75 = sub_100039158();
      v77 = v76;
      (*(v69 + 8))(v74, v71);
      *v73 = v75;
      v73[1] = v77;
      (*(v117 + 104))(v73, enum case for IntentPerson.Name.displayName(_:), v118);
      v70 = 0;
    }

    v79 = v117;
    v78 = v118;
    (*(v117 + 56))(v73, v70, 1, v118);
    v80 = *(v79 + 48);
    if (v80(v73, 1, v78) == 1)
    {
      (*(v79 + 104))(v95, enum case for IntentPerson.Name.unknown(_:), v78);
      if (v80(v73, 1, v78) != 1)
      {
        sub_100009B18(v73, &qword_10004D7F8, "X8");
      }
    }

    else
    {
      (*(v79 + 32))(v95, v73, v78);
    }

    sub_100021610(v115);
    v84 = sub_100038FD8();
    (*(*(v84 - 8) + 56))(v116, 1, 1, v84);
    v83 = v112;
    sub_100038EA8();
    sub_100009B18(v67, &qword_10004D800, "X8");
    (*(v65 + 8))(v66, v109);
    goto LABEL_11;
  }

  if (v63 == enum case for ItemModel.Owner.myself(_:))
  {
    (*(v103 + 104))(v89, enum case for IntentPerson.Identifier.unknown(_:), v104);
    (*(v117 + 104))(v90, enum case for IntentPerson.Name.unknown(_:), v118);
    v81 = sub_100038F08();
    (*(*(v81 - 8) + 56))(v115, 1, 1, v81);
    v82 = sub_100038FD8();
    (*(*(v82 - 8) + 56))(v116, 1, 1, v82);
    v83 = v112;
    sub_100038EA8();
LABEL_11:
    v86 = v113;
    v85 = v114;
    (*(v113 + 16))(v111, v83, v114);
    sub_100038F38();
    (*(v106 + 8))(v59, v107);
    return (*(v86 + 8))(v83, v85);
  }

  result = sub_10003A938();
  __break(1u);
  return result;
}

uint64_t sub_100021610@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100038EF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100039178();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039188();
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    sub_100039198();
    (*(v3 + 104))(v6, enum case for IntentPerson.Handle.Label.other(_:), v2);
    sub_100038EC8();
LABEL_7:
    v13 = sub_100038F08();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  if (v12 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    sub_100039198();
    (*(v3 + 104))(v6, enum case for IntentPerson.Handle.Label.other(_:), v2);
    sub_100038ED8();
    goto LABEL_7;
  }

  if (v12 == enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    sub_100039198();
    sub_100038EE8();
    goto LABEL_7;
  }

  result = sub_10003A938();
  __break(1u);
  return result;
}

uint64_t sub_1000218C4@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_100001B2C(&qword_10004D808, "X8");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v23[0] = v23 - v3;
  v4 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - v6;
  v8 = sub_100039678();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1000393F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003A668();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_10003A658();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_10003A648(v24);
  sub_100039408();
  v18 = sub_1000393E8();
  v20 = v19;
  (*(v12 + 8))(v15, v11);
  v25._countAndFlagsBits = v18;
  v25._object = v20;
  sub_10003A638(v25);

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10003A648(v26);
  sub_100039668();
  (*(v9 + 56))(v7, 1, 1, v8);
  v21 = sub_100038FD8();
  (*(*(v21 - 8) + 56))(v23[0], 1, 1, v21);
  return sub_100038FE8();
}

uint64_t sub_100021BDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for WidgetItemEntityQuery();
  v3 = sub_100004618(v2, qword_100050178);

  return sub_10002269C(v3, a1);
}

uint64_t sub_100021E28@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C310 != -1)
  {
    swift_once();
  }

  v2 = sub_100039078();
  v3 = sub_100004618(v2, qword_100050160);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100021ED4()
{
  result = qword_10004D718;
  if (!qword_10004D718)
  {
    sub_100001B74(&qword_10004D720, &qword_10003D6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D718);
  }

  return result;
}

uint64_t sub_100021F38(uint64_t a1)
{
  v2 = sub_1000224C0(&qword_10004D6E8, type metadata accessor for WidgetItemEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100022000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000427C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000220C4(uint64_t a1)
{
  v2 = sub_1000224C0(&qword_10004D708, type metadata accessor for WidgetItemEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100022154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039638();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100022224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100039638();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000222DC()
{
  sub_100039638();
  if (v0 <= 0x3F)
  {
    sub_100022508(319, &qword_10004D798, sub_1000223D8);
    if (v1 <= 0x3F)
    {
      sub_10002242C();
      if (v2 <= 0x3F)
      {
        sub_100022508(319, &qword_10004D7B8, sub_100022568);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1000223D8()
{
  result = qword_10004D7A0;
  if (!qword_10004D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D7A0);
  }

  return result;
}

void sub_10002242C()
{
  if (!qword_10004D7A8)
  {
    sub_100038F18();
    sub_1000224C0(&qword_10004D7B0, &type metadata accessor for IntentPerson);
    v0 = sub_100038F78();
    if (!v1)
    {
      atomic_store(v0, &qword_10004D7A8);
    }
  }
}

uint64_t sub_1000224C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100022508(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_100038F78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100022568()
{
  result = qword_10004D7C0;
  if (!qword_10004D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D7C0);
  }

  return result;
}

uint64_t sub_1000225BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D800, "X8");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002262C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D800, "X8");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002269C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetItemEntityQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022700()
{
  v1 = sub_100039998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100022788(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_100039998() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100022868;

  return sub_100028358(a1, a2, v2 + v7);
}

uint64_t sub_100022868(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata accessor for WidgetItemEntityQuery()
{
  result = qword_10004D8C0;
  if (!qword_10004D8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022A00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100039638();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_100001B2C(&qword_10004D8F8, &qword_10003D9A0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v7 = sub_100039558();
  v2[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_100001B2C(&qword_10004D900, &qword_10003D9A8);
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100022BA8, 0, 0);
}

uint64_t sub_100022BA8()
{
  v10 = v0;
  v1 = *(v0 + 24);
  *(v0 + 144) = *(type metadata accessor for WidgetItemEntityQuery() + 20);
  v2 = sub_100039978();
  v3 = sub_10003A868();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B570, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100003214(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_100022D28;
  v7 = *(v0 + 24);

  return sub_1000234A4(0);
}

uint64_t sub_100022D28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_100023258;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_100022E50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100022E50()
{
  v1 = v0[14];
  v2 = v0[11];
  v33 = v0[12];
  v3 = v0[10];
  v31 = v0[17];
  v32 = v0[4];
  sub_10003A7C8();
  sub_10003A7B8();
  sub_1000281A8(&qword_10004D908, &type metadata accessor for ItemModel.Tag);
  sub_100039298();
  sub_100001B2C(&qword_10004D910, &qword_10003D9C0);
  sub_1000281A8(&qword_10004D918, &type metadata accessor for ItemModel);
  sub_1000281A8(&qword_10004D920, &type metadata accessor for ItemModel);
  sub_1000281A8(&qword_10004D928, &type metadata accessor for ItemModel);
  sub_1000281A8(&qword_10004D930, &type metadata accessor for ItemModel);
  sub_1000073FC(&qword_10004D938, &qword_10004D910, &qword_10003D9C0);
  sub_1000392C8();
  v4 = sub_1000392B8();
  if (*(v4 + 16))
  {
    (*(v0[5] + 16))(v0[9], v4 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)), v0[4]);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[4];
  v9 = v0[5];

  v10 = 1;
  (*(v9 + 56))(v6, v5, 1, v8);
  sub_100025D94(v6, v7);
  v11 = (*(v9 + 48))(v7, 1, v8);
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v15 = v0[9];
  if (v11 != 1)
  {
    v16 = v0[7];
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    v20 = v0[2];
    (*(v18 + 32))(v16, v0[8], v19);
    (*(v18 + 16))(v17, v16, v19);
    sub_100020990(v17, v20);
    (*(v18 + 8))(v16, v19);
    v10 = 0;
  }

  sub_100009B18(v15, &qword_10004D8F8, &qword_10003D9A0);
  (*(v13 + 8))(v12, v14);
  v21 = v0[14];
  v22 = v0[11];
  v24 = v0[8];
  v23 = v0[9];
  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[2];
  v28 = type metadata accessor for WidgetItemEntity();
  (*(*(v28 - 8) + 56))(v27, v10, 1, v28);

  v29 = v0[1];

  return v29();
}

uint64_t sub_100023258()
{
  v23 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 144);
  v3 = *(v0 + 24);
  swift_errorRetain();
  v4 = sub_100039978();
  v5 = sub_10003A848();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B570, &v22);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - error: %{public}@", v8, 0x16u);
    sub_100009B18(v9, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v10);
  }

  else
  {
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  v18 = *(v0 + 16);
  v19 = type metadata accessor for WidgetItemEntity();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000234A4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100038F28();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100023564, 0, 0);
}

uint64_t sub_100023564()
{
  v21 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(v0 + 88) = *(type metadata accessor for WidgetItemEntityQuery() + 20);

  v3 = sub_100039978();
  v4 = sub_10003A868();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B590, &v20);
    *(v6 + 12) = 2080;
    *(v0 + 16) = v5;

    v7 = sub_10003A6B8();
    v9 = sub_10002AF20(v7, v8, &v20);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - will call fetchWithOptions: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 32);
  v12 = *v11;
  v13 = v11[1];
  sub_1000281A8(&qword_10004D840, type metadata accessor for WidgetItemEntityQuery);
  sub_100039028();
  v19 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_100023810;
  v16 = *(v0 + 56);
  v17 = *(v0 + 24);

  return v19(v17, v16);
}

uint64_t sub_100023810(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v10 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100023B34;
  }

  else
  {
    v8 = sub_100023984;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100023984()
{
  v16 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);

  v4 = sub_100039978();
  v5 = sub_10003A868();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B590, &v15);
    *(v7 + 12) = 2080;
    sub_100039638();
    v8 = sub_10003A738();
    v10 = sub_10002AF20(v8, v9, &v15);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - did receive fetchWithOptions: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 56);

  v12 = *(v0 + 8);
  v13 = *(v0 + 72);

  return v12(v13);
}

uint64_t sub_100023B34()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100023B98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100039638();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(type metadata accessor for WidgetItemEntity() - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100023CBC, 0, 0);
}

uint64_t sub_100023CBC()
{
  v18 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for WidgetItemEntityQuery() + 20);

  v4 = sub_100039978();
  v5 = sub_10003A868();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10002AF20(0x7365697469746E65, 0xEE00293A726F6628, &v17);
    *(v7 + 12) = 2082;
    sub_100039548();
    v8 = sub_10003A738();
    v10 = sub_10002AF20(v8, v9, &v17);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - ids: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[2];

  v13 = sub_100027DA8(v12);
  v0[10] = v13;

  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_100023EC4;
  v15 = v0[3];

  return sub_1000234A4(v13);
}

uint64_t sub_100023EC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1000241D8;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_100023FE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100023FE0()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = v0[8];
    v3 = v0[5];
    sub_100025E24(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v21 = *(v3 + 56);
    v20 = (v3 - 8);
    v6 = v4;
    do
    {
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v10 = v0[4];
      v6(v8, v5, v10);
      v6(v9, v8, v10);
      sub_100020990(v9, v7);
      (*v20)(v8, v10);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100025E24(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[9];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      sub_100028144(v13, _swiftEmptyArrayStorage + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v12);
      v5 += v21;
      --v2;
    }

    while (v2);
  }

  v14 = v0[12];

  v15 = v0[9];
  v17 = v0[6];
  v16 = v0[7];

  v18 = v0[1];

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_1000241D8()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_100024260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_1000395F8();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v53 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100001B2C(&qword_10004D948, &qword_10003D9D0);
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v52);
  v49 = &v37 - v9;
  v51 = sub_100001B2C(&qword_10004D950, &qword_10003D9D8);
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v51);
  v13 = &v37 - v12;
  v14 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v50 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = sub_100039678();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = sub_100001B2C(&qword_10004D900, &qword_10003D9A8);
  v22 = sub_1000392A8();
  v23 = *(v22 + 16);
  if (v23)
  {
    v38 = v21;
    v39 = v19;
    v40 = a2;
    v41 = a1;
    v55 = &_swiftEmptyArrayStorage;
    sub_100025E44(0, v23, 0);
    v24 = v13;
    v25 = v55;
    v27 = *(v7 + 16);
    v26 = v7 + 16;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v37 = v22;
    v29 = v22 + v28;
    v45 = *(v26 + 56);
    v46 = v27;
    v43 = (v26 - 8);
    v44 = (v4 + 8);
    v42 = v10 + 32;
    v47 = v10;
    v48 = v26;
    v30 = v49;
    do
    {
      v31 = v52;
      v46(v30, v29, v52);
      v32 = v53;
      sub_100039378();
      sub_1000395E8();
      v33 = (*v44)(v32, v54);
      __chkstk_darwin(v33);
      *(&v37 - 2) = v30;
      type metadata accessor for WidgetItemEntity();
      sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity);
      sub_100038FA8();
      (*v43)(v30, v31);
      v55 = v25;
      v35 = v25[2];
      v34 = v25[3];
      if (v35 >= v34 >> 1)
      {
        sub_100025E44(v34 > 1, v35 + 1, 1);
        v25 = v55;
      }

      v25[2] = v35 + 1;
      (*(v47 + 32))(v25 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v35, v24, v51);
      v29 += v45;
      --v23;
    }

    while (v23);

    a1 = v41;
    v21 = v38;
  }

  else
  {
  }

  type metadata accessor for WidgetItemEntity();
  sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity);
  sub_100038FB8();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

uint64_t sub_1000247C0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100039558();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_100001B2C(&qword_10004D900, &qword_10003D9A8);
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000248C8, 0, 0);
}

uint64_t sub_1000248C8()
{
  v11 = v0;
  v1 = *(v0 + 32);
  v2 = v1 + *(type metadata accessor for WidgetItemEntityQuery() + 20);
  v3 = sub_100039978();
  v4 = sub_10003A868();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10002AF20(0x7469746E456C6C61, 0xED00002928736569, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100003214(v6);
  }

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_100024A4C;
  v8 = *(v0 + 32);

  return sub_1000234A4(0);
}

uint64_t sub_100024A4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[9];
    v7 = v4[10];
    v9 = v4[6];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v4[12] = a1;

    return _swift_task_switch(sub_100024BAC, 0, 0);
  }
}

uint64_t sub_100024BAC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v8 = v0[12];
  v9 = v0[7];
  v4 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  sub_10003A7C8();
  sub_100039578();
  sub_1000281A8(&qword_10004D940, &type metadata accessor for ItemModel.Sort);
  sub_10003A908();
  sub_100027F44(v0[2]);

  sub_1000281A8(&qword_10004D908, &type metadata accessor for ItemModel.Tag);
  sub_100039298();
  sub_100039638();
  sub_100001B2C(&qword_10004D910, &qword_10003D9C0);
  sub_1000281A8(&qword_10004D918, &type metadata accessor for ItemModel);
  sub_1000281A8(&qword_10004D920, &type metadata accessor for ItemModel);
  sub_1000281A8(&qword_10004D928, &type metadata accessor for ItemModel);
  sub_1000281A8(&qword_10004D930, &type metadata accessor for ItemModel);
  sub_1000073FC(&qword_10004D938, &qword_10004D910, &qword_10003D9C0);
  sub_1000392C8();
  (*(v3 + 16))(v1, v2, v9);
  sub_100024260(v1, v10);
  (*(v3 + 8))(v2, v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100024EA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000427C;

  return sub_1000247C0(a1);
}

uint64_t sub_100025014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100039998();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_100039988();
  v11 = *(v5 + 32);
  v11(v7, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v11((v13 + v12), v7, v4);
  v14 = a2 + *(a1 + 20);
  result = sub_100039988();
  *a2 = &unk_10003D7E0;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000251C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100028278;

  return sub_100023B98(a1);
}

uint64_t sub_100025258(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000281A8(&qword_10004D988, type metadata accessor for WidgetItemEntityQuery);
  *v6 = v2;
  v6[1] = sub_1000049F0;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v7);
}

uint64_t sub_10002533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000253FC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000253FC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000255D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000281A8(&qword_10004D6D8, type metadata accessor for WidgetItemEntityQuery);
  *v6 = v2;
  v6[1] = sub_1000049F0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000256B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000427C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100025780(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100039998();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100025840(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100039998();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000258E4()
{
  result = sub_100039998();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100025960()
{
  v39 = sub_100039638();
  v0 = *(v39 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v39);
  v38 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for WidgetItemEntity();
  v3 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v37 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001B2C(&qword_10004D958, &qword_10003D9E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v29 - v8;
  sub_100001B2C(&qword_10004D948, &qword_10003D9D0);
  v10 = sub_100039368();
  v11 = *(v10 + 16);
  if (v11)
  {
    v13 = *(v0 + 16);
    v12 = v0 + 16;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v29[1] = v10;
    v15 = v10 + v14;
    v33 = *(v12 + 56);
    v34 = v13;
    v31 = (v6 + 8);
    v32 = v6 + 16;
    v16 = &_swiftEmptyArrayStorage;
    v30 = xmmword_10003C0C0;
    v35 = v6;
    v36 = v12;
    do
    {
      v17 = v38;
      v34(v38, v15, v39);
      v18 = v37;
      sub_100020990(v17, v37);
      sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity);
      v19 = v9;
      sub_100038E58();
      sub_1000280E8(v18);
      sub_100001B2C(&qword_10004D960, &qword_10003D9F0);
      v20 = *(v6 + 72);
      v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v30;
      v23 = v22 + v21;
      v9 = v19;
      (*(v6 + 16))(v23, v19, v5);
      v24 = sub_100038E38();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10002AC10(0, v16[2] + 1, 1, v16);
      }

      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        v16 = sub_10002AC10((v25 > 1), v26 + 1, 1, v16);
      }

      v6 = v35;
      (*v31)(v19, v5);
      v16[2] = v26 + 1;
      v16[v26 + 4] = v24;
      v15 += v33;
      --v11;
    }

    while (v11);
  }

  sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity);
  sub_100038E28();

  v27 = sub_100038E48();

  return v27;
}

uint64_t sub_100025D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D8F8, &qword_10003D9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100025E04(char *a1, int64_t a2, char a3)
{
  result = sub_100025E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100025E24(size_t a1, int64_t a2, char a3)
{
  result = sub_100025F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100025E44(size_t a1, int64_t a2, char a3)
{
  result = sub_100026140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100025E64(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004D9A8, &qword_10003DA28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_100025F68(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100001B2C(&qword_10004D990, &qword_10003DA10);
  v10 = *(type metadata accessor for WidgetItemEntity() - 8);
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
  v15 = *(type metadata accessor for WidgetItemEntity() - 8);
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

size_t sub_100026140(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100001B2C(&qword_10004D968, &qword_10003D9F8);
  v10 = *(sub_100001B2C(&qword_10004D950, &qword_10003D9D8) - 8);
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
  v15 = *(sub_100001B2C(&qword_10004D950, &qword_10003D9D8) - 8);
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

uint64_t sub_100026330(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100039548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier);
  v36 = a2;
  v13 = sub_10003A5F8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000281A8(&qword_10004D998, &type metadata accessor for ItemModel.UniqueIdentifier);
      v23 = sub_10003A628();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100026FA8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100026610(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100039578();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort);
  v36 = a2;
  v13 = sub_10003A5F8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000281A8(&qword_10004D978, &type metadata accessor for ItemModel.Sort);
      v23 = sub_10003A628();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100027270(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1000268F0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100039548();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100001B2C(&qword_10004D9A0, &unk_10003DA18);
  result = sub_10003A8D8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier);
      result = sub_10003A5F8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100026C4C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100039578();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100001B2C(&qword_10004D980, &qword_10003DA00);
  result = sub_10003A8D8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort);
      result = sub_10003A5F8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100026FA8(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_100039548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000268F0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100027538(&type metadata accessor for ItemModel.UniqueIdentifier, &qword_10004D9A0, &unk_10003DA18);
      goto LABEL_12;
    }

    sub_100027770(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier);
  v16 = sub_10003A5F8();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1000281A8(&qword_10004D998, &type metadata accessor for ItemModel.UniqueIdentifier);
      v24 = sub_10003A628();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10003A9A8();
  __break(1u);
  return result;
}

uint64_t sub_100027270(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_100039578();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100026C4C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100027538(&type metadata accessor for ItemModel.Sort, &qword_10004D980, &qword_10003DA00);
      goto LABEL_12;
    }

    sub_100027A8C(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort);
  v16 = sub_10003A5F8();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1000281A8(&qword_10004D978, &type metadata accessor for ItemModel.Sort);
      v24 = sub_10003A628();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10003A9A8();
  __break(1u);
  return result;
}

void *sub_100027538(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_100001B2C(a2, a3);
  v12 = *v3;
  v13 = sub_10003A8C8();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_100027770(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100039548();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100001B2C(&qword_10004D9A0, &unk_10003DA18);
  v10 = sub_10003A8D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier);
      result = sub_10003A5F8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100027A8C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100039578();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100001B2C(&qword_10004D980, &qword_10003DA00);
  v10 = sub_10003A8D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort);
      result = sub_10003A5F8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100027DA8(uint64_t a1)
{
  v2 = sub_100039548();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier);
  result = sub_10003A7D8();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_100026330(v9, v6);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100027F44(uint64_t a1)
{
  v2 = sub_100039578();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort);
  result = sub_10003A7D8();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_100026610(v9, v6);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1000280E8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetItemEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetItemEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000281A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000281F0()
{
  v1 = sub_100039998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10002828C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000282DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_100028330(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100028358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_100001B2C(&qword_10004D9B8, &qword_10003DAA8) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = *(*(sub_100001B2C(&qword_10004D9C0, &qword_10003DAB0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_100039708();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = sub_100039548();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100028508, 0, 0);
}

uint64_t sub_100028508()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(SPOwnerSession) init];
  v3 = v2;
  v0[16] = v2;
  if (v1)
  {
    v50 = v2;
    v4 = v0[3];
    v7 = *(v4 + 56);
    v6 = v4 + 56;
    v5 = v7;
    v8 = -1;
    v9 = -1 << *(v0[3] + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v5;
    v11 = v0[10];
    v12 = (63 - v9) >> 6;
    v57 = (v11 + 56);
    v52 = (v11 + 8);
    v53 = (v11 + 16);
    v58 = v0[14];
    v56 = (v11 + 48);
    v48 = v11;
    v49 = (v11 + 32);
    v59 = v0[3];

    v19 = 0;
    v51 = &_swiftEmptyArrayStorage;
    v54 = v12;
    v55 = v6;
LABEL_5:
    v20 = v19;
    if (!v10)
    {
      goto LABEL_7;
    }

    do
    {
      v19 = v20;
LABEL_10:
      v21 = v0[6];
      (*(v58 + 16))(v0[15], *(v59 + 48) + *(v58 + 72) * (__clz(__rbit64(v10)) | (v19 << 6)), v0[13]);
      sub_100039518();
      v22 = sub_100039438();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v21, 1, v22) == 1)
      {
        (*v57)(v0[7], 1, 1, v0[9]);
      }

      else
      {
        v24 = v0[11];
        v25 = v0[9];
        v26 = v0[7];
        v27 = v0[5];
        sub_100009AB0(v0[6], v27, &qword_10004D9B8, &qword_10003DAA8);
        sub_100039418();
        (*v53)(v26, v24, v25);
        (*v57)(v26, 0, 1, v25);
        (*v52)(v24, v25);
        (*(v23 + 8))(v27, v22);
      }

      v10 &= v10 - 1;
      v28 = v0[15];
      v29 = v0[13];
      v31 = v0[8];
      v30 = v0[9];
      v32 = v0[7];
      sub_100009B18(v0[6], &qword_10004D9B8, &qword_10003DAA8);
      sub_10002B5D0(v32, v31);
      (*(v58 + 8))(v28, v29);
      if ((*v56)(v31, 1, v30) != 1)
      {
        v33 = *v49;
        (*v49)(v0[12], v0[8], v0[9]);
        v12 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_10002AD44(0, *(v51 + 2) + 1, 1, v51, &qword_10004D9D0, &qword_10003DAD0, &type metadata accessor for UUID);
        }

        v35 = *(v51 + 2);
        v34 = *(v51 + 3);
        if (v35 >= v34 >> 1)
        {
          v51 = sub_10002AD44(v34 > 1, v35 + 1, 1, v51, &qword_10004D9D0, &qword_10003DAD0, &type metadata accessor for UUID);
        }

        v36 = v0[12];
        v37 = v0[9];
        *(v51 + 2) = v35 + 1;
        v13 = v33(&v51[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35], v36, v37);
        v6 = v55;
        goto LABEL_5;
      }

      v13 = sub_100009B18(v0[8], &qword_10004D9C0, &qword_10003DAB0);
      v20 = v19;
      v12 = v54;
      v6 = v55;
    }

    while (v10);
LABEL_7:
    while (1)
    {
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v19 >= v12)
      {
        v38 = v0[9];

        v39 = objc_opt_self();
        isa = sub_10003A728().super.isa;

        v41 = [v39 fmipItemContextForBeaconUUIDs:isa];

        v3 = v50;
        goto LABEL_23;
      }

      v10 = *(v6 + 8 * v19);
      ++v20;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = [objc_opt_self() fmipItemContext];
LABEL_23:
    v0[17] = v41;
    v42 = swift_allocObject();
    v0[18] = v42;
    *(v42 + 16) = v3;
    *(v42 + 24) = v41;
    v43 = async function pointer to withTimeout<A>(_:block:)[1];
    v44 = v3;
    v45 = v41;
    v46 = swift_task_alloc();
    v0[19] = v46;
    v18 = sub_100001B2C(&qword_10004D9C8, &qword_10003DAC8);
    *v46 = v0;
    v46[1] = sub_100028AD4;
    v16 = &unk_10003DAC0;
    v14 = 0xD02AB486CEDC0000;
    v13 = (v0 + 2);
    v15 = 0;
    v17 = v42;
  }

  return withTimeout<A>(_:block:)(v13, v14, v15, v16, v17, v18);
}

uint64_t sub_100028AD4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_100028F34;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_100028BF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100028BF0()
{
  v31 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = sub_100039978();
  v4 = sub_10003A868();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_10002AF20(0x6576694C6C616572, 0xEA00000000002928, v30);
    *(v5 + 12) = 2050;
    if (v2 >> 62)
    {
      v7 = sub_10003A948();
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 14) = v7;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s - appBeacons.count: %{public}ld", v5, 0x16u);
    sub_100003214(v6);
  }

  else
  {
  }

  v8 = v0[20];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  v11 = sub_100029008(sub_10002B5B4, v10, v2);

  v12 = sub_100039978();
  v13 = sub_10003A868();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[16];
  v16 = v0[17];
  if (v14)
  {
    v17 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10002AF20(0x6576694C6C616572, 0xEA00000000002928, v30);
    *(v17 + 12) = 2080;
    sub_100039638();
    v18 = sub_10003A738();
    v20 = sub_10002AF20(v18, v19, v30);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - result: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v0[15];
  v22 = v0[11];
  v23 = v0[12];
  v25 = v0[7];
  v24 = v0[8];
  v27 = v0[5];
  v26 = v0[6];

  v28 = v0[1];

  return v28(v11);
}

uint64_t sub_100028F34()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[5];
  v9 = v0[6];

  v11 = v0[1];
  v12 = v0[20];

  return v11();
}

void *sub_100029008(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_100001B2C(&qword_10004D8F8, &qword_10003D9A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_100039638();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  __chkstk_darwin(v10);
  v38 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v31 = &v29 - v15;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v27)
  {
    v17 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v33 = (v32 + 32);
    v34 = (v32 + 48);
    v39 = v14;
    v40 = &_swiftEmptyArrayStorage;
    v29 = a1;
    v30 = a3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v14 = sub_10003A918();
      }

      else
      {
        if (v17 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(a3 + 8 * v17 + 32);
      }

      v18 = v14;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v41 = v14;
      a1(&v41);
      if (v3)
      {

        return v40;
      }

      v20 = v39;
      if ((*v34)(v9, 1, v39) == 1)
      {
        v14 = sub_100009B18(v9, &qword_10004D8F8, &qword_10003D9A0);
      }

      else
      {
        v21 = *v33;
        v22 = v31;
        (*v33)(v31, v9, v20);
        v21(v38, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_10002AD44(0, v40[2] + 1, 1, v40, &qword_10004D9E0, &qword_10003DAE0, &type metadata accessor for ItemModel);
        }

        v24 = v40[2];
        v23 = v40[3];
        if (v24 >= v23 >> 1)
        {
          v40 = sub_10002AD44(v23 > 1, v24 + 1, 1, v40, &qword_10004D9E0, &qword_10003DAE0, &type metadata accessor for ItemModel);
        }

        v25 = v39;
        v26 = v40;
        v40[2] = v24 + 1;
        v14 = (v21)(v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v38, v25);
        a1 = v29;
        a3 = v30;
      }

      ++v17;
      if (v19 == v35)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v14;
    i = sub_10003A948();
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000293B8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = sub_100039498();
  v105 = *(v3 - 8);
  v106 = v3;
  v4 = *(v105 + 64);
  __chkstk_darwin(v3);
  v104 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000394A8();
  v101 = *(v103 - 8);
  v6 = *(v101 + 64);
  __chkstk_darwin(v103);
  v102 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100039448();
  v8 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v100 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100039568();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  __chkstk_darwin(v96);
  v98 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100039478();
  v93 = *(v94 - 8);
  v12 = *(v93 + 64);
  __chkstk_darwin(v94);
  v97 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100039598();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v112 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1000394F8();
  v90 = *(v91 - 8);
  v17 = *(v90 + 64);
  __chkstk_darwin(v91);
  v111 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000393F8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v110 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100039438();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v89 = v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100039548();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v108 = v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000395D8();
  v115 = *(v28 - 8);
  v29 = *(v115 + 64);
  __chkstk_darwin(v28);
  v92 = v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v87 - v32;
  __chkstk_darwin(v34);
  v107 = v87 - v35;
  v36 = sub_100039708();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  v42 = sub_100039978();
  v43 = sub_10003A838();

  v44 = os_log_type_enabled(v42, v43);
  v88 = v33;
  v87[1] = v40;
  v114 = v41;
  if (v44)
  {
    v45 = v41;
    v46 = v40;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v109 = v28;
    v117 = v48;
    *v47 = 136315394;
    *(v47 + 4) = sub_10002AF20(0x6576694C6C616572, 0xEA00000000002928, &v117);
    *(v47 + 12) = 2080;
    v49 = [v45 identifier];
    sub_1000396F8();

    sub_10002B798(&qword_10004DA20, &type metadata accessor for UUID);
    v50 = sub_10003A988();
    v52 = v51;
    (*(v37 + 8))(v46, v36);
    v53 = sub_10002AF20(v50, v52, &v117);

    *(v47 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s - compactMap %s", v47, 0x16u);
    swift_arrayDestroy();
    v28 = v109;
  }

  v54 = v116;
  if (qword_10004C320 != -1)
  {
    swift_once();
  }

  v55 = qword_10004D9B0;
  v56 = v114;
  v57 = [v114 type];
  v117 = v57;
  __chkstk_darwin(v57);
  v86 = &v117;
  v58 = v113;
  LOBYTE(v55) = sub_10002B640(sub_10002B778, v85, v55);

  v59 = [v56 isAppleAudioAccessory];
  v60 = 1;
  if ((v55 & 1) != 0 && (v59 & 1) == 0)
  {
    v61 = [v56 role];
    if (v61)
    {
      v62 = v61;
      v63 = [v56 batteryLevel];
      v113 = v58;
      if (v63 <= 4)
      {
LABEL_9:
        v117 = &_swiftEmptyArrayStorage;
LABEL_15:
        sub_10002B798(&qword_10004D9E8, &type metadata accessor for ItemModel.Battery);
        sub_100001B2C(&qword_10004D9F0, &qword_10003DAE8);
        sub_1000073FC(&qword_10004D9F8, &qword_10004D9F0, &qword_10003DAE8);
        v69 = v88;
        sub_10003A8B8();
        (*(v115 + 32))(v107, v69, v28);
        v70 = [v56 identifier];
        sub_1000396F8();

        sub_100039428();
        sub_100039528();
        v71 = [v56 name];
        sub_10003A6A8();

        sub_1000393D8();
        v87[0] = v62;
        v72 = [v62 roleEmoji];
        sub_10003A6A8();

        v73 = v28;
        v109 = v28;
        v74 = v111;
        sub_1000394B8();
        (*(v90 + 104))(v74, enum case for ItemModel.ImageDefinition.emoji(_:), v91);
        v75 = [v56 owner];
        v76 = [v75 destination];

        sub_10003A6A8();
        sub_100039588();
        v77 = [v56 connected];
        v78 = v97;
        *v97 = v77;
        (*(v93 + 104))(v78, enum case for ItemModel.Relationship.another(_:), v94);
        (*(v95 + 104))(v98, enum case for ItemModel.Kind.item(_:), v96);
        v79 = v107;
        (*(v115 + 16))(v92, v107, v73);
        v117 = &_swiftEmptyArrayStorage;
        sub_10002B798(&qword_10004DA00, &type metadata accessor for ItemModel.Capabilities);
        sub_100001B2C(&qword_10004DA08, &qword_10003DAF0);
        sub_1000073FC(&qword_10004DA10, &qword_10004DA08, &qword_10003DAF0);
        v80 = v100;
        sub_10003A8B8();
        v81 = v102;
        (*(v101 + 104))(v102, enum case for ItemModel.PlaySoundState.unknown(_:), v103);
        v82 = v104;
        (*(v105 + 104))(v104, enum case for ItemModel.LostModeState.unknown(_:), v106);
        v85[1] = v81;
        v86 = v82;
        v85[0] = v80;
        v54 = v116;
        sub_100039618();

        (*(v115 + 8))(v79, v109);
        v60 = 0;
        goto LABEL_16;
      }

      if (v63 == 5)
      {
        sub_100001B2C(&qword_10004DA18, &qword_10003DAF8);
        v67 = *(v115 + 72);
        v68 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v66 = swift_allocObject();
        v66[1] = xmmword_10003C0C0;
        sub_1000395B8();
      }

      else
      {
        if (v63 != 6)
        {
          goto LABEL_9;
        }

        sub_100001B2C(&qword_10004DA18, &qword_10003DAF8);
        v64 = *(v115 + 72);
        v65 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v66 = swift_allocObject();
        v66[1] = xmmword_10003C0C0;
        sub_1000395C8();
      }

      v117 = v66;
      goto LABEL_15;
    }
  }

LABEL_16:
  v83 = sub_100039638();
  return (*(*(v83 - 8) + 56))(v54, v60, 1, v83);
}

id sub_10002A158()
{
  sub_100001B2C(&qword_10004DA28, &qword_10003DB00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10003DA90;
  v1 = SPBeaconTypeAccessory;
  v2 = SPBeaconTypeDurian;
  v5 = SPBeaconTypeDurian;
  *(v0 + 32) = SPBeaconTypeAccessory;
  *(v0 + 40) = v2;
  qword_10004D9B0 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_10002A1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10002A204, 0, 0);
}

uint64_t sub_10002A204()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_100001B2C(&qword_10004D9C8, &qword_10003DAC8);
  *v3 = v0;
  v3[1] = sub_10002A304;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v0 + 16, 0xD000000000000023, 0x800000010003B5B0, sub_10002B7E0, v1, v4);
}

uint64_t sub_10002A304()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10002A440;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10002A420;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002A440()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_10002A4A4(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = sub_10002B7E8;
  v13 = a1;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10002A84C;
  v11 = &unk_10004B0C0;
  v6 = _Block_copy(&v8);

  v12 = sub_10002B808;
  v13 = a1;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10002AA94;
  v11 = &unk_10004B0E8;
  v7 = _Block_copy(&v8);

  [a2 startUpdatingApplicationBeaconsWithContext:a3 collectionDifference:v6 completion:v7];
  _Block_release(v7);
  _Block_release(v6);
}

uint64_t sub_10002A600(uint64_t a1, void *a2)
{
  v4 = sub_100001B2C(&qword_10004DA38, &qword_10003DB10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = sub_100001B2C(&qword_10004DA30, &qword_10003DB08);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v15 - v11;
  if (a2)
  {
    v16 = a2;
    swift_errorRetain();
    sub_1000390E8();
  }

  else
  {
    sub_100009AB0(a1, &v15 - v11, &qword_10004DA30, &qword_10003DB08);
    if ((*(v5 + 48))(v12, 1, v4) == 1 || ((*(v5 + 32))(v8, v12, v4), v15 = _swiftEmptyArrayStorage, sub_100001B2C(&qword_10004D9C8, &qword_10003DAC8), sub_1000073FC(&qword_10004DA48, &qword_10004D9C8, &qword_10003DAC8), sub_10003A828(), (*(v5 + 8))(v8, v4), (v14 = v16) == 0))
    {
      v14 = _swiftEmptyArrayStorage;
    }

    v16 = v14;
    sub_1000390F8();
  }
}

uint64_t sub_10002A84C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100001B2C(&qword_10004DA30, &qword_10003DB08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_10002B810();
    sub_10003A958();
    v12 = sub_100001B2C(&qword_10004DA38, &qword_10003DB10);
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_100001B2C(&qword_10004DA38, &qword_10003DB10);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100009B18(v9, &qword_10004DA30, &qword_10003DB08);
}

void sub_10002A9C4(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000390E8();
  }

  else if ((a1 & 1) == 0)
  {
    v2 = objc_allocWithZone(NSError);
    v3 = sub_10003A678();
    v4 = [v2 initWithDomain:v3 code:367237 userInfo:0];

    v5 = v4;
    sub_1000390E8();
  }
}

void sub_10002AA94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

char *sub_10002AB0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004D9A8, &qword_10003DA28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_10002AC10(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100001B2C(&qword_10004DA50, &qword_10003DB18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001B2C(&qword_10004DA58, &unk_10003DB20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10002AD44(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10002AF20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002AFEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000031B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003214(v11);
  return v7;
}

unint64_t sub_10002AFEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002B0F8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_10003A928();
    a6 = v11;
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

char *sub_10002B0F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002B144(a1, a2);
  sub_10002B274(&off_10004A3C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002B144(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10002B360(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10003A928();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10003A6E8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002B360(v10, 0);
        result = sub_10003A8E8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002B274(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10002B3D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10002B360(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001B2C(&qword_10004D9D8, &qword_10003DAD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002B3D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004D9D8, &qword_10003DAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10002B4C8()
{

  return swift_deallocObject();
}

uint64_t sub_10002B508(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000427C;

  return sub_10002A1E0(a1, v5, v4);
}

uint64_t sub_10002B5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D9C0, &qword_10003DAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B640(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002B6E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10003A6A8();
  v6 = v5;
  if (v4 == sub_10003A6A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10003A998();
  }

  return v9 & 1;
}

uint64_t sub_10002B798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002B7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002B810()
{
  result = qword_10004DA40;
  if (!qword_10004DA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004DA40);
  }

  return result;
}

uint64_t sub_10002B878(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s12DependenciesVMa_1();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002B938(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s12DependenciesVMa_1();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ItemsWidget()
{
  result = qword_10004DAB8;
  if (!qword_10004DAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002BA28()
{
  result = _s12DependenciesVMa_1();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002BAC0@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = _s12DependenciesVMa_1();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001B2C(&qword_10004C398, &qword_10003BC40);
  v92 = *(v6 - 8);
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v9 = &v87 - v8;
  v93 = sub_100001B2C(&qword_10004C390, &qword_10003BC38);
  v94 = *(v93 - 8);
  v10 = *(v94 + 64);
  __chkstk_darwin(v93);
  v12 = &v87 - v11;
  v13 = sub_100001B2C(&qword_10004C388, &qword_10003BC30);
  v14 = *(v13 - 8);
  v100 = v13;
  v101 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v91 = &v87 - v16;
  v17 = sub_100001B2C(&qword_10004C380, &qword_10003BC28);
  v18 = *(v17 - 8);
  v102 = v17;
  v103 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v95 = &v87 - v20;
  v21 = sub_100001B2C(&qword_10004C378, &qword_10003BC20);
  v22 = *(v21 - 8);
  v104 = v21;
  v105 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v96 = &v87 - v24;
  v25 = sub_100001B2C(&qword_10004DAF0, &qword_10003DB88);
  v26 = *(v25 - 8);
  v106 = v25;
  v107 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v97 = &v87 - v28;
  v29 = sub_100001B2C(&qword_10004DAF8, &qword_10003DB90);
  v30 = *(v29 - 8);
  v108 = v29;
  *&v109 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v98 = &v87 - v32;
  v33 = sub_100001B2C(&qword_10004DB00, &qword_10003DB98);
  v34 = *(v33 - 8);
  v110 = v33;
  v111 = v34;
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v99 = &v87 - v36;
  v37 = *v1;
  v38 = v1[1];
  v90 = v1 + *(type metadata accessor for ItemsWidget() + 20);
  sub_10002C850(v90, v5, _s12DependenciesVMa_1);
  v39 = type metadata accessor for ItemsWidgetProvider(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();

  v113 = sub_10002FBF0(v5);
  type metadata accessor for WidgetEntryView(0);
  sub_10002C808(&qword_10004DB08, type metadata accessor for WidgetEntryView);
  sub_10002C808(&qword_10004DB10, type metadata accessor for ItemsWidgetProvider);
  sub_10003A528();
  sub_100039DA8();
  v42 = sub_10003A128();
  v44 = v43;
  LOBYTE(v39) = v45;
  v46 = sub_100001BBC();
  sub_100039E58();
  sub_100009880(v42, v44, v39 & 1);

  (*(v92 + 8))(v9, v6);
  sub_100039DA8();
  v47 = sub_10003A128();
  v49 = v48;
  v51 = v50;
  v113 = v6;
  v114 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v91;
  v54 = v93;
  sub_100039E18();
  sub_100009880(v47, v49, v51 & 1);

  (*(v94 + 8))(v12, v54);
  v94 = sub_100001B2C(&qword_10004DB18, &qword_10003DBA0);
  v55 = sub_10003A4A8();
  v88 = v55;
  v56 = *(v55 - 8);
  v57 = *(v56 + 72);
  v58 = *(v56 + 80);
  v89 = (v58 + 32) & ~v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_10003DA90;
  v60 = v59 + ((v58 + 32) & ~v58);
  LODWORD(v92) = enum case for WidgetFamily.systemSmall(_:);
  v61 = *(v56 + 104);
  v87 = v61;
  v61(v60);
  (v61)(v60 + v57, enum case for WidgetFamily.systemMedium(_:), v55);
  v113 = v54;
  v114 = OpaqueTypeConformance2;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v95;
  v64 = v100;
  sub_100039E28();

  v65 = (*(v101 + 8))(v53, v64);
  v66 = *(v90 + 8);
  (*v90)(v65);
  v113 = v64;
  v114 = v62;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v96;
  v69 = v102;
  sub_100039E88();
  (*(v103 + 8))(v63, v69);
  v113 = v69;
  v114 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v97;
  v72 = v104;
  sub_100039E68();
  (*(v105 + 8))(v68, v72);
  v113 = v72;
  v114 = v70;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v98;
  v75 = v106;
  sub_100039E48();
  (*(v107 + 8))(v71, v75);
  v113 = v75;
  v114 = v73;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v99;
  v78 = v108;
  sub_100039E78();
  (*(v109 + 8))(v74, v78);
  sub_100001B2C(&qword_10004DB20, &qword_10003DBA8);
  v79 = *(sub_10003A4C8() - 8);
  v80 = *(v79 + 72);
  v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v82 = swift_allocObject();
  v109 = xmmword_10003C0C0;
  *(v82 + 16) = xmmword_10003C0C0;
  sub_10003A4B8();
  v83 = v89;
  v84 = swift_allocObject();
  *(v84 + 16) = v109;
  v87(v84 + v83, v92, v88);
  v113 = v78;
  v114 = v76;
  swift_getOpaqueTypeConformance2();
  v85 = v110;
  sub_100039E38();

  return (*(v111 + 8))(v77, v85);
}

uint64_t sub_10002C6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ItemsWidgetProvider.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10002C850(a1, v7, type metadata accessor for ItemsWidgetProvider.Entry);
  sub_10002DBF8(v7, a2);
}

uint64_t sub_10002C7C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000022;
  a2[1] = 0x800000010003B6D0;
  return sub_100037EFC((a2 + *(a1 + 20)));
}

uint64_t sub_10002C808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C8B8()
{
  sub_100001B74(&qword_10004DB00, &qword_10003DB98);
  sub_100001B74(&qword_10004DAF8, &qword_10003DB90);
  sub_100001B74(&qword_10004DAF0, &qword_10003DB88);
  sub_100001B74(&qword_10004C378, &qword_10003BC20);
  sub_100001B74(&qword_10004C380, &qword_10003BC28);
  sub_100001B74(&qword_10004C388, &qword_10003BC30);
  sub_100001B74(&qword_10004C390, &qword_10003BC38);
  sub_100001B74(&qword_10004C398, &qword_10003BC40);
  sub_100001BBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002CAD8@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = sub_100039998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v26[0] = type metadata accessor for ItemsWidget();
  v8 = *(*(v26[0] - 8) + 64);
  __chkstk_darwin(v26[0]);
  v10 = (v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0xD000000000000022;
  v10[1] = 0x800000010003B6D0;
  v12 = (v10 + *(v11 + 20));
  v13 = [objc_allocWithZone(ACAccountStore) init];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = type metadata accessor for AccountStore();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100039988();
  *(v18 + 112) = &unk_10003DC08;
  *(v18 + 120) = v14;
  v19 = _s12DependenciesVMa_1();
  v20 = v12 + *(v19 + 24);
  sub_1000392E8();
  sub_100039988();
  v21 = *(v2 + 32);
  v21(v4, v7, v1);
  v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = swift_allocObject();
  v21((v23 + v22), v4, v1);
  *v12 = sub_100038154;
  v12[1] = 0;
  v12[2] = v18;
  v24 = (v12 + *(v19 + 28));
  *v24 = &unk_10003D7E0;
  v24[1] = v23;
  sub_10002CFD4();
  sub_100039E08();
  return sub_10002D02C(v10);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10002CE00();
  sub_100039A38();
  return 0;
}

unint64_t sub_10002CE00()
{
  result = qword_10004DB28;
  if (!qword_10004DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DB28);
  }

  return result;
}

uint64_t sub_10002CE80()
{

  return swift_deallocObject();
}

uint64_t sub_10002CEB8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100022868;

  return sub_100002BF8(v2);
}

uint64_t sub_10002CF4C()
{
  v1 = sub_100039998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10002CFD4()
{
  result = qword_10004DB30;
  if (!qword_10004DB30)
  {
    type metadata accessor for ItemsWidget();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DB30);
  }

  return result;
}

uint64_t sub_10002D02C(uint64_t a1)
{
  v2 = type metadata accessor for ItemsWidget();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D088()
{
  type metadata accessor for ItemsWidget();
  sub_10002CFD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for ItemsWidgetDynamicOptionsProvider()
{
  result = qword_10004DB98;
  if (!qword_10004DB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002D1BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002D208()
{
  result = qword_10004D858;
  if (!qword_10004D858)
  {
    sub_100001B74(&qword_10004D860, qword_10003DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D858);
  }

  return result;
}

void sub_10002D26C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for ItemsWidgetDynamicOptionsProvider() + 20);
  sub_100039988();
  v7 = a3 + *(type metadata accessor for WidgetItemEntityQuery() + 20);
  sub_100039988();
  *a3 = a1;
  a3[1] = a2;
  oslog = sub_100039978();
  v8 = sub_10003A868();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10002AF20(0xD000000000000013, 0x800000010003B700, &v12);
    _os_log_impl(&_mh_execute_header, oslog, v8, "%s", v9, 0xCu);
    sub_100003214(v10);
  }
}

uint64_t sub_10002D3FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002D41C, 0, 0);
}

uint64_t sub_10002D41C()
{
  v12 = v0;
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for ItemsWidgetDynamicOptionsProvider() + 20);
  v3 = sub_100039978();
  v4 = sub_10003A868();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10002AF20(0x52746C7561666564, 0xEF2928746C757365, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100003214(v6);
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_10002D5A0;
  v8 = v0[2];
  v9 = v0[3];

  return sub_100022A00(v8);
}

uint64_t sub_10002D5A0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002D694(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002D6B4, 0, 0);
}

uint64_t sub_10002D6B4()
{
  v12 = v0;
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for ItemsWidgetDynamicOptionsProvider() + 20);
  v3 = sub_100039978();
  v4 = sub_10003A868();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10002AF20(0x2873746C75736572, 0xE900000000000029, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100003214(v6);
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_10002D5A0;
  v8 = v0[2];
  v9 = v0[3];

  return sub_1000247C0(v8);
}

uint64_t sub_10002D830(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000427C;

  return sub_10002D694(a1);
}

uint64_t sub_10002D8C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000427C;

  return sub_10002D3FC(a1);
}

uint64_t sub_10002D974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetItemEntityQuery();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100039998();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002DA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetItemEntityQuery();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100039998();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002DB74()
{
  result = type metadata accessor for WidgetItemEntityQuery();
  if (v1 <= 0x3F)
  {
    result = sub_100039998();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002DBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v3 = sub_100039258();
  v177 = *(v3 - 8);
  v178 = v3;
  v4 = *(v177 + 64);
  __chkstk_darwin(v3);
  v176 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for LoadedView.Callout(0);
  v6 = *(*(v181 - 8) + 64);
  __chkstk_darwin(v181);
  v183 = (&v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100001B2C(&qword_10004C780, "P*");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v182 = &v159 - v10;
  v11 = sub_1000391C8();
  v174 = *(v11 - 8);
  v175 = v11;
  v12 = *(v174 + 64);
  __chkstk_darwin(v11);
  v173 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v180 = &v159 - v16;
  v17 = sub_1000391F8();
  v171 = *(v17 - 8);
  v172 = v17;
  v18 = *(v171 + 64);
  __chkstk_darwin(v17);
  v169 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_100039218();
  v168 = *(v170 - 8);
  v20 = *(v168 + 64);
  __chkstk_darwin(v170);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo(0);
  v23 = *(v184 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v184);
  v179 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001B2C(&qword_10004DBD0, &unk_10003DFD0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v185 = &v159 - v31;
  v32 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
  v36 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  v38 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v159 - v40;
  v42 = sub_100001B2C(&qword_10004D268, &qword_10003D1D8);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v159 - v47;
  __chkstk_darwin(v49);
  v189 = &v159 - v50;
  v51 = *(type metadata accessor for ItemsWidgetProvider.Entry(0) + 20);
  v186 = a1;
  sub_10002EEE8(a1 + v51, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = *v35;
      v53 = *(v35 + 1);
      v162 = *(v35 + 2);
      v55 = v35[24];
      LODWORD(v164) = v35[25];
      v56 = &v35[*(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48)];
      v57 = v185;
      sub_100007308(v56, v185, &qword_10004DBD0, &unk_10003DFD0);
      v190 = 0;
      v191 = 0xE000000000000000;
      sub_10003A8F8(40);

      v190 = 0xD000000000000018;
      v191 = 0x800000010003B720;

      v192._countAndFlagsBits = v54;
      v192._object = v53;
      sub_10003A6D8(v192);
      v165 = v53;

      v193._countAndFlagsBits = 0x656C65733D706F26;
      v193._object = 0xEE006D6574497463;
      sub_10003A6D8(v193);
      sub_100039688();

      v58 = v41;
      if (v55 == 1)
      {
        v167 = sub_100039DA8();
        v60 = v59;
        v62 = v61;
        v166 = v63;
      }

      else
      {
        v167 = 0;
        v60 = 0;
        v62 = 0;
        v166 = 0;
      }

      if (v164)
      {
        v78 = 0xD000000000000011;
      }

      else
      {
        v78 = 0;
      }

      if (v164)
      {
        v79 = 0x800000010003B770;
      }

      else
      {
        v79 = 0;
      }

      sub_10002EF4C(v57, v29);
      v80 = (*(v23 + 48))(v29, 1, v184);
      v164 = v79;
      v163 = v78;
      if (v80 != 1)
      {
        v161 = v62;
        v84 = v179;
        sub_10002F01C(v29, v179, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
        sub_100039228();
        v86 = v171;
        v85 = v172;
        v87 = v169;
        (*(v171 + 104))(v169, enum case for PublishedLocation.Label.DetailLevel.compact(_:), v172);
        sub_100039208();
        v159 = v88;
        v160 = v89;
        (*(v86 + 8))(v87, v85);
        (*(v168 + 8))(v22, v170);
        if (v60)
        {
          v90 = v166;
          v91 = v161;
          v92 = v167;
        }

        else
        {

          v92 = sub_100039DC8();
          v60 = v136;
          v91 = v137;
        }

        v167 = v92;
        v138 = v160;
        v172 = v60;
        v161 = v91;
        v166 = v90;
        if (v160)
        {
          sub_10003A7A8();

          sub_10003A798();
          sub_10003A758();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v171 = sub_100039DC8();
          v140 = v139;
          v142 = v141;
          v144 = v143;

          v138 = v142 & 1;
        }

        else
        {

          v171 = 0;
          v140 = 0;
          v144 = 0;
        }

        v145 = v180;
        sub_100039278();
        v146 = sub_100039128();
        (*(*(v146 - 8) + 56))(v145, 0, 1, v146);
        v147 = v173;
        sub_1000391D8();
        sub_1000391B8();
        (*(v174 + 8))(v147, v175);
        v148 = v162;
        v149 = v176;
        sub_100039268();
        v150 = v183;
        v151 = v183 + *(v181 + 20);
        sub_100039248();
        (*(v177 + 8))(v149, v178);
        *v150 = v148;
        v152 = *(v84 + *(v184 + 20));
        if (v152)
        {
          sub_10003A7A8();
          v153 = v152;
          sub_10003A798();
          sub_10003A758();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          sub_10002EFBC(v186, type metadata accessor for ItemsWidgetProvider.Entry);
          sub_100009B18(v185, &qword_10004DBD0, &unk_10003DFD0);

          v84 = v179;
        }

        else
        {

          sub_10002EFBC(v186, type metadata accessor for ItemsWidgetProvider.Entry);
          sub_100009B18(v185, &qword_10004DBD0, &unk_10003DFD0);
        }

        sub_10002EFBC(v84, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
        v154 = v172;
        *v38 = v167;
        *(v38 + 1) = v154;
        v38[16] = v161 & 1;
        v155 = v171;
        *(v38 + 3) = v166;
        *(v38 + 4) = v155;
        *(v38 + 5) = v140;
        *(v38 + 6) = v138;
        *(v38 + 7) = v144;
        v156 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
        sub_100007308(v180, &v38[v156[6]], &qword_10004C778, &unk_10003C4D0);
        sub_100007308(v182, &v38[v156[7]], &qword_10004C780, "P*");
        v157 = &v38[v156[8]];
        v158 = v164;
        *v157 = v163;
        *(v157 + 1) = v158;
        sub_10002F01C(v183, &v38[v156[9]], type metadata accessor for LoadedView.Callout);
        *&v38[v156[10]] = v152;
        swift_storeEnumTagMultiPayload();
        sub_10002F01C(v38, v58, type metadata accessor for WidgetEntryViewContent.Model.State);
        v133 = v188;
        v65 = v189;
        goto LABEL_32;
      }

      sub_100009B18(v29, &qword_10004DBD0, &unk_10003DFD0);
      if (v60)
      {
        v65 = v189;
        v81 = v62;
        v82 = v60;
        v83 = v166;
      }

      else
      {
        sub_1000391E8();
        v167 = sub_100039DC8();
        v82 = v121;
        v81 = v122;
        v83 = v123;
        v65 = v189;
      }

      sub_10002EFBC(v186, type metadata accessor for ItemsWidgetProvider.Entry);
      sub_100009B18(v57, &qword_10004DBD0, &unk_10003DFD0);
      v124 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
      v125 = v124[6];
      v126 = sub_100039128();
      (*(*(v126 - 8) + 56))(v58 + v125, 1, 1, v126);
      v127 = v124[7];
      v128 = sub_100039398();
      v129 = *(*(v128 - 8) + 56);
      v129(v58 + v127, 1, 1, v128);
      v130 = (v58 + v124[9]);
      v129(v130 + *(v181 + 20), 1, 1, v128);

      *v130 = v162;
      *v58 = v167;
      *(v58 + 8) = v82;
      *(v58 + 16) = v81 & 1;
      *(v58 + 24) = v83;
      *(v58 + 32) = 0u;
      *(v58 + 48) = 0u;
      v131 = (v58 + v124[8]);
      v132 = v164;
      *v131 = v163;
      v131[1] = v132;
      *(v58 + v124[10]) = 0;
    }

    else
    {
      sub_10002EFBC(v186, type metadata accessor for ItemsWidgetProvider.Entry);
      v77 = sub_100039698();
      v65 = v189;
      (*(*(v77 - 8) + 56))(v189, 1, 1, v77);
      v58 = v41;
    }

LABEL_31:
    swift_storeEnumTagMultiPayload();
    v133 = v188;
LABEL_32:
    sub_100007308(v65, v133, &qword_10004D268, &qword_10003D1D8);
    v134 = type metadata accessor for WidgetEntryViewContent.Model(0);
    return sub_10002F01C(v58, v133 + *(v134 + 20), type metadata accessor for WidgetEntryViewContent.Model.State);
  }

  v64 = *v35;
  if (v64 == 1)
  {
    v109 = sub_100039698();
    v65 = v189;
    (*(*(v109 - 8) + 56))(v189, 1, 1, v109);
    v110 = sub_100039DA8();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    sub_10002EFBC(v186, type metadata accessor for ItemsWidgetProvider.Entry);
    v58 = v41;
    *v41 = v110;
    *(v41 + 1) = v112;
    v41[16] = v114 & 1;
    *(v41 + 3) = v116;
    goto LABEL_31;
  }

  v65 = v189;
  v58 = v41;
  if (v64 != 3)
  {
    if (v64 == 2)
    {
      v66 = sub_100039698();
      (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
      if (qword_10004C370 != -1)
      {
        swift_once();
      }

      v67 = sub_100039958();
      v68 = sub_100004618(v67, qword_100050250);
      (*(*(v67 - 8) + 16))(v41, v68, v67);
      v69 = sub_100039DA8();
      v71 = v70;
      v73 = v72;
      v75 = v74;
      sub_10002EFBC(v186, type metadata accessor for ItemsWidgetProvider.Entry);
      v76 = v58 + *(type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(0) + 20);
      *v76 = v69;
      *(v76 + 8) = v71;
      *(v76 + 16) = v73 & 1;
      *(v76 + 24) = v75;
      goto LABEL_31;
    }

    v117 = sub_100039698();
    (*(*(v117 - 8) + 56))(v48, 1, 1, v117);
    sub_100007308(v48, v65, &qword_10004D268, &qword_10003D1D8);
    v95 = sub_100039DA8();
    v97 = v118;
    v99 = v119;
    v101 = v120;
    v102 = 0;
    v104 = 0;
    v108 = 0;
    v106 = 0;
    goto LABEL_28;
  }

  sub_100039688();
  v93 = sub_100039698();
  v94 = *(v93 - 8);
  if ((*(v94 + 48))(v45, 1, v93) != 1)
  {
    (*(v94 + 32))(v48, v45, v93);
    (*(v94 + 56))(v48, 0, 1, v93);
    sub_100007308(v48, v65, &qword_10004D268, &qword_10003D1D8);
    v95 = sub_100039DA8();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = sub_100039DA8();
    v104 = v103;
    v106 = v105;
    v108 = v107 & 1;
LABEL_28:
    sub_10002EFBC(v186, type metadata accessor for ItemsWidgetProvider.Entry);
    *v58 = v95;
    *(v58 + 8) = v97;
    *(v58 + 16) = v99 & 1;
    *(v58 + 24) = v101;
    *(v58 + 32) = v102;
    *(v58 + 40) = v104;
    *(v58 + 48) = v108;
    *(v58 + 56) = v106;
    goto LABEL_31;
  }

  result = sub_100009B18(v45, &qword_10004D268, &qword_10003D1D8);
  __break(1u);
  return result;
}

uint64_t sub_10002EEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004DBD0, &unk_10003DFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EFBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002F01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002F084()
{
  result = qword_10004DBE0;
  if (!qword_10004DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBE0);
  }

  return result;
}

unint64_t sub_10002F0DC()
{
  result = qword_10004DBE8;
  if (!qword_10004DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBE8);
  }

  return result;
}

unint64_t sub_10002F134()
{
  result = qword_10004DBF0;
  if (!qword_10004DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBF0);
  }

  return result;
}

uint64_t sub_10002F1D8()
{
  v0 = sub_100039678();
  sub_100004650(v0, qword_100050190);
  sub_100004618(v0, qword_100050190);
  return sub_100039658();
}

uint64_t sub_10002F23C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C328 != -1)
  {
    swift_once();
  }

  v2 = sub_100039678();
  v3 = sub_100004618(v2, qword_100050190);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002F2E4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002FAAC();
  *v5 = v2;
  v5[1] = sub_100003C58;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_10002F390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002F478();
  *a1 = result;
  return result;
}

uint64_t sub_10002F3B8(uint64_t a1)
{
  v2 = sub_10002F424();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002F424()
{
  result = qword_10004DBF8;
  if (!qword_10004DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBF8);
  }

  return result;
}

uint64_t sub_10002F478()
{
  v0 = sub_100039048();
  v43 = *(v0 - 8);
  v44 = v0;
  v1 = *(v43 + 64);
  __chkstk_darwin(v0);
  v41 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100039998();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v36 - v7;
  v42 = type metadata accessor for ItemsWidgetDynamicOptionsProvider();
  v9 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v39 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100001B2C(&qword_10004DC00, &qword_10003DE78);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v36[0] = v36 - v15;
  v17 = sub_100001B2C(&qword_10004DC08, &unk_10003DE80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v36 - v19;
  v36[1] = v36 - v19;
  v21 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v36 - v23;
  v25 = sub_100039678();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v38 = sub_100001B2C(&qword_10004DC10, &qword_10003DE90);
  sub_100039658();
  (*(v26 + 56))(v24, 1, 1, v25);
  v28 = type metadata accessor for WidgetItemEntity();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  v29 = sub_100038E88();
  v30 = *(*(v29 - 8) + 56);
  v30(v16, 1, 1, v29);
  v30(v37, 1, 1, v29);
  sub_100039988();
  v31 = *(v3 + 32);
  v32 = v40;
  v31(v5, v8, v40);
  v33 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v34 = swift_allocObject();
  v31((v34 + v33), v5, v32);
  sub_10002D26C(&unk_10003D7E0, v34, v39);
  (*(v43 + 104))(v41, enum case for InputConnectionBehavior.default(_:), v44);
  sub_10002D1BC(&qword_10004DC18, type metadata accessor for ItemsWidgetDynamicOptionsProvider);
  sub_10002D1BC(&qword_10004D6E8, type metadata accessor for WidgetItemEntity);
  return sub_100038F98();
}

uint64_t sub_10002FA24()
{
  v1 = sub_100039998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10002FAAC()
{
  result = qword_10004DC20;
  if (!qword_10004DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DC20);
  }

  return result;
}

uint64_t sub_10002FB28(uint64_t a1)
{
  v2 = sub_100039B58();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_100039C18();
}

uint64_t sub_10002FBF0(uint64_t a1)
{
  sub_100039988();
  sub_10003713C(a1, v1 + OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_dependencies, _s12DependenciesVMa_1);

  v3 = sub_100039978();
  v4 = sub_10003A868();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_10002FDB0(0xD000000000000013, 0x800000010003B700);
    v9 = sub_10002AF20(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100003214(v6);
  }

  sub_1000371A4(a1, _s12DependenciesVMa_1);
  return v1;
}

unint64_t sub_10002FDB0(uint64_t a1, void *a2)
{
  sub_10003A8F8(27);

  v5._countAndFlagsBits = sub_10003A618();
  sub_10003A6D8(v5);

  v6._countAndFlagsBits = 2108704;
  v6._object = 0xE300000000000000;
  sub_10003A6D8(v6);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_10003A6D8(v7);
  return 0xD000000000000014;
}

uint64_t sub_10002FE64()
{

  v0 = sub_100039978();
  v1 = sub_10003A868();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 136446210;
    v7 = v3;
    sub_10003A8F8(27);

    v9._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v9);

    v10._countAndFlagsBits = 2108704;
    v10._object = 0xE300000000000000;
    sub_10003A6D8(v10);
    v11._object = 0x800000010003B920;
    v11._countAndFlagsBits = 0xD000000000000010;
    sub_10003A6D8(v11);
    v4 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v7);

    *(v2 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "%{public}s", v2, 0xCu);
    sub_100003214(v3);
  }

  sub_1000396C8();
  v5 = *(type metadata accessor for ItemsWidgetProvider.Entry(0) + 20);
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100030048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for WidgetItemEntityQuery();
  v4[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v7 = sub_100001B2C(&qword_10004D860, qword_10003DC10);
  v4[15] = v7;
  v8 = *(v7 - 8);
  v4[16] = v8;
  v9 = *(v8 + 64) + 15;
  v4[17] = swift_task_alloc();
  v10 = type metadata accessor for ItemsWidgetProvider.Entry(0);
  v4[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v12 = type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo(0);
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = sub_100039888();
  v4[25] = v15;
  v16 = *(v15 - 8);
  v4[26] = v16;
  v17 = *(v16 + 64) + 15;
  v4[27] = swift_task_alloc();
  v18 = sub_1000397C8();
  v4[28] = v18;
  v19 = *(v18 - 8);
  v4[29] = v19;
  v20 = *(v19 + 64) + 15;
  v4[30] = swift_task_alloc();
  v21 = sub_10003A4A8();
  v4[31] = v21;
  v22 = *(v21 - 8);
  v4[32] = v22;
  v23 = *(v22 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v24 = sub_1000393C8();
  v4[35] = v24;
  v25 = *(v24 - 8);
  v4[36] = v25;
  v26 = *(v25 + 64) + 15;
  v4[37] = swift_task_alloc();
  v27 = sub_100039288();
  v4[38] = v27;
  v28 = *(v27 - 8);
  v4[39] = v28;
  v29 = *(v28 + 64) + 15;
  v4[40] = swift_task_alloc();
  v30 = sub_100039338();
  v4[41] = v30;
  v31 = *(v30 - 8);
  v4[42] = v31;
  v32 = *(v31 + 64) + 15;
  v4[43] = swift_task_alloc();
  v33 = sub_1000392D8();
  v4[44] = v33;
  v34 = *(v33 - 8);
  v4[45] = v34;
  v35 = *(v34 + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v36 = sub_100001B2C(&qword_10004DD08, &qword_10003DFE0);
  v4[50] = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v38 = *(*(sub_100001B2C(&qword_10004DD10, &qword_10003DFE8) - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v39 = sub_1000392F8();
  v4[57] = v39;
  v40 = *(v39 - 8);
  v4[58] = v40;
  v41 = *(v40 + 64) + 15;
  v4[59] = swift_task_alloc();
  v42 = sub_100039358();
  v4[60] = v42;
  v43 = *(v42 - 8);
  v4[61] = v43;
  v44 = *(v43 + 64) + 15;
  v4[62] = swift_task_alloc();
  v45 = sub_1000395D8();
  v4[63] = v45;
  v46 = *(v45 - 8);
  v4[64] = v46;
  v47 = *(v46 + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v48 = sub_100039478();
  v4[67] = v48;
  v49 = *(v48 - 8);
  v4[68] = v49;
  v50 = *(v49 + 64) + 15;
  v4[69] = swift_task_alloc();
  v51 = sub_100039548();
  v4[70] = v51;
  v52 = *(v51 - 8);
  v4[71] = v52;
  v53 = *(v52 + 64) + 15;
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v54 = *(*(sub_100001B2C(&qword_10004DD18, &qword_10003DFF0) - 8) + 64) + 15;
  v4[74] = swift_task_alloc();
  v55 = sub_1000397E8();
  v4[75] = v55;
  v56 = *(v55 - 8);
  v4[76] = v56;
  v57 = *(v56 + 64) + 15;
  v4[77] = swift_task_alloc();
  v58 = sub_100039938();
  v4[78] = v58;
  v59 = *(v58 - 8);
  v4[79] = v59;
  v60 = *(v59 + 64) + 15;
  v4[80] = swift_task_alloc();
  v61 = *(*(sub_100001B2C(&qword_10004DD20, &qword_10003DFF8) - 8) + 64) + 15;
  v4[81] = swift_task_alloc();
  v62 = sub_100039918();
  v4[82] = v62;
  v63 = *(v62 - 8);
  v4[83] = v63;
  v64 = *(v63 + 64) + 15;
  v4[84] = swift_task_alloc();
  v65 = sub_1000394F8();
  v4[85] = v65;
  v66 = *(v65 - 8);
  v4[86] = v66;
  v67 = *(v66 + 64) + 15;
  v4[87] = swift_task_alloc();
  v68 = *(*(sub_100001B2C(&qword_10004DD28, &qword_10003E000) - 8) + 64) + 15;
  v4[88] = swift_task_alloc();
  v69 = sub_100039B58();
  v4[89] = v69;
  v70 = *(v69 - 8);
  v4[90] = v70;
  v71 = *(v70 + 64) + 15;
  v4[91] = swift_task_alloc();
  v72 = sub_100001B2C(&qword_10004DD30, &qword_10003E008);
  v4[92] = v72;
  v73 = *(*(v72 - 8) + 64) + 15;
  v4[93] = swift_task_alloc();
  v74 = *(*(sub_100001B2C(&qword_10004DD38, &unk_10003E010) - 8) + 64) + 15;
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v75 = sub_10003A558();
  v4[97] = v75;
  v76 = *(v75 - 8);
  v4[98] = v76;
  v77 = *(v76 + 64) + 15;
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v78 = *(*(sub_100001B2C(&qword_10004DC08, &unk_10003DE80) - 8) + 64) + 15;
  v4[101] = swift_task_alloc();
  v79 = type metadata accessor for WidgetItemEntity();
  v4[102] = v79;
  v80 = *(v79 - 8);
  v4[103] = v80;
  v81 = *(v80 + 64) + 15;
  v4[104] = swift_task_alloc();

  return _swift_task_switch(sub_100030B24, 0, 0);
}

uint64_t sub_100030B24()
{
  v14 = v0;
  v1 = v0[12];
  v0[105] = OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_logger;

  v2 = sub_100039978();
  v3 = sub_10003A868();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136446210;
    sub_10003A8F8(27);

    v13[1] = 0xD000000000000014;
    v13[2] = 0x800000010003B900;
    v16._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v16);

    v17._countAndFlagsBits = 2108704;
    v17._object = 0xE300000000000000;
    sub_10003A6D8(v17);
    v18._object = 0x800000010003B8E0;
    v18._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v18);
    v7 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, v13);

    *(v5 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s - Start", v5, 0xCu);
    sub_100003214(v6);
  }

  v8 = v0[12];
  v9 = OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_dependencies;
  v0[106] = OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_dependencies;
  v10 = *(v8 + v9 + 16);
  v11 = swift_task_alloc();
  v0[107] = v11;
  *v11 = v0;
  v11[1] = sub_100030D54;

  return sub_100002374();
}

uint64_t sub_100030D54(char a1)
{
  v3 = *(*v2 + 856);
  v6 = *v2;
  *(*v2 + 43) = a1;

  if (v1)
  {
    v4 = sub_100034CF8;
  }

  else
  {
    v4 = sub_100030E68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100030E68()
{
  v245 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 96);

  v3 = sub_100039978();
  v4 = sub_10003A868();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 43);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    *v7 = 136446467;
    sub_10003A8F8(27);

    v243 = 0xD000000000000014;
    v244 = 0x800000010003B900;
    v247._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v247);

    v248._countAndFlagsBits = 2108704;
    v248._object = 0xE300000000000000;
    sub_10003A6D8(v248);
    v249._object = 0x800000010003B8E0;
    v249._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v249);
    v8 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v242);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2081;
    *(v0 + 42) = v5;
    v9 = sub_10003A6B8();
    v11 = sub_10002AF20(v9, v10, &v242);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - AccountInfo %{private}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 43) != 1)
  {
    v41 = *(v0 + 144);
    v42 = *(v0 + 88);
    v43 = *(v0 + 72);
    v44 = sub_10003A588();
    sub_1000396C8();
    if (v44)
    {
      v45 = 2;
    }

    else
    {
      v45 = 3;
    }

    *(v43 + *(v41 + 20)) = v45;
LABEL_46:
    type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();
    v131 = *(v0 + 832);
    v132 = *(v0 + 808);
    v133 = *(v0 + 800);
    v134 = *(v0 + 792);
    v135 = *(v0 + 768);
    v136 = *(v0 + 760);
    v137 = *(v0 + 752);
    v138 = *(v0 + 744);
    v139 = *(v0 + 728);
    v140 = *(v0 + 704);
    v197 = *(v0 + 696);
    v198 = *(v0 + 672);
    v199 = *(v0 + 648);
    v200 = *(v0 + 640);
    v201 = *(v0 + 616);
    v202 = *(v0 + 592);
    v203 = *(v0 + 584);
    v204 = *(v0 + 576);
    v205 = *(v0 + 552);
    v206 = *(v0 + 528);
    v207 = *(v0 + 520);
    v208 = *(v0 + 496);
    v209 = *(v0 + 472);
    v210 = *(v0 + 448);
    v211 = *(v0 + 440);
    v212 = *(v0 + 432);
    v213 = *(v0 + 424);
    v214 = *(v0 + 416);
    v215 = *(v0 + 408);
    v216 = *(v0 + 392);
    v217 = *(v0 + 384);
    v218 = *(v0 + 376);
    v219 = *(v0 + 368);
    v220 = *(v0 + 344);
    v221 = *(v0 + 320);
    v222 = *(v0 + 296);
    v223 = *(v0 + 272);
    v224 = *(v0 + 264);
    v225 = *(v0 + 240);
    v226 = *(v0 + 216);
    v228 = *(v0 + 192);
    v230 = *(v0 + 168);
    v232 = *(v0 + 160);
    v235 = *(v0 + 152);
    v238 = *(v0 + 136);
    v240 = *(v0 + 112);

    v141 = *(v0 + 8);

    return v141();
  }

  v12 = *(v0 + 824);
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 80);
  sub_100038F88();
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v16 = *(v0 + 840);
    v17 = *(v0 + 96);
    v18 = *(v0 + 80);
    sub_100009B18(*(v0 + 808), &qword_10004DC08, &unk_10003DE80);

    v19 = sub_100039978();
    v20 = sub_10003A868();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 96);
      v22 = *(v0 + 80);
      v23 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v243 = 0;
      *v23 = 136446466;
      v244 = 0xE000000000000000;
      sub_10003A8F8(27);

      v243 = 0xD000000000000014;
      v244 = 0x800000010003B900;
      v250._countAndFlagsBits = sub_10003A618();
      sub_10003A6D8(v250);

      v251._countAndFlagsBits = 2108704;
      v251._object = 0xE300000000000000;
      sub_10003A6D8(v251);
      v252._object = 0x800000010003B8E0;
      v252._countAndFlagsBits = 0xD000000000000011;
      sub_10003A6D8(v252);
      v24 = sub_10002AF20(v243, v244, &v242);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2080;
      *(v0 + 48) = v22;

      v25 = sub_10003A6B8();
      v27 = sub_10002AF20(v25, v26, &v242);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s - No Entity in configuration: %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v29 = *(v0 + 104);
    v28 = *(v0 + 112);
    v30 = *(v0 + 96) + *(v0 + 848);
    v31 = (v30 + *(_s12DependenciesVMa_1() + 28));
    v33 = *v31;
    v32 = v31[1];
    v34 = *(v29 + 20);

    sub_100039988();
    *v28 = v33;
    v28[1] = v32;
    v35 = async function pointer to EntityQuery.results()[1];
    v36 = swift_task_alloc();
    *(v0 + 968) = v36;
    v37 = sub_100037204(&qword_10004D6D8, type metadata accessor for WidgetItemEntityQuery);
    *v36 = v0;
    v36[1] = sub_100034868;
    v38 = *(v0 + 136);
    v39 = *(v0 + 104);
    v40 = *(v0 + 112);

    return EntityQuery.results()(v38, v39, v37);
  }

  v46 = *(v0 + 800);
  v47 = *(v0 + 784);
  v48 = *(v0 + 776);
  v49 = *(v0 + 88);
  sub_10003724C(*(v0 + 808), *(v0 + 832), type metadata accessor for WidgetItemEntity);
  sub_10003A538();
  *(v0 + 864) = v50;
  *(v0 + 872) = v51;
  sub_10003A568();
  swift_getKeyPath();
  v52 = sub_10003A548();

  v53 = *(v47 + 8);
  v53(v46, v48);
  if (v52)
  {
    if (*(v52 + 16))
    {
      v54 = *(v52 + 32);
    }

    else
    {
      v54 = 1.0;
    }
  }

  else
  {
    v54 = 1.0;
  }

  v55 = *(v0 + 792);
  v56 = *(v0 + 776);
  v57 = *(v0 + 88);
  sub_10003A568();
  swift_getKeyPath();
  v58 = sub_10003A548();

  v53(v55, v56);
  if (v58)
  {
    if (*(v58 + 16))
    {
      (*(*(v0 + 720) + 16))(*(v0 + 768), v58 + ((*(*(v0 + 720) + 80) + 32) & ~*(*(v0 + 720) + 80)), *(v0 + 712));
      v59 = 0;
    }

    else
    {
      v59 = 1;
    }
  }

  else
  {
    v59 = 1;
  }

  v60 = *(v0 + 768);
  v61 = *(v0 + 760);
  v62 = *(v0 + 744);
  v63 = *(v0 + 736);
  v64 = *(v0 + 720);
  v65 = *(v0 + 712);
  v66 = *(v64 + 56);
  v66(v60, v59, 1, v65);
  (*(v64 + 104))(v61, enum case for LayoutDirection.rightToLeft(_:), v65);
  v66(v61, 0, 1, v65);
  v67 = *(v63 + 48);
  sub_100009AB0(v60, v62, &qword_10004DD38, &unk_10003E010);
  sub_100009AB0(v61, v62 + v67, &qword_10004DD38, &unk_10003E010);
  v68 = *(v64 + 48);
  if (v68(v62, 1, v65) == 1)
  {
    v69 = *(v0 + 768);
    v70 = *(v0 + 712);
    sub_100009B18(*(v0 + 760), &qword_10004DD38, &unk_10003E010);
    sub_100009B18(v69, &qword_10004DD38, &unk_10003E010);
    if (v68(v62 + v67, 1, v70) == 1)
    {
      v71 = *(v0 + 744);
      v72 = &qword_10004DD38;
      v73 = &unk_10003E010;
LABEL_32:
      sub_100009B18(v71, v72, v73);
      goto LABEL_34;
    }

LABEL_31:
    v71 = *(v0 + 744);
    v72 = &unk_10004DD30;
    v73 = &unk_10003E008;
    goto LABEL_32;
  }

  v74 = *(v0 + 712);
  sub_100009AB0(*(v0 + 744), *(v0 + 752), &qword_10004DD38, &unk_10003E010);
  v75 = v68(v62 + v67, 1, v74);
  v76 = *(v0 + 768);
  v77 = *(v0 + 760);
  v78 = *(v0 + 752);
  if (v75 == 1)
  {
    v79 = *(v0 + 720);
    v80 = *(v0 + 712);
    sub_100009B18(*(v0 + 760), &qword_10004DD38, &unk_10003E010);
    sub_100009B18(v76, &qword_10004DD38, &unk_10003E010);
    (*(v79 + 8))(v78, v80);
    goto LABEL_31;
  }

  v81 = *(v0 + 744);
  v82 = *(v0 + 728);
  v83 = *(v0 + 720);
  v84 = *(v0 + 712);
  (*(v83 + 32))(v82, v62 + v67, v84);
  sub_100037204(&qword_10004DD58, &type metadata accessor for LayoutDirection);
  sub_10003A628();
  v85 = *(v83 + 8);
  v85(v82, v84);
  sub_100009B18(v77, &qword_10004DD38, &unk_10003E010);
  sub_100009B18(v76, &qword_10004DD38, &unk_10003E010);
  v85(v78, v84);
  sub_100009B18(v81, &qword_10004DD38, &unk_10003E010);
LABEL_34:
  v86 = *(v0 + 840);
  v87 = *(v0 + 96);

  v88 = sub_100039978();
  v89 = sub_10003A868();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = *(v0 + 96);
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v242 = v92;
    v243 = 0;
    *v91 = 136446210;
    v244 = 0xE000000000000000;
    sub_10003A8F8(27);

    v243 = 0xD000000000000014;
    v244 = 0x800000010003B900;
    v253._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v253);

    v254._countAndFlagsBits = 2108704;
    v254._object = 0xE300000000000000;
    sub_10003A6D8(v254);
    v255._object = 0x800000010003B8E0;
    v255._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v255);
    v93 = sub_10002AF20(v243, v244, &v242);

    *(v91 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s - Will create emoji image", v91, 0xCu);
    sub_100003214(v92);
  }

  v94 = *(v0 + 832);
  v95 = *(v0 + 704);
  v96 = *(v0 + 696);
  v97 = *(v0 + 688);
  v98 = *(v0 + 680);
  sub_100039508();
  sub_1000394E8();
  (*(v97 + 8))(v96, v98);
  v99 = sub_1000394D8();
  v100 = *(v99 - 8);
  v101 = (*(v100 + 48))(v95, 1, v99);
  v102 = *(v0 + 704);
  if (v101 == 1)
  {
    v103 = &unk_10004DD28;
    v104 = &unk_10003E000;
    v105 = *(v0 + 704);
LABEL_42:
    sub_100009B18(v105, v103, v104);
LABEL_43:
    v117 = *(v0 + 832);
    sub_100037330();
    swift_allocError();
    *v118 = 0;
    swift_willThrow();
    sub_1000371A4(v117, type metadata accessor for WidgetItemEntity);
    v119 = *(v0 + 840);
    v120 = *(v0 + 96);

    swift_errorRetain();
    v121 = sub_100039978();
    v122 = sub_10003A868();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = *(v0 + 96);
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v242 = v126;
      v243 = 0;
      *v124 = 136446466;
      v244 = 0xE000000000000000;
      sub_10003A8F8(27);

      v243 = 0xD000000000000014;
      v244 = 0x800000010003B900;
      v256._countAndFlagsBits = sub_10003A618();
      sub_10003A6D8(v256);

      v257._countAndFlagsBits = 2108704;
      v257._object = 0xE300000000000000;
      sub_10003A6D8(v257);
      v258._object = 0x800000010003B8E0;
      v258._countAndFlagsBits = 0xD000000000000011;
      sub_10003A6D8(v258);
      v127 = sub_10002AF20(v243, v244, &v242);

      *(v124 + 4) = v127;
      *(v124 + 12) = 2114;
      swift_errorRetain();
      v128 = _swift_stdlib_bridgeErrorToNSError();
      *(v124 + 14) = v128;
      *v125 = v128;
      _os_log_impl(&_mh_execute_header, v121, v122, "%{public}s - Error %{public}@", v124, 0x16u);
      sub_100009B18(v125, &qword_10004C4D0, &qword_10003E020);

      sub_100003214(v126);
    }

    v129 = *(v0 + 144);
    v130 = *(v0 + 72);
    sub_1000396C8();

    *(v130 + *(v129 + 20)) = 0;
    goto LABEL_46;
  }

  v106 = *(v0 + 704);
  sub_1000394C8();
  (*(v100 + 8))(v102, v99);
  if (qword_10004C350 != -1)
  {
    swift_once();
  }

  v107 = *(v0 + 672);
  v108 = *(v0 + 648);
  v109 = *(v0 + 640);
  v110 = *(v0 + 632);
  v111 = *(v0 + 608);
  v237 = *(v0 + 600);
  v112 = *(v0 + 592);
  v113 = sub_100004618(*(v0 + 624), qword_1000501F0);
  v114 = *(v110 + 16);
  *(v0 + 880) = v114;
  *(v0 + 888) = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v234 = v113;
  v114(v109);
  sub_10003A288();
  sub_1000398F8();
  v115 = sub_100039908();
  (*(*(v115 - 8) + 56))(v108, 0, 1, v115);
  sub_1000398D8();
  sub_1000398E8();
  sub_1000398A8();

  if ((*(v111 + 48))(v112, 1, v237) == 1)
  {
    v116 = *(v0 + 592);
    (*(*(v0 + 664) + 8))(*(v0 + 672), *(v0 + 656));
    v103 = &unk_10004DD18;
    v104 = &unk_10003DFF0;
    v105 = v116;
    goto LABEL_42;
  }

  v142 = *(v0 + 640);
  v143 = *(v0 + 624);
  (*(*(v0 + 608) + 32))(*(v0 + 616), *(v0 + 592), *(v0 + 600));
  *(v0 + 896) = sub_100037924(0, &qword_10004DD48, UIColor_ptr);
  (v114)(v142, v234, v143);
  v144 = sub_10003A878();
  v145 = [v144 CGColor];

  v146.value = v145;
  v147 = sub_1000397D8(v54, v146);
  *(v0 + 904) = v147;

  if (!v147)
  {
    v160 = *(v0 + 672);
    v161 = *(v0 + 664);
    v162 = *(v0 + 656);
    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
    (*(v161 + 8))(v160, v162);
    goto LABEL_43;
  }

  v148 = *(v0 + 832);
  v149 = *(v0 + 584);
  v150 = *(v0 + 568);
  v151 = *(v0 + 560);
  v152 = *(v0 + 552);
  v153 = *(v0 + 544);
  v231 = *(v0 + 536);
  v233 = *(v0 + 528);
  v154 = *(v0 + 520);
  v155 = *(v0 + 512);
  v236 = *(v0 + 504);
  v239 = v147;
  sub_100039628();
  v229 = sub_100039538();
  *(v0 + 912) = v229;
  v241 = v156;
  *(v0 + 920) = v156;
  (*(v150 + 8))(v149, v151);
  sub_100039488();
  v227 = sub_100039458();
  *(v0 + 44) = v227 & 1;
  (*(v153 + 8))(v152, v231);
  sub_100039608();
  sub_1000395B8();
  sub_100037204(&qword_10004D9E8, &type metadata accessor for ItemModel.Battery);
  v157 = sub_10003A8A8();
  v158 = *(v155 + 8);
  v158(v154, v236);
  v158(v233, v236);
  if (v157)
  {
    v159 = 1;
  }

  else
  {
    v163 = *(v0 + 832);
    v164 = *(v0 + 528);
    v165 = *(v0 + 520);
    v166 = *(v0 + 504);
    sub_100039608();
    sub_1000395C8();
    v159 = sub_10003A8A8();
    v158(v165, v166);
    v158(v164, v166);
  }

  v167 = v159 & 1;
  *(v0 + 45) = v159 & 1;
  v168 = *(v0 + 840);
  v169 = *(v0 + 96);
  v170 = v239;

  v171 = v170;

  v172 = sub_100039978();
  v173 = sub_10003A868();

  if (os_log_type_enabled(v172, v173))
  {
    v174 = *(v0 + 96);
    v175 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v243 = 0;
    *v175 = 136446467;
    v244 = 0xE000000000000000;
    sub_10003A8F8(27);

    v243 = 0xD000000000000014;
    v244 = 0x800000010003B900;
    v259._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v259);

    v260._countAndFlagsBits = 2108704;
    v260._object = 0xE300000000000000;
    sub_10003A6D8(v260);
    v261._object = 0x800000010003B8E0;
    v261._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v261);
    v176 = sub_10002AF20(v243, v244, &v242);

    *(v175 + 4) = v176;
    *(v175 + 12) = 2081;
    *(v0 + 16) = v229;
    *(v0 + 24) = v241;
    *(v0 + 32) = v171;
    *(v0 + 40) = v227 & 1;
    *(v0 + 41) = v167;
    v177 = v171;

    v178 = sub_10003A6B8();
    v180 = sub_10002AF20(v178, v179, &v242);

    *(v175 + 14) = v180;
    _os_log_impl(&_mh_execute_header, v172, v173, "%{public}s - ItemInfo %{private}s", v175, 0x16u);
    swift_arrayDestroy();
  }

  v181 = *(v0 + 832);
  v182 = *(v0 + 576);
  v183 = *(v0 + 496);
  v185 = *(v0 + 464);
  v184 = *(v0 + 472);
  v187 = *(v0 + 448);
  v186 = *(v0 + 456);
  v188 = *(v0 + 96) + *(v0 + 848);
  v189 = _s12DependenciesVMa_1();
  (*(v185 + 16))(v184, v188 + *(v189 + 24), v186);
  sub_100039308();
  sub_100039628();
  sub_100039138();
  v190 = sub_100039148();
  (*(*(v190 - 8) + 56))(v187, 0, 1, v190);
  sub_100039318();
  v191 = _s10FindMyCore27GetItemCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKFTu[1];
  v192 = swift_task_alloc();
  *(v0 + 928) = v192;
  *v192 = v0;
  v192[1] = sub_1000326CC;
  v193 = *(v0 + 496);
  v194 = *(v0 + 432);
  v195 = *(v0 + 384);

  return _s10FindMyCore27GetItemCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(v194, v195);
}

uint64_t sub_1000326CC()
{
  v2 = *(*v1 + 928);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1000356B4;
  }

  else
  {
    v3 = sub_1000327DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000327DC()
{
  v141 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = *(v0 + 96);
  (*(*(v0 + 336) + 56))(v2, 0, 1, *(v0 + 328));
  sub_100037384(v2, v3);
  sub_100009AB0(v3, v4, &qword_10004DD08, &qword_10003DFE0);

  v6 = sub_100039978();
  v7 = sub_10003A868();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 424);
  if (v8)
  {
    v10 = *(v0 + 416);
    v134 = *(v0 + 400);
    v11 = *(v0 + 96);
    v12 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v12 = 136446467;
    sub_10003A8F8(27);

    v139 = 0xD000000000000014;
    v140 = 0x800000010003B900;
    v143._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v143);

    v144._countAndFlagsBits = 2108704;
    v144._object = 0xE300000000000000;
    sub_10003A6D8(v144);
    v145._object = 0x800000010003B8E0;
    v145._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v145);
    v13 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v138);

    *(v12 + 4) = v13;
    *(v12 + 12) = 2081;
    sub_100009AB0(v9, v10, &qword_10004DD08, &qword_10003DFE0);
    v14 = sub_10003A6B8();
    v16 = v15;
    sub_100009B18(v9, &qword_10004DD08, &qword_10003DFE0);
    v17 = sub_10002AF20(v14, v16, &v138);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s - LocationResult %{private}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100009B18(v9, &qword_10004DD08, &qword_10003DFE0);
  }

  v18 = *(v0 + 408);
  v19 = *(v0 + 328);
  v20 = *(v0 + 336);
  sub_100009AB0(*(v0 + 440), v18, &qword_10004DD08, &qword_10003DFE0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v135 = *(v0 + 45);
    v131 = *(v0 + 44);
    v125 = *(v0 + 912);
    v128 = *(v0 + 920);
    v21 = *(v0 + 904);
    v119 = *(v0 + 672);
    v121 = *(v0 + 832);
    v22 = *(v0 + 664);
    v117 = *(v0 + 656);
    v23 = *(v0 + 608);
    v111 = *(v0 + 600);
    v113 = *(v0 + 616);
    v24 = *(v0 + 488);
    v107 = *(v0 + 480);
    v109 = *(v0 + 496);
    v25 = *(v0 + 440);
    v26 = *(v0 + 184);
    v123 = *(v0 + 176);
    v115 = *(v0 + 144);
    v27 = *(v0 + 72);
    sub_100009B18(*(v0 + 408), &qword_10004DD08, &qword_10003DFE0);
    sub_1000396C8();

    sub_100009B18(v25, &qword_10004DD08, &qword_10003DFE0);
    (*(v24 + 8))(v109, v107);
    (*(v23 + 8))(v113, v111);
    (*(v22 + 8))(v119, v117);
    sub_1000371A4(v121, type metadata accessor for WidgetItemEntity);
    v28 = v27 + *(v115 + 20);
    v29 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
    *v28 = v125;
    *(v28 + 8) = v128;
    *(v28 + 16) = v21;
    *(v28 + 24) = v131;
    *(v28 + 25) = v135;
    (*(v26 + 56))(v28 + v29, 1, 1, v123);
    type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();
    v30 = *(v0 + 832);
    v31 = *(v0 + 808);
    v32 = *(v0 + 800);
    v33 = *(v0 + 792);
    v34 = *(v0 + 768);
    v35 = *(v0 + 760);
    v36 = *(v0 + 752);
    v37 = *(v0 + 744);
    v38 = *(v0 + 728);
    v39 = *(v0 + 704);
    v84 = *(v0 + 696);
    v85 = *(v0 + 672);
    v86 = *(v0 + 648);
    v87 = *(v0 + 640);
    v88 = *(v0 + 616);
    v89 = *(v0 + 592);
    v90 = *(v0 + 584);
    v91 = *(v0 + 576);
    v92 = *(v0 + 552);
    v93 = *(v0 + 528);
    v94 = *(v0 + 520);
    v95 = *(v0 + 496);
    v96 = *(v0 + 472);
    v97 = *(v0 + 448);
    v98 = *(v0 + 440);
    v99 = *(v0 + 432);
    v100 = *(v0 + 424);
    v101 = *(v0 + 416);
    v102 = *(v0 + 408);
    v103 = *(v0 + 392);
    v104 = *(v0 + 384);
    v105 = *(v0 + 376);
    v106 = *(v0 + 368);
    v108 = *(v0 + 344);
    v110 = *(v0 + 320);
    v112 = *(v0 + 296);
    v114 = *(v0 + 272);
    v116 = *(v0 + 264);
    v118 = *(v0 + 240);
    v120 = *(v0 + 216);
    v122 = *(v0 + 192);
    v124 = *(v0 + 168);
    v126 = *(v0 + 160);
    v129 = *(v0 + 152);
    v132 = *(v0 + 136);
    v136 = *(v0 + 112);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v42 = *(v0 + 320);
    v43 = *(v0 + 312);
    v44 = *(v0 + 296);
    v127 = *(v0 + 304);
    v130 = *(v0 + 272);
    v137 = *(v0 + 264);
    v45 = *(v0 + 248);
    v46 = *(v0 + 256);
    v47 = *(v0 + 232);
    v48 = *(v0 + 240);
    v133 = *(v0 + 224);
    v49 = *(v0 + 88);
    v50 = *(v0 + 872) * 60.0;
    (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 408), *(v0 + 328));
    sub_100039328();
    sub_100039238();
    (*(v43 + 8))(v42, v127);
    sub_10003A578();
    sub_1000397B8();
    LOBYTE(v138) = 0;
    LOBYTE(v139) = 0;
    sub_1000397A8();
    v52 = v51;
    v54 = v53;
    (*(v47 + 8))(v48, v133);
    (*(v46 + 104))(v137, enum case for WidgetFamily.systemSmall(_:), v45);
    sub_100037204(&qword_10004C888, &type metadata accessor for WidgetFamily);
    sub_10003A718();
    sub_10003A718();
    v55 = *(v46 + 8);
    *(v0 + 936) = v55;
    *(v0 + 944) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v137, v45);
    v56 = *(v0 + 872);
    if (*(v0 + 56) == *(v0 + 64))
    {
      v57 = 16.0;
      if (v56 >= 170.0)
      {
        v57 = 17.0;
      }

      v58 = v52 * 0.5 + v57;
      v59 = *(v0 + 864);
    }

    else
    {
      v59 = *(v0 + 864);
      v60 = 16.0;
      if (v56 >= 170.0)
      {
        v60 = 17.0;
      }

      v58 = v59 / 3.0 - (v52 * 0.5 + v60);
    }

    v61 = *(v0 + 296);
    sub_1000393A8();
    sub_1000393B8();
    if (qword_10004C338 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 896);
    v63 = *(v0 + 888);
    v64 = *(v0 + 880);
    v65 = *(v0 + 640);
    v66 = *(v0 + 624);
    v67 = sub_100004618(v66, qword_1000501A8);
    v64(v65, v67, v66);
    sub_10003A878();
    if (qword_10004C340 != -1)
    {
      swift_once();
    }

    v68 = 16.0;
    if (v56 >= 170.0)
    {
      v68 = 17.0;
    }

    v69 = v56 * 0.5 - (v54 + v68);
    v70 = *(v0 + 896);
    v71 = *(v0 + 888);
    v72 = *(v0 + 880);
    v73 = *(v0 + 640);
    v74 = *(v0 + 624);
    v75 = *(v0 + 216);
    v76 = sub_100004618(v74, qword_1000501C0);
    v72(v73, v76, v74);
    sub_10003A878();
    sub_100039878();
    v77 = async function pointer to static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)[1];
    v78 = swift_task_alloc();
    *(v0 + 952) = v78;
    *v78 = v0;
    v78[1] = sub_1000332F4;
    v80.n128_u64[0] = *(v0 + 872);
    v81.n128_u64[0] = *(v0 + 864);
    v82 = *(v0 + 216);
    v83.n128_f64[0] = v69;

    v79.n128_f64[0] = v59 * 0.5 - v58;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v82, 0, v79, v83, v81, v80);
  }
}

uint64_t sub_1000332F4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 952);
  v7 = *v2;

  v8 = v4[27];
  v9 = v4[26];
  v10 = v4[25];
  if (v1)
  {

    (*(v9 + 8))(v8, v10);
    v11 = sub_100033E94;
  }

  else
  {
    v5[120] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_100033498;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100033498()
{
  v121 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 944);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  (*(v0 + 936))(*(v0 + 272), *(v0 + 248));
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 840);
  v7 = *(v0 + 96);
  v115 = v1;
  v8 = v1;

  v9 = sub_100039978();
  v10 = sub_10003A868();

  if (os_log_type_enabled(v9, v10))
  {
    v111 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v118 = v13;
    *v11 = 136446466;
    sub_10003A8F8(27);

    v119 = 0xD000000000000014;
    v120 = 0x800000010003B900;
    v123._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v123);

    v124._countAndFlagsBits = 2108704;
    v124._object = 0xE300000000000000;
    sub_10003A6D8(v124);
    v125._object = 0x800000010003B8E0;
    v125._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v125);
    v14 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v118);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v115;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s - MapImage %@", v11, 0x16u);
    sub_100009B18(v12, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v13);
  }

  v102 = *(v0 + 45);
  v99 = *(v0 + 44);
  v16 = *(v0 + 920);
  v17 = *(v0 + 912);
  v18 = *(v0 + 904);
  v19 = *(v0 + 344);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 168);
  v23 = *(v0 + 176);
  v105 = *(v0 + 160);
  v24 = *(v0 + 144);
  v108 = *(v0 + 96);
  v112 = *(v0 + 840);
  sub_100039328();
  *(v20 + *(v23 + 20)) = v115;
  sub_1000396C8();
  v25 = v22 + *(v24 + 20);
  v26 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
  *v25 = v17;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v99;
  *(v25 + 25) = v102;
  sub_10003713C(v20, v25 + v26, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
  (*(v21 + 56))(v25 + v26, 0, 1, v23);
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_10003713C(v22, v105, type metadata accessor for ItemsWidgetProvider.Entry);

  v27 = v18;

  v28 = sub_100039978();
  LOBYTE(v25) = sub_10003A868();

  v89 = v25;
  v29 = os_log_type_enabled(v28, v25);
  v91 = *(v0 + 920);
  v95 = *(v0 + 904);
  v30 = *(v0 + 832);
  v31 = *(v0 + 672);
  v32 = *(v0 + 664);
  v33 = *(v0 + 656);
  v34 = *(v0 + 608);
  v113 = *(v0 + 600);
  v116 = *(v0 + 616);
  v35 = *(v0 + 488);
  v106 = *(v0 + 480);
  v109 = *(v0 + 496);
  v36 = *(v0 + 336);
  v100 = *(v0 + 344);
  v103 = *(v0 + 440);
  v97 = *(v0 + 328);
  v93 = *(v0 + 192);
  v37 = *(v0 + 160);
  if (v29)
  {
    v76 = *(v0 + 152);
    v78 = *(v0 + 144);
    v87 = *(v0 + 672);
    v38 = *(v0 + 96);
    v85 = *(v0 + 656);
    v39 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = 0;
    *v39 = 136446466;
    v81 = v30;
    v83 = v32;
    v120 = 0xE000000000000000;
    sub_10003A8F8(27);

    v119 = 0xD000000000000014;
    v120 = 0x800000010003B900;
    v126._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v126);

    v127._countAndFlagsBits = 2108704;
    v127._object = 0xE300000000000000;
    sub_10003A6D8(v127);
    v128._object = 0x800000010003B8E0;
    v128._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v128);
    v40 = sub_10002AF20(v119, v120, &v118);

    *(v39 + 4) = v40;
    *(v39 + 12) = 2080;
    sub_10003713C(v37, v76, type metadata accessor for ItemsWidgetProvider.Entry);
    v41 = sub_10003A6B8();
    v43 = v42;
    sub_1000371A4(v37, type metadata accessor for ItemsWidgetProvider.Entry);
    v44 = sub_10002AF20(v41, v43, &v118);

    *(v39 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v28, v89, "%{public}s - Result Entry %s", v39, 0x16u);
    swift_arrayDestroy();

    sub_1000371A4(v93, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v36 + 8))(v100, v97);
    sub_100009B18(v103, &qword_10004DD08, &qword_10003DFE0);
    (*(v35 + 8))(v109, v106);
    (*(v34 + 8))(v116, v113);
    (*(v83 + 8))(v87, v85);
    v45 = v81;
  }

  else
  {

    sub_1000371A4(v37, type metadata accessor for ItemsWidgetProvider.Entry);
    sub_1000371A4(v93, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v36 + 8))(v100, v97);
    sub_100009B18(v103, &qword_10004DD08, &qword_10003DFE0);
    (*(v35 + 8))(v109, v106);
    (*(v34 + 8))(v116, v113);
    (*(v32 + 8))(v31, v33);
    v45 = v30;
  }

  sub_1000371A4(v45, type metadata accessor for WidgetItemEntity);
  sub_10003724C(*(v0 + 168), *(v0 + 72), type metadata accessor for ItemsWidgetProvider.Entry);
  v46 = *(v0 + 832);
  v47 = *(v0 + 808);
  v48 = *(v0 + 800);
  v49 = *(v0 + 792);
  v50 = *(v0 + 768);
  v51 = *(v0 + 760);
  v52 = *(v0 + 752);
  v53 = *(v0 + 744);
  v54 = *(v0 + 728);
  v55 = *(v0 + 704);
  v58 = *(v0 + 696);
  v59 = *(v0 + 672);
  v60 = *(v0 + 648);
  v61 = *(v0 + 640);
  v62 = *(v0 + 616);
  v63 = *(v0 + 592);
  v64 = *(v0 + 584);
  v65 = *(v0 + 576);
  v66 = *(v0 + 552);
  v67 = *(v0 + 528);
  v68 = *(v0 + 520);
  v69 = *(v0 + 496);
  v70 = *(v0 + 472);
  v71 = *(v0 + 448);
  v72 = *(v0 + 440);
  v73 = *(v0 + 432);
  v74 = *(v0 + 424);
  v75 = *(v0 + 416);
  v77 = *(v0 + 408);
  v79 = *(v0 + 392);
  v80 = *(v0 + 384);
  v82 = *(v0 + 376);
  v84 = *(v0 + 368);
  v86 = *(v0 + 344);
  v88 = *(v0 + 320);
  v90 = *(v0 + 296);
  v92 = *(v0 + 272);
  v94 = *(v0 + 264);
  v96 = *(v0 + 240);
  v98 = *(v0 + 216);
  v101 = *(v0 + 192);
  v104 = *(v0 + 168);
  v107 = *(v0 + 160);
  v110 = *(v0 + 152);
  v114 = *(v0 + 136);
  v117 = *(v0 + 112);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_100033E94()
{
  v117 = v0;
  v1 = *(v0 + 944);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  (*(v0 + 936))(*(v0 + 272), *(v0 + 248));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 840);
  v6 = *(v0 + 96);

  v7 = sub_100039978();
  v8 = sub_10003A868();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v114 = v12;
    *v10 = 136446466;
    sub_10003A8F8(27);

    v115 = 0xD000000000000014;
    v116 = 0x800000010003B900;
    v119._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v119);

    v120._countAndFlagsBits = 2108704;
    v120._object = 0xE300000000000000;
    sub_10003A6D8(v120);
    v121._object = 0x800000010003B8E0;
    v121._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v121);
    v13 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v114);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    *(v10 + 14) = 0;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s - MapImage %@", v10, 0x16u);
    sub_100009B18(v11, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v12);
  }

  v105 = *(v0 + 45);
  v102 = *(v0 + 44);
  v14 = *(v0 + 920);
  v99 = *(v0 + 912);
  v15 = *(v0 + 904);
  v16 = *(v0 + 344);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v108 = *(v0 + 160);
  v111 = *(v0 + 840);
  v21 = *(v0 + 144);
  v22 = *(v0 + 96);
  sub_100039328();
  *(v17 + *(v20 + 20)) = 0;
  sub_1000396C8();
  v23 = v19 + *(v21 + 20);
  v24 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
  *v23 = v99;
  *(v23 + 8) = v14;
  *(v23 + 16) = v15;
  *(v23 + 24) = v102;
  *(v23 + 25) = v105;
  sub_10003713C(v17, v23 + v24, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
  (*(v18 + 56))(v23 + v24, 0, 1, v20);
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_10003713C(v19, v108, type metadata accessor for ItemsWidgetProvider.Entry);

  v25 = v15;

  v26 = sub_100039978();
  LOBYTE(v23) = sub_10003A868();

  v87 = v23;
  v27 = os_log_type_enabled(v26, v23);
  v89 = *(v0 + 920);
  v93 = *(v0 + 904);
  v28 = *(v0 + 832);
  v29 = *(v0 + 672);
  v30 = *(v0 + 664);
  v31 = *(v0 + 656);
  v32 = *(v0 + 608);
  v109 = *(v0 + 600);
  v112 = *(v0 + 616);
  v33 = *(v0 + 488);
  v103 = *(v0 + 480);
  v106 = *(v0 + 496);
  v34 = *(v0 + 336);
  v97 = *(v0 + 344);
  v100 = *(v0 + 440);
  v95 = *(v0 + 328);
  v91 = *(v0 + 192);
  v35 = *(v0 + 160);
  if (v27)
  {
    v74 = *(v0 + 152);
    v76 = *(v0 + 144);
    v85 = *(v0 + 672);
    v36 = *(v0 + 96);
    v83 = *(v0 + 656);
    v37 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115 = 0;
    *v37 = 136446466;
    v79 = v28;
    v81 = v30;
    v116 = 0xE000000000000000;
    sub_10003A8F8(27);

    v115 = 0xD000000000000014;
    v116 = 0x800000010003B900;
    v122._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v122);

    v123._countAndFlagsBits = 2108704;
    v123._object = 0xE300000000000000;
    sub_10003A6D8(v123);
    v124._object = 0x800000010003B8E0;
    v124._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v124);
    v38 = sub_10002AF20(v115, v116, &v114);

    *(v37 + 4) = v38;
    *(v37 + 12) = 2080;
    sub_10003713C(v35, v74, type metadata accessor for ItemsWidgetProvider.Entry);
    v39 = sub_10003A6B8();
    v41 = v40;
    sub_1000371A4(v35, type metadata accessor for ItemsWidgetProvider.Entry);
    v42 = sub_10002AF20(v39, v41, &v114);

    *(v37 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v26, v87, "%{public}s - Result Entry %s", v37, 0x16u);
    swift_arrayDestroy();

    sub_1000371A4(v91, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v34 + 8))(v97, v95);
    sub_100009B18(v100, &qword_10004DD08, &qword_10003DFE0);
    (*(v33 + 8))(v106, v103);
    (*(v32 + 8))(v112, v109);
    (*(v81 + 8))(v85, v83);
    v43 = v79;
  }

  else
  {

    sub_1000371A4(v35, type metadata accessor for ItemsWidgetProvider.Entry);
    sub_1000371A4(v91, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v34 + 8))(v97, v95);
    sub_100009B18(v100, &qword_10004DD08, &qword_10003DFE0);
    (*(v33 + 8))(v106, v103);
    (*(v32 + 8))(v112, v109);
    (*(v30 + 8))(v29, v31);
    v43 = v28;
  }

  sub_1000371A4(v43, type metadata accessor for WidgetItemEntity);
  sub_10003724C(*(v0 + 168), *(v0 + 72), type metadata accessor for ItemsWidgetProvider.Entry);
  v44 = *(v0 + 832);
  v45 = *(v0 + 808);
  v46 = *(v0 + 800);
  v47 = *(v0 + 792);
  v48 = *(v0 + 768);
  v49 = *(v0 + 760);
  v50 = *(v0 + 752);
  v51 = *(v0 + 744);
  v52 = *(v0 + 728);
  v53 = *(v0 + 704);
  v56 = *(v0 + 696);
  v57 = *(v0 + 672);
  v58 = *(v0 + 648);
  v59 = *(v0 + 640);
  v60 = *(v0 + 616);
  v61 = *(v0 + 592);
  v62 = *(v0 + 584);
  v63 = *(v0 + 576);
  v64 = *(v0 + 552);
  v65 = *(v0 + 528);
  v66 = *(v0 + 520);
  v67 = *(v0 + 496);
  v68 = *(v0 + 472);
  v69 = *(v0 + 448);
  v70 = *(v0 + 440);
  v71 = *(v0 + 432);
  v72 = *(v0 + 424);
  v73 = *(v0 + 416);
  v75 = *(v0 + 408);
  v77 = *(v0 + 392);
  v78 = *(v0 + 384);
  v80 = *(v0 + 376);
  v82 = *(v0 + 368);
  v84 = *(v0 + 344);
  v86 = *(v0 + 320);
  v88 = *(v0 + 296);
  v90 = *(v0 + 272);
  v92 = *(v0 + 264);
  v94 = *(v0 + 240);
  v96 = *(v0 + 216);
  v98 = *(v0 + 192);
  v101 = *(v0 + 168);
  v104 = *(v0 + 160);
  v107 = *(v0 + 152);
  v110 = *(v0 + 136);
  v113 = *(v0 + 112);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100034868()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v4 = *v1;
  *(*v1 + 976) = v0;

  sub_1000371A4(*(v2 + 112), type metadata accessor for WidgetItemEntityQuery);
  if (v0)
  {
    v5 = sub_1000351E4;
  }

  else
  {
    v5 = sub_1000349B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000349B0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = *(sub_100038FC8() + 16);

  if (v3)
  {
    v4 = v0[11];
    if (sub_10003A588())
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 2;
  }

  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[9];
  sub_1000396C8();
  (*(v9 + 8))(v6, v8);
  *(v10 + *(v7 + 20)) = v5;
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  v11 = v0[104];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[99];
  v15 = v0[96];
  v16 = v0[95];
  v17 = v0[94];
  v18 = v0[93];
  v19 = v0[91];
  v20 = v0[88];
  v23 = v0[87];
  v24 = v0[84];
  v25 = v0[81];
  v26 = v0[80];
  v27 = v0[77];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  v31 = v0[69];
  v32 = v0[66];
  v33 = v0[65];
  v34 = v0[62];
  v35 = v0[59];
  v36 = v0[56];
  v37 = v0[55];
  v38 = v0[54];
  v39 = v0[53];
  v40 = v0[52];
  v41 = v0[51];
  v42 = v0[49];
  v43 = v0[48];
  v44 = v0[47];
  v45 = v0[46];
  v46 = v0[43];
  v47 = v0[40];
  v48 = v0[37];
  v49 = v0[34];
  v50 = v0[33];
  v51 = v0[30];
  v52 = v0[27];
  v53 = v0[24];
  v54 = v0[21];
  v55 = v0[20];
  v56 = v0[19];
  v57 = v0[17];
  v58 = v0[14];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100034CF8()
{
  v62 = v0;
  sub_1000028D4();
  swift_allocError();
  v1 = v0[105];
  v2 = v0[12];

  swift_errorRetain();
  v3 = sub_100039978();
  v4 = sub_10003A868();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61[0] = v8;
    *v6 = 136446466;
    sub_10003A8F8(27);

    v61[1] = 0xD000000000000014;
    v61[2] = 0x800000010003B900;
    v64._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v64);

    v65._countAndFlagsBits = 2108704;
    v65._object = 0xE300000000000000;
    sub_10003A6D8(v65);
    v66._object = 0x800000010003B8E0;
    v66._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v66);
    v9 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, v61);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - Error %{public}@", v6, 0x16u);
    sub_100009B18(v7, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v8);
  }

  v11 = v0[18];
  v12 = v0[9];
  sub_1000396C8();

  *(v12 + *(v11 + 20)) = 0;
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  v13 = v0[104];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[93];
  v21 = v0[91];
  v22 = v0[88];
  v25 = v0[87];
  v26 = v0[84];
  v27 = v0[81];
  v28 = v0[80];
  v29 = v0[77];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];
  v33 = v0[69];
  v34 = v0[66];
  v35 = v0[65];
  v36 = v0[62];
  v37 = v0[59];
  v38 = v0[56];
  v39 = v0[55];
  v40 = v0[54];
  v41 = v0[53];
  v42 = v0[52];
  v43 = v0[51];
  v44 = v0[49];
  v45 = v0[48];
  v46 = v0[47];
  v47 = v0[46];
  v48 = v0[43];
  v49 = v0[40];
  v50 = v0[37];
  v51 = v0[34];
  v52 = v0[33];
  v53 = v0[30];
  v54 = v0[27];
  v55 = v0[24];
  v56 = v0[21];
  v57 = v0[20];
  v58 = v0[19];
  v59 = v0[17];
  v60 = v0[14];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000351E4()
{
  v63 = v0;
  v1 = v0[122];
  v2 = v0[105];
  v3 = v0[12];

  swift_errorRetain();
  v4 = sub_100039978();
  v5 = sub_10003A868();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v62[0] = v9;
    *v7 = 136446466;
    sub_10003A8F8(27);

    v62[1] = 0xD000000000000014;
    v62[2] = 0x800000010003B900;
    v65._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v65);

    v66._countAndFlagsBits = 2108704;
    v66._object = 0xE300000000000000;
    sub_10003A6D8(v66);
    v67._object = 0x800000010003B8E0;
    v67._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v67);
    v10 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, v62);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s - Error %{public}@", v7, 0x16u);
    sub_100009B18(v8, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v9);
  }

  v12 = v0[18];
  v13 = v0[9];
  sub_1000396C8();

  *(v13 + *(v12 + 20)) = 0;
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  v14 = v0[104];
  v15 = v0[101];
  v16 = v0[100];
  v17 = v0[99];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v21 = v0[93];
  v22 = v0[91];
  v23 = v0[88];
  v26 = v0[87];
  v27 = v0[84];
  v28 = v0[81];
  v29 = v0[80];
  v30 = v0[77];
  v31 = v0[74];
  v32 = v0[73];
  v33 = v0[72];
  v34 = v0[69];
  v35 = v0[66];
  v36 = v0[65];
  v37 = v0[62];
  v38 = v0[59];
  v39 = v0[56];
  v40 = v0[55];
  v41 = v0[54];
  v42 = v0[53];
  v43 = v0[52];
  v44 = v0[51];
  v45 = v0[49];
  v46 = v0[48];
  v47 = v0[47];
  v48 = v0[46];
  v49 = v0[43];
  v50 = v0[40];
  v51 = v0[37];
  v52 = v0[34];
  v53 = v0[33];
  v54 = v0[30];
  v55 = v0[27];
  v56 = v0[24];
  v57 = v0[21];
  v58 = v0[20];
  v59 = v0[19];
  v60 = v0[17];
  v61 = v0[14];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000356B4()
{
  v154 = v0;
  v137 = *(v0 + 440);
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v142 = v2;
  v146 = *(v0 + 840);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  v8 = *(v0 + 96);
  v9 = *(v4 + 32);
  v9(v1, *(v0 + 384), v5);
  v9(v3, v1, v5);
  (*(v7 + 56))(v137, 1, 1, v6);
  v10 = *(v4 + 16);
  v10(v142, v3, v5);

  v11 = sub_100039978();
  v12 = sub_10003A868();

  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 368);
  v14 = *(v0 + 376);
  v16 = *(v0 + 352);
  v17 = *(v0 + 360);
  if (v13)
  {
    v147 = *(v0 + 376);
    v18 = *(v0 + 96);
    v130 = v10;
    v19 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v151 = v138;
    *v19 = 136446466;
    sub_10003A8F8(27);

    v152 = 0xD000000000000014;
    v153 = 0x800000010003B900;
    v156._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v156);

    v157._countAndFlagsBits = 2108704;
    v157._object = 0xE300000000000000;
    sub_10003A6D8(v157);
    v158._object = 0x800000010003B8E0;
    v158._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v158);
    v20 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v151);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2114;
    sub_100037204(&qword_10004DD50, &type metadata accessor for GetItemCachedLocationIntent.FetchLocationError);
    swift_allocError();
    v130(v21, v15, v16);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v23 = *(v17 + 8);
    v23(v15, v16);
    *(v19 + 14) = v22;
    *v133 = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s - LocationResult error: %{public}@", v19, 0x16u);
    sub_100009B18(v133, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v138);

    v23(v147, v16);
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v15, v16);
    v24(v14, v16);
  }

  v25 = *(v0 + 408);
  v26 = *(v0 + 328);
  v27 = *(v0 + 336);
  sub_100009AB0(*(v0 + 440), v25, &qword_10004DD08, &qword_10003DFE0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v148 = *(v0 + 45);
    v143 = *(v0 + 44);
    v134 = *(v0 + 912);
    v139 = *(v0 + 920);
    v28 = *(v0 + 904);
    v126 = *(v0 + 672);
    v128 = *(v0 + 832);
    v29 = *(v0 + 664);
    v124 = *(v0 + 656);
    v30 = *(v0 + 608);
    v118 = *(v0 + 600);
    v120 = *(v0 + 616);
    v31 = *(v0 + 488);
    v114 = *(v0 + 480);
    v116 = *(v0 + 496);
    v32 = *(v0 + 440);
    v33 = *(v0 + 184);
    v131 = *(v0 + 176);
    v122 = *(v0 + 144);
    v34 = *(v0 + 72);
    sub_100009B18(*(v0 + 408), &qword_10004DD08, &qword_10003DFE0);
    sub_1000396C8();

    sub_100009B18(v32, &qword_10004DD08, &qword_10003DFE0);
    (*(v31 + 8))(v116, v114);
    (*(v30 + 8))(v120, v118);
    (*(v29 + 8))(v126, v124);
    sub_1000371A4(v128, type metadata accessor for WidgetItemEntity);
    v35 = v34 + *(v122 + 20);
    v36 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
    *v35 = v134;
    *(v35 + 8) = v139;
    *(v35 + 16) = v28;
    *(v35 + 24) = v143;
    *(v35 + 25) = v148;
    (*(v33 + 56))(v35 + v36, 1, 1, v131);
    type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();
    v37 = *(v0 + 832);
    v38 = *(v0 + 808);
    v39 = *(v0 + 800);
    v40 = *(v0 + 792);
    v41 = *(v0 + 768);
    v42 = *(v0 + 760);
    v43 = *(v0 + 752);
    v44 = *(v0 + 744);
    v45 = *(v0 + 728);
    v46 = *(v0 + 704);
    v91 = *(v0 + 696);
    v92 = *(v0 + 672);
    v93 = *(v0 + 648);
    v94 = *(v0 + 640);
    v95 = *(v0 + 616);
    v96 = *(v0 + 592);
    v97 = *(v0 + 584);
    v98 = *(v0 + 576);
    v99 = *(v0 + 552);
    v100 = *(v0 + 528);
    v101 = *(v0 + 520);
    v102 = *(v0 + 496);
    v103 = *(v0 + 472);
    v104 = *(v0 + 448);
    v105 = *(v0 + 440);
    v106 = *(v0 + 432);
    v107 = *(v0 + 424);
    v108 = *(v0 + 416);
    v109 = *(v0 + 408);
    v110 = *(v0 + 392);
    v111 = *(v0 + 384);
    v112 = *(v0 + 376);
    v113 = *(v0 + 368);
    v115 = *(v0 + 344);
    v117 = *(v0 + 320);
    v119 = *(v0 + 296);
    v121 = *(v0 + 272);
    v123 = *(v0 + 264);
    v125 = *(v0 + 240);
    v127 = *(v0 + 216);
    v129 = *(v0 + 192);
    v132 = *(v0 + 168);
    v135 = *(v0 + 160);
    v140 = *(v0 + 152);
    v144 = *(v0 + 136);
    v149 = *(v0 + 112);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v49 = *(v0 + 320);
    v50 = *(v0 + 312);
    v51 = *(v0 + 296);
    v136 = *(v0 + 304);
    v141 = *(v0 + 272);
    v150 = *(v0 + 264);
    v52 = *(v0 + 248);
    v53 = *(v0 + 256);
    v54 = *(v0 + 232);
    v55 = *(v0 + 240);
    v145 = *(v0 + 224);
    v56 = *(v0 + 88);
    v57 = *(v0 + 872) * 60.0;
    (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 408), *(v0 + 328));
    sub_100039328();
    sub_100039238();
    (*(v50 + 8))(v49, v136);
    sub_10003A578();
    sub_1000397B8();
    LOBYTE(v151) = 0;
    LOBYTE(v152) = 0;
    sub_1000397A8();
    v59 = v58;
    v61 = v60;
    (*(v54 + 8))(v55, v145);
    (*(v53 + 104))(v150, enum case for WidgetFamily.systemSmall(_:), v52);
    sub_100037204(&qword_10004C888, &type metadata accessor for WidgetFamily);
    sub_10003A718();
    sub_10003A718();
    v62 = *(v53 + 8);
    *(v0 + 936) = v62;
    *(v0 + 944) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v150, v52);
    v63 = *(v0 + 872);
    if (*(v0 + 56) == *(v0 + 64))
    {
      v64 = 16.0;
      if (v63 >= 170.0)
      {
        v64 = 17.0;
      }

      v65 = v59 * 0.5 + v64;
      v66 = *(v0 + 864);
    }

    else
    {
      v66 = *(v0 + 864);
      v67 = 16.0;
      if (v63 >= 170.0)
      {
        v67 = 17.0;
      }

      v65 = v66 / 3.0 - (v59 * 0.5 + v67);
    }

    v68 = *(v0 + 296);
    sub_1000393A8();
    sub_1000393B8();
    if (qword_10004C338 != -1)
    {
      swift_once();
    }

    v69 = *(v0 + 896);
    v70 = *(v0 + 888);
    v71 = *(v0 + 880);
    v72 = *(v0 + 640);
    v73 = *(v0 + 624);
    v74 = sub_100004618(v73, qword_1000501A8);
    v71(v72, v74, v73);
    sub_10003A878();
    if (qword_10004C340 != -1)
    {
      swift_once();
    }

    v75 = 16.0;
    if (v63 >= 170.0)
    {
      v75 = 17.0;
    }

    v76 = v63 * 0.5 - (v61 + v75);
    v77 = *(v0 + 896);
    v78 = *(v0 + 888);
    v79 = *(v0 + 880);
    v80 = *(v0 + 640);
    v81 = *(v0 + 624);
    v82 = *(v0 + 216);
    v83 = sub_100004618(v81, qword_1000501C0);
    v79(v80, v83, v81);
    sub_10003A878();
    sub_100039878();
    v84 = async function pointer to static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)[1];
    v85 = swift_task_alloc();
    *(v0 + 952) = v85;
    *v85 = v0;
    v85[1] = sub_1000332F4;
    v87.n128_u64[0] = *(v0 + 872);
    v88.n128_u64[0] = *(v0 + 864);
    v89 = *(v0 + 216);
    v90.n128_f64[0] = v76;

    v86.n128_f64[0] = v66 * 0.5 - v65;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v89, 0, v86, v90, v88, v87);
  }
}

uint64_t sub_100036298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_1000396E8();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v9 = sub_10003A518();
  v3[6] = v9;
  v10 = *(v9 - 8);
  v3[7] = v10;
  v11 = *(v10 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v12 = *(*(sub_100001B2C(&qword_10004DCF8, &qword_10003DFB0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v13 = type metadata accessor for ItemsWidgetProvider.Entry(0);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v3[16] = v16;
  v17 = swift_task_alloc();
  v3[17] = v17;
  *v17 = v3;
  v17[1] = sub_1000364C8;

  return sub_100030048(v16, a2, a3);
}

uint64_t sub_1000364C8()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1000365C4, 0, 0);
}

uint64_t sub_1000365C4()
{
  v1 = v0[12];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[16] + *(v0[14] + 20);
  sub_10003694C(v1);
  v5 = *(v3 + 48);
  if (v5(v1, 1, v2) == 1)
  {
    sub_100009B18(v0[12], &qword_10004DCF8, &qword_10003DFB0);
    v6 = 1;
  }

  else
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[3];
    v10 = v0[4];
    sub_1000396B8();
    (*(v10 + 8))(v8, v9);
    v6 = 0;
  }

  v11 = v0[13];
  v12 = v0[11];
  v13 = v0[3];
  (*(v0[4] + 56))(v11, v6, 1, v13);
  sub_100009AB0(v11, v12, &qword_10004DCF8, &qword_10003DFB0);
  v14 = v5(v12, 1, v13);
  v15 = v0[11];
  v16 = v0[9];
  if (v14 == 1)
  {
    sub_100009B18(v0[11], &qword_10004DCF8, &qword_10003DFB0);
    sub_10003A4F8();
  }

  else
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = v0[3];
    (*(v18 + 32))(v17, v0[11], v19);
    sub_10003A4E8();
    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[15];
  v21 = v0[16];
  v22 = v0[13];
  v33 = v0[12];
  v34 = v0[11];
  v23 = v0[10];
  v25 = v0[7];
  v24 = v0[8];
  v26 = v0[6];
  v35 = v0[5];
  v27 = v0[2];
  (*(v25 + 32))(v23);
  sub_100001B2C(&qword_10004DD00, &unk_10003DFC0);
  v28 = *(v20 + 72);
  v29 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10003C0C0;
  sub_10003713C(v21, v30 + v29, type metadata accessor for ItemsWidgetProvider.Entry);
  (*(v25 + 16))(v24, v23, v26);
  sub_100037204(&qword_10004DCF0, type metadata accessor for ItemsWidgetProvider.Entry);
  sub_10003A5E8();
  (*(v25 + 8))(v23, v26);
  sub_100009B18(v22, &qword_10004DCF8, &qword_10003DFB0);
  sub_1000371A4(v21, type metadata accessor for ItemsWidgetProvider.Entry);

  v31 = v0[1];

  return v31();
}

uint64_t sub_10003694C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100039128();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  sub_10003713C(v2, &v25 - v18, type metadata accessor for ItemsWidgetProvider.Entry.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003713C(v19, v16, type metadata accessor for ItemsWidgetProvider.Entry.Content);
    v20 = *(v16 + 1);

    v21 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
    if ((*(v9 + 48))(&v16[v21], 1, v8) != 1)
    {
      sub_10003724C(&v16[v21], v12, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
      sub_100039278();
      sub_100039118();
      (*(v26 + 8))(v7, v4);
      sub_1000371A4(v12, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
      v22 = 0;
      goto LABEL_6;
    }

    sub_100009B18(&v16[v21], &qword_10004DBD0, &unk_10003DFD0);
  }

  v22 = 1;
LABEL_6:
  v23 = sub_1000396E8();
  (*(*(v23 - 8) + 56))(a1, v22, 1, v23);
  return sub_1000371A4(v19, type metadata accessor for ItemsWidgetProvider.Entry.Content);
}

Swift::Int sub_100036C98()
{
  v1 = *v0;
  sub_10003A9F8();
  sub_10003AA08(v1);
  return sub_10003AA18();
}

Swift::Int sub_100036D0C()
{
  v1 = *v0;
  sub_10003A9F8();
  sub_10003AA08(v1);
  return sub_10003AA18();
}

uint64_t sub_100036D50()
{
  sub_1000371A4(v0 + OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_dependencies, _s12DependenciesVMa_1);
  v1 = OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_logger;
  v2 = sub_100039998();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100036E38()
{
  result = _s12DependenciesVMa_1();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100039998();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100036F94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000049F0;

  return sub_100030048(a1, v7, a3);
}

uint64_t sub_100037048(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000049F0;

  return sub_100036298(a1, v7, a3);
}

uint64_t sub_10003713C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000371A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100037204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003724C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000372B4@<X0>(void *a1@<X8>)
{
  result = sub_100039BC8();
  *a1 = v3;
  return result;
}

unint64_t sub_100037330()
{
  result = qword_10004DD40;
  if (!qword_10004DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DD40);
  }

  return result;
}

uint64_t sub_100037384(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004DD08, &qword_10003DFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ItemsWidgetProvider.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemsWidgetProvider.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100037554(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100037568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000375B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100037604()
{
  sub_100037670();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100037670()
{
  if (!qword_10004DDE0)
  {
    sub_100001B74(&qword_10004DBD0, &unk_10003DFD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10004DDE0);
    }
  }
}

uint64_t sub_1000376FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039288();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000377D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100039288();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1000378BC()
{
  if (!qword_10004DE78)
  {
    sub_100037924(255, &qword_10004CCE0, UIImage_ptr);
    v0 = sub_10003A888();
    if (!v1)
    {
      atomic_store(v0, &qword_10004DE78);
    }
  }
}

uint64_t sub_100037924(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100037980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000396E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100037A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000396E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100037BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100037C40()
{
  result = qword_10004DF38;
  if (!qword_10004DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DF38);
  }

  return result;
}

uint64_t sub_100037CA8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000392F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100037D68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000392F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s12DependenciesVMa_1()
{
  result = qword_10004DF98;
  if (!qword_10004DF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100037E58()
{
  result = sub_10000A1F0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AccountStore();
    if (v2 <= 0x3F)
    {
      result = sub_1000392F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100037EFC@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_100039998();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = [objc_allocWithZone(ACAccountStore) init];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for AccountStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100039988();
  *(v14 + 112) = &unk_10003DC08;
  *(v14 + 120) = v10;
  v15 = _s12DependenciesVMa_1();
  v16 = a1 + *(v15 + 24);
  sub_1000392E8();
  sub_100039988();
  v17 = *(v3 + 32);
  v17(v5, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  result = (v17)(v19 + v18, v5, v2);
  *a1 = sub_100038154;
  a1[1] = 0;
  a1[2] = v14;
  v21 = (a1 + *(v15 + 28));
  *v21 = &unk_10003D7E0;
  v21[1] = v19;
  return result;
}

uint64_t sub_100038154()
{
  v3[3] = &type metadata for KoreaFeatureFlag;
  v3[4] = sub_1000381B8();
  v0 = sub_1000390D8();
  sub_100003214(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1000390B8() ^ 1;
  }

  return v1 & 1;
}

unint64_t sub_1000381B8()
{
  result = qword_10004DFD8;
  if (!qword_10004DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DFD8);
  }

  return result;
}

uint64_t sub_10003820C()
{

  return swift_deallocObject();
}

uint64_t sub_100038244()
{
  v1 = sub_100039998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

id sub_100038300()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10004DFE0 = result;
  return result;
}

uint64_t sub_100038358()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501A8);
  sub_100004618(v0, qword_1000501A8);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_100038400()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501C0);
  sub_100004618(v0, qword_1000501C0);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_1000384A8()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501D8);
  sub_100004618(v0, qword_1000501D8);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_100038550()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501F0);
  sub_100004618(v0, qword_1000501F0);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_1000385F8()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050208);
  sub_100004618(v0, qword_100050208);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_1000386A0()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050220);
  sub_100004618(v0, qword_100050220);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_100038748()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050238);
  sub_100004618(v0, qword_100050238);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_1000387F0()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050250);
  sub_100004618(v0, qword_100050250);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_1000388A0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100050138 == -1)
  {
    if (qword_100050140)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100038D68();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100050140)
    {
      return _availability_version_check();
    }
  }

  if (qword_100050130 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100038D80();
    a3 = v10;
    a4 = v9;
    v8 = dword_100050120 < v11;
    if (dword_100050120 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100050124 > a3)
      {
        return 1;
      }

      if (dword_100050124 >= a3)
      {
        return dword_100050128 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100050120 < a2;
  if (dword_100050120 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100038A34(uint64_t result)
{
  v1 = qword_100050140;
  if (qword_100050140)
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
      qword_100050140 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_100050120, &dword_100050124, &dword_100050128);
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