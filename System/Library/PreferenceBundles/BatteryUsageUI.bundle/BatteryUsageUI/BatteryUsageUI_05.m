double sub_B14A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1831E0, &unk_1258C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v39 = &v35 - v6;
  v7 = sub_46F9C(&qword_1831E8, &qword_12A080);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v35 = &v35 - v9;
  v10 = sub_116850();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  __chkstk_darwin(v10);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_116870();
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_116860();
  v42 = a1;
  v43 = a2;
  sub_4869C();

  v17 = sub_116900();
  v19 = v18;
  v21 = v20;
  v22 = sub_5A754();
  swift_beginAccess();
  v23 = *(*v22 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelFont);

  v24 = sub_1168C0();
  v26 = v25;
  v28 = v27;

  sub_48928(v17, v19, v21 & 1);

  v29 = sub_116820();
  (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
  v30 = sub_1168D0();
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  v31 = v36;
  sub_116840();
  sub_116830();
  v33 = v32;
  sub_48928(v24, v26, v28 & 1);

  (*(v40 + 8))(v31, v41);
  (*(v37 + 8))(v16, v38);
  return v33;
}

void sub_B1850(double a1)
{
  v2 = v1;
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v44 = a1;
  v45 = v6;
  sub_A77E8(sub_B1C0C, v43);
  v7 = *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v8 = (*(*v7 + 584))();
  v9 = (*(*v2 + 464))();
  v10 = *(v9 + 16);
  if (!v10)
  {

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v12)
  {
    v13 = (v9 + 40);
    do
    {
      v14 = *v13++;
      v15 = v14;
      if (v11 < v14)
      {
        v11 = v15;
      }

      --v12;
    }

    while (v12);
  }

  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  v17 = [v8 stringFromNumber:v16];

  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = sub_1171B0();
  v20 = v19;

  v21 = *(*v2 + 472);
  v22 = *(v7 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes);
  v23 = v21();
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_20:

    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v25 = *(v23 + 32);
  v26 = v24 - 1;
  if (v26)
  {
    v27 = (v23 + 40);
    do
    {
      v28 = *v27++;
      v29 = v28;
      if (v25 < v28)
      {
        v25 = v29;
      }

      --v26;
    }

    while (v26);
  }

  v30 = [objc_allocWithZone(NSNumber) initWithDouble:v25];
  v31 = [v22 stringFromNumber:v30];

  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = sub_1171B0();
  v34 = v33;

  v35 = *(*v2 + 432);
  v36 = v35(v18, v20);

  v37 = v35(v32, v34);

  if (v36 <= v37)
  {
    v36 = v37;
  }

  v38 = sub_A79B4();
  v39 = a1 - *v38;
  v40 = sub_A79CC();
  v41 = floor((v39 - (v36 + *v40) + *v38 * -0.5) * 0.0625) * 16.0;
  __chkstk_darwin(v40);
  *&v42[2] = v41;
  sub_A77E8(sub_B1F58, v42);
}

uint64_t sub_B1C0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_117710(53);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000000001357A0;
  sub_117220(v4);
  v5._countAndFlagsBits = sub_117420();
  sub_117220(v5);

  v6._object = 0x80000000001357D0;
  v6._countAndFlagsBits = 0xD000000000000011;
  sub_117220(v6);
  v7._countAndFlagsBits = sub_117420();
  sub_117220(v7);

  return 0;
}

uint64_t sub_B1CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_115760();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(*(v4 - 8));
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v12 = &v24 - v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v9 + 16);
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = v9;
    v25 = a2;
    v26 = v14;
    (v14)(&v24 - v10, v15, v4, v11);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v7, v15 + *(result + 72) * v20, v4);
        sub_ACADC();
        v22 = sub_117120();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v7, v4);
        }

        else
        {
          v23(v7, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v9 + 56);

    return v18(a2, 1, 1, v4, v11);
  }

  return result;
}

unint64_t sub_B1F58()
{
  v1 = *(v0 + 16);
  sub_117710(31);

  v3._countAndFlagsBits = sub_117420();
  sub_117220(v3);

  return 0xD00000000000001DLL;
}

double sub_B1FE0(double a1)
{
  v1 = a1 <= 500.0;
  v2 = a1 / 96.0;
  if (v1)
  {
    v3 = v2 * 0.25;
  }

  else
  {
    v3 = v2 / 5.0;
  }

  return v3 * 3.0;
}

uint64_t sub_B2020(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t *, uint64_t), uint64_t a5)
{
  v116 = a2;
  v97 = a1;
  v95 = sub_1179C0();
  v94 = *(v95 - 8);
  v8 = *(v94 + 64);
  __chkstk_darwin(v95);
  v92 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(a4 - 1);
  v10 = v101[8];
  __chkstk_darwin(v11);
  v90 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v87 - v14;
  __chkstk_darwin(v15);
  v93 = &v87 - v16;
  __chkstk_darwin(v17);
  v117 = &v87 - v18;
  v96 = a5;
  v89 = *(a5 + 16);
  v115 = *(*(v89 + 24) + 8);
  v19 = a4;
  v118 = sub_117150();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v21 = sub_117620();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v87 - v23;
  v25 = *(TupleTypeMetadata3 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  v114 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v113 = &v87 - v30;
  __chkstk_darwin(v31);
  v33 = &v87 - v32;
  v87 = v34;
  __chkstk_darwin(v35);
  v37 = &v87 - v36;
  v123 = a3;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1170F0();
  v119 = v25;
  v38 = v24;
  v39 = v24;
  v40 = TupleTypeMetadata3;
  result = (*(v25 + 48))(v39, 1, TupleTypeMetadata3);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v98 = TupleTypeMetadata3;
    v42 = *(TupleTypeMetadata3 + 48);
    v43 = *(TupleTypeMetadata3 + 64);
    v44 = v101 + 4;
    v45 = v101[4];
    v45(v37, v38, v19);
    v100 = v42;
    v111 = v45;
    v112 = v44;
    v45(&v37[v42], &v38[v42], v19);
    v46 = v118;
    v88 = *(v118 - 8);
    v47 = *(v88 + 32);
    v99 = v43;
    v109 = v47;
    v110 = v88 + 32;
    v47(&v37[v43], &v38[v43], v118);
    v48 = v19;
    if (sub_117390())
    {
      v49 = 0;
      v122 = (v119 + 16);
      v107 = (v101 + 2);
      v105 = (v101 + 1);
      v106 = (v88 + 8);
      v103 = (v119 + 8);
      v104 = a3;
      v108 = v37;
      v102 = v33;
      do
      {
        v50 = sub_117360();
        sub_117330();
        if (v50)
        {
          v51 = *(v119 + 16);
          v51(v33, (a3 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v49), v40);
          v52 = v113;
          v53 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_12;
          }
        }

        else
        {
          result = sub_117720();
          v52 = v113;
          if (v87 != 8)
          {
            __break(1u);
            goto LABEL_16;
          }

          v123 = result;
          v51 = *v122;
          (*v122)(v33, &v123, v40);
          swift_unknownObjectRelease();
          v53 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v68 = v114;
            (*(v119 + 32))(v114, v52, v40);
            v69 = *(v40 + 48);
            v70 = *(v40 + 64);
            v71 = v101[5];
            v37 = v108;
            v71(v108, v68, v51);
            v71(&v37[v100], &v68[v69], v51);
            v48 = v51;
            (*(v88 + 40))(&v37[v99], &v68[v70], v118);
            break;
          }
        }

        v120 = v49;
        v121 = v53;
        v54 = *(v40 + 48);
        v55 = *(v40 + 64);
        v56 = v33;
        v57 = v33;
        v58 = v51;
        v59 = v111;
        v111(v52, v57, v48);
        v59(&v52[v54], &v56[v54], v48);
        v109(&v52[v55], &v56[v55], v46);
        v60 = v114;
        v58(v114, v52, v40);
        v61 = *(v40 + 48);
        v62 = &v60[*(v40 + 64)];
        v51 = v48;
        v63 = v117;
        (*v107)(v117, &v62[*(v46 + 36)], v51);
        (*v106)(v62, v46);
        v64 = sub_117130();
        v65 = *v105;
        v66 = v63;
        v48 = v51;
        (*v105)(v66, v51);
        v65(&v60[v61], v51);
        v65(v60, v51);
        if (v64)
        {
          goto LABEL_13;
        }

        (*v103)(v52, v40);
        a3 = v104;
        v67 = sub_117390();
        v49 = v120 + 1;
        v37 = v108;
        v46 = v118;
        v33 = v102;
      }

      while (v121 != v67);
    }

    v72 = v37;
    v73 = v90;
    v74 = v89;
    sub_1170A0();
    v75 = v48;
    v76 = v94;
    v77 = v92;
    v78 = v95;
    (*(v94 + 104))(v92, enum case for FloatingPointRoundingRule.up(_:), v95);
    v79 = v91;
    sub_1170B0();
    (*(v76 + 8))(v77, v78);
    v80 = v101;
    v81 = v101[1];
    v81(v73, v75);
    v82 = *(*(v74 + 16) + 8);
    v83 = v100;
    v84 = v93;
    sub_117450();
    v81(v79, v75);
    v85 = v117;
    sub_117A20();
    v81(v84, v75);
    v86 = sub_B29BC(v72, v85, v75, v96);
    v81(v85, v75);
    (v80[2])(v97, v72 + v83, v75);
    (*(v119 + 8))(v72, v40);
    return v86;
  }

  return result;
}

uint64_t sub_B29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(*(v5 + 16) + 8);
  v7 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v21 = *(a3 - 8);
  v10 = *(v21 + 64);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  v22 = sub_117340();
  swift_getAssociatedConformanceWitness();
  sub_117A00();
  sub_1179D0();
  v17 = *(*(v5 + 24) + 8);
  if (sub_117130())
  {
    v18 = *(v21 + 16);
    do
    {
      v18(v13, v16, a3);
      sub_1173A0();
      sub_117380();
      v19 = *(v6 + 8);
      sub_117820();
    }

    while ((sub_117130() & 1) != 0);
  }

  (*(v21 + 8))(v16, a3);
  return v22;
}

uint64_t sub_B2C14()
{
  v1 = v0;
  v2 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BUIChartViewData(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v15);
  sub_BA3D4(&v17[*(v13 + 28)], v11, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BA43C(v17, type metadata accessor for BUIChartViewData);
  v18 = *&v11[*(v8 + 28)];

  sub_BA43C(v11, type metadata accessor for BUIChartViewData.DataFor10Days);
  v19 = *(v18 + 16);
  if (v19)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_BA008(0, v19, 0);
    v20 = v38;
    v21 = v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    do
    {
      sub_BA3D4(v21, v6, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      v23 = *&v6[*(v2 + 24)];
      sub_BA43C(v6, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      v38 = v20;
      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        sub_BA008((v24 > 1), v25 + 1, 1);
        v20 = v38;
      }

      v20[2] = v25 + 1;
      v20[v25 + 4] = v23;
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
  }

  v26 = v20[2];
  if (v26)
  {
    v27 = *(v20 + 4);
    v28 = v26 - 1;
    if (v28)
    {
      v29 = (v20 + 5);
      do
      {
        v30 = *v29++;
        v31 = v30;
        if (v27 < v30)
        {
          v27 = v31;
        }

        --v28;
      }

      while (v28);
    }
  }

  else
  {
    v27 = 100.0;
  }

  v37 = v27;
  sub_46F9C(&qword_1852F0, &qword_12A088);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_129DB0;
  *(v32 + 32) = xmmword_129DC0;
  *(v32 + 48) = vdupq_n_s64(0x4059000000000000uLL);
  *(v32 + 64) = xmmword_129DC0;
  *(v32 + 80) = vdupq_n_s64(0x4062C00000000000uLL);
  *(v32 + 96) = xmmword_129DD0;
  *(v32 + 112) = xmmword_129DE0;
  *(v32 + 128) = xmmword_129DF0;
  *(v32 + 144) = xmmword_129E00;
  *(v32 + 160) = xmmword_129E10;
  *(v32 + 176) = xmmword_129E20;
  v33 = *(*v1 + 456);
  v34 = sub_66C80();
  v35 = v33(&v38, &v37, v32, &type metadata for Double, v34);

  return v35;
}

void *sub_B3014()
{
  v1 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BUIChartViewData(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v14);
  sub_BA3D4(&v16[*(v12 + 28)], v10, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BA43C(v16, type metadata accessor for BUIChartViewData);
  v17 = *&v10[*(v7 + 32)];

  sub_BA43C(v10, type metadata accessor for BUIChartViewData.DataFor10Days);
  v18 = *(v17 + 16);
  if (v18)
  {
    v53 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    sub_BA008(0, v18, 0);
    v19 = v53;
    v20 = v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v21 = *(v2 + 72);
    do
    {
      sub_BA3D4(v20, v5, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v22 = sub_D2D88();
      sub_BA43C(v5, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v53 = v19;
      v24 = *(*&v19 + 16);
      v23 = *(*&v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_BA008((v23 > 1), v24 + 1, 1);
        v19 = v53;
      }

      *(*&v19 + 16) = v24 + 1;
      *(*&v19 + 8 * v24 + 32) = v22;
      v20 += v21;
      --v18;
    }

    while (v18);

    v25 = *(*&v19 + 16);
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_14:

    v26 = *sub_A79F0();
    goto LABEL_15;
  }

  v19 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  v25 = _swiftEmptyArrayStorage[2];
  if (!v25)
  {
    goto LABEL_14;
  }

LABEL_7:
  v26 = *(*&v19 + 32);
  v27 = v25 - 1;
  if (v27)
  {
    v28 = 40;
    do
    {
      if (v26 < *(*&v19 + v28))
      {
        v26 = *(*&v19 + v28);
      }

      v28 += 8;
      --v27;
    }

    while (v27);
  }

LABEL_15:
  v29 = sub_A79F0();
  v52 = ceil(v26 / *v29);
  sub_46F9C(&qword_1852F0, &qword_12A088);
  v30 = swift_allocObject();
  __asm { FMOV            V1.2D, #1.0 }

  v30[1] = xmmword_129E30;
  v30[2] = _Q1;
  __asm { FMOV            V1.2D, #2.0 }

  v30[3] = xmmword_129E40;
  v30[4] = _Q1;
  __asm
  {
    FMOV            V0.2D, #6.0
    FMOV            V1.2D, #3.0
  }

  v30[5] = _Q0;
  v30[6] = _Q1;
  v30[7] = xmmword_129E50;
  v30[8] = _Q0;
  v30[9] = xmmword_129E60;
  v39 = *(*v0 + 456);
  v40 = sub_66C80();
  v41 = v39(&v53, &v52, v30, &type metadata for Double, v40);

  v42 = v53;
  v43 = *(v41 + 16);
  if (v43)
  {
    v53 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    sub_BA008(0, v43, 0);
    v44 = v53;
    v45 = *(*&v53 + 16);
    v46 = 32;
    do
    {
      v47 = *(v41 + v46);
      v48 = *v29;
      v53 = v44;
      v49 = *(*&v44 + 24);
      if (v45 >= v49 >> 1)
      {
        sub_BA008((v49 > 1), v45 + 1, 1);
        v44 = v53;
      }

      *(*&v44 + 16) = v45 + 1;
      *(*&v44 + 8 * v45 + 32) = v47 * v48;
      v46 += 8;
      ++v45;
      --v43;
    }

    while (v43);
  }

  else
  {

    v44 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  }

  v50 = v42 * *v29;
  return *&v44;
}

uint64_t sub_B3530(double a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1852F8, &qword_12A090);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v53 - v6;
  v8 = sub_46F9C(&qword_1842B8, &qword_129030);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v53 - v10;
  v77 = sub_115510();
  v12 = *(v77 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v77);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1158D0();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v71 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v28 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v29 = v17[2];
  v68 = v17 + 2;
  v69 = v28;
  v66 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar;
  v67 = v29;
  (v29)(v20, v28 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v16, v25);
  v64 = v17[7];
  v65 = v17 + 7;
  v64(v11, 1, 1, v16);
  v30 = sub_1158E0();
  v31 = *(v30 - 8);
  v62 = *(v31 + 56);
  v63 = v30;
  v61 = v31 + 56;
  v62(v7, 1, 1);
  v74 = v11;
  v76 = v7;
  sub_115500();
  sub_115880();
  v32 = *(v12 + 8);
  v73 = v15;
  v75 = v12 + 8;
  v60 = v32;
  v32(v15, v77);
  v33 = v17[1];
  v70 = v20;
  v34 = v16;
  v72 = v17 + 1;
  v59 = v33;
  v33(v20, v16);
  v35 = sub_115760();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  result = v37(v27, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = *(*v1 + 520);
    v58 = *v1 + 520;
    v40 = v39(v27);
    v42 = v41;
    v57 = *(v36 + 8);
    v57(v27, v35);
    v43 = (*v2 + 480);
    v56 = *v43;
    LOBYTE(v40) = v56(v40, v42, a1);

    v44 = 1;
    if ((v40 & 1) == 0)
    {
      return v44 & 1;
    }

    v53 = v43;
    v54 = v39;
    v55 = v2;
    v45 = v70;
    v46 = v34;
    v67(v70, v69 + v66, v34);
    v64(v74, 1, 1, v34);
    (v62)(v76, 1, 1, v63);
    v47 = v73;
    sub_115500();
    v48 = v37;
    v49 = v71;
    sub_115880();
    v60(v47, v77);
    v59(v45, v46);
    result = v48(v49, 1, v35);
    if (result != 1)
    {
      v50 = v54(v49);
      v52 = v51;
      v57(v49, v35);
      LOBYTE(v50) = v56(v50, v52, a1);

      v44 = v50 ^ 1;
      return v44 & 1;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_B3C90()
{
  v1 = sub_1158B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1158D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, *(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v6, v9);
  (*(v2 + 104))(v5, enum case for Calendar.Component.hour(_:), v1);
  v12 = sub_1158C0();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v11, v6);
  return v12 == 0;
}

BOOL sub_B3E68(uint64_t a1)
{
  v2 = v1;
  v17[1] = a1;
  v3 = sub_1158B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1158D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1158A0();
  v13 = sub_115840();
  v14 = *(v9 + 8);
  v14(v12, v8);
  (*(v9 + 16))(v12, *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v8);
  (*(v4 + 104))(v7, enum case for Calendar.Component.weekday(_:), v3);
  v15 = sub_1158C0();
  (*(v4 + 8))(v7, v3);
  v14(v12, v8);
  return v15 == v13;
}

uint64_t sub_B4070()
{
  v32 = sub_115800();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_115820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_46F9C(&qword_185300, &unk_12A098);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v15 = *(v14 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHour);
  isa = sub_1156B0().super.isa;
  v17 = [v15 stringFromDate:isa];

  v18 = sub_1171B0();
  v20 = v19;

  (*(v6 + 16))(v9, v14 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_locale, v5);
  sub_115810();
  (*(v6 + 8))(v9, v5);
  sub_1157F0();
  (*(v1 + 8))(v4, v32);
  v21 = sub_1157C0();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) != 1)
  {
    v23 = sub_1157B0();
    v25 = v24;
    (*(v22 + 8))(v13, v21);
    if (v23 == 28261 && v25 == 0xE200000000000000)
    {
    }

    else
    {
      v26 = sub_1179E0();

      if ((v26 & 1) == 0)
      {
        return v18;
      }
    }

    v37 = v18;
    v38 = v20;
    v35 = 19777;
    v36 = 0xE200000000000000;
    v33 = 65;
    v34 = 0xE100000000000000;
    sub_4869C();
    v27 = sub_117650();
    v29 = v28;

    v37 = v27;
    v38 = v29;
    v35 = 19792;
    v36 = 0xE200000000000000;
    v33 = 80;
    v34 = 0xE100000000000000;
    v18 = sub_117650();

    return v18;
  }

  sub_488C8(v13, &qword_185300, &unk_12A098);
  return v18;
}

uint64_t sub_B4498(uint64_t a1, uint64_t a2, int a3, double a4, uint64_t a5, int a6)
{
  v7 = v6;
  v51 = a3;
  v52 = a6;
  v50 = a2;
  v10 = sub_115760();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1158B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1158D0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v7 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  (*(v19 + 16))(v23, v24 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v18, v21);
  (*(v14 + 104))(v17, enum case for Calendar.Component.hour(_:), v13);
  v25 = sub_1158C0();
  (*(v14 + 8))(v17, v13);
  v26 = (*(v19 + 8))(v23, v18);
  if (v25 % 12 == 3)
  {
    if ((*(*v7 + 488))(v26, a4) & 1) == 0 || (v51)
    {
      goto LABEL_9;
    }

    v27 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    if (v25 % 12)
    {
LABEL_9:
      v30 = *(v24 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourShort);
      isa = sub_1156B0().super.isa;
      v32 = [v30 stringFromDate:isa];

      v27 = sub_1171B0();
      v29 = v33;

      goto LABEL_10;
    }

    v27 = (*(*v7 + 520))(a1);
    v29 = v28;
    if (v50 == 7 && ((*(*v7 + 488))(a4) & 1) != 0)
    {

      goto LABEL_9;
    }
  }

LABEL_10:
  if (v52)
  {
    v34 = (*v7 + 504);
    v35 = *v34;
    if (((*v34)(a1) & 1) != 0 || (v51 & 1) != 0 && (v42 = *sub_A79F0() * 3.0, v43 = v47, sub_115740(), v44 = v35(v43), (*(v48 + 8))(v43, v49), (v44 & 1) == 0))
    {
      v36 = *(v24 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate);
      v37 = sub_1156B0().super.isa;
      v38 = [v36 stringFromDate:v37];

      v39 = sub_1171B0();
      v41 = v40;

      v53 = v27;
      v54 = v29;

      v55._countAndFlagsBits = 10;
      v55._object = 0xE100000000000000;
      sub_117220(v55);

      v56._countAndFlagsBits = v39;
      v56._object = v41;
      sub_117220(v56);

      return v53;
    }
  }

  return v27;
}

uint64_t sub_B49BC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  v37 = a4;
  v38 = a3;
  v39 = a2;
  v7 = sub_115760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = *(v8 + 16);
  v40 = v17;
  v16(&v36 - v14, a1, v13);
  v18 = *(v5 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v19 = *(v18 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDay);
  isa = sub_1156B0().super.isa;
  v21 = [v19 stringFromDate:isa];

  v22 = sub_1171B0();
  v24 = v23;

  v25 = *(*v5 + 512);
  if (v25(v15))
  {
    v26 = v40;
    if (v39 == 9)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_10;
    }

LABEL_7:
    v31 = *(v18 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate);
    v32 = sub_1156B0().super.isa;
    v33 = [v31 stringFromDate:v32];

    v27 = sub_1171B0();
    v28 = v34;

    goto LABEL_10;
  }

  if (v38)
  {
    v29 = *sub_A79FC();
    sub_115740();
    v30 = v25(v11);
    v26 = v40;
    (*(v8 + 8))(v11, v40);
    v27 = 0;
    v28 = 0xE000000000000000;
    if ((v30 & 1) != 0 || v39 == 9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if ((v37 & 1) == 0)
  {
    v26 = v40;
    goto LABEL_11;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  v26 = v40;
LABEL_10:
  v41 = v22;
  v42 = v24;

  v43._countAndFlagsBits = 10;
  v43._object = 0xE100000000000000;
  sub_117220(v43);

  v44._countAndFlagsBits = v27;
  v44._object = v28;
  sub_117220(v44);

  v22 = v41;
LABEL_11:
  (*(v8 + 8))(v15, v26);
  return v22;
}

void sub_B4CF0()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v7 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour;
  v8 = *(v6 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour);
  isa = sub_1156B0().super.isa;
  v10 = [v8 stringFromDate:isa];

  v11 = sub_1171B0();
  v13 = v12;

  v14 = *(v6 + v7);
  sub_115740();
  v15 = sub_1156B0().super.isa;
  (*(v2 + 8))(v5, v1);
  v16 = [v14 stringFromDate:v15];

  v17 = sub_1171B0();
  v19 = v18;

  v20 = sub_117170();
  v21 = BatteryUILocalization(v20);

  if (v21)
  {
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1248A0;
    *(v22 + 56) = &type metadata for String;
    v23 = sub_53EE8();
    *(v22 + 32) = v11;
    *(v22 + 40) = v13;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v23;
    *(v22 + 64) = v23;
    *(v22 + 72) = v17;
    *(v22 + 80) = v19;
    sub_1171C0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_B4F68()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForDate);
  isa = sub_1156B0().super.isa;
  v3 = [v1 stringFromDate:isa];

  v4 = sub_1171B0();
  return v4;
}

void sub_B5004(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185308, &qword_12A0A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v28 - v5;
  v7 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v6, &qword_185308, &qword_12A0A8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_488C8(v6, &qword_185308, &qword_12A0A8);
    v12 = sub_117170();
    v13 = BatteryUILocalization(v12);

    if (v13)
    {
      sub_1171B0();

      return;
    }

    goto LABEL_13;
  }

  sub_BA4F0(v6, v11, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  v14 = *(*(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour);
  v15 = *(v7 + 20);
  v16 = v14;
  isa = sub_1156B0().super.isa;
  v18 = [v16 stringFromDate:isa];

  v19 = sub_1171B0();
  v21 = v20;

  v30 = v19;
  v31 = v21;
  v22 = sub_117170();
  v23 = BatteryUILocalization(v22);

  if (!v23)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v24 = sub_1171B0();
  v26 = v25;

  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  v32._countAndFlagsBits = v24;
  v32._object = v26;
  sub_117220(v32);

  sub_117220(v29);

  v29._countAndFlagsBits = 8250;
  v29._object = 0xE200000000000000;
  v27 = *&v11[*(v7 + 24)];
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28[1] = v27;
  v33._countAndFlagsBits = sub_1179B0();
  sub_117220(v33);

  v34._countAndFlagsBits = 37;
  v34._object = 0xE100000000000000;
  sub_117220(v34);
  sub_117220(v29);

  sub_BA43C(v11, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
}

void sub_B53B4(uint64_t a1)
{
  v195 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v196 = *(v195 - 8);
  v2 = *(v196 + 64);
  __chkstk_darwin(v195);
  v4 = v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v191 - v6;
  v201 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v8 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v200 = v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BUIChartViewData(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v199 = v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v13 = *(v214 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin(v214);
  v207 = v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v209 = v191 - v17;
  __chkstk_darwin(v18);
  v213 = v191 - v19;
  v20 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v198 = v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v211 = v191 - v24;
  v25 = sub_115760();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v194 = v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v208 = v191 - v30;
  __chkstk_darwin(v31);
  v33 = v191 - v32;
  __chkstk_darwin(v34);
  v36 = v191 - v35;
  v37 = *(a1 + 16);
  v38 = _swiftEmptyArrayStorage;
  v212 = v26;
  v206 = v191 - v35;
  v202 = v13;
  v197 = a1;
  v193 = v4;
  v203 = v37;
  v205 = v7;
  if (v37)
  {
    v216 = _swiftEmptyArrayStorage;
    sub_A0984(0, v37, 0);
    v38 = v216;
    v39 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    v41 = (v26 + 32);
    do
    {
      v42 = v213;
      sub_BA3D4(v39, v213, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v43 = *v41;
      (*v41)(v33, v42 + v214[5], v25);
      v216 = v38;
      v45 = v38[2];
      v44 = v38[3];
      if (v45 >= v44 >> 1)
      {
        sub_A0984(v44 > 1, v45 + 1, 1);
        v38 = v216;
      }

      v38[2] = v45 + 1;
      v26 = v212;
      v43(v38 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v212 + 72) * v45, v33, v25);
      v39 += v40;
      --v37;
    }

    while (v37);
    v7 = v205;
    v36 = v206;
  }

  v46 = v211;
  sub_B68CC(v38, v211);

  v48 = v26 + 48;
  v47 = *(v26 + 48);
  v49 = v47(v46, 1, v25);
  v50 = v208;
  if (v49 == 1)
  {
    v51 = v46;
LABEL_17:
    sub_488C8(v51, &qword_182EF0, &unk_124BB0);
    v63 = sub_117170();
    v64 = BatteryUILocalization(v63);

    if (v64)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_112;
  }

  v192 = v47;
  v210 = *(v26 + 32);
  v210(v36, v46, v25);
  v52 = _swiftEmptyArrayStorage;
  v211 = v25;
  v53 = v203;
  if (v203)
  {
    v191[1] = v48;
    v216 = _swiftEmptyArrayStorage;
    sub_A0984(0, v203, 0);
    v52 = v216;
    v54 = v197 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
    v55 = *(v202 + 72);
    v56 = v53;
    v57 = v194;
    do
    {
      v58 = v213;
      sub_BA3D4(v54, v213, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v59 = v214[5];
      v60 = *sub_A79E4();
      sub_115740();
      sub_BA43C(v58, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v216 = v52;
      v62 = v52[2];
      v61 = v52[3];
      if (v62 >= v61 >> 1)
      {
        sub_A0984(v61 > 1, v62 + 1, 1);
        v52 = v216;
      }

      v52[2] = v62 + 1;
      v25 = v211;
      v210(v52 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v62, v57, v211);
      v54 += v55;
      --v56;
    }

    while (v56);
    v7 = v205;
    v36 = v206;
    v50 = v208;
  }

  v51 = v198;
  sub_B1CD8(v52, v198);

  if (v192(v51, 1, v25) == 1)
  {
    (*(v212 + 8))(v36, v25);
    goto LABEL_17;
  }

  v65 = v7;
  v66 = (v210)(v50, v51, v25);
  v67 = *(*v204 + 136);
  v68 = *v204 + 136;
  v69 = v199;
  v67(v66);
  v70 = v200;
  sub_BA3D4(v69, v200, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_BA43C(v69, type metadata accessor for BUIChartViewData);
  v71 = *(v70 + *(v201 + 24));

  sub_BA43C(v70, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v72 = *(v71 + 2);
  if (v72)
  {
    v198 = v68;
    v210 = v67;
    v73 = *(v195 + 20);
    v74 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v194 = v71;
    v75 = &v71[v74];
    v76 = *(v196 + 72);
    v77 = 0.0;
    do
    {
      sub_BA3D4(v75, v65, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      v79 = v78;
      sub_115710();
      v81 = v80;
      sub_BA43C(v65, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      if (v79 <= v82)
      {
        v79 = v82;
      }

      sub_115710();
      if (v83 < v79)
      {
        v79 = v83;
      }

      sub_115710();
      if (v81 <= v84)
      {
        v81 = v84;
      }

      sub_115710();
      if (v85 >= v81)
      {
        v85 = v81;
      }

      v77 = v77 + v85 - v79;
      v75 += v76;
      --v72;
    }

    while (v72);

    v67 = v210;
  }

  else
  {

    v77 = 0.0;
  }

  v87 = v199;
  v67(v86);
  v88 = v200;
  sub_BA3D4(v87, v200, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_BA43C(v87, type metadata accessor for BUIChartViewData);
  v89 = *(v88 + *(v201 + 28));

  sub_BA43C(v88, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v90 = *(v89 + 16);
  if (v90)
  {
    v91 = *(v195 + 20);
    v92 = v89 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
    v93 = *(v196 + 72);
    v94 = 0.0;
    v95 = v193;
    do
    {
      sub_BA3D4(v92, v95, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      v97 = v96;
      sub_115710();
      v99 = v98;
      sub_BA43C(v95, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      if (v97 <= v100)
      {
        v97 = v100;
      }

      sub_115710();
      if (v101 < v97)
      {
        v97 = v101;
      }

      sub_115710();
      if (v99 <= v102)
      {
        v99 = v102;
      }

      sub_115710();
      if (v103 >= v99)
      {
        v103 = v99;
      }

      v94 = v94 + v103 - v97;
      v92 += v93;
      --v90;
    }

    while (v90);

    v53 = v203;
  }

  else
  {

    v94 = 0.0;
  }

  v104 = v207;
  v105 = v209;
  if (v53)
  {
    v106 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    v107 = v197 + v106;
    v108 = *(v202 + 72);
    v109 = _swiftEmptyArrayStorage;
    do
    {
      sub_BA3D4(v107, v105, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if (*(v105 + v214[8]) == 1)
      {
        sub_BA4F0(v105, v104, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v216 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA028(0, v109[2] + 1, 1);
          v104 = v207;
          v109 = v216;
        }

        v112 = v109[2];
        v111 = v109[3];
        if (v112 >= v111 >> 1)
        {
          sub_BA028(v111 > 1, v112 + 1, 1);
          v104 = v207;
          v109 = v216;
        }

        v109[2] = v112 + 1;
        sub_BA4F0(v104, v109 + v106 + v112 * v108, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        v105 = v209;
      }

      else
      {
        sub_BA43C(v105, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      v107 += v108;
      --v53;
    }

    while (v53);
  }

  else
  {
    v109 = _swiftEmptyArrayStorage;
  }

  v113 = v109[2];
  if (v113)
  {
    v114 = v36;
    v216 = _swiftEmptyArrayStorage;
    sub_BA008(0, v113, 0);
    v115 = v216;
    v116 = v109 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
    v117 = *(v202 + 72);
    do
    {
      v118 = v213;
      sub_BA3D4(v116, v213, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v119 = *(v118 + v214[6]);
      sub_BA43C(v118, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v216 = v115;
      v121 = v115[2];
      v120 = v115[3];
      if (v121 >= v120 >> 1)
      {
        sub_BA008((v120 > 1), v121 + 1, 1);
        v115 = v216;
      }

      v115[2] = v121 + 1;
      v115[v121 + 4] = v119;
      v116 += v117;
      --v113;
    }

    while (v113);

    v36 = v114;
  }

  else
  {

    v115 = _swiftEmptyArrayStorage;
  }

  v123 = v115[2];
  v124 = v211;
  v125 = v208;
  if (!v123)
  {
    v129 = sub_117170();
    v130 = BatteryUILocalization(v129);

    if (v130)
    {

      sub_1171B0();

      v131 = *(v212 + 8);
      v131(v125, v124);
      v131(v36, v124);
      return;
    }

    goto LABEL_113;
  }

  v126 = *(v115 + 4);
  v127 = v123 - 1;
  if (v127)
  {
    v132 = (v115 + 5);
    v133 = v127;
    v128 = *(v115 + 4);
    do
    {
      v134 = *v132++;
      v135 = v134;
      if (v134 < v128)
      {
        v128 = v135;
      }

      --v133;
    }

    while (v133);
    v136 = (v115 + 5);
    do
    {
      v137 = *v136++;
      v138 = v137;
      if (v126 < v137)
      {
        v126 = v138;
      }

      --v127;
    }

    while (v127);
  }

  else
  {
    v128 = *(v115 + 4);
  }

  v139 = *(**(v204 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + 584);
  v214 = *(v204 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v140 = (v139)(v122);
  v141 = [objc_allocWithZone(NSNumber) initWithDouble:v128];
  v142 = [v140 stringFromNumber:v141];

  if (v142)
  {
    v143 = sub_1171B0();
    v145 = v144;
  }

  else
  {
    v143 = 0;
    v145 = 0xE000000000000000;
  }

  v146 = v139();
  v147 = [objc_allocWithZone(NSNumber) initWithDouble:v126];
  v148 = [v146 stringFromNumber:v147];

  if (v148)
  {
    v149 = sub_1171B0();
    v151 = v150;
  }

  else
  {
    v149 = 0;
    v151 = 0xE000000000000000;
  }

  v152 = v206;
  if (v143 == v149 && v145 == v151 || (sub_1179E0() & 1) != 0)
  {
    v153 = sub_117170();
    v154 = BatteryUILocalization(v153);

    if (!v154)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_124890;
    *(v155 + 56) = &type metadata for String;
    *(v155 + 64) = sub_53EE8();
    *(v155 + 32) = v143;
    *(v155 + 40) = v145;

    v156 = sub_1171C0();
    v158 = v157;
LABEL_89:

    v216 = v156;
    v217 = v158;
    v164 = v211;
    if (v77 <= 0.0)
    {
      goto LABEL_98;
    }

    if (v77 < *sub_A79D8())
    {
      v165 = sub_117170();
      v166 = BatteryUILocalization(v165);

      if (v166)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    v167 = [*(v214 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval) stringFromTimeInterval:v77];
    if (!v167)
    {
      v168 = 0;
      v170 = 0xE000000000000000;
      goto LABEL_96;
    }

    v166 = v167;
LABEL_95:
    v168 = sub_1171B0();
    v170 = v169;

LABEL_96:
    v171 = sub_117170();
    v172 = BatteryUILocalization(v171);

    if (!v172)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_124890;
    *(v173 + 56) = &type metadata for String;
    *(v173 + 64) = sub_53EE8();
    *(v173 + 32) = v168;
    *(v173 + 40) = v170;
    v174 = sub_1171C0();
    v176 = v175;

    v215._countAndFlagsBits = 8236;
    v215._object = 0xE200000000000000;
    v218._countAndFlagsBits = v174;
    v218._object = v176;
    sub_117220(v218);

    sub_117220(v215);

    v164 = v211;
LABEL_98:
    if (v94 <= 0.0)
    {
LABEL_102:

      goto LABEL_108;
    }

    if (v94 >= *sub_A79D8())
    {
      v179 = [*(v214 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval) stringFromTimeInterval:v94];
      if (!v179)
      {
        v180 = 0;
        v182 = 0xE000000000000000;
        goto LABEL_106;
      }

      v178 = v179;
    }

    else
    {
      v177 = sub_117170();
      v178 = BatteryUILocalization(v177);

      if (!v178)
      {
        __break(1u);
        goto LABEL_102;
      }
    }

    v180 = sub_1171B0();
    v182 = v181;

LABEL_106:
    v183 = sub_117170();
    v184 = BatteryUILocalization(v183);

    if (!v184)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v185 = swift_allocObject();
    *(v185 + 16) = xmmword_124890;
    *(v185 + 56) = &type metadata for String;
    *(v185 + 64) = sub_53EE8();
    *(v185 + 32) = v180;
    *(v185 + 40) = v182;
    v186 = sub_1171C0();
    v188 = v187;

    v215._countAndFlagsBits = 8236;
    v215._object = 0xE200000000000000;
    v219._countAndFlagsBits = v186;
    v219._object = v188;
    sub_117220(v219);

    sub_117220(v215);

    v164 = v211;
LABEL_108:
    v189 = sub_A79F0();
    v220._countAndFlagsBits = (*(*v204 + 544))(v152, *v189);
    v215._countAndFlagsBits = 8236;
    v215._object = 0xE200000000000000;
    sub_117220(v220);

    sub_117220(v215);

    v190 = *(v212 + 8);
    v190(v208, v164);
    v190(v152, v164);
    return;
  }

  v159 = sub_117170();
  v160 = BatteryUILocalization(v159);

  if (v160)
  {
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_1248A0;
    *(v161 + 56) = &type metadata for String;
    v162 = sub_53EE8();
    *(v161 + 32) = v143;
    *(v161 + 40) = v145;
    *(v161 + 96) = &type metadata for String;
    *(v161 + 104) = v162;
    *(v161 + 64) = v162;
    *(v161 + 72) = v149;
    *(v161 + 80) = v151;

    v156 = sub_1171C0();
    v158 = v163;
    goto LABEL_89;
  }

LABEL_116:
  __break(1u);
}

uint64_t sub_B68CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_115760();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(*(v4 - 8));
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v12 = &v24 - v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v9 + 16);
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = v9;
    v25 = a2;
    v26 = v14;
    (v14)(&v24 - v10, v15, v4, v11);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v7, v15 + *(result + 72) * v20, v4);
        sub_ACADC();
        v22 = sub_117120();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v7, v4);
        }

        else
        {
          v23(v7, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v9 + 56);

    return v18(a2, 1, 1, v4, v11);
  }

  return result;
}

void sub_B6B4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_117170();
  v5 = BatteryUILocalization(v4);

  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1171B0();

  v6 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v36 = *(a1 + *(v6 + 24));
  sub_BA49C();
  sub_1172D0();
  sub_1172D0();
  if (v34 == v32 && v35 == v33)
  {

    goto LABEL_6;
  }

  v7 = sub_1179E0();

  if (v7)
  {
LABEL_6:
    v8 = sub_117170();
    v9 = BatteryUILocalization(v8);

    if (v9)
    {

      sub_1171B0();

      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  v10 = *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v11 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingTime;
  v12 = *(v10 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingTime);
  isa = sub_1156B0().super.isa;
  v14 = [v12 stringFromDate:isa];

  v15 = sub_1171B0();
  v17 = v16;

  v18 = *(v6 + 20);
  v19 = *(v10 + v11);
  v20 = sub_1156B0().super.isa;
  v21 = [v19 stringFromDate:v20];

  v22 = sub_1171B0();
  v24 = v23;

  v25 = *(v10 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval);
  v26 = [v25 stringFromTimeInterval:sub_D3624()];

  if (v26)
  {
    v27 = sub_1171B0();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  sub_46F9C(&qword_182EF8, &unk_125990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1246D0;
  *(v30 + 56) = &type metadata for String;
  v31 = sub_53EE8();
  *(v30 + 32) = v15;
  *(v30 + 40) = v17;
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v31;
  *(v30 + 64) = v31;
  *(v30 + 72) = v22;
  *(v30 + 80) = v24;
  *(v30 + 136) = &type metadata for String;
  *(v30 + 144) = v31;
  *(v30 + 112) = v27;
  *(v30 + 120) = v29;
  sub_1171C0();
}

void sub_B6E9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_185318, &unk_12A0B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v7, &qword_185318, &unk_12A0B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_488C8(v7, &qword_185318, &unk_12A0B0);
LABEL_8:
    v19 = sub_117170();
    v20 = BatteryUILocalization(v19);

    if (v20)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_BA4F0(v7, v12, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  if (v12[v8[8]] != 1)
  {
    sub_BA43C(v12, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    goto LABEL_8;
  }

  if (sub_D2D88() > 0.0)
  {
    v13 = *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
    v14 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval;
    v15 = *(v13 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval);
    v16 = [v15 stringFromTimeInterval:sub_D2D88()];

    if (v16)
    {
      v17 = sub_1171B0();
      v52 = v18;
      v53 = v17;
    }

    else
    {
      v52 = 0xE000000000000000;
      v53 = 0;
    }

    v26 = [*(v13 + v14) stringFromTimeInterval:*&v12[v8[6]]];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1171B0();
      v50 = v29;
      v51 = v28;
    }

    else
    {
      v50 = 0xE000000000000000;
      v51 = 0;
    }

    v30 = [*(v13 + v14) stringFromTimeInterval:{*&v12[v8[7]], v50, v51}];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1171B0();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v35 = sub_117170();
    v36 = BatteryUILocalization(v35);

    if (!v36)
    {
      goto LABEL_24;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1246D0;
    *(v37 + 56) = &type metadata for String;
    v38 = sub_53EE8();
    v39 = v52;
    *(v37 + 32) = v53;
    *(v37 + 40) = v39;
    *(v37 + 96) = &type metadata for String;
    *(v37 + 104) = v38;
    v40 = v50;
    v41 = v51;
    *(v37 + 64) = v38;
    *(v37 + 72) = v41;
    *(v37 + 80) = v40;
    *(v37 + 136) = &type metadata for String;
    *(v37 + 144) = v38;
    *(v37 + 112) = v32;
    *(v37 + 120) = v34;
    v23 = sub_1171C0();
    v25 = v42;

LABEL_21:
    v55 = v23;
    v56 = v25;
    v43 = v8[5];
    v44.n128_u64[0] = *sub_A79F0();
    v57._countAndFlagsBits = (*(*v2 + 544))(&v12[v43], v44);
    v54._countAndFlagsBits = 8236;
    v54._object = 0xE200000000000000;
    sub_117220(v57);

    v58._countAndFlagsBits = 8236;
    v58._object = 0xE200000000000000;
    sub_117220(v58);

    countAndFlagsBits = v54._countAndFlagsBits;
    object = v54._object;
    v47 = (*(*v2 + 552))(&v12[v43]);
    v49 = v48;
    v54._countAndFlagsBits = countAndFlagsBits;
    v54._object = object;

    v59._countAndFlagsBits = v47;
    v59._object = v49;
    sub_117220(v59);

    sub_117220(v54);

    sub_BA43C(v12, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    return;
  }

  v21 = sub_117170();
  v22 = BatteryUILocalization(v21);

  if (v22)
  {
    v23 = sub_1171B0();
    v25 = v24;

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_B7410(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185320, &unk_12A560);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v6, &qword_185320, &unk_12A560);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_488C8(v6, &qword_185320, &unk_12A560);
LABEL_8:
    v21 = sub_117170();
    v22 = BatteryUILocalization(v21);

    if (v22)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  v12 = sub_BA4F0(v6, v11, type metadata accessor for BUIChartViewData.BatteryUsageElement);
  if (v11[v7[7]] != 1)
  {
    sub_BA43C(v11, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    goto LABEL_8;
  }

  v13 = *&v11[v7[6]];
  if (v13 > 0.0)
  {
    v14 = v1;
    v15 = (*(**(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + 584))(v12);
    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
    v17 = [v15 stringFromNumber:v16];

    if (v17)
    {
      v18 = sub_1171B0();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v28 = sub_117170();
    v29 = BatteryUILocalization(v28);

    if (!v29)
    {
      goto LABEL_18;
    }

    v1 = v14;
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_124890;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_53EE8();
    *(v30 + 32) = v18;
    *(v30 + 40) = v20;
    v25 = sub_1171C0();
    v27 = v31;

LABEL_15:
    v33 = v25;
    v34 = v27;
    v35._countAndFlagsBits = (*(*v1 + 552))(&v11[v7[5]]);
    v32._countAndFlagsBits = 8236;
    v32._object = 0xE200000000000000;
    sub_117220(v35);

    sub_117220(v32);

    sub_BA43C(v11, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    return;
  }

  v23 = sub_117170();
  v24 = BatteryUILocalization(v23);

  if (v24)
  {
    v25 = sub_1171B0();
    v27 = v26;

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_B7884(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185318, &unk_12A0B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v6, &qword_185318, &unk_12A0B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_488C8(v6, &qword_185318, &unk_12A0B0);
LABEL_8:
    v19 = sub_117170();
    v20 = BatteryUILocalization(v19);

    if (v20)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_BA4F0(v6, v11, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  if (v11[v7[8]] != 1)
  {
    sub_BA43C(v11, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    goto LABEL_8;
  }

  v12 = v1;
  if (sub_D2D88() > 0.0)
  {
    v13 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
    v14 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval;
    v15 = *(v13 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval);
    v16 = [v15 stringFromTimeInterval:sub_D2D88()];

    if (v16)
    {
      v17 = sub_1171B0();
      v46 = v18;
      v47 = v17;
    }

    else
    {
      v46 = 0xE000000000000000;
      v47 = 0;
    }

    v27 = [*(v13 + v14) stringFromTimeInterval:*&v11[v7[6]]];
    v23 = v12;
    if (v27)
    {
      v28 = v27;
      v29 = sub_1171B0();
      v44 = v30;
      v45 = v29;
    }

    else
    {
      v44 = 0xE000000000000000;
      v45 = 0;
    }

    v31 = [*(v13 + v14) stringFromTimeInterval:{*&v11[v7[7]], v44, v45}];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1171B0();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0xE000000000000000;
    }

    v36 = sub_117170();
    v37 = BatteryUILocalization(v36);

    if (!v37)
    {
      goto LABEL_24;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1246D0;
    *(v38 + 56) = &type metadata for String;
    v39 = sub_53EE8();
    v40 = v46;
    *(v38 + 32) = v47;
    *(v38 + 40) = v40;
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v39;
    v41 = v44;
    v42 = v45;
    *(v38 + 64) = v39;
    *(v38 + 72) = v42;
    *(v38 + 80) = v41;
    *(v38 + 136) = &type metadata for String;
    *(v38 + 144) = v39;
    *(v38 + 112) = v33;
    *(v38 + 120) = v35;
    v24 = sub_1171C0();
    v26 = v43;

LABEL_21:
    v49 = v24;
    v50 = v26;
    v51._countAndFlagsBits = (*(*v23 + 552))(&v11[v7[5]]);
    v48._countAndFlagsBits = 8236;
    v48._object = 0xE200000000000000;
    sub_117220(v51);

    sub_117220(v48);

    sub_BA43C(v11, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    return;
  }

  v21 = sub_117170();
  v22 = BatteryUILocalization(v21);

  if (v22)
  {
    v23 = v12;
    v24 = sub_1171B0();
    v26 = v25;

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_B7D4C()
{
  v73 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v1 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v71 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v70 = &v69 - v4;
  v5 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v69 - v13);
  v15 = type metadata accessor for BUIChartViewData(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v69 - v24;
  v26 = (*(*v0 + 192))(v23);
  result = (*(*v0 + 240))();
  v29 = *(*v0 + 136);
  if (v26)
  {
    if (v28)
    {
      (v29)(result);
      v30 = v71;
      sub_BA3D4(&v18[*(v15 + 20)], v71, type metadata accessor for BUIChartViewData.DataFor10Days);
      sub_BA43C(v18, type metadata accessor for BUIChartViewData);
      v31 = *(v30 + *(v73 + 24));

      sub_BA43C(v30, type metadata accessor for BUIChartViewData.DataFor10Days);
      v32 = *(v31 + 16);
      if (v32)
      {
        v76 = _swiftEmptyArrayStorage;
        sub_BA008(0, v32, 0);
        v33 = v76;
        v34 = v31 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v35 = *(v74 + 72);
        do
        {
          sub_BA3D4(v34, v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
          swift_getAtKeyPath();
          sub_BA43C(v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
          v36 = v75;
          v76 = v33;
          v38 = v33[2];
          v37 = v33[3];
          if (v38 >= v37 >> 1)
          {
            sub_BA008((v37 > 1), v38 + 1, 1);
            v33 = v76;
          }

          v33[2] = v38 + 1;
          v33[v38 + 4] = v36;
          v34 += v35;
          --v32;
        }

        while (v32);

        v51 = v33[2];
        if (!v51)
        {
        }
      }

      else
      {

        v33 = _swiftEmptyArrayStorage;
        v51 = _swiftEmptyArrayStorage[2];
        if (!v51)
        {
        }
      }

      if (v51 > 3)
      {
        v52 = v51 & 0x7FFFFFFFFFFFFFFCLL;
        v57 = (v33 + 6);
        v53 = 0.0;
        v58 = v51 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v59 = *v57;
          v53 = v53 + *(v57 - 2) + *(v57 - 1) + *v57 + v57[1];
          v57 += 4;
          v58 -= 4;
        }

        while (v58);
        if (v51 == v52)
        {
        }
      }

      else
      {
        v52 = 0;
        v53 = 0.0;
      }

      v60 = v51 - v52;
      v61 = &v33[v52 + 4];
      do
      {
        v62 = *v61++;
        v53 = v53 + v62;
        --v60;
      }

      while (v60);
    }

    v47 = result;
    v29();
    v14 = type metadata accessor for BUIChartViewData.DataFor10Days;
    v48 = &v25[*(v15 + 20)];
    v49 = v70;
    sub_BA3D4(v48, v70, type metadata accessor for BUIChartViewData.DataFor10Days);
    sub_BA43C(v25, type metadata accessor for BUIChartViewData);
    v50 = *(v49 + *(v73 + 24));

    result = sub_BA43C(v49, type metadata accessor for BUIChartViewData.DataFor10Days);
    if ((v47 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v47 < *(v50 + 16))
    {
LABEL_21:
      sub_BA3D4(v50 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v47, v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);

      swift_getAtKeyPath();
      return sub_BA43C(v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    __break(1u);
  }

  else if (v28)
  {
    (v29)(result);
    sub_BA3D4(v21, v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_BA43C(v21, type metadata accessor for BUIChartViewData);
    v39 = *&v11[*(v72 + 36)];

    sub_BA43C(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v40 = *(v39 + 16);
    if (v40)
    {
      v76 = _swiftEmptyArrayStorage;
      sub_BA008(0, v40, 0);
      v41 = v76;
      v42 = v39 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v43 = *(v74 + 72);
      do
      {
        sub_BA3D4(v42, v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        swift_getAtKeyPath();
        sub_BA43C(v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v44 = v75;
        v76 = v41;
        v46 = v41[2];
        v45 = v41[3];
        if (v46 >= v45 >> 1)
        {
          sub_BA008((v45 > 1), v46 + 1, 1);
          v41 = v76;
        }

        v41[2] = v46 + 1;
        v41[v46 + 4] = v44;
        v42 += v43;
        --v40;
      }

      while (v40);

      v54 = v41[2];
      if (!v54)
      {
      }
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
      v54 = _swiftEmptyArrayStorage[2];
      if (!v54)
      {
      }
    }

    if (v54 > 3)
    {
      v55 = v54 & 0x7FFFFFFFFFFFFFFCLL;
      v63 = (v41 + 6);
      v56 = 0.0;
      v64 = v54 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v65 = *v63;
        v56 = v56 + *(v63 - 2) + *(v63 - 1) + *v63 + v63[1];
        v63 += 4;
        v64 -= 4;
      }

      while (v64);
      if (v54 == v55)
      {
      }
    }

    else
    {
      v55 = 0;
      v56 = 0.0;
    }

    v66 = v54 - v55;
    v67 = &v41[v55 + 4];
    do
    {
      v68 = *v67++;
      v56 = v56 + v68;
      --v66;
    }

    while (v66);
  }

  v47 = result;
  v29();
  sub_BA3D4(v25, v14, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_BA43C(v25, type metadata accessor for BUIChartViewData);
  v50 = *(v14 + *(v72 + 36));

  result = sub_BA43C(v14, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  if ((v47 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v47 < *(v50 + 16))
  {
    goto LABEL_21;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_B8574()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__data;
  v2 = sub_46F9C(&qword_1852A0, &qword_129EB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);

  v4 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__activeChart;
  v5 = sub_46F9C(&qword_1852C8, &unk_129EE0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__selectedIndex;
  v7 = sub_46F9C(&qword_1852C0, &qword_129ED8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__topMargin;
  v9 = sub_46F9C(&qword_1852B8, &qword_129ED0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__bottomMargin, v9);
  v11 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__containerBackgroundColor;
  v12 = sub_46F9C(&qword_1852B0, &qword_129EC8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_B878C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BUIChartViewModel();
  result = sub_115F20();
  *a1 = result;
  return result;
}

void sub_B8800()
{
  v37 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v35 = *(v37 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v37);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  sub_115690();
  v11 = v10;
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = *(v0 + *(type metadata accessor for BUIChartViewData.DataFor24Hrs(0) + 20));
  v15 = _swiftEmptyArrayStorage;
  v38 = *(v14 + 16);
  v34 = v13;
  if (v38)
  {
    v16 = 0;
    v17 = v37;
    v18 = v35;
    v36 = v6;
    while (v16 < *(v14 + 16))
    {
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = *(v18 + 72);
      sub_BA3D4(v14 + v19 + v20 * v16, v9, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if (v9[v17[8]] == 1)
      {
        sub_BA4F0(v9, v6, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA028(0, v15[2] + 1, 1);
          v18 = v35;
          v15 = v39;
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          sub_BA028(v22 > 1, v23 + 1, 1);
          v18 = v35;
          v15 = v39;
        }

        v15[2] = v23 + 1;
        v6 = v36;
        sub_BA4F0(v36, v15 + v19 + v23 * v20, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        v17 = v37;
      }

      else
      {
        sub_BA43C(v9, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      if (v38 == ++v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v17 = v37;
  v18 = v35;
LABEL_14:
  v24 = v15[2];
  if (v24)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v25 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v26 = *(v18 + 72);
    do
    {
      sub_BA3D4(v25, v3, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v27 = &v3[v17[5]];
      sub_115690();
      v40.value = *&v3[v17[6]];
      v40.is_nil = 0;
      v29._rawValue = _swiftEmptyArrayStorage;
      v41.value._countAndFlagsBits = 0;
      v41.value._object = 0;
      sub_1174B0(v28 - v11, v40, v29, v41);
      sub_BA43C(v3, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      sub_117750();
      v30 = v39[2];
      sub_117790();
      sub_1177A0();
      sub_117760();
      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v31 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v33 = v34;
  [v31 initWithName:v34 isContinuous:1 dataPoints:isa];
}

void sub_B8C44()
{
  v37 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v1 = *(v37 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  sub_115690();
  v12 = v11;
  v13 = sub_117170();
  v14 = BatteryUILocalization(v13);

  if (!v14)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v15 = *(v0 + *(type metadata accessor for BUIChartViewData.DataFor24Hrs(0) + 36));
  v16 = _swiftEmptyArrayStorage;
  v40 = *(v15 + 16);
  v36 = v14;
  if (v40)
  {
    v17 = 0;
    v18 = v37;
    v38 = v7;
    v39 = v1;
    while (v17 < *(v15 + 16))
    {
      v19 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v20 = *(v1 + 72);
      sub_BA3D4(v15 + v19 + v20 * v17, v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      if (v10[*(v18 + 32)] == 1)
      {
        sub_BA4F0(v10, v7, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA06C(0, v16[2] + 1, 1);
          v18 = v37;
          v16 = v41;
        }

        v23 = v16[2];
        v22 = v16[3];
        if (v23 >= v22 >> 1)
        {
          sub_BA06C(v22 > 1, v23 + 1, 1);
          v18 = v37;
          v16 = v41;
        }

        v16[2] = v23 + 1;
        v7 = v38;
        sub_BA4F0(v38, v16 + v19 + v23 * v20, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v1 = v39;
      }

      else
      {
        sub_BA43C(v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      }

      if (v40 == ++v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v18 = v37;
LABEL_14:
  v24 = v16[2];
  if (v24)
  {
    v41 = _swiftEmptyArrayStorage;
    v25 = v18;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v26 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v27 = *(v1 + 72);
    do
    {
      sub_BA3D4(v26, v4, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v28 = &v4[*(v25 + 20)];
      sub_115690();
      v30 = v29 - v12;
      v42.value = sub_D2D88();
      v42.is_nil = 0;
      v31._rawValue = _swiftEmptyArrayStorage;
      v43.value._countAndFlagsBits = 0;
      v43.value._object = 0;
      sub_1174B0(v30, v42, v31, v43);
      sub_BA43C(v4, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_117750();
      v32 = v41[2];
      sub_117790();
      sub_1177A0();
      sub_117760();
      v26 += v27;
      --v24;
    }

    while (v24);
  }

  v33 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v35 = v36;
  [v33 initWithName:v36 isContinuous:0 dataPoints:isa];
}

void sub_B90BC(uint64_t (*a1)(void))
{
  sub_115690();
  v3 = v2;
  v4 = sub_117170();
  v5 = BatteryUILocalization(v4);

  if (v5)
  {
    sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
    sub_1171B0();

    if (*a1() >= 0.0)
    {
      *(swift_allocObject() + 16) = v3;
      sub_117580();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_B91C8(void *a1)
{
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115680();
  v7 = sub_5A754();
  swift_beginAccess();
  v8 = *(*v7 + *a1);
  isa = sub_1156B0().super.isa;
  v10 = [v8 stringFromDate:isa];

  v11 = sub_1171B0();
  (*(v3 + 8))(v6, v2);
  return v11;
}

void sub_B9324()
{
  v37 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v35 = *(v37 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v37);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  sub_115690();
  v11 = v10;
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = *(v0 + *(type metadata accessor for BUIChartViewData.DataFor10Days(0) + 20));
  v15 = _swiftEmptyArrayStorage;
  v38 = *(v14 + 16);
  v34 = v13;
  if (v38)
  {
    v16 = 0;
    v17 = v37;
    v18 = v35;
    v36 = v6;
    while (v16 < *(v14 + 16))
    {
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = *(v18 + 72);
      sub_BA3D4(v14 + v19 + v20 * v16, v9, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      if (v9[v17[7]] == 1)
      {
        sub_BA4F0(v9, v6, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA0B0(0, v15[2] + 1, 1);
          v18 = v35;
          v15 = v39;
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          sub_BA0B0(v22 > 1, v23 + 1, 1);
          v18 = v35;
          v15 = v39;
        }

        v15[2] = v23 + 1;
        v6 = v36;
        sub_BA4F0(v36, v15 + v19 + v23 * v20, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        v17 = v37;
      }

      else
      {
        sub_BA43C(v9, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      }

      if (v38 == ++v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v17 = v37;
  v18 = v35;
LABEL_14:
  v24 = v15[2];
  if (v24)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v25 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v26 = *(v18 + 72);
    do
    {
      sub_BA3D4(v25, v3, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      v27 = &v3[v17[5]];
      sub_115690();
      v40.value = *&v3[v17[6]];
      v40.is_nil = 0;
      v29._rawValue = _swiftEmptyArrayStorage;
      v41.value._countAndFlagsBits = 0;
      v41.value._object = 0;
      sub_1174B0(v28 - v11, v40, v29, v41);
      sub_BA43C(v3, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      sub_117750();
      v30 = v39[2];
      sub_117790();
      sub_1177A0();
      sub_117760();
      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v31 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v33 = v34;
  [v31 initWithName:v34 isContinuous:0 dataPoints:isa];
}

void sub_B9768()
{
  v37 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v1 = *(v37 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  sub_115690();
  v12 = v11;
  v13 = sub_117170();
  v14 = BatteryUILocalization(v13);

  if (!v14)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v15 = *(v0 + *(type metadata accessor for BUIChartViewData.DataFor10Days(0) + 24));
  v16 = _swiftEmptyArrayStorage;
  v40 = *(v15 + 16);
  v36 = v14;
  if (v40)
  {
    v17 = 0;
    v18 = v37;
    v38 = v7;
    v39 = v1;
    while (v17 < *(v15 + 16))
    {
      v19 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v20 = *(v1 + 72);
      sub_BA3D4(v15 + v19 + v20 * v17, v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      if (v10[*(v18 + 32)] == 1)
      {
        sub_BA4F0(v10, v7, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA06C(0, v16[2] + 1, 1);
          v18 = v37;
          v16 = v41;
        }

        v23 = v16[2];
        v22 = v16[3];
        if (v23 >= v22 >> 1)
        {
          sub_BA06C(v22 > 1, v23 + 1, 1);
          v18 = v37;
          v16 = v41;
        }

        v16[2] = v23 + 1;
        v7 = v38;
        sub_BA4F0(v38, v16 + v19 + v23 * v20, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v1 = v39;
      }

      else
      {
        sub_BA43C(v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      }

      if (v40 == ++v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v18 = v37;
LABEL_14:
  v24 = v16[2];
  if (v24)
  {
    v41 = _swiftEmptyArrayStorage;
    v25 = v18;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v26 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v27 = *(v1 + 72);
    do
    {
      sub_BA3D4(v26, v4, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v28 = &v4[*(v25 + 20)];
      sub_115690();
      v30 = v29 - v12;
      v42.value = sub_D2D88();
      v42.is_nil = 0;
      v31._rawValue = _swiftEmptyArrayStorage;
      v43.value._countAndFlagsBits = 0;
      v43.value._object = 0;
      sub_1174B0(v30, v42, v31, v43);
      sub_BA43C(v4, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_117750();
      v32 = v41[2];
      sub_117790();
      sub_1177A0();
      sub_117760();
      v26 += v27;
      --v24;
    }

    while (v24);
  }

  v33 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v35 = v36;
  [v33 initWithName:v36 isContinuous:0 dataPoints:isa];
}

void sub_B9BAC(void *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  sub_117500();
  sub_117510();
  v4 = [v3 yAxis];
  [a1 setYAxis:v4];

  v5 = [v3 series];
  if (!v5)
  {
    sub_54960(0, &qword_185338, AXDataSeriesDescriptor_ptr);
    sub_117310();
    isa = sub_117300().super.isa;

    v5 = isa;
  }

  v7 = v5;
  [a1 setSeries:?];
}

uint64_t sub_B9CBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_B9CEC()
{
  v0 = sub_5A754();
  swift_beginAccess();
  v1 = *v0;
  v2 = *(*v1 + 560);

  v2(v3);
  v4 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
  v5 = sub_5822C();
  if (sub_F59F0(&type metadata for PerfPowerServices, v5))
  {
    v6 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titlePaddingBottom);
    v9 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
    v10 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartGap);
  }
}

double sub_B9E48@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{

  v6 = sub_116080();
  v7 = (*(*a1 + 440))(v6);
  *&v11[2] = v7;
  sub_A77E8(sub_BAA88, v11);
  sub_ACD88(a2, v12, v7);
  sub_116080();
  sub_116080();
  sub_116E80();
  sub_116070();
  v8 = v12[3];
  *(a3 + 32) = v12[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v12[4];
  *(a3 + 80) = v13;
  result = *v12;
  v10 = v12[1];
  *a3 = v12[0];
  *(a3 + 16) = v10;
  return result;
}

id sub_B9F74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v9 = v1[1];
  v4 = sub_116EB0();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v9;
  *a1 = v4;
  a1[1] = v6;
  a1[2] = sub_BAAEC;
  a1[3] = v7;

  return v9;
}

char *sub_BA008(char *a1, int64_t a2, char a3)
{
  result = sub_BA0F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_BA028(size_t a1, int64_t a2, char a3)
{
  result = sub_BA1F8(a1, a2, a3, *v3, &qword_185638, &qword_12A298, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  *v3 = result;
  return result;
}

size_t sub_BA06C(size_t a1, int64_t a2, char a3)
{
  result = sub_BA1F8(a1, a2, a3, *v3, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  *v3 = result;
  return result;
}

size_t sub_BA0B0(size_t a1, int64_t a2, char a3)
{
  result = sub_BA1F8(a1, a2, a3, *v3, &qword_185628, &unk_12B850, type metadata accessor for BUIChartViewData.BatteryUsageElement);
  *v3 = result;
  return result;
}

char *sub_BA0F4(char *result, int64_t a2, char a3, char *a4)
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
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_BA1F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
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

uint64_t sub_BA3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BA43C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_BA49C()
{
  result = qword_185310;
  if (!qword_185310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185310);
  }

  return result;
}

uint64_t sub_BA4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_BA5C0()
{
  result = qword_185340;
  if (!qword_185340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185340);
  }

  return result;
}

uint64_t type metadata accessor for BUIChartViewModel()
{
  result = qword_18ECD0;
  if (!qword_18ECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BA690()
{
  sub_BA838();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_BA8F4(319, &qword_185378);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_BA890();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_BA8F4(319, &qword_185388);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_BA940();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_BA838()
{
  if (!qword_185370)
  {
    type metadata accessor for BUIChartViewData(255);
    v0 = sub_115F90();
    if (!v1)
    {
      atomic_store(v0, &qword_185370);
    }
  }
}

void sub_BA890()
{
  if (!qword_185380)
  {
    sub_47A1C(&qword_1835F8, &unk_1259E0);
    v0 = sub_115F90();
    if (!v1)
    {
      atomic_store(v0, &qword_185380);
    }
  }
}

void sub_BA8F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_115F90();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_BA940()
{
  if (!qword_185390)
  {
    sub_54960(255, &qword_1831A8, UIColor_ptr);
    v0 = sub_115F90();
    if (!v1)
    {
      atomic_store(v0, &qword_185390);
    }
  }
}

unint64_t sub_BA9E4()
{
  result = qword_185618;
  if (!qword_185618)
  {
    sub_47A1C(&qword_185620, &unk_12A280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185618);
  }

  return result;
}

uint64_t sub_BAA48()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_BAA88()
{
  v1 = *(v0 + 16);
  strcpy(v3, "plotWidth = ");
  v4._countAndFlagsBits = sub_117420();
  sub_117220(v4);

  return v3[0];
}

uint64_t sub_BAB50(uint64_t a1)
{
  v2 = sub_1158E0();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1162B0();
}

uint64_t sub_BAC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_46F9C(&qword_183560, &qword_129070);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_5A754();
  swift_beginAccess();
  *(a2 + 16) = *v10;
  v11 = type metadata accessor for TenDayBatteryUsageChart(0);
  v12 = *(v11 + 40);
  *(a2 + v12) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BUIChartViewModel();
  sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel);

  *a2 = sub_116120();
  *(a2 + 8) = v13;
  *(a2 + 24) = a3;

  *(a2 + 32) = nullsub_4(v14);
  v15 = (*(*a1 + 464))();
  v17 = v16;
  *(a2 + 40) = v15;

  sub_ECF08();
  v18 = *(v11 + 36);
  sub_48800(&qword_183570, &qword_183560, &qword_129070);
  sub_E9054(v15, v9, v6, a2 + v18, v17);
}

uint64_t sub_BAE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_BAEA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v101 = &v95 - v5;
  v6 = type metadata accessor for TenDayBatteryUsageChart(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BUIChartViewData(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_46F9C(&qword_185650, &qword_12A300);
  v96 = *(v97 - 8);
  v17 = *(v96 + 64);
  __chkstk_darwin(v97);
  v121 = &v95 - v18;
  v100 = sub_46F9C(&qword_185658, &qword_12A308);
  v99 = *(v100 - 8);
  v19 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v95 - v20;
  v105 = sub_46F9C(&qword_185660, &qword_12A310);
  v103 = *(v105 - 8);
  v21 = *(v103 + 64);
  __chkstk_darwin(v105);
  v102 = &v95 - v22;
  v108 = sub_46F9C(&qword_185668, &qword_12A318);
  v107 = *(v108 - 8);
  v23 = *(v107 + 64);
  __chkstk_darwin(v108);
  v104 = &v95 - v24;
  v110 = sub_46F9C(&qword_185670, &qword_12A320);
  v109 = *(v110 - 8);
  v25 = *(v109 + 64);
  __chkstk_darwin(v110);
  v106 = &v95 - v26;
  v114 = sub_46F9C(&qword_185678, &qword_12A328);
  v27 = *(*(v114 - 8) + 64);
  v28 = __chkstk_darwin(v114);
  v115 = &v95 - v29;
  v30 = v1[1];
  v31 = (*v30 + 136);
  v112 = *v31;
  v113 = v30;
  v111 = v31;
  v112(v28);
  v116 = v13;
  sub_BCAB4(&v16[*(v13 + 20)], v12, type metadata accessor for BUIChartViewData.DataFor10Days);
  v117 = v16;
  sub_BAE48(v16, type metadata accessor for BUIChartViewData);
  v119 = v9;
  v32 = *&v12[*(v9 + 20)];

  v118 = v12;
  sub_BAE48(v12, type metadata accessor for BUIChartViewData.DataFor10Days);
  v122 = v32;
  sub_BCAB4(v2, &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TenDayBatteryUsageChart);
  v33 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v34 = swift_allocObject();
  sub_BF528(&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for TenDayBatteryUsageChart);
  sub_46F9C(&qword_185680, &qword_12A330);
  sub_46F9C(&qword_185688, &qword_12A338);
  sub_48800(&qword_185690, &qword_185680, &qword_12A330);
  v35 = sub_47A1C(&qword_185698, &qword_12A340);
  v36 = sub_47A1C(&qword_1856A0, &qword_12A348);
  v37 = sub_47A1C(&qword_1856A8, &qword_12A350);
  v38 = sub_47A1C(&qword_1856B0, &qword_12A358);
  v39 = sub_115E00();
  v40 = sub_4869C();
  *&v126 = v39;
  *(&v126 + 1) = &type metadata for String;
  *&v127 = &protocol witness table for BarMark;
  *(&v127 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v126 = v38;
  *(&v126 + 1) = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  *&v126 = v37;
  *(&v126 + 1) = v42;
  v43 = swift_getOpaqueTypeConformance2();
  *&v126 = v36;
  *(&v126 + 1) = &type metadata for Color;
  *&v127 = v43;
  *(&v127 + 1) = &protocol witness table for Color;
  v44 = swift_getOpaqueTypeConformance2();
  *&v126 = v35;
  *(&v126 + 1) = v44;
  v45 = v121;
  swift_getOpaqueTypeConformance2();
  sub_C0EC8(&qword_1856B8, type metadata accessor for BUIChartViewData.BatteryUsageElement);
  result = sub_115DE0();
  v47 = v2[5];
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = *(v47 + 32);
    v50 = v48 - 1;
    if (v50)
    {
      v51 = (v47 + 40);
      do
      {
        v52 = *v51++;
        v53 = v52;
        if (v49 < v52)
        {
          v49 = v53;
        }

        --v50;
      }

      while (v50);
    }

    if (v49 >= 0.0)
    {
      *&v126 = 0;
      *(&v126 + 1) = v49;
      v54 = sub_115F00();
      v55 = v101;
      (*(*(v54 - 8) + 56))(v101, 1, 1, v54);
      v56 = sub_46F9C(&qword_1856C0, &qword_12A360);
      v57 = sub_48800(&qword_1856C8, &qword_185650, &qword_12A300);
      v58 = sub_BCD44();
      v59 = v98;
      v60 = v97;
      sub_116970();
      sub_488C8(v55, &qword_184138, &qword_127D50);
      v61 = (*(v96 + 8))(v45, v60);
      __chkstk_darwin(v61);
      *(&v95 - 2) = v2;
      v62 = sub_46F9C(&qword_1856D8, &qword_12A368);
      *&v126 = v60;
      *(&v126 + 1) = v56;
      *&v127 = v57;
      *(&v127 + 1) = v58;
      v63 = swift_getOpaqueTypeConformance2();
      v64 = swift_getOpaqueTypeConformance2();
      v65 = v102;
      v66 = v100;
      sub_116910();
      v67 = (*(v99 + 8))(v59, v66);
      __chkstk_darwin(v67);
      *(&v95 - 2) = v2;
      v68 = sub_46F9C(&qword_1856E0, &qword_12A370);
      *&v126 = v66;
      *(&v126 + 1) = v62;
      *&v127 = v63;
      *(&v127 + 1) = v64;
      v69 = swift_getOpaqueTypeConformance2();
      v70 = sub_47A1C(&qword_183560, &qword_129070);
      v71 = sub_48800(&qword_183570, &qword_183560, &qword_129070);
      *&v126 = v70;
      *(&v126 + 1) = v71;
      v72 = swift_getOpaqueTypeConformance2();
      v73 = v104;
      v74 = v105;
      sub_116930();
      (*(v103 + 8))(v65, v74);
      sub_BCE18();
      v122 = v75;
      v123 = v76;
      *&v126 = v74;
      *(&v126 + 1) = v68;
      *&v127 = v69;
      *(&v127 + 1) = v72;
      swift_getOpaqueTypeConformance2();
      sub_BD25C();
      v77 = v106;
      v78 = v108;
      sub_116AB0();

      (*(v107 + 8))(v73, v78);
      v79 = *(v2[2] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(v2[2] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(v2[2] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
      sub_116EA0();
      sub_116070();
      v80 = v115;
      (*(v109 + 32))(v115, v77, v110);
      v81 = (v80 + *(v114 + 36));
      v82 = v127;
      *v81 = v126;
      v81[1] = v82;
      v81[2] = v128;
      v83 = *v2;
      type metadata accessor for BUIChartViewModel();
      sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel);
      sub_116130();
      swift_getKeyPath();
      sub_116140();

      v85 = v122;
      v86 = v123;
      v87 = v124;
      v88 = v125;
      v89 = v117;
      (v112)(v84);
      v90 = v118;
      sub_BCAB4(v89 + *(v116 + 20), v118, type metadata accessor for BUIChartViewData.DataFor10Days);
      sub_BAE48(v89, type metadata accessor for BUIChartViewData);
      v91 = *(v90 + *(v119 + 20));

      sub_BAE48(v90, type metadata accessor for BUIChartViewData.DataFor10Days);
      v92 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
      v93 = sub_D2208(v91, v92, &off_169370);

      v94 = sub_BD2B0(v93);

      sub_BD4E8();
      sub_AB1AC(v85, v86, v87, v88, v94);

      return sub_488C8(v80, &qword_185678, &qword_12A328);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_BBD40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a3;
  v5 = sub_116390();
  v114 = *(v5 - 8);
  v6 = *(v114 + 64);
  __chkstk_darwin(v5);
  v135 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_185320, &unk_12A560);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v134 = &v99 - v10;
  v11 = sub_46F9C(&qword_184418, &unk_1281A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v121 = &v99 - v13;
  v113 = sub_46F9C(&qword_185928, &unk_12A520);
  v14 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v99 - v18;
  v19 = sub_115760();
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin(v19);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_46F9C(&qword_185930, &qword_12BDF0);
  v24 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v112 = &v99 - v25;
  v26 = sub_46F9C(&qword_1843C8, &qword_128140);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v115 = &v99 - v28;
  v120 = sub_115E00();
  v118 = *(v120 - 8);
  v29 = *(v118 + 64);
  __chkstk_darwin(v120);
  v117 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_46F9C(&qword_1856B0, &qword_12A358);
  v122 = *(v126 - 8);
  v31 = *(v122 + 64);
  __chkstk_darwin(v126);
  v119 = &v99 - v32;
  v127 = sub_46F9C(&qword_1856A8, &qword_12A350);
  v125 = *(v127 - 8);
  v33 = *(v125 + 64);
  __chkstk_darwin(v127);
  v123 = &v99 - v34;
  v131 = sub_46F9C(&qword_1856A0, &qword_12A348);
  v128 = *(v131 - 8);
  v35 = *(v128 + 64);
  __chkstk_darwin(v131);
  v124 = &v99 - v36;
  v37 = sub_46F9C(&qword_185698, &qword_12A340);
  v132 = *(v37 - 8);
  v133 = v37;
  v38 = *(v132 + 64);
  v39 = __chkstk_darwin(v37);
  v130 = &v99 - v40;
  v41 = a2;
  v42 = *(a2 + 8);
  v43 = *(*v42 + 240);
  v136 = v42;
  v44 = v43(v39);
  if ((v45 & 1) != 0 || (v47 = (v43)(v44), (v48 & 1) == 0) && v47 == *a1)
  {
    v46 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageColor;
  }

  else
  {
    v46 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageGrayColor;
  }

  v49 = v41;
  v50 = *v46;
  v116 = *(v41 + 16);
  v51 = *(v116 + v50);

  v106 = sub_116370();
  v108 = v52;
  v105 = v53;
  v107 = v54;
  v109 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v55 = a1 + *(v109 + 20);
  v56 = *sub_A79FC();
  sub_115740();
  v104 = sub_C0EC8(&qword_182F10, &type metadata accessor for Date);
  result = sub_117130();
  if (result)
  {
    v58 = v20[2];
    v100 = a1;
    v59 = v110;
    v58(v110, v55, v19);
    v60 = v23;
    v61 = v16;
    v62 = v113;
    v63 = *(v113 + 48);
    v101 = v49;
    v64 = v20[4];
    v64(v59 + v63, v60, v19);
    sub_479B4(v59, v61, &qword_185928, &unk_12A520);
    v102 = v51;
    v65 = *(v62 + 48);
    v66 = v112;
    v64(v112, v61, v19);
    v103 = v5;
    v67 = v20[1];
    v67(v61 + v65, v19);
    sub_548D0(v59, v61, &qword_185928, &unk_12A520);
    v64(v66 + *(v111 + 36), (v61 + *(v62 + 48)), v19);
    v67(v61, v19);
    sub_115C50();

    sub_488C8(v66, &qword_185930, &qword_12BDF0);
    sub_116370();
    v68 = v109;
    v69 = v100;
    v138 = *(v100 + *(v109 + 24));
    sub_115C60();

    v70 = *(v101 + 24) / 10.0;
    v113 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days;
    v71 = v116;
    v72 = v70 * *(v116 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days);
    v73 = v117;
    sub_115DF0();
    v74 = v134;
    sub_BCAB4(v69, v134, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    (*(*(v68 - 8) + 56))(v74, 0, 1, v68);
    v75 = (*(*v136 + 592))(v74);
    v77 = v76;
    sub_488C8(v74, &qword_185320, &unk_12A560);
    v138 = v75;
    v139 = v77;
    v78 = sub_4869C();
    v79 = v119;
    v80 = v120;
    sub_115B00();

    (*(v118 + 8))(v73, v80);
    sub_116370();
    v138 = v80;
    v139 = &type metadata for String;
    v140 = &protocol witness table for BarMark;
    v141 = v78;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v82 = v123;
    v83 = v126;
    sub_115B10();

    (*(v122 + 8))(v79, v83);
    v84 = sub_5952C();
    v85 = *v84;
    v86 = v84[1];

    v138 = v83;
    v139 = OpaqueTypeConformance2;
    v87 = swift_getOpaqueTypeConformance2();
    v88 = v124;
    v89 = v127;
    sub_115B30();

    (*(v125 + 8))(v82, v89);
    v137 = v102;
    v138 = v89;
    v139 = v87;
    v90 = swift_getOpaqueTypeConformance2();
    v92 = v130;
    v91 = v131;
    sub_115AF0();
    (*(v128 + 8))(v88, v91);
    v93 = v70 * *(v71 + v113);
    v94 = *(v71 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barRadiusRatioFor10Days);
    v95 = v114;
    v96 = v135;
    v97 = v103;
    (*(v114 + 104))(v135, enum case for RoundedCornerStyle.continuous(_:), v103);
    v138 = v91;
    v139 = &type metadata for Color;
    v140 = v90;
    v141 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v98 = v133;
    sub_115AE0();

    (*(v95 + 8))(v96, v97);
    return (*(v132 + 8))(v92, v98);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BCAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BCB1C()
{
  v1 = (type metadata accessor for TenDayBatteryUsageChart(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 4);

  v7 = *(v3 + 5);

  v8 = &v3[v1[11]];
  v9 = *v8;

  v10 = *(sub_46F9C(&qword_185640, &unk_12A2C0) + 40);
  v11 = sub_46F9C(&qword_183560, &qword_129070);
  (*(*(v11 - 8) + 8))(&v8[v10], v11);
  v12 = v1[12];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1158E0();
    (*(*(v13 - 8) + 8))(&v3[v12], v13);
  }

  else
  {
    v14 = *&v3[v12];
  }

  return swift_deallocObject();
}

uint64_t sub_BCCC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TenDayBatteryUsageChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_BBD40(a1, v6, a2);
}

unint64_t sub_BCD44()
{
  result = qword_1856D0;
  if (!qword_1856D0)
  {
    sub_47A1C(&qword_1856C0, &qword_12A360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1856D0);
  }

  return result;
}

uint64_t sub_BCDC0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for TenDayBatteryUsageChart(0) + 36);
  v3 = sub_46F9C(&qword_185640, &unk_12A2C0);
  return sub_E9144(v3);
}

void sub_BCE18()
{
  v1 = v0;
  v2 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BUIChartViewData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v12 = *(*v11 + 136);
  v38 = *v11 + 136;
  v12(v8);
  sub_BCAB4(&v10[*(v6 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v10, type metadata accessor for BUIChartViewData);
  sub_B9088();
  v14 = v13;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  v15 = sub_117170();
  v16 = BatteryUILocalization(v15);

  if (!v16)
  {
    goto LABEL_16;
  }

  sub_1171B0();

  v17 = *(v1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    v20 = v18 - 1;
    if (v20)
    {
      v21 = (v17 + 40);
      do
      {
        v22 = *v21++;
        v23 = v22;
        if (v19 < v22)
        {
          v19 = v23;
        }

        --v20;
      }

      while (v20);
    }

    sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
    if (v19 >= 0.0)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
LABEL_11:
  v37 = v6;

  v24 = sub_117580();
  v25 = sub_117170();
  v26 = BatteryUILocalization(v25);

  if (v26)
  {
    v27 = sub_1171B0();
    v35 = v28;
    v36 = v27;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
  sub_46F9C(&qword_185700, &qword_12A3A0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_12A2B0;
  v30 = v14;
  v31 = v24;
  (v12)();
  sub_BCAB4(&v10[*(v37 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v10, type metadata accessor for BUIChartViewData);
  sub_B9324();
  v33 = v32;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  *(v29 + 32) = v33;
  v34 = sub_1174F0();
  *(swift_allocObject() + 16) = v34;
  j_nullsub_4(sub_C1204);
}

unint64_t sub_BD25C()
{
  result = qword_1856E8;
  if (!qword_1856E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1856E8);
  }

  return result;
}

void *sub_BD2B0(uint64_t a1)
{
  v18 = sub_46F9C(&qword_185178, &unk_129BA0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = &v18 - v4;
  v6 = sub_46F9C(&qword_185180, &qword_12A550);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_C0FF0(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_479B4(v13, v5, &qword_185178, &unk_129BA0);
      swift_dynamicCast();
      v19 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_C0FF0(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      v12[2] = v16 + 1;
      sub_548D0(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_185180, &qword_12A550);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

unint64_t sub_BD4E8()
{
  result = qword_1856F0;
  if (!qword_1856F0)
  {
    sub_47A1C(&qword_185678, &qword_12A328);
    sub_47A1C(&qword_185668, &qword_12A318);
    sub_47A1C(&qword_185660, &qword_12A310);
    sub_47A1C(&qword_1856E0, &qword_12A370);
    sub_47A1C(&qword_185658, &qword_12A308);
    sub_47A1C(&qword_1856D8, &qword_12A368);
    sub_47A1C(&qword_185650, &qword_12A300);
    sub_47A1C(&qword_1856C0, &qword_12A360);
    sub_48800(&qword_1856C8, &qword_185650, &qword_12A300);
    sub_BCD44();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_183560, &qword_129070);
    sub_48800(&qword_183570, &qword_183560, &qword_129070);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_BD25C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1856F0);
  }

  return result;
}

uint64_t sub_BD7B0(double a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(**v2 + 584);

  v5 = v3(v4);

  v6 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v7 = [v5 stringFromNumber:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1171B0();

  return v8;
}

uint64_t sub_BD8C4()
{

  return swift_deallocObject();
}

double sub_BD920@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_5A754();
  swift_beginAccess();
  *(a2 + 16) = *v6;
  v7 = *(type metadata accessor for TenDayBatteryActivityChart(0) + 40);
  *(a2 + v7) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BUIChartViewModel();
  sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel);

  *a2 = sub_116120();
  *(a2 + 8) = v8;
  *(a2 + 24) = a3;

  *(a2 + 32) = nullsub_4(v9);
  v10 = (*(*a1 + 472))();
  v12 = v11;
  *(a2 + 40) = v10;

  nullsub_4(v13);
  sub_BDACC();
  sub_E9054(v10, v14, &type metadata for PLBUIHourMinutesFormatStyle, v17, v12);

  result = *&v17[1];
  v16 = v18;
  *(a2 + 48) = v17[0];
  *(a2 + 56) = result;
  *(a2 + 64) = v16;
  return result;
}

unint64_t sub_BDACC()
{
  result = qword_185708;
  if (!qword_185708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185708);
  }

  return result;
}

uint64_t sub_BDB20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v103 = &v97 - v5;
  v6 = type metadata accessor for TenDayBatteryActivityChart(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BUIChartViewData(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_46F9C(&qword_185710, &qword_12A3A8);
  v98 = *(v99 - 8);
  v17 = *(v98 + 64);
  __chkstk_darwin(v99);
  v126 = &v97 - v18;
  v102 = sub_46F9C(&qword_185718, &qword_12A3B0);
  v101 = *(v102 - 8);
  v19 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v97 - v20;
  v108 = sub_46F9C(&qword_185720, &qword_12A3B8);
  v106 = *(v108 - 8);
  v21 = *(v106 + 64);
  __chkstk_darwin(v108);
  v104 = &v97 - v22;
  v110 = sub_46F9C(&qword_185728, &qword_12A3C0);
  v107 = *(v110 - 8);
  v23 = *(v107 + 64);
  __chkstk_darwin(v110);
  v105 = &v97 - v24;
  v113 = sub_46F9C(&qword_185730, &qword_12A3C8);
  v112 = *(v113 - 8);
  v25 = *(v112 + 64);
  __chkstk_darwin(v113);
  v109 = &v97 - v26;
  v115 = sub_46F9C(&qword_185738, &qword_12A3D0);
  v114 = *(v115 - 8);
  v27 = *(v114 + 64);
  __chkstk_darwin(v115);
  v111 = &v97 - v28;
  v119 = sub_46F9C(&qword_185740, &qword_12A3D8);
  v29 = *(*(v119 - 8) + 64);
  v30 = __chkstk_darwin(v119);
  v120 = &v97 - v31;
  v32 = v1[1];
  v33 = *(*v32 + 136);
  v34 = *v32 + 136;
  v118 = v32;
  v117 = v33;
  v116 = v34;
  v33(v30);
  v121 = v13;
  sub_BCAB4(&v16[*(v13 + 20)], v12, type metadata accessor for BUIChartViewData.DataFor10Days);
  v122 = v16;
  sub_BAE48(v16, type metadata accessor for BUIChartViewData);
  v124 = v9;
  v35 = *&v12[*(v9 + 24)];

  v123 = v12;
  sub_BAE48(v12, type metadata accessor for BUIChartViewData.DataFor10Days);
  v135 = v35;
  sub_BCAB4(v2, &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TenDayBatteryActivityChart);
  v36 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v37 = swift_allocObject();
  sub_BF528(&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for TenDayBatteryActivityChart);
  sub_46F9C(&qword_185748, &qword_12A3E0);
  sub_46F9C(&qword_185750, &qword_12A3E8);
  sub_48800(&qword_185758, &qword_185748, &qword_12A3E0);
  v38 = sub_47A1C(&qword_185760, &qword_12A3F0);
  v39 = sub_47A1C(&qword_185768, &qword_12A3F8);
  v40 = sub_47A1C(&qword_185770, &qword_12A400);
  v41 = sub_48800(&qword_185778, &qword_185770, &qword_12A400);
  *&v136 = v40;
  *(&v136 + 1) = v41;
  v42 = v126;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_4869C();
  *&v136 = v39;
  *(&v136 + 1) = &type metadata for String;
  *&v137 = OpaqueTypeConformance2;
  *(&v137 + 1) = v44;
  v45 = swift_getOpaqueTypeConformance2();
  *&v136 = v38;
  *(&v136 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  sub_C0EC8(&qword_185780, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  result = sub_115DE0();
  v47 = v2[5];
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = *(v47 + 32);
    v50 = v48 - 1;
    if (v50)
    {
      v51 = (v47 + 40);
      do
      {
        v52 = *v51++;
        v53 = v52;
        if (v49 < v52)
        {
          v49 = v53;
        }

        --v50;
      }

      while (v50);
    }

    if (v49 >= 0.0)
    {
      v133 = 0;
      v134 = v49;
      v54 = sub_115F00();
      v55 = v103;
      (*(*(v54 - 8) + 56))(v103, 1, 1, v54);
      v56 = sub_46F9C(&qword_1856C0, &qword_12A360);
      v57 = sub_48800(&qword_185788, &qword_185710, &qword_12A3A8);
      v58 = sub_BCD44();
      v59 = v100;
      v60 = v99;
      sub_116970();
      sub_488C8(v55, &qword_184138, &qword_127D50);
      v61 = (*(v98 + 8))(v42, v60);
      __chkstk_darwin(v61);
      *(&v97 - 2) = v2;
      v62 = sub_46F9C(&qword_1856D8, &qword_12A368);
      *&v136 = v60;
      *(&v136 + 1) = v56;
      *&v137 = v57;
      *(&v137 + 1) = v58;
      v63 = swift_getOpaqueTypeConformance2();
      v64 = swift_getOpaqueTypeConformance2();
      v65 = v104;
      v66 = v102;
      sub_116910();
      v67 = (*(v101 + 8))(v59, v66);
      __chkstk_darwin(v67);
      *(&v97 - 2) = v2;
      v68 = sub_46F9C(&qword_185790, qword_12A408);
      *&v136 = v66;
      *(&v136 + 1) = v62;
      *&v137 = v63;
      *(&v137 + 1) = v64;
      v69 = swift_getOpaqueTypeConformance2();
      v70 = sub_BDACC();
      *&v136 = &type metadata for PLBUIHourMinutesFormatStyle;
      *(&v136 + 1) = v70;
      v71 = swift_getOpaqueTypeConformance2();
      v72 = v105;
      v73 = v108;
      sub_116930();
      (*(v106 + 8))(v65, v73);
      *&v136 = v73;
      *(&v136 + 1) = v68;
      *&v137 = v69;
      *(&v137 + 1) = v71;
      v74 = swift_getOpaqueTypeConformance2();
      v75 = v109;
      v76 = v110;
      sub_116950();
      (*(v107 + 8))(v72, v76);
      sub_BFE1C();
      v131 = v77;
      v132 = v78;
      *&v136 = v76;
      *(&v136 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      sub_BD25C();
      v79 = v111;
      v80 = v113;
      sub_116AB0();

      (*(v112 + 8))(v75, v80);
      v81 = *(v2[2] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(v2[2] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(v2[2] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
      sub_116EA0();
      sub_116070();
      v82 = v120;
      (*(v114 + 32))(v120, v79, v115);
      v83 = (v82 + *(v119 + 36));
      v84 = v137;
      *v83 = v136;
      v83[1] = v84;
      v83[2] = v138;
      v85 = *v2;
      type metadata accessor for BUIChartViewModel();
      sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel);
      sub_116130();
      swift_getKeyPath();
      sub_116140();

      v87 = v127;
      v88 = v128;
      v89 = v129;
      v90 = v130;
      v91 = v122;
      (v117)(v86);
      v92 = v123;
      sub_BCAB4(v91 + *(v121 + 20), v123, type metadata accessor for BUIChartViewData.DataFor10Days);
      sub_BAE48(v91, type metadata accessor for BUIChartViewData);
      v93 = *(v92 + *(v124 + 24));

      sub_BAE48(v92, type metadata accessor for BUIChartViewData.DataFor10Days);
      v94 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
      v95 = sub_D2208(v93, v94, &off_169350);

      v96 = sub_BD2B0(v95);

      sub_C023C();
      sub_AB1AC(v87, v88, v89, v90, v96);

      return sub_488C8(v82, &qword_185740, &qword_12A3D8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_BEA50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v5 = sub_46F9C(&qword_185318, &unk_12A0B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v94 = &v73 - v7;
  v8 = sub_116390();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  __chkstk_darwin(v8);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_46F9C(&qword_185770, &qword_12A400);
  v82 = *(v89 - 8);
  v11 = *(v82 + 64);
  __chkstk_darwin(v89);
  v81 = &v73 - v12;
  v93 = sub_46F9C(&qword_185768, &qword_12A3F8);
  v90 = *(v93 - 8);
  v13 = *(v90 + 64);
  __chkstk_darwin(v93);
  v88 = &v73 - v14;
  v15 = sub_46F9C(&qword_185760, &qword_12A3F0);
  v95 = *(v15 - 8);
  v16 = *(v95 + 64);
  __chkstk_darwin(v15);
  v92 = &v73 - v17;
  v18 = sub_46F9C(&qword_185928, &unk_12A520);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v79 = &v73 - v23;
  v24 = sub_115760();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_46F9C(&qword_185930, &qword_12BDF0);
  v29 = *(*(v78 - 8) + 64);
  v30 = __chkstk_darwin(v78);
  v84 = a2;
  v85 = &v73 - v31;
  v32 = *(a2 + 8);
  v33 = *(*v32 + 240);
  v34 = v33(v30);
  v80 = v32;
  if (v35)
  {
    v77 = 0;
  }

  else
  {
    v36 = (v33)(v34);
    v38 = (v37 & 1) != 0 || v36 != *a1;
    v77 = v38;
  }

  v39 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v40 = a1 + *(v39 + 20);
  v41 = *sub_A79FC();
  sub_115740();
  sub_C0EC8(&qword_182F10, &type metadata accessor for Date);
  result = sub_117130();
  if (result)
  {
    v43 = v79;
    (*(v25 + 16))(v79, v40, v24);
    v44 = *(v18 + 48);
    v74 = a1;
    v75 = v39;
    v76 = v15;
    v45 = *(v25 + 32);
    (v45)(v43 + v44, v28, v24);
    sub_479B4(v43, v21, &qword_185928, &unk_12A520);
    v46 = *(v18 + 48);
    v47 = v18;
    v48 = v85;
    v45();
    v49 = *(v25 + 8);
    v49(&v21[v46], v24);
    sub_548D0(v43, v21, &qword_185928, &unk_12A520);
    (v45)(&v48[*(v78 + 36)], &v21[*(v47 + 48)], v24);
    v50 = (v49)(v21, v24);
    v79 = &v73;
    __chkstk_darwin(v50);
    v51 = v48;
    v52 = v74;
    *(&v73 - 4) = v48;
    *(&v73 - 3) = v52;
    v53 = v84;
    *(&v73 - 2) = v84;
    *(&v73 - 8) = v77;
    sub_46F9C(&qword_185938, &qword_12A530);
    sub_C0F20();
    v54 = v81;
    sub_115DB0();
    v55 = *(v53 + 16);
    v56 = *(v53 + 24) / 10.0 * *(v55 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days);
    v57 = *(v55 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barRadiusRatioFor10Days);
    v59 = v86;
    v58 = v87;
    v60 = v83;
    (*(v86 + 104))(v83, enum case for RoundedCornerStyle.continuous(_:), v87);
    v61 = sub_48800(&qword_185778, &qword_185770, &qword_12A400);
    v63 = v88;
    v62 = v89;
    sub_115AE0();
    (*(v59 + 8))(v60, v58);
    (*(v82 + 8))(v54, v62);
    v64 = v94;
    sub_BCAB4(v52, v94, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    (*(*(v75 - 8) + 56))(v64, 0, 1);
    v65 = (*(*v80 + 600))(v64);
    v67 = v66;
    sub_488C8(v64, &qword_185318, &unk_12A0B0);
    v100 = v65;
    v101 = v67;
    v96 = v62;
    v97 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v69 = sub_4869C();
    v71 = v92;
    v70 = v93;
    sub_115B00();

    (*(v90 + 8))(v63, v70);
    sub_116370();
    v96 = v70;
    v97 = &type metadata for String;
    v98 = OpaqueTypeConformance2;
    v99 = v69;
    swift_getOpaqueTypeConformance2();
    v72 = v76;
    sub_115B10();

    (*(v95 + 8))(v71, v72);
    return sub_488C8(v51, &qword_185930, &qword_12BDF0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BF3EC()
{
  v1 = (type metadata accessor for TenDayBatteryActivityChart(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 4);

  v7 = *(v3 + 5);

  v8 = *(v3 + 6);

  v9 = v1[12];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1158E0();
    (*(*(v10 - 8) + 8))(&v3[v9], v10);
  }

  else
  {
    v11 = *&v3[v9];
  }

  return swift_deallocObject();
}

uint64_t sub_BF528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_BF590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TenDayBatteryActivityChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_BEA50(a1, v6, a2);
}

uint64_t sub_BF610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v55) = a4;
  v54 = a3;
  v66 = a2;
  v52[2] = a1;
  v62 = a5;
  v5 = sub_46F9C(&qword_185948, &qword_12A538);
  v6 = *(v5 - 8);
  v61 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v60 = v52 - v8;
  v9 = sub_46F9C(&qword_184418, &unk_1281A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_46F9C(&qword_1843C8, &qword_128140);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v53 = sub_115E00();
  v67 = *(v53 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v53);
  v56 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v52 - v16;
  v18 = sub_46F9C(&qword_185950, &unk_12A540);
  v58 = *(v18 - 8);
  v59 = v18;
  v19 = *(v58 + 64);
  __chkstk_darwin(v18);
  v57 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v65 = v52 - v22;
  __chkstk_darwin(v23);
  v64 = v52 - v24;
  __chkstk_darwin(v25);
  v63 = v52 - v26;
  sub_116370();
  sub_115760();
  v52[1] = sub_C0EC8(&qword_182F10, &type metadata accessor for Date);
  sub_115C50();

  sub_116370();
  v52[0] = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v68 = *(v66 + *(v52[0] + 24));
  sub_115C60();

  v27 = *(v54 + 24) / 10.0;
  v28 = *(v54 + 16);
  v54 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days;
  v29 = v27 * *(v28 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days);
  sub_115DF0();
  v30 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  v31 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnColor;
  if (v55)
  {
    v31 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  }

  v32 = *(v28 + *v31);
  if ((v55 & 1) == 0)
  {
    v30 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor;
  }

  v55 = v30;

  v68 = v32;
  v33 = v53;
  sub_115AF0();

  v34 = *(v67 + 8);
  v67 += 8;
  v34(v17, v33);
  sub_116370();
  sub_115C50();

  sub_116370();
  v68 = *(v66 + *(v52[0] + 28));
  sub_115C60();

  v35 = v27 * *(v28 + v54);
  v36 = v56;
  sub_115DF0();
  v37 = *(v28 + *v55);

  v68 = v37;
  v38 = v64;
  sub_115AF0();

  v34(v36, v33);
  v40 = v58;
  v39 = v59;
  v41 = *(v58 + 16);
  v42 = v65;
  v43 = v63;
  v41(v65, v63, v59);
  v44 = v57;
  v41(v57, v38, v39);
  v45 = v60;
  v41(v60, v42, v39);
  v46 = v61;
  v47 = *(v61 + 56);
  v41(&v45[v47], v44, v39);
  v48 = *(v40 + 32);
  v49 = v62;
  v48(v62, v45, v39);
  v48(v49 + *(v46 + 56), &v45[v47], v39);
  v50 = *(v40 + 8);
  v50(v64, v39);
  v50(v43, v39);
  v50(v44, v39);
  return (v50)(v65, v39);
}

uint64_t sub_BFDB8()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v2 = sub_46F9C(&qword_185920, &unk_12A510);
  return sub_E9144(v2);
}

void sub_BFE1C()
{
  v1 = v0;
  v2 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BUIChartViewData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v12 = *(*v11 + 136);
  v38 = *v11 + 136;
  v12(v8);
  sub_BCAB4(&v10[*(v6 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v10, type metadata accessor for BUIChartViewData);
  sub_B9088();
  v14 = v13;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  v15 = sub_117170();
  v16 = BatteryUILocalization(v15);

  if (!v16)
  {
    goto LABEL_16;
  }

  sub_1171B0();

  v17 = *(v1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    v20 = v18 - 1;
    if (v20)
    {
      v21 = (v17 + 40);
      do
      {
        v22 = *v21++;
        v23 = v22;
        if (v19 < v22)
        {
          v19 = v23;
        }

        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v19 = *sub_A79F0();
  }

  sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
  if (v19 < 0.0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v37 = v6;

  v24 = sub_117580();
  v25 = sub_117170();
  v26 = BatteryUILocalization(v25);

  if (v26)
  {
    v27 = sub_1171B0();
    v35 = v28;
    v36 = v27;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
  sub_46F9C(&qword_185700, &qword_12A3A0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_12A2B0;
  v30 = v14;
  v31 = v24;
  (v12)();
  sub_BCAB4(&v10[*(v37 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v10, type metadata accessor for BUIChartViewData);
  sub_B9768();
  v33 = v32;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  *(v29 + 32) = v33;
  v34 = sub_1174F0();
  *(swift_allocObject() + 16) = v34;
  j_nullsub_4(sub_C05EC);
}

unint64_t sub_C023C()
{
  result = qword_185798;
  if (!qword_185798)
  {
    sub_47A1C(&qword_185740, &qword_12A3D8);
    sub_47A1C(&qword_185730, &qword_12A3C8);
    sub_47A1C(&qword_185728, &qword_12A3C0);
    sub_47A1C(&qword_185720, &qword_12A3B8);
    sub_47A1C(&qword_185790, qword_12A408);
    sub_47A1C(&qword_185718, &qword_12A3B0);
    sub_47A1C(&qword_1856D8, &qword_12A368);
    sub_47A1C(&qword_185710, &qword_12A3A8);
    sub_47A1C(&qword_1856C0, &qword_12A360);
    sub_48800(&qword_185788, &qword_185710, &qword_12A3A8);
    sub_BCD44();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_BDACC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_BD25C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185798);
  }

  return result;
}

uint64_t sub_C0504(double a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(*v2 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes);
  v4 = objc_allocWithZone(NSNumber);
  v5 = v3;
  v6 = [v4 initWithDouble:a1];
  v7 = [v5 stringFromNumber:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1171B0();

  return v8;
}

uint64_t sub_C0644(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_46F9C(&qword_185640, &unk_12A2C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_C0794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_185640, &unk_12A2C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_C08E8()
{
  if (!qword_185800)
  {
    type metadata accessor for BUIChartViewModel();
    sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel);
    v0 = sub_116150();
    if (!v1)
    {
      atomic_store(v0, &qword_185800);
    }
  }
}

void sub_C097C()
{
  if (!qword_185808)
  {
    v0 = sub_1173A0();
    if (!v1)
    {
      atomic_store(v0, &qword_185808);
    }
  }
}

void sub_C09CC()
{
  if (!qword_185810)
  {
    sub_47A1C(&qword_183560, &qword_129070);
    sub_48800(&qword_183570, &qword_183560, &qword_129070);
    v0 = type metadata accessor for BatteryYAxis();
    if (!v1)
    {
      atomic_store(v0, &qword_185810);
    }
  }
}

void sub_C0A70()
{
  if (!qword_185818)
  {
    sub_1158E0();
    v0 = sub_116000();
    if (!v1)
    {
      atomic_store(v0, &qword_185818);
    }
  }
}

uint64_t sub_C0ADC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C0BAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C0C74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_C08E8();
  if (v5 <= 0x3F)
  {
    type metadata accessor for BUIChartViewConfig();
    if (v6 <= 0x3F)
    {
      sub_C097C();
      if (v7 <= 0x3F)
      {
        a4(319);
        if (v8 <= 0x3F)
        {
          sub_C0A70();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C0D60()
{
  if (!qword_1858B8)
  {
    sub_BDACC();
    v0 = type metadata accessor for BatteryYAxis();
    if (!v1)
    {
      atomic_store(v0, &qword_1858B8);
    }
  }
}

uint64_t sub_C0E44(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    sub_AC5F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C0EC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C0F20()
{
  result = qword_185940;
  if (!qword_185940)
  {
    sub_47A1C(&qword_185938, &qword_12A530);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185940);
  }

  return result;
}

size_t sub_C0FF0(size_t a1, int64_t a2, char a3)
{
  result = sub_C1010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_C1010(size_t result, int64_t a2, char a3, void *a4)
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

  sub_46F9C(&qword_185958, &qword_12A558);
  v10 = *(sub_46F9C(&qword_185180, &qword_12A550) - 8);
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
  v15 = *(sub_46F9C(&qword_185180, &qword_12A550) - 8);
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

void *sub_C120C(void *a1)
{
  sub_A77D0(sub_C125C, 0);
  v2 = sub_C7E28(a1);

  return v2;
}

uint64_t sub_C1278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BreakdownCellButtonStyle();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_46F9C(&qword_185960, &unk_12A580);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29[-v11];
  v30 = a1;

  sub_46F9C(&qword_182D80, &qword_124720);
  sub_48800(&qword_182D90, &qword_182D80, &qword_124720);
  sub_C8B84();
  sub_1160F0();
  v29[7] = 0;
  sub_116DB0();
  v13 = v30;
  v14 = v31;
  v15 = v32;
  v16 = variable initialization expression of PLBUIChartViewController.isUpdating();
  sub_EFC40(v16 & 1, v13, v14, v15, v7);
  sub_48800(&qword_185970, &qword_185960, &unk_12A580);
  sub_C8EA0(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle);
  sub_116A00();
  sub_CAF48(v7, type metadata accessor for BreakdownCellButtonStyle);
  (*(v9 + 8))(v12, v8);
  v17 = sub_116660();
  sub_115FD0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a2 + *(sub_46F9C(&qword_185978, &qword_12A590) + 36);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  result = sub_46F9C(&qword_185980, &qword_12A598);
  v28 = (a2 + *(result + 36));
  *v28 = sub_C189C;
  v28[1] = 0;
  v28[2] = 0;
  v28[3] = 0;
  return result;
}

uint64_t sub_C15AC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_116320();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_46F9C(&qword_182E18, &qword_1247F8);
  return sub_C15FC(a1 + *(v2 + 44));
}

uint64_t sub_C15FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_46F9C(&qword_182E20, &qword_124800);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  sub_116370();
  v10 = sub_1168E0();
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v25 = v13;
  v14 = sub_116C00();
  v15 = sub_116720();
  KeyPath = swift_getKeyPath();
  v26 = v14;
  v27 = KeyPath;
  v28 = v15;
  sub_1166A0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v17 = [objc_opt_self() systemGray3Color];
  *&v9[*(v3 + 44)] = sub_116BE0();
  sub_479B4(v9, v6, &qword_182E20, &qword_124800);
  v19 = v22;
  v18 = v23;
  *a1 = v23;
  *(a1 + 8) = v19;
  LOBYTE(v15) = v24 & 1;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v20 = sub_46F9C(&qword_182E50, &qword_12AA90);
  sub_479B4(v6, a1 + *(v20 + 64), &qword_182E20, &qword_124800);
  sub_488B8(v18, v19, v15);

  sub_488C8(v9, &qword_182E20, &qword_124800);
  sub_488C8(v6, &qword_182E20, &qword_124800);
  sub_48928(v18, v19, v15);
}

void sub_C189C()
{
  sub_A77D0(sub_C1978, 0);
  v0 = sub_117170();
  v2[4] = sub_C1994;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_83460;
  v2[3] = &unk_168D80;
  v1 = _Block_copy(v2);
  AnalyticsSendEventLazy();
  _Block_release(v1);
}

unint64_t sub_C1994()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x8000000000135F00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

void sub_C1A78(uint64_t a1)
{
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v136 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v137 = &v126 - v7;
  __chkstk_darwin(v8);
  v138 = &v126 - v9;
  v142 = type metadata accessor for UrsaIssue(0);
  v10 = *(*(v142 - 1) + 64);
  __chkstk_darwin(v142);
  v133 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v131 = &v126 - v14;
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(&v126 - v17);
  v140 = &v126 - v18;
  __chkstk_darwin(v19);
  v132 = (&v126 - v20);
  __chkstk_darwin(v21);
  v23 = &v126 - v22;
  __chkstk_darwin(v24);
  v139 = &v126 - v25;
  __chkstk_darwin(v26);
  v32 = &v126 - v31;
  v33 = *(a1 + 16);
  if (!v33)
  {
    v96 = _swiftEmptyArrayStorage;
    v116 = _swiftEmptyArrayStorage[2];

    v130 = _swiftEmptyArrayStorage[2];

    v98 = _swiftEmptyArrayStorage[2];

    v117 = _swiftEmptyArrayStorage[2];

LABEL_87:
    v118 = v96[2];

    sub_46F9C(&qword_185CD8, &qword_12A9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_12A570;
    *(inited + 32) = 0xD000000000000020;
    *(inited + 40) = 0x8000000000135DF0;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
    *(inited + 56) = 0xD000000000000014;
    *(inited + 64) = 0x8000000000135E20;
    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v116];
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x8000000000135E40;
    *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v98];
    *(inited + 104) = 0xD000000000000015;
    *(inited + 112) = 0x8000000000135E60;
    *(inited + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v117];
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x8000000000135E80;
    *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:v118];
    *(inited + 152) = 0xD000000000000023;
    *(inited + 160) = 0x8000000000135EA0;
    v120 = objc_allocWithZone(NSNumber);
    *(inited + 168) = [v120 initWithInteger:v130];
    v121 = sub_C96B0(inited, &qword_185CE8, &qword_12A9E0);
    swift_setDeallocating();
    sub_46F9C(&qword_185CE0, &qword_12A9D8);
    v122 = swift_arrayDestroy();
    __chkstk_darwin(v122);
    *(&v126 - 2) = v121;
    sub_A77D0(sub_CAFA8, (&v126 - 4));
    v123 = sub_117170();
    v124 = swift_allocObject();
    *(v124 + 16) = v121;
    aBlock[4] = sub_CB054;
    aBlock[5] = v124;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_83460;
    aBlock[3] = &unk_168D30;
    v125 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v125);

    return;
  }

  v128 = v27;
  v129 = v3;
  v141 = v30;
  v134 = v29;
  v135 = v2;
  v34 = *(v28 + 72);
  v143 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v35 = a1 + v143;
  v36 = _swiftEmptyArrayStorage;
  v37 = v35;
  v38 = v33;
  v144 = v34;
  while (1)
  {
    sub_CA6AC(v37, v32, type metadata accessor for UrsaIssue);
    if (v32[48] != 1 || !*(v32 + 5))
    {
      goto LABEL_4;
    }

    v39 = MobileGestalt_get_current_device();
    if (!v39)
    {
      break;
    }

    v40 = v39;
    v41 = MobileGestalt_copy_buildVersion_obj();

    if (!v41)
    {
      goto LABEL_16;
    }

    v42 = sub_1171B0();
    v44 = v43;

    v45 = &v32[v142[12]];
    v46 = *(v45 + 1);
    if (!v46)
    {

      v34 = v144;
LABEL_16:
      sub_CA944(v32, v139, type metadata accessor for UrsaIssue);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_C7A04(0, v36[2] + 1, 1);
        v36 = aBlock[0];
      }

      v50 = v36[2];
      v49 = v36[3];
      if (v50 >= v49 >> 1)
      {
        sub_C7A04(v49 > 1, v50 + 1, 1);
        v36 = aBlock[0];
      }

      v36[2] = v50 + 1;
      sub_CA944(v139, v36 + v143 + v50 * v34, type metadata accessor for UrsaIssue);
      goto LABEL_5;
    }

    if (v42 == *v45 && v46 == v44)
    {

      v34 = v144;
    }

    else
    {
      v47 = sub_1179E0();

      v34 = v144;
      if (v47)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    sub_CAF48(v32, type metadata accessor for UrsaIssue);
LABEL_5:
    v37 += v34;
    if (!--v38)
    {
      v127 = v36[2];

      v51 = _swiftEmptyArrayStorage;
      v52 = v35;
      v53 = v33;
      v54 = v135;
      while (1)
      {
        sub_CA6AC(v52, v23, type metadata accessor for UrsaIssue);
        if (v23[48] == 1 && *(v23 + 5))
        {
          v55 = MobileGestalt_get_current_device();
          if (!v55)
          {
            goto LABEL_89;
          }

          v56 = v55;
          v57 = MobileGestalt_copy_buildVersion_obj();

          if (v57)
          {
            v58 = sub_1171B0();
            v60 = v59;

            v61 = &v23[v142[12]];
            v62 = *(v61 + 1);
            if (v62)
            {
              if (v58 == *v61 && v62 == v60)
              {

                v54 = v135;
LABEL_35:
                sub_CA944(v23, v132, type metadata accessor for UrsaIssue);
                v64 = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v51;
                if ((v64 & 1) == 0)
                {
                  sub_C7A04(0, v51[2] + 1, 1);
                  v51 = aBlock[0];
                }

                v66 = v51[2];
                v65 = v51[3];
                if (v66 >= v65 >> 1)
                {
                  sub_C7A04(v65 > 1, v66 + 1, 1);
                  v51 = aBlock[0];
                }

                v51[2] = v66 + 1;
                sub_CA944(v132, v51 + v143 + v66 * v34, type metadata accessor for UrsaIssue);
                goto LABEL_33;
              }

              v63 = sub_1179E0();

              v54 = v135;
              if ((v63 & 1) == 0)
              {
                goto LABEL_35;
              }
            }

            else
            {

              v54 = v135;
            }
          }
        }

        sub_CAF48(v23, type metadata accessor for UrsaIssue);
LABEL_33:
        v52 += v34;
        if (!--v53)
        {
          v130 = v51[2];

          v67 = _swiftEmptyArrayStorage;
          v68 = v35;
          v69 = v33;
          v70 = v141;
          v71 = v128;
          v72 = v140;
          do
          {
            sub_CA6AC(v68, v72, type metadata accessor for UrsaIssue);
            if (*(v72 + 48))
            {
              sub_CAF48(v72, type metadata accessor for UrsaIssue);
            }

            else
            {
              sub_CA944(v72, v71, type metadata accessor for UrsaIssue);
              v73 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v67;
              if ((v73 & 1) == 0)
              {
                sub_C7A04(0, v67[2] + 1, 1);
                v67 = aBlock[0];
              }

              v75 = v67[2];
              v74 = v67[3];
              if (v75 >= v74 >> 1)
              {
                sub_C7A04(v74 > 1, v75 + 1, 1);
                v67 = aBlock[0];
              }

              v67[2] = v75 + 1;
              sub_CA944(v71, v67 + v143 + v75 * v34, type metadata accessor for UrsaIssue);
              v70 = v141;
              v72 = v140;
            }

            v68 += v34;
            --v69;
          }

          while (v69);
          v139 = v67[2];

          v140 = (v129 + 8);
          v132 = _swiftEmptyArrayStorage;
          v76 = v35;
          v77 = v33;
          while (2)
          {
            sub_CA6AC(v76, v70, type metadata accessor for UrsaIssue);
            if (*(v70 + 48) == 1 && !*(v70 + 40))
            {
              v78 = v137;
              sub_115750();
              sub_1156A0();
              v79 = *v140;
              (*v140)(v78, v54);
              v80 = v142[9];
              if ((sub_1156C0() & 1) == 0)
              {
                goto LABEL_57;
              }

              v81 = (v141 + v142[11]);
              v82 = *v81;
              v83 = v81[1];
              v84 = MobileGestalt_get_current_device();
              if (!v84)
              {
                goto LABEL_90;
              }

              v85 = v84;
              v86 = MobileGestalt_copy_buildVersion_obj();

              if (v86)
              {
                v87 = sub_1171B0();
                v89 = v88;

                if (v82 == v87 && v83 == v89)
                {

                  v54 = v135;
                  v79(v138, v135);
                  v34 = v144;
                  v70 = v141;
                  goto LABEL_62;
                }

                v90 = sub_1179E0();

                v54 = v135;
                v79(v138, v135);
                v34 = v144;
                v70 = v141;
                if (v90)
                {
LABEL_62:
                  sub_CA944(v70, v131, type metadata accessor for UrsaIssue);
                  v91 = v132;
                  v92 = swift_isUniquelyReferenced_nonNull_native();
                  aBlock[0] = v91;
                  if ((v92 & 1) == 0)
                  {
                    sub_C7A04(0, v91[2] + 1, 1);
                    v91 = aBlock[0];
                  }

                  v94 = v91[2];
                  v93 = v91[3];
                  if (v94 >= v93 >> 1)
                  {
                    sub_C7A04(v93 > 1, v94 + 1, 1);
                    v91 = aBlock[0];
                  }

                  v91[2] = v94 + 1;
                  v132 = v91;
                  sub_CA944(v131, v91 + v143 + v94 * v34, type metadata accessor for UrsaIssue);
LABEL_59:
                  v76 += v34;
                  if (--v77)
                  {
                    continue;
                  }

                  v95 = v132[2];

                  v96 = _swiftEmptyArrayStorage;
                  v97 = v134;
                  v98 = v139;
                  v99 = v95;
                  while (2)
                  {
                    sub_CA6AC(v35, v97, type metadata accessor for UrsaIssue);
                    if (*(v97 + 48) == 1 && !*(v97 + 40))
                    {
                      v100 = v137;
                      sub_115750();
                      sub_1156A0();
                      v101 = *v140;
                      (*v140)(v100, v54);
                      v102 = v142[9];
                      if ((sub_1156C0() & 1) == 0)
                      {
                        goto LABEL_79;
                      }

                      v103 = (v134 + v142[11]);
                      v104 = *v103;
                      v105 = v103[1];
                      v106 = MobileGestalt_get_current_device();
                      if (!v106)
                      {
                        goto LABEL_91;
                      }

                      v107 = v106;
                      v108 = MobileGestalt_copy_buildVersion_obj();

                      if (!v108)
                      {
LABEL_79:
                        v101(v136, v54);
                        v97 = v134;
                        v98 = v139;
                        goto LABEL_80;
                      }

                      v109 = sub_1171B0();
                      v111 = v110;

                      if (v104 == v109 && v105 == v111)
                      {

                        v54 = v135;
                        v101(v136, v135);
                        v97 = v134;
                        v98 = v139;
                        v95 = v99;
                      }

                      else
                      {
                        v112 = sub_1179E0();

                        v54 = v135;
                        v101(v136, v135);
                        v97 = v134;
                        v98 = v139;
                        v95 = v99;
                        if ((v112 & 1) == 0)
                        {
LABEL_80:
                          sub_CA944(v97, v133, type metadata accessor for UrsaIssue);
                          v113 = swift_isUniquelyReferenced_nonNull_native();
                          aBlock[0] = v96;
                          if ((v113 & 1) == 0)
                          {
                            sub_C7A04(0, v96[2] + 1, 1);
                            v96 = aBlock[0];
                          }

                          v115 = v96[2];
                          v114 = v96[3];
                          if (v115 >= v114 >> 1)
                          {
                            sub_C7A04(v114 > 1, v115 + 1, 1);
                            v96 = aBlock[0];
                          }

                          v96[2] = v115 + 1;
                          sub_CA944(v133, v96 + v143 + v115 * v144, type metadata accessor for UrsaIssue);
                          v95 = v99;
LABEL_69:
                          v35 += v144;
                          if (!--v33)
                          {
                            v116 = v127;
                            v117 = v95;
                            goto LABEL_87;
                          }

                          continue;
                        }
                      }
                    }

                    break;
                  }

                  sub_CAF48(v97, type metadata accessor for UrsaIssue);
                  goto LABEL_69;
                }
              }

              else
              {
LABEL_57:
                v79(v138, v54);
                v34 = v144;
                v70 = v141;
              }
            }

            break;
          }

          sub_CAF48(v70, type metadata accessor for UrsaIssue);
          goto LABEL_59;
        }
      }
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

id sub_C2C6C()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_buildVersion_obj();

    if (v3)
    {
      v4 = sub_1171B0();
      v6 = v5;

      v7 = (v0 + *(type metadata accessor for UrsaIssue(0) + 48));
      v8 = v7[1];
      if (v8)
      {
        if (v4 == *v7 && v8 == v6)
        {

          v11 = 1;
        }

        else
        {
          v10 = sub_1179E0();

          v11 = v10 ^ 1;
        }
      }

      else
      {

        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_C2D48()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  sub_115750();
  sub_1156A0();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = type metadata accessor for UrsaIssue(0);
  v12 = *(v11 + 36);
  if ((sub_1156C0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = (v1 + *(v11 + 44));
  v14 = *v13;
  v15 = v13[1];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v17 = result;
    v18 = MobileGestalt_copy_buildVersion_obj();

    if (v18)
    {
      v19 = sub_1171B0();
      v21 = v20;

      if (v14 == v19 && v15 == v21)
      {
        v22 = 1;
      }

      else
      {
        v22 = sub_1179E0();
      }

      goto LABEL_10;
    }

LABEL_7:
    v22 = 0;
LABEL_10:
    v10(v9, v2);
    return (v22 & 1);
  }

  __break(1u);
  return result;
}

void sub_C2F24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_46F9C(&qword_1843B8, &qword_12B290);
    v2 = sub_117870();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_64F08(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_C3104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_46F9C(&qword_185988, &qword_12A5A0);
  v90 = *(v3 - 8);
  v4 = *(v90 + 64);
  __chkstk_darwin(v3);
  v6 = &v79 - v5;
  v92 = sub_46F9C(&qword_185990, &qword_12A5A8);
  v91 = *(v92 - 8);
  v7 = *(v91 + 64);
  __chkstk_darwin(v92);
  v9 = &v79 - v8;
  v96 = sub_46F9C(&qword_185998, &qword_12A5B0);
  v10 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v12 = &v79 - v11;
  v94 = sub_46F9C(&qword_1859A0, &qword_12A5B8);
  v13 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v79 - v14;
  v84 = sub_46F9C(&qword_1859A8, &qword_12A5C0);
  v83 = *(v84 - 8);
  v15 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = &v79 - v16;
  v81 = sub_46F9C(&qword_1859B0, &qword_12A5C8);
  v17 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v19 = &v79 - v18;
  v86 = sub_46F9C(&qword_1859B8, &qword_12A5D0);
  v20 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v22 = &v79 - v21;
  v23 = sub_46F9C(&qword_1859C0, &qword_12A5D8);
  v89 = *(v23 - 8);
  v24 = *(v89 + 64);
  __chkstk_darwin(v23);
  v87 = &v79 - v25;
  v26 = sub_46F9C(&qword_1859C8, &qword_12A5E0);
  v88 = *(v26 - 8);
  v27 = *(v88 + 64);
  __chkstk_darwin(v26);
  v85 = &v79 - v28;
  v93 = sub_46F9C(&qword_1859D0, &qword_12A5E8);
  v29 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  __chkstk_darwin(v30);
  if (*(a1 + 16))
  {
    __chkstk_darwin(v31);
    sub_46F9C(&qword_1859D8, &qword_12A5F0);
    sub_C8D54();
    sub_116750();
    sub_116370();
    v34 = sub_48800(&qword_185A60, &qword_185988, &qword_12A5A0);
    sub_116A30();

    (*(v90 + 8))(v6, v3);
    sub_116370();
    *&v100 = v3;
    *(&v100 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    v35 = v92;
    sub_116A60();

    (*(v91 + 8))(v9, v35);
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    v37 = &v12[*(v96 + 36)];
    *v37 = sub_CB2F8;
    v37[1] = v36;
    v37[2] = 0;
    v37[3] = 0;
    v38 = &qword_185998;
    v39 = &qword_12A5B0;
    sub_479B4(v12, v95, &qword_185998, &qword_12A5B0);
    swift_storeEnumTagMultiPayload();
    sub_C9218();
    sub_C94F8();

    sub_116470();
    v40 = v12;
  }

  else
  {
    *&v100 = 0xD000000000000058;
    *(&v100 + 1) = 0x80000000001358F0;
    v92 = &v79 - v32;
    v91 = v33;
    sub_4869C();
    v41 = sub_116900();
    v43 = v42;
    v79 = v23;
    v45 = v44;
    v47 = v46;
    KeyPath = swift_getKeyPath();
    v49 = sub_116720();
    v90 = v26;
    v50 = v49;
    v51 = swift_getKeyPath();
    v80 = a1;
    v52 = v45 & 1;
    LOBYTE(v98) = v45 & 1;
    v53 = sub_116B40();
    v54 = swift_getKeyPath();
    *&v100 = v41;
    *(&v100 + 1) = v43;
    LOBYTE(v101) = v52;
    *(&v101 + 1) = v47;
    *&v102 = KeyPath;
    BYTE8(v102) = 1;
    *&v103 = v51;
    *(&v103 + 1) = v50;
    *&v104 = v54;
    *(&v104 + 1) = v53;
    sub_46F9C(&qword_185A28, &qword_12A610);
    sub_C8FB8();
    v55 = v82;
    sub_116E60();
    sub_116EA0();
    sub_116190();
    (*(v83 + 32))(v19, v55, v84);
    v56 = &v19[*(v81 + 36)];
    v57 = v105;
    *(v56 + 4) = v104;
    *(v56 + 5) = v57;
    *(v56 + 6) = v106;
    v58 = v101;
    *v56 = v100;
    *(v56 + 1) = v58;
    v59 = v103;
    *(v56 + 2) = v102;
    *(v56 + 3) = v59;
    LOBYTE(v41) = sub_116600();
    sub_115FD0();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_548D0(v19, v22, &qword_1859B0, &qword_12A5C8);
    v68 = v86;
    v69 = &v22[*(v86 + 36)];
    *v69 = v41;
    *(v69 + 1) = v61;
    *(v69 + 2) = v63;
    *(v69 + 3) = v65;
    *(v69 + 4) = v67;
    v69[40] = 0;
    sub_116370();
    v70 = sub_C9358(&qword_185A70, &qword_1859B8, &qword_12A5D0, sub_C93DC);
    v71 = v87;
    sub_116A30();

    sub_488C8(v22, &qword_1859B8, &qword_12A5D0);
    sub_116370();
    v98 = v68;
    v99 = v70;
    swift_getOpaqueTypeConformance2();
    v72 = v85;
    v73 = v79;
    sub_116A60();

    (*(v89 + 8))(v71, v73);
    v74 = swift_allocObject();
    *(v74 + 16) = v80;
    v75 = v91;
    (*(v88 + 32))(v91, v72, v90);
    v76 = (v75 + *(v93 + 36));
    *v76 = sub_C9638;
    v76[1] = v74;
    v76[2] = 0;
    v76[3] = 0;
    v77 = v92;
    sub_C9640(v75, v92);
    v38 = &qword_1859D0;
    v39 = &qword_12A5E8;
    sub_479B4(v77, v95, &qword_1859D0, &qword_12A5E8);
    swift_storeEnumTagMultiPayload();
    sub_C9218();
    sub_C94F8();

    sub_116470();
    v40 = v77;
  }

  return sub_488C8(v40, v38, v39);
}

double sub_C3D60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v58 = a2;
  v59 = a3;
  v4 = type metadata accessor for UrsaIssue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_185D10, &qword_12AA78);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = sub_46F9C(&qword_185D18, &unk_12AA80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  sub_CA6AC(a1, &v54 - v19, type metadata accessor for UrsaIssue);
  v21 = *(v5 + 56);
  v22 = 1;
  v21(v20, 0, 1, v4);
  v23 = *(v58 + 16);
  v56 = v23;
  if (v23)
  {
    sub_CA6AC(v58 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v23 - 1), v17, type metadata accessor for UrsaIssue);
    v22 = 0;
  }

  v21(v17, v22, 1, v4);
  v24 = *(v8 + 48);
  sub_479B4(v20, v11, &qword_185D18, &unk_12AA80);
  sub_479B4(v17, &v11[v24], &qword_185D18, &unk_12AA80);
  v25 = *(v5 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v26 = v57;
    sub_479B4(v11, v57, &qword_185D18, &unk_12AA80);
    if (v25(&v11[v24], 1, v4) != 1)
    {
      v27 = v26;
      v28 = v55;
      sub_CA944(&v11[v24], v55, type metadata accessor for UrsaIssue);
      v29 = sub_C97AC(v27, v28);
      sub_CAF48(v28, type metadata accessor for UrsaIssue);
      sub_488C8(v17, &qword_185D18, &unk_12AA80);
      sub_488C8(v20, &qword_185D18, &unk_12AA80);
      sub_CAF48(v27, type metadata accessor for UrsaIssue);
      sub_488C8(v11, &qword_185D18, &unk_12AA80);
      if (v29)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_CB1BC(&v69);
      goto LABEL_15;
    }

    sub_488C8(v17, &qword_185D18, &unk_12AA80);
    sub_488C8(v20, &qword_185D18, &unk_12AA80);
    sub_CAF48(v26, type metadata accessor for UrsaIssue);
LABEL_8:
    sub_488C8(v11, &qword_185D10, &qword_12AA78);
    goto LABEL_9;
  }

  sub_488C8(v17, &qword_185D18, &unk_12AA80);
  sub_488C8(v20, &qword_185D18, &unk_12AA80);
  if (v25(&v11[v24], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_488C8(v11, &qword_185D18, &unk_12AA80);
LABEL_11:
  v30 = 0xD000000000000058;
  if (v56)
  {
    v30 = 0xD000000000000060;
    v31 = "will not update.";
  }

  else
  {
    v31 = "are listed here.";
  }

  *&v60 = v30;
  *(&v60 + 1) = v31 | 0x8000000000000000;
  sub_4869C();
  v58 = sub_116900();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  KeyPath = swift_getKeyPath();
  v39 = sub_116720();
  v40 = swift_getKeyPath();
  v41 = v35 & 1;
  v67 = v35 & 1;
  v42 = sub_116B40();
  v43 = swift_getKeyPath();
  v44 = sub_116660();
  sub_115FD0();
  v68 = 0;
  *&v60 = v58;
  *(&v60 + 1) = v33;
  LOBYTE(v61) = v41;
  *(&v61 + 1) = v37;
  *&v62 = KeyPath;
  BYTE8(v62) = 1;
  *&v63 = v40;
  *(&v63 + 1) = v39;
  *&v64 = v43;
  *(&v64 + 1) = v42;
  LOBYTE(v65) = v44;
  *(&v65 + 1) = v45;
  *&v66[0] = v46;
  *(&v66[0] + 1) = v47;
  *&v66[1] = v48;
  BYTE8(v66[1]) = 0;
  nullsub_4(&v60);
  v73 = v64;
  v74 = v65;
  v75[0] = v66[0];
  *(v75 + 9) = *(v66 + 9);
  v69 = v60;
  v70 = v61;
  v71 = v62;
  v72 = v63;
LABEL_15:
  v49 = v74;
  v50 = v59;
  v59[4] = v73;
  v50[5] = v49;
  v50[6] = v75[0];
  *(v50 + 105) = *(v75 + 9);
  v51 = v70;
  *v50 = v69;
  v50[1] = v51;
  result = *&v71;
  v53 = v72;
  v50[2] = v71;
  v50[3] = v53;
  return result;
}

uint64_t sub_C4360(uint64_t a1)
{
  v2 = sub_1160C0();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_116270();
}

uint64_t sub_C4428@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v193 = a2;
  v3 = sub_46F9C(&qword_185C30, &qword_12A918);
  v186 = *(v3 - 8);
  v187 = v3;
  v4 = *(v186 + 64);
  __chkstk_darwin(v3);
  v170 = &v163 - v5;
  v204 = sub_46F9C(&qword_185C38, &qword_12A920);
  v6 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v188 = &v163 - v7;
  v8 = sub_46F9C(&qword_185AA8, qword_12A678);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v194 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v163 - v12;
  v13 = sub_115650();
  v205 = *(v13 - 8);
  v14 = *(v205 + 64);
  __chkstk_darwin(v13);
  v183 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v173 = &v163 - v16;
  __chkstk_darwin(v17);
  v167 = &v163 - v18;
  v190 = sub_46F9C(&qword_185C40, &qword_12A928);
  v19 = *(*(v190 - 1) + 64);
  __chkstk_darwin(v190);
  v172 = &v163 - v20;
  v201 = sub_46F9C(&qword_185C48, &qword_12A930);
  v21 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v203 = &v163 - v22;
  v184 = sub_46F9C(&qword_185C50, &qword_12A938);
  v23 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v185 = &v163 - v24;
  v202 = sub_46F9C(&qword_185C58, &qword_12A940);
  v25 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v189 = &v163 - v26;
  v27 = sub_46F9C(&qword_185C60, &qword_12A948);
  v176 = *(v27 - 8);
  v177 = v27;
  v28 = *(v176 + 64);
  __chkstk_darwin(v27);
  v168 = &v163 - v29;
  v30 = type metadata accessor for UrsaView(0);
  v174 = *(v30 - 8);
  v31 = *(v174 + 64);
  __chkstk_darwin(v30 - 8);
  v175 = &v163 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_46F9C(&qword_185C68, &unk_12A950);
  v32 = *(*(v179 - 8) + 64);
  __chkstk_darwin(v179);
  v181 = &v163 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v191 = &v163 - v35;
  v178 = sub_46F9C(&qword_184EA0, &qword_129180);
  v36 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v180 = &v163 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v192 = &v163 - v39;
  v182 = sub_46F9C(&qword_185C70, &qword_12A960);
  v171 = *(v182 - 8);
  v40 = *(v171 + 64);
  __chkstk_darwin(v182);
  v165 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v169 = &v163 - v43;
  v44 = sub_46F9C(&qword_185C78, &qword_12A968);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v200 = &v163 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v199 = &v163 - v48;
  v207 = sub_116320();
  v214 = 1;
  sub_C5A58(a1, &v210);
  v216 = *v211;
  v217 = *&v211[16];
  v218 = *&v211[32];
  v215 = v210;
  v220[1] = *v211;
  v220[2] = *&v211[16];
  v220[3] = *&v211[32];
  v220[4] = *&v211[48];
  v219 = *&v211[48];
  v220[0] = v210;
  sub_479B4(&v215, v208, &qword_185C80, &qword_12A970);
  sub_488C8(v220, &qword_185C80, &qword_12A970);
  *&v213[23] = v216;
  *&v213[39] = v217;
  *&v213[55] = v218;
  *&v213[71] = v219;
  *&v213[7] = v215;
  v206 = v214;
  *&v210 = sub_C5CD8();
  *(&v210 + 1) = v49;
  sub_4869C();
  v50 = sub_116900();
  v196 = v51;
  v197 = v50;
  v195 = v52;
  v198 = v53;
  v54 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    v55 = v205;
    if (v54)
    {
      if (sub_C2C6C())
      {
        v56 = 1;
        v57 = v199;
        v58 = v172;
      }

      else
      {
        v120 = v166;
        sub_115640();
        v121 = v13;
        if ((*(v55 + 48))(v120, 1, v13) == 1)
        {
          sub_488C8(v120, &qword_185AA8, qword_12A678);
          v122 = 1;
          v57 = v199;
          v58 = v172;
          v123 = v165;
        }

        else
        {
          v126 = *(v55 + 32);
          v127 = v167;
          v126(v167, v120, v121);
          v128 = v192;
          sub_116DD0();
          v129 = sub_116660();
          sub_115FD0();
          v130 = v128 + *(v178 + 36);
          *v130 = v129;
          *(v130 + 8) = v131;
          *(v130 + 16) = v132;
          *(v130 + 24) = v133;
          *(v130 + 32) = v134;
          *(v130 + 40) = 0;
          v194 = sub_116370();
          v188 = v135;
          v136 = *(v55 + 16);
          v137 = v173;
          v164 = v121;
          v136(v173, v127, v121);
          v138 = (*(v55 + 80) + 16) & ~*(v55 + 80);
          v139 = swift_allocObject();
          v126((v139 + v138), v137, v121);
          v140 = v191;
          sub_116D10();
          v141 = sub_116AF0();
          KeyPath = swift_getKeyPath();
          v143 = v180;
          v144 = (v140 + *(v179 + 36));
          *v144 = KeyPath;
          v144[1] = v141;
          v145 = v192;
          sub_479B4(v192, v143, &qword_184EA0, &qword_129180);
          v146 = v181;
          sub_479B4(v140, v181, &qword_185C68, &unk_12A950);
          v147 = v168;
          sub_479B4(v143, v168, &qword_184EA0, &qword_129180);
          v148 = sub_46F9C(&qword_185CD0, &unk_12A9C0);
          sub_479B4(v146, v147 + *(v148 + 48), &qword_185C68, &unk_12A950);
          sub_488C8(v140, &qword_185C68, &unk_12A950);
          sub_488C8(v145, &qword_184EA0, &qword_129180);
          (*(v55 + 8))(v167, v164);
          sub_488C8(v146, &qword_185C68, &unk_12A950);
          sub_488C8(v143, &qword_184EA0, &qword_129180);
          v149 = v147;
          v123 = v165;
          sub_548D0(v149, v165, &qword_185C60, &qword_12A948);
          v122 = 0;
          v57 = v199;
          v58 = v172;
        }

        (*(v176 + 56))(v123, v122, 1, v177);
        sub_548D0(v123, v58, &qword_185C70, &qword_12A960);
        v56 = 0;
      }

      (*(v171 + 56))(v58, v56, 1, v182);
      v97 = &qword_185C40;
      v98 = &qword_12A928;
      sub_479B4(v58, v185, &qword_185C40, &qword_12A928);
      swift_storeEnumTagMultiPayload();
      sub_CA4C8();
      sub_CA578();
      v150 = v189;
      sub_116470();
      sub_479B4(v150, v203, &qword_185C58, &qword_12A940);
      swift_storeEnumTagMultiPayload();
      sub_CA43C();
      sub_CA5FC();
      sub_116470();
      v125 = v150;
    }

    else
    {
      if (sub_C2D48())
      {
        v100 = v192;
        sub_116DD0();
        v101 = sub_116660();
        sub_115FD0();
        v102 = v100 + *(v178 + 36);
        *v102 = v101;
        *(v102 + 8) = v103;
        *(v102 + 16) = v104;
        *(v102 + 24) = v105;
        *(v102 + 32) = v106;
        *(v102 + 40) = 0;
        sub_116370();
        v205 = v107;
        v108 = v175;
        sub_CA6AC(a1, v175, type metadata accessor for UrsaView);
        v109 = (*(v174 + 80) + 16) & ~*(v174 + 80);
        v110 = swift_allocObject();
        sub_CA944(v108, v110 + v109, type metadata accessor for UrsaView);
        v111 = v191;
        sub_116D10();
        v112 = sub_116AF0();
        v113 = swift_getKeyPath();
        v114 = v180;
        v115 = (v111 + *(v179 + 36));
        *v115 = v113;
        v115[1] = v112;
        sub_479B4(v100, v114, &qword_184EA0, &qword_129180);
        v116 = v181;
        sub_479B4(v111, v181, &qword_185C68, &unk_12A950);
        v117 = v168;
        sub_479B4(v114, v168, &qword_184EA0, &qword_129180);
        v118 = sub_46F9C(&qword_185CD0, &unk_12A9C0);
        sub_479B4(v116, v117 + *(v118 + 48), &qword_185C68, &unk_12A950);
        sub_488C8(v111, &qword_185C68, &unk_12A950);
        sub_488C8(v100, &qword_184EA0, &qword_129180);
        sub_488C8(v116, &qword_185C68, &unk_12A950);
        sub_488C8(v114, &qword_184EA0, &qword_129180);
        v58 = v169;
        sub_548D0(v117, v169, &qword_185C60, &qword_12A948);
        v119 = 0;
      }

      else
      {
        v119 = 1;
        v58 = v169;
      }

      (*(v176 + 56))(v58, v119, 1, v177);
      v97 = &qword_185C70;
      v98 = &qword_12A960;
      sub_479B4(v58, v185, &qword_185C70, &qword_12A960);
      swift_storeEnumTagMultiPayload();
      sub_CA4C8();
      sub_CA578();
      v124 = v189;
      sub_116470();
      sub_479B4(v124, v203, &qword_185C58, &qword_12A940);
      swift_storeEnumTagMultiPayload();
      sub_CA43C();
      sub_CA5FC();
      v57 = v199;
      sub_116470();
      v125 = v124;
    }

    sub_488C8(v125, &qword_185C58, &qword_12A940);
    v99 = v58;
  }

  else
  {
    *&v210 = *(a1 + 40);
    v221._countAndFlagsBits = sub_1179B0();
    strcpy(&v210, "livability://");
    HIWORD(v210) = -4864;
    sub_117220(v221);

    v59 = v194;
    sub_115640();

    v60 = v205;
    if ((*(v205 + 48))(v59, 1, v13) == 1)
    {
      sub_488C8(v194, &qword_185AA8, qword_12A678);
      v61 = v188;
      (*(v186 + 56))(v188, 1, 1, v187);
    }

    else
    {
      v190 = *(v60 + 32);
      v62 = v183;
      v190(v183, v194, v13);
      v63 = v192;
      sub_116DD0();
      v64 = sub_116660();
      v164 = v13;
      v65 = v64;
      sub_115FD0();
      v66 = v63 + *(v178 + 36);
      *v66 = v65;
      *(v66 + 8) = v67;
      *(v66 + 16) = v68;
      *(v66 + 24) = v69;
      *(v66 + 32) = v70;
      *(v66 + 40) = 0;
      v189 = sub_116370();
      v184 = v72;
      v185 = v71;
      LODWORD(v182) = v73;
      v74 = v175;
      sub_CA6AC(a1, v175, type metadata accessor for UrsaView);
      v194 = v54;
      v75 = v31;
      v76 = v205;
      v77 = v173;
      v78 = v164;
      (*(v205 + 16))(v173, v62, v164);
      v79 = (*(v174 + 80) + 16) & ~*(v174 + 80);
      v80 = (v75 + *(v76 + 80) + v79) & ~*(v76 + 80);
      v81 = swift_allocObject();
      sub_CA944(v74, v81 + v79, type metadata accessor for UrsaView);
      v190((v81 + v80), v77, v78);
      v82 = v191;
      sub_116D10();
      v83 = sub_116AF0();
      v84 = swift_getKeyPath();
      v85 = (v82 + *(v179 + 36));
      *v85 = v84;
      v85[1] = v83;
      strcpy(&v210, "rdar://");
      *(&v210 + 1) = 0xE700000000000000;
      v208[0] = v194;
      v222._countAndFlagsBits = sub_1179B0();
      sub_117220(v222);

      *&v210 = sub_116AF0();
      v86 = sub_116890();
      v88 = v87;
      LOBYTE(v79) = v89;
      v194 = v90;

      v91 = v192;
      v92 = v180;
      sub_479B4(v192, v180, &qword_184EA0, &qword_129180);
      v93 = v181;
      sub_479B4(v82, v181, &qword_185C68, &unk_12A950);
      LOBYTE(v79) = v79 & 1;
      LOBYTE(v210) = v79;
      v94 = v170;
      sub_479B4(v92, v170, &qword_184EA0, &qword_129180);
      v95 = sub_46F9C(&qword_185CC8, &qword_12A9B8);
      sub_479B4(v93, v94 + *(v95 + 48), &qword_185C68, &unk_12A950);
      v96 = v94 + *(v95 + 64);
      *v96 = v86;
      *(v96 + 8) = v88;
      *(v96 + 16) = v79;
      *(v96 + 24) = v194;
      sub_488B8(v86, v88, v79);

      sub_488C8(v191, &qword_185C68, &unk_12A950);
      sub_488C8(v91, &qword_184EA0, &qword_129180);
      (*(v205 + 8))(v183, v164);
      sub_48928(v86, v88, v210);

      sub_488C8(v93, &qword_185C68, &unk_12A950);
      sub_488C8(v92, &qword_184EA0, &qword_129180);
      v61 = v188;
      sub_548D0(v94, v188, &qword_185C30, &qword_12A918);
      (*(v186 + 56))(v61, 0, 1, v187);
    }

    v97 = &qword_185C38;
    v98 = &qword_12A920;
    sub_479B4(v61, v203, &qword_185C38, &qword_12A920);
    swift_storeEnumTagMultiPayload();
    sub_CA43C();
    sub_CA5FC();
    v57 = v199;
    sub_116470();
    v99 = v61;
  }

  sub_488C8(v99, v97, v98);
  v151 = v200;
  sub_479B4(v57, v200, &qword_185C78, &qword_12A968);
  v208[0] = v207;
  v208[1] = 0;
  v209[0] = v206;
  *&v209[1] = *v213;
  *&v209[17] = *&v213[16];
  *&v209[65] = *&v213[64];
  *&v209[49] = *&v213[48];
  *&v209[33] = *&v213[32];
  v152 = *&v213[79];
  *&v209[80] = *&v213[79];
  v153 = *v209;
  v154 = v193;
  *v193 = v207;
  v154[1] = v153;
  v155 = *&v209[16];
  v156 = *&v209[32];
  v157 = *&v209[64];
  v154[4] = *&v209[48];
  v154[5] = v157;
  v154[2] = v155;
  v154[3] = v156;
  *(v154 + 12) = v152;
  *(v154 + 13) = 0;
  *(v154 + 112) = 1;
  v159 = v196;
  v158 = v197;
  *(v154 + 15) = v197;
  *(v154 + 16) = v159;
  v160 = v195 & 1;
  *(v154 + 136) = v195 & 1;
  *(v154 + 18) = v198;
  v161 = v154 + *(sub_46F9C(&qword_185CB8, &qword_12A978) + 80);
  sub_479B4(v151, v161, &qword_185C78, &qword_12A968);
  sub_479B4(v208, &v210, &qword_185CC0, &qword_12A980);
  sub_488B8(v158, v159, v160);

  sub_488C8(v57, &qword_185C78, &qword_12A968);
  sub_488C8(v151, &qword_185C78, &qword_12A968);
  sub_48928(v158, v159, v160);

  v210 = v207;
  v211[0] = v206;
  *&v211[33] = *&v213[32];
  *&v211[49] = *&v213[48];
  *v212 = *&v213[64];
  *&v212[15] = *&v213[79];
  *&v211[1] = *v213;
  *&v211[17] = *&v213[16];
  return sub_488C8(&v210, &qword_185CC0, &qword_12A980);
}

uint64_t sub_C5A58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_116360();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v26 = a1[3];
  v27 = a1[4];
  sub_4869C();

  v6 = sub_116900();
  v8 = v7;
  v10 = v9;
  sub_116730();
  v11 = sub_1168C0();
  v13 = v12;
  v24 = v14;
  v25 = v15;

  sub_48928(v6, v8, v10 & 1);

  if (a1[7])
  {
    sub_116350();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_116340(v28);
    sub_116330();
    v29._countAndFlagsBits = 1919430437;
    v29._object = 0xE400000000000000;
    sub_116340(v29);
    sub_116380();
    v16 = sub_1168E0();
    v18 = v17;
    v20 = v19;
    v22 = v21 & 1;
    sub_488B8(v16, v17, v21 & 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v22 = 0;
    v20 = 0;
  }

  sub_488B8(v11, v13, v24 & 1);

  sub_CAEC0(v16, v18, v22, v20);
  sub_CAF04(v16, v18, v22, v20);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v16;
  *(a2 + 56) = v18;
  *(a2 + 64) = v22;
  *(a2 + 72) = v20;
  sub_CAF04(v16, v18, v22, v20);
  sub_48928(v11, v13, v24 & 1);
}

uint64_t sub_C5CD8()
{
  v1 = v0;
  v2 = type metadata accessor for UrsaIssue(0);
  if (*(v0 + v2[10]) != 1)
  {
    sub_117710(89);
    v56._countAndFlagsBits = 0xD00000000000003ALL;
    v56._object = 0x8000000000135970;
    sub_117220(v56);
    v57._countAndFlagsBits = sub_1179B0();
    sub_117220(v57);

    v58._countAndFlagsBits = 0xD00000000000001DLL;
    v58._object = 0x80000000001359B0;
    sub_117220(v58);
  }

  if (*(v0 + 48) != 1)
  {
    v55 = 0;
    sub_117710(72);
    v75._countAndFlagsBits = 0xD000000000000021;
    v75._object = 0x80000000001359D0;
    sub_117220(v75);
    sub_117220(*(v0 + 24));
    v76._countAndFlagsBits = 0xD000000000000020;
    v76._object = 0x8000000000135A00;
    sub_117220(v76);
    v24 = sub_8D8B4();
    v25 = v2[9];
    v26 = v24[6];
    isa = sub_1156B0().super.isa;
    v28 = [v26 stringFromDate:isa];

    v29 = sub_1171B0();
    v31 = v30;

    v77._countAndFlagsBits = v29;
    v77._object = v31;
    sub_117220(v77);

    v78._countAndFlagsBits = 46;
    v78._object = 0xE100000000000000;
    sub_117220(v78);
    v23._countAndFlagsBits = 0;
    goto LABEL_15;
  }

  if (!*(v0 + 40))
  {
    v32 = sub_C2D48();
    if (v32)
    {
      v33 = 0xD000000000000023;
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = 0x8000000000135B40;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    if (*(v0 + 56) < 1)
    {
      sub_117710(49);

      v55 = 0x20737365636F7250;
      sub_117220(*(v0 + 24));
      v84._object = 0x8000000000135B20;
      v84._countAndFlagsBits = 0xD00000000000001FLL;
      sub_117220(v84);
      v44 = sub_8D8B4();
      v45 = v2[9];
      v46 = v44[6];
      v47 = sub_1156B0().super.isa;
      v48 = [v46 stringFromDate:v47];

      v49 = sub_1171B0();
      v51 = v50;

      v85._countAndFlagsBits = v49;
      v85._object = v51;
      sub_117220(v85);

      v43._countAndFlagsBits = 46;
      v43._object = 0xE100000000000000;
    }

    else
    {
      v55 = 0;
      sub_117710(69);
      v79._countAndFlagsBits = 0x20737365636F7250;
      v79._object = 0xE900000000000027;
      sub_117220(v79);
      sub_117220(*(v0 + 24));
      v80._object = 0x8000000000135B20;
      v80._countAndFlagsBits = 0xD00000000000001FLL;
      sub_117220(v80);
      v35 = sub_8D8B4();
      v36 = v2[9];
      v37 = v35[6];
      v38 = sub_1156B0().super.isa;
      v39 = [v37 stringFromDate:v38];

      v40 = sub_1171B0();
      v42 = v41;

      v81._countAndFlagsBits = v40;
      v81._object = v42;
      sub_117220(v81);

      v82._countAndFlagsBits = 0x6172206120746120;
      v82._object = 0xEE0020666F206574;
      sub_117220(v82);
      v83._countAndFlagsBits = sub_1179B0();
      sub_117220(v83);

      v43._countAndFlagsBits = 0x2E72682F25;
      v43._object = 0xE500000000000000;
    }

    sub_117220(v43);
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    sub_117220(v86);

    v87._countAndFlagsBits = v33;
    v87._object = v34;
    sub_117220(v87);
    goto LABEL_27;
  }

  sub_117710(141);
  v59._countAndFlagsBits = 0xD000000000000031;
  v59._object = 0x8000000000135A30;
  sub_117220(v59);
  v60 = *(v0 + 24);
  object = v60._object;
  countAndFlagsBits = v60._countAndFlagsBits;
  sub_117220(v60);
  v61._countAndFlagsBits = 0x206E6F2027;
  v61._object = 0xE500000000000000;
  sub_117220(v61);
  v3 = sub_8D8B4();
  v4 = v2[9];
  v5 = v3[6];
  v6 = sub_1156B0().super.isa;
  v7 = [v5 stringFromDate:v6];

  v8 = sub_1171B0();
  v10 = v9;

  v62._countAndFlagsBits = v8;
  v62._object = v10;
  sub_117220(v62);

  v63._countAndFlagsBits = 0xD00000000000001ELL;
  v63._object = 0x8000000000135A70;
  sub_117220(v63);
  v11 = (v1 + v2[12]);
  v12 = *v11;
  v13 = v11[1];
  if (v13)
  {
    v14 = *v11;
  }

  else
  {
    v14 = 0xD000000000000013;
  }

  if (v13)
  {
    v15 = v11[1];
  }

  else
  {
    v15 = 0x8000000000135A90;
  }

  v64._countAndFlagsBits = v14;
  v64._object = v15;
  sub_117220(v64);

  v65._countAndFlagsBits = 46;
  v65._object = 0xE100000000000000;
  sub_117220(v65);
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_117220(v66);
  v67._countAndFlagsBits = 0xD000000000000030;
  v67._object = 0x8000000000135AB0;
  sub_117220(v67);
  v16 = 0;
  if (v13 && (sub_C2C6C() & 1) != 0)
  {

    v55 = 0;
    sub_117710(106);
    v68._countAndFlagsBits = 0xD000000000000031;
    v68._object = 0x8000000000135A30;
    sub_117220(v68);
    v69._object = object;
    v69._countAndFlagsBits = countAndFlagsBits;
    sub_117220(v69);
    v70._countAndFlagsBits = 0x206E6F2027;
    v70._object = 0xE500000000000000;
    sub_117220(v70);
    v17 = v3[6];
    v18 = sub_1156B0().super.isa;
    v19 = [v17 stringFromDate:v18];

    v20 = sub_1171B0();
    v22 = v21;

    v71._countAndFlagsBits = v20;
    v71._object = v22;
    sub_117220(v71);

    v72._countAndFlagsBits = 0xD00000000000002ALL;
    v72._object = 0x8000000000135AF0;
    sub_117220(v72);
    v73._countAndFlagsBits = v12;
    v73._object = v13;
    sub_117220(v73);
    v74._countAndFlagsBits = 11819;
    v74._object = 0xE200000000000000;
    sub_117220(v74);
    v23._countAndFlagsBits = 0;
LABEL_15:
    v23._object = 0xE000000000000000;
    sub_117220(v23);
LABEL_27:

    return v55;
  }

  return v16;
}

uint64_t sub_C643C(uint64_t a1)
{
  v2 = sub_1160C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A77D0(sub_C65E0, 0);
  v7 = sub_117170();
  aBlock[4] = sub_C65FC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_83460;
  aBlock[3] = &unk_168C90;
  v8 = _Block_copy(aBlock);
  AnalyticsSendEventLazy();
  _Block_release(v8);

  v9 = a1 + *(type metadata accessor for UrsaView(0) + 20);
  sub_C7804(v6);
  sub_C66D8(v6);
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_C65FC()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000000135D00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

void sub_C66D8(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185AA8, qword_12A678);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_115650();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  if (*(v1 + 48) == 1 && !*(v1 + 40))
  {
    v34 = v16;
    v19 = *(v1 + 32);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(v1 + 24) & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v33 = a1;
      v21 = objc_opt_self();
      v22 = sub_117170();
      v23 = (v1 + *(type metadata accessor for UrsaIssue(0) + 44));
      v24 = *v23;
      v25 = v23[1];
      v26 = sub_117170();
      v27 = [v21 createMetadataFile:v22 buildVersion:v26];

      if (v27)
      {
        sub_1171B0();
        v29 = v28;

        if (v29)
        {
          sub_C71E8(v29, v9);

          if ((*(v11 + 48))(v9, 1, v34) == 1)
          {
            sub_488C8(v9, &qword_185AA8, qword_12A678);
            sub_A7800(sub_C75F0, 0);
          }

          else
          {
            v32 = v34;
            (*(v11 + 32))(v18, v9, v34);
            sub_1160B0();
            (*(v11 + 8))(v18, v32);
          }

          return;
        }
      }
    }

    else
    {
      sub_A7800(sub_C75B8, 0);
    }

    sub_A7800(sub_C75D4, 0);
    sub_C71E8(0, v6);
    if ((*(v11 + 48))(v6, 1, v34) == 1)
    {
      sub_488C8(v6, &qword_185AA8, qword_12A678);
    }

    else
    {
      v30 = v6;
      v31 = v34;
      (*(v11 + 32))(v14, v30, v34);
      sub_1160B0();
      (*(v11 + 8))(v14, v31);
    }
  }
}

unint64_t sub_C6A90()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000000135D50;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

uint64_t sub_C6B6C(uint64_t a1)
{
  v2 = sub_1160C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A77D0(sub_C6D1C, 0);
  v7 = sub_117170();
  aBlock[4] = sub_C6D38;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_83460;
  aBlock[3] = &unk_168CE0;
  v8 = _Block_copy(aBlock);
  AnalyticsSendEventLazy();
  _Block_release(v8);

  v9 = a1 + *(type metadata accessor for UrsaView(0) + 20);
  sub_C7804(v6);
  sub_1160B0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_C6D38()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000000135DA0;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

uint64_t sub_C6E14@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1163F0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_46F9C(&qword_185A98, &qword_12A668);
  sub_C4428(v1, (a1 + *(v3 + 44)));
  v4 = sub_116610();
  sub_115FD0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_46F9C(&qword_185AA0, &qword_12A670);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

Swift::Int sub_C6F88()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_117A90();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v1);
  return sub_117AD0();
}

void sub_C6FF4()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v1);
}

Swift::Int sub_C7044()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_117A90();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v1);
  return sub_117AD0();
}

uint64_t sub_C70AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_C70E8()
{
  v0 = kPLHPDConfigPath;
  v1 = sub_1171B0();
  v3 = v2;
  v4 = [objc_allocWithZone(NSDictionary) initWithContentsOfFile:v0];
  if (v4)
  {
    v7[5] = 0;
    v5 = v4;
    sub_117060();
  }

  __chkstk_darwin(v4);
  v7[2] = v1;
  v7[3] = v3;
  sub_A7800(sub_CA3C0, v7);

  return 0;
}

uint64_t sub_C71E8@<X0>(NSString a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_46F9C(&qword_185AA8, qword_12A678);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_C70E8();
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  if (!*(v10 + 16))
  {
    goto LABEL_16;
  }

  v12 = sub_64F08(1634955893, 0xE400000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_6AD00(*(v11 + 56) + 32 * v12, v34);

  sub_46F9C(&qword_183580, &qword_1259A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = v33;
  if (!*(v33 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_64F08(0x6378457265776F70, 0xEF736E6F69747065);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_6AD00(*(v14 + 56) + 32 * v15, v34);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v28 = sub_C7580;
LABEL_18:
    sub_A7800(v28, 0);
    v29 = sub_115650();
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  v17 = v33;
  if (!*(v33 + 16) || (v18 = sub_64F08(0x7261646172, 0xE500000000000000), (v19 & 1) == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_6AD00(*(v17 + 56) + 32 * v18, v34);

  sub_46F9C(&qword_185C28, &qword_12A910);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v33 + 16))
  {

    v28 = sub_C759C;
    goto LABEL_18;
  }

  v20.super.isa = sub_117050().super.isa;

  v21 = *(v3 + 24);
  v22 = *(v3 + 32);
  v23 = sub_117170();
  v24 = v3 + *(type metadata accessor for UrsaIssue(0) + 36);
  v25.super.isa = sub_1156B0().super.isa;
  if (a1)
  {
    a1 = sub_117170();
  }

  v26 = [objc_opt_self() generateTTRURLWithRadarParams:v20.super.isa procName:v23 violationTime:v25.super.isa metadataPath:a1];

  if (v26)
  {
    sub_115630();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v31 = sub_115650();
  (*(*(v31 - 8) + 56))(v9, v27, 1, v31);
  return sub_548D0(v9, a2, &qword_185AA8, qword_12A678);
}

void sub_C760C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_117200();
  sub_117AA0(v0[2]);
  v4 = v0[3];
  v5 = v0[4];
  sub_117200();
  v6 = v0[5];
  if (*(v0 + 48) == 1)
  {
    v6 = v6 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v6);
  sub_117AA0(v0[7]);
  v7 = type metadata accessor for UrsaIssue(0);
  v8 = v7[9];
  sub_115760();
  sub_C8EA0(&qword_183548, &type metadata accessor for Date);
  sub_1170D0();
  sub_117AA0(*(v1 + v7[10]));
  v9 = (v1 + v7[11]);
  v10 = *v9;
  v11 = v9[1];
  sub_117200();
  v12 = (v1 + v7[12]);
  if (v12[1])
  {
    v13 = *v12;
    sub_117AB0(1u);

    sub_117200();
  }

  else
  {
    sub_117AB0(0);
  }
}

Swift::Int sub_C7780()
{
  sub_117A90();
  sub_C760C();
  return sub_117AD0();
}

Swift::Int sub_C77C4()
{
  sub_117A90();
  sub_C760C();
  return sub_117AD0();
}

uint64_t sub_C7804@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1162F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_46F9C(&qword_185A90, &qword_12A660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_479B4(v2, &v17 - v11, &qword_185A90, &qword_12A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1160C0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1174D0();
    v16 = sub_1165F0();
    sub_1159B0();

    sub_1162E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

size_t sub_C7A04(size_t a1, int64_t a2, char a3)
{
  result = sub_C7A24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_C7A24(size_t result, int64_t a2, char a3, void *a4)
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

  sub_46F9C(&qword_185CF0, &qword_12A9E8);
  v10 = *(type metadata accessor for UrsaIssue(0) - 8);
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
  v15 = *(type metadata accessor for UrsaIssue(0) - 8);
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

uint64_t sub_C7BFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_116220();
  *a1 = result;
  return result;
}

size_t sub_C7C50(size_t result, int64_t a2, char a3, void *a4)
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

  sub_46F9C(&qword_185CF0, &qword_12A9E8);
  v10 = *(type metadata accessor for UrsaIssue(0) - 8);
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
  v15 = *(type metadata accessor for UrsaIssue(0) - 8);
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

void *sub_C7E28(void *a1)
{
  v2 = type metadata accessor for UrsaIssue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v72 - v8;
  v10 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v72 - v12;
  v14 = sub_115760();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v72 - v20;
  sub_A77D0(sub_C6EC4, 0);
  if (a1)
  {
    v92 = v19;
    v21 = a1;
    sub_A77D0(sub_C6EFC, 0);
    *&v96 = 0xD000000000000018;
    *(&v96 + 1) = 0x8000000000135FA0;
    v22 = sub_117A10();
    v94 = v21;
    v23 = [v21 __swift_objectForKeyedSubscript:v22];
    swift_unknownObjectRelease();
    if (v23)
    {
      sub_117660();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v98[0] = v96;
    v98[1] = v97;
    if (*(&v97 + 1))
    {
      sub_46F9C(&qword_185D20, &qword_12AA98);
      if (swift_dynamicCast())
      {
        v90 = v13;
        v91 = v7;
        v24 = v95;
        v25 = *(v95 + 16);
        if (v25)
        {
          v80 = v3;
          v81 = v2;
          v73 = (v15 + 32);
          v79 = (v15 + 56);
          v74 = (v15 + 48);
          v78 = 0x8000000000135FC0;
          v77 = (v15 + 16);
          v26 = &_swiftEmptyArrayStorage;
          v76 = (v15 + 8);
          v27 = 32;
          v75 = 0xD00000000000001BLL;
          while (1)
          {
            v30 = *(v24 + v27);
            if (!*(v30 + 16))
            {
              break;
            }

            v31 = *(v24 + v27);

            v32 = sub_64F08(0x617373654D697264, 0xEA00000000006567);
            if ((v33 & 1) == 0)
            {
              goto LABEL_16;
            }

            sub_6AD00(*(v30 + 56) + 32 * v32, v98);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_16;
            }

            v34 = HIBYTE(*(&v96 + 1)) & 0xFLL;
            if ((*(&v96 + 1) & 0x2000000000000000) == 0)
            {
              v34 = v96 & 0xFFFFFFFFFFFFLL;
            }

            if (!v34)
            {

LABEL_16:

              v29 = sub_C6F6C;
LABEL_17:
              sub_A77D0(v29, 0);
              goto LABEL_18;
            }

            v98[0] = v96;
            *&v96 = 58;
            *(&v96 + 1) = 0xE100000000000000;
            sub_4869C();
            v35 = sub_117640();

            if (v35[2] == 2)
            {
              v88 = v26;
              v36 = v14;
              v38 = v35[4];
              v37 = v35[5];
              v39 = v35[7];
              v87 = v35[6];

              v89 = v39;

              if (v38 == 0x696C69626176696CLL && v37 == 0xEA00000000007974 || (sub_1179E0() & 1) != 0)
              {

                v14 = v36;
                if (*(v30 + 16))
                {
                  v40 = sub_64F08(0x7261646172, 0xE500000000000000);
                  v26 = v88;
                  if ((v41 & 1) != 0 && (sub_6AD00(*(v30 + 56) + 32 * v40, v98), swift_dynamicCast()))
                  {
                    v86 = v96;
                  }

                  else
                  {
                    v86 = 0;
                  }
                }

                else
                {
                  v86 = 0;
                  v26 = v88;
                }

                v85 = 0;
                if (*(v30 + 16))
                {
LABEL_38:
                  v43 = sub_64F08(0x746361706D69, 0xE600000000000000);
                  if (v44)
                  {
                    sub_6AD00(*(v30 + 56) + 32 * v43, v98);
                    if (swift_dynamicCast())
                    {
                      v45 = v96;
                      if (!*(v30 + 16))
                      {
                        goto LABEL_53;
                      }

LABEL_49:
                      v46 = sub_64F08(0x6E49746968, 0xE500000000000000);
                      if (v47 & 1) != 0 && (sub_6AD00(*(v30 + 56) + 32 * v46, v98), (swift_dynamicCast()))
                      {
                        v88 = *(&v96 + 1);
                        v84 = v96;
                        if (!*(v30 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      else
                      {
LABEL_53:
                        v88 = 0xE700000000000000;
                        v84 = 0x6E776F6E6B6E55;
                        if (!*(v30 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      v48 = sub_64F08(0x6E496465786966, 0xE700000000000000);
                      if (v49 & 1) != 0 && (sub_6AD00(*(v30 + 56) + 32 * v48, v98), (swift_dynamicCast()))
                      {
                        v82 = *(&v96 + 1);
                        v83 = v96;
                        if (!*(v30 + 16))
                        {
                          goto LABEL_63;
                        }
                      }

                      else
                      {
LABEL_58:
                        v83 = 0;
                        v82 = 0;
                        if (!*(v30 + 16))
                        {
                          goto LABEL_63;
                        }
                      }

                      v50 = sub_64F08(0x6369746972437369, 0xEA00000000006C61);
                      if ((v51 & 1) != 0 && (sub_6AD00(*(v30 + 56) + 32 * v50, v98), swift_dynamicCast()))
                      {
                        v52 = v96;
                        if (!*(v30 + 16))
                        {
LABEL_68:

                          goto LABEL_69;
                        }
                      }

                      else
                      {
LABEL_63:
                        v52 = 1;
                        if (!*(v30 + 16))
                        {
                          goto LABEL_68;
                        }
                      }

                      v53 = sub_64F08(0x6D617473656D6974, 0xEC000000646E4570);
                      if ((v54 & 1) == 0)
                      {
                        goto LABEL_68;
                      }

                      sub_6AD00(*(v30 + 56) + 32 * v53, v98);

                      sub_54960(0, &qword_185D28, NSDate_ptr);
                      if (swift_dynamicCast())
                      {
                        v55 = v96;
                        v56 = v93;
                        if (v96)
                        {
                          sub_115730();

                          v72 = v45;
                          v57 = *v73;
                          v58 = v90;
                          (*v73)(v90, v92, v14);
                          (*v79)(v58, 0, 1, v14);
                          v59 = v58;
                          v56 = v93;
                          v57(v93, v59, v14);
                          v45 = v72;
LABEL_72:
                          v61 = v81;
                          (*v77)(&v9[v81[9]], v56, v14);
                          v62 = v78;
                          *v9 = v75;
                          *(v9 + 1) = v62;
                          v63 = v87;
                          *(v9 + 2) = v45;
                          *(v9 + 3) = v63;
                          v64 = v86;
                          *(v9 + 4) = v89;
                          *(v9 + 5) = v64;
                          v9[48] = v85;
                          *(v9 + 7) = v45;
                          *&v9[v61[10]] = v52;
                          v65 = &v9[v61[11]];
                          v66 = v88;
                          *v65 = v84;
                          v65[1] = v66;
                          v67 = &v9[v61[12]];
                          v68 = v82;
                          *v67 = v83;
                          *(v67 + 1) = v68;
                          sub_CA6AC(v9, v91, type metadata accessor for UrsaIssue);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v26 = sub_C7C50(0, v26[2] + 1, 1, v26);
                          }

                          v70 = v26[2];
                          v69 = v26[3];
                          if (v70 >= v69 >> 1)
                          {
                            v26 = sub_C7C50(v69 > 1, v70 + 1, 1, v26);
                          }

                          sub_CAF48(v9, type metadata accessor for UrsaIssue);
                          (*v76)(v56, v14);
                          v26[2] = v70 + 1;
                          sub_CA944(v91, v26 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v70, type metadata accessor for UrsaIssue);
                          goto LABEL_18;
                        }
                      }

                      else
                      {
LABEL_69:
                        v56 = v93;
                      }

                      v60 = v90;
                      (*v79)(v90, 1, 1, v14);
                      sub_115750();
                      if ((*v74)(v60, 1, v14) != 1)
                      {
                        sub_488C8(v90, &qword_182EF0, &unk_124BB0);
                      }

                      goto LABEL_72;
                    }
                  }
                }

LABEL_48:
                v45 = 0;
                if (!*(v30 + 16))
                {
                  goto LABEL_53;
                }

                goto LABEL_49;
              }

              if (v38 == 0x6572617774666F73 && v37 == 0xEE00657461647055)
              {

                v86 = 1;
                v85 = 1;
                v14 = v36;
                goto LABEL_47;
              }

              v14 = v36;
              if (sub_1179E0())
              {

                v86 = 1;
                v85 = 1;
LABEL_47:
                v26 = v88;
                if (*(v30 + 16))
                {
                  goto LABEL_38;
                }

                goto LABEL_48;
              }

              v26 = v88;
              if (v38 == 7500916 && v37 == 0xE300000000000000 || (sub_1179E0() & 1) != 0)
              {

                v86 = 0;
                v85 = 1;
                if (*(v30 + 16))
                {
                  goto LABEL_38;
                }

                goto LABEL_48;
              }

              __chkstk_darwin(v71);
              vars0 = v38;
              vars8 = v37;
              sub_A7800(sub_CB260, &v99);
            }

            else
            {

              __chkstk_darwin(v42);
              vars0 = v35;
              sub_A7800(sub_CB1D8, &v99);
            }

LABEL_18:
            v27 += 8;
            if (!--v25)
            {

              return v26;
            }
          }

          v29 = sub_C6F50;
          goto LABEL_17;
        }

        sub_A77D0(sub_C6F34, 0);
        goto LABEL_12;
      }
    }

    else
    {
      sub_488C8(v98, &qword_182FC8, &qword_124DD0);
    }

    sub_A7800(sub_C6F18, 0);
LABEL_12:

    return &_swiftEmptyArrayStorage;
  }

  sub_A77D0(sub_C6EE0, 0);
  return &_swiftEmptyArrayStorage;
}

unint64_t sub_C8B84()
{
  result = qword_185968;
  if (!qword_185968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185968);
  }

  return result;
}

uint64_t sub_C8BF8()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v1;
  swift_bridgeObjectRetain_n();
  sub_46F9C(&qword_185CF8, &qword_12AA70);
  sub_46F9C(&qword_1859F0, &qword_12A5F8);
  sub_48800(&qword_185D00, &qword_185CF8, &qword_12AA70);
  sub_C8EA0(&qword_185D08, type metadata accessor for UrsaIssue);
  sub_C8DD8();
  return sub_116E10();
}

unint64_t sub_C8D54()
{
  result = qword_1859E0;
  if (!qword_1859E0)
  {
    sub_47A1C(&qword_1859D8, &qword_12A5F0);
    sub_C8DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1859E0);
  }

  return result;
}

unint64_t sub_C8DD8()
{
  result = qword_1859E8;
  if (!qword_1859E8)
  {
    sub_47A1C(&qword_1859F0, &qword_12A5F8);
    sub_C8EA0(&qword_1859F8, type metadata accessor for UrsaView);
    sub_C8F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1859E8);
  }

  return result;
}

uint64_t sub_C8EA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C8F08()
{
  result = qword_185A00;
  if (!qword_185A00)
  {
    sub_47A1C(&qword_185A08, &qword_12A600);
    sub_C9358(&qword_185A10, &qword_185A18, &qword_12A608, sub_C8FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A00);
  }

  return result;
}

unint64_t sub_C8FB8()
{
  result = qword_185A20;
  if (!qword_185A20)
  {
    sub_47A1C(&qword_185A28, &qword_12A610);
    sub_C9070();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A20);
  }

  return result;
}

unint64_t sub_C9070()
{
  result = qword_185A30;
  if (!qword_185A30)
  {
    sub_47A1C(&qword_185A38, &qword_12A618);
    sub_C9128();
    sub_48800(&qword_182E40, &qword_182E48, qword_124840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A30);
  }

  return result;
}

unint64_t sub_C9128()
{
  result = qword_185A40;
  if (!qword_185A40)
  {
    sub_47A1C(&qword_185A48, &qword_12A620);
    sub_48800(&qword_185A50, &qword_185A58, &qword_12A628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A40);
  }

  return result;
}

uint64_t sub_C91E0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_C9218()
{
  result = qword_185A68;
  if (!qword_185A68)
  {
    sub_47A1C(&qword_1859D0, &qword_12A5E8);
    sub_47A1C(&qword_1859C0, &qword_12A5D8);
    sub_47A1C(&qword_1859B8, &qword_12A5D0);
    sub_C9358(&qword_185A70, &qword_1859B8, &qword_12A5D0, sub_C93DC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A68);
  }

  return result;
}

uint64_t sub_C9358(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_C93DC()
{
  result = qword_185A78;
  if (!qword_185A78)
  {
    sub_47A1C(&qword_1859B0, &qword_12A5C8);
    sub_C9468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A78);
  }

  return result;
}

unint64_t sub_C9468()
{
  result = qword_185A80;
  if (!qword_185A80)
  {
    sub_47A1C(&qword_1859A8, &qword_12A5C0);
    sub_C8FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A80);
  }

  return result;
}

unint64_t sub_C94F8()
{
  result = qword_185A88;
  if (!qword_185A88)
  {
    sub_47A1C(&qword_185998, &qword_12A5B0);
    sub_47A1C(&qword_185990, &qword_12A5A8);
    sub_47A1C(&qword_185988, &qword_12A5A0);
    sub_48800(&qword_185A60, &qword_185988, &qword_12A5A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A88);
  }

  return result;
}

uint64_t sub_C9640(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1859D0, &qword_12A5E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_C96B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_46F9C(a2, a3);
    v5 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_64F08(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_C97AC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_1179E0()) && *(a1 + 16) == *(a2 + 16))
  {
    v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
    if (v5 || (sub_1179E0() & 1) != 0)
    {
      v6 = *(a1 + 40);
      v7 = *(a2 + 40);
      v8 = *(a2 + 48);
      if (*(a1 + 48) == 1)
      {
        if (v6)
        {
          if (!v7)
          {
            v8 = 0;
          }

          if ((v8 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v7)
          {
            v8 = 0;
          }

          if ((v8 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v6 != v7)
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (*(a1 + 56) == *(a2 + 56))
      {
        v9 = type metadata accessor for UrsaIssue(0);
        v10 = v9[9];
        if ((sub_115720() & 1) != 0 && *(a1 + v9[10]) == *(a2 + v9[10]))
        {
          if (v11 = v9[11], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) && v13 == v14[1] || (sub_1179E0())
          {
            v15 = v9[12];
            v16 = (a1 + v15);
            v17 = *(a1 + v15 + 8);
            v18 = (a2 + v15);
            v19 = v18[1];
            if (v17)
            {
              if (v19 && (*v16 == *v18 && v17 == v19 || (sub_1179E0() & 1) != 0))
              {
                return 1;
              }
            }

            else if (!v19)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_C998C()
{
  result = qword_185AB0;
  if (!qword_185AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185AB0);
  }

  return result;
}

uint64_t sub_C9A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UrsaIssue(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_46F9C(&qword_185AC0, &qword_12A898);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_C9B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UrsaIssue(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_46F9C(&qword_185AC0, &qword_12A898);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_C9C74()
{
  type metadata accessor for UrsaIssue(319);
  if (v0 <= 0x3F)
  {
    sub_C9CF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C9CF8()
{
  if (!qword_185B20)
  {
    sub_1160C0();
    v0 = sub_116000();
    if (!v1)
    {
      atomic_store(v0, &qword_185B20);
    }
  }
}

uint64_t sub_C9D74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_115760();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C9E34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_115760();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C9ED8()
{
  sub_115760();
  if (v0 <= 0x3F)
  {
    sub_C9F98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C9F98()
{
  if (!qword_1849A8)
  {
    v0 = sub_117620();
    if (!v1)
    {
      atomic_store(v0, &qword_1849A8);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for UrsaIssue.OpenTarget(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UrsaIssue.OpenTarget(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UrsaIssue.OpenTarget(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_CA04C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_CA068(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_CA09C()
{
  result = qword_185BF0;
  if (!qword_185BF0)
  {
    sub_47A1C(&qword_185980, &qword_12A598);
    sub_CA128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185BF0);
  }

  return result;
}

unint64_t sub_CA128()
{
  result = qword_185BF8;
  if (!qword_185BF8)
  {
    sub_47A1C(&qword_185978, &qword_12A590);
    sub_47A1C(&qword_185960, &unk_12A580);
    type metadata accessor for BreakdownCellButtonStyle();
    sub_48800(&qword_185970, &qword_185960, &unk_12A580);
    sub_C8EA0(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185BF8);
  }

  return result;
}

unint64_t sub_CA278()
{
  result = qword_185C00;
  if (!qword_185C00)
  {
    sub_47A1C(&qword_185C08, &qword_12A8F8);
    sub_C9218();
    sub_C94F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C00);
  }

  return result;
}

unint64_t sub_CA308()
{
  result = qword_185C10;
  if (!qword_185C10)
  {
    sub_47A1C(&qword_185AA0, &qword_12A670);
    sub_48800(&qword_185C18, &qword_185C20, &unk_12A900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C10);
  }

  return result;
}

unint64_t sub_CA3C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_117710(33);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_117220(v4);
  return 0xD00000000000001FLL;
}

unint64_t sub_CA43C()
{
  result = qword_185C88;
  if (!qword_185C88)
  {
    sub_47A1C(&qword_185C58, &qword_12A940);
    sub_CA4C8();
    sub_CA578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C88);
  }

  return result;
}

unint64_t sub_CA4C8()
{
  result = qword_185C90;
  if (!qword_185C90)
  {
    sub_47A1C(&qword_185C70, &qword_12A960);
    sub_48800(&qword_185C98, &qword_185C60, &qword_12A948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C90);
  }

  return result;
}

unint64_t sub_CA578()
{
  result = qword_185CA0;
  if (!qword_185CA0)
  {
    sub_47A1C(&qword_185C40, &qword_12A928);
    sub_CA4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185CA0);
  }

  return result;
}

unint64_t sub_CA5FC()
{
  result = qword_185CA8;
  if (!qword_185CA8)
  {
    sub_47A1C(&qword_185C38, &qword_12A920);
    sub_48800(&qword_185CB0, &qword_185C30, &qword_12A918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185CA8);
  }

  return result;
}

uint64_t sub_CA6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CA714()
{
  v1 = (type metadata accessor for UrsaView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v19 = *(*v1 + 64);
  v3 = sub_115650();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = v0 + v2;
  v7 = *(v0 + v2 + 8);

  v8 = *(v0 + v2 + 32);

  v9 = type metadata accessor for UrsaIssue(0);
  v10 = v9[9];
  v11 = sub_115760();
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  v12 = *(v0 + v2 + v9[11] + 8);

  v13 = *(v0 + v2 + v9[12] + 8);

  v14 = v1[7];
  sub_46F9C(&qword_185A90, &qword_12A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1160C0();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  (*(v4 + 8))(v0 + ((v2 + v19 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_CA944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_CA9AC()
{
  v1 = *(type metadata accessor for UrsaView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_115650() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_C6B6C(v0 + v2);
}