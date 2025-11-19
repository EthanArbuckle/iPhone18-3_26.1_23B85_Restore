uint64_t sub_10001F5F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001F7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10001F858()
{
  sub_10056CAA8();
  if (v0 <= 0x3F)
  {
    sub_10001F8F4();
    if (v1 <= 0x3F)
    {
      sub_100010A58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001F8F4()
{
  if (!qword_1006DFE60)
  {
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006DFE60);
    }
  }
}

unint64_t sub_10001F944()
{
  result = qword_1006E0BA8;
  if (!qword_1006E0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BA8);
  }

  return result;
}

uint64_t sub_10001F998(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFF98);
    sub_10001FA34(a2, type metadata accessor for WidgetMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001FA34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001FA90()
{
  result = qword_1006E0BB8;
  if (!qword_1006E0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BB8);
  }

  return result;
}

unint64_t sub_10001FAE8()
{
  result = qword_1006E0BC0;
  if (!qword_1006E0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BC0);
  }

  return result;
}

unint64_t sub_10001FB40()
{
  result = qword_1006E0BC8;
  if (!qword_1006E0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BC8);
  }

  return result;
}

uint64_t sub_10001FB94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974617473 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10001FCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001FD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001FDDC()
{
  result = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001FE64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_10056EDA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecommendationsWidgetContentView(0);
  __chkstk_darwin(v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100009DCC(&qword_1006E0C60);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  *v9 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0C68);
  swift_storeEnumTagMultiPayload();
  v13 = *(v7 + 20);
  *(v9 + v13) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148);
  swift_storeEnumTagMultiPayload();
  v14 = *(v7 + 24);
  *(v9 + v14) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0C70);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  if ((sub_100075E34() & 1) != 0 || *(v2 + *(v15 + 40) + 8))
  {
    sub_10056ED98();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
    sub_1000283AC(&qword_1006E0C78, &type metadata accessor for RedactionReasons);
    sub_100009DCC(&qword_1006E0C80);
    sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80);
    sub_100573DA8();
  }

  sub_1000283AC(&qword_1006E0C90, type metadata accessor for RecommendationsWidgetContentView);
  sub_100570358();
  (*(v4 + 8))(v6, v3);
  sub_100028448(v9, type metadata accessor for RecommendationsWidgetContentView);
  KeyPath = swift_getKeyPath();
  v17 = sub_100009DCC(&qword_1006E0C98);
  v18 = v24;
  v19 = (v24 + *(v17 + 36));
  v20 = sub_100009DCC(&qword_1006E0CA0);
  sub_100028C7C(v2, v19 + *(v20 + 28), type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  *v19 = KeyPath;
  return (*(v22 + 32))(v18, v12, v23);
}

uint64_t sub_100020284()
{
  sub_1000283F4();

  return sub_10056F1A8();
}

uint64_t sub_1000202CC(uint64_t a1)
{
  v2 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100028C7C(a1, &v9 - v6, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  sub_100028C7C(v7, v5, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  sub_1000283F4();
  sub_10056F1B8();
  return sub_100028448(v7, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
}

uint64_t sub_100020440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_10056E698();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10056F898();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E0D78);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_100009DCC(&qword_1006E0D80);
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v51 = &v42 - v12;
  v13 = sub_1005724A8();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v42 = type metadata accessor for RecommendationsWidgetContentView(0);
  sub_1000A8194(v19);
  (*(v14 + 32))(v17, v19, v13);
  v20 = (*(v14 + 88))(v17, v13);
  if (v20 == enum case for WidgetFamily.systemMedium(_:))
  {
    v21 = 8.0;
    v22 = 10.0;
    v23 = 2;
    v24 = 1;
  }

  else if (v20 == enum case for WidgetFamily.systemLarge(_:))
  {
    v21 = 16.0;
    v22 = 14.0;
    v24 = 1;
    v23 = 4;
  }

  else if (v20 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v21 = 12.0;
    v22 = 20.0;
    v24 = 2;
    v23 = 4;
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    v23 = 0;
    v24 = 0;
    v22 = 0.0;
    v21 = 0.0;
  }

  *v10 = sub_10056F368();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v25 = sub_100009DCC(&qword_1006E0D88);
  sub_100020A08(v2, v23, v24, &v10[*(v25 + 44)], v22, v21);
  v26 = sub_10056FA88();
  sub_10056E598();
  v27 = &v10[*(v8 + 36)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = sub_10056F888();
  __chkstk_darwin(v32);
  sub_1005709E8();
  sub_100009DCC(&qword_1006E0D90);
  sub_100028A20();
  sub_100028AD8();
  sub_1005701E8();
  (*(v43 + 8))(v7, v44);
  sub_10001036C(v10, &qword_1006E0D78);
  if (sub_10002254C())
  {
    v34 = v47;
    v33 = v48;
    v35 = v49;
    (*(v48 + 104))(v47, enum case for ColorScheme.light(_:), v49);
  }

  else
  {
    v34 = v47;
    sub_1000A81E4(v47);
    v33 = v48;
    v35 = v49;
  }

  KeyPath = swift_getKeyPath();
  v37 = sub_100009DCC(&qword_1006E0DD8);
  v38 = v50;
  v39 = (v50 + *(v37 + 36));
  v40 = sub_100009DCC(&qword_1006E0DE0);
  (*(v33 + 32))(v39 + *(v40 + 28), v34, v35);
  *v39 = KeyPath;
  return (*(v45 + 32))(v38, v51, v46);
}

uint64_t sub_100020A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v96 = a3;
  v114 = a2;
  v113 = a4;
  v111 = sub_100009DCC(&qword_1006E0DF8);
  __chkstk_darwin(v111);
  v10 = &v87 - v9;
  v112 = sub_100009DCC(&qword_1006E0E00);
  __chkstk_darwin(v112);
  v88 = &v87 - v11;
  v103 = sub_1005724A8();
  v102 = *(v103 - 8);
  v12 = __chkstk_darwin(v103);
  v101 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = &v87 - v14;
  v98 = sub_10056F808();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for RecommendationsWidgetContentView(0);
  v92 = *(v99 - 8);
  v16 = *(v92 + 64);
  __chkstk_darwin(v99);
  v104 = sub_100009DCC(&qword_1006E0E08);
  __chkstk_darwin(v104);
  v18 = &v87 - v17;
  v108 = sub_100009DCC(&qword_1006E0E10);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v87 - v19;
  v20 = sub_100009DCC(&qword_1006E0E18);
  v21 = __chkstk_darwin(v20 - 8);
  v110 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v105 = &v87 - v24;
  __chkstk_darwin(v23);
  v109 = &v87 - v25;
  v26 = type metadata accessor for WidgetMusicRecommendation(0);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v31 = __chkstk_darwin(v30);
  v94 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v87 - v33;
  v35 = a1;
  sub_1000A81BC(&v87 - v33);
  v93 = v30;
  sub_100028C7C(&v34[*(v30 + 20)], v29, type metadata accessor for WidgetMusicRecommendation);
  sub_100028448(v34, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v36 = &v29[*(v27 + 32)];
  v37 = *v36;
  v38 = v36[1];

  sub_100028448(v29, type metadata accessor for WidgetMusicRecommendation);
  if (v38)
  {
    goto LABEL_4;
  }

  if (qword_1006DF9E0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v37 = qword_1006FC228;
    v38 = unk_1006FC230;

LABEL_4:
    v39 = v114;
    v40 = sub_10056FA58();
    sub_10056E598();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v126 = 0;
    *v18 = sub_1005709E8();
    *(v18 + 1) = v49;
    *(v18 + 2) = 0x4042000000000000;
    v18[24] = 0;
    *(v18 + 4) = a6;
    v18[40] = 0;
    if ((v39 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  v89 = v40;
  v90 = v38;
  v91 = v37;
  v114 = v10;
  sub_100009DCC(&qword_1006E0E20);
  *&v118 = 0;
  *(&v118 + 1) = v39;
  swift_getKeyPath();
  sub_100028C7C(v35, &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecommendationsWidgetContentView);
  v50 = (*(v92 + 80) + 48) & ~*(v92 + 80);
  v51 = swift_allocObject();
  v52 = v96;
  *(v51 + 16) = v39;
  *(v51 + 24) = v52;
  *(v51 + 32) = a5;
  *(v51 + 40) = a6;
  sub_100028CE4(&v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v50, type metadata accessor for RecommendationsWidgetContentView);
  sub_100009DCC(&qword_1006E0E28);
  sub_100009DCC(&qword_1006E0E30);
  sub_100029418();
  sub_100010BC0(&qword_1006E0E48, &qword_1006E0E30);
  sub_1005708B8();
  v53 = v95;
  sub_10056F7F8();
  v54 = sub_100010BC0(&qword_1006E0E50, &qword_1006E0E08);
  v55 = v106;
  v56 = v104;
  v96 = v54;
  sub_1005701F8();
  (*(v97 + 8))(v53, v98);
  sub_10001036C(v18, &qword_1006E0E08);
  v57 = v94;
  sub_1000A81BC(v94);
  v58 = (v57 + *(v93 + 40));
  v60 = *v58;
  v59 = v58[1];

  sub_100028448(v57, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v61 = v100;
  sub_1000A8194(v100);
  v62 = v102;
  v63 = v101;
  v64 = v103;
  (*(v102 + 104))(v101, enum case for WidgetFamily.systemMedium(_:), v103);
  sub_1000283AC(&qword_1006E0E58, &type metadata accessor for WidgetFamily);
  sub_100572CB8();
  sub_100572CB8();
  v65 = *(v62 + 8);
  v65(v63, v64);
  v65(v61, v64);
  if (v59)
  {
    v66 = 16.0;
    if (v118 == v115)
    {
      v66 = 0.0;
    }

    v67 = v88;
    v68 = &v88[*(v112 + 36)];
    *v68 = v60;
    *(v68 + 1) = v59;
    *(v68 + 2) = v66;
    *(v68 + 3) = 0x4030000000000000;
    type metadata accessor for CGSize(0);
    v115 = 0uLL;
    sub_100570668();
    v69 = v119;
    *(v68 + 2) = v118;
    *(v68 + 6) = v69;
    v70 = type metadata accessor for ErrorMessageModifier();
    sub_10056FDE8();
    v71 = *(v70 + 36);
    *&v68[v71] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    v72 = &v68[*(v70 + 40)];
    *v72 = swift_getKeyPath();
    *(v72 + 1) = 0;
    *(v72 + 2) = 0;
    *(v72 + 3) = 0;
    v72[32] = 0;
    v73 = v107;
    v74 = v108;
    (*(v107 + 16))(v67, v55, v108);
    sub_10000CC8C(v67, v114, &qword_1006E0E00);
    swift_storeEnumTagMultiPayload();
    sub_1000294F8();
    *&v118 = v56;
    *(&v118 + 1) = v96;
    swift_getOpaqueTypeConformance2();
    v75 = v105;
    sub_10056F5B8();
    sub_10001036C(v67, &qword_1006E0E00);
  }

  else
  {
    v73 = v107;
    v74 = v108;
    (*(v107 + 16))(v114, v55, v108);
    swift_storeEnumTagMultiPayload();
    sub_1000294F8();
    *&v118 = v56;
    *(&v118 + 1) = v96;
    swift_getOpaqueTypeConformance2();
    v75 = v105;
    sub_10056F5B8();
  }

  (*(v73 + 8))(v55, v74);
  v76 = v109;
  sub_100019B40(v75, v109, &qword_1006E0E18);
  v77 = v110;
  sub_10000CC8C(v76, v110, &qword_1006E0E18);
  v78 = v91;
  *&v115 = v91;
  v79 = v90;
  *(&v115 + 1) = v90;
  v80 = v89;
  LOBYTE(v116) = v89;
  *(&v116 + 1) = *v125;
  DWORD1(v116) = *&v125[3];
  *(&v116 + 1) = v42;
  *v117 = v44;
  *&v117[8] = v46;
  *&v117[16] = v48;
  v117[24] = 0;
  v81 = v115;
  v82 = v116;
  v83 = *v117;
  v84 = v113;
  *(v113 + 41) = *&v117[9];
  v84[1] = v82;
  v84[2] = v83;
  *v84 = v81;
  v85 = sub_100009DCC(&qword_1006E0E70);
  sub_10000CC8C(v77, v84 + *(v85 + 48), &qword_1006E0E18);
  sub_10000CC8C(&v115, &v118, &qword_1006E0E78);
  sub_10001036C(v76, &qword_1006E0E18);
  sub_10001036C(v77, &qword_1006E0E18);
  *&v118 = v78;
  *(&v118 + 1) = v79;
  LOBYTE(v119) = v80;
  *(&v119 + 1) = *v125;
  HIDWORD(v119) = *&v125[3];
  v120 = v42;
  v121 = v44;
  v122 = v46;
  v123 = v48;
  v124 = 0;
  return sub_10001036C(&v118, &qword_1006E0E78);
}

uint64_t sub_1000217C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = type metadata accessor for RecommendationsWidgetContentView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = __chkstk_darwin(v14 - 8);
  v18 = *a1;
  *a5 = 0;
  *(a5 + 8) = 1;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100009DCC(&qword_1006E0E30);
    v21[0] = 0;
    v21[1] = a3;
    swift_getKeyPath();
    sub_100028C7C(a4, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecommendationsWidgetContentView);
    v19 = (*(v15 + 80) + 56) & ~*(v15 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = a2;
    *(v20 + 32) = a3;
    *(v20 + 40) = a6;
    *(v20 + 48) = a7;
    sub_100028CE4(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for RecommendationsWidgetContentView);
    sub_100009DCC(&qword_1006E0E28);
    sub_100009DCC(&qword_1006E0E80);
    sub_100029418();
    sub_100029CF8();
    return sub_1005708B8();
  }

  return result;
}

uint64_t sub_1000219CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44 = a5;
  v45 = a4;
  v48 = a2;
  v7 = sub_100009DCC(qword_1006E1D50);
  v8 = __chkstk_darwin(v7 - 8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v39 - v10;
  v11 = sub_10056C8A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v47 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009DCC(&qword_1006E0E98);
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v41 = &v39 - v15;
  v16 = type metadata accessor for WidgetMusicRecommendation(0);
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin(v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100009DCC(&qword_1006E0618);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v23);
  v28 = &v39 - v27;
  v29 = a3 * *a1;
  if ((a3 * *a1) >> 64 != v29 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v30 = v48 + v29;
  if (__OFADD__(v48, v29))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(8, v30))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = 8 - v30;
  sub_1000A81BC(v21);
  sub_100028C7C(&v21[*(v19 + 20)], v18, type metadata accessor for WidgetMusicRecommendation);
  sub_100028448(v21, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);

  sub_100028448(v18, type metadata accessor for WidgetMusicRecommendation);
  v31 = type metadata accessor for WidgetMusicItem();
  Array.subscript.getter(v31, v28);

  sub_10000CC8C(v28, v25, &qword_1006E0618);
  if ((*(*(v31 - 8) + 48))(v25, 1, v31) != 1)
  {
    v36 = v46;
    (*(v12 + 16))(v46, &v25[*(v31 + 28)], v11);
    sub_100028448(v25, type metadata accessor for WidgetMusicItem);
    (*(v12 + 56))(v36, 0, 1, v11);
    v35 = (*(v12 + 32))(v47, v36, v11);
LABEL_9:
    __chkstk_darwin(v35);
    *(&v39 - 2) = v28;
    type metadata accessor for SongCellView(0);
    sub_1000283AC(&qword_1006E0EA0, type metadata accessor for SongCellView);
    v37 = v41;
    sub_10056FC78();
    sub_100010BC0(&qword_1006E0E90, &qword_1006E0E98);
    v38 = v43;
    sub_100570068();
    (*(v42 + 8))(v37, v38);
    return sub_10001036C(v28, &qword_1006E0618);
  }

  sub_10001036C(v25, &qword_1006E0618);
  v32 = v46;
  (*(v12 + 56))(v46, 1, 1, v11);
  v33 = v40;
  sub_10056C868();
  v34 = *(v12 + 48);
  result = v34(v33, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v47, v33, v11);
    v35 = v34(v32, 1, v11);
    if (v35 != 1)
    {
      v35 = sub_10001036C(v32, qword_1006E1D50);
    }

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100022068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000CC8C(a1, a2, &qword_1006E0618);
  v3 = type metadata accessor for SongCellView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0C68);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0EA8);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  *(a2 + v7) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0EB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000221A0@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = sub_100009DCC(&qword_1006E0DF0);
  __chkstk_darwin(v1);
  v3 = v19 - v2;
  v4 = sub_100570558();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E0DC0);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin(v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10002254C() & 1) != 0 && (sub_1000A81BC(v13), v14 = *&v13[*(v11 + 36)], v15 = v14, sub_100028448(v13, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry), v14))
  {
    v16 = v15;
    sub_100570538();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v17 = sub_1005705D8();

    (*(v5 + 8))(v7, v4);
    v19[1] = v17;
    sub_100570078();

    sub_10000CC8C(v10, v3, &qword_1006E0DC0);
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();
    sub_10056F5B8();

    return sub_10001036C(v10, &qword_1006E0DC0);
  }

  else
  {
    if (qword_1006DF950 != -1)
    {
      swift_once();
    }

    *v3 = xmmword_1006FC100;
    *(v3 + 8) = *(&xmmword_1006FC100 + 8);
    *(v3 + 24) = *&algn_1006FC110[8];
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();

    return sub_10056F5B8();
  }
}

uint64_t sub_10002254C()
{
  v96 = sub_100009DCC(&qword_1006E0DE8);
  __chkstk_darwin(v96);
  v99 = &v81 - v1;
  v86 = sub_10056F198();
  v88 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100009DCC(&qword_1006E0C68);
  __chkstk_darwin(v95);
  v97 = &v81 - v3;
  v4 = sub_100009DCC(&qword_1006E0618);
  v5 = __chkstk_darwin(v4 - 8);
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v101 = &v81 - v8;
  __chkstk_darwin(v7);
  v10 = &v81 - v9;
  v11 = type metadata accessor for WidgetMusicItem();
  v98 = *(v11 - 1);
  v12 = __chkstk_darwin(v11);
  v82 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v81 - v14;
  v16 = sub_1005724A8();
  v91 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v89 = &v81 - v20;
  v21 = type metadata accessor for WidgetMusicRecommendation(0);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v26 = __chkstk_darwin(v25);
  v92 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v81 - v28;
  sub_1000A81BC(&v81 - v28);
  v93 = v25;
  sub_100028C7C(&v29[*(v25 + 20)], v24, type metadata accessor for WidgetMusicRecommendation);
  sub_100028448(v29, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v30 = *&v24[*(v22 + 40)];

  sub_100028448(v24, type metadata accessor for WidgetMusicRecommendation);
  type metadata accessor for RecommendationsWidgetContentView(0);
  v94 = v0;
  v31 = v89;
  sub_1000A8194(v89);
  v32 = v19;
  v33 = v91;
  (*(v91 + 32))(v32, v31, v16);
  v34 = (*(v33 + 88))(v32, v16);
  if (v34 == enum case for WidgetFamily.systemMedium(_:))
  {
    v35 = 2;
  }

  else if (v34 == enum case for WidgetFamily.systemLarge(_:))
  {
    v35 = 4;
  }

  else if (v34 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v35 = 8;
  }

  else
  {
    (*(v33 + 8))(v32, v16);
    v35 = 0;
  }

  result = sub_100074754(v35, v30);
  v91 = v39;
  v40 = v38 >> 1;
  if (v37 != v38 >> 1)
  {
    v42 = v37;
    v81 = result;
    v43 = v99;
    v89 = v98 + 56;
    v90 = v15;
    v83 = (v88 + 1);
    v87 = v38 >> 1;
    v88 = (v98 + 48);
    v100 = v10;
    while (1)
    {
      if (v42 >= v40)
      {
        __break(1u);
        return result;
      }

      v44 = v98;
      sub_100028C7C(v91 + *(v98 + 72) * v42, v15, type metadata accessor for WidgetMusicItem);
      sub_100028C7C(v15, v10, type metadata accessor for WidgetMusicItem);
      (*(v44 + 56))(v10, 0, 1, v11);
      v45 = v97;
      sub_10000CC8C(v94, v97, &qword_1006E0C68);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = v92;
        sub_100028CE4(v45, v92, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
      }

      else
      {
        sub_100573438();
        v47 = sub_10056F9D8();
        sub_10056DE58();

        v48 = v85;
        sub_10056F188();
        v46 = v92;
        swift_getAtKeyPath();

        (*v83)(v48, v86);
      }

      v49 = v101;
      sub_10000CC8C(v46 + *(v93 + 28), v101, &qword_1006E0618);
      sub_100028448(v46, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
      v50 = *(v96 + 48);
      v51 = v100;
      sub_10000CC8C(v100, v43, &qword_1006E0618);
      sub_10000CC8C(v49, v43 + v50, &qword_1006E0618);
      v52 = *v88;
      if ((*v88)(v43, 1, v11) == 1)
      {
        break;
      }

      v53 = v84;
      sub_10000CC8C(v43, v84, &qword_1006E0618);
      if (v52(v43 + v50, 1, v11) == 1)
      {
        sub_10001036C(v101, &qword_1006E0618);
        v10 = v100;
        sub_10001036C(v100, &qword_1006E0618);
        v15 = v90;
        sub_100028448(v90, type metadata accessor for WidgetMusicItem);
        sub_100028448(v53, type metadata accessor for WidgetMusicItem);
LABEL_20:
        v54 = v43;
        v55 = &qword_1006E0DE8;
        goto LABEL_21;
      }

      v56 = v82;
      sub_100028CE4(v43 + v50, v82, type metadata accessor for WidgetMusicItem);
      v57 = v11[9];
      v58 = *(v53 + v57);
      v59 = *(v53 + v57 + 8);
      v60 = (v56 + v57);
      v10 = v100;
      v15 = v90;
      if ((v58 != *v60 || v59 != v60[1]) && (sub_100574498() & 1) == 0)
      {
        if ((v61 = v11[10], v62 = (v53 + v61), (v63 = *(v53 + v61 + 8)) == 0) || (v64 = (v56 + v61), (v65 = v64[1]) == 0) || (*v62 != *v64 || v63 != v65) && (sub_100574498() & 1) == 0)
        {
          v66 = v11[11];
          v67 = *(v53 + v66);
          v68 = *(v53 + v66 + 8);
          v69 = (v56 + v66);
          if ((v67 != *v69 || v68 != v69[1]) && (sub_100574498() & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      v70 = v11[12];
      v71 = (v53 + v70);
      v72 = *(v53 + v70 + 8);
      v73 = (v56 + v70);
      v74 = v73[1];
      if (v72)
      {
        if (v74 && (*v71 == *v73 && v72 == v74 || (sub_100574498() & 1) != 0))
        {
LABEL_50:
          sub_100028448(v56, type metadata accessor for WidgetMusicItem);
          sub_10001036C(v101, &qword_1006E0618);
          sub_10001036C(v10, &qword_1006E0618);
          sub_100028448(v15, type metadata accessor for WidgetMusicItem);
          sub_100028448(v53, type metadata accessor for WidgetMusicItem);
          v43 = v99;
LABEL_51:
          sub_10001036C(v43, &qword_1006E0618);
LABEL_52:
          v41 = 1;
          goto LABEL_53;
        }
      }

      else if (!v74)
      {
        goto LABEL_50;
      }

      v75 = v11[13];
      v76 = (v53 + v75);
      v77 = *(v53 + v75 + 8);
      v78 = (v56 + v75);
      v79 = v78[1];
      if (!v77)
      {
        if (!v79)
        {
          goto LABEL_50;
        }

LABEL_49:
        sub_100028448(v56, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v101, &qword_1006E0618);
        sub_10001036C(v10, &qword_1006E0618);
        sub_100028448(v15, type metadata accessor for WidgetMusicItem);
        sub_100028448(v53, type metadata accessor for WidgetMusicItem);
        v54 = v99;
        v55 = &qword_1006E0618;
LABEL_21:
        result = sub_10001036C(v54, v55);
        goto LABEL_22;
      }

      if (!v79)
      {
        goto LABEL_49;
      }

      if (*v76 == *v78 && v77 == v79)
      {
        goto LABEL_50;
      }

      v80 = sub_100574498();
      sub_100028448(v56, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v101, &qword_1006E0618);
      sub_10001036C(v10, &qword_1006E0618);
      sub_100028448(v15, type metadata accessor for WidgetMusicItem);
      sub_100028448(v53, type metadata accessor for WidgetMusicItem);
      result = sub_10001036C(v99, &qword_1006E0618);
      if (v80)
      {
        goto LABEL_52;
      }

LABEL_22:
      ++v42;
      v40 = v87;
      if (v87 == v42)
      {
        v41 = 0;
        goto LABEL_53;
      }
    }

    sub_10001036C(v49, &qword_1006E0618);
    sub_10001036C(v51, &qword_1006E0618);
    v15 = v90;
    sub_100028448(v90, type metadata accessor for WidgetMusicItem);
    v10 = v51;
    if (v52(v43 + v50, 1, v11) == 1)
    {
      goto LABEL_51;
    }

    goto LABEL_20;
  }

  v41 = 0;
LABEL_53:
  swift_unknownObjectRelease();
  return v41;
}

uint64_t sub_1000230F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v357 = a2;
  v3 = sub_100009DCC(&qword_1006E0FA0);
  __chkstk_darwin(v3);
  v334 = &v296 - v4;
  v5 = sub_100009DCC(&qword_1006E0FA8);
  v332 = *(v5 - 8);
  __chkstk_darwin(v5);
  v313 = &v296 - v6;
  v7 = sub_10056EAC8();
  v311 = *(v7 - 8);
  v312 = v7;
  v8 = __chkstk_darwin(v7);
  v310 = &v296 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v325 = &v296 - v10;
  v308 = sub_100009DCC(&qword_1006E0FB0);
  v11 = __chkstk_darwin(v308);
  v307 = &v296 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v306 = &v296 - v13;
  v305 = sub_100009DCC(&qword_1006E0FB8);
  v14 = __chkstk_darwin(v305);
  v309 = &v296 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v349 = &v296 - v16;
  v17 = sub_100009DCC(&qword_1006E0528);
  __chkstk_darwin(v17 - 8);
  v320 = &v296 - v18;
  v321 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v319 = *(v321 - 8);
  __chkstk_darwin(v321);
  v329 = &v296 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_100009DCC(&qword_1006E0DE8);
  __chkstk_darwin(v316);
  v317 = &v296 - v20;
  v343 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v21 = __chkstk_darwin(v343);
  v318 = &v296 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v315 = &v296 - v23;
  v24 = sub_100009DCC(&qword_1006E0FC0);
  v25 = __chkstk_darwin(v24 - 8);
  v330 = &v296 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v331 = &v296 - v27;
  v28 = sub_100009DCC(&qword_1006E0FC8);
  v29 = __chkstk_darwin(v28 - 8);
  v342 = &v296 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v340 = (&v296 - v31);
  v32 = sub_100009DCC(&qword_1006E0FD0);
  v33 = __chkstk_darwin(v32 - 8);
  v341 = &v296 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v338 = (&v296 - v35);
  v36 = sub_100009DCC(&qword_1006E0FD8);
  v37 = __chkstk_darwin(v36 - 8);
  v339 = &v296 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v337 = (&v296 - v39);
  v40 = sub_100009DCC(&qword_1006E0FE0);
  v41 = __chkstk_darwin(v40 - 8);
  v328 = &v296 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v352 = &v296 - v44;
  __chkstk_darwin(v43);
  v351 = &v296 - v45;
  v336 = sub_100009DCC(&qword_1006E0FE8);
  __chkstk_darwin(v336);
  v350 = (&v296 - v46);
  v335 = sub_100009DCC(&qword_1006E0FF0);
  __chkstk_darwin(v335);
  v366 = &v296 - v47;
  v48 = sub_100009DCC(&qword_1006E0FF8);
  __chkstk_darwin(v48 - 8);
  v322 = &v296 - v49;
  v361 = sub_1005724A8();
  v347 = *(v361 - 8);
  v50 = __chkstk_darwin(v361);
  v346 = &v296 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v345 = &v296 - v52;
  v344 = sub_100009DCC(&qword_1006E1000);
  __chkstk_darwin(v344);
  v367 = (&v296 - v53);
  v362 = sub_100009DCC(&qword_1006E1008);
  __chkstk_darwin(v362);
  v363 = &v296 - v54;
  v364 = sub_100009DCC(&qword_1006E1010);
  __chkstk_darwin(v364);
  v365 = &v296 - v55;
  v56 = sub_100009DCC(&qword_1006E1018);
  v326 = *(v56 - 8);
  v327 = v56;
  __chkstk_darwin(v56);
  v358 = &v296 - v57;
  v353 = sub_100009DCC(&qword_1006E1020);
  __chkstk_darwin(v353);
  v354 = (&v296 - v58);
  v59 = type metadata accessor for WidgetMusicItem();
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v359 = (&v296 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_100009DCC(&qword_1006E1028);
  v63 = __chkstk_darwin(v62 - 8);
  v356 = &v296 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v355 = &v296 - v65;
  v66 = sub_100009DCC(&qword_1006E0618);
  v67 = __chkstk_darwin(v66 - 8);
  v304 = &v296 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v323 = &v296 - v70;
  v71 = __chkstk_darwin(v69);
  v324 = &v296 - v72;
  v73 = __chkstk_darwin(v71);
  v75 = &v296 - v74;
  __chkstk_darwin(v73);
  v77 = &v296 - v76;
  v360 = a1;
  sub_10000CC8C(a1, &v296 - v76, &qword_1006E0618);
  v314 = v60;
  v80 = *(v60 + 48);
  v78 = v60 + 48;
  v79 = v80;
  v81 = v80(v77, 1, v59);
  v333 = v5;
  if (v81 == 1)
  {
    sub_10001036C(v77, &qword_1006E0618);
    v374 = 0u;
    v375 = 0u;
    v376 = 0;
  }

  else
  {
    *(&v375 + 1) = v59;
    v376 = &off_100681290;
    v82 = sub_10002AB7C(&v374);
    sub_100028CE4(v77, v82, type metadata accessor for WidgetMusicItem);
  }

  v83 = Corner.small.unsafeMutableAddressor();
  v84 = *v83;
  v85 = v83[1];
  v86 = *(v83 + 16);
  v369 = v374;
  v370 = v375;
  v371 = v376;
  v87 = sub_10056FA88();
  sub_10056E598();
  LOBYTE(v368[0]) = 0;
  v374 = v369;
  v375 = v370;
  v376 = v371;
  v377 = v84;
  v378 = v85;
  v379 = v86;
  v380 = v87;
  v381 = v88;
  v382 = v89;
  v383 = v90;
  v384 = v91;
  v385 = 0;
  sub_10000CC8C(v360, v75, &qword_1006E0618);
  if (v79(v75, 1, v59) != 1)
  {
    v94 = v359;
    sub_100028CE4(v75, v359, type metadata accessor for WidgetMusicItem);
    v95 = v94[4];
    v96 = v94[5];
    v348 = v59;
    v298 = v78;
    v299 = v3;
    v297 = v79;
    v300 = v95;
    if (v96)
    {
      v97 = HIBYTE(v96) & 0xF;
      v98 = v95 & 0xFFFFFFFFFFFFLL;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v97 = v98;
      }

      v302 = v97 != 0;
    }

    else
    {
      v302 = 0;
    }

    v99 = *v94;
    v100 = v94[1];
    v101 = sub_100054170(&off_1006800A8);

    v301 = v96;

    v102 = Text.init(optional:options:)(v99, v100, v101);
    v104 = v103;
    v303 = v105;
    v107 = v106;
    v108 = sub_100009DCC(&qword_1006E1048);
    v109 = v367;
    v110 = (v367 + *(v108 + 36));
    v111 = *(sub_100009DCC(&qword_1006E1050) + 28);
    v112 = enum case for Text.Case.uppercase(_:);
    v113 = sub_10056FE68();
    v114 = *(v113 - 8);
    (*(v114 + 104))(v110 + v111, v112, v113);
    (*(v114 + 56))(v110 + v111, 0, 1, v113);
    *v110 = swift_getKeyPath();
    *v109 = v102;
    v109[1] = v104;
    v109[2] = v303;
    v109[3] = v107;
    KeyPath = swift_getKeyPath();
    v116 = v109 + *(v344 + 36);
    *v116 = KeyPath;
    *(v116 + 1) = 1;
    v116[16] = 0;
    v117 = type metadata accessor for SongCellView(0);
    v118 = v345;
    sub_1000A8194(v345);
    v120 = v346;
    v119 = v347;
    v121 = v361;
    (*(v347 + 104))(v346, enum case for WidgetFamily.systemMedium(_:), v361);
    sub_1000283AC(&qword_1006E0E58, &type metadata accessor for WidgetFamily);
    sub_100572CB8();
    sub_100572CB8();
    v122 = *(v119 + 8);
    v122(v120, v121);
    v122(v118, v121);
    if (v369 == v368[0])
    {
      v123 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption2];
      [v123 scaledValueForValue:10.0];

      sub_10056FB88();
      v124 = sub_10056FB38();
      v125 = v322;
      (*(*(v124 - 8) + 56))(v322, 1, 1, v124);
      v126 = sub_10056FBA8();
      sub_10001036C(v125, &qword_1006E0FF8);
    }

    else
    {
      sub_10056FC38();
      v126 = sub_10056FB28();
    }

    v127 = v348;
    v128 = v366;
    v129 = v365;
    v130 = v364;
    v131 = v363;
    v132 = v362;
    v133 = swift_getKeyPath();
    sub_100019B40(v367, v131, &qword_1006E1000);
    v134 = (v131 + *(v132 + 36));
    *v134 = v133;
    v134[1] = v126;
    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    v135 = sub_100009DCC(&qword_1006E1058);
    v136 = sub_10000C49C(v135, qword_1006FC0D8);
    sub_10000CC8C(v136, v129 + *(v130 + 36), &qword_1006E1058);
    sub_100019B40(v131, v129, &qword_1006E1008);
    v137 = enum case for DynamicTypeSize.xLarge(_:);
    v138 = sub_10056EBD8();
    (*(*(v138 - 8) + 104))(v128, v137, v138);
    sub_1000283AC(&qword_1006E1060, &type metadata accessor for DynamicTypeSize);
    if (sub_1005727E8())
    {
      v322 = v117;
      sub_10002A768();
      sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0);
      sub_1005700D8();
      sub_10001036C(v128, &qword_1006E0FF0);
      sub_10001036C(v129, &qword_1006E1010);
      v139 = v359;
      v140 = v359[3];
      *&v369 = v359[2];
      *(&v369 + 1) = v140;
      sub_10001B550();

      v141 = sub_10056FF28();
      v344 = v142;
      v345 = v141;
      LODWORD(v335) = v143;
      v346 = v144;
      v347 = v136;
      v145 = *(v139 + *(v127 + 60));
      v146 = *(v145 + 16);
      if (v146)
      {
        v147 = (v145 + 32);
        if (qword_1006DF8E8 != -1)
        {
          swift_once();
        }

        v148 = 0;
        v149 = 0;
        v150 = _swiftEmptyArrayStorage;
        v151 = 0xE000000000000000;
        do
        {
          LODWORD(v362) = v149;
          v367 = v151;
          v363 = v150;
          v364 = v148;
          v366 = v146;
          v152 = *v147;
          v365 = v147 + 1;
          TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07A0, v152);
          v154 = v153;
          v156 = v155;
          v158 = v157;
          sub_10056FB08();
          sub_10056FB88();
          sub_10056FBE8();

          v159 = sub_10056FE88();
          v161 = v160;
          v163 = v162;
          v361 = v164;

          sub_10001B5A4(v154, v156, v158 & 1);

          LOBYTE(v156) = v362;
          v165 = v364;
          v166 = v159;
          v167 = v161;
          v148 = sub_10056FE58();
          v169 = v168;
          v150 = v170;
          LOBYTE(v168) = v156 & 1;
          v172 = v171;
          v173 = v165;
          v174 = v169;
          sub_10001B5A4(v173, v367, v168);

          v175 = v163 & 1;
          v147 = v365;
          v176 = v366;
          sub_10001B5A4(v166, v167, v175);

          v177 = v148;
          v151 = v172;
          v149 = v174;
          v146 = v176 - 1;
        }

        while (v146);
      }

      else
      {
        v177 = 0;
        LOBYTE(v174) = 0;
        v172 = 0xE000000000000000;
      }

      v178 = v335;
      v179 = v344;
      v127 = v345;
      v180 = sub_10056FE58();
      v181 = v177;
      v182 = v180;
      v367 = v183;
      v185 = v184;
      v366 = v186;
      sub_10001B5A4(v181, v172, v174 & 1);

      sub_10001B5A4(v127, v179, v178 & 1);

      sub_10002569C();
      sub_10056FB68();
      sub_10056FBE8();

      v187 = v367;
      v138 = sub_10056FE88();
      v117 = v188;
      LOBYTE(v127) = v189;

      sub_10001B5A4(v182, v187, v185 & 1);

      if (qword_1006DF930 == -1)
      {
LABEL_25:
        v366 = sub_10056FE18();
        v365 = v190;
        LODWORD(v364) = v191;
        v367 = v192;
        sub_10001B5A4(v138, v117, v127 & 1);

        v193 = v302;
        v361 = v302;
        v194 = swift_getKeyPath();
        v195 = sub_100054170(&off_1006800D0);
        v196 = Text.init(optional:options:)(v300, v301, v195);
        v198 = v197;
        v200 = v199;
        v202 = v201;
        v203 = sub_10002569C();
        v204 = swift_getKeyPath();
        v205 = sub_100009DCC(&qword_1006E10D8);
        v206 = v350;
        sub_10000CC8C(v347, v350 + *(v205 + 36), &qword_1006E1058);
        *v206 = v196;
        v206[1] = v198;
        v206[2] = v200;
        v206[3] = v202;
        v206[4] = v204;
        v206[5] = v203;
        v207 = swift_getKeyPath();
        v208 = v206 + *(v336 + 36);
        *v208 = v207;
        *(v208 + 1) = 1;
        v208[16] = 0;
        v209 = sub_10056FA08();
        v210 = v366;
        *&v369 = v366;
        v211 = v365;
        *(&v369 + 1) = v365;
        LOBYTE(v200) = v364 & 1;
        LOBYTE(v370) = v364 & 1;
        LODWORD(v362) = v364 & 1;
        *(&v370 + 1) = v367;
        v363 = v194;
        v371 = v194;
        v372 = v361;
        v373 = !v193;
        v212 = v352;
        *v352 = v209;
        v361 = &v212[*(sub_100009DCC(&qword_1006E10E0) + 44)];
        sub_10002AAC4(v210, v211, v200);

        v213 = sub_10056F378();
        v214 = v337;
        *v337 = v213;
        *(v214 + 8) = 0;
        *(v214 + 16) = 0;
        v215 = sub_100009DCC(&qword_1006E10E8);
        v216 = v359;
        sub_100025C20(v359, v358, &v369, v206, v214 + *(v215 + 44));
        v217 = sub_10056F378();
        v218 = v338;
        *v338 = v217;
        *(v218 + 8) = 0;
        *(v218 + 16) = 0;
        v219 = sub_100009DCC(&qword_1006E10F0);
        sub_1000263E8(v216, &v369, v206, v218 + *(v219 + 44));
        v220 = sub_10056F378();
        v221 = v340;
        *v340 = v220;
        *(v221 + 8) = 0;
        *(v221 + 16) = 0;
        v222 = sub_100009DCC(&qword_1006E10F8);
        sub_100026878(&v369, v221 + *(v222 + 44));
        v223 = v339;
        sub_10000CC8C(v214, v339, &qword_1006E0FD8);
        v224 = v341;
        sub_10000CC8C(v218, v341, &qword_1006E0FD0);
        v225 = v342;
        sub_10000CC8C(v221, v342, &qword_1006E0FC8);
        v226 = v361;
        sub_10000CC8C(v223, v361, &qword_1006E0FD8);
        v227 = sub_100009DCC(&qword_1006E1100);
        sub_10000CC8C(v224, v226 + *(v227 + 48), &qword_1006E0FD0);
        sub_10000CC8C(v225, v226 + *(v227 + 64), &qword_1006E0FC8);
        sub_10001036C(v221, &qword_1006E0FC8);
        sub_10001036C(v218, &qword_1006E0FD0);
        sub_10001036C(v214, &qword_1006E0FD8);
        sub_10001036C(v225, &qword_1006E0FC8);
        sub_10001036C(v224, &qword_1006E0FD0);
        sub_10001036C(v223, &qword_1006E0FD8);
        sub_10001B5A4(v366, v365, v362);

        sub_100019B40(v352, v351, &qword_1006E0FE0);
        v228 = v348;
        if ((*(v359 + *(v348 + 64)) & 1) == 0)
        {
          v240 = v331;
          (*(v332 + 56))(v331, 1, 1, v333);
LABEL_45:
          v286 = v330;
          v287 = v328;
          v288 = v351;
          sub_10000CC8C(v351, v328, &qword_1006E0FE0);
          sub_10000CC8C(v240, v286, &qword_1006E0FC0);
          v289 = v334;
          sub_10000CC8C(v287, v334, &qword_1006E0FE0);
          v290 = sub_100009DCC(&qword_1006E1108);
          v291 = v289 + *(v290 + 48);
          *v291 = 0;
          *(v291 + 8) = 0;
          sub_10000CC8C(v286, v289 + *(v290 + 64), &qword_1006E0FC0);
          sub_10001036C(v286, &qword_1006E0FC0);
          sub_10001036C(v287, &qword_1006E0FE0);
          sub_10000CC8C(v289, v354, &qword_1006E0FA0);
          swift_storeEnumTagMultiPayload();
          sub_100010BC0(&qword_1006E1030, &qword_1006E0FA0);
          v93 = v355;
          sub_10056F5B8();
          sub_10001B5A4(v366, v365, v364 & 1);

          sub_10001036C(v289, &qword_1006E0FA0);
          sub_10001036C(v240, &qword_1006E0FC0);
          sub_10001036C(v288, &qword_1006E0FE0);
          sub_10001036C(v350, &qword_1006E0FE8);
          (*(v326 + 8))(v358, v327);
          sub_100028448(v359, type metadata accessor for WidgetMusicItem);
          goto LABEL_46;
        }

        v229 = v324;
        sub_100028C7C(v359, v324, type metadata accessor for WidgetMusicItem);
        (*(v314 + 56))(v229, 0, 1, v228);
        v362 = *(v322 + 5);
        v230 = v315;
        sub_1000A81BC(v315);
        v231 = v323;
        sub_10000CC8C(v230 + *(v343 + 28), v323, &qword_1006E0618);
        sub_100028448(v230, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
        v232 = v317;
        v233 = *(v316 + 48);
        sub_10000CC8C(v229, v317, &qword_1006E0618);
        sub_10000CC8C(v231, v232 + v233, &qword_1006E0618);
        v234 = v297;
        if (v297(v232, 1, v228) == 1)
        {
          sub_10001036C(v231, &qword_1006E0618);
          sub_10001036C(v229, &qword_1006E0618);
          v235 = v234(v232 + v233, 1, v228);
          v237 = v318;
          v236 = v319;
          v238 = v343;
          if (v235 == 1)
          {
            sub_10001036C(v232, &qword_1006E0618);
            v239 = 1;
LABEL_33:
            v244 = v320;
            v243 = v321;
LABEL_35:
            sub_1000A81BC(v237);
            sub_10000CC8C(v237 + *(v238 + 32), v244, &qword_1006E0528);
            sub_100028448(v237, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
            v245 = *(v236 + 48);
            if (v245(v244, 1, v243) != 1)
            {
              v246 = v329;
              sub_100028CE4(v244, v329, type metadata accessor for NowPlayingDataProvider.ItemProgress);
              goto LABEL_40;
            }

            v246 = v329;
            if (qword_1006DF8D8 != -1)
            {
              goto LABEL_50;
            }

            while (1)
            {
              v247 = sub_10000C49C(v243, qword_1006FC048);
              sub_100028C7C(v247, v246, type metadata accessor for NowPlayingDataProvider.ItemProgress);
              if (v245(v244, 1, v243) != 1)
              {
                sub_10001036C(v244, &qword_1006E0528);
              }

LABEL_40:
              v248 = *(v243 + 20);
              v245 = sub_10056CAA8();
              sub_1000283AC(&qword_1006E1110, &type metadata accessor for Date);
              if (sub_1005727C8())
              {
                break;
              }

              __break(1u);
LABEL_50:
              swift_once();
            }

            v249 = *(v245 - 1);
            v250 = v249[2];
            LODWORD(v362) = v239;
            v251 = v306;
            v250(v306, v246, v245);
            v252 = v308;
            v250((v251 + *(v308 + 48)), v246 + v248, v245);
            v253 = v307;
            sub_10000CC8C(v251, v307, &qword_1006E0FB0);
            v361 = *(v252 + 48);
            v254 = v249[4];
            v255 = v349;
            v254(v349, v253, v245);
            v256 = v249[1];
            v256(v253 + v361, v245);
            sub_100019B40(v251, v253, &qword_1006E0FB0);
            v254(v255 + *(v305 + 36), v253 + *(v252 + 48), v245);
            v256(v253, v245);
            if (v362)
            {
              v257 = v325;
              sub_100026B58(v325);
              v258 = &type metadata for TogglePlaybackAppIntent;
              v259 = sub_10002AB28();
              v261 = v311;
              v260 = v312;
            }

            else
            {
              v261 = v311;
              v260 = v312;
              v257 = v325;
              (*(v311 + 104))(v325, enum case for PlaybackButton.State.unplayed(_:), v312);
              v262 = (v359 + *(v348 + 44));
              v263 = *v262;
              v264 = v262[1];

              v265 = sub_10002C7C0(v263, v264, 0, 0);
              v267 = v266;
              v269 = v268;
              v259 = sub_10002AAD4();
              v368[0] = v265;
              v368[1] = v267;
              v368[2] = v269;
              v258 = &type metadata for StartPlaybackAppIntent;
            }

            v368[3] = v258;
            v368[4] = v259;
            v270 = sub_10000C8CC(v368, v258);
            sub_10000CC8C(v349, v309, &qword_1006E0FB8);
            v271 = (*(v261 + 16))(v310, v257, v260);
            __chkstk_darwin(v271);
            (*(v273 + 16))(&v296 - ((v272 + 15) & 0xFFFFFFFFFFFFFFF0), v270, v258);
            v274 = v313;
            sub_10056EAB8();
            v275 = sub_10056FA68();
            sub_10056E598();
            v277 = v276;
            v279 = v278;
            v281 = v280;
            v283 = v282;
            (*(v261 + 8))(v325, v260);
            sub_10001036C(v349, &qword_1006E0FB8);
            sub_100028448(v329, type metadata accessor for NowPlayingDataProvider.ItemProgress);
            v284 = v333;
            v285 = v274 + *(v333 + 36);
            *v285 = v275;
            *(v285 + 8) = v277;
            *(v285 + 16) = v279;
            *(v285 + 24) = v281;
            *(v285 + 32) = v283;
            *(v285 + 40) = 0;
            v240 = v331;
            sub_100019B40(v274, v331, &qword_1006E0FA8);
            (*(v332 + 56))(v240, 0, 1, v284);
            sub_100010474(v368);
            goto LABEL_45;
          }
        }

        else
        {
          v241 = v304;
          sub_10000CC8C(v232, v304, &qword_1006E0618);
          v242 = v234(v232 + v233, 1, v228);
          v237 = v318;
          v236 = v319;
          if (v242 != 1)
          {
            v239 = sub_10003CD6C(v241, v232 + v233);
            sub_100028448(v232 + v233, type metadata accessor for WidgetMusicItem);
            sub_10001036C(v323, &qword_1006E0618);
            sub_10001036C(v324, &qword_1006E0618);
            sub_100028448(v241, type metadata accessor for WidgetMusicItem);
            sub_10001036C(v232, &qword_1006E0618);
            v244 = v320;
            v243 = v321;
            v238 = v343;
            goto LABEL_35;
          }

          sub_10001036C(v323, &qword_1006E0618);
          sub_10001036C(v324, &qword_1006E0618);
          sub_100028448(v241, type metadata accessor for WidgetMusicItem);
          v238 = v343;
        }

        sub_10001036C(v232, &qword_1006E0DE8);
        v239 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_25;
  }

  sub_10001036C(v75, &qword_1006E0618);
  v92 = v354;
  *v354 = 0;
  *(v92 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100010BC0(&qword_1006E1030, &qword_1006E0FA0);
  v93 = v355;
  sub_10056F5B8();
LABEL_46:
  v292 = v356;
  sub_10000CC8C(&v374, &v369, &qword_1006E1038);
  sub_10000CC8C(v93, v292, &qword_1006E1028);
  v293 = v357;
  sub_10000CC8C(&v369, v357, &qword_1006E1038);
  v294 = sub_100009DCC(&qword_1006E1040);
  sub_10000CC8C(v292, v293 + *(v294 + 48), &qword_1006E1028);
  sub_10001036C(v93, &qword_1006E1028);
  sub_10001036C(&v374, &qword_1006E1038);
  sub_10001036C(v292, &qword_1006E1028);
  return sub_10001036C(&v369, &qword_1006E1038);
}

uint64_t sub_10002569C()
{
  v1 = v0;
  v2 = sub_10056EBD8();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = __chkstk_darwin(v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v37 - v5;
  v6 = sub_10056FBF8();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005724A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009DCC(&qword_1006E0618);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  sub_10000CC8C(v1, &v37 - v16, &qword_1006E0618);
  v18 = type metadata accessor for WidgetMusicItem();
  v19 = *(*(v18 - 8) + 48);
  if (v19(v17, 1, v18) == 1)
  {
    sub_10001036C(v17, &qword_1006E0618);
    LODWORD(v20) = 0;
  }

  else
  {
    v20 = *(v17 + 1);

    sub_100028448(v17, type metadata accessor for WidgetMusicItem);
    if (v20)
    {

      LODWORD(v20) = 1;
    }
  }

  sub_10000CC8C(v1, v15, &qword_1006E0618);
  if (v19(v15, 1, v18) == 1)
  {
    sub_10001036C(v15, &qword_1006E0618);
    v21 = 0;
  }

  else
  {
    v22 = sub_100038C80();
    sub_100028448(v15, type metadata accessor for WidgetMusicItem);
    v23 = v22[2];

    v21 = v23 != 0;
  }

  type metadata accessor for SongCellView(0);
  sub_1000A8194(v11);
  v24 = (*(v9 + 88))(v11, v8);
  if (v24 == enum case for WidgetFamily.systemMedium(_:))
  {
    if ((v20 | v21))
    {
      sub_10056FC18();
LABEL_17:
      v32 = v42;
      v31 = v43;
      v33 = v44;
      (*(v43 + 104))(v42, enum case for Font.Leading.tight(_:), v44);
      v34 = sub_10056FC28();

      (*(v31 + 8))(v32, v33);
      return v34;
    }

    return sub_10056FB08();
  }

  if (v24 == enum case for WidgetFamily.systemLarge(_:))
  {
    v25 = v38;
    sub_1000A840C(v38);
    v27 = v39;
    v26 = v40;
    v28 = v41;
    (*(v40 + 104))(v39, enum case for DynamicTypeSize.xLarge(_:), v41);
    sub_1000283AC(&qword_1006E1170, &type metadata accessor for DynamicTypeSize);
    v29 = sub_1005727B8();
    v30 = *(v26 + 8);
    v30(v27, v28);
    v30(v25, v28);
    if ((v29 & 1) == 0)
    {
      return sub_10056FB08();
    }

LABEL_15:
    if ((v20 | v21))
    {
      sub_10056FC48();
      goto LABEL_17;
    }

    return sub_10056FB08();
  }

  if (v24 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    goto LABEL_15;
  }

  v36 = sub_10056FB08();
  (*(v9 + 8))(v11, v8);
  return v36;
}

uint64_t sub_100025C20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a4;
  v66 = a5;
  v8 = sub_100009DCC(&qword_1006E1138);
  v9 = __chkstk_darwin(v8 - 8);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v58 - v11;
  v13 = type metadata accessor for FriendsBadgesView(0);
  __chkstk_darwin(v13);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100009DCC(&qword_1006E1148);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v19 = sub_100009DCC(&qword_1006E1150);
  v20 = __chkstk_darwin(v19 - 8);
  v65 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  v24 = a1[1];
  v64 = v12;
  if (v24)
  {
    v25 = sub_100009DCC(&qword_1006E1018);
    (*(*(v25 - 8) + 16))(v18, a2, v25);
    swift_storeEnumTagMultiPayload();
    v26 = sub_100010324(&qword_1006E1010);
    v63 = v18;
    v27 = v23;
    v28 = sub_100010324(&qword_1006E0FF0);
    v29 = sub_10002A768();
    v30 = sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0);
    v68 = v26;
    v69 = v28;
    v23 = v27;
    v70 = v29;
    v71 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1000283AC(&qword_1006E1158, type metadata accessor for FriendsBadgesView);
    sub_10056F5B8();
LABEL_5:
    v37 = sub_100009DCC(&qword_1006E1160);
    (*(*(v37 - 8) + 56))(v27, 0, 1, v37);
    goto LABEL_6;
  }

  v31 = sub_100038C80()[2];

  if (v31)
  {
    *v15 = sub_100038C80();
    v32 = *(v13 + 20);
    *(v15 + v32) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    sub_100028C7C(v15, v18, type metadata accessor for FriendsBadgesView);
    swift_storeEnumTagMultiPayload();
    v62 = sub_100009DCC(&qword_1006E1018);
    v33 = sub_100010324(&qword_1006E1010);
    v63 = v18;
    v27 = v23;
    v34 = sub_100010324(&qword_1006E0FF0);
    v35 = sub_10002A768();
    v36 = sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0);
    v68 = v33;
    v69 = v34;
    v23 = v27;
    v70 = v35;
    v71 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1000283AC(&qword_1006E1158, type metadata accessor for FriendsBadgesView);
    sub_10056F5B8();
    sub_100028448(v15, type metadata accessor for FriendsBadgesView);
    goto LABEL_5;
  }

  v57 = sub_100009DCC(&qword_1006E1160);
  (*(*(v57 - 8) + 56))(v23, 1, 1, v57);
LABEL_6:
  v38 = *a3;
  v39 = *(a3 + 8);
  v40 = *(a3 + 16);
  v41 = *(a3 + 32);
  v60 = *(a3 + 24);
  v58 = v38;
  v59 = v41;
  v63 = *(a3 + 40);
  LODWORD(v62) = *(a3 + 48);
  v42 = a1[5];
  if (v42)
  {
    if ((v42 & 0x2000000000000000) != 0)
    {
      v43 = HIBYTE(v42) & 0xF;
    }

    else
    {
      v43 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    v44 = v64;
    if (v43)
    {
      sub_10000CC8C(v61, v64, &qword_1006E0FE8);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }
  }

  else
  {
    v45 = 1;
    v44 = v64;
  }

  v46 = sub_100009DCC(&qword_1006E0FE8);
  (*(*(v46 - 8) + 56))(v44, v45, 1, v46);
  v47 = v23;
  v61 = v23;
  v48 = v65;
  sub_10000CC8C(v47, v65, &qword_1006E1150);
  v49 = v44;
  v50 = v67;
  sub_10000CC8C(v44, v67, &qword_1006E1138);
  v51 = v66;
  sub_10000CC8C(v48, v66, &qword_1006E1150);
  v52 = sub_100009DCC(&qword_1006E1168);
  v53 = v51 + *(v52 + 48);
  v54 = v58;
  v55 = v59;
  *v53 = v58;
  *(v53 + 8) = v39;
  *(v53 + 16) = v40;
  *(v53 + 24) = v60;
  *(v53 + 32) = v55;
  *(v53 + 40) = v63;
  *(v53 + 48) = v62;
  sub_10000CC8C(v50, v51 + *(v52 + 64), &qword_1006E1138);
  sub_10002AAC4(v54, v39, v40);

  sub_10002AAC4(v54, v39, v40);

  sub_10001036C(v49, &qword_1006E1138);
  sub_10001036C(v61, &qword_1006E1150);
  sub_10001036C(v50, &qword_1006E1138);
  sub_10001B5A4(v54, v39, v40);

  return sub_10001036C(v48, &qword_1006E1150);
}

uint64_t sub_1000263E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v44 = a4;
  v6 = sub_100009DCC(&qword_1006E1138);
  v7 = __chkstk_darwin(v6 - 8);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = type metadata accessor for FriendsBadgesView(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100009DCC(&qword_1006E1128);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = sub_100038C80()[2];

  v45 = v10;
  if (v21)
  {
    *v14 = sub_100038C80();
    v22 = *(v11 + 20);
    *(v14 + v22) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    sub_100028CE4(v14, v20, type metadata accessor for FriendsBadgesView);
    v23 = v20;
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    v23 = v20;
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  v25 = *a2;
  v24 = *(a2 + 8);
  v26 = *(a2 + 16);
  v27 = *(a2 + 32);
  v40 = *(a2 + 24);
  v43 = *(a2 + 40);
  v42 = *(a2 + 48);
  v28 = *(a1 + 40);
  if (v28 && ((v28 & 0x2000000000000000) != 0 ? (v29 = HIBYTE(v28) & 0xF) : (v29 = *(a1 + 32) & 0xFFFFFFFFFFFFLL), v29))
  {
    v30 = v45;
    sub_10000CC8C(v41, v45, &qword_1006E0FE8);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v45;
  }

  v32 = sub_100009DCC(&qword_1006E0FE8);
  (*(*(v32 - 8) + 56))(v30, v31, 1, v32);
  sub_10000CC8C(v23, v18, &qword_1006E1128);
  v33 = v46;
  sub_10000CC8C(v30, v46, &qword_1006E1138);
  v34 = v18;
  v41 = v18;
  v35 = v44;
  sub_10000CC8C(v34, v44, &qword_1006E1128);
  v36 = sub_100009DCC(&qword_1006E1140);
  v37 = v35 + *(v36 + 48);
  *v37 = v25;
  *(v37 + 8) = v24;
  *(v37 + 16) = v26;
  *(v37 + 24) = v40;
  *(v37 + 32) = v27;
  *(v37 + 40) = v43;
  *(v37 + 48) = v42;
  sub_10000CC8C(v33, v35 + *(v36 + 64), &qword_1006E1138);
  sub_10002AAC4(v25, v24, v26);

  sub_10002AAC4(v25, v24, v26);

  sub_10001036C(v30, &qword_1006E1138);
  sub_10001036C(v23, &qword_1006E1128);
  sub_10001036C(v33, &qword_1006E1138);
  sub_10001B5A4(v25, v24, v26);

  return sub_10001036C(v41, &qword_1006E1128);
}

uint64_t sub_100026878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for FriendsBadgesView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100009DCC(&qword_1006E1128);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = sub_100038C80()[2];

  if (v13)
  {
    *v6 = sub_100038C80();
    v14 = *(v3 + 20);
    *(v6 + v14) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    sub_100028CE4(v6, v12, type metadata accessor for FriendsBadgesView);
    (*(v4 + 56))(v12, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
  }

  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v26 = v12;
  v27 = v10;
  sub_10000CC8C(v12, v10, &qword_1006E1128);
  v22 = v28;
  sub_10000CC8C(v10, v28, &qword_1006E1128);
  v23 = v22 + *(sub_100009DCC(&qword_1006E1130) + 48);
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  *(v23 + 24) = v18;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  *(v23 + 48) = v21;
  sub_10002AAC4(v15, v16, v17);

  sub_10002AAC4(v15, v16, v17);

  sub_10001036C(v26, &qword_1006E1128);
  sub_10001B5A4(v15, v16, v17);

  return sub_10001036C(v27, &qword_1006E1128);
}

uint64_t sub_100026B58@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_100009DCC(&qword_1006E0528);
  __chkstk_darwin(v2 - 8);
  v32 = &v31 - v3;
  v4 = sub_100009DCC(&unk_1006E1E90);
  __chkstk_darwin(v4 - 8);
  v33 = &v31 - v5;
  v6 = sub_10056F198();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E0C68);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = *(type metadata accessor for SongCellView(0) + 20);
  v31 = v1;
  sub_10000CC8C(v1 + v18, v11, &qword_1006E0C68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100028CE4(v11, v17, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  }

  else
  {
    sub_100573438();
    v19 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();

    (*(v34 + 8))(v8, v35);
  }

  v20 = v17[*(v12 + 24)];
  sub_100028448(v17, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v21 = v36;
  if (v20 > 1)
  {
    v22 = &enum case for PlaybackButton.State.unplayed(_:);
    goto LABEL_15;
  }

  if (v20)
  {
    sub_1000A81BC(v15);
    v23 = v32;
    sub_10000CC8C(&v15[*(v12 + 32)], v32, &qword_1006E0528);
    sub_100028448(v15, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
    v24 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      sub_10001036C(v23, &qword_1006E0528);
      v25 = sub_10056CAA8();
      v26 = v33;
      (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
    }

    else
    {
      v26 = v33;
      sub_10000CC8C(v23 + *(v24 + 24), v33, &unk_1006E1E90);
      sub_100028448(v23, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v25 = sub_10056CAA8();
      v27 = *(v25 - 8);
      if ((*(v27 + 48))(v26, 1, v25) != 1)
      {
        (*(v27 + 32))(v21, v26, v25);
LABEL_14:
        v22 = &enum case for PlaybackButton.State.paused(_:);
        goto LABEL_15;
      }
    }

    sub_10056CA68();
    sub_10056CAA8();
    if ((*(*(v25 - 8) + 48))(v26, 1, v25) != 1)
    {
      sub_10001036C(v26, &unk_1006E1E90);
    }

    goto LABEL_14;
  }

  v22 = &enum case for PlaybackButton.State.playing(_:);
LABEL_15:
  v28 = *v22;
  v29 = sub_10056EAC8();
  return (*(*(v29 - 8) + 104))(v21, v28, v29);
}

uint64_t sub_100027108()
{
  v1 = sub_10056F808();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006E0F88);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_10056F218();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_100009DCC(&qword_1006E0F90);
  sub_1000230F4(v0, &v7[*(v8 + 44)]);
  sub_10056F7E8();
  sub_100010BC0(&qword_1006E0F98, &qword_1006E0F88);
  sub_1005701F8();
  (*(v2 + 8))(v4, v1);
  return sub_10001036C(v7, &qword_1006E0F88);
}

uint64_t sub_1000272C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FriendsBadgesView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_1005709F8();
  a1[1] = v7;
  sub_100009DCC(&qword_1006E1218);
  v32[1] = sub_10002A5C4(*v1);
  swift_getKeyPath();
  sub_100028C7C(v1, v6, type metadata accessor for FriendsBadgesView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_100028CE4(v6, v9 + v8, type metadata accessor for FriendsBadgesView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10002B07C;
  *(v10 + 24) = v9;
  sub_100009DCC(&qword_1006E1220);
  sub_100009DCC(&qword_1006E1228);
  sub_100010BC0(&qword_1006E1230, &qword_1006E1220);
  sub_10002B16C();
  sub_10002B220();
  sub_1005708B8();
  v11 = sub_10056FA68();
  sub_100028038();
  sub_10056E598();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(sub_100009DCC(&qword_1006E12A8) + 36);
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_10056FA58();
  sub_100028038();
  sub_10056E598();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = sub_100009DCC(&qword_1006E12B0);
  v31 = a1 + *(result + 36);
  *v31 = v21;
  *(v31 + 1) = v23;
  *(v31 + 2) = v25;
  *(v31 + 3) = v27;
  *(v31 + 4) = v29;
  v31[40] = 0;
  return result;
}

uint64_t sub_1000275BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a1;
  v50 = a3;
  v44 = sub_100009DCC(&qword_1006E12B8);
  __chkstk_darwin(v44);
  v7 = (&v40 - v6);
  v8 = sub_100009DCC(&qword_1006E12C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_100570558();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100009DCC(&qword_1006E12C8);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v16 = &v40 - v15;
  v17 = sub_100009DCC(&qword_1006E1290);
  __chkstk_darwin(v17 - 8);
  v43 = &v40 - v18;
  v46 = sub_100009DCC(&qword_1006E1278);
  __chkstk_darwin(v46);
  v20 = &v40 - v19;
  v21 = sub_100009DCC(&qword_1006E1270);
  v47 = *(v21 - 8);
  v48 = v21;
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  if (a2)
  {
    v40 = a2;
    sub_100570538();
    (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
    sub_1005705D8();
    v41 = a4;

    (*(v12 + 8))(v14, v11);
    sub_100572478();
    v24 = sub_100572488();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    sub_1005705C8();

    sub_10001036C(v10, &qword_1006E12C0);
    v25 = v42;
    v26 = v45;
    (*(v42 + 16))(v7, v16, v45);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E12A0);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0);
    v27 = v43;
    a4 = v41;
    sub_10056F5B8();

    (*(v25 + 8))(v16, v26);
  }

  else
  {
    *v7 = sub_100027D44;
    v7[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E12A0);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0);
    v27 = v43;
    sub_10056F5B8();
  }

  sub_100019B40(v27, v20, &qword_1006E1290);
  v28 = sub_10002B444();
  v29 = v46;
  View.corner(_:)();
  sub_10001036C(v20, &qword_1006E1278);
  v30 = sub_1005704D8();
  CFRange.init(_:)(v30);
  *&v51 = v29;
  *(&v51 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v48;
  View.border(_:corner:)();

  (*(v47 + 8))(v23, v31);
  sub_1005704A8();
  v32 = sub_1005704E8();

  v33 = a4 + *(sub_100009DCC(&qword_1006E1268) + 36);
  *v33 = v32;
  *(v33 + 8) = xmmword_10057C710;
  *(v33 + 24) = 0x3FF0000000000000;
  sub_100028038();
  sub_100028038();
  sub_1005709E8();
  sub_10056E888();
  v34 = (a4 + *(sub_100009DCC(&qword_1006E1258) + 36));
  v35 = v52;
  *v34 = v51;
  v34[1] = v35;
  v34[2] = v53;
  v36 = v49;
  v37 = -(sub_100028038() * v36);
  result = sub_100009DCC(&qword_1006E1228);
  v39 = a4 + *(result + 36);
  *v39 = v37;
  *(v39 + 8) = 0;
  return result;
}

uint64_t sub_100027D44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009DCC(&qword_1006E12D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E12D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = sub_100009DCC(&qword_1006DFD30);
  (*(*(v12 - 8) + 56))(v7, 8, 11, v12);
  sub_10056E928();
  ArtworkImage.Placeholder.view(availableSize:)(v11, v13, v14);
  sub_100028448(v7, type metadata accessor for ArtworkImage.Placeholder);
  v15 = ArtworkImage.Placeholder.View.Style.widgets.unsafeMutableAddressor();
  sub_100028C7C(v15, v4, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  v16 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.placeholderStyle(_:)(v4, v8, OpaqueTypeConformance2);
  sub_10001036C(v4, &qword_1006E12D0);
  (*(v9 + 8))(v11, v8);
  v18 = *(sub_100009DCC(&qword_1006E12E0) + 36);
  v19 = enum case for BlendMode.plusLighter(_:);
  v20 = sub_100570A78();
  return (*(*(v20 - 8) + 104))(a1 + v18, v19, v20);
}

double sub_100028038()
{
  v16 = sub_10056F198();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006E0148);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1005724A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FriendsBadgesView(0);
  sub_10000CC8C(v0 + *(v11 + 20), v6, &qword_1006E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100573438();
    v12 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:))
  {
    (*(v8 + 8))(v10, v7);
  }

  return 10.0;
}

uint64_t sub_100028320@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF8E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC060);
  return sub_100028C7C(v3, a1, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
}

uint64_t sub_1000283AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000283F4()
{
  result = qword_1006E0CA8;
  if (!qword_1006E0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0CA8);
  }

  return result;
}

uint64_t sub_100028448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000284CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E0CB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0800);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100009DCC(&qword_1006E0CB8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100028644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009DCC(&qword_1006E0CB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0800);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100009DCC(&qword_1006E0CB8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1000287B4()
{
  sub_10002A420(319, &qword_1006E0D28, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10002A420(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10002A420(319, &unk_1006E0D30, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000288E4()
{
  result = qword_1006E0D68;
  if (!qword_1006E0D68)
  {
    sub_100010324(&qword_1006E0C98);
    type metadata accessor for RecommendationsWidgetContentView(255);
    sub_1000283AC(&qword_1006E0C90, type metadata accessor for RecommendationsWidgetContentView);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E0D70, &qword_1006E0CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0D68);
  }

  return result;
}

unint64_t sub_100028A20()
{
  result = qword_1006E0D98;
  if (!qword_1006E0D98)
  {
    sub_100010324(&qword_1006E0D78);
    sub_100010BC0(&qword_1006E0DA0, &qword_1006E0DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0D98);
  }

  return result;
}

unint64_t sub_100028AD8()
{
  result = qword_1006E0DB0;
  if (!qword_1006E0DB0)
  {
    sub_100010324(&qword_1006E0D90);
    sub_100028B64();
    sub_100028C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DB0);
  }

  return result;
}

unint64_t sub_100028B64()
{
  result = qword_1006E0DB8;
  if (!qword_1006E0DB8)
  {
    sub_100010324(&qword_1006E0DC0);
    sub_1000283AC(&qword_1006E0DC8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DB8);
  }

  return result;
}

unint64_t sub_100028C20()
{
  result = qword_1006E0DD0;
  if (!qword_1006E0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DD0);
  }

  return result;
}

uint64_t sub_100028C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100028CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100028D4C()
{
  v1 = type metadata accessor for RecommendationsWidgetContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 48) & ~v2);
  sub_100009DCC(&qword_1006E0C68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v27 = *(v4 - 8);
    v5 = *(v27 + 8);
    v5(v3, v4);
    v6 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    v28 = v5;
    v5(v3 + v6[5], v4);
    type metadata accessor for WidgetMusicRecommendation(0);

    v7 = v3 + v6[7];
    v8 = type metadata accessor for WidgetMusicItem();
    if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
    {

      v9 = v8[7];
      v10 = sub_10056C8A8();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);

      v11 = v8[17];
      v12 = *(v27 + 48);
      if (!v12(v7 + v11, 1, v4))
      {
        v28(v7 + v11, v4);
      }

      v13 = v8[18];
      if (!v12(v7 + v13, 1, v4))
      {
        v28(v7 + v13, v4);
      }

      v14 = v8[23];
      v15 = sub_100009DCC(&qword_1006DFD30);
      if (!(*(*(v15 - 8) + 48))(v7 + v14, 11, v15))
      {
        v16 = sub_100572128();
        v17 = *(v16 - 8);
        v26 = v16;
        if (!(*(v17 + 48))(v7 + v14, 1))
        {
          (*(v17 + 8))(v7 + v14, v26);
        }
      }
    }

    v18 = v3 + v6[8];
    v19 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v28(v18, v4);
      v28(v18 + *(v19 + 20), v4);
      v20 = *(v19 + 24);
      if (!(*(v27 + 48))(v18 + v20, 1, v4))
      {
        v28(v18 + v20, v4);
      }
    }
  }

  else
  {
  }

  v21 = *(v1 + 20);
  sub_100009DCC(&qword_1006E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1005724A8();
    (*(*(v22 - 8) + 8))(v3 + v21, v22);
  }

  else
  {
  }

  v23 = *(v1 + 24);
  sub_100009DCC(&qword_1006E0C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_10056E698();
    (*(*(v24 - 8) + 8))(v3 + v23, v24);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100029390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsWidgetContentView(0) - 8);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1000217C0(a1, v6, v7, v10, a2, v8, v9);
}

unint64_t sub_100029418()
{
  result = qword_1006E0E38;
  if (!qword_1006E0E38)
  {
    sub_100010324(&qword_1006E0E28);
    sub_1000294A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E38);
  }

  return result;
}

unint64_t sub_1000294A4()
{
  result = qword_1006E0E40;
  if (!qword_1006E0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E40);
  }

  return result;
}

unint64_t sub_1000294F8()
{
  result = qword_1006E0E60;
  if (!qword_1006E0E60)
  {
    sub_100010324(&qword_1006E0E00);
    sub_100010324(&qword_1006E0E08);
    sub_100010BC0(&qword_1006E0E50, &qword_1006E0E08);
    swift_getOpaqueTypeConformance2();
    sub_1000283AC(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E60);
  }

  return result;
}

uint64_t sub_100029628()
{
  v1 = type metadata accessor for RecommendationsWidgetContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 56) & ~v2);
  sub_100009DCC(&qword_1006E0C68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v27 = *(v4 - 8);
    v5 = *(v27 + 8);
    v5(v3, v4);
    v6 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    v28 = v5;
    v5(v3 + v6[5], v4);
    type metadata accessor for WidgetMusicRecommendation(0);

    v7 = v3 + v6[7];
    v8 = type metadata accessor for WidgetMusicItem();
    if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
    {

      v9 = v8[7];
      v10 = sub_10056C8A8();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);

      v11 = v8[17];
      v12 = *(v27 + 48);
      if (!v12(v7 + v11, 1, v4))
      {
        v28(v7 + v11, v4);
      }

      v13 = v8[18];
      if (!v12(v7 + v13, 1, v4))
      {
        v28(v7 + v13, v4);
      }

      v14 = v8[23];
      v15 = sub_100009DCC(&qword_1006DFD30);
      if (!(*(*(v15 - 8) + 48))(v7 + v14, 11, v15))
      {
        v16 = sub_100572128();
        v17 = *(v16 - 8);
        v26 = v16;
        if (!(*(v17 + 48))(v7 + v14, 1))
        {
          (*(v17 + 8))(v7 + v14, v26);
        }
      }
    }

    v18 = v3 + v6[8];
    v19 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v28(v18, v4);
      v28(v18 + *(v19 + 20), v4);
      v20 = *(v19 + 24);
      if (!(*(v27 + 48))(v18 + v20, 1, v4))
      {
        v28(v18 + v20, v4);
      }
    }
  }

  else
  {
  }

  v21 = *(v1 + 20);
  sub_100009DCC(&qword_1006E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1005724A8();
    (*(*(v22 - 8) + 8))(v3 + v21, v22);
  }

  else
  {
  }

  v23 = *(v1 + 24);
  sub_100009DCC(&qword_1006E0C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_10056E698();
    (*(*(v24 - 8) + 8))(v3 + v23, v24);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100029C6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsWidgetContentView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1000219CC(a1, v6, v7, v8, a2);
}

unint64_t sub_100029CF8()
{
  result = qword_1006E0E88;
  if (!qword_1006E0E88)
  {
    sub_100010324(&qword_1006E0E80);
    sub_100010BC0(&qword_1006E0E90, &qword_1006E0E98);
    sub_1000283AC(&qword_1006E0DC8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E88);
  }

  return result;
}

uint64_t sub_100029E2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009DCC(&qword_1006E0618);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0CB0);
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

  v14 = sub_100009DCC(&qword_1006E0800);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100009DCC(&qword_1006E0EB8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_100009DCC(&qword_1006E0EC0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_10002A04C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009DCC(&qword_1006E0618);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0CB0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100009DCC(&qword_1006E0800);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_100009DCC(&qword_1006E0EB8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_100009DCC(&qword_1006E0EC0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_10002A264()
{
  sub_10002A420(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10002A420(319, &qword_1006E0D28, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10002A420(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10002A420(319, &qword_1006E0F30, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10002A420(319, &unk_1006E0F38, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002A420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10002A488()
{
  result = qword_1006E0F78;
  if (!qword_1006E0F78)
  {
    sub_100010324(&qword_1006E0DD8);
    sub_100010324(&qword_1006E0D78);
    sub_100010324(&qword_1006E0D90);
    sub_100028A20();
    sub_100028AD8();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E0F80, &qword_1006E0DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0F78);
  }

  return result;
}

char *sub_10002A5C4(char *result)
{
  v1 = *(result + 2);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    while (1)
    {
      v7 = *&v6[8 * v3];
      if (v4)
      {
        result = v7;
        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_100009DCC(&qword_1006E12E8);
        v12 = swift_allocObject();
        v13 = j__malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 < v2 || v16 >= &v19[16 * v17] || v12 != v2)
          {
            memmove(v16, v19, 16 * v17);
          }

          v20 = v7;
          *(v2 + 2) = 0;
        }

        else
        {
          v21 = v7;
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v22 = *(v2 + 3);
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v8 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v8)
    {
      goto LABEL_30;
    }

    *(v2 + 2) = v24;
  }

  return v2;
}

unint64_t sub_10002A768()
{
  result = qword_1006E1068;
  if (!qword_1006E1068)
  {
    sub_100010324(&qword_1006E1010);
    sub_10002A820();
    sub_100010BC0(&qword_1006E10C0, &qword_1006E10C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1068);
  }

  return result;
}

unint64_t sub_10002A820()
{
  result = qword_1006E1070;
  if (!qword_1006E1070)
  {
    sub_100010324(&qword_1006E1008);
    sub_10002A8D8();
    sub_100010BC0(&qword_1006E10B0, &qword_1006E10B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1070);
  }

  return result;
}

unint64_t sub_10002A8D8()
{
  result = qword_1006E1078;
  if (!qword_1006E1078)
  {
    sub_100010324(&qword_1006E1000);
    sub_10002A990();
    sub_100010BC0(&qword_1006E10A0, &qword_1006E10A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1078);
  }

  return result;
}

unint64_t sub_10002A990()
{
  result = qword_1006E1080;
  if (!qword_1006E1080)
  {
    sub_100010324(&qword_1006E1048);
    sub_10002AA48();
    sub_100010BC0(&qword_1006E1098, &qword_1006E1050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1080);
  }

  return result;
}

unint64_t sub_10002AA48()
{
  result = qword_1006E1088;
  if (!qword_1006E1088)
  {
    sub_100010324(&qword_1006E1090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1088);
  }

  return result;
}

uint64_t sub_10002AAC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002AAD4()
{
  result = qword_1006E1118;
  if (!qword_1006E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1118);
  }

  return result;
}

unint64_t sub_10002AB28()
{
  result = qword_1006E1120;
  if (!qword_1006E1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1120);
  }

  return result;
}

uint64_t *sub_10002AB7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002AC14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006E0800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10002ACE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E0800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002AD94()
{
  sub_10002AE48();
  if (v0 <= 0x3F)
  {
    sub_10002A420(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002AE48()
{
  if (!qword_1006E11E0)
  {
    sub_100010324(&unk_1006E11E8);
    v0 = sub_100572E38();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E11E0);
    }
  }
}

uint64_t sub_10002AEAC()
{
  sub_100010324(&qword_1006E0F88);
  sub_100010BC0(&qword_1006E0F98, &qword_1006E0F88);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002AF60()
{
  v1 = (type metadata accessor for FriendsBadgesView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_100009DCC(&qword_1006E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1005724A8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10002B07C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FriendsBadgesView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1000275BC(a1, a2, v8, a3);
}

uint64_t sub_10002B104()
{

  return swift_deallocObject();
}

unint64_t sub_10002B16C()
{
  result = qword_1006E1238;
  if (!qword_1006E1238)
  {
    sub_100010324(&unk_1006E11E8);
    sub_1000283AC(&qword_1006E1240, sub_1000168CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1238);
  }

  return result;
}

unint64_t sub_10002B220()
{
  result = qword_1006E1248;
  if (!qword_1006E1248)
  {
    sub_100010324(&qword_1006E1228);
    sub_10002B2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1248);
  }

  return result;
}

unint64_t sub_10002B2AC()
{
  result = qword_1006E1250;
  if (!qword_1006E1250)
  {
    sub_100010324(&qword_1006E1258);
    sub_10002B338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1250);
  }

  return result;
}

unint64_t sub_10002B338()
{
  result = qword_1006E1260;
  if (!qword_1006E1260)
  {
    sub_100010324(&qword_1006E1268);
    sub_100010324(&qword_1006E1270);
    sub_100010324(&qword_1006E1278);
    sub_10002B444();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1260);
  }

  return result;
}

unint64_t sub_10002B444()
{
  result = qword_1006E1280;
  if (!qword_1006E1280)
  {
    sub_100010324(&qword_1006E1278);
    sub_10002B4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1280);
  }

  return result;
}

unint64_t sub_10002B4C8()
{
  result = qword_1006E1288;
  if (!qword_1006E1288)
  {
    sub_100010324(&qword_1006E1290);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1288);
  }

  return result;
}

unint64_t sub_10002B5A0()
{
  result = qword_1006E12F0;
  if (!qword_1006E12F0)
  {
    sub_100010324(&qword_1006E12B0);
    sub_10002B62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E12F0);
  }

  return result;
}

unint64_t sub_10002B62C()
{
  result = qword_1006E12F8;
  if (!qword_1006E12F8)
  {
    sub_100010324(&qword_1006E12A8);
    sub_100010BC0(&qword_1006E1300, &qword_1006E1308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E12F8);
  }

  return result;
}

uint64_t sub_10002B704(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10056D858();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10056C8A8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_10002B884(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10056D858();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10056C8A8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for WidgetMusicPin()
{
  result = qword_1006E1368;
  if (!qword_1006E1368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002BA3C()
{
  sub_10056D858();
  if (v0 <= 0x3F)
  {
    sub_10056C8A8();
    if (v1 <= 0x3F)
    {
      sub_10002BB7C(319, &qword_1006E1378, &type metadata for MusicItemID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10002BB7C(319, &unk_1006E1380, &type metadata for TextBadge, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ArtworkImage.Placeholder(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002BB7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10002BBCC()
{
  v1 = type metadata accessor for WidgetMusicPin();
  v2 = (v0 + v1[7]);
  v3 = *v2;
  v4 = v2[1];
  if (qword_1006DF908 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C49C(v1, qword_1006FC080);
  v6 = (v5 + v1[7]);
  v7 = v3 == *v6 && v4 == v6[1];
  if (!v7 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[8];
  v9 = (v0 + v8);
  v10 = *(v0 + v8 + 8);
  v11 = (v5 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *v9 == *v11 && v10 == v12;
    if (!v13 && (sub_100574498() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = v1[9];
  v15 = *(v0 + v14);
  v16 = *(v0 + v14 + 8);
  v17 = (v5 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  if (*v0 == *v5 && v0[1] == v5[1])
  {
    return 1;
  }

  return sub_100574498();
}

uint64_t sub_10002BD3C()
{
  v0 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10056D858();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetMusicPin();
  sub_10000C910(v11, qword_1006FC080);
  v12 = sub_10000C49C(v11, qword_1006FC080);
  v13 = *(v8 + 104);
  v27 = v7;
  v13(v10, enum case for MusicPin.Action.play(_:), v7);
  sub_10056C868();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v4 + 32);
    v15(v6, v2, v3);
    v16 = sub_1005713C8();
    v24 = v17;
    v25 = v16;
    v26 = [objc_allocWithZone(UIImage) init];
    v18 = v11[14];
    v19 = sub_100009DCC(&qword_1006DFD30);
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 11, v19);
    *v12 = 0xD000000000000018;
    *(v12 + 1) = 0x80000001005AA470;
    (*(v8 + 32))(&v12[v11[5]], v10, v27);
    result = (v15)(&v12[v11[6]], v6, v3);
    v20 = &v12[v11[7]];
    v21 = v24;
    *v20 = v25;
    v20[1] = v21;
    v22 = &v12[v11[8]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v12[v11[9]];
    *v23 = 0;
    *(v23 + 1) = 0xE000000000000000;
    *&v12[v11[10]] = _swiftEmptyArrayStorage;
    v12[v11[11]] = 0;
    *&v12[v11[12]] = v26;
    v12[v11[13]] = 0;
    *&v12[v11[15]] = 0x3FF0000000000000;
  }

  return result;
}

void *sub_10002C0B4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

uint64_t sub_10002C100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002C168()
{
  result = qword_1006E13F0;
  if (!qword_1006E13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E13F0);
  }

  return result;
}

unint64_t sub_10002C1C4()
{
  result = qword_1006E13F8;
  if (!qword_1006E13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E13F8);
  }

  return result;
}

unint64_t sub_10002C21C()
{
  result = qword_1006E1400;
  if (!qword_1006E1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1400);
  }

  return result;
}

uint64_t sub_10002C2DC()
{
  v0 = sub_10056C758();
  sub_10000C910(v0, qword_1006FC098);
  sub_10000C49C(v0, qword_1006FC098);
  return sub_10056C738();
}

uint64_t sub_10002C360()
{
  if (qword_1006DF918 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E13D8);
  v2 = sub_10056DF68();
  v3 = sub_100573428();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MusicWidgets process should not be performing StartPlaybackAppIntent.", v4, 2u);
  }

  sub_10056C068();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002C484@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF910 != -1)
  {
    swift_once();
  }

  v2 = sub_10056C758();
  v3 = sub_10000C49C(v2, qword_1006FC098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002C548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CB98;

  return sub_10002C340(a1);
}

uint64_t sub_10002C5E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002CD48();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10002C60C(uint64_t a1)
{
  v2 = sub_10002AAD4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 initializeBufferWithCopyOfBuffer for WidgetMusicItem.ArtworkColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10002C65C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10002C6A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10002C6F8()
{
  result = qword_1006E1408;
  if (!qword_1006E1408)
  {
    sub_100010324(&qword_1006E1410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1408);
  }

  return result;
}

uint64_t sub_10002C75C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E13D8);
  sub_10000C49C(v0, qword_1006E13D8);
  return static Logger.music(_:)();
}

uint64_t sub_10002C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v50 = sub_10056C178();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006E1418);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_100009DCC(&qword_1006E1420);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_100009DCC(&qword_1006E1428);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_10056C758();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  sub_100009DCC(&qword_1006E1430);
  v40 = "________________________";
  sub_10056C738();
  v18 = *(v17 + 56);
  v33 = v17 + 56;
  v34 = v18;
  v18(v15, 1, 1, v16);
  v49 = sub_1005727F8();
  v51 = 0;
  v52 = 0;
  v19 = *(v49 - 8);
  v48 = *(v19 + 56);
  v41 = v19 + 56;
  v48(v12, 1, 1, v49);
  v46 = sub_10056C058();
  v20 = *(v46 - 8);
  v45 = *(v20 + 56);
  v47 = v20 + 56;
  v31 = v9;
  v45(v9, 1, 1, v46);
  v44 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v4 + 104);
  v42 = v4 + 104;
  v43 = v21;
  v32 = v6;
  v22 = v50;
  v21(v6);
  v23 = v12;
  v35 = sub_10056C0C8();
  sub_100009DCC(&qword_1006E1438);

  sub_10056C738();
  v24 = v34;
  v34(v15, 1, 1, v16);
  v51 = 0;
  v52 = 0;
  v25 = v23;
  v48(v23, 1, 1, v49);
  v26 = v31;
  v45(v31, 1, 1, v46);
  v27 = v32;
  v43(v32, v44, v22);
  sub_10056C0C8();

  sub_10056C738();
  v24(v15, 1, 1, v16);
  v51 = 0;
  v52 = 0;
  v48(v25, 1, 1, v49);
  v45(v26, 1, 1, v46);
  v43(v27, v44, v50);
  sub_10056C0C8();
  v51 = v36;
  v52 = v37;

  v28 = v35;
  sub_10056C088();
  v51 = v38;
  v52 = v39;
  sub_10056C088();

  return v28;
}

uint64_t sub_10002CD48()
{
  v37 = sub_10056C178();
  v0 = *(v37 - 8);
  __chkstk_darwin(v37);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009DCC(&qword_1006E1418);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - v4;
  v6 = sub_100009DCC(&qword_1006E1420);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v9 = sub_100009DCC(&qword_1006E1428);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  v12 = sub_10056C758();
  v28 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100009DCC(&qword_1006E1430);
  sub_10056C738();
  v14 = *(v13 + 56);
  v26 = v13 + 56;
  v30 = v14;
  v14(v11, 1, 1, v12);
  v29 = sub_1005727F8();
  v38 = 0;
  v39 = 0;
  v15 = *(v29 - 8);
  v36 = *(v15 + 56);
  v25 = v15 + 56;
  v36(v8, 1, 1, v29);
  v34 = sub_10056C058();
  v16 = *(v34 - 8);
  v33 = *(v16 + 56);
  v35 = v16 + 56;
  v23[0] = v5;
  v33(v5, 1, 1, v34);
  v32 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v0 + 104);
  v31 = v0 + 104;
  v17 = v37;
  v24(v2);
  v18 = v2;
  v27 = sub_10056C0C8();
  sub_100009DCC(&qword_1006E1438);
  sub_10056C738();
  v30(v11, 1, 1, v28);
  v38 = 0;
  v39 = 0;
  v36(v8, 1, 1, v29);
  v19 = v23[0];
  v33(v23[0], 1, 1, v34);
  v20 = v17;
  v21 = v24;
  (v24)(v18, v32, v20);
  v23[1] = sub_10056C0C8();
  sub_10056C738();
  v30(v11, 1, 1, v28);
  v38 = 0;
  v39 = 0;
  v36(v8, 1, 1, v29);
  v33(v19, 1, 1, v34);
  (v21)(v18, v32, v37);
  sub_10056C0C8();
  return v27;
}

uint64_t sub_10002D268(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10002D280(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002D29C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10002D2F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10002D388@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_100009DCC(&qword_1006E1440);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_100009DCC(&qword_1006E1448);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v29 = sub_100009DCC(&qword_1006E1450);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v24 - v8;
  v28 = sub_100009DCC(&qword_1006E1458);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - v10;
  v26 = sub_100009DCC(&qword_1006E1460);
  __chkstk_darwin(v26);
  v13 = &v24 - v12;
  sub_10002D820(v1, v4);
  sub_10002E410(v1, v31);
  v14 = v32;
  if (v32)
  {
    v15 = v33;
    sub_10000C8CC(v31, v32);
    v16 = (*(v15 + 16))(v14, v15);
    sub_100010474(v31);
  }

  else
  {
    sub_10001036C(v31, &qword_1006E1468);
    v16 = 1.0;
  }

  sub_10002E480(v4, v7);
  v17 = &v7[*(v5 + 36)];
  *v17 = v16;
  *(v17 + 4) = 0;
  v18 = sub_10002E4F0();
  View.corner(_:)();
  sub_10001036C(v7, &qword_1006E1448);
  sub_1005704D8();
  v19 = sub_1005704E8();

  CFRange.init(_:)(v19);
  v31[0] = v5;
  v31[1] = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v29;
  View.border(_:corner:)();

  (*(v27 + 8))(v9, v20);
  if (qword_1006DF948 != -1)
  {
    swift_once();
  }

  v21 = qword_1006FC0F8;
  (*(v25 + 32))(v13, v11, v28);
  v22 = &v13[*(v26 + 36)];
  *v22 = v21;
  *(v22 + 8) = xmmword_10057D0C0;
  *(v22 + 3) = 0x4000000000000000;
  sub_10002E968();

  sub_100570078();
  return sub_10001036C(v13, &qword_1006E1460);
}

uint64_t sub_10002D820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_100009DCC(&qword_1006E14D0);
  __chkstk_darwin(v59);
  v5 = (&v49 - v4);
  v6 = sub_100009DCC(&qword_1006E14E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  v57 = sub_100009DCC(&qword_1006E14F0);
  __chkstk_darwin(v57);
  v58 = &v49 - v10;
  v11 = sub_100009DCC(&qword_1006E12C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_100570558();
  v49 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100009DCC(&qword_1006E14A8);
  __chkstk_darwin(v54);
  v18 = &v49 - v17;
  v52 = sub_100009DCC(&qword_1006E14F8);
  __chkstk_darwin(v52);
  v53 = (&v49 - v19);
  v56 = sub_100009DCC(&qword_1006E1498);
  __chkstk_darwin(v56);
  v55 = &v49 - v20;
  sub_10002E410(a1, &v60);
  if (!v61)
  {
    sub_10001036C(&v60, &qword_1006E1468);
    goto LABEL_5;
  }

  v50 = v6;
  v51 = a2;
  sub_10002EA74(&v60, v62);
  v22 = v63;
  v21 = v64;
  sub_10000C8CC(v62, v63);
  if ((*(v21 + 40))(v22, v21))
  {
    sub_100010474(v62);
    v6 = v50;
LABEL_5:
    if (qword_1006DF930 != -1)
    {
      swift_once();
    }

    v23 = sub_1005704E8();
    v24 = v59;
    v25 = *(v59 + 36);
    v26 = enum case for BlendMode.plusLighter(_:);
    v27 = sub_100570A78();
    (*(*(v27 - 8) + 104))(v5 + v25, v26, v27);
    *v5 = v23;
    v28 = sub_10002E8E4();
    sub_10056FFD8();
    sub_10001036C(v5, &qword_1006E14D0);
    (*(v7 + 16))(v58, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_10002E6D0();
    v62[0] = v24;
    v62[1] = v28;
    swift_getOpaqueTypeConformance2();
    sub_10056F5B8();
    return (*(v7 + 8))(v9, v6);
  }

  v30 = v63;
  v31 = v64;
  sub_10000C8CC(v62, v63);
  v32 = (*(v31 + 8))(v30, v31);
  if (v32)
  {
    v33 = v32;
    sub_100570538();
    v34 = v49;
    (*(v49 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v14);
    sub_1005705D8();

    (*(v34 + 8))(v16, v14);
    sub_100572478();
    v35 = sub_100572488();
    (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
    sub_1005705C8();

    sub_10001036C(v13, &qword_1006E12C0);
    [v33 size];
    v37 = v36;
    [v33 size];
    v39 = v37 / v38;
    v40 = &v18[*(sub_100009DCC(&qword_1006E14B8) + 36)];
    *v40 = v39;
    *(v40 + 4) = 0;
    if (qword_1006DF940 != -1)
    {
      swift_once();
    }

    v41 = qword_1006FC0F0;
    v42 = sub_10056FA38();
    v43 = v53;
    v44 = &v18[*(v54 + 36)];
    *v44 = v41;
    v44[8] = v42;
    sub_10000CC8C(v18, v43, &qword_1006E14A8);
    swift_storeEnumTagMultiPayload();

    sub_100009DCC(&qword_1006E12A0);
    sub_10002E788();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0);
    v45 = v55;
    sub_10056F5B8();

    sub_10001036C(v18, &qword_1006E14A8);
  }

  else
  {
    sub_10002EA8C(v62, &v60);
    v46 = swift_allocObject();
    sub_10002EA74(&v60, v46 + 16);
    v47 = v53;
    *v53 = sub_10002EB28;
    v47[1] = v46;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E12A0);
    sub_10002E788();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0);
    v45 = v55;
    sub_10056F5B8();
  }

  sub_10000CC8C(v45, v58, &qword_1006E1498);
  swift_storeEnumTagMultiPayload();
  sub_10002E6D0();
  v48 = sub_10002E8E4();
  *&v60 = v59;
  *(&v60 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  sub_10056F5B8();
  sub_10001036C(v45, &qword_1006E1498);
  return sub_100010474(v62);
}

uint64_t sub_10002E150@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100009DCC(&qword_1006E12D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006E12D8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v15 = a1[3];
  v14 = a1[4];
  sub_10000C8CC(a1, v15);
  (*(v14 + 24))(v15, v14);
  sub_10056E928();
  ArtworkImage.Placeholder.view(availableSize:)(v13, v16, v17);
  sub_10002EB30(v9);
  v18 = ArtworkImage.Placeholder.View.Style.widgets.unsafeMutableAddressor();
  sub_10002EB8C(v18, v6);
  v19 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.placeholderStyle(_:)(v6, v10, OpaqueTypeConformance2);
  sub_10001036C(v6, &qword_1006E12D0);
  (*(v11 + 8))(v13, v10);
  v21 = *(sub_100009DCC(&qword_1006E12E0) + 36);
  v22 = enum case for BlendMode.plusLighter(_:);
  v23 = sub_100570A78();
  return (*(*(v23 - 8) + 104))(a2 + v21, v22, v23);
}

uint64_t sub_10002E410(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002E4F0()
{
  result = qword_1006E1470;
  if (!qword_1006E1470)
  {
    sub_100010324(&qword_1006E1448);
    sub_10002E57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1470);
  }

  return result;
}

unint64_t sub_10002E57C()
{
  result = qword_1006E1478;
  if (!qword_1006E1478)
  {
    sub_100010324(&qword_1006E1440);
    sub_10002E600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1478);
  }

  return result;
}

unint64_t sub_10002E600()
{
  result = qword_1006E1480;
  if (!qword_1006E1480)
  {
    sub_100010324(&qword_1006E1488);
    sub_10002E6D0();
    sub_100010324(&qword_1006E14D0);
    sub_10002E8E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1480);
  }

  return result;
}

unint64_t sub_10002E6D0()
{
  result = qword_1006E1490;
  if (!qword_1006E1490)
  {
    sub_100010324(&qword_1006E1498);
    sub_10002E788();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1490);
  }

  return result;
}

unint64_t sub_10002E788()
{
  result = qword_1006E14A0;
  if (!qword_1006E14A0)
  {
    sub_100010324(&qword_1006E14A8);
    sub_10002E840();
    sub_100010BC0(&qword_1006E14C0, &qword_1006E14C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14A0);
  }

  return result;
}

unint64_t sub_10002E840()
{
  result = qword_1006E14B0;
  if (!qword_1006E14B0)
  {
    sub_100010324(&qword_1006E14B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14B0);
  }

  return result;
}

unint64_t sub_10002E8E4()
{
  result = qword_1006E14D8;
  if (!qword_1006E14D8)
  {
    sub_100010324(&qword_1006E14D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14D8);
  }

  return result;
}

unint64_t sub_10002E968()
{
  result = qword_1006E14E0;
  if (!qword_1006E14E0)
  {
    sub_100010324(&qword_1006E1460);
    sub_100010324(&qword_1006E1450);
    sub_100010324(&qword_1006E1448);
    sub_10002E4F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14E0);
  }

  return result;
}

uint64_t sub_10002EA74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002EA8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002EAF0()
{
  sub_100010474(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10002EB30(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002EB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002EBF4()
{
  result = qword_1006E1500;
  if (!qword_1006E1500)
  {
    sub_100010324(&qword_1006E1508);
    sub_10002E968();
    sub_10002EC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1500);
  }

  return result;
}

unint64_t sub_10002EC80()
{
  result = qword_1006E0DC8;
  if (!qword_1006E0DC8)
  {
    sub_10056F948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DC8);
  }

  return result;
}

uint64_t sub_10002ECEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&unk_1006E1E90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002EDBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&unk_1006E1E90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PosterWidgetConfiguration.BasicMusicItem()
{
  result = qword_1006E1568;
  if (!qword_1006E1568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002EEB8()
{
  sub_10001F8F4();
  if (v0 <= 0x3F)
  {
    sub_10001507C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002EF64(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E15D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_10002FB30();
  sub_100574718();
  LOBYTE(v12) = 0;
  sub_100574328();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_100574328();
    LOBYTE(v12) = 2;
    sub_100574308();
    LOBYTE(v12) = *(v3 + 48);
    v13 = 3;
    sub_10002FD00();
    sub_100574368();
    v9 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
    LOBYTE(v12) = 4;
    sub_10056CAA8();
    sub_10002FD54(&qword_1006DFF90, &type metadata accessor for Date);
    sub_100574318();
    LOBYTE(v12) = 5;
    sub_100574318();
    v12 = *(v3 + *(v9 + 40));
    v13 = 6;
    sub_100014D78();
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10002F280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100009DCC(&unk_1006E1E90);
  v4 = __chkstk_darwin(v3 - 8);
  v27 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v25 - v6;
  v8 = sub_100009DCC(&qword_1006E15C0);
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
  __chkstk_darwin(v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, a1[3]);
  sub_10002FB30();
  v14 = v30;
  sub_100574708();
  if (v14)
  {
    return sub_100010474(a1);
  }

  v15 = v7;
  v16 = v28;
  LOBYTE(v31) = 0;
  *v13 = sub_100574298();
  *(v13 + 1) = v17;
  v30 = v17;
  LOBYTE(v31) = 1;
  v18 = v16;
  *(v13 + 2) = sub_100574298();
  *(v13 + 3) = v19;
  LOBYTE(v31) = 2;
  *(v13 + 4) = sub_100574278();
  *(v13 + 5) = v20;
  v32 = 3;
  sub_10002FBEC();
  sub_1005742D8();
  v13[48] = v31;
  v25[1] = sub_10056CAA8();
  LOBYTE(v31) = 4;
  v25[0] = sub_10002FD54(&qword_1006DFFB8, &type metadata accessor for Date);
  sub_100574288();
  v21 = v13;
  sub_100015128(v15, &v13[v11[8]]);
  LOBYTE(v31) = 5;
  v22 = v27;
  sub_100574288();
  sub_100015128(v22, v21 + v11[9]);
  v32 = 6;
  sub_100014D24();
  sub_1005742D8();
  v23 = v11[10];
  (*(v18 + 8))(v10, v29);
  *(v21 + v23) = v31;
  sub_10002FC40(v21, v26);
  sub_100010474(a1);
  return sub_10002FCA4(v21);
}

unint64_t sub_10002F7B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x49656C6261646F63;
  }

  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x79616C507473616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002F890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002F8C4(uint64_t a1)
{
  v2 = sub_10002FB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F900(uint64_t a1)
{
  v2 = sub_10002FB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10002F93C()
{
  sub_100574678();
  sub_1005729F8();
  sub_1005729F8();
  return sub_1005746C8();
}

uint64_t sub_10002F98C()
{
  sub_1005729F8();

  return sub_1005729F8();
}

Swift::Int sub_10002F9CC()
{
  sub_100574678();
  sub_1005729F8();
  sub_1005729F8();
  return sub_1005746C8();
}

uint64_t sub_10002FA48@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10002FA54(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_100574498(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return sub_100574498();
    }
  }

  return result;
}

unint64_t sub_10002FB30()
{
  result = qword_1006E15C8;
  if (!qword_1006E15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15C8);
  }

  return result;
}

uint64_t sub_10002FB84(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006E1E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002FBEC()
{
  result = qword_1006E15D0;
  if (!qword_1006E15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15D0);
  }

  return result;
}

uint64_t sub_10002FC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FCA4(uint64_t a1)
{
  v2 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002FD00()
{
  result = qword_1006E15E0;
  if (!qword_1006E15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15E0);
  }

  return result;
}

uint64_t sub_10002FD54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PosterWidgetConfiguration.BasicMusicItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterWidgetConfiguration.BasicMusicItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002FF00()
{
  result = qword_1006E15E8;
  if (!qword_1006E15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15E8);
  }

  return result;
}

unint64_t sub_10002FF58()
{
  result = qword_1006E15F0;
  if (!qword_1006E15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15F0);
  }

  return result;
}

unint64_t sub_10002FFB0()
{
  result = qword_1006E15F8;
  if (!qword_1006E15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15F8);
  }

  return result;
}

uint64_t sub_100030004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465 || (sub_100574498() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001005AA4F0 == a2 || (sub_100574498() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10003033C@<X0>(void *a1@<X8>)
{
  result = sub_10056F118();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10003036C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_100009DCC(qword_1006E1D50);
  v3 = __chkstk_darwin(v2 - 8);
  v49 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v34 - v5;
  v45 = sub_10056EDA8();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10056F898();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006E1690);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v48 = sub_100009DCC(&qword_1006E1698);
  v43 = *(v48 - 8);
  __chkstk_darwin(v48);
  v14 = &v34 - v13;
  v35 = sub_100009DCC(&qword_1006E16A0);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v46 = &v34 - v15;
  *v12 = sub_10056F368();
  *(v12 + 1) = 0x4036000000000000;
  v12[16] = 0;
  v16 = &v12[*(sub_100009DCC(&qword_1006E16A8) + 44)];
  v38 = v1;
  sub_100030A34(v1, v16);
  sub_10056F888();
  v50 = v1;
  sub_1005709E8();
  v17 = sub_100009DCC(&qword_1006E0D90);
  v18 = sub_100010BC0(&qword_1006E16B0, &qword_1006E1690);
  v19 = sub_100028AD8();
  v41 = v14;
  v42 = v10;
  v20 = v17;
  sub_1005701E8();
  (*(v39 + 8))(v9, v40);
  sub_10001036C(v12, &qword_1006E1690);
  if (sub_100054A44())
  {
    v21 = v44;
    sub_10056ED98();
    v22 = v45;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
    sub_1000327E4(&qword_1006E0C78, &type metadata accessor for RedactionReasons);
    sub_100009DCC(&qword_1006E0C80);
    sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80);
    v21 = v44;
    v23 = v45;
    sub_100573DA8();
    v22 = v23;
  }

  v51 = v42;
  v52 = v20;
  v53 = v18;
  v54 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v46;
  v26 = v48;
  v27 = v41;
  sub_100570358();
  (*(v47 + 8))(v21, v22);
  (*(v43 + 8))(v27, v26);
  v28 = v49;
  sub_10056C868();
  v29 = sub_10056C8A8();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v36;
    (*(v30 + 32))(v36, v28, v29);
    (*(v30 + 56))(v32, 0, 1, v29);
    v51 = v26;
    v52 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v33 = v35;
    sub_10056FF68();
    sub_10001036C(v32, qword_1006E1D50);
    return (*(v34 + 8))(v25, v33);
  }

  return result;
}

uint64_t sub_100030A34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a1;
  v72 = a2;
  v69 = sub_100009DCC(&qword_1006E16B8);
  __chkstk_darwin(v69);
  v71 = &v53 - v3;
  v70 = sub_100009DCC(&qword_1006E16C0);
  __chkstk_darwin(v70);
  v54 = &v53 - v4;
  v63 = sub_10056F808();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RadioWidgetView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v59 = sub_100009DCC(&qword_1006E16C8);
  __chkstk_darwin(v59);
  v11 = &v53 - v10;
  v61 = sub_100009DCC(&qword_1006E16D0);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - v12;
  v57 = sub_100009DCC(&qword_1006E16D8);
  __chkstk_darwin(v57);
  v56 = &v53 - v13;
  v14 = sub_100009DCC(&qword_1006E16E0);
  v15 = __chkstk_darwin(v14 - 8);
  v68 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v66 = &v53 - v18;
  __chkstk_darwin(v17);
  v67 = &v53 - v19;
  v20 = sub_10056CC38();
  __chkstk_darwin(v20 - 8);
  v21 = sub_100572888();
  __chkstk_darwin(v21 - 8);
  sub_100572818();
  sub_10056CBC8();
  v64 = sub_100572948();
  v65 = v22;
  *v11 = sub_1005709E8();
  *(v11 + 1) = v23;
  *(v11 + 2) = 0x4028000000000000;
  v11[24] = 0;
  *(v11 + 4) = 0x4034000000000000;
  v11[40] = 0;
  sub_100009DCC(&qword_1006E16E8);
  v77 = xmmword_10057D470;
  swift_getKeyPath();
  sub_1000337A0(a1, &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RadioWidgetView);
  v24 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 3;
  sub_100033C64(&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for RadioWidgetView);
  sub_100009DCC(&qword_1006E0E28);
  sub_100009DCC(&qword_1006E16F0);
  sub_100029418();
  v26 = v56;
  sub_100010BC0(&qword_1006E16F8, &qword_1006E16F0);
  v27 = v57;
  sub_1005708B8();
  sub_10056F7F8();
  sub_100010BC0(&qword_1006E1700, &qword_1006E16C8);
  v28 = v58;
  sub_1005701F8();
  (*(v62 + 8))(v6, v63);
  sub_10001036C(v11, &qword_1006E16C8);
  sub_1005709E8();
  sub_10056EDF8();
  (*(v60 + 32))(v26, v28, v61);
  v29 = (v26 + *(v27 + 36));
  v30 = v82;
  v29[4] = v81;
  v29[5] = v30;
  v29[6] = v83;
  v31 = v78;
  *v29 = v77;
  v29[1] = v31;
  v32 = v80;
  v29[2] = v79;
  v29[3] = v32;
  v33 = (v55 + *(type metadata accessor for RadioWidgetTimelineProvider.Entry(0) + 36));
  v34 = v33[1];
  if (v34)
  {
    v35 = v54;
    v36 = &v54[*(v70 + 36)];
    *v36 = *v33;
    *(v36 + 1) = v34;
    __asm { FMOV            V0.2D, #16.0 }

    *(v36 + 1) = _Q0;
    v73 = 0;
    v74 = 0;
    type metadata accessor for CGSize(0);

    sub_100570668();
    v42 = v76;
    *(v36 + 2) = v75;
    *(v36 + 6) = v42;
    v43 = type metadata accessor for ErrorMessageModifier();
    sub_10056FDE8();
    v44 = *(v43 + 36);
    *&v36[v44] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    v45 = &v36[*(v43 + 40)];
    *v45 = swift_getKeyPath();
    *(v45 + 1) = 0;
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    v45[32] = 0;
    sub_10000CC8C(v26, v35, &qword_1006E16D8);
    sub_10000CC8C(v35, v71, &qword_1006E16C0);
    swift_storeEnumTagMultiPayload();
    sub_100033D50();
    sub_100033E0C();
    v46 = v66;
    sub_10056F5B8();
    sub_10001036C(v35, &qword_1006E16C0);
  }

  else
  {
    sub_10000CC8C(v26, v71, &qword_1006E16D8);
    swift_storeEnumTagMultiPayload();
    sub_100033D50();
    sub_100033E0C();
    v46 = v66;
    sub_10056F5B8();
  }

  sub_10001036C(v26, &qword_1006E16D8);
  v47 = v67;
  sub_100033F08(v46, v67);
  v48 = v68;
  sub_10000CC8C(v47, v68, &qword_1006E16E0);
  v49 = v72;
  v50 = v65;
  *v72 = v64;
  v49[1] = v50;
  v51 = sub_100009DCC(&qword_1006E1718);
  sub_10000CC8C(v48, v49 + *(v51 + 48), &qword_1006E16E0);

  sub_10001036C(v47, &qword_1006E16E0);
  sub_10001036C(v48, &qword_1006E16E0);
}

uint64_t sub_10003148C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RadioWidgetView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *a1;
  *a4 = 0;
  *(a4 + 8) = 1;
  result = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(*(a3 + *(result + 20)) + 16) >= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = *(*(a3 + *(result + 20)) + 16);
    }

    sub_100009DCC(&qword_1006E16F0);
    v16[0] = 0;
    v16[1] = v13;
    swift_getKeyPath();
    sub_1000337A0(a3, v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RadioWidgetView);
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = a2;
    sub_100033C64(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RadioWidgetView);
    sub_100009DCC(&qword_1006E0E28);
    sub_100009DCC(&qword_1006E1720);
    sub_100029418();
    sub_10003448C();
    return sub_1005708B8();
  }

  return result;
}

uint64_t sub_100031698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v32 = sub_100009DCC(&qword_1006E1778);
  __chkstk_darwin(v32);
  v10 = &v32 - v9;
  v33 = sub_100009DCC(&qword_1006E1748);
  __chkstk_darwin(v33);
  v12 = &v32 - v11;
  v13 = sub_100009DCC(&qword_1006E0618);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for WidgetMusicItem();
  v17 = *(v16 - 8);
  result = __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(a2 * a3, *a1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  Array.subscript.getter(v16, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10001036C(v15, &qword_1006E0618);
    if (a2 <= 0)
    {
      v31 = sub_100009DCC(&qword_1006E1738);
      return (*(*(v31 - 8) + 56))(v34, 1, 1, v31);
    }

    else
    {
      v21 = sub_10056F368();
      v22 = sub_1005704B8();
      v37 = 0;
      v36 = 0;
      v35 = 0;
      *v10 = v21;
      *(v10 + 1) = 0;
      v10[16] = 0;
      *(v10 + 3) = v22;
      *(v10 + 4) = 0x3FF0000000000000;
      *(v10 + 20) = 0;
      *(v10 + 6) = 0;
      v10[56] = 0;
      swift_storeEnumTagMultiPayload();
      sub_100009DCC(&qword_1006E1770);
      sub_1000345C8();
      sub_100010BC0(&qword_1006E1768, &qword_1006E1770);
      v23 = v34;
      sub_10056F5B8();
      v24 = sub_100009DCC(&qword_1006E1738);
      return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    }
  }

  else
  {
    sub_100033C64(v15, v20, type metadata accessor for WidgetMusicItem);
    sub_1000337A0(v20, v12, type metadata accessor for WidgetMusicItem);
    v25 = *(type metadata accessor for StationCell(0) + 20);
    *&v12[v25] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E1780);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v27 = &v12[*(v33 + 36)];
    v28 = sub_100009DCC(&qword_1006E1760);
    sub_1000337A0(a4, v27 + *(v28 + 28), type metadata accessor for RadioWidgetTimelineProvider.Entry);
    *v27 = KeyPath;
    sub_10000CC8C(v12, v10, &qword_1006E1748);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1770);
    sub_1000345C8();
    sub_100010BC0(&qword_1006E1768, &qword_1006E1770);
    v29 = v34;
    sub_10056F5B8();
    sub_10001036C(v12, &qword_1006E1748);
    sub_100034768(v20, type metadata accessor for WidgetMusicItem);
    v30 = sub_100009DCC(&qword_1006E1738);
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }
}

uint64_t sub_100031C08()
{
  sub_100034714();

  return sub_10056F1A8();
}

uint64_t sub_100031C50(uint64_t a1)
{
  v2 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1000337A0(a1, &v9 - v6, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  sub_1000337A0(v7, v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  sub_100034714();
  sub_10056F1B8();
  return sub_100034768(v7, type metadata accessor for RadioWidgetTimelineProvider.Entry);
}

uint64_t sub_100031D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009DCC(&qword_1006E0DF0);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_100570558();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009DCC(&qword_1006E0DC0);
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  if ((sub_10003209C() & 1) != 0 && (v14 = *(a1 + *(type metadata accessor for RadioWidgetTimelineProvider.Entry(0) + 32))) != 0)
  {
    v15 = v14;
    v19[0] = a2;
    v16 = v15;
    sub_100570538();
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v17 = sub_1005705D8();

    (*(v8 + 8))(v10, v7);
    v19[1] = v17;
    sub_100570078();

    sub_10000CC8C(v13, v6, &qword_1006E0DC0);
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();
    sub_10056F5B8();

    return sub_10001036C(v13, &qword_1006E0DC0);
  }

  else
  {
    if (qword_1006DF950 != -1)
    {
      swift_once();
    }

    *v6 = xmmword_1006FC100;
    *(v6 + 8) = *(&xmmword_1006FC100 + 8);
    *(v6 + 24) = *&algn_1006FC110[8];
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();

    return sub_10056F5B8();
  }
}

uint64_t sub_10003209C()
{
  v64 = sub_100009DCC(&qword_1006E0DE8);
  __chkstk_darwin(v64);
  v70 = &v55 - v1;
  v2 = sub_100009DCC(&qword_1006E0618);
  v3 = __chkstk_darwin(v2 - 8);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v68 = &v55 - v5;
  v69 = type metadata accessor for WidgetMusicItem();
  v65 = *(v69 - 1);
  v6 = __chkstk_darwin(v69);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v55 - v8;
  v9 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v10 = v9[6];
  v66 = v0;
  v11 = *(v0 + v10);
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (!v11)
  {

    goto LABEL_6;
  }

  v13 = sub_100574498();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v14 = *(v66 + v9[5]);
  v63 = *(v14 + 16);
  if (!v63)
  {
    return 0;
  }

  v15 = 0;
  v62 = v14 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  v16 = v9[7];
  v60 = v65 + 56;
  v61 = v16;
  v17 = v14;
  v56 = v14;
  v57 = v65 + 48;
  while (v15 < *(v17 + 16))
  {
    v18 = v65;
    v19 = v67;
    sub_1000337A0(v62 + *(v65 + 72) * v15, v67, type metadata accessor for WidgetMusicItem);
    v20 = v68;
    sub_1000337A0(v19, v68, type metadata accessor for WidgetMusicItem);
    v21 = v69;
    (*(v18 + 56))(v20, 0, 1, v69);
    v22 = *(v64 + 48);
    v23 = v20;
    v24 = v70;
    sub_10000CC8C(v23, v70, &qword_1006E0618);
    sub_10000CC8C(v66 + v61, v24 + v22, &qword_1006E0618);
    v25 = *(v18 + 48);
    if (v25(v24, 1, v21) == 1)
    {
      sub_10001036C(v68, &qword_1006E0618);
      sub_100034768(v67, type metadata accessor for WidgetMusicItem);
      if (v25(v70 + v22, 1, v69) == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_9;
    }

    v27 = v68;
    v26 = v69;
    v28 = v70;
    v29 = v59;
    sub_10000CC8C(v70, v59, &qword_1006E0618);
    if (v25(v28 + v22, 1, v26) == 1)
    {
      sub_10001036C(v27, &qword_1006E0618);
      sub_100034768(v67, type metadata accessor for WidgetMusicItem);
      sub_100034768(v29, type metadata accessor for WidgetMusicItem);
      v17 = v56;
LABEL_9:
      result = sub_10001036C(v70, &qword_1006E0DE8);
      goto LABEL_10;
    }

    v30 = v58;
    sub_100033C64(v28 + v22, v58, type metadata accessor for WidgetMusicItem);
    v31 = v26[9];
    v32 = *(v29 + v31);
    v33 = *(v29 + v31 + 8);
    v34 = (v30 + v31);
    if ((v32 != *v34 || v33 != v34[1]) && (sub_100574498() & 1) == 0)
    {
      if ((v35 = v69[10], v36 = (v29 + v35), (v37 = *(v29 + v35 + 8)) == 0) || (v38 = (v30 + v35), (v39 = v38[1]) == 0) || (*v36 != *v38 || v37 != v39) && (sub_100574498() & 1) == 0)
      {
        v40 = v69[11];
        v41 = *(v29 + v40);
        v42 = *(v29 + v40 + 8);
        v43 = (v30 + v40);
        if ((v41 != *v43 || v42 != v43[1]) && (sub_100574498() & 1) == 0)
        {
LABEL_40:
          sub_100034768(v30, type metadata accessor for WidgetMusicItem);
          sub_10001036C(v68, &qword_1006E0618);
          sub_100034768(v67, type metadata accessor for WidgetMusicItem);
          sub_100034768(v29, type metadata accessor for WidgetMusicItem);
          result = sub_10001036C(v70, &qword_1006E0618);
          v17 = v56;
          goto LABEL_10;
        }
      }
    }

    v44 = v69[12];
    v45 = (v29 + v44);
    v46 = *(v29 + v44 + 8);
    v47 = (v30 + v44);
    v48 = v47[1];
    if (v46)
    {
      if (v48 && (*v45 == *v47 && v46 == v48 || (sub_100574498() & 1) != 0))
      {
LABEL_42:
        sub_100034768(v30, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v68, &qword_1006E0618);
        sub_100034768(v67, type metadata accessor for WidgetMusicItem);
        sub_100034768(v29, type metadata accessor for WidgetMusicItem);
LABEL_43:
        sub_10001036C(v70, &qword_1006E0618);
        return 1;
      }
    }

    else if (!v48)
    {
      goto LABEL_42;
    }

    v49 = v69[13];
    v50 = (v29 + v49);
    v51 = *(v29 + v49 + 8);
    v52 = (v30 + v49);
    v53 = v52[1];
    v54 = v53 == 0;
    if (v51)
    {
      if (!v53)
      {
        goto LABEL_40;
      }

      if (*v50 == *v52 && v51 == v53)
      {
        goto LABEL_42;
      }

      v54 = sub_100574498();
    }

    sub_100034768(v58, type metadata accessor for WidgetMusicItem);
    sub_10001036C(v68, &qword_1006E0618);
    sub_100034768(v67, type metadata accessor for WidgetMusicItem);
    sub_100034768(v59, type metadata accessor for WidgetMusicItem);
    result = sub_10001036C(v70, &qword_1006E0618);
    v17 = v56;
    if (v54)
    {
      return 1;
    }

LABEL_10:
    if (v63 == ++v15)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000327E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003282C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_100009DCC(&qword_1006E1830);
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v59 = &v55 - v3;
  v4 = sub_100009DCC(&qword_1006E0DE8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v55 - v6;
  v8 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v9 = __chkstk_darwin(v8);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v55 - v11;
  v13 = sub_100009DCC(&qword_1006E0618);
  v14 = __chkstk_darwin(v13 - 8);
  v58 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - v17;
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  sub_1000337A0(v1, &v55 - v19, type metadata accessor for WidgetMusicItem);
  v21 = type metadata accessor for WidgetMusicItem();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 0, 1, v21);
  v23 = *(type metadata accessor for StationCell(0) + 20);
  v62 = v1;
  v55 = v23;
  sub_1000A8434(v12);
  v57 = v8;
  sub_10000CC8C(&v12[*(v8 + 28)], v18, &qword_1006E0618);
  sub_100034768(v12, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  v24 = *(v5 + 56);
  sub_10000CC8C(v20, v7, &qword_1006E0618);
  sub_10000CC8C(v18, &v7[v24], &qword_1006E0618);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v21) != 1)
  {
    sub_10000CC8C(v7, v58, &qword_1006E0618);
    v26 = v21;
    if (v25(&v7[v24], 1, v21) != 1)
    {
      v50 = v58;
      v51 = sub_10003CD6C(v58, &v7[v24]);
      sub_100034768(&v7[v24], type metadata accessor for WidgetMusicItem);
      sub_10001036C(v18, &qword_1006E0618);
      sub_10001036C(v20, &qword_1006E0618);
      sub_100034768(v50, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v7, &qword_1006E0618);
      v27 = v62;
      if ((v51 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_10001036C(v18, &qword_1006E0618);
    sub_10001036C(v20, &qword_1006E0618);
    sub_100034768(v58, type metadata accessor for WidgetMusicItem);
LABEL_6:
    sub_10001036C(v7, &qword_1006E0DE8);
    v27 = v62;
    goto LABEL_7;
  }

  sub_10001036C(v18, &qword_1006E0618);
  sub_10001036C(v20, &qword_1006E0618);
  v26 = v21;
  if (v25(&v7[v24], 1, v21) != 1)
  {
    goto LABEL_6;
  }

  sub_10001036C(v7, &qword_1006E0618);
  v27 = v62;
LABEL_10:
  v52 = v56;
  sub_1000A8434(v56);
  v53 = *(v52 + *(v57 + 24));
  sub_100034768(v52, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  if (v53 > 1)
  {
    if (v53 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!v53)
  {

LABEL_15:
    v28 = &v67;
    v37 = &type metadata for TogglePlaybackAppIntent;
    v66 = &type metadata for TogglePlaybackAppIntent;
    v38 = 1;
    v36 = sub_10002AB28();
    goto LABEL_8;
  }

  v54 = sub_100574498();

  if (v54)
  {
    goto LABEL_15;
  }

LABEL_7:
  v28 = &v65;
  v29 = (v27 + *(v26 + 44));
  v30 = *v29;
  v31 = v29[1];

  v32 = sub_10002C7C0(v30, v31, 0, 0);
  v34 = v33;
  v36 = v35;
  v37 = &type metadata for StartPlaybackAppIntent;
  v66 = &type metadata for StartPlaybackAppIntent;
  v38 = 0;
  v67 = sub_10002AAD4();
  v64[0] = v32;
  v64[1] = v34;
LABEL_8:
  *v28 = v36;
  v39 = sub_10000C8CC(v64, v37);
  __chkstk_darwin(v39);
  v42 = (*(v41 + 16))(&v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v42);
  *(&v55 - 2) = v27;
  *(&v55 - 8) = v38;
  sub_100009DCC(&qword_1006E1838);
  sub_100034E68();
  v43 = v59;
  sub_1005706B8();
  sub_100010BC0(&qword_1006E1858, &qword_1006E1830);
  sub_100034F20();
  v44 = v63;
  v45 = v61;
  sub_10056FFF8();
  (*(v60 + 8))(v43, v45);
  LOBYTE(v45) = *(v27 + *(v26 + 64));
  KeyPath = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = (v45 & 1) == 0;
  v48 = (v44 + *(sub_100009DCC(&qword_1006E1868) + 36));
  *v48 = KeyPath;
  v48[1] = sub_100034F8C;
  v48[2] = v47;
  return sub_100010474(v64);
}

void *sub_100033054@<X0>(uint64_t a1@<X0>, char a2@<W1>, double *a3@<X8>)
{
  __src[0] = sub_10056F368();
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  sub_10003314C(a1, a2, &__src[3]);
  v6 = type metadata accessor for WidgetMusicItem();
  v7 = 1.0;
  if ((*(a1 + *(v6 + 64)) & 1) == 0)
  {
    if (qword_1006DF9B8 != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
    }

    v8 = sub_10000C49C(v6, qword_1006FC1D8);
    if (sub_10003CD6C(a1, v8))
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.35;
    }
  }

  result = memcpy(a3, __src, 0x121uLL);
  a3[37] = v7;
  return result;
}

uint64_t sub_10003314C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_10056FBF8();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = type metadata accessor for WidgetMusicItem();
  *&v60[0] = &off_100681290;
  v8 = sub_10002AB7C(&v58);
  sub_1000337A0(a1, v8, type metadata accessor for WidgetMusicItem);
  v9 = Corner.medium.unsafeMutableAddressor();
  v10 = *(v9 + 16);
  *(v60 + 8) = *v9;
  BYTE8(v60[1]) = v10;
  v11 = sub_10056FA58();
  sub_10056E598();
  LOBYTE(v61) = v11;
  *(&v61 + 1) = v12;
  *&v62[0] = v13;
  *(&v62[0] + 1) = v14;
  *&v62[1] = v15;
  BYTE8(v62[1]) = 0;
  if (a2)
  {
    v16 = 0.9;
  }

  else
  {
    v16 = 1.0;
  }

  sub_100570B48();
  v86[4] = v61;
  v87[0] = v62[0];
  *(v87 + 9) = *(v62 + 9);
  v86[0] = v58;
  v86[1] = v59;
  v86[2] = v60[0];
  v86[3] = v60[1];
  v88 = v16;
  v89 = v16;
  v90 = v17;
  v91 = v18;
  v92 = v16;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  *&v58 = v19;
  *(&v58 + 1) = v20;
  sub_10001B550();

  v21 = sub_10056FF28();
  v23 = v22;
  v25 = v24;
  sub_10056FB68();
  v52 = sub_10056FD98();
  v53 = v26;
  v57 = v27;
  v29 = v28;
  sub_10001B5A4(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v48 = qword_1006FC0D0;
  v49 = swift_getKeyPath();
  LOBYTE(v58) = v29 & 1;
  v30 = v29 & 1;
  HIDWORD(v47) = v29 & 1;
  LOBYTE(v72[0]) = 0;

  sub_10056FC18();
  v32 = v54;
  v31 = v55;
  (*(v54 + 104))(v7, enum case for Font.Leading.tight(_:), v55);
  v56 = sub_10056FC28();

  (*(v32 + 8))(v7, v31);
  v33 = swift_getKeyPath();
  v55 = v33;
  v34 = swift_getKeyPath();
  sub_10000CC8C(v86, &v58, &qword_1006E1870);
  v35 = v50;
  sub_10000CC8C(&v58, v50, &qword_1006E1870);
  v37 = v52;
  v36 = v53;
  *&v65 = v52;
  *(&v65 + 1) = v57;
  LOBYTE(v66) = v30;
  *(&v66 + 1) = *v64;
  DWORD1(v66) = *&v64[3];
  v38 = KeyPath;
  *(&v66 + 1) = v53;
  *&v67 = KeyPath;
  *(&v67 + 1) = 2;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v63;
  DWORD1(v68) = *&v63[3];
  v40 = v48;
  v39 = v49;
  *(&v68 + 1) = v49;
  *&v69 = v48;
  *(&v69 + 1) = v33;
  *&v70 = v56;
  *(&v70 + 1) = v34;
  v71 = 1;
  v41 = v68;
  v42 = v69;
  v43 = v70;
  *(v35 + 248) = 1;
  *(v35 + 232) = v43;
  *(v35 + 216) = v42;
  *(v35 + 200) = v41;
  v44 = v65;
  v45 = v66;
  *(v35 + 184) = v67;
  *(v35 + 168) = v45;
  *(v35 + 152) = v44;
  *(v35 + 256) = 0;
  *(v35 + 264) = 0;
  sub_10000CC8C(&v65, v72, &qword_1006E1878);
  sub_10001036C(v86, &qword_1006E1870);
  v72[0] = v37;
  v72[1] = v57;
  v73 = BYTE4(v47);
  *v74 = *v64;
  *&v74[3] = *&v64[3];
  v75 = v36;
  v76 = v38;
  v77 = 2;
  v78 = 0;
  *v79 = *v63;
  *&v79[3] = *&v63[3];
  v80 = v39;
  v81 = v40;
  v82 = v55;
  v83 = v56;
  v84 = v34;
  v85 = 1;
  sub_10001036C(v72, &qword_1006E1878);
  return sub_10001036C(&v58, &qword_1006E1870);
}

uint64_t sub_100033628@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetMusicItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C49C(v2, qword_1006FC1D8);
  sub_1000337A0(v6, v5, type metadata accessor for WidgetMusicItem);
  v7 = sub_10006B684(v5, 6);
  v8 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(v3 + 56))(a1 + v8[7], 1, 1, v2);
  result = sub_10056CA98();
  *(a1 + v8[5]) = v7;
  *(a1 + v8[6]) = 3;
  *(a1 + v8[8]) = 0;
  v10 = (a1 + v8[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1000337A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100033808()
{
  v1 = v0;
  v2 = type metadata accessor for RadioWidgetView(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = v1 + ((v3 + 24) & ~v3);
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  v23 = *(v6 + 8);
  v23(v4, v5);
  v7 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);

  v8 = v4 + *(v7 + 28);
  v9 = type metadata accessor for WidgetMusicItem();
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v22 = v2;

    v10 = v9[7];
    v11 = sub_10056C8A8();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);

    v12 = v9[17];
    v13 = *(v6 + 48);
    if (!v13(v8 + v12, 1, v5))
    {
      v23(v8 + v12, v5);
    }

    v14 = v9[18];
    if (!v13(v8 + v14, 1, v5))
    {
      v23(v8 + v14, v5);
    }

    v15 = v9[23];
    v16 = sub_100009DCC(&qword_1006DFD30);
    if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
    {
      v17 = sub_100572128();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v8 + v15, 1, v17))
      {
        (*(v18 + 8))(v8 + v15, v17);
      }
    }

    v2 = v22;
  }

  v19 = *(v2 + 20);
  sub_100009DCC(&qword_1006E0EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_10056EDA8();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100033C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100033CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RadioWidgetView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10003148C(a1, v6, v7, a2);
}

unint64_t sub_100033D50()
{
  result = qword_1006E1708;
  if (!qword_1006E1708)
  {
    sub_100010324(&qword_1006E16C0);
    sub_100033E0C();
    sub_1000327E4(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1708);
  }

  return result;
}

unint64_t sub_100033E0C()
{
  result = qword_1006E1710;
  if (!qword_1006E1710)
  {
    sub_100010324(&qword_1006E16D8);
    sub_100010324(&qword_1006E16C8);
    sub_100010BC0(&qword_1006E1700, &qword_1006E16C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1710);
  }

  return result;
}

uint64_t sub_100033F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E16E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033F7C@<X0>(void *a1@<X8>)
{
  result = sub_10056F118();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100033FAC()
{
  v1 = v0;
  v2 = type metadata accessor for RadioWidgetView(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = v1 + ((v3 + 32) & ~v3);
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  v23 = *(v6 + 8);
  v23(v4, v5);
  v7 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);

  v8 = v4 + *(v7 + 28);
  v9 = type metadata accessor for WidgetMusicItem();
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v22 = v2;

    v10 = v9[7];
    v11 = sub_10056C8A8();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);

    v12 = v9[17];
    v13 = *(v6 + 48);
    if (!v13(v8 + v12, 1, v5))
    {
      v23(v8 + v12, v5);
    }

    v14 = v9[18];
    if (!v13(v8 + v14, 1, v5))
    {
      v23(v8 + v14, v5);
    }

    v15 = v9[23];
    v16 = sub_100009DCC(&qword_1006DFD30);
    if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
    {
      v17 = sub_100572128();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v8 + v15, 1, v17))
      {
        (*(v18 + 8))(v8 + v15, v17);
      }
    }

    v2 = v22;
  }

  v19 = *(v2 + 20);
  sub_100009DCC(&qword_1006E0EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_10056EDA8();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100034408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RadioWidgetView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100031698(a1, v6, v7, v8, a2);
}

unint64_t sub_10003448C()
{
  result = qword_1006E1728;
  if (!qword_1006E1728)
  {
    sub_100010324(&qword_1006E1720);
    sub_100034510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1728);
  }

  return result;
}

unint64_t sub_100034510()
{
  result = qword_1006E1730;
  if (!qword_1006E1730)
  {
    sub_100010324(&qword_1006E1738);
    sub_1000345C8();
    sub_100010BC0(&qword_1006E1768, &qword_1006E1770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1730);
  }

  return result;
}

unint64_t sub_1000345C8()
{
  result = qword_1006E1740;
  if (!qword_1006E1740)
  {
    sub_100010324(&qword_1006E1748);
    sub_1000327E4(&qword_1006E1750, type metadata accessor for StationCell);
    sub_100010BC0(&qword_1006E1758, &qword_1006E1760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1740);
  }

  return result;
}

unint64_t sub_100034714()
{
  result = qword_1006E1788;
  if (!qword_1006E1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1788);
  }

  return result;
}

uint64_t sub_100034768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = sub_100009DCC(a5);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10003495C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = sub_100009DCC(a6);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

void sub_100034AA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(319);
  if (v8 <= 0x3F)
  {
    sub_100034B48(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100034B48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10056E6D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100034B9C()
{
  sub_100010324(&qword_1006E16A0);
  sub_100010324(&qword_1006E1698);
  sub_100010324(&qword_1006E1690);
  sub_100010324(&qword_1006E0D90);
  sub_100010BC0(&qword_1006E16B0, &qword_1006E1690);
  sub_100028AD8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100034CF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10056F148();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100034D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F088();
  *a1 = result;
  return result;
}

uint64_t sub_100034DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056EF48();
  *a1 = result;
  return result;
}

uint64_t sub_100034E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F028();
  *a1 = result;
  return result;
}

unint64_t sub_100034E68()
{
  result = qword_1006E1840;
  if (!qword_1006E1840)
  {
    sub_100010324(&qword_1006E1838);
    sub_100010BC0(&qword_1006E1848, &qword_1006E1850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1840);
  }

  return result;
}

unint64_t sub_100034F20()
{
  result = qword_1006E1860;
  if (!qword_1006E1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1860);
  }

  return result;
}

uint64_t sub_100034F94@<X0>(uint64_t a1@<X8>)
{
  result = sub_10056F148();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100034FF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056EF48();
  *a1 = result;
  return result;
}

uint64_t sub_100035050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F088();
  *a1 = result;
  return result;
}

uint64_t sub_1000350A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F028();
  *a1 = result;
  return result;
}

unint64_t sub_100035110()
{
  result = qword_1006E1880;
  if (!qword_1006E1880)
  {
    sub_100010324(&qword_1006E1868);
    sub_100010324(&qword_1006E1830);
    sub_100010BC0(&qword_1006E1858, &qword_1006E1830);
    sub_100034F20();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1888, &qword_1006E1890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1880);
  }

  return result;
}

uint64_t sub_100035300(uint64_t a1)
{
  v2 = sub_10056EDA8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10056EF88();
}

uint64_t sub_1000353C8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for RadioWidgetTimelineProvider(0);
  __chkstk_darwin(v1);
  v2 = sub_100009DCC(&qword_1006E18A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - v4;
  v41 = sub_100009DCC(&qword_1006E18A8);
  *&v46 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v38 - v6;
  v48 = sub_100009DCC(&qword_1006E18B0);
  v42 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v38 - v8;
  v9 = sub_100009DCC(&qword_1006E18B8);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  __chkstk_darwin(v9);
  v49 = &v38 - v11;
  static Logger.music(_:)();
  type metadata accessor for RadioWidgetView(0);
  sub_100035BD0(&qword_1006E18C0, type metadata accessor for RadioWidgetView);
  sub_100035BD0(&qword_1006E18C8, type metadata accessor for RadioWidgetTimelineProvider);
  sub_100572548();
  sub_10056F2A8();
  v12 = sub_10056FF08();
  v14 = v13;
  v16 = v15;
  v17 = sub_100035C18();
  sub_10056F568();
  sub_10001B5A4(v12, v14, v16 & 1);

  (*(v3 + 8))(v5, v2);
  sub_10056F2A8();
  v18 = sub_10056FF08();
  v20 = v19;
  v22 = v21;
  v50 = v2;
  v51 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v41;
  sub_10056F518();
  sub_10001B5A4(v18, v20, v22 & 1);

  v25 = v24;
  (*(v46 + 8))(v7, v24);
  v40 = sub_100009DCC(&qword_1006E0138);
  v26 = sub_1005724A8();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v46 = xmmword_10057B510;
  *(v29 + 16) = xmmword_10057B510;
  v30 = enum case for WidgetFamily.systemLarge(_:);
  v39 = *(v27 + 104);
  v39(v29 + v28, enum case for WidgetFamily.systemLarge(_:), v26);
  v50 = v25;
  v51 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v48;
  v33 = v47;
  sub_10056F528();

  (*(v42 + 8))(v33, v32);
  sub_100009DCC(&qword_1006E0140);
  sub_100572508();
  *(swift_allocObject() + 16) = v46;
  sub_1005724D8();
  v34 = swift_allocObject();
  *(v34 + 16) = v46;
  v39(v34 + v28, v30, v26);
  v50 = v48;
  v51 = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v43;
  v36 = v49;
  sub_10056F538();

  return (*(v44 + 8))(v36, v35);
}

uint64_t sub_100035B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035C7C(a1, a2);
  v3 = *(type metadata accessor for RadioWidgetView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0EB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100035BD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100035C18()
{
  result = qword_1006E18D0;
  if (!qword_1006E18D0)
  {
    sub_100010324(&qword_1006E18A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E18D0);
  }

  return result;
}

uint64_t sub_100035C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035D08()
{
  sub_100010324(&qword_1006E18B8);
  sub_100010324(&qword_1006E18B0);
  sub_100010324(&qword_1006E18A8);
  sub_100010324(&qword_1006E18A0);
  sub_100035C18();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100035E28()
{
  v0 = sub_100009DCC(&qword_1006E18E0);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100035EB0();
  sub_10056E878();
  return 0;
}

unint64_t sub_100035EB0()
{
  result = qword_1006E18D8;
  if (!qword_1006E18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E18D8);
  }

  return result;
}

unint64_t sub_100035F34()
{
  result = qword_1006E18E8;
  if (!qword_1006E18E8)
  {
    sub_100010324(&qword_1006E18F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E18E8);
  }

  return result;
}

id sub_100035FC0(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithRed:0.980392157 green:0.176470588 blue:0.282352941 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

uint64_t sub_100036058()
{
  v0 = sub_100570A78();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006E1058);
  sub_10000C910(v4, qword_1006FC0B8);
  v5 = sub_10000C49C(v4, qword_1006FC0B8);
  v6 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100036254;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000376F0;
  aBlock[3] = &unk_1006810C8;
  v7 = _Block_copy(aBlock);
  [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  v8 = sub_100570528();
  (*(v1 + 104))(v3, enum case for BlendMode.plusLighter(_:), v0);
  (*(v1 + 16))(&v5[*(v4 + 36)], v3, v0);
  *v5 = v8;
  return (*(v1 + 8))(v3, v0);
}

id sub_100036254(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.980392157;
    v4 = 0.176470588;
    v5 = 0.282352941;
    v6 = 1.0;
  }

  else
  {
    v3 = 0.552941176;
    v5 = 0.576470588;
    v6 = 1.0;
    v4 = 0.552941176;
  }

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:v6];
}

uint64_t sub_1000362E4()
{
  result = sub_1005704D8();
  qword_1006FC0D0 = result;
  return result;
}

uint64_t sub_100036304()
{
  v0 = sub_100570A78();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100570468();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E1058);
  sub_10000C910(v8, qword_1006FC0D8);
  v9 = sub_10000C49C(v8, qword_1006FC0D8);
  (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  v10 = sub_100570518();
  (*(v1 + 104))(v3, enum case for BlendMode.plusLighter(_:), v0);
  (*(v1 + 16))(&v9[*(v8 + 36)], v3, v0);
  *v9 = v10;
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10003651C()
{
  v0 = sub_100570468();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = sub_100570518();
  qword_1006FC0F0 = result;
  return result;
}

uint64_t sub_100036604()
{
  sub_1005704A8();
  v0 = sub_1005704E8();

  qword_1006FC0F8 = v0;
  return result;
}

double sub_10003664C()
{
  sub_100009DCC(&qword_1006E1908);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B500;
  if (qword_1006DF9A8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1006E18F8;
  v1 = qword_1006DF9B0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1006E1900;

  sub_100570968();
  sub_100570B28();
  sub_100570B38();
  sub_10056EA68();
  result = *&v3;
  xmmword_1006FC100 = v3;
  *algn_1006FC110 = v4;
  qword_1006FC120 = v5;
  return result;
}

uint64_t sub_10003677C()
{
  v0 = sub_100009DCC(&qword_1006E05F0);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = sub_100009DCC(&qword_1006E1920);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - v5;
  v20 = sub_100009DCC(&qword_1006E1928);
  __chkstk_darwin(v20);
  v8 = v19 - v7;
  v9 = sub_100009DCC(&qword_1006E1910);
  sub_10000C910(v9, qword_1006FC128);
  v19[1] = sub_10000C49C(v9, qword_1006FC128);
  sub_1005705E8();
  v10 = enum case for Image.TemplateRenderingMode.template(_:);
  v11 = sub_100570598();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v2, v10, v11);
  (*(v12 + 56))(v2, 0, 1, v11);
  v13 = sub_100570568();

  sub_100037770(v2);
  if (qword_1006DF920 != -1)
  {
    swift_once();
  }

  v14 = qword_1006FC0B0;
  KeyPath = swift_getKeyPath();
  v21 = v13;
  v22 = KeyPath;
  v23 = v14;

  v16 = sub_100009DCC(&qword_1006E1930);
  v17 = sub_1000377E0();
  sub_10056FF58();

  v21 = v16;
  v22 = v17;
  swift_getOpaqueTypeConformance2();
  sub_100570078();
  (*(v4 + 8))(v6, v3);
  sub_1000378D0();
  sub_10056FFD8();
  return sub_100037998(v8);
}

uint64_t sub_100036AE8()
{
  v0 = sub_100009DCC(&qword_1006E1910);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  v4 = sub_100009DCC(&qword_1006E1918);
  sub_10000C910(v4, qword_1006FC140);
  v5 = sub_10000C49C(v4, qword_1006FC140);
  if (qword_1006DF958 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C49C(v0, qword_1006FC128);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  sub_1005709E8();
  sub_10056E888();
  v7(v5, v3, v0);
  v8 = (v5 + *(v4 + 36));
  v9 = v11[1];
  *v8 = v11[0];
  v8[1] = v9;
  v8[2] = v11[2];
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100036CA8()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC158 = result;
  unk_1006FC160 = v3;
  return result;
}

uint64_t sub_100036DB0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC168 = result;
  unk_1006FC170 = v3;
  return result;
}

uint64_t sub_100036EB8()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC178 = result;
  unk_1006FC180 = v3;
  return result;
}

uint64_t sub_100036FC0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC188 = result;
  unk_1006FC190 = v3;
  return result;
}

uint64_t sub_1000370C8()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC198 = result;
  unk_1006FC1A0 = v3;
  return result;
}

uint64_t sub_1000371D0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC1A8 = result;
  unk_1006FC1B0 = v3;
  return result;
}

uint64_t sub_1000372D8()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC1B8 = result;
  unk_1006FC1C0 = v3;
  return result;
}

uint64_t sub_1000373E8()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC1C8 = result;
  unk_1006FC1D0 = v3;
  return result;
}

id sub_100037544(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a2;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

uint64_t sub_100037604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000376F0;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  result = sub_100570528();
  *a4 = result;
  return result;
}

id sub_1000376F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_100037758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100037770(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E05F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000377E0()
{
  result = qword_1006E1938;
  if (!qword_1006E1938)
  {
    sub_100010324(&qword_1006E1930);
    sub_10003786C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1938);
  }

  return result;
}

unint64_t sub_10003786C()
{
  result = qword_1006E1940;
  if (!qword_1006E1940)
  {
    sub_100010324(&qword_1006E1948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1940);
  }

  return result;
}

unint64_t sub_1000378D0()
{
  result = qword_1006E1950;
  if (!qword_1006E1950)
  {
    sub_100010324(&qword_1006E1928);
    sub_100010324(&qword_1006E1930);
    sub_1000377E0();
    swift_getOpaqueTypeConformance2();
    sub_10002EC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1950);
  }

  return result;
}

uint64_t sub_100037998(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E1928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037A2C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10056C8A8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100009DCC(&unk_1006E1E90);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[23];

  return v15(v16, a2, v14);
}

uint64_t sub_100037BB8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_10056C8A8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009DCC(&unk_1006E1E90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[23];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for WidgetMusicItem()
{
  result = qword_1006E19B0;
  if (!qword_1006E19B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100037D7C()
{
  sub_100037FE8(319, &qword_1006DFE60, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10056C8A8();
    if (v1 <= 0x3F)
    {
      sub_100037FE8(319, &qword_1006E19C0, &type metadata for WidgetMusicItem.Kind, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100037FE8(319, &qword_1006E1378, &type metadata for MusicItemID, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100037FE8(319, &unk_1006E1380, &type metadata for TextBadge, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_10001507C();
            if (v5 <= 0x3F)
            {
              sub_100037FE8(319, &qword_1006E19C8, &type metadata for WidgetMusicItem.ContainerTrack, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_100037FE8(319, &qword_1006E19D0, &type metadata for WidgetMusicItem.ArtworkColor, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ArtworkImage.Placeholder(319);
                  if (v8 <= 0x3F)
                  {
                    sub_100038038();
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_100037FE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100038038()
{
  if (!qword_1006E19D8)
  {
    sub_100010324(&qword_1006E1ED0);
    v0 = sub_100572E38();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E19D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetMusicItem.ArtworkColor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.ArtworkColor(uint64_t result, int a2, int a3)
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

__n128 sub_1000380F8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100038114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003815C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetMusicItem.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100038308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD000000000000027;
    }

    if (v3)
    {
      v6 = "idgetRefreshTTLBagValue";
    }

    else
    {
      v6 = "friendsAreListeningTo";
    }
  }

  else if (a1 == 2)
  {
    v6 = "chartsWidgetRefreshTTLBagValue";
    v5 = 0xD000000000000022;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "recentlyPlayedRemoteQueriesEnabledBagValue";
    }

    else
    {
      v4 = "recentlyPlayedRemoteQueriesEnabledOverride";
    }

    v6 = (v4 - 32);
    v5 = 0xD00000000000002ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v2 = 0xD000000000000027;
    }

    if (a2)
    {
      v7 = "idgetRefreshTTLBagValue";
    }

    else
    {
      v7 = "friendsAreListeningTo";
    }
  }

  else if (a2 == 2)
  {
    v7 = "chartsWidgetRefreshTTLBagValue";
    v2 = 0xD000000000000022;
  }

  else
  {
    v7 = "RefreshTTLBagValue";
    if (a2 != 3)
    {
      v7 = "moteQueriesEnabledBagValue";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

uint64_t sub_100038464(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x646F736970457674;
  v5 = 0xE900000000000065;
  if (a1 != 6)
  {
    v4 = 0x766F4D636973756DLL;
    v5 = 0xEA00000000006569;
  }

  v6 = 0xE700000000000000;
  v7 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEA00000000006F65;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747369747261;
  if (a1 != 2)
  {
    v9 = 0x7473696C79616C70;
    v8 = 0xE800000000000000;
  }

  v10 = 0x6D75626C61;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 1735290739;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000065;
        if (v11 != 0x646F736970457674)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEA00000000006569;
        if (v11 != 0x766F4D636973756DLL)
        {
LABEL_45:
          v14 = sub_100574498();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6E6F6974617473)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA00000000006F65;
      if (v11 != 0x646956636973756DLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x747369747261)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x7473696C79616C70)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x6D75626C61)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1735290739)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1000386DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x61656C655277656ELL;
  v5 = 0xEB00000000736573;
  v6 = 0x736E6F6974617473;
  v7 = 0xEE00756F59726F46;
  if (a1 != 4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x80000001005A9ED0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x59726F466564616DLL;
  v9 = 0xEA0000000000756FLL;
  if (a1 != 1)
  {
    v8 = 0x726F4673646F6F6DLL;
    v9 = 0xEB00000000756F59;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x736B636950706F74;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x736B636950706F74)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA0000000000756FLL;
      if (v10 != 0x59726F466564616DLL)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x726F4673646F6F6DLL;
    v14 = 7696217;
LABEL_29:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v13)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x61656C655277656ELL;
    v14 = 7562611;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xEE00756F59726F46;
    if (v10 != 0x736E6F6974617473)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0x80000001005A9ED0;
    if (v10 != 0xD000000000000015)
    {
LABEL_34:
      v15 = sub_100574498();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

uint64_t sub_1000388F4()
{
  sub_1005729F8();
}

Swift::Int sub_100038A1C()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

Swift::Int sub_100038B44()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

void *sub_100038C80()
{
  v1 = *(v0 + *(type metadata accessor for WidgetMusicItem() + 104));
  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100573FF8();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_10003E57C(v5);
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100038D38(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E1B88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_10003D7E0();
  sub_100574718();
  v11 = *v3;
  v10[15] = 0;
  sub_100010420();
  sub_100574368();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  sub_100574328();
  LOBYTE(v11) = 2;
  sub_100574328();
  LOBYTE(v11) = 3;
  sub_100574348();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100038F38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CFA4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100038F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE900000000000065;
  v6 = 0x646F736970457674;
  if (v2 != 6)
  {
    v6 = 0x766F4D636973756DLL;
    v5 = 0xEA00000000006569;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEA00000000006F65;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  if (v2 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D75626C61;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100039114()
{
  result = qword_1006E1A60;
  if (!qword_1006E1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A60);
  }

  return result;
}

uint64_t sub_100039168()
{
  v1 = 25705;
  v2 = 0x614E747369747261;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000391D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003CFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003920C(uint64_t a1)
{
  v2 = sub_10003D7E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039248(uint64_t a1)
{
  v2 = sub_10003D7E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100039284@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003D150(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000392EC(void *a1, double a2, double a3, double a4)
{
  v9 = sub_100009DCC(&qword_1006E1B70);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000C8CC(a1, a1[3]);
  sub_10003D78C();
  sub_100574718();
  v15 = a2;
  HIBYTE(v14) = 0;
  sub_10003CC10();
  sub_100574368();
  if (!v4)
  {
    v15 = a3;
    HIBYTE(v14) = 1;
    sub_100574368();
    v15 = a4;
    HIBYTE(v14) = 2;
    sub_100574368();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000394DC()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_100039524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003D454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003954C(uint64_t a1)
{
  v2 = sub_10003D78C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039588(uint64_t a1)
{
  v2 = sub_10003D78C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000395C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003D568(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_100039614()
{
  v1._countAndFlagsBits = sub_100573058();
  sub_100572A98(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_100572A98(v2);
  v3._countAndFlagsBits = sub_100573058();
  sub_100572A98(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_100572A98(v4);
  v5._countAndFlagsBits = sub_100573058();
  sub_100572A98(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_100572A98(v6);
  return 91;
}

uint64_t sub_1000396D8(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000413EC(0, v3, 0);
    v4 = 32;
    do
    {
      v5 = *(a1 + v4);
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        sub_1000413EC((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v5;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v9 = *(type metadata accessor for WidgetMusicItem() + 104);

  *(v1 + v9) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_1000397E0()
{
  v1 = v0;
  v2 = sub_100009DCC(&unk_1006E1E90);
  __chkstk_darwin(v2);
  v4 = &v30 - v3;
  v34 = 0xD000000000000010;
  v35 = 0x80000001005AA920;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(18);

  strcpy(&v30, "supertitle: ");
  HIWORD(v30._object) = -4864;
  object = v0->_object;
  v33._countAndFlagsBits = v0->_countAndFlagsBits;
  v33._object = object;

  sub_100009DCC(&qword_1006DFD58);
  v36._countAndFlagsBits = sub_100572978();
  sub_100572A98(v36);

  v37._countAndFlagsBits = 2108450;
  v37._object = 0xE300000000000000;
  sub_100572A98(v37);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0x22203A656C746974;
  v30._object = 0xE800000000000000;
  sub_100572A98(v0[1]);
  v38._countAndFlagsBits = 2108450;
  v38._object = 0xE300000000000000;
  sub_100572A98(v38);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(16);

  v30._countAndFlagsBits = 0x656C746974627573;
  v30._object = 0xEB0000000022203ALL;
  v6 = v0[2]._object;
  v33._countAndFlagsBits = v0[2]._countAndFlagsBits;
  v33._object = v6;

  v39._countAndFlagsBits = sub_100572978();
  sub_100572A98(v39);

  v40._countAndFlagsBits = 2108450;
  v40._object = 0xE300000000000000;
  sub_100572A98(v40);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0x22203A6C7275;
  v30._object = 0xE600000000000000;
  v7 = type metadata accessor for WidgetMusicItem();
  sub_10056C8A8();
  sub_10003CF5C(&qword_1006E1B38, &type metadata accessor for URL);
  v41._countAndFlagsBits = sub_100574408();
  sub_100572A98(v41);

  v42._countAndFlagsBits = 2108450;
  v42._object = 0xE300000000000000;
  sub_100572A98(v42);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(18);

  strcpy(&v33, "artworkImage: ");
  HIBYTE(v33._object) = -18;
  v8 = *(&v0->_countAndFlagsBits + v7[25]);
  if (v8)
  {
    [v8 size];
    v10._object = v9;
  }

  else
  {
    v10 = 0;
  }

  v30 = v10;
  LOBYTE(v31) = v8 == 0;
  sub_100009DCC(&qword_1006E1B40);
  v43._countAndFlagsBits = sub_100572978();
  sub_100572A98(v43);

  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  sub_100572A98(v44);
  sub_100572A98(v33);

  v30._countAndFlagsBits = 0x22203A646E696BLL;
  v30._object = 0xE700000000000000;
  LOBYTE(v33._countAndFlagsBits) = *(&v1->_countAndFlagsBits + v7[8]);
  sub_100009DCC(&qword_1006E1B48);
  v45._countAndFlagsBits = sub_100572978();
  sub_100572A98(v45);

  v46._countAndFlagsBits = 2108450;
  v46._object = 0xE300000000000000;
  sub_100572A98(v46);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0x203A44496D657469;
  v30._object = 0xE900000000000022;
  v47._countAndFlagsBits = sub_1005713B8();
  sub_100572A98(v47);

  v48._countAndFlagsBits = 2108450;
  v48._object = 0xE300000000000000;
  sub_100572A98(v48);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v30, "catalogID: ");
  BYTE5(v30._object) = 0;
  HIWORD(v30._object) = -5120;
  v11 = (&v1->_countAndFlagsBits + v7[10]);
  v12 = v11[1];
  v33._countAndFlagsBits = *v11;
  v33._object = v12;

  sub_100009DCC(&qword_1006E1B50);
  v49._countAndFlagsBits = sub_100572978();
  sub_100572A98(v49);

  v50._countAndFlagsBits = 2108450;
  v50._object = 0xE300000000000000;
  sub_100572A98(v50);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v30, "siriRepID: ");
  BYTE5(v30._object) = 0;
  HIWORD(v30._object) = -5120;
  sub_100572A98(*(v1 + v7[11]));
  v51._countAndFlagsBits = 2108450;
  v51._object = 0xE300000000000000;
  sub_100572A98(v51);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(23);

  v30._countAndFlagsBits = 0xD000000000000012;
  v30._object = 0x80000001005AA940;
  v13 = (&v1->_countAndFlagsBits + v7[12]);
  v14 = v13[1];
  v33._countAndFlagsBits = *v13;
  v33._object = v14;

  v52._countAndFlagsBits = sub_100572978();
  sub_100572A98(v52);

  v53._countAndFlagsBits = 2108450;
  v53._object = 0xE300000000000000;
  sub_100572A98(v53);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(26);

  v30._countAndFlagsBits = 0xD000000000000015;
  v30._object = 0x80000001005AA960;
  v15 = (&v1->_countAndFlagsBits + v7[13]);
  v16 = v15[1];
  v33._countAndFlagsBits = *v15;
  v33._object = v16;

  v54._countAndFlagsBits = sub_100572978();
  sub_100572A98(v54);

  v55._countAndFlagsBits = 2108450;
  v55._object = 0xE300000000000000;
  sub_100572A98(v55);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(26);

  v30._countAndFlagsBits = 0xD000000000000015;
  v30._object = 0x80000001005AA980;
  v17 = (&v1->_countAndFlagsBits + v7[14]);
  v18 = v17[1];
  v33._countAndFlagsBits = *v17;
  v33._object = v18;

  v56._countAndFlagsBits = sub_100572978();
  sub_100572A98(v56);

  v57._countAndFlagsBits = 2108450;
  v57._object = 0xE300000000000000;
  sub_100572A98(v57);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0x203A736567646162;
  v30._object = 0xE900000000000022;
  v58._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v58);

  v59._countAndFlagsBits = 2108450;
  v59._object = 0xE300000000000000;
  sub_100572A98(v59);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(16);

  strcpy(&v30, "isPlayable: ");
  BYTE5(v30._object) = 0;
  HIWORD(v30._object) = -5120;
  if (*(&v1->_countAndFlagsBits + v7[16]))
  {
    v19._countAndFlagsBits = 1702195828;
  }

  else
  {
    v19._countAndFlagsBits = 0x65736C6166;
  }

  if (*(&v1->_countAndFlagsBits + v7[16]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v19._object = v20;
  sub_100572A98(v19);

  v60._countAndFlagsBits = 8236;
  v60._object = 0xE200000000000000;
  sub_100572A98(v60);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(19);

  strcpy(&v30, "releaseDate: ");
  HIBYTE(v30._object) = -18;
  sub_10001F588(v1 + v7[17], v4);
  v61._countAndFlagsBits = sub_100572978();
  sub_100572A98(v61);

  v62._countAndFlagsBits = 2108450;
  v62._object = 0xE300000000000000;
  sub_100572A98(v62);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(24);

  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x80000001005AA9A0;
  sub_10001F588(v1 + v7[18], v4);
  v63._countAndFlagsBits = sub_100572978();
  sub_100572A98(v63);

  v64._countAndFlagsBits = 2108450;
  v64._object = 0xE300000000000000;
  sub_100572A98(v64);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0x22203A65726E6567;
  v30._object = 0xE800000000000000;
  v21 = (&v1->_countAndFlagsBits + v7[19]);
  v22 = v21[1];
  v33._countAndFlagsBits = *v21;
  v33._object = v22;

  v65._countAndFlagsBits = sub_100572978();
  sub_100572A98(v65);

  v66._countAndFlagsBits = 2108450;
  v66._object = 0xE300000000000000;
  sub_100572A98(v66);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(27);

  v30._countAndFlagsBits = 0xD000000000000017;
  v30._object = 0x80000001005AA9C0;
  v33._countAndFlagsBits = *(*(&v1->_countAndFlagsBits + v7[20]) + 16);
  v67._countAndFlagsBits = sub_100574408();
  sub_100572A98(v67);

  v68._countAndFlagsBits = 8236;
  v68._object = 0xE200000000000000;
  sub_100572A98(v68);
  sub_100572A98(v30);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(22);

  v33._countAndFlagsBits = 0xD000000000000012;
  v33._object = 0x80000001005AA9E0;
  v23 = v1 + v7[21];
  v24 = *(v23 + 2);
  v25 = v23[24];
  v30 = *v23;
  v31 = v24;
  v32 = v25;
  sub_100009DCC(&qword_1006E1B58);
  v69._countAndFlagsBits = sub_100572978();
  sub_100572A98(v69);

  v70._countAndFlagsBits = 8236;
  v70._object = 0xE200000000000000;
  sub_100572A98(v70);
  sub_100572A98(v33);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100573ED8(19);

  v33._countAndFlagsBits = 0xD000000000000011;
  v33._object = 0x80000001005AAA00;
  v26 = v1 + v7[22];
  v27 = *(v26 + 2);
  v28 = v26[24];
  v30 = *v26;
  v31 = v27;
  v32 = v28;
  v71._countAndFlagsBits = sub_100572978();
  sub_100572A98(v71);

  sub_100572A98(v33);

  v72._countAndFlagsBits = 41;
  v72._object = 0xE100000000000000;
  sub_100572A98(v72);
  return v34;
}

void sub_10003A388()
{
  v0 = sub_100009DCC(&unk_1006E1E90);
  v1 = __chkstk_darwin(v0 - 8);
  v47 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v40 - v3;
  v5 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_10056C8A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WidgetMusicItem();
  sub_10000C910(v15, qword_1006FC1D8);
  v16 = sub_10000C49C(v15, qword_1006FC1D8);
  sub_10056C868();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = 0x80000001005AA900;
    v45 = 0x80000001005AA470;
    (*(v12 + 32))(v14, v10, v11);
    v46 = [objc_allocWithZone(UIImage) init];
    v17 = sub_100009DCC(&qword_1006DFD30);
    (*(*(v17 - 8) + 56))(v7, 1, 11, v17);
    v18 = sub_1005713C8();
    v41 = v19;
    v42 = v18;
    v20 = sub_10056CAA8();
    v21 = *(*(v20 - 8) + 56);
    v22 = v11;
    v43 = v4;
    v21(v4, 1, 1, v20);
    v23 = v47;
    v21(v47, 1, 1, v20);
    v24 = v15[25];
    *(v16 + v24) = 0;
    *(v16 + v15[26]) = _swiftEmptyArrayStorage;
    *v16 = xmmword_10057DAF0;
    v25 = v45;
    *(v16 + 16) = 0xD000000000000018;
    *(v16 + 24) = v25;
    *(v16 + 32) = 0xD000000000000010;
    *(v16 + 40) = v44;
    v26 = v14;
    (*(v12 + 16))(v16 + v15[7], v14, v22);
    v27 = v7;
    sub_10003CEF4(v7, v16 + v15[23], type metadata accessor for ArtworkImage.Placeholder);
    *(v16 + v15[24]) = 0x3FF0000000000000;
    *(v16 + v15[8]) = 8;
    v28 = (v16 + v15[9]);
    v29 = v41;
    *v28 = v42;
    v28[1] = v29;
    v30 = (v16 + v15[10]);
    *v30 = 0;
    v30[1] = 0;
    v31 = (v16 + v15[11]);
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    v32 = (v16 + v15[12]);
    *v32 = 0;
    v32[1] = 0;
    v33 = (v16 + v15[13]);
    *v33 = 0;
    v33[1] = 0;
    v34 = (v16 + v15[14]);
    *v34 = 0;
    v34[1] = 0;
    *(v16 + v15[15]) = _swiftEmptyArrayStorage;
    *(v16 + v15[16]) = 0;
    v35 = v43;
    sub_10001F588(v43, v16 + v15[17]);
    sub_10001F588(v23, v16 + v15[18]);
    v36 = (v16 + v15[19]);
    *v36 = 0;
    v36[1] = 0;
    *(v16 + v15[20]) = _swiftEmptyArrayStorage;
    v37 = v16 + v15[21];
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *(v37 + 24) = 1;
    v38 = v16 + v15[22];
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 1;
    sub_1000396D8(_swiftEmptyArrayStorage);
    sub_10002FB84(v23);
    sub_10002FB84(v35);
    sub_10003C9AC(v27, type metadata accessor for ArtworkImage.Placeholder);
    (*(v12 + 8))(v26, v22);
    v39 = *(v16 + v24);
    *(v16 + v24) = v46;
  }
}

unint64_t sub_10003A8B4(char a1)
{
  result = 0x7469747265707573;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 1684957547;
      break;
    case 5:
      result = 0x44496D657469;
      break;
    case 6:
      result = 0x49676F6C61746163;
      break;
    case 7:
      result = 0x4970655269726973;
      break;
    case 8:
    case 16:
      result = 0x656E6961746E6F63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x736567646162;
      break;
    case 12:
      result = 0x626179616C507369;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
    case 17:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x65726E6567;
      break;
    case 18:
      result = 0x756F72676B636162;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0x49656C6261646F63;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003AB6C(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E1AE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_10003C594();
  sub_100574718();
  LOBYTE(v20) = 0;
  sub_100574308();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    sub_100574328();
    LOBYTE(v20) = 2;
    sub_100574308();
    v9 = type metadata accessor for WidgetMusicItem();
    LOBYTE(v20) = 3;
    sub_10056C8A8();
    sub_10003CF5C(&qword_1006E1AE8, &type metadata accessor for URL);
    sub_100574368();
    LOBYTE(v20) = *(v3 + v9[8]);
    v23 = 4;
    sub_10002FD00();
    sub_100574318();
    v10 = (v3 + v9[9]);
    v12 = *v10;
    v11 = v10[1];
    *&v20 = v12;
    *(&v20 + 1) = v11;
    v23 = 5;
    sub_100010420();
    sub_100574368();
    v20 = *(v3 + v9[10]);
    v23 = 6;
    sub_100574318();
    LOBYTE(v20) = 7;
    sub_100574328();
    v20 = *(v3 + v9[12]);
    v23 = 8;
    sub_100574318();
    v20 = *(v3 + v9[13]);
    v23 = 9;
    sub_100574318();
    LOBYTE(v20) = 10;
    sub_100574308();
    *&v20 = *(v3 + v9[15]);
    v23 = 11;
    sub_100009DCC(&qword_1006E1A80);
    sub_10003CA0C();
    sub_100574368();
    LOBYTE(v20) = 12;
    sub_100574338();
    LOBYTE(v20) = 13;
    sub_10056CAA8();
    sub_10003CF5C(&qword_1006DFF90, &type metadata accessor for Date);
    sub_100574318();
    LOBYTE(v20) = 14;
    sub_100574318();
    LOBYTE(v20) = 15;
    sub_100574308();
    *&v20 = *(v3 + v9[20]);
    v23 = 16;
    sub_100009DCC(&qword_1006E1A98);
    sub_10003CAE4();
    sub_100574368();
    v13 = (v3 + v9[21]);
    v14 = *(v13 + 2);
    v15 = *(v13 + 24);
    v20 = *v13;
    v21 = v14;
    v22 = v15;
    v23 = 17;
    sub_10003CBBC();
    sub_100574318();
    v16 = (v3 + v9[22]);
    v17 = *(v16 + 2);
    v18 = *(v16 + 24);
    v20 = *v16;
    v21 = v17;
    v22 = v18;
    v23 = 18;
    sub_100574318();
    LOBYTE(v20) = 19;
    type metadata accessor for ArtworkImage.Placeholder(0);
    sub_10003CF5C(&qword_1006E1B18, type metadata accessor for ArtworkImage.Placeholder);
    sub_100574368();
    *&v20 = *(v3 + v9[24]);
    v23 = 20;
    sub_10003CC10();
    sub_100574368();
    *&v20 = *(v3 + v9[25]);
    v23 = 21;
    sub_100014D78();
    sub_100574368();
    *&v20 = *(v3 + v9[26]);
    v23 = 22;
    sub_100009DCC(&qword_1006E1AC8);
    sub_10003CC64();
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10003B300(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v82);
  v83 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&unk_1006E1E90);
  v5 = __chkstk_darwin(v4 - 8);
  v85 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v78 - v7;
  v9 = sub_10056C8A8();
  v86 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009DCC(&qword_1006E1A68);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v14 = &v78 - v13;
  v15 = type metadata accessor for WidgetMusicItem();
  __chkstk_darwin(v15);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v90 = a1;
  sub_10000C8CC(a1, v18);
  sub_10003C594();
  v89 = v14;
  v19 = v91;
  sub_100574708();
  if (v19)
  {
    v91 = v19;
    sub_100010474(v90);
    v24 = 0;
LABEL_4:

    return;
  }

  v78 = v8;
  v79 = v9;
  v21 = v87;
  v20 = v88;
  v80 = v15;
  v81 = v17;
  LOBYTE(v92) = 0;
  v22 = v89;
  v23 = sub_100574278();
  v25 = v81;
  *v81 = v23;
  *(v25 + 1) = v26;
  LOBYTE(v92) = 1;
  *(v25 + 2) = sub_100574298();
  *(v25 + 3) = v27;
  LOBYTE(v92) = 2;
  v28 = sub_100574278();
  v91 = 0;
  *(v25 + 4) = v28;
  *(v25 + 5) = v29;
  LOBYTE(v92) = 3;
  sub_10003CF5C(&qword_1006E1A78, &type metadata accessor for URL);
  v30 = v79;
  v31 = v91;
  sub_1005742D8();
  v91 = v31;
  if (v31)
  {
    (*(v21 + 8))(v22, v20);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    LODWORD(v83) = 0;
    LODWORD(v84) = 0;
    LODWORD(v85) = 0;
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
LABEL_12:
    sub_100010474(v90);

    v40 = v36;
    if ((v32 & 1) == 0)
    {
      v41 = 0;
      v42 = 0;
      v24 = 0;
      if (!v33)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

    v24 = 0;
    v42 = 0;
    v41 = 0;
LABEL_27:
    (*(v86 + 8))(v81 + v80[7], v79);
    if ((v33 & 1) == 0)
    {
LABEL_14:
      v43 = v80;
      v44 = v81;
      if (v34)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    v43 = v80;
    v44 = v81;

    if (v34)
    {
LABEL_15:

      if ((v83 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (!v83)
    {
LABEL_16:
      if (v84)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

LABEL_30:

    if (v84)
    {
LABEL_17:

      if ((v85 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!v85)
    {
LABEL_18:
      if (v87)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v87)
    {
LABEL_19:

      if ((v88 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v88)
    {
LABEL_20:
      if (v89)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }

LABEL_34:

    if (v89)
    {
LABEL_21:
      sub_10002FB84(v44 + v43[17]);
      if ((v35 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!v35)
    {
LABEL_22:
      if (v40)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

LABEL_36:
    sub_10002FB84(v44 + v43[18]);
    if (v40)
    {
LABEL_23:

      if ((v41 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!v41)
    {
LABEL_24:
      if (!v42)
      {
        goto LABEL_4;
      }

LABEL_39:
      sub_10003C9AC(v44 + v43[23], type metadata accessor for ArtworkImage.Placeholder);
      goto LABEL_4;
    }

LABEL_38:

    if ((v42 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v37 = v80;
  (*(v86 + 32))(&v25[v80[7]], v11, v30);
  v95 = 4;
  sub_10002FBEC();
  v38 = v91;
  sub_100574288();
  v91 = v38;
  if (v38)
  {
    (*(v21 + 8))(v89, v20);
LABEL_11:
    v33 = 0;
    v34 = 0;
    LODWORD(v83) = 0;
    LODWORD(v84) = 0;
    LODWORD(v85) = 0;
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    goto LABEL_12;
  }

  v25[v37[8]] = v92;
  v95 = 5;
  sub_1000104C0();
  v39 = v91;
  sub_1005742D8();
  if (v39)
  {
    v91 = v39;
    (*(v21 + 8))(v89, v88);
    goto LABEL_11;
  }

  v45 = *(&v92 + 1);
  v46 = &v25[v37[9]];
  *v46 = v92;
  *(v46 + 1) = v45;
  v95 = 6;
  sub_100574288();
  *&v25[v37[10]] = v92;
  LOBYTE(v92) = 7;
  v47 = sub_100574298();
  v48 = &v25[v80[11]];
  *v48 = v47;
  v48[1] = v49;
  v95 = 8;
  sub_100574288();
  v91 = 0;
  *(v81 + v80[12]) = v92;
  v95 = 9;
  v50 = v91;
  sub_100574288();
  v91 = v50;
  if (v50)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v85) = 0;
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    goto LABEL_12;
  }

  *(v81 + v80[13]) = v92;
  LOBYTE(v92) = 10;
  v51 = v91;
  v52 = sub_100574278();
  v91 = v51;
  if (v51)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    goto LABEL_12;
  }

  v54 = (v81 + v80[14]);
  *v54 = v52;
  v54[1] = v53;
  sub_100009DCC(&qword_1006E1A80);
  v95 = 11;
  sub_10003C5E8();
  v55 = v91;
  sub_1005742D8();
  v91 = v55;
  if (v55)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    goto LABEL_12;
  }

  *(v81 + v80[15]) = v92;
  LOBYTE(v92) = 12;
  v56 = sub_1005742A8();
  v91 = 0;
  *(v81 + v80[16]) = v56 & 1;
  sub_10056CAA8();
  LOBYTE(v92) = 13;
  sub_10003CF5C(&qword_1006DFFB8, &type metadata accessor for Date);
  v57 = v91;
  sub_100574288();
  v91 = v57;
  if (v57)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    goto LABEL_12;
  }

  sub_100015128(v78, v81 + v80[17]);
  LOBYTE(v92) = 14;
  v58 = v91;
  sub_100574288();
  v91 = v58;
  if (v58)
  {
    (*(v21 + 8))(v89, v88);
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    goto LABEL_12;
  }

  sub_100015128(v85, v81 + v80[18]);
  LOBYTE(v92) = 15;
  v59 = v91;
  v60 = sub_100574278();
  v91 = v59;
  if (v59)
  {
    (*(v21 + 8))(v89, v88);
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    v35 = 1;
    goto LABEL_12;
  }

  v62 = (v81 + v80[19]);
  *v62 = v60;
  v62[1] = v61;
  sub_100009DCC(&qword_1006E1A98);
  v95 = 16;
  sub_10003C6C0();
  v63 = v91;
  sub_1005742D8();
  v91 = v63;
  if (v63)
  {
    (*(v21 + 8))(v89, v88);
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_12;
  }

  *(v81 + v80[20]) = v92;
  v95 = 17;
  sub_10003C798();
  v64 = v91;
  sub_100574288();
  v91 = v64;
  if (v64 || (v65 = v93, v66 = v94, v67 = v81 + v80[21], *v67 = v92, *(v67 + 2) = v65, v67[24] = v66, v95 = 18, v68 = v91, sub_100574288(), (v91 = v68) != 0) || (v69 = v93, v70 = v94, v71 = v81 + v80[22], *v71 = v92, *(v71 + 2) = v69, v71[24] = v70, LOBYTE(v92) = 19, sub_10003CF5C(&qword_1006E1AB8, type metadata accessor for ArtworkImage.Placeholder), v72 = v91, sub_1005742D8(), (v91 = v72) != 0))
  {
    (*(v21 + 8))(v89, v88);
    sub_100010474(v90);
    v42 = 0;
    v24 = 0;
LABEL_58:

    v41 = 1;
    v40 = 1;
    v35 = 1;
    LODWORD(v89) = 1;
    LODWORD(v88) = 1;
    LODWORD(v87) = 1;
    LODWORD(v85) = 1;
    LODWORD(v84) = 1;
    LODWORD(v83) = 1;
    v34 = 1;
    LOBYTE(v33) = 1;
    goto LABEL_27;
  }

  sub_10003C7EC(v83, v81 + v80[23]);
  v95 = 20;
  sub_10003C850();
  v73 = v91;
  sub_1005742D8();
  v91 = v73;
  if (v73 || (*(v81 + v80[24]) = v92, v95 = 21, sub_100014D24(), v74 = v91, sub_1005742D8(), (v91 = v74) != 0))
  {
    (*(v21 + 8))(v89, v88);
    sub_100010474(v90);
    v24 = 0;
    v42 = 1;
    goto LABEL_58;
  }

  v24 = v92;
  *(v81 + v80[25]) = v92;
  sub_100009DCC(&qword_1006E1AC8);
  v95 = 22;
  sub_10003C8A4();
  v75 = v91;
  sub_1005742D8();
  v91 = v75;
  if (v75)
  {
    (*(v21 + 8))(v89, v88);
    sub_100010474(v90);
    v42 = 1;
    goto LABEL_58;
  }

  v76 = v80[26];
  (*(v21 + 8))(v89, v88);
  v77 = v81;
  *(v81 + v76) = v92;
  sub_10003CEF4(v77, v84, type metadata accessor for WidgetMusicItem);
  sub_100010474(v90);
  sub_10003C9AC(v77, type metadata accessor for WidgetMusicItem);
}