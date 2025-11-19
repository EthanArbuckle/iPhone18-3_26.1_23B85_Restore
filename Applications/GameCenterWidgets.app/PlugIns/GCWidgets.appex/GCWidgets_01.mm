unint64_t sub_10001AFE4()
{
  result = qword_1000951D0;
  if (!qword_1000951D0)
  {
    sub_1000038D4(&qword_1000951B8, &qword_100074550);
    sub_10001B09C();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000951D0);
  }

  return result;
}

unint64_t sub_10001B09C()
{
  result = qword_1000951D8;
  if (!qword_1000951D8)
  {
    sub_1000038D4(&qword_1000951B0, &qword_100074548);
    sub_10001B154();
    sub_100004C3C(&qword_1000951F0, &qword_1000951F8, &qword_1000745A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000951D8);
  }

  return result;
}

unint64_t sub_10001B154()
{
  result = qword_1000951E0;
  if (!qword_1000951E0)
  {
    sub_1000038D4(&qword_1000951A8, &qword_100074540);
    sub_100004C3C(&qword_1000951E8, &qword_1000951A0, &qword_100074538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000951E0);
  }

  return result;
}

unint64_t sub_10001B20C()
{
  result = qword_1000949D0;
  if (!qword_1000949D0)
  {
    sub_10007297C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000949D0);
  }

  return result;
}

unint64_t sub_10001B268()
{
  result = qword_100095250;
  if (!qword_100095250)
  {
    sub_1000038D4(&qword_100095258, &qword_1000745F8);
    sub_10001AFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095250);
  }

  return result;
}

uint64_t sub_10001B308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_100095260, qword_100074600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10001B480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_100095260, qword_100074600);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFEmptyStateView()
{
  result = qword_1000952C0;
  if (!qword_1000952C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B63C()
{
  sub_10001B72C(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10001B72C(319, &qword_100094858, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_10001B72C(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001B72C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001B79C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10007297C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = *(type metadata accessor for AFEmptyStateView() + 24);
  v29 = v1;
  sub_1000129F8(v17);
  sub_10007296C();
  sub_10001D764(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v19 = sub_100072B1C();
  v20 = *(v11 + 8);
  v20(v14, v10);
  v20(v17, v10);
  if (v19)
  {
    v21 = enum case for BlendMode.normal(_:);
    v22 = sub_1000728BC();
    return (*(*(v22 - 8) + 104))(v30, v21, v22);
  }

  else
  {
    v24 = v30;
    sub_100012A20(v9);
    (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
    v25 = sub_100071E9C();
    v26 = *(v3 + 8);
    v26(v6, v2);
    v26(v9, v2);
    v27 = sub_1000728BC();
    if (v25)
    {
      v28 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v28 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v27 - 8) + 104))(v24, *v28, v27);
  }
}

void sub_10001BABC()
{
  v0 = sub_100072B2C();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
    v3 = [objc_opt_self() configurationWithFont:v2];

    [v1 imageWithConfiguration:v3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001BBBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000388C(&qword_100095308, &qword_100074688);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = sub_10000388C(&qword_100095310, &qword_100074690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  *v8 = sub_10007223C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = sub_10000388C(&qword_100095318, &unk_100074698);
  sub_10001BE58(v2, &v8[*(v13 + 44)]);
  LOBYTE(v2) = sub_1000723BC();
  sub_100071E8C();
  v14 = &v8[*(v5 + 44)];
  *v14 = v2;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  v20 = sub_1000723DC();
  *(inited + 32) = v20;
  v21 = sub_1000723FC();
  *(inited + 33) = v21;
  v22 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v20)
  {
    v22 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v21)
  {
    v22 = sub_1000723EC();
  }

  sub_100014DEC(v8, v12, &qword_100095308, &qword_100074688);
  v23 = &v12[*(v9 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = sub_1000723CC();
  sub_100071E8C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100014DEC(v12, a1, &qword_100095310, &qword_100074690);
  result = sub_10000388C(&qword_100095320, &qword_1000746A8);
  v34 = a1 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_10001BE58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v152 = a2;
  v149 = sub_10000388C(&qword_100095328, &qword_1000746B0);
  v3 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v151 = &v113 - v4;
  v150 = sub_10000388C(&qword_100095330, &qword_1000746B8);
  v5 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v122 = &v113 - v6;
  v142 = sub_10000388C(&qword_100095338, &qword_1000746C0);
  v7 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v143 = &v113 - v8;
  v121 = sub_10007238C();
  v120 = *(v121 - 8);
  v9 = *(v120 + 64);
  __chkstk_darwin(v121);
  v119 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10000388C(&qword_100095340, &qword_1000746C8);
  v11 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v114 = &v113 - v12;
  v140 = sub_10000388C(&qword_100095348, &qword_1000746D0);
  v116 = *(v140 - 8);
  v13 = *(v116 + 64);
  __chkstk_darwin(v140);
  v115 = &v113 - v14;
  v141 = sub_10000388C(&qword_100095350, &qword_1000746D8);
  v118 = *(v141 - 8);
  v15 = *(v118 + 64);
  __chkstk_darwin(v141);
  v117 = &v113 - v16;
  v126 = sub_10000388C(&qword_100095358, &qword_1000746E0);
  v17 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v19 = &v113 - v18;
  v153 = sub_10000388C(&qword_100095360, &qword_1000746E8);
  v20 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v138 = &v113 - v21;
  v145 = sub_10000388C(&qword_100095368, &qword_1000746F0);
  v22 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v137 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v146 = &v113 - v25;
  v26 = sub_10000388C(&qword_100095370, &qword_1000746F8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v148 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v144 = &v113 - v30;
  __chkstk_darwin(v31);
  v147 = &v113 - v32;
  v33 = sub_10000388C(&qword_100095378, &qword_100074700);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v113 - v35;
  v37 = sub_1000729DC();
  v38 = *(v37 - 8);
  v39 = v38[8];
  __chkstk_darwin(v37);
  v41 = &v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v113 - v43;
  v45 = *(type metadata accessor for AFEmptyStateView() + 20);
  v132 = a1;
  v158 = a1 + v45;
  sub_100012E94(v44);
  v46 = v38[13];
  v157 = enum case for WidgetFamily.systemSmall(_:);
  v155 = v46;
  v156 = v38 + 13;
  v46(v41);
  v131 = sub_10001D764(&qword_100095380, &type metadata accessor for WidgetFamily);
  LOBYTE(a1) = sub_100072B1C();
  v47 = v38[1];
  v160 = v41;
  v47(v41, v37);
  v159 = v44;
  v133 = v38 + 1;
  v154 = v47;
  v47(v44, v37);
  v48 = 0;
  KeyPath = 0;
  v50 = 0;
  if ((a1 & 1) == 0)
  {
    sub_10001BABC();
    sub_10007275C();
    v51 = enum case for Image.TemplateRenderingMode.template(_:);
    v52 = sub_1000727AC();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v36, v51, v52);
    (*(v53 + 56))(v36, 0, 1, v52);
    v48 = sub_10007278C();

    sub_100004890(v36, &qword_100095378, &qword_100074700);
    sub_10007270C();
    v50 = sub_1000726FC();

    KeyPath = swift_getKeyPath();
  }

  v135 = KeyPath;
  v136 = v50;
  v139 = v48;
  sub_1000728AC();
  sub_100071F2C();
  v130 = v167;
  v129 = v169;
  v128 = v171;
  v127 = v172;
  v166 = 1;
  v165 = v168;
  v164 = v170;
  sub_1000721DC();
  v124 = sub_10007258C();
  v123 = v54;
  v56 = v55;
  v125 = v57;
  v58 = sub_10007252C();
  v59 = &v19[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v60 = type metadata accessor for DynamicTypeFont();
  v61 = v60[6];
  v62 = enum case for ContentSizeCategory.extraLarge(_:);
  v63 = sub_10007222C();
  v64 = *(v63 - 8);
  (*(v64 + 104))(v59 + v61, v62, v63);
  (*(v64 + 56))(v59 + v61, 0, 1, v63);
  sub_10007246C();
  v66 = v65;
  *v59 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v59 + v60[5]) = v58;
  *(v59 + v60[7]) = v66;
  v67 = v123;
  *v19 = v124;
  *(v19 + 1) = v67;
  v19[16] = v56 & 1;
  *(v19 + 3) = v125;
  sub_10007270C();
  v68 = sub_1000726FC();

  v69 = swift_getKeyPath();
  v70 = &v19[*(sub_10000388C(&qword_100095398, &qword_100074778) + 36)];
  *v70 = v69;
  v70[1] = v68;
  v71 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_10001B79C(&v19[*(v71 + 36)]);
  *&v19[*(v126 + 36)] = 256;
  sub_10001D148();
  v72 = v138;
  sub_1000725FC();
  sub_100004890(v19, &qword_100095358, &qword_1000746E0);
  v73 = swift_getKeyPath();
  v74 = v72 + *(v153 + 36);
  *v74 = v73;
  *(v74 + 8) = 1;
  v75 = v159;
  sub_100012E94(v159);
  v76 = v160;
  v155(v160, v157, v37);
  sub_10001D764(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v77 = v154;
  v154(v76, v37);
  v77(v75, v37);
  if (v161 == v163)
  {
    v78 = swift_getKeyPath();
    v79 = v114;
    sub_100004C94(v72, v114, &qword_100095360, &qword_1000746E8);
    v80 = v134;
    v81 = v79 + *(v134 + 36);
    *v81 = v78;
    *(v81 + 8) = 0;
    v82 = sub_10001D4D8(&qword_1000953E0, &qword_100095340, &qword_1000746C8, sub_10001D3DC);
    v83 = v115;
    sub_10007269C();
    sub_100004890(v79, &qword_100095340, &qword_1000746C8);
    v84 = v119;
    sub_10007237C();
    v161 = v80;
    v162 = v82;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v86 = v117;
    v87 = v140;
    sub_10007267C();
    (*(v120 + 8))(v84, v121);
    (*(v116 + 8))(v83, v87);
    v88 = v118;
    v89 = v141;
    (*(v118 + 16))(v143, v86, v141);
    swift_storeEnumTagMultiPayload();
    v161 = v87;
    v162 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_10001D3DC();
    v90 = v137;
    sub_10007230C();
    (*(v88 + 8))(v86, v89);
  }

  else
  {
    sub_100004C94(v72, v143, &qword_100095360, &qword_1000746E8);
    swift_storeEnumTagMultiPayload();
    v91 = sub_10001D4D8(&qword_1000953E0, &qword_100095340, &qword_1000746C8, sub_10001D3DC);
    v161 = v134;
    v162 = v91;
    v92 = swift_getOpaqueTypeConformance2();
    v161 = v140;
    v162 = v92;
    swift_getOpaqueTypeConformance2();
    sub_10001D3DC();
    v90 = v137;
    sub_10007230C();
  }

  v93 = v146;
  sub_100004890(v72, &qword_100095360, &qword_1000746E8);
  sub_100014DEC(v90, v93, &qword_100095368, &qword_1000746F0);
  v94 = v159;
  sub_100012E94(v159);
  v95 = v160;
  v155(v160, v157, v37);
  v96 = sub_100072B1C();
  v97 = v154;
  v154(v95, v37);
  v97(v94, v37);
  if (v96)
  {
    sub_100004C94(v93, v151, &qword_100095368, &qword_1000746F0);
    swift_storeEnumTagMultiPayload();
    sub_10001D4D8(&qword_100095410, &qword_100095330, &qword_1000746B8, sub_10001D588);
    sub_10001D588();
    v98 = v144;
    sub_10007230C();
  }

  else
  {
    v99 = swift_getKeyPath();
    v100 = v122;
    sub_100004C94(v93, v122, &qword_100095368, &qword_1000746F0);
    v101 = v100 + *(v150 + 36);
    *v101 = v99;
    *(v101 + 8) = 1;
    sub_100004C94(v100, v151, &qword_100095330, &qword_1000746B8);
    swift_storeEnumTagMultiPayload();
    sub_10001D4D8(&qword_100095410, &qword_100095330, &qword_1000746B8, sub_10001D588);
    sub_10001D588();
    v98 = v144;
    sub_10007230C();
    sub_100004890(v100, &qword_100095330, &qword_1000746B8);
  }

  sub_100004890(v93, &qword_100095368, &qword_1000746F0);
  v102 = v147;
  sub_100014DEC(v98, v147, &qword_100095370, &qword_1000746F8);
  v103 = v166;
  v104 = v165;
  v105 = v164;
  v106 = v148;
  sub_100004C94(v102, v148, &qword_100095370, &qword_1000746F8);
  v107 = v152;
  v108 = v139;
  v109 = v135;
  *v152 = v139;
  v107[1] = v109;
  v107[2] = v136;
  v107[3] = 0;
  *(v107 + 32) = v103;
  v107[5] = v130;
  *(v107 + 48) = v104;
  v107[7] = v129;
  *(v107 + 64) = v105;
  v110 = v127;
  v107[9] = v128;
  v107[10] = v110;
  v111 = sub_10000388C(&qword_100095420, &qword_100074800);
  sub_100004C94(v106, v107 + *(v111 + 64), &qword_100095370, &qword_1000746F8);
  sub_10001D6C8(v108);
  sub_10001D718(v108);
  sub_100004890(v102, &qword_100095370, &qword_1000746F8);
  sub_100004890(v106, &qword_100095370, &qword_1000746F8);
  return sub_10001D718(v108);
}

unint64_t sub_10001D148()
{
  result = qword_1000953A8;
  if (!qword_1000953A8)
  {
    sub_1000038D4(&qword_100095358, &qword_1000746E0);
    sub_10001D1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953A8);
  }

  return result;
}

unint64_t sub_10001D1D4()
{
  result = qword_1000953B0;
  if (!qword_1000953B0)
  {
    sub_1000038D4(&qword_1000953A0, &unk_100074780);
    sub_10001D260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953B0);
  }

  return result;
}

unint64_t sub_10001D260()
{
  result = qword_1000953B8;
  if (!qword_1000953B8)
  {
    sub_1000038D4(&qword_100095398, &qword_100074778);
    sub_10001D318();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953B8);
  }

  return result;
}

unint64_t sub_10001D318()
{
  result = qword_1000953C0;
  if (!qword_1000953C0)
  {
    sub_1000038D4(&qword_100095388, &qword_100074738);
    sub_10001D764(&qword_1000953C8, type metadata accessor for DynamicTypeFont);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953C0);
  }

  return result;
}

unint64_t sub_10001D3DC()
{
  result = qword_1000953E8;
  if (!qword_1000953E8)
  {
    sub_1000038D4(&qword_100095360, &qword_1000746E8);
    sub_1000038D4(&qword_100095358, &qword_1000746E0);
    sub_10001D148();
    swift_getOpaqueTypeConformance2();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953E8);
  }

  return result;
}

uint64_t sub_10001D4D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    sub_100004C3C(&qword_100095400, &qword_100095408, &qword_1000747C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001D588()
{
  result = qword_100095418;
  if (!qword_100095418)
  {
    sub_1000038D4(&qword_100095368, &qword_1000746F0);
    sub_1000038D4(&qword_100095348, &qword_1000746D0);
    sub_1000038D4(&qword_100095340, &qword_1000746C8);
    sub_10001D4D8(&qword_1000953E0, &qword_100095340, &qword_1000746C8, sub_10001D3DC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001D3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095418);
  }

  return result;
}

uint64_t sub_10001D6C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001D718(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001D764(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001D7B0()
{
  result = qword_100095428;
  if (!qword_100095428)
  {
    sub_1000038D4(&qword_100095320, &qword_1000746A8);
    sub_10001D83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095428);
  }

  return result;
}

unint64_t sub_10001D83C()
{
  result = qword_100095430;
  if (!qword_100095430)
  {
    sub_1000038D4(&qword_100095310, &qword_100074690);
    sub_10001D8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095430);
  }

  return result;
}

unint64_t sub_10001D8C8()
{
  result = qword_100095438;
  if (!qword_100095438)
  {
    sub_1000038D4(&qword_100095308, &qword_100074688);
    sub_100004C3C(&qword_100095440, &qword_100095448, &qword_100074808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095438);
  }

  return result;
}

void *sub_10001D980(uint64_t a1, char a2)
{
  v4 = sub_1000729DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = 0x6867696C68676968;
    v10 = 0xE900000000000074;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
    v10 = 0xE600000000000000;
  }

  v11 = sub_10004D174(v9, v10);
  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v12 == enum case for WidgetFamily.systemMedium(_:))
    {
      return v11;
    }

    if (v12 == enum case for WidgetFamily.systemLarge(_:))
    {
      if (!v11)
      {
        return v11;
      }

      [v11 size];
      v36 = round(v35 * 0.0);
      [v11 scale];
      v16 = v37 * v36;
      [v11 size];
      v39 = round(v38 * 0.213576159);
      [v11 scale];
      v20 = v40 * v39;
      [v11 size];
      v42 = v41;
      [v11 scale];
      v25 = v42 * v43;
      [v11 size];
      v27 = v44 * 0.572847682;
      goto LABEL_8;
    }

    if (v12 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v33 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);

      (*(v5 + 8))(v8, v4);
      return v33;
    }

    if (!v11)
    {
      return v11;
    }

    [v11 size];
    v46 = round(v45 * 0.07145);
    [v11 scale];
    v16 = v47 * v46;
    [v11 size];
    v49 = round(v48 * 0.07145);
    [v11 scale];
    v20 = v50 * v49;
    [v11 size];
    v22 = 0.8571;
LABEL_7:
    v23 = v21 * v22;
    [v11 scale];
    v25 = v23 * v24;
    [v11 size];
    v27 = v26 * v22;
LABEL_8:
    [v11 scale];
    v29 = v27 * v28;
    [v11 size];
    v31 = v30;
    [v11 size];
    v33 = sub_100029FEC(v16, v20, v25, v29, v31, v32);

    return v33;
  }

  if (v11)
  {
    [v11 size];
    v14 = v13 * 0.0375;
    [v11 scale];
    v16 = v14 * v15;
    [v11 size];
    v18 = v17 * 0.0375;
    [v11 scale];
    v20 = v18 * v19;
    [v11 size];
    v22 = 0.925;
    goto LABEL_7;
  }

  return v11;
}

uint64_t sub_10001DD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for AFTimelineEntry();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10001DEB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100071F5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for AFTimelineEntry();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFExtraLargeContentView()
{
  result = qword_1000954A8;
  if (!qword_1000954A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E074@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100004C94(v2, &v17 - v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001E274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v3 = sub_100071FCC();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100095538, &qword_100074938);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = v31 - v9;
  v32 = sub_10000388C(&qword_100095540, &unk_100074940);
  v11 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v31[1] = v31 - v12;
  v13 = sub_1000729DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v31 - v20;
  v31[0] = sub_10000388C(&qword_100095548, &qword_100074950);
  v22 = *(*(v31[0] - 8) + 64);
  __chkstk_darwin(v31[0]);
  v23 = v2 + *(type metadata accessor for AFExtraLargeContentView() + 24);
  result = type metadata accessor for AFTimelineEntry();
  v25 = *(v23 + *(result + 36));
  if (*(v25 + 16) <= v37)
  {
    goto LABEL_4;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    v26 = v25 + 24 * v37;
    if ((*(v26 + 48) & 1) == 0)
    {
      v28 = *(v26 + 40);
      v29 = *(v26 + 32);

      sub_10001E074(v17);
      sub_100071DCC();
      (*(v14 + 8))(v17, v13);
      sub_100004890(v21, &qword_100094E50, &qword_100074180);
      swift_getOpaqueTypeConformance2();
      v30 = sub_10007281C();

      result = v30;
      goto LABEL_6;
    }

LABEL_4:
    sub_10001E074(v17);
    sub_100071DDC();
    (*(v14 + 8))(v17, v13);
    sub_100071FBC();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10007268C();
    (*(v34 + 8))(v6, v35);
    (*(v33 + 8))(v10, v7);
    v38 = v7;
    v39 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    result = sub_10007281C();
LABEL_6:
    *v36 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E718@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_10000388C(&qword_1000954E8, &qword_1000748C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v53 - v4;
  v54 = sub_10000388C(&qword_1000954F0, &qword_1000748D0);
  v6 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v8 = &v53 - v7;
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AFExtraLargeContentView();
  v15 = *(v14 + 20);
  sub_10001E074(v13);
  sub_1000084E0();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_10001E074(v13);
  v17 = sub_1000084E0();
  v16(v13, v9);
  sub_100071F3C();
  v18 = v17 + v17;
  v20 = v19 - v18 + -32.0;
  sub_100071F3C();
  v22 = v21 + -28.0 - v18;
  v23 = v20 * 0.5;
  v24 = v1 + *(v14 + 24);
  v25 = v22 / (*(*(v24 + *(type metadata accessor for AFTimelineEntry() + 36)) + 16) >> 1);
  *v5 = sub_1000721BC();
  *(v5 + 1) = 0x402F000000000000;
  v5[16] = 0;
  v26 = sub_10000388C(&qword_1000954F8, &unk_1000748D8);
  sub_10001EB64(v1, &v5[*(v26 + 44)], v23, v25);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  LOBYTE(v14) = sub_1000723DC();
  *(inited + 32) = v14;
  v28 = sub_1000723FC();
  *(inited + 33) = v28;
  v29 = sub_1000723CC();
  *(inited + 34) = v29;
  v30 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v14)
  {
    v30 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v28)
  {
    v30 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v29)
  {
    v30 = sub_1000723EC();
  }

  sub_100071E8C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100014DEC(v5, v8, &qword_1000954E8, &qword_1000748C8);
  v39 = &v8[*(v54 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_1000723BC();
  v41 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v40)
  {
    v41 = sub_1000723EC();
  }

  sub_100071E8C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v55;
  sub_100014DEC(v8, v55, &qword_1000954F0, &qword_1000748D0);
  result = sub_10000388C(&qword_100095500, &qword_1000748E8);
  v52 = v50 + *(result + 36);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  return result;
}

uint64_t sub_10001EB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v62 = a2;
  v7 = sub_10000388C(&qword_100095508, &qword_1000748F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v52 - v11;
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  *v17 = sub_10007224C();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = sub_10000388C(&qword_100095510, &qword_1000748F8);
  v19 = &v17[*(v18 + 44)];
  v57 = a1;
  sub_10001EFE8(a1, a3, a4);
  v20 = [objc_opt_self() labelColor];
  v21 = [v20 colorWithAlphaComponent:0.12];

  v60 = sub_10007274C();
  sub_1000728AC();
  sub_100071F2C();
  v22 = v87;
  v58 = v88;
  v59 = v86;
  v23 = v89;
  v55 = v91;
  v56 = v90;
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v20) = sub_1000723BC();
  *(inited + 32) = v20;
  v25 = sub_1000723CC();
  *(inited + 33) = v25;
  v26 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v20)
  {
    v26 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v25)
  {
    v26 = sub_1000723EC();
  }

  sub_100071E8C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v85 = v22;
  v35 = v22;
  v53 = v22;
  v54 = v23;
  v84 = v23;
  v36 = v23;
  v83 = 0;
  *v14 = sub_10007224C();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_10001F330(v57, &v14[*(v18 + 44)], a3, a4);
  v37 = v63;
  sub_100004C94(v17, v63, &qword_100095508, &qword_1000748F0);
  v38 = v61;
  sub_100004C94(v14, v61, &qword_100095508, &qword_1000748F0);
  v39 = v37;
  v40 = v62;
  sub_100004C94(v39, v62, &qword_100095508, &qword_1000748F0);
  v41 = sub_10000388C(&qword_100095518, &qword_100074900);
  v42 = v40 + *(v41 + 48);
  v43 = v60;
  v57 = v17;
  v52 = v14;
  v45 = v58;
  v44 = v59;
  *&v64 = v60;
  *(&v64 + 1) = v59;
  LOBYTE(v65) = v35;
  *(&v65 + 1) = v58;
  LOBYTE(v66) = v36;
  v47 = v55;
  v46 = v56;
  *(&v66 + 1) = v56;
  *&v67 = v55;
  BYTE8(v67) = v26;
  *&v68 = v28;
  *(&v68 + 1) = v30;
  *&v69 = v32;
  *(&v69 + 1) = v34;
  v70 = 0;
  *(v42 + 96) = 0;
  v48 = v65;
  *v42 = v64;
  *(v42 + 16) = v48;
  v49 = v67;
  *(v42 + 32) = v66;
  *(v42 + 48) = v49;
  v50 = v69;
  *(v42 + 64) = v68;
  *(v42 + 80) = v50;
  sub_100004C94(v38, v40 + *(v41 + 64), &qword_100095508, &qword_1000748F0);
  sub_100004C94(&v64, v71, &qword_100095520, &unk_100074908);
  sub_100004890(v52, &qword_100095508, &qword_1000748F0);
  sub_100004890(v57, &qword_100095508, &qword_1000748F0);
  sub_100004890(v38, &qword_100095508, &qword_1000748F0);
  v71[0] = v43;
  v71[1] = v44;
  v72 = v53;
  v73 = v45;
  v74 = v54;
  v75 = v46;
  v76 = v47;
  v77 = v26;
  v78 = v28;
  v79 = v30;
  v80 = v32;
  v81 = v34;
  v82 = 0;
  sub_100004890(v71, &qword_100095520, &unk_100074908);
  return sub_100004890(v63, &qword_100095508, &qword_1000748F0);
}

uint64_t sub_10001EFE8(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for AFExtraLargeContentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v25 - v15;
  sub_10001E074(v25 - v15);
  (*(v10 + 32))(v13, v16, v9);
  v17 = (*(v10 + 88))(v13, v9);
  if (v17 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v17 == enum case for WidgetFamily.systemMedium(_:))
    {
      v18 = 1;
      goto LABEL_9;
    }

    if (v17 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v17 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v18 = 4;
        goto LABEL_9;
      }

      if (v17 == enum case for WidgetFamily.accessoryCircular(_:) || v17 == enum case for WidgetFamily.accessoryRectangular(_:) || v17 == enum case for WidgetFamily.accessoryInline(_:))
      {
        goto LABEL_2;
      }

      (*(v10 + 8))(v13, v9);
    }

    v18 = 2;
    goto LABEL_9;
  }

LABEL_2:
  v18 = 0;
LABEL_9:
  v25[0] = 0;
  v25[1] = v18;
  swift_getKeyPath();
  sub_10001F87C(a1, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_10001F8E4(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a2;
  v21[1] = a3;
  sub_10000388C(&qword_100094FA8, &qword_100074148);
  sub_10000388C(&qword_100095528, &qword_100074930);
  sub_100014FD8();
  sub_10001F94C();
  return sub_10007283C();
}

uint64_t sub_10001F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v43 = a2;
  v7 = type metadata accessor for AFExtraLargeContentView();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7 - 8);
  v41 = v9;
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000729DC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  sub_10001E074(&v38 - v22);
  v24 = v11[4];
  v24(v20, v23, v10);
  v39 = v11;
  v25 = v11[11];
  v26 = v25(v20, v10);
  v27 = enum case for WidgetFamily.systemSmall(_:);
  if (v26 == enum case for WidgetFamily.systemSmall(_:))
  {
LABEL_2:
    v28 = 0;
    goto LABEL_9;
  }

  if (v26 == enum case for WidgetFamily.systemMedium(_:))
  {
    v28 = 1;
    goto LABEL_9;
  }

  if (v26 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_6;
  }

  if (v26 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    if (v26 == enum case for WidgetFamily.accessoryCircular(_:) || v26 == enum case for WidgetFamily.accessoryRectangular(_:) || v26 == enum case for WidgetFamily.accessoryInline(_:))
    {
      goto LABEL_2;
    }

    (v39[1])(v20, v10);
LABEL_6:
    v28 = 2;
    goto LABEL_9;
  }

  v28 = 4;
LABEL_9:
  sub_10001E074(v17);
  v24(v14, v17, v10);
  result = v25(v14, v10);
  if (result == v27)
  {
    v30 = 1;
    goto LABEL_13;
  }

  if (result == enum case for WidgetFamily.systemMedium(_:))
  {
    v30 = 2;
    goto LABEL_13;
  }

  if (result == enum case for WidgetFamily.systemLarge(_:))
  {
LABEL_16:
    v30 = 4;
    goto LABEL_14;
  }

  if (result == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v30 = 8;
    goto LABEL_14;
  }

  v30 = 1;
  if (result != enum case for WidgetFamily.accessoryCircular(_:) && result != enum case for WidgetFamily.accessoryRectangular(_:) && result != enum case for WidgetFamily.accessoryInline(_:))
  {
    (v39[1])(v14, v10);
    goto LABEL_16;
  }

LABEL_13:
  if (v30 >= v28)
  {
LABEL_14:
    v44 = v28;
    v45 = v30;
    swift_getKeyPath();
    v31 = v42;
    sub_10001F87C(a1, v42);
    v32 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v33 = (v41 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_10001F8E4(v31, v34 + v32);
    v35 = (v34 + v33);
    *v35 = a3;
    v35[1] = a4;
    sub_10000388C(&qword_100094FA8, &qword_100074148);
    sub_10000388C(&qword_100095528, &qword_100074930);
    sub_100014FD8();
    sub_10001F94C();
    return sub_10007283C();
  }

  __break(1u);
  return result;
}

double sub_10001F7D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001E274(*a1, v9);
  v3 = v9[0];
  sub_1000728AC();
  sub_100071F2C();
  v4 = v9[1];
  v5 = v10;
  v6 = v11;
  v7 = v12;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  result = *&v13;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_10001F87C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFExtraLargeContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFExtraLargeContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001F94C()
{
  result = qword_100095530;
  if (!qword_100095530)
  {
    sub_1000038D4(&qword_100095528, &qword_100074930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095530);
  }

  return result;
}

uint64_t sub_10001F9D0()
{
  v1 = type metadata accessor for AFExtraLargeContentView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000729DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 20);
  v10 = sub_100071F5C();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);
  v11 = &v5[*(v1 + 24)];
  v12 = sub_100071D4C();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *&v11[*(type metadata accessor for AFTimelineEntry() + 36)];

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

double sub_10001FB80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFExtraLargeContentView() - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  return sub_10001F7D0(a1, a2);
}

uint64_t sub_10001FC98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001FD1C()
{
  result = qword_100095560;
  if (!qword_100095560)
  {
    sub_1000038D4(&qword_1000954E8, &qword_1000748C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095560);
  }

  return result;
}

uint64_t sub_10001FD88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPTitleView();
  sub_100004C94(v1 + *(v12 + 24), v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10001FF90()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FD88(v4);
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for WidgetFamily.systemSmall(_:) || v5 == enum case for WidgetFamily.systemMedium(_:))
  {
    return sub_10007251C();
  }

  if (v5 == enum case for WidgetFamily.systemLarge(_:) || v5 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return sub_10007252C();
  }

  v7 = enum case for WidgetFamily.accessoryCircular(_:);
  v8 = enum case for WidgetFamily.accessoryRectangular(_:);
  v9 = enum case for WidgetFamily.accessoryInline(_:);
  v10 = v5;
  result = sub_10007251C();
  if (v10 != v7 && v10 != v8 && v10 != v9)
  {
    v13 = result;
    (*(v1 + 8))(v4, v0);
    return v13;
  }

  return result;
}

double sub_100020120()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPTitleView();
  sub_100004C94(v0 + *(v14 + 24), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 48.0;
  if (v17 != enum case for WidgetFamily.systemSmall(_:) && v17 != enum case for WidgetFamily.systemMedium(_:) && v17 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v17 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return 78.0;
    }

    else
    {
      result = 0.0;
      if (v17 != enum case for WidgetFamily.accessoryCircular(_:) && v17 != enum case for WidgetFamily.accessoryRectangular(_:) && v17 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v10 + 8))(v13, v9, 0.0);
        return 0.0;
      }
    }
  }

  return result;
}

double sub_100020464()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPTitleView();
  sub_100004C94(v0 + *(v14 + 24), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  if (v17 != enum case for WidgetFamily.systemSmall(_:) && v17 != enum case for WidgetFamily.systemMedium(_:) && v17 != enum case for WidgetFamily.systemLarge(_:))
  {
    result = 4.0;
    if (v17 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return result;
    }

    if (v17 != enum case for WidgetFamily.accessoryCircular(_:) && v17 != enum case for WidgetFamily.accessoryRectangular(_:) && v17 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v10 + 8))(v13, v9, 4.0);
    }
  }

  return 1.0;
}

uint64_t sub_100020790@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = sub_1000729DC();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100071C9C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100095638, &qword_1000749E0);
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  v19 = *(a1 + *(type metadata accessor for CPTitleView() + 40));
  sub_10001FD88(v6);
  sub_10004CE40(0xD000000000000015, 0x80000001000776C0, v6, v10);
  (*(v26 + 8))(v6, v27);
  v29 = a1;
  sub_10000388C(&qword_100095640, &qword_1000749E8);
  sub_1000238F8();
  sub_10007254C();
  v20 = v12[2];
  v20(v15, v18, v11);
  v21 = v28;
  v20(v28, v15, v11);
  v22 = &v21[*(sub_10000388C(&qword_100095660, &qword_1000749F8) + 48)];
  *v22 = 0;
  v22[8] = 0;
  v23 = v12[1];
  v23(v18, v11);
  return (v23)(v15, v11);
}

uint64_t sub_100020A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000721CC();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10000388C(&qword_100095668, &qword_100074A00);
  sub_100020B5C(a1, a2 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(sub_10000388C(&qword_100095640, &qword_1000749E8) + 36));
  v7 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v8 = enum case for ColorScheme.dark(_:);
  v9 = sub_100071EAC();
  result = (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  return result;
}

uint64_t sub_100020B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v66 = type metadata accessor for CPTitleView();
  v75 = *(v66 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v66);
  v76 = v4;
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10000388C(&qword_100095670, &qword_100074A38);
  v5 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v78 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v65 - v8);
  v69 = sub_10000388C(&qword_100095678, &qword_100074A40);
  v68 = *(v69 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v69);
  v65 = (&v65 - v11);
  v12 = sub_10000388C(&qword_100095680, &qword_100074A48);
  v70 = *(v12 - 8);
  v71 = v12;
  v13 = *(v70 + 64);
  __chkstk_darwin(v12);
  v67 = &v65 - v14;
  v15 = sub_1000729DC();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v23 = sub_10000388C(&qword_100095688, &qword_100074A50);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v73 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v72 = &v65 - v27;
  v80 = a1;
  sub_10001FD88(v22);
  v28 = v16[13];
  v28(v19, enum case for WidgetFamily.systemLarge(_:), v15);
  sub_100023DD8(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v29 = v16[1];
  v29(v19, v15);
  v29(v22, v15);
  if (v82 == v81 || (sub_10001FD88(v22), v28(v19, enum case for WidgetFamily.systemExtraLarge(_:), v15), sub_100072C1C(), sub_100072C1C(), v29(v19, v15), v29(v22, v15), v82 == v81))
  {
    v30 = v80;
    v31 = *(v80 + *(v66 + 40));
    v32 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);
    if (v32)
    {
      v33 = v32;
      v34 = sub_1000728AC();
      v35 = v65;
      *v65 = v34;
      *(v35 + 8) = v36;
      v37 = sub_10000388C(&qword_1000956B8, &qword_100074A78);
      sub_100021404(v30, v33, v35 + *(v37 + 44));
      v38 = sub_100020120();
      *(v35 + *(sub_10000388C(&qword_1000956C0, &qword_100074A80) + 36)) = v38;
      sub_100020120();
      sub_100020120();
      sub_1000728AC();
      sub_100071F2C();

      v39 = (v35 + *(sub_10000388C(&qword_1000956C8, &qword_100074A88) + 36));
      v40 = v83;
      *v39 = v82;
      v39[1] = v40;
      v39[2] = v84;
      v41 = v69;
      *(v35 + *(v69 + 36)) = 0x3FF0000000000000;
      v42 = v67;
      sub_100014DEC(v35, v67, &qword_100095678, &qword_100074A40);
      v43 = 0;
      v44 = v72;
    }

    else
    {
      v43 = 1;
      v44 = v72;
      v41 = v69;
      v42 = v67;
    }

    (*(v68 + 56))(v42, v43, 1, v41);
    sub_100014DEC(v42, v44, &qword_100095680, &qword_100074A48);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v30 = v80;
    v44 = v72;
  }

  (*(v70 + 56))(v44, v45, 1, v71);
  v46 = sub_10007224C();
  v47 = sub_100020464();
  *v9 = v46;
  v9[1] = v47;
  *(v9 + 16) = 0;
  v48 = sub_10000388C(&qword_100095690, &qword_100074A58);
  sub_100021ED0(v30, v9 + *(v48 + 44));
  *(v9 + *(sub_10000388C(&qword_100095698, &qword_100074A60) + 36)) = 2.0;
  v49 = v9 + *(sub_10000388C(&qword_1000956A0, &qword_100074A68) + 36);
  v50 = enum case for CoordinateSpace.global(_:);
  v51 = sub_100071F9C();
  (*(*(v51 - 8) + 104))(v49, v50, v51);
  v52 = sub_1000728AC();
  v54 = v53;
  v55 = &v49[*(sub_10000388C(&qword_1000956A8, &qword_100077150) + 36)];
  *v55 = v52;
  v55[1] = v54;
  v56 = v77;
  sub_1000239E4(v30, v77);
  v57 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v58 = swift_allocObject();
  sub_100004768(v56, v58 + v57);
  v59 = v73;
  v60 = (v9 + *(v74 + 36));
  *v60 = sub_100023D68;
  v60[1] = v58;
  sub_100004C94(v44, v59, &qword_100095688, &qword_100074A50);
  v61 = v78;
  sub_100004C94(v9, v78, &qword_100095670, &qword_100074A38);
  v62 = v79;
  sub_100004C94(v59, v79, &qword_100095688, &qword_100074A50);
  v63 = sub_10000388C(&qword_1000956B0, &qword_100074A70);
  sub_100004C94(v61, v62 + *(v63 + 48), &qword_100095670, &qword_100074A38);
  sub_100004890(v9, &qword_100095670, &qword_100074A38);
  sub_100004890(v44, &qword_100095688, &qword_100074A50);
  sub_100004890(v61, &qword_100095670, &qword_100074A38);
  return sub_100004890(v59, &qword_100095688, &qword_100074A50);
}

uint64_t sub_100021404@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v95 = a3;
  v100 = sub_10000388C(&qword_1000956D0, &qword_100074A90);
  v4 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v97 = (&v79 - v5);
  v99 = sub_10000388C(&qword_1000956D8, &qword_100074A98);
  v6 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v92 = &v79 - v7;
  v8 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v87 = &v79 - v10;
  v11 = sub_10000388C(&qword_1000956E8, &qword_100074AA8);
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = *(v90 + 64);
  __chkstk_darwin(v11);
  v88 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = &v79 - v15;
  v96 = sub_10007277C();
  v93 = *(v96 - 8);
  v16 = *(v93 + 64);
  __chkstk_darwin(v96);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000388C(&qword_1000956F0, &qword_100074AB0);
  v84 = *(v19 - 8);
  v85 = v19;
  v20 = *(v84 + 64);
  __chkstk_darwin(v19);
  v81 = &v79 - v21;
  v22 = sub_100071FCC();
  v83 = *(v22 - 8);
  v23 = *(v83 + 64);
  __chkstk_darwin(v22);
  v82 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v79 - v26;
  v28 = sub_10000388C(&qword_1000956F8, &qword_100074AB8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v86 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v98 = &v79 - v32;
  v33 = sub_10007297C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v79 - v39;
  v41 = a1 + *(type metadata accessor for CPTitleView() + 20);
  sub_1000129F8(v40);
  sub_10007296C();
  LOBYTE(v41) = sub_10007295C();
  v42 = *(v34 + 8);
  v42(v37, v33);
  v42(v40, v33);
  if (v41)
  {
    v80 = v18;
    v43 = v93;
    v44 = v94;
    sub_100012A48(v27);
    sub_100023DD8(&qword_100095708, &type metadata accessor for RedactionReasons);
    v45 = v82;
    sub_100072DAC();
    sub_100023DD8(&qword_100095710, &type metadata accessor for RedactionReasons);
    v46 = sub_100072B1C();
    v47 = *(v83 + 8);
    v47(v45, v22);
    v47(v27, v22);
    if (v46)
    {
      v48 = v44;
      v49 = v44;
      sub_10007275C();
      v50 = enum case for Image.ResizingMode.stretch(_:);
      v51 = v43;
      v52 = *(v43 + 104);
      v53 = v80;
      v54 = v96;
      v52(v80, enum case for Image.ResizingMode.stretch(_:), v96);
      v55 = sub_1000727DC();

      (*(v51 + 8))(v53, v54);
      v101 = v55;
      v56 = v81;
      sub_1000725AC();

      v57 = v85;
      v58 = *(v85 + 36);
      v59 = enum case for BlendMode.destinationOut(_:);
      v60 = sub_1000728BC();
      (*(*(v60 - 8) + 104))(v56 + v58, v59, v60);
      v61 = v98;
      sub_100014DEC(v56, v98, &qword_1000956F0, &qword_100074AB0);
      (*(v84 + 56))(v61, 0, 1, v57);
    }

    else
    {
      v61 = v98;
      (*(v84 + 56))(v98, 1, 1, v85);
      v50 = enum case for Image.ResizingMode.stretch(_:);
      v48 = v44;
      v54 = v96;
      v51 = v43;
      v53 = v80;
    }

    v67 = v48;
    sub_10007275C();
    (*(v51 + 104))(v53, v50, v54);
    sub_1000727DC();

    (*(v51 + 8))(v53, v54);
    v68 = v87;
    sub_1000729AC();
    v69 = sub_1000729BC();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = v89;
    sub_1000727CC();

    sub_100004890(v68, &qword_1000956E0, &qword_100074AA0);
    v71 = v86;
    sub_100004C94(v61, v86, &qword_1000956F8, &qword_100074AB8);
    v72 = v90;
    v73 = v91;
    v74 = *(v90 + 16);
    v75 = v88;
    v74(v88, v70, v91);
    v76 = v92;
    sub_100004C94(v71, v92, &qword_1000956F8, &qword_100074AB8);
    v77 = sub_10000388C(&qword_100095718, &qword_100074AC0);
    v74((v76 + *(v77 + 48)), v75, v73);
    v78 = *(v72 + 8);
    v78(v75, v73);
    sub_100004890(v71, &qword_1000956F8, &qword_100074AB8);
    sub_100004C94(v76, v97, &qword_1000956D8, &qword_100074A98);
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100095700, &qword_1000956D8, &qword_100074A98);
    sub_10007230C();
    sub_100004890(v76, &qword_1000956D8, &qword_100074A98);
    v78(v70, v73);
    return sub_100004890(v98, &qword_1000956F8, &qword_100074AB8);
  }

  else
  {
    v62 = v94;
    sub_10007275C();
    v63 = v93;
    v64 = v96;
    (*(v93 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v96);
    v65 = sub_1000727DC();

    (*(v63 + 8))(v18, v64);
    *v97 = v65;
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100095700, &qword_1000956D8, &qword_100074A98);
    return sub_10007230C();
  }
}

uint64_t sub_100021ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v174 = sub_10000388C(&qword_100095728, &qword_100074AD0);
  v3 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v176 = &v146 - v4;
  v177 = sub_10000388C(&qword_100095730, &qword_100074AD8);
  v147 = *(v177 - 8);
  v5 = *(v147 + 64);
  __chkstk_darwin(v177);
  v146 = &v146 - v6;
  v7 = sub_1000728BC();
  v164 = *(v7 - 8);
  v165 = v7;
  v8 = *(v164 + 64);
  __chkstk_darwin(v7);
  v163 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007297C();
  v158 = *(v10 - 8);
  v159 = v10;
  v11 = *(v158 + 64);
  __chkstk_darwin(v10);
  v184 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v183 = &v146 - v14;
  v187 = sub_1000724DC();
  v189 = *(v187 - 8);
  v15 = *(v189 + 64);
  __chkstk_darwin(v187);
  *&v186 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000729DC();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v178 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v146 - v22;
  __chkstk_darwin(v24);
  v26 = &v146 - v25;
  v162 = sub_10000388C(&qword_100095738, &qword_100074AE0);
  v27 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v29 = &v146 - v28;
  v30 = sub_10000388C(&qword_100095740, &qword_100074AE8);
  v172 = *(v30 - 8);
  v173 = v30;
  v31 = *(v172 + 64);
  __chkstk_darwin(v30);
  v33 = &v146 - v32;
  v34 = sub_10000388C(&qword_100095748, &qword_100074AF0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v179 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v146 - v38;
  __chkstk_darwin(v40);
  v190 = &v146 - v41;
  v191 = a1;
  sub_10001FD88(v26);
  v42 = v18[13];
  v185 = enum case for WidgetFamily.systemSmall(_:);
  v156 = v42;
  v157 = v18 + 13;
  v42(v23);
  v43 = sub_100023DD8(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  v155 = v43;
  sub_100072C1C();
  v175 = v18;
  v44 = v18[1];
  v161 = v23;
  v44(v23, v17);
  v160 = v26;
  v188 = v17;
  v181 = v44;
  v182 = v18 + 1;
  v44(v26, v17);
  v170 = v39;
  v171 = v33;
  if (v198 != v192)
  {
    v45 = *(v191 + *(type metadata accessor for CPTitleView() + 40));
    sub_10004CC18();
  }

  sub_1000721EC();
  v46 = sub_10007258C();
  v48 = v47;
  v50 = v49;
  sub_10007248C();
  v51 = sub_10007255C();
  v53 = v52;
  v55 = v54;
  v154 = v56;
  sub_100004C84(v46, v48, v50 & 1);

  sub_10001FF90();
  v57 = v189;
  v58 = *(v189 + 104);
  v59 = v186;
  v168 = enum case for Font.Leading.tight(_:);
  v60 = v187;
  v169 = v189 + 104;
  v167 = v58;
  v58(v186);
  sub_10007250C();

  v61 = *(v57 + 8);
  v189 = v57 + 8;
  v166 = v61;
  v61(v59, v60);
  v62 = sub_10007257C();
  v152 = v63;
  v153 = v62;
  v65 = v64;
  v151 = v66;

  sub_100004C84(v51, v53, v55 & 1);

  KeyPath = swift_getKeyPath();
  v149 = swift_getKeyPath();
  v148 = v65 & 1;
  v216 = v65 & 1;
  v215 = 0;
  v154 = type metadata accessor for CPTitleView();
  v67 = *(v154 + 20);
  v68 = v183;
  sub_1000129F8(v183);
  v69 = v184;
  sub_10007296C();
  v70 = sub_10007295C();
  v71 = *(v158 + 8);
  v72 = v69;
  v73 = v159;
  v71(v72, v159);
  v71(v68, v73);
  if (v70)
  {
    v74 = sub_10007270C();
  }

  else
  {
    v74 = sub_10007271C();
  }

  v158 = v74;
  v75 = swift_getKeyPath();
  v76 = v183;
  sub_1000129F8(v183);
  v77 = v184;
  sub_10007296C();
  v78 = sub_10007295C();
  v71(v77, v73);
  v71(v76, v73);
  v80 = v163;
  v79 = v164;
  v81 = &enum case for BlendMode.normal(_:);
  if ((v78 & 1) == 0)
  {
    v81 = &enum case for BlendMode.plusLighter(_:);
  }

  v82 = v165;
  (*(v164 + 104))(v163, *v81, v165);
  v83 = v162;
  (*(v79 + 32))(&v29[*(v162 + 36)], v80, v82);
  v84 = v152;
  *v29 = v153;
  *(v29 + 1) = v84;
  v29[16] = v148;
  v85 = KeyPath;
  *(v29 + 3) = v151;
  *(v29 + 4) = v85;
  v29[40] = 1;
  *(v29 + 6) = v149;
  *(v29 + 7) = 1;
  v29[64] = 0;
  v86 = v158;
  *(v29 + 9) = v75;
  *(v29 + 10) = v86;
  v87 = sub_100023E38();
  v88 = v171;
  sub_1000725AC();
  sub_100004890(v29, &qword_100095738, &qword_100074AE0);
  v89 = v160;
  sub_10001FD88(v160);
  v90 = v161;
  v91 = v188;
  v156(v161, v185, v188);
  sub_100072C1C();
  sub_100072C1C();
  v92 = v90;
  v93 = v181;
  v181(v92, v91);
  v93(v89, v91);
  if (v198 == v192)
  {
    v198 = v83;
    v199 = v87;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v95 = v146;
    v96 = v173;
    sub_1000725FC();
    v97 = v147;
    v98 = v177;
    (*(v147 + 16))(v176, v95, v177);
    swift_storeEnumTagMultiPayload();
    v198 = v96;
    v199 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v99 = v170;
    sub_10007230C();
    (*(v97 + 8))(v95, v98);
    v100 = v172;
  }

  else
  {
    v100 = v172;
    v96 = v173;
    (*(v172 + 16))(v176, v88, v173);
    swift_storeEnumTagMultiPayload();
    v198 = v83;
    v199 = v87;
    v101 = swift_getOpaqueTypeConformance2();
    v198 = v96;
    v199 = v101;
    swift_getOpaqueTypeConformance2();
    v99 = v170;
    sub_10007230C();
  }

  (*(v100 + 8))(v88, v96);
  sub_100014DEC(v99, v190, &qword_100095748, &qword_100074AF0);
  v102 = *(v191 + *(v154 + 40));
  v103 = *(v102 + 48);
  v198 = *(v102 + 40);
  v199 = v103;
  sub_100004A78();

  v104 = sub_10007259C();
  v106 = v105;
  v108 = v107;
  sub_10007248C();
  v109 = sub_10007255C();
  v111 = v110;
  v113 = v112;
  sub_100004C84(v104, v106, v108 & 1);

  v114 = v178;
  sub_10001FD88(v178);
  v115 = (v175[11])(v114, v188);
  if (v115 == v185 || v115 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10007252C();
  }

  else if (v115 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_1000724EC();
  }

  else if (v115 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_1000724BC();
  }

  else
  {
    v144 = enum case for WidgetFamily.accessoryCircular(_:);
    v145 = v115;
    sub_10007251C();
    if (v145 != v144 && v145 != enum case for WidgetFamily.accessoryRectangular(_:) && v145 != enum case for WidgetFamily.accessoryInline(_:))
    {
      v181(v114, v188);
    }
  }

  v116 = v186;
  v117 = v187;
  v167(v186, v168, v187);
  sub_10007250C();

  v166(v116, v117);
  v118 = v109;
  v119 = sub_10007257C();
  v120 = v111;
  v122 = v121;
  v188 = v121;
  v124 = v123;
  v191 = v125;

  sub_100004C84(v118, v120, v113 & 1);

  v189 = swift_getKeyPath();
  v126 = sub_10007270C();
  v187 = swift_getKeyPath();
  v127 = v124 & 1;
  v214 = v124 & 1;
  v212 = 0;
  v128 = swift_getKeyPath();
  v129 = v179;
  sub_100004C94(v190, v179, &qword_100095748, &qword_100074AF0);
  v130 = v180;
  sub_100004C94(v129, v180, &qword_100095748, &qword_100074AF0);
  v131 = (v130 + *(sub_10000388C(&qword_100095798, &qword_100074BD8) + 48));
  *&v192 = v119;
  *(&v192 + 1) = v122;
  LOBYTE(v193) = v124 & 1;
  *(&v193 + 1) = *v213;
  DWORD1(v193) = *&v213[3];
  v132 = v191;
  v133 = v189;
  *(&v193 + 1) = v191;
  *&v194 = v189;
  *(&v194 + 1) = 1;
  LOBYTE(v195) = 0;
  *(&v195 + 1) = *v211;
  DWORD1(v195) = *&v211[3];
  v134 = v187;
  *(&v195 + 1) = v187;
  *&v196 = v126;
  *(&v196 + 1) = v128;
  __asm { FMOV            V0.2D, #1.0 }

  v186 = _Q0;
  v197 = _Q0;
  v140 = v195;
  v131[2] = v194;
  v131[3] = v140;
  v141 = v197;
  v131[4] = v196;
  v131[5] = v141;
  v142 = v193;
  *v131 = v192;
  v131[1] = v142;
  sub_100004C94(&v192, &v198, &qword_1000957A0, &qword_100074BE0);
  sub_100004890(v190, &qword_100095748, &qword_100074AF0);
  v198 = v119;
  v199 = v188;
  v200 = v127;
  *v201 = *v213;
  *&v201[3] = *&v213[3];
  v202 = v132;
  v203 = v133;
  v204 = 1;
  v205 = 0;
  *v206 = *v211;
  *&v206[3] = *&v211[3];
  v207 = v134;
  v208 = v126;
  v209 = v128;
  v210 = v186;
  sub_100004890(&v198, &qword_1000957A0, &qword_100074BE0);
  return sub_100004890(v129, &qword_100095748, &qword_100074AF0);
}

uint64_t sub_100022E78(__int128 *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for CPTitleView() + 44));
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  v5 = *a1;
  v6 = a1[1];
  sub_10000388C(&qword_100095720, &qword_100074AC8);
  return sub_10007282C();
}

double sub_100022EF0@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000721CC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10000388C(&qword_100095628, &qword_1000749D0);
  sub_100020790(v1, (a1 + *(v3 + 44)));
  v4 = sub_1000723AC();
  v5 = a1 + *(sub_10000388C(&qword_100095630, &qword_1000749D8) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_100022F7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000729DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a2, v3, v6);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for WidgetFamily.systemSmall(_:))
  {
    return sub_100071F3C();
  }

  if (v9 == enum case for WidgetFamily.systemMedium(_:))
  {
    return sub_100071F3C();
  }

  if (v9 == enum case for WidgetFamily.systemLarge(_:))
  {
    return sub_100071F3C();
  }

  if (v9 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return sub_100071F3C();
  }

  v11 = enum case for WidgetFamily.accessoryCircular(_:);
  v12 = enum case for WidgetFamily.accessoryRectangular(_:);
  v13 = enum case for WidgetFamily.accessoryInline(_:);
  v14 = v9;
  result = sub_100071F3C();
  if (v14 != v11 && v14 != v12 && v14 != v13)
  {
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_100023158(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_100095568, &unk_100074960);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_10000388C(&qword_100095260, qword_100074600);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_100071F5C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = type metadata accessor for CPTimelineEntry();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[10]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1000233C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_100095568, &unk_100074960);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10000388C(&qword_1000947E0, qword_100074040);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_10000388C(&qword_100095260, qword_100074600);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          v18 = sub_100071F5C();
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[8];
          }

          else
          {
            result = type metadata accessor for CPTimelineEntry();
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[10]) = (a2 - 1);
              return result;
            }

            v10 = result;
            v14 = *(result - 8);
            v15 = a4[9];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPTitleView()
{
  result = qword_1000955C8;
  if (!qword_1000955C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002366C()
{
  sub_100023870(319, &qword_1000955D8, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100023870(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100023870(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100023870(319, &unk_1000952D0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100071F5C();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CPTimelineEntry();
            if (v5 <= 0x3F)
            {
              type metadata accessor for AppDisplayData();
              if (v6 <= 0x3F)
              {
                sub_100023870(319, &unk_1000955E0, type metadata accessor for CGRect, &type metadata accessor for Binding);
                if (v7 <= 0x3F)
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

void sub_100023870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000238F8()
{
  result = qword_100095648;
  if (!qword_100095648)
  {
    sub_1000038D4(&qword_100095640, &qword_1000749E8);
    sub_100004C3C(&qword_100095650, &qword_100095658, &qword_1000749F0);
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095648);
  }

  return result;
}

uint64_t sub_1000239E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTitleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023A48()
{
  v1 = type metadata accessor for CPTitleView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100071FCC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10007297C();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1000729DC();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    v13 = *&v5[v11];
  }

  v14 = v1[7];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100071EAC();
    (*(*(v15 - 8) + 8))(&v5[v14], v15);
  }

  else
  {
    v16 = *&v5[v14];
  }

  v17 = v1[8];
  v18 = sub_100071F5C();
  (*(*(v18 - 8) + 8))(&v5[v17], v18);
  v19 = &v5[v1[9]];
  v20 = sub_100071D4C();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *&v19[*(type metadata accessor for CPTimelineEntry() + 20)];

  v22 = *&v5[v1[10]];

  v23 = &v5[v1[11]];
  v24 = *v23;

  v25 = *(v23 + 1);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100023D68(__int128 *a1)
{
  v3 = *(type metadata accessor for CPTitleView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100022E78(a1, v4);
}

uint64_t sub_100023DD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100023E38()
{
  result = qword_100095750;
  if (!qword_100095750)
  {
    sub_1000038D4(&qword_100095738, &qword_100074AE0);
    sub_100023EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095750);
  }

  return result;
}

unint64_t sub_100023EC4()
{
  result = qword_100095758;
  if (!qword_100095758)
  {
    sub_1000038D4(&qword_100095760, &qword_100074B88);
    sub_100023F7C();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095758);
  }

  return result;
}

unint64_t sub_100023F7C()
{
  result = qword_100095768;
  if (!qword_100095768)
  {
    sub_1000038D4(&qword_100095770, &qword_100074B90);
    sub_100024034();
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095768);
  }

  return result;
}

unint64_t sub_100024034()
{
  result = qword_100095778;
  if (!qword_100095778)
  {
    sub_1000038D4(&qword_100095780, &qword_100074B98);
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095778);
  }

  return result;
}

unint64_t sub_1000240F8()
{
  result = qword_1000957A8;
  if (!qword_1000957A8)
  {
    sub_1000038D4(&qword_100095630, &qword_1000749D8);
    sub_100004C3C(&qword_1000957B0, &qword_1000957B8, &qword_100074BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000957A8);
  }

  return result;
}

uint64_t sub_1000241C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
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

  v14 = sub_100071F5C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CPTimelineEntry();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 32);
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

uint64_t sub_10002439C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100071F5C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = type metadata accessor for CPTimelineEntry();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 32) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPExtraLargeContentView()
{
  result = qword_100095818;
  if (!qword_100095818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002459C()
{
  sub_100024760(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100024760(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100024710();
      if (v2 <= 0x3F)
      {
        sub_100071F5C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CPTimelineEntry();
          if (v4 <= 0x3F)
          {
            sub_100024760(319, &unk_100094868, type metadata accessor for CGRect, &type metadata accessor for State);
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

void sub_100024710()
{
  if (!qword_100094860)
  {
    v0 = sub_100071EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100094860);
    }
  }
}

void sub_100024760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000247E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPExtraLargeContentView();
  sub_100004C94(v1 + *(v12 + 20), v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000249E8()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CPExtraLargeContentView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_100072CEC();
    v8 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_100024B40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000388C(&qword_100095878, &qword_100074C98);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_100024CB0(&v16);
  v11 = v16;
  *v10 = sub_1000721CC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v12 = sub_10000388C(&qword_100095880, &qword_100074CA0);
  sub_100024F94(a1, &v10[*(v12 + 44)]);
  sub_100004C94(v10, v7, &qword_100095878, &qword_100074C98);
  *a2 = v11;
  v13 = sub_10000388C(&qword_100095888, &qword_100074CA8);
  sub_100004C94(v7, a2 + *(v13 + 48), &qword_100095878, &qword_100074C98);

  sub_100004890(v10, &qword_100095878, &qword_100074C98);
  sub_100004890(v7, &qword_100095878, &qword_100074C98);
}

uint64_t sub_100024CB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10007297C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_10007218C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for CPExtraLargeContentView() + 24);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v24 = v11;
    v25 = v1;
    v18 = v12;
    v19 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v17, 0);
    (*(v18 + 8))(v15, v24);
    if (v26 != 1)
    {
LABEL_6:
      result = 0;
      goto LABEL_10;
    }
  }

  sub_1000129F8(v10);
  sub_10007296C();
  sub_10001B20C();
  v20 = sub_100072B1C();
  v21 = *(v4 + 8);
  v21(v7, v3);
  v21(v10, v3);
  if (v20)
  {
    goto LABEL_6;
  }

  if (qword_1000946D8 != -1)
  {
    swift_once();
  }

LABEL_10:
  *a1 = result;
  return result;
}

uint64_t sub_100024F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_10000388C(&qword_100095890, &qword_100074CB0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_1000729DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000388C(&qword_100095898, &qword_100074CB8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  sub_1000254AC(&v46 - v20);
  v22 = &v21[*(v16 + 44)];
  sub_100026100(a1, v22);
  v23 = type metadata accessor for CPExtraLargeContentView();
  v24 = *(v23 + 28);
  sub_1000247E0(v14);
  sub_100022F7C(a1 + v24, v14);
  (*(v11 + 8))(v14, v10);
  sub_1000728AC();
  sub_100071F2C();
  v25 = (v22 + *(sub_10000388C(&qword_1000958A0, &qword_100074CC0) + 36));
  v26 = v51;
  *v25 = v50;
  v25[1] = v26;
  v25[2] = v52;
  v27 = sub_1000728AC();
  v29 = v28;
  v30 = (v22 + *(sub_10000388C(&qword_1000958A8, &qword_100074CC8) + 36));
  *v30 = v27;
  v30[1] = v29;
  sub_100028780(a1 + *(v23 + 32), v9, type metadata accessor for CPTimelineEntry);
  v31 = type metadata accessor for CPAppGridView();
  v32 = v31[5];
  v33 = sub_100071F5C();
  (*(*(v33 - 8) + 16))(&v9[v32], a1 + v24, v33);
  *&v9[v31[11]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v9[v31[12]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v9[v31[6]] = 2;
  *&v9[v31[7]] = 3;
  v9[v31[8]] = 0;
  v34 = v31[9];
  *&v9[v34] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v35 = v31[10];
  *&v9[v35] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v36 = &v9[*(v4 + 44)];
  sub_100025B34(v36);
  v37 = sub_1000728AC();
  v39 = v38;
  v40 = (v36 + *(sub_10000388C(&qword_1000958B0, &qword_100074DB0) + 36));
  *v40 = v37;
  v40[1] = v39;
  v41 = v47;
  sub_100004C94(v21, v47, &qword_100095898, &qword_100074CB8);
  v42 = v48;
  sub_100004C94(v9, v48, &qword_100095890, &qword_100074CB0);
  v43 = v49;
  sub_100004C94(v41, v49, &qword_100095898, &qword_100074CB8);
  v44 = sub_10000388C(&qword_1000958B8, &qword_100074DB8);
  sub_100004C94(v42, v43 + *(v44 + 48), &qword_100095890, &qword_100074CB0);
  sub_100004890(v9, &qword_100095890, &qword_100074CB0);
  sub_100004890(v21, &qword_100095898, &qword_100074CB8);
  sub_100004890(v42, &qword_100095890, &qword_100074CB0);
  return sub_100004890(v41, &qword_100095898, &qword_100074CB8);
}

uint64_t sub_1000254AC@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_10007234C();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  __chkstk_darwin(v2);
  v54 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000388C(&qword_1000959E8, &unk_100077500);
  v5 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v53 = v48 - v6;
  v7 = sub_10000388C(&qword_1000959F0, &unk_100074EE0);
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  __chkstk_darwin(v7);
  v51 = v48 - v9;
  v10 = sub_1000729DC();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v48 - v16;
  v61 = sub_100071C9C();
  v18 = *(v61 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v61);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v58 = v48 - v23;
  v24 = type metadata accessor for CPExtraLargeContentView();
  v25 = v1;
  v26 = v1 + *(v24 + 32);
  v27 = type metadata accessor for CPTimelineEntry();
  v28 = *(v26 + *(v27 + 20));
  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v35 = 1;
    goto LABEL_13;
  }

  if (v28 < 0)
  {
    v47 = *(v26 + *(v27 + 20));
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v50 = v7;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v57 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v57 = *(v28 + 32);

LABEL_6:
    sub_1000247E0(v13);
    sub_100005294(v13, v17);
    v30 = v60;
    v31 = *(v59 + 8);
    v31(v13, v60);
    v32 = v18;
    v33 = *(v18 + 48);
    v34 = v61;
    if (v33(v17, 1, v61) != 1)
    {
      v36 = *(v32 + 32);
      v49 = v24;
      v37 = v58;
      v36();
      v38 = (*(v32 + 16))(v21, v37, v34);
      v48[1] = v48;
      __chkstk_darwin(v38);
      v59 = v32;
      v39 = v57;
      v48[-2] = v25;
      v48[-1] = v39;
      sub_10000388C(&qword_1000959F8, &unk_100074EF0);
      sub_100004C3C(&qword_100095A00, &qword_1000959F8, &unk_100074EF0);
      v40 = v53;
      sub_10007254C();
      v41 = *(v49 + 28);
      sub_1000247E0(v13);
      sub_100022F7C(v25 + v41, v13);
      v31(v13, v30);
      sub_1000728AC();
      sub_100071F2C();
      v42 = (v40 + *(v52 + 36));
      v43 = v65;
      *v42 = v64;
      v42[1] = v43;
      v42[2] = v66;
      v44 = v54;
      sub_10007233C();
      sub_1000286C8();
      v45 = v51;
      sub_10007266C();

      (*(v55 + 8))(v44, v56);
      sub_100004890(v40, &qword_1000959E8, &unk_100077500);
      (*(v59 + 8))(v58, v61);
      v46 = v62;
      v7 = v50;
      (*(v62 + 32))(v63, v45, v50);
      v35 = 0;
      return (*(v46 + 56))(v63, v35, 1, v7);
    }

    sub_100004890(v17, &qword_100094E50, &qword_100074180);
    v35 = 1;
    v7 = v50;
LABEL_13:
    v46 = v62;
    return (*(v46 + 56))(v63, v35, 1, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100025B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_10000388C(&qword_1000958C0, &unk_100074DC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = sub_10007297C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  sub_1000129F8(&v25 - v14);
  sub_10007296C();
  sub_10001B20C();
  v16 = sub_100072B1C();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v15, v8);
  if (v16)
  {
    v18 = 1;
    v19 = v26;
  }

  else
  {
    sub_1000274B4(v2, v7);
    v20 = v2 + *(type metadata accessor for CPExtraLargeContentView() + 28);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v21 = &v7[*(v3 + 36)];
    v22 = v28;
    *v21 = v27;
    *(v21 + 1) = v22;
    *(v21 + 2) = v29;
    v23 = v26;
    sub_100014DEC(v7, v26, &qword_1000958C0, &unk_100074DC0);
    v18 = 0;
    v19 = v23;
  }

  return (*(v4 + 56))(v19, v18, 1, v3);
}

uint64_t sub_100025DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10007223C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000388C(&qword_100095A20, &unk_100074F00);
  return sub_100025E0C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_100025E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CPTitleView();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v28 - v12);
  v14 = type metadata accessor for CPExtraLargeContentView();
  v15 = v14[7];
  v16 = v7[10];
  v17 = sub_100071F5C();
  (*(*(v17 - 8) + 16))(v13 + v16, a1 + v15, v17);
  sub_100028780(a1 + v14[8], v13 + v7[11], type metadata accessor for CPTimelineEntry);
  v18 = (a1 + v14[9]);
  v19 = *(v18 + 4);
  v20 = v18[1];
  v34 = *v18;
  v35 = v20;
  v36 = v19;
  sub_10000388C(&qword_1000948F0, qword_100077520);
  sub_10007280C();
  v21 = v30;
  v22 = v31;
  v28 = v33;
  v29 = v32;
  *(v13 + v7[8]) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v13 + v7[9]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *v13 = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v23 = v7[7];
  *(v13 + v23) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  *(v13 + v7[12]) = a2;
  v24 = v13 + v7[13];
  *v24 = v21;
  *(v24 + 1) = v22;
  v25 = v28;
  *(v24 + 1) = v29;
  *(v24 + 2) = v25;
  sub_100028780(v13, v10, type metadata accessor for CPTitleView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v26 = sub_10000388C(&qword_100095A28, &qword_100074F10);
  sub_100028780(v10, a3 + *(v26 + 48), type metadata accessor for CPTitleView);

  sub_1000287E8(v13, type metadata accessor for CPTitleView);
  return sub_1000287E8(v10, type metadata accessor for CPTitleView);
}

uint64_t sub_100026100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_10000388C(&qword_100095960, &qword_100074E28);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = (&v28 - v4);
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100095968, &qword_100074E30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = a1 + *(type metadata accessor for CPExtraLargeContentView() + 32);
  v16 = type metadata accessor for CPTimelineEntry();
  if (*(v15 + *(v16 + 32)) == 1 && (sub_1000249E8() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100095980, &qword_100095960, &qword_100074E28);
    v22 = v29;
    sub_10007230C();
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v17 = *(v15 + *(v16 + 20));
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v23 = *(v15 + *(v16 + 20));
    }

    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v21 = 1;
      v22 = v29;
LABEL_21:
      v27 = sub_10000388C(&qword_100095970, &qword_100074E38);
      return (*(*(v27 - 8) + 56))(v22, v21, 1, v27);
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    if (*(sub_100072E6C() + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

    if (*(v19 + 32))
    {
      goto LABEL_8;
    }

LABEL_17:
    v24 = sub_10004D174(0xD00000000000001ELL, 0x8000000100077A90);
    if (v24)
    {
      v20 = v24;
LABEL_19:
      v22 = v29;
      *v5 = sub_1000728AC();
      v5[1] = v25;
      v26 = sub_10000388C(&qword_100095978, &qword_100074E40);
      sub_10002651C(v20, a1, v5 + *(v26 + 44));
      sub_100004C94(v5, v14, &qword_100095960, &qword_100074E28);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100095980, &qword_100095960, &qword_100074E28);
      sub_10007230C();

      sub_100004890(v5, &qword_100095960, &qword_100074E28);
      goto LABEL_20;
    }

LABEL_8:
    sub_1000247E0(v10);
    v20 = sub_10001D980(v10, 1);
    (*(v7 + 8))(v10, v6);
    if (!v20)
    {

      goto LABEL_10;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002651C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v117 = a3;
  v4 = sub_10007297C();
  v115 = *(v4 - 8);
  v116 = v4;
  v5 = *(v115 + 64);
  __chkstk_darwin(v4);
  v112 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v93 - v8;
  v114 = sub_1000728BC();
  v113 = *(v114 - 8);
  v9 = *(v113 + 64);
  __chkstk_darwin(v114);
  v110 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10000388C(&qword_100095988, &qword_100074E48);
  v11 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v101 = (&v93 - v12);
  v108 = sub_10000388C(&qword_100095990, &qword_100074E50);
  v106 = *(v108 - 8);
  v13 = *(v106 + 64);
  __chkstk_darwin(v108);
  v105 = &v93 - v14;
  v103 = sub_10000388C(&qword_100095998, &unk_100074E58);
  v15 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v109 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v93 - v18;
  __chkstk_darwin(v19);
  v107 = &v93 - v20;
  v94 = sub_1000729DC();
  v21 = *(v94 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v94);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10007277C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000388C(&qword_100094980, &unk_100073AC0);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v34 = &v93 - v33;
  v95 = sub_10000388C(&qword_1000959A0, &qword_100074E68);
  v35 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v96 = &v93 - v36;
  v97 = sub_10000388C(&qword_1000959A8, &qword_100074E70);
  v37 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v39 = &v93 - v38;
  v40 = sub_10000388C(&qword_1000959B0, &qword_100074E78);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v100 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v99 = &v93 - v44;
  v45 = a1;
  sub_10007275C();
  (*(v26 + 104))(v29, enum case for Image.ResizingMode.stretch(_:), v25);
  sub_1000727DC();

  v46 = v29;
  v47 = v98;
  (*(v26 + 8))(v46, v25);
  *v34 = sub_1000728AC();
  *(v34 + 1) = v48;
  v49 = sub_10000388C(&qword_100094978, &qword_100074E80);
  sub_10005544C(&v34[*(v49 + 44)], 0.3);

  v50 = &v34[*(v31 + 44)];
  *v50 = 0;
  *(v50 + 4) = 257;
  v51 = *(type metadata accessor for CPExtraLargeContentView() + 28);
  sub_1000247E0(v24);
  sub_100022F7C(v47 + v51, v24);
  v53 = v52;
  v54 = *(v21 + 8);
  v55 = v94;
  v54(v24, v94);
  sub_1000247E0(v24);
  sub_100022F7C(v47 + v51, v24);
  v57 = v56;
  v54(v24, v55);
  sub_100071F3C();
  v59 = v58;
  sub_100071F3C();
  v61 = v60;
  sub_1000728AC();
  if (v53 > v57 || v59 > v61)
  {
    sub_100072CEC();
    v62 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  v63 = v96;
  sub_100014DEC(v34, v96, &qword_100094980, &unk_100073AC0);
  v64 = (v63 + *(v95 + 36));
  v65 = v123;
  v64[4] = v122;
  v64[5] = v65;
  v64[6] = v124;
  v66 = v119;
  *v64 = v118;
  v64[1] = v66;
  v67 = v121;
  v64[2] = v120;
  v64[3] = v67;
  v68 = &v39[*(v97 + 36)];
  v69 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v70 = enum case for ColorScheme.light(_:);
  v71 = sub_100071EAC();
  (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
  *v68 = swift_getKeyPath();
  sub_100014DEC(v63, v39, &qword_1000959A0, &qword_100074E68);
  sub_10002857C();
  v72 = v99;
  sub_10007261C();
  sub_100004890(v39, &qword_1000959A8, &qword_100074E70);
  v73 = sub_10007223C();
  v74 = v101;
  *v101 = v73;
  *(v74 + 8) = 0;
  *(v74 + 16) = 1;
  v75 = sub_10000388C(&qword_1000959C8, &qword_100074EC0);
  sub_1000270BC(v47, v74 + *(v75 + 44));
  sub_100004C3C(&qword_1000959D0, &qword_100095988, &qword_100074E48);
  v76 = v105;
  sub_1000725AC();
  sub_100004890(v74, &qword_100095988, &qword_100074E48);
  v77 = v111;
  sub_1000129F8(v111);
  v78 = v112;
  sub_10007296C();
  LOBYTE(v70) = sub_10007295C();
  v79 = *(v115 + 8);
  v80 = v78;
  v81 = v116;
  v79(v80, v116);
  v79(v77, v81);
  v82 = v113;
  v83 = &enum case for BlendMode.destinationOut(_:);
  if ((v70 & 1) == 0)
  {
    v83 = &enum case for BlendMode.normal(_:);
  }

  v84 = v110;
  v85 = v114;
  (*(v113 + 104))(v110, *v83, v114);
  v86 = v102;
  (*(v82 + 32))(&v102[*(v103 + 36)], v84, v85);
  (*(v106 + 32))(v86, v76, v108);
  v87 = v107;
  sub_100014DEC(v86, v107, &qword_100095998, &unk_100074E58);
  v88 = v100;
  sub_100004C94(v72, v100, &qword_1000959B0, &qword_100074E78);
  v89 = v109;
  sub_100004C94(v87, v109, &qword_100095998, &unk_100074E58);
  v90 = v117;
  sub_100004C94(v88, v117, &qword_1000959B0, &qword_100074E78);
  v91 = sub_10000388C(&qword_1000959D8, &qword_100074EC8);
  sub_100004C94(v89, v90 + *(v91 + 48), &qword_100095998, &unk_100074E58);
  sub_100004890(v87, &qword_100095998, &unk_100074E58);
  sub_100004890(v72, &qword_1000959B0, &qword_100074E78);
  sub_100004890(v89, &qword_100095998, &unk_100074E58);
  return sub_100004890(v88, &qword_1000959B0, &qword_100074E78);
}

uint64_t sub_1000270BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for CPTitleGradientView();
  v4 = *(v3 - 8);
  v47 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = (&v42 - v8);
  v9 = sub_1000729DC();
  v44 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPHeaderGradientView();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v42 - v19);
  v21 = type metadata accessor for CPExtraLargeContentView();
  v22 = *(v21 + 28);
  sub_1000247E0(v13);
  sub_100022F7C(a1 + v22, v13);
  v24 = v23;
  v43 = *(v10 + 8);
  v43(v13, v9);
  sub_100071F3C();
  v26 = v25 * 0.20625;
  v27 = *(v21 + 32);
  sub_100028780(a1 + v27, v20 + *(v15 + 32), type metadata accessor for CPTimelineEntry);
  *v20 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v28 = (v20 + *(v15 + 28));
  *v28 = v24;
  v28[1] = v26;
  sub_1000247E0(v13);
  sub_100022F7C(a1 + v22, v13);
  v30 = v29;
  v43(v13, v44);
  sub_100071F3C();
  v32 = v31 * 0.4;
  v34 = v46;
  v33 = v47;
  sub_100028780(a1 + v27, v46 + *(v47 + 32), type metadata accessor for CPTimelineEntry);
  *v34 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = (v34 + *(v33 + 28));
  *v35 = v30;
  v35[1] = v32;
  v36 = v45;
  sub_100028780(v20, v45, type metadata accessor for CPHeaderGradientView);
  v37 = v48;
  sub_100028780(v34, v48, type metadata accessor for CPTitleGradientView);
  v38 = v49;
  sub_100028780(v36, v49, type metadata accessor for CPHeaderGradientView);
  v39 = sub_10000388C(&qword_1000959E0, &unk_100074ED0);
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = 0;
  sub_100028780(v37, v38 + *(v39 + 64), type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v34, type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v20, type metadata accessor for CPHeaderGradientView);
  sub_1000287E8(v37, type metadata accessor for CPTitleGradientView);
  return sub_1000287E8(v36, type metadata accessor for CPHeaderGradientView);
}

uint64_t sub_1000274B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_10000388C(&qword_1000958C8, &unk_100076370);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = (&v28 - v4);
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_1000958D0, &unk_100074DD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = a1 + *(type metadata accessor for CPExtraLargeContentView() + 32);
  v16 = type metadata accessor for CPTimelineEntry();
  if (*(v15 + *(v16 + 32)) == 1 && (sub_1000249E8() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370);
    v22 = v29;
    sub_10007230C();
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v17 = *(v15 + *(v16 + 20));
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v23 = *(v15 + *(v16 + 20));
    }

    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v21 = 1;
      v22 = v29;
LABEL_21:
      v27 = sub_10000388C(&qword_1000958D8, &unk_100076380);
      return (*(*(v27 - 8) + 56))(v22, v21, 1, v27);
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_100072E6C();
    if (*(v19 + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

    if (*(v19 + 32))
    {
      goto LABEL_8;
    }

LABEL_17:
    v24 = sub_10004D174(0xD00000000000001ELL, 0x8000000100077A90);
    if (v24)
    {
      v20 = v24;
LABEL_19:
      v22 = v29;
      *v5 = sub_1000728AC();
      v5[1] = v25;
      v26 = sub_10000388C(&qword_1000958E0, &unk_100074DE0);
      sub_1000278D4(v20, a1, v19, v5 + *(v26 + 44));
      sub_100004C94(v5, v14, &qword_1000958C8, &unk_100076370);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370);
      sub_10007230C();

      sub_100004890(v5, &qword_1000958C8, &unk_100076370);
      goto LABEL_20;
    }

LABEL_8:
    sub_1000247E0(v10);
    v20 = sub_10001D980(v10, 1);
    (*(v7 + 8))(v10, v6);
    if (!v20)
    {

      goto LABEL_10;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000278D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v71 = sub_10000388C(&qword_1000958F0, &unk_100076390);
  v7 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v9 = (&v63 - v8);
  v64 = sub_10000388C(&qword_100095228, &qword_1000745D0);
  v10 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  KeyPath = &v63 - v11;
  v66 = sub_10000388C(&qword_1000958F8, &unk_1000763A0);
  v12 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v69 = &v63 - v13;
  v72 = sub_10000388C(&qword_100095900, &unk_100074DF0);
  v14 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v68 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = &v63 - v17;
  v18 = sub_10000388C(&qword_100095908, &unk_1000763B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  v25 = sub_10007277C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_10007275C();
  (*(v26 + 104))(v29, enum case for Image.ResizingMode.stretch(_:), v25);
  v31 = sub_1000727DC();

  (*(v26 + 8))(v29, v25);
  sub_10007290C();
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(type metadata accessor for CPExtraLargeContentView() + 32);
  v37 = type metadata accessor for CPTimelineEntry();
  if (*(v36 + v37[6]) == 1 && (*(v36 + v37[7]) & 1) == 0 && (*(v36 + v37[8]) & 1) == 0 && *(v36 + v37[9]) == 1)
  {
    v38 = *(v36 + v37[5]);
    if (v38 >> 62)
    {
      if (v38 < 0)
      {
        v60 = *(v36 + v37[5]);
      }

      if (sub_100072EDC() >= 1)
      {
        goto LABEL_7;
      }
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_7:
      v39 = KeyPath;
      sub_10007287C();
      v40 = sub_1000723AC();
      *(v39 + *(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)) = v40;
      sub_1000726CC();
      v41 = sub_1000726FC();

      v42 = sub_1000723AC();
      v43 = v65;
      v44 = v39 + *(v64 + 36);
      *v44 = v41;
      *(v44 + 8) = v42;
      v45 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      if (v45)
      {
        v46 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      }

      else
      {
        v47 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        if (v47)
        {
          v48 = v47;
        }

        else
        {
          [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
        }
      }

      v49 = v45;
      sub_1000726AC();
      v50 = sub_1000726FC();

      v51 = sub_1000723AC();
      v52 = v69;
      sub_100014DEC(v39, v69, &qword_100095228, &qword_1000745D0);
      v53 = v52 + *(v66 + 36);
      *v53 = v50;
      *(v53 + 8) = v51;
      KeyPath = swift_getKeyPath();
      v54 = v68;
      v55 = &v68[*(v72 + 36)];
      v56 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
      v57 = enum case for ColorScheme.light(_:);
      v58 = sub_100071EAC();
      (*(*(v58 - 8) + 104))(&v55[v56], v57, v58);
      *v55 = KeyPath;
      sub_100014DEC(v52, v54, &qword_1000958F8, &unk_1000763A0);
      v59 = v70;
      sub_100014DEC(v54, v70, &qword_100095900, &unk_100074DF0);
      sub_100004C94(v59, v9, &qword_100095900, &unk_100074DF0);
      swift_storeEnumTagMultiPayload();
      sub_100028240();
      sub_10007230C();
      sub_100004890(v59, &qword_100095900, &unk_100074DF0);
      goto LABEL_19;
    }
  }

  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  *v9 = qword_100099978;
  swift_storeEnumTagMultiPayload();
  sub_100028240();

  sub_10007230C();
LABEL_19:
  sub_100004C94(v24, v21, &qword_100095908, &unk_1000763B0);
  *a4 = v31;
  *(a4 + 8) = xmmword_100074C00;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = v33;
  *(a4 + 40) = v35;
  v61 = sub_10000388C(&qword_100095958, &qword_100074E20);
  sub_100004C94(v21, a4 + *(v61 + 48), &qword_100095908, &unk_1000763B0);

  sub_100004890(v24, &qword_100095908, &unk_1000763B0);
  sub_100004890(v21, &qword_100095908, &unk_1000763B0);
}

uint64_t sub_100028028()
{
  v1 = sub_10007236C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100095860, &qword_100074C88);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v13 - v8);
  *v9 = sub_1000728AC();
  v9[1] = v10;
  v11 = sub_10000388C(&qword_100095868, &qword_100074C90);
  sub_100024B40(v0, (v9 + *(v11 + 44)));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_100095870, &qword_100095860, &qword_100074C88);
  sub_10007265C();
  (*(v2 + 8))(v5, v1);
  return sub_100004890(v9, &qword_100095860, &qword_100074C88);
}

unint64_t sub_100028240()
{
  result = qword_100095910;
  if (!qword_100095910)
  {
    sub_1000038D4(&qword_100095900, &unk_100074DF0);
    sub_1000282F8();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095910);
  }

  return result;
}

unint64_t sub_1000282F8()
{
  result = qword_100095918;
  if (!qword_100095918)
  {
    sub_1000038D4(&qword_1000958F8, &unk_1000763A0);
    sub_1000283B0();
    sub_100004C3C(&qword_100095948, &qword_100095950, &unk_100074E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095918);
  }

  return result;
}

unint64_t sub_1000283B0()
{
  result = qword_100095920;
  if (!qword_100095920)
  {
    sub_1000038D4(&qword_100095228, &qword_1000745D0);
    sub_100028468();
    sub_100004C3C(&qword_100095948, &qword_100095950, &unk_100074E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095920);
  }

  return result;
}

unint64_t sub_100028468()
{
  result = qword_100095928;
  if (!qword_100095928)
  {
    sub_1000038D4(&qword_100095930, &unk_100074E00);
    sub_100028520();
    sub_100004C3C(&qword_100095940, &qword_100095220, &unk_1000763C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095928);
  }

  return result;
}

unint64_t sub_100028520()
{
  result = qword_100095938;
  if (!qword_100095938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095938);
  }

  return result;
}

unint64_t sub_10002857C()
{
  result = qword_1000959B8;
  if (!qword_1000959B8)
  {
    sub_1000038D4(&qword_1000959A8, &qword_100074E70);
    sub_100028634();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000959B8);
  }

  return result;
}

unint64_t sub_100028634()
{
  result = qword_1000959C0;
  if (!qword_1000959C0)
  {
    sub_1000038D4(&qword_1000959A0, &qword_100074E68);
    sub_100004B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000959C0);
  }

  return result;
}

unint64_t sub_1000286C8()
{
  result = qword_100095A08;
  if (!qword_100095A08)
  {
    sub_1000038D4(&qword_1000959E8, &unk_100077500);
    sub_100004C3C(&qword_100095A10, &qword_100095A18, &unk_100077510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095A08);
  }

  return result;
}

uint64_t sub_100028780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000287E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100028848()
{
  sub_1000038D4(&qword_100095860, &qword_100074C88);
  sub_100004C3C(&qword_100095870, &qword_100095860, &qword_100074C88);
  return swift_getOpaqueTypeConformance2();
}

void sub_1000288F4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    v7 = 0xE900000000000072;
    v5 = 0x6567676F6C637767;
    goto LABEL_5;
  }

  v3 = [v0 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = sub_100072B3C();
    v7 = v6;

LABEL_5:
    qword_100095A30 = v5;
    *algn_100095A38 = v7;
    return;
  }

  __break(1u);
}

uint64_t sub_100028A5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100071E7C();
  sub_100028B14(v3, a2);
  sub_100007DE8(v3, a2);
  if (qword_1000946E8 != -1)
  {
    swift_once();
  }

  return sub_100071E6C();
}

uint64_t *sub_100028B14(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100028B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_100095A40, &qword_100074F18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = sub_10000388C(&qword_100095A48, &unk_100074F20);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100028CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000388C(&qword_100095A40, &qword_100074F18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_10000388C(&qword_100095A48, &unk_100074F20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeFont()
{
  result = qword_100095AA8;
  if (!qword_100095AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100028E70()
{
  sub_100028F9C(319, &qword_100095AB8, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100028F4C();
    if (v1 <= 0x3F)
    {
      sub_100028F9C(319, &unk_100095AC8, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100028F4C()
{
  if (!qword_100095AC0)
  {
    v0 = sub_100072D6C();
    if (!v1)
    {
      atomic_store(v0, &qword_100095AC0);
    }
  }
}

void sub_100028F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10007222C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100029018@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_100095390, &qword_100074770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100004C94(v2, &v17 - v11, &qword_100095390, &qword_100074770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007222C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100029218(uint64_t a1)
{
  v3 = sub_10000388C(&qword_100095B10, &qword_100074FD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_10000388C(&qword_100095A48, &unk_100074F20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v38 - v9;
  v11 = sub_10007222C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  if (!a1)
  {
    return 0;
  }

  v19 = type metadata accessor for DynamicTypeFont();
  sub_100004C94(v1 + *(v19 + 24), v10, &qword_100095A48, &unk_100074F20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_100004890(v10, &qword_100095A48, &unk_100074F20);
LABEL_9:
    v24 = *(v1 + *(v19 + 28));
    v20 = sub_1000724CC();

    return v20;
  }

  (*(v12 + 32))(v18, v10, v11);

  sub_100029018(v15);
  v21 = sub_100029AEC(v15, v18);
  v22 = *(v12 + 8);
  v22(v15, v11);
  if (!v21)
  {
    v22(v18, v11);
    goto LABEL_9;
  }

  sub_10007240C();
  v23 = sub_10007242C();

  if (v23)
  {
    goto LABEL_17;
  }

  sub_10007244C();
  v25 = sub_10007242C();

  if (v25)
  {
    goto LABEL_17;
  }

  sub_1000724AC();
  v26 = sub_10007242C();

  if (v26)
  {
    goto LABEL_17;
  }

  sub_1000724BC();
  v27 = sub_10007242C();

  if (v27)
  {
    goto LABEL_17;
  }

  sub_10007253C();
  v28 = sub_10007242C();

  if (v28)
  {
    goto LABEL_17;
  }

  sub_10007241C();
  v29 = sub_10007242C();

  if (v29)
  {
    goto LABEL_17;
  }

  sub_10007243C();
  v33 = sub_10007242C();

  if (v33)
  {
    goto LABEL_17;
  }

  sub_1000724EC();
  v34 = sub_10007242C();

  if (v34)
  {
    goto LABEL_17;
  }

  sub_10007252C();
  v35 = sub_10007242C();

  if (v35)
  {
    goto LABEL_17;
  }

  sub_1000724FC();
  v36 = sub_10007242C();

  if (v36 & 1) != 0 || (, sub_10007251C(), v37 = sub_10007242C(), , , (v37))
  {
LABEL_17:
    v30 = sub_10007245C();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_10007249C();
    sub_100004890(v6, &qword_100095B10, &qword_100074FD8);
  }

  else
  {
  }

  v31 = *(v1 + *(v19 + 28));

  v20 = sub_1000724CC();

  v22(v18, v11);
  return v20;
}

uint64_t sub_100029A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100029218(*(v3 + *(a2 + 20)));
  KeyPath = swift_getKeyPath();
  v8 = sub_10000388C(&qword_100095B00, &qword_100074FC8);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = sub_10000388C(&qword_100095B08, &qword_100074FD0);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v6;
  return result;
}

BOOL sub_100029AEC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_10007222C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *(v4 + 16);
  v12(&v20 - v10, a1, v3, v9);
  v13 = *(v4 + 88);
  v14 = v13(v11, v3);
  v15 = 0;
  v16 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v14 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v14 == enum case for ContentSizeCategory.small(_:))
    {
      v15 = 1;
      goto LABEL_24;
    }

    if (v14 == enum case for ContentSizeCategory.medium(_:))
    {
      v15 = 2;
      goto LABEL_24;
    }

    if (v14 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v14 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v15 = 4;
    }

    else if (v14 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v15 = 5;
    }

    else if (v14 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v15 = 6;
    }

    else if (v14 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v15 = 7;
    }

    else if (v14 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v15 = 8;
    }

    else if (v14 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v15 = 9;
    }

    else if (v14 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v15 = 10;
    }

    else
    {
      if (v14 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v11, v3);
LABEL_7:
        v15 = 3;
        goto LABEL_24;
      }

      v15 = 11;
    }
  }

LABEL_24:
  (v12)(v7, v21, v3);
  v17 = v13(v7, v3);
  if (v17 == v16)
  {
    v18 = 0;
  }

  else if (v17 == enum case for ContentSizeCategory.small(_:))
  {
    v18 = 1;
  }

  else if (v17 == enum case for ContentSizeCategory.medium(_:))
  {
    v18 = 2;
  }

  else
  {
    if (v17 != enum case for ContentSizeCategory.large(_:))
    {
      if (v17 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v18 = 4;
        return v15 >= v18;
      }

      if (v17 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v18 = 5;
        return v15 >= v18;
      }

      if (v17 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v18 = 6;
        return v15 >= v18;
      }

      if (v17 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v18 = 7;
        return v15 >= v18;
      }

      if (v17 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v18 = 8;
        return v15 >= v18;
      }

      if (v17 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v18 = 9;
        return v15 >= v18;
      }

      if (v17 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v18 = 10;
        return v15 >= v18;
      }

      if (v17 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v18 = 11;
        return v15 >= v18;
      }

      (*(v4 + 8))(v7, v3);
    }

    v18 = 3;
  }

  return v15 >= v18;
}

unint64_t sub_100029F08()
{
  result = qword_100095B18;
  if (!qword_100095B18)
  {
    sub_1000038D4(&qword_100095B08, &qword_100074FD0);
    sub_100004C3C(&qword_100095B20, &qword_100095B00, &qword_100074FC8);
    sub_100004C3C(&qword_100095B28, &qword_100095B30, &unk_100074FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095B18);
  }

  return result;
}

CGImage *sub_100029FEC(double a1, double a2, double a3, double a4, double a5, double a6)
{
  [v6 size];
  v14 = v13;
  [v6 size];
  v16 = v15;
  result = [v6 CGImage];
  if (result)
  {
    v18 = v14 / a5;
    if (v14 / a5 <= v16 / a6)
    {
      v18 = v16 / a6;
    }

    v22.size.height = v18 * a4;
    v22.size.width = v18 * a3;
    v22.origin.y = v18 * a2;
    v22.origin.x = v18 * a1;
    v19 = result;
    v20 = CGImageCreateWithImageInRect(result, v22);

    if (v20)
    {
      v21 = [objc_allocWithZone(UIImage) initWithCGImage:v20];

      return v21;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002A0E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a1;
  v7 = type metadata accessor for WidgetCreationAttempt(0);
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = *(v108 + 64);
  __chkstk_darwin(v7);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v93 - v12;
  v13 = sub_100071C9C();
  v112 = *(v13 - 8);
  v14 = *(v112 + 64);
  __chkstk_darwin(v13);
  v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = &v93 - v17;
  __chkstk_darwin(v18);
  v110 = &v93 - v19;
  __chkstk_darwin(v20);
  v111 = &v93 - v21;
  v22 = sub_1000729DC();
  v23 = *(v22 - 8);
  v24 = v23[8];
  __chkstk_darwin(v22);
  v107 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v93 - v27;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v29 = sub_100071E7C();
  v30 = sub_100007DE8(v29, qword_100099998);
  v31 = v23[2];
  v104 = a3;
  v98 = v31;
  v99 = v23 + 2;
  v31(v28, a3, v22);

  v103 = v30;
  v32 = sub_100071E5C();
  v33 = sub_100072CFC();

  v34 = os_log_type_enabled(v32, v33);
  v95 = v10;
  v105 = a2;
  v100 = v22;
  v101 = v23;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v97 = v13;
    v115[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_100034D20(v113, a2, v115);
    *(v35 + 12) = 2080;
    sub_10003ACC8(&qword_100094E70, &type metadata accessor for WidgetFamily);
    v37 = sub_100072FEC();
    v39 = v38;
    v40 = v23[1];
    v40(v28, v22);
    v41 = sub_100034D20(v37, v39, v115);

    *(v35 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Fetch last widget attempt for %s, widgetFamily: %s", v35, 0x16u);
    swift_arrayDestroy();
    v13 = v97;
  }

  else
  {

    v40 = v23[1];
    v40(v28, v22);
  }

  v42 = objc_opt_self();
  v43 = [v42 defaultManager];
  v44 = [v43 URLsForDirectory:13 inDomains:1];

  v45 = sub_100072C4C();
  v46 = v107;
  if (*(v45 + 16))
  {
    v94 = v40;
    v97 = a4;
    v47 = v45 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v93 = *(v112 + 16);
    v93(v111, v47, v13);

    v48 = v105;
    sub_100071C4C();
    v115[0] = 0;
    v115[1] = 0xE000000000000000;
    sub_100072E4C(20);

    strcpy(v115, "last_attempt_");
    HIWORD(v115[1]) = -4864;
    v49 = v104;
    v114 = sub_1000729CC();
    v116._countAndFlagsBits = sub_100072FEC();
    sub_100072B7C(v116);

    v117._countAndFlagsBits = 0x6E6F736A2ELL;
    v117._object = 0xE500000000000000;
    sub_100072B7C(v117);
    v50 = v106;
    sub_100071C5C();

    v51 = [v42 defaultManager];
    sub_100071C7C();
    v52 = sub_100072B2C();

    v53 = [v51 fileExistsAtPath:v52];

    if (v53)
    {
      v54 = v13;
      v55 = sub_100071CAC();
      v57 = v56;
      v58 = sub_100071BBC();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      swift_allocObject();
      sub_100071BAC();
      sub_10003ACC8(&qword_100095C98, type metadata accessor for WidgetCreationAttempt);
      v61 = v96;
      sub_100071B9C();

      v82 = v95;
      sub_10003B114(v61, v95, type metadata accessor for WidgetCreationAttempt);
      v83 = sub_100071E5C();
      v84 = sub_100072CFC();
      if (os_log_type_enabled(v83, v84))
      {
        v86 = v82;
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v115[0] = v88;
        *v87 = 136315138;
        v113 = sub_10002BF9C();
        v90 = v89;
        sub_10003B17C(v86, type metadata accessor for WidgetCreationAttempt);
        v91 = sub_100034D20(v113, v90, v115);

        *(v87 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v83, v84, "Decoded widget attempt -> %s", v87, 0xCu);
        sub_100007F50(v88);

        sub_1000086B8(v55, v57);

        v92 = *(v112 + 8);
        v92(v106, v54);
      }

      else
      {
        sub_1000086B8(v55, v57);

        sub_10003B17C(v82, type metadata accessor for WidgetCreationAttempt);
        v92 = *(v112 + 8);
        v92(v50, v54);
      }

      v92(v110, v54);
      v92(v111, v54);
      a4 = v97;
      sub_10003BB38(v61, v97, type metadata accessor for WidgetCreationAttempt);
      v80 = 0;
    }

    else
    {
      v62 = v100;
      v98(v46, v49, v100);
      v63 = v102;
      v93(v102, v50, v13);

      v64 = sub_100071E5C();
      v65 = sub_100072CFC();

      v66 = v13;
      if (os_log_type_enabled(v64, v65))
      {
        v67 = v62;
        v68 = swift_slowAlloc();
        v115[0] = swift_slowAlloc();
        *v68 = 136315650;
        *(v68 + 4) = sub_100034D20(v113, v48, v115);
        *(v68 + 12) = 2080;
        sub_10003ACC8(&qword_100094E70, &type metadata accessor for WidgetFamily);
        v69 = v65;
        v70 = sub_100072FEC();
        v72 = v71;
        v94(v46, v67);
        v73 = sub_100034D20(v70, v72, v115);

        *(v68 + 14) = v73;
        *(v68 + 22) = 2080;
        v74 = sub_100071C7C();
        v76 = v75;
        v77 = *(v112 + 8);
        v77(v63, v66);
        v78 = sub_100034D20(v74, v76, v115);

        *(v68 + 24) = v78;
        _os_log_impl(&_mh_execute_header, v64, v69, "Last widget attempt does not exist for %s, widgetFamily: %s at %s", v68, 0x20u);
        swift_arrayDestroy();

        v77(v106, v66);
        v77(v110, v66);
        v77(v111, v66);
      }

      else
      {

        v79 = *(v112 + 8);
        v79(v63, v66);
        v94(v46, v62);
        v79(v50, v66);
        v79(v110, v66);
        v79(v111, v66);
      }

      v80 = 1;
      a4 = v97;
    }
  }

  else
  {

    v80 = 1;
  }

  return (*(v108 + 56))(a4, v80, 1, v109);
}

uint64_t sub_10002AE5C()
{
  v1 = sub_100071C9C();
  v110 = *(v1 - 8);
  v2 = *(v110 + 64);
  __chkstk_darwin(v1);
  v4 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &v102 - v6;
  __chkstk_darwin(v7);
  v104 = &v102 - v8;
  __chkstk_darwin(v9);
  v11 = &v102 - v10;
  __chkstk_darwin(v12);
  v109 = &v102 - v13;
  v14 = type metadata accessor for WidgetCreationAttempt(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v103 = v4;
  v21 = sub_100071E7C();
  v22 = sub_100007DE8(v21, qword_100099998);
  sub_10003B114(v0, v20, type metadata accessor for WidgetCreationAttempt);
  v106 = v0;
  sub_10003B114(v0, v17, type metadata accessor for WidgetCreationAttempt);
  v107 = v22;
  v23 = sub_100071E5C();
  v24 = sub_100072CFC();
  v25 = os_log_type_enabled(v23, v24);
  v108 = v11;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v102 = v1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v112[0] = v28;
    *v27 = 136315394;
    v29 = &v20[*(v14 + 28)];
    v30 = v14;
    v31 = *v29;
    v32 = v29[1];

    sub_10003B17C(v20, type metadata accessor for WidgetCreationAttempt);
    v33 = sub_100034D20(v31, v32, v112);
    v14 = v30;

    *(v27 + 4) = v33;
    *(v27 + 12) = 2048;
    v34 = *&v17[*(v30 + 32)];
    sub_10003B17C(v17, type metadata accessor for WidgetCreationAttempt);
    *(v27 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Write widget creation attempt for %s, widgetFamily: %ld", v27, 0x16u);
    sub_100007F50(v28);
    v11 = v108;

    v1 = v102;
  }

  else
  {
    sub_10003B17C(v17, type metadata accessor for WidgetCreationAttempt);

    sub_10003B17C(v20, type metadata accessor for WidgetCreationAttempt);
  }

  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  v37 = [v36 URLsForDirectory:13 inDomains:1];

  v38 = sub_100072C4C();
  if (!*(v38 + 16))
  {
  }

  v39 = v38 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
  v102 = *(v110 + 16);
  v102(v109, v39, v1);

  v40 = v106;
  v41 = (v106 + *(v14 + 28));
  v42 = *v41;
  v43 = v41[1];
  sub_100071C4C();
  v44 = [v35 defaultManager];
  sub_100071C7C();
  v45 = sub_100072B2C();

  v46 = [v44 fileExistsAtPath:v45];

  if (v46)
  {
    goto LABEL_14;
  }

  v47 = v104;
  v102(v104, v11, v1);
  v48 = sub_100071E5C();
  v49 = sub_100072CFC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v1;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v112[0] = v52;
    *v51 = 136315138;
    sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL);
    v53 = sub_100072FEC();
    v54 = v47;
    v55 = v53;
    v57 = v56;
    v104 = *(v110 + 8);
    (v104)(v54, v50);
    v58 = sub_100034D20(v55, v57, v112);

    *(v51 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v48, v49, "Creating directory for app metadata at %s", v51, 0xCu);
    sub_100007F50(v52);
    v11 = v108;

    v1 = v50;
  }

  else
  {

    v104 = *(v110 + 8);
    (v104)(v47, v1);
  }

  v60 = [v35 defaultManager];
  sub_100071C3C(v61);
  v63 = v62;
  v112[0] = 0;
  v64 = [v60 createDirectoryAtURL:v62 withIntermediateDirectories:1 attributes:0 error:v112];

  if (v64)
  {
    v65 = v112[0];
    v40 = v106;
LABEL_14:
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    sub_100072E4C(20);

    strcpy(v112, "last_attempt_");
    HIWORD(v112[1]) = -4864;
    v111 = *(v40 + *(v14 + 32));
    v113._countAndFlagsBits = sub_100072FEC();
    sub_100072B7C(v113);

    v114._countAndFlagsBits = 0x6E6F736A2ELL;
    v114._object = 0xE500000000000000;
    sub_100072B7C(v114);
    v66 = v105;
    sub_100071C5C();

    v67 = sub_100071BEC();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    swift_allocObject();
    sub_100071BDC();
    sub_10003ACC8(&qword_100095C90, type metadata accessor for WidgetCreationAttempt);
    v70 = sub_100071BCC();
    v72 = v71;

    sub_100071CDC();
    v85 = v103;
    v102(v103, v66, v1);
    v86 = sub_100071E5C();
    v87 = sub_100072CFC();
    if (os_log_type_enabled(v86, v87))
    {
      v89 = v1;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = v110;
      v107 = v91;
      v112[0] = v91;
      *v90 = 136315138;
      sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL);
      v93 = sub_100072FEC();
      v94 = v85;
      v95 = v93;
      v97 = v96;
      v98 = *(v92 + 8);
      v98(v94, v89);
      v99 = sub_100034D20(v95, v97, v112);

      *(v90 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v86, v87, "Wrote widget creation attempt to %s", v90, 0xCu);
      sub_100007F50(v107);

      sub_1000086B8(v70, v72);

      v98(v105, v89);
      v98(v108, v89);
      return (v98)(v109, v89);
    }

    else
    {
      sub_1000086B8(v70, v72);

      v100 = v85;
      v101 = *(v110 + 8);
      v101(v100, v1);
      v101(v66, v1);
      v101(v108, v1);
      return (v101)(v109, v1);
    }
  }

  v73 = v112[0];
  v74 = sub_100071C1C();

  swift_willThrow();
  swift_errorRetain();
  v75 = sub_100071E5C();
  v76 = sub_100072CFC();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = v1;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v112[0] = v79;
    *v78 = 136315138;
    v111 = v74;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    v80 = sub_100072B4C();
    v82 = sub_100034D20(v80, v81, v112);

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "Unable to create metadata directory %s.", v78, 0xCu);
    sub_100007F50(v79);

    v83 = v104;
    (v104)(v11, v77);
    return v83(v109, v77);
  }

  else
  {

    v84 = v104;
    (v104)(v11, v1);
    return v84(v109, v1);
  }
}

void sub_10002BBA0(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100072EDC())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_100072E6C();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10003464C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10002BCA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000946F0 != -1)
  {
    swift_once();
  }

  v6 = sub_100071E7C();
  sub_100007DE8(v6, qword_100099980);
  v7 = sub_100071E5C();
  v8 = sub_100072CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchActivityFeedData...", v9, 2u);
  }

  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;

  v11 = sub_10006CEA0();
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() proxyForPlayer:v11];
    v14 = [v13 utilityServicePrivate];

    v15 = swift_allocObject();
    v15[2] = v3;
    v15[3] = sub_100034C30;
    v15[4] = v10;
    v19[4] = sub_10000F5D4;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10002CE08;
    v19[3] = &unk_100092660;
    v16 = _Block_copy(v19);

    [v14 getWidgetStoreBagValueWithHandler:v16];

    _Block_release(v16);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100038D90(86400, 0xD000000000000011, 0x8000000100077AD0, 0x7974697669746341, 0xEC00000064656546);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;

    sub_100033C64(sub_10003908C, v18);
  }
}

uint64_t sub_10002BF9C()
{
  sub_100072E4C(95);
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v7._object = 0x8000000100077CC0;
  sub_100072B7C(v7);
  sub_100071D4C();
  sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date);
  v8._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v8);

  v9._object = 0x8000000100077CE0;
  v9._countAndFlagsBits = 0xD000000000000011;
  sub_100072B7C(v9);
  v1 = type metadata accessor for WidgetCreationAttempt(0);
  if (*(v0 + v1[5]))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[5]))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100072B7C(v2);

  v10._countAndFlagsBits = 0x547972746572202CLL;
  v10._object = 0xEC0000003A656D69;
  sub_100072B7C(v10);
  v5 = *(v0 + v1[6]);
  v11._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v11);

  v12._countAndFlagsBits = 0x6568636163202C73;
  v12._object = 0xEB000000003A4449;
  sub_100072B7C(v12);
  sub_100072B7C(*(v0 + v1[7]));
  v13._countAndFlagsBits = 0x746567646977202CLL;
  v13._object = 0xEF3A796C696D6146;
  sub_100072B7C(v13);
  v6 = *(v0 + v1[8]);
  v14._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v14);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  sub_100072B7C(v15);
  return 0;
}

Swift::Int sub_10002C204()
{
  v1 = *v0;
  sub_10007303C();
  sub_10007304C(v1);
  return sub_10007305C();
}

Swift::Int sub_10002C278()
{
  v1 = *v0;
  sub_10007303C();
  sub_10007304C(v1);
  return sub_10007305C();
}

uint64_t sub_10002C2BC()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6D69547972746572;
  v4 = 0x44496568636163;
  if (v1 != 3)
  {
    v4 = 0x6146746567646977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646944726F727265;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002C368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100039148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C3A8(uint64_t a1)
{
  v2 = sub_10003C17C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C3E4(uint64_t a1)
{
  v2 = sub_10003C17C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002C420(void *a1)
{
  v3 = v1;
  v5 = sub_10000388C(&qword_100095DE0, &qword_100075210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10003C138(a1, a1[3]);
  sub_10003C17C();
  sub_10007307C();
  v19[15] = 0;
  sub_100071D4C();
  sub_10003ACC8(&qword_100095C18, &type metadata accessor for Date);
  sub_100072FDC();
  if (!v2)
  {
    v11 = type metadata accessor for WidgetCreationAttempt(0);
    v12 = *(v3 + v11[5]);
    v19[14] = 1;
    sub_100072FBC();
    v13 = *(v3 + v11[6]);
    v19[13] = 2;
    sub_100072FCC();
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = v14[1];
    v19[12] = 3;
    sub_100072FAC();
    v17 = *(v3 + v11[8]);
    v19[11] = 4;
    sub_100072FCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10002C664@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100071D4C();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100095DF0, &qword_100075218);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for WidgetCreationAttempt(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10003C138(a1, a1[3]);
  sub_10003C17C();
  sub_10007306C();
  if (v2)
  {
    return sub_100007F50(a1);
  }

  v16 = v24;
  v32 = 0;
  sub_10003ACC8(&qword_100095C20, &type metadata accessor for Date);
  sub_100072F8C();
  (*(v16 + 32))(v14, v27, v4);
  v31 = 1;
  v14[v11[5]] = sub_100072F6C() & 1;
  v30 = 2;
  *&v14[v11[6]] = sub_100072F7C();
  v29 = 3;
  v17 = sub_100072F5C();
  v18 = &v14[v11[7]];
  *v18 = v17;
  v18[1] = v19;
  v28 = 4;
  v20 = sub_100072F7C();
  (*(v25 + 8))(v10, v26);
  *&v14[v11[8]] = v20;
  sub_10003B114(v14, v23, type metadata accessor for WidgetCreationAttempt);
  sub_100007F50(a1);
  return sub_10003B17C(v14, type metadata accessor for WidgetCreationAttempt);
}

Swift::Int sub_10002CAE0()
{
  sub_10007303C();
  sub_10007304C(0);
  return sub_10007305C();
}

Swift::Int sub_10002CB4C()
{
  sub_10007303C();
  sub_10007304C(0);
  return sub_10007305C();
}

NSNumber sub_10002CB8C()
{
  sub_10000F74C(0, &qword_100095C88, NSNumber_ptr);
  result.super.super.isa = sub_100072D5C(20).super.super.isa;
  qword_100095B38 = result.super.super.isa;
  return result;
}

uint64_t sub_10002CBD4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, __n128))
{
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v9 = sub_100071E7C();
  sub_100007DE8(v9, qword_1000999C8);
  swift_errorRetain();
  v10 = a2;
  v11 = a3;
  v12 = sub_100071E5C();
  v13 = sub_100072CFC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412802;
    if (a1)
    {
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v14 + 4) = v16;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v17;
    v15[1] = v10;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    v15[2] = v11;
    v18 = v10;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "activityFeedStoreBagValue error %@, activityFeedWidgetTTL %@, activityFeedWidgetLivePreview %@", v14, 0x20u);
    sub_10000388C(&qword_100095BD8, &qword_100075090);
    swift_arrayDestroy();
  }

  if ([v10 integerValue])
  {
    v20 = [v10 integerValue];
  }

  else
  {
    v20 = 86400;
  }

  [v11 doubleValue];
  v21 = v22.n128_f64[0];
  v22.n128_u64[0] = 1.0;
  if (v21 != 0.0)
  {
    [v11 doubleValue];
  }

  return a5(v20, v22);
}

void sub_10002CE08(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v11 = a3;
  v10 = a4;
  v8(a2, v11, v10);
}

uint64_t sub_10002CEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v23 = a5;
  v10 = sub_1000729DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a4, v10, v13);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v11 + 32))(v17 + v15, v14, v10);
  v18 = (v17 + v16);
  v19 = v23;
  *v18 = v22;
  v18[1] = a2;
  v20 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v19;
  v20[1] = a6;

  sub_10003930C(0xD000000000000020, 0x8000000100077B60, sub_10003ADE4);
}

uint64_t sub_10002D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  sub_100038D90(a1, 0xD000000000000014, 0x8000000100077B90, 0x65756E69746E6F43, 0xEF676E6979616C50);

  sub_1000397D8(a3, a4, a5, a2, a6, a7);
}

uint64_t sub_10002D114(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v185 = a6;
  v182 = a4;
  v13 = sub_10000388C(&qword_100095C40, &qword_1000750B8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v184 = (&v169 - v15);
  v192 = type metadata accessor for AppMetadata();
  v186 = *(v192 - 8);
  v16 = *(v186 + 64);
  __chkstk_darwin(v192);
  v189 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v188 = &v169 - v19;
  __chkstk_darwin(v20);
  v187 = &v169 - v21;
  v22 = sub_1000729DC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v169 - v28;
  v193 = a1;
  if (a1 >> 62)
  {
    goto LABEL_109;
  }

  v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
LABEL_110:
    if (qword_1000946F8 != -1)
    {
      goto LABEL_129;
    }

    goto LABEL_111;
  }

  while (2)
  {
    v31 = *(v23 + 16);
    v171 = v23 + 16;
    v170 = v31;
    (v31)(v29, a5, v22, v27);
    v32 = (*(v23 + 88))(v29, v22);
    v179 = v22;
    v178 = a3;
    v177 = a8;
    v176 = a7;
    v175 = a5;
    v174 = v23;
    v173 = v25;
    v172 = v24;
    if (v32 == enum case for WidgetFamily.systemSmall(_:))
    {
      v33 = 3;
    }

    else if (v32 == enum case for WidgetFamily.systemMedium(_:))
    {
      v33 = 6;
    }

    else if (v32 == enum case for WidgetFamily.systemLarge(_:))
    {
      v33 = 8;
    }

    else
    {
      if (v32 != enum case for WidgetFamily.systemExtraLarge(_:))
      {
        (*(v23 + 8))(v29, v22);
      }

      v33 = 14;
    }

    v181 = v33;
    a5 = 0;
    v23 = v193;
    v194 = (v193 & 0xFFFFFFFFFFFFFF8);
    v195 = v193 & 0xC000000000000001;
    v24 = (v193 + 32);
    v199 = &_swiftEmptyArrayStorage;
    a3 = 40;
    do
    {
      if (v195)
      {
        v34 = sub_100072E6C();
      }

      else
      {
        if (a5 >= v194[2])
        {
          goto LABEL_107;
        }

        v34 = v24[a5];
      }

      v29 = v34;
      if (__OFADD__(a5++, 1))
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v25 = v30;
      v36 = [v34 compatiblePlatforms];
      v37 = sub_100072CAC();

      a8 = [objc_opt_self() currentPlatformServerString];
      a7 = sub_100072B3C();
      v22 = v38;

      v197[0] = a7;
      v197[1] = v22;
      sub_100072DFC();
      if (*(v37 + 16))
      {
        a8 = &v198;
        v39 = sub_100072DDC(*(v37 + 40));
        a7 = v37 + 56;
        v40 = -1 << *(v37 + 32);
        v22 = v39 & ~v40;
        if ((*(v37 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v41 = ~v40;
          while (1)
          {
            sub_10003B064(*(v37 + 48) + 40 * v22, v197);
            a8 = sub_100072DEC();
            sub_10003B0C0(v197);
            if (a8)
            {
              break;
            }

            v22 = (v22 + 1) & v41;
            if (((*(a7 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          sub_10003B0C0(&v198);
          v42 = [v29 adamID];
          v23 = v193;
          if (v42)
          {

            a8 = &v199;
            sub_100072E9C();
            a7 = *(v199 + 16);
            sub_100072EBC();
            sub_100072ECC();
            sub_100072EAC();
          }

          else
          {
          }
        }

        else
        {
LABEL_13:

          sub_10003B0C0(&v198);
          v23 = v193;
        }
      }

      else
      {

        sub_10003B0C0(&v198);
      }

      v30 = v25;
    }

    while (a5 != v25);
    a3 = v199;
    v43 = v199 < 0 || (v199 & 0x4000000000000000) != 0;
    if (v43)
    {
      v167 = sub_100072EDC();
      result = sub_100072EDC();
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        if (v167 >= v181)
        {
          v168 = v181;
        }

        else
        {
          v168 = v167;
        }

        if (v167 >= 0)
        {
          v29 = v168;
        }

        else
        {
          v29 = v181;
        }

        if (sub_100072EDC() >= v29)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        swift_once();
LABEL_92:
        v111 = sub_100071E7C();
        v112 = sub_100007DE8(v111, qword_100099998);
        v113 = v180;

        v114 = sub_100071E5C();
        v115 = sub_100072CFC();
        v116 = os_log_type_enabled(v114, v115);
        v117 = v179;
        if (v116)
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v199 = v119;
          *v118 = 136315138;
          swift_beginAccess();
          v120 = *(v113 + 16);

          sub_10000388C(&qword_100095C48, &unk_1000750C0);
          v121 = sub_100072AEC();
          v123 = v122;

          v124 = sub_100034D20(v121, v123, &v199);

          *(v118 + 4) = v124;
          _os_log_impl(&_mh_execute_header, v114, v115, "Need app metadata for the following adam IDs: %s", v118, 0xCu);
          sub_100007F50(v119);
        }

        else
        {
        }

        v125 = sub_100071E5C();
        v126 = sub_100072CFC();
        if (os_log_type_enabled(v125, v126))
        {
          LODWORD(v195) = v126;
          v127 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v199 = v194;
          *v127 = 136315138;
          v128 = *(v30 + 2);
          if (v128)
          {
            v188 = v127;
            v190 = v125;
            *&v191 = v112;
            v196 = &_swiftEmptyArrayStorage;

            sub_1000352C8(0, v128, 0);
            v129 = v196;
            v130 = &v30[(*(v186 + 80) + 32) & ~*(v186 + 80)];
            v131 = *(v186 + 72);
            do
            {
              v132 = v189;
              sub_10003B114(v130, v189, type metadata accessor for AppMetadata);
              v133 = (v132 + *(v192 + 20));
              v135 = *v133;
              v134 = v133[1];

              sub_10003B17C(v132, type metadata accessor for AppMetadata);
              v196 = v129;
              v137 = v129[2];
              v136 = v129[3];
              if (v137 >= v136 >> 1)
              {
                sub_1000352C8((v136 > 1), v137 + 1, 1);
                v129 = v196;
              }

              v129[2] = v137 + 1;
              v138 = &v129[2 * v137];
              v138[4] = v135;
              v138[5] = v134;
              v130 += v131;
              --v128;
            }

            while (v128);

            v117 = v179;
            v125 = v190;
            v127 = v188;
          }

          v139 = sub_100072C5C();
          v141 = v140;

          v142 = sub_100034D20(v139, v141, &v199);

          *(v127 + 4) = v142;
          _os_log_impl(&_mh_execute_header, v125, v195, "Found cached app metadata for: %s", v127, 0xCu);
          sub_100007F50(v194);
        }

        v143 = sub_100071E5C();
        v144 = sub_100072CFC();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v199 = v146;
          *v145 = 136315138;

          v147 = sub_100072C5C();
          v149 = v148;

          v150 = sub_100034D20(v147, v149, &v199);

          *(v145 + 4) = v150;
          _os_log_impl(&_mh_execute_header, v143, v144, "Reaching out to MAPI to retrieve app metadata for: %s", v145, 0xCu);
          sub_100007F50(v146);
        }

        v151 = v173;
        v170(v173, v175, v117);
        v152 = v174;
        v153 = (*(v174 + 80) + 40) & ~*(v174 + 80);
        v154 = (v172 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
        v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = swift_allocObject();
        *(v156 + 2) = v181;
        *(v156 + 3) = v197;
        *(v156 + 4) = v185;
        (*(v152 + 32))(&v156[v153], v151, v117);
        *&v156[v154] = v180;
        v157 = &v156[v155];
        v158 = v177;
        *v157 = v176;
        v157[1] = v158;
        v159 = &v156[(v155 + 23) & 0xFFFFFFFFFFFFFFF8];
        v160 = v182;
        *v159 = v178;
        v159[1] = v160;

        sub_100032068(v161, sub_10003B2A8, v156);

        swift_unknownObjectRelease();
      }

      return result;
    }

    if (*(v199 + 16) >= v181)
    {
      v29 = v181;
    }

    else
    {
      v29 = *(v199 + 16);
    }

LABEL_37:
    if ((a3 & 0xC000000000000001) != 0 && v29)
    {
      sub_10000F74C(0, &qword_100095C38, GKGameSummaryInternal_ptr);

      v44 = 0;
      do
      {
        v45 = v44 + 1;
        sub_100072E5C(v44);
        v44 = v45;
      }

      while (v29 != v45);
    }

    else
    {
    }

    if (v43)
    {
      v46 = sub_100072EEC();
      v194 = v47;
      a8 = v48;
      v50 = v49;

      v29 = v50 >> 1;
      a3 = v46;
    }

    else
    {
      a8 = 0;
      v194 = (a3 + 32);
    }

    v51 = swift_allocObject();
    v30 = &_swiftEmptyArrayStorage;
    v52 = sub_10004F574(&_swiftEmptyArrayStorage);
    *(v51 + 16) = v52;
    v195 = v51 + 16;
    v54 = v29 - a8;
    if (__OFSUB__(v29, a8))
    {
      goto LABEL_123;
    }

    if ((v54 & 0x8000000000000000) != 0)
    {
      goto LABEL_124;
    }

    v180 = v51;
    v169 = a3;
    if (!v54)
    {
      a5 = v52;
LABEL_72:
      a7 = a5 + 64;
      v100 = *(a5 + 64);
      v197[0] = &_swiftEmptyArrayStorage;
      v101 = 1 << *(a5 + 32);
      v102 = -1;
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      v23 = v102 & v100;
      v25 = ((v101 + 63) >> 6);
      v194 = (v186 + 48);

      a3 = 0;
      v193 = &_swiftEmptyArrayStorage;
      while (v23)
      {
LABEL_80:
        v104 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v105 = (*(a5 + 48) + ((a3 << 10) | (16 * v104)));
        v22 = *v105;
        v29 = v105[1];

        v24 = v184;
        sub_10002E744(0xEF676E6979616C50, v22, v29, v184);
        if ((*v194)(v24, 1, v192) == 1)
        {
          sub_100004890(v24, &qword_100095C40, &qword_1000750B8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v193 = sub_10000CD60(0, *(v193 + 16) + 1, 1, v193);
          }

          a8 = *(v193 + 16);
          v108 = *(v193 + 24);
          v24 = (a8 + 1);
          if (a8 >= v108 >> 1)
          {
            v193 = sub_10000CD60((v108 > 1), a8 + 1, 1, v193);
          }

          v109 = v193;
          *(v193 + 16) = v24;
          v110 = &v109[16 * a8];
          *(v110 + 4) = v22;
          *(v110 + 5) = v29;
        }

        else
        {

          v106 = v187;
          sub_10003BB38(v24, v187, type metadata accessor for AppMetadata);
          sub_10003B114(v106, v188, type metadata accessor for AppMetadata);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_10000CE6C(0, *(v30 + 2) + 1, 1, v30);
          }

          a8 = *(v30 + 2);
          v107 = *(v30 + 3);
          v29 = a8 + 1;
          if (a8 >= v107 >> 1)
          {
            v30 = sub_10000CE6C(v107 > 1, a8 + 1, 1, v30);
          }

          sub_10003B17C(v187, type metadata accessor for AppMetadata);
          *(v30 + 2) = v29;
          sub_10003BB38(v188, &v30[((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * a8], type metadata accessor for AppMetadata);
          v197[0] = v30;
        }
      }

      while (1)
      {
        v103 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v103 >= v25)
        {

          if (qword_1000946F8 != -1)
          {
            goto LABEL_125;
          }

          goto LABEL_92;
        }

        v23 = *(a7 + 8 * v103);
        ++a3;
        if (v23)
        {
          a3 = v103;
          goto LABEL_80;
        }
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v30 = sub_100072EDC();
      if (!v30)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  if (a8 > 0)
  {
    __break(1u);
    goto LABEL_127;
  }

  if (v29 < 1)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v54 <= v29)
  {
    v55 = 0;
    *&v53 = 136315394;
    v191 = v53;
    *&v53 = 136315650;
    v183 = v53;
    v193 = v29 - a8;
    while (1)
    {
      v62 = qword_1000946F8;
      v63 = v194[v55];
      if (v62 != -1)
      {
        swift_once();
      }

      v64 = sub_100071E7C();
      sub_100007DE8(v64, qword_100099998);
      v29 = v63;
      v65 = sub_100071E5C();
      v66 = sub_100072CFC();

      if (os_log_type_enabled(v65, v66))
      {
        v22 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v198 = v24;
        *v22 = v191;
        v67 = [v29 bundleID];
        v68 = sub_100072B3C();
        v70 = v69;

        v71 = sub_100034D20(v68, v70, &v198);
        v54 = v193;

        *(v22 + 4) = v71;
        *(v22 + 12) = 2048;
        *(v22 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v65, v66, "received the following summary: %s with %ld", v22, 0x16u);
        sub_100007F50(v24);
      }

      v72 = [v29 adamID];
      if (v72)
      {
        v73 = v72;
        v74 = [v72 stringValue];
        v24 = sub_100072B3C();
        v22 = v75;

        if (!*(*v195 + 16))
        {

LABEL_67:
          v22 = v29;
          v24 = v73;
          v84 = sub_100071E5C();
          v85 = sub_100072CFC();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v190 = v22;
            v87 = v86;
            v198 = swift_slowAlloc();
            *v87 = v183;
            v88 = [v190 bundleID];
            v89 = sub_100072B3C();
            v91 = v90;

            v92 = sub_100034D20(v89, v91, &v198);

            *(v87 + 4) = v92;
            *(v87 + 12) = 2080;
            v93 = v24;
            v94 = [v93 description];
            v95 = sub_100072B3C();
            v97 = v96;

            v98 = v95;
            v54 = v193;
            v99 = sub_100034D20(v98, v97, &v198);

            *(v87 + 14) = v99;
            *(v87 + 22) = 2048;
            *(v87 + 24) = v55;
            _os_log_impl(&_mh_execute_header, v84, v85, "adding the following summary: %s, %s with %ld", v87, 0x20u);
            swift_arrayDestroy();

            v22 = v190;
          }

          v56 = [v24 stringValue];
          v57 = sub_100072B3C();
          v59 = v58;

          v60 = v195;
          v29 = *v195;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v198 = v29;
          *v60 = 0x8000000000000000;
          a8 = &v198;
          sub_10004EC04(v22, v55, v57, v59, isUniquelyReferenced_nonNull_native);

          *v60 = v198;

          goto LABEL_54;
        }

        sub_10004DCC0(v24, v22);
        a8 = v76;

        if ((a8 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v29 = v29;
        a8 = sub_100071E5C();
        v77 = sub_100072CFC();

        if (!os_log_type_enabled(a8, v77))
        {

          goto LABEL_54;
        }

        v78 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v198 = v22;
        *v78 = v191;
        v79 = [v29 bundleID];
        v80 = sub_100072B3C();
        v82 = v81;

        v83 = sub_100034D20(v80, v82, &v198);
        v54 = v193;

        *(v78 + 4) = v83;
        *(v78 + 12) = 2048;
        *(v78 + 14) = v55;
        _os_log_impl(&_mh_execute_header, a8, v77, "received nil adamID for: %s with %ld", v78, 0x16u);
        sub_100007F50(v22);
      }

LABEL_54:
      if (v54 == ++v55)
      {
        a5 = *v195;
        v30 = &_swiftEmptyArrayStorage;
        goto LABEL_72;
      }
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  swift_once();
LABEL_111:
  v163 = sub_100071E7C();
  sub_100007DE8(v163, qword_100099998);
  v164 = sub_100071E5C();
  v165 = sub_100072CFC();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    *v166 = 0;
    _os_log_impl(&_mh_execute_header, v164, v165, "retreived no summaries", v166, 2u);
  }

  return (a3)(&_swiftEmptyArrayStorage, 0);
}

uint64_t sub_10002E744@<X0>(NSObject *a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v81 = a2;
  v74 = a1;
  v75 = a4;
  v5 = type metadata accessor for AppMetadata();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  __chkstk_darwin(v5);
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v69 - v9;
  __chkstk_darwin(v10);
  v73 = &v69 - v11;
  v12 = sub_100071C9C();
  v78 = *(v12 - 8);
  v13 = *(v78 + 64);
  __chkstk_darwin(v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v79 = &v69 - v17;
  __chkstk_darwin(v18);
  v80 = &v69 - v19;
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v23 = sub_100071E7C();
  sub_100007DE8(v23, qword_100099998);

  v24 = sub_100071E5C();
  v25 = sub_100072CFC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v82 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100034D20(v81, a3, &v82);
    _os_log_impl(&_mh_execute_header, v24, v25, "Fetch cached metadata for %s", v26, 0xCu);
    sub_100007F50(v27);
  }

  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v30 = [v29 URLsForDirectory:13 inDomains:1];

  v31 = sub_100072C4C();
  if (*(v31 + 16))
  {
    v32 = v22;
    (*(v78 + 16))(v22, v31 + ((*(v78 + 80) + 32) & ~*(v78 + 80)), v12);

    sub_100071C4C();

    sub_100071C4C();

    sub_100071C5C();
    v33 = v15;
    v34 = [v28 defaultManager];
    sub_100071C7C();
    v35 = sub_100072B2C();

    v36 = [v34 fileExistsAtPath:v35];

    if (v36)
    {
      v37 = sub_100071CAC();
      v39 = v38;
      v40 = sub_100071BBC();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      sub_100071BAC();
      sub_10003ACC8(&qword_100095C80, type metadata accessor for AppMetadata);
      v43 = v73;
      sub_100071B9C();
      v70 = v39;

      v53 = v72;
      sub_10003B114(v43, v72, type metadata accessor for AppMetadata);

      v54 = sub_100071E5C();
      v55 = sub_100072CFC();

      v74 = v54;
      if (os_log_type_enabled(v54, v55))
      {
        v57 = v53;
        v58 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v82 = v69;
        *v58 = 136315394;
        *(v58 + 4) = sub_100034D20(v81, a3, &v82);
        *(v58 + 12) = 2080;
        sub_10003B114(v57, v71, type metadata accessor for AppMetadata);
        v59 = sub_100072B4C();
        v81 = v32;
        v60 = v59;
        v71 = v33;
        v62 = v61;
        sub_10003B17C(v57, type metadata accessor for AppMetadata);
        v63 = sub_100034D20(v60, v62, &v82);

        *(v58 + 14) = v63;
        v64 = v74;
        _os_log_impl(&_mh_execute_header, v74, v55, "Decoded metadata with adamID %s -> %s", v58, 0x16u);
        swift_arrayDestroy();

        sub_1000086B8(v37, v70);

        v65 = *(v78 + 8);
        v65(v71, v12);
        v65(v79, v12);
        v65(v80, v12);
        v66 = v81;
      }

      else
      {
        sub_1000086B8(v37, v70);

        sub_10003B17C(v53, type metadata accessor for AppMetadata);
        v65 = *(v78 + 8);
        v65(v33, v12);
        v65(v79, v12);
        v65(v80, v12);
        v66 = v32;
      }

      v65(v66, v12);
      v67 = v77;
      v68 = v75;
      sub_10003BB38(v43, v75, type metadata accessor for AppMetadata);
      return (*(v76 + 56))(v68, 0, 1, v67);
    }

    else
    {

      v48 = sub_100071E5C();
      v49 = sub_100072CFC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v82 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_100034D20(v81, a3, &v82);
        _os_log_impl(&_mh_execute_header, v48, v49, "Cached metadata does not exist for %s", v50, 0xCu);
        sub_100007F50(v51);
      }

      v52 = *(v78 + 8);
      v52(v15, v12);
      v52(v79, v12);
      v52(v80, v12);
      v52(v32, v12);
      return (*(v76 + 56))(v75, 1, 1, v77);
    }
  }

  else
  {

    v44 = v75;
    v45 = *(v76 + 56);
    v46 = v77;

    return v45(v44, 1, 1, v46);
  }
}

void sub_10002F27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v115 = a8;
  v114 = a7;
  v118 = a6;
  v133 = a5;
  v128 = a4;
  v13 = type metadata accessor for AppMetadata();
  v136 = *(v13 - 8);
  v14 = *(v136 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v130 = v96 - v17;
  __chkstk_darwin(v18);
  v129 = v96 - v19;
  v102 = sub_10007292C();
  v101 = *(v102 - 8);
  v20 = *(v101 + 64);
  __chkstk_darwin(v102);
  v99 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10007294C();
  v98 = *(v100 - 8);
  v22 = *(v98 + 64);
  __chkstk_darwin(v100);
  v97 = v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1000729DC();
  v120 = *(v132 - 8);
  v24 = *(v120 + 64);
  __chkstk_darwin(v132);
  v134 = v25;
  v131 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = dispatch_group_create();
  v26 = swift_allocObject();
  v27 = sub_100039D70(0, a2);
  v117 = v26;
  *(v26 + 16) = v27;
  v28 = *(a1 + 16);
  if (v28)
  {
    v29 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v30 = a1 + v29;
    v31 = *(v136 + 72);
    do
    {
      sub_1000501A0(0x65756E69746E6F43, 0xEF676E6979616C50);
      sub_10003B114(v30, v15, type metadata accessor for AppMetadata);
      swift_beginAccess();
      v32 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_10000CE6C(0, v32[2] + 1, 1, v32);
        *a3 = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = sub_10000CE6C(v34 > 1, v35 + 1, 1, v32);
      }

      v32[2] = v35 + 1;
      sub_10003BB38(v15, v32 + v29 + v35 * v31, type metadata accessor for AppMetadata);
      *a3 = v32;
      swift_endAccess();
      v30 += v31;
      --v28;
    }

    while (v28);
  }

  swift_beginAccess();
  v36 = *a3;
  v37 = *(*a3 + 16);
  if (v37)
  {
    v110 = objc_opt_self();
    v38 = *(v136 + 80);
    v39 = v36 + ((v38 + 32) & ~v38);
    v109 = *(v136 + 72);
    v40 = (v38 + 24) & ~v38;
    v41 = v38 | 7;
    v127 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = enum case for WidgetFamily.systemLarge(_:);
    v112 = (v120 + 104);
    v111 = (v120 + 8);
    v103 = enum case for WidgetFamily.systemExtraLarge(_:);
    v108 = v120 + 16;
    v136 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
    v105 = v106 + 16;
    v116 = v134 + 7;
    v104 = v120 + 32;
    v96[1] = v36;

    v42 = v39;
    v43 = v130;
    v44 = v129;
    v135 = v41;
    v126 = v40;
    while (1)
    {
      v125 = v37;
      v124 = v42;
      sub_10003B114(v42, v44, type metadata accessor for AppMetadata);
      aBlock[0] = sub_10004F35C(&_swiftEmptyArrayStorage);
      v45 = v119;
      dispatch_group_enter(v119);
      sub_10003B114(v44, v43, type metadata accessor for AppMetadata);
      v46 = v136;
      v47 = swift_allocObject();
      *(v47 + 16) = v128;
      sub_10003BB38(v43, v47 + v40, type metadata accessor for AppMetadata);
      *(v47 + v127) = aBlock;
      *(v47 + v46) = v45;
      v48 = v45;
      sub_100050D68(0x65756E69746E6F43, 0xEF676E6979616C50, 350, 0x15E, 0, sub_10003B380, v47);

      v49 = *v112;
      v51 = v131;
      v50 = v132;
      (*v112)(v131, v113, v132);
      sub_10003ACC8(&qword_100094BF0, &type metadata accessor for WidgetFamily);
      sub_100072C1C();
      sub_100072C1C();
      v52 = *v111;
      (*v111)(v51, v50);
      if (v139 == v138)
      {
        v53 = 1;
        v54 = 430.0;
        v55 = 246.324503;
      }

      else
      {
        v49(v51, v103, v50);
        sub_100072C1C();
        sub_100072C1C();
        v52(v51, v50);
        v53 = 2 * (v139 == v138);
        v55 = 350.0;
        v54 = 350.0;
      }

      v56 = v48;
      dispatch_group_enter(v48);
      v57 = round(v54);
      v58 = v130;
      v59 = v129;
      v60 = v136;
      if (v57 <= -9.22337204e18)
      {
        break;
      }

      if (v57 >= 9.22337204e18)
      {
        goto LABEL_25;
      }

      v61 = round(v55);
      if (v61 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v61 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v62 = v57;
      v63 = v61;
      v134 = type metadata accessor for AppMetadata;
      sub_10003B114(v129, v130, type metadata accessor for AppMetadata);
      v64 = swift_allocObject();
      *(v64 + 16) = v128;
      v123 = type metadata accessor for AppMetadata;
      sub_10003BB38(v58, v64 + v126, type metadata accessor for AppMetadata);
      v65 = v127;
      *(v64 + v127) = aBlock;
      *(v64 + v60) = v56;
      v66 = v56;
      v122 = v66;
      sub_100050D68(0x65756E69746E6F43, 0xEF676E6979616C50, v62, v63, v53, sub_10003B4E8, v64);

      dispatch_group_enter(v66);
      v67 = [v110 currentDevice];
      v68 = [v67 userInterfaceIdiom];

      if (v68 == 1)
      {
        v69 = 110;
      }

      else
      {
        v69 = 95;
      }

      v121 = v69;
      sub_10003B114(v59, v58, v134);
      v70 = v120;
      v71 = v131;
      v72 = v132;
      (*(v120 + 16))(v131, v133, v132);
      v73 = (v105 + *(v70 + 80)) & ~*(v70 + 80);
      v74 = &v116[v73] & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      *(v75 + 16) = v69;
      v40 = v126;
      sub_10003BB38(v58, v75 + v126, v123);
      v76 = v122;
      *(v75 + v65) = v122;
      *(v75 + v136) = v118;
      *(v75 + v107) = aBlock;
      v77 = (v75 + v106);
      v78 = v115;
      *v77 = v114;
      v77[1] = v78;
      v79 = v72;
      v44 = v129;
      (*(v70 + 32))(v75 + v73, v71, v79);
      *(v75 + v74) = v117;

      v80 = v76;
      v43 = v130;

      sub_100050D68(0x65756E69746E6F43, 0xEF676E6979616C50, v121, v121, 0, sub_10003B7F4, v75);

      sub_10003B17C(v44, v134);

      v42 = v124 + v109;
      v37 = v125 - 1;
      if (v125 == 1)
      {

        v81 = v116;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v81 = v134 + 7;
LABEL_23:
    v82 = v133;
    sub_10000F74C(0, &qword_100095BE0, OS_dispatch_queue_ptr);
    v136 = sub_100072D1C();
    v83 = v120;
    v84 = v131;
    v85 = v132;
    (*(v120 + 16))(v131, v82, v132);
    v86 = (*(v83 + 80) + 24) & ~*(v83 + 80);
    v87 = &v81[v86] & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    *(v88 + 16) = v117;
    (*(v83 + 32))(v88 + v86, v84, v85);
    *(v88 + v87) = v118;
    v89 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v89 = a9;
    v89[1] = a10;
    aBlock[4] = sub_10003BA40;
    aBlock[5] = v88;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032024;
    aBlock[3] = &unk_1000929A8;
    v90 = _Block_copy(aBlock);

    v91 = v97;
    sub_10007293C();
    v139 = &_swiftEmptyArrayStorage;
    sub_10003ACC8(&qword_100095BE8, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000388C(&qword_100095BF0, &qword_100075098);
    sub_10003AC10();
    v92 = v99;
    v93 = v102;
    sub_100072DBC();
    v94 = v136;
    v95 = v119;
    sub_100072D0C();
    _Block_release(v90);

    (*(v101 + 8))(v92, v93);
    (*(v98 + 8))(v91, v100);
  }
}

void sub_100030094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v11 = type metadata accessor for AppMetadata();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v15 = sub_100071E7C();
  sub_100007DE8(v15, qword_100099998);
  sub_10003B114(a4, v14, type metadata accessor for AppMetadata);

  v16 = sub_100071E5C();
  v17 = sub_100072CFC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 134218754;
    *(v18 + 4) = 350;
    *(v18 + 12) = 2048;
    *(v18 + 14) = 350;
    *(v18 + 22) = 2080;
    v20 = &v14[*(v11 + 28)];
    v28[1] = a5;
    v29[0] = v19;
    v21 = a6;
    v23 = *v20;
    v22 = v20[1];

    sub_10003B17C(v14, type metadata accessor for AppMetadata);
    v24 = sub_100034D20(v23, v22, v29);

    *(v18 + 24) = v24;
    *(v18 + 32) = 2080;
    v29[1] = a1;
    v29[2] = a2;

    sub_10000388C(&qword_100095C30, &qword_1000750B0);
    v25 = sub_100072B4C();
    v27 = sub_100034D20(v25, v26, v29);
    a6 = v21;

    *(v18 + 34) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "%ldx%ld highlight image data for %s = %s", v18, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003B17C(v14, type metadata accessor for AppMetadata);
  }

  swift_beginAccess();

  sub_10004CA18(a1, a2, 0x6867696C68676968, 0xE900000000000074);
  swift_endAccess();
  dispatch_group_leave(a6);
}

void sub_1000303A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v27 = a1;
  v9 = type metadata accessor for AppMetadata();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v13 = sub_100071E7C();
  sub_100007DE8(v13, qword_100099998);
  sub_10003B114(a4, v12, type metadata accessor for AppMetadata);

  v14 = sub_100071E5C();
  v15 = sub_100072CFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = a6;
    v28[0] = v17;
    *v16 = 134218754;
    *(v16 + 4) = 350;
    *(v16 + 12) = 2048;
    *(v16 + 14) = 350;
    *(v16 + 22) = 2080;
    v18 = &v12[*(v9 + 28)];
    v20 = *v18;
    v19 = v18[1];

    sub_10003B17C(v12, type metadata accessor for AppMetadata);
    v21 = sub_100034D20(v20, v19, v28);

    *(v16 + 24) = v21;
    *(v16 + 32) = 2080;
    v22 = v27;
    v28[1] = v27;
    v28[2] = a2;

    sub_10000388C(&qword_100095C30, &qword_1000750B0);
    v23 = sub_100072B4C();
    v25 = sub_100034D20(v23, v24, v28);

    *(v16 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%ldx%ld editorial image data for %s = %s", v16, 0x2Au);
    swift_arrayDestroy();
    a6 = v26;
  }

  else
  {

    sub_10003B17C(v12, type metadata accessor for AppMetadata);
    v22 = v27;
  }

  swift_beginAccess();

  sub_10004CA18(v22, a2, 0xD000000000000019, 0x8000000100077CA0);

  sub_10004CA18(v22, a2, 0xD00000000000001ELL, 0x8000000100077A90);
  swift_endAccess();
  dispatch_group_leave(a6);
}

void sub_1000306E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t *a7, void (*a8)(void, void, void), unint64_t a9, void *a10, uint64_t *a11)
{
  v164 = a7;
  v165 = a8;
  v169 = a1;
  v160 = sub_1000729DC();
  v166 = *(v160 - 8);
  v16 = *(v166 + 64);
  __chkstk_darwin(v160);
  v159 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100071D4C();
  v162 = *(v18 - 8);
  v163 = v18;
  v19 = *(v162 + 64);
  __chkstk_darwin(v18);
  v161 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for AppMetadata();
  v21 = *(*(v170 - 1) + 64);
  __chkstk_darwin(v170);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v24 = sub_100071E7C();
  v25 = sub_100007DE8(v24, qword_100099998);
  sub_10003B114(a4, v23, type metadata accessor for AppMetadata);

  v26 = sub_100071E5C();
  v27 = sub_100072CFC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v167 = a5;
    v168 = a4;
    v29 = v28;
    v30 = swift_slowAlloc();
    v158 = v25;
    v173[0] = v30;
    *v29 = 134218754;
    *(v29 + 4) = a3;
    *(v29 + 12) = 2048;
    *(v29 + 14) = a3;
    *(v29 + 22) = 2080;
    v31 = &v23[v170[7]];
    v33 = *v31;
    v32 = v31[1];

    sub_10003B17C(v23, type metadata accessor for AppMetadata);
    v34 = sub_100034D20(v33, v32, v173);

    *(v29 + 24) = v34;
    *(v29 + 32) = 2080;
    v174 = v169;
    v175 = a2;

    sub_10000388C(&qword_100095C30, &qword_1000750B0);
    v35 = sub_100072B4C();
    v37 = sub_100034D20(v35, v36, v173);

    *(v29 + 34) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "%ldx%ld image data for %s = %s", v29, 0x2Au);
    swift_arrayDestroy();

    a5 = v167;
    a4 = v168;

    if (!a2)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_10003B17C(v23, type metadata accessor for AppMetadata);
    if (!a2)
    {
LABEL_20:
      dispatch_group_leave(a5);
      return;
    }
  }

  v38 = v170;
  v39 = (a4 + v170[5]);
  v40 = *v39;
  v41 = v39[1];
  swift_beginAccess();
  v42 = *(a6 + 16);
  v43 = *(v42 + 16);

  if (!v43 || (v44 = sub_10004DCC0(v40, v41), (v45 & 1) == 0))
  {
    swift_endAccess();

    v78 = sub_100071E5C();
    v79 = sub_100072CFC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "unable to find tuple", v80, 2u);
    }

    goto LABEL_20;
  }

  v46 = *(v42 + 56) + 16 * v44;
  v47 = *v46;
  v48 = *(v46 + 8);
  swift_endAccess();
  v49 = v164;
  swift_beginAccess();
  v158 = v47;
  v50 = *v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = *v49;
  *v49 = 0x8000000000000000;
  sub_10004EA7C(v169, a2, 0x6C616D726F6ELL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *v49 = v173[0];
  swift_endAccess();
  v167 = a5;
  v168 = a4;
  v157 = v48;
  if (a9)
  {
    v52 = HIBYTE(a9) & 0xF;
    if ((a9 & 0x2000000000000000) == 0)
    {
      v52 = v165 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {

      v53 = sub_100031708(v40, v41);
      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = v53;
      }

      v169 = v55;
      v56 = (a4 + v38[7]);
      v156 = *v56;
      v57 = v49;
      v58 = v56[1];

      v59 = [v158 playedAt];
      v60 = v161;
      sub_100071D2C();

      v61 = (a4 + v38[6]);
      v62 = v61[1];
      v155 = *v61;
      swift_beginAccess();
      v63 = *v57;
      v64 = type metadata accessor for AppDisplayData();
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      a4 = swift_allocObject();
      a4[2] = 973039644;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0xD000000000000011;
      a4[6] = 0x8000000100077C60;
      v67 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;

      sub_100071D3C();
      v40 = a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID;
      *v40 = 0xD00000000000001FLL;
      *(v40 + 8) = 0x8000000100077C80;
      v68 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
      *(a4 + v68) = sub_10004F35C(&_swiftEmptyArrayStorage);
      *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = 0;
      *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = 0;
      v69 = (a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);
      *v69 = 0;
      v69[1] = 0;
      a4[2] = v169;
      v70 = a4[6];
      a4[5] = v156;
      a4[6] = v58;

      swift_beginAccess();
      v71 = v162;
      v72 = a4 + v67;
      v73 = v163;
      (*(v162 + 24))(v72, v60, v163);
      swift_endAccess();
      v74 = *(v40 + 8);
      *v40 = v155;
      *(v40 + 8) = v62;

      swift_beginAccess();
      v75 = *(a4 + v68);
      *(a4 + v68) = v63;

      v76 = v69[1];
      *v69 = v165;
      v69[1] = a9;

      (*(v71 + 8))(v60, v73);
      v77 = *(a4 + v68);
      *(a4 + v68) = v63;
      while (1)
      {
        v49 = a11;

        v38 = v170;
        v125 = v168;
        v126 = *(v168 + v170[10]);
        v127 = objc_allocWithZone(AMSMediaArtwork);

        isa = sub_100072ACC().super.isa;
        v129 = [v127 initWithDictionary:isa];

        v169 = AMSMediaArtworkColorKindBackground;
        v130 = [v129 colorWithKind:?];
        v131 = v129;
        v132 = [objc_allocWithZone(UIColor) initWithCGColor:v130];

        v133 = *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = v132;
        v134 = v132;

        v41 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor;
        v135 = *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = v132;

        v170 = *(v125 + v38[11]);
        if (v170)
        {
          v136 = v166;
          v137 = v159;
          v40 = v160;
          v165 = *(v166 + 104);
          (v165)(v159, enum case for WidgetFamily.systemLarge(_:), v160);
          v38 = sub_10003ACC8(&qword_100094BF0, &type metadata accessor for WidgetFamily);
          v168 = a10;
          sub_100072C1C();
          sub_100072C1C();
          v138 = *(v136 + 8);
          v166 = v136 + 8;
          v138(v137, v40);
          v49 = a11;
          if (v172 == v171 || (v139 = v159, v40 = v160, (v165)(v159, enum case for WidgetFamily.systemExtraLarge(_:), v160), sub_100072C1C(), sub_100072C1C(), v138(v139, v40), v172 == v171))
          {
            v140 = objc_allocWithZone(AMSMediaArtwork);
            v141 = sub_100072ACC().super.isa;
            v142 = [v140 initWithDictionary:v141];

            v143 = [v142 colorWithKind:v169];
            v144 = v142;
            v145 = [objc_allocWithZone(UIColor) initWithCGColor:v143];

            v146 = *(a4 + v41);
            *(a4 + v41) = v145;
          }
        }

        swift_beginAccess();
        v147 = v49[2];

        v148 = swift_isUniquelyReferenced_nonNull_native();
        v49[2] = v147;
        if ((v148 & 1) == 0)
        {
          v147 = sub_100035980(v147);
          v49[2] = v147;
        }

        v149 = v158;
        if ((v157 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v157 < *(v147 + 16))
        {
          v150 = v147 + 8 * v157;
          v151 = *(v150 + 32);
          *(v150 + 32) = a4;
          v49[2] = v147;
          swift_endAccess();

          dispatch_group_leave(v167);

          return;
        }

        __break(1u);
LABEL_96:

        v86 = sub_1000353F4(v40, v41, 10);
        v153 = v152;

        if (v153)
        {
LABEL_83:
          v86 = 0;
        }

LABEL_84:
        v104 = (a4 + v38[7]);
        v105 = v104[1];
        v169 = *v104;

        v106 = [v158 playedAt];
        v40 = v161;
        sub_100071D2C();

        v107 = a4 + v38[6];
        v108 = *(v107 + 1);
        v165 = *v107;
        swift_beginAccess();
        v109 = *v49;
        v110 = type metadata accessor for AppDisplayData();
        v111 = *(v110 + 48);
        v112 = *(v110 + 52);
        a4 = swift_allocObject();
        a4[2] = 973039644;
        a4[3] = 0;
        a4[4] = 0;
        a4[5] = 0xD000000000000011;
        a4[6] = 0x8000000100077C60;
        v113 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;

        sub_100071D3C();
        v114 = v86;
        v115 = (a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);
        *v115 = 0xD00000000000001FLL;
        v115[1] = 0x8000000100077C80;
        v116 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
        *(a4 + v116) = sub_10004F35C(&_swiftEmptyArrayStorage);
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = 0;
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = 0;
        v117 = (a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);
        *v117 = 0;
        v117[1] = 0;
        a4[2] = v114;
        v118 = a4[6];
        a4[5] = v169;
        a4[6] = v105;

        swift_beginAccess();
        v120 = v162;
        v119 = v163;
        (*(v162 + 24))(a4 + v113, v40, v163);
        swift_endAccess();
        v121 = v115[1];
        *v115 = v165;
        v115[1] = v108;

        swift_beginAccess();
        v122 = *(a4 + v116);
        *(a4 + v116) = v109;

        v123 = v117[1];
        *v117 = 0;
        v117[1] = 0;

        (*(v120 + 8))(v40, v119);
        v124 = *(a4 + v116);
        *(a4 + v116) = v109;
      }
    }
  }

  v81 = HIBYTE(v41) & 0xF;
  v82 = v40 & 0xFFFFFFFFFFFFLL;
  if ((v41 & 0x2000000000000000) != 0)
  {
    v83 = HIBYTE(v41) & 0xF;
  }

  else
  {
    v83 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v83)
  {
    goto LABEL_83;
  }

  if ((v41 & 0x1000000000000000) != 0)
  {
    goto LABEL_96;
  }

  if ((v41 & 0x2000000000000000) == 0)
  {
    if ((v40 & 0x1000000000000000) != 0)
    {
      v84 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v84 = sub_100072E8C();
    }

    v85 = *v84;
    if (v85 == 43)
    {
      if (v82 >= 1)
      {
        v81 = v82 - 1;
        if (v82 != 1)
        {
          v86 = 0;
          if (v84)
          {
            v93 = v84 + 1;
            while (1)
            {
              v94 = *v93 - 48;
              if (v94 > 9)
              {
                goto LABEL_81;
              }

              v95 = 10 * v86;
              if ((v86 * 10) >> 64 != (10 * v86) >> 63)
              {
                goto LABEL_81;
              }

              v86 = v95 + v94;
              if (__OFADD__(v95, v94))
              {
                goto LABEL_81;
              }

              ++v93;
              if (!--v81)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_81;
      }

      goto LABEL_101;
    }

    if (v85 != 45)
    {
      if (v82)
      {
        v86 = 0;
        if (v84)
        {
          while (1)
          {
            v99 = *v84 - 48;
            if (v99 > 9)
            {
              goto LABEL_81;
            }

            v100 = 10 * v86;
            if ((v86 * 10) >> 64 != (10 * v86) >> 63)
            {
              goto LABEL_81;
            }

            v86 = v100 + v99;
            if (__OFADD__(v100, v99))
            {
              goto LABEL_81;
            }

            ++v84;
            if (!--v82)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_81:
      v86 = 0;
      LOBYTE(v81) = 1;
LABEL_82:
      LOBYTE(v173[0]) = v81;
      if ((v81 & 1) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    if (v82 >= 1)
    {
      v81 = v82 - 1;
      if (v82 != 1)
      {
        v86 = 0;
        if (v84)
        {
          v87 = v84 + 1;
          while (1)
          {
            v88 = *v87 - 48;
            if (v88 > 9)
            {
              goto LABEL_81;
            }

            v89 = 10 * v86;
            if ((v86 * 10) >> 64 != (10 * v86) >> 63)
            {
              goto LABEL_81;
            }

            v86 = v89 - v88;
            if (__OFSUB__(v89, v88))
            {
              goto LABEL_81;
            }

            ++v87;
            if (!--v81)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_73:
        LOBYTE(v81) = 0;
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v174 = v40;
  v175 = v41 & 0xFFFFFFFFFFFFFFLL;
  if (v40 != 43)
  {
    if (v40 != 45)
    {
      if (v81)
      {
        v86 = 0;
        v101 = &v174;
        while (1)
        {
          v102 = *v101 - 48;
          if (v102 > 9)
          {
            break;
          }

          v103 = 10 * v86;
          if ((v86 * 10) >> 64 != (10 * v86) >> 63)
          {
            break;
          }

          v86 = v103 + v102;
          if (__OFADD__(v103, v102))
          {
            break;
          }

          v101 = (v101 + 1);
          if (!--v81)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v81)
    {
      if (--v81)
      {
        v86 = 0;
        v90 = &v174 + 1;
        while (1)
        {
          v91 = *v90 - 48;
          if (v91 > 9)
          {
            break;
          }

          v92 = 10 * v86;
          if ((v86 * 10) >> 64 != (10 * v86) >> 63)
          {
            break;
          }

          v86 = v92 - v91;
          if (__OFSUB__(v92, v91))
          {
            break;
          }

          ++v90;
          if (!--v81)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_100;
  }

  if (v81)
  {
    if (--v81)
    {
      v86 = 0;
      v96 = &v174 + 1;
      while (1)
      {
        v97 = *v96 - 48;
        if (v97 > 9)
        {
          break;
        }

        v98 = 10 * v86;
        if ((v86 * 10) >> 64 != (10 * v86) >> 63)
        {
          break;
        }

        v86 = v98 + v97;
        if (__OFADD__(v98, v97))
        {
          break;
        }

        ++v96;
        if (!--v81)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_102:
  __break(1u);
}

uint64_t sub_100031708(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100072E8C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1000353F4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100031A08(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v57 = a5;
  v58 = a4;
  v54 = a3;
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  v62[0] = &_swiftEmptyArrayStorage;
  v15 = *(v13 + 16);

  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      (*(v9 + 16))(v12, a2, v8);
      v20 = (*(v9 + 88))(v12, v8);
      if (v20 == enum case for WidgetFamily.systemSmall(_:))
      {
        v8 = 1;
      }

      else if (v20 == enum case for WidgetFamily.systemMedium(_:))
      {
        v8 = 3;
      }

      else if (v20 == enum case for WidgetFamily.systemLarge(_:))
      {
        v8 = 4;
      }

      else
      {
        if (v20 != enum case for WidgetFamily.systemExtraLarge(_:))
        {
          v21 = *(v9 + 8);
          v9 += 8;
          v21(v12, v8);
        }

        v8 = 7;
      }

      v5 = v14 >> 62;
      if (v14 >> 62)
      {
        goto LABEL_55;
      }

      v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22 >= v8)
      {
        v23 = v8;
      }

      else
      {
        v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22 >= v23)
      {
        goto LABEL_22;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_unknownObjectRelease();
LABEL_36:
      sub_10000E154(v8, v9, a2, v15);
      v35 = v34;
      goto LABEL_51;
    }

    if (i >= *(v13 + 16))
    {
      break;
    }

    v17 = v13 + 8 * i;
    v5 = *(v17 + 32);
    if (v5)
    {
      v18 = *(v17 + 32);

      sub_100072C2C();
      if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100072C6C();
      }

      sub_100072C8C();
      v14 = v62[0];
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_55:
    v52 = sub_100072EDC();
    result = sub_100072EDC();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (v52 >= v8)
    {
      v53 = v8;
    }

    else
    {
      v53 = v52;
    }

    if (v52 >= 0)
    {
      v23 = v53;
    }

    else
    {
      v23 = v8;
    }

    if (sub_100072EDC() < v23)
    {
      goto LABEL_63;
    }

LABEL_22:
    if ((v14 & 0xC000000000000001) != 0 && v23)
    {
      type metadata accessor for AppDisplayData();

      v24 = 0;
      do
      {
        v25 = v24 + 1;
        sub_100072E5C(v24);
        v24 = v25;
      }

      while (v23 != v25);
    }

    else
    {
    }

    if (v5)
    {
      v28 = sub_100072EEC();
      v9 = v29;
      v26 = v30;
      v5 = v31;

      v27 = v28;
    }

    else
    {
      v26 = 0;
      v27 = v14 & 0xFFFFFFFFFFFFFF8;
      v9 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v5 = (2 * v23) | 1;
    }

    v55 = v5;
    v56 = v27;
    v23 = v5 >> 1;
    swift_unknownObjectRetain();
    v59 = v26;
    if (v26 == (v5 >> 1))
    {
      break;
    }

    v8 = &SeededRandomNumberGenerator;
    a2 = qword_100099998;
    *&v32 = 136315138;
    v60 = v32;
    v36 = v59;
    v61 = v5 >> 1;
    while (v36 < v23)
    {
      v5 = *(v9 + 8 * v36);
      if (*(v8 + 1784) != -1)
      {
        swift_once();
      }

      v37 = sub_100071E7C();
      v14 = sub_100007DE8(v37, qword_100099998);

      v38 = sub_100071E5C();
      v15 = sub_100072CFC();

      if (os_log_type_enabled(v38, v15))
      {
        v39 = swift_slowAlloc();
        v40 = v9;
        v41 = v8;
        v42 = swift_slowAlloc();
        v62[0] = v42;
        *v39 = v60;

        v43 = sub_10004DA5C();
        v45 = v44;

        v14 = sub_100034D20(v43, v45, v62);

        *(v39 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v38, v15, "compactedAppDisplayData: %s", v39, 0xCu);
        sub_100007F50(v42);
        v8 = v41;
        v9 = v40;
        v23 = v61;

        a2 = qword_100099998;
      }

      if (v23 == ++v36)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_32:
  v8 = v56;
  swift_unknownObjectRelease();
  a2 = v59;
  v33 = v23 - v59;
  if (__OFSUB__(v23, v59))
  {
    goto LABEL_64;
  }

  if (v33)
  {
    v23 = 0;
    v15 = v55;
    if ((v55 & 1) == 0)
    {
LABEL_35:
      swift_unknownObjectRetain();
      goto LABEL_36;
    }
  }

  else
  {
    v46 = v54;
    swift_beginAccess();
    v23 = *(*(v46 + 16) + 16) != 0;
    v15 = v55;
    if ((v55 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  sub_10007300C();
  swift_unknownObjectRetain_n();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = &_swiftEmptyArrayStorage;
  }

  v48 = v47[2];

  if (v48 != v33)
  {
    goto LABEL_65;
  }

  v49 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v49)
  {
    v58(v49, v23);
    goto LABEL_52;
  }

  v35 = &_swiftEmptyArrayStorage;
LABEL_51:
  v50 = v58;
  swift_unknownObjectRelease();
  v50(v35, v23);
LABEL_52:

  return swift_unknownObjectRelease();
}

uint64_t sub_100032024(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100032068(uint64_t a1, void (*a2)(void *), unint64_t a3)
{
  v104 = a2;
  v5 = sub_10000388C(&qword_100095C40, &qword_1000750B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v98 - v7;
  v9 = type metadata accessor for AppMetadata();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v105 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = v98 - v14;
  __chkstk_darwin(v15);
  v106 = v98 - v16;
  __chkstk_darwin(v17);
  v109 = (v98 - v18);
  __chkstk_darwin(v19);
  *&v108 = v98 - v20;
  if (qword_100094700 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v21 = sub_100071E7C();
    v22 = sub_100007DE8(v21, qword_1000999B0);

    v111 = v22;
    v23 = sub_100071E5C();
    v24 = sub_100072CFC();

    v25 = os_log_type_enabled(v23, v24);
    v107 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v26 = 136315394;
      v27 = sub_100072C5C();
      v28 = v9;
      v30 = sub_100034D20(v27, v29, &v113);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_100072B4C();
      v33 = sub_100034D20(v31, v32, &v113);

      *(v26 + 14) = v33;
      v9 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetching app metadatas for %s, cacheType: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    if (!*(a1 + 16))
    {
      v104(&_swiftEmptyArrayStorage);
      return;
    }

    v34 = objc_opt_self();
    v35 = [v34 bagSubProfile];
    if (!v35)
    {
      __break(1u);
LABEL_41:

      __break(1u);
      return;
    }

    v23 = v35;
    v36 = [v34 bagSubProfileVersion];
    if (!v36)
    {
      goto LABEL_41;
    }

    v37 = v36;
    v38 = [objc_opt_self() bagForProfile:v23 profileVersion:v36];

    v39 = objc_allocWithZone(AMSMediaTask);
    v40 = v38;
    v41 = sub_100072B2C();
    v42 = sub_100072B2C();
    v43 = [v39 initWithType:0 clientIdentifier:v41 clientVersion:v42 bag:v40];

    isa = sub_100072C3C().super.isa;
    [v43 setItemIdentifiers:isa];

    sub_10004F35C(&off_100091E58);
    sub_100004890(&unk_100091E78, &qword_100095C50, &qword_1000750D0);
    v45 = sub_100072ACC().super.isa;

    [v43 setAdditionalQueryParams:v45];

    v46 = v40;
    v47 = v43;
    v48 = sub_100071E5C();
    v49 = sub_100072CFC();

    v50 = os_log_type_enabled(v48, v49);
    v101 = v46;
    v102 = a3;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v113 = v53;
      *v51 = 138412802;
      *(v51 + 4) = v47;
      *(v51 + 12) = 2112;
      *(v51 + 14) = v46;
      *v52 = v47;
      v52[1] = v46;
      *(v51 + 22) = 2080;
      v54 = v46;
      v55 = v47;
      *(v51 + 24) = sub_100034D20(0xD00000000000002CLL, 0x8000000100077BD0, &v113);
      _os_log_impl(&_mh_execute_header, v48, v49, "Task %@, Bag %@, CID %s", v51, 0x20u);
      sub_10000388C(&qword_100095BD8, &qword_100075090);
      swift_arrayDestroy();

      sub_100007F50(v53);
    }

    v56 = v107;
    v57 = v47;
    v58 = [v47 perform];
    v113 = 0;
    v103 = [v58 resultWithError:&v113];
    if (!v103)
    {
      break;
    }

    v59 = v113;
    v60 = sub_100071E5C();
    v61 = sub_100072CFC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Received data response. Creating app metadatas.", v62, 2u);
    }

    v63 = [v103 responseDataItems];
    v99 = v58;
    v100 = v57;
    if (v63)
    {
      v64 = v63;
      sub_10000388C(&qword_100095C58, &qword_1000750D8);
      v65 = sub_100072C4C();

      v66 = *(v65 + 16);
      v98[1] = v65;
      if (v66)
      {
        v67 = (v65 + 32);
        v10 = &_swiftEmptyArrayStorage;
        do
        {
          v68 = *v67;

          sub_100032DBC(v69, v8);

          if ((v56[6])(v8, 1, v9) == 1)
          {
            sub_100004890(v8, &qword_100095C40, &qword_1000750B8);
          }

          else
          {
            v70 = v108;
            sub_10003BB38(v8, v108, type metadata accessor for AppMetadata);
            sub_10003B114(v70, v109, type metadata accessor for AppMetadata);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_10000CE6C(0, v10[2] + 1, 1, v10);
            }

            v72 = v10[2];
            v71 = v10[3];
            if (v72 >= v71 >> 1)
            {
              v10 = sub_10000CE6C(v71 > 1, v72 + 1, 1, v10);
            }

            sub_10003B17C(v108, type metadata accessor for AppMetadata);
            v10[2] = v72 + 1;
            sub_10003BB38(v109, v10 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v56[9] * v72, type metadata accessor for AppMetadata);
          }

          ++v67;
          --v66;
        }

        while (v66);
      }

      else
      {
        v10 = &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
    }

    v85 = v10[2];

    a1 = v110;
    v8 = v106;
    if (!v85)
    {
LABEL_37:

      v104(v10);

      return;
    }

    a3 = 0;
    *&v86 = 136315138;
    v108 = v86;
    v109 = v10;
    while (a3 < v10[2])
    {
      sub_10003B114(v10 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v56[9] * a3, v8, type metadata accessor for AppMetadata);
      sub_10003B114(v8, a1, type metadata accessor for AppMetadata);
      v87 = sub_100071E5C();
      v88 = sub_100072CFC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = v85;
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v113 = v91;
        *v90 = v108;
        sub_10003B114(a1, v105, type metadata accessor for AppMetadata);
        v92 = v9;
        v93 = sub_100072B4C();
        v95 = v94;
        sub_10003B17C(v110, type metadata accessor for AppMetadata);
        v96 = v93;
        v9 = v92;
        a1 = v110;
        v97 = sub_100034D20(v96, v95, &v113);

        *(v90 + 4) = v97;
        v8 = v106;
        _os_log_impl(&_mh_execute_header, v87, v88, "Received metadata: %s", v90, 0xCu);
        sub_100007F50(v91);
        v56 = v107;

        v85 = v89;
        v10 = v109;
      }

      else
      {

        sub_10003B17C(a1, type metadata accessor for AppMetadata);
      }

      ++a3;
      sub_10003B17C(v8, type metadata accessor for AppMetadata);
      if (v85 == a3)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v73 = v113;
  v74 = sub_100071C1C();

  swift_willThrow();
  swift_errorRetain();
  v75 = sub_100071E5C();
  v76 = sub_100072CFC();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = v57;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v113 = v79;
    *v78 = 136315138;
    v112 = v74;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    v80 = sub_100072B4C();
    v82 = v58;
    v83 = sub_100034D20(v80, v81, &v113);

    *(v78 + 4) = v83;
    v58 = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "AMSMediaTask Error in fetchAppMetadatas: %s", v78, 0xCu);
    sub_100007F50(v79);

    v57 = v77;
  }

  v84 = v101;
  v104(&_swiftEmptyArrayStorage);
}

void sub_100032D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_10000F74C(0, &qword_100095C38, GKGameSummaryInternal_ptr);
  v6 = sub_100072C4C();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_100032DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v122 = 25705;
  *(&v122 + 1) = 0xE200000000000000;
  sub_100072DFC();
  if (!*(a1 + 16) || (v4 = sub_10004DD38(&v125), (v5 & 1) == 0))
  {
    sub_10003B0C0(&v125);
    goto LABEL_6;
  }

  sub_10000EA40(*(a1 + 56) + 32 * v4, &v122);
  sub_10003B0C0(&v125);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v117 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(&v121[0] + 1);
  v117 = *&v121[0];
LABEL_7:
  *&v121[0] = 0x7475626972747461;
  *(&v121[0] + 1) = 0xEA00000000007365;
  sub_100072DFC();
  if (!*(a1 + 16) || (v7 = sub_10004DD38(&v125), (v8 & 1) == 0))
  {
    sub_10003B0C0(&v125);
    goto LABEL_16;
  }

  sub_10000EA40(*(a1 + 56) + 32 * v7, &v122);
  sub_10003B0C0(&v125);
  sub_10000388C(&qword_100095C58, &qword_1000750D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v118 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 2;
LABEL_17:
    if (v6 && v18 && v13 && v12 != 2 && v15)
    {
      sub_100071D3C();
      v19 = type metadata accessor for AppMetadata();
      v20 = (a2 + v19[5]);
      *v20 = v117;
      v20[1] = v6;
      v21 = (a2 + v19[6]);
      *v21 = v118;
      v21[1] = v18;
      v22 = (a2 + v19[7]);
      *v22 = v119;
      v22[1] = v13;
      v23 = (a2 + v19[8]);
      *v23 = v16;
      v23[1] = v17;
      *(a2 + v19[9]) = v12 & 1;
      *(a2 + v19[10]) = v15;
      *(a2 + v19[11]) = v14;
      return (*(*(v19 - 1) + 56))(a2, 0, 1, v19);
    }

    else
    {
      v115 = v12;
      v25 = v18;
      if (qword_100094700 != -1)
      {
        swift_once();
      }

      v26 = sub_100071E7C();
      sub_100007DE8(v26, qword_1000999B0);

      v27 = v14;
      v28 = sub_100071E5C();
      v29 = sub_100072CFC();

      v113 = v29;
      if (os_log_type_enabled(v28, v29))
      {
        v111 = v15;
        v30 = swift_slowAlloc();
        *&v122 = swift_slowAlloc();
        *v30 = 136316674;
        *&v125 = v117;
        *(&v125 + 1) = v6;
        sub_10000388C(&qword_100095C30, &qword_1000750B0);
        v31 = sub_100072B4C();
        v32 = v28;
        v34 = v17;
        v35 = sub_100034D20(v31, v33, &v122);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        *&v125 = v118;
        *(&v125 + 1) = v25;
        v36 = sub_100072B4C();
        v38 = sub_100034D20(v36, v37, &v122);

        *(v30 + 14) = v38;
        *(v30 + 22) = 2080;
        *&v125 = v119;
        *(&v125 + 1) = v13;
        v39 = sub_100072B4C();
        v41 = sub_100034D20(v39, v40, &v122);

        *(v30 + 24) = v41;
        *(v30 + 32) = 2080;
        *&v125 = v16;
        *(&v125 + 1) = v34;
        v42 = sub_100072B4C();
        v44 = sub_100034D20(v42, v43, &v122);

        *(v30 + 34) = v44;
        *(v30 + 42) = 2080;
        LOBYTE(v125) = v115;
        sub_10000388C(&qword_100095C60, &qword_1000750E0);
        v45 = sub_100072B4C();
        v47 = sub_100034D20(v45, v46, &v122);

        *(v30 + 44) = v47;
        *(v30 + 52) = 2080;
        *&v125 = v111;
        sub_10000388C(&qword_100095C68, &qword_1000750E8);
        v48 = sub_100072B4C();
        v50 = sub_100034D20(v48, v49, &v122);

        *(v30 + 54) = v50;
        *(v30 + 62) = 2080;
        *&v125 = v27;
        v51 = sub_100072B4C();
        v53 = sub_100034D20(v51, v52, &v122);

        *(v30 + 64) = v53;
        _os_log_impl(&_mh_execute_header, v32, v113, "adamID=%s, bundleID=%s, title=%s, subtitle=%s, supportsArcade=%s, artworkDictionary=%s, editorialArtworkDictionary=%s", v30, 0x48u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v54 = type metadata accessor for AppMetadata();
      return (*(*(v54 - 8) + 56))(a2, 1, 1, v54);
    }
  }

  v9 = *&v121[0];
  strcpy(&v122, "supportsArcade");
  HIBYTE(v122) = -18;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v10 = sub_10004DD38(&v125), (v11 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v10, &v122);
    sub_10003B0C0(&v125);
    if (swift_dynamicCast())
    {
      v12 = LOBYTE(v121[0]);
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    sub_10003B0C0(&v125);
    v12 = 2;
  }

  *&v122 = 1701667182;
  *(&v122 + 1) = 0xE400000000000000;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v55 = sub_10004DD38(&v125), (v56 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v55, &v122);
    sub_10003B0C0(&v125);
    v57 = swift_dynamicCast();
    v58 = *&v121[0];
    if (!v57)
    {
      v58 = 0;
    }

    v119 = v58;
    if (v57)
    {
      v13 = *(&v121[0] + 1);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10003B0C0(&v125);
    v119 = 0;
    v13 = 0;
  }

  *&v121[0] = 0xD000000000000012;
  *(&v121[0] + 1) = 0x8000000100077C00;
  sub_100072DFC();
  if (!*(v9 + 16))
  {
    goto LABEL_53;
  }

  v59 = sub_10004DD38(&v125);
  if ((v60 & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_10000EA40(*(v9 + 56) + 32 * v59, &v122);
  sub_10003B0C0(&v125);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v118 = 0;
    v18 = 0;
    goto LABEL_17;
  }

  v61 = *&v121[0];
  *&v121[0] = 7565161;
  *(&v121[0] + 1) = 0xE300000000000000;
  sub_100072DFC();
  if (!*(v61 + 16) || (v62 = sub_10004DD38(&v125), (v63 & 1) == 0))
  {
LABEL_53:

    sub_10003B0C0(&v125);
    goto LABEL_54;
  }

  sub_10000EA40(*(v61 + 56) + 32 * v62, &v122);
  sub_10003B0C0(&v125);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v64 = *&v121[0];
  *&v122 = 0x6D614E74726F6873;
  *(&v122 + 1) = 0xE900000000000065;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v65 = sub_10004DD38(&v125), (v66 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v65, &v122);
    sub_10003B0C0(&v125);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = *&v121[0];
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = *(&v121[0] + 1);
    }

    else
    {
      v69 = 0;
    }

    v104 = v68;
    v105 = v69;
  }

  else
  {
    sub_10003B0C0(&v125);
    v104 = 0;
    v105 = 0;
  }

  *&v122 = 0x656C746974627573;
  *(&v122 + 1) = 0xE800000000000000;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v70 = sub_10004DD38(&v125), (v71 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v70, &v122);
    sub_10003B0C0(&v125);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v73 = *&v121[0];
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = *(&v121[0] + 1);
    }

    else
    {
      v74 = 0;
    }

    v106 = v73;
    v107 = v74;
  }

  else
  {
    sub_10003B0C0(&v125);
    v106 = 0;
    v107 = 0;
  }

  *&v122 = 0x6449656C646E7562;
  *(&v122 + 1) = 0xE800000000000000;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v75 = sub_10004DD38(&v125), (v76 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v75, &v122);
    sub_10003B0C0(&v125);
    v77 = swift_dynamicCast();
    v78 = *&v121[0];
    if (!v77)
    {
      v78 = 0;
    }

    v118 = v78;
    if (v77)
    {
      v79 = *(&v121[0] + 1);
    }

    else
    {
      v79 = 0;
    }

    v114 = v79;
  }

  else
  {
    sub_10003B0C0(&v125);
    v118 = 0;
    v114 = 0;
  }

  *&v122 = 0x6B726F77747261;
  *(&v122 + 1) = 0xE700000000000000;
  sub_100072DFC();
  if (!*(*&v121[0] + 16) || (v80 = sub_10004DD38(&v125), (v81 & 1) == 0))
  {
    sub_10003B0C0(&v125);
    goto LABEL_80;
  }

  sub_10000EA40(*(*&v121[0] + 56) + 32 * v80, &v122);
  sub_10003B0C0(&v125);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:
    v112 = 0;
    goto LABEL_81;
  }

  v112 = *&v121[0];
LABEL_81:
  if (v12 == 2)
  {

LABEL_116:
    v14 = 0;
    v15 = v112;
    v18 = v114;
    goto LABEL_117;
  }

  *&v121[0] = 0xD000000000000010;
  *(&v121[0] + 1) = 0x8000000100077C20;
  sub_100072DFC();
  if (!*(v64 + 16) || (v82 = sub_10004DD38(&v125), (v83 & 1) == 0))
  {

    sub_10003B0C0(&v125);
    goto LABEL_116;
  }

  sub_10000EA40(*(v64 + 56) + 32 * v82, &v122);
  sub_10003B0C0(&v125);

  sub_10000388C(&qword_100095C70, &qword_1000750F0);
  result = swift_dynamicCast();
  v15 = v112;
  if ((result & 1) == 0)
  {
    v14 = 0;
    v18 = v114;
LABEL_117:
    v16 = v106;
    v17 = v107;
    if (v105)
    {
      v13 = v105;

      v119 = v104;
    }

    goto LABEL_17;
  }

  v110 = a2;
  v14 = 0;
  v84 = 0;
  v85 = *&v121[0];
  v86 = 1 << *(*&v121[0] + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = *&v121[0] + 64;
  v89 = v87 & *(*&v121[0] + 64);
  v90 = (v86 + 63) >> 6;
  v109 = v90;
  v116 = v12;
  v18 = v114;
  v108 = *&v121[0] + 64;
  while (v89)
  {
    v91 = v84;
LABEL_99:
    v94 = __clz(__rbit64(v89));
    v89 &= v89 - 1;
    v95 = v94 | (v91 << 6);
    v96 = (*(v85 + 48) + 16 * v95);
    v98 = *v96;
    v97 = v96[1];
    sub_10000EA40(*(v85 + 56) + 32 * v95, v121);
    *&v122 = v98;
    *(&v122 + 1) = v97;
    sub_10003B36C(v121, &v123);

    v12 = v116;
    v18 = v114;
LABEL_100:
    v125 = v122;
    v126[0] = v123;
    v126[1] = v124;
    v99 = *(&v122 + 1);
    if (!*(&v122 + 1))
    {

      a2 = v110;
      v15 = v112;
      goto LABEL_117;
    }

    v100 = v125;
    sub_10003B36C(v126, &v122);
    if (v100 == 0xD000000000000010 && 0x8000000100077C40 == v99)
    {

LABEL_112:
      sub_10003B36C(&v122, v121);
      result = swift_dynamicCast();
      v88 = v108;
      if (result)
      {

        v14 = v120;
      }

      v18 = v114;
      v90 = v109;
    }

    else
    {
      v103 = sub_100072FFC();

      if (v103)
      {
        goto LABEL_112;
      }

      result = sub_100007F50(&v122);
      v18 = v114;
      v88 = v108;
      v90 = v109;
    }
  }

  if (v90 <= v84 + 1)
  {
    v92 = v84 + 1;
  }

  else
  {
    v92 = v90;
  }

  v93 = v92 - 1;
  while (1)
  {
    v91 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    if (v91 >= v90)
    {
      v89 = 0;
      v123 = 0u;
      v124 = 0u;
      v84 = v93;
      v122 = 0u;
      goto LABEL_100;
    }

    v89 = *(v88 + 8 * v91);
    ++v84;
    if (v89)
    {
      v84 = v91;
      goto LABEL_99;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100033BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100038D90(a1, 0xD000000000000011, 0x8000000100077AD0, 0x7974697669746341, 0xEC00000064656546);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_100033C64(sub_10003C488, v6);
}

void sub_100033C64(void (*a1)(void *, unint64_t, id), uint64_t a2)
{
  v3 = v2;
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v6 = sub_100071E7C();
  sub_100007DE8(v6, qword_1000999C8);
  v7 = sub_100071E5C();
  v8 = sub_100072CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchActivityFeedViews...", v9, 2u);
  }

  v10 = sub_10006CEA0();
  if (v10)
  {
    v11 = v10;
    v12 = v10;
    v13 = sub_100071E5C();
    v14 = sub_100072CFC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v11;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Current player is %@", v15, 0xCu);
      sub_100004890(v16, &qword_100095BD8, &qword_100075090);
    }

    v18 = [objc_opt_self() proxyForPlayer:v12];
    v19 = [v18 friendServicePrivate];

    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = v3;
    aBlock[4] = sub_100039104;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100034B48;
    aBlock[3] = &unk_1000926B0;
    v21 = _Block_copy(aBlock);

    [v19 getPlayerActivityFeed:0 bundleID:0 continuation:0 handler:v21];
    _Block_release(v21);

    swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_100071E5C();
    v23 = sub_100072CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get local player!", v24, 2u);
    }

    v25 = sub_10004F470(&_swiftEmptyArrayStorage);
    v26 = sub_100056B94();
    a1(&_swiftEmptyArrayStorage, v25, v26);
  }
}

uint64_t sub_100034020(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_10007292C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007294C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v49 = v18;
    v56 = v16;
    v29 = swift_allocObject();
    v48 = v29;
    *(v29 + 16) = &_swiftEmptyArrayStorage;
    v30 = (v29 + 16);
    v59 = 0;
    v54 = a3;
    v55 = a4;
    v52 = v9;
    v53 = v8;
    v50 = v14;
    v51 = v12;
    if (a1 && (v31 = [a1 sections]) != 0)
    {
      v32 = v31;
      sub_10000F74C(0, &qword_100095C00, GKPlayerActivitySectionInternal_ptr);
      v33 = sub_100072C4C();

      a2 = 0;
      sub_10002BBA0(v33, &v59, 16, v30);
    }

    else
    {
      a2 = 0;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = sub_10004F470(&_swiftEmptyArrayStorage);
    v35 = dispatch_group_create();
    v36 = *v30;
    if (v36 >> 62)
    {
      v37 = sub_100072EDC();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v37)
    {
LABEL_21:

      sub_10000F74C(0, &qword_100095BE0, OS_dispatch_queue_ptr);
      v41 = sub_100072D1C();
      v42 = swift_allocObject();
      v42[2] = v48;
      v42[3] = v34;
      v43 = v55;
      v42[4] = v54;
      v42[5] = v43;
      aBlock[4] = sub_10003AC04;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100032024;
      aBlock[3] = &unk_100092750;
      v44 = _Block_copy(aBlock);

      v45 = v49;
      sub_10007293C();
      v57 = &_swiftEmptyArrayStorage;
      sub_10003ACC8(&qword_100095BE8, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000388C(&qword_100095BF0, &qword_100075098);
      sub_10003AC10();
      v46 = v51;
      v47 = v53;
      sub_100072DBC();
      sub_100072D0C();

      _Block_release(v44);
      (*(v52 + 8))(v46, v47);
      (*(v50 + 8))(v45, v56);
    }

    v38 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = sub_100072E6C();
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      a3 = v39;
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      aBlock[0] = v39;
      sub_10003A92C(aBlock, v35, v34);

      ++v38;
      if (v40 == v37)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_100094708 != -1)
  {
LABEL_24:
    swift_once();
  }

  v19 = sub_100071E7C();
  sub_100007DE8(v19, qword_1000999C8);
  swift_errorRetain();
  v20 = sub_100071E5C();
  v21 = sub_100072CFC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    v59 = a2;
    swift_errorRetain();
    sub_10000388C(&qword_100095C08, &qword_1000750A0);
    v24 = sub_100072B4C();
    v26 = sub_100034D20(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received error %s", v22, 0xCu);
    sub_100007F50(v23);
  }

  v27 = sub_10004F470(&_swiftEmptyArrayStorage);
  (a3)(&_swiftEmptyArrayStorage, v27, a2);
}