uint64_t sub_100001A38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_10000388C(&qword_1000948F8, &qword_1000739B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = (&v16 - v9);
  v11 = type metadata accessor for CPSmallContentView();
  sub_100004C94(v1 + *(v11 + 20), v10, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1000729DC();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_100072CEC();
    v15 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100001C40()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CPSmallContentView() + 24);
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

uint64_t sub_100001D98@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10000388C(&qword_1000948C0, &qword_100073948);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_10000388C(&qword_1000948C8, &qword_100073950);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_10000388C(&qword_1000948D0, &qword_100073958);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v27 - v20;
  sub_1000020AC((&v27 - v20));
  *v14 = sub_10007223C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v22 = &v14[*(sub_10000388C(&qword_1000948D8, &qword_100073960) + 44)];
  sub_100003114(v7);
  sub_100004C94(v7, v5, &qword_1000948C0, &qword_100073948);
  *v22 = 0;
  v22[8] = 0;
  v23 = sub_10000388C(&qword_1000948E0, &qword_100073968);
  sub_100004C94(v5, &v22[*(v23 + 48)], &qword_1000948C0, &qword_100073948);
  sub_100004890(v7, &qword_1000948C0, &qword_100073948);
  sub_100004890(v5, &qword_1000948C0, &qword_100073948);
  sub_100004C94(v21, v19, &qword_1000948D0, &qword_100073958);
  sub_100004C94(v14, v12, &qword_1000948C8, &qword_100073950);
  v24 = v28;
  sub_100004C94(v19, v28, &qword_1000948D0, &qword_100073958);
  v25 = sub_10000388C(&qword_1000948E8, &unk_100073970);
  sub_100004C94(v12, v24 + *(v25 + 48), &qword_1000948C8, &qword_100073950);
  sub_100004890(v14, &qword_1000948C8, &qword_100073950);
  sub_100004890(v21, &qword_1000948D0, &qword_100073958);
  sub_100004890(v12, &qword_1000948C8, &qword_100073950);
  return sub_100004890(v19, &qword_1000948D0, &qword_100073958);
}

uint64_t sub_1000020AC@<X0>(uint64_t *a1@<X8>)
{
  v143 = sub_1000728BC();
  v3 = *(v143 - 8);
  v4 = *(v3 + 8);
  __chkstk_darwin(v143);
  v157 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for CPTitleGradientView();
  v6 = *(*(v145 - 8) + 64);
  v7 = __chkstk_darwin(v145);
  v147 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = (&v120 - v9);
  v148 = sub_10000388C(&qword_100094918, &qword_100073A60);
  v10 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v146 = (&v120 - v11);
  v12 = sub_10000388C(&qword_100094920, &qword_100073A68);
  v152 = *(v12 - 8);
  v153 = v12;
  v13 = *(v152 + 64);
  __chkstk_darwin(v12);
  v151 = &v120 - v14;
  v150 = sub_10000388C(&qword_100094928, &unk_100073A70);
  v15 = *(*(v150 - 8) + 64);
  v16 = __chkstk_darwin(v150);
  v156 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v149 = &v120 - v19;
  __chkstk_darwin(v18);
  v154 = &v120 - v20;
  v130 = sub_10007221C();
  v129 = *(v130 - 8);
  v21 = *(v129 + 64);
  __chkstk_darwin(v130);
  v128 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10007277C();
  v123 = *(v124 - 8);
  v23 = *(v123 + 64);
  __chkstk_darwin(v124);
  v122 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_10000388C(&qword_100094930, &qword_100076430);
  v25 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v125 = (&v120 - v26);
  v135 = sub_10000388C(&qword_100094938, &qword_100073A80);
  v27 = *(*(v135 - 8) + 64);
  v28 = __chkstk_darwin(v135);
  v126 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v127 = &v120 - v30;
  v132 = sub_1000729DC();
  v131 = *(v132 - 1);
  v31 = *(v131 + 64);
  __chkstk_darwin(v132);
  v33 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10000388C(&qword_100094940, &qword_100073A88);
  v34 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v134 = &v120 - v35;
  v36 = sub_10000388C(&qword_100094948, &qword_100073A90);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v144 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v120 - v40;
  v42 = sub_10007297C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 8);
  v45 = __chkstk_darwin(v42);
  v47 = &v120 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = &v120 - v48;
  v50 = sub_100001C40();
  v158 = v3;
  v141 = v42;
  v159 = v41;
  v139 = a1;
  if ((v50 & 1) == 0)
  {
    v142 = 0;
    goto LABEL_8;
  }

  v51 = v49;
  v52 = v43;
  v53 = v47;
  a1 = v1;
  sub_1000129F8(v51);
  sub_10007296C();
  sub_100004DB8(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v54 = sub_100072B1C();
  v47 = v52;
  v55 = *(v52 + 1);
  v3 = v53;
  v55(v53, v42);
  v43 = v51;
  v55(v51, v42);
  if ((v54 & 1) == 0)
  {
    if (qword_1000946E0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  v142 = 0;
  while (1)
  {
    v1 = a1;
    v41 = v159;
    v56 = v47;
    v47 = v3;
    v49 = v43;
    v43 = v56;
LABEL_8:
    v137 = type metadata accessor for CPSmallContentView();
    v57 = v1 + *(v137 + 32);
    v58 = type metadata accessor for CPTimelineEntry();
    v59 = *(v57 + *(v58 + 32)) == 1;
    v155 = v1;
    v138 = v57;
    if (v59 && (sub_100001C40() & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_100004CFC();
      sub_10007230C();
      v89 = 0;
      goto LABEL_21;
    }

    v60 = *(v57 + *(v58 + 20));
    if (v60 >> 62)
    {
      if (!sub_100072EDC())
      {
        goto LABEL_20;
      }
    }

    else if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    if ((v60 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v61 = *(v60 + 32);

      goto LABEL_16;
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_6:
    v142 = qword_100099978;
    swift_retain_n();
  }

  v61 = sub_100072E6C();
LABEL_16:
  sub_100001A38(v33);
  v62 = sub_10001D980(v33, 0);
  (*(v131 + 8))(v33, v132);
  if (v62)
  {
    v132 = v62;
    sub_10007275C();
    v63 = v123;
    v64 = *(v123 + 104);
    v65 = v122;
    v121 = v61;
    v66 = v124;
    v64(v122, enum case for Image.ResizingMode.stretch(_:), v124);
    sub_1000727DC();

    (*(v63 + 8))(v65, v66);
    v67 = sub_1000728AC();
    v68 = v125;
    *v125 = v67;
    *(v68 + 8) = v69;
    v70 = sub_10000388C(&qword_100094978, &qword_100074E80);
    sub_10005544C((v68 + *(v70 + 44)), 0.3);

    v71 = v68 + *(sub_10000388C(&qword_100094980, &unk_100073AC0) + 36);
    *v71 = 0;
    *(v71 + 8) = 1;
    v72 = (v68 + *(v136 + 36));
    v73 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
    v74 = enum case for ColorScheme.light(_:);
    v75 = sub_100071EAC();
    (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
    *v72 = swift_getKeyPath();
    v76 = *(v121 + 48);
    v160 = *(v121 + 40);
    v161 = v76;
    sub_100004A78();

    v77 = sub_10007259C();
    v79 = v78;
    v80 = v47;
    v81 = v43;
    v82 = v49;
    v84 = v83;
    sub_100004ACC();
    v85 = v126;
    sub_10007260C();
    v86 = v84 & 1;
    v49 = v82;
    v43 = v81;
    v47 = v80;
    v41 = v159;
    sub_100004C84(v77, v79, v86);

    sub_100004890(v68, &qword_100094930, &qword_100076430);
    v87 = v128;
    sub_10007220C();
    v88 = v127;
    sub_100071FAC();
    (*(v129 + 8))(v87, v130);
    sub_100004890(v85, &qword_100094938, &qword_100073A80);
    sub_100004C94(v88, v134, &qword_100094938, &qword_100073A80);
    swift_storeEnumTagMultiPayload();
    sub_100004CFC();
    sub_10007230C();

    sub_100004890(v88, &qword_100094938, &qword_100073A80);
    v89 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v89 = 1;
LABEL_21:
  v90 = sub_10000388C(&qword_100094950, &qword_100073A98);
  (*(*(v90 - 8) + 56))(v41, v89, 1, v90);
  v91 = sub_10007223C();
  v92 = v146;
  *v146 = v91;
  *(v92 + 8) = 0;
  *(v92 + 16) = 1;
  v93 = v92 + *(sub_10000388C(&qword_100094958, &qword_100073AA0) + 44);
  v94 = *(v137 + 28);
  v95 = v41;
  sub_100071F3C();
  v97 = v96;
  sub_100071F3C();
  v99 = v98 * 0.5;
  v100 = v145;
  v101 = v140;
  sub_1000047CC(v138, v140 + *(v145 + 24), type metadata accessor for CPTimelineEntry);
  *v101 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v102 = (v101 + *(v100 + 20));
  *v102 = v97;
  v102[1] = v99;
  v103 = v147;
  sub_1000047CC(v101, v147, type metadata accessor for CPTitleGradientView);
  *v93 = 0;
  *(v93 + 8) = 0;
  v104 = sub_10000388C(&qword_100094960, &qword_100073AA8);
  sub_1000047CC(v103, v93 + *(v104 + 48), type metadata accessor for CPTitleGradientView);
  sub_100004834(v101);
  sub_100004834(v103);
  sub_100004C3C(&qword_100094968, &qword_100094918, &qword_100073A60);
  v105 = v151;
  sub_1000725AC();
  sub_100004890(v92, &qword_100094918, &qword_100073A60);
  sub_1000129F8(v49);
  sub_10007296C();
  v106 = sub_10007295C();
  v107 = *(v43 + 1);
  v108 = v141;
  v107(v47, v141);
  v107(v49, v108);
  v109 = &enum case for BlendMode.destinationOut(_:);
  if ((v106 & 1) == 0)
  {
    v109 = &enum case for BlendMode.normal(_:);
  }

  v111 = v157;
  v110 = v158;
  v112 = v143;
  v158[13](v157, *v109, v143);
  v113 = v149;
  v110[4](&v149[*(v150 + 36)], v111, v112);
  (*(v152 + 32))(v113, v105, v153);
  v114 = v154;
  sub_1000048F0(v113, v154);
  v115 = v144;
  sub_100004C94(v95, v144, &qword_100094948, &qword_100073A90);
  v116 = v156;
  sub_100004C94(v114, v156, &qword_100094928, &unk_100073A70);
  v117 = v139;
  *v139 = v142;
  v118 = sub_10000388C(&qword_100094970, &unk_100073AB0);
  sub_100004C94(v115, v117 + *(v118 + 48), &qword_100094948, &qword_100073A90);
  sub_100004C94(v116, v117 + *(v118 + 64), &qword_100094928, &unk_100073A70);
  sub_100004890(v114, &qword_100094928, &unk_100073A70);
  sub_100004890(v159, &qword_100094948, &qword_100073A90);
  sub_100004890(v116, &qword_100094928, &unk_100073A70);
  sub_100004890(v115, &qword_100094948, &qword_100073A90);
}

uint64_t sub_100003114@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CPTitleView();
  v28 = *(v3 - 1);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CPSmallContentView();
  v8 = v1 + v7[8];
  v9 = type metadata accessor for CPTimelineEntry();
  v10 = *(v8 + *(v9 + 20));
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v24 = *(v8 + *(v9 + 20));
    }

    result = sub_100072EDC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v25 = *(v28 + 56);

    return v25(a1, 1, 1, v3);
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_6:
    v13 = v7[7];
    v14 = v3[8];
    v15 = sub_100071F5C();
    (*(*(v15 - 8) + 16))(v6 + v14, v1 + v13, v15);
    sub_1000047CC(v8, v6 + v3[9], type metadata accessor for CPTimelineEntry);
    v16 = (v1 + v7[9]);
    v17 = *(v16 + 4);
    v18 = v16[1];
    v33 = *v16;
    v34 = v18;
    v35 = v17;
    sub_10000388C(&qword_1000948F0, qword_100077520);
    sub_10007280C();
    v19 = v29;
    v20 = v30;
    v26 = v32;
    v27 = v31;
    *(v6 + v3[6]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *(v6 + v3[7]) = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    *v6 = swift_getKeyPath();
    sub_10000388C(&qword_100094908, &qword_100073A20);
    swift_storeEnumTagMultiPayload();
    v21 = v3[5];
    *(v6 + v21) = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    *(v6 + v3[10]) = v12;
    v22 = v6 + v3[11];
    *v22 = v19;
    *(v22 + 1) = v20;
    v23 = v26;
    *(v22 + 1) = v27;
    *(v22 + 2) = v23;
    sub_100004768(v6, a1);
    return (*(v28 + 56))(a1, 0, 1, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000347C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000726DC();
  *a1 = result;
  return result;
}

uint64_t sub_1000034C8()
{
  v0 = sub_10007236C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948A8, &qword_100073938);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v12 - v7);
  *v8 = sub_1000728AC();
  v8[1] = v9;
  v10 = sub_10000388C(&qword_1000948B0, &qword_100073940);
  sub_100001D98(v8 + *(v10 + 44));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_1000948B8, &qword_1000948A8, &qword_100073938);
  sub_10007265C();
  (*(v1 + 8))(v4, v0);
  return sub_100004890(v8, &qword_1000948A8, &qword_100073938);
}

uint64_t sub_1000036C4()
{
  sub_10000388C(&qword_100094738, &unk_100073800);
  sub_1000038D4(&qword_100094740, &unk_100074240);
  sub_1000038D4(&qword_100094748, &unk_100073810);
  sub_1000038D4(&qword_100094750, &unk_100074230);
  sub_1000038D4(&qword_100094758, &unk_100073820);
  sub_100004C3C(&qword_100094760, &qword_100094758, &unk_100073820);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722FC();
}

uint64_t sub_10000388C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000038D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000391C()
{
  sub_10000388C(&qword_100094768, &unk_100074340);
  sub_1000038D4(&qword_100094770, &unk_100073830);
  sub_1000038D4(&qword_100094778, &unk_100074330);
  sub_1000038D4(&qword_100094780, &unk_100073840);
  sub_1000038D4(&qword_100094788, &unk_100074320);
  sub_1000038D4(&qword_100094790, &unk_100073850);
  sub_100004C3C(&qword_100094798, &qword_100094790, &unk_100073850);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722FC();
}

uint64_t sub_100003AF8()
{
  sub_10000388C(&qword_1000947A0, &unk_100074260);
  sub_1000038D4(&qword_1000947A8, &unk_100073860);
  sub_1000038D4(&qword_1000947B0, &unk_100074250);
  sub_1000038D4(&qword_100094738, &unk_100073800);
  sub_1000038D4(&qword_100094740, &unk_100074240);
  sub_1000038D4(&qword_100094748, &unk_100073810);
  sub_1000038D4(&qword_100094750, &unk_100074230);
  sub_1000038D4(&qword_100094758, &unk_100073820);
  sub_100004C3C(&qword_100094760, &qword_100094758, &unk_100073820);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722AC();
}

uint64_t sub_100003D54(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000716A4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100003DDC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_1000716A4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100003E44()
{
  sub_10000388C(&qword_1000947B8, &unk_100073870);
  sub_1000038D4(&qword_1000947C0, &unk_100074350);
  sub_1000038D4(&qword_1000947C8, &qword_100073880);
  sub_1000038D4(&qword_100094768, &unk_100074340);
  sub_1000038D4(&qword_100094770, &unk_100073830);
  sub_1000038D4(&qword_100094778, &unk_100074330);
  sub_1000038D4(&qword_100094780, &unk_100073840);
  sub_1000038D4(&qword_100094788, &unk_100074320);
  sub_1000038D4(&qword_100094790, &unk_100073850);
  sub_100004C3C(&qword_100094798, &qword_100094790, &unk_100073850);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722AC();
}

__n128 sub_1000040C8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000040D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000040F4(uint64_t result, int a2, int a3)
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

uint64_t sub_10000415C(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_100004334(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t type metadata accessor for CPSmallContentView()
{
  result = qword_100094840;
  if (!qword_100094840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004534()
{
  sub_1000046CC(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000046CC(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100004EB0(319, &qword_100094860, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100071F5C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CPTimelineEntry();
          if (v4 <= 0x3F)
          {
            sub_1000046CC(319, &unk_100094868, type metadata accessor for CGRect, &type metadata accessor for State);
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

void sub_1000046CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100004768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTitleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000047CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100004834(uint64_t a1)
{
  v2 = type metadata accessor for CPTitleGradientView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000388C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094928, &unk_100073A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000049B0(uint64_t a1)
{
  v2 = sub_100071EAC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10007203C();
}

unint64_t sub_100004A78()
{
  result = qword_100094990;
  if (!qword_100094990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094990);
  }

  return result;
}

unint64_t sub_100004ACC()
{
  result = qword_100094998;
  if (!qword_100094998)
  {
    sub_1000038D4(&qword_100094930, &qword_100076430);
    sub_100004B84();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094998);
  }

  return result;
}

unint64_t sub_100004B84()
{
  result = qword_1000949A0;
  if (!qword_1000949A0)
  {
    sub_1000038D4(&qword_100094980, &unk_100073AC0);
    sub_100004C3C(&qword_1000949A8, &qword_1000949B0, &qword_100073B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000949A0);
  }

  return result;
}

uint64_t sub_100004C3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004C84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000388C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100004CFC()
{
  result = qword_1000949C0;
  if (!qword_1000949C0)
  {
    sub_1000038D4(&qword_100094938, &qword_100073A80);
    sub_100004ACC();
    sub_100004DB8(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000949C0);
  }

  return result;
}

uint64_t sub_100004DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004E00(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

__n128 sub_100004E0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004E18(uint64_t a1, int a2)
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

uint64_t sub_100004E38(uint64_t result, int a2, int a3)
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

void sub_100004EB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100004F00()
{
  sub_1000038D4(&qword_1000948A8, &qword_100073938);
  sub_100004C3C(&qword_1000948B8, &qword_1000948A8, &qword_100073938);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100004FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
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

uint64_t sub_1000050A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
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

uint64_t type metadata accessor for CPTimelineEntry()
{
  result = qword_100094A40;
  if (!qword_100094A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000051A4()
{
  sub_100071D4C();
  if (v0 <= 0x3F)
  {
    sub_10000523C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000523C()
{
  if (!qword_100094A50)
  {
    type metadata accessor for AppDisplayData();
    v0 = sub_100072C9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100094A50);
    }
  }
}

int *sub_100005294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100071DAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CPTimelineEntry();
  if (*(v2 + result[6]) == 1 && (*(v2 + result[7]) & 1) == 0 && (*(v2 + result[8]) & 1) == 0 && *(v2 + result[9]) == 1)
  {
    v11 = *(v2 + result[5]);
    if (v11 >> 62)
    {
      if (sub_100072EDC() >= 1)
      {
        result = sub_100072EDC();
        if (!result)
        {
          v18 = sub_100071C9C();
          v14 = *(*(v18 - 8) + 56);
          v15 = v18;
          v16 = a2;
          v17 = 1;
LABEL_11:

          return v14(v16, v17, 1, v15);
        }

LABEL_7:
        if ((v11 & 0xC000000000000001) != 0)
        {
          sub_100072E6C();
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v12 = *(v11 + 32);
        }

        sub_10004CE40(0xD000000000000015, 0x80000001000776C0, a1, a2);

        v13 = sub_100071C9C();
        v14 = *(*(v13 - 8) + 56);
        v15 = v13;
        v16 = a2;
        v17 = 0;
        goto LABEL_11;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

  (*(v6 + 104))(v9, enum case for GKFeatureFlags.GameOverlayUI(_:), v5);
  v19 = sub_100071D9C();
  (*(v6 + 8))(v9, v5);
  if ((v19 & 1) != 0 && (v20 = [objc_opt_self() currentDevice], v21 = objc_msgSend(v20, "userInterfaceIdiom"), v20, !v21))
  {
    return sub_100071DEC();
  }

  else
  {
    return sub_100071C8C();
  }
}

uint64_t sub_100005588()
{
  sub_100072E4C(91);
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0x80000001000776E0;
  sub_100072B7C(v11);
  v1 = type metadata accessor for CPTimelineEntry();
  if (*(v0 + v1[6]))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[6]))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100072B7C(v2);

  v12._object = 0x8000000100077700;
  v12._countAndFlagsBits = 0xD000000000000011;
  sub_100072B7C(v12);
  if (*(v0 + v1[7]))
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[7]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_100072B7C(v4);

  v13._object = 0x8000000100077720;
  v13._countAndFlagsBits = 0xD000000000000011;
  sub_100072B7C(v13);
  if (*(v0 + v1[8]))
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[8]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_100072B7C(v6);

  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100077740;
  sub_100072B7C(v14);
  if (*(v0 + v1[9]))
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[9]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_100072B7C(v8);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  sub_100072B7C(v15);
  return 0;
}

uint64_t sub_10000574C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100071D4C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000057B8(uint64_t a1, void (*a2)(char *), uint64_t a3, double a4)
{
  v38 = a2;
  v39 = a3;
  v36 = a1;
  v5 = type metadata accessor for CPTimelineEntry();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000729DC();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_10000739C();
  if (qword_1000946F0 != -1)
  {
    swift_once();
  }

  v16 = sub_100071E7C();
  sub_100007DE8(v16, qword_100099980);
  v17 = sub_100071E5C();
  v18 = sub_100072CFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v17, v18, "Live preview rate is %f, rolled a %f", v19, 0x16u);
  }

  v20 = sub_100071E5C();
  v21 = sub_100072CFC();
  v22 = os_log_type_enabled(v20, v21);
  if (v15 <= a4)
  {
    if (v22)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Showing live preview...", v25, 2u);
    }

    v35 = type metadata accessor for GameCenterStore();
    sub_100072A9C();
    v26 = swift_allocObject();
    v27 = v39;
    *(v26 + 16) = v38;
    *(v26 + 24) = v27;
    v28 = v9;
    v29 = *(v9 + 16);
    v30 = v37;
    v29(v11, v14, v37);
    v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v35;
    (*(v28 + 32))(v32 + v31, v11, v30);
    v33 = (v32 + ((v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_100008184;
    v33[1] = v26;

    sub_100035E08(sub_1000082EC);

    return (*(v28 + 8))(v14, v30);
  }

  else
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Showing placeholder preview...", v23, 2u);
    }

    sub_100071D3C();
    if (qword_100094728 != -1)
    {
      swift_once();
    }

    *&v8[v5[5]] = qword_1000999E8;
    v8[v5[6]] = 1;
    v8[v5[7]] = 0;
    v8[v5[8]] = 1;
    v8[v5[9]] = 1;

    v38(v8);
    return sub_100007E88(v8, type metadata accessor for CPTimelineEntry);
  }
}

uint64_t sub_100005C58(uint64_t a1, int a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v38 = a2;
  v5 = type metadata accessor for CPTimelineEntry();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v37[-v10];
  v12 = sub_100071D4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v37[-v18];
  sub_100071D3C();
  v20 = *(v13 + 16);
  v41 = v12;
  v20(v16, v19, v12);
  v21 = sub_10006CEA0();
  v22 = v21;
  if (v21)
  {
  }

  v23 = sub_10006CEA0();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v25 = 0;
  }

  (*(v13 + 32))(v11, v16, v41);
  *&v11[v5[5]] = a1;
  v11[v5[6]] = v22 != 0;
  v11[v5[7]] = v38 & 1;
  v11[v5[8]] = 0;
  v11[v5[9]] = v25;
  v26 = qword_1000946F0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_100071E7C();
  sub_100007DE8(v27, qword_100099980);
  sub_100007E20(v11, v8, type metadata accessor for CPTimelineEntry);
  v28 = sub_100071E5C();
  v29 = sub_100072CFC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136315138;
    v32 = sub_100005588();
    v34 = v33;
    sub_100007E88(v8, type metadata accessor for CPTimelineEntry);
    v35 = sub_100034D20(v32, v34, &v42);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Snapshot entry created: %s", v30, 0xCu);
    sub_100007F50(v31);
  }

  else
  {

    sub_100007E88(v8, type metadata accessor for CPTimelineEntry);
  }

  v40(v11);
  sub_100007E88(v11, type metadata accessor for CPTimelineEntry);
  return (*(v13 + 8))(v19, v41);
}

uint64_t sub_10000602C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v134 = a6;
  v135 = a5;
  v138 = a4;
  v144 = a3;
  v142 = a2;
  v140 = a1;
  v6 = sub_100072A8C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v131 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_10000388C(&qword_100094A98, &qword_100073C20);
  v133 = *(v146 - 8);
  v9 = *(v133 + 64);
  __chkstk_darwin(v146);
  v122 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v132 = &v121 - v12;
  __chkstk_darwin(v13);
  v139 = &v121 - v14;
  v15 = type metadata accessor for WidgetCreationAttempt(0);
  v136 = *(v15 - 1);
  v16 = *(v136 + 64);
  __chkstk_darwin(v15);
  v129 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v121 - v19;
  v141 = sub_1000729DC();
  v137 = *(v141 - 8);
  v20 = *(v137 + 8);
  __chkstk_darwin(v141);
  v22 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000388C(&qword_100094AA0, &qword_100073C28);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v121 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v123 = &v121 - v27;
  __chkstk_darwin(v28);
  v145 = &v121 - v29;
  v143 = type metadata accessor for CPTimelineEntry();
  v30 = *(v143 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v143);
  v33 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v121 - v35;
  __chkstk_darwin(v37);
  v39 = &v121 - v38;
  v40 = sub_100071D4C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v128 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v127 = &v121 - v45;
  __chkstk_darwin(v46);
  v48 = &v121 - v47;
  __chkstk_darwin(v49);
  v51 = &v121 - v50;
  sub_100071D3C();
  v148 = v41;
  v52 = *(v41 + 16);
  v130 = v51;
  v149 = v40;
  v52(v48, v51, v40);
  v53 = sub_10006CEA0();
  v54 = v53;
  if (v53)
  {
  }

  v55 = sub_10006CEA0();
  if (v55)
  {
    v56 = v55;
    v57 = [v55 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v57 = 0;
  }

  v58 = *(v148 + 32);
  v126 = v148 + 32;
  v125 = v58;
  v58(v39, v48, v149);
  v59 = v143;
  *&v39[*(v143 + 20)] = v140;
  v39[v59[6]] = v54 != 0;
  v60 = v59[7];
  v124 = v142 & 1;
  v39[v60] = v142 & 1;
  v39[v59[8]] = 0;
  v39[v59[9]] = v57;
  sub_100007E20(v39, v36, type metadata accessor for CPTimelineEntry);
  v61 = v144;
  swift_beginAccess();
  v62 = v61[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61[2] = v62;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v62 = sub_10000CC1C(0, v62[2] + 1, 1, v62);
    v61[2] = v62;
  }

  v65 = v62[2];
  v64 = v62[3];
  if (v65 >= v64 >> 1)
  {
    v62 = sub_10000CC1C(v64 > 1, v65 + 1, 1, v62);
  }

  v62[2] = v65 + 1;
  sub_100007D84(v36, v62 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v65);
  v61[2] = v62;
  swift_endAccess();
  if (qword_1000946F0 != -1)
  {
    swift_once();
  }

  v66 = sub_100071E7C();
  v67 = sub_100007DE8(v66, qword_100099980);
  sub_100007E20(v39, v33, type metadata accessor for CPTimelineEntry);
  v140 = v67;
  v68 = sub_100071E5C();
  v69 = sub_100072CFC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v151[0] = v71;
    *v70 = 136315138;
    v72 = sub_100005588();
    v74 = v73;
    sub_100007E88(v33, type metadata accessor for CPTimelineEntry);
    v75 = sub_100034D20(v72, v74, v151);

    *(v70 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v68, v69, "Timeline entry created: %s", v70, 0xCu);
    sub_100007F50(v71);
  }

  else
  {

    sub_100007E88(v33, type metadata accessor for CPTimelineEntry);
  }

  v76 = v145;
  v77 = v137;
  type metadata accessor for GameCenterStore();
  sub_100072A9C();
  sub_10002A0E4(0x65756E69746E6F43, 0xEF676E6979616C50, v22, v76);
  v78 = *(v77 + 1);
  v78(v22, v141);
  v79 = *(v136 + 48);
  if (v79(v76, 1, v15) != 1)
  {
    v137 = v39;
    v81 = v123;
    sub_100007F9C(v76, v123);
    result = v79(v81, 1, v15);
    if (result != 1)
    {
      v83 = v81;
      v84 = *(v81 + v15[5]);
      sub_100007E88(v83, type metadata accessor for WidgetCreationAttempt);
      if (v84 != 1)
      {
        v80 = 120;
        v39 = v137;
        goto LABEL_23;
      }

      v85 = v121;
      sub_100007F9C(v76, v121);
      result = v79(v85, 1, v15);
      if (result == 1)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      v86 = *(v85 + v15[6]);
      result = sub_100007E88(v85, type metadata accessor for WidgetCreationAttempt);
      v39 = v137;
      if (v86 + 0x4000000000000000 >= 0)
      {
        v80 = 2 * v86;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_38;
  }

  v80 = 120;
LABEL_23:
  if (v80 >= 7200)
  {
    v87 = 7200;
  }

  else
  {
    v87 = v80;
  }

  v88 = v127;
  sub_100071D3C();
  if (v142)
  {
    v89 = v87;
  }

  else
  {
    v89 = 3600;
  }

  sub_100072A9C();
  v90 = sub_1000729CC();
  v78(v22, v141);
  v91 = v147;
  v125(v147, v88, v149);
  *(v91 + v15[5]) = v124;
  *(v91 + v15[6]) = v89;
  v92 = (v91 + v15[7]);
  *v92 = 0x65756E69746E6F43;
  v92[1] = 0xEF676E6979616C50;
  *(v91 + v15[8]) = v90;
  v93 = v129;
  sub_100007E20(v91, v129, type metadata accessor for WidgetCreationAttempt);
  v94 = sub_100071E5C();
  v95 = sub_100072CFC();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v151[0] = v97;
    *v96 = 136315138;
    v98 = sub_10002BF9C();
    v100 = v99;
    sub_100007E88(v93, type metadata accessor for WidgetCreationAttempt);
    v101 = sub_100034D20(v98, v100, v151);

    *(v96 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v94, v95, "Logging widget creation attempt: %s", v96, 0xCu);
    sub_100007F50(v97);
  }

  else
  {

    sub_100007E88(v93, type metadata accessor for WidgetCreationAttempt);
  }

  v102 = v146;
  v103 = v133;
  v104 = v128;
  sub_10002AE5C();
  v105 = v144;
  swift_beginAccess();
  v106 = v105[2];

  sub_100071D0C();
  sub_100072A7C();
  v107 = *(v148 + 8);
  v148 += 8;
  v107(v104, v149);
  sub_100007344();
  v108 = v139;
  sub_100072ABC();
  v109 = *(v103 + 16);
  v110 = v132;
  v109(v132, v108, v102);
  v111 = sub_100071E5C();
  v112 = sub_100072CFC();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v150 = v144;
    *v113 = 136315138;
    v109(v122, v110, v146);
    v114 = sub_100072B4C();
    v116 = v115;
    v117 = v110;
    v118 = *(v103 + 8);
    v118(v117, v146);
    v119 = sub_100034D20(v114, v116, &v150);

    *(v113 + 4) = v119;
    _os_log_impl(&_mh_execute_header, v111, v112, "Timeline created: %s", v113, 0xCu);
    sub_100007F50(v144);
    v108 = v139;

    v102 = v146;
  }

  else
  {

    v120 = v110;
    v118 = *(v103 + 8);
    v118(v120, v102);
  }

  v135(v108);
  v118(v108, v102);
  sub_100007E88(v147, type metadata accessor for WidgetCreationAttempt);
  sub_100007E88(v39, type metadata accessor for CPTimelineEntry);
  v107(v130, v149);
  return sub_100007EE8(v145);
}

uint64_t sub_100006EAC@<X0>(uint64_t a1@<X8>)
{
  sub_100071D3C();
  if (qword_100094728 != -1)
  {
    swift_once();
  }

  v2 = qword_1000999E8;
  v3 = type metadata accessor for CPTimelineEntry();
  *(a1 + v3[5]) = v2;
  *(a1 + v3[6]) = 1;
  *(a1 + v3[7]) = 0;
  *(a1 + v3[8]) = 1;
  *(a1 + v3[9]) = 1;
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100072AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;

  sub_10003638C(0xD00000000000002FLL, 0x8000000100077760, sub_1000080AC);
}

uint64_t sub_1000070D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007188;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100007188()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000082E8;

  return TimelineProvider.relevance()(a1, a2, a3);
}

unint64_t sub_100007344()
{
  result = qword_100094A90;
  if (!qword_100094A90)
  {
    type metadata accessor for CPTimelineEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094A90);
  }

  return result;
}

double sub_10000739C()
{
  v1 = sub_100071D4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100071D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100071C0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D070(v16, 0.0, 1.0);
  v18 = v17;
  v19 = sub_10006CEA0();
  if (!v19)
  {
    return v18;
  }

  v42 = v12;
  v43 = v11;
  v20 = v19;
  v21 = [v19 teamPlayerID];
  v46 = v15;
  v22 = v21;

  sub_100072B3C();
  v44 = v1;

  v45 = sub_100072BDC();

  sub_100071D6C();
  sub_10000388C(&qword_100094AA8, &qword_100073E70);
  v23 = sub_100071D7C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100073B50;
  (*(v24 + 104))(v27 + v26, enum case for Calendar.Component.hour(_:), v23);
  sub_10000E238(v27);
  swift_setDeallocating();
  (*(v24 + 8))(v27 + v26, v23);
  v28 = v46;
  swift_deallocClassInstance();
  sub_100071D3C();
  sub_100071D5C();

  (*(v2 + 8))(v5, v44);
  (*(v7 + 8))(v10, v6);
  v29 = sub_100071BFC();
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  if (__OFADD__(v45, v31))
  {
    __break(1u);
    goto LABEL_15;
  }

  srand48(v45 + v31);
  v32 = drand48() * 1.84467441e19;
  if (COERCE_UNSIGNED_INT64(fabs(v32 + 0.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v32 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = ((v32 + 0.0) % 0x64);
  v0 = 99.0;
  if (qword_1000946F0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v18 = v18 / v0;
  v33 = sub_100071E7C();
  sub_100007DE8(v33, qword_100099980);
  v34 = sub_100071E5C();
  v35 = sub_100072CFC();
  v36 = os_log_type_enabled(v34, v35);
  v38 = v42;
  v37 = v43;
  if (v36)
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v34, v35, "Generated rand based on player id = %f", v39, 0xCu);
  }

  (*(v38 + 8))(v28, v37);
  return v18;
}

uint64_t sub_1000078A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_100072AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v28 = sub_1000729DC();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptyArrayStorage;
  v13 = type metadata accessor for GameCenterStore();
  v25 = v11;
  v26 = v13;
  sub_100072A9C();
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v5 + 32))(v15 + v14, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v16 = (v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = v30;
  *v16 = v29;
  v16[1] = v17;
  v18 = v27;
  v19 = v11;
  v20 = v28;
  (*(v7 + 16))(v27, v19, v28);
  v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  (*(v7 + 32))(v22 + v21, v18, v20);
  v23 = (v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_100007CCC;
  v23[1] = v15;

  sub_100035E08(sub_100007D80);

  (*(v7 + 8))(v25, v20);
}

uint64_t sub_100007BB8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007BF0()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007CCC(uint64_t a1, int a2)
{
  v5 = *(sub_100072AAC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10000602C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_100007D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTimelineEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100007E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100007EE8(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100094AA0, &qword_100073C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007F50(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094AA0, &qword_100073C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000800C()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000080AC(double a1)
{
  v3 = *(sub_100072AAC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000057B8(v1 + v4, v6, v7, a1);
}

uint64_t sub_10000814C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008190()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100008230(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000729DC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_10002CEA8(a1, a2, v7, v2 + v6, v9, v10);
}

void sub_1000082F0()
{
  v1 = *(v0 + 16);
  v2 = v1 + drand48() * (*(v0 + 24) - v1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1000083BC()
{
  result = sub_10007273C();
  qword_100099960 = result;
  return result;
}

uint64_t sub_1000083F8()
{
  result = sub_10007273C();
  qword_100099968 = result;
  return result;
}

uint64_t sub_100008434()
{
  result = sub_10007273C();
  qword_100099970 = result;
  return result;
}

uint64_t sub_100008470()
{
  result = sub_10007273C();
  qword_100099978 = result;
  return result;
}

double sub_1000084E0()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[13];
  v6(v5, enum case for WidgetFamily.systemExtraLarge(_:), v0, v3);
  sub_100008760(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v7 = v1[1];
  v7(v5, v0);
  if (v9[1] != v9[0])
  {
    (v6)(v5, enum case for WidgetFamily.systemLarge(_:), v0);
    sub_100072C1C();
    sub_100072C1C();
    v7(v5, v0);
  }

  sub_100071F3C();
  return 16.0;
}

uint64_t sub_1000086B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000870C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008760(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000087A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{

  sub_100008800(a1, a2, a3, a4, a5, a6, a7);
}

void sub_100008800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v152 = a7;
  v141 = a5;
  v142 = a6;
  v140[3] = a4;
  v153 = a1;
  v7 = sub_100071C9C();
  v155 = *(v7 - 8);
  v8 = *(v155 + 64);
  __chkstk_darwin(v7);
  v149 = v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v148 = v140 - v11;
  __chkstk_darwin(v12);
  v147 = v140 - v13;
  __chkstk_darwin(v14);
  v144 = v140 - v15;
  __chkstk_darwin(v16);
  v143 = v140 - v17;
  __chkstk_darwin(v18);
  v20 = v140 - v19;
  __chkstk_darwin(v21);
  v23 = v140 - v22;
  __chkstk_darwin(v24);
  v26 = v140 - v25;
  __chkstk_darwin(v27);
  v29 = v140 - v28;
  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  v32 = [v31 URLsForDirectory:13 inDomains:1];

  v33 = sub_100072C4C();
  if (*(v33 + 16))
  {
    v34 = *(v155 + 16);
    v35 = v33 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    v154 = v7;
    v150 = v34;
    v151 = v155 + 16;
    v34(v29, v35, v7);

    v146 = v29;
    sub_100071C4C();
    v145 = v26;
    sub_100071C4C();
    sub_100071C4C();
    v36 = [v30 defaultManager];
    sub_100071C7C();
    v37 = sub_100072B2C();

    v38 = [v36 fileExistsAtPath:v37];

    v39 = &SeededRandomNumberGenerator;
    v40 = v23;
    v41 = v20;
    v42 = v30;
    if (v38)
    {
      v43 = v155;
      v45 = sub_100071CAC();
      v47 = v46;
      v48 = objc_allocWithZone(UIImage);
      sub_10000870C(v45, v47);
      isa = sub_100071CBC().super.isa;
      v148 = [v48 initWithData:isa];

      v153 = v45;
      v149 = v47;
      sub_1000086B8(v45, v47);
      if (qword_1000946F8 != -1)
      {
        swift_once();
      }

      v50 = sub_100071E7C();
      sub_100007DE8(v50, qword_100099998);
      v51 = v143;
      v52 = v154;
      v150(v143, v20, v154);
      v53 = sub_100071E5C();
      v54 = sub_100072CFC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v157[0] = v56;
        *v55 = 136315138;
        v57 = sub_100071C2C();
        v58 = v51;
        v60 = v59;
        v61 = *(v155 + 8);
        v61(v58, v52);
        v62 = sub_100034D20(v57, v60, v157);

        *(v55 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Fetching cached image from %s", v55, 0xCu);
        sub_100007F50(v56);

        v41 = v20;
      }

      else
      {

        v61 = *(v43 + 8);
        v61(v51, v52);
      }

      v131 = v148;
      v132 = v146;
      if (v148)
      {
        swift_beginAccess();
        v133 = v131;
        v134 = v142;

        sub_10004CB20(v131, v141, v134);
        swift_endAccess();
      }

      dispatch_group_leave(v152);

      sub_1000086B8(v153, v149);
      v61(v41, v52);
      v61(v23, v52);
      v61(v145, v52);
      v118 = v132;
      v119 = v52;
LABEL_39:
      v61(v118, v119);
      return;
    }

    v143 = v20;
    v144 = 0;
    v63 = [v30 defaultManager];
    sub_100071C7C();
    v64 = sub_100072B2C();

    v65 = [v63 fileExistsAtPath:v64];

    v66 = v154;
    if (v65)
    {
LABEL_20:
      v147 = v40;
      v86 = v148;
      if (v39[24].weak_ivar_lyt != -1)
      {
        swift_once();
      }

      v87 = sub_100071E7C();
      sub_100007DE8(v87, qword_100099998);
      v150(v86, v153, v66);
      v88 = sub_100071E5C();
      v89 = sub_100072CFC();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = v86;
        v92 = swift_slowAlloc();
        v157[0] = v92;
        *v90 = 136315138;
        v93 = sub_100071C2C();
        v95 = v94;
        v61 = *(v155 + 8);
        v61(v91, v154);
        v96 = sub_100034D20(v93, v95, v157);

        *(v90 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v88, v89, "attempting download of image from %s", v90, 0xCu);
        sub_100007F50(v92);

        v66 = v154;
      }

      else
      {

        v61 = *(v155 + 8);
        v61(v86, v66);
      }

      v97 = v149;
      v98 = v144;
      v99 = sub_100071CAC();
      if (v98)
      {
        v150(v97, v153, v66);
        swift_errorRetain();
        v103 = sub_100071E5C();
        v104 = sub_100072CFC();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v157[0] = swift_slowAlloc();
          *v105 = 136315394;
          v106 = sub_100071C2C();
          v107 = v97;
          v109 = v108;
          v61(v107, v154);
          v110 = sub_100034D20(v106, v109, v157);

          *(v105 + 4) = v110;
          *(v105 + 12) = 2080;
          v156 = v98;
          swift_errorRetain();
          sub_10000388C(&qword_100094BF8, qword_100073CB0);
          v111 = sub_100072B4C();
          v113 = sub_100034D20(v111, v112, v157);

          *(v105 + 14) = v113;
          _os_log_impl(&_mh_execute_header, v103, v104, "unable to download of image from %s, error: %s", v105, 0x16u);
          swift_arrayDestroy();
          v66 = v154;
        }

        else
        {

          v61(v97, v66);
        }

        v114 = v147;
        v115 = v143;
        dispatch_group_leave(v152);

        v117 = v145;
        v116 = v146;
      }

      else
      {
        v101 = v99;
        v102 = v100;
        sub_100071CDC();
        v135 = objc_allocWithZone(UIImage);
        sub_10000870C(v101, v102);
        v136 = sub_100071CBC().super.isa;
        v137 = [v135 initWithData:v136];

        sub_1000086B8(v101, v102);
        if (v137)
        {
          swift_beginAccess();
          v138 = v142;

          v139 = v137;
          sub_10004CB20(v137, v141, v138);
          swift_endAccess();
        }

        dispatch_group_leave(v152);

        sub_1000086B8(v101, v102);
        v117 = v145;
        v116 = v146;
        v114 = v147;
        v115 = v143;
      }

      v61(v115, v66);
      v61(v114, v66);
      v61(v117, v66);
      v118 = v116;
      v119 = v66;
      goto LABEL_39;
    }

    if (qword_1000946F8 != -1)
    {
      swift_once();
    }

    v67 = sub_100071E7C();
    sub_100007DE8(v67, qword_100099998);
    v68 = v147;
    v150(v147, v23, v66);
    v69 = sub_100071E5C();
    v70 = sub_100072CFC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v157[0] = v72;
      *v71 = 136315138;
      sub_100008760(&qword_100094C00, &type metadata accessor for URL);
      v73 = sub_100072FEC();
      v74 = v68;
      v76 = v75;
      v77 = *(v155 + 8);
      v77(v74, v154);
      v78 = sub_100034D20(v73, v76, v157);

      *(v71 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v69, v70, "Creating directory for cached images at %s", v71, 0xCu);
      sub_100007F50(v72);
      v66 = v154;

      v39 = &SeededRandomNumberGenerator;

      v79 = v77;
    }

    else
    {

      v79 = *(v155 + 8);
      v79(v68, v66);
    }

    v80 = [v42 defaultManager];
    sub_100071C3C(v81);
    v83 = v82;
    v157[0] = 0;
    v84 = [v80 createDirectoryAtURL:v82 withIntermediateDirectories:1 attributes:0 error:v157];

    if (v84)
    {
      v85 = v157[0];
      goto LABEL_20;
    }

    v120 = v157[0];
    v121 = sub_100071C1C();

    swift_willThrow();
    swift_errorRetain();
    v122 = sub_100071E5C();
    v123 = sub_100072CFC();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = v40;
      v126 = swift_slowAlloc();
      v157[0] = v126;
      *v124 = 136315138;
      v156 = v121;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v127 = sub_100072B4C();
      v129 = sub_100034D20(v127, v128, v157);
      v66 = v154;

      *(v124 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v122, v123, "Unable to create remoteImageDirectory directory %s.", v124, 0xCu);
      sub_100007F50(v126);
      v40 = v125;
    }

    v130 = v143;
    dispatch_group_leave(v152);

    v79(v130, v66);
    v79(v40, v66);
    v79(v145, v66);
    v79(v146, v66);
  }

  else
  {

    v44 = v152;

    dispatch_group_leave(v44);
  }
}

void sub_10000997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{

  sub_1000087A8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000099E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
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

    return (v10 + 1);
  }
}

uint64_t sub_100009AB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AFTimelineEntry()
{
  result = qword_100094C60;
  if (!qword_100094C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009BBC()
{
  sub_100071D4C();
  if (v0 <= 0x3F)
  {
    sub_100009C54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009C54()
{
  if (!qword_100094C70)
  {
    v0 = sub_100072C9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100094C70);
    }
  }
}

__n128 sub_100009CA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100009CB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100009D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009D50@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = *v1;
  v5 = sub_100072D2C();
  v7 = v6;

  sub_10000388C(&qword_100094CB0, &qword_100073D90);
  sub_100009F94();
  sub_100004A78();
  v8 = sub_100072C0C();
  v10 = v9;

  v12._countAndFlagsBits = v8;
  v12._object = v10;
  sub_100072B7C(v12);

  *a1 = v5;
  a1[1] = v7;
  return result;
}

int *sub_100009E34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100071D4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071D3C();
  v7 = sub_10006CEA0();
  v8 = v7;
  if (v7)
  {
  }

  v9 = sub_10006CEA0();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v11 = 0;
  }

  (*(v3 + 32))(a1, v6, v2);
  result = type metadata accessor for AFTimelineEntry();
  *(a1 + result[5]) = v8 != 0;
  *(a1 + result[6]) = 0;
  *(a1 + result[7]) = 1;
  *(a1 + result[8]) = v11;
  *(a1 + result[9]) = &_swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_100009F94()
{
  result = qword_100094CB8;
  if (!qword_100094CB8)
  {
    sub_1000038D4(&qword_100094CB0, &qword_100073D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094CB8);
  }

  return result;
}

uint64_t sub_10000A050(void **a1, uint64_t a2, char **a3)
{
  v3 = *a1;
  v60 = &_swiftEmptySetSingleton;
  v4 = [v3 relationships];
  v5 = [v4 players];

  v57 = v3;
  if (!v5)
  {
    goto LABEL_30;
  }

  sub_10000F74C(0, &qword_100094D00, GKPlayerActivityRelationshipPlayer_ptr);
  v6 = sub_100072C4C();

  if (v6 >> 62)
  {
LABEL_22:
    v7 = sub_100072EDC();
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v9 = &_swiftEmptyArrayStorage;
      do
      {
        v10 = v8;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = sub_100072E6C();
          }

          else
          {
            if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v11 = *(v6 + 8 * v10 + 32);
          }

          v12 = v11;
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v13 = [v11 identifier];
          if (v13)
          {
            break;
          }

          ++v10;
          if (v8 == v7)
          {
            goto LABEL_24;
          }
        }

        v14 = v13;
        v53 = sub_100072B3C();
        v16 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10000CD60(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_10000CD60((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v19 = &v9[16 * v18];
        *(v19 + 4) = v53;
        *(v19 + 5) = v16;
      }

      while (v8 != v7);
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_24:

  v20 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v21 = *(v9 + 2);
  if (v21)
  {
    v22 = 0;
    v23 = (v9 + 40);
    do
    {
      if (v22 >= *(v9 + 2))
      {
        __break(1u);
        goto LABEL_50;
      }

      ++v22;
      v24 = *(v23 - 1);
      v25 = *v23;

      v6 = &v59;
      sub_10000D114(&v58, v24, v25);

      v23 += 2;
    }

    while (v21 != v22);
    v20 = v59;
  }

  sub_10000A5C8(v20);
  v3 = v57;
LABEL_30:
  v26 = [v3 relationships];
  v27 = [v26 games];

  if (!v27)
  {
    goto LABEL_60;
  }

  sub_10000F74C(0, &qword_100094CF8, GKPlayerActivityRelationshipGame_ptr);
  v6 = sub_100072C4C();

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100072EDC())
  {
    v29 = 0;
    v30 = &_swiftEmptyArrayStorage;
LABEL_34:
    v31 = v29;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v32 = sub_100072E6C();
      }

      else
      {
        if (v31 >= *(v21 + 16))
        {
          goto LABEL_51;
        }

        v32 = *(v6 + 8 * v31 + 32);
      }

      v33 = v32;
      v29 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v34 = [v32 identifier];
      if (v34)
      {
        v35 = v34;
        v36 = sub_100072B3C();
        v52 = v37;
        v54 = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_10000CD60(0, *(v30 + 2) + 1, 1, v30);
        }

        v39 = *(v30 + 2);
        v38 = *(v30 + 3);
        if (v39 >= v38 >> 1)
        {
          v30 = sub_10000CD60((v38 > 1), v39 + 1, 1, v30);
        }

        *(v30 + 2) = v39 + 1;
        v40 = &v30[16 * v39];
        *(v40 + 4) = v54;
        *(v40 + 5) = v52;
        if (v29 != i)
        {
          goto LABEL_34;
        }

        goto LABEL_54;
      }

      ++v31;
      if (v29 == i)
      {
        goto LABEL_54;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v30 = &_swiftEmptyArrayStorage;
LABEL_54:

  v41 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v42 = *(v30 + 2);
  if (!v42)
  {
LABEL_59:

    sub_10000A5C8(v41);
    v3 = v57;
LABEL_60:
    v43 = sub_10000D264(a2, &v60);
    v44 = *a3;
    v42 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v44;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  v43 = 0;
  v44 = v30 + 40;
  while (v43 < *(v30 + 2))
  {
    ++v43;
    v45 = *(v44 - 1);
    v46 = *v44;

    sub_10000D114(&v58, v45, v46);

    v44 += 16;
    if (v42 == v43)
    {
      v41 = v59;
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_65:
  v44 = sub_10000CC44(0, *(v44 + 2) + 1, 1, v44);
  *a3 = v44;
LABEL_61:
  v49 = *(v44 + 2);
  v48 = *(v44 + 3);
  if (v49 >= v48 >> 1)
  {
    v44 = sub_10000CC44((v48 > 1), v49 + 1, 1, v44);
    *a3 = v44;
  }

  *(v44 + 2) = v49 + 1;
  v50 = &v44[24 * v49];
  *(v50 + 4) = v42;
  *(v50 + 5) = v43;
  v50[48] = 0;
}

uint64_t sub_10000A5C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10000D114(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10000A6CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = sub_100072AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v24 = type metadata accessor for GameCenterStore();
  v13 = *(v7 + 16);
  v13(v12, a1, v6);
  v13(v9, v12, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v7 + 32))(v15 + v14, v12, v6);

  v16 = sub_10006CEA0();
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() proxyForPlayer:v16];
    v19 = [v18 utilityServicePrivate];

    v20 = swift_allocObject();
    v20[2] = v24;
    v20[3] = sub_10000EBC4;
    v20[4] = v15;
    aBlock[4] = sub_10000F5D4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002CE08;
    aBlock[3] = &unk_1000923B8;
    v21 = _Block_copy(aBlock);

    [v19 getWidgetStoreBagValueWithHandler:v21];

    _Block_release(v21);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10000F144(a2, a3, v9, 1.0);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000A9A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v97 = a5;
  v98 = a4;
  v93 = a2;
  v7 = sub_100071D4C();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  __chkstk_darwin(v7);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v89 - v12;
  __chkstk_darwin(v14);
  v94 = &v89 - v15;
  v16 = type metadata accessor for AFTimelineEntry();
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v89 - v21;
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  v26 = sub_1000729DC();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v89 - v31;
  if (a3 || !a1)
  {
    sub_100071D3C();
    v40 = sub_10006CEA0();
    v41 = v40;
    if (v40)
    {
    }

    v42 = sub_10006CEA0();
    if (v42)
    {
      v43 = v42;
      v44 = [v42 hasAcknowledgedLatestGDPR];
    }

    else
    {
      v44 = 0;
    }

    (*(v95 + 32))(v19, v10, v96);
    v19[v16[5]] = v41 != 0;
    v45 = v16[6];
    v19[v45] = 0;
    v19[v16[7]] = 1;
    v19[v16[8]] = v44;
    *&v19[v16[9]] = &_swiftEmptyArrayStorage;
    if (!a3)
    {
      goto LABEL_26;
    }

    v100 = a3;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    sub_10000F74C(0, &qword_100094D20, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v46 = v99;
    v47 = [v99 domain];
    v48 = sub_100072B3C();
    v50 = v49;

    if (v48 == 0xD000000000000026 && 0x80000001000778A0 == v50)
    {
    }

    else
    {
      v51 = sub_100072FFC();

      if ((v51 & 1) == 0)
      {

LABEL_25:
        v19[v45] = 1;
LABEL_26:
        v98(v19);
        v53 = v19;
        return sub_10000EB64(v53);
      }
    }

    v52 = [v46 code];

    if (v52 == 404)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v35 = (a1 >> 62);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_5;
    }

LABEL_75:
    if (qword_100094708 == -1)
    {
LABEL_76:
      v80 = sub_100071E7C();
      sub_100007DE8(v80, qword_1000999C8);
      v81 = sub_100071E5C();
      v82 = sub_100072CFC();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "getTimeline, showing empty state", v83, 2u);
      }

      sub_100071D3C();
      v84 = sub_10006CEA0();
      v85 = v84;
      if (v84)
      {
      }

      v86 = sub_10006CEA0();
      if (v86)
      {
        v87 = v86;
        v88 = [v86 hasAcknowledgedLatestGDPR];
      }

      else
      {
        v88 = 0;
      }

      (*(v95 + 32))(v22, v13, v96);
      *(v22 + v16[5]) = v85 != 0;
      *(v22 + v16[6]) = 0;
      *(v22 + v16[7]) = 0;
      *(v22 + v16[8]) = v88;
      *(v22 + v16[9]) = &_swiftEmptyArrayStorage;
      v98(v22);
      v53 = v22;
      return sub_10000EB64(v53);
    }

LABEL_86:
    swift_once();
    goto LABEL_76;
  }

  v77 = v32;
  v78 = v33;
  v90 = &v89 - v31;
  v79 = sub_100072EDC();
  v34 = v90;
  v33 = v78;
  v32 = v77;
  if (v79 < 1)
  {
    goto LABEL_75;
  }

LABEL_5:
  v36 = v32;
  v37 = v33;
  v13 = v34;
  sub_100072A9C();
  v38 = *(v37 + 16);
  v90 = v13;
  v38(v29, v13, v36);
  v91 = v37;
  v92 = v36;
  v39 = (*(v37 + 88))(v29, v36);
  if (v39 == enum case for WidgetFamily.systemSmall(_:))
  {
    v22 = 1;
    goto LABEL_29;
  }

  if (v39 == enum case for WidgetFamily.systemMedium(_:))
  {
    v22 = 2;
    goto LABEL_29;
  }

  if (v39 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_23;
  }

  if (v39 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v22 = 8;
  }

  else
  {
    v22 = 1;
    if (v39 != enum case for WidgetFamily.accessoryCircular(_:) && v39 != enum case for WidgetFamily.accessoryRectangular(_:) && v39 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v91 + 8))(v29, v92);
LABEL_23:
      v22 = 4;
    }
  }

LABEL_29:
  if (v35)
  {
    if (a1 < 0)
    {
      v56 = a1;
    }

    else
    {
      v56 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v57 = sub_100072EDC();
    if (sub_100072EDC() < 0)
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v57 >= v22)
    {
      v58 = v22;
    }

    else
    {
      v58 = v57;
    }

    if (v57 >= 0)
    {
      v55 = v58;
    }

    else
    {
      v55 = v22;
    }

    v54 = sub_100072EDC();
  }

  else
  {
    v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54 >= v22)
    {
      v55 = v22;
    }

    else
    {
      v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  if (v54 < v55)
  {
    __break(1u);
    goto LABEL_86;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    if (v55)
    {
      sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);

      v59 = 0;
      do
      {
        v60 = v59 + 1;
        sub_100072E5C(v59);
        v59 = v60;
      }

      while (v55 != v60);
      if (v35)
      {
LABEL_55:

        a1 = sub_100072EEC();
        v56 = v62;
        v57 = v63;
        v35 = v94;
        if ((v63 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
  }

  v56 = 0;
  a1 &= 0xFFFFFFFFFFFFFF8uLL;
  v61 = a1 + 32;
  v57 = (2 * v55) | 1;
  v35 = v94;
  if ((v57 & 1) == 0)
  {
LABEL_56:
    sub_10000E060(a1, v61, v56, v57);
    v65 = v64;
LABEL_63:
    swift_unknownObjectRelease();
    goto LABEL_64;
  }

LABEL_57:
  v13 = v61;
  sub_10007300C();
  swift_unknownObjectRetain_n();
  v66 = swift_dynamicCastClass();
  if (!v66)
  {
    swift_unknownObjectRelease();
    v66 = &_swiftEmptyArrayStorage;
  }

  v67 = v66[2];

  if (__OFSUB__(v57 >> 1, v56))
  {
    goto LABEL_88;
  }

  if (v67 != (v57 >> 1) - v56)
  {
LABEL_89:
    swift_unknownObjectRelease();
    v61 = v13;
    goto LABEL_56;
  }

  v65 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v65)
  {
    v65 = &_swiftEmptyArrayStorage;
    goto LABEL_63;
  }

LABEL_64:
  sub_100071D3C();
  v68 = sub_10006CEA0();
  v69 = v68;
  if (v68)
  {
  }

  v70 = sub_10006CEA0();
  if (v70)
  {
    v71 = v70;
    v72 = [v70 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v72 = 0;
  }

  v73 = v69 != 0;
  v74 = v90;
  v75 = sub_10000E658(v65, v93, v90);

  (*(v95 + 32))(v25, v35, v96);
  v25[v16[5]] = v73;
  v25[v16[6]] = 0;
  v25[v16[7]] = 0;
  v25[v16[8]] = v72;
  *&v25[v16[9]] = v75;
  v98(v25);
  sub_10000EB64(v25);
  return (*(v91 + 8))(v74, v92);
}

uint64_t sub_10000B31C(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v151 = a7;
  v147 = a5;
  v148 = a4;
  v161 = a2;
  v9 = sub_100072A8C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v146 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000388C(&qword_100094CC8, &qword_100073E30);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v159 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v145 = &v138 - v17;
  v167 = sub_100071D4C();
  v149 = *(v167 - 8);
  v18 = *(v149 + 64);
  __chkstk_darwin(v167);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v138 - v22;
  __chkstk_darwin(v24);
  v26 = &v138 - v25;
  __chkstk_darwin(v27);
  v162 = &v138 - v28;
  v166 = type metadata accessor for AFTimelineEntry();
  v163 = *(v166 - 8);
  v29 = *(v163 + 64);
  __chkstk_darwin(v166);
  v160 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v169 = &v138 - v32;
  __chkstk_darwin(v33);
  v164 = &v138 - v34;
  __chkstk_darwin(v35);
  v155 = &v138 - v36;
  v37 = sub_1000729DC();
  v144 = *(v37 - 8);
  v38 = *(v144 + 64);
  __chkstk_darwin(v37);
  v40 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v138 - v42;
  __chkstk_darwin(v44);
  v165 = &v138 - v46;
  if (a3 || !a1)
  {
    sub_10000388C(&qword_100094CD0, &qword_100073E38);
    v55 = *(v163 + 72);
    v56 = (*(v163 + 80) + 32) & ~*(v163 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100073B50;
    sub_100009E34(v57 + v56);
    sub_100071D0C();
    sub_100072A7C();
    (*(v149 + 8))(v23, v167);
    sub_10000F794(&qword_100094CC0, type metadata accessor for AFTimelineEntry);
    v58 = v145;
LABEL_154:
    sub_100072ABC();
    v148(v58);
    return (*(v13 + 8))(v58, v12);
  }

  v168 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47 >= 1)
    {
      goto LABEL_5;
    }

LABEL_145:
    if (qword_100094708 == -1)
    {
LABEL_146:
      v119 = sub_100071E7C();
      sub_100007DE8(v119, qword_1000999C8);
      v120 = sub_100071E5C();
      v121 = sub_100072CFC();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&_mh_execute_header, v120, v121, "getTimeline, showing empty state", v122, 2u);
      }

      sub_10000388C(&qword_100094CD0, &qword_100073E38);
      v123 = *(v163 + 72);
      v124 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_100073B50;
      v126 = v125 + v124;
      sub_100071D3C();
      v127 = sub_10006CEA0();
      v128 = v127;
      if (v127)
      {
      }

      v129 = sub_10006CEA0();
      v130 = v23;
      if (v129)
      {
        v131 = v12;
        v132 = v129;
        v133 = [v129 hasAcknowledgedLatestGDPR];

        v12 = v131;
      }

      else
      {
        v133 = 0;
      }

      v134 = v149;
      v135 = v20;
      v136 = v167;
      (*(v149 + 32))(v126, v135, v167);
      v137 = v166;
      *(v126 + *(v166 + 20)) = v128 != 0;
      *(v126 + v137[6]) = 0;
      *(v126 + v137[7]) = 0;
      *(v126 + v137[8]) = v133;
      *(v126 + v137[9]) = &_swiftEmptyArrayStorage;
      sub_100071D0C();
      sub_100072A7C();
      (*(v134 + 8))(v130, v136);
      sub_10000F794(&qword_100094CC0, type metadata accessor for AFTimelineEntry);
      v58 = v159;
      goto LABEL_154;
    }

LABEL_163:
    swift_once();
    goto LABEL_146;
  }

LABEL_144:
  v118 = v45;
  v47 = sub_100072EDC();
  v45 = v118;
  if (v47 < 1)
  {
    goto LABEL_145;
  }

LABEL_5:
  v159 = v47;
  v156 = v26;
  v141 = v23;
  v142 = v13;
  v48 = v165;
  v49 = v45;
  sub_100072A9C();
  v50 = v144;
  v20 = *(v144 + 16);
  (v20)(v43, v48, v49);
  v51 = *(v50 + 88);
  v23 = v50 + 88;
  v26 = v51;
  v143 = v49;
  v52 = (v51)(v43, v49);
  v13 = enum case for WidgetFamily.systemSmall(_:);
  if (v52 == enum case for WidgetFamily.systemSmall(_:))
  {
    v53 = 1;
    v54 = v159;
    goto LABEL_14;
  }

  v54 = v159;
  if (v52 == enum case for WidgetFamily.systemMedium(_:))
  {
    v53 = 2;
    goto LABEL_14;
  }

  if (v52 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_11;
  }

  if (v52 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v53 = 8;
  }

  else
  {
    v53 = 1;
    if (v52 != enum case for WidgetFamily.accessoryCircular(_:) && v52 != enum case for WidgetFamily.accessoryRectangular(_:) && v52 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v144 + 8))(v43, v143);
      v54 = v159;
LABEL_11:
      v53 = 4;
    }
  }

LABEL_14:
  v59 = ceilf(v54 / v53);
  if ((LODWORD(v59) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_156;
  }

  if (v59 <= -9.2234e18)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v59 >= 9.2234e18)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    swift_once();
LABEL_113:
    v109 = sub_100071E7C();
    sub_100007DE8(v109, qword_1000999C8);
    v20 = v151;

    v110 = sub_100071E5C();
    v111 = sub_100072CFC();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 134217984;
      swift_beginAccess();
      *(v112 + 4) = *(*(v20 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v110, v111, "getTimeline, constructed %ld timelineEntries", v112, 0xCu);
    }

    else
    {
    }

    if (__OFADD__(v43, 1))
    {
      __break(1u);
    }

    else if (((v43 + 1) * v158) >> 64 == ((v43 + 1) * v158) >> 63)
    {
      v113 = v141;
      sub_100071D0C();
      v114 = v151;
      swift_beginAccess();
      v115 = *(v114 + 16);

      sub_100072A7C();
      sub_10000F794(&qword_100094CC0, type metadata accessor for AFTimelineEntry);
      v116 = v145;
      sub_100072ABC();
      v49(v116);
      (*(v23 + 8))(v116, v140);
      (*(v149 + 8))(v113, v167);
      return (*(v144 + 8))(v165, v143);
    }

    __break(1u);
    goto LABEL_161;
  }

  v157 = v53;
  v140 = v12;
  v43 = v59;
  v60 = v143;
  (v20)(v40, v165, v143);
  v61 = (v26)(v40, v60);
  v49 = v148;
  v12 = v147;
  v23 = v142;
  if (v61 == v13)
  {
    goto LABEL_18;
  }

  if (v61 == enum case for WidgetFamily.systemMedium(_:))
  {
    v158 = 1200;
    if (!v43)
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v61 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v61 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v158 = 4800;
        if (!v43)
        {
          goto LABEL_99;
        }

        goto LABEL_19;
      }

      if (v61 == enum case for WidgetFamily.accessoryCircular(_:) || v61 == enum case for WidgetFamily.accessoryRectangular(_:) || v61 == enum case for WidgetFamily.accessoryInline(_:))
      {
LABEL_18:
        v158 = 600;
        if (v43)
        {
          goto LABEL_19;
        }

LABEL_99:
        sub_100071D3C();
        v96 = sub_10006CEA0();
        v97 = v96;
        if (v96)
        {
        }

        v98 = sub_10006CEA0();
        if (v98)
        {
          v99 = v98;
          v100 = [v98 hasAcknowledgedLatestGDPR];
        }

        else
        {
          v100 = 0;
        }

        v101 = sub_10000E658(a1, v161, v165);
        v102 = v155;
        (*(v149 + 32))(v155, v162, v167);
        v103 = v166;
        *(v102 + *(v166 + 20)) = v97 != 0;
        *(v102 + v103[6]) = 0;
        *(v102 + v103[7]) = 0;
        *(v102 + v103[8]) = v100;
        *(v102 + v103[9]) = v101;
        sub_10000EA9C(v102, v164);
        v104 = v151;
        swift_beginAccess();
        v105 = *(v104 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v104 + 16) = v105;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v105 = sub_10000CE94(0, v105[2] + 1, 1, v105, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
          *(v151 + 16) = v105;
        }

        v108 = v105[2];
        v107 = v105[3];
        if (v108 >= v107 >> 1)
        {
          v105 = sub_10000CE94(v107 > 1, v108 + 1, 1, v105, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
        }

        v105[2] = v108 + 1;
        sub_10000EB00(v164, v105 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v108);
        *(v151 + 16) = v105;
        swift_endAccess();
        sub_10000EB64(v102);
LABEL_112:
        if (qword_100094708 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_158;
      }

      (*(v144 + 8))(v40, v143);
    }

    v158 = 2400;
    if (!v43)
    {
      goto LABEL_99;
    }
  }

LABEL_19:
  if (__OFSUB__(v43, 1))
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v139 = v43;
  v12 = v151;
  if (v43 - 1 < 0)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v45 = sub_100071E3C();
  v153 = v45;
  v23 = 0;
  v155 = (a1 & 0xC000000000000001);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v62 = a1;
  }

  else
  {
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v164 = v62;
  v162 = (a1 & 0xFFFFFFFFFFFFFF8);
  v150 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v152 = (v149 + 32);
  v63 = v157;
  v13 = v157;
  v154 = v43 - 1;
  while (1)
  {
    if (v159 >= v13)
    {
      v43 = v13;
    }

    else
    {
      v43 = v159;
    }

    v64 = v23 * v63;
    if ((v23 * v63) >> 64 != (v23 * v63) >> 63)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v65 = (v64 + v63);
    if (__OFADD__(v64, v63))
    {
      goto LABEL_131;
    }

    if (v159 < v65)
    {
      v65 = v159;
    }

    v66 = __OFSUB__(v65, 1);
    v67 = v65 - 1;
    if (v66)
    {
      goto LABEL_132;
    }

    if (v67 < v64)
    {
      goto LABEL_133;
    }

    v20 = (v67 + 1);
    if (__OFADD__(v67, 1))
    {
      goto LABEL_134;
    }

    if (v168)
    {
      v45 = sub_100072EDC();
      if (v45 < v64)
      {
        goto LABEL_135;
      }

      v45 = sub_100072EDC();
    }

    else
    {
      v45 = *(v162 + 2);
      if (v45 < v64)
      {
        goto LABEL_135;
      }
    }

    if (v45 < v20)
    {
      goto LABEL_136;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_137;
    }

    if (!v155)
    {

LABEL_51:
      v70 = (2 * v20) | 1;
      v26 = v162;
      v43 = v150;
LABEL_62:
      v20 = sub_10007300C();
      swift_unknownObjectRetain_n();
      v77 = swift_dynamicCastClass();
      if (!v77)
      {
        swift_unknownObjectRelease();
        v77 = &_swiftEmptyArrayStorage;
      }

      v12 = v77[2];

      v71 = v70 >> 1;
      v66 = __OFSUB__(v70 >> 1, v64);
      v40 = (v70 >> 1) - v64;
      if (v66)
      {
        goto LABEL_142;
      }

      if (v12 == v40)
      {
        v20 = swift_dynamicCastClass();
        v45 = swift_unknownObjectRelease_n();
        v12 = v151;
        if (v20)
        {
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      swift_unknownObjectRelease();
      v12 = v151;
      if (!v40)
      {
        goto LABEL_72;
      }

      goto LABEL_57;
    }

    if (v20 < v64)
    {
      goto LABEL_140;
    }

    if (v64 == v20)
    {
    }

    else
    {
      if (v64 >= v20)
      {
        goto LABEL_143;
      }

      sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);

      v68 = v64;
      do
      {
        v69 = v68 + 1;
        sub_100072E5C(v68);
        v68 = v69;
      }

      while (v43 != v69);
    }

    if (!v168)
    {
      goto LABEL_51;
    }

    v26 = sub_100072EEC();
    v43 = v76;
    v64 = v74;
    v70 = v75;
    if (v75)
    {
      goto LABEL_62;
    }

    v71 = v75 >> 1;
    v40 = (v75 >> 1) - v74;
    v20 = __OFSUB__(v75 >> 1, v74);
    v45 = swift_unknownObjectRetain();
    if (v20)
    {
      goto LABEL_141;
    }

    if (!v40)
    {
LABEL_72:
      swift_unknownObjectRelease();
LABEL_73:
      v20 = &_swiftEmptyArrayStorage;
      goto LABEL_74;
    }

LABEL_57:
    if (v40 < 1)
    {
      v20 = &_swiftEmptyArrayStorage;
    }

    else
    {
      sub_10000388C(&qword_100094CE8, &qword_100073E40);
      v20 = swift_allocObject();
      v72 = j__malloc_size(v20);
      v73 = v72 - 32;
      if (v72 < 32)
      {
        v73 = v72 - 25;
      }

      *(v20 + 16) = v40;
      *(v20 + 24) = (2 * (v73 >> 3)) | 1;
    }

    swift_unknownObjectRelease();
    if (v64 == v71)
    {
      break;
    }

    sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);
    swift_arrayInitWithCopy();
LABEL_74:
    v45 = swift_unknownObjectRelease();
LABEL_75:
    if ((v23 * v158) >> 64 != (v23 * v158) >> 63)
    {
      goto LABEL_138;
    }

    v78 = v156;
    sub_100071D0C();
    v26 = v153;
    v79 = sub_100071E1C();
    v80 = sub_100071E2C();

    if ((v80 & 1) == 0)
    {
      v81 = [objc_opt_self() authenticatedLocalPlayers];
      v82 = sub_100072C4C();

      if (*(v82 + 16))
      {
        sub_10000EA40(v82 + 32, v171);

        sub_10000F74C(0, &qword_100094CE0, GKLocalPlayer_ptr);
        if (swift_dynamicCast())
        {

          v43 = 1;
          goto LABEL_82;
        }
      }

      else
      {
      }
    }

    v43 = 0;
LABEL_82:
    v83 = sub_100071E1C();
    v84 = sub_100071E2C();

    if (v84)
    {
      goto LABEL_87;
    }

    v85 = [objc_opt_self() authenticatedLocalPlayers];
    v26 = &type metadata for Any;
    v86 = sub_100072C4C();

    if (!*(v86 + 16))
    {

LABEL_87:
      v88 = 0;
      goto LABEL_88;
    }

    sub_10000EA40(v86 + 32, v171);

    sub_10000F74C(0, &qword_100094CE0, GKLocalPlayer_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_87;
    }

    v87 = v170;
    v88 = [v170 hasAcknowledgedLatestGDPR];

LABEL_88:
    v89 = sub_10000E658(v20, v161, v165);

    v90 = v169;
    (*v152)(v169, v78, v167);
    v91 = v166;
    *(v90 + *(v166 + 20)) = v43;
    *(v90 + v91[6]) = 0;
    *(v90 + v91[7]) = 0;
    *(v90 + v91[8]) = v88;
    *(v90 + v91[9]) = v89;
    v92 = v160;
    sub_10000EA9C(v90, v160);
    swift_beginAccess();
    v93 = *(v12 + 16);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 16) = v93;
    if ((v94 & 1) == 0)
    {
      v93 = sub_10000CE94(0, v93[2] + 1, 1, v93, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
      *(v12 + 16) = v93;
    }

    v20 = v93[2];
    v95 = v93[3];
    v40 = v20 + 1;
    if (v20 >= v95 >> 1)
    {
      v93 = sub_10000CE94(v95 > 1, v20 + 1, 1, v93, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
    }

    v93[2] = v40;
    sub_10000EB00(v92, v93 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v20);
    *(v12 + 16) = v93;
    swift_endAccess();
    v45 = sub_10000EB64(v169);
    if (v23 == v154)
    {
      v49 = v148;
      v12 = v147;
      v23 = v142;
      v43 = v139;
      goto LABEL_112;
    }

    v63 = v157;
    v13 += v157;
    v66 = __OFADD__(v23++, 1);
    if (v66)
    {
      goto LABEL_139;
    }
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_10000C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100072AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyArrayStorage;
  type metadata accessor for GameCenterStore();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  sub_10002BCA4(sub_10000CB64, v11);
}

uint64_t sub_10000CA54()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CA8C()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CB64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100072AAC() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000B31C(a1, a2, a3, v9, v10, v3 + v8, v11);
}

char *sub_10000CC44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000388C(&qword_100094CF0, &qword_100073E48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000CD60(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000388C(&qword_100094D10, &qword_100073E58);
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

size_t sub_10000CE94(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000388C(a5, a6);
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

uint64_t sub_10000D070(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_10000D070(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10000D114(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10007303C();
  sub_100072B6C();
  v9 = sub_10007305C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100072FFC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10000DB4C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000D264(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10000D3D0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10000D624(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_10000D3D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = 0;
  v4 = a3;
  v30 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_14:
    v15 = v12 | (v5 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *a4;
    if (!*(*a4 + 16))
    {
      v11 = v16[1];

      goto LABEL_6;
    }

    v36 = v9;
    v19 = *v16;
    v32 = v15;
    v20 = *(*(v4 + 56) + 8 * v15);
    v21 = *(v18 + 40);
    sub_10007303C();

    v35 = v20;

    sub_100072B6C();
    v22 = sub_10007305C();
    v23 = -1 << *(v18 + 32);
    v24 = v22 & ~v23;
    if ((*(v18 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      while (1)
      {
        v26 = (*(v18 + 48) + 16 * v24);
        v27 = *v26 == v19 && v26[1] == v17;
        if (v27 || (sub_100072FFC() & 1) != 0)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v18 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v4 = a3;
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v28 = __OFADD__(v33++, 1);
      v9 = v36;
      if (v28)
      {
        __break(1u);
        return sub_10000D6AC(v30, a2, v33, v4);
      }
    }

    else
    {
LABEL_23:

      v4 = a3;
      v9 = v36;
LABEL_6:
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_10000D6AC(v30, a2, v33, v4);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_10000D624(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10000D3D0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10000D6AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000388C(&qword_100094D18, &unk_100073E60);
  result = sub_100072F1C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_10007303C();

    v34 = v21;
    sub_100072B6C();
    result = sub_10007305C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_10000D8EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000388C(&qword_100094D08, &qword_100073E50);
  result = sub_100072E1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10000DB4C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000D8EC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000DCCC();
      goto LABEL_16;
    }

    sub_10000DE28(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10007303C();
  sub_100072B6C();
  result = sub_10007305C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100072FFC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10007301C();
  __break(1u);
  return result;
}

void *sub_10000DCCC()
{
  v1 = v0;
  sub_10000388C(&qword_100094D08, &qword_100073E50);
  v2 = *v0;
  v3 = sub_100072E0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000DE28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000388C(&qword_100094D08, &qword_100073E50);
  result = sub_100072E1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10007303C();

      sub_100072B6C();
      result = sub_10007305C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

void sub_10000E060(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000388C(&qword_100094CE8, &qword_100073E40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10000E154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for AppDisplayData();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000388C(&qword_100094CE8, &qword_100073E40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_10000E238(uint64_t a1)
{
  v2 = sub_100071D7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10000388C(&qword_100094D28, &qword_100073E78);
    v10 = sub_100072E2C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10000F794(&qword_100094D30, &type metadata accessor for Calendar.Component);
      v18 = sub_100072B0C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10000F794(&qword_100094D38, &type metadata accessor for Calendar.Component);
          v25 = sub_100072B1C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10000E558(unint64_t a1, uint64_t a2, char **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100072EDC())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100072E6C();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10000A050(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
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

uint64_t sub_10000E658(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v35 = &_swiftEmptyArrayStorage;

  sub_10000E558(a1, a2, &v35);

  v14 = v35;
  v15 = *(v35 + 2);
  v16 = v7[2];
  v34 = a3;
  v16(v13, a3, v6);
  v33 = v7;
  v17 = v7[11];
  v18 = v17(v13, v6);
  v19 = enum case for WidgetFamily.systemSmall(_:);
  if (v18 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v18 == enum case for WidgetFamily.systemMedium(_:))
  {
    if (v15 > 1)
    {
      return v14;
    }
  }

  else
  {
    if (v18 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v18 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        if (v15 < 8)
        {
          goto LABEL_12;
        }

        return v14;
      }

      if (v18 == enum case for WidgetFamily.accessoryCircular(_:) || v18 == enum case for WidgetFamily.accessoryRectangular(_:) || v18 == enum case for WidgetFamily.accessoryInline(_:))
      {
LABEL_2:
        if (!v15)
        {
          goto LABEL_12;
        }

        return v14;
      }

      (v33[1])(v13, v6);
    }

    if (v15 >= 4)
    {
      return v14;
    }
  }

LABEL_12:
  v20 = *(v14 + 2);
  v16(v10, v34, v6);
  result = v17(v10, v6);
  if (result != v19)
  {
    if (result == enum case for WidgetFamily.systemMedium(_:))
    {
      v22 = 2;
      v23 = v20 == 2;
      if (v20 > 2)
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    }

    if (result == enum case for WidgetFamily.systemLarge(_:))
    {
      goto LABEL_19;
    }

    if (result != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      goto LABEL_41;
    }

    v22 = 8;
    v23 = v20 == 8;
    if (v20 <= 8)
    {
      goto LABEL_20;
    }

LABEL_40:
    while (1)
    {
      __break(1u);
LABEL_41:
      v31 = result == enum case for WidgetFamily.accessoryCircular(_:) || result == enum case for WidgetFamily.accessoryRectangular(_:);
      if (v31 || result == enum case for WidgetFamily.accessoryInline(_:))
      {
        break;
      }

      result = (v33[1])(v10, v6);
LABEL_19:
      v22 = 4;
      v23 = v20 == 4;
      if (v20 <= 4)
      {
        goto LABEL_20;
      }
    }
  }

  v22 = 1;
  v23 = v20 == 1;
  if (v20 > 1)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (v23)
  {
    return v14;
  }

  v24 = v22 - v20;
  if (v22 > v20)
  {
    do
    {
      v25 = [objc_allocWithZone(GKPlayerActivityItemInternal) init];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10000CC44(0, *(v14 + 2) + 1, 1, v14);
      }

      v27 = *(v14 + 2);
      v26 = *(v14 + 3);
      if (v27 >= v26 >> 1)
      {
        v14 = sub_10000CC44((v26 > 1), v27 + 1, 1, v14);
      }

      *(v14 + 2) = v27 + 1;
      v28 = &v14[24 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = &_swiftEmptyDictionarySingleton;
      v28[48] = 1;
      --v24;
    }

    while (v24);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EA40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000EA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFTimelineEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EB64(uint64_t a1)
{
  v2 = type metadata accessor for AFTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000EBC4(double a1)
{
  v3 = *(sub_100072AAC() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10000F144(v4, v5, v6, a1);
}

double sub_10000EC38()
{
  v1 = sub_100071D4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100071D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100071C0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D070(v16, 0.0, 1.0);
  v18 = v17;
  v19 = sub_10006CEA0();
  if (!v19)
  {
    return v18;
  }

  v42 = v12;
  v43 = v11;
  v20 = v19;
  v21 = [v19 teamPlayerID];
  v46 = v15;
  v22 = v21;

  sub_100072B3C();
  v44 = v1;

  v45 = sub_100072BDC();

  sub_100071D6C();
  sub_10000388C(&qword_100094AA8, &qword_100073E70);
  v23 = sub_100071D7C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100073B50;
  (*(v24 + 104))(v27 + v26, enum case for Calendar.Component.hour(_:), v23);
  sub_10000E238(v27);
  swift_setDeallocating();
  (*(v24 + 8))(v27 + v26, v23);
  v28 = v46;
  swift_deallocClassInstance();
  sub_100071D3C();
  sub_100071D5C();

  (*(v2 + 8))(v5, v44);
  (*(v7 + 8))(v10, v6);
  v29 = sub_100071BFC();
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  if (__OFADD__(v45, v31))
  {
    __break(1u);
    goto LABEL_15;
  }

  srand48(v45 + v31);
  v32 = drand48() * 1.84467441e19;
  if (COERCE_UNSIGNED_INT64(fabs(v32 + 0.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v32 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = ((v32 + 0.0) % 0x64);
  v0 = 99.0;
  if (qword_100094708 != -1)
  {
LABEL_18:
    swift_once();
  }

  v18 = v18 / v0;
  v33 = sub_100071E7C();
  sub_100007DE8(v33, qword_1000999C8);
  v34 = sub_100071E5C();
  v35 = sub_100072CFC();
  v36 = os_log_type_enabled(v34, v35);
  v38 = v42;
  v37 = v43;
  if (v36)
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v34, v35, "Generated rand based on player id = %f", v39, 0xCu);
  }

  (*(v38 + 8))(v28, v37);
  return v18;
}

uint64_t sub_10000F144(void (*a1)(char *), uint64_t a2, uint64_t a3, double a4)
{
  v38 = a3;
  v39 = a1;
  v40 = a2;
  v5 = sub_100071D4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AFTimelineEntry();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100072AAC();
  v14 = *(v37 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v37);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000EC38();
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v17 = sub_100071E7C();
  sub_100007DE8(v17, qword_1000999C8);
  v18 = sub_100071E5C();
  v19 = sub_100072CFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v9;
    *v20 = 134218240;
    *(v20 + 4) = a4;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v18, v19, "AFTimelineProvider.getSnapshot: Live preview rate is %f, rolled a %f", v20, 0x16u);
    v9 = v35;
  }

  if (v16 <= a4)
  {
    type metadata accessor for GameCenterStore();
    v30 = v36;
    v29 = v37;
    (*(v14 + 16))(v36, v38, v37);
    v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v32 = swift_allocObject();
    v33 = v40;
    *(v32 + 16) = v39;
    *(v32 + 24) = v33;
    (*(v14 + 32))(v32 + v31, v30, v29);

    sub_10002BCA4(sub_10000F6C0, v32);
  }

  else
  {
    v21 = sub_100071E5C();
    v22 = sub_100072CFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "AFTimelineProvider.getSnapshot: Showing placeholder preview...", v23, 2u);
    }

    sub_100071D3C();
    v24 = sub_10006CEA0();
    v25 = v24;
    if (v24)
    {
    }

    v26 = sub_10006CEA0();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 hasAcknowledgedLatestGDPR];
    }

    else
    {
      v28 = 0;
    }

    (*(v6 + 32))(v13, v9, v5);
    v13[v10[5]] = v25 != 0;
    v13[v10[6]] = 0;
    v13[v10[7]] = 1;
    v13[v10[8]] = v28;
    *&v13[v10[9]] = &_swiftEmptyArrayStorage;
    v39(v13);
    return sub_10000EB64(v13);
  }
}

uint64_t sub_10000F59C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F5FC()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(sub_100072AAC() - 8) + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);

  return sub_10000A9A8(a1, a2, a3, v8, v9);
}

uint64_t sub_10000F74C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000F794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AFTimelineEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000F904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AFTimelineEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for AFEntryView()
{
  result = qword_100094DA8;
  if (!qword_100094DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FA58()
{
  sub_10000FADC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AFTimelineEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000FADC()
{
  if (!qword_100094858)
  {
    sub_1000729DC();
    v0 = sub_100071EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100094858);
    }
  }
}

uint64_t sub_10000FBA4()
{
  v0 = sub_100071DAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, enum case for GKFeatureFlags.GameOverlayUI(_:), v0, v3);
  v6 = sub_100071D9C();
  (*(v1 + 8))(v5, v0);
  if ((v6 & 1) != 0 && (v7 = [objc_opt_self() currentDevice], v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, !v8))
  {
    return sub_100071DEC();
  }

  else
  {
    return sub_100071C8C();
  }
}

uint64_t sub_10000FD04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100071F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  sub_100071E3C();
  v10 = sub_100071E1C();
  v11 = sub_100071E2C();

  v12 = 0x5F4E495F4E474953;
  if (v11)
  {
    v12 = 0xD000000000000015;
  }

  v24 = v12;
  if (v11)
  {
    v13 = 0x8000000100077950;
  }

  else
  {
    v13 = 0xEF4547415353454DLL;
  }

  v14 = sub_100071E1C();
  v15 = sub_100071E2C();

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0xD000000000000016;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x8000000100077930;
  }

  KeyPath = swift_getKeyPath();
  v19 = type metadata accessor for MessageView();
  *(a2 + v19[5]) = KeyPath;
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v19[6]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  result = (*(v5 + 32))(a2 + v19[7], v9, v4);
  v21 = (a2 + v19[8]);
  *v21 = v24;
  v21[1] = v13;
  v22 = (a2 + v19[9]);
  *v22 = v16;
  v22[1] = v17;
  *(a2 + v19[10]) = 0;
  return result;
}

uint64_t sub_10000FF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = a1;
  v82 = a2;
  v83 = a3;
  v75 = type metadata accessor for AFExtraLargeContentView();
  v3 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v74 = (&v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for AFLargeContentView();
  v5 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v76 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for AFMediumContentView();
  v7 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AFSmallContentView();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for AFTimelineEntry();
  v13 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  __chkstk_darwin(v19);
  v21 = &v74 - v20;
  __chkstk_darwin(v22);
  v24 = &v74 - v23;
  v25 = sub_1000729DC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v29);
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == enum case for WidgetFamily.systemSmall(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v31 = sub_100071E7C();
    sub_100007DE8(v31, qword_1000999C8);
    v32 = v82;
    sub_100012CF4(v82, v24, type metadata accessor for AFTimelineEntry);
    v33 = sub_100071E5C();
    v34 = sub_100072CCC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v36 = *(*&v24[*(v80 + 36)] + 16);
      sub_100012C94(v24, type metadata accessor for AFTimelineEntry);
      *(v35 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v33, v34, "AFSmallContentView: Showing %ld items", v35, 0xCu);
    }

    else
    {
      sub_100012C94(v24, type metadata accessor for AFTimelineEntry);
    }

    v43 = *(v9 + 20);
    v44 = sub_100071F5C();
    (*(*(v44 - 8) + 16))(v12 + v43, v81, v44);
    sub_100012CF4(v32, v12 + *(v9 + 24), type metadata accessor for AFTimelineEntry);
    *v12 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    sub_100012E08(&qword_100094E98, type metadata accessor for AFSmallContentView);
    goto LABEL_34;
  }

  if (v30 == enum case for WidgetFamily.systemMedium(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v37 = sub_100071E7C();
    sub_100007DE8(v37, qword_1000999C8);
    v38 = v82;
    sub_100012CF4(v82, v21, type metadata accessor for AFTimelineEntry);
    v39 = sub_100071E5C();
    v40 = sub_100072CCC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      v42 = *(*&v21[*(v80 + 36)] + 16);
      sub_100012C94(v21, type metadata accessor for AFTimelineEntry);
      *(v41 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v39, v40, "AFMediumContentView: Showing %ld items", v41, 0xCu);
    }

    else
    {
      sub_100012C94(v21, type metadata accessor for AFTimelineEntry);
    }

    v51 = v79;
    v52 = *(v79 + 20);
    v53 = sub_100071F5C();
    v54 = v78;
    (*(*(v53 - 8) + 16))(v78 + v52, v81, v53);
    sub_100012CF4(v38, v54 + *(v51 + 24), type metadata accessor for AFTimelineEntry);
    *v54 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v55 = &unk_100094E90;
    v56 = type metadata accessor for AFMediumContentView;
LABEL_33:
    sub_100012E08(v55, v56);
LABEL_34:
    result = sub_10007281C();
    *v83 = result;
    return result;
  }

  if (v30 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v45 = sub_100071E7C();
    sub_100007DE8(v45, qword_1000999C8);
    v46 = v82;
    sub_100012CF4(v82, v18, type metadata accessor for AFTimelineEntry);
    v47 = sub_100071E5C();
    v48 = sub_100072CCC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      v50 = *(*&v18[*(v80 + 36)] + 16);
      sub_100012C94(v18, type metadata accessor for AFTimelineEntry);
      *(v49 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v47, v48, "AFLargeContentView: Showing %ld items", v49, 0xCu);
    }

    else
    {
      sub_100012C94(v18, type metadata accessor for AFTimelineEntry);
    }

    v63 = v77;
    v64 = *(v77 + 20);
    v65 = sub_100071F5C();
    v66 = v76;
    (*(*(v65 - 8) + 16))(v76 + v64, v81, v65);
    sub_100012CF4(v46, v66 + *(v63 + 24), type metadata accessor for AFTimelineEntry);
    *v66 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v55 = &unk_100094E88;
    v56 = type metadata accessor for AFLargeContentView;
    goto LABEL_33;
  }

  if (v30 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v57 = sub_100071E7C();
    sub_100007DE8(v57, qword_1000999C8);
    v58 = v82;
    sub_100012CF4(v82, v15, type metadata accessor for AFTimelineEntry);
    v59 = sub_100071E5C();
    v60 = sub_100072CCC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      v62 = *(*&v15[*(v80 + 36)] + 16);
      sub_100012C94(v15, type metadata accessor for AFTimelineEntry);
      *(v61 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v59, v60, "AFExtraLargeContentView: Showing %ld items", v61, 0xCu);
    }

    else
    {
      sub_100012C94(v15, type metadata accessor for AFTimelineEntry);
    }

    v70 = v75;
    v71 = *(v75 + 20);
    v72 = sub_100071F5C();
    v73 = v74;
    (*(*(v72 - 8) + 16))(v74 + v71, v81, v72);
    sub_100012CF4(v58, v73 + *(v70 + 24), type metadata accessor for AFTimelineEntry);
    *v73 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v55 = &unk_100094E80;
    v56 = type metadata accessor for AFExtraLargeContentView;
    goto LABEL_33;
  }

  v67 = enum case for WidgetFamily.accessoryCircular(_:);
  v68 = v30;
  result = sub_10007281C();
  *v83 = result;
  if (v68 != v67 && v68 != enum case for WidgetFamily.accessoryRectangular(_:) && v68 != enum case for WidgetFamily.accessoryInline(_:))
  {
    return (*(v26 + 8))(v29, v25);
  }

  return result;
}

uint64_t sub_100010B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a1;
  v89 = a2;
  v77 = sub_10000388C(&qword_100094E30, &qword_100073F90);
  v3 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v76 = &v68 - v4;
  v74 = type metadata accessor for AFEmptyStateView();
  v5 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v69 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_10000388C(&qword_100094E38, &qword_100073F98);
  v73 = *(v75 - 8);
  v7 = *(v73 + 64);
  __chkstk_darwin(v75);
  v71 = &v68 - v8;
  v72 = sub_10000388C(&qword_100094E40, &qword_100073FA0);
  v9 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v70 = &v68 - v10;
  v11 = sub_1000729DC();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  __chkstk_darwin(v11);
  v83 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MessageView();
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_10000388C(&qword_100094E48, &qword_100073FA8);
  v18 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v19 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v68 - v21;
  v23 = sub_100071FCC();
  v81 = *(v23 - 8);
  v24 = *(v81 + 64);
  __chkstk_darwin(v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AFTimelineEntry();
  v28 = *(*(v27 - 1) + 64);
  __chkstk_darwin(v27);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10000388C(&qword_100094E58, &qword_100073FB0);
  v80 = *(v82 - 8);
  v31 = *(v80 + 64);
  __chkstk_darwin(v82);
  v33 = &v68 - v32;
  v79 = sub_10000388C(&qword_100094E60, &qword_100073FB8);
  v34 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = &v68 - v35;
  v36 = *(type metadata accessor for AFEntryView() + 20);
  v88 = v2;
  v37 = v2 + v36;
  if (*(v2 + v36 + v27[5]) != 1)
  {
    sub_10000FD04(v87, v17);
    sub_100071C8C();
    v42 = sub_100012E08(&qword_100094E68, type metadata accessor for MessageView);
    sub_1000725BC();
    sub_100012BA4(v22);
    sub_100012C94(v17, type metadata accessor for MessageView);
    v91 = v14;
LABEL_5:
    v92 = v42;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  v38 = v87;
  v68 = v22;
  if (*(v37 + v27[6]) == 1)
  {
    sub_100071D3C();
    v30[v27[5]] = 1;
    v30[v27[6]] = 0;
    v30[v27[7]] = 1;
    v30[v27[8]] = 0;
    *&v30[v27[9]] = &_swiftEmptyArrayStorage;
    sub_10000FF80(v38, v30, &v91);
    sub_100012C94(v30, type metadata accessor for AFTimelineEntry);
    v90 = v91;
    sub_100071FBC();
    sub_10007268C();
    (*(v81 + 8))(v26, v23);

    v39 = v68;
    sub_10000FBA4();
    v91 = &type metadata for AnyView;
    v92 = &protocol witness table for AnyView;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = v82;
    sub_1000725BC();
    sub_100012BA4(v39);
    (*(v80 + 8))(v33, v41);
    v91 = v41;
    v92 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  if ((*(v37 + v27[8]) & 1) == 0)
  {
    v48 = v14;
    v49 = v14[7];
    v50 = sub_100071F5C();
    v51 = v17;
    (*(*(v50 - 8) + 16))(v17 + v49, v38, v50);
    *(v17 + v14[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *(v17 + v14[6]) = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    *v17 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v52 = (v17 + v14[8]);
    *v52 = 0xD000000000000019;
    v52[1] = 0x80000001000778F0;
    v53 = (v17 + v14[9]);
    *v53 = 0;
    v53[1] = 0;
    *(v17 + v14[10]) = 0;
    v54 = v83;
    sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v83);
    sub_100012E08(&qword_100094E70, &type metadata accessor for WidgetFamily);
    v55 = v85;
    sub_100072FEC();
    (*(v84 + 8))(v54, v55);
    v56 = v68;
    sub_100071DFC();

    v42 = sub_100012E08(&qword_100094E68, type metadata accessor for MessageView);
    sub_1000725BC();
    sub_100012BA4(v56);
    sub_100012C94(v51, type metadata accessor for MessageView);
    v91 = v48;
    goto LABEL_5;
  }

  v44 = v68;
  if (*(*(v37 + v27[9]) + 16) || (*(v37 + v27[7]) & 1) != 0)
  {
    sub_10000FF80(v87, v37, &v91);
    v45 = v83;
    sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v83);
    sub_100012E08(&qword_100094E70, &type metadata accessor for WidgetFamily);
    v46 = v85;
    sub_100072FEC();
    (*(v84 + 8))(v45, v46);
    sub_100071DFC();

    sub_1000725BC();
    sub_100012BA4(v44);
    v91 = &type metadata for AnyView;
    v92 = &protocol witness table for AnyView;
    swift_getOpaqueTypeConformance2();
    v47 = sub_10007281C();

    result = v47;
    goto LABEL_7;
  }

  KeyPath = swift_getKeyPath();
  v58 = v69;
  *v69 = KeyPath;
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  v59 = v74;
  v60 = *(v74 + 20);
  *(v58 + v60) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  v61 = v59[6];
  *(v58 + v61) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v62 = v83;
  sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v83);
  sub_100012E08(&qword_100094E70, &type metadata accessor for WidgetFamily);
  v63 = v85;
  sub_100072FEC();
  (*(v84 + 8))(v62, v63);
  sub_100071DFC();

  v64 = sub_100012E08(&qword_100094E78, type metadata accessor for AFEmptyStateView);
  v65 = v71;
  sub_1000725BC();
  sub_100012BA4(v44);
  sub_100012C94(v58, type metadata accessor for AFEmptyStateView);
  v91 = v59;
  v92 = v64;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v75;
  sub_1000725FC();
  (*(v73 + 8))(v65, v67);
  v91 = v67;
  v92 = v66;
  swift_getOpaqueTypeConformance2();
LABEL_6:
  result = sub_10007281C();
LABEL_7:
  *v89 = result;
  return result;
}

uint64_t sub_100011988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v29 = sub_10000388C(&qword_100094DE0, &qword_100073EF8);
  v5 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v7 = &v27 - v6;
  v28 = sub_100071FCC();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000388C(&qword_100094DE8, &qword_100073F00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = sub_10000388C(&qword_100094DF0, &qword_100073F08);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v27 - v19);
  *v20 = sub_1000728AC();
  v20[1] = v21;
  v22 = sub_10000388C(&qword_100094DF8, &qword_100073F10);
  sub_100011D7C(a2, a1, v20 + *(v22 + 44));
  v23 = a2 + *(type metadata accessor for AFEntryView() + 20);
  if (*(v23 + *(type metadata accessor for AFTimelineEntry() + 28)) == 1)
  {
    sub_100071FBC();
    v24 = sub_100004C3C(&qword_100094E00, &qword_100094DF0, &qword_100073F08);
    sub_10007268C();
    (*(v8 + 8))(v11, v28);
    (*(v13 + 16))(v7, v16, v12);
    swift_storeEnumTagMultiPayload();
    v31 = v17;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_100004C94(v20, v7, &qword_100094DF0, &qword_100073F08);
    swift_storeEnumTagMultiPayload();
    v25 = sub_100004C3C(&qword_100094E00, &qword_100094DF0, &qword_100073F08);
    v31 = v17;
    v32 = v25;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
  }

  return sub_100004890(v20, &qword_100094DF0, &qword_100073F08);
}

uint64_t sub_100011D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v42 = a3;
  v39 = sub_10000388C(&qword_100094E08, &qword_100073F18);
  v4 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v6 = &v37 - v5;
  v7 = sub_100071FCC();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AFBackgroundView(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10000388C(&qword_100094E10, &qword_100073F20);
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v19 = sub_10000388C(&qword_100094E18, &qword_100073F28);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v37 - v24;
  v26 = *(type metadata accessor for AFEntryView() + 20);
  v41 = a1;
  v27 = a1 + v26;
  v28 = type metadata accessor for AFTimelineEntry();
  if (*(v27 + *(v28 + 20)) == 1 && *(v27 + *(v28 + 24)) == 1)
  {
    *v14 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v29 = v14 + *(v11 + 20);
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    sub_100071FBC();
    v30 = sub_100012E08(&qword_100094E20, type metadata accessor for AFBackgroundView);
    sub_10007268C();
    (*(v37 + 8))(v10, v7);
    sub_100012C94(v14, type metadata accessor for AFBackgroundView);
    v31 = v38;
    (*(v38 + 16))(v6, v18, v15);
    swift_storeEnumTagMultiPayload();
    v43 = v11;
    v44 = v30;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v31 + 8))(v18, v15);
  }

  else
  {
    *v14 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v32 = v14 + *(v11 + 20);
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    sub_100012CF4(v14, v6, type metadata accessor for AFBackgroundView);
    swift_storeEnumTagMultiPayload();
    v33 = sub_100012E08(&qword_100094E20, type metadata accessor for AFBackgroundView);
    v43 = v11;
    v44 = v33;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    sub_100012C94(v14, type metadata accessor for AFBackgroundView);
  }

  sub_100010B68(v40, &v43);
  v34 = v43;
  sub_100004C94(v25, v22, &qword_100094E18, &qword_100073F28);
  v35 = v42;
  sub_100004C94(v22, v42, &qword_100094E18, &qword_100073F28);
  *(v35 + *(sub_10000388C(&qword_100094E28, &qword_100073F88) + 48)) = v34;

  sub_100004890(v25, &qword_100094E18, &qword_100073F28);

  return sub_100004890(v22, &qword_100094E18, &qword_100073F28);
}

uint64_t sub_100012328@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100012CF4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFEntryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100012590(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000125F4;
  a2[1] = v7;
  return result;
}

uint64_t sub_100012428()
{
  v1 = type metadata accessor for AFEntryView();
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

  v8 = v5 + *(v1 + 20);
  v9 = sub_100071D4C();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *&v8[*(type metadata accessor for AFTimelineEntry() + 36)];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000125F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFEntryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100011988(a1, v6, a2);
}

uint64_t sub_1000126E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000127F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10007218C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*(sub_10000388C(a1, a2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = (&v22 - v16);
  sub_100004C94(v8, &v22 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a3(0);
    return (*(*(v18 - 8) + 32))(a4, v17, v18);
  }

  else
  {
    v20 = *v17;
    sub_100072CEC();
    v21 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_100012A94()
{
  sub_10007212C();
  sub_100012E08(&qword_100094EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10007219C();
  return v1;
}

uint64_t sub_100012B10@<X0>(_BYTE *a1@<X8>)
{
  sub_10007212C();
  sub_100012E08(&qword_100094EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10007219C();
  *a1 = v3;
  return result;
}

uint64_t sub_100012BA4(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100094E50, &qword_100074180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012C94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100012CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012D5C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_100012DA8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_100012DB8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100012DD8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100012E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100012EAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10001300C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for AFLargeContentView()
{
  result = qword_100094F10;
  if (!qword_100094F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000131B0()
{
  sub_10000FADC();
  if (v0 <= 0x3F)
  {
    sub_100071F5C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AFTimelineEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100013268@<X0>(uint64_t a1@<X8>)
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
  sub_1000155F4(v2, &v17 - v11);
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

uint64_t sub_100013450@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_10000388C(&qword_100094F50, &qword_1000740C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_10000388C(&qword_100094F58, &qword_1000740D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = sub_1000729DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AFLargeContentView();
  v16 = *(v15 + 20);
  sub_100013268(v14);
  v17 = sub_1000084E0();
  (*(v11 + 8))(v14, v10);
  sub_100071F3C();
  v19 = v1 + *(v15 + 24);
  v20 = (v18 + -28.0 - (v17 + v17)) / *(*(v19 + *(type metadata accessor for AFTimelineEntry() + 36)) + 16);
  *v5 = sub_10007224C();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v21 = sub_10000388C(&qword_100094F60, &qword_1000740D8);
  sub_100013844(v1, &v5[*(v21 + 44)], v17, v20);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  LOBYTE(v15) = sub_1000723DC();
  *(inited + 32) = v15;
  v23 = sub_1000723FC();
  *(inited + 33) = v23;
  v24 = sub_1000723CC();
  *(inited + 34) = v24;
  v25 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v15)
  {
    v25 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v23)
  {
    v25 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v24)
  {
    v25 = sub_1000723EC();
  }

  sub_100071E8C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100014DEC(v5, v9, &qword_100094F50, &qword_1000740C8);
  v34 = &v9[*(v6 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_1000723BC();
  v36 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v35)
  {
    v36 = sub_1000723EC();
  }

  sub_100071E8C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v48;
  sub_100014DEC(v9, v48, &qword_100094F58, &qword_1000740D0);
  result = sub_10000388C(&qword_100094F70, &qword_1000740E8);
  v47 = v45 + *(result + 36);
  *v47 = v36;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_100013844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v95 = a2;
  v100 = sub_10000388C(&qword_100094F78, &qword_1000740F0);
  v94 = *(v100 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v100);
  v82 = &v82 - v8;
  v101 = sub_1000729DC();
  v99 = *(v101 - 8);
  v9 = *(v99 + 64);
  __chkstk_darwin(v101);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v82 - v12;
  __chkstk_darwin(v13);
  v98 = &v82 - v14;
  __chkstk_darwin(v15);
  v97 = &v82 - v16;
  v17 = sub_10000388C(&qword_100094F80, &qword_1000740F8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v93 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v82 - v21;
  v22 = type metadata accessor for AFLargeContentView();
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  v26 = sub_10000388C(&qword_100094F88, &qword_100074100);
  v88 = *(v26 - 8);
  v89 = v26;
  v27 = *(v88 + 64);
  __chkstk_darwin(v26);
  v29 = &v82 - v28;
  v96 = sub_10000388C(&qword_100094F90, &qword_100074108);
  v30 = *(v96 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v96);
  v33 = &v82 - v32;
  v34 = sub_10000388C(&qword_100094F98, &qword_100074110);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v91 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v82 - v38;
  v40 = a1 + *(v23 + 32);
  v41 = *(v40 + *(type metadata accessor for AFTimelineEntry() + 36));
  v42 = *(v41 + 16);
  v102 = a1;
  v90 = v39;
  v86 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v24;
  v84 = v25;
  if (v42)
  {
    v105 = v41;
    sub_100014E54(a1, &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v44 = (v25 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_100014EBC(&v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v43);
    *(v45 + v44) = a3;
    *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

    sub_10000388C(&qword_100094FD8, &qword_100074160);
    sub_10000388C(&qword_100094FE0, &qword_100074168);
    sub_100004C3C(&qword_100094FE8, &qword_100094FD8, &qword_100074160);
    sub_100015328();
    sub_10001551C();
    sub_10007284C();
    sub_100015570();
    v46 = v89;
    sub_1000725FC();
    (*(v88 + 8))(v29, v46);
    v47 = v96;
    (*(v30 + 32))(v39, v33, v96);
    (*(v30 + 56))(v39, 0, 1, v47);
  }

  else
  {
    (*(v30 + 56))(v39, 1, 1, v96);
  }

  v48 = *(v41 + 16);
  v49 = v97;
  sub_100013268(v97);
  v51 = v98;
  v50 = v99;
  v52 = *(v99 + 32);
  v53 = v101;
  v52(v98, v49, v101);
  v54 = *(v50 + 88);
  v55 = v54(v51, v53);
  v56 = enum case for WidgetFamily.systemSmall(_:);
  if (v55 == enum case for WidgetFamily.systemSmall(_:))
  {
    v57 = 1;
    goto LABEL_12;
  }

  if (v55 == enum case for WidgetFamily.systemMedium(_:))
  {
    v57 = 2;
    goto LABEL_12;
  }

  if (v55 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_9;
  }

  if (v55 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v57 = 8;
  }

  else
  {
    v57 = 1;
    if (v55 != enum case for WidgetFamily.accessoryCircular(_:) && v55 != enum case for WidgetFamily.accessoryRectangular(_:) && v55 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v99 + 8))(v51, v101);
LABEL_9:
      v57 = 4;
    }
  }

LABEL_12:
  if (v48 >= v57)
  {
    v68 = 1;
    v69 = v94;
    v70 = v92;
LABEL_28:
    (*(v69 + 56))(v70, v68, 1, v100);
    v78 = v90;
    v77 = v91;
    sub_100004C94(v90, v91, &qword_100094F98, &qword_100074110);
    v79 = v93;
    sub_100004C94(v70, v93, &qword_100094F80, &qword_1000740F8);
    v80 = v95;
    sub_100004C94(v77, v95, &qword_100094F98, &qword_100074110);
    v81 = sub_10000388C(&qword_100094FA0, &unk_100074118);
    sub_100004C94(v79, v80 + *(v81 + 48), &qword_100094F80, &qword_1000740F8);
    sub_100004890(v70, &qword_100094F80, &qword_1000740F8);
    sub_100004890(v78, &qword_100094F98, &qword_100074110);
    sub_100004890(v79, &qword_100094F80, &qword_1000740F8);
    return sub_100004890(v77, &qword_100094F98, &qword_100074110);
  }

  v58 = *(v41 + 16);
  v59 = v83;
  sub_100013268(v83);
  v60 = v87;
  v61 = v101;
  v52(v87, v59, v101);
  result = v54(v60, v61);
  if (result == v56)
  {
    v63 = 1;
    v64 = v102;
    v65 = v86;
    v66 = v85;
    v67 = v84;
    goto LABEL_26;
  }

  v64 = v102;
  v65 = v86;
  v66 = v85;
  v67 = v84;
  if (result == enum case for WidgetFamily.systemMedium(_:))
  {
    v63 = 2;
    goto LABEL_26;
  }

  if (result == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_19;
  }

  if (result == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v63 = 8;
  }

  else
  {
    v63 = 1;
    if (result != enum case for WidgetFamily.accessoryCircular(_:) && result != enum case for WidgetFamily.accessoryRectangular(_:) && result != enum case for WidgetFamily.accessoryInline(_:))
    {
      result = (*(v99 + 8))(v60, v101);
LABEL_19:
      v63 = 4;
    }
  }

LABEL_26:
  if (v63 >= v58)
  {
    v105 = v58;
    v106 = v63;
    swift_getKeyPath();
    sub_100014E54(v64, v65);
    v71 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v72 = (v67 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    sub_100014EBC(v65, v73 + v71);
    *(v73 + v72) = a3;
    *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
    sub_10000388C(&qword_100094FA8, &qword_100074148);
    sub_10000388C(&qword_100094FB0, &qword_100074150);
    sub_100014FD8();
    v74 = sub_1000038D4(&qword_100094FC8, &qword_100074158);
    v75 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
    v103 = v74;
    v104 = v75;
    swift_getOpaqueTypeConformance2();
    v76 = v82;
    sub_10007283C();
    v69 = v94;
    v70 = v92;
    (*(v94 + 32))(v92, v76, v100);
    v68 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100014368@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v63 = a3;
  v53 = sub_100071FCC();
  v52 = *(v53 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v53);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  v7 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v9 = &v51 - v8;
  v62 = sub_10000388C(&qword_100094FB0, &qword_100074150);
  v55 = *(v62 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v62);
  v54 = &v51 - v11;
  v58 = sub_10000388C(&qword_100095018, &qword_100074178);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v60 = &v51 - v13;
  v14 = sub_1000729DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v51 - v21;
  v57 = sub_10000388C(&qword_100094FF8, &qword_100074170);
  v23 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v25 = &v51 - v24;
  v59 = sub_10000388C(&qword_100095020, &qword_100074188);
  v26 = *(v59 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v59);
  v29 = &v51 - v28;
  if (a1[2])
  {
    v30 = v56;
    sub_100013268(v18);
    sub_100071DDC();
    (*(v15 + 8))(v18, v14);
    v31 = v30 + *(type metadata accessor for AFLargeContentView() + 20);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v32 = v61;
    v33 = &v9[*(v61 + 36)];
    v34 = v67;
    *v33 = v66;
    *(v33 + 1) = v34;
    *(v33 + 2) = v68;
    sub_100071FBC();
    v35 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
    v36 = v54;
    sub_10007268C();
    (*(v52 + 8))(v6, v53);
    sub_100004890(v9, &qword_100094FC8, &qword_100074158);
    v37 = v55;
    v38 = v62;
    (*(v55 + 16))(v60, v36, v62);
    swift_storeEnumTagMultiPayload();
    v39 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170);
    v64 = v57;
    v65 = v39;
    swift_getOpaqueTypeConformance2();
    v64 = v32;
    v65 = v35;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v37 + 8))(v36, v38);
  }

  else
  {
    v42 = *a1;
    v41 = a1[1];
    v43 = v56;
    sub_100013268(v18);
    sub_100071DCC();
    (*(v15 + 8))(v18, v14);
    sub_100012BA4(v22);
    v44 = v43 + *(type metadata accessor for AFLargeContentView() + 20);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v45 = v57;
    v46 = &v25[*(v57 + 36)];
    v47 = v67;
    *v46 = v66;
    *(v46 + 1) = v47;
    *(v46 + 2) = v68;
    v48 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170);
    sub_1000725FC();
    sub_100004890(v25, &qword_100094FF8, &qword_100074170);
    v49 = v59;
    (*(v26 + 16))(v60, v29, v59);
    swift_storeEnumTagMultiPayload();
    v64 = v45;
    v65 = v48;
    swift_getOpaqueTypeConformance2();
    v50 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
    v64 = v61;
    v65 = v50;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v26 + 8))(v29, v49);
  }
}

uint64_t sub_100014B40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_100071FCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v21 - v15;
  sub_100013268(v12);
  sub_100071DDC();
  (*(v9 + 8))(v12, v8);
  v17 = a1 + *(type metadata accessor for AFLargeContentView() + 20);
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v18 = &v16[*(v13 + 36)];
  v19 = v23;
  *v18 = v22;
  *(v18 + 1) = v19;
  *(v18 + 2) = v24;
  sub_100071FBC();
  sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
  sub_10007268C();
  (*(v4 + 8))(v7, v3);
  return sub_100004890(v16, &qword_100094FC8, &qword_100074158);
}

uint64_t sub_100014DEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000388C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFLargeContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFLargeContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014F20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AFLargeContentView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100014B40(v1 + v4, a1);
}

unint64_t sub_100014FD8()
{
  result = qword_100094FB8;
  if (!qword_100094FB8)
  {
    sub_1000038D4(&qword_100094FA8, &qword_100074148);
    sub_100015064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094FB8);
  }

  return result;
}

unint64_t sub_100015064()
{
  result = qword_100094FC0;
  if (!qword_100094FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094FC0);
  }

  return result;
}

uint64_t sub_1000150B8()
{
  v1 = type metadata accessor for AFLargeContentView();
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

  v8 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 20);
  v10 = sub_100071F5C();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);
  v11 = &v5[*(v1 + 24)];
  v12 = sub_100071D4C();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *&v11[*(type metadata accessor for AFTimelineEntry() + 36)];

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_100015270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFLargeContentView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100014368(a1, v2 + v6, a2);
}

unint64_t sub_100015328()
{
  result = qword_100094FF0;
  if (!qword_100094FF0)
  {
    sub_1000038D4(&qword_100094FE0, &qword_100074168);
    sub_1000038D4(&qword_100094FF8, &qword_100074170);
    sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170);
    swift_getOpaqueTypeConformance2();
    sub_1000038D4(&qword_100094FC8, &qword_100074158);
    sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094FF0);
  }

  return result;
}

uint64_t sub_100015494(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001551C()
{
  result = qword_100095008;
  if (!qword_100095008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095008);
  }

  return result;
}

unint64_t sub_100015570()
{
  result = qword_100095010;
  if (!qword_100095010)
  {
    sub_1000038D4(&qword_100094F88, &qword_100074100);
    sub_100015328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095010);
  }

  return result;
}

uint64_t sub_1000155F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100015668()
{
  result = qword_100095028;
  if (!qword_100095028)
  {
    sub_1000038D4(&qword_100094F70, &qword_1000740E8);
    sub_1000156F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095028);
  }

  return result;
}

unint64_t sub_1000156F4()
{
  result = qword_100095030;
  if (!qword_100095030)
  {
    sub_1000038D4(&qword_100094F58, &qword_1000740D0);
    sub_100004C3C(&qword_100095038, &qword_100094F50, &qword_1000740C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095030);
  }

  return result;
}

uint64_t sub_1000157B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000157F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100015860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v86 = a2;
  v2 = sub_10000388C(&qword_100094758, &unk_100073820);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v64 - v5;
  v7 = sub_10000388C(&qword_100094750, &unk_100074230);
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v73 = sub_10000388C(&qword_100094748, &unk_100073810);
  *&v87 = *(v73 - 8);
  v11 = *(v87 + 64);
  __chkstk_darwin(v73);
  v13 = &v64 - v12;
  v14 = sub_10000388C(&qword_100094740, &unk_100074240);
  v15 = *(v14 - 8);
  v76 = v14;
  v77 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v88 = &v64 - v17;
  v18 = sub_10000388C(&qword_100094738, &unk_100073800);
  v19 = *(v18 - 8);
  v78 = v18;
  v79 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v74 = &v64 - v21;
  v89 = sub_10000388C(&qword_1000947B0, &unk_100074250);
  v80 = *(v89 - 8);
  v22 = *(v80 + 64);
  __chkstk_darwin(v89);
  v75 = &v64 - v23;
  v24 = sub_10000388C(&qword_1000947A8, &unk_100073860);
  v25 = *(v24 - 8);
  v82 = v24;
  v83 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v90 = &v64 - v27;
  v28 = sub_10000388C(&qword_1000947A0, &unk_100074260);
  v29 = *(v28 - 8);
  v84 = v28;
  v85 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v81 = &v64 - v31;
  type metadata accessor for CPEntryView();
  sub_100016434();
  sub_10001648C();

  sub_100072A6C();
  v32 = sub_1000164E0();
  sub_10007229C();
  (*(v3 + 8))(v6, v2);
  sub_1000721DC();
  v91 = v2;
  v92 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000722CC();

  (*(v72 + 8))(v10, v7);
  sub_1000721DC();
  v91 = v7;
  v92 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v73;
  sub_10007225C();

  v36 = v35;
  (*(v87 + 8))(v13, v35);
  v72 = sub_10000388C(&qword_100095050, &unk_100074360);
  v37 = sub_1000729DC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = *(v38 + 80);
  v71 = ((v40 + 32) & ~v40) + 4 * v39;
  v70 = (v40 + 32) & ~v40;
  v41 = swift_allocObject();
  v87 = xmmword_100074190;
  *(v41 + 16) = xmmword_100074190;
  v42 = v41 + ((v40 + 32) & ~v40);
  v69 = enum case for WidgetFamily.systemSmall(_:);
  v43 = *(v38 + 104);
  v43(v42);
  v68 = enum case for WidgetFamily.systemMedium(_:);
  v43(v42 + v39);
  v64 = 2 * v39;
  v67 = enum case for WidgetFamily.systemLarge(_:);
  v43(v42 + 2 * v39);
  v66 = 3 * v39;
  v65 = enum case for WidgetFamily.systemExtraLarge(_:);
  v43(v42 + 3 * v39);
  v91 = v36;
  v92 = v34;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v74;
  v46 = v76;
  v47 = v88;
  sub_10007227C();

  (*(v77 + 8))(v47, v46);
  v91 = v46;
  v92 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v75;
  v50 = v78;
  sub_1000722FC();
  (*(v79 + 8))(v45, v50);
  v91 = v50;
  v92 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v89;
  sub_1000722BC();
  (*(v80 + 8))(v49, v52);
  sub_10000388C(&qword_100095058, &qword_100074270);
  v53 = *(sub_100072A2C() - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  *(swift_allocObject() + 16) = v87;
  sub_100072A1C();
  sub_1000729EC();
  sub_1000729FC();
  sub_100072A0C();
  v56 = swift_allocObject();
  *(v56 + 16) = v87;
  v57 = v56 + v70;
  (v43)(v56 + v70, v69, v37);
  (v43)(v57 + v39, v68, v37);
  (v43)(v57 + v64, v67, v37);
  (v43)(v57 + v66, v65, v37);
  v91 = v89;
  v92 = v51;
  v58 = swift_getOpaqueTypeConformance2();
  v60 = v81;
  v59 = v82;
  v61 = v90;
  sub_10007228C();

  (*(v83 + 8))(v61, v59);
  v91 = v59;
  v92 = v58;
  swift_getOpaqueTypeConformance2();
  v62 = v84;
  sub_1000722AC();
  return (*(v85 + 8))(v60, v62);
}

uint64_t sub_100016390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CPEntryView();
  sub_100016544(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100016434()
{
  result = qword_100095040;
  if (!qword_100095040)
  {
    type metadata accessor for CPEntryView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095040);
  }

  return result;
}

unint64_t sub_10001648C()
{
  result = qword_100095048;
  if (!qword_100095048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095048);
  }

  return result;
}

unint64_t sub_1000164E0()
{
  result = qword_100094760;
  if (!qword_100094760)
  {
    sub_1000038D4(&qword_100094758, &unk_100073820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094760);
  }

  return result;
}

uint64_t sub_100016544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000165AC()
{
  sub_1000038D4(&qword_1000947A0, &unk_100074260);
  sub_1000038D4(&qword_1000947A8, &unk_100073860);
  sub_1000038D4(&qword_1000947B0, &unk_100074250);
  sub_1000038D4(&qword_100094738, &unk_100073800);
  sub_1000038D4(&qword_100094740, &unk_100074240);
  sub_1000038D4(&qword_100094748, &unk_100073810);
  sub_1000038D4(&qword_100094750, &unk_100074230);
  sub_1000038D4(&qword_100094758, &unk_100073820);
  sub_1000164E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000167F8@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v1 = sub_10007298C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100094790, &unk_100073850);
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v6);
  v9 = &v83 - v8;
  *&v89 = sub_10000388C(&qword_100094788, &unk_100074320);
  v90 = *(v89 - 8);
  v10 = *(v90 + 64);
  __chkstk_darwin(v89);
  v12 = &v83 - v11;
  v91 = sub_10000388C(&qword_100094780, &unk_100073840);
  v92 = *(v91 - 8);
  v13 = *(v92 + 64);
  __chkstk_darwin(v91);
  v86 = &v83 - v14;
  v93 = sub_10000388C(&qword_100094778, &unk_100074330);
  v94 = *(v93 - 8);
  v15 = *(v94 + 64);
  __chkstk_darwin(v93);
  v88 = &v83 - v16;
  v17 = sub_10000388C(&qword_100094770, &unk_100073830);
  v18 = *(v17 - 8);
  v97 = v17;
  v98 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v108 = &v83 - v20;
  v21 = sub_10000388C(&qword_100094768, &unk_100074340);
  v22 = *(v21 - 8);
  v99 = v21;
  v100 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v95 = &v83 - v24;
  v109 = sub_10000388C(&qword_1000947C8, &qword_100073880);
  v101 = *(v109 - 8);
  v25 = *(v101 + 64);
  __chkstk_darwin(v109);
  v96 = &v83 - v26;
  v27 = sub_10000388C(&qword_1000947C0, &unk_100074350);
  v28 = *(v27 - 8);
  v103 = v27;
  v104 = v28;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v110 = &v83 - v30;
  v31 = sub_10000388C(&qword_1000947B8, &unk_100073870);
  v32 = *(v31 - 8);
  v105 = v31;
  v106 = v32;
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v102 = &v83 - v34;
  type metadata accessor for AFEntryView();
  sub_1000175FC();
  sub_100017654();
  sub_100072A6C();
  (*(v2 + 104))(v5, enum case for WidgetBackgroundStyle.blur(_:), v1);
  v35 = sub_1000176A8();
  sub_1000722EC();
  (*(v2 + 8))(v5, v1);
  (*(v87 + 8))(v9, v6);
  v111 = v6;
  v112 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v86;
  v38 = v89;
  sub_10007229C();
  v39 = v38;
  (*(v90 + 8))(v12, v38);
  sub_1000721DC();
  v40 = sub_10007258C();
  v42 = v41;
  v44 = v43;
  v111 = v39;
  v112 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v88;
  v47 = v91;
  sub_1000722DC();
  sub_100004C84(v40, v42, v44 & 1);

  (*(v92 + 8))(v37, v47);
  sub_1000721DC();
  v48 = sub_10007258C();
  v50 = v49;
  v52 = v51;
  v111 = v47;
  v112 = v45;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v93;
  sub_10007226C();
  sub_100004C84(v48, v50, v52 & 1);

  v55 = v54;
  (*(v94 + 8))(v46, v54);
  v94 = sub_10000388C(&qword_100095050, &unk_100074360);
  v56 = sub_1000729DC();
  v57 = *(v56 - 8);
  v58 = *(v57 + 72);
  v92 = *(v57 + 80);
  v91 = ((v92 + 32) & ~v92) + 4 * v58;
  v59 = (v92 + 32) & ~v92;
  v90 = v59;
  v60 = swift_allocObject();
  v89 = xmmword_100074190;
  *(v60 + 16) = xmmword_100074190;
  v61 = v60 + v59;
  LODWORD(v88) = enum case for WidgetFamily.systemSmall(_:);
  v62 = *(v57 + 104);
  v62(v61);
  LODWORD(v87) = enum case for WidgetFamily.systemMedium(_:);
  v62(v61 + v58);
  v83 = 2 * v58;
  LODWORD(v86) = enum case for WidgetFamily.systemLarge(_:);
  v62(v61 + 2 * v58);
  v85 = 3 * v58;
  v84 = enum case for WidgetFamily.systemExtraLarge(_:);
  v62(v61 + 3 * v58);
  v111 = v55;
  v112 = v53;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v95;
  v65 = v97;
  v66 = v108;
  sub_10007227C();

  (*(v98 + 8))(v66, v65);
  v111 = v65;
  v112 = v63;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v96;
  v69 = v99;
  sub_1000722FC();
  (*(v100 + 8))(v64, v69);
  v111 = v69;
  v112 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v109;
  sub_1000722BC();
  (*(v101 + 8))(v68, v71);
  sub_10000388C(&qword_100095058, &qword_100074270);
  v72 = *(sub_100072A2C() - 8);
  v73 = *(v72 + 72);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  *(swift_allocObject() + 16) = xmmword_100074030;
  sub_1000729EC();
  sub_1000729FC();
  sub_100072A0C();
  v75 = swift_allocObject();
  *(v75 + 16) = v89;
  v76 = v75 + v90;
  (v62)(v75 + v90, v88, v56);
  (v62)(v76 + v58, v87, v56);
  (v62)(v76 + v83, v86, v56);
  (v62)(v76 + v85, v84, v56);
  v111 = v109;
  v112 = v70;
  v77 = swift_getOpaqueTypeConformance2();
  v79 = v102;
  v78 = v103;
  v80 = v110;
  sub_10007228C();

  (*(v104 + 8))(v80, v78);
  v111 = v78;
  v112 = v77;
  swift_getOpaqueTypeConformance2();
  v81 = v105;
  sub_1000722AC();
  return (*(v106 + 8))(v79, v81);
}

uint64_t sub_100017578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AFEntryView();
  sub_10000EA9C(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000175FC()
{
  result = qword_100095060;
  if (!qword_100095060)
  {
    type metadata accessor for AFEntryView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095060);
  }

  return result;
}

unint64_t sub_100017654()
{
  result = qword_100095068;
  if (!qword_100095068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095068);
  }

  return result;
}

unint64_t sub_1000176A8()
{
  result = qword_100094798;
  if (!qword_100094798)
  {
    sub_1000038D4(&qword_100094790, &unk_100073850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094798);
  }

  return result;
}

uint64_t sub_100017710()
{
  sub_1000038D4(&qword_1000947B8, &unk_100073870);
  sub_1000038D4(&qword_1000947C0, &unk_100074350);
  sub_1000038D4(&qword_1000947C8, &qword_100073880);
  sub_1000038D4(&qword_100094768, &unk_100074340);
  sub_1000038D4(&qword_100094770, &unk_100073830);
  sub_1000038D4(&qword_100094778, &unk_100074330);
  sub_1000038D4(&qword_100094780, &unk_100073840);
  sub_1000038D4(&qword_100094788, &unk_100074320);
  sub_1000038D4(&qword_100094790, &unk_100073850);
  sub_1000176A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017988(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100017AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for AFMediumContentView()
{
  result = qword_1000950C8;
  if (!qword_1000950C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017CA8@<X0>(uint64_t a1@<X8>)
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
  sub_1000155F4(v2, &v17 - v11);
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

uint64_t sub_100017E90@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_10000388C(&qword_100094F50, &qword_1000740C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_10000388C(&qword_100094F58, &qword_1000740D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = sub_1000729DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AFMediumContentView();
  v16 = *(v15 + 20);
  sub_100017CA8(v14);
  v17 = sub_1000084E0();
  (*(v11 + 8))(v14, v10);
  sub_100071F3C();
  v19 = v1 + *(v15 + 24);
  v20 = (v18 + -28.0 - (v17 + v17)) / *(*(v19 + *(type metadata accessor for AFTimelineEntry() + 36)) + 16);
  *v5 = sub_10007224C();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v21 = sub_10000388C(&qword_100094F60, &qword_1000740D8);
  sub_100018284(v1, &v5[*(v21 + 44)], v17, v20);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  LOBYTE(v15) = sub_1000723DC();
  *(inited + 32) = v15;
  v23 = sub_1000723FC();
  *(inited + 33) = v23;
  v24 = sub_1000723CC();
  *(inited + 34) = v24;
  v25 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v15)
  {
    v25 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v23)
  {
    v25 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v24)
  {
    v25 = sub_1000723EC();
  }

  sub_100071E8C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100014DEC(v5, v9, &qword_100094F50, &qword_1000740C8);
  v34 = &v9[*(v6 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_1000723BC();
  v36 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v35)
  {
    v36 = sub_1000723EC();
  }

  sub_100071E8C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v48;
  sub_100014DEC(v9, v48, &qword_100094F58, &qword_1000740D0);
  result = sub_10000388C(&qword_100094F70, &qword_1000740E8);
  v47 = v45 + *(result + 36);
  *v47 = v36;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_100018284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v95 = a2;
  v100 = sub_10000388C(&qword_100094F78, &qword_1000740F0);
  v94 = *(v100 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v100);
  v82 = &v82 - v8;
  v101 = sub_1000729DC();
  v99 = *(v101 - 8);
  v9 = *(v99 + 64);
  __chkstk_darwin(v101);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v82 - v12;
  __chkstk_darwin(v13);
  v98 = &v82 - v14;
  __chkstk_darwin(v15);
  v97 = &v82 - v16;
  v17 = sub_10000388C(&qword_100094F80, &qword_1000740F8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v93 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v82 - v21;
  v22 = type metadata accessor for AFMediumContentView();
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  v26 = sub_10000388C(&qword_100094F88, &qword_100074100);
  v88 = *(v26 - 8);
  v89 = v26;
  v27 = *(v88 + 64);
  __chkstk_darwin(v26);
  v29 = &v82 - v28;
  v96 = sub_10000388C(&qword_100094F90, &qword_100074108);
  v30 = *(v96 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v96);
  v33 = &v82 - v32;
  v34 = sub_10000388C(&qword_100094F98, &qword_100074110);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v91 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v82 - v38;
  v40 = a1 + *(v23 + 32);
  v41 = *(v40 + *(type metadata accessor for AFTimelineEntry() + 36));
  v42 = *(v41 + 16);
  v102 = a1;
  v90 = v39;
  v86 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v24;
  v84 = v25;
  if (v42)
  {
    v105 = v41;
    sub_10001982C(a1, &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v44 = (v25 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_100019894(&v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v43);
    *(v45 + v44) = a3;
    *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

    sub_10000388C(&qword_100094FD8, &qword_100074160);
    sub_10000388C(&qword_100094FE0, &qword_100074168);
    sub_100004C3C(&qword_100094FE8, &qword_100094FD8, &qword_100074160);
    sub_100015328();
    sub_10001551C();
    sub_10007284C();
    sub_100015570();
    v46 = v89;
    sub_1000725FC();
    (*(v88 + 8))(v29, v46);
    v47 = v96;
    (*(v30 + 32))(v39, v33, v96);
    (*(v30 + 56))(v39, 0, 1, v47);
  }

  else
  {
    (*(v30 + 56))(v39, 1, 1, v96);
  }

  v48 = *(v41 + 16);
  v49 = v97;
  sub_100017CA8(v97);
  v51 = v98;
  v50 = v99;
  v52 = *(v99 + 32);
  v53 = v101;
  v52(v98, v49, v101);
  v54 = *(v50 + 88);
  v55 = v54(v51, v53);
  v56 = enum case for WidgetFamily.systemSmall(_:);
  if (v55 == enum case for WidgetFamily.systemSmall(_:))
  {
    v57 = 1;
    goto LABEL_12;
  }

  if (v55 == enum case for WidgetFamily.systemMedium(_:))
  {
    v57 = 2;
    goto LABEL_12;
  }

  if (v55 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_9;
  }

  if (v55 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v57 = 8;
  }

  else
  {
    v57 = 1;
    if (v55 != enum case for WidgetFamily.accessoryCircular(_:) && v55 != enum case for WidgetFamily.accessoryRectangular(_:) && v55 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v99 + 8))(v51, v101);
LABEL_9:
      v57 = 4;
    }
  }

LABEL_12:
  if (v48 >= v57)
  {
    v68 = 1;
    v69 = v94;
    v70 = v92;
LABEL_28:
    (*(v69 + 56))(v70, v68, 1, v100);
    v78 = v90;
    v77 = v91;
    sub_100004C94(v90, v91, &qword_100094F98, &qword_100074110);
    v79 = v93;
    sub_100004C94(v70, v93, &qword_100094F80, &qword_1000740F8);
    v80 = v95;
    sub_100004C94(v77, v95, &qword_100094F98, &qword_100074110);
    v81 = sub_10000388C(&qword_100094FA0, &unk_100074118);
    sub_100004C94(v79, v80 + *(v81 + 48), &qword_100094F80, &qword_1000740F8);
    sub_100004890(v70, &qword_100094F80, &qword_1000740F8);
    sub_100004890(v78, &qword_100094F98, &qword_100074110);
    sub_100004890(v79, &qword_100094F80, &qword_1000740F8);
    return sub_100004890(v77, &qword_100094F98, &qword_100074110);
  }

  v58 = *(v41 + 16);
  v59 = v83;
  sub_100017CA8(v83);
  v60 = v87;
  v61 = v101;
  v52(v87, v59, v101);
  result = v54(v60, v61);
  if (result == v56)
  {
    v63 = 1;
    v64 = v102;
    v65 = v86;
    v66 = v85;
    v67 = v84;
    goto LABEL_26;
  }

  v64 = v102;
  v65 = v86;
  v66 = v85;
  v67 = v84;
  if (result == enum case for WidgetFamily.systemMedium(_:))
  {
    v63 = 2;
    goto LABEL_26;
  }

  if (result == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_19;
  }

  if (result == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v63 = 8;
  }

  else
  {
    v63 = 1;
    if (result != enum case for WidgetFamily.accessoryCircular(_:) && result != enum case for WidgetFamily.accessoryRectangular(_:) && result != enum case for WidgetFamily.accessoryInline(_:))
    {
      result = (*(v99 + 8))(v60, v101);
LABEL_19:
      v63 = 4;
    }
  }

LABEL_26:
  if (v63 >= v58)
  {
    v105 = v58;
    v106 = v63;
    swift_getKeyPath();
    sub_10001982C(v64, v65);
    v71 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v72 = (v67 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    sub_100019894(v65, v73 + v71);
    *(v73 + v72) = a3;
    *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
    sub_10000388C(&qword_100094FA8, &qword_100074148);
    sub_10000388C(&qword_100094FB0, &qword_100074150);
    sub_100014FD8();
    v74 = sub_1000038D4(&qword_100094FC8, &qword_100074158);
    v75 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
    v103 = v74;
    v104 = v75;
    swift_getOpaqueTypeConformance2();
    v76 = v82;
    sub_10007283C();
    v69 = v94;
    v70 = v92;
    (*(v94 + 32))(v92, v76, v100);
    v68 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v63 = a3;
  v53 = sub_100071FCC();
  v52 = *(v53 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v53);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  v7 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v9 = &v51 - v8;
  v62 = sub_10000388C(&qword_100094FB0, &qword_100074150);
  v55 = *(v62 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v62);
  v54 = &v51 - v11;
  v58 = sub_10000388C(&qword_100095018, &qword_100074178);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v60 = &v51 - v13;
  v14 = sub_1000729DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v51 - v21;
  v57 = sub_10000388C(&qword_100094FF8, &qword_100074170);
  v23 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v25 = &v51 - v24;
  v59 = sub_10000388C(&qword_100095020, &qword_100074188);
  v26 = *(v59 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v59);
  v29 = &v51 - v28;
  if (a1[2])
  {
    v30 = v56;
    sub_100017CA8(v18);
    sub_100071DDC();
    (*(v15 + 8))(v18, v14);
    v31 = v30 + *(type metadata accessor for AFMediumContentView() + 20);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v32 = v61;
    v33 = &v9[*(v61 + 36)];
    v34 = v67;
    *v33 = v66;
    *(v33 + 1) = v34;
    *(v33 + 2) = v68;
    sub_100071FBC();
    v35 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
    v36 = v54;
    sub_10007268C();
    (*(v52 + 8))(v6, v53);
    sub_100004890(v9, &qword_100094FC8, &qword_100074158);
    v37 = v55;
    v38 = v62;
    (*(v55 + 16))(v60, v36, v62);
    swift_storeEnumTagMultiPayload();
    v39 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170);
    v64 = v57;
    v65 = v39;
    swift_getOpaqueTypeConformance2();
    v64 = v32;
    v65 = v35;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v37 + 8))(v36, v38);
  }

  else
  {
    v42 = *a1;
    v41 = a1[1];
    v43 = v56;
    sub_100017CA8(v18);
    sub_100071DCC();
    (*(v15 + 8))(v18, v14);
    sub_100012BA4(v22);
    v44 = v43 + *(type metadata accessor for AFMediumContentView() + 20);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v45 = v57;
    v46 = &v25[*(v57 + 36)];
    v47 = v67;
    *v46 = v66;
    *(v46 + 1) = v47;
    *(v46 + 2) = v68;
    v48 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170);
    sub_1000725FC();
    sub_100004890(v25, &qword_100094FF8, &qword_100074170);
    v49 = v59;
    (*(v26 + 16))(v60, v29, v59);
    swift_storeEnumTagMultiPayload();
    v64 = v45;
    v65 = v48;
    swift_getOpaqueTypeConformance2();
    v50 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
    v64 = v61;
    v65 = v50;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v26 + 8))(v29, v49);
  }
}

uint64_t sub_100019580@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_100071FCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v21 - v15;
  sub_100017CA8(v12);
  sub_100071DDC();
  (*(v9 + 8))(v12, v8);
  v17 = a1 + *(type metadata accessor for AFMediumContentView() + 20);
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v18 = &v16[*(v13 + 36)];
  v19 = v23;
  *v18 = v22;
  *(v18 + 1) = v19;
  *(v18 + 2) = v24;
  sub_100071FBC();
  sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158);
  sub_10007268C();
  (*(v4 + 8))(v7, v3);
  return sub_100004890(v16, &qword_100094FC8, &qword_100074158);
}

uint64_t sub_10001982C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFMediumContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFMediumContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000198F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AFMediumContentView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100019580(v1 + v4, a1);
}

uint64_t sub_1000199B0()
{
  v1 = type metadata accessor for AFMediumContentView();
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

  v8 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 20);
  v10 = sub_100071F5C();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);
  v11 = &v5[*(v1 + 24)];
  v12 = sub_100071D4C();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *&v11[*(type metadata accessor for AFTimelineEntry() + 36)];

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_100019B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFMediumContentView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100018DA8(a1, v2 + v6, a2);
}

uint64_t sub_100019C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CPTimelineEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100019D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CPTimelineEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CPTitleGradientView()
{
  result = qword_100095160;
  if (!qword_100095160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019EA0()
{
  sub_100019F3C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CPTimelineEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100019F3C()
{
  if (!qword_100094850)
  {
    sub_10007297C();
    v0 = sub_100071EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100094850);
    }
  }
}

uint64_t sub_100019FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000388C(&qword_1000951A0, &qword_100074538);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v47 - v5);
  v7 = sub_10000388C(&qword_1000951A8, &qword_100074540);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v50 = sub_10000388C(&qword_1000951B0, &qword_100074548);
  v11 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v52 = &v47 - v12;
  v13 = sub_10000388C(&qword_1000951B8, &qword_100074550);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v47 - v17;
  v18 = sub_10000388C(&qword_1000951C0, &qword_100074558);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v22 = type metadata accessor for CPTitleGradientView();
  v23 = v1 + *(v22 + 24);
  if (*(v23 + *(type metadata accessor for CPTimelineEntry() + 32)) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    return sub_10007230C();
  }

  else
  {
    v47 = v18;
    v48 = v13;
    v49 = a1;
    *v6 = sub_1000728AC();
    v6[1] = v25;
    v26 = sub_10000388C(&qword_1000951C8, &qword_100074560);
    sub_10001A5D8(v1, v6 + *(v26 + 44));
    v27 = (v1 + *(v22 + 20));
    v29 = *v27;
    v28 = v27[1];
    sub_1000728AC();
    sub_100071FFC();
    sub_100014DEC(v6, v10, &qword_1000951A0, &qword_100074538);
    v30 = &v10[*(v7 + 36)];
    v31 = v66;
    *(v30 + 4) = v65;
    *(v30 + 5) = v31;
    *(v30 + 6) = v67;
    v32 = v62;
    *v30 = v61;
    *(v30 + 1) = v32;
    v33 = v64;
    *(v30 + 2) = v63;
    *(v30 + 3) = v33;
    sub_1000728AC();
    sub_100071FFC();
    v34 = v10;
    v35 = v52;
    sub_100014DEC(v34, v52, &qword_1000951A8, &qword_100074540);
    v36 = (v35 + *(v50 + 36));
    v37 = v59;
    v36[4] = v58;
    v36[5] = v37;
    v36[6] = v60;
    v38 = v55;
    *v36 = v54;
    v36[1] = v38;
    v39 = v57;
    v36[2] = v56;
    v36[3] = v39;
    KeyPath = swift_getKeyPath();
    v41 = v51;
    v42 = &v51[*(v48 + 36)];
    v43 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
    v44 = enum case for ColorScheme.light(_:);
    v45 = sub_100071EAC();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = KeyPath;
    sub_100014DEC(v35, v41, &qword_1000951B0, &qword_100074548);
    v46 = v53;
    sub_100014DEC(v41, v53, &qword_1000951B8, &qword_100074550);
    sub_100004C94(v46, v21, &qword_1000951B8, &qword_100074550);
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    sub_10007230C();
    return sub_100004890(v46, &qword_1000951B8, &qword_100074550);
  }
}

uint64_t sub_10001A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_10000388C(&qword_100095200, &qword_1000745A8);
  v106 = *(v3 - 8);
  v107 = v3;
  v4 = *(v106 + 64);
  __chkstk_darwin(v3);
  v101 = &v94 - v5;
  v99 = sub_10000388C(&qword_100095208, &qword_1000745B0);
  v6 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v100 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = &v94 - v9;
  v10 = sub_10007297C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v94 - v16;
  v18 = sub_10000388C(&qword_100095210, &qword_1000745B8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v105 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v104 = &v94 - v22;
  v23 = sub_10000388C(&qword_100095218, &unk_1000745C0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v103 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v94 - v28;
  sub_10007287C();
  v30 = sub_1000723AC();
  v29[*(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)] = v30;
  sub_1000726CC();
  v31 = sub_1000726FC();

  v32 = sub_1000723AC();
  v33 = &v29[*(sub_10000388C(&qword_100095228, &qword_1000745D0) + 36)];
  *v33 = v31;
  v33[8] = v32;
  sub_10000388C(&qword_100095230, &qword_1000745D8);
  v34 = swift_allocObject();
  v98 = xmmword_100074490;
  *(v34 + 16) = xmmword_100074490;
  *(v34 + 32) = sub_1000726CC();
  *(v34 + 40) = sub_1000726DC();
  sub_10007286C();
  sub_1000728FC();
  sub_1000728EC();
  sub_100071F8C();
  sub_1000728CC();
  v36 = v35;
  v38 = v37;
  sub_10007291C();
  v39 = &v29[*(v24 + 44)];
  v40 = v131;
  *v39 = v130;
  *(v39 + 1) = v40;
  *(v39 + 4) = v132;
  *(v39 + 5) = 0x3FD1DF46A2529D39;
  *(v39 + 6) = v36;
  *(v39 + 7) = v38;
  v102 = xmmword_1000744A0;
  *(v39 + 4) = xmmword_1000744A0;
  *(v39 + 10) = v41;
  *(v39 + 11) = v42;
  sub_1000129F8(v17);
  sub_10007296C();
  sub_10001B20C();
  LOBYTE(v24) = sub_100072B1C();
  v43 = *(v11 + 8);
  v43(v14, v10);
  v43(v17, v10);
  if (v24)
  {
    goto LABEL_16;
  }

  v44 = a1 + *(type metadata accessor for CPTitleGradientView() + 24);
  v45 = *(v44 + *(type metadata accessor for CPTimelineEntry() + 20));
  if (!(v45 >> 62))
  {
    result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:
    v89 = v104;
    (*(v106 + 56))(v104, 1, 1, v107);
LABEL_17:
    v90 = v103;
    sub_100004C94(v29, v103, &qword_100095218, &unk_1000745C0);
    v91 = v105;
    sub_100004C94(v89, v105, &qword_100095210, &qword_1000745B8);
    v92 = v108;
    sub_100004C94(v90, v108, &qword_100095218, &unk_1000745C0);
    v93 = sub_10000388C(&qword_100095248, &qword_1000745F0);
    sub_100004C94(v91, v92 + *(v93 + 48), &qword_100095210, &qword_1000745B8);
    sub_100004890(v89, &qword_100095210, &qword_1000745B8);
    sub_100004890(v29, &qword_100095218, &unk_1000745C0);
    sub_100004890(v91, &qword_100095210, &qword_1000745B8);
    return sub_100004890(v90, &qword_100095218, &unk_1000745C0);
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v45 & 0xC000000000000001) != 0)
  {
    v47 = sub_100072E6C();
LABEL_7:
    v48 = *(v47 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (v48 || (v48 = *(v47 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor)) != 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
    }

    v50 = v49;

    v51 = v50;
    v52 = sub_1000726AC();
    v96 = v51;
    [v51 _luminance];
    if (v53 <= 0.8)
    {
      v54 = -0.2;
    }

    else
    {
      v54 = (v53 + -0.8) / -0.2 * 0.2 + -0.2;
    }

    v95 = v54;
    v55 = v99;
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100074190;
    *(v56 + 32) = v52;
    *(v56 + 40) = v52;
    swift_retain_n();
    *(v56 + 48) = sub_1000726FC();
    *(v56 + 56) = sub_1000726DC();
    sub_10007286C();
    sub_1000728FC();
    sub_1000728EC();
    sub_100071F8C();
    sub_1000728CC();
    v58 = v57;
    v60 = v59;
    sub_10007291C();
    v62 = v61;
    v64 = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = v98;
    *(v65 + 32) = v52;

    *(v65 + 40) = sub_1000726DC();
    sub_10007286C();
    sub_1000728FC();
    sub_1000728EC();
    sub_100071F8C();
    sub_1000728CC();
    v67 = v66;
    v69 = v68;
    sub_10007291C();
    v71 = v70;
    v73 = v72;
    v74 = *(v55 + 36);
    v75 = enum case for BlendMode.color(_:);
    v76 = sub_1000728BC();
    v77 = v97;
    (*(*(v76 - 8) + 104))(&v97[v74], v75, v76);
    v78 = v113;
    *v77 = v112;
    *(v77 + 16) = v78;
    *(v77 + 32) = v114;
    *(v77 + 40) = 0x3FD1DF46A2529D39;
    *(v77 + 48) = v67;
    *(v77 + 56) = v69;
    *(v77 + 64) = v102;
    *(v77 + 80) = v71;
    *(v77 + 88) = v73;
    v79 = v100;
    sub_100004C94(v77, v100, &qword_100095208, &qword_1000745B0);
    v81 = v109;
    v80 = v110;
    v115[0] = v109;
    v115[1] = v110;
    *&v116 = v111;
    *(&v116 + 1) = 0x3FD1DF46A2529D39;
    *&v117 = v58;
    *(&v117 + 1) = v60;
    v118 = v102;
    *&v119 = v62;
    *(&v119 + 1) = v64;
    v82 = v95;
    v120 = v95;
    v83 = v102;
    v84 = v119;
    v85 = v101;
    *(v101 + 12) = v95;
    v85[4] = v83;
    v85[5] = v84;
    v86 = v117;
    v85[2] = v116;
    v85[3] = v86;
    *v85 = v81;
    v85[1] = v80;
    v87 = sub_10000388C(&qword_100095238, &qword_1000745E0);
    sub_100004C94(v79, v85 + *(v87 + 48), &qword_100095208, &qword_1000745B0);
    sub_100004C94(v115, v121, &qword_100095240, &qword_1000745E8);

    sub_100004890(v77, &qword_100095208, &qword_1000745B0);
    sub_100004890(v79, &qword_100095208, &qword_1000745B0);
    v121[0] = v109;
    v121[1] = v110;
    v122 = v111;
    v123 = 0x3FD1DF46A2529D39;
    v124 = v58;
    v125 = v60;
    v126 = v102;
    v127 = v62;
    v128 = v64;
    v129 = v82;
    sub_100004890(v121, &qword_100095240, &qword_1000745E8);
    v88 = v85;
    v89 = v104;
    sub_100014DEC(v88, v104, &qword_100095200, &qword_1000745A8);
    (*(v106 + 56))(v89, 0, 1, v107);
    goto LABEL_17;
  }

  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v47 = *(v45 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}