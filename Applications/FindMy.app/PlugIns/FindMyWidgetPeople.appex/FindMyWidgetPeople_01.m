void sub_10001C754()
{
  sub_10001C7C0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10001C7C0()
{
  if (!qword_1000485C0)
  {
    sub_100039910();
    v0 = sub_100038E90();
    if (!v1)
    {
      atomic_store(v0, &qword_1000485C0);
    }
  }
}

uint64_t sub_10001C834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000391A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001B3C(&qword_100048620, &qword_10003B5B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10001CC14(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100039910();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100039C60();
    v16 = sub_100039430();
    sub_100038E20();

    sub_100039190();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001CA1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100038D50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100039910();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_10001C834(&v19 - v13);
  sub_100039900();
  v15 = sub_1000398F0();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v14, v7);
  if (v15)
  {
    sub_100038D40();
    (*(v3 + 32))(a1, v6, v2);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v3 + 56))(a1, v17, 1, v2);
}

uint64_t sub_10001CC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100048620, &qword_10003B5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001CC88()
{
  result = qword_100049110;
  if (!qword_100049110)
  {
    sub_100001B84(&qword_100049118, &unk_10003C310);
    sub_10001CD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049110);
  }

  return result;
}

unint64_t sub_10001CD0C()
{
  result = qword_100049120;
  if (!qword_100049120)
  {
    sub_100038D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049120);
  }

  return result;
}

uint64_t sub_10001CDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B3C(&qword_1000491B8, ":");
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

uint64_t sub_10001CF18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001B3C(&qword_1000491B8, ":");
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

void sub_10001D020()
{
  sub_10001D63C(319, &unk_100049228, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetEntryViewContent.Model.State(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001D110()
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

uint64_t sub_10001D1EC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100001B3C(&qword_1000486C8, &unk_10003B630);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100001B3C(&qword_1000486D0, "f)");
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

uint64_t sub_10001D384(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B3C(&qword_1000486C8, &unk_10003B630);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B3C(&qword_1000486D0, "f)");
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

void sub_10001D508()
{
  sub_10001D690(319, &qword_100048748);
  if (v0 <= 0x3F)
  {
    sub_10001D63C(319, &qword_100048750, &type metadata accessor for FindMyRelativeDate);
    if (v1 <= 0x3F)
    {
      sub_10001D63C(319, &qword_100048758, &type metadata accessor for Symbol);
      if (v2 <= 0x3F)
      {
        sub_10001D690(319, &qword_100048CC8);
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

void sub_10001D63C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100039C90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001D690(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100039C90();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10001D6DC(uint64_t a1, int a2)
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

uint64_t sub_10001D724(uint64_t result, int a2, int a3)
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

uint64_t sub_10001D774(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001D78C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001D7A0(uint64_t a1, int a2)
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

uint64_t sub_10001D7E8(uint64_t result, int a2, int a3)
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

uint64_t sub_10001D85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100038E10();
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

uint64_t sub_10001D930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100038E10();
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

uint64_t sub_10001D9EC()
{
  result = sub_100038E10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001DB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001DBD8()
{
  result = type metadata accessor for WidgetEntryViewContent.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DCA8@<X0>(uint64_t a1@<X8>)
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
  v112 = sub_100001B3C(&qword_100049538, &qword_10003C508);
  v10 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v115 = &v106 - v11;
  v121 = sub_100001B3C(&qword_100049518, &qword_10003C500);
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
  v124 = sub_100001B3C(&qword_100049540, &qword_10003C510);
  v24 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v126 = &v106 - v25;
  v118 = sub_100001B3C(&qword_100049548, &qword_10003C518);
  v26 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v120 = &v106 - v27;
  v108 = sub_100001B3C(&qword_100049550, &qword_10003C520);
  v28 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v110 = &v106 - v29;
  v119 = sub_100001B3C(&qword_1000494F8, &qword_10003C4F8);
  v30 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v111 = &v106 - v31;
  v125 = sub_100001B3C(&qword_1000494E8, &qword_10003C4F0);
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
  sub_10001F468(v123 + *(v41 + 20), v40, type metadata accessor for WidgetEntryViewContent.Model.State);
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

      sub_100017B88(v96, v97);

      sub_10001F550(v96, v97);
      *v16 = v93;
      *(v16 + 1) = v92;
      v16[16] = v94;
      *(v16 + 3) = v95;
      *(v16 + 4) = v96;
      *(v16 + 5) = v97;
      *(v16 + 6) = v98;
      *(v16 + 7) = v99;
      *(v16 + 4) = xmmword_10003C320;
      *(v16 + 10) = 0x4040000000000000;
      v100 = v113;
      v101 = *(v113 + 28);
      *&v16[v101] = swift_getKeyPath();
      sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
      swift_storeEnumTagMultiPayload();
      v102 = *(v100 + 32);
      *&v16[v102] = swift_getKeyPath();
      sub_100001B3C(&qword_100048618, &qword_10003BAC0);
      swift_storeEnumTagMultiPayload();
      sub_10001F468(v16, v115, type metadata accessor for CenteredInformationView);
      swift_storeEnumTagMultiPayload();
      sub_10001F334(&qword_100049520, type metadata accessor for CenteredInformationView);
      sub_10001F334(&qword_100049528, type metadata accessor for TemplateInformationView);
      v103 = v117;
      sub_100039360();
      sub_1000095F0(v103, v120, &qword_100049518, &qword_10003C500);
      swift_storeEnumTagMultiPayload();
      sub_10001F248();
      sub_10001F37C();
      v104 = v122;
      sub_100039360();
      sub_100009658(v103, &qword_100049518, &qword_10003C500);
      sub_1000095F0(v104, v126, &qword_1000494E8, &qword_10003C4F0);
      swift_storeEnumTagMultiPayload();
      sub_10001F1BC();
      sub_10001F334(&qword_100049530, type metadata accessor for LoadedView);
      sub_100039360();
      sub_100009658(v104, &qword_1000494E8, &qword_10003C4F0);
      v63 = type metadata accessor for CenteredInformationView;
      v64 = v16;
    }

    else
    {
      sub_10001F594(v40, v23, type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage);
      v65 = &v23[*(v20 + 20)];
      v67 = *v65;
      v66 = *(v65 + 1);
      v68 = v65[16];
      v69 = *(v65 + 3);
      v70 = v114;
      v71 = *(v114 + 20);
      v72 = sub_100038E10();
      (*(*(v72 - 8) + 16))(&v19[v71], v23, v72);
      *v19 = v67;
      *(v19 + 1) = v66;
      v19[16] = v68;
      *(v19 + 3) = v69;
      v73 = &v19[v70[6]];
      *v73 = xmmword_10003C330;
      *(v73 + 2) = 0x4040000000000000;
      v74 = v70[7];
      *&v19[v74] = swift_getKeyPath();
      sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
      swift_storeEnumTagMultiPayload();
      v75 = &v19[v70[8]];
      *v75 = swift_getKeyPath();
      *(v75 + 1) = 0;
      *(v75 + 2) = 0;
      *(v75 + 3) = 0;
      v75[32] = 0;
      v76 = v70[9];
      *&v19[v76] = swift_getKeyPath();
      sub_100001B3C(&qword_100048618, &qword_10003BAC0);
      swift_storeEnumTagMultiPayload();
      sub_10001F468(v19, v110, type metadata accessor for EmptyStateView);
      swift_storeEnumTagMultiPayload();
      sub_10001F334(&qword_100049500, type metadata accessor for PlaceholderView);
      sub_10001F334(&qword_100049508, type metadata accessor for EmptyStateView);

      v77 = v111;
      sub_100039360();
      sub_1000095F0(v77, v120, &qword_1000494F8, &qword_10003C4F8);
      swift_storeEnumTagMultiPayload();
      sub_10001F248();
      sub_10001F37C();
      v78 = v122;
      sub_100039360();
      sub_100009658(v77, &qword_1000494F8, &qword_10003C4F8);
      sub_1000095F0(v78, v126, &qword_1000494E8, &qword_10003C4F0);
      swift_storeEnumTagMultiPayload();
      sub_10001F1BC();
      sub_10001F334(&qword_100049530, type metadata accessor for LoadedView);
      sub_100039360();
      sub_100009658(v78, &qword_1000494E8, &qword_10003C4F0);
      sub_10001F4F0(v19, type metadata accessor for EmptyStateView);
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
    sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
    swift_storeEnumTagMultiPayload();
    v84 = *(v82 + 24);
    *&v9[v84] = swift_getKeyPath();
    sub_100001B3C(&qword_100048618, &qword_10003BAC0);
    swift_storeEnumTagMultiPayload();
    sub_10001F468(v9, v115, type metadata accessor for TemplateInformationView);
    swift_storeEnumTagMultiPayload();
    sub_10001F334(&qword_100049520, type metadata accessor for CenteredInformationView);
    sub_10001F334(&qword_100049528, type metadata accessor for TemplateInformationView);
    v85 = v117;
    sub_100039360();
    sub_1000095F0(v85, v120, &qword_100049518, &qword_10003C500);
    swift_storeEnumTagMultiPayload();
    sub_10001F248();
    sub_10001F37C();
    v86 = v122;
    sub_100039360();
    sub_100009658(v85, &qword_100049518, &qword_10003C500);
    sub_1000095F0(v86, v126, &qword_1000494E8, &qword_10003C4F0);
    swift_storeEnumTagMultiPayload();
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView);
    sub_100039360();
    sub_100009658(v86, &qword_1000494E8, &qword_10003C4F0);
    v63 = type metadata accessor for TemplateInformationView;
    v64 = v9;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10001F594(v40, v6, type metadata accessor for WidgetEntryViewContent.Model.State.Loaded);
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
    sub_1000095F0(&v6[*(v107 + 24)], &v3[*(v128 + 24)], &qword_1000486C8, &unk_10003B630);
    sub_1000095F0(&v6[v49[7]], &v3[v50[7]], &qword_1000486D0, "f)");
    v51 = v49[9];
    v52 = &v6[v49[8]];
    v53 = *(v52 + 1);
    v117 = *v52;
    sub_10001F468(&v6[v51], &v3[v50[9]], type metadata accessor for LoadedView.Callout);
    v122 = *&v6[v49[10]];
    v54 = v122;
    *&v3[v50[13]] = swift_getKeyPath();
    sub_100001B3C(&qword_100048620, &qword_10003B5B0);
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
    sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
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
    sub_100001B3C(&qword_100048618, &qword_10003BAC0);
    swift_storeEnumTagMultiPayload();
    sub_10001F468(v3, v126, type metadata accessor for LoadedView);
    swift_storeEnumTagMultiPayload();

    sub_100017B88(v57, v46);

    sub_1000179EC(v122);
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView);
    sub_100039360();
    sub_10001F4F0(v3, type metadata accessor for LoadedView);
    v63 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded;
    v64 = v6;
  }

  else
  {
    *v36 = swift_getKeyPath();
    sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
    swift_storeEnumTagMultiPayload();
    v87 = v109;
    v88 = *(v109 + 20);
    *(v36 + v88) = swift_getKeyPath();
    sub_100001B3C(&qword_100048618, &qword_10003BAC0);
    swift_storeEnumTagMultiPayload();
    v89 = *(v87 + 24);
    *(v36 + v89) = swift_getKeyPath();
    sub_100001B3C(&qword_100048620, &qword_10003B5B0);
    swift_storeEnumTagMultiPayload();
    sub_10001F468(v36, v110, type metadata accessor for PlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_10001F334(&qword_100049500, type metadata accessor for PlaceholderView);
    sub_10001F334(&qword_100049508, type metadata accessor for EmptyStateView);
    v90 = v111;
    sub_100039360();
    sub_1000095F0(v90, v120, &qword_1000494F8, &qword_10003C4F8);
    swift_storeEnumTagMultiPayload();
    sub_10001F248();
    sub_10001F37C();
    v91 = v122;
    sub_100039360();
    sub_100009658(v90, &qword_1000494F8, &qword_10003C4F8);
    sub_1000095F0(v91, v126, &qword_1000494E8, &qword_10003C4F0);
    swift_storeEnumTagMultiPayload();
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView);
    sub_100039360();
    sub_100009658(v91, &qword_1000494E8, &qword_10003C4F0);
    v63 = type metadata accessor for PlaceholderView;
    v64 = v36;
  }

  return sub_10001F4F0(v64, v63);
}

uint64_t sub_10001F03C()
{
  v0 = sub_100001B3C(&qword_1000494D0, &qword_10003C4E8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_10001DCA8(&v5 - v2);
  sub_10001F100();
  sub_100039610();
  return sub_100009658(v3, &qword_1000494D0, &qword_10003C4E8);
}

unint64_t sub_10001F100()
{
  result = qword_1000494D8;
  if (!qword_1000494D8)
  {
    sub_100001B84(&qword_1000494D0, &qword_10003C4E8);
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000494D8);
  }

  return result;
}

unint64_t sub_10001F1BC()
{
  result = qword_1000494E0;
  if (!qword_1000494E0)
  {
    sub_100001B84(&qword_1000494E8, &qword_10003C4F0);
    sub_10001F248();
    sub_10001F37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000494E0);
  }

  return result;
}

unint64_t sub_10001F248()
{
  result = qword_1000494F0;
  if (!qword_1000494F0)
  {
    sub_100001B84(&qword_1000494F8, &qword_10003C4F8);
    sub_10001F334(&qword_100049500, type metadata accessor for PlaceholderView);
    sub_10001F334(&qword_100049508, type metadata accessor for EmptyStateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000494F0);
  }

  return result;
}

uint64_t sub_10001F334(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001F37C()
{
  result = qword_100049510;
  if (!qword_100049510)
  {
    sub_100001B84(&qword_100049518, &qword_10003C500);
    sub_10001F334(&qword_100049520, type metadata accessor for CenteredInformationView);
    sub_10001F334(&qword_100049528, type metadata accessor for TemplateInformationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049510);
  }

  return result;
}

uint64_t sub_10001F468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F550(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001F594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F5FC()
{
  sub_100001B84(&qword_1000494D0, &qword_10003C4E8);
  sub_10001F100();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100048540, &unk_10003BCE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001F70C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100048540, &unk_10003BCE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WidgetGridBackground()
{
  result = qword_1000495B0;
  if (!qword_1000495B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F7F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000391A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001B3C(&qword_100048620, &qword_10003B5B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000095F0(v2, &v17 - v11, &qword_100048620, &qword_10003B5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100039910();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100039C60();
    v16 = sub_100039430();
    sub_100038E20();

    sub_100039190();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001F9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39[1] = a1;
  v44 = a2;
  v45 = sub_100038D70();
  v42 = *(v45 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v45);
  v43 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = v39 - v5;
  v6 = sub_100038D30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v39[0] = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100039910();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_100001B3C(&qword_1000495F0, &qword_10003C6A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v39 - v23;
  sub_100039BC0();
  v41 = sub_100039BB0();
  sub_100039B70();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10001F7F0(v17);
  sub_100039900();
  sub_10001FEB0();
  v25 = sub_100039AE0();
  v26 = *(v11 + 8);
  v26(v14, v10);
  v26(v17, v10);
  if (v25)
  {
    v27 = v39[0];
    sub_100038D20();
    (*(v7 + 32))(v24, v27, v6);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v7 + 56))(v24, v28, 1, v6);
  v29 = v40;
  sub_100038D60();
  v30 = v24;
  sub_1000095F0(v24, v21, &qword_1000495F0, &qword_10003C6A0);
  v31 = v42;
  v32 = v43;
  v33 = *(v42 + 16);
  v34 = v45;
  v33(v43, v29, v45);
  v35 = v44;
  sub_1000095F0(v21, v44, &qword_1000495F0, &qword_10003C6A0);
  v36 = sub_100001B3C(&qword_1000495F8, &unk_10003C6A8);
  v33((v35 + *(v36 + 48)), v32, v34);
  v37 = *(v31 + 8);
  v37(v29, v34);
  sub_10001FF08(v30);
  v37(v32, v34);
  sub_10001FF08(v21);
}

uint64_t sub_10001FE64@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100039890();
  a1[1] = v3;
  v4 = sub_100001B3C(&qword_1000495E8, &qword_10003C698);
  return sub_10001F9F0(v1, a1 + *(v4 + 44));
}

unint64_t sub_10001FEB0()
{
  result = qword_100048FC0;
  if (!qword_100048FC0)
  {
    sub_100039910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048FC0);
  }

  return result;
}

uint64_t sub_10001FF08(uint64_t a1)
{
  v2 = sub_100001B3C(&qword_1000495F0, &qword_10003C6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001FF74()
{
  result = qword_100049600;
  if (!qword_100049600)
  {
    sub_100001B84(&qword_100049608, &qword_10003C6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049600);
  }

  return result;
}

uint64_t type metadata accessor for WidgetPersonEntity()
{
  result = qword_1000496D8;
  if (!qword_1000496D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002018C()
{
  v0 = sub_100001B3C(&qword_100049740, "Z7");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100038B00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000385F0();
  sub_100004190(v7, qword_10004BD00);
  sub_100004158(v7, qword_10004BD00);
  sub_100038AF0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000385E0();
}

uint64_t sub_1000202FC()
{
  v0 = sub_100038E50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for WidgetPersonEntityQuery();
  sub_100004190(v7, qword_10004BD18);
  v8 = sub_100004158(v7, qword_10004BD18);
  sub_100038E40();
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  v12 = v8 + *(v7 + 20);
  result = sub_100038E40();
  *v8 = &unk_10003CB80;
  v8[1] = v11;
  return result;
}

size_t sub_1000204D0@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v96 = sub_100038490();
  v85[0] = *(v96 - 8);
  v1 = *(v85[0] + 64);
  __chkstk_darwin(v96);
  v95 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1000387D0();
  v90 = *(v111 - 8);
  v3 = *(v90 + 64);
  __chkstk_darwin(v111);
  v110 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000384A0();
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 64);
  __chkstk_darwin(v5);
  v106 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = v85 - v9;
  v10 = sub_100001B3C(&qword_100049728, "Z7");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v86 = v85 - v12;
  v13 = sub_100038800();
  v107 = *(v13 - 8);
  v14 = *(v107 + 64);
  __chkstk_darwin(v13);
  v105 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v103 = v85 - v17;
  v102 = sub_100038780();
  v104 = *(v102 - 8);
  v18 = *(v104 + 64);
  __chkstk_darwin(v102);
  v101 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v100 = v85 - v21;
  v22 = sub_100001B3C(&qword_100049730, "Z7");
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v89 = v85 - v24;
  v25 = sub_1000386A0();
  v98 = *(v25 - 8);
  v99 = v25;
  v26 = *(v98 + 64);
  __chkstk_darwin(v25);
  v28 = v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100038450();
  v93 = *(v29 - 8);
  v94 = v29;
  v30 = *(v93 + 64);
  __chkstk_darwin(v29);
  v88 = (v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100038750();
  v92 = *(v32 - 8);
  v33 = *(v92 + 64);
  __chkstk_darwin(v32);
  v35 = v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100001B3C(&qword_100049738, "Z7");
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = (v85 - v38);
  v40 = sub_100038420();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = (v85 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_100038790();
  v85[1] = v44;
  if (v46)
  {
    *v39 = v45;
    v39[1] = v46;
    (*(v41 + 104))(v39, enum case for IntentPerson.Identifier.contact(_:), v40);
    (*(v41 + 56))(v39, 0, 1, v40);
    (*(v41 + 32))(v44, v39, v40);
  }

  else
  {
    (*(v41 + 56))(v39, 1, 1, v40);
    sub_100038840();
    v47 = sub_100038740();
    v49 = v48;
    (*(v92 + 8))(v35, v32);
    *v44 = v47;
    v44[1] = v49;
    (*(v41 + 104))(v44, enum case for IntentPerson.Identifier.applicationDefined(_:), v40);
    if ((*(v41 + 48))(v39, 1, v40) != 1)
    {
      sub_100021D78(v39);
    }
  }

  sub_1000386B0();
  v50 = sub_100038690();
  v52 = v51;
  (*(v98 + 8))(v28, v99);
  v53 = v88;
  *v88 = v50;
  v53[1] = v52;
  (*(v93 + 104))();
  v54 = v100;
  sub_100038830();
  v55 = v103;
  sub_100038770();
  v56 = *(v104 + 8);
  v57 = v102;
  v56(v54, v102);
  v58 = v89;
  sub_100021B28();
  v59 = v107;
  v103 = *(v107 + 8);
  v104 = v107 + 8;
  (v103)(v55, v13);
  v60 = v108;
  (*(v108 + 56))(v58, 0, 1, v109);
  v61 = v101;
  sub_100038830();
  v62 = sub_100038760();
  v56(v61, v57);
  v63 = *(v62 + 16);
  if (v63)
  {
    v112 = &_swiftEmptyArrayStorage;
    result = sub_1000372EC(0, v63, 0);
    v65 = 0;
    v66 = v112;
    v101 = (v62 + ((*(v59 + 80) + 32) & ~*(v59 + 80)));
    v100 = (v59 + 16);
    v99 = (v90 + 88);
    LODWORD(v98) = enum case for PersonModel.Handle.Kind.phoneNumber(_:);
    LODWORD(v92) = enum case for PersonModel.Handle.Kind.email(_:);
    v91 = enum case for PersonModel.Handle.Kind.unknown(_:);
    v90 += 8;
    LODWORD(v94) = enum case for IntentPerson.Handle.Label.other(_:);
    v93 = v85[0] + 104;
    v67 = (v60 + 32);
    v68 = v97;
    v102 = v62;
    while (v65 < *(v62 + 16))
    {
      v69 = &v101[*(v59 + 72) * v65];
      v70 = *(v59 + 16);
      v71 = v105;
      v70(v105, v69, v13);
      v72 = v110;
      sub_1000387E0();
      v73 = (*v99)(v72, v111);
      if (v73 == v98)
      {
        sub_1000387F0();
        (*v93)(v95, v94, v96);
        v74 = v106;
        v68 = v97;
        sub_100038460();
      }

      else if (v73 == v92)
      {
        sub_1000387F0();
        (*v93)(v95, v94, v96);
        v74 = v106;
        v68 = v97;
        sub_100038470();
      }

      else
      {
        v75 = v73;
        sub_1000387F0();
        v74 = v106;
        sub_100038480();
        if (v75 != v91)
        {
          (*v90)(v110, v111);
        }
      }

      v76 = *v67;
      v77 = v74;
      v78 = v109;
      (*v67)(v68, v77, v109);
      v79 = v71;
      v80 = v13;
      (v103)(v79, v13);
      v112 = v66;
      v81 = v68;
      v83 = v66[2];
      v82 = v66[3];
      if (v83 >= v82 >> 1)
      {
        sub_1000372EC(v82 > 1, v83 + 1, 1);
        v78 = v109;
        v66 = v112;
      }

      ++v65;
      v66[2] = v83 + 1;
      result = v76(v66 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v83, v81, v78);
      v68 = v81;
      v13 = v80;
      v59 = v107;
      v62 = v102;
      if (v63 == v65)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v84 = sub_100038560();
    (*(*(v84 - 8) + 56))(v86, 1, 1, v84);
    return sub_100038430();
  }

  return result;
}

uint64_t sub_1000210CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000482A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for WidgetPersonEntityQuery();
  v3 = sub_100004158(v2, qword_10004BD18);

  return sub_100021DE0(v3, a1);
}

uint64_t sub_100021310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100038750();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10002137C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000482A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000385F0();
  v3 = sub_100004158(v2, qword_10004BD00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100021428()
{
  result = qword_100049668;
  if (!qword_100049668)
  {
    sub_100001B84(&qword_100049670, &qword_10003C838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049668);
  }

  return result;
}

uint64_t sub_10002148C(uint64_t a1)
{
  v2 = sub_100021AE0(&qword_100049638, type metadata accessor for WidgetPersonEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100021550(uint64_t a1)
{
  v3 = sub_1000384B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(a1 + 24));
  sub_1000384D0();
  sub_100038440();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100021634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003DBC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000216F8(uint64_t a1)
{
  v2 = sub_100021AE0(&qword_100049658, type metadata accessor for WidgetPersonEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100021788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100038750();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100038850();
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

  return (v14 + 1);
}

uint64_t sub_1000218A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100038750();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100038850();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000219B0()
{
  sub_100038750();
  if (v0 <= 0x3F)
  {
    sub_100038850();
    if (v1 <= 0x3F)
    {
      sub_100021A4C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100021A4C()
{
  if (!qword_1000496E8)
  {
    sub_1000384B0();
    sub_100021AE0(&unk_1000496F0, &type metadata accessor for IntentPerson);
    v0 = sub_100038500();
    if (!v1)
    {
      atomic_store(v0, &qword_1000496E8);
    }
  }
}

uint64_t sub_100021AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021B28()
{
  v0 = sub_100038490();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000387D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000387E0();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    sub_1000387F0();
    (*(v1 + 104))(v4, enum case for IntentPerson.Handle.Label.other(_:), v0);
    return sub_100038460();
  }

  else if (v10 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    sub_1000387F0();
    (*(v1 + 104))(v4, enum case for IntentPerson.Handle.Label.other(_:), v0);
    return sub_100038470();
  }

  else
  {
    v12 = enum case for PersonModel.Handle.Kind.unknown(_:);
    v13 = v10;
    sub_1000387F0();
    result = sub_100038480();
    if (v13 != v12)
    {
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t sub_100021D78(uint64_t a1)
{
  v2 = sub_100001B3C(&qword_100049738, "Z7");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPersonEntityQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021E44()
{
  v1 = sub_100038E50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t type metadata accessor for WidgetPersonEntityQuery()
{
  result = qword_1000497C8;
  if (!qword_1000497C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100021F68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000384B0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_100038850();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = *(*(sub_100001B3C(&qword_100049800, &qword_10003CAF0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v10 = sub_1000387A0();
  v2[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = sub_100001B3C(&qword_100049808, &qword_10003CAF8);
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100022178, 0, 0);
}

uint64_t sub_100022178()
{
  v10 = v0;
  v1 = *(v0 + 24);
  *(v0 + 176) = *(type metadata accessor for WidgetPersonEntityQuery() + 20);
  v2 = sub_100038E30();
  v3 = sub_100039C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A900, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100002D54(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_1000222F8;
  v7 = *(v0 + 24);

  return sub_100022BBC(0);
}

uint64_t sub_1000222F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_100022958;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_100022420;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100022420()
{
  v1 = v0[18];
  v2 = v0[15];
  v42 = v0[16];
  v3 = v0[14];
  v38 = v0[21];
  v40 = v0[8];
  sub_100039BE0();
  sub_100039BD0();
  sub_100027D80(&qword_100049810, &type metadata accessor for PersonModel.Tag);
  sub_1000389A0();
  sub_100001B3C(&qword_100049818, &qword_10003CB10);
  sub_100027D80(&qword_100049820, &type metadata accessor for PersonModel);
  sub_100027D80(&qword_100049828, &type metadata accessor for PersonModel);
  sub_100027D80(&qword_100049830, &type metadata accessor for PersonModel);
  sub_100027D80(&qword_100049838, &type metadata accessor for PersonModel);
  sub_100006F3C(&qword_100049840, &qword_100049818, &qword_10003CB10);
  sub_1000389D0();
  v4 = sub_1000389C0();
  if (*(v4 + 16))
  {
    (*(v0[9] + 16))(v0[13], v4 + ((*(v0[9] + 80) + 32) & ~*(v0[9] + 80)), v0[8]);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[8];
  v9 = v0[9];

  (*(v9 + 56))(v6, v5, 1, v8);
  sub_100025BEC(v6, v7);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = v0[17];
  v43 = v0[18];
  v12 = v0[16];
  if (v10 == 1)
  {
    sub_100009658(v0[13], &qword_100049800, &qword_10003CAF0);
    (*(v11 + 8))(v43, v12);
    v13 = type metadata accessor for WidgetPersonEntity();
    v14 = 1;
  }

  else
  {
    v37 = v0[11];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    v33 = v17;
    v34 = v0[5];
    v35 = v0[6];
    v36 = v0[4];
    v19 = v0[2];
    v41 = v0[13];
    (*(v16 + 32))(v37, v0[12], v18);
    v32 = *(v16 + 16);
    v32(v15, v37, v18);
    v13 = type metadata accessor for WidgetPersonEntity();
    v39 = v12;
    v20 = *(v13 + 24);
    sub_100001B3C(&qword_100049848, &qword_10003CB18);
    *(v19 + v20) = sub_1000384F0();
    v32(v19 + *(v13 + 20), v15, v18);
    sub_100038840();
    sub_1000204D0(v33);
    (*(v34 + 16))(v35, v33, v36);
    sub_1000384E0();
    (*(v34 + 8))(v33, v36);
    v21 = *(v16 + 8);
    v21(v15, v18);
    v21(v37, v18);
    sub_100009658(v41, &qword_100049800, &qword_10003CAF0);
    (*(v11 + 8))(v43, v39);
    v14 = 0;
  }

  v22 = v0[18];
  v23 = v0[15];
  v25 = v0[12];
  v24 = v0[13];
  v27 = v0[10];
  v26 = v0[11];
  v29 = v0[6];
  v28 = v0[7];
  (*(*(v13 - 8) + 56))(v0[2], v14, 1, v13);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100022958()
{
  v24 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 176);
  v3 = *(v0 + 24);
  swift_errorRetain();
  v4 = sub_100038E30();
  v5 = sub_100039C50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A900, &v23);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - error: %{public}@", v8, 0x16u);
    sub_100009658(v9, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v10);
  }

  else
  {
  }

  v12 = type metadata accessor for WidgetPersonEntity();
  v13 = *(v0 + 144);
  v14 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  (*(*(v12 - 8) + 56))(*(v0 + 16), 1, 1);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100022BBC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000384C0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100022C7C, 0, 0);
}

uint64_t sub_100022C7C()
{
  v21 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(v0 + 88) = *(type metadata accessor for WidgetPersonEntityQuery() + 20);

  v3 = sub_100038E30();
  v4 = sub_100039C70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A920, &v20);
    *(v6 + 12) = 2080;
    *(v0 + 16) = v5;

    v7 = sub_100039B00();
    v9 = sub_100035100(v7, v8, &v20);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - will call fetchWithOptions: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 32);
  v12 = *v11;
  v13 = v11[1];
  sub_100027D80(&qword_100049748, type metadata accessor for WidgetPersonEntityQuery);
  sub_1000385A0();
  v19 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_100022F28;
  v16 = *(v0 + 56);
  v17 = *(v0 + 24);

  return v19(v17, v16);
}

uint64_t sub_100022F28(uint64_t a1)
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
    v8 = sub_100023330;
  }

  else
  {
    v8 = sub_10002309C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002309C()
{
  v21 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);

  v4 = sub_100038E30();
  v5 = sub_100039C70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A920, &v20);
    *(v7 + 12) = 2080;
    sub_100038750();
    sub_100038850();
    sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier);
    v8 = sub_100039AA0();
    v10 = sub_100035100(v8, v9, &v20);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - did receive fetchWithOptions: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 72);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_100025AF0(*(v11 + 16), 0);
    v14 = *(sub_100038850() - 8);
    sub_1000276D4(&v20, &v13[(*(v14 + 80) + 32) & ~*(v14 + 80)], v12, v11);
    v16 = v15;
    sub_100027978();
    if (v16 == v12)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v13 = &_swiftEmptyArrayStorage;
LABEL_7:
  v17 = *(v0 + 56);

  v18 = *(v0 + 8);

  return v18(v13);
}

uint64_t sub_100023330()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100023394(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000384B0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_100038850();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for WidgetPersonEntity();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100023524, 0, 0);
}

uint64_t sub_100023524()
{
  v18 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for WidgetPersonEntityQuery() + 20);

  v4 = sub_100038E30();
  v5 = sub_100039C70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100035100(0x7365697469746E65, 0xEE00293A726F6628, &v17);
    *(v7 + 12) = 2082;
    sub_100038750();
    v8 = sub_100039B50();
    v10 = sub_100035100(v8, v9, &v17);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - ids: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[2];

  v13 = sub_100027980(v12);
  v0[15] = v13;

  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_10002372C;
  v15 = v0[3];

  return sub_100022BBC(v13);
}

uint64_t sub_10002372C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v8 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = sub_100023B48;
  }

  else
  {
    v6 = v3[15];

    v5 = sub_100023848;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100023848()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = v0[12];
    v34 = v0[13];
    v3 = v0[9];
    v4 = v0[5];
    sub_100037330(0, v2, 0);
    sub_100001B3C(&qword_100049848, &qword_10003CB18);
    v5 = &_swiftEmptyArrayStorage;
    v6 = *(v3 + 16);
    v3 += 16;
    v32 = v6;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v31 = *(v3 + 56);
    v30 = (v3 - 8);
    v29 = v0;
    do
    {
      v40 = v5;
      v41 = v2;
      v8 = v0[14];
      v10 = v0[10];
      v9 = v0[11];
      v11 = v0[7];
      v12 = v0[8];
      v35 = v11;
      v36 = v0[6];
      v13 = v0[4];
      v37 = v13;
      v38 = v9;
      v39 = v7;
      v32(v9, v7, v12);
      v32(v10, v9, v12);
      v14 = *(v33 + 24);
      *(v8 + v14) = sub_1000384F0();
      v32(v8 + *(v33 + 20), v10, v12);
      sub_100038840();
      sub_1000204D0(v35);
      (*(v4 + 16))(v36, v35, v37);
      sub_1000384E0();
      (*(v4 + 8))(v35, v37);
      v15 = *v30;
      (*v30)(v10, v12);
      v16 = v12;
      v5 = v40;
      v15(v38, v16);
      v18 = v40[2];
      v17 = v40[3];
      if (v18 >= v17 >> 1)
      {
        sub_100037330(v17 > 1, v18 + 1, 1);
        v5 = v40;
      }

      v19 = v29[14];
      v5[2] = v18 + 1;
      sub_100027D1C(v19, v5 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v18);
      v7 = v39 + v31;
      --v2;
      v0 = v29;
    }

    while (v41 != 1);
    v20 = v29[17];
  }

  else
  {
    v21 = v0[17];

    v5 = &_swiftEmptyArrayStorage;
  }

  v22 = v0[14];
  v23 = v0[10];
  v24 = v0[11];
  v26 = v0[6];
  v25 = v0[7];

  v27 = v0[1];

  return v27(v5);
}

uint64_t sub_100023B48()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_100023BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_100038820();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v53 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100001B3C(&qword_100049860, &qword_10003CB30);
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v52);
  v49 = &v37 - v9;
  v51 = sub_100001B3C(&qword_100049868, &unk_10003CB38);
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v51);
  v13 = &v37 - v12;
  v14 = sub_100001B3C(&qword_100049740, "Z7");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v50 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = sub_100038B00();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = sub_100001B3C(&qword_100049808, &qword_10003CAF8);
  v22 = sub_1000389B0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v38 = v21;
    v39 = v19;
    v40 = a2;
    v41 = a1;
    v55 = &_swiftEmptyArrayStorage;
    sub_100037374(0, v23, 0);
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
      sub_1000389F0();
      sub_100038810();
      v33 = (*v44)(v32, v54);
      __chkstk_darwin(v33);
      *(&v37 - 2) = v30;
      type metadata accessor for WidgetPersonEntity();
      sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity);
      sub_100038530();
      (*v43)(v30, v31);
      v55 = v25;
      v35 = v25[2];
      v34 = v25[3];
      if (v35 >= v34 >> 1)
      {
        sub_100037374(v34 > 1, v35 + 1, 1);
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

  type metadata accessor for WidgetPersonEntity();
  sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity);
  sub_100038540();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

uint64_t sub_10002414C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000387A0();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_100001B3C(&qword_100049808, &qword_10003CAF8);
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100024254, 0, 0);
}

uint64_t sub_100024254()
{
  v11 = v0;
  v1 = *(v0 + 32);
  v2 = v1 + *(type metadata accessor for WidgetPersonEntityQuery() + 20);
  v3 = sub_100038E30();
  v4 = sub_100039C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100035100(0x7469746E456C6C61, 0xED00002928736569, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100002D54(v6);
  }

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1000243D8;
  v8 = *(v0 + 32);

  return sub_100022BBC(0);
}

uint64_t sub_1000243D8(uint64_t a1)
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

    return _swift_task_switch(sub_100024538, 0, 0);
  }
}

uint64_t sub_100024538()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v8 = v0[12];
  v9 = v0[7];
  v4 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  sub_100039BE0();
  sub_1000387B0();
  sub_100027D80(&qword_100049858, &type metadata accessor for PersonModel.Sort);
  sub_100039CF0();
  sub_100027B1C(v0[2]);

  sub_100027D80(&qword_100049810, &type metadata accessor for PersonModel.Tag);
  sub_1000389A0();
  sub_100038850();
  sub_100001B3C(&qword_100049818, &qword_10003CB10);
  sub_100027D80(&qword_100049820, &type metadata accessor for PersonModel);
  sub_100027D80(&qword_100049828, &type metadata accessor for PersonModel);
  sub_100027D80(&qword_100049830, &type metadata accessor for PersonModel);
  sub_100027D80(&qword_100049838, &type metadata accessor for PersonModel);
  sub_100006F3C(&qword_100049840, &qword_100049818, &qword_10003CB10);
  sub_1000389D0();
  (*(v3 + 16))(v1, v2, v9);
  sub_100023BEC(v1, v10);
  (*(v3 + 8))(v2, v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002482C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003DBC;

  return sub_10002414C(a1);
}

uint64_t sub_1000249A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100038E50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_100038E40();
  v11 = *(v5 + 32);
  v11(v7, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v11((v13 + v12), v7, v4);
  v14 = a2 + *(a1 + 20);
  result = sub_100038E40();
  *a2 = &unk_10003CB80;
  a2[1] = v13;
  return result;
}

uint64_t sub_100024B50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002802C;

  return sub_100023394(a1);
}

uint64_t sub_100024BE4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100027D80(&qword_1000498A8, type metadata accessor for WidgetPersonEntityQuery);
  *v6 = v2;
  v6[1] = sub_100004530;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v7);
}

uint64_t sub_100024CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100024D88;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100024D88(uint64_t a1)
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

uint64_t sub_100024F5C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100027D80(&qword_100049628, type metadata accessor for WidgetPersonEntityQuery);
  *v6 = v2;
  v6[1] = sub_100004530;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100025040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003DBC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10002510C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100038E50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000251CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100038E50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100025270()
{
  result = sub_100038E50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000252EC()
{
  v66 = sub_1000384B0();
  v0 = *(v66 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v66);
  v65 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v64 = &v47 - v4;
  v63 = sub_100038850();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v63);
  v62 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for WidgetPersonEntity();
  v8 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001B3C(&qword_100049870, &qword_10003CB48);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  sub_100001B3C(&qword_100049860, &qword_10003CB30);
  v15 = sub_1000389E0();
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = sub_100001B3C(&qword_100049848, &qword_10003CB18);
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v56 = v19;
    v57 = v17;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v47 = v15;
    v21 = v15 + v20;
    v22 = *(v18 + 56);
    v54 = (v0 + 16);
    v55 = v22;
    v52 = (v18 - 8);
    v53 = (v0 + 8);
    v50 = (v11 + 8);
    v51 = v11 + 16;
    v23 = &_swiftEmptyArrayStorage;
    v49 = xmmword_10003B220;
    v59 = v11;
    v60 = v18;
    v58 = v14;
    v48 = v10;
    do
    {
      v68 = v23;
      v69 = v16;
      v25 = v62;
      v24 = v63;
      v26 = v56;
      v56(v62, v21, v63);
      v27 = v67;
      v28 = *(v67 + 24);
      v29 = sub_1000384F0();
      v30 = v61;
      *&v61[v28] = v29;
      v26(&v30[*(v27 + 20)], v25, v24);
      sub_100038840();
      v31 = v64;
      sub_1000204D0(v64);
      v32 = v66;
      (*v54)(v65, v31, v66);
      sub_1000384E0();
      (*v53)(v31, v32);
      v33 = v25;
      v35 = v58;
      v34 = v59;
      v36 = v24;
      v37 = v48;
      (*v52)(v33, v36);
      sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity);
      sub_1000383E0();
      v38 = v30;
      v23 = v68;
      sub_100027CC0(v38);
      sub_100001B3C(&qword_100049878, &qword_10003CB50);
      v39 = *(v34 + 72);
      v40 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v49;
      (*(v34 + 16))(v41 + v40, v35, v37);
      v42 = sub_1000383C0();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1000259BC(0, v23[2] + 1, 1, v23);
      }

      v44 = v23[2];
      v43 = v23[3];
      if (v44 >= v43 >> 1)
      {
        v23 = sub_1000259BC((v43 > 1), v44 + 1, 1, v23);
      }

      (*v50)(v35, v37);
      v23[2] = v44 + 1;
      v23[v44 + 4] = v42;
      v21 += v55;
      v16 = v69 - 1;
    }

    while (v69 != 1);
  }

  sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity);
  sub_1000383B0();

  v45 = sub_1000383D0();

  return v45;
}

char *sub_1000258B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B3C(&qword_1000498C0, &qword_10003CB90);
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

void *sub_1000259BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001B3C(&qword_100049880, &qword_10003CB58);
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
    sub_100001B3C(&qword_100049888, &qword_10003CB60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100025AF0(uint64_t a1, uint64_t a2)
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

  sub_100001B3C(&qword_100049850, &qword_10003CB20);
  v4 = *(sub_100038850() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100025BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100049800, &qword_10003CAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025C5C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100038750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier);
  v36 = a2;
  v13 = sub_100039AB0();
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
      sub_100027D80(&qword_1000498B0, &type metadata accessor for PersonModel.UniqueIdentifier);
      v23 = sub_100039AE0();
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
    sub_1000268D4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100025F3C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000387B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort);
  v36 = a2;
  v13 = sub_100039AB0();
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
      sub_100027D80(&qword_100049898, &type metadata accessor for PersonModel.Sort);
      v23 = sub_100039AE0();
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
    sub_100026B9C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10002621C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100038750();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100001B3C(&qword_1000498B8, &qword_10003CB78);
  result = sub_100039CC0();
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
      sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier);
      result = sub_100039AB0();
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

uint64_t sub_100026578(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1000387B0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100001B3C(&qword_1000498A0, &qword_10003CB68);
  result = sub_100039CC0();
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
      sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort);
      result = sub_100039AB0();
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

uint64_t sub_1000268D4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_100038750();
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
    sub_10002621C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100026E64(&type metadata accessor for PersonModel.UniqueIdentifier, &qword_1000498B8, &qword_10003CB78);
      goto LABEL_12;
    }

    sub_10002709C(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier);
  v16 = sub_100039AB0();
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
      sub_100027D80(&qword_1000498B0, &type metadata accessor for PersonModel.UniqueIdentifier);
      v24 = sub_100039AE0();
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
  result = sub_100039D30();
  __break(1u);
  return result;
}

uint64_t sub_100026B9C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1000387B0();
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
    sub_100026578(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100026E64(&type metadata accessor for PersonModel.Sort, &qword_1000498A0, &qword_10003CB68);
      goto LABEL_12;
    }

    sub_1000273B8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort);
  v16 = sub_100039AB0();
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
      sub_100027D80(&qword_100049898, &type metadata accessor for PersonModel.Sort);
      v24 = sub_100039AE0();
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
  result = sub_100039D30();
  __break(1u);
  return result;
}

void *sub_100026E64(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_100001B3C(a2, a3);
  v12 = *v3;
  v13 = sub_100039CB0();
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

uint64_t sub_10002709C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100038750();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100001B3C(&qword_1000498B8, &qword_10003CB78);
  v10 = sub_100039CC0();
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
      sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier);
      result = sub_100039AB0();
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

uint64_t sub_1000273B8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000387B0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100001B3C(&qword_1000498A0, &qword_10003CB68);
  v10 = sub_100039CC0();
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
      sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort);
      result = sub_100039AB0();
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

void sub_1000276D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_100038850();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_100027980(uint64_t a1)
{
  v2 = sub_100038750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier);
  result = sub_100039BF0();
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
      sub_100025C5C(v9, v6);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100027B1C(uint64_t a1)
{
  v2 = sub_1000387B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort);
  result = sub_100039BF0();
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
      sub_100025F3C(v9, v6);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100027CC0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetPersonEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPersonEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027DC8()
{
  v1 = sub_100038E50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100027E50(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_100038E50() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100027F30;

  return sub_10002810C(a1, a2, v2 + v7);
}

uint64_t sub_100027F30(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100028040(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100028090(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000280E4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_100038B80();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = *(*(sub_100038B90() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000281F8, 0, 0);
}

uint64_t sub_1000281F8()
{
  v1 = v0[7];
  (*(v0[5] + 104))(v0[6], enum case for ClientOrigin.findMyApp(_:), v0[4]);
  sub_100038BA0();
  v2 = sub_100038BF0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = async function pointer to Session.init(_:)[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1000282DC;
  v7 = v0[7];

  return Session.init(_:)(v7);
}

uint64_t sub_1000282DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;
  v3[9] = a1;

  v6 = async function pointer to Session.fetchPeople(logger:)[1];
  v7 = swift_task_alloc();
  v3[10] = v7;
  *v7 = v5;
  v7[1] = sub_10002842C;
  v8 = v3[3];

  return Session.fetchPeople(logger:)(v8);
}

uint64_t sub_10002842C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_100028770;
  }

  else
  {
    v5 = sub_100028540;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100028540()
{
  v20 = v0;
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[2];

    v5 = sub_100029270(v3, v1);
  }

  else
  {
    v5 = v0[11];
  }

  v6 = v0[3];

  v7 = sub_100038E30();
  v8 = sub_100039C40();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100035100(0x6576694C6C616572, 0xEA00000000002928, v19);
    *(v11 + 12) = 2080;
    sub_100038750();
    sub_100038850();
    sub_100029430(&qword_100049660);
    v12 = sub_100039AA0();
    v14 = sub_100035100(v12, v13, v19);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - result %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[6];
  v15 = v0[7];

  v17 = v0[1];

  return v17(v5);
}

uint64_t sub_100028770()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

unint64_t *sub_1000287E8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    sub_100028D14(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100028884(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = sub_100038850();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  __chkstk_darwin(v61);
  v60 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = v47 - v11;
  v12 = sub_100038750();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v59 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v50 = v47 - v16;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100001B3C(&qword_1000498D0, &qword_10003CC08);
  result = sub_100039D10();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_100029430(&qword_100049660);
    result = sub_100039AB0();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100028D14(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a2;
  v52 = a1;
  v65 = sub_100001B3C(&qword_1000498C8, &qword_10003CC00);
  v6 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v74 = &v50 - v7;
  v8 = sub_100038850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100038750();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v56 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v69 = &v50 - v19;
  v20 = 0;
  v66 = a3;
  v21 = *(a3 + 64);
  v53 = a3 + 64;
  v54 = 0;
  v22 = 1 << *(a3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v72 = v17 + 16;
  v73 = a4;
  v59 = v9 + 16;
  v60 = v25;
  v61 = v17;
  v62 = v12;
  v71 = (v17 + 8);
  v63 = v9;
  v64 = v8;
  v57 = (v9 + 8);
  v58 = a4 + 7;
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v68 = (v24 - 1) & v24;
LABEL_13:
    v29 = v26 | (v20 << 6);
    v30 = v66;
    v31 = v66[6];
    v67 = *(v61 + 72);
    v32 = *(v61 + 16);
    v32(v69, v31 + v67 * v29, v13, v18);
    v33 = v30[7];
    v34 = *(v63 + 72);
    v55 = v29;
    v35 = *(v63 + 16);
    v35(v12, v33 + v34 * v29, v8);
    v36 = v74;
    v70 = v32;
    (v32)(v74, v69, v13);
    v37 = v8;
    v38 = v67;
    v35((v36 + *(v65 + 48)), v12, v37);
    v39 = v58;
    v40 = v56;
    if (v73[2] && (v41 = v73, v42 = v73[5], sub_100029430(&qword_100049660), v43 = sub_100039AB0(), v44 = -1 << *(v41 + 32), v45 = v43 & ~v44, ((*(v39 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
    {
      v46 = ~v44;
      while (1)
      {
        v70(v40, v73[6] + v45 * v38, v13);
        sub_100029430(&qword_1000498B0);
        v47 = sub_100039AE0();
        v48 = *v71;
        (*v71)(v40, v13);
        if (v47)
        {
          break;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v39 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_100029474(v74);
      v12 = v62;
      v8 = v64;
      (*v57)();
      v48(v69, v13);
      *(v52 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v49 = __OFADD__(v54++, 1);
      v25 = v60;
      v24 = v68;
      if (v49)
      {
        __break(1u);
LABEL_22:
        sub_100028884(v52, v51, v54, v66);
        return;
      }
    }

    else
    {
LABEL_5:
      sub_100029474(v74);
      v12 = v62;
      v8 = v64;
      (*v57)(v62, v64);
      (*v71)(v69, v13);
      v25 = v60;
      v24 = v68;
    }
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_22;
    }

    v28 = *(v53 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v68 = (v28 - 1) & v28;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_100029270(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1000287E8(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_100028D14((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_100029430(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100038750();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100029474(uint64_t a1)
{
  v2 = sub_100001B3C(&qword_1000498C8, &qword_10003CC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000294DC@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = _s12DependenciesVMa_1();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001B3C(&qword_100048318, &qword_10003AF40);
  v92 = *(v6 - 8);
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v9 = &v87 - v8;
  v93 = sub_100001B3C(&qword_100048310, &qword_10003AF38);
  v94 = *(v93 - 8);
  v10 = *(v94 + 64);
  __chkstk_darwin(v93);
  v12 = &v87 - v11;
  v13 = sub_100001B3C(&qword_100048308, &qword_10003AF30);
  v14 = *(v13 - 8);
  v100 = v13;
  v101 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v91 = &v87 - v16;
  v17 = sub_100001B3C(&qword_100048300, &qword_10003AF28);
  v18 = *(v17 - 8);
  v102 = v17;
  v103 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v95 = &v87 - v20;
  v21 = sub_100001B3C(&qword_1000482F8, &qword_10003AF20);
  v22 = *(v21 - 8);
  v104 = v21;
  v105 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v96 = &v87 - v24;
  v25 = sub_100001B3C(&qword_100049968, &qword_10003CC88);
  v26 = *(v25 - 8);
  v106 = v25;
  v107 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v97 = &v87 - v28;
  v29 = sub_100001B3C(&qword_100049970, &qword_10003CC90);
  v30 = *(v29 - 8);
  v108 = v29;
  *&v109 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v98 = &v87 - v32;
  v33 = sub_100001B3C(&qword_100049978, &qword_10003CC98);
  v34 = *(v33 - 8);
  v110 = v33;
  v111 = v34;
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v99 = &v87 - v36;
  v37 = *v1;
  v38 = v1[1];
  v90 = v1 + *(type metadata accessor for PeopleWidget() + 20);
  sub_10002A6A4(v90, v5, _s12DependenciesVMa_1);
  v39 = type metadata accessor for PeopleWidgetProvider(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();

  v113 = sub_10002D8BC(v5);
  type metadata accessor for WidgetEntryView(0);
  sub_10002A65C(&qword_100049980, type metadata accessor for WidgetEntryView);
  sub_10002A65C(&qword_100049988, type metadata accessor for PeopleWidgetProvider);
  sub_1000399D0();
  sub_100039260();
  v42 = sub_1000395E0();
  v44 = v43;
  LOBYTE(v39) = v45;
  v46 = sub_100001BCC();
  sub_100039310();
  sub_1000093C0(v42, v44, v39 & 1);

  (*(v92 + 8))(v9, v6);
  sub_100039260();
  v47 = sub_1000395E0();
  v49 = v48;
  v51 = v50;
  v113 = v6;
  v114 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v91;
  v54 = v93;
  sub_1000392D0();
  sub_1000093C0(v47, v49, v51 & 1);

  (*(v94 + 8))(v12, v54);
  v94 = sub_100001B3C(&qword_100049990, &qword_10003CCA0);
  v55 = sub_100039960();
  v88 = v55;
  v56 = *(v55 - 8);
  v57 = *(v56 + 72);
  v58 = *(v56 + 80);
  v89 = (v58 + 32) & ~v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_10003CC10;
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
  sub_1000392E0();

  v65 = (*(v101 + 8))(v53, v64);
  v66 = *(v90 + 8);
  (*v90)(v65);
  v113 = v64;
  v114 = v62;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v96;
  v69 = v102;
  sub_100039340();
  (*(v103 + 8))(v63, v69);
  v113 = v69;
  v114 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v97;
  v72 = v104;
  sub_100039320();
  (*(v105 + 8))(v68, v72);
  v113 = v72;
  v114 = v70;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v98;
  v75 = v106;
  sub_100039300();
  (*(v107 + 8))(v71, v75);
  v113 = v75;
  v114 = v73;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v99;
  v78 = v108;
  sub_100039330();
  (*(v109 + 8))(v74, v78);
  sub_100001B3C(&qword_100049998, &qword_10003CCA8);
  v79 = *(sub_100039980() - 8);
  v80 = *(v79 + 72);
  v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v82 = swift_allocObject();
  v109 = xmmword_10003B220;
  *(v82 + 16) = xmmword_10003B220;
  sub_100039970();
  v83 = v89;
  v84 = swift_allocObject();
  *(v84 + 16) = v109;
  v87(v84 + v83, v92, v88);
  v113 = v78;
  v114 = v76;
  swift_getOpaqueTypeConformance2();
  v85 = v110;
  sub_1000392F0();

  return (*(v111 + 8))(v77, v85);
}

uint64_t sub_10002A0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PeopleWidgetProvider.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039BC0();
  sub_100039BB0();
  sub_100039B70();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10002A6A4(a1, v7, type metadata accessor for PeopleWidgetProvider.Entry);
  sub_10002B7FC(v7, a2);
}

uint64_t sub_10002A1E4@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000023;
  a1[1] = 0x800000010003A940;
  v1 = (a1 + *(type metadata accessor for PeopleWidget() + 20));
  v2 = [objc_allocWithZone(ACAccountStore) init];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = type metadata accessor for AccountStore();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100038E40();
  *(v7 + 112) = &unk_10003CC20;
  *(v7 + 120) = v3;
  v8 = _s12DependenciesVMa_1();
  v9 = v1 + v8[6];
  sub_100038A10();
  v10 = v1 + v8[7];
  result = sub_100038880();
  *v1 = sub_100036458;
  v1[1] = 0;
  v1[2] = v7;
  v12 = (v1 + v8[8]);
  *v12 = &unk_10003D280;
  v12[1] = 0;
  return result;
}

uint64_t type metadata accessor for PeopleWidget()
{
  result = qword_100049930;
  if (!qword_100049930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A380()
{

  return swift_deallocObject();
}

uint64_t sub_10002A3B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027F30;

  return sub_100002738(v2);
}

uint64_t sub_10002A460(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10002A520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10002A5C4()
{
  result = _s12DependenciesVMa_1();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002A65C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002A6A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A70C()
{
  sub_100001B84(&qword_100049978, &qword_10003CC98);
  sub_100001B84(&qword_100049970, &qword_10003CC90);
  sub_100001B84(&qword_100049968, &qword_10003CC88);
  sub_100001B84(&qword_1000482F8, &qword_10003AF20);
  sub_100001B84(&qword_100048300, &qword_10003AF28);
  sub_100001B84(&qword_100048308, &qword_10003AF30);
  sub_100001B84(&qword_100048310, &qword_10003AF38);
  sub_100001B84(&qword_100048318, &qword_10003AF40);
  sub_100001BCC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002A92C()
{
  v0 = type metadata accessor for PeopleWidget();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 0xD000000000000023;
  v3[1] = 0x800000010003A940;
  v5 = (v3 + *(v4 + 20));
  v6 = [objc_allocWithZone(ACAccountStore) init];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = type metadata accessor for AccountStore();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100038E40();
  *(v11 + 112) = &unk_10003CC20;
  *(v11 + 120) = v7;
  v12 = _s12DependenciesVMa_1();
  v13 = v5 + v12[6];
  sub_100038A10();
  v14 = v5 + v12[7];
  sub_100038880();
  *v5 = sub_100036458;
  v5[1] = 0;
  v5[2] = v11;
  v15 = (v5 + v12[8]);
  *v15 = &unk_10003D280;
  v15[1] = 0;
  sub_10002ABD8();
  sub_1000392C0();
  return sub_10002AC30(v3);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10002AB20();
  sub_100038EF0();
  return 0;
}

unint64_t sub_10002AB20()
{
  result = qword_1000499A0;
  if (!qword_1000499A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000499A0);
  }

  return result;
}

uint64_t sub_10002ABA0()
{

  return swift_deallocObject();
}

unint64_t sub_10002ABD8()
{
  result = qword_1000499A8;
  if (!qword_1000499A8)
  {
    type metadata accessor for PeopleWidget();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000499A8);
  }

  return result;
}

uint64_t sub_10002AC30(uint64_t a1)
{
  v2 = type metadata accessor for PeopleWidget();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AC8C()
{
  type metadata accessor for PeopleWidget();
  sub_10002ABD8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for PeopleWidgetDynamicOptionsProvider()
{
  result = qword_100049A10;
  if (!qword_100049A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002ADC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002AE0C()
{
  result = qword_100049760;
  if (!qword_100049760)
  {
    sub_100001B84(&qword_100049768, qword_10003CD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049760);
  }

  return result;
}

void sub_10002AE70(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for PeopleWidgetDynamicOptionsProvider() + 20);
  sub_100038E40();
  v7 = a3 + *(type metadata accessor for WidgetPersonEntityQuery() + 20);
  sub_100038E40();
  *a3 = a1;
  a3[1] = a2;
  oslog = sub_100038E30();
  v8 = sub_100039C70();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100035100(0xD000000000000013, 0x800000010003A9E0, &v12);
    _os_log_impl(&_mh_execute_header, oslog, v8, "%s", v9, 0xCu);
    sub_100002D54(v10);
  }
}

uint64_t sub_10002B000(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002B020, 0, 0);
}

uint64_t sub_10002B020()
{
  v12 = v0;
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for PeopleWidgetDynamicOptionsProvider() + 20);
  v3 = sub_100038E30();
  v4 = sub_100039C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100035100(0x52746C7561666564, 0xEF2928746C757365, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100002D54(v6);
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_10002B1A4;
  v8 = v0[2];
  v9 = v0[3];

  return sub_100021F68(v8);
}

uint64_t sub_10002B1A4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002B298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002B2B8, 0, 0);
}

uint64_t sub_10002B2B8()
{
  v12 = v0;
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for PeopleWidgetDynamicOptionsProvider() + 20);
  v3 = sub_100038E30();
  v4 = sub_100039C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100035100(0x2873746C75736572, 0xE900000000000029, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100002D54(v6);
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_10002B1A4;
  v8 = v0[2];
  v9 = v0[3];

  return sub_10002414C(v8);
}

uint64_t sub_10002B434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003DBC;

  return sub_10002B298(a1);
}

uint64_t sub_10002B4CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003DBC;

  return sub_10002B000(a1);
}

uint64_t sub_10002B578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetPersonEntityQuery();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100038E50();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002B67C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetPersonEntityQuery();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100038E50();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002B778()
{
  result = type metadata accessor for WidgetPersonEntityQuery();
  if (v1 <= 0x3F)
  {
    result = sub_100038E50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002B7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v3 = sub_100038960();
  v181 = *(v3 - 8);
  v182 = v3;
  v4 = *(v181 + 64);
  __chkstk_darwin(v3);
  v180 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for LoadedView.Callout(0);
  v6 = *(*(v189 - 8) + 64);
  __chkstk_darwin(v189);
  v185 = (&v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100001B3C(&qword_1000486D0, "f)");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v184 = &v169 - v10;
  v11 = sub_1000388D0();
  v177 = *(v11 - 8);
  v178 = v11;
  v12 = *(v177 + 64);
  __chkstk_darwin(v11);
  v176 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001B3C(&qword_1000486C8, &unk_10003B630);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v183 = &v169 - v16;
  v175 = sub_100038900();
  v174 = *(v175 - 8);
  v17 = *(v174 + 64);
  __chkstk_darwin(v175);
  v19 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_100038920();
  v172 = *(v173 - 8);
  v20 = *(v172 + 64);
  __chkstk_darwin(v173);
  v22 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo(0);
  v23 = *(v186 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v186);
  v188 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001B3C(&qword_100049A48, &qword_10003CDE8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v187 = &v169 - v31;
  v32 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
  v36 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v191);
  v179 = (&v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  v40 = &v169 - v39;
  v41 = sub_100001B3C(&qword_1000491B8, ":");
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v169 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v169 - v46;
  __chkstk_darwin(v48);
  v193 = &v169 - v49;
  v50 = *(type metadata accessor for PeopleWidgetProvider.Entry(0) + 20);
  v190 = a1;
  sub_10002CBB4(a1 + v50, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v52 = *v35;
      v53 = *(v35 + 1);
      v54 = *(v35 + 3);
      v171 = *(v35 + 2);
      v170 = v54;
      v55 = v35[32];
      v56 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
      if (v55)
      {
        v57 = &v35[v56];
        v58 = v187;
        sub_100006E48(v57, v187, &qword_100049A48, &qword_10003CDE8);
        v194 = 0xD000000000000010;
        v195 = 0x800000010003AA20;
        v196._countAndFlagsBits = v52;
        v196._object = v53;
        sub_100039B10(v196);
        sub_100038B10();

        sub_10002CC18(v58, v29);
        if ((*(v23 + 48))(v29, 1, v186) == 1)
        {
          sub_100009658(v29, &qword_100049A48, &qword_10003CDE8);
          sub_1000388F0();
          v59 = sub_100039280();
          v61 = v60;
          v63 = v62;
          v188 = v64;
          sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
          sub_100009658(v58, &qword_100049A48, &qword_10003CDE8);
          v65 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
          v66 = v65[6];
          v67 = sub_100038660();
          (*(*(v67 - 8) + 56))(&v40[v66], 1, 1, v67);
          v68 = v65[7];
          v69 = sub_100038AA0();
          v70 = *(*(v69 - 8) + 56);
          v70(&v40[v68], 1, 1, v69);
          v71 = &v40[v65[9]];
          v70(&v71[*(v189 + 20)], 1, 1, v69);

          *v71 = v170;
          *v40 = v59;
          *(v40 + 1) = v61;
          v40[16] = v63 & 1;
          *(v40 + 3) = v188;
          *(v40 + 2) = 0u;
          *(v40 + 3) = 0u;
          v72 = &v40[v65[8]];
          *v72 = 0;
          *(v72 + 1) = 0;
          *&v40[v65[10]] = 0;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v169 = v53;
          sub_10002CCE8(v29, v188, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
          sub_100038930();
          v114 = v174;
          v115 = v175;
          (*(v174 + 104))(v19, enum case for PublishedLocation.Label.DetailLevel.compact(_:), v175);
          sub_100038910();
          v117 = v116;
          (*(v114 + 8))(v19, v115);
          (*(v172 + 8))(v22, v173);

          v174 = sub_100039280();
          v173 = v118;
          LODWORD(v172) = v119;
          v175 = v120;
          if (v117)
          {
            sub_100039BC0();

            sub_100039BB0();
            sub_100039B70();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v121 = sub_100039280();
            v123 = v122;
            v125 = v124;
            v127 = v126;

            v128 = v125 & 1;
          }

          else
          {

            v121 = 0;
            v123 = 0;
            v128 = 0;
            v127 = 0;
          }

          v153 = v183;
          v154 = v188;
          sub_100038980();
          v155 = sub_100038660();
          (*(*(v155 - 8) + 56))(v153, 0, 1, v155);
          v156 = v176;
          sub_1000388E0();
          sub_1000388C0();
          (*(v177 + 8))(v156, v178);
          v157 = v170;
          v158 = v180;
          sub_100038970();
          v159 = v185;
          v160 = v185 + *(v189 + 20);
          sub_100038950();
          (*(v181 + 8))(v158, v182);
          *v159 = v157;
          v161 = *(v154 + *(v186 + 20));
          if (v161)
          {
            sub_100039BC0();
            v162 = v161;
            sub_100039BB0();
            sub_100039B70();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
            sub_100009658(v187, &qword_100049A48, &qword_10003CDE8);
          }

          else
          {

            sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
            sub_100009658(v187, &qword_100049A48, &qword_10003CDE8);
          }

          sub_10002CC88(v188, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
          v163 = v179;
          v164 = v173;
          *v179 = v174;
          *(v163 + 8) = v164;
          *(v163 + 16) = v172 & 1;
          *(v163 + 24) = v175;
          *(v163 + 32) = v121;
          *(v163 + 40) = v123;
          *(v163 + 48) = v128;
          *(v163 + 56) = v127;
          v165 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
          sub_100006E48(v183, v163 + v165[6], &qword_1000486C8, &unk_10003B630);
          sub_100006E48(v184, v163 + v165[7], &qword_1000486D0, "f)");
          v166 = (v163 + v165[8]);
          *v166 = 0;
          v166[1] = 0;
          sub_10002CCE8(v185, v163 + v165[9], type metadata accessor for LoadedView.Callout);
          *(v163 + v165[10]) = v161;
          swift_storeEnumTagMultiPayload();
          sub_10002CCE8(v163, v40, type metadata accessor for WidgetEntryViewContent.Model.State);
        }

        v140 = v192;
        v74 = v193;
      }

      else
      {
        v188 = v56;
        v87 = v53;
        v88 = v35[33];
        v89 = sub_100039260();
        v185 = v90;
        v186 = v89;
        LODWORD(v184) = v91;
        v187 = v92;
        if (v88 == 1)
        {
          v93 = sub_100039260();
          v182 = v94;
          v183 = v93;
          v181 = v95;
          v97 = v96 & 1;
        }

        else
        {
          v182 = 0;
          v183 = 0;
          v97 = 0;
          v181 = 0;
        }

        v194 = 0xD000000000000010;
        v195 = 0x800000010003AA20;
        v197._countAndFlagsBits = v52;
        v197._object = v87;
        sub_100039B10(v197);
        v74 = v193;
        sub_100038B10();

        sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
        v129 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
        v130 = v129[6];
        v131 = sub_100038660();
        (*(*(v131 - 8) + 56))(&v40[v130], 1, 1, v131);
        v132 = v129[7];
        v133 = sub_100038AA0();
        v134 = *(*(v133 - 8) + 56);
        v134(&v40[v132], 1, 1, v133);
        v135 = &v40[v129[9]];
        v134(&v135[*(v189 + 20)], 1, 1, v133);

        *v135 = v170;
        v136 = v185;
        *v40 = v186;
        *(v40 + 1) = v136;
        v40[16] = v184 & 1;
        v137 = v182;
        v138 = v183;
        *(v40 + 3) = v187;
        *(v40 + 4) = v138;
        *(v40 + 5) = v137;
        *(v40 + 6) = v97;
        *(v40 + 7) = v181;
        v139 = &v40[v129[8]];
        *v139 = 0;
        *(v139 + 1) = 0;
        *&v40[v129[10]] = 1;
        swift_storeEnumTagMultiPayload();
        sub_100009658(&v35[v188], &qword_100049A48, &qword_10003CDE8);
        v140 = v192;
      }

      goto LABEL_35;
    }

    sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
    v86 = sub_100038B20();
    v74 = v193;
    (*(*(v86 - 8) + 56))(v193, 1, 1, v86);
LABEL_26:
    swift_storeEnumTagMultiPayload();
    v140 = v192;
LABEL_35:
    sub_100006E48(v74, v140, &qword_1000491B8, ":");
    v167 = type metadata accessor for WidgetEntryViewContent.Model(0);
    return sub_10002CCE8(v40, v140 + *(v167 + 20), type metadata accessor for WidgetEntryViewContent.Model.State);
  }

  v73 = *v35;
  if (v73 == 1)
  {
    v141 = sub_100038B20();
    v74 = v193;
    (*(*(v141 - 8) + 56))(v193, 1, 1, v141);
    v142 = sub_100039260();
    v144 = v143;
    v146 = v145;
    v148 = v147;
    sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
    *v40 = v142;
    *(v40 + 1) = v144;
    v40[16] = v146 & 1;
    *(v40 + 3) = v148;
    goto LABEL_26;
  }

  v74 = v193;
  if (v73 != 3)
  {
    if (v73 == 2)
    {
      v75 = sub_100038B20();
      (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
      if (qword_1000482F0 != -1)
      {
        swift_once();
      }

      v76 = sub_100038E10();
      v77 = sub_100004158(v76, qword_10004BDD8);
      (*(*(v76 - 8) + 16))(v40, v77, v76);
      v78 = sub_100039260();
      v80 = v79;
      v82 = v81;
      v84 = v83;
      sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
      v85 = &v40[*(type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(0) + 20)];
      *v85 = v78;
      *(v85 + 1) = v80;
      v85[16] = v82 & 1;
      *(v85 + 3) = v84;
      goto LABEL_26;
    }

    v149 = sub_100038B20();
    (*(*(v149 - 8) + 56))(v47, 1, 1, v149);
    sub_100006E48(v47, v74, &qword_1000491B8, ":");
    v100 = sub_100039260();
    v102 = v150;
    v104 = v151;
    v106 = v152;
    v107 = 0;
    v109 = 0;
    v113 = 0;
    v111 = 0;
    goto LABEL_25;
  }

  sub_100038B10();
  v98 = sub_100038B20();
  v99 = *(v98 - 8);
  if ((*(v99 + 48))(v44, 1, v98) != 1)
  {
    (*(v99 + 32))(v47, v44, v98);
    (*(v99 + 56))(v47, 0, 1, v98);
    sub_100006E48(v47, v74, &qword_1000491B8, ":");
    v100 = sub_100039260();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v107 = sub_100039260();
    v109 = v108;
    v111 = v110;
    v113 = v112 & 1;
LABEL_25:
    sub_10002CC88(v190, type metadata accessor for PeopleWidgetProvider.Entry);
    *v40 = v100;
    *(v40 + 1) = v102;
    v40[16] = v104 & 1;
    *(v40 + 3) = v106;
    *(v40 + 4) = v107;
    *(v40 + 5) = v109;
    *(v40 + 6) = v113;
    *(v40 + 7) = v111;
    goto LABEL_26;
  }

  result = sub_100009658(v44, &qword_1000491B8, ":");
  __break(1u);
  return result;
}

uint64_t sub_10002CBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100049A48, &qword_10003CDE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002CCE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002CD50()
{
  result = qword_100049A58;
  if (!qword_100049A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A58);
  }

  return result;
}

unint64_t sub_10002CDA8()
{
  result = qword_100049A60;
  if (!qword_100049A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A60);
  }

  return result;
}

unint64_t sub_10002CE00()
{
  result = qword_100049A68;
  if (!qword_100049A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A68);
  }

  return result;
}

uint64_t sub_10002CEA4()
{
  v0 = sub_100038B00();
  sub_100004190(v0, qword_10004BD30);
  sub_100004158(v0, qword_10004BD30);
  return sub_100038AF0();
}

uint64_t sub_10002CF08@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000482B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100038B00();
  v3 = sub_100004158(v2, qword_10004BD30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002CFB0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002D778();
  *v5 = v2;
  v5[1] = sub_100003798;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_10002D05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002D144();
  *a1 = result;
  return result;
}

uint64_t sub_10002D084(uint64_t a1)
{
  v2 = sub_10002D0F0();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002D0F0()
{
  result = qword_100049A70;
  if (!qword_100049A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A70);
  }

  return result;
}

uint64_t sub_10002D144()
{
  v0 = sub_1000385C0();
  v43 = *(v0 - 8);
  v44 = v0;
  v1 = *(v43 + 64);
  __chkstk_darwin(v0);
  v41 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100038E50();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v36 - v7;
  v42 = type metadata accessor for PeopleWidgetDynamicOptionsProvider();
  v9 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v39 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100001B3C(&qword_100049A78, "p5");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v36[0] = v36 - v15;
  v17 = sub_100001B3C(&qword_100049A80, "p5");
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v36 - v19;
  v36[1] = v36 - v19;
  v21 = sub_100001B3C(&qword_100049740, "Z7");
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v36 - v23;
  v25 = sub_100038B00();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v38 = sub_100001B3C(&qword_100049A88, "H5");
  sub_100038AF0();
  (*(v26 + 56))(v24, 1, 1, v25);
  v28 = type metadata accessor for WidgetPersonEntity();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  v29 = sub_100038410();
  v30 = *(*(v29 - 8) + 56);
  v30(v16, 1, 1, v29);
  v30(v37, 1, 1, v29);
  sub_100038E40();
  v31 = *(v3 + 32);
  v32 = v40;
  v31(v5, v8, v40);
  v33 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v34 = swift_allocObject();
  v31((v34 + v33), v5, v32);
  sub_10002AE70(&unk_10003CB80, v34, v39);
  (*(v43 + 104))(v41, enum case for InputConnectionBehavior.default(_:), v44);
  sub_10002ADC0(&qword_100049A90, type metadata accessor for PeopleWidgetDynamicOptionsProvider);
  sub_10002ADC0(&qword_100049638, type metadata accessor for WidgetPersonEntity);
  return sub_100038520();
}

uint64_t sub_10002D6F0()
{
  v1 = sub_100038E50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10002D778()
{
  result = qword_100049A98;
  if (!qword_100049A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A98);
  }

  return result;
}

uint64_t sub_10002D7F4(uint64_t a1)
{
  v2 = sub_100039010();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1000390D0();
}

uint64_t sub_10002D8BC(uint64_t a1)
{
  sub_100038E40();
  sub_100035018(a1, v1 + OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_dependencies, _s12DependenciesVMa_1);

  v3 = sub_100038E30();
  v4 = sub_100039C70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_10002DA7C(0xD000000000000013, 0x800000010003A9E0);
    v9 = sub_100035100(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100002D54(v6);
  }

  sub_100035080(a1, _s12DependenciesVMa_1);
  return v1;
}

unint64_t sub_10002DA7C(uint64_t a1, void *a2)
{
  sub_100039CE0(28);

  v5._countAndFlagsBits = sub_100039AD0();
  sub_100039B10(v5);

  v6._countAndFlagsBits = 2108704;
  v6._object = 0xE300000000000000;
  sub_100039B10(v6);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_100039B10(v7);
  return 0xD000000000000015;
}

uint64_t sub_10002DB30()
{

  v0 = sub_100038E30();
  v1 = sub_100039C70();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 136446210;
    v7 = v3;
    sub_100039CE0(28);

    v9._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v9);

    v10._countAndFlagsBits = 2108704;
    v10._object = 0xE300000000000000;
    sub_100039B10(v10);
    v11._object = 0x800000010003AC40;
    v11._countAndFlagsBits = 0xD000000000000010;
    sub_100039B10(v11);
    v4 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v7);

    *(v2 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "%{public}s", v2, 0xCu);
    sub_100002D54(v3);
  }

  sub_100038B40();
  v5 = *(type metadata accessor for PeopleWidgetProvider.Entry(0) + 20);
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10002DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_100038890();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = sub_1000388B0();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v11 = sub_100001B3C(&qword_100049B78, &qword_10003D0C0);
  v4[20] = v11;
  v12 = *(v11 - 8);
  v4[21] = v12;
  v13 = *(v12 + 64) + 15;
  v4[22] = swift_task_alloc();
  v14 = type metadata accessor for PeopleWidgetProvider.Entry(0);
  v4[23] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v16 = type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo(0);
  v4[27] = v16;
  v17 = *(v16 - 8);
  v4[28] = v17;
  v18 = *(v17 + 64) + 15;
  v4[29] = swift_task_alloc();
  v19 = sub_100038DF0();
  v4[30] = v19;
  v20 = *(v19 - 8);
  v4[31] = v20;
  v21 = *(v20 + 64) + 15;
  v4[32] = swift_task_alloc();
  v22 = sub_100038D90();
  v4[33] = v22;
  v23 = *(v22 - 8);
  v4[34] = v23;
  v24 = *(v23 + 64) + 15;
  v4[35] = swift_task_alloc();
  v25 = sub_100038CF0();
  v4[36] = v25;
  v26 = *(v25 - 8);
  v4[37] = v26;
  v27 = *(v26 + 64) + 15;
  v4[38] = swift_task_alloc();
  v28 = sub_100039960();
  v4[39] = v28;
  v29 = *(v28 - 8);
  v4[40] = v29;
  v30 = *(v29 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v31 = sub_100038AD0();
  v4[43] = v31;
  v32 = *(v31 - 8);
  v4[44] = v32;
  v33 = *(v32 + 64) + 15;
  v4[45] = swift_task_alloc();
  v34 = sub_100038990();
  v4[46] = v34;
  v35 = *(v34 - 8);
  v4[47] = v35;
  v36 = *(v35 + 64) + 15;
  v4[48] = swift_task_alloc();
  v37 = sub_100038A50();
  v4[49] = v37;
  v38 = *(v37 - 8);
  v4[50] = v38;
  v39 = *(v38 + 64) + 15;
  v4[51] = swift_task_alloc();
  v40 = sub_100038A00();
  v4[52] = v40;
  v41 = *(v40 - 8);
  v4[53] = v41;
  v42 = *(v41 + 64) + 15;
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v43 = sub_100001B3C(&qword_100049B80, &qword_10003D0C8);
  v4[58] = v43;
  v44 = *(*(v43 - 8) + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v45 = *(*(sub_100001B3C(&qword_100049B88, &qword_10003D0D0) - 8) + 64) + 15;
  v4[64] = swift_task_alloc();
  v46 = sub_100038A20();
  v4[65] = v46;
  v47 = *(v46 - 8);
  v4[66] = v47;
  v48 = *(v47 + 64) + 15;
  v4[67] = swift_task_alloc();
  v49 = sub_100038A80();
  v4[68] = v49;
  v50 = *(v49 - 8);
  v4[69] = v50;
  v51 = *(v50 + 64) + 15;
  v4[70] = swift_task_alloc();
  v52 = sub_1000386F0();
  v4[71] = v52;
  v53 = *(v52 - 8);
  v4[72] = v53;
  v54 = *(v53 + 64) + 15;
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v55 = sub_100038710();
  v4[75] = v55;
  v56 = *(v55 - 8);
  v4[76] = v56;
  v57 = *(v56 + 64) + 15;
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v58 = sub_100038750();
  v4[79] = v58;
  v59 = *(v58 - 8);
  v4[80] = v59;
  v60 = *(v59 + 64) + 15;
  v4[81] = swift_task_alloc();
  v61 = sub_100038680();
  v4[82] = v61;
  v62 = *(v61 - 8);
  v4[83] = v62;
  v63 = *(v62 + 64) + 15;
  v4[84] = swift_task_alloc();
  v64 = sub_100039010();
  v4[85] = v64;
  v65 = *(v64 - 8);
  v4[86] = v65;
  v66 = *(v65 + 64) + 15;
  v4[87] = swift_task_alloc();
  v67 = sub_100001B3C(&qword_100049B90, &qword_10003D0D8);
  v4[88] = v67;
  v68 = *(*(v67 - 8) + 64) + 15;
  v4[89] = swift_task_alloc();
  v69 = sub_100039A00();
  v4[90] = v69;
  v70 = *(v69 - 8);
  v4[91] = v70;
  v71 = *(v70 + 64) + 15;
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v72 = *(*(sub_100001B3C(&qword_100049B98, &unk_10003D0E0) - 8) + 64) + 15;
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v73 = sub_100038780();
  v4[97] = v73;
  v74 = *(v73 - 8);
  v4[98] = v74;
  v75 = *(v74 + 64) + 15;
  v4[99] = swift_task_alloc();
  v76 = *(*(sub_100001B3C(&qword_100049A80, "p5") - 8) + 64) + 15;
  v4[100] = swift_task_alloc();
  v77 = type metadata accessor for WidgetPersonEntity();
  v4[101] = v77;
  v78 = *(v77 - 8);
  v4[102] = v78;
  v79 = *(v78 + 64) + 15;
  v4[103] = swift_task_alloc();

  return _swift_task_switch(sub_10002E778, 0, 0);
}

uint64_t sub_10002E778()
{
  v14 = v0;
  v1 = v0[13];
  v0[104] = OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_logger;

  v2 = sub_100038E30();
  v3 = sub_100039C70();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136446210;
    sub_100039CE0(28);

    v13[1] = 0xD000000000000015;
    v13[2] = 0x800000010003AC20;
    v16._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v16);

    v17._countAndFlagsBits = 2108704;
    v17._object = 0xE300000000000000;
    sub_100039B10(v17);
    v18._object = 0x800000010003AC00;
    v18._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v18);
    v7 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v13);

    *(v5 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s - Start", v5, 0xCu);
    sub_100002D54(v6);
  }

  v8 = v0[13];
  v9 = OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_dependencies;
  v0[105] = OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_dependencies;
  v10 = *(v8 + v9 + 16);
  v11 = swift_task_alloc();
  v0[106] = v11;
  *v11 = v0;
  v11[1] = sub_10002E9A8;

  return sub_100001EB4();
}

uint64_t sub_10002E9A8(char a1)
{
  v3 = *(*v2 + 848);
  v6 = *v2;
  *(*v2 + 51) = a1;

  if (v1)
  {
    v4 = sub_1000324E8;
  }

  else
  {
    v4 = sub_10002EABC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002EABC()
{
  v109 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 104);

  v3 = sub_100038E30();
  v4 = sub_100039C70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 51);
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v7 = 136446467;
    sub_100039CE0(28);

    v107 = 0xD000000000000015;
    v108 = 0x800000010003AC20;
    v111._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v111);

    v112._countAndFlagsBits = 2108704;
    v112._object = 0xE300000000000000;
    sub_100039B10(v112);
    v113._object = 0x800000010003AC00;
    v113._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v113);
    v8 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v106);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2081;
    *(v0 + 50) = v5;
    v9 = sub_100039B00();
    v11 = sub_100035100(v9, v10, &v106);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - AccountInfo %{private}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 51) == 1)
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 808);
    v14 = *(v0 + 800);
    v15 = *(v0 + 88);
    sub_100038510();
    if ((*(v12 + 48))(v14, 1, v13) == 1)
    {
      v16 = *(v0 + 832);
      v17 = *(v0 + 104);
      v18 = *(v0 + 88);
      sub_100009658(*(v0 + 800), &qword_100049A80, "p5");

      v19 = sub_100038E30();
      v20 = sub_100039C70();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 104);
        v22 = *(v0 + 88);
        v23 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v107 = 0;
        *v23 = 136446466;
        v108 = 0xE000000000000000;
        sub_100039CE0(28);

        v107 = 0xD000000000000015;
        v108 = 0x800000010003AC20;
        v114._countAndFlagsBits = sub_100039AD0();
        sub_100039B10(v114);

        v115._countAndFlagsBits = 2108704;
        v115._object = 0xE300000000000000;
        sub_100039B10(v115);
        v116._object = 0x800000010003AC00;
        v116._countAndFlagsBits = 0xD000000000000011;
        sub_100039B10(v116);
        v24 = sub_100035100(v107, v108, &v106);

        *(v23 + 4) = v24;
        *(v23 + 12) = 2080;
        *(v0 + 56) = v22;

        v25 = sub_100039B00();
        v27 = sub_100035100(v25, v26, &v106);

        *(v23 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s - No Entity in configuration: %s", v23, 0x16u);
        swift_arrayDestroy();
      }

      v28 = *(v0 + 152);
      v30 = *(v0 + 120);
      v29 = *(v0 + 128);
      v31 = *(v0 + 112);
      v32 = *(v0 + 104) + *(v0 + 840);
      v33 = _s12DependenciesVMa_1();
      (*(v30 + 16))(v29, v32 + *(v33 + 28), v31);
      sub_1000388A0();
      v34 = async function pointer to EntityQuery.results()[1];
      v35 = swift_task_alloc();
      *(v0 + 976) = v35;
      v36 = sub_1000351CC(&qword_100049BA0, &type metadata accessor for PersonEntityQuery);
      *v35 = v0;
      v35[1] = sub_100032058;
      v37 = *(v0 + 176);
      v38 = *(v0 + 152);
      v39 = *(v0 + 136);

      return EntityQuery.results()(v37, v39, v36);
    }

    else
    {
      v56 = *(v0 + 808);
      v57 = *(v0 + 792);
      v58 = *(v0 + 784);
      v59 = *(v0 + 776);
      v60 = *(v0 + 104) + *(v0 + 840);
      sub_100035290(*(v0 + 800), *(v0 + 824), type metadata accessor for WidgetPersonEntity);
      v61 = _s12DependenciesVMa_1();
      *(v0 + 856) = v61;
      v62 = (v60 + *(v61 + 32));
      v64 = *v62;
      v63 = v62[1];
      sub_100001B3C(&qword_100049BA8, &qword_10003D0F8);
      v65 = *(sub_100038800() - 8);
      v66 = *(v65 + 72);
      v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v68 = swift_allocObject();
      *(v0 + 864) = v68;
      *(v68 + 16) = xmmword_10003B220;
      *(v0 + 52) = *(v56 + 20);
      sub_100038830();
      sub_100038770();
      (*(v58 + 8))(v57, v59);
      v105 = (v64 + *v64);
      v69 = v64[1];
      v70 = swift_task_alloc();
      *(v0 + 872) = v70;
      *v70 = v0;
      v70[1] = sub_10002F474;

      return v105(v68);
    }
  }

  else
  {
    v40 = *(v0 + 184);
    v41 = *(v0 + 96);
    v42 = *(v0 + 80);
    LOBYTE(v41) = sub_100039A30();
    sub_100038B40();
    v43 = *(v40 + 20);
    if (v41)
    {
      v44 = 2;
    }

    else
    {
      v44 = 3;
    }

    *(v42 + v43) = v44;
    type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();
    v45 = *(v0 + 824);
    v46 = *(v0 + 800);
    v47 = *(v0 + 792);
    v48 = *(v0 + 768);
    v49 = *(v0 + 760);
    v50 = *(v0 + 752);
    v51 = *(v0 + 744);
    v52 = *(v0 + 736);
    v53 = *(v0 + 712);
    v54 = *(v0 + 696);
    v72 = *(v0 + 672);
    v73 = *(v0 + 648);
    v74 = *(v0 + 624);
    v75 = *(v0 + 616);
    v76 = *(v0 + 592);
    v77 = *(v0 + 584);
    v78 = *(v0 + 560);
    v79 = *(v0 + 536);
    v80 = *(v0 + 512);
    v81 = *(v0 + 504);
    v82 = *(v0 + 496);
    v83 = *(v0 + 488);
    v84 = *(v0 + 480);
    v85 = *(v0 + 472);
    v86 = *(v0 + 456);
    v87 = *(v0 + 448);
    v88 = *(v0 + 440);
    v89 = *(v0 + 432);
    v90 = *(v0 + 408);
    v91 = *(v0 + 384);
    v92 = *(v0 + 360);
    v93 = *(v0 + 336);
    v94 = *(v0 + 328);
    v95 = *(v0 + 304);
    v96 = *(v0 + 280);
    v97 = *(v0 + 256);
    v98 = *(v0 + 232);
    v99 = *(v0 + 208);
    v100 = *(v0 + 200);
    v101 = *(v0 + 192);
    v102 = *(v0 + 176);
    v103 = *(v0 + 152);
    v104 = *(v0 + 128);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_10002F474()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v7 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v4 = sub_100032E4C;
  }

  else
  {
    v5 = *(v2 + 864);

    v4 = sub_10002F590;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002F590()
{
  v93 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 96);
  sub_1000399E0();
  *(v0 + 888) = v5;
  *(v0 + 896) = v6;
  sub_100039A10();
  swift_getKeyPath();
  v7 = sub_1000399F0();

  v89 = *(v2 + 8);
  v89(v1, v3);
  if (v7)
  {
    if (*(v7 + 16))
    {
      (*(*(v0 + 688) + 16))(*(v0 + 768), v7 + ((*(*(v0 + 688) + 80) + 32) & ~*(*(v0 + 688) + 80)), *(v0 + 680));
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 712);
  v12 = *(v0 + 704);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v13 + 56);
  v15(v9, v8, 1, v14);
  (*(v13 + 104))(v10, enum case for LayoutDirection.rightToLeft(_:), v14);
  v15(v10, 0, 1, v14);
  v16 = *(v12 + 48);
  sub_1000095F0(v9, v11, &qword_100049B98, &unk_10003D0E0);
  sub_1000095F0(v10, v11 + v16, &qword_100049B98, &unk_10003D0E0);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v14) == 1)
  {
    v18 = *(v0 + 768);
    v19 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v18, &qword_100049B98, &unk_10003D0E0);
    if (v17(v11 + v16, 1, v19) == 1)
    {
      sub_100009658(*(v0 + 712), &qword_100049B98, &unk_10003D0E0);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v20 = *(v0 + 680);
  sub_1000095F0(*(v0 + 712), *(v0 + 752), &qword_100049B98, &unk_10003D0E0);
  v21 = v17(v11 + v16, 1, v20);
  v22 = *(v0 + 768);
  v23 = *(v0 + 760);
  v24 = *(v0 + 752);
  if (v21 == 1)
  {
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v22, &qword_100049B98, &unk_10003D0E0);
    (*(v25 + 8))(v24, v26);
LABEL_12:
    sub_100009658(*(v0 + 712), &qword_100049B90, &qword_10003D0D8);
    goto LABEL_14;
  }

  v87 = *(v0 + 712);
  v27 = *(v0 + 696);
  v28 = *(v0 + 688);
  v29 = *(v0 + 680);
  (*(v28 + 32))(v27, v11 + v16, v29);
  sub_1000351CC(&qword_100049BC0, &type metadata accessor for LayoutDirection);
  sub_100039AE0();
  v30 = *(v28 + 8);
  v30(v27, v29);
  sub_100009658(v23, &qword_100049B98, &unk_10003D0E0);
  sub_100009658(v22, &qword_100049B98, &unk_10003D0E0);
  v30(v24, v29);
  sub_100009658(v87, &qword_100049B98, &unk_10003D0E0);
LABEL_14:
  v31 = *(v0 + 736);
  v32 = *(v0 + 720);
  v33 = *(v0 + 96);
  sub_100039A10();
  swift_getKeyPath();
  v34 = sub_1000399F0();

  v89(v31, v32);
  if (v34)
  {
    if (*(v34 + 16))
    {
      v35 = *(v34 + 32);
    }
  }

  v36 = *(v0 + 52);
  v90 = *(v0 + 832);
  v37 = *(v0 + 824);
  v38 = *(v0 + 672);
  v39 = *(v0 + 648);
  v40 = *(v0 + 640);
  v41 = *(v0 + 624);
  v42 = *(v0 + 608);
  v80 = *(v0 + 600);
  v81 = *(v0 + 632);
  v79 = *(v0 + 592);
  v85 = *(v0 + 616);
  v86 = *(v0 + 584);
  v83 = *(v0 + 576);
  v84 = *(v0 + 568);
  v88 = *(v0 + 104);
  sub_1000386C0();
  v43 = sub_100038670();
  v44 = sub_100038DB0();
  *(v0 + 904) = v44;

  sub_100038840();
  v45 = sub_100038730();
  v91 = v46;
  v77 = v45;
  *(v0 + 912) = v45;
  *(v0 + 920) = v46;
  (*(v40 + 8))(v39, v81);
  v82 = sub_100038670();
  *(v0 + 928) = v82;
  v78 = v44;
  sub_100038720();
  sub_100038700();
  v47 = *(v42 + 8);
  v47(v41, v80);
  v76 = sub_1000386E0() & 1;
  *(v0 + 992) = v76;
  v48 = *(v83 + 8);
  v48(v79, v84);
  sub_100038720();
  sub_100038700();
  v47(v85, v80);
  v49 = sub_1000386D0() & 1;
  *(v0 + 993) = v49;
  v48(v86, v84);

  v50 = v78;

  v51 = v82;
  v52 = sub_100038E30();
  v53 = sub_100039C70();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 104);
    v55 = v49;
    v56 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v56 = 136446467;
    sub_100039CE0(28);

    v92[1] = 0xD000000000000015;
    v92[2] = 0x800000010003AC20;
    v95._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v95);

    v96._countAndFlagsBits = 2108704;
    v96._object = 0xE300000000000000;
    sub_100039B10(v96);
    v97._object = 0x800000010003AC00;
    v97._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v97);
    v57 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v92);

    *(v56 + 4) = v57;
    *(v56 + 12) = 2081;
    *(v0 + 16) = v77;
    *(v0 + 24) = v91;
    *(v0 + 32) = v51;
    *(v0 + 40) = v50;
    *(v0 + 48) = v76;
    *(v0 + 49) = v55;
    v58 = v50;

    v59 = v51;
    v60 = sub_100039B00();
    v62 = sub_100035100(v60, v61, v92);

    *(v56 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s - PersonInfo %{private}s", v56, 0x16u);
    swift_arrayDestroy();
  }

  v63 = *(v0 + 824);
  v64 = *(v0 + 648);
  v65 = *(v0 + 640);
  v66 = *(v0 + 632);
  v67 = *(v0 + 560);
  v68 = *(v0 + 512);
  (*(*(v0 + 528) + 16))(*(v0 + 536), *(v0 + 104) + *(v0 + 840) + *(*(v0 + 856) + 24), *(v0 + 520));
  sub_100038A30();
  (*(v65 + 16))(v64, v63, v66);
  sub_100038860();
  v69 = sub_100038870();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  sub_100038A60();
  v70 = _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKFTu[1];
  v71 = swift_task_alloc();
  *(v0 + 936) = v71;
  *v71 = v0;
  v71[1] = sub_10002FF4C;
  v72 = *(v0 + 560);
  v73 = *(v0 + 496);
  v74 = *(v0 + 448);

  return _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(v73, v74);
}

uint64_t sub_10002FF4C()
{
  v2 = *(*v1 + 936);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100033A0C;
  }

  else
  {
    v3 = sub_10003005C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003005C()
{
  v130 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v4 = *(v0 + 488);
  v5 = *(v0 + 104);
  (*(*(v0 + 400) + 56))(v2, 0, 1, *(v0 + 392));
  sub_1000352F8(v2, v3);
  sub_1000095F0(v3, v4, &qword_100049B80, &qword_10003D0C8);

  v6 = sub_100038E30();
  v7 = sub_100039C70();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 488);
  if (v8)
  {
    v10 = *(v0 + 480);
    v123 = *(v0 + 464);
    v11 = *(v0 + 104);
    v12 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v12 = 136446467;
    sub_100039CE0(28);

    v128 = 0xD000000000000015;
    v129 = 0x800000010003AC20;
    v132._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v132);

    v133._countAndFlagsBits = 2108704;
    v133._object = 0xE300000000000000;
    sub_100039B10(v133);
    v134._object = 0x800000010003AC00;
    v134._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v134);
    v13 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v127);

    *(v12 + 4) = v13;
    *(v12 + 12) = 2081;
    sub_1000095F0(v9, v10, &qword_100049B80, &qword_10003D0C8);
    v14 = sub_100039B00();
    v16 = v15;
    sub_100009658(v9, &qword_100049B80, &qword_10003D0C8);
    v17 = sub_100035100(v14, v16, &v127);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s - LocationResult %{private}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100009658(v9, &qword_100049B80, &qword_10003D0C8);
  }

  v18 = *(v0 + 472);
  v19 = *(v0 + 392);
  v20 = *(v0 + 400);
  sub_1000095F0(*(v0 + 504), v18, &qword_100049B80, &qword_10003D0C8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v124 = *(v0 + 993);
    v120 = *(v0 + 992);
    v117 = *(v0 + 912);
    v21 = *(v0 + 904);
    v111 = *(v0 + 824);
    v22 = *(v0 + 664);
    v105 = *(v0 + 656);
    v107 = *(v0 + 672);
    v103 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 544);
    v25 = *(v0 + 504);
    v26 = *(v0 + 224);
    v114 = *(v0 + 216);
    v109 = *(v0 + 184);
    v27 = *(v0 + 80);
    v113 = *(v0 + 920);
    sub_100009658(*(v0 + 472), &qword_100049B80, &qword_10003D0C8);
    sub_100038B40();

    sub_100009658(v25, &qword_100049B80, &qword_10003D0C8);
    (*(v23 + 8))(v103, v24);
    (*(v22 + 8))(v107, v105);
    sub_100035080(v111, type metadata accessor for WidgetPersonEntity);
    v28 = v27 + *(v109 + 20);
    v29 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
    *v28 = v117;
    *(v28 + 8) = v113;
    *(v28 + 24) = v21;
    *(v28 + 32) = v120;
    *(v28 + 33) = v124;
    (*(v26 + 56))(v28 + v29, 1, 1, v114);
    type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();
    v30 = *(v0 + 824);
    v31 = *(v0 + 800);
    v32 = *(v0 + 792);
    v33 = *(v0 + 768);
    v34 = *(v0 + 760);
    v35 = *(v0 + 752);
    v36 = *(v0 + 744);
    v37 = *(v0 + 736);
    v38 = *(v0 + 712);
    v39 = *(v0 + 696);
    v80 = *(v0 + 672);
    v81 = *(v0 + 648);
    v82 = *(v0 + 624);
    v83 = *(v0 + 616);
    v84 = *(v0 + 592);
    v85 = *(v0 + 584);
    v86 = *(v0 + 560);
    v87 = *(v0 + 536);
    v88 = *(v0 + 512);
    v89 = *(v0 + 504);
    v90 = *(v0 + 496);
    v91 = *(v0 + 488);
    v92 = *(v0 + 480);
    v93 = *(v0 + 472);
    v94 = *(v0 + 456);
    v95 = *(v0 + 448);
    v96 = *(v0 + 440);
    v97 = *(v0 + 432);
    v98 = *(v0 + 408);
    v99 = *(v0 + 384);
    v100 = *(v0 + 360);
    v101 = *(v0 + 336);
    v102 = *(v0 + 328);
    v104 = *(v0 + 304);
    v106 = *(v0 + 280);
    v108 = *(v0 + 256);
    v110 = *(v0 + 232);
    v112 = *(v0 + 208);
    *&v113 = *(v0 + 200);
    v115 = *(v0 + 192);
    v118 = *(v0 + 176);
    v121 = *(v0 + 152);
    v125 = *(v0 + 128);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v42 = *(v0 + 384);
    v43 = *(v0 + 376);
    v44 = *(v0 + 360);
    v116 = *(v0 + 368);
    v119 = *(v0 + 336);
    v126 = *(v0 + 328);
    v45 = *(v0 + 312);
    v46 = *(v0 + 320);
    v47 = *(v0 + 296);
    v48 = *(v0 + 304);
    v122 = *(v0 + 288);
    v49 = *(v0 + 96);
    v50 = *(v0 + 896) * 60.0;
    (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
    sub_100038A40();
    sub_100038940();
    (*(v43 + 8))(v42, v116);
    sub_100039A20();
    sub_100038CE0();
    LOBYTE(v127) = 0;
    LOBYTE(v128) = 0;
    sub_100038CD0();
    v52 = v51;
    v54 = v53;
    (*(v47 + 8))(v48, v122);
    (*(v46 + 104))(v126, enum case for WidgetFamily.systemSmall(_:), v45);
    sub_1000351CC(&qword_1000487D8, &type metadata accessor for WidgetFamily);
    sub_100039B40();
    sub_100039B40();
    v55 = *(v46 + 8);
    *(v0 + 944) = v55;
    *(v0 + 952) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v126, v45);
    v56 = *(v0 + 896);
    if (*(v0 + 64) == *(v0 + 72))
    {
      v57 = 16.0;
      if (v56 >= 170.0)
      {
        v57 = 17.0;
      }

      v58 = v52 * 0.5 + v57;
      v59 = *(v0 + 888);
    }

    else
    {
      v59 = *(v0 + 888);
      v60 = 16.0;
      if (v56 >= 170.0)
      {
        v60 = 17.0;
      }

      v58 = v59 / 3.0 - (v52 * 0.5 + v60);
    }

    v61 = *(v0 + 360);
    sub_100038AB0();
    sub_100038AC0();
    sub_100035A80(0, &qword_100049BB0, UIColor_ptr);
    if (qword_1000482C0 != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 248);
    v62 = *(v0 + 256);
    v64 = *(v0 + 240);
    v65 = sub_100004158(v64, qword_10004BD48);
    v66 = *(v63 + 16);
    v66(v62, v65, v64);
    sub_100039C80();
    if (qword_1000482C8 != -1)
    {
      swift_once();
    }

    v67 = 16.0;
    if (v56 >= 170.0)
    {
      v67 = 17.0;
    }

    v68 = v56 * 0.5 - (v54 + v67);
    v69 = *(v0 + 280);
    v70 = *(v0 + 256);
    v71 = *(v0 + 240);
    v72 = sub_100004158(v71, qword_10004BD60);
    v66(v70, v72, v71);
    sub_100039C80();
    sub_100038D80();
    v73 = async function pointer to static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)[1];
    v74 = swift_task_alloc();
    *(v0 + 960) = v74;
    *v74 = v0;
    v74[1] = sub_100030B4C;
    v76.n128_u64[0] = *(v0 + 896);
    v77.n128_u64[0] = *(v0 + 888);
    v78 = *(v0 + 280);
    v79.n128_f64[0] = v68;

    v75.n128_f64[0] = v59 * 0.5 - v58;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v78, 0, v75, v79, v77, v76);
  }
}

uint64_t sub_100030B4C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 960);
  v7 = *(*v2 + 272);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 280);
  v11 = *(v4 + 264);
  if (v1)
  {

    (*v9)(v10, v11);
    v12 = sub_1000316B8;
  }

  else
  {
    *(v5 + 968) = a1;
    (*v9)(v10, v11);
    v12 = sub_100030CF4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100030CF4()
{
  v117 = v0;
  v1 = *(v0 + 968);
  v2 = *(v0 + 952);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  (*(v0 + 944))(*(v0 + 336), *(v0 + 312));
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 832);
  v7 = *(v0 + 104);
  v111 = v1;
  v8 = v1;

  v9 = sub_100038E30();
  v10 = sub_100039C70();

  if (os_log_type_enabled(v9, v10))
  {
    v107 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v114 = v13;
    *v11 = 136446466;
    sub_100039CE0(28);

    v115 = 0xD000000000000015;
    v116 = 0x800000010003AC20;
    v119._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v119);

    v120._countAndFlagsBits = 2108704;
    v120._object = 0xE300000000000000;
    sub_100039B10(v120);
    v121._object = 0x800000010003AC00;
    v121._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v121);
    v14 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v114);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v111;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s - MapImage %@", v11, 0x16u);
    sub_100009658(v12, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v13);
  }

  v96 = *(v0 + 993);
  v93 = *(v0 + 992);
  v16 = *(v0 + 928);
  v17 = *(v0 + 920);
  v18 = *(v0 + 912);
  v90 = *(v0 + 904);
  v19 = *(v0 + 408);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  v101 = *(v0 + 200);
  v24 = *(v0 + 184);
  v104 = *(v0 + 104);
  v108 = *(v0 + 832);
  sub_100038A40();
  *(v21 + *(v23 + 20)) = v111;
  sub_100038B40();
  v25 = v22 + *(v24 + 20);
  v26 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
  *v25 = v18;
  *(v25 + 8) = v17;
  *(v25 + 16) = v16;
  *(v25 + 24) = v90;
  *(v25 + 32) = v93;
  *(v25 + 33) = v96;
  sub_100035018(v21, v25 + v26, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
  (*(v20 + 56))(v25 + v26, 0, 1, v23);
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_100035018(v22, v101, type metadata accessor for PeopleWidgetProvider.Entry);

  v27 = v90;

  v28 = v16;
  v29 = sub_100038E30();
  LOBYTE(v25) = sub_100039C70();

  v88 = v25;
  v30 = os_log_type_enabled(v29, v25);
  v91 = *(v0 + 920);
  v94 = *(v0 + 928);
  v31 = *(v0 + 824);
  v32 = *(v0 + 672);
  v33 = *(v0 + 664);
  v34 = *(v0 + 656);
  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  v109 = *(v0 + 504);
  v112 = *(v0 + 544);
  v37 = *(v0 + 400);
  v105 = *(v0 + 408);
  v99 = *(v0 + 904);
  v102 = *(v0 + 392);
  v97 = *(v0 + 232);
  v38 = *(v0 + 200);
  if (v30)
  {
    v76 = *(v0 + 192);
    v78 = *(v0 + 184);
    v86 = *(v0 + 664);
    v39 = *(v0 + 104);
    v84 = *(v0 + 656);
    v40 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115 = 0;
    *v40 = 136446466;
    v116 = 0xE000000000000000;
    v80 = v31;
    sub_100039CE0(28);

    v115 = 0xD000000000000015;
    v116 = 0x800000010003AC20;
    v122._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v122);

    v123._countAndFlagsBits = 2108704;
    v123._object = 0xE300000000000000;
    sub_100039B10(v123);
    v124._object = 0x800000010003AC00;
    v124._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v124);
    v41 = sub_100035100(v115, v116, &v114);

    *(v40 + 4) = v41;
    *(v40 + 12) = 2080;
    sub_100035018(v38, v76, type metadata accessor for PeopleWidgetProvider.Entry);
    v42 = sub_100039B00();
    v44 = v43;
    sub_100035080(v38, type metadata accessor for PeopleWidgetProvider.Entry);
    v45 = sub_100035100(v42, v44, &v114);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v29, v88, "%{public}s - Result Entry %s", v40, 0x16u);
    swift_arrayDestroy();

    sub_100035080(v97, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v37 + 8))(v105, v102);
    sub_100009658(v109, &qword_100049B80, &qword_10003D0C8);
    (*(v36 + 8))(v35, v112);
    (*(v86 + 8))(v32, v84);
    v46 = v80;
  }

  else
  {

    sub_100035080(v38, type metadata accessor for PeopleWidgetProvider.Entry);
    sub_100035080(v97, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v37 + 8))(v105, v102);
    sub_100009658(v109, &qword_100049B80, &qword_10003D0C8);
    (*(v36 + 8))(v35, v112);
    (*(v33 + 8))(v32, v34);
    v46 = v31;
  }

  sub_100035080(v46, type metadata accessor for WidgetPersonEntity);
  sub_100035290(*(v0 + 208), *(v0 + 80), type metadata accessor for PeopleWidgetProvider.Entry);
  v47 = *(v0 + 824);
  v48 = *(v0 + 800);
  v49 = *(v0 + 792);
  v50 = *(v0 + 768);
  v51 = *(v0 + 760);
  v52 = *(v0 + 752);
  v53 = *(v0 + 744);
  v54 = *(v0 + 736);
  v55 = *(v0 + 712);
  v56 = *(v0 + 696);
  v59 = *(v0 + 672);
  v60 = *(v0 + 648);
  v61 = *(v0 + 624);
  v62 = *(v0 + 616);
  v63 = *(v0 + 592);
  v64 = *(v0 + 584);
  v65 = *(v0 + 560);
  v66 = *(v0 + 536);
  v67 = *(v0 + 512);
  v68 = *(v0 + 504);
  v69 = *(v0 + 496);
  v70 = *(v0 + 488);
  v71 = *(v0 + 480);
  v72 = *(v0 + 472);
  v73 = *(v0 + 456);
  v74 = *(v0 + 448);
  v75 = *(v0 + 440);
  v77 = *(v0 + 432);
  v79 = *(v0 + 408);
  v81 = *(v0 + 384);
  v82 = *(v0 + 360);
  v83 = *(v0 + 336);
  v85 = *(v0 + 328);
  v87 = *(v0 + 304);
  v89 = *(v0 + 280);
  v92 = *(v0 + 256);
  v95 = *(v0 + 232);
  v98 = *(v0 + 208);
  v100 = *(v0 + 200);
  v103 = *(v0 + 192);
  v106 = *(v0 + 176);
  v110 = *(v0 + 152);
  v113 = *(v0 + 128);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1000316B8()
{
  v113 = v0;
  v1 = *(v0 + 952);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 344);
  (*(v0 + 944))(*(v0 + 336), *(v0 + 312));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 104);

  v7 = sub_100038E30();
  v8 = sub_100039C70();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v110 = v12;
    *v10 = 136446466;
    sub_100039CE0(28);

    v111 = 0xD000000000000015;
    v112 = 0x800000010003AC20;
    v115._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v115);

    v116._countAndFlagsBits = 2108704;
    v116._object = 0xE300000000000000;
    sub_100039B10(v116);
    v117._object = 0x800000010003AC00;
    v117._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v117);
    v13 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v110);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    *(v10 + 14) = 0;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s - MapImage %@", v10, 0x16u);
    sub_100009658(v11, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v12);
  }

  v96 = *(v0 + 993);
  v93 = *(v0 + 992);
  v14 = *(v0 + 928);
  v15 = *(v0 + 920);
  v16 = *(v0 + 912);
  v90 = *(v0 + 904);
  v17 = *(v0 + 408);
  v18 = *(v0 + 224);
  v19 = *(v0 + 232);
  v20 = *(v0 + 208);
  v21 = *(v0 + 216);
  v101 = *(v0 + 200);
  v22 = *(v0 + 184);
  v104 = *(v0 + 104);
  v107 = *(v0 + 832);
  sub_100038A40();
  *(v19 + *(v21 + 20)) = 0;
  sub_100038B40();
  v23 = v20 + *(v22 + 20);
  v24 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
  *v23 = v16;
  *(v23 + 8) = v15;
  *(v23 + 16) = v14;
  *(v23 + 24) = v90;
  *(v23 + 32) = v93;
  *(v23 + 33) = v96;
  sub_100035018(v19, v23 + v24, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
  (*(v18 + 56))(v23 + v24, 0, 1, v21);
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_100035018(v20, v101, type metadata accessor for PeopleWidgetProvider.Entry);

  v25 = v90;

  v26 = v14;
  v27 = sub_100038E30();
  LOBYTE(v23) = sub_100039C70();

  v86 = v23;
  v28 = os_log_type_enabled(v27, v23);
  v88 = *(v0 + 920);
  v91 = *(v0 + 928);
  v29 = *(v0 + 824);
  v30 = *(v0 + 672);
  v31 = *(v0 + 664);
  v32 = *(v0 + 656);
  v33 = *(v0 + 560);
  v34 = *(v0 + 552);
  v105 = *(v0 + 504);
  v108 = *(v0 + 544);
  v35 = *(v0 + 400);
  v102 = *(v0 + 408);
  v97 = *(v0 + 904);
  v99 = *(v0 + 392);
  v94 = *(v0 + 232);
  v36 = *(v0 + 200);
  if (v28)
  {
    v74 = *(v0 + 192);
    v76 = *(v0 + 184);
    v84 = *(v0 + 664);
    v37 = *(v0 + 104);
    v82 = *(v0 + 656);
    v38 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v111 = 0;
    *v38 = 136446466;
    v112 = 0xE000000000000000;
    v78 = v29;
    sub_100039CE0(28);

    v111 = 0xD000000000000015;
    v112 = 0x800000010003AC20;
    v118._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v118);

    v119._countAndFlagsBits = 2108704;
    v119._object = 0xE300000000000000;
    sub_100039B10(v119);
    v120._object = 0x800000010003AC00;
    v120._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v120);
    v39 = sub_100035100(v111, v112, &v110);

    *(v38 + 4) = v39;
    *(v38 + 12) = 2080;
    sub_100035018(v36, v74, type metadata accessor for PeopleWidgetProvider.Entry);
    v40 = sub_100039B00();
    v42 = v41;
    sub_100035080(v36, type metadata accessor for PeopleWidgetProvider.Entry);
    v43 = sub_100035100(v40, v42, &v110);

    *(v38 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v27, v86, "%{public}s - Result Entry %s", v38, 0x16u);
    swift_arrayDestroy();

    sub_100035080(v94, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v35 + 8))(v102, v99);
    sub_100009658(v105, &qword_100049B80, &qword_10003D0C8);
    (*(v34 + 8))(v33, v108);
    (*(v84 + 8))(v30, v82);
    v44 = v78;
  }

  else
  {

    sub_100035080(v36, type metadata accessor for PeopleWidgetProvider.Entry);
    sub_100035080(v94, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v35 + 8))(v102, v99);
    sub_100009658(v105, &qword_100049B80, &qword_10003D0C8);
    (*(v34 + 8))(v33, v108);
    (*(v31 + 8))(v30, v32);
    v44 = v29;
  }

  sub_100035080(v44, type metadata accessor for WidgetPersonEntity);
  sub_100035290(*(v0 + 208), *(v0 + 80), type metadata accessor for PeopleWidgetProvider.Entry);
  v45 = *(v0 + 824);
  v46 = *(v0 + 800);
  v47 = *(v0 + 792);
  v48 = *(v0 + 768);
  v49 = *(v0 + 760);
  v50 = *(v0 + 752);
  v51 = *(v0 + 744);
  v52 = *(v0 + 736);
  v53 = *(v0 + 712);
  v54 = *(v0 + 696);
  v57 = *(v0 + 672);
  v58 = *(v0 + 648);
  v59 = *(v0 + 624);
  v60 = *(v0 + 616);
  v61 = *(v0 + 592);
  v62 = *(v0 + 584);
  v63 = *(v0 + 560);
  v64 = *(v0 + 536);
  v65 = *(v0 + 512);
  v66 = *(v0 + 504);
  v67 = *(v0 + 496);
  v68 = *(v0 + 488);
  v69 = *(v0 + 480);
  v70 = *(v0 + 472);
  v71 = *(v0 + 456);
  v72 = *(v0 + 448);
  v73 = *(v0 + 440);
  v75 = *(v0 + 432);
  v77 = *(v0 + 408);
  v79 = *(v0 + 384);
  v80 = *(v0 + 360);
  v81 = *(v0 + 336);
  v83 = *(v0 + 328);
  v85 = *(v0 + 304);
  v87 = *(v0 + 280);
  v89 = *(v0 + 256);
  v92 = *(v0 + 232);
  v95 = *(v0 + 208);
  v98 = *(v0 + 200);
  v100 = *(v0 + 192);
  v103 = *(v0 + 176);
  v106 = *(v0 + 152);
  v109 = *(v0 + 128);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100032058()
{
  v2 = *(*v1 + 976);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 984) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000329A8;
  }

  else
  {
    v6 = sub_1000321C8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000321C8()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = *(sub_100038550() + 16);

  if (v3)
  {
    v4 = v0[12];
    if (sub_100039A30())
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

  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[10];
  sub_100038B40();
  (*(v9 + 8))(v6, v8);
  *(v10 + *(v7 + 20)) = v5;
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  v11 = v0[103];
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[96];
  v15 = v0[95];
  v16 = v0[94];
  v17 = v0[93];
  v18 = v0[92];
  v19 = v0[89];
  v20 = v0[87];
  v23 = v0[84];
  v24 = v0[81];
  v25 = v0[78];
  v26 = v0[77];
  v27 = v0[74];
  v28 = v0[73];
  v29 = v0[70];
  v30 = v0[67];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[62];
  v34 = v0[61];
  v35 = v0[60];
  v36 = v0[59];
  v37 = v0[57];
  v38 = v0[56];
  v39 = v0[55];
  v40 = v0[54];
  v41 = v0[51];
  v42 = v0[48];
  v43 = v0[45];
  v44 = v0[42];
  v45 = v0[41];
  v46 = v0[38];
  v47 = v0[35];
  v48 = v0[32];
  v49 = v0[29];
  v50 = v0[26];
  v51 = v0[25];
  v52 = v0[24];
  v53 = v0[22];
  v54 = v0[19];
  v55 = v0[16];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000324E8()
{
  v59 = v0;
  sub_100002414();
  swift_allocError();
  v1 = v0[104];
  v2 = v0[13];

  swift_errorRetain();
  v3 = sub_100038E30();
  v4 = sub_100039C70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v58[0] = v8;
    *v6 = 136446466;
    sub_100039CE0(28);

    v58[1] = 0xD000000000000015;
    v58[2] = 0x800000010003AC20;
    v61._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v61);

    v62._countAndFlagsBits = 2108704;
    v62._object = 0xE300000000000000;
    sub_100039B10(v62);
    v63._object = 0x800000010003AC00;
    v63._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v63);
    v9 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v58);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - Error %{public}@", v6, 0x16u);
    sub_100009658(v7, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v8);
  }

  v11 = v0[23];
  v12 = v0[10];
  sub_100038B40();

  *(v12 + *(v11 + 20)) = 0;
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  v13 = v0[103];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[96];
  v17 = v0[95];
  v18 = v0[94];
  v19 = v0[93];
  v20 = v0[92];
  v21 = v0[89];
  v22 = v0[87];
  v25 = v0[84];
  v26 = v0[81];
  v27 = v0[78];
  v28 = v0[77];
  v29 = v0[74];
  v30 = v0[73];
  v31 = v0[70];
  v32 = v0[67];
  v33 = v0[64];
  v34 = v0[63];
  v35 = v0[62];
  v36 = v0[61];
  v37 = v0[60];
  v38 = v0[59];
  v39 = v0[57];
  v40 = v0[56];
  v41 = v0[55];
  v42 = v0[54];
  v43 = v0[51];
  v44 = v0[48];
  v45 = v0[45];
  v46 = v0[42];
  v47 = v0[41];
  v48 = v0[38];
  v49 = v0[35];
  v50 = v0[32];
  v51 = v0[29];
  v52 = v0[26];
  v53 = v0[25];
  v54 = v0[24];
  v55 = v0[22];
  v56 = v0[19];
  v57 = v0[16];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000329A8()
{
  v60 = v0;
  v1 = v0[123];
  v2 = v0[104];
  v3 = v0[13];

  swift_errorRetain();
  v4 = sub_100038E30();
  v5 = sub_100039C70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v59[0] = v9;
    *v7 = 136446466;
    sub_100039CE0(28);

    v59[1] = 0xD000000000000015;
    v59[2] = 0x800000010003AC20;
    v62._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v62);

    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    sub_100039B10(v63);
    v64._object = 0x800000010003AC00;
    v64._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v64);
    v10 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v59);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s - Error %{public}@", v7, 0x16u);
    sub_100009658(v8, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v9);
  }

  v12 = v0[23];
  v13 = v0[10];
  sub_100038B40();

  *(v13 + *(v12 + 20)) = 0;
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  v14 = v0[103];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[93];
  v21 = v0[92];
  v22 = v0[89];
  v23 = v0[87];
  v26 = v0[84];
  v27 = v0[81];
  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[70];
  v33 = v0[67];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[62];
  v37 = v0[61];
  v38 = v0[60];
  v39 = v0[59];
  v40 = v0[57];
  v41 = v0[56];
  v42 = v0[55];
  v43 = v0[54];
  v44 = v0[51];
  v45 = v0[48];
  v46 = v0[45];
  v47 = v0[42];
  v48 = v0[41];
  v49 = v0[38];
  v50 = v0[35];
  v51 = v0[32];
  v52 = v0[29];
  v53 = v0[26];
  v54 = v0[25];
  v55 = v0[24];
  v56 = v0[22];
  v57 = v0[19];
  v58 = v0[16];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100032E4C()
{
  v109 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v3 = *(v0 + 832);
  v4 = *(v0 + 104);

  swift_errorRetain();
  v5 = sub_100038E30();
  v6 = sub_100039C50();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 880);
  if (v7)
  {
    v104 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v106 = v11;
    *v9 = 136446466;
    sub_100039CE0(28);

    v107 = 0xD000000000000015;
    v108 = 0x800000010003AC20;
    v111._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v111);

    v112._countAndFlagsBits = 2108704;
    v112._object = 0xE300000000000000;
    sub_100039B10(v112);
    v113._object = 0x800000010003AC00;
    v113._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v113);
    v12 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v106);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s - Renew Subscription Error %{public}@", v9, 0x16u);
    sub_100009658(v10, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v11);
  }

  else
  {
  }

  v14 = *(v0 + 744);
  v15 = *(v0 + 728);
  v16 = *(v0 + 720);
  v17 = *(v0 + 96);
  sub_1000399E0();
  *(v0 + 888) = v18;
  *(v0 + 896) = v19;
  sub_100039A10();
  swift_getKeyPath();
  v20 = sub_1000399F0();

  v102 = *(v15 + 8);
  v102(v14, v16);
  if (v20)
  {
    if (*(v20 + 16))
    {
      (*(*(v0 + 688) + 16))(*(v0 + 768), v20 + ((*(*(v0 + 688) + 80) + 32) & ~*(*(v0 + 688) + 80)), *(v0 + 680));
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v0 + 768);
  v23 = *(v0 + 760);
  v24 = *(v0 + 712);
  v25 = *(v0 + 704);
  v26 = *(v0 + 688);
  v27 = *(v0 + 680);
  v28 = *(v26 + 56);
  v28(v22, v21, 1, v27);
  (*(v26 + 104))(v23, enum case for LayoutDirection.rightToLeft(_:), v27);
  v28(v23, 0, 1, v27);
  v29 = *(v25 + 48);
  sub_1000095F0(v22, v24, &qword_100049B98, &unk_10003D0E0);
  sub_1000095F0(v23, v24 + v29, &qword_100049B98, &unk_10003D0E0);
  v30 = *(v26 + 48);
  if (v30(v24, 1, v27) == 1)
  {
    v31 = *(v0 + 768);
    v32 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v31, &qword_100049B98, &unk_10003D0E0);
    if (v30(v24 + v29, 1, v32) == 1)
    {
      sub_100009658(*(v0 + 712), &qword_100049B98, &unk_10003D0E0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v33 = *(v0 + 680);
  sub_1000095F0(*(v0 + 712), *(v0 + 752), &qword_100049B98, &unk_10003D0E0);
  v34 = v30(v24 + v29, 1, v33);
  v35 = *(v0 + 768);
  v36 = *(v0 + 760);
  v37 = *(v0 + 752);
  if (v34 == 1)
  {
    v38 = *(v0 + 688);
    v39 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v35, &qword_100049B98, &unk_10003D0E0);
    (*(v38 + 8))(v37, v39);
LABEL_15:
    sub_100009658(*(v0 + 712), &qword_100049B90, &qword_10003D0D8);
    goto LABEL_17;
  }

  v100 = *(v0 + 712);
  v40 = *(v0 + 696);
  v41 = *(v0 + 688);
  v42 = *(v0 + 680);
  (*(v41 + 32))(v40, v24 + v29, v42);
  sub_1000351CC(&qword_100049BC0, &type metadata accessor for LayoutDirection);
  sub_100039AE0();
  v43 = *(v41 + 8);
  v43(v40, v42);
  sub_100009658(v36, &qword_100049B98, &unk_10003D0E0);
  sub_100009658(v35, &qword_100049B98, &unk_10003D0E0);
  v43(v37, v42);
  sub_100009658(v100, &qword_100049B98, &unk_10003D0E0);
LABEL_17:
  v44 = *(v0 + 736);
  v45 = *(v0 + 720);
  v46 = *(v0 + 96);
  sub_100039A10();
  swift_getKeyPath();
  v47 = sub_1000399F0();

  v102(v44, v45);
  if (v47)
  {
    if (*(v47 + 16))
    {
      v48 = *(v47 + 32);
    }
  }

  v49 = *(v0 + 52);
  v103 = *(v0 + 832);
  v50 = *(v0 + 824);
  v51 = *(v0 + 672);
  v52 = *(v0 + 648);
  v53 = *(v0 + 640);
  v54 = *(v0 + 624);
  v55 = *(v0 + 608);
  v93 = *(v0 + 600);
  v94 = *(v0 + 632);
  v92 = *(v0 + 592);
  v98 = *(v0 + 616);
  v99 = *(v0 + 584);
  v96 = *(v0 + 576);
  v97 = *(v0 + 568);
  v101 = *(v0 + 104);
  sub_1000386C0();
  v56 = sub_100038670();
  v57 = sub_100038DB0();
  *(v0 + 904) = v57;

  sub_100038840();
  v58 = sub_100038730();
  v105 = v59;
  v90 = v58;
  *(v0 + 912) = v58;
  *(v0 + 920) = v59;
  (*(v53 + 8))(v52, v94);
  v95 = sub_100038670();
  *(v0 + 928) = v95;
  v91 = v57;
  sub_100038720();
  sub_100038700();
  v60 = *(v55 + 8);
  v60(v54, v93);
  v89 = sub_1000386E0() & 1;
  *(v0 + 992) = v89;
  v61 = *(v96 + 8);
  v61(v92, v97);
  sub_100038720();
  sub_100038700();
  v60(v98, v93);
  v62 = sub_1000386D0() & 1;
  *(v0 + 993) = v62;
  v61(v99, v97);

  v63 = v91;

  v64 = v95;
  v65 = sub_100038E30();
  v66 = sub_100039C70();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = *(v0 + 104);
    v68 = v62;
    v69 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v107 = 0;
    *v69 = 136446467;
    v108 = 0xE000000000000000;
    sub_100039CE0(28);

    v107 = 0xD000000000000015;
    v108 = 0x800000010003AC20;
    v114._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v114);

    v115._countAndFlagsBits = 2108704;
    v115._object = 0xE300000000000000;
    sub_100039B10(v115);
    v116._object = 0x800000010003AC00;
    v116._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v116);
    v70 = sub_100035100(v107, v108, &v106);

    *(v69 + 4) = v70;
    *(v69 + 12) = 2081;
    *(v0 + 16) = v90;
    *(v0 + 24) = v105;
    *(v0 + 32) = v64;
    *(v0 + 40) = v63;
    *(v0 + 48) = v89;
    *(v0 + 49) = v68;
    v71 = v63;

    v72 = v64;
    v73 = sub_100039B00();
    v75 = sub_100035100(v73, v74, &v106);

    *(v69 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s - PersonInfo %{private}s", v69, 0x16u);
    swift_arrayDestroy();
  }

  v76 = *(v0 + 824);
  v77 = *(v0 + 648);
  v78 = *(v0 + 640);
  v79 = *(v0 + 632);
  v80 = *(v0 + 560);
  v81 = *(v0 + 512);
  (*(*(v0 + 528) + 16))(*(v0 + 536), *(v0 + 104) + *(v0 + 840) + *(*(v0 + 856) + 24), *(v0 + 520));
  sub_100038A30();
  (*(v78 + 16))(v77, v76, v79);
  sub_100038860();
  v82 = sub_100038870();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  sub_100038A60();
  v83 = _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKFTu[1];
  v84 = swift_task_alloc();
  *(v0 + 936) = v84;
  *v84 = v0;
  v84[1] = sub_10002FF4C;
  v85 = *(v0 + 560);
  v86 = *(v0 + 496);
  v87 = *(v0 + 448);

  return _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(v86, v87);
}

uint64_t sub_100033A0C()
{
  v143 = v0;
  v126 = *(v0 + 504);
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v131 = v2;
  v135 = *(v0 + 832);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  v8 = *(v0 + 104);
  v9 = *(v4 + 32);
  v9(v1, *(v0 + 448), v5);
  v9(v3, v1, v5);
  (*(v7 + 56))(v126, 1, 1, v6);
  v10 = *(v4 + 16);
  v10(v131, v3, v5);

  v11 = sub_100038E30();
  v12 = sub_100039C70();

  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v16 = *(v0 + 416);
  v17 = *(v0 + 424);
  if (v13)
  {
    v136 = *(v0 + 440);
    v18 = *(v0 + 104);
    v120 = v10;
    v19 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v140 = v127;
    *v19 = 136446466;
    sub_100039CE0(28);

    v141 = 0xD000000000000015;
    v142 = 0x800000010003AC20;
    v145._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v145);

    v146._countAndFlagsBits = 2108704;
    v146._object = 0xE300000000000000;
    sub_100039B10(v146);
    v147._object = 0x800000010003AC00;
    v147._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v147);
    v20 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v140);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2114;
    sub_1000351CC(&qword_100049BB8, &type metadata accessor for GetPersonCachedLocationIntent.FetchLocationError);
    swift_allocError();
    v120(v21, v15, v16);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v23 = *(v17 + 8);
    v23(v15, v16);
    *(v19 + 14) = v22;
    *v122 = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s - LocationResult error: %{public}@", v19, 0x16u);
    sub_100009658(v122, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v127);

    v23(v136, v16);
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v15, v16);
    v24(v14, v16);
  }

  v25 = *(v0 + 472);
  v26 = *(v0 + 392);
  v27 = *(v0 + 400);
  sub_1000095F0(*(v0 + 504), v25, &qword_100049B80, &qword_10003D0C8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v137 = *(v0 + 993);
    v132 = *(v0 + 992);
    v128 = *(v0 + 912);
    v28 = *(v0 + 904);
    v118 = *(v0 + 824);
    v29 = *(v0 + 664);
    v112 = *(v0 + 656);
    v114 = *(v0 + 672);
    v110 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 544);
    v32 = *(v0 + 504);
    v33 = *(v0 + 224);
    v123 = *(v0 + 216);
    v116 = *(v0 + 184);
    v34 = *(v0 + 80);
    v121 = *(v0 + 920);
    sub_100009658(*(v0 + 472), &qword_100049B80, &qword_10003D0C8);
    sub_100038B40();

    sub_100009658(v32, &qword_100049B80, &qword_10003D0C8);
    (*(v30 + 8))(v110, v31);
    (*(v29 + 8))(v114, v112);
    sub_100035080(v118, type metadata accessor for WidgetPersonEntity);
    v35 = v34 + *(v116 + 20);
    v36 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
    *v35 = v128;
    *(v35 + 8) = v121;
    *(v35 + 24) = v28;
    *(v35 + 32) = v132;
    *(v35 + 33) = v137;
    (*(v33 + 56))(v35 + v36, 1, 1, v123);
    type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();
    v37 = *(v0 + 824);
    v38 = *(v0 + 800);
    v39 = *(v0 + 792);
    v40 = *(v0 + 768);
    v41 = *(v0 + 760);
    v42 = *(v0 + 752);
    v43 = *(v0 + 744);
    v44 = *(v0 + 736);
    v45 = *(v0 + 712);
    v46 = *(v0 + 696);
    v87 = *(v0 + 672);
    v88 = *(v0 + 648);
    v89 = *(v0 + 624);
    v90 = *(v0 + 616);
    v91 = *(v0 + 592);
    v92 = *(v0 + 584);
    v93 = *(v0 + 560);
    v94 = *(v0 + 536);
    v95 = *(v0 + 512);
    v96 = *(v0 + 504);
    v97 = *(v0 + 496);
    v98 = *(v0 + 488);
    v99 = *(v0 + 480);
    v100 = *(v0 + 472);
    v101 = *(v0 + 456);
    v102 = *(v0 + 448);
    v103 = *(v0 + 440);
    v104 = *(v0 + 432);
    v105 = *(v0 + 408);
    v106 = *(v0 + 384);
    v107 = *(v0 + 360);
    v108 = *(v0 + 336);
    v109 = *(v0 + 328);
    v111 = *(v0 + 304);
    v113 = *(v0 + 280);
    v115 = *(v0 + 256);
    v117 = *(v0 + 232);
    v119 = *(v0 + 208);
    *&v121 = *(v0 + 200);
    v124 = *(v0 + 192);
    v129 = *(v0 + 176);
    v133 = *(v0 + 152);
    v138 = *(v0 + 128);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v49 = *(v0 + 384);
    v50 = *(v0 + 376);
    v51 = *(v0 + 360);
    v125 = *(v0 + 368);
    v130 = *(v0 + 336);
    v139 = *(v0 + 328);
    v52 = *(v0 + 312);
    v53 = *(v0 + 320);
    v54 = *(v0 + 296);
    v55 = *(v0 + 304);
    v134 = *(v0 + 288);
    v56 = *(v0 + 96);
    v57 = *(v0 + 896) * 60.0;
    (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
    sub_100038A40();
    sub_100038940();
    (*(v50 + 8))(v49, v125);
    sub_100039A20();
    sub_100038CE0();
    LOBYTE(v140) = 0;
    LOBYTE(v141) = 0;
    sub_100038CD0();
    v59 = v58;
    v61 = v60;
    (*(v54 + 8))(v55, v134);
    (*(v53 + 104))(v139, enum case for WidgetFamily.systemSmall(_:), v52);
    sub_1000351CC(&qword_1000487D8, &type metadata accessor for WidgetFamily);
    sub_100039B40();
    sub_100039B40();
    v62 = *(v53 + 8);
    *(v0 + 944) = v62;
    *(v0 + 952) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v139, v52);
    v63 = *(v0 + 896);
    if (*(v0 + 64) == *(v0 + 72))
    {
      v64 = 16.0;
      if (v63 >= 170.0)
      {
        v64 = 17.0;
      }

      v65 = v59 * 0.5 + v64;
      v66 = *(v0 + 888);
    }

    else
    {
      v66 = *(v0 + 888);
      v67 = 16.0;
      if (v63 >= 170.0)
      {
        v67 = 17.0;
      }

      v65 = v66 / 3.0 - (v59 * 0.5 + v67);
    }

    v68 = *(v0 + 360);
    sub_100038AB0();
    sub_100038AC0();
    sub_100035A80(0, &qword_100049BB0, UIColor_ptr);
    if (qword_1000482C0 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 248);
    v69 = *(v0 + 256);
    v71 = *(v0 + 240);
    v72 = sub_100004158(v71, qword_10004BD48);
    v73 = *(v70 + 16);
    v73(v69, v72, v71);
    sub_100039C80();
    if (qword_1000482C8 != -1)
    {
      swift_once();
    }

    v74 = 16.0;
    if (v63 >= 170.0)
    {
      v74 = 17.0;
    }

    v75 = v63 * 0.5 - (v61 + v74);
    v76 = *(v0 + 280);
    v77 = *(v0 + 256);
    v78 = *(v0 + 240);
    v79 = sub_100004158(v78, qword_10004BD60);
    v73(v77, v79, v78);
    sub_100039C80();
    sub_100038D80();
    v80 = async function pointer to static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)[1];
    v81 = swift_task_alloc();
    *(v0 + 960) = v81;
    *v81 = v0;
    v81[1] = sub_100030B4C;
    v83.n128_u64[0] = *(v0 + 896);
    v84.n128_u64[0] = *(v0 + 888);
    v85 = *(v0 + 280);
    v86.n128_f64[0] = v75;

    v82.n128_f64[0] = v66 * 0.5 - v65;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v85, 0, v82, v86, v84, v83);
  }
}

uint64_t sub_1000345C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  v3[3] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v8 = sub_1000399C0();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  v10 = *(v9 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v11 = type metadata accessor for PeopleWidgetProvider.Entry(0);
  v3[10] = v11;
  v12 = *(v11 - 8);
  v3[11] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[12] = v14;
  v15 = swift_task_alloc();
  v3[13] = v15;
  *v15 = v3;
  v15[1] = sub_10003477C;

  return sub_10002DD18(v14, a2, a3);
}

uint64_t sub_10003477C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100034878, 0, 0);
}

uint64_t sub_100034878()
{
  v1 = v0[3];
  sub_100035018(v0[12] + *(v0[10] + 20), v0[5], type metadata accessor for PeopleWidgetProvider.Entry.Content);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_3;
  }

  v2 = v0[4];
  sub_100035018(v0[5], v2, type metadata accessor for PeopleWidgetProvider.Entry.Content);
  v3 = *(v2 + 8);

  v4 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
  v5 = type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v2 + v4, 1, v5);
  sub_100009658(v2 + v4, &qword_100049A48, &qword_10003CDE8);
  if (v6 != 1)
  {
    v8 = v0[9];
    sub_100035080(v0[5], type metadata accessor for PeopleWidgetProvider.Entry.Content);
    sub_1000399B0();
  }

  else
  {
LABEL_3:
    v7 = v0[9];
    sub_100035080(v0[5], type metadata accessor for PeopleWidgetProvider.Entry.Content);
    sub_1000399A0();
  }

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[6];
  v22 = v0[5];
  v23 = v0[4];
  v16 = v0[2];
  sub_100001B3C(&qword_100049B70, &qword_10003D0A8);
  v17 = *(v10 + 72);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10003B220;
  sub_100035018(v9, v19 + v18, type metadata accessor for PeopleWidgetProvider.Entry);
  (*(v13 + 16))(v14, v11, v15);
  sub_1000351CC(&qword_100049B68, type metadata accessor for PeopleWidgetProvider.Entry);
  sub_100039A90();
  (*(v13 + 8))(v11, v15);
  sub_100035080(v9, type metadata accessor for PeopleWidgetProvider.Entry);

  v20 = v0[1];

  return v20();
}

Swift::Int sub_100034B94()
{
  v1 = *v0;
  sub_100039D80();
  sub_100039D90(v1);
  return sub_100039DA0();
}

Swift::Int sub_100034C08()
{
  v1 = *v0;
  sub_100039D80();
  sub_100039D90(v1);
  return sub_100039DA0();
}

uint64_t sub_100034C4C()
{
  sub_100035080(v0 + OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_dependencies, _s12DependenciesVMa_1);
  v1 = OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_logger;
  v2 = sub_100038E50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100034D34()
{
  result = _s12DependenciesVMa_1();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100038E50();
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

uint64_t sub_100034E90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100004530;

  return sub_10002DD18(a1, v7, a3);
}

uint64_t sub_100034F44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100004530;

  return sub_1000345C8(a1, v7, a3);
}

uint64_t sub_100035018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100035080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100035100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100035368(v11, 0, 0, 1, a1, a2);
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
    sub_100002CF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002D54(v11);
  return v7;
}

uint64_t sub_1000351CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003523C@<X0>(void *a1@<X8>)
{
  result = sub_100039080();
  *a1 = v3;
  return result;
}

uint64_t sub_100035290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000352F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100049B80, &qword_10003D0C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035368(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100035474(a5, a6);
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
    result = sub_100039D00();
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

char *sub_100035474(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000354C0(a1, a2);
  sub_1000355F0(&off_1000461B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000354C0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000356DC(v5, 0);
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

  result = sub_100039D00();
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
        v10 = sub_100039B20();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000356DC(v10, 0);
        result = sub_100039CD0();
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

uint64_t sub_1000355F0(uint64_t result)
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

  result = sub_100035750(result, v12, 1, v3);
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

void *sub_1000356DC(uint64_t a1, uint64_t a2)
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

  sub_100001B3C(&qword_100049BC8, &qword_10003D160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100035750(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B3C(&qword_100049BC8, &qword_10003D160);
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

uint64_t sub_100035858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100038990();
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

uint64_t sub_100035934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100038990();
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

void sub_100035A18()
{
  if (!qword_100049C38)
  {
    sub_100035A80(255, &qword_100048C30, UIImage_ptr);
    v0 = sub_100039C90();
    if (!v1)
    {
      atomic_store(v0, &qword_100049C38);
    }
  }
}

uint64_t sub_100035A80(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_100035AC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100035ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_100035B24(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100035B78()
{
  sub_100035BE4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100035BE4()
{
  if (!qword_100049CE8)
  {
    sub_100001B84(&qword_100049A48, &qword_10003CDE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100049CE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PeopleWidgetProvider.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PeopleWidgetProvider.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100035DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100038B60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100035ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100038B60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100035FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
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

unint64_t sub_100036090()
{
  result = qword_100049DA8;
  if (!qword_100049DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049DA8);
  }

  return result;
}

uint64_t sub_1000360F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100038A20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100038890();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100036230(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100038A20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100038890();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s12DependenciesVMa_1()
{
  result = qword_100049E08;
  if (!qword_100049E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000363A0()
{
  result = sub_100009D30();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AccountStore();
    if (v2 <= 0x3F)
    {
      result = sub_100038A20();
      if (v3 <= 0x3F)
      {
        result = sub_100038890();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100036458()
{
  v3[3] = &type metadata for KoreaFeatureFlag;
  v3[4] = sub_1000378A8();
  v0 = sub_100038640();
  sub_100002D54(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_100038630() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1000364BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100038C20();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_100038C30();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_100038800();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_100038BB0();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = sub_100038B70();
  v1[15] = v14;
  v15 = *(v14 - 8);
  v1[16] = v15;
  v16 = *(v15 + 64) + 15;
  v1[17] = swift_task_alloc();
  v17 = sub_100001B3C(&qword_100049E50, &qword_10003D288);
  v1[18] = v17;
  v18 = *(v17 - 8);
  v1[19] = v18;
  v19 = *(v18 + 64) + 15;
  v1[20] = swift_task_alloc();
  v20 = sub_100038B80();
  v1[21] = v20;
  v21 = *(v20 - 8);
  v1[22] = v21;
  v22 = *(v21 + 64) + 15;
  v1[23] = swift_task_alloc();
  v23 = *(*(sub_100038B90() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000367DC, 0, 0);
}

uint64_t sub_1000367DC()
{
  v1 = v0[24];
  (*(v0[22] + 104))(v0[23], enum case for ClientOrigin.findMyApp(_:), v0[21]);
  sub_100038BA0();
  v2 = sub_100038BF0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = async function pointer to Session.init(_:)[1];
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1000368C0;
  v7 = v0[24];

  return Session.init(_:)(v7);
}

uint64_t sub_1000368C0(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1000369C0, 0, 0);
}

uint64_t sub_1000369C0()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[10];
    sub_100037394(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v21 = *(v4 + 56);
    v22 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[14];
      v9 = v0[11];
      v10 = v0[9];
      v22(v9, v6, v10);
      sub_1000387C0();
      (*v7)(v9, v10);
      v12 = *(&_swiftEmptyArrayStorage + 2);
      v11 = *(&_swiftEmptyArrayStorage + 3);
      if (v12 >= v11 >> 1)
      {
        sub_100037394(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[14];
      v14 = v0[12];
      *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v6 += v21;
      --v2;
    }

    while (v2);
  }

  v0[27] = &_swiftEmptyArrayStorage;
  (*(v0[16] + 104))(v0[17], enum case for LocatePriority.backgroundAppRefresh(_:), v0[15]);
  v15 = async function pointer to Session.startRefreshingLocation(forHandles:priority:reverseGeocode:)[1];
  v16 = swift_task_alloc();
  v0[28] = v16;
  *v16 = v0;
  v16[1] = sub_100036BD8;
  v17 = v0[26];
  v18 = v0[20];
  v19 = v0[17];

  return Session.startRefreshingLocation(forHandles:priority:reverseGeocode:)(v18, &_swiftEmptyArrayStorage, v19, 0);
}

uint64_t sub_100036BD8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v2[29] = v0;

  v5 = v2[27];
  if (v0)
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v6 = sub_10003710C;
  }

  else
  {
    v8 = v2[19];
    v7 = v2[20];
    v10 = v2[17];
    v9 = v2[18];
    v13 = v2 + 15;
    v11 = v2[15];
    v12 = v13[1];

    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    v6 = sub_100036D7C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100036D7C()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_100039AF0();
  }

  v3 = v0[8];
  (*(v0[4] + 104))(v0[5], enum case for ClientID.ConnectionType.xpc(_:), v0[3]);
  sub_100038C10();
  v4 = async function pointer to Session.stopRefreshingLocation(clientID:)[1];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_100036EC4;
  v6 = v0[26];
  v7 = v0[8];

  return Session.stopRefreshingLocation(clientID:)(v7);
}

uint64_t sub_100036EC4()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 248) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000371EC;
  }

  else
  {
    v6 = sub_100037034;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100037034()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003710C()
{
  v1 = v0[29];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000371EC()
{
  v1 = v0[31];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

char *sub_1000372CC(char *a1, int64_t a2, char a3)
{
  result = sub_1000373D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000372EC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000376CC(a1, a2, a3, *v3, &qword_100049E68, &qword_10003D298, &type metadata accessor for IntentPerson.Handle);
  *v3 = result;
  return result;
}

size_t sub_100037330(size_t a1, int64_t a2, char a3)
{
  result = sub_1000376CC(a1, a2, a3, *v3, &qword_100049E78, &qword_10003D2A8, type metadata accessor for WidgetPersonEntity);
  *v3 = result;
  return result;
}

size_t sub_100037374(size_t a1, int64_t a2, char a3)
{
  result = sub_1000374DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100037394(size_t a1, int64_t a2, char a3)
{
  result = sub_1000376CC(a1, a2, a3, *v3, &qword_100049E58, &qword_10003D290, &type metadata accessor for Handle);
  *v3 = result;
  return result;
}

char *sub_1000373D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B3C(&qword_1000498C0, &qword_10003CB90);
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

size_t sub_1000374DC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100001B3C(&qword_100049E70, &qword_10003D2A0);
  v10 = *(sub_100001B3C(&qword_100049868, &unk_10003CB38) - 8);
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
  v15 = *(sub_100001B3C(&qword_100049868, &unk_10003CB38) - 8);
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

size_t sub_1000376CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100001B3C(a5, a6);
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

unint64_t sub_1000378A8()
{
  result = qword_100049E60;
  if (!qword_100049E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049E60);
  }

  return result;
}

id sub_100037930()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100049E80 = result;
  return result;
}

uint64_t sub_100037988()
{
  v0 = sub_100038DF0();
  sub_100004190(v0, qword_10004BD48);
  sub_100004158(v0, qword_10004BD48);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038DE0();
}

uint64_t sub_100037A30()
{
  v0 = sub_100038DF0();
  sub_100004190(v0, qword_10004BD60);
  sub_100004158(v0, qword_10004BD60);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038DE0();
}

uint64_t sub_100037AD8()
{
  v0 = sub_100038DF0();
  sub_100004190(v0, qword_10004BD78);
  sub_100004158(v0, qword_10004BD78);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038DE0();
}

uint64_t sub_100037B80()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BD90);
  sub_100004158(v0, qword_10004BD90);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037C28()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BDA8);
  sub_100004158(v0, qword_10004BDA8);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037CD0()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BDC0);
  sub_100004158(v0, qword_10004BDC0);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037D78()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BDD8);
  sub_100004158(v0, qword_10004BDD8);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037E28(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10004BCD8 == -1)
  {
    if (qword_10004BCE0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000382F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10004BCE0)
    {
      return _availability_version_check();
    }
  }

  if (qword_10004BCD0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100038308();
    a3 = v10;
    a4 = v9;
    v8 = dword_10004BCC0 < v11;
    if (dword_10004BCC0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10004BCC4 > a3)
      {
        return 1;
      }

      if (dword_10004BCC4 >= a3)
      {
        return dword_10004BCC8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10004BCC0 < a2;
  if (dword_10004BCC0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100037FBC(uint64_t result)
{
  v1 = qword_10004BCE0;
  if (qword_10004BCE0)
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
      qword_10004BCE0 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_10004BCC0, &dword_10004BCC4, &dword_10004BCC8);
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