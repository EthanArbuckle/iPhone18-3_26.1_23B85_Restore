void *sub_99CC4()
{
  v1 = v0;
  v2 = sub_1158B0();
  v75 = *(v2 - 8);
  v3 = *(v75 + 8);
  __chkstk_darwin(v2);
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1158D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  v12 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v69 = &v61 - v14;
  v15 = sub_115760();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  __chkstk_darwin(v24);
  v29 = &v61 - v28;
  v30 = *v1;
  v31 = *(*v1 + 16);
  if (!v31)
  {
    return _swiftEmptyArrayStorage;
  }

  v67 = v25;
  v71 = v2;
  v32 = v31 - 1;
  v74 = v26;
  v33 = v27;
  v34 = type metadata accessor for SummaryChartBucket(0);
  v76 = v6;
  v72 = v11;
  v73 = v5;
  v35 = v34 - 8;
  v36 = v30 + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80));
  v37 = v36 + *(*(v34 - 8) + 72) * v32;
  v38 = *(v34 + 24);
  v63 = v33;
  v39 = *(v33 + 16);
  v61 = v33 + 16;
  v39(v23, v37 + v38, v15);
  v40 = *(v33 + 32);
  v66 = v29;
  v40(v29, v23, v15);
  v41 = v36 + *(v35 + 32);
  v62 = v39;
  v39(v19, v41, v15);
  v65 = v40;
  v40(v74, v19, v15);
  v42 = v72;
  sub_1158A0();
  v43 = v70;
  (*(v75 + 13))(v70, enum case for Calendar.Component.day(_:), v71);
  v44 = v68;
  sub_1158A0();
  sub_115830();
  v45 = *(v76 + 8);
  v76 += 8;
  v46 = v73;
  v45(v44, v73);
  v47 = v69;
  sub_115890();
  v48 = v63;
  v68 = *(v63 + 8);
  v64 = v63 + 8;
  (v68)(v19, v15);
  (*(v75 + 1))(v43, v71);
  v75 = v45;
  v45(v42, v46);
  v49 = *(v48 + 48);
  if (v49(v47, 1, v15) == 1)
  {
    v50 = v67;
    v62(v67, v74, v15);
    v51 = v49(v47, 1, v15);
    v52 = v65;
    if (v51 != 1)
    {
      sub_488C8(v47, &qword_182EF0, &unk_124BB0);
    }
  }

  else
  {
    v50 = v67;
    v52 = v65;
    v65(v67, v47, v15);
  }

  sub_46F9C(&qword_184260, &unk_128570);
  v54 = *(v48 + 72);
  v55 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1248A0;
  v56 = v53 + v55;
  v57 = v72;
  sub_1158A0();
  v58 = v66;
  sub_115830();
  v75(v57, v73);
  v52(v56 + v54, v50, v15);
  v59 = v68;
  (v68)(v74, v15);
  v59(v58, v15);
  return v53;
}

uint64_t sub_9A2E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v91 = &v70 - v5;
  v6 = type metadata accessor for FullDaySummaryView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_46F9C(&qword_184678, &qword_128580);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v70 - v12;
  v78 = sub_46F9C(&qword_184680, &qword_128588);
  v77 = *(v78 - 1);
  v14 = v77[8];
  __chkstk_darwin(v78);
  v16 = &v70 - v15;
  v80 = sub_46F9C(&qword_184688, &qword_128590);
  v79 = *(v80 - 8);
  v17 = *(v79 + 64);
  __chkstk_darwin(v80);
  v76 = &v70 - v18;
  v19 = sub_46F9C(&qword_184690, &qword_128598);
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = *(v82 + 64);
  __chkstk_darwin(v19);
  v81 = &v70 - v21;
  v22 = sub_46F9C(&qword_184698, &qword_1285A0);
  v85 = *(v22 - 8);
  v86 = v22;
  v23 = *(v85 + 64);
  __chkstk_darwin(v22);
  v84 = &v70 - v24;
  v25 = sub_46F9C(&qword_1846A0, &qword_1285A8);
  v88 = *(v25 - 8);
  v89 = v25;
  v26 = *(v88 + 64);
  __chkstk_darwin(v25);
  v87 = &v70 - v27;
  v92 = v2;
  sub_46F9C(&qword_1846A8, &unk_1285B0);
  sub_A3B08();
  sub_115DC0();
  sub_A3714(v2, &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullDaySummaryView);
  v28 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v29 = swift_allocObject();
  sub_A2BF0(&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for FullDaySummaryView);
  v30 = sub_46F9C(&qword_184160, &unk_127D70);
  v31 = sub_48800(&qword_1846C0, &qword_184678, &qword_128580);
  v32 = sub_7DDE8();
  v75 = v16;
  sub_116990();

  (*(v10 + 8))(v13, v9);
  result = type metadata accessor for SummaryChartViewModel(0);
  v34 = *(v2 + *(result + 36));
  if (v34 < 0)
  {
    __break(1u);
  }

  else
  {
    v35 = v2;
    v99 = 0;
    v100 = v34;
    v73 = sub_115F00();
    v36 = *(v73 - 8);
    v72 = *(v36 + 56);
    v74 = v36 + 56;
    v37 = v91;
    v72(v91, 1, 1, v73);
    v38 = sub_46F9C(&qword_184178, &qword_1285D0);
    v93 = v9;
    v94 = v30;
    v95 = v31;
    v96 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = sub_7DEA4();
    v41 = v76;
    v42 = v78;
    v43 = v75;
    sub_116970();
    sub_488C8(v37, &qword_184138, &qword_127D50);
    v44 = (v77[1])(v43, v42);
    v77 = &v70;
    __chkstk_darwin(v44);
    *(&v70 - 2) = v35;
    v71 = v35;
    v45 = sub_46F9C(&qword_1846C8, &qword_1285D8);
    v93 = v42;
    v94 = v38;
    v95 = OpaqueTypeConformance2;
    v96 = v40;
    v46 = swift_getOpaqueTypeConformance2();
    v78 = &protocol conformance descriptor for AxisMarks<A>;
    v47 = sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8);
    v48 = v81;
    v49 = v80;
    sub_116930();
    (*(v79 + 8))(v41, v49);
    v99 = sub_99CC4();
    v50 = v91;
    v72(v91, 1, 1, v73);
    v51 = sub_46F9C(&qword_1841B8, &qword_1285E0);
    v93 = v49;
    v94 = v45;
    v95 = v46;
    v96 = v47;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = sub_7E000();
    v54 = v83;
    v55 = v84;
    sub_116960();
    sub_488C8(v50, &qword_184138, &qword_127D50);

    v56 = (*(v82 + 8))(v48, v54);
    v91 = &v70;
    __chkstk_darwin(v56);
    v57 = v71;
    *(&v70 - 2) = v71;
    v58 = sub_46F9C(&qword_1846D8, &qword_1285E8);
    v93 = v54;
    v94 = v51;
    v95 = v52;
    v96 = v53;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = sub_48800(&qword_1846E0, &qword_1846D8, &qword_1285E8);
    v62 = v86;
    v61 = v87;
    sub_116910();
    (*(v85 + 8))(v55, v62);
    v63 = *(v57 + 24) != 1;
    v64 = sub_46F9C(&qword_1846E8, &qword_1285F0);
    v93 = v62;
    v94 = v58;
    v95 = v59;
    v96 = v60;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = sub_47A1C(&qword_1846F0, &qword_1285F8);
    v67 = v89;
    v93 = v89;
    v94 = &type metadata for String;
    v95 = &type metadata for Color;
    v96 = v65;
    v97 = &protocol witness table for String;
    v98 = &protocol witness table for Color;
    v68 = swift_getOpaqueTypeConformance2();
    v93 = v66;
    v94 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    sub_8E234(v63, sub_9CD0C, 0, v67, v64, v65, v69, v90);
    return (*(v88 + 8))(v61, v67);
  }

  return result;
}

uint64_t sub_9ADF0(uint64_t *a1)
{
  v2 = type metadata accessor for FullDaySummaryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v19 = *a1;
  swift_getKeyPath();
  sub_A3714(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullDaySummaryView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_A2BF0(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FullDaySummaryView);

  sub_46F9C(&qword_184D30, &qword_129010);
  sub_46F9C(&qword_184D98, &unk_129058);
  sub_48800(&qword_184D40, &qword_184D30, &qword_129010);
  sub_A3C98(&qword_183548, &type metadata accessor for Date);
  v7 = sub_47A1C(&qword_184150, &unk_127D60);
  v8 = sub_116180();
  v9 = sub_47A1C(&qword_184158, &unk_1285C0);
  v15 = sub_115E00();
  v16 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v9;
  v16 = &type metadata for Color;
  v17 = OpaqueTypeConformance2;
  v18 = &protocol witness table for Color;
  v11 = swift_getOpaqueTypeConformance2();
  v12 = sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle);
  v15 = v7;
  v16 = v8;
  v17 = v11;
  v18 = v12;
  swift_getOpaqueTypeConformance2();
  return sub_116E00();
}

uint64_t sub_9B114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v65 = a1;
  v75 = a3;
  v74 = sub_116180();
  v3 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v73 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_116390();
  v71 = *(v76 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v76);
  v70 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = v59 - v9;
  v10 = sub_46F9C(&qword_1842B8, &qword_129030);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v59 - v12;
  v14 = sub_1158B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_46F9C(&qword_1843C8, &qword_128140);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v59[1] = v59 - v21;
  v62 = sub_115E00();
  v63 = *(v62 - 8);
  v22 = *(v63 + 64);
  __chkstk_darwin(v62);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_46F9C(&qword_184158, &unk_1285C0);
  v26 = *(v25 - 8);
  v66 = v25;
  v67 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v60 = v59 - v28;
  v29 = sub_46F9C(&qword_184150, &unk_127D60);
  v30 = *(v29 - 8);
  v68 = v29;
  v69 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v61 = v59 - v32;
  sub_116370();
  v33 = *(type metadata accessor for SummaryChartBucket(0) + 24);
  (*(v15 + 104))(v18, enum case for Calendar.Component.day(_:), v14);
  v34 = sub_1158D0();
  (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
  v35 = v65;
  sub_115C40();

  sub_488C8(v13, &qword_1842B8, &qword_129030);
  (*(v15 + 8))(v18, v14);
  sub_116370();
  v36 = *(v35 + 8) & ~(*(v35 + 8) >> 63);
  if (*(v35 + 16))
  {
    v36 = 0;
  }

  v77 = v36;
  sub_115C60();

  v37 = *(v72 + *(type metadata accessor for FullDaySummaryView(0) + 28));
  sub_115760();
  sub_115DF0();
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = v70;
  v39 = v71;
  v41 = *(v71 + 104);
  v42 = v76;
  v41(v70, enum case for RoundedCornerStyle.continuous(_:), v76);
  v43 = v60;
  v44 = v62;
  sub_115AE0();
  (*(v39 + 8))(v40, v42);
  (*(v63 + 8))(v24, v44);
  v45 = sub_5A754();
  swift_beginAccess();
  v81 = *(*v45 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);
  v77 = v44;
  v78 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v61;
  v48 = v66;
  sub_115AF0();
  v49 = v43;
  v50 = v48;
  (*(v67 + 8))(v49, v48);
  v51 = v73;
  v41(&v73[*(v74 + 20)], v38, v76);
  __asm { FMOV            V0.2D, #4.0 }

  *v51 = _Q0;
  v77 = v50;
  v78 = &type metadata for Color;
  v79 = OpaqueTypeConformance2;
  v80 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle);
  v57 = v68;
  sub_115B90();
  sub_A68C8(v51, &type metadata accessor for RoundedRectangle);
  return (*(v69 + 8))(v47, v57);
}

uint64_t sub_9B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v2 = sub_115C80();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_115BE0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FullDaySummaryView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_46F9C(&qword_1842B8, &qword_129030);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  v13 = sub_1158B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_115C10();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  (*(v14 + 104))(v17, enum case for Calendar.Component.day(_:), v13, v20);
  v21 = sub_1158D0();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_115BF0();
  sub_488C8(v12, &qword_1842B8, &qword_129030);
  (*(v14 + 8))(v17, v13);
  sub_A3714(v25[0], v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullDaySummaryView);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  sub_A2BF0(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for FullDaySummaryView);
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_184D58, &qword_129038);
  sub_A6ADC();
  return sub_115E90();
}

uint64_t sub_9BCF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[2] = a1;
  v25 = a2;
  v2 = sub_115D00();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_115DA0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_46F9C(&qword_184D70, &qword_129040);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v11 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v24 - v13;
  v15 = sub_115760();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115EB0();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_488C8(v14, &qword_182EF0, &unk_124BB0);
    return (*(v7 + 56))(v25, 1, 1, v6);
  }

  else
  {
    v21 = (*(v16 + 32))(v19, v14, v15);
    v24[1] = v24;
    __chkstk_darwin(v21);
    sub_115D90();
    sub_115CF0();
    v23[2] = sub_46F9C(&qword_184D78, &qword_129048);
    v23[3] = sub_A6B94();
    v23[0] = sub_A6B8C;
    v23[1] = v23;
    sub_115C30();
    v22 = v25;
    (*(v7 + 32))(v25, v10, v6);
    (*(v7 + 56))(v22, 0, 1, v6);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_9C0C4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v139 = a2;
  v127 = a3;
  v128 = type metadata accessor for SummaryChartBucket(0);
  v137 = *(v128 - 8);
  v4 = *(v137 + 64);
  __chkstk_darwin(v128);
  v134 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1158D0();
  v6 = *(v136 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v136);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_115760();
  v10 = *(v138 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v138);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v126 - v15;
  __chkstk_darwin(v17);
  v19 = &v126 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v126 - v22;
  v24 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_12;
  }

  v130 = a1;
  v25 = *(v128 + 24);
  v26 = *(v10 + 16);
  v132 = v24 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
  v27 = v138;
  v26(v19, v132 + v25, v138, v21);
  (*(v10 + 32))(v23, v19, v27);
  sub_1158A0();
  sub_115830();
  v29 = v6 + 8;
  v28 = *(v6 + 8);
  v30 = v136;
  v28(v9, v136);
  sub_1158A0();
  sub_115830();
  v133 = v29;
  v131 = v28;
  v28(v9, v30);
  LOBYTE(v30) = sub_115720();
  v31 = *(v10 + 8);
  v31(v13, v27);
  v135 = v10 + 8;
  v31(v16, v27);
  if (v30)
  {
    v32 = sub_8D8B4()[3];
    isa = sub_1156B0().super.isa;
    v34 = [v32 stringFromDate:isa];

    v35 = sub_1171B0();
    v37 = v36;

    *&v143 = v35;
    *(&v143 + 1) = v37;
    sub_4869C();
    v38 = sub_116900();
    v40 = v39;
    LOBYTE(v34) = v41;
    v139 = v23;
    sub_116710();
    v42 = v31;
    v43 = sub_1168C0();
    v45 = v44;
    v47 = v46;

    sub_48928(v38, v40, v34 & 1);

    sub_1166C0();
    v48 = sub_116810();
    v50 = v49;
    v52 = v51;
    sub_48928(v43, v45, v47 & 1);

    *&v143 = sub_A377C();

    v53 = sub_116890();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_48928(v48, v50, v52 & 1);

    *&v140 = v53;
    *(&v140 + 1) = v55;
    *&v141 = v57 & 1;
    *(&v141 + 1) = v59;
    LOBYTE(v142) = 0;
    sub_488B8(v53, v55, v57 & 1);

    sub_116470();
    v140 = v143;
    v141 = v144;
    v142 = v145;
    sub_46F9C(&qword_184D90, &qword_129050);
    sub_A6C20();
    sub_116470();
    sub_48928(v53, v55, v57 & 1);

    result = v42(v139, v138);
LABEL_13:
    v122 = v144;
    v123 = v145;
    v124 = v146;
    v125 = v127;
    *v127 = v143;
    v125[1] = v122;
    *(v125 + 32) = v123;
    *(v125 + 33) = v124;
    return result;
  }

  result = (v31)(v23, v138);
  v130 = *(v24 + 16);
  if (!v130)
  {
LABEL_12:
    v94 = sub_8D8B4()[3];
    v95 = sub_1156B0().super.isa;
    v96 = [v94 stringFromDate:v95];

    v97 = sub_1171B0();
    v99 = v98;

    *&v143 = v97;
    *(&v143 + 1) = v99;
    sub_4869C();
    v100 = sub_116900();
    v102 = v101;
    LOBYTE(v96) = v103;
    sub_116710();
    v104 = sub_1168C0();
    v106 = v105;
    v108 = v107;

    sub_48928(v100, v102, v96 & 1);

    sub_1166C0();
    v109 = sub_116810();
    v111 = v110;
    v113 = v112;
    sub_48928(v104, v106, v108 & 1);

    v114 = sub_5A754();
    swift_beginAccess();
    *&v143 = *(*v114 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

    v115 = sub_116890();
    v117 = v116;
    v119 = v118;
    v121 = v120;
    sub_48928(v109, v111, v113 & 1);

    *&v140 = v115;
    *(&v140 + 1) = v117;
    *&v141 = v119 & 1;
    *(&v141 + 1) = v121;
    v142 = 256;
    sub_46F9C(&qword_184D90, &qword_129050);
    sub_A6C20();
    result = sub_116470();
    goto LABEL_13;
  }

  v61 = 0;
  v129 = *(v128 + 24);
  while (v61 < *(v24 + 16))
  {
    v62 = v134;
    sub_A3714(v132 + *(v137 + 72) * v61, v134, type metadata accessor for SummaryChartBucket);
    sub_1158A0();
    sub_115830();
    v63 = v136;
    v64 = v131;
    v131(v9, v136);
    sub_1158A0();
    sub_115830();
    v64(v9, v63);
    LOBYTE(v63) = sub_115720();
    v65 = v138;
    v31(v13, v138);
    v31(v16, v65);
    if (v63)
    {
      v66 = *(v62 + *(v128 + 28));
      result = sub_A68C8(v62, type metadata accessor for SummaryChartBucket);
      if ((v66 & 1) == 0)
      {
        v67 = sub_8D8B4()[3];
        v68 = sub_1156B0().super.isa;
        v69 = [v67 stringFromDate:v68];

        v70 = sub_1171B0();
        v72 = v71;

        *&v143 = v70;
        *(&v143 + 1) = v72;
        sub_4869C();
        v73 = sub_116900();
        v75 = v74;
        LOBYTE(v69) = v76;
        sub_116710();
        v77 = sub_1168C0();
        v79 = v78;
        v81 = v80;

        sub_48928(v73, v75, v69 & 1);

        sub_1166C0();
        v82 = sub_116810();
        v84 = v83;
        v86 = v85;
        sub_48928(v77, v79, v81 & 1);

        v87 = [objc_opt_self() systemGrayColor];
        *&v143 = sub_116BE0();
        v88 = sub_116890();
        v90 = v89;
        LOBYTE(v77) = v91;
        v93 = v92;
        sub_48928(v82, v84, v86 & 1);

        *&v140 = v88;
        *(&v140 + 1) = v90;
        *&v141 = v77 & 1;
        *(&v141 + 1) = v93;
        LOBYTE(v142) = 1;
        sub_488B8(v88, v90, v77 & 1);

        sub_116470();
        v140 = v143;
        v141 = v144;
        v142 = v145;
        sub_46F9C(&qword_184D90, &qword_129050);
        sub_A6C20();
        sub_116470();
        sub_48928(v88, v90, v77 & 1);

        goto LABEL_13;
      }
    }

    else
    {
      result = sub_A68C8(v62, type metadata accessor for SummaryChartBucket);
    }

    if (v130 == ++v61)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_9CD0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v3 = sub_115CD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_46F9C(&qword_1846F0, &qword_1285F8);
  v64 = *(v66 - 8);
  v12 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = &v55 - v13;
  sub_46F9C(&qword_184258, &unk_127E10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1248A0;
  v15 = sub_117170();
  v16 = BatteryUILocalization(v15);

  if (v16)
  {
    v60 = a2;
    v61 = v4;
    v62 = v3;
    v17 = sub_1171B0();
    v19 = v18;

    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    v20 = sub_5A754();
    swift_beginAccess();
    *(v14 + 48) = *(*v20 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);

    v21 = sub_117170();
    v22 = BatteryUILocalization(v21);

    if (v22)
    {
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_124890;
      v24 = sub_8D8B4()[2];
      sub_115750();
      isa = sub_1156B0().super.isa;
      (*(v8 + 8))(v11, v7);
      v26 = [v24 stringFromDate:isa];

      v27 = sub_1171B0();
      v29 = v28;

      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_53EE8();
      *(v23 + 32) = v27;
      *(v23 + 40) = v29;
      v30 = sub_117180();
      v32 = v31;

      *(v14 + 56) = v30;
      *(v14 + 64) = v32;
      swift_beginAccess();
      *(v14 + 72) = *(*v20 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

      v59 = sub_46F9C(&qword_1846A0, &qword_1285A8);
      v58 = sub_47A1C(&qword_184698, &qword_1285A0);
      v57 = sub_47A1C(&qword_1846D8, &qword_1285E8);
      v56 = sub_47A1C(&qword_184690, &qword_128598);
      v33 = sub_47A1C(&qword_1841B8, &qword_1285E0);
      v34 = sub_47A1C(&qword_184688, &qword_128590);
      v35 = sub_47A1C(&qword_1846C8, &qword_1285D8);
      v36 = sub_47A1C(&qword_184680, &qword_128588);
      v37 = sub_47A1C(&qword_184178, &qword_1285D0);
      v38 = sub_47A1C(&qword_184678, &qword_128580);
      v39 = sub_47A1C(&qword_184160, &unk_127D70);
      v40 = sub_48800(&qword_1846C0, &qword_184678, &qword_128580);
      v41 = sub_7DDE8();
      v68 = v38;
      v69 = v39;
      v70 = v40;
      v71 = v41;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v43 = sub_7DEA4();
      v68 = v36;
      v69 = v37;
      v70 = OpaqueTypeConformance2;
      v71 = v43;
      v44 = swift_getOpaqueTypeConformance2();
      v45 = sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8);
      v68 = v34;
      v69 = v35;
      v70 = v44;
      v71 = v45;
      v46 = swift_getOpaqueTypeConformance2();
      v47 = sub_7E000();
      v68 = v56;
      v69 = v33;
      v70 = v46;
      v71 = v47;
      v48 = swift_getOpaqueTypeConformance2();
      v49 = sub_48800(&qword_1846E0, &qword_1846D8, &qword_1285E8);
      v68 = v58;
      v69 = v57;
      v70 = v48;
      v71 = v49;
      v50 = swift_getOpaqueTypeConformance2();
      v51 = v63;
      v52 = v59;
      sub_1169A0();

      v53 = v67;
      sub_115CC0();
      sub_116EC0();
      v68 = v52;
      v69 = &type metadata for String;
      v70 = &type metadata for Color;
      v71 = v50;
      v72 = &protocol witness table for String;
      v73 = &protocol witness table for Color;
      swift_getOpaqueTypeConformance2();
      v54 = v66;
      sub_116940();
      (*(v61 + 8))(v53, v62);
      (*(v64 + 8))(v51, v54);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_9D49C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v51 - v5;
  v6 = type metadata accessor for DynamicDaySummaryView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_46F9C(&qword_1846F8, &qword_128600);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v55 = sub_46F9C(&qword_184700, &qword_128608);
  v54 = *(v55 - 8);
  v14 = v54[8];
  __chkstk_darwin(v55);
  v16 = &v51 - v15;
  v17 = sub_46F9C(&qword_184708, &qword_128610);
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  __chkstk_darwin(v17);
  v56 = &v51 - v19;
  v63 = sub_46F9C(&qword_184710, &qword_128618);
  v61 = *(v63 - 8);
  v20 = *(v61 + 64);
  __chkstk_darwin(v63);
  v59 = &v51 - v21;
  v64 = sub_46F9C(&qword_184718, &qword_128620);
  v62 = *(v64 - 8);
  v22 = *(v62 + 64);
  __chkstk_darwin(v64);
  v60 = &v51 - v23;
  v67 = v2;
  sub_46F9C(&qword_184720, &qword_128628);
  sub_A3E50();
  sub_115DC0();
  sub_A3714(v2, &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicDaySummaryView);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_A2BF0(&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for DynamicDaySummaryView);
  v26 = sub_46F9C(&qword_184160, &unk_127D70);
  v27 = sub_48800(&qword_184780, &qword_1846F8, &qword_128600);
  v28 = sub_7DDE8();
  sub_116990();

  (*(v10 + 8))(v13, v9);
  result = type metadata accessor for SummaryChartViewModel(0);
  v30 = *(v2 + *(result + 36));
  if (v30 < 0)
  {
    __break(1u);
  }

  else
  {
    v31 = v2;
    v73 = 0;
    v74 = v30;
    v52 = sub_115F00();
    v32 = *(v52 - 8);
    v51 = *(v32 + 56);
    v53 = v32 + 56;
    v33 = v65;
    v51(v65, 1, 1, v52);
    v34 = sub_46F9C(&qword_184178, &qword_1285D0);
    v69 = v9;
    v70 = v26;
    v71 = v27;
    v72 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = sub_7DEA4();
    v37 = v56;
    v38 = v55;
    sub_116970();
    sub_488C8(v33, &qword_184138, &qword_127D50);
    v39 = (v54[1])(v16, v38);
    v54 = &v51;
    __chkstk_darwin(v39);
    *(&v51 - 2) = v31;
    v40 = sub_46F9C(&qword_1846C8, &qword_1285D8);
    v69 = v38;
    v70 = v34;
    v71 = OpaqueTypeConformance2;
    v72 = v36;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8);
    v43 = v58;
    v44 = v59;
    sub_116930();
    (*(v57 + 8))(v37, v43);
    v68 = sub_99CC4();
    v51(v33, 1, 1, v52);
    v45 = sub_46F9C(&qword_1841B8, &qword_1285E0);
    v69 = v43;
    v70 = v40;
    v71 = v41;
    v72 = v42;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_7E000();
    v48 = v60;
    v49 = v63;
    sub_116960();
    sub_488C8(v33, &qword_184138, &qword_127D50);

    (*(v61 + 8))(v44, v49);
    v69 = v49;
    v70 = v45;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v50 = v64;
    sub_116920();
    return (*(v62 + 8))(v48, v50);
  }

  return result;
}

uint64_t sub_9DD1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v109 = sub_46F9C(&qword_184D20, &qword_128FD8);
  v3 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v108 = &v78 - v4;
  v99 = sub_115CD0();
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v80 = &v78 - v9;
  v86 = sub_115E70();
  v84 = *(v86 - 8);
  v10 = *(v84 + 64);
  __chkstk_darwin(v86);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_46F9C(&qword_1841F0, &qword_127DD0);
  v85 = *(v88 - 8);
  v12 = *(v85 + 64);
  __chkstk_darwin(v88);
  v82 = &v78 - v13;
  v90 = sub_46F9C(&qword_184770, qword_128668);
  v87 = *(v90 - 8);
  v14 = *(v87 + 64);
  __chkstk_darwin(v90);
  v83 = &v78 - v15;
  v93 = sub_46F9C(&qword_184768, &qword_128660);
  v91 = *(v93 - 8);
  v16 = *(v91 + 64);
  __chkstk_darwin(v93);
  v89 = &v78 - v17;
  v96 = sub_46F9C(&qword_184758, &qword_128650);
  v95 = *(v96 - 8);
  v18 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v78 - v19;
  v20 = sub_46F9C(&qword_184D28, &qword_128FE8);
  v112 = *(v20 - 8);
  v113 = v20;
  v21 = *(v112 + 64);
  __chkstk_darwin(v20);
  v92 = &v78 - v22;
  v23 = sub_46F9C(&qword_184750, &qword_128648);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v107 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v111 = &v78 - v27;
  v79 = type metadata accessor for DynamicDaySummaryView(0);
  v28 = *(v79 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v79);
  v106 = sub_46F9C(&qword_184738, &qword_128630);
  v105 = *(v106 - 8);
  v30 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v78 - v33;
  v101 = a1;
  v114 = *a1;
  KeyPath = swift_getKeyPath();
  sub_A3714(a1, &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicDaySummaryView);
  v35 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v36 = swift_allocObject();
  sub_A2BF0(&v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for DynamicDaySummaryView);

  v100 = sub_46F9C(&qword_184D30, &qword_129010);
  sub_46F9C(&qword_184D38, &qword_129018);
  sub_48800(&qword_184D40, &qword_184D30, &qword_129010);
  sub_A3C98(&qword_183548, &type metadata accessor for Date);
  v37 = sub_47A1C(&qword_184740, &qword_128638);
  v38 = sub_47A1C(&qword_184210, &qword_128640);
  v39 = sub_116180();
  v40 = sub_47A1C(&qword_184158, &unk_1285C0);
  v119 = sub_115E00();
  v120 = &protocol witness table for BarMark;
  v41 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = v40;
  v120 = &type metadata for LinearGradient;
  v121 = OpaqueTypeConformance2;
  v122 = &protocol witness table for LinearGradient;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle);
  v119 = v38;
  v120 = v39;
  v121 = v43;
  v122 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v119 = v37;
  v120 = v45;
  swift_getOpaqueTypeConformance2();
  v103 = v34;
  v46 = v101;
  sub_116E00();
  if (*(v46 + 24) != 1)
  {
    v47 = *(v46 + *(v79 + 20));
    sub_116370();
    v119 = v46[2];
    sub_115C60();

    v48 = v81;
    sub_115E60();
    sub_116010();
    v49 = v82;
    v50 = v86;
    sub_115BA0();
    sub_57B04(&v119);
    (*(v84 + 8))(v48, v50);
    v114 = v50;
    v115 = &protocol witness table for RuleMark;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v83;
    v53 = v88;
    sub_115B70();
    (*(v85 + 8))(v49, v53);
    v114 = v53;
    v115 = v51;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = v89;
    v56 = v90;
    sub_115B80();
    (*(v87 + 8))(v52, v56);
    v57 = sub_5A754();
    swift_beginAccess();
    v118 = *(*v57 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_averageByTimeColor);
    v114 = v56;
    v115 = v54;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v94;
    v60 = v93;
    sub_115AF0();
    (*(v91 + 8))(v55, v60);
    v61 = v97;
    sub_115CB0();
    v62 = sub_116EB0();
    __chkstk_darwin(v62);
    sub_46F9C(&qword_184760, &qword_128658);
    v114 = v60;
    v115 = &type metadata for Color;
    v116 = v58;
    v117 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_A42A4();
    v63 = v92;
    v64 = v96;
    sub_115AD0();
    (*(v98 + 8))(v61, v99);
    (*(v95 + 8))(v59, v64);
    (*(v112 + 32))(v111, v63, v113);
    v41 = 0;
  }

  v65 = v111;
  (*(v112 + 56))(v111, v41, 1, v113);
  v66 = v105;
  v67 = *(v105 + 16);
  v68 = v104;
  v69 = v103;
  v70 = v106;
  v67(v104, v103, v106);
  v71 = v107;
  sub_479B4(v65, v107, &qword_184750, &qword_128648);
  sub_A3EE4();
  v72 = v108;
  v67(v108, v68, v70);
  sub_A40B8();
  v73 = v109;
  v74 = *(v109 + 48);
  sub_479B4(v71, &v72[v74], &qword_184750, &qword_128648);
  v75 = v110;
  (*(v66 + 32))(v110, v72, v70);
  sub_548D0(&v72[v74], v75 + *(v73 + 48), &qword_184750, &qword_128648);
  sub_488C8(v65, &qword_184750, &qword_128648);
  v76 = *(v66 + 8);
  v76(v69, v70);
  sub_488C8(v71, &qword_184750, &qword_128648);
  return (v76)(v68, v70);
}

uint64_t sub_9EBD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a2;
  v103 = a1;
  v124 = a3;
  v3 = sub_116360();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v122 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_116180();
  v6 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v121 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_115760();
  v109 = *(v104 - 8);
  v8 = v109[8];
  __chkstk_darwin(v104);
  v97 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_46F9C(&qword_184D50, &qword_129028);
  v10 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  *&v127 = &v96 - v11;
  v12 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v112 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  *&v126 = &v96 - v16;
  __chkstk_darwin(v17);
  v108 = &v96 - v18;
  v130 = sub_116390();
  v102 = *(v130 - 8);
  v19 = *(v102 + 64);
  __chkstk_darwin(v130);
  v101 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v107 = &v96 - v23;
  v24 = sub_46F9C(&qword_1842B8, &qword_129030);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v96 - v26;
  v28 = sub_1158B0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_46F9C(&qword_1843C8, &qword_128140);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v106 = &v96 - v35;
  v129 = sub_115E00();
  v100 = *(v129 - 8);
  v36 = *(v100 + 64);
  __chkstk_darwin(v129);
  v98 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_46F9C(&qword_184158, &unk_1285C0);
  v113 = *(v114 - 8);
  v38 = *(v113 + 64);
  __chkstk_darwin(v114);
  v128 = &v96 - v39;
  v118 = sub_46F9C(&qword_184210, &qword_128640);
  v116 = *(v118 - 8);
  v40 = *(v116 + 64);
  __chkstk_darwin(v118);
  v115 = &v96 - v41;
  v120 = sub_46F9C(&qword_184740, &qword_128638);
  v119 = *(v120 - 8);
  v42 = *(v119 + 64);
  __chkstk_darwin(v120);
  v117 = &v96 - v43;
  sub_116370();
  v44 = type metadata accessor for SummaryChartBucket(0);
  v45 = *(v44 + 24);
  (*(v29 + 104))(v32, enum case for Calendar.Component.day(_:), v28);
  v46 = sub_1158D0();
  (*(*(v46 - 8) + 56))(v27, 1, 1, v46);
  v99 = v45;
  v47 = v103;
  sub_115C40();

  sub_488C8(v27, &qword_1842B8, &qword_129030);
  v48 = v32;
  v49 = v125;
  (*(v29 + 8))(v48, v28);
  sub_116370();
  v111 = *v47 & ~(*v47 >> 63);
  v136 = v111;
  sub_115C60();

  v50 = *(v49 + *(type metadata accessor for DynamicDaySummaryView(0) + 32));
  v51 = v98;
  v52 = v104;
  sub_115DF0();
  v53 = v102;
  v54 = *(v102 + 104);
  v55 = v101;
  LODWORD(v106) = enum case for RoundedCornerStyle.continuous(_:);
  v56 = v130;
  v107 = (v102 + 104);
  v105 = v54;
  v54(v101);
  v57 = v129;
  sub_115AE0();
  (*(v53 + 8))(v55, v56);
  (*(v100 + 8))(v51, v57);
  v58 = v109;
  if (*(*v49 + 16))
  {
    v59 = v109[2];
    v60 = *v49 + *(v44 + 24) + ((*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80));
    v61 = v108;
    v62 = v52;
    v59(v108, v60, v52);
    v63 = v58[7];
    v63(v61, 0, 1, v52);
  }

  else
  {
    v63 = v109[7];
    v61 = v108;
    v62 = v52;
    v63(v108, 1, 1, v52);
    v59 = v58[2];
  }

  v64 = v47 + v99;
  v65 = v126;
  v59(v126, v64, v62);
  v63(v65, 0, 1, v62);
  v66 = *(v110 + 48);
  v67 = v127;
  sub_479B4(v61, v127, &qword_182EF0, &unk_124BB0);
  sub_479B4(v65, v67 + v66, &qword_182EF0, &unk_124BB0);
  v68 = v58[6];
  v69 = v68(v67, 1, v62);
  v70 = v112;
  if (v69 == 1)
  {
    sub_488C8(v65, &qword_182EF0, &unk_124BB0);
    v71 = v127;
    sub_488C8(v61, &qword_182EF0, &unk_124BB0);
    if (v68(v71 + v66, 1, v62) == 1)
    {
      sub_488C8(v71, &qword_182EF0, &unk_124BB0);
LABEL_12:
      v73 = sub_A377C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_479B4(v67, v112, &qword_182EF0, &unk_124BB0);
  if (v68(v67 + v66, 1, v62) == 1)
  {
    sub_488C8(v126, &qword_182EF0, &unk_124BB0);
    v71 = v127;
    sub_488C8(v61, &qword_182EF0, &unk_124BB0);
    (v58[1])(v70, v62);
LABEL_9:
    sub_488C8(v71, &qword_184D50, &qword_129028);
    goto LABEL_10;
  }

  v74 = v67 + v66;
  v75 = v97;
  (v58[4])(v97, v74, v62);
  sub_A3C98(&qword_183550, &type metadata accessor for Date);
  v76 = sub_117160();
  v77 = v58[1];
  v77(v75, v62);
  sub_488C8(v126, &qword_182EF0, &unk_124BB0);
  sub_488C8(v61, &qword_182EF0, &unk_124BB0);
  v77(v70, v62);
  sub_488C8(v67, &qword_182EF0, &unk_124BB0);
  if (v76)
  {
    goto LABEL_12;
  }

LABEL_10:
  v72 = sub_5A754();
  swift_beginAccess();
  v73 = *(*v72 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);
LABEL_13:

  sub_5AEF4(0, v73, &v136);
  v78 = v136;
  v127 = v137;
  v126 = v138;

  v133 = v78;
  v135 = v126;
  v134 = v127;
  v131 = v129;
  v132 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v115;
  v81 = v114;
  v82 = v128;
  sub_115AF0();

  (*(v113 + 8))(v82, v81);
  v83 = v123;
  v84 = v121;
  v105(&v121[*(v123 + 20)], v106, v130);
  __asm { FMOV            V0.2D, #4.0 }

  *v84 = _Q0;
  v133 = v81;
  *&v134 = &type metadata for LinearGradient;
  *(&v134 + 1) = OpaqueTypeConformance2;
  *&v135 = &protocol witness table for LinearGradient;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle);
  v92 = v117;
  v93 = v118;
  sub_115B90();
  sub_A68C8(v84, &type metadata accessor for RoundedRectangle);
  (*(v116 + 8))(v80, v93);
  sub_116350();
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  sub_116340(v139);
  v133 = v111;
  sub_116330();
  v140._countAndFlagsBits = 0x746E656372655020;
  v140._object = 0xE800000000000000;
  sub_116340(v140);
  sub_116380();
  v133 = v93;
  *&v134 = v83;
  *(&v134 + 1) = v90;
  *&v135 = v91;
  swift_getOpaqueTypeConformance2();
  v94 = v120;
  sub_115B10();

  return (*(v119 + 8))(v92, v94);
}

uint64_t sub_9FC1C(uint64_t a1)
{
  v2 = sub_115C80();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_115BE0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_46F9C(&qword_183D08, &unk_127E20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1248A0;
  *(v6 + 32) = 0;
  *(v6 + 40) = *(a1 + *(type metadata accessor for SummaryChartViewModel(0) + 36));
  sub_115BD0();
  sub_115C70();
  return sub_115EA0();
}

char *sub_9FD80(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E30, &qword_1290E8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_9FE84(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_46F9C(a5, a6);
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

char *sub_A0060(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E40, &qword_12BA20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_A0164(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183D08, &unk_127E20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_A0268(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_46F9C(&qword_184E58, &unk_129138);
  v38 = a2;
  result = sub_117860();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_117A90();
      sub_117200();
      result = sub_117AD0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_A0508(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_117690() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_117A90();

      sub_117200();
      v13 = sub_117AD0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_A06B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_64F08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_A0268(v16, a4 & 1);
      v20 = *v5;
      result = sub_64F08(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_117A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_A081C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_A081C()
{
  v1 = v0;
  sub_46F9C(&qword_184E58, &unk_129138);
  v2 = *v0;
  v3 = sub_117850();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

size_t sub_A0984(size_t a1, int64_t a2, char a3)
{
  result = sub_A09E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A09A4(char *a1, int64_t a2, char a3)
{
  result = sub_A0BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A09C4(char *a1, int64_t a2, char a3)
{
  result = sub_A0CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_A09E4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_46F9C(&qword_184260, &unk_128570);
  v10 = *(sub_115760() - 8);
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
  v15 = *(sub_115760() - 8);
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

char *sub_A0BBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E70, &qword_129150);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_A0CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E78, &qword_129158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unsigned __int8 *sub_A0DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_117290();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_A1348();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_117740();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_A1348()
{
  v0 = sub_1172A0();
  v4 = sub_A13C8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_A13C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1171F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_117630();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_A1520(v9, 0);
  v12 = sub_A1594(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1171F0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_117740();
LABEL_4:

  return sub_1171F0();
}

void *sub_A1520(uint64_t a1, uint64_t a2)
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

  sub_46F9C(&qword_184E68, &qword_129148);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_A1594(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_A17B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_117260();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_117740();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_A17B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_117240();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_A17B4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_117270();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_117250();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_A1830(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_46F9C(&qword_183D18, &unk_1290F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 152);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_A1920(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_A21FC(v7);
      v7 = result;
    }

    v81 = v7 + 2;
    v82 = v7[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v7[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_A1F9C((*a3 + 152 * *v83), (*a3 + 152 * *v85), (*a3 + 152 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 152 * v6 + 104);
      v10 = 152 * v8;
      v11 = *a3 + 152 * v8;
      v12 = *(v11 + 104);
      v13 = v8 + 2;
      v14 = (v11 + 256);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[19];
        v14 += 19;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 152 * v6 - 152;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v103 = *(v21 + v10 + 96);
            v105 = *(v21 + v10 + 112);
            v107 = *(v21 + v10 + 128);
            v109 = *(v21 + v10 + 144);
            v95 = *(v21 + v10 + 32);
            v97 = *(v21 + v10 + 48);
            v99 = *(v21 + v10 + 64);
            v101 = *(v21 + v10 + 80);
            v91 = *(v21 + v10);
            v93 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0x98uLL);
            *(v20 + 96) = v103;
            *(v20 + 112) = v105;
            *(v20 + 128) = v107;
            *(v20 + 144) = v109;
            *(v20 + 32) = v95;
            *(v20 + 48) = v97;
            *(v20 + 64) = v99;
            *(v20 + 80) = v101;
            *v20 = v91;
            *(v20 + 16) = v93;
          }

          ++v19;
          v17 -= 152;
          v10 += 152;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_9FD80(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v34 = v7[2];
    v33 = v7[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_9FD80((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v35;
    v36 = (v7 + 4);
    v37 = &v7[2 * v34 + 4];
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = v7[4];
          v40 = v7[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v7[2 * v35];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v36[16 * v38];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v7[2 * v35];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v36[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v36[16 * v38 - 16];
        v77 = *v76;
        v78 = &v36[16 * v38];
        v79 = *(v78 + 1);
        sub_A1F9C((*a3 + 152 * *v76), (*a3 + 152 * *v78), (*a3 + 152 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > v7[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        v80 = v7[2];
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove(&v36[16 * v38], v78 + 16, 16 * (v80 - 1 - v38));
        v7[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v36[16 * v35];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v7[2 * v35];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v36[16 * v38];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 152 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 - 48) >= *(v26 + 104))
    {
LABEL_29:
      ++v6;
      v23 += 152;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 152;
    v104 = *(v26 + 96);
    v106 = *(v26 + 112);
    v108 = *(v26 + 128);
    v110 = *(v26 + 144);
    v96 = *(v26 + 32);
    v98 = *(v26 + 48);
    v100 = *(v26 + 64);
    v102 = *(v26 + 80);
    v92 = *v26;
    v94 = *(v26 + 16);
    v28 = *(v26 - 40);
    *(v26 + 96) = *(v26 - 56);
    *(v26 + 112) = v28;
    *(v26 + 128) = *(v26 - 24);
    *(v26 + 144) = *(v26 - 8);
    v29 = *(v26 - 104);
    *(v26 + 32) = *(v26 - 120);
    *(v26 + 48) = v29;
    v30 = *(v26 - 72);
    *(v26 + 64) = *(v26 - 88);
    *(v26 + 80) = v30;
    v31 = *(v26 - 136);
    *v26 = *(v26 - 152);
    *(v26 + 16) = v31;
    *(v27 + 96) = v104;
    *(v27 + 112) = v106;
    *(v27 + 128) = v108;
    *(v27 + 144) = v110;
    *(v27 + 32) = v96;
    *(v27 + 48) = v98;
    *(v27 + 64) = v100;
    *(v27 + 80) = v102;
    v26 -= 152;
    *v27 = v92;
    *(v27 + 16) = v94;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_A1F9C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 152;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 152;
  if (v9 >= v11)
  {
    v16 = 19 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 152 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 152 && v6 > v7)
    {
LABEL_21:
      v5 -= 19;
      do
      {
        v17 = v5 + 19;
        if (*(v6 - 6) < *(v13 - 6))
        {
          v19 = v6 - 19;
          if (v17 != v6)
          {
            memmove(v5, v6 - 19, 0x98uLL);
          }

          if (v13 <= v4 || (v6 -= 19, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        v18 = (v13 - 19);
        if (v17 != v13)
        {
          memmove(v5, v13 - 19, 0x98uLL);
        }

        v5 -= 19;
        v13 -= 19;
      }

      while (v18 > v4);
      v13 = v18;
    }
  }

  else
  {
    v12 = 19 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 152)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (v4[13] < v6[13])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 19;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 19;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 19;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0x98uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 19 * ((v13 - v4) / 152);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 8);
  }

  return 1;
}

BOOL sub_A2224(_BYTE *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (*a1 == 6)
  {
    if (v4 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 6)
    {
      return 0;
    }

    sub_68F60();
    if ((sub_117160() & 1) == 0)
    {
      return 0;
    }
  }

  v5 = type metadata accessor for SummaryItem(0);
  v6 = v5[5];
  if ((sub_115780() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  v8 = *&a1[v7];
  v9 = *&a1[v7 + 8];
  v10 = &a2[v7];
  v11 = v8 == *v10 && v9 == *(v10 + 1);
  if (!v11 && (sub_1179E0() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = &a1[v12];
  v14 = *&a1[v12 + 8];
  v15 = &a2[v12];
  v16 = *(v15 + 1);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_1179E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v5[8];
  v19 = a1[v18];
  v20 = a2[v18];
  if (v19 == 26)
  {
    if (v20 != 26)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 26)
    {
      return 0;
    }

    sub_68FB8();
    if ((sub_117160() & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v5[9];
  v22 = &a1[v21];
  v23 = a1[v21 + 8];
  v24 = &a2[v21];
  v25 = a2[v21 + 8];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v5[10];
  v27 = &a1[v26];
  v28 = *&a1[v26 + 8];
  v29 = &a2[v26];
  v30 = *(v29 + 1);
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1179E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = v5[11];
  v32 = &a1[v31];
  v33 = *&a1[v31 + 8];
  v34 = &a2[v31];
  v35 = *(v34 + 1);
  if (v33)
  {
    return v35 && (*v32 == *v34 && v33 == v35 || (sub_1179E0() & 1) != 0);
  }

  return !v35;
}

void sub_A2458(char a1)
{
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8D8B4()[2];
  sub_115750();
  isa = sub_1156B0().super.isa;
  (*(v3 + 8))(v6, v2);
  v9 = [v7 stringFromDate:isa];

  v10 = sub_1171B0();
  v12 = v11;

  if (a1 != 2)
  {
    if (a1 != 4)
    {
      goto LABEL_7;
    }

    v13 = sub_117170();
    v14 = BatteryUILocalization(v13);

    if (v14)
    {
LABEL_8:
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_124890;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_53EE8();
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      sub_117180();

      return;
    }

    __break(1u);
  }

  v15 = sub_117170();
  v14 = BatteryUILocalization(v15);

  if (v14)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v16 = sub_117170();
  v14 = BatteryUILocalization(v16);

  if (v14)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_A2718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = sub_1158B0();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_115760();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v53 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v52 = &v38 - v19;
  v20 = sub_1158D0();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v39 = v23;
    v40 = v22;
    v54 = v25;
    sub_1158A0();
    v27 = *(v6 + 104);
    v26 = v6 + 104;
    v51 = v27;
    v48 = (v15 + 48);
    v49 = (v26 - 96);
    v47 = (v15 + 32);
    v44 = v15;
    v41 = v15 + 8;
    v42 = (v15 + 16);
    v28 = &_swiftEmptyArrayStorage;
    v50 = enum case for Calendar.Component.day(_:);
    v29 = 1;
    v45 = a1;
    v46 = a2;
    v43 = a3;
    while (1)
    {
      result = v51(v9, v50, v55);
      if ((v29 * a3) >> 64 != (v29 * a3) >> 63)
      {
        break;
      }

      if (__OFSUB__(0, v29 * a3))
      {
        goto LABEL_20;
      }

      v31 = v26;
      sub_115890();
      (*v49)(v9, v55);
      if ((*v48)(v13, 1, v14) == 1)
      {
        result = sub_488C8(v13, &qword_182EF0, &unk_124BB0);
        if (a2 == v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v32 = *v47;
        v33 = v52;
        (*v47)(v52, v13, v14);
        (*v42)(v53, v33, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_9FE84(0, v28[2] + 1, 1, v28, &qword_184260, &unk_128570, &type metadata accessor for Date);
        }

        v35 = v28[2];
        v34 = v28[3];
        if (v35 >= v34 >> 1)
        {
          v28 = sub_9FE84(v34 > 1, v35 + 1, 1, v28, &qword_184260, &unk_128570, &type metadata accessor for Date);
        }

        v36 = v44;
        (*(v44 + 8))(v52, v14);
        v28[2] = v35 + 1;
        result = (v32)(v28 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, v53, v14);
        a3 = v43;
        a2 = v46;
        if (v46 == v29)
        {
LABEL_16:
          (*(v39 + 8))(v54, v40);
          return v28;
        }
      }

      v26 = v31;
      if (__OFADD__(v29++, 1))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_A2BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A2C78(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_A2C88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  sub_A2C78(v1);
  return sub_A2E2C(v3);
}

uint64_t sub_A2D18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_A2D8C()
{
  v1 = *(v0 + 16);
  sub_117710(32);
  v3._object = 0x8000000000135230;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  sub_117220(v3);
  sub_46F9C(&qword_183030, &qword_124E50);
  sub_1177E0();
  return 0;
}

uint64_t sub_A2E2C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_A2E3C()
{
  result = qword_1845F8;
  if (!qword_1845F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1845F8);
  }

  return result;
}

unint64_t sub_A2E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_184E58, &unk_129138);
    v3 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_64F08(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_A2F8C(uint64_t *a1)
{
  v3 = sub_46F9C(&qword_184E18, &qword_1290D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_66DE0(a1, a1[3]);
  sub_A6F48();
  sub_117AF0();
  if (v1)
  {
    sub_6ACB4(a1);
  }

  else
  {
    sub_46F9C(&qword_184E20, &unk_1290D8);
    sub_A6E78(&qword_184E28, &qword_184E20, &unk_1290D8, sub_A456C);
    sub_1178E0();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_6ACB4(a1);
  }

  return v9;
}

uint64_t sub_A313C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_167970;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_A3188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_46F9C(&qword_184DE0, &qword_1290B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_A6D70();
  sub_117AF0();
  if (v2)
  {
    sub_6ACB4(a1);
  }

  else
  {
    v27 = 0;
    sub_6B038();
    sub_117920();
    v11 = v25;
    sub_46F9C(&qword_184DE8, &qword_1290B8);
    v27 = 1;
    sub_A6DC4();
    sub_1178E0();
    v12 = v25;
    LOBYTE(v25) = 2;
    v13 = sub_1178D0();
    v22 = v14;
    v23 = v13;
    LOBYTE(v25) = 3;
    v15 = sub_1178D0();
    HIDWORD(v20) = v16;
    v21 = v15;
    sub_46F9C(&qword_184E00, &unk_1290C0);
    v27 = 4;
    sub_A6E78(&qword_184E08, &qword_184E00, &unk_1290C0, sub_A6EF4);
    sub_1178E0();
    (*(v6 + 8))(v9, v5);
    v17 = v25;
    v26 = v22 & 1;
    v24 = BYTE4(v20) & 1;
    result = sub_6ACB4(a1);
    *a2 = v11;
    v19 = v23;
    *(a2 + 8) = v12;
    *(a2 + 16) = v19;
    *(a2 + 24) = v26;
    *(a2 + 32) = v21;
    *(a2 + 40) = v24;
    *(a2 + 48) = v17;
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t sub_A34B4(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 5;
  }
}

unint64_t sub_A34C8()
{
  result = qword_18CCD0[0];
  if (!qword_18CCD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18CCD0);
  }

  return result;
}

uint64_t sub_A351C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_167A08;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

double sub_A3568(uint64_t *a1)
{
  v2 = sub_46F9C(&qword_184DD8, &qword_1290A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_A6D1C();
  sub_117AF0();
  v13 = 0;
  sub_117910();
  v12 = 1;
  sub_117900();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_6ACB4(a1);
  return v9;
}

uint64_t sub_A3714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A377C()
{
  v1 = *(v0 + 24);
  v2 = sub_5A754();
  if (v1 == 4)
  {
    v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartAnomalousBarColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartNoComparisonBarColor;
  }

  swift_beginAccess();
  return *(*v2 + *v3);
}

unint64_t sub_A3828()
{
  result = qword_184640;
  if (!qword_184640)
  {
    sub_47A1C(&qword_184628, &unk_128538);
    sub_47A1C(&qword_184620, &qword_128530);
    sub_47A1C(&qword_184630, &qword_128548);
    sub_48800(&qword_184638, &qword_184630, &qword_128548);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184640);
  }

  return result;
}

unint64_t sub_A3990()
{
  result = qword_184648;
  if (!qword_184648)
  {
    sub_47A1C(&qword_184610, &qword_128520);
    sub_48800(&qword_184638, &qword_184630, &qword_128548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184648);
  }

  return result;
}

unint64_t sub_A3A48()
{
  result = qword_184660;
  if (!qword_184660)
  {
    sub_47A1C(&qword_184658, &qword_128558);
    sub_48800(&qword_184668, &qword_184670, &unk_128560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184660);
  }

  return result;
}

unint64_t sub_A3B08()
{
  result = qword_1846B0;
  if (!qword_1846B0)
  {
    sub_47A1C(&qword_1846A8, &unk_1285B0);
    sub_47A1C(&qword_184150, &unk_127D60);
    sub_116180();
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1846B0);
  }

  return result;
}

uint64_t sub_A3C98(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_A3CE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FullDaySummaryView(0);
  v6 = *(v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)) + *(v5 + 24));
  v7 = sub_5A754();
  swift_beginAccess();
  v8 = *(*v7 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
  sub_116EB0();
  sub_116070();
  v9 = sub_115C90();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

unint64_t sub_A3E50()
{
  result = qword_184728;
  if (!qword_184728)
  {
    sub_47A1C(&qword_184720, &qword_128628);
    sub_A3EE4();
    sub_A40B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184728);
  }

  return result;
}

unint64_t sub_A3EE4()
{
  result = qword_184730;
  if (!qword_184730)
  {
    sub_47A1C(&qword_184738, &qword_128630);
    sub_47A1C(&qword_184740, &qword_128638);
    sub_47A1C(&qword_184210, &qword_128640);
    sub_116180();
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184730);
  }

  return result;
}

unint64_t sub_A40B8()
{
  result = qword_184748;
  if (!qword_184748)
  {
    sub_47A1C(&qword_184750, &qword_128648);
    sub_47A1C(&qword_184758, &qword_128650);
    sub_47A1C(&qword_184760, &qword_128658);
    sub_47A1C(&qword_184768, &qword_128660);
    sub_47A1C(&qword_184770, qword_128668);
    sub_47A1C(&qword_1841F0, &qword_127DD0);
    sub_115E70();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A42A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184748);
  }

  return result;
}

unint64_t sub_A42A4()
{
  result = qword_184778;
  if (!qword_184778)
  {
    sub_47A1C(&qword_184760, &qword_128658);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184778);
  }

  return result;
}

double sub_A4360@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DynamicDaySummaryView(0);
  v6 = *(v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)) + *(v5 + 28));
  v7 = sub_5A754();
  swift_beginAccess();
  v8 = *(*v7 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
  sub_116EB0();
  sub_116070();
  v9 = sub_115C90();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

unint64_t sub_A44C8(uint64_t a1)
{
  result = sub_A44F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_A44F0()
{
  result = qword_184788;
  if (!qword_184788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184788);
  }

  return result;
}

unint64_t sub_A4544(uint64_t a1)
{
  result = sub_A456C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_A456C()
{
  result = qword_184790;
  if (!qword_184790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184790);
  }

  return result;
}

unint64_t sub_A4610()
{
  result = qword_1847A0;
  if (!qword_1847A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1847A0);
  }

  return result;
}

uint64_t sub_A4680(uint64_t a1)
{
  result = sub_A3C98(&qword_1847A8, type metadata accessor for SummaryChart);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A4770()
{
  result = sub_115940();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_A4830(uint64_t a1, uint64_t a2)
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

uint64_t sub_A4844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_A48A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_A4938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1157A0();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_A4A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1157A0();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_A4AD0()
{
  sub_A58D4(319, &qword_1849A0, &type metadata for AppType, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1157A0();
    if (v1 <= 0x3F)
    {
      sub_A58D4(319, &qword_1849A8, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_A58D4(319, &qword_1849B0, &type metadata for AppQualifier, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_A58D4(319, &unk_1849B8, &type metadata for Double, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_A4C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummaryChartViewModel(0);
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

uint64_t sub_A4D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummaryChartViewModel(0);
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

uint64_t sub_A4DE4()
{
  result = type metadata accessor for SummaryChartViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BUIChartViewConfig();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartLegendModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_A4F20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A4F68(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_A4FD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_115760();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_A5094(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_115760();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A5138()
{
  sub_A5604(319, &unk_184AE0, type metadata accessor for SummaryChartBucket, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_115760();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_A5214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryChartViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_A5294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryChartViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_A5304()
{
  result = type metadata accessor for SummaryChartViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_A5398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummaryChartViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 16);
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

uint64_t sub_A5478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummaryChartViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 16) = a2;
  }

  return result;
}

void sub_A5534()
{
  type metadata accessor for SummaryChartViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_A5604(319, &unk_184C00, type metadata accessor for CGSize, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A5604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_A567C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
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
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_A5760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
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
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_A581C()
{
  sub_A58D4(319, &qword_1836D0, &type metadata for Int, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_115760();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A58D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_A5928()
{
  result = qword_184CC8;
  if (!qword_184CC8)
  {
    sub_47A1C(&qword_1845D0, &qword_1284A0);
    sub_A59B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CC8);
  }

  return result;
}

unint64_t sub_A59B4()
{
  result = qword_184CD0;
  if (!qword_184CD0)
  {
    sub_47A1C(&qword_1845C8, &qword_128498);
    sub_47A1C(&qword_184590, &qword_128448);
    sub_47A1C(&qword_1845B0, &qword_128490);
    sub_48800(&qword_1845B8, &qword_184590, &qword_128448);
    sub_A70D0(&qword_1845C0, &qword_1845B0, &qword_128490, sub_8EDAC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CD0);
  }

  return result;
}

unint64_t sub_A5B14()
{
  result = qword_184CD8;
  if (!qword_184CD8)
  {
    sub_47A1C(&qword_184CE0, &qword_128E58);
    sub_A5BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CD8);
  }

  return result;
}

unint64_t sub_A5BA0()
{
  result = qword_184CE8;
  if (!qword_184CE8)
  {
    sub_47A1C(&qword_184CF0, &qword_128E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CE8);
  }

  return result;
}

unint64_t sub_A5C6C()
{
  result = qword_184D08;
  if (!qword_184D08)
  {
    sub_47A1C(&qword_184D10, &qword_128E70);
    sub_A3828();
    sub_A3990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D08);
  }

  return result;
}

uint64_t sub_A5CF8()
{
  sub_47A1C(&qword_184658, &qword_128558);
  sub_A3A48();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A5D5C()
{
  sub_47A1C(&qword_1846A0, &qword_1285A8);
  sub_47A1C(&qword_1846E8, &qword_1285F0);
  sub_47A1C(&qword_184698, &qword_1285A0);
  sub_47A1C(&qword_1846D8, &qword_1285E8);
  sub_47A1C(&qword_184690, &qword_128598);
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  sub_47A1C(&qword_184688, &qword_128590);
  sub_47A1C(&qword_1846C8, &qword_1285D8);
  sub_47A1C(&qword_184680, &qword_128588);
  sub_47A1C(&qword_184178, &qword_1285D0);
  sub_47A1C(&qword_184678, &qword_128580);
  sub_47A1C(&qword_184160, &unk_127D70);
  sub_48800(&qword_1846C0, &qword_184678, &qword_128580);
  sub_7DDE8();
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_1846E0, &qword_1846D8, &qword_1285E8);
  swift_getOpaqueTypeConformance2();
  sub_47A1C(&qword_1846F0, &qword_1285F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A60F0()
{
  sub_47A1C(&qword_184718, &qword_128620);
  sub_47A1C(&qword_184710, &qword_128618);
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  sub_47A1C(&qword_184708, &qword_128610);
  sub_47A1C(&qword_1846C8, &qword_1285D8);
  sub_47A1C(&qword_184700, &qword_128608);
  sub_47A1C(&qword_184178, &qword_1285D0);
  sub_47A1C(&qword_1846F8, &qword_128600);
  sub_47A1C(&qword_184160, &unk_127D70);
  sub_48800(&qword_184780, &qword_1846F8, &qword_128600);
  sub_7DDE8();
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_A6368()
{
  result = qword_18DB50[0];
  if (!qword_18DB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DB50);
  }

  return result;
}

unint64_t sub_A63C0()
{
  result = qword_18DC60;
  if (!qword_18DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DC60);
  }

  return result;
}

unint64_t sub_A6418()
{
  result = qword_18DC68[0];
  if (!qword_18DC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DC68);
  }

  return result;
}

unint64_t sub_A646C()
{
  result = qword_184D18;
  if (!qword_184D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D18);
  }

  return result;
}

uint64_t sub_A64C4()
{
  v1 = (type metadata accessor for DynamicDaySummaryView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(type metadata accessor for SummaryChartViewModel(0) + 32);
  v6 = sub_115760();
  (*(*(v6 - 8) + 8))(&v3[v5], v6);
  v7 = *&v3[v1[11] + 16];

  return swift_deallocObject();
}

void sub_A65F8(char *a1@<X8>)
{
  v29 = *(v1 + 16);
  v2 = sub_117170();
  v3 = BatteryUILocalization(v2);

  if (v3)
  {
    sub_1171B0();

    sub_4869C();
    v4 = sub_116900();
    v6 = v5;
    v8 = v7;
    sub_116720();
    v9 = sub_1168C0();
    v11 = v10;
    v13 = v12;

    sub_48928(v4, v6, v8 & 1);

    sub_1166C0();
    v14 = sub_116810();
    v16 = v15;
    v18 = v17;
    sub_48928(v9, v11, v13 & 1);

    v19 = [objc_opt_self() systemGrayColor];
    sub_116BE0();
    v20 = sub_116880();
    v22 = v21;
    LOBYTE(v9) = v23;

    sub_48928(v14, v16, v18 & 1);

    LOBYTE(v14) = v9 & 1;
    v24 = (v29 + *(type metadata accessor for DynamicDaySummaryView(0) + 36));
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    sub_46F9C(&qword_184D48, &qword_129020);
    sub_116CE0();
    sub_8EB40(v31, v32, &protocol witness table for Text, a1, v33, v34);

    sub_48928(v20, v22, v14);

    sub_116CC0();
    v28 = &a1[*(sub_46F9C(&qword_184760, &qword_128658) + 36)];
    *v28 = -4.0 - *&v31;
    *(v28 + 1) = 0xC000000000000000;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A68C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A692C()
{
  v1 = *(type metadata accessor for FullDaySummaryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + v2);

  v5 = *(type metadata accessor for SummaryChartViewModel(0) + 32);
  v6 = sub_115760();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_A6A44(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_A6ADC()
{
  result = qword_184D60;
  if (!qword_184D60)
  {
    sub_47A1C(&qword_184D58, &qword_129038);
    sub_48800(&qword_184D68, &qword_184D70, &qword_129040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D60);
  }

  return result;
}

unint64_t sub_A6B94()
{
  result = qword_184D80;
  if (!qword_184D80)
  {
    sub_47A1C(&qword_184D78, &qword_129048);
    sub_A6C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D80);
  }

  return result;
}

unint64_t sub_A6C20()
{
  result = qword_184D88;
  if (!qword_184D88)
  {
    sub_47A1C(&qword_184D90, &qword_129050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D88);
  }

  return result;
}

uint64_t sub_A6C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FullDaySummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_9B114(a1, v6, a2);
}

unint64_t sub_A6D1C()
{
  result = qword_18DCF8;
  if (!qword_18DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DCF8);
  }

  return result;
}

unint64_t sub_A6D70()
{
  result = qword_18DD00;
  if (!qword_18DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DD00);
  }

  return result;
}

unint64_t sub_A6DC4()
{
  result = qword_184DF0;
  if (!qword_184DF0)
  {
    sub_47A1C(&qword_184DE8, &qword_1290B8);
    sub_A3C98(&qword_184DF8, type metadata accessor for SummaryItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184DF0);
  }

  return result;
}

uint64_t sub_A6E78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_A6EF4()
{
  result = qword_184E10;
  if (!qword_184E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184E10);
  }

  return result;
}

unint64_t sub_A6F48()
{
  result = qword_18DD08[0];
  if (!qword_18DD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DD08);
  }

  return result;
}

unint64_t sub_A6F9C()
{
  result = qword_182EC8;
  if (!qword_182EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_182EC8);
  }

  return result;
}

uint64_t sub_A6FE8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

void sub_A7020()
{
  v1 = *(v0 + 16);
  v3 = sub_117170();
  isa = sub_117050().super.isa;
  PLLogRegisteredEvent();
}

uint64_t sub_A70B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A70D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_A7184()
{
  result = qword_184F18;
  if (!qword_184F18)
  {
    sub_47A1C(&qword_184EB0, &qword_129190);
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184F18);
  }

  return result;
}

uint64_t sub_A7268(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_A72FC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_A73D0()
{
  result = qword_18DEA0[0];
  if (!qword_18DEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DEA0);
  }

  return result;
}

unint64_t sub_A7428()
{
  result = qword_18E130[0];
  if (!qword_18E130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E130);
  }

  return result;
}

unint64_t sub_A7480()
{
  result = qword_18E3C0[0];
  if (!qword_18E3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E3C0);
  }

  return result;
}

unint64_t sub_A74D8()
{
  result = qword_18E4D0;
  if (!qword_18E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E4D0);
  }

  return result;
}

unint64_t sub_A7530()
{
  result = qword_18E4D8[0];
  if (!qword_18E4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E4D8);
  }

  return result;
}

unint64_t sub_A7588()
{
  result = qword_18E560;
  if (!qword_18E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E560);
  }

  return result;
}

unint64_t sub_A75E0()
{
  result = qword_18E568[0];
  if (!qword_18E568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E568);
  }

  return result;
}

unint64_t sub_A7638()
{
  result = qword_18E5F0;
  if (!qword_18E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E5F0);
  }

  return result;
}

unint64_t sub_A7690()
{
  result = qword_18E5F8[0];
  if (!qword_18E5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E5F8);
  }

  return result;
}

uint64_t sub_A7710()
{
  v0 = sub_1159D0();
  sub_A8034(v0, qword_191EA0);
  sub_A7798(v0, qword_191EA0);
  sub_A8098();
  sub_117610();
  return sub_1159E0();
}

uint64_t sub_A7798(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_A7818(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = a1();
  v7 = v6;
  if (qword_18E680 != -1)
  {
    swift_once();
  }

  v8 = sub_1159D0();
  sub_A7798(v8, qword_191EA0);

  oslog = sub_1159C0();

  if (os_log_type_enabled(oslog, v4))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    v11 = sub_A7AD0(v5, v7, &v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, oslog, v4, "%{public}s", v9, 0xCu);
    sub_6ACB4(v10);
  }

  else
  {
  }
}

uint64_t sub_A7A14()
{
  v0 = sub_5822C();
  result = sub_F59F0(&type metadata for PerfPowerServices, v0);
  v2 = 900.0;
  if (result)
  {
    v2 = 3600.0;
  }

  qword_191EB8 = *&v2;
  return result;
}

uint64_t *sub_A7A80()
{
  if (qword_18E688 != -1)
  {
    swift_once();
  }

  return &qword_191EB8;
}

uint64_t sub_A7AD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_A7B9C(v11, 0, 0, 1, a1, a2);
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
    sub_6AD00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6ACB4(v11);
  return v7;
}

unint64_t sub_A7B9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_A7CA8(a5, a6);
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
    result = sub_117740();
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

char *sub_A7CA8(uint64_t a1, unint64_t a2)
{
  v4 = sub_A7CF4(a1, a2);
  sub_A7E24(&off_168300);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_A7CF4(uint64_t a1, unint64_t a2)
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

  v6 = sub_A1520(v5, 0);
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

  result = sub_117740();
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
        v10 = sub_117230();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_A1520(v10, 0);
        result = sub_117700();
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

uint64_t sub_A7E24(uint64_t result)
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

  result = sub_A7F10(result, v12, 1, v3);
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

char *sub_A7F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E68, &qword_129148);
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

uint64_t *sub_A8034(uint64_t a1, uint64_t *a2)
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

unint64_t sub_A8098()
{
  result = qword_184F60;
  if (!qword_184F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_184F60);
  }

  return result;
}

id sub_A8170()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargingStatusViewFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_A81A4(void *a1)
{
  v2 = [objc_allocWithZone(UITableViewCell) init];
  type metadata accessor for ChargingStatusViewModel();
  v3 = a1;
  v4 = sub_4A8A4(a1);
  v6 = sub_725AC();
  v7[3] = sub_46F9C(&qword_184F90, &unk_1296C0);
  v7[4] = sub_A830C();
  sub_A8370(v7);
  sub_A83D4();
  sub_1164E0();
  sub_1174E0();

  return v2;
}

id sub_A82CC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  *a1 = v4;
  a1[1] = v2;

  return v4;
}

unint64_t sub_A830C()
{
  result = qword_184F98;
  if (!qword_184F98)
  {
    sub_47A1C(&qword_184F90, &unk_1296C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184F98);
  }

  return result;
}

uint64_t *sub_A8370(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_A83D4()
{
  result = qword_184FA0;
  if (!qword_184FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184FA0);
  }

  return result;
}

double sub_A85B4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = sub_1163F0();
  v138 = 1;
  v3 = v1[1];
  v109 = *v1;
  v110 = v3;
  sub_4869C();

  v4 = sub_116900();
  v6 = v5;
  v8 = v7;
  sub_116670();
  v9 = sub_1168C0();
  v11 = v10;
  v13 = v12;

  sub_48928(v4, v6, v8 & 1);

  sub_1166C0();
  v14 = sub_116810();
  v82 = v15;
  v83 = v14;
  v88 = v16;
  v84 = v17;
  sub_48928(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v18 = v1[3];
  v109 = v1[2];
  v110 = v18;

  v19 = sub_116900();
  v21 = v20;
  v23 = v22;
  sub_116670();
  v24 = sub_1168C0();
  v26 = v25;
  LOBYTE(v6) = v27;

  sub_48928(v19, v21, v23 & 1);

  v28 = [objc_opt_self() systemGrayColor];
  v109 = sub_116BE0();
  v29 = sub_116890();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_48928(v24, v26, v6 & 1);

  v36 = swift_getKeyPath();
  v94 = v2[4];
  v89 = v2[6];
  v92 = v2;
  v85 = v2[7];
  v86 = v2[5];
  LOBYTE(v109) = v88 & 1;
  LOBYTE(v96) = v88 & 1;
  LOBYTE(v95[0]) = 1;
  LOBYTE(v136[0]) = 0;

  sub_488B8(v83, v82, v88 & 1);

  sub_488B8(v29, v31, v33 & 1);

  sub_48928(v29, v31, v33 & 1);

  sub_48928(v83, v82, v88 & 1);

  *(&v141 + 1) = v96;
  DWORD1(v141) = *(&v96 + 3);
  DWORD1(v143) = *(v95 + 3);
  *(&v143 + 1) = v95[0];
  HIDWORD(v144) = *(v136 + 3);
  *(&v144 + 9) = v136[0];
  HIDWORD(v146) = *(v135 + 3);
  *(&v146 + 9) = v135[0];
  HIDWORD(v147) = *(v134 + 3);
  *(&v147 + 9) = v134[0];
  *&v140 = v83;
  *(&v140 + 1) = v82;
  v150[0] = v83;
  v150[1] = v82;
  LOBYTE(v141) = v88 & 1;
  *(&v141 + 1) = v84;
  v142 = KeyPath;
  LOBYTE(v143) = 1;
  *(&v143 + 1) = v29;
  *&v144 = v31;
  BYTE8(v144) = v33 & 1;
  *&v145 = v35;
  *(&v145 + 1) = v36;
  *&v146 = 0;
  BYTE8(v146) = 1;
  v151 = v88 & 1;
  *&v147 = 0x402E000000000000;
  BYTE8(v147) = 0;
  *&v148 = v94;
  *(&v148 + 1) = v86;
  *&v149 = v89;
  *(&v149 + 1) = v85;
  *&v152[3] = *(&v96 + 3);
  *v152 = v96;
  v153 = v84;
  v154 = KeyPath;
  v155 = 0;
  v156 = 1;
  *&v157[3] = *(v95 + 3);
  *v157 = v95[0];
  v158 = v29;
  v159 = v31;
  v160 = v33 & 1;
  *&v161[3] = *(v136 + 3);
  *v161 = v136[0];
  v162 = v35;
  v163 = v36;
  v164 = 0;
  v165 = 1;
  *&v166[3] = *(v135 + 3);
  *v166 = v135[0];
  v167 = 0x402E000000000000;
  v168 = 0;
  *&v169[3] = *(v134 + 3);
  *v169 = v134[0];
  v170 = v94;
  v171 = v86;
  v172 = v89;
  v173 = v85;
  sub_479B4(&v140, &v109, &qword_184FA8, &unk_1296D0);
  sub_488C8(v150, &qword_184FA8, &unk_1296D0);
  *&v137[103] = v146;
  *&v137[119] = v147;
  *&v137[135] = v148;
  *&v137[151] = v149;
  *&v137[39] = v142;
  *&v137[55] = v143;
  *&v137[71] = v144;
  *&v137[87] = v145;
  *&v137[7] = v140;
  *&v137[23] = v141;
  v90 = v138;
  sub_46F9C(&qword_182E10, &qword_1247F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1248A0;
  LOBYTE(v6) = sub_116630();
  *(v37 + 32) = v6;
  v38 = sub_116650();
  *(v37 + 33) = v38;
  v39 = sub_116640();
  sub_116640();
  if (sub_116640() != v6)
  {
    v39 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v38)
  {
    v39 = sub_116640();
  }

  sub_115FD0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v135[0]) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1248A0;
  v49 = sub_116610();
  *(v48 + 32) = v49;
  v50 = sub_116620();
  *(v48 + 33) = v50;
  v51 = sub_116640();
  sub_116640();
  if (sub_116640() != v49)
  {
    v51 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v50)
  {
    v51 = sub_116640();
  }

  sub_115FD0();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LOBYTE(v136[0]) = 0;
  *&v87 = sub_116EB0();
  *(&v87 + 1) = v60;
  v61 = sub_116EB0();
  v63 = v62;
  v64 = v2[8];
  v65 = v92[9];

  sub_116E90();
  sub_116190();
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1248A0;
  v67 = sub_116610();
  *(v66 + 32) = v67;
  v68 = sub_116650();
  *(v66 + 33) = v68;
  v69 = sub_116640();
  sub_116640();
  if (sub_116640() != v67)
  {
    v69 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v68)
  {
    v69 = sub_116640();
  }

  sub_115FD0();
  *&v96 = v61;
  *(&v96 + 1) = v63;
  *&v97 = v64;
  *(&v97 + 1) = v65;
  v102 = v131;
  v103 = v132;
  v104 = v133;
  v98 = v127;
  v99 = v128;
  v101 = v130;
  v100 = v129;
  LOBYTE(v105) = v69;
  *(&v105 + 1) = v70;
  *&v139[71] = v129;
  *&v139[55] = v128;
  *&v139[39] = v127;
  *&v139[23] = v97;
  *&v139[135] = v133;
  *&v139[119] = v132;
  *&v139[103] = v131;
  *&v106 = v71;
  *(&v106 + 1) = v72;
  *&v107 = v73;
  BYTE8(v107) = 0;
  v108 = v87;
  *&v139[87] = v130;
  *&v139[7] = v96;
  *&v139[199] = v87;
  *&v139[183] = v107;
  *&v139[167] = v106;
  *&v139[151] = v105;
  v117 = v131;
  v118 = v132;
  v119 = v133;
  v113 = v127;
  v114 = v128;
  LOBYTE(v134[0]) = 0;
  v109 = v61;
  v110 = v63;
  v111 = v64;
  v112 = v65;
  v116 = v130;
  v115 = v129;
  v120 = v69;
  v121 = v70;
  v122 = v71;
  v123 = v72;
  v124 = v73;
  v125 = 0;
  v126 = v87;
  sub_479B4(&v96, v95, &qword_184FB0, &qword_1296E0);
  sub_488C8(&v109, &qword_184FB0, &qword_1296E0);
  *a1 = v93;
  *(a1 + 8) = 0;
  *(a1 + 16) = v90;
  *(a1 + 129) = *&v137[112];
  *(a1 + 145) = *&v137[128];
  *(a1 + 161) = *&v137[144];
  *(a1 + 176) = *&v137[159];
  *(a1 + 65) = *&v137[48];
  *(a1 + 81) = *&v137[64];
  *(a1 + 97) = *&v137[80];
  *(a1 + 113) = *&v137[96];
  *(a1 + 17) = *v137;
  *(a1 + 33) = *&v137[16];
  *(a1 + 49) = *&v137[32];
  *(a1 + 184) = v39;
  *(a1 + 192) = v41;
  *(a1 + 200) = v43;
  *(a1 + 208) = v45;
  *(a1 + 216) = v47;
  *(a1 + 224) = 0;
  *(a1 + 232) = v51;
  *(a1 + 240) = v53;
  *(a1 + 248) = v55;
  *(a1 + 256) = v57;
  *(a1 + 264) = v59;
  *(a1 + 272) = 0;
  v74 = *&v139[176];
  *(a1 + 433) = *&v139[160];
  *(a1 + 449) = v74;
  *(a1 + 465) = *&v139[192];
  *(a1 + 480) = *&v139[207];
  v75 = *&v139[112];
  *(a1 + 369) = *&v139[96];
  *(a1 + 385) = v75;
  v76 = *&v139[144];
  *(a1 + 401) = *&v139[128];
  *(a1 + 417) = v76;
  v77 = *&v139[48];
  *(a1 + 305) = *&v139[32];
  *(a1 + 321) = v77;
  v78 = *&v139[80];
  *(a1 + 337) = *&v139[64];
  *(a1 + 353) = v78;
  result = *v139;
  v80 = *&v139[16];
  *(a1 + 273) = *v139;
  *(a1 + 289) = v80;
  return result;
}

uint64_t sub_A90D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = sub_116550();
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_184FB8, &qword_1296E8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  v28 = sub_46F9C(&qword_184FC0, &qword_1296F0);
  v19 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v21 = &v28 - v20;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;

  sub_46F9C(&qword_184FC8, &qword_1296F8);
  sub_AA270();
  sub_116D00();
  sub_116540();
  sub_48800(&qword_184FD8, &qword_184FB8, &qword_1296E8);
  sub_AB048(&qword_184FE0, &type metadata accessor for BorderedProminentButtonStyle);
  v23 = v29;
  sub_1169F0();
  (*(v30 + 8))(v13, v23);
  (*(v15 + 8))(v18, v14);
  v24 = &v21[*(v28 + 36)];
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_116390();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  *&v24[*(sub_46F9C(&qword_184FE8, &qword_129718) + 36)] = 256;
  sub_AA3AC();
  sub_116AA0();
  return sub_AA524(v21);
}

uint64_t sub_A9488@<X0>(uint64_t a1@<X8>)
{
  sub_116C00();
  sub_116670();
  swift_getKeyPath();
  sub_1166C0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v2 = [objc_opt_self() systemGray4Color];
  v3 = sub_116BE0();
  result = sub_46F9C(&qword_182E20, &qword_124800);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_A959C()
{
  v1 = sub_46F9C(&qword_185000, &unk_129720);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  v7 = *v0;
  v6 = v0[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  sub_46F9C(&qword_182E20, &qword_124800);
  sub_AA5EC();
  sub_116D00();
  sub_48800(&qword_185010, &qword_185000, &unk_129720);
  sub_116AA0();
  return (*(v2 + 8))(v5, v1);
}

id sub_A9860(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_A98BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_A98F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_46F9C(&qword_1850E8, &unk_129A00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v51 - v5);
  v7 = sub_46F9C(&qword_184EA0, &qword_129180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v11 = sub_46F9C(&qword_1850F0, &qword_129A10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v56 = *(a1 + 16);
  v17 = *(&v56 + 1);
  if (!*(&v56 + 1))
  {
    sub_116DD0();
    v42 = sub_116620();
    v43 = &v10[*(v7 + 36)];
    *v43 = v42;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    v43[40] = 1;
    sub_479B4(v10, v6, &qword_184EA0, &qword_129180);
    swift_storeEnumTagMultiPayload();
    sub_AAF38();
    sub_AAF8C();
    sub_116470();
    sub_488C8(v10, &qword_184EA0, &qword_129180);
    v20 = *(a1 + 8);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_5:
    v52 = 0;
    v34 = 0;
    v40 = 0;
    v38 = 0;
    KeyPath = 0;
    v41 = 0;
    goto LABEL_6;
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  *v6 = v56;
  v6[1] = v17;
  v6[2] = v18;
  v6[3] = v19;
  swift_storeEnumTagMultiPayload();
  sub_479B4(&v56, v55, &qword_185118, &qword_129A50);
  sub_AAF38();
  sub_AAF8C();

  sub_116470();
  v20 = *(a1 + 8);
  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  v55[0] = *a1;
  v55[1] = v20;
  sub_4869C();

  v21 = sub_116900();
  v23 = v22;
  v25 = v24;
  sub_116720();
  v26 = sub_1168C0();
  v28 = v27;
  v30 = v29;

  sub_48928(v21, v23, v25 & 1);

  v31 = [objc_opt_self() systemGrayColor];
  v55[0] = sub_116BE0();
  v32 = sub_116890();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_48928(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v40 = v36 & 1;
  v52 = v32;
  sub_488B8(v32, v34, v36 & 1);

  v41 = 1;
LABEL_6:
  v44 = v16;
  v45 = v16;
  v46 = v53;
  sub_479B4(v45, v53, &qword_1850F0, &qword_129A10);
  v47 = v54;
  sub_479B4(v46, v54, &qword_1850F0, &qword_129A10);
  v48 = v47 + *(sub_46F9C(&qword_185110, &qword_129A18) + 48);
  v49 = v52;
  sub_AB090(v52, v34, v40, v38);
  sub_AB0E0(v49, v34, v40, v38);
  *v48 = v49;
  *(v48 + 8) = v34;
  *(v48 + 16) = v40;
  *(v48 + 24) = v38;
  *(v48 + 32) = KeyPath;
  *(v48 + 40) = 0;
  *(v48 + 48) = v41;
  sub_488C8(v44, &qword_1850F0, &qword_129A10);
  sub_AB0E0(v49, v34, v40, v38);
  return sub_488C8(v46, &qword_1850F0, &qword_129A10);
}

uint64_t sub_A9DEC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1163F0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_46F9C(&qword_185018, qword_129738);
  return sub_A98F4(v1, a1 + *(v3 + 44));
}

id sub_A9E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a9;
  v13[7] = v16;
  v13[8] = v17;
  v13[9] = a9;
  v13[5] = v14;
  v13[6] = v15;
  objc_allocWithZone(sub_46F9C(&qword_185130, &qword_129A98));

  sub_AB130(&v14, v13);
  v9 = sub_116440();
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor:v12];
    sub_AB168(&v14);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_A9FB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_A9FF4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

double sub_AA01C@<D0>(uint64_t a1@<X8>)
{
  *v30 = *(v1 + 16);
  v31 = *(v1 + 24);
  sub_4869C();

  v3 = sub_116900();
  v5 = v4;
  v7 = v6;
  sub_116730();
  v8 = sub_1168C0();
  v10 = v9;
  v12 = v11;

  sub_48928(v3, v5, v7 & 1);

  sub_1166C0();
  v29 = sub_116810();
  v14 = v13;
  LOBYTE(v3) = v15;
  v17 = v16;
  sub_48928(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v19 = sub_116660();
  sub_115FD0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_116EB0();
  sub_116190();
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[7] = v32;
  *&v30[23] = v33;
  *&v30[39] = v34;
  *a1 = v29;
  *(a1 + 8) = v14;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v17;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = v23;
  *(a1 + 80) = v25;
  *(a1 + 88) = v27;
  *(a1 + 96) = 0;
  *(a1 + 161) = *&v30[64];
  *(a1 + 177) = *&v30[80];
  *(a1 + 193) = *&v30[96];
  *(a1 + 208) = *(&v38 + 1);
  *(a1 + 97) = *v30;
  *(a1 + 113) = *&v30[16];
  result = *&v30[32];
  *(a1 + 129) = *&v30[32];
  *(a1 + 145) = *&v30[48];
  return result;
}

unint64_t sub_AA270()
{
  result = qword_184FD0;
  if (!qword_184FD0)
  {
    sub_47A1C(&qword_184FC8, &qword_1296F8);
    sub_AA328(&qword_183EC0, &qword_183EC8, &unk_129700, sub_789F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184FD0);
  }

  return result;
}

uint64_t sub_AA328(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_AA3AC()
{
  result = qword_184FF0;
  if (!qword_184FF0)
  {
    sub_47A1C(&qword_184FC0, &qword_1296F0);
    sub_47A1C(&qword_184FB8, &qword_1296E8);
    sub_116550();
    sub_48800(&qword_184FD8, &qword_184FB8, &qword_1296E8);
    sub_AB048(&qword_184FE0, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_184FF8, &qword_184FE8, &qword_129718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184FF0);
  }

  return result;
}

uint64_t sub_AA524(uint64_t a1)
{
  v2 = sub_46F9C(&qword_184FC0, &qword_1296F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AA58C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_AA5C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_AA5EC()
{
  result = qword_185008;
  if (!qword_185008)
  {
    sub_47A1C(&qword_182E20, &qword_124800);
    sub_47A1C(&qword_182E30, &unk_127C70);
    sub_48748();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_183ED8, &qword_183EE0, &qword_129730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185008);
  }

  return result;
}

id sub_AA6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_46F9C(&qword_182E10, &qword_1247F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1246D0;
  v12 = sub_116620();
  *(inited + 32) = v12;
  v13 = sub_116630();
  *(inited + 33) = v13;
  v14 = sub_116650();
  *(inited + 34) = v14;
  v15 = sub_116640();
  sub_116640();
  if (sub_116640() != v12)
  {
    v15 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v13)
  {
    v15 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v14)
  {
    v15 = sub_116640();
  }

  v31 = 1;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = a3;
  *(&v28 + 1) = a4;
  *&v29 = a5;
  *(&v29 + 1) = a6;
  v30[0] = v15;
  memset(&v30[8], 0, 32);
  v30[40] = 1;
  v24 = v29;
  v25 = *v30;
  v26[0] = *&v30[16];
  *(v26 + 9) = *&v30[25];
  v22 = v27;
  v23 = v28;
  objc_allocWithZone(sub_46F9C(&qword_185120, &qword_129A58));

  sub_479B4(&v27, v21, &qword_185128, &qword_129A60);
  v16 = sub_116440();
  result = [v16 view];
  if (result)
  {
    v18 = result;
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
    sub_488C8(&v27, &qword_185128, &qword_129A60);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_AA9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_AAA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_AAAA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_AAABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AAB04(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_AAB64()
{
  result = qword_185070;
  if (!qword_185070)
  {
    sub_47A1C(&qword_185078, &qword_1299C8);
    sub_AA328(&qword_185080, &qword_185088, &qword_1299D0, sub_AAC48);
    sub_48800(&qword_1850B0, &qword_184FB0, &qword_1296E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185070);
  }

  return result;
}

unint64_t sub_AAC48()
{
  result = qword_185090;
  if (!qword_185090)
  {
    sub_47A1C(&qword_185098, &qword_1299D8);
    sub_48800(&qword_1850A0, &qword_1850A8, &qword_1299E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185090);
  }

  return result;
}

unint64_t sub_AAD04()
{
  result = qword_1850B8;
  if (!qword_1850B8)
  {
    sub_47A1C(&qword_1850C0, &qword_1299E8);
    sub_AA3AC();
    sub_AB048(&qword_182E08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1850B8);
  }

  return result;
}

unint64_t sub_AADC4()
{
  result = qword_1850C8;
  if (!qword_1850C8)
  {
    sub_47A1C(&qword_1850D0, &qword_1299F0);
    sub_48800(&qword_185010, &qword_185000, &unk_129720);
    sub_AB048(&qword_182E08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1850C8);
  }

  return result;
}

uint64_t sub_AAEF0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_AAF38()
{
  result = qword_1850F8;
  if (!qword_1850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1850F8);
  }

  return result;
}

unint64_t sub_AAF8C()
{
  result = qword_185100;
  if (!qword_185100)
  {
    sub_47A1C(&qword_184EA0, &qword_129180);
    sub_AB048(&qword_185108, &type metadata accessor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185100);
  }

  return result;
}

uint64_t sub_AB048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AB090(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_488B8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_AB0E0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_48928(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_AB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_AB26C(a5);
  v5 = sub_5A754();
  swift_beginAccess();
  v7 = *v5;
  sub_116AD0();
}

void *sub_AB26C(uint64_t a1)
{
  v18 = sub_46F9C(&qword_185180, &qword_12A550);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = &v18 - v4;
  v6 = sub_46F9C(&qword_185178, &unk_129BA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_ACB70(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_479B4(v13, v5, &qword_185180, &qword_12A550);
      swift_dynamicCast();
      v19 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_ACB70(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      v12[2] = v16 + 1;
      sub_ACA6C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_AB544@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = sub_115A20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v7 + 16))(v10, a1, v6, v9);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v22 = a2[5];
  v23 = v11;
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v14, v10, v6);
  v17 = (v16 + v15);
  v18 = *(a2 + 1);
  *v17 = *a2;
  v17[1] = v18;
  v17[2] = *(a2 + 2);
  *a3 = sub_AC844;
  a3[1] = v16;

  sub_AB494(&v23, v21);

  return sub_479B4(&v22, v21, &qword_185140, &qword_129AA8);
}

uint64_t sub_AB710@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a3;
  v23 = sub_116490();
  v24 = *(v23 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v23);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_115A20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1159F0();
  type metadata accessor for CGRect(0);
  sub_1160A0();

  v11 = v37;
  v12 = v38;
  v13 = sub_116B50();
  sub_1167F0();
  *&v26 = v13;
  WORD4(v26) = 256;
  *(&v26 + 10) = v35;
  HIWORD(v26) = v36;
  v27 = v30;
  v28 = v31;
  v29 = v32;
  (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v15 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v33 = a2[5];
  v34 = v14;
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 32) = v12;
  (*(v9 + 32))(v18 + v17, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v19 = (v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = *(a2 + 1);
  *v19 = *a2;
  v19[1] = v20;
  v19[2] = *(a2 + 2);

  sub_AB494(&v34, &v37);

  sub_479B4(&v33, &v37, &qword_185140, &qword_129AA8);
  sub_1164F0();
  sub_46F9C(&qword_184280, &unk_128080);
  sub_8BF50();
  v21 = v23;
  sub_116A10();

  (*(v24 + 8))(v7, v21);
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  return sub_488C8(&v37, &qword_184280, &unk_128080);
}

void sub_ABACC(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = sub_46F9C(&qword_185170, &unk_129B90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v41 - v15;
  v17 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v41 - v19;
  v21 = sub_115760();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  MinX = CGRectGetMinX(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  MaxX = CGRectGetMaxX(v49);
  if (MinX > MaxX)
  {
    __break(1u);
    return;
  }

  if (MinX <= a1 && MaxX > a1)
  {
    v50.origin.x = a2;
    v50.origin.y = a3;
    v50.size.width = a4;
    v50.size.height = a5;
    CGRectGetMinX(v50);
    sub_115A00();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_488C8(v20, &qword_182EF0, &unk_124BB0);
      return;
    }

    v28 = (*(v22 + 32))(v25, v20, v21);
    v29 = a7[5];
    __chkstk_darwin(v28);
    *(&v41 - 2) = v25;
    sub_AC1E0(sub_ACA4C, v30, v16);
    v31 = sub_46F9C(&qword_185178, &unk_129BA0);
    v32 = (*(*(v31 - 8) + 48))(v16, 1, v31);
    if (v32 == 1)
    {
      sub_488C8(v16, &qword_185170, &unk_129B90);
      v33 = 0;
    }

    else
    {
      v33 = *v16;
      v34 = *(v31 + 48);
      sub_488C8(&v16[*(v31 + 64)], &qword_182EF0, &unk_124BB0);
      (*(v22 + 8))(&v16[v34], v21);
    }

    v36 = a7[1];
    v35 = a7[2];
    v38 = a7[3];
    v37 = a7 + 3;
    v47 = v36;
    v43 = v36;
    v44 = v35;
    v45 = v38;
    v46 = *(v37 + 8);

    sub_AB494(&v47, &v41);
    sub_46F9C(&qword_185138, &qword_129AA0);
    sub_116D60();
    v39 = v42;
    if (v32 == 1)
    {
      if (!v42)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v33 != v41)
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = 0;
LABEL_18:
        v43 = v36;
        v44 = v35;
        v45 = *v37;
        v46 = *(v37 + 8);
        v41 = v33;
        v42 = v40;
        sub_116D70();
        sub_AB4F0(&v47);

        (*(v22 + 8))(v25, v21);
        return;
      }
    }

    v33 = 0;
LABEL_17:
    v40 = 1;
    goto LABEL_18;
  }
}

uint64_t sub_ABF10()
{
  v0 = sub_46F9C(&qword_185178, &unk_129BA0);
  v1 = *(v0 + 48);
  sub_115760();
  sub_ACADC();
  v2 = sub_117120();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 64);
    __chkstk_darwin(v2);
    v5 = sub_AC000(sub_ACB34);
    v3 = (v5 == 2) | v5;
  }

  return v3 & 1;
}

uint64_t sub_AC000(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_115760();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  sub_479B4(v1, &v13 - v10, &qword_182EF0, &unk_124BB0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t sub_AC1E0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_46F9C(&qword_185178, &unk_129BA0);
  v8 = *(*(v7 - 8) + 64);
  v11 = __chkstk_darwin(v7);
  v13 = &v20 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v20 = v10;
    v21 = v9;
    v22 = a3;
    v15 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    while (1)
    {
      sub_479B4(v15, v13, &qword_185178, &unk_129BA0);
      v17 = a1(v13);
      if (v3)
      {
        return sub_488C8(v13, &qword_185178, &unk_129BA0);
      }

      if (v17)
      {
        break;
      }

      sub_488C8(v13, &qword_185178, &unk_129BA0);
      v15 += v16;
      if (!--v14)
      {
        v18 = 1;
        a3 = v22;
        goto LABEL_10;
      }
    }

    a3 = v22;
    sub_ACA6C(v13, v22);
    v18 = 0;
LABEL_10:
    v10 = v20;
    v9 = v21;
  }

  else
  {
    v18 = 1;
  }

  return (*(v10 + 56))(a3, v18, 1, v9, v11);
}

uint64_t sub_AC39C()
{
  v2 = *v0;
  v3 = v0[2];
  v4 = v0[5];
  v9 = v0[1];
  v1 = v9;
  v10 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = v0[3];
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 49) = *(v0 + 33);
  *(v5 + 52) = *(v0 + 9);
  *(v5 + 56) = v4;

  sub_AB494(&v9, v8);

  sub_479B4(&v10, v8, &qword_185140, &qword_129AA8);
  sub_116EB0();
  sub_46F9C(&qword_185148, &unk_129AB0);
  sub_46F9C(&qword_185150, &qword_12CD90);
  sub_48800(&qword_185158, &qword_185148, &unk_129AB0);
  sub_48800(&qword_185160, &qword_185150, &qword_12CD90);
  sub_116980();
}

uint64_t sub_AC554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_AC59C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_AC5F8()
{
  result = qword_185168;
  if (!qword_185168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185168);
  }

  return result;
}

uint64_t sub_AC64C()
{
  sub_47A1C(&qword_185148, &unk_129AB0);
  sub_47A1C(&qword_185150, &qword_12CD90);
  sub_48800(&qword_185158, &qword_185148, &unk_129AB0);
  sub_48800(&qword_185160, &qword_185150, &qword_12CD90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_AC73C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_AC78C()
{
  v1 = sub_115A20();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v4 + 16);

  v8 = *(v0 + v4 + 40);

  return swift_deallocObject();
}

uint64_t sub_AC844@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_115A20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_AB710(v1 + v4, v5, a1);
}

uint64_t sub_AC8F0()
{
  v1 = sub_115A20();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v4 + 16);

  v8 = *(v0 + v4 + 40);

  return swift_deallocObject();
}

void sub_AC9A8(double a1)
{
  v3 = *(sub_115A20() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_ABACC(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_ACA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_185178, &unk_129BA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_ACADC()
{
  result = qword_182F10;
  if (!qword_182F10)
  {
    sub_115760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182F10);
  }

  return result;
}

uint64_t sub_ACB34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1156D0();
  *a1 = result & 1;
  return result;
}

size_t sub_ACB70(size_t a1, int64_t a2, char a3)
{
  result = sub_ACB90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_ACB90(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_46F9C(&qword_185188, &unk_129BB0);
  v10 = *(sub_46F9C(&qword_185178, &unk_129BA0) - 8);
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
  v15 = *(sub_46F9C(&qword_185178, &unk_129BA0) - 8);
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

uint64_t sub_ACD88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_5A754();
  swift_beginAccess();
  v7 = *v6;
  type metadata accessor for BUIChartViewModel();
  sub_AE924(&qword_185190, type metadata accessor for BUIChartViewModel);

  result = sub_116120();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = a3;
  *(a2 + 24) = a1;
  *(a2 + 32) = v7;
  return result;
}

void sub_ACE58(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_46F9C(&qword_185198, &qword_129BC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v44 - v3;
  v45 = sub_46F9C(&qword_1851A0, &qword_129BC8);
  v5 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v7 = &v44 - v6;
  v46 = sub_46F9C(&qword_1851A8, &unk_129BD0);
  v8 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v48 = &v44 - v9;
  v10 = sub_117170();
  v11 = BatteryUILocalization(v10);

  if (v11)
  {
    v12 = sub_1171B0();
    v14 = v13;

    v50 = v12;
    v51 = v14;
    sub_4869C();
    v15 = sub_116900();
    v17 = v16;
    LOBYTE(v12) = v18;
    v44 = v19;
    v20 = &v4[*(v1 + 36)];
    v21 = *(sub_46F9C(&qword_1851B0, &qword_12CCE0) + 28);
    v22 = enum case for Text.Case.uppercase(_:);
    v23 = sub_1168B0();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v20 + v21, v22, v23);
    (*(v24 + 56))(v20 + v21, 0, 1, v23);
    *v20 = swift_getKeyPath();
    *v4 = v15;
    *(v4 + 1) = v17;
    v4[16] = v12 & 1;
    *(v4 + 3) = v44;
    v25 = *(v47 + 32);
    v26 = *(v25 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleColor);
    KeyPath = swift_getKeyPath();
    sub_548D0(v4, v7, &qword_185198, &qword_129BC0);
    v28 = &v7[*(v45 + 36)];
    *v28 = KeyPath;
    v28[1] = v26;
    v29 = *(v25 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleFont);
    v30 = swift_getKeyPath();
    v31 = v48;
    sub_548D0(v7, v48, &qword_1851A0, &qword_129BC8);
    v32 = (v31 + *(v46 + 36));
    *v32 = v30;
    v32[1] = v29;

    LOBYTE(v26) = sub_116620();
    v33 = *(v25 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titlePaddingBottom);
    sub_115FD0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v49;
    sub_548D0(v31, v49, &qword_1851A8, &unk_129BD0);
    v43 = v42 + *(sub_46F9C(&qword_1851B8, &qword_129C70) + 36);
    *v43 = v26;
    *(v43 + 8) = v35;
    *(v43 + 16) = v37;
    *(v43 + 24) = v39;
    *(v43 + 32) = v41;
    *(v43 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_AD218@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v46 = sub_46F9C(&qword_1851C0, &qword_129C78);
  v3 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v5 = &v46 - v4;
  v49 = sub_46F9C(&qword_1851C8, &qword_129C80);
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v49);
  v8 = &v46 - v7;
  v48 = sub_46F9C(&qword_1851D0, &qword_129C88);
  v9 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v11 = &v46 - v10;
  *v5 = sub_1163F0();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v12 = sub_46F9C(&qword_1851D8, &qword_129C90);
  sub_AD680(v2, &v5[*(v12 + 44)]);
  v52 = *v2;
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 32);
  sub_479B4(&v52, v51, &qword_1851E0, &qword_129C98);
  v17 = v13;

  sub_46F9C(&qword_1851E8, &qword_129CA0);
  sub_48800(&qword_1851F0, &qword_1851C0, &qword_129C78);
  sub_AEA98(&qword_1851F8, &qword_1851E8, &qword_129CA0, sub_7DDE8);
  sub_116990();

  sub_488C8(v5, &qword_1851C0, &qword_129C78);
  sub_46F9C(&qword_182E10, &qword_1247F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1248A0;
  v19 = sub_116630();
  *(inited + 32) = v19;
  v20 = sub_116650();
  *(inited + 33) = v20;
  v21 = sub_116640();
  sub_116640();
  if (sub_116640() != v19)
  {
    v21 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v20)
  {
    v21 = sub_116640();
  }

  v22 = *(&v52 + 1);
  v23 = *sub_A79B4();
  sub_115FD0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v47 + 32))(v11, v8, v49);
  v32 = &v11[*(v48 + 36)];
  *v32 = v21;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_116610();
  v34 = v33;
  (*(*v22 + 288))(v33);
  sub_115FD0();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v50;
  sub_AE96C(v11, v50);
  result = sub_46F9C(&qword_185200, qword_129CA8);
  v45 = v43 + *(result + 36);
  *v45 = v34;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_AD680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v132 = sub_46F9C(&qword_185218, &qword_129D48);
  v3 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v121 = &v109 - v4;
  v5 = type metadata accessor for TenDayBatteryActivityChart(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v117 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v128 = &v109 - v9;
  v10 = type metadata accessor for TenDayBatteryUsageChart(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v116 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v127 = &v109 - v14;
  v130 = sub_46F9C(&qword_185220, &qword_129D50);
  v15 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v131 = &v109 - v16;
  v124 = sub_46F9C(&qword_185228, &qword_129D58);
  v17 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v113 = &v109 - v18;
  v19 = type metadata accessor for Battery24HrActivityChart(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v112 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v109 - v23;
  v126 = sub_46F9C(&qword_185230, &qword_129D60);
  v24 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v134 = &v109 - v28;
  v29 = sub_46F9C(&qword_1851B8, &qword_129C70);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v109 - v34;
  v119 = sub_46F9C(&qword_185238, &qword_129D68);
  v36 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v122 = &v109 - v37;
  v120 = sub_46F9C(&qword_185240, &qword_129D70);
  v38 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v111 = &v109 - v39;
  v40 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v115 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v125 = &v109 - v44;
  v45 = sub_46F9C(&qword_185248, &qword_129D78);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = &v109 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v110 = &v109 - v50;
  v129 = sub_46F9C(&qword_185250, &qword_129D80);
  v51 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v123 = &v109 - v52;
  v136[0] = *a1;
  v53 = *(&v136[0] + 1);
  v54 = *(**(&v136[0] + 1) + 192);
  sub_479B4(v136, v135, &qword_1851E0, &qword_129C98);
  v55 = swift_retain_n();
  if (v54(v55))
  {
    sub_488C8(v136, &qword_1851E0, &qword_129C98);
    v56 = v35;
    v114 = v35;
    sub_ACE58(v35);
    v57 = *(a1 + 16);
    v58 = v127;
    sub_BAC18(v53, v127, v57);
    v59 = v134;
    sub_ACE58(v134);
    v60 = sub_116610();
    v61 = *(*(a1 + 32) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartGap);
    sub_115FD0();
    v62 = v59 + *(v126 + 36);
    *v62 = v60;
    *(v62 + 8) = v63;
    *(v62 + 16) = v64;
    *(v62 + 24) = v65;
    *(v62 + 32) = v66;
    *(v62 + 40) = 0;
    v67 = v128;
    sub_BD920(v53, v128, v57);
    sub_479B4(v56, v32, &qword_1851B8, &qword_129C70);
    v68 = v116;
    sub_AED9C(v58, v116, type metadata accessor for TenDayBatteryUsageChart);
    sub_479B4(v59, v26, &qword_185230, &qword_129D60);
    v69 = v117;
    sub_AED9C(v67, v117, type metadata accessor for TenDayBatteryActivityChart);
    v70 = v121;
    sub_479B4(v32, v121, &qword_1851B8, &qword_129C70);
    v71 = sub_46F9C(&qword_185258, &qword_129D88);
    sub_AED9C(v68, v70 + v71[12], type metadata accessor for TenDayBatteryUsageChart);
    sub_479B4(v26, v70 + v71[16], &qword_185230, &qword_129D60);
    sub_AED9C(v69, v70 + v71[20], type metadata accessor for TenDayBatteryActivityChart);
    sub_AEE04(v69, type metadata accessor for TenDayBatteryActivityChart);
    sub_488C8(v26, &qword_185230, &qword_129D60);
    sub_AEE04(v68, type metadata accessor for TenDayBatteryUsageChart);
    sub_488C8(v32, &qword_1851B8, &qword_129C70);
    sub_479B4(v70, v131, &qword_185218, &qword_129D48);
    swift_storeEnumTagMultiPayload();
    sub_AECBC();
    sub_48800(&qword_185278, &qword_185218, &qword_129D48);
    sub_116470();
    sub_488C8(v70, &qword_185218, &qword_129D48);
    sub_AEE04(v128, type metadata accessor for TenDayBatteryActivityChart);
    sub_488C8(v134, &qword_185230, &qword_129D60);
    sub_AEE04(v127, type metadata accessor for TenDayBatteryUsageChart);
    return sub_488C8(v114, &qword_1851B8, &qword_129C70);
  }

  else
  {
    v73 = v126;
    v128 = v32;
    v74 = v134;
    v135[0] = 1;
    v75 = sub_5822C();
    v76 = sub_F59F0(&type metadata for PerfPowerServices, v75);
    sub_488C8(v136, &qword_1851E0, &qword_129C98);
    if (v76)
    {
      sub_488C8(v136, &qword_1851E0, &qword_129C98);
      v77 = *(a1 + 32);
      v78 = v110;
      (*(*v77 + 528))(0x2079726574746142, 0xED00006C6576654CLL);
      v79 = sub_116BC0();
      *(v78 + *(sub_46F9C(&qword_185288, &qword_129D98) + 36)) = v79;
      LOBYTE(v79) = sub_116620();
      v80 = *(v77 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight) + *(v77 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset) + *(v77 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset) + 10.0;
      sub_115FD0();
      v81 = v78 + *(v45 + 36);
      *v81 = v79;
      *(v81 + 8) = v82;
      *(v81 + 16) = v83;
      *(v81 + 24) = v84;
      *(v81 + 32) = v85;
      *(v81 + 40) = 0;
      v86 = v125;
      sub_D9090(v53, v125, *(a1 + 16));
      sub_479B4(v78, v48, &qword_185248, &qword_129D78);
      v87 = v115;
      sub_AED9C(v86, v115, type metadata accessor for Battery24HrBatteryLevelChart);
      v88 = v111;
      sub_479B4(v48, v111, &qword_185248, &qword_129D78);
      v89 = sub_46F9C(&qword_185290, &unk_129DA0);
      sub_AED9C(v87, v88 + *(v89 + 48), type metadata accessor for Battery24HrBatteryLevelChart);
      sub_AEE04(v87, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v48, &qword_185248, &qword_129D78);
      sub_479B4(v88, v122, &qword_185240, &qword_129D70);
      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_185268, &qword_185240, &qword_129D70);
      sub_48800(&qword_185270, &qword_185228, &qword_129D58);
      v90 = v123;
      sub_116470();
      sub_488C8(v88, &qword_185240, &qword_129D70);
      sub_AEE04(v86, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v78, &qword_185248, &qword_129D78);
    }

    else
    {
      v91 = v35;
      v114 = v35;
      v92 = a1;
      sub_ACE58(v35);
      v93 = *(a1 + 16);
      v94 = v125;
      sub_D9090(v53, v125, v93);
      sub_ACE58(v74);
      v95 = sub_116610();
      v96 = *(*(v92 + 32) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartGap);
      sub_115FD0();
      v97 = v74 + *(v73 + 36);
      *v97 = v95;
      *(v97 + 8) = v98;
      *(v97 + 16) = v99;
      *(v97 + 24) = v100;
      *(v97 + 32) = v101;
      *(v97 + 40) = 0;
      v102 = v118;
      sub_E0E58(v118, v93);
      v103 = v128;
      sub_479B4(v91, v128, &qword_1851B8, &qword_129C70);
      v104 = v115;
      sub_AED9C(v94, v115, type metadata accessor for Battery24HrBatteryLevelChart);
      v105 = v26;
      sub_479B4(v74, v26, &qword_185230, &qword_129D60);
      v106 = v112;
      sub_AED9C(v102, v112, type metadata accessor for Battery24HrActivityChart);
      v107 = v113;
      sub_479B4(v103, v113, &qword_1851B8, &qword_129C70);
      v108 = sub_46F9C(&qword_185280, &qword_129D90);
      sub_AED9C(v104, v107 + v108[12], type metadata accessor for Battery24HrBatteryLevelChart);
      sub_479B4(v105, v107 + v108[16], &qword_185230, &qword_129D60);
      sub_AED9C(v106, v107 + v108[20], type metadata accessor for Battery24HrActivityChart);
      sub_AEE04(v106, type metadata accessor for Battery24HrActivityChart);
      sub_488C8(v105, &qword_185230, &qword_129D60);
      sub_AEE04(v104, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v103, &qword_1851B8, &qword_129C70);
      sub_479B4(v107, v122, &qword_185228, &qword_129D58);
      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_185268, &qword_185240, &qword_129D70);
      sub_48800(&qword_185270, &qword_185228, &qword_129D58);
      v90 = v123;
      sub_116470();
      sub_488C8(v107, &qword_185228, &qword_129D58);
      sub_AEE04(v118, type metadata accessor for Battery24HrActivityChart);
      sub_488C8(v134, &qword_185230, &qword_129D60);
      sub_AEE04(v125, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v114, &qword_1851B8, &qword_129C70);
    }

    sub_479B4(v90, v131, &qword_185250, &qword_129D80);
    swift_storeEnumTagMultiPayload();
    sub_AECBC();
    sub_48800(&qword_185278, &qword_185218, &qword_129D48);
    sub_116470();
    return sub_488C8(v90, &qword_185250, &qword_129D80);
  }
}

uint64_t sub_AE6E8(uint64_t a1)
{
  v2 = sub_46F9C(&qword_185298, &qword_12CD20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_479B4(a1, &v6 - v4, &qword_185298, &qword_12CD20);
  return sub_116290();
}

uint64_t sub_AE790()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_AE7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v6 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
  sub_116EB0();
  sub_116070();
  v8 = sub_115C90();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v9 = v21;
  v9[1] = v22;
  v9[2] = v23;
  LOBYTE(v7) = sub_116620();
  v10 = *(v6 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(v6 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
  sub_115FD0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_46F9C(&qword_1851E8, &qword_129CA0);
  v20 = a2 + *(result + 36);
  *v20 = v7;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_AE924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AE96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1851D0, &qword_129C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_AE9F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_AEA40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_AEA98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_AEB60()
{
  result = qword_185210;
  if (!qword_185210)
  {
    sub_47A1C(&qword_1851D0, &qword_129C88);
    sub_47A1C(&qword_1851C0, &qword_129C78);
    sub_47A1C(&qword_1851E8, &qword_129CA0);
    sub_48800(&qword_1851F0, &qword_1851C0, &qword_129C78);
    sub_AEA98(&qword_1851F8, &qword_1851E8, &qword_129CA0, sub_7DDE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185210);
  }

  return result;
}

unint64_t sub_AECBC()
{
  result = qword_185260;
  if (!qword_185260)
  {
    sub_47A1C(&qword_185250, &qword_129D80);
    sub_48800(&qword_185268, &qword_185240, &qword_129D70);
    sub_48800(&qword_185270, &qword_185228, &qword_129D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185260);
  }

  return result;
}

uint64_t sub_AED9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_AEE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_AEE64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();
}

uint64_t sub_AEF20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BA3D4(a1, v7, type metadata accessor for BUIChartViewData);
  return (*(**a2 + 144))(v7);
}

uint64_t sub_AEFE0(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_BA3D4(a1, v5, type metadata accessor for BUIChartViewData);

  sub_115F80();
  return sub_BA43C(a1, type metadata accessor for BUIChartViewData);
}

uint64_t (*sub_AF0C4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

uint64_t sub_AF184(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852A8, &qword_129EC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_46F9C(&qword_1852A0, &qword_129EB8);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_AF2BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852A8, &qword_129EC0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__data;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852A0, &qword_129EB8);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t sub_AF42C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_AF46C(a1);
  return v5;
}

uint64_t sub_AF46C(uint64_t a1)
{
  v42 = a1;
  v44 = type metadata accessor for BUIChartViewData(0);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v35 - v5;
  v6 = sub_46F9C(&qword_1852B0, &qword_129EC8);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v38 = &v35 - v8;
  v37 = sub_46F9C(&qword_1852B8, &qword_129ED0);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v12 = &v35 - v11;
  v36 = sub_46F9C(&qword_1852C0, &qword_129ED8);
  v13 = *(v36 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v36);
  v16 = &v35 - v15;
  v17 = sub_46F9C(&qword_1852C8, &unk_129EE0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  v22 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg;
  v23 = sub_5A754();
  swift_beginAccess();
  *(v1 + v22) = *v23;
  v24 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__activeChart;
  LOBYTE(v45) = 0;

  sub_115F30();
  (*(v18 + 32))(v1 + v24, v21, v17);
  v25 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__selectedIndex;
  v45 = 0;
  v46 = 1;
  sub_46F9C(&qword_1835F8, &unk_1259E0);
  sub_115F30();
  (*(v13 + 32))(v1 + v25, v16, v36);
  v26 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__topMargin;
  v45 = 0;
  sub_115F30();
  v27 = *(v9 + 32);
  v28 = v37;
  v27(v1 + v26, v12, v37);
  v29 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__bottomMargin;
  v45 = 0;
  sub_115F30();
  v27(v1 + v29, v12, v28);
  v30 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__containerBackgroundColor;
  v45 = [objc_opt_self() systemBackgroundColor];
  sub_54960(0, &qword_1831A8, UIColor_ptr);
  v31 = v38;
  sub_115F30();
  (*(v39 + 32))(v1 + v30, v31, v40);
  v33 = v41;
  v32 = v42;
  sub_BA3D4(v42, v41, type metadata accessor for BUIChartViewData);
  swift_beginAccess();
  sub_BA3D4(v33, v43, type metadata accessor for BUIChartViewData);
  sub_115F30();
  sub_BA43C(v33, type metadata accessor for BUIChartViewData);
  swift_endAccess();
  sub_BA43C(v32, type metadata accessor for BUIChartViewData);
  return v1;
}

uint64_t sub_AF95C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v1;
}

uint64_t sub_AF9D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_AFA68()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_115F80();
  return (*(*v0 + 248))(0, 1);
}

uint64_t (*sub_AFB08(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  *(a1 + 8) = *(a1 + 9);
  return sub_AFB9C;
}

uint64_t sub_AFB9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v3;

  sub_115F80();
  return (*(*v2 + 248))(0, 1);
}

uint64_t sub_AFC5C(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852D0, &qword_129F38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_46F9C(&qword_1852C8, &unk_129EE0);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_AFD94(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852D0, &qword_129F38);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__activeChart;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852C8, &unk_129EE0);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t sub_AFF04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v1;
}

uint64_t sub_AFF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_B0024()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_115F80();
}

uint64_t (*sub_B00A8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

uint64_t sub_B0168(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852D8, &qword_129F88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_46F9C(&qword_1852C0, &qword_129ED8);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B02A0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852D8, &qword_129F88);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__selectedIndex;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852C0, &qword_129ED8);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t (*sub_B04DC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

uint64_t sub_B059C(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B06D4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__topMargin;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F40();
  swift_endAccess();
  return sub_B0844;
}

double sub_B085C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v1;
}

uint64_t sub_B0980()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_115F80();
}

uint64_t (*sub_B09F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_B0A94;
}

uint64_t sub_B0AB4(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B0BEC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__bottomMargin;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t sub_B0D5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v1;
}

uint64_t sub_B0DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t sub_B0E80()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_115F80();
}

uint64_t (*sub_B0EF0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

void sub_B0F94(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_B1018(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_46F9C(a2, a3);
  sub_115F40();
  return swift_endAccess();
}

uint64_t sub_B1090(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852E8, &unk_12A070);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_46F9C(&qword_1852B0, &qword_129EC8);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B11C8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852E8, &unk_12A070);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__containerBackgroundColor;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852B0, &qword_129EC8);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

void sub_B1338(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_115F50();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_115F50();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}