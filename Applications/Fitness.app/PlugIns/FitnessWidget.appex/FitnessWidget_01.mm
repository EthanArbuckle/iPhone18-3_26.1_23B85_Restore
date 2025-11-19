uint64_t sub_10001C120(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_100058F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028F8(&qword_1000599A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000028F8(&qword_100058F90);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001C2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000028F8(&qword_1000599A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000028F8(&qword_100058F90);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PauseRingsLabel()
{
  result = qword_100059BF0;
  if (!qword_100059BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001C418()
{
  sub_10001C4FC(319, &qword_100059A20, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10001C4FC(319, &qword_100059018, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001C4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_10001C57C()
{
  v0 = sub_100044028();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  sub_1000428FC(v14 - v5);
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10001D31C();
  sub_1000442B8();
  sub_1000442B8();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  v9 = v14[0];
  v8 = v14[1];
  result = [objc_opt_self() sharedBehavior];
  v11 = result;
  if (v8 == v9)
  {
    if (result)
    {
      v12 = [result isStandalonePhoneFitnessMode];

      if (v12)
      {
        return 0xD00000000000001CLL;
      }

      else
      {
        return 0xD00000000000001DLL;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_12;
  }

  v13 = [result isStandalonePhoneFitnessMode];

  if (v13)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_10001C7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v3 - 8);
  v103 = &v99 - v4;
  v5 = sub_100043328();
  v111 = *(v5 - 8);
  v112 = v5;
  __chkstk_darwin(v5);
  v110 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100044028();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v99 - v12;
  sub_10001C57C();
  v100 = objc_opt_self();
  v14 = [v100 mainBundle];
  v15 = sub_100044238();

  v16 = sub_100044238();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_100044258();
  v20 = v19;

  v120 = v18;
  v121 = v20;
  v101 = sub_10000A8C4();
  v21 = sub_100043C48();
  v23 = v22;
  v25 = v24;
  v109 = v26;
  v102 = a1;
  sub_1000428FC(v13);
  (*(v8 + 104))(v10, enum case for WidgetFamily.systemMedium(_:), v7);
  sub_10001D31C();
  sub_1000442B8();
  sub_1000442B8();
  v27 = *(v8 + 8);
  v27(v10, v7);
  v27(v13, v7);
  if (v120 == v116)
  {
    sub_100043A98();
  }

  else
  {
    sub_100043A88();
  }

  v28 = sub_100043BF8();
  v30 = v29;
  v32 = v31;

  sub_10000A918(v21, v23, v25 & 1);

  sub_100043AD8();
  v33 = sub_100043B98();
  v35 = v34;
  v37 = v36;
  sub_10000A918(v28, v30, v32 & 1);

  v120 = sub_100043D48();
  v38 = sub_100043BC8();
  v106 = v39;
  v107 = v38;
  LOBYTE(v30) = v40;
  v42 = v41;
  sub_10000A918(v33, v35, v37 & 1);

  v105 = sub_100043A58();
  sub_100043568();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v104 = v30 & 1;
  v135 = v30 & 1;
  v132 = 0;
  v51 = type metadata accessor for PauseRingsLabel();
  v52 = v103;
  sub_10000A1F8(v102 + *(v51 + 20), v103, &qword_100058F90);
  v54 = v111;
  v53 = v112;
  v55 = (*(v111 + 48))(v52, 1, v112);
  v109 = v42;
  if (v55 == 1)
  {
    sub_100009D50(v52, &qword_100058F90);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = v42;
  }

  else
  {
    (*(v54 + 32))(v110, v52, v53);
    v61 = [v100 mainBundle];
    v62 = sub_100044238();
    v63 = sub_100044238();
    v64 = [v61 localizedStringForKey:v62 value:0 table:v63];

    sub_100044258();
    sub_1000028F8(&unk_100059790);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1000453B0;
    v66 = [objc_allocWithZone(NSDateFormatter) init];
    v67 = sub_100044238();
    [v66 setDateFormat:v67];

    isa = sub_1000432D8().super.isa;
    v69 = [v66 stringFromDate:isa];

    v70 = sub_100044258();
    v72 = v71;

    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_100009CFC();
    *(v65 + 32) = v70;
    *(v65 + 40) = v72;
    v73 = sub_100044268();
    v75 = v74;

    v120 = v73;
    v121 = v75;
    v76 = sub_100043C48();
    v78 = v77;
    v80 = v79;
    sub_100043B28();
    v81 = sub_100043BF8();
    v83 = v82;
    v85 = v84;

    sub_10000A918(v76, v78, v80 & 1);

    if (qword_100058DC8 != -1)
    {
      swift_once();
    }

    v120 = qword_10005C9E0;

    v56 = sub_100043BC8();
    v57 = v86;
    v88 = v87;
    v59 = v89;
    sub_10000A918(v81, v83, v85 & 1);

    (*(v111 + 8))(v110, v112);
    v58 = v88 & 1;
    sub_10001D3B8(v56, v57, v88 & 1);

    v60 = v109;
  }

  v115 = 1;
  v91 = v106;
  v90 = v107;
  *&v116 = v107;
  *(&v116 + 1) = v106;
  v93 = v104;
  v92 = v105;
  LOBYTE(v117) = v104;
  *(&v117 + 1) = *v134;
  DWORD1(v117) = *&v134[3];
  *(&v117 + 1) = v60;
  LOBYTE(v118) = v105;
  *(&v118 + 1) = *v133;
  DWORD1(v118) = *&v133[3];
  *(&v118 + 1) = v44;
  *&v119[0] = v46;
  *(&v119[0] + 1) = v48;
  *&v119[1] = v50;
  BYTE8(v119[1]) = 0;
  *(v114 + 7) = v116;
  v114[4] = *(v119 + 9);
  *(&v114[3] + 7) = v119[0];
  *(&v114[2] + 7) = v118;
  *(&v114[1] + 7) = v117;
  sub_10000A1F8(&v116, &v120, &qword_100059C30);
  sub_10001D374(v56, v57, v58, v59);
  sub_10001D3C8(v56, v57, v58, v59);
  v94 = v114[0];
  v95 = v108;
  *(v108 + 25) = v114[1];
  v96 = v114[3];
  *(v95 + 41) = v114[2];
  *(v95 + 57) = v96;
  *(v95 + 73) = v114[4];
  v113 = 1;
  v97 = v115;
  *v95 = 0;
  *(v95 + 8) = v97;
  *(v95 + 9) = v94;
  *(v95 + 96) = v56;
  *(v95 + 104) = v57;
  *(v95 + 112) = v58;
  *(v95 + 120) = v59;
  *(v95 + 128) = 0;
  *(v95 + 136) = 1;
  sub_10001D3C8(v56, v57, v58, v59);
  v120 = v90;
  v121 = v91;
  v122 = v93;
  *v123 = *v134;
  *&v123[3] = *&v134[3];
  v124 = v109;
  v125 = v92;
  *v126 = *v133;
  *&v126[3] = *&v133[3];
  v127 = v44;
  v128 = v46;
  v129 = v48;
  v130 = v50;
  v131 = 0;
  return sub_100009D50(&v120, &qword_100059C30);
}

double sub_10001D140@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100043908();
  v21 = 1;
  sub_10001C7B0(v2, &v12);
  v27 = v17;
  v28 = v18;
  v29[0] = v19[0];
  *(v29 + 9) = *(v19 + 9);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v22 = v12;
  v23 = v13;
  v30[5] = v17;
  v30[6] = v18;
  v31[0] = v19[0];
  *(v31 + 9) = *(v19 + 9);
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_10000A1F8(&v22, &v11, &qword_100059C28);
  sub_100009D50(v30, &qword_100059C28);
  *(&v20[6] + 7) = v28;
  *(&v20[5] + 7) = v27;
  *(&v20[2] + 7) = v24;
  *(&v20[1] + 7) = v23;
  *(&v20[7] + 7) = v29[0];
  v20[8] = *(v29 + 9);
  *(&v20[3] + 7) = v25;
  *(&v20[4] + 7) = v26;
  *(v20 + 7) = v22;
  v5 = v20[4];
  *(a1 + 97) = v20[5];
  v6 = v20[7];
  *(a1 + 113) = v20[6];
  *(a1 + 129) = v6;
  *(a1 + 145) = v20[8];
  v7 = v20[0];
  *(a1 + 33) = v20[1];
  result = *&v20[2];
  v9 = v20[3];
  *(a1 + 49) = v20[2];
  *(a1 + 65) = v9;
  *(a1 + 81) = v5;
  v10 = v21;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 17) = v7;
  return result;
}

unint64_t sub_10001D31C()
{
  result = qword_1000590B8;
  if (!qword_1000590B8)
  {
    sub_100044028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000590B8);
  }

  return result;
}

uint64_t sub_10001D374(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001D3B8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001D3B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001D3C8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000A918(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10001D410()
{
  result = qword_100059C38;
  if (!qword_100059C38)
  {
    sub_100002940(&qword_100059C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059C38);
  }

  return result;
}

uint64_t sub_10001D488(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_1000599B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1000028F8(&qword_100059C48);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000028F8(&qword_100058F90);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[12];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[13]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10001D668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000028F8(&qword_1000599A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000028F8(&qword_1000599B0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1000028F8(&qword_100059C48);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1000028F8(&qword_100058F90);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[12];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for SummarySection()
{
  result = qword_100059CA8;
  if (!qword_100059CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001D87C()
{
  sub_10001DAA8(319, &qword_100059A20, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10001DAA8(319, &unk_100059A28, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10001DAA8(319, &qword_100059CB8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10001DAA8(319, &qword_100059008, sub_10001DA5C, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10001DAA8(319, &qword_100059018, &type metadata accessor for Date, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10001DA5C()
{
  result = qword_100059010;
  if (!qword_100059010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100059010);
  }

  return result;
}

void sub_10001DAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10001DB28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043818();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_100059990);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummarySection();
  sub_10000A1F8(v1 + *(v10 + 24), v9, &qword_100059990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100044018();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100044378();
    v13 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10001DD30()
{
  v1 = sub_100043648();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_100044028();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  if (*(v0 + *(type metadata accessor for SummarySection() + 32)))
  {
    v15 = 1;
  }

  else
  {
    v24 = v4;
    v25 = v2;
    sub_1000428FC(v14);
    (*(v9 + 104))(v11, enum case for WidgetFamily.systemSmall(_:), v8);
    sub_100021BFC(&qword_1000590B8, &type metadata accessor for WidgetFamily);
    sub_1000442B8();
    sub_1000442B8();
    v16 = *(v9 + 8);
    v16(v11, v8);
    v16(v14, v8);
    v18 = v26;
    v17 = v27;
    sub_1000429CC(v7);
    if (v17 == v18)
    {
      v15 = sub_100043638();
      (*(v25 + 8))(v7, v1);
    }

    else
    {
      v20 = v24;
      v19 = v25;
      (*(v25 + 104))(v24, enum case for DynamicTypeSize.accessibility2(_:), v1);
      sub_100021BFC(&qword_100059B70, &type metadata accessor for DynamicTypeSize);
      v21 = sub_1000441F8();
      v22 = *(v19 + 8);
      v22(v20, v1);
      v22(v7, v1);
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_10001E080()
{
  v1 = type metadata accessor for SummarySection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = sub_100043FE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001DD30();
  v9 = &enum case for AdaptiveStackType.horizontal(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for AdaptiveStackType.vertical(_:);
  }

  (*(v5 + 104))(v7, *v9, v4);
  sub_100043858();
  sub_100043908();
  sub_10001DD30();
  sub_1000218EC(v0, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SummarySection);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_1000219C0(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SummarySection);
  sub_1000028F8(&qword_100059D08);
  sub_100002F14(&qword_100059D10, &qword_100059D08);
  return sub_100043FC8();
}

uint64_t sub_10001E2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v98 = sub_1000028F8(&qword_100059D18);
  __chkstk_darwin(v98);
  v94 = (&v83 - v3);
  v90 = sub_100043868();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SummarySection();
  v84 = *(v5 - 8);
  __chkstk_darwin(v5);
  v85 = v6;
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000028F8(&qword_100059D20);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = &v83 - v9;
  v95 = sub_1000028F8(&qword_100059D28);
  __chkstk_darwin(v95);
  v97 = &v83 - v10;
  v96 = type metadata accessor for PauseRingsLabel();
  __chkstk_darwin(v96);
  v83 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000028F8(&qword_100059D30);
  v110 = *(v12 - 8);
  v111 = v12;
  __chkstk_darwin(v12);
  v99 = &v83 - v13;
  v14 = sub_100044028();
  v105 = *(v14 - 8);
  v106 = v14;
  __chkstk_darwin(v14);
  v104 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v103 = &v83 - v17;
  v18 = sub_1000028F8(&qword_100059D38);
  __chkstk_darwin(v18 - 8);
  v109 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v108 = &v83 - v21;
  v100 = sub_1000439D8();
  v22 = *(v100 - 8);
  __chkstk_darwin(v100);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000028F8(&qword_100059D40);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v101 = sub_1000028F8(&qword_100059D48);
  v107 = *(v101 - 8);
  __chkstk_darwin(v101);
  v29 = &v83 - v28;
  v102 = sub_1000028F8(&qword_100059D50);
  __chkstk_darwin(v102);
  v31 = (&v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v113 = &v83 - v33;
  *v27 = sub_100043858();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v34 = sub_1000028F8(&qword_100059D58);
  sub_10001F2D4(a1, &v27[*(v34 + 44)]);
  sub_10001F7A0(*(a1 + *(v5 + 36)));
  sub_100043EC8();
  sub_1000435E8();
  v35 = &v27[*(v25 + 36)];
  v36 = v118;
  *v35 = v117;
  *(v35 + 1) = v36;
  *(v35 + 2) = v119;
  sub_1000439B8();
  v37 = sub_10002149C();
  sub_100043CF8();
  (*(v22 + 8))(v24, v100);
  sub_100009D50(v27, &qword_100059D40);
  v100 = v5;
  v115 = sub_10003C95C(*(a1 + *(v5 + 52) + 8));
  v116 = v38;
  sub_10000A8C4();
  v39 = sub_100043C48();
  v41 = v40;
  LOBYTE(v5) = v42;
  v115 = v25;
  v116 = v37;
  v43 = v103;
  v44 = a1;
  swift_getOpaqueTypeConformance2();
  v45 = v101;
  sub_100043CB8();
  v46 = v5 & 1;
  v47 = v104;
  sub_10000A918(v39, v41, v46);

  v107[1](v29, v45);
  v48 = v105;
  sub_100043668();
  v107 = v31;
  v49 = v31;
  v50 = v106;
  sub_100009D50(v49, &qword_100059D50);
  if ((sub_10001DD30() & 1) != 0 && (sub_1000428FC(v43), (*(v48 + 104))(v47, enum case for WidgetFamily.systemMedium(_:), v50), sub_100021BFC(&qword_1000590B8, &type metadata accessor for WidgetFamily), sub_1000442B8(), sub_1000442B8(), v51 = *(v48 + 8), v51(v47, v50), v51(v43, v50), v115 != v114))
  {
    v73 = 1;
    v55 = v108;
  }

  else
  {
    v52 = v100;
    if (*(v44 + *(v100 + 44)) == 1)
    {
      sub_1000428FC(v43);
      (*(v48 + 104))(v47, enum case for WidgetFamily.systemMedium(_:), v50);
      sub_100021BFC(&qword_100059DA8, &type metadata accessor for WidgetFamily);
      v53 = sub_100044208();
      v54 = *(v48 + 8);
      v54(v47, v50);
      v54(v43, v50);
      v55 = v108;
      v56 = v99;
      if (v53)
      {
        v57 = 1;
      }

      else
      {
        v74 = v44 + *(v52 + 48);
        v75 = v83;
        sub_10000A1F8(v74, v83 + *(v96 + 20), &qword_100058F90);
        *v75 = swift_getKeyPath();
        sub_1000028F8(&qword_100059AF8);
        swift_storeEnumTagMultiPayload();
        sub_1000218EC(v75, v97, type metadata accessor for PauseRingsLabel);
        swift_storeEnumTagMultiPayload();
        sub_100021BFC(&qword_100059B50, type metadata accessor for PauseRingsLabel);
        sub_100002F14(&qword_100059D90, &qword_100059D18);
        sub_100043988();
        sub_100021954(v75);
        v57 = 0;
      }
    }

    else
    {
      if (sub_10001DD30())
      {
        v58 = 0;
      }

      else
      {
        v58 = 0x4010000000000000;
      }

      v59 = v86;
      sub_1000218EC(v44, v86, type metadata accessor for SummarySection);
      v60 = (*(v84 + 80) + 16) & ~*(v84 + 80);
      v61 = swift_allocObject();
      sub_1000219C0(v59, v61 + v60, type metadata accessor for SummarySection);
      v115 = sub_1000217F8;
      v116 = v61;
      v62 = v89;
      v63 = v88;
      v64 = v90;
      (*(v89 + 104))(v88, enum case for ColorRenderingMode.nonLinear(_:), v90);
      sub_1000028F8(&qword_100059D78);
      sub_100002F14(&qword_100059D80, &qword_100059D78);
      v65 = v91;
      sub_100043C98();
      (*(v62 + 8))(v63, v64);

      v66 = v92;
      v67 = *(v92 + 16);
      v68 = v87;
      v69 = v93;
      v67(v87, v65, v93);
      v70 = v94;
      *v94 = v58;
      *(v70 + 8) = 0;
      v71 = sub_1000028F8(&qword_100059D88);
      v67((v70 + *(v71 + 48)), v68, v69);
      v72 = *(v66 + 8);
      v72(v68, v69);
      sub_10000A1F8(v70, v97, &qword_100059D18);
      swift_storeEnumTagMultiPayload();
      sub_100021BFC(&qword_100059B50, type metadata accessor for PauseRingsLabel);
      sub_100002F14(&qword_100059D90, &qword_100059D18);
      v56 = v99;
      sub_100043988();
      sub_100009D50(v70, &qword_100059D18);
      v72(v65, v69);
      v57 = 0;
      v55 = v108;
    }

    v76 = sub_1000028F8(&qword_100059D98);
    (*(*(v76 - 8) + 56))(v56, v57, 1, v76);
    sub_100021878(v56, v55);
    v73 = 0;
  }

  (*(v110 + 56))(v55, v73, 1, v111);
  v77 = v113;
  v78 = v107;
  sub_10000A1F8(v113, v107, &qword_100059D50);
  v79 = v109;
  sub_10000A1F8(v55, v109, &qword_100059D38);
  v80 = v112;
  sub_10000A1F8(v78, v112, &qword_100059D50);
  v81 = sub_1000028F8(&qword_100059DA0);
  sub_10000A1F8(v79, v80 + *(v81 + 48), &qword_100059D38);
  sub_100009D50(v55, &qword_100059D38);
  sub_100009D50(v77, &qword_100059D50);
  sub_100009D50(v79, &qword_100059D38);
  return sub_100009D50(v78, &qword_100059D50);
}

uint64_t sub_10001F2D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v38 = sub_1000028F8(&qword_100059DF0);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v32[-v6];
  v8 = sub_100044028();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v32[-v13];
  v35 = (sub_10001DD30() & 1) == 0 || (sub_1000428FC(v14), (*(v9 + 104))(v11, enum case for WidgetFamily.systemSmall(_:), v8), sub_100021BFC(&qword_1000590B8, &type metadata accessor for WidgetFamily), sub_1000442B8(), sub_1000442B8(), v15 = *(v9 + 8), v15(v11, v8), v15(v14, v8), *&v47[0] != v41);
  v16 = type metadata accessor for SummarySection();
  v17 = *(a1 + v16[7]);
  v18 = *(a1 + v16[11]);
  v19 = v17;
  sub_1000288A8(v17, v18, 0, &v52);
  v20 = *(a1 + v16[9]);
  sub_10001F7A0(v20);
  sub_10001F7A0(v20);
  sub_100043EC8();
  sub_1000435E8();
  *&v48 = v54;
  v47[6] = v52;
  v47[7] = v53;
  v21 = 0.36;
  if (!v18)
  {
    v21 = 1.0;
  }

  v43 = v48;
  v44 = v49;
  v45 = v50;
  *&v46 = v51;
  v41 = v52;
  v42 = v53;
  *(&v46 + 1) = v21;
  sub_1000028F8(&qword_100059DF8);
  sub_100021AE4();
  sub_100043C58();
  v47[2] = v43;
  v47[3] = v44;
  v47[4] = v45;
  v47[5] = v46;
  v47[0] = v41;
  v47[1] = v42;
  sub_100009D50(v47, &qword_100059DF8);
  if (sub_10001DD30())
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 257;
  }

  sub_100043988();
  v34 = v41;
  v33 = BYTE8(v41);
  v22 = BYTE9(v41);
  v23 = v36;
  v24 = *(v36 + 16);
  v25 = v7;
  v26 = v38;
  v24(v4, v7, v38);
  v27 = v37;
  *v37 = 0;
  *(v27 + 8) = 0;
  *(v27 + 9) = v35;
  v28 = sub_1000028F8(&qword_100059E18);
  v24(v27 + *(v28 + 48), v4, v26);
  v29 = v27 + *(v28 + 64);
  *v29 = v34;
  v29[8] = v33;
  v29[9] = v22;
  v30 = *(v23 + 8);
  v30(v25, v26);
  return (v30)(v4, v26);
}

int *sub_10001F7A0(double a1)
{
  v3 = sub_100043818();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000028F8(&qword_100059B00);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_100043648();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100044028();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  result = type metadata accessor for SummarySection();
  if ((*(v1 + result[8]) & 1) == 0)
  {
    if (*(v1 + result[11]) != 1 || (v24 = v10, v26 = result, sub_1000428FC(v18), (*(v13 + 104))(v15, enum case for WidgetFamily.systemMedium(_:), v12), sub_100021BFC(&qword_1000590B8, &type metadata accessor for WidgetFamily), v25 = v9, sub_1000442B8(), sub_1000442B8(), v10 = v24, v20 = *(v13 + 8), v20(v15, v12), v20(v18, v12), v9 = v25, result = v26, v31 != v30))
    {
      sub_10000A1F8(v1 + result[5], v8, &qword_100059B00);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v29;
        (*(v10 + 32))(v29, v8, v9);
      }

      else
      {
        sub_100044378();
        v22 = v10;
        v23 = sub_100043A18();
        sub_100043538();

        v10 = v22;
        sub_100043808();
        v21 = v29;
        swift_getAtKeyPath();

        (*(v27 + 8))(v5, v28);
      }

      result = (*(v10 + 88))(v21, v9);
      if (result != enum case for DynamicTypeSize.xSmall(_:) && result != enum case for DynamicTypeSize.small(_:) && result != enum case for DynamicTypeSize.medium(_:) && result != enum case for DynamicTypeSize.large(_:) && result != enum case for DynamicTypeSize.xLarge(_:) && result != enum case for DynamicTypeSize.accessibility1(_:) && result != enum case for DynamicTypeSize.accessibility2(_:) && result != enum case for DynamicTypeSize.accessibility3(_:) && result != enum case for DynamicTypeSize.accessibility4(_:) && result != enum case for DynamicTypeSize.accessibility5(_:))
      {
        return (*(v10 + 8))(v21, v9, a1);
      }
    }
  }

  return result;
}

double sub_10001FCF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_100043908();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000028F8(&qword_100059DB0);
  sub_10001FDBC(a2, a1, a3 + *(v6 + 44));
  sub_1000435F8();
  sub_100043EC8();
  sub_1000435E8();
  v7 = (a3 + *(sub_1000028F8(&qword_100059DB8) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

id sub_10001FDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v214 = a2;
  v190 = a3;
  v216 = sub_1000439D8();
  v220 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100044018();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v177 - v10;
  v12 = type metadata accessor for FractionView();
  __chkstk_darwin(v12);
  v184 = (&v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v180 = (&v177 - v15);
  __chkstk_darwin(v16);
  v18 = (&v177 - v17);
  v212 = sub_1000028F8(&qword_100059DC0);
  __chkstk_darwin(v212);
  v183 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v179 = &v177 - v21;
  __chkstk_darwin(v22);
  v200 = &v177 - v23;
  v213 = sub_1000028F8(&qword_100059DC8);
  v219 = *(v213 - 8);
  __chkstk_darwin(v213);
  v185 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v181 = &v177 - v26;
  __chkstk_darwin(v27);
  v29 = &v177 - v28;
  v211 = sub_1000028F8(&qword_100059DD0);
  __chkstk_darwin(v211);
  v189 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v188 = &v177 - v32;
  __chkstk_darwin(v33);
  v187 = &v177 - v34;
  __chkstk_darwin(v35);
  v182 = &v177 - v36;
  __chkstk_darwin(v37);
  v186 = &v177 - v38;
  __chkstk_darwin(v39);
  v178 = &v177 - v40;
  __chkstk_darwin(v41);
  v206 = &v177 - v42;
  __chkstk_darwin(v43);
  v195 = &v177 - v44;
  __chkstk_darwin(v45);
  v208 = &v177 - v46;
  v47 = type metadata accessor for SummarySection();
  v217 = *(a1 + v47[11]);
  v194 = v5;
  v192 = v8;
  v191 = v11;
  v193 = v6;
  if (v217 == 1)
  {
    if (qword_100058DC8 != -1)
    {
      swift_once();
    }

    v48 = qword_10005C9E0;
    goto LABEL_10;
  }

  sub_10001DB28(v11);
  sub_100044008();
  v49 = sub_100043FF8();
  v50 = *(v6 + 8);
  v50(v8, v5);
  v50(v11, v5);
  if (v49)
  {
    if (qword_100058D78 != -1)
    {
      swift_once();
    }

    v48 = qword_10005C990;
LABEL_10:

    goto LABEL_12;
  }

  v48 = sub_100043D48();
LABEL_12:
  v51 = a1 + v47[13];
  v52 = *v51;
  v53 = *(v51 + 8);
  v54 = *(v51 + 16);
  v55 = *(v51 + 24);
  sub_10003C5A8(*v51, v53, v54, v55);
  v205 = v56;
  v199 = v57;
  v210 = v54;
  v209 = v55;
  sub_10003C5BC(v52, v53, v54, v55);
  v59 = v58;
  v61 = v60;
  v62 = v47[10];
  v218 = a1;
  LOBYTE(v62) = v217 | *(a1 + v62);
  v204 = v52;
  v207 = v53;
  if (v62)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
  }

  else
  {
    v63 = sub_10003D524(v52, v53);
    v64 = v65;
  }

  v66 = *(v218 + v47[8]);
  *v18 = swift_getKeyPath();
  v203 = sub_1000028F8(&qword_100059B48);
  swift_storeEnumTagMultiPayload();
  v67 = v12[5];
  *(v18 + v67) = swift_getKeyPath();
  v202 = sub_1000028F8(&qword_100059990);
  swift_storeEnumTagMultiPayload();
  *&v229 = 0x4034000000000000;
  v201 = sub_10000A5CC();
  sub_1000435A8();
  *(v18 + v12[7]) = v48;
  v68 = (v18 + v12[8]);
  v69 = v199;
  *v68 = v205;
  v68[1] = v69;
  v70 = (v18 + v12[9]);
  *v70 = v59;
  v70[1] = v61;
  v71 = (v18 + v12[10]);
  *v71 = v63;
  v71[1] = v64;
  v72 = v12[11];
  LODWORD(v205) = v66;
  *(v18 + v72) = v66;
  *(v18 + v12[12]) = 0;
  sub_1000435F8();
  sub_100043EC8();
  sub_1000435E8();
  v73 = v200;
  sub_1000219C0(v18, v200, type metadata accessor for FractionView);
  v74 = v212;
  v75 = (v73 + *(v212 + 36));
  v76 = v224;
  *v75 = v223;
  v75[1] = v76;
  v75[2] = v225;
  v77 = v215;
  sub_1000439B8();
  v78 = sub_100021A28();
  sub_100043CF8();
  v199 = *(v220 + 8);
  v220 += 8;
  v199(v77, v216);
  sub_100009D50(v73, &qword_100059DC0);
  v79 = v207;
  sub_10003CE88(v207);
  *&v229 = v80;
  *(&v229 + 1) = v81;
  v198 = sub_10000A8C4();
  v82 = sub_100043C48();
  v84 = v83;
  v86 = v85;
  *&v229 = v74;
  *(&v229 + 1) = v78;
  v200 = v78;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = v195;
  v89 = v213;
  v197 = OpaqueTypeConformance2;
  sub_100043CB8();
  sub_10000A918(v82, v84, v86 & 1);

  v90 = *(v219 + 8);
  v219 += 8;
  v196 = v90;
  v90(v29, v89);
  sub_100043668();
  sub_100009D50(v88, &qword_100059DD0);
  if (v217)
  {
    if (qword_100058DC8 != -1)
    {
      swift_once();
    }

    v91 = qword_10005C9E0;

    goto LABEL_24;
  }

  v92 = v191;
  sub_10001DB28(v191);
  v93 = v192;
  sub_100044008();
  v94 = sub_100043FF8();
  v95 = *(v193 + 8);
  v96 = v93;
  v97 = v194;
  v95(v96, v194);
  v95(v92, v97);
  if ((v94 & 1) == 0)
  {
    v91 = sub_100043D48();
LABEL_24:
    v98 = v204;
    goto LABEL_25;
  }

  v98 = v204;
  if (qword_100058D80 != -1)
  {
    swift_once();
  }

  v91 = qword_10005C998;

LABEL_25:
  v195 = sub_10003C6FC(v98, v79, v210, v209);
  v177 = v99;
  if (!v79)
  {
LABEL_28:
    v101 = v79;
    v102 = v209;

    v103 = v210;
    goto LABEL_31;
  }

  v100 = v79;
  if ([v100 paused])
  {

    goto LABEL_28;
  }

  v101 = v79;
  v104 = [v100 exerciseTimeGoal];
  result = [v98 localizedStringWithBriskMinutes:v104];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v106 = result;
  v103 = sub_100044258();
  v102 = v107;

LABEL_31:
  v108 = sub_100021214();
  v110 = v109;
  KeyPath = swift_getKeyPath();
  v112 = v180;
  *v180 = KeyPath;
  swift_storeEnumTagMultiPayload();
  v113 = v12[5];
  *(v112 + v113) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v229 = 0x4034000000000000;
  sub_1000435A8();
  *(v112 + v12[7]) = v91;
  v114 = (v112 + v12[8]);
  v115 = v177;
  *v114 = v195;
  v114[1] = v115;
  v116 = (v112 + v12[9]);
  *v116 = v103;
  v116[1] = v102;
  v117 = (v112 + v12[10]);
  *v117 = v108;
  v117[1] = v110;
  *(v112 + v12[11]) = v205;
  *(v112 + v12[12]) = 0x3FC3333333333333;
  sub_1000435F8();
  sub_100043EC8();
  sub_1000435E8();
  v118 = v179;
  sub_1000219C0(v112, v179, type metadata accessor for FractionView);
  v119 = (v118 + *(v212 + 36));
  v120 = v227;
  *v119 = v226;
  v119[1] = v120;
  v119[2] = v228;
  v121 = v215;
  sub_1000439B8();
  v122 = v181;
  sub_100043CF8();
  v199(v121, v216);
  sub_100009D50(v118, &qword_100059DC0);
  v123 = v101;
  sub_10003D650(v101);
  *&v229 = v124;
  *(&v229 + 1) = v125;
  v126 = sub_100043C48();
  v128 = v127;
  LOBYTE(v118) = v129;
  v130 = v178;
  v131 = v213;
  sub_100043CB8();
  sub_10000A918(v126, v128, v118 & 1);

  v196(v122, v131);
  sub_100043668();
  sub_100009D50(v130, &qword_100059DD0);
  if (v217)
  {
    v132 = v204;
    if (qword_100058DC8 != -1)
    {
      swift_once();
    }

    v133 = qword_10005C9E0;
  }

  else
  {
    v134 = v191;
    sub_10001DB28(v191);
    v135 = v192;
    sub_100044008();
    v136 = sub_100043FF8();
    v137 = *(v193 + 8);
    v138 = v135;
    v139 = v194;
    v137(v138, v194);
    v137(v134, v139);
    v132 = v204;
    if (v136)
    {
      if (qword_100058D88 != -1)
      {
        swift_once();
      }

      v133 = qword_10005C9A0;
    }

    else
    {
      v133 = sub_100043D48();
    }
  }

  v140 = v210;
  v141 = v209;
  v142 = sub_10003C710(v132, v123, v210, v209);
  v144 = v143;
  v145 = sub_10003C724(v132, v123, v140, v141);
  v147 = v146;
  v148 = sub_10002131C();
  v150 = v149;
  v151 = swift_getKeyPath();
  v152 = v184;
  *v184 = v151;
  swift_storeEnumTagMultiPayload();
  v153 = v12[5];
  *(v152 + v153) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v229 = 0x4034000000000000;
  sub_1000435A8();
  *(v152 + v12[7]) = v133;
  v154 = (v152 + v12[8]);
  *v154 = v142;
  v154[1] = v144;
  v155 = (v152 + v12[9]);
  *v155 = v145;
  v155[1] = v147;
  v156 = (v152 + v12[10]);
  *v156 = v148;
  v156[1] = v150;
  *(v152 + v12[11]) = v205;
  *(v152 + v12[12]) = 0x3FD3333333333333;
  sub_1000435F8();
  sub_100043EC8();
  sub_1000435E8();
  v157 = v183;
  sub_1000219C0(v152, v183, type metadata accessor for FractionView);
  v158 = (v157 + *(v212 + 36));
  v159 = v230;
  *v158 = v229;
  v158[1] = v159;
  v158[2] = v231;
  v160 = v215;
  sub_1000439B8();
  v161 = v185;
  sub_100043CF8();
  v199(v160, v216);
  sub_100009D50(v157, &qword_100059DC0);
  v221 = sub_10003D93C(v207);
  v222 = v162;
  v163 = sub_100043C48();
  v165 = v164;
  LOBYTE(v144) = v166;
  v167 = v182;
  v168 = v213;
  sub_100043CB8();
  sub_10000A918(v163, v165, v144 & 1);

  v196(v161, v168);
  v169 = v186;
  sub_100043668();
  sub_100009D50(v167, &qword_100059DD0);
  v170 = v208;
  v171 = v187;
  sub_10000A1F8(v208, v187, &qword_100059DD0);
  v172 = v206;
  v173 = v188;
  sub_10000A1F8(v206, v188, &qword_100059DD0);
  v174 = v189;
  sub_10000A1F8(v169, v189, &qword_100059DD0);
  v175 = v190;
  sub_10000A1F8(v171, v190, &qword_100059DD0);
  v176 = sub_1000028F8(&qword_100059DE8);
  sub_10000A1F8(v173, v175 + *(v176 + 48), &qword_100059DD0);
  sub_10000A1F8(v174, v175 + *(v176 + 64), &qword_100059DD0);
  sub_100009D50(v169, &qword_100059DD0);
  sub_100009D50(v172, &qword_100059DD0);
  sub_100009D50(v170, &qword_100059DD0);
  sub_100009D50(v174, &qword_100059DD0);
  sub_100009D50(v173, &qword_100059DD0);
  return sub_100009D50(v171, &qword_100059DD0);
}

uint64_t sub_100021214()
{
  v1 = type metadata accessor for SummarySection();
  if (*(v0 + *(v1 + 40)) & 1) != 0 || (*(v0 + *(v1 + 44)))
  {
    return 0;
  }

  v3 = [objc_opt_self() mainBundle];
  v4 = sub_100044238();
  v5 = sub_100044238();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_100044258();
  return v7;
}

uint64_t sub_10002131C()
{
  v1 = type metadata accessor for SummarySection();
  if (*(v0 + *(v1 + 40)) & 1) != 0 || (*(v0 + *(v1 + 44)))
  {
    return 0;
  }

  v3 = [objc_opt_self() mainBundle];
  v4 = sub_100044238();
  v5 = sub_100044238();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_100044258();
  return v7;
}

uint64_t sub_10002142C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummarySection() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001E2F0(v4, a1);
}

unint64_t sub_10002149C()
{
  result = qword_100059D60;
  if (!qword_100059D60)
  {
    sub_100002940(&qword_100059D40);
    sub_100002F14(&qword_100059D68, &qword_100059D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059D60);
  }

  return result;
}

uint64_t sub_100021554()
{
  v1 = type metadata accessor for SummarySection();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000028F8(&qword_100059AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100044028();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_1000028F8(&qword_100059B00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_100043648();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_1000028F8(&qword_100059990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100044018();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[12];
  v12 = sub_100043328();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = (v5 + v1[13]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1000217F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SummarySection() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001FCF8(a1, v6, a2);
}

uint64_t sub_100021878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_100059D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000218EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021954(uint64_t a1)
{
  v2 = type metadata accessor for PauseRingsLabel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000219C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100021A28()
{
  result = qword_100059DD8;
  if (!qword_100059DD8)
  {
    sub_100002940(&qword_100059DC0);
    sub_100021BFC(&qword_100059DE0, type metadata accessor for FractionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059DD8);
  }

  return result;
}

unint64_t sub_100021AE4()
{
  result = qword_100059E00;
  if (!qword_100059E00)
  {
    sub_100002940(&qword_100059DF8);
    sub_100021B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059E00);
  }

  return result;
}

unint64_t sub_100021B70()
{
  result = qword_100059E08;
  if (!qword_100059E08)
  {
    sub_100002940(&qword_100059E10);
    sub_100016808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059E08);
  }

  return result;
}

uint64_t sub_100021BFC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100021C8C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100021CA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100021CE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100021D88(uint64_t a1)
{
  v2 = sub_100043658();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_100043718();
}

uint64_t sub_100021E50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_1000439D8();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100043868();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_100059E30);
  __chkstk_darwin(v7);
  v9 = (&v40 - v8);
  v45 = sub_1000028F8(&qword_100059E38);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v40 - v10;
  v12 = sub_1000028F8(&qword_100059E40);
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v44 = &v40 - v13;
  sub_1000223A0(*(v1 + 40), *(v1 + 48));
  v15 = v14;
  if (v14)
  {
    v16 = sub_100025144(v14, *(v1 + 16));
  }

  else
  {
    v16 = 0.0;
  }

  v17 = swift_allocObject();
  v18 = v2[1];
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  v19 = v2[3];
  *(v17 + 48) = v2[2];
  *(v17 + 64) = v19;
  *(v17 + 80) = v15;
  *(v17 + 88) = v16;
  KeyPath = swift_getKeyPath();
  v21 = (v9 + *(v7 + 36));
  v22 = *(sub_1000028F8(&qword_100059238) + 28);
  v23 = enum case for LayoutDirection.leftToRight(_:);
  v24 = sub_100043658();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = KeyPath;
  *v9 = sub_100023DF8;
  v9[1] = v17;
  v26 = v42;
  v25 = v43;
  v27 = v40;
  (*(v42 + 104))(v40, enum case for ColorRenderingMode.nonLinear(_:), v43);
  sub_100023E30(v2, &v52);
  v28 = sub_100023E68();

  sub_100043C98();
  (*(v26 + 8))(v27, v25);
  sub_100009D50(v9, &qword_100059E30);
  v29 = v48;
  sub_1000439B8();
  v52 = v7;
  v53 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v31 = v45;
  sub_100043CF8();
  (*(v49 + 8))(v29, v50);
  (*(v41 + 8))(v11, v31);
  sub_1000233C4(v15);
  v34 = v33;
  v36 = v35;
  LOBYTE(v28) = v37;

  v52 = v31;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v47;
  sub_100043CB8();
  sub_10000A918(v34, v36, v28 & 1);

  return (*(v46 + 8))(v32, v38);
}

void sub_1000223A0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000433C8();
  v78 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v9 - 8);
  v11 = &v59 - v10;
  v12 = sub_100043328();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v77 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  __chkstk_darwin(v17);
  v76 = &v59 - v18;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = sub_1000433D8();
  __chkstk_darwin(v22);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v75 = v11;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v82 = v12;
    if (a1 >> 62)
    {
      goto LABEL_54;
    }

    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
LABEL_4:
      v62 = v24;
      v63 = v23;
      v29 = sub_1000249E8(v28);
      if ((a1 & 0xC000000000000001) != 0)
      {
        goto LABEL_58;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_60:
        __break(1u);
      }

      else if (v29 < *(v27 + 16))
      {
        for (i = *(a1 + 8 * v29 + 32); ; i = sub_1000445C8())
        {
          v31 = i;
          sub_1000433B8();
          v61 = v31;
          v32 = [v31 startDate];
          sub_1000432F8();

          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v60 = v3;
          v74 = v21;
          v66 = v26;
          if (a2)
          {
            v27 = 0;
            v73 = enum case for Calendar.Component.minute(_:);
            v3 = v78 + 104;
            v72 = *(v78 + 104);
            v81 = (v67 + 8);
            v78 = v3;
            v69 = (v67 + 48);
            v70 = (v3 - 96);
            v68 = (v67 + 32);
            v64 = (v67 + 16);
            v79 = &_swiftEmptyArrayStorage;
            a1 = 0x16C16C16C16C17;
            v65 = a2;
            v71 = v8;
            v72(v8, enum case for Calendar.Component.minute(_:), v6);
            while (1)
            {
              if (!a1)
              {
                goto LABEL_53;
              }

              sub_100043368();
              v33 = v75;
              sub_1000433A8();
              v3 = v33;
              v34 = v16;
              v35 = v16;
              v36 = v82;
              v80 = *v81;
              v80(v35, v82);
              v37 = v8;
              v38 = v6;
              (*v70)(v37, v6);
              if ((*v69)(v3, 1, v36) == 1)
              {
                sub_100009D50(v3, &qword_100058F90);
                v16 = v34;
                v21 = v74;
              }

              else
              {
                v39 = *v68;
                v40 = v76;
                (*v68)(v76, v3, v36);
                (*v64)(v77, v40, v36);
                v41 = v79;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_100008D7C(0, v41[2] + 1, 1, v41);
                }

                v16 = v34;
                v3 = v41[2];
                v42 = v41[3];
                v79 = v41;
                if (v3 >= v42 >> 1)
                {
                  v79 = sub_100008D7C(v42 > 1, v3 + 1, 1, v79);
                }

                v43 = v82;
                v80(v76, v82);
                v44 = v79;
                v79[2] = v3 + 1;
                v39(&v44[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v3], v77, v43);
                v21 = v74;
                v26 = v66;
              }

              v27 += 1440;
              --a1;
              --a2;
              v6 = v38;
              v8 = v71;
              if (!a2)
              {
                break;
              }

              v72(v71, v73, v6);
            }
          }

          else
          {
            v79 = &_swiftEmptyArrayStorage;
          }

          v83 = &_swiftEmptyArrayStorage;
          v45 = v79[2];
          if (!v45)
          {
            v56 = v61;
            v55 = v82;
LABEL_49:

            (*(v67 + 8))(v21, v55);
            (*(v62 + 8))(v26, v63);

            return;
          }

          v46 = 0;
          v21 = *(v60 + 40);
          v3 = v21 & 0xFFFFFFFFFFFFFF8;
          if (v21 >= 0)
          {
            v47 = v21 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v47 = *(v60 + 40);
          }

          v75 = v47;
          v76 = v45;
          v80 = (v21 & 0xC000000000000001);
          v81 = (v67 + 8);
          v77 = (v21 >> 62);
          v78 = v67 + 16;
          while (1)
          {
            if (!v21 || v46 >= v79[2])
            {
              goto LABEL_43;
            }

            v48 = v67;
            v6 = v82;
            (*(v67 + 16))(v16, v79 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46, v82);
            v26 = v16;
            sub_1000432A8();
            v50 = v49;
            v27 = *(v48 + 8);
            (v27)(v16, v6);
            if (v77)
            {
              break;
            }

            a1 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a1)
            {
              goto LABEL_32;
            }

LABEL_43:
            a2 = 0;
LABEL_44:
            sub_1000442C8();
            if (v83[2] >= v83[3] >> 1)
            {
              sub_1000442F8();
            }

            ++v46;
            sub_100044308();
            if (v46 == v45)
            {
              v55 = v82;
              v21 = v74;
              v26 = v66;
              v56 = v61;
              goto LABEL_49;
            }
          }

          a1 = sub_1000445E8();
          if (!a1)
          {
            goto LABEL_43;
          }

LABEL_32:
          v8 = 0;
          while (1)
          {
            if (v80)
            {
              v51 = sub_1000445C8();
            }

            else
            {
              if (v8 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_52;
              }

              v51 = *(v21 + 8 * v8 + 32);
            }

            a2 = v51;
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v52 = [v51 startDate];
            sub_1000432F8();

            v26 = v16;
            sub_1000432A8();
            v54 = v53;
            (v27)(v16, v82);
            if (vabdd_f64(v54, v50) < 2.22044605e-16)
            {
              goto LABEL_41;
            }

            ++v8;
            if (v6 == a1)
            {
              a2 = 0;
LABEL_41:
              v45 = v76;
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v74 = v21;
          v71 = v8;
          v81 = v6;
          v57 = v24;
          v58 = v23;
          if (!sub_1000445E8())
          {
            return;
          }

          v28 = sub_1000445E8();
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v23 = v58;
          v24 = v57;
          v6 = v81;
          v8 = v71;
          v21 = v74;
          if (v28)
          {
            goto LABEL_4;
          }

          __break(1u);
LABEL_58:
          ;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
    }
  }
}

uint64_t sub_100022C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v50 = a3;
  v48 = sub_100043608();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v48);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000028F8(&qword_100059E60);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = &v39 - v16;
  *a4 = sub_100043838();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v17 = a1;
  sub_1000435F8();
  v18 = *(sub_1000028F8(&qword_100059E68) + 44);
  sub_100043EC8();
  result = sub_1000435E8();
  v20 = *(a2 + 48);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = v58;
    v46 = v57;
    v45 = v56;
    v44 = v55;
    v43 = v54;
    v42 = v53;
    v21 = a4 + v18;
    v22 = *(v9 + 16);
    v39 = v20;
    v23 = v17;
    v24 = v48;
    v22(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v48);
    v25 = *(v9 + 80);
    v40 = v14;
    v41 = v12;
    v26 = v49;
    v27 = (v25 + 80) & ~v25;
    v28 = (v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = *(a2 + 16);
    *(v29 + 1) = *a2;
    *(v29 + 2) = v30;
    v31 = *(a2 + 48);
    *(v29 + 3) = *(a2 + 32);
    *(v29 + 4) = v31;
    (*(v9 + 32))(&v29[v27], v11, v24);
    *&v29[v28] = v50;
    *&v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8] = a5;
    sub_100023E30(a2, v52);

    sub_1000028F8(&qword_100059E70);
    sub_100002F14(&qword_100059E78, &qword_100059E70);
    v32 = v51;
    sub_100043E68();
    v33 = *(v26 + 16);
    v34 = v40;
    v35 = v41;
    v33(v40, v32, v41);
    *v21 = 2;
    *(v21 + 8) = v42;
    *(v21 + 16) = v43;
    *(v21 + 24) = v44;
    *(v21 + 32) = v45;
    v36 = v47;
    *(v21 + 40) = v46;
    *(v21 + 48) = v36;
    v37 = sub_1000028F8(&qword_100059E80);
    v33((v21 + *(v37 + 48)), v34, v35);
    v38 = *(v26 + 8);
    v38(v32, v35);
    return (v38)(v34, v35);
  }

  return result;
}

uint64_t sub_1000230A0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_1000435F8();
  v11 = v10;
  result = sub_1000435F8();
  v14 = v13;
  if (!a3)
  {
    v16 = a2[2];
    goto LABEL_10;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *(a3 + 8 * a1 + 32);
  v16 = a2[2];
  if (!v15)
  {
LABEL_10:
    v17 = v16;
    goto LABEL_11;
  }

  v17 = v16;
  v18 = v15;
  v19 = [v18 quantityValue];
  if (v19)
  {
    if (a5 != 0.0)
    {
      v25 = v19;
      [v19 doubleValueForUnit:v17];
      v27 = v26;

      v20 = v27 / a5;
      goto LABEL_12;
    }
  }

LABEL_11:
  v20 = 0.0;
LABEL_12:
  if (v14 > 19.0)
  {
    v14 = 19.0;
  }

  v21 = (v11 - a2[6] + 1.0) / a2[6];
  v22 = *a2;
  v23 = a2[1];

  sub_1000435F8();
  sub_100023234(a1, &v28);
  v24 = v28;
  *a4 = v21;
  *(a4 + 8) = v14;
  *(a4 + 16) = v20;
  *(a4 + 24) = v22;
  *(a4 + 32) = v23;
  *(a4 + 40) = v17;
  *(a4 + 48) = v24;
}

uint64_t sub_100023234@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v2 + 48);
  if ((v4 + 1) < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4 / (v4 / 2);
  if (!v5)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (result == 0x7FFFFFFFFFFFFFFFLL && v5 == -1)
  {
    goto LABEL_19;
  }

  if ((result + 1) % v5)
  {
    sub_1000253F4();
LABEL_15:
    result = sub_100043E38();
    *a2 = result;
    return result;
  }

  v6 = *(v2 + 56);
  if (!v6)
  {
    goto LABEL_20;
  }

  if (v4 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_22;
  }

  v7 = v4 / v6;
  if (!v7)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL || v7 != -1)
  {
    sub_100043EC8();
    sub_1000435E8();
    sub_1000028F8(&qword_100059E90);
    sub_100025448();
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1000233C4(uint64_t a1)
{
  v3 = sub_1000438A8();
  __chkstk_darwin(v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100023F4C(v1[5]);
  v36 = &_swiftEmptyArrayStorage;
  v7 = v1[7];
  if (!v7)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = v1[6];
  if (v8 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_43;
  }

  if (v8 < 0)
  {
    goto LABEL_40;
  }

  v31[1] = v5;
  v32 = v7;
  v33 = v6;
  if (v8)
  {
    v10 = v8 / v7;
    if (v8 / v7)
    {
      if (!__OFSUB__(v10, 1))
      {
        v11 = 0;
        v34 = &_swiftEmptyArrayStorage;
        do
        {
          v12 = 0.0;
          v13 = v11;
          while (1)
          {
            if (v13 >= v8)
            {
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_37;
            }

            if (a1)
            {
              if (v13 >= *(a1 + 16))
              {
                goto LABEL_38;
              }

              v14 = *(a1 + 32 + 8 * v13);
              if (v14)
              {
                v15 = v14;
                v16 = [v15 quantityValue];
                if (v16)
                {
                  v17 = v16;
                  [v16 doubleValueForUnit:v1[2]];
                  v19 = v18;
                }

                else
                {
                  v19 = 0.0;
                }

                v12 = v12 + v19;
              }
            }

            if (v13 % v10 == v10 - 1)
            {
              break;
            }

            ++v13;
            if (v11 == v8)
            {
              goto LABEL_31;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_1000091B0(0, *(v34 + 2) + 1, 1, v34);
          }

          v21 = *(v34 + 2);
          v20 = *(v34 + 3);
          if (v21 >= v20 >> 1)
          {
            v34 = sub_1000091B0((v20 > 1), v21 + 1, 1, v34);
          }

          v22 = v34;
          *(v34 + 2) = v21 + 1;
          *&v22[8 * v21 + 32] = v12;
          v36 = v22;
        }

        while (v11 != v8);
        goto LABEL_31;
      }

      goto LABEL_42;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v34 = &_swiftEmptyArrayStorage;
LABEL_31:
  v23 = v33;
  v24 = *(v33 + 16);
  v25 = v32;
  if (v24 == *(v34 + 2) && v24 == v32)
  {
    sub_100023E30(v1, v35);
    sub_100024C7C(0, v25, v1, v23, &v36);
    v27 = v26;

    sub_100025200(v1);
    v35[0] = v27;
    sub_1000028F8(&qword_100059268);
    sub_100002F14(&qword_100059270, &qword_100059268);
    v28 = sub_1000441E8();
    v30 = v29;

    v35[0] = v28;
    v35[1] = v30;
    sub_10000A8C4();
    sub_100043C48();
  }

  else
  {

    sub_100043898();
    v37._object = 0x800000010004FD70;
    v37._countAndFlagsBits = 0xD000000000000015;
    sub_100043888(v37);
    v35[0] = v24;
    sub_100043878();
    v38._countAndFlagsBits = 0x20736D7573202CLL;
    v38._object = 0xE700000000000000;
    sub_100043888(v38);
    v35[0] = *(v34 + 2);
    sub_100043878();
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_100043888(v39);
    sub_1000438C8();
    sub_100043C38();
  }
}

uint64_t sub_100023818@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = fmax(*a1, 1.0);
  v6 = *(a1 + 16);
  if (v4 * v6 >= 2.0)
  {
    v7 = v4 * v6;
  }

  else
  {
    v7 = 2.0;
  }

  sub_1000028F8(&qword_100059360);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100045500;
  v9 = *(a1 + 24);
  v18 = *(a1 + 32);
  v10 = v18;
  v19 = v9;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_10002574C(&v19, v17);
  sub_10002574C(&v18, v17);
  sub_100043E78();
  sub_100043F48();
  sub_100043F38();
  sub_100043618();
  sub_100043EC8();
  result = sub_1000435E8();
  *&v16[6] = v17[0];
  *&v16[22] = v17[1];
  *&v16[38] = v17[2];
  v12 = 0.3;
  if (v6 != 0.0)
  {
    v12 = 1.0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v13;
  *(a2 + 40) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = 256;
  *(a2 + 112) = *&v16[46];
  *(a2 + 98) = *&v16[32];
  *(a2 + 82) = *&v16[16];
  *(a2 + 66) = *v16;
  *(a2 + 120) = v12;
  return result;
}

id sub_1000239B0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 24);
  v3 = v9;
  v10 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = *v1;
  *(v5 + 32) = *(v1 + 16);
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  *(v5 + 56) = v7;
  *a1 = sub_100025744;
  a1[1] = v5;
  sub_10002574C(&v9, v8);
  sub_10002574C(&v10, v8);

  return v7;
}

double sub_100023A5C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000438D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043B88();
  (*(v3 + 104))(v5, enum case for RoundedCornerStyle.continuous(_:), v2);
  v11 = 0x3FF0000000000000;
  v12 = 0;
  v13 = 0;
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 0;
  sub_100043B68();
  (*(v3 + 8))(v5, v2);
  v6 = v10;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_100023BC0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100043548();
  return sub_10000CAB4;
}

uint64_t sub_100023C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002593C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100023CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002593C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100023D10(uint64_t a1)
{
  v2 = sub_10002593C();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100023D98()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_100023E68()
{
  result = qword_100059E48;
  if (!qword_100059E48)
  {
    sub_100002940(&qword_100059E30);
    sub_100002F14(&qword_100059E50, &qword_100059E58);
    sub_100002F14(&qword_100059258, &qword_100059238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059E48);
  }

  return result;
}

unint64_t sub_100023F4C(unint64_t a1)
{
  v2 = v1;
  v81 = sub_1000028F8(&qword_1000590D8);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v84 = &v74 - v4;
  v85 = sub_1000433C8();
  v5 = *(v85 - 8);
  __chkstk_darwin(v85);
  v93 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v7 - 8);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v74 - v10;
  __chkstk_darwin(v12);
  v92 = &v74 - v13;
  __chkstk_darwin(v14);
  v101 = &v74 - v15;
  __chkstk_darwin(v16);
  v103 = &v74 - v17;
  v104 = sub_100043328();
  v18 = *(v104 - 8);
  v19 = v18;
  __chkstk_darwin(v104);
  v83 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v87 = &v74 - v22;
  __chkstk_darwin(v23);
  v94 = &v74 - v24;
  __chkstk_darwin(v25);
  v27 = &v74 - v26;
  v76 = sub_1000433D8();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v95 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000433B8();
  v96 = v27;
  sub_100043318();
  if (!a1)
  {
    goto LABEL_39;
  }

  v27 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_39:
    do
    {
LABEL_9:
      v35 = v2[7];
      if (v35)
      {
        v36 = *(v19 + 56);
        v19 += 56;
        v27 = v36;
        v37 = 24 / v35;
        v2 = v104;
        (v36)(v103, 1, 1, v104);
        v79 = v19;
        v78 = v36;
        (v36)(v101, 1, 1, v2);
        v99 = v37;
        if (v37)
        {
          v97 = v99 - 1;
          v91 = enum case for Calendar.Component.hour(_:);
          v102 = (v18 + 8);
          v89 = (v5 + 1);
          v90 = v5 + 13;
          v38 = (v18 + 48);
          v39 = (v18 + 32);
          v77 = (v18 + 16);
          v88 = &_swiftEmptyArrayStorage;
          v40 = 1;
          v41 = v85;
          v42 = v82;
          v86 = (v18 + 48);
          v100 = (v18 + 32);
          v98 = v11;
          do
          {
            v43 = (v40 - 1) % v99;
            if (!v43)
            {
              v44 = v93;
              (*v90)(v93, v91, v41);
              v45 = v102;
              v46 = v94;
              sub_100043368();
              v47 = v92;
              sub_1000433A8();
              v38 = v86;
              (*v45)(v46, v104);
              v42 = v82;
              (*v89)(v44, v41);
              v48 = v103;
              sub_100009D50(v103, &qword_100058F90);
              v39 = v100;
              sub_1000029D8(v47, v48, &qword_100058F90);
            }

            if (v43 == v97)
            {
              v49 = v93;
              (*v90)(v93, v91, v41);
              v50 = v94;
              sub_100043368();
              v51 = v92;
              sub_1000433A8();
              (*v102)(v50, v104);
              (*v89)(v49, v41);
              v52 = v101;
              sub_100009D50(v101, &qword_100058F90);
              v39 = v100;
              sub_1000029D8(v51, v52, &qword_100058F90);
            }

            v53 = v98;
            sub_10000A1F8(v103, v98, &qword_100058F90);
            v54 = *v38;
            if ((*v38)(v53, 1, v104) == 1)
            {
              sub_100009D50(v53, &qword_100058F90);
            }

            else
            {
              v55 = v53;
              v56 = *v39;
              v57 = v42;
              v58 = v87;
              v59 = v104;
              (*v39)(v87, v55, v104);
              sub_10000A1F8(v101, v57, &qword_100058F90);
              if (v54(v57, 1, v59) == 1)
              {
                (*v102)(v58, v104);
                sub_100009D50(v57, &qword_100058F90);
                v41 = v85;
                v42 = v57;
              }

              else
              {
                v60 = v83;
                v61 = v57;
                v62 = v104;
                v56(v83, v57, v104);
                v63 = *(v81 + 48);
                v64 = *v77;
                v65 = v84;
                (*v77)(v84, v58, v62);
                v64(v65 + v63, v60, v62);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v88 = sub_100008FA4(0, v88[2] + 1, 1, v88);
                }

                v67 = v88[2];
                v66 = v88[3];
                if (v67 >= v66 >> 1)
                {
                  v88 = sub_100008FA4(v66 > 1, v67 + 1, 1, v88);
                }

                v68 = *v102;
                v69 = v104;
                (*v102)(v83, v104);
                v68(v87, v69);
                v70 = v101;
                sub_100009D50(v101, &qword_100058F90);
                v71 = v103;
                sub_100009D50(v103, &qword_100058F90);
                v72 = v88;
                v88[2] = v67 + 1;
                sub_1000029D8(v84, v72 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v67, &qword_1000590D8);
                v73 = v78;
                v78(v71, 1, 1, v69);
                v73(v70, 1, 1, v69);
                v41 = v85;
                v39 = v100;
                v42 = v61;
                v38 = v86;
              }
            }

            ++v40;
          }

          while (v40 != 25);
          sub_100009D50(v101, &qword_100058F90);
          sub_100009D50(v103, &qword_100058F90);
          (*v102)(v96, v104);
          (*(v75 + 8))(v95, v76);
          return v88;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_29:
      ;
    }

    while (!sub_1000445E8());
    result = sub_1000445E8();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    if (!result)
    {
      __break(1u);
LABEL_33:
      v30 = sub_1000445C8();
LABEL_8:
      a1 = v30;
      v31 = [v30 startDate];
      v32 = v94;
      sub_1000432F8();

      v33 = v96;
      v34 = v104;
      (*(v19 + 8))(v96, v104);
      (*(v19 + 32))(v33, v32, v34);
      v5 = v100;
      v2 = v102;
      goto LABEL_9;
    }
  }

  result = sub_1000249E8(result);
  v100 = v5;
  v102 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v27 + 2))
  {
    v30 = *(a1 + 8 * result + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1000249E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024A74()
{
  v0 = sub_100043358();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  sub_100043348();
  v5 = sub_100043338();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v15 = v5;
    v16 = v7;
    v13 = 26746;
    v14 = 0xE200000000000000;
    sub_10000A8C4();
    if (sub_1000444F8())
    {
    }

    else
    {
      v15 = v5;
      v16 = v7;
      v13 = 24938;
      v14 = 0xE200000000000000;
      sub_1000444F8();
    }
  }

  v8 = sub_100044238();
  [v4 setLocalizedDateFormatFromTemplate:v8];

  isa = sub_1000432D8().super.isa;
  v10 = [v4 stringFromDate:isa];

  v11 = sub_100044258();
  return v11;
}

void sub_100024C7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v60 = sub_1000028F8(&qword_1000590D8);
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v51 - v10;
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_25;
  }

  if (v11)
  {
    v51 = v5;
    v71 = &_swiftEmptyArrayStorage;
    sub_10000460C(0, v11 & ~(v11 >> 63), 0);
    v12 = v71;
    v58 = objc_opt_self();
    if (a2 < a1 || v11 < 0)
    {
      goto LABEL_26;
    }

    v54 = a4 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v13 = *(a4 + 16);
    v14 = v13 >= a1;
    v15 = v13 - a1;
    v16 = *(a3 + 32);
    v56 = *(a3 + 24);
    v57 = "wrong counts: ranges ";
    if (v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v55 = xmmword_1000463A0;
    v52 = v16;
    v53 = a2;
    while (a2 != a1)
    {
      v18 = [v58 mainBundle];
      v19 = sub_100044238();
      v20 = sub_100044238();
      v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

      v22 = sub_100044258();
      v24 = v23;

      sub_1000028F8(&unk_100059790);
      v25 = swift_allocObject();
      *(v25 + 16) = v55;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_100009CFC();
      *(v25 + 64) = v26;
      *(v25 + 32) = v56;
      *(v25 + 40) = v16;
      if (!v17)
      {
        goto LABEL_20;
      }

      v27 = v26;
      v63 = v22;
      v64 = v24;
      v65 = v17;
      v66 = v12;
      v28 = v54 + *(v62 + 72) * a1;
      v29 = v59;
      sub_10000A1F8(v28, v59, &qword_1000590D8);
      v30 = v60;
      v31 = *(v60 + 48);

      v32 = sub_100024A74();
      v67 = v33;
      v68 = v32;
      v34 = sub_100043328();
      v35 = *(*(v34 - 8) + 8);
      v69 = a1;
      v35(v29 + v31, v34);
      v35(v29, v34);
      *(v25 + 96) = &type metadata for String;
      *(v25 + 104) = v27;
      v36 = v67;
      *(v25 + 72) = v68;
      *(v25 + 80) = v36;
      sub_10000A1F8(v28, v29, &qword_1000590D8);
      v37 = *(v30 + 48);
      v38 = sub_100024A74();
      v40 = v39;
      v35(v29 + v37, v34);
      v35(v29, v34);
      v41 = v69;
      *(v25 + 136) = &type metadata for String;
      *(v25 + 144) = v27;
      *(v25 + 112) = v38;
      *(v25 + 120) = v40;
      if (v41 >= *(*v61 + 16))
      {
        goto LABEL_21;
      }

      v42 = *(*v61 + 8 * v41 + 32);
      v12 = v66;
      if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_22;
      }

      if (v42 <= -9.22337204e18)
      {
        goto LABEL_23;
      }

      if (v42 >= 9.22337204e18)
      {
        goto LABEL_24;
      }

      v70 = v42;
      v43 = sub_1000445F8();
      *(v25 + 176) = &type metadata for String;
      *(v25 + 184) = v27;
      *(v25 + 152) = v43;
      *(v25 + 160) = v44;
      v45 = sub_100044248();
      v47 = v46;

      v71 = v12;
      v49 = v12[2];
      v48 = v12[3];
      if (v49 >= v48 >> 1)
      {
        sub_10000460C((v48 > 1), v49 + 1, 1);
        v12 = v71;
      }

      v12[2] = v49 + 1;
      v50 = &v12[2 * v49];
      v50[4] = v45;
      v50[5] = v47;
      a1 = v41 + 1;
      v17 = v65 - 1;
      v16 = v52;
      a2 = v53;
      if (v53 == a1)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

double sub_100025144(uint64_t a1, uint64_t a2)
{
  v2 = 0.0;
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v5 = (a1 + 32);
      do
      {
        v10 = *v5++;
        v9 = v10;
        if (v10)
        {
          v11 = v9;
          v12 = [v11 quantityValue];
          if (v12)
          {
            v6 = v12;
            [v12 doubleValueForUnit:a2];
            v8 = v7;

            if (v2 < v8)
            {
              v2 = v8;
            }
          }

          else
          {
          }
        }

        --v3;
      }

      while (v3);
    }
  }

  return v2;
}

uint64_t sub_100025230()
{
  v1 = sub_100043608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100025338@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100043608() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 80) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000230A0(a1, (v2 + 16), v7, a2, v8);
}

unint64_t sub_1000253F4()
{
  result = qword_100059E88;
  if (!qword_100059E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059E88);
  }

  return result;
}

unint64_t sub_100025448()
{
  result = qword_100059E98;
  if (!qword_100059E98)
  {
    sub_100002940(&qword_100059E90);
    sub_1000253F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059E98);
  }

  return result;
}

uint64_t sub_1000254D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10002551C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10002557C()
{
  result = qword_100059EA0;
  if (!qword_100059EA0)
  {
    sub_100002940(&qword_100059EA8);
    sub_100002940(&qword_100059E38);
    sub_100002940(&qword_100059E30);
    sub_100023E68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100025688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059EA0);
  }

  return result;
}

unint64_t sub_100025688()
{
  result = qword_100059348;
  if (!qword_100059348)
  {
    sub_100043A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059348);
  }

  return result;
}

uint64_t sub_1000256FC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for QuantityChart.Bar(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QuantityChart.Bar(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_100025890()
{
  result = qword_100059ED0;
  if (!qword_100059ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059ED0);
  }

  return result;
}

unint64_t sub_1000258E8()
{
  result = qword_100059ED8;
  if (!qword_100059ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059ED8);
  }

  return result;
}

unint64_t sub_10002593C()
{
  result = qword_100059EE0;
  if (!qword_100059EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059EE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WidgetFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100025A74()
{
  result = qword_100059EE8;
  if (!qword_100059EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059EE8);
  }

  return result;
}

Swift::Int sub_100025AD0()
{
  sub_100044678();
  sub_100044688(0);
  return sub_100044698();
}

Swift::Int sub_100025B3C()
{
  sub_100044678();
  sub_100044688(0);
  return sub_100044698();
}

double sub_100025BA4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1000435F8();
  v5 = v4;
  sub_1000435F8();
  if (v6 < v5)
  {
    v5 = v6;
  }

  v7 = (v5 + -29.0) / 114.0;
  v8 = fmin(v7, 1.0) * -0.0288461538 + 0.0432692308;
  if (v7 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0432692308;
  }

  sub_100025CB0(a1, a2, v5 * 0.105769231, v5, v5 * 0.105769231 + v5 * v9);
  sub_100043EC8();
  sub_1000435E8();
  v10 = (a2 + *(sub_1000028F8(&qword_100059FF0) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_100025CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v81 = a2;
  v78 = sub_1000028F8(&qword_100059FF8);
  __chkstk_darwin(v78);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v75 - v11;
  __chkstk_darwin(v12);
  v77 = &v75 - v13;
  __chkstk_darwin(v14);
  v80 = &v75 - v15;
  __chkstk_darwin(v16);
  v76 = &v75 - v17;
  __chkstk_darwin(v18);
  v85 = &v75 - v19;
  v20 = type metadata accessor for ActivityRing(0);
  __chkstk_darwin(v20);
  v79 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v75 - v23);
  __chkstk_darwin(v25);
  v27 = (&v75 - v26);
  __chkstk_darwin(v28);
  v30 = (&v75 - v29);
  __chkstk_darwin(v31);
  v84 = &v75 - v32;
  v33 = 1.0;
  v34 = *(a1 + 25);
  if (v34)
  {
    v35 = 4;
    v36 = 1.0;
  }

  else
  {
    v35 = 0;
    v36 = *a1;
  }

  v37 = *(a1 + 24);
  v87[0] = *(a1 + 32);
  v38 = v87[0];
  *v30 = swift_getKeyPath();
  sub_1000028F8(&qword_100059990);
  swift_storeEnumTagMultiPayload();
  *(v30 + v20[5]) = v35;
  *(v30 + v20[6]) = v36;
  *(v30 + v20[7]) = a3;
  *(v30 + v20[8]) = a4;
  *(v30 + v20[9]) = v37;
  *(v30 + v20[10]) = v38;
  sub_1000291C4(v30, v84, type metadata accessor for ActivityRing);
  v39 = v34;
  if (v34)
  {
    v40 = 4;
  }

  else
  {
    v33 = *(a1 + 8);
    v40 = 1;
  }

  *v27 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v27 + v20[5]) = v40;
  *(v27 + v20[6]) = v33;
  *(v27 + v20[7]) = a3;
  *(v27 + v20[8]) = a4 - a5;
  *(v27 + v20[9]) = v37;
  *(v27 + v20[10]) = v38;
  sub_10002922C(a1, v86);
  sub_10000A1F8(v87, v86, &qword_100059FE8);
  sub_10000A1F8(v87, v86, &qword_100059FE8);
  v41 = sub_100043A38();
  sub_100043568();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v76;
  sub_1000291C4(v27, v76, type metadata accessor for ActivityRing);
  v51 = v78;
  v52 = v50 + *(v78 + 36);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  sub_1000029D8(v50, v85, &qword_100059FF8);
  if (v39)
  {
    v53 = 4;
    v54 = 1.0;
  }

  else
  {
    v54 = *(a1 + 16);
    v53 = 2;
  }

  *v24 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v24 + v20[5]) = v53;
  *(v24 + v20[6]) = v54;
  *(v24 + v20[7]) = a3;
  *(v24 + v20[8]) = a4 - (a5 + a5);
  *(v24 + v20[9]) = v37;
  *(v24 + v20[10]) = v87[0];
  v55 = sub_100043A38();
  sub_100043568();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v77;
  sub_1000291C4(v24, v77, type metadata accessor for ActivityRing);
  v65 = v64 + *(v51 + 36);
  *v65 = v55;
  *(v65 + 8) = v57;
  *(v65 + 16) = v59;
  *(v65 + 24) = v61;
  *(v65 + 32) = v63;
  *(v65 + 40) = 0;
  v66 = v80;
  sub_1000029D8(v64, v80, &qword_100059FF8);
  v67 = v84;
  v68 = v79;
  sub_100029264(v84, v79, type metadata accessor for ActivityRing);
  v69 = v85;
  v70 = v82;
  sub_10000A1F8(v85, v82, &qword_100059FF8);
  v71 = v83;
  sub_10000A1F8(v66, v83, &qword_100059FF8);
  v72 = v81;
  sub_100029264(v68, v81, type metadata accessor for ActivityRing);
  v73 = sub_1000028F8(&qword_10005A000);
  sub_10000A1F8(v70, v72 + *(v73 + 48), &qword_100059FF8);
  sub_10000A1F8(v71, v72 + *(v73 + 64), &qword_100059FF8);
  sub_100009D50(v66, &qword_100059FF8);
  sub_100009D50(v69, &qword_100059FF8);
  sub_1000292CC(v67);
  sub_100009D50(v71, &qword_100059FF8);
  sub_100009D50(v70, &qword_100059FF8);
  return sub_1000292CC(v68);
}

uint64_t sub_1000262FC@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  *a1 = sub_1000291BC;
  a1[1] = v4;
  v8 = v3;
  return sub_10000A1F8(&v8, &v7, &qword_100059FE8);
}

double sub_100026384@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1000435F8();
  v5 = v4;
  sub_1000435F8();
  if (v6 < v5)
  {
    v5 = v6;
  }

  *a2 = sub_100043EB8();
  a2[1] = v7;
  v8 = sub_1000028F8(&qword_100059FA0);
  sub_10002645C(a1, a2 + *(v8 + 44), v5);
  sub_100043EC8();
  sub_1000435E8();
  v9 = (a2 + *(sub_1000028F8(&qword_100059FA8) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_10002645C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v72 = a2;
  v64 = sub_100043DA8();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000028F8(&qword_100059FB0);
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v62 - v6;
  v7 = sub_1000028F8(&qword_100059FB8);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v62 - v10;
  v11 = sub_1000028F8(&qword_100059FC0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = (&v62 - v13);
  v15 = sub_1000028F8(&qword_100059FC8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v69 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  __chkstk_darwin(v21);
  v23 = &v62 - v22;
  v24 = type metadata accessor for StandalonePhoneRingView(0);
  v25 = *(a1 + v24[8]);
  v26 = *(a1 + v24[5]);
  v27 = *(a1 + v24[7]);
  v28 = *(a1 + v24[9]);
  *v14 = swift_getKeyPath();
  sub_1000028F8(&qword_100059990);
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for ActivityRing(0);
  *(v14 + v29[5]) = v25;
  *(v14 + v29[6]) = v26;
  *(v14 + v29[7]) = a3 * 0.2;
  *(v14 + v29[8]) = a3;
  *(v14 + v29[9]) = v27;
  *(v14 + v29[10]) = v28;

  sub_100043EC8();
  sub_1000435E8();
  v30 = (v14 + *(v12 + 44));
  v31 = v74;
  *v30 = v73;
  v30[1] = v31;
  v30[2] = v75;
  if (v25 == 4)
  {
    v32 = 0.36;
  }

  else
  {
    v32 = 1.0;
  }

  sub_1000029D8(v14, v20, &qword_100059FC0);
  v33 = *(v16 + 44);
  v34 = v67;
  *&v20[v33] = v32;
  v68 = v23;
  sub_1000029D8(v20, v23, &qword_100059FC8);
  v35 = v24[6];
  v36 = v66;
  v37 = 1;
  if (*(a1 + v35) == 1)
  {
    sub_100043DB8();
    v38 = v63;
    v39 = v62;
    v40 = v64;
    (*(v63 + 104))(v62, enum case for Image.ResizingMode.stretch(_:), v64);
    v41 = sub_100043DC8();

    (*(v38 + 8))(v39, v40);
    v42 = sub_100043D38();
    KeyPath = swift_getKeyPath();
    v44 = *(sub_1000028F8(&qword_100059FD8) + 36);
    v45 = enum case for BlendMode.destinationOut(_:);
    v46 = sub_100043F18();
    v47 = v65;
    (*(*(v46 - 8) + 104))(&v65[v44], v45, v46);
    *v47 = v41;
    *(v47 + 8) = 0;
    *(v47 + 16) = 1;
    *(v47 + 24) = KeyPath;
    *(v47 + 32) = v42;
    sub_100043EC8();
    sub_1000435E8();
    v48 = (v47 + *(sub_1000028F8(&qword_100059FE0) + 36));
    v49 = v77;
    *v48 = v76;
    v48[1] = v49;
    v48[2] = v78;
    v50 = sub_100043A48();
    sub_100043568();
    v51 = v47 + *(v34 + 36);
    *v51 = v50;
    *(v51 + 8) = v52;
    *(v51 + 16) = v53;
    *(v51 + 24) = v54;
    *(v51 + 32) = v55;
    *(v51 + 40) = 0;
    sub_1000029D8(v47, v36, &qword_100059FB0);
    v37 = 0;
  }

  (*(v70 + 56))(v36, v37, 1, v34);
  v57 = v68;
  v56 = v69;
  sub_10000A1F8(v68, v69, &qword_100059FC8);
  v58 = v71;
  sub_10000A1F8(v36, v71, &qword_100059FB8);
  v59 = v72;
  sub_10000A1F8(v56, v72, &qword_100059FC8);
  v60 = sub_1000028F8(&qword_100059FD0);
  sub_10000A1F8(v58, v59 + *(v60 + 48), &qword_100059FB8);
  sub_100009D50(v36, &qword_100059FB8);
  sub_100009D50(v57, &qword_100059FC8);
  sub_100009D50(v58, &qword_100059FB8);
  return sub_100009D50(v56, &qword_100059FC8);
}

uint64_t sub_100026B80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100043818();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000028F8(&qword_100059990);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000A1F8(v2, &v14 - v9, &qword_100059990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100044018();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100044378();
    v13 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100026D80@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100029264(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StandalonePhoneRingView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000291C4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for StandalonePhoneRingView);
  *a2 = sub_1000290A0;
  a2[1] = v7;
  return result;
}

uint64_t sub_100026E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityRing(0);
  v37 = *(v4 - 1);
  __chkstk_darwin(v4);
  v38 = v5;
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100044018();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  sub_100026B80(&v36 - v11);
  sub_100044008();
  sub_10002963C();
  v13 = sub_100044208();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if ((v13 & 1) != 0 || (v15 = *(v2 + v4[10])) == 0)
  {
    sub_100027C84();
    v15 = sub_100043D58();
  }

  else
  {
  }

  sub_100043588();
  v16 = v68;
  v17 = v69;
  v40 = v70;
  v18 = v71;
  v41 = v72;
  v19 = v73;
  v20 = sub_100043EC8();
  v42 = v21;
  v43 = v20;
  if (*(v2 + v4[9]))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = v39;
    sub_100029264(v2, v39, type metadata accessor for ActivityRing);
    v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_1000291C4(v26, v23 + v27, type metadata accessor for ActivityRing);
    v28 = *(v2 + v4[6]);
    v24 = sub_100043EE8();
    v25 = v28;

    v22 = sub_1000297B4;
  }

  *&v44 = v16 * 0.5;
  *(&v44 + 1) = v16;
  *&v45 = __PAIR64__(v40, v17);
  *(&v45 + 1) = v18;
  v29 = v41;
  *&v46 = v41;
  *(&v46 + 1) = v19;
  *&v47 = v15;
  WORD4(v47) = 256;
  HIWORD(v47) = v67;
  LODWORD(v38) = v17;
  *(&v47 + 10) = v66;
  v30 = v40;
  v31 = v43;
  v39 = v15;
  v32 = v42;
  *&v48 = v43;
  *(&v48 + 1) = v42;
  v52 = v47;
  v53 = v48;
  v50 = v45;
  v51 = v46;
  v49 = v44;
  sub_100029878(&v44, v54);
  sub_1000298E8(v22);
  sub_10002992C(v22);
  v33 = v52;
  *(a1 + 32) = v51;
  *(a1 + 48) = v33;
  *(a1 + 64) = v53;
  v34 = v50;
  *a1 = v49;
  *(a1 + 16) = v34;
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  *(a1 + 96) = v24;
  *(a1 + 104) = v25;
  sub_10002992C(v22);
  v54[0] = v16 * 0.5;
  v54[1] = v16;
  v55 = v38;
  v56 = v30;
  v57 = v18;
  v58 = v29;
  v59 = v19;
  v60 = v39;
  v61 = 256;
  v62 = v66;
  v63 = v67;
  v64 = v31;
  v65 = v32;
  return sub_100029970(v54);
}

uint64_t sub_100027328@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_1000028F8(&qword_10005A0E0);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v66 = &v56 - v4;
  v5 = sub_100043D28();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000028F8(&qword_10005A0E8);
  v60 = *(v67 - 8);
  __chkstk_darwin(v67);
  v57 = &v56 - v7;
  v8 = sub_100044018();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  v14 = sub_1000028F8(&qword_10005A0F0);
  __chkstk_darwin(v14 - 8);
  v65 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = &v56 - v17;
  v18 = sub_1000028F8(&qword_10005A0F8);
  __chkstk_darwin(v18 - 8);
  v68 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v23 = type metadata accessor for ActivityRing(0);
  v24 = *(a1 + v23[6]);
  v25 = *(a1 + v23[7]);
  sub_1000028F8(&qword_100059360);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100045500;
  sub_100027C84();
  *(v26 + 32) = v27;
  sub_100027C84();
  *(v26 + 40) = v28;
  sub_100043E78();
  sub_100043F58();
  sub_100043628();
  *&v87[39] = v90;
  *&v87[23] = v89;
  *&v87[7] = v88;
  v59 = v23;
  if (*(a1 + v23[5]) == 4)
  {
    (*(v69 + 56))(v22, 1, 1, v70);
    v29 = v22;
  }

  else
  {
    v56 = v22;
    sub_100026B80(v13);
    sub_100044008();
    sub_10002963C();
    v30 = sub_100044208();
    v31 = *(v58 + 8);
    v31(v10, v8);
    v31(v13, v8);
    if (v30)
    {
      v32 = v62;
      (*(v60 + 56))(v62, 1, 1, v67);
    }

    else
    {
      v33 = *(v67 + 36);
      v34 = enum case for BlendMode.destinationOut(_:);
      v35 = sub_100043F18();
      v36 = v57;
      (*(*(v35 - 8) + 104))(&v57[v33], v34, v35);
      *v36 = v24;
      *(v36 + 1) = v25;
      v36[16] = 3;
      *(v36 + 17) = v75;
      *(v36 + 5) = *(&v75 + 3);
      *(v36 + 3) = v24;
      *(v36 + 4) = v25;
      *(v36 + 20) = 2;
      v36[42] = 0;
      v37 = v36;
      v32 = v62;
      sub_1000029D8(v37, v62, &qword_10005A0E8);
      (*(v60 + 56))(v32, 0, 1, v67);
    }

    sub_100027C84();
    v67 = v38;
    sub_100026B80(v13);
    sub_100044008();
    sub_100043FF8();
    v31(v10, v8);
    v31(v13, v8);
    (*(v63 + 104))(v61, enum case for Color.RGBColorSpace.sRGB(_:), v64);
    v39 = sub_100043D88();
    v40 = *(a1 + v59[8]) / 15.0;
    v41 = v65;
    sub_10000A1F8(v32, v65, &qword_10005A0F0);
    v42 = v32;
    v43 = v66;
    sub_10000A1F8(v41, v66, &qword_10005A0F0);
    v44 = (v43 + *(sub_1000028F8(&qword_10005A100) + 48));
    *&v72 = v24;
    *(&v72 + 1) = v25;
    LOBYTE(v73[0]) = 1;
    *(v73 + 1) = *v86;
    DWORD1(v73[0]) = *&v86[3];
    v45 = v67;
    *(&v73[0] + 1) = v67;
    LOWORD(v73[1]) = 256;
    *(&v73[1] + 2) = v84;
    WORD3(v73[1]) = v85;
    *(&v73[1] + 1) = v39;
    v73[2] = *&v40;
    *&v74[0] = 0;
    *(&v74[0] + 1) = v24;
    *&v74[1] = v25;
    WORD4(v74[1]) = 2;
    BYTE10(v74[1]) = 0;
    v46 = v73[0];
    *v44 = v72;
    v44[1] = v46;
    v47 = v73[1];
    v48 = v73[2];
    v49 = v74[0];
    *(v44 + 75) = *(v74 + 11);
    v44[3] = v48;
    v44[4] = v49;
    v44[2] = v47;
    sub_10000A1F8(&v72, &v75, &qword_10005A108);
    sub_100009D50(v42, &qword_10005A0F0);
    v75 = v24;
    v76 = v25;
    v77 = 1;
    *v78 = *v86;
    *&v78[3] = *&v86[3];
    *&v78[7] = v45;
    *&v78[15] = 256;
    *&v78[17] = v84;
    *&v78[21] = v85;
    *&v78[23] = v39;
    *&v78[31] = v40;
    *&v78[39] = 0;
    v79 = 0;
    v80 = v24;
    v81 = v25;
    v82 = 2;
    v83 = 0;
    sub_100009D50(&v75, &qword_10005A108);
    sub_100009D50(v41, &qword_10005A0F0);
    v29 = v56;
    sub_1000029D8(v43, v56, &qword_10005A0E0);
    (*(v69 + 56))(v29, 0, 1, v70);
  }

  v50 = v68;
  sub_10000A1F8(v29, v68, &qword_10005A0F8);
  *&v72 = v24;
  *(&v72 + 1) = v25;
  LOBYTE(v73[0]) = 0;
  *(v73 + 1) = *v87;
  *(&v73[1] + 1) = *&v87[16];
  v73[2] = *&v87[31];
  LOWORD(v74[0]) = 256;
  v51 = v71;
  *(v71 + 64) = 256;
  v52 = v73[0];
  *v51 = v72;
  v51[1] = v52;
  v53 = v73[2];
  v51[2] = v73[1];
  v51[3] = v53;
  v54 = sub_1000028F8(&qword_10005A110);
  sub_10000A1F8(v50, v51 + *(v54 + 48), &qword_10005A0F8);
  sub_10000A1F8(&v72, &v75, &qword_10005A118);
  sub_100009D50(v29, &qword_10005A0F8);
  sub_100009D50(v50, &qword_10005A0F8);
  v75 = v24;
  v76 = v25;
  v77 = 0;
  *v78 = *v87;
  *&v78[16] = *&v87[16];
  *&v78[31] = *&v87[31];
  LOWORD(v79) = 256;
  return sub_100009D50(&v75, &qword_10005A118);
}

void sub_100027C84()
{
  v1 = v0;
  v2 = sub_100044018();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  sub_100026B80(&v14 - v7);
  sub_100044008();
  sub_10002963C();
  v9 = sub_100044208();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    sub_100027E4C();
    return;
  }

  if (*(v1 + *(type metadata accessor for ActivityRing(0) + 20)) == 4)
  {
    v11 = [objc_opt_self() grayColors];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 gradientDarkColor];

      if (v13)
      {
        sub_100043D18();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_100043D48();
  }
}

void sub_100027E4C()
{
  v1 = sub_100043D28();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  LODWORD(v5) = *(v0 + *(type metadata accessor for ActivityRing(0) + 20));
  v6 = objc_opt_self();
  v7 = v6;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_15;
    }

    if (v5 != 3)
    {
      goto LABEL_20;
    }

    v8 = [v6 energyColors];
    if (!v8)
    {
      goto LABEL_31;
    }

    v9 = v8;
    v10 = [v8 nonGradientTextColor];

    if (!v10)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    [v10 getRed:&v38 green:&v37 blue:&v36 alpha:0];

    v11 = [v7 energyColors];
    if (!v11)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v5 = v11;
    v7 = [v11 nonGradientTextColor];

    if (v7)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  if (v5)
  {
    goto LABEL_25;
  }

  v12 = [v7 energyColors];
  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = v12;
  v14 = [v12 gradientDarkColor];

  if (!v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v14 getRed:&v38 green:&v37 blue:&v36 alpha:0];

  v15 = [v7 energyColors];
  if (!v15)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = v15;
  v7 = [v15 gradientLightColor];

  if (v7)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_15:
  v17 = [v7 sedentaryColors];
  if (!v17)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v19 = [v17 gradientDarkColor];

  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v19 getRed:&v38 green:&v37 blue:&v36 alpha:0];

  v20 = [v7 sedentaryColors];
  if (!v20)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v21 = v20;
  v7 = [v20 gradientLightColor];

  if (v7)
  {
LABEL_29:
    [v7 getRed:&v35 green:&v34 blue:&v33 alpha:0];

    (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
    sub_100043D78();
    return;
  }

  __break(1u);
LABEL_20:
  v22 = [v7 grayColors];
  if (!v22)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v23 = v22;
  v24 = [v22 gradientDarkColor];

  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v24 getRed:&v38 green:&v37 blue:&v36 alpha:0];

  v25 = [v7 grayColors];
  if (!v25)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = v25;
  v7 = [v25 gradientLightColor];

  if (v7)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_25:
  v27 = [v7 briskColors];
  if (!v27)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = v27;
  v29 = [v27 gradientDarkColor];

  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v29 getRed:&v38 green:&v37 blue:&v36 alpha:0];

  v30 = [v7 briskColors];
  if (!v30)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v31 = v30;
  v7 = [v30 gradientLightColor];

  if (v7)
  {
    goto LABEL_29;
  }

LABEL_45:
  __break(1u);
}

double sub_100028388@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetMidX(*&a2);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMidY(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetWidth(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetHeight(v29);
  sub_100043B88();
  v21 = 0x3FF0000000000000;
  v22 = 0;
  v23 = 0;
  v24 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  sub_100043B78();
  v19[0] = v12;
  v19[1] = v13;
  v20 = v14;
  sub_100043588();
  sub_100043B58();
  sub_100029BBC(v15);
  sub_100029C10(v19);
  result = *&v16;
  v11 = v17;
  *a1 = v16;
  *(a1 + 16) = v11;
  *(a1 + 32) = v18;
  return result;
}

double sub_1000285F0@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100028388(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_10002863C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for LayoutDirectionBehavior.fixed(_:);
  v3 = sub_1000439A8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void (*sub_1000286B0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100043548();
  return sub_10000CAB4;
}

uint64_t sub_100028738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100029C64();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10002879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100029C64();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100028800(uint64_t a1)
{
  v2 = sub_100029C64();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100028850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000436E8();
  *a1 = result;
  return result;
}

uint64_t sub_1000288A8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result;
  if (result)
  {

    v8 = [v6 activityMoveMode];
    v9 = &selRef__moveMinutesCompletionPercentage;
    if (v8 != 2)
    {
      v9 = &selRef__activeEnergyCompletionPercentage;
    }

    [v6 *v9];
    v11 = v10;
    [v6 _exerciseTimeCompletionPercentage];
    v13 = v12;
    [v6 _standHoursCompletionPercentage];
    v15 = v14;
  }

  else
  {
    v15 = 0;
    v13 = 0;
    v11 = 0;
  }

  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 16) = v15;
  *(a4 + 24) = v6 == 0;
  *(a4 + 25) = a2 & 1;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_1000289A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028F8(&qword_100059C48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_100028A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028F8(&qword_100059C48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

void sub_100028B74()
{
  sub_100028C1C();
  if (v0 <= 0x3F)
  {
    sub_100028C74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100028C1C()
{
  if (!qword_100059CB8)
  {
    sub_100044018();
    v0 = sub_100043578();
    if (!v1)
    {
      atomic_store(v0, &qword_100059CB8);
    }
  }
}

void sub_100028C74()
{
  if (!qword_100059F58)
  {
    v0 = sub_1000444C8();
    if (!v1)
    {
      atomic_store(v0, &qword_100059F58);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityRing.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityRing.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100028E14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100028E28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

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

uint64_t sub_100028E84(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100028EF4()
{
  result = qword_100059F98;
  if (!qword_100059F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059F98);
  }

  return result;
}

uint64_t sub_100028F80()
{
  v1 = *(type metadata accessor for StandalonePhoneRingView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1000028F8(&qword_100059990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_100044018();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000290F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002912C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000436E8();
  *a1 = result;
  return result;
}

uint64_t sub_100029184()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000291C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000292CC(uint64_t a1)
{
  v2 = type metadata accessor for ActivityRing(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028F8(&qword_100059C48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
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

uint64_t sub_100029424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028F8(&qword_100059C48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2;
  }

  return result;
}

void sub_1000294E8()
{
  sub_100028C1C();
  if (v0 <= 0x3F)
  {
    sub_100028C74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10002963C()
{
  result = qword_10005A0D0;
  if (!qword_10005A0D0)
  {
    sub_100044018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A0D0);
  }

  return result;
}

uint64_t sub_100029694()
{
  v1 = *(type metadata accessor for ActivityRing(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1000028F8(&qword_100059990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_100044018();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000297E0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100029878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000298E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002992C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029970(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_10005A0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for ActivityRing.Arc(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRing.Arc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityRing.Arc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100029B10()
{
  result = qword_10005A140;
  if (!qword_10005A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A140);
  }

  return result;
}

unint64_t sub_100029B68()
{
  result = qword_10005A148;
  if (!qword_10005A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A148);
  }

  return result;
}

unint64_t sub_100029C64()
{
  result = qword_10005A150;
  if (!qword_10005A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRing.Arc.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityRing.Arc.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100029E0C()
{
  result = qword_10005A158;
  if (!qword_10005A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A158);
  }

  return result;
}

uint64_t sub_100029E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028F8(&qword_1000599A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000028F8(&qword_100058F90);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100029FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028F8(&qword_1000599A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000028F8(&qword_100058F90);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for FitnessComplicationView()
{
  result = qword_10005A1B8;
  if (!qword_10005A1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002A164()
{
  sub_10001C4FC(319, &qword_100059A20, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100009BB8(319, &unk_10005A1C8);
    if (v1 <= 0x3F)
    {
      sub_10002A290();
      if (v2 <= 0x3F)
      {
        sub_10001C4FC(319, &qword_100059018, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002A290()
{
  if (!qword_100059008)
  {
    sub_100009BB8(255, &qword_100059010);
    v0 = sub_1000444C8();
    if (!v1)
    {
      atomic_store(v0, &qword_100059008);
    }
  }
}

uint64_t sub_10002A314@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100043818();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000028F8(&qword_100059AF8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000A1F8(v2, &v14 - v9, &qword_100059AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100044028();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100044378();
    v13 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 sub_10002A514@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_100044028();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A314(v10);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v12 = type metadata accessor for FitnessComplicationView();
    v13 = *(a1 + v12[5]);
    v14 = v12[7];
    v15 = v12[8];
    v44 = a2;
    v16 = *(a1 + v14);
    sub_10000A1F8(a1 + v15, v6, &qword_100058F90);
    v17 = sub_100043328();
    v18 = (*(*(v17 - 8) + 48))(v6, 1, v17) != 1;
    v19 = v16;
    v20 = v13;
    sub_100009D50(v6, &qword_100058F90);
    v21 = objc_opt_self();
    v22 = v19;
    v23 = [v21 mainBundle];
    v24 = sub_100044238();
    v25 = sub_100044238();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    v27 = sub_100044258();
    v29 = v28;

    v50 = 0;
    *&v58 = v16;
    BYTE8(v58) = v18;
    *&v59 = v20;
    *(&v59 + 1) = v16;
    a2 = v44;
    *&v60 = v27;
    *(&v60 + 1) = v29;
    v61[24] = 0;
    sub_10002AEA0();
    sub_10002AEF4();
    v30 = v20;
    v31 = v22;

    sub_100043988();
    v59 = v47;
    v60 = v48;
    *v61 = v49[0];
    *&v61[9] = *(v49 + 9);
    v58 = v46;
    LOBYTE(v53) = 0;
    v61[25] = 0;
    sub_1000028F8(&qword_10005A230);
    sub_1000028F8(&qword_10005A250);
    sub_10002AE14();
    sub_10002AF48();
    sub_100043988();
  }

  else if (v11 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v32 = type metadata accessor for FitnessComplicationView();
    v33 = *(a1 + v32[5]);
    v34 = *(a1 + v32[6]);
    v35 = *(a1 + v32[7]);
    v36 = v35;
    sub_1000311B4(v33, v34, v35, &v53);
    v59 = v54;
    v60 = v55;
    *v61 = v56;
    *&v61[16] = v57;
    v58 = v53;
    v45 = 1;
    v61[24] = 1;
    sub_10002B0D8(&v53, v51);
    sub_10002AEA0();
    sub_10002AEF4();
    sub_100043988();
    v59 = v47;
    v60 = v48;
    *v61 = v49[0];
    *&v61[9] = *(v49 + 9);
    v58 = v46;
    v50 = 0;
    v61[25] = 0;
    sub_1000028F8(&qword_10005A230);
    sub_1000028F8(&qword_10005A250);
    sub_10002AE14();
    sub_10002AF48();
    sub_100043988();
    sub_10002B134(&v53);
  }

  else if (v11 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v37 = type metadata accessor for FitnessComplicationView();
    v38 = *(a1 + v37[5]);
    v39 = *(a1 + v37[6]);
    v40 = *(a1 + v37[7]);
    v41 = v40;
    sub_1000311B4(v38, v39, v40, &v53);
    v59 = v54;
    v60 = v55;
    *v61 = v56;
    *&v61[16] = v57;
    v58 = v53;
    v45 = 0;
    v61[24] = 0;
    sub_10002B028(&v53, v51);
    sub_10002AFD4();
    sub_100043988();
    v59 = v47;
    v60 = v48;
    *v61 = v49[0];
    *&v61[9] = *(v49 + 9);
    v58 = v46;
    v50 = 1;
    v61[25] = 1;
    sub_1000028F8(&qword_10005A230);
    sub_1000028F8(&qword_10005A250);
    sub_10002AE14();
    sub_10002AF48();
    sub_100043988();
    sub_10002B084(&v53);
  }

  else
  {
    v50 = 1;
    v61[24] = 1;
    sub_10002AFD4();
    sub_100043988();
    v59 = v47;
    v60 = v48;
    *v61 = v49[0];
    *&v61[9] = *(v49 + 9);
    v58 = v46;
    LOBYTE(v53) = 1;
    v61[25] = 1;
    sub_1000028F8(&qword_10005A230);
    sub_1000028F8(&qword_10005A250);
    sub_10002AE14();
    sub_10002AF48();
    sub_100043988();
    (*(v8 + 8))(v10, v7);
  }

  *v61 = v52[0];
  *&v61[10] = *(v52 + 10);
  v58 = v51[0];
  result = v51[1];
  v43 = *v61;
  *(a2 + 32) = v51[2];
  *(a2 + 48) = v43;
  *(a2 + 58) = *&v61[10];
  *a2 = v58;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10002AC60()
{
  sub_10002A514(v0, v2);
  sub_1000028F8(&qword_10005A208);
  sub_10002AD04();
  sub_100043C88();
  v4[2] = v2[2];
  v5[0] = v3[0];
  *(v5 + 10) = *(v3 + 10);
  v4[0] = v2[0];
  v4[1] = v2[1];
  return sub_100009D50(v4, &qword_10005A208);
}

unint64_t sub_10002AD04()
{
  result = qword_10005A210;
  if (!qword_10005A210)
  {
    sub_100002940(&qword_10005A208);
    sub_10002AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A210);
  }

  return result;
}

unint64_t sub_10002AD88()
{
  result = qword_10005A218;
  if (!qword_10005A218)
  {
    sub_100002940(&qword_10005A220);
    sub_10002AE14();
    sub_10002AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A218);
  }

  return result;
}

unint64_t sub_10002AE14()
{
  result = qword_10005A228;
  if (!qword_10005A228)
  {
    sub_100002940(&qword_10005A230);
    sub_10002AEA0();
    sub_10002AEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A228);
  }

  return result;
}

unint64_t sub_10002AEA0()
{
  result = qword_10005A238;
  if (!qword_10005A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A238);
  }

  return result;
}

unint64_t sub_10002AEF4()
{
  result = qword_10005A240;
  if (!qword_10005A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A240);
  }

  return result;
}

unint64_t sub_10002AF48()
{
  result = qword_10005A248;
  if (!qword_10005A248)
  {
    sub_100002940(&qword_10005A250);
    sub_10002AFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A248);
  }

  return result;
}

unint64_t sub_10002AFD4()
{
  result = qword_10005A258;
  if (!qword_10005A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A258);
  }

  return result;
}

uint64_t sub_10002B188()
{
  sub_100002940(&qword_10005A208);
  sub_10002AD04();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002B200(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_1000599B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1000028F8(&qword_100058F90);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10002B3AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000028F8(&qword_1000599A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000028F8(&qword_1000599B0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1000028F8(&qword_100058F90);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for StandaloneSummaryView()
{
  result = qword_10005A2B8;
  if (!qword_10005A2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B590()
{
  sub_100017068(319, &qword_100059A20, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100017068(319, &unk_100059A28, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100009BB8(319, &unk_10005A1C8);
      if (v2 <= 0x3F)
      {
        sub_10002A290();
        if (v3 <= 0x3F)
        {
          sub_100017068(319, &qword_100059018, &type metadata accessor for Date, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10002B728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a3;
  v31 = sub_100043608();
  v4 = *(v31 - 8);
  v32 = *(v4 + 64);
  __chkstk_darwin(v31);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StandaloneSummaryView();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100043FE8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  __chkstk_darwin(v16);
  v30 = &v25 - v17;
  sub_10002BAE0(&v25 - v17);
  v29 = sub_100043858();
  v27 = sub_100043908();
  sub_10002BAE0(v15);
  (*(v10 + 104))(v12, enum case for AdaptiveStackType.vertical(_:), v9);
  sub_100043FD8();
  v18 = *(v10 + 8);
  v18(v12, v9);
  v18(v15, v9);
  sub_10002E470(a2, v8);
  v19 = v28;
  v20 = v31;
  (*(v4 + 16))(v28, v33, v31);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = (v7 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_10002EE6C(v8, v23 + v21, type metadata accessor for StandaloneSummaryView);
  (*(v4 + 32))(v23 + v22, v19, v20);
  sub_1000028F8(&qword_10005A308);
  sub_100002F14(&qword_10005A310, &qword_10005A308);
  return sub_100043FC8();
}

uint64_t sub_10002BAE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100044028();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  sub_1000428FC(v14 - v7);
  (*(v3 + 104))(v5, enum case for WidgetFamily.systemSmall(_:), v2);
  sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily);
  sub_1000442B8();
  sub_1000442B8();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);
  if (v14[1] == v14[0] && (sub_10002DC64() & 1) == 0)
  {
    v10 = &enum case for AdaptiveStackType.vertical(_:);
  }

  else
  {
    v10 = &enum case for AdaptiveStackType.horizontal(_:);
  }

  v11 = *v10;
  v12 = sub_100043FE8();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

uint64_t sub_10002BCE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v166 = a3;
  v137 = sub_100043FE8();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1000028F8(&qword_100059AB0);
  __chkstk_darwin(v131);
  v145 = &v128 - v6;
  v142 = sub_100044028();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v139 = &v128 - v9;
  v144 = type metadata accessor for StandaloneMetricsStack();
  __chkstk_darwin(v144);
  v155 = (&v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v143 = &v128 - v12;
  v132 = sub_1000028F8(&qword_10005A318);
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v128 - v13;
  v150 = sub_1000028F8(&qword_10005A320);
  __chkstk_darwin(v150);
  v128 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v133 = &v128 - v16;
  v147 = sub_1000028F8(&qword_10005A328);
  __chkstk_darwin(v147);
  v149 = &v128 - v17;
  v148 = sub_1000028F8(&qword_10005A330);
  __chkstk_darwin(v148);
  v138 = (&v128 - v18);
  v19 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v19 - 8);
  v152 = &v128 - v20;
  v154 = sub_100043328();
  v156 = *(v154 - 8);
  __chkstk_darwin(v154);
  v153 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1000028F8(&qword_10005A338);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v146 = &v128 - v22;
  v23 = sub_1000028F8(&qword_10005A340);
  __chkstk_darwin(v23 - 8);
  v165 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v161 = &v128 - v26;
  v27 = sub_1000439D8();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000028F8(&qword_10005A348);
  __chkstk_darwin(v31 - 8);
  v33 = &v128 - v32;
  v34 = sub_1000028F8(&qword_10005A350);
  __chkstk_darwin(v34);
  v36 = &v128 - v35;
  v157 = sub_1000028F8(&qword_10005A358);
  v159 = *(v157 - 1);
  __chkstk_darwin(v157);
  v38 = &v128 - v37;
  v158 = sub_1000028F8(&qword_10005A360);
  __chkstk_darwin(v158);
  v162 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v128 - v41;
  __chkstk_darwin(v43);
  v160 = &v128 - v44;
  *v33 = sub_100043858();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v45 = &v33[*(sub_1000028F8(&qword_10005A368) + 44)];
  v136 = a2;
  sub_10002D2B8(a1, a2, v45);
  sub_100043EC8();
  sub_100043698();
  sub_1000029D8(v33, v36, &qword_10005A348);
  v46 = &v36[*(v34 + 36)];
  v47 = v173;
  *(v46 + 4) = v172;
  *(v46 + 5) = v47;
  *(v46 + 6) = v174;
  v48 = v169;
  *v46 = v168;
  *(v46 + 1) = v48;
  v49 = v171;
  *(v46 + 2) = v170;
  *(v46 + 3) = v49;
  sub_1000439B8();
  v50 = sub_10002EB3C();
  sub_100043CF8();
  (*(v28 + 8))(v30, v27);
  sub_100009D50(v36, &qword_10005A350);
  v151 = type metadata accessor for StandaloneSummaryView();
  *&v175 = sub_10003C95C(*(a1 + *(v151 + 44) + 8));
  *(&v175 + 1) = v51;
  sub_10000A8C4();
  v52 = sub_100043C48();
  v54 = v53;
  LOBYTE(v28) = v55;
  *&v175 = v34;
  *(&v175 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  v56 = v157;
  sub_100043CB8();
  v57 = v52;
  v58 = a1;
  v59 = v165;
  sub_10000A918(v57, v54, v28 & 1);
  v60 = v166;

  v61 = v38;
  v62 = v160;
  (*(v159 + 8))(v61, v56);
  sub_100043668();
  v63 = v42;
  v64 = v162;
  v65 = v161;
  sub_100009D50(v63, &qword_10005A360);
  v66 = sub_10002DFB4();
  v67 = 1;
  v68 = v163;
  v69 = v164;
  if (v66)
  {
    goto LABEL_16;
  }

  v70 = v151;
  v71 = v152;
  sub_10000A1F8(v58 + *(v151 + 40), v152, &qword_100058F90);
  v72 = v154;
  if ((*(v156 + 48))(v71, 1, v154) != 1)
  {
    v81 = v156;
    v82 = v153;
    (*(v156 + 32))(v153, v71, v72);
    v83 = *(type metadata accessor for PauseRingsLabel() + 20);
    v84 = v138;
    (*(v81 + 16))(v138 + v83, v82, v72);
    (*(v81 + 56))(v84 + v83, 0, 1, v72);
    *v84 = swift_getKeyPath();
    sub_1000028F8(&qword_100059AF8);
    swift_storeEnumTagMultiPayload();
    *(v84 + *(v148 + 36)) = 256;
    sub_10000A1F8(v84, v149, &qword_10005A330);
    swift_storeEnumTagMultiPayload();
    sub_10002EC64();
    sub_10002ED20();
    v85 = v146;
    sub_100043988();
    sub_100009D50(v84, &qword_10005A330);
    (*(v81 + 8))(v153, v72);
LABEL_15:
    sub_1000029D8(v85, v65, &qword_10005A338);
    v67 = 0;
    v60 = v166;
    v59 = v165;
    v69 = v164;
    v68 = v163;
    v64 = v162;
LABEL_16:
    (*(v68 + 56))(v65, v67, 1, v69);
    sub_10000A1F8(v62, v64, &qword_10005A360);
    sub_10000A1F8(v65, v59, &qword_10005A340);
    sub_10000A1F8(v64, v60, &qword_10005A360);
    v126 = sub_1000028F8(&qword_10005A398);
    sub_10000A1F8(v59, v60 + *(v126 + 48), &qword_10005A340);
    sub_100009D50(v65, &qword_10005A340);
    sub_100009D50(v62, &qword_10005A360);
    sub_100009D50(v59, &qword_10005A340);
    return sub_100009D50(v64, &qword_10005A360);
  }

  sub_100009D50(v71, &qword_100058F90);
  v73 = v70[7];
  LODWORD(v156) = *(v58 + v70[6]);
  v74 = *(v58 + v73);
  v75 = v70;
  LODWORD(v158) = *(v58 + v70[8]);
  v157 = v74;
  LODWORD(v159) = sub_10002DC64();
  v76 = v139;
  sub_1000428FC(v139);
  v77 = v141;
  v78 = v140;
  v79 = v142;
  (*(v141 + 104))(v140, enum case for WidgetFamily.systemMedium(_:), v142);
  sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily);
  sub_1000442B8();
  sub_1000442B8();
  v80 = *(v77 + 8);
  v80(v78, v79);
  v80(v76, v79);
  if (v175 != v167)
  {
    LODWORD(v153) = 0;
    goto LABEL_8;
  }

  if (qword_100058DF0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    LODWORD(v153) = *(qword_10005CA08 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser) ^ 1;
LABEL_8:
    LODWORD(v154) = v159 ^ 1;
    v86 = *(v75 + 36);
    v159 = v58;
    v87 = *(v58 + v86);
    KeyPath = swift_getKeyPath();
    v89 = v155;
    *v155 = KeyPath;
    sub_1000028F8(&qword_100059B00);
    swift_storeEnumTagMultiPayload();
    v90 = v144;
    v91 = *(v144 + 20);
    *(v89 + v91) = swift_getKeyPath();
    sub_1000028F8(&qword_100059AF8);
    swift_storeEnumTagMultiPayload();
    v92 = v90[6];
    *(v89 + v92) = swift_getKeyPath();
    sub_1000028F8(&qword_100059990);
    swift_storeEnumTagMultiPayload();
    v93 = (v89 + v90[14]);
    v94 = objc_opt_self();
    v95 = v87;
    v96 = [v94 mainBundle];
    v152 = "GPU not available";
    v97 = sub_100044238();
    v98 = sub_100044238();
    v99 = [v96 localizedStringForKey:v97 value:0 table:v98];

    v100 = v90;
    v101 = sub_100044258();
    v103 = v102;

    *v93 = v101;
    v93[1] = v103;
    *(v89 + v90[7]) = v156;
    v104 = v157;
    *(v89 + v90[8]) = v157;
    *(v89 + v90[12]) = v153 & 1;
    *(v89 + v90[9]) = v158;
    v105 = v87;
    v106 = v104;
    v107 = v87 ? [v95 paused] : 0;
    v108 = v145;
    v109 = v143;
    v75 = v155;
    *(v155 + v90[10]) = v107;
    *(v75 + v90[11]) = v154 & 1;
    *(v75 + v90[13]) = v87;
    v110 = v95;
    v111 = [v94 mainBundle];
    v112 = sub_100044238();
    v113 = sub_100044238();
    v114 = [v111 localizedStringForKey:v112 value:0 table:v113];

    v115 = sub_100044258();
    v117 = v116;

    v118 = (v75 + v100[15]);
    *v118 = v106;
    v118[1] = v105;
    v118[2] = v115;
    v118[3] = v117;
    sub_10002EE6C(v75, v109, type metadata accessor for StandaloneMetricsStack);
    v58 = v159;
    sub_10002E158(v108);
    sub_100043648();
    sub_10002EF90(&qword_100059B08, &type metadata accessor for DynamicTypeSize);
    if (sub_100044208())
    {
      break;
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  sub_10002EF90(&qword_10005A380, type metadata accessor for StandaloneMetricsStack);
  sub_100002F14(&qword_100059AC0, &qword_100059AB0);
  v119 = v129;
  sub_100043CD8();
  sub_100009D50(v108, &qword_100059AB0);
  sub_10002EC08(v109);
  sub_1000435F8();
  v120 = v134;
  sub_10002BAE0(v134);
  v121 = (*(v135 + 88))(v120, v137);
  if (v121 == enum case for AdaptiveStackType.horizontal(_:) || v121 == enum case for AdaptiveStackType.vertical(_:))
  {
    sub_100043EC8();
    sub_1000435E8();
    v122 = v128;
    (*(v130 + 32))(v128, v119, v132);
    v123 = (v122 + *(v150 + 36));
    v124 = v176;
    *v123 = v175;
    v123[1] = v124;
    v123[2] = v177;
    v125 = v133;
    sub_1000029D8(v122, v133, &qword_10005A320);
    sub_10000A1F8(v125, v149, &qword_10005A320);
    swift_storeEnumTagMultiPayload();
    sub_10002EC64();
    sub_10002ED20();
    v85 = v146;
    sub_100043988();
    sub_100009D50(v125, &qword_10005A320);
    v65 = v161;
    v62 = v160;
    goto LABEL_15;
  }

  result = sub_100044608();
  __break(1u);
  return result;
}

uint64_t sub_10002D2B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v69[1] = a2;
  v85 = a3;
  v4 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v4 - 8);
  v71 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = v69 - v7;
  v72 = type metadata accessor for StandalonePhoneRingView(0);
  __chkstk_darwin(v72);
  v9 = (v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v73 = v69 - v11;
  v78 = sub_1000028F8(&qword_10005A3A0);
  __chkstk_darwin(v78);
  v75 = v69 - v12;
  v13 = sub_1000028F8(&qword_10005A3A8);
  v83 = *(v13 - 8);
  v84 = v13;
  __chkstk_darwin(v13);
  v82 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = v69 - v16;
  v17 = sub_100044028();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v69 - v22;
  v24 = sub_10002DC64();
  v79 = v18;
  v80 = v17;
  v77 = v20;
  v74 = v23;
  v76 = (v24 & 1) == 0 || (sub_1000428FC(v23), (*(v18 + 104))(v20, enum case for WidgetFamily.systemSmall(_:), v17), sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily), sub_1000442B8(), sub_1000442B8(), v25 = *(v18 + 8), v25(v20, v17), v25(v23, v17), v92 != v89);
  v26 = type metadata accessor for StandaloneSummaryView();
  v27 = *(v26 + 40);
  v28 = *(a1 + *(v26 + 36));
  v29 = v81;
  sub_10000A1F8(a1 + v27, v81, &qword_100058F90);
  v30 = sub_100043328();
  v31 = *(*(v30 - 8) + 48);
  v70 = v31(v29, 1, v30);
  v69[0] = v28;
  sub_100009D50(v29, &qword_100058F90);
  v81 = a1;
  v32 = a1 + v27;
  v33 = v71;
  sub_10000A1F8(v32, v71, &qword_100058F90);
  v34 = v31(v33, 1, v30) == 1;
  sub_100009D50(v33, &qword_100058F90);
  *v9 = swift_getKeyPath();
  sub_1000028F8(&qword_100059990);
  swift_storeEnumTagMultiPayload();
  v35 = v72;
  v36 = *(v72 + 36);
  *(v9 + *(v72 + 24)) = v34;
  *(v9 + v36) = 0;
  if (v28)
  {
    *(v9 + v35[7]) = 0;
    if (v70 == 1)
    {
      v37 = v69[0];
      v38 = [v69[0] activityMoveMode];
      v39 = &selRef__moveMinutesCompletionPercentage;
      if (v38 != 2)
      {
        v39 = &selRef__activeEnergyCompletionPercentage;
      }

      [v37 *v39];
      v41 = v40;

      v42 = 3;
    }

    else
    {

      v42 = 4;
      v41 = 1.0;
    }

    v44 = 8;
  }

  else
  {
    if (v70 == 1)
    {
      v43 = 3;
    }

    else
    {
      v43 = 4;
    }

    if (v70 == 1)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = 1.0;
    }

    *(v9 + v35[8]) = v43;
    v42 = 1;
    v44 = 7;
  }

  v45 = v80;
  v46 = v79;
  v47 = v77;
  v48 = v74;
  *(v9 + v35[5]) = v41;
  *(v9 + v35[v44]) = v42;
  v49 = v9;
  v50 = v73;
  sub_10002EE6C(v49, v73, type metadata accessor for StandalonePhoneRingView);
  if ((sub_10002DC64() & 1) != 0 || (sub_1000428FC(v48), (*(v46 + 104))(v47, enum case for WidgetFamily.systemSmall(_:), v45), sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily), sub_1000442B8(), sub_1000442B8(), v51 = *(v46 + 8), v51(v47, v45), v51(v48, v45), v92 != v89))
  {
    sub_1000435F8();
  }

  sub_100043EC8();
  sub_1000435E8();
  v52 = v75;
  sub_10002EE6C(v50, v75, type metadata accessor for StandalonePhoneRingView);
  v53 = (v52 + *(v78 + 36));
  v54 = v93;
  *v53 = v92;
  v53[1] = v54;
  v53[2] = v94;
  sub_10002EED4();
  sub_100043C58();
  sub_100009D50(v52, &qword_10005A3A0);
  if ((sub_10002DC64() & 1) != 0 || (sub_1000428FC(v48), (*(v46 + 104))(v47, enum case for WidgetFamily.systemSmall(_:), v45), sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily), sub_1000442B8(), sub_1000442B8(), v55 = *(v46 + 8), v55(v47, v45), v55(v48, v45), v89 != v87))
  {
    v87 = 0;
    v56 = 256;
  }

  else
  {
    v87 = 0;
    v56 = 1;
  }

  v88 = v56;
  sub_100043988();
  v81 = v89;
  v57 = v90;
  v58 = v91;
  v60 = v82;
  v59 = v83;
  v61 = *(v83 + 16);
  v62 = v86;
  v63 = v84;
  v61(v82, v86, v84);
  v64 = v85;
  *v85 = 0;
  *(v64 + 8) = 0;
  *(v64 + 9) = v76;
  v65 = sub_1000028F8(&qword_10005A3B8);
  v61(v64 + *(v65 + 48), v60, v63);
  v66 = v64 + *(v65 + 64);
  *v66 = v81;
  v66[8] = v57;
  v66[9] = v58;
  v67 = *(v59 + 8);
  v67(v62, v63);
  return (v67)(v60, v63);
}

uint64_t sub_10002DC64()
{
  v1 = sub_100043648();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_100044028();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  if (*(v0 + *(type metadata accessor for StandaloneSummaryView() + 24)))
  {
    v15 = 1;
  }

  else
  {
    v24 = v4;
    v25 = v2;
    sub_1000428FC(v14);
    (*(v9 + 104))(v11, enum case for WidgetFamily.systemSmall(_:), v8);
    sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily);
    sub_1000442B8();
    sub_1000442B8();
    v16 = *(v9 + 8);
    v16(v11, v8);
    v16(v14, v8);
    v18 = v26;
    v17 = v27;
    sub_1000429CC(v7);
    if (v17 == v18)
    {
      v15 = sub_100043638();
      (*(v25 + 8))(v7, v1);
    }

    else
    {
      v20 = v24;
      v19 = v25;
      (*(v25 + 104))(v24, enum case for DynamicTypeSize.accessibility2(_:), v1);
      sub_10002EF90(&qword_100059B70, &type metadata accessor for DynamicTypeSize);
      v21 = sub_1000441F8();
      v22 = *(v19 + 8);
      v22(v20, v1);
      v22(v7, v1);
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

BOOL sub_10002DFB4()
{
  v0 = sub_100044028();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  if ((sub_10002DC64() & 1) == 0)
  {
    return 0;
  }

  sub_1000428FC(v6);
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily);
  sub_1000442B8();
  sub_1000442B8();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return v9[1] == v9[0];
}

uint64_t sub_10002E158@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100044028();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  sub_1000428FC(v17 - v7);
  (*(v3 + 104))(v5, enum case for WidgetFamily.systemSmall(_:), v2);
  sub_10002EF90(&qword_1000590B8, &type metadata accessor for WidgetFamily);
  sub_1000442B8();
  sub_1000442B8();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);
  v11 = v17[0];
  v10 = v17[1];
  v12 = sub_10002DC64();
  v13 = sub_100043648();
  v14 = &enum case for DynamicTypeSize.accessibility5(_:);
  if ((v12 & 1) == 0)
  {
    v14 = &enum case for DynamicTypeSize.large(_:);
  }

  v15 = &enum case for DynamicTypeSize.accessibility1(_:);
  if ((v12 & 1) == 0)
  {
    v15 = &enum case for DynamicTypeSize.xxLarge(_:);
  }

  if (v10 != v11)
  {
    v14 = v15;
  }

  return (*(*(v13 - 8) + 104))(a1, *v14, v13);
}

uint64_t sub_10002E370@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10002E470(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10002EE6C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for StandaloneSummaryView);
  *a2 = sub_10002E714;
  a2[1] = v7;
  return result;
}

uint64_t sub_10002E470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandaloneSummaryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E4D4()
{
  v1 = type metadata accessor for StandaloneSummaryView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000028F8(&qword_100059AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100044028();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_1000028F8(&qword_100059B00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_100043648();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[10];
  v10 = sub_100043328();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v5 + v1[11]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002E714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StandaloneSummaryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10002B728(a1, v6, a2);
}

uint64_t sub_10002E794()
{
  v1 = type metadata accessor for StandaloneSummaryView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v18 = sub_100043608();
  v4 = *(v18 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v6 = v0 + v3;
  sub_1000028F8(&qword_100059AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100044028();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
  }

  v8 = v1[5];
  sub_1000028F8(&qword_100059B00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_100043648();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  v10 = v1[10];
  v11 = sub_100043328();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = (v3 + v16 + v5) & ~v5;
  v14 = (v6 + v1[11]);

  (*(v4 + 8))(v0 + v13, v18);

  return _swift_deallocObject(v0, v13 + v17, v2 | v5 | 7);
}

uint64_t sub_10002EA68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StandaloneSummaryView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_100043608() - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_10002BCE4(v1 + v4, v7, a1);
}

unint64_t sub_10002EB3C()
{
  result = qword_10005A370;
  if (!qword_10005A370)
  {
    sub_100002940(&qword_10005A350);
    sub_100002F14(&qword_10005A378, &qword_10005A348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A370);
  }

  return result;
}

uint64_t sub_10002EC08(uint64_t a1)
{
  v2 = type metadata accessor for StandaloneMetricsStack();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002EC64()
{
  result = qword_10005A388;
  if (!qword_10005A388)
  {
    sub_100002940(&qword_10005A330);
    sub_10002EF90(&qword_100059B50, type metadata accessor for PauseRingsLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A388);
  }

  return result;
}

unint64_t sub_10002ED20()
{
  result = qword_10005A390;
  if (!qword_10005A390)
  {
    sub_100002940(&qword_10005A320);
    type metadata accessor for StandaloneMetricsStack();
    sub_100002940(&qword_100059AB0);
    sub_10002EF90(&qword_10005A380, type metadata accessor for StandaloneMetricsStack);
    sub_100002F14(&qword_100059AC0, &qword_100059AB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A390);
  }

  return result;
}

uint64_t sub_10002EE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002EED4()
{
  result = qword_10005A3B0;
  if (!qword_10005A3B0)
  {
    sub_100002940(&qword_10005A3A0);
    sub_10002EF90(&qword_100059970, type metadata accessor for StandalonePhoneRingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A3B0);
  }

  return result;
}

uint64_t sub_10002EF90(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10002F01C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000436B8();
  v173 = *(v3 - 8);
  v174 = v3;
  __chkstk_darwin(v3);
  v172 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_100043C18();
  v184 = *(v178 - 8);
  __chkstk_darwin(v178);
  v177 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1000028F8(&qword_10005A3D0);
  __chkstk_darwin(v182);
  v175 = &v155 - v6;
  v180 = sub_1000028F8(&qword_10005A3D8);
  __chkstk_darwin(v180);
  v181 = &v155 - v7;
  v8 = sub_1000439D8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1000028F8(&qword_10005A3E0);
  v171 = *(v183 - 8);
  __chkstk_darwin(v183);
  v13 = &v155 - v12;
  v179 = sub_1000028F8(&qword_10005A3E8);
  __chkstk_darwin(v179);
  v15 = &v155 - v14;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v17 = result;
    v18 = [result isStandalonePhoneFitnessMode];

    v176 = a1;
    if (v18)
    {
      v19 = sub_100043858();
      v189 = 0;
      sub_10002FE38(v1, &v190);
      v188 = BYTE8(v192);
      v185 = v19;
      LOBYTE(v186[0]) = v189;
      *(v186 + 8) = v190;
      *(&v186[1] + 8) = v191;
      *(&v186[2] + 1) = v192;
      LOBYTE(v187) = BYTE8(v192);
      *(&v187 + 1) = v193;
      sub_1000439B8();
      v20 = sub_1000028F8(&qword_10005A3F8);
      v21 = sub_1000315A0();
      sub_100043CF8();
      (*(v9 + 8))(v11, v8);
      v192 = v186[1];
      v193 = v186[2];
      v194 = v187;
      v190 = v185;
      v191 = v186[0];
      sub_100009D50(&v190, &qword_10005A3F8);
      *&v185 = sub_1000304AC();
      *(&v185 + 1) = v22;
      sub_10000A8C4();
      v23 = sub_100043C48();
      v25 = v24;
      v27 = v26;
      *&v185 = v20;
      *(&v185 + 1) = v21;
      swift_getOpaqueTypeConformance2();
      v28 = v183;
      sub_100043CB8();
      sub_10000A918(v23, v25, v27 & 1);

      (v171[1])(v13, v28);
      sub_100031690(v15, v181);
      swift_storeEnumTagMultiPayload();
      sub_1000314D8();
      sub_100031604();
      sub_100043988();
      return sub_100031700(v15);
    }

    else
    {
      v29 = v1[3];
      v30 = v1[4];
      v31 = v1[5];
      v32 = v1[6];
      v171 = v1;
      v166 = v32;
      v167 = v31;
      sub_10003C5A8(v29, v30, v31, v32);
      *&v190 = v33;
      *(&v190 + 1) = v34;
      v35 = sub_10000A8C4();
      v36 = sub_100043C48();
      v38 = v37;
      v40 = v39;
      if (qword_100058DD8 != -1)
      {
        swift_once();
      }

      v170 = qword_10005C9F0;
      v41 = sub_100043BF8();
      v158 = v42;
      v159 = v41;
      v156 = v43;
      v160 = v44;
      sub_10000A918(v36, v38, v40 & 1);

      *&v190 = sub_10003D524(v29, v30);
      *(&v190 + 1) = v45;
      v46 = sub_1000444D8();
      v48 = v47;

      *&v185 = v46;
      *(&v185 + 1) = v48;
      v49 = sub_100043C48();
      v51 = v50;
      v53 = v52;
      v183 = v35;
      v164 = v29;
      v165 = v30;
      if (qword_100058DD0 != -1)
      {
        swift_once();
      }

      v169 = qword_10005C9E8;
      v54 = sub_100043BF8();
      v56 = v55;
      v58 = v57;
      sub_10000A918(v49, v51, v53 & 1);

      v59 = v177;
      sub_100043C08();
      v60 = sub_100043C28();
      v62 = v61;
      v64 = v63;
      sub_10000A918(v54, v56, v58 & 1);

      v65 = *(v184 + 8);
      v184 += 8;
      v168 = v65;
      v65(v59, v178);
      LOBYTE(v54) = v156;
      v67 = v158;
      v66 = v159;
      v68 = sub_100043BE8();
      v162 = v69;
      v163 = v68;
      v157 = v70;
      v161 = v71;
      sub_10000A918(v60, v62, v64 & 1);

      sub_10000A918(v66, v67, v54 & 1);

      v72 = objc_opt_self();
      v73 = [v72 mainBundle];
      v74 = sub_100044238();
      v75 = sub_100044238();
      v76 = [v73 localizedStringForKey:v74 value:0 table:v75];

      v77 = sub_100044258();
      v79 = v78;

      v80 = sub_10003C6FC(v164, v165, v167, v166);
      v82 = v81;
      *&v190 = v77;
      *(&v190 + 1) = v79;

      v195._countAndFlagsBits = v80;
      v195._object = v82;
      sub_1000442A8(v195);

      v83 = sub_100043C48();
      v85 = v84;
      LOBYTE(v80) = v86;
      v87 = sub_100043BF8();
      v89 = v88;
      v91 = v90;
      sub_10000A918(v83, v85, v80 & 1);

      LOBYTE(v82) = v157;
      v93 = v162;
      v92 = v163;
      v94 = sub_100043BE8();
      v166 = v95;
      v167 = v94;
      LODWORD(v164) = v96;
      v165 = v97;
      sub_10000A918(v87, v89, v91 & 1);

      sub_10000A918(v92, v93, v82 & 1);

      v98 = [v72 mainBundle];
      v99 = sub_100044238();
      v100 = sub_100044238();
      v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

      v102 = sub_100044258();
      v104 = v103;

      *&v190 = v102;
      *(&v190 + 1) = v104;
      v105 = sub_1000444D8();
      v107 = v106;

      *&v185 = v105;
      *(&v185 + 1) = v107;
      v108 = sub_100043C48();
      v110 = v109;
      LOBYTE(v107) = v111;
      v112 = sub_100043BF8();
      v114 = v113;
      LOBYTE(v72) = v115;
      sub_10000A918(v108, v110, v107 & 1);

      v116 = v177;
      sub_100043C08();
      v117 = sub_100043C28();
      v119 = v118;
      LOBYTE(v110) = v120;
      sub_10000A918(v112, v114, v72 & 1);

      v168(v116, v178);
      LOBYTE(v72) = v164;
      v122 = v166;
      v121 = v167;
      v184 = sub_100043BE8();
      v177 = v124;
      v178 = v123;
      LODWORD(v169) = v125;
      sub_10000A918(v117, v119, v110 & 1);

      sub_10000A918(v121, v122, v72 & 1);

      *&v190 = sub_10003069C();
      *(&v190 + 1) = v126;
      v127 = sub_100043C48();
      v129 = v128;
      LOBYTE(v89) = v130;
      v131 = sub_100043BF8();
      v133 = v132;
      LOBYTE(v72) = v134;
      sub_10000A918(v127, v129, v89 & 1);

      LOBYTE(v119) = v169;
      v135 = v184;
      v136 = v178;
      v170 = sub_100043BE8();
      v167 = v138;
      v168 = v137;
      LOBYTE(v127) = v139;
      sub_10000A918(v131, v133, v72 & 1);

      sub_10000A918(v135, v136, v119 & 1);

      v140 = v172;
      sub_1000436A8();
      v141 = v170;
      v142 = v168;
      v143 = sub_100043BD8();
      v145 = v144;
      LOBYTE(v121) = v146;
      v148 = v147;
      v184 = v147;
      sub_10000A918(v141, v142, v127 & 1);

      (*(v173 + 8))(v140, v174);
      *&v190 = v143;
      *(&v190 + 1) = v145;
      LOBYTE(v121) = v121 & 1;
      LOBYTE(v191) = v121;
      *(&v191 + 1) = v148;
      *&v185 = sub_100030910();
      *(&v185 + 1) = v149;
      v150 = sub_100043C48();
      v152 = v151;
      LOBYTE(v141) = v153;
      v154 = v175;
      sub_100043CB8();
      sub_10000A918(v150, v152, v141 & 1);

      sub_10000A918(v143, v145, v121);

      sub_100031468(v154, v181);
      swift_storeEnumTagMultiPayload();
      sub_1000314D8();
      sub_100031604();
      sub_100043988();
      return sub_100009D50(v154, &qword_10005A3D0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002FE38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v68 = sub_1000436B8();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100043C18();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100043DB8();
  sub_100043AA8();
  sub_100043AC8();
  v64 = sub_100043B08();

  KeyPath = swift_getKeyPath();
  v71 = sub_100030318();
  v72 = v7;
  sub_10000A8C4();
  v8 = sub_100043C48();
  v10 = v9;
  v12 = v11;
  if (qword_100058DD8 != -1)
  {
    swift_once();
  }

  v59 = sub_100043BF8();
  v57 = v13;
  v15 = v14;
  v60 = v16;
  sub_10000A918(v8, v10, v12 & 1);

  v71 = sub_10003D524(*(a1 + 24), *(a1 + 32));
  v72 = v17;
  v18 = sub_1000444D8();
  v20 = v19;

  v69 = v18;
  v70 = v20;
  v21 = sub_100043C48();
  v23 = v22;
  v25 = v24;
  if (qword_100058DD0 != -1)
  {
    swift_once();
  }

  v26 = sub_100043BF8();
  v28 = v27;
  v30 = v29;
  sub_10000A918(v21, v23, v25 & 1);

  sub_100043C08();
  v31 = sub_100043C28();
  v33 = v32;
  v35 = v34;
  sub_10000A918(v26, v28, v30 & 1);

  (*(v61 + 8))(v6, v62);
  LODWORD(v61) = v15;
  v36 = v59;
  v37 = v57;
  v38 = sub_100043BE8();
  v40 = v39;
  v42 = v41;
  v62 = v43;
  sub_10000A918(v31, v33, v35 & 1);

  sub_10000A918(v36, v37, v61 & 1);

  v44 = v65;
  sub_1000436A8();
  v45 = sub_100043BD8();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10000A918(v38, v40, v42 & 1);

  (*(v66 + 8))(v44, v68);
  v52 = v58;
  v54 = KeyPath;
  v53 = v64;
  *v58 = v67;
  v52[1] = v54;
  v52[2] = v53;
  v52[3] = v45;
  v52[4] = v47;
  *(v52 + 40) = v49 & 1;
  v52[6] = v51;

  sub_10001D3B8(v45, v47, v49 & 1);

  sub_10000A918(v45, v47, v49 & 1);
}

uint64_t sub_100030318()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_10003C5A8(v1, v2, v3, v4);
  v6 = v5;
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_100044238();
  v9 = sub_100044238();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_100044258();
  v13 = v12;

  v19._countAndFlagsBits = v11;
  v19._object = v13;
  sub_1000442A8(v19);

  sub_10003C5BC(v1, v2, v3, v4);
  v15 = v14;
  v17 = v16;

  v20._countAndFlagsBits = v15;
  v20._object = v17;
  sub_1000442A8(v20);

  return v6;
}

uint64_t sub_1000304AC()
{
  v1 = *(v0 + 16);
  if (v1 && [v1 paused])
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = sub_100044238();
    v4 = sub_100044238();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_100044258();
    return v6;
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = sub_100044238();
    v10 = sub_100044238();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = sub_100044258();
    sub_10003CE88(*(v0 + 32));
    v14 = v13;
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    sub_1000442A8(v17);

    return v12;
  }
}

uint64_t sub_10003069C()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = sub_100044238();
  v4 = sub_100044238();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_100044258();
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v11 = sub_10003C710(v7, v8, v9, v10);
  v13 = v12;

  v25._countAndFlagsBits = v11;
  v25._object = v13;
  sub_1000442A8(v25);

  v14 = [v1 mainBundle];
  v15 = sub_100044238();
  v16 = sub_100044238();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_100044258();
  v20 = v19;

  v26._countAndFlagsBits = v18;
  v26._object = v20;
  sub_1000442A8(v26);

  v21 = sub_10003C724(v7, v8, v9, v10);
  v23 = v22;

  v27._countAndFlagsBits = v21;
  v27._object = v23;
  sub_1000442A8(v27);

  return v6;
}

uint64_t sub_100030910()
{
  v1 = *(v0 + 16);
  if (v1 && [v1 paused])
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = sub_100044238();
    v4 = sub_100044238();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_100044258();
    return v6;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v10 = sub_100044238();
    v11 = sub_100044238();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = sub_100044258();
    v14 = *(v0 + 32);
    sub_10003DC94(v14);
    v16 = v15;
    v18 = v17;

    v40._countAndFlagsBits = v16;
    v40._object = v18;
    sub_1000442A8(v40);

    v19 = [v8 mainBundle];
    v20 = sub_100044238();
    v21 = sub_100044238();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_100044258();
    v25 = v24;

    v41._countAndFlagsBits = v23;
    v41._object = v25;
    sub_1000442A8(v41);

    sub_10003E170(v14);
    v27 = v26;
    v29 = v28;

    v42._countAndFlagsBits = v27;
    v42._object = v29;
    sub_1000442A8(v42);

    v30 = [v8 mainBundle];
    v31 = sub_100044238();
    v32 = sub_100044238();
    v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

    v34 = sub_100044258();
    v36 = v35;

    v43._countAndFlagsBits = v34;
    v43._object = v36;
    sub_1000442A8(v43);

    v37 = sub_10003D93C(v14);
    v39 = v38;

    v44._countAndFlagsBits = v37;
    v44._object = v39;
    sub_1000442A8(v44);

    return v13;
  }
}

uint64_t sub_100030DA0()
{
  v0 = sub_1000028F8(&qword_1000591A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_100043B48();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.body(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_100043AB8();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  v11 = sub_100043AF8();
  sub_100009D50(v2, &qword_1000591A0);
  result = (*(v4 + 8))(v7, v3);
  qword_10005C9E8 = v11;
  return result;
}

uint64_t sub_100030F9C()
{
  v0 = sub_1000028F8(&qword_1000591A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_100043B48();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.body(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_100043AB8();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_100043AF8();
  sub_100009D50(v2, &qword_1000591A0);
  (*(v4 + 8))(v7, v3);
  v11 = sub_100043B18();

  qword_10005C9F0 = v11;
  return result;
}

void sub_1000311B4(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = sub_100044238();
  v10 = sub_100044238();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_100044258();
  v14 = v13;

  v15 = a3;
  v16 = a1;
  v17 = [v7 mainBundle];
  v18 = sub_100044238();
  v19 = sub_100044238();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_100044258();
  v23 = v22;

  *a4 = v16;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v16;
  *(a4 + 32) = a3;
  *(a4 + 40) = v21;
  *(a4 + 48) = v23;
  *(a4 + 56) = v12;
  *(a4 + 64) = v14;
}

__n128 sub_100031380(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000313A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000313EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100031468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000314D8()
{
  result = qword_10005A3F0;
  if (!qword_10005A3F0)
  {
    sub_100002940(&qword_10005A3E8);
    sub_100002940(&qword_10005A3F8);
    sub_1000315A0();
    swift_getOpaqueTypeConformance2();
    sub_100025688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A3F0);
  }

  return result;
}

unint64_t sub_1000315A0()
{
  result = qword_10005A400;
  if (!qword_10005A400)
  {
    sub_100002940(&qword_10005A3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A400);
  }

  return result;
}

unint64_t sub_100031604()
{
  result = qword_10005A408;
  if (!qword_10005A408)
  {
    sub_100002940(&qword_10005A3D0);
    sub_100025688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A408);
  }

  return result;
}

uint64_t sub_100031690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A3E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031700(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_10005A3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100031774()
{
  result = qword_10005A410;
  if (!qword_10005A410)
  {
    sub_100002940(&qword_10005A418);
    sub_1000314D8();
    sub_100031604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A410);
  }

  return result;
}

uint64_t sub_100031814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028F8(&qword_10005A420);
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

uint64_t sub_1000318FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028F8(&qword_10005A420);
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

uint64_t type metadata accessor for ChartsSection()
{
  result = qword_10005A480;
  if (!qword_10005A480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031A0C()
{
  sub_100031AE0();
  if (v0 <= 0x3F)
  {
    sub_1000053B8(319, &qword_100059008, &qword_100059010);
    if (v1 <= 0x3F)
    {
      sub_1000053B8(319, &qword_100059020, &unk_100059028);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100031AE0()
{
  if (!qword_10005A490)
  {
    sub_1000438E8();
    v0 = sub_100043578();
    if (!v1)
    {
      atomic_store(v0, &qword_10005A490);
    }
  }
}

uint64_t sub_100031B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_100043908();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000028F8(&qword_10005A4C8);
  return sub_100031BB8(a2, a1, a3 + *(v6 + 44));
}

uint64_t sub_100031BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v96 = a3;
  v108 = sub_1000439D8();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000028F8(&qword_10005A4D0);
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v92 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = &v86 - v7;
  __chkstk_darwin(v8);
  v10 = &v86 - v9;
  v11 = sub_1000028F8(&qword_10005A4D8);
  __chkstk_darwin(v11 - 8);
  v95 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v94 = &v86 - v14;
  __chkstk_darwin(v15);
  v93 = &v86 - v16;
  __chkstk_darwin(v17);
  v91 = &v86 - v18;
  __chkstk_darwin(v19);
  v106 = &v86 - v20;
  __chkstk_darwin(v21);
  v105 = &v86 - v22;
  v88 = objc_opt_self();
  v23 = [v88 mainBundle];
  v24 = sub_100044238();
  v25 = sub_100044238();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  v27 = sub_100044258();
  v100 = v28;
  v101 = v27;

  v29 = type metadata accessor for ChartsSection();
  v30 = v29;
  v31 = *(a1 + *(v29 + 20));
  if (v31)
  {
    if ([*(a1 + *(v29 + 20)) paused])
    {
      v32 = 3;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(a1 + *(v30 + 24));
    v34 = v33;
    v35 = v31;
    v36 = [v35 activityMoveMode];
    v37 = &selRef__moveMinutesCompletionPercentage;
    if (v36 != 2)
    {
      v37 = &selRef__activeEnergyCompletionPercentage;
    }

    [v35 *v37];
    v39 = v38;
  }

  else
  {
    v33 = *(a1 + *(v29 + 24));
    v34 = v33;
    v35 = 0;
    v32 = 0;
    v39 = 0;
  }

  v40 = *(a1 + *(v30 + 28));
  v128 = v31 == 0;
  v86 = v35;
  v87 = v34;
  sub_1000435F8();
  v104 = a1;
  sub_100032690(v41);
  sub_100043EC8();
  sub_1000435E8();
  *&v131[19] = v132;
  *&v131[11] = *&v131[35];
  *&v131[3] = *&v131[27];
  *&v124 = v101;
  *(&v124 + 1) = v100;
  LOBYTE(v125) = v32;
  *(&v125 + 1) = v31;
  *&v126 = v33;
  *(&v126 + 1) = v39;
  v127[0] = v128;
  LODWORD(v101) = v40;
  v127[1] = v40;
  *&v127[2] = *v131;
  *&v127[18] = *&v131[8];
  *&v127[34] = *&v131[16];
  *&v127[48] = *(&v132 + 1);
  v42 = v107;
  sub_1000439C8();
  v43 = sub_1000028F8(&qword_10005A4E0);
  v44 = sub_100032F94();
  sub_100043CF8();
  v45 = *(v110 + 8);
  v110 += 8;
  v98 = v45;
  v45(v42, v108);
  v129[4] = *&v127[16];
  v129[5] = *&v127[32];
  v130 = *&v127[48];
  v129[0] = v124;
  v129[1] = v125;
  v129[2] = v126;
  v129[3] = *v127;
  sub_100009D50(v129, &qword_10005A4E0);
  v99 = v44;
  v100 = v43;
  *&v124 = v43;
  *(&v124 + 1) = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v109;
  v89 = OpaqueTypeConformance2;
  sub_100043CA8();
  v48 = *(v111 + 8);
  v111 += 8;
  v97 = v48;
  v48(v10, v47);
  v49 = [v88 mainBundle];
  v50 = sub_100044238();
  v51 = sub_100044238();
  v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

  v53 = sub_100044258();
  v55 = v54;

  v56 = 0;
  v102 = v33;
  if (v31)
  {
    v57 = v86;
    if ([v86 paused])
    {
      v58 = 3;
    }

    else
    {
      v58 = 1;
    }

    [v57 _exerciseTimeCompletionPercentage];
    v60 = v59;
  }

  else
  {
    v60 = 0;
    v58 = 1;
    v57 = v86;
  }

  v122 = v31 == 0;
  v61 = v57;
  v62 = v87;
  sub_1000435F8();
  sub_100032690(v63);
  sub_100043EC8();
  sub_1000435E8();
  *&v123[38] = v135;
  *&v123[22] = v134;
  *&v123[6] = v133;
  *&v118 = v53;
  *(&v118 + 1) = v55;
  LOBYTE(v119) = v58;
  *(&v119 + 1) = v31;
  *&v120 = v102;
  *(&v120 + 1) = v60;
  v121[0] = v122;
  v121[1] = v101;
  *&v121[2] = *v123;
  *&v121[18] = *&v123[16];
  *&v121[34] = *&v123[32];
  *&v121[48] = *(&v135 + 1);
  v64 = v107;
  sub_1000439C8();
  v65 = v90;
  sub_100043CF8();
  v98(v64, v108);
  *&v127[16] = *&v121[16];
  *&v127[32] = *&v121[32];
  *&v127[48] = *&v121[48];
  v124 = v118;
  v125 = v119;
  v126 = v120;
  *v127 = *v121;
  sub_100009D50(&v124, &qword_10005A4E0);
  v66 = v109;
  sub_100043CA8();
  v97(v65, v66);
  v67 = sub_100033AE4();
  v69 = v68;
  v70 = 2;
  if (v31)
  {
    if ([v61 paused])
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    [v61 _standHoursCompletionPercentage];
    v56 = v71;
  }

  v116 = v31 == 0;
  sub_1000329C4();
  sub_100043EC8();
  sub_1000435E8();
  *&v117[38] = v138;
  *&v117[22] = v137;
  *&v117[6] = v136;
  *&v112 = v67;
  *(&v112 + 1) = v69;
  LOBYTE(v113) = v70;
  *(&v113 + 1) = v31;
  *&v114 = v102;
  *(&v114 + 1) = v56;
  v115[0] = v116;
  v115[1] = v101;
  *&v115[2] = *v117;
  *&v115[18] = *&v117[16];
  *&v115[34] = *&v117[32];
  *&v115[48] = *(&v138 + 1);
  v72 = v107;
  sub_1000439C8();
  v73 = v92;
  sub_100043CF8();
  v98(v72, v108);
  *&v121[16] = *&v115[16];
  *&v121[32] = *&v115[32];
  *&v121[48] = *&v115[48];
  v118 = v112;
  v119 = v113;
  v120 = v114;
  *v121 = *v115;
  sub_100009D50(&v118, &qword_10005A4E0);
  v74 = v91;
  v75 = v109;
  sub_100043CA8();
  v97(v73, v75);
  v76 = v105;
  v77 = v93;
  sub_100033C24(v105, v93);
  v78 = v106;
  v79 = v94;
  sub_100033C24(v106, v94);
  v80 = v95;
  sub_100033C24(v74, v95);
  v81 = v96;
  sub_100033C24(v77, v96);
  v82 = sub_1000028F8(&qword_10005A4F8);
  v83 = v81 + v82[12];
  *v83 = 0x401A000000000000;
  *(v83 + 8) = 0;
  sub_100033C24(v79, v81 + v82[16]);
  v84 = v81 + v82[20];
  *v84 = 0x401A000000000000;
  *(v84 + 8) = 0;
  sub_100033C24(v80, v81 + v82[24]);
  sub_100033C94(v74);
  sub_100033C94(v78);
  sub_100033C94(v76);
  sub_100033C94(v80);
  sub_100033C94(v79);
  return sub_100033C94(v77);
}

double sub_100032690(double a1)
{
  v2 = v1;
  v20 = sub_100043818();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_100059B48);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = sub_1000438E8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A1F8(v2, v9, &qword_100059B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    sub_100044378();
    v14 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v20);
  }

  v15 = (*(v11 + 88))(v13, v10);
  v16 = 36.0;
  if (v15 != enum case for ContentSizeCategory.extraSmall(_:) && v15 != enum case for ContentSizeCategory.small(_:) && v15 != enum case for ContentSizeCategory.medium(_:))
  {
    if (v15 == enum case for ContentSizeCategory.large(_:))
    {
      v17 = 0x4043800000000000;
    }

    else if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v17 = 0x4044800000000000;
    }

    else
    {
      (*(v11 + 8))(v13, v10, 36.0);
      v17 = 0x4045000000000000;
    }

    v16 = *&v17;
  }

  return (a1 - v16) * 0.5;
}

double sub_1000329C4()
{
  v1 = v0;
  v17 = sub_100043818();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000028F8(&qword_100059B48);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_1000438E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A1F8(v1, v7, &qword_100059B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_100044378();
    v12 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v13 = (*(v9 + 88))(v11, v8);
  result = 36.0;
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:) && v13 != enum case for ContentSizeCategory.small(_:) && v13 != enum case for ContentSizeCategory.medium(_:))
  {
    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      return 39.0;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      return 41.0;
    }

    (*(v9 + 8))(v11, v8, 36.0);
    return 42.0;
  }

  return result;
}

uint64_t sub_100032CE0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100033E88(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartsSection);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100033E20(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ChartsSection);
  *a2 = sub_100032F14;
  a2[1] = v7;
  return result;
}

uint64_t sub_100032DE8()
{
  v1 = type metadata accessor for ChartsSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_1000028F8(&qword_100059B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000438E8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChartsSection() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100031B54(a1, v6, a2);
}

unint64_t sub_100032F94()
{
  result = qword_10005A4E8;
  if (!qword_10005A4E8)
  {
    sub_100002940(&qword_10005A4E0);
    sub_100033020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A4E8);
  }

  return result;
}

unint64_t sub_100033020()
{
  result = qword_10005A4F0;
  if (!qword_10005A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A4F0);
  }

  return result;
}

uint64_t sub_100033074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeaderLabel();
  __chkstk_darwin(v4);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v42[-v8];
  __chkstk_darwin(v10);
  v12 = &v42[-v11];
  v43 = *(a1 + 49);
  if (v43 == 1)
  {
    v13 = [objc_opt_self() mainBundle];
    v14 = sub_100044238();
    v15 = sub_100044238();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    v17 = sub_100044258();
    v19 = v18;
  }

  else
  {
    v17 = *a1;
    v19 = *(a1 + 8);
  }

  v20 = *(a1 + 16);
  if (v20 == 3)
  {
    if (qword_100058DC8 != -1)
    {
      swift_once();
    }

    v21 = &qword_10005C9E0;
  }

  else
  {
    if (qword_100058D70 != -1)
    {
      swift_once();
    }

    v21 = &qword_10005C988;
  }

  v22 = *v21;

  v48[0] = 0x4026000000000000;
  sub_10000A5CC();
  sub_1000435A8();
  v23 = &v9[*(v4 + 20)];
  *v23 = v17;
  v23[1] = v19;
  *&v9[*(v4 + 24)] = v22;
  sub_100033E20(v9, v12, type metadata accessor for HeaderLabel);
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  v26 = v24;
  v27 = v25;
  v28 = sub_100043A68();
  sub_100043568();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v48[0]) = 0;
  sub_100033E88(v12, v6, type metadata accessor for HeaderLabel);
  sub_100033E88(v6, a2, type metadata accessor for HeaderLabel);
  v37 = (a2 + *(sub_1000028F8(&qword_10005A518) + 48));
  LOBYTE(v44) = v20;
  *(&v44 + 1) = v25;
  *&v45 = v24;
  v38 = v43;
  BYTE8(v45) = v43;
  LOBYTE(v46) = v28;
  *(&v46 + 1) = v30;
  *v47 = v32;
  *&v47[8] = v34;
  *&v47[16] = v36;
  v47[24] = 0;
  v39 = v45;
  *v37 = v44;
  v37[1] = v39;
  v40 = *v47;
  v37[2] = v46;
  v37[3] = v40;
  *(v37 + 57) = *&v47[9];
  sub_10000A1F8(&v44, v48, &qword_10005A520);
  sub_100033EF0(v12);
  LOBYTE(v48[0]) = v20;
  v48[1] = v25;
  v48[2] = v24;
  v49 = v38;
  v50 = v28;
  v51 = v30;
  v52 = v32;
  v53 = v34;
  v54 = v36;
  v55 = 0;
  sub_100009D50(v48, &qword_10005A520);
  return sub_100033EF0(v6);
}

uint64_t sub_100033440@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_100043908();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v4 = sub_1000028F8(&qword_10005A510);
  return sub_100033074(v6, a1 + *(v4 + 44));
}

id sub_1000334B4@<X0>(id a1@<X2>, unsigned __int8 a2@<W0>, void *a3@<X1>, void *a4@<X8>)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a1)
      {
        v12 = [a1 appleStandHourResults];
        if (v12)
        {
          v13 = v12;
          sub_100009BB8(0, &qword_100059B88);
          sub_1000442E8();
        }
      }

      if (qword_100058DF0 != -1)
      {
        swift_once();
      }

      sub_1000343A0();
      goto LABEL_40;
    }

    if (qword_100058DB8 != -1)
    {
      swift_once();
    }

    v18 = qword_100058DC0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_100058DE8;

    if (v19 != -1)
    {
      swift_once();
    }

    result = [qword_10005CA00 unitManager];
    if (result)
    {
      v20 = result;
      v21 = [result userActiveEnergyBurnedUnit];

      if (a3 && [a3 activityMoveMode] == 2)
      {
        [objc_opt_self() minuteUnit];
      }

      goto LABEL_39;
    }
  }

  else
  {
    if (a2)
    {
      if (qword_100058DA0 != -1)
      {
        swift_once();
      }

      v14 = qword_100058DA8;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = objc_opt_self();

      [v15 minuteUnit];
      sub_1000340EC(1u, a3);
      if (a1)
      {
        v16 = [a1 appleExerciseTimeResults];
        if (v16)
        {
          v17 = v16;
          sub_100009BB8(0, &qword_100059B80);
          sub_1000442E8();
        }
      }

      goto LABEL_39;
    }

    if (qword_100058D90 != -1)
    {
      swift_once();
    }

    v7 = qword_100058D98;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_100058DE8;

    if (v8 != -1)
    {
      swift_once();
    }

    result = [qword_10005CA00 unitManager];
    if (result)
    {
      v10 = result;
      v11 = [result userActiveEnergyBurnedUnit];

      if (a3)
      {
        if ([a3 activityMoveMode] == 2)
        {
          [objc_opt_self() minuteUnit];
        }
      }

      sub_1000340EC(0, a3);
      sub_100033A14(0, a3, a1);
LABEL_39:
      sub_10003434C();
LABEL_40:
      result = sub_100043E38();
      *a4 = result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100033A14(int a1, id a2, id a3)
{
  if (!a2 || [a2 activityMoveMode] != 2)
  {
    if (a3)
    {
      result = [a3 activeEnergyResults];
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  result = [a3 appleMoveTimeResults];
  if (result)
  {
LABEL_8:
    v5 = result;
    sub_100009BB8(0, &qword_100059B80);
    v6 = sub_1000442E8();

    return v6;
  }

  return result;
}

uint64_t sub_100033AE4()
{
  if (qword_100058DF0 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() mainBundle];
  v1 = sub_100044238();
  v2 = sub_100044238();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_100044258();
  return v4;
}

uint64_t sub_100033C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A4D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033C94(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_10005A4D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100033CFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100033D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_100033D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100033E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100033E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100033EF0(uint64_t a1)
{
  v2 = type metadata accessor for HeaderLabel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100033F4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100033F60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100033FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10003407C()
{
  result = qword_10005A538;
  if (!qword_10005A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A538);
  }

  return result;
}

id sub_1000340EC(unsigned __int8 a1, id a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
LABEL_9:
    if (v2 != 2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (a1)
  {
LABEL_10:
    v4 = [objc_opt_self() mainBundle];
    v5 = sub_100044238();
    v6 = sub_100044238();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

LABEL_16:
    v8 = sub_100044258();

    return v8;
  }

  if (a2 && [a2 activityMoveMode] == 2)
  {
    if (qword_100058DE8 != -1)
    {
      swift_once();
    }

    result = [qword_10005CA00 localizedLongMoveMinutesUnitString];
    if (!result)
    {
      __break(1u);
      goto LABEL_9;
    }

LABEL_15:
    v7 = result;
    goto LABEL_16;
  }

  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  result = [qword_10005CA00 localizedLongActiveEnergyUnitString];
  if (result)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_10003434C()
{
  result = qword_10005A540;
  if (!qword_10005A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A540);
  }

  return result;
}

unint64_t sub_1000343A0()
{
  result = qword_10005A548;
  if (!qword_10005A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A548);
  }

  return result;
}

uint64_t sub_100034414(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_100059C48);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000028F8(&qword_1000590F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000345A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000028F8(&qword_1000599B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000028F8(&qword_100059C48);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000028F8(&qword_1000590F0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for StandaloneMetricView()
{
  result = qword_10005A5A8;
  if (!qword_10005A5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100034760()
{
  sub_100034858(319, &unk_100059A28, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    sub_100034858(319, &qword_100059CB8, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_10000A570();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100034858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100043578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000348C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v3 = sub_1000028F8(&qword_1000591A0);
  __chkstk_darwin(v3 - 8);
  v100 = v82 - v4;
  v91 = sub_100044018();
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = v82 - v7;
  v93 = sub_100043C18();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v83 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000028F8(&qword_10005A5F8);
  __chkstk_darwin(v94);
  v99 = v82 - v9;
  v97 = sub_1000028F8(&qword_10005A600);
  __chkstk_darwin(v97);
  v98 = v82 - v10;
  v95 = sub_1000028F8(&qword_10005A608);
  __chkstk_darwin(v95);
  v96 = v82 - v11;
  v12 = type metadata accessor for StandaloneMetricView();
  v13 = (v1 + *(v12 + 32));
  v14 = v13[1];
  v104 = *v13;
  v105 = v14;
  sub_10000A8C4();

  v15 = sub_100043C48();
  v17 = v16;
  v19 = v18;
  v86 = sub_100043BB8();
  v85 = v20;
  v84 = v21;
  v87 = v22;
  sub_10000A918(v15, v17, v19 & 1);

  v23 = (v2 + *(v12 + 36));
  v25 = *v23;
  v24 = v23[1];
  v104 = v25;
  v105 = v24;
  v102 = sub_1000444D8();
  v103 = v26;
  v27 = sub_100043C48();
  v29 = v28;
  v31 = v30;
  v32 = v83;
  sub_100043C08();
  v33 = sub_100043C28();
  v82[0] = v34;
  v36 = v35;
  v82[1] = v37;
  sub_10000A918(v27, v29, v31 & 1);

  (*(v90 + 8))(v32, v93);
  v90 = v12;
  v93 = v2;
  v38 = v88;
  sub_100042BF4(v88);
  v39 = v89;
  sub_100044008();
  sub_10002963C();
  v40 = v91;
  v41 = sub_100044208();
  v42 = *(v92 + 8);
  v42(v39, v40);
  v42(v38, v40);
  if (v41)
  {
  }

  else
  {
    sub_100043D68();
  }

  v43 = v82[0];
  v44 = sub_100043BB8();
  v46 = v45;
  v48 = v47;

  sub_10000A918(v33, v43, v36 & 1);

  v49 = v84;
  v50 = v86;
  v51 = v85;
  v92 = sub_100043BE8();
  v53 = v52;
  v55 = v54;
  v91 = v56;
  sub_10000A918(v44, v46, v48 & 1);

  sub_10000A918(v50, v51, v49 & 1);

  sub_1000028F8(&qword_1000590F0);
  sub_1000435B8();
  sub_100043AD8();
  v57 = enum case for Font.Design.rounded(_:);
  v58 = sub_100043AB8();
  v59 = *(v58 - 8);
  v60 = v100;
  (*(v59 + 104))(v100, v57, v58);
  (*(v59 + 56))(v60, 0, 1, v58);
  sub_100043AE8();
  sub_10000A928(v60);
  v61 = v92;
  v62 = sub_100043BF8();
  v64 = v63;
  LOBYTE(v59) = v65;
  v67 = v66;

  sub_10000A918(v61, v53, v55 & 1);

  v68 = v99;
  v69 = &v99[*(v94 + 36)];
  sub_1000028F8(&qword_10005A610);
  sub_1000436A8();
  *v69 = swift_getKeyPath();
  *v68 = v62;
  *(v68 + 8) = v64;
  *(v68 + 16) = v59 & 1;
  *(v68 + 24) = v67;
  KeyPath = swift_getKeyPath();
  v71 = v98;
  sub_1000029D8(v68, v98, &qword_10005A5F8);
  v72 = (v71 + *(v97 + 36));
  *v72 = KeyPath;
  v72[1] = 0x3FE3333333333333;
  v73 = swift_getKeyPath();
  v74 = v71;
  v75 = v96;
  sub_1000029D8(v74, v96, &qword_10005A600);
  v76 = v75 + *(v95 + 36);
  *v76 = v73;
  *(v76 + 8) = 1;
  v77 = swift_getKeyPath();
  v78 = v75;
  v79 = v101;
  sub_1000029D8(v78, v101, &qword_10005A608);
  result = sub_1000028F8(&qword_10005A618);
  v81 = v79 + *(result + 36);
  *v81 = v77;
  *(v81 + 8) = 1;
  *(v81 + 16) = 0;
  return result;
}

unint64_t sub_100035138()
{
  result = qword_10005A620;
  if (!qword_10005A620)
  {
    sub_100002940(&qword_10005A618);
    sub_1000351DC();
    sub_1000353C8(&qword_1000591C0, &qword_1000591C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A620);
  }

  return result;
}

unint64_t sub_1000351DC()
{
  result = qword_10005A628;
  if (!qword_10005A628)
  {
    sub_100002940(&qword_10005A608);
    sub_100035280();
    sub_1000353C8(&qword_10005A658, &qword_10005A660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A628);
  }

  return result;
}

unint64_t sub_100035280()
{
  result = qword_10005A630;
  if (!qword_10005A630)
  {
    sub_100002940(&qword_10005A600);
    sub_100035324();
    sub_1000353C8(&qword_10005A648, &qword_10005A650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A630);
  }

  return result;
}

unint64_t sub_100035324()
{
  result = qword_10005A638;
  if (!qword_10005A638)
  {
    sub_100002940(&qword_10005A5F8);
    sub_1000353C8(&qword_10005A640, &qword_10005A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A638);
  }

  return result;
}

uint64_t sub_1000353C8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002940(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100035430(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_10005A420);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_100059C48);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000028F8(&qword_1000590F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000355BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000028F8(&qword_10005A420);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000028F8(&qword_100059C48);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000028F8(&qword_1000590F0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for FractionView()
{
  result = qword_10005A6C0;
  if (!qword_10005A6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003577C()
{
  sub_100035884(319, &qword_10005A490, &type metadata accessor for ContentSizeCategory);
  if (v0 <= 0x3F)
  {
    sub_100035884(319, &qword_100059CB8, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_10000A570();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100035884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100043578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000358F4@<X0>(uint64_t a1@<X8>)
{
  v149 = a1;
  v2 = sub_1000028F8(&qword_1000591A0);
  __chkstk_darwin(v2 - 8);
  v148 = v120 - v3;
  v137 = sub_100044018();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v134 = v120 - v6;
  v133 = sub_100043C18();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1000028F8(&qword_10005A5F8);
  __chkstk_darwin(v138);
  v147 = v120 - v8;
  v143 = sub_1000028F8(&qword_10005A718);
  __chkstk_darwin(v143);
  v146 = v120 - v9;
  v142 = sub_1000028F8(&qword_10005A720);
  __chkstk_darwin(v142);
  v145 = v120 - v10;
  v141 = sub_1000028F8(&qword_10005A728);
  __chkstk_darwin(v141);
  v144 = v120 - v11;
  v140 = sub_1000028F8(&qword_10005A730);
  __chkstk_darwin(v140);
  v139 = v120 - v12;
  v154 = type metadata accessor for FractionView();
  v13 = (v1 + *(v154 + 32));
  v14 = v13[1];
  v151 = *v13;
  v152 = v14;
  v155 = v151;
  v156 = v14;
  v15 = sub_10000A8C4();

  v130 = sub_100043C48();
  v129 = v16;
  v18 = v17;
  v128 = v19;
  sub_1000438B8();
  v20 = sub_100043C38();
  v22 = v21;
  v24 = v23;
  v25 = sub_100043BA8();
  v27 = v26;
  v29 = v28;
  sub_10000A918(v20, v22, v24 & 1);

  v30 = v130;
  v31 = v129;
  v124 = sub_100043BE8();
  v123 = v32;
  v34 = v33;
  v150 = v35;
  sub_10000A918(v25, v27, v29 & 1);

  sub_10000A918(v30, v31, v18 & 1);

  v36 = v153;
  v37 = v154;
  v38 = (v153 + *(v154 + 36));
  v39 = v38[1];
  v126 = *v38;
  v155 = v126;
  v156 = v39;
  v125 = v39;

  v127 = v15;
  v40 = sub_100043C48();
  v42 = v41;
  LOBYTE(v15) = v43;
  v44 = v124;
  v45 = v123;
  v122 = sub_100043BE8();
  v121 = v46;
  LOBYTE(v20) = v47;
  v120[1] = v48;
  v49 = v40;
  v50 = v36;
  sub_10000A918(v49, v42, v15 & 1);

  sub_10000A918(v44, v45, v34 & 1);

  v124 = *(v36 + *(v37 + 28));
  v51 = v122;
  v52 = v121;
  v130 = sub_100043BB8();
  v129 = v53;
  LODWORD(v128) = v54;
  v150 = v55;
  sub_10000A918(v51, v52, v20 & 1);

  if (sub_1000364FC())
  {
    v56 = (v50 + *(v37 + 40));
    v58 = *v56;
    v57 = v56[1];
    v155 = v58;
    v156 = v57;
    v59 = sub_1000444D8();
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  v155 = v59;
  v156 = v60;
  v61 = sub_100043C48();
  v63 = v62;
  v65 = v64;
  v66 = v131;
  sub_100043C08();
  v67 = sub_100043C28();
  v69 = v68;
  v71 = v70;
  v127 = v72;
  sub_10000A918(v61, v63, v65 & 1);

  (*(v132 + 8))(v66, v133);
  v73 = v134;
  sub_100042BF4(v134);
  v74 = v135;
  sub_100044008();
  sub_10002963C();
  v75 = v137;
  LOBYTE(v61) = sub_100044208();
  v76 = *(v136 + 8);
  v76(v74, v75);
  v76(v73, v75);
  if (v61)
  {
  }

  else
  {
    sub_100043D68();
  }

  v77 = sub_100043BB8();
  v79 = v78;
  v81 = v80;

  sub_10000A918(v67, v69, v71 & 1);

  v82 = v128;
  v83 = v130;
  v84 = v129;
  v137 = sub_100043BE8();
  v86 = v85;
  v88 = v87;
  v136 = v89;
  sub_10000A918(v77, v79, v81 & 1);

  sub_10000A918(v83, v84, v82 & 1);

  sub_1000028F8(&qword_1000590F0);
  sub_1000435B8();
  sub_100043AD8();
  v90 = enum case for Font.Design.rounded(_:);
  v91 = sub_100043AB8();
  v92 = *(v91 - 8);
  v93 = v148;
  (*(v92 + 104))(v148, v90, v91);
  (*(v92 + 56))(v93, 0, 1, v91);
  sub_100043AE8();
  sub_10000A928(v93);
  v94 = v137;
  v95 = sub_100043BF8();
  v97 = v96;
  LOBYTE(v92) = v98;
  v100 = v99;

  sub_10000A918(v94, v86, v88 & 1);

  v101 = v147;
  v102 = &v147[*(v138 + 36)];
  sub_1000028F8(&qword_10005A610);
  sub_1000436A8();
  *v102 = swift_getKeyPath();
  *v101 = v95;
  *(v101 + 8) = v97;
  *(v101 + 16) = v92 & 1;
  *(v101 + 24) = v100;
  sub_100043F08();
  v103 = sub_100043EF8();

  v104 = v146;
  sub_1000029D8(v101, v146, &qword_10005A5F8);
  v105 = (v104 + *(v143 + 36));
  v106 = v151;
  v107 = v152;
  *v105 = v103;
  v105[1] = v106;
  v105[2] = v107;
  KeyPath = swift_getKeyPath();
  v109 = v145;
  sub_1000029D8(v104, v145, &qword_10005A718);
  v110 = (v109 + *(v142 + 36));
  *v110 = KeyPath;
  v110[1] = 0x3FE3333333333333;
  v111 = swift_getKeyPath();
  v112 = v109;
  v113 = v144;
  sub_1000029D8(v112, v144, &qword_10005A720);
  v114 = v113 + *(v141 + 36);
  *v114 = v111;
  *(v114 + 8) = 1;
  v115 = swift_getKeyPath();
  v116 = v113;
  v117 = v139;
  sub_1000029D8(v116, v139, &qword_10005A728);
  v118 = v117 + *(v140 + 36);
  *v118 = v115;
  *(v118 + 8) = 1;
  *(v118 + 16) = 0;
  sub_1000029D8(v117, v149, &qword_10005A730);
}