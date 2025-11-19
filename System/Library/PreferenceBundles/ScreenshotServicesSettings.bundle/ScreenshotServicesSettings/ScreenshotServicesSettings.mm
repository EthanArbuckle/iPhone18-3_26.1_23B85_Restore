id sub_1580()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_15B8()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10D10 = result;
  return result;
}

uint64_t *sub_160C()
{
  if (qword_10860 != -1)
  {
    swift_once();
  }

  return &qword_10D10;
}

uint64_t sub_1680(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1690(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_16D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_971C();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v9 = sub_97EC();
  }

  else
  {
    v9 = 0;
  }

  v14[0] = v5;
  v14[1] = v6;
  v15 = v7;
  v13 = v8;
  sub_21D0(v14, v12);
  sub_222C(&v13, v12);
  v10 = v7 & 1;
  sub_1680(v5, v6, v10);

  sub_21C0(v5, v6, v10);

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v10;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v9;
  *(a2 + 80) = 0;
  return result;
}

unint64_t sub_18C4()
{
  result = qword_10398;
  if (!qword_10398)
  {
    sub_19A8(&qword_10390, &qword_9EE8);
    sub_19F0(&qword_103A0, &qword_103A8, &qword_9EF0);
    sub_19F0(&qword_103B0, &qword_103B8, &qword_9EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10398);
  }

  return result;
}

uint64_t sub_19A8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_19F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_19A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A38()
{
  result = qword_103C8;
  if (!qword_103C8)
  {
    sub_96CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103C8);
  }

  return result;
}

uint64_t sub_1A90@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_1AD0@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_96CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1690(&qword_10388, &qword_9EE0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = *(v1 + 32);
  v15[1] = *(v1 + 16);
  v15[2] = v12;
  v15[0] = *v1;
  v16 = *(v1 + 48);
  v14[4] = v15;

  sub_1690(&qword_10390, &qword_9EE8);
  sub_18C4();
  sub_97FC();
  sub_96BC();
  sub_19F0(&qword_103C0, &qword_10388, &qword_9EE0);
  sub_1A38();
  sub_97BC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D18@<X0>(uint64_t *a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = sub_975C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  a1[3] = &type metadata for CheckmarkListItem;
  a1[4] = sub_2120();
  v9 = swift_allocObject();
  *a1 = v9;

  *(v9 + 16) = v2;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6 & 1;
  *(v9 + 40) = v8;
  *(v9 + 48) = 1;
  *(v9 + 56) = sub_1E64;
  *(v9 + 64) = 0;
  return result;
}

uint64_t sub_1E64()
{
  sub_1690(&qword_103D8, &qword_A0D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_9ED0;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0x6E6F69746361;
  *(v0 + 40) = 0xE600000000000000;
  sub_995C();
}

__n128 sub_1FA0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2004(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2070()
{
  sub_19A8(&qword_10388, &qword_9EE0);
  sub_96CC();
  sub_19F0(&qword_103C0, &qword_10388, &qword_9EE0);
  sub_1A38();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2120()
{
  result = qword_103D0;
  if (!qword_103D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D0);
  }

  return result;
}

uint64_t sub_2174()
{
  sub_21C0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_21C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_222C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1690(&qword_103E0, qword_A0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C0@<X0>(uint64_t *a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_49C8(a1);
}

unint64_t sub_235C()
{
  result = qword_103F0;
  if (!qword_103F0)
  {
    type metadata accessor for ScreenshotServicesSettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103F0);
  }

  return result;
}

uint64_t sub_23B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_967C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_98EC();
  v2[7] = sub_98DC();
  v7 = sub_98CC();

  return _swift_task_switch(sub_24A8, v7, v6);
}

uint64_t sub_24A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  sub_985C();
  sub_986C();
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

unint64_t sub_2554()
{
  result = qword_103F8;
  if (!qword_103F8)
  {
    sub_19A8(&qword_103E8, &qword_A0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103F8);
  }

  return result;
}

unint64_t sub_25BC()
{
  result = qword_10400;
  if (!qword_10400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10400);
  }

  return result;
}

uint64_t sub_262C()
{
  v0 = sub_1690(&qword_103E8, &qword_A0F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  type metadata accessor for ScreenshotServicesSettingsList();
  sub_235C();
  sub_987C();
  sub_2554();
  sub_984C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2798()
{
  sub_19A8(&qword_103E8, &qword_A0F0);
  sub_2554();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2820(uint64_t a1)
{
  v2 = sub_96AC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_96EC();
}

uint64_t sub_2914@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_950C();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v49 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_983C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1690(&qword_104A8, &qword_A208);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_1690(&qword_104B0, &qword_A210);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = sub_1690(&qword_104B8, &qword_A218);
  v21 = *(v20 - 8);
  v47 = v20;
  v48 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v42 = &v41 - v23;
  v53 = v1;
  sub_1690(&qword_104C0, &qword_A220);
  sub_19F0(&qword_104C8, &qword_104C0, &qword_A220);
  sub_974C();
  *v9 = 0xD000000000000022;
  v9[1] = 0x800000000000A810;
  v24 = v5;
  (*(v6 + 104))(v9, enum case for SettingsEventImage.graphicIcon(_:), v5);
  v25 = type metadata accessor for ScreenshotServicesSettingsList();
  v26 = v25[7];
  v27 = *(v1 + v25[8]);
  v28 = v25[6];
  v29 = sub_19F0(&qword_104D0, &qword_104A8, &qword_A208);
  v30 = v43;
  sub_978C();
  (*(v6 + 8))(v9, v24);
  (*(v44 + 8))(v14, v30);
  v54 = v30;
  v55 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v42;
  v33 = v45;
  sub_977C();
  v34 = v33;
  (*(v46 + 8))(v19, v33);
  (*(v50 + 16))(v49, v1 + v28, v51);
  v35 = sub_976C();
  v37 = v36;
  LOBYTE(v30) = v38;
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v47;
  sub_97DC();
  sub_21C0(v35, v37, v30 & 1);

  return (*(v48 + 8))(v32, v39);
}

uint64_t sub_2E44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v113 = sub_1690(&qword_105A0, &qword_A3A0);
  v112 = *(v113 - 8);
  v3 = *(v112 + 64);
  __chkstk_darwin(v113);
  v104 = &v101 - v4;
  v5 = sub_1690(&qword_105A8, &qword_A3A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v110 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v101 - v9;
  v10 = sub_1690(&qword_105B0, &qword_A3B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v109 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v122 = &v101 - v15;
  v16 = __chkstk_darwin(v14);
  v125 = &v101 - v17;
  __chkstk_darwin(v16);
  v19 = &v101 - v18;
  v20 = sub_1690(&qword_105B8, &qword_A3B8);
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  v22 = __chkstk_darwin(v20);
  v120 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v103 = &v101 - v25;
  v26 = __chkstk_darwin(v24);
  v102 = &v101 - v27;
  __chkstk_darwin(v26);
  v29 = &v101 - v28;
  sub_98EC();
  v108 = sub_98DC();
  sub_98CC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_3E90(&v130);
  v31 = sub_1690(&qword_105C0, &qword_A3C0);
  v32 = sub_19F0(&qword_105C8, &qword_105C0, &qword_A3C0);
  v119 = v29;
  v106 = v31;
  v105 = v32;
  sub_982C();
  v33 = (a1 + *(type metadata accessor for ScreenshotServicesSettingsList() + 20));
  v35 = *v33;
  v34 = v33[1];
  v36 = *(v33 + 16);
  v37 = type metadata accessor for ScreenshotServicesSettingsViewModel();
  v38 = sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel);
  v118 = v34;
  v117 = v36;
  v115 = v38;
  v116 = v37;
  v39 = *sub_964C();
  LOBYTE(v37) = (*(v39 + 328))();

  v121 = v20;
  v123 = v19;
  v107 = a1;
  if (v37)
  {
    v41 = v35;
    __chkstk_darwin(v40);
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v42 = *sub_160C();
    v43 = sub_975C();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v130 = v43;
    v131 = v45;
    v132 = v47 & 1;
    v133 = v49;
    v50 = v102;
    sub_982C();
    v19 = v123;
    v51 = v124;
    v20 = v121;
    (*(v124 + 32))(v123, v50, v121);
    v52 = 0;
    v35 = v41;
  }

  else
  {
    v52 = 1;
    v51 = v124;
  }

  v53 = *(v51 + 56);
  v54 = 1;
  v53(v19, v52, 1, v20);
  v55 = *sub_964C();
  v56 = (*(v55 + 376))();

  if (v56)
  {
    v102 = v35;
    v101 = &v101;
    __chkstk_darwin(v57);
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v58 = *sub_160C();
    v59 = sub_975C();
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v130 = v59;
    v131 = v61;
    v132 = v63 & 1;
    v133 = v65;
    v66 = v103;
    sub_982C();
    v20 = v121;
    (*(v124 + 32))(v125, v66, v121);
    v54 = 0;
  }

  v67 = 1;
  v53(v125, v54, 1, v20);
  v68 = *sub_964C();
  v69 = (*(v68 + 424))();

  if (v69)
  {
    v118 = &v101;
    __chkstk_darwin(v70);
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v71 = sub_160C();
    v72 = *v71;
    v73 = sub_975C();
    v75 = v74;
    v77 = v76;
    v79 = v78;

    v130 = v73;
    v131 = v75;
    v132 = v77 & 1;
    v133 = v79;
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v80 = *v71;
    v81 = sub_975C();
    v83 = v82;
    v85 = v84;
    v87 = v86;

    v126 = v81;
    v127 = v83;
    v128 = v85 & 1;
    v129 = v87;
    sub_1690(&qword_105D8, &qword_A3D0);
    sub_19F0(&qword_105E0, &qword_105D8, &qword_A3D0);
    v88 = v104;
    sub_981C();
    (*(v112 + 32))(v114, v88, v113);
    v67 = 0;
  }

  v89 = v114;
  (*(v112 + 56))(v114, v67, 1, v113);
  v90 = v124;
  v91 = *(v124 + 16);
  v92 = v120;
  v93 = v121;
  v91(v120, v119, v121);
  sub_6224(v123, v122, &qword_105B0, &qword_A3B0);
  v94 = v109;
  sub_6224(v125, v109, &qword_105B0, &qword_A3B0);
  v95 = v110;
  sub_6224(v89, v110, &qword_105A8, &qword_A3A8);
  v96 = v111;
  v91(v111, v92, v93);
  v97 = sub_1690(&qword_105D0, &qword_A3C8);
  v98 = v122;
  sub_6224(v122, &v96[v97[12]], &qword_105B0, &qword_A3B0);
  sub_6224(v94, &v96[v97[16]], &qword_105B0, &qword_A3B0);
  sub_6224(v95, &v96[v97[20]], &qword_105A8, &qword_A3A8);
  sub_5A44(v89, &qword_105A8, &qword_A3A8);
  sub_5A44(v125, &qword_105B0, &qword_A3B0);
  sub_5A44(v123, &qword_105B0, &qword_A3B0);
  v99 = *(v90 + 8);
  v99(v119, v93);
  sub_5A44(v95, &qword_105A8, &qword_A3A8);
  sub_5A44(v94, &qword_105B0, &qword_A3B0);
  sub_5A44(v98, &qword_105B0, &qword_A3B0);
  v99(v120, v93);
}

uint64_t type metadata accessor for ScreenshotServicesSettingsList()
{
  result = qword_10B80;
  if (!qword_10B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3CD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_3D68@<X0>(uint64_t a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = *sub_160C();
  v3 = sub_975C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_3E90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_96AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_6024(v9);
  (*(v3 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v2);
  sub_969C();
  v10 = *(v3 + 8);
  v10(v7, v2);
  v10(v9, v2);
  sub_972C();
  v11 = *sub_160C();
  v12 = sub_975C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_40F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_419C@<X0>(uint64_t a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = *sub_160C();
  v3 = sub_975C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_42CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_4364@<X0>(uint64_t a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = *sub_160C();
  v3 = sub_975C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v57 = v7;
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_98EC();
  v56 = sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v55 = sub_160C();
  v9 = *v55;
  v50 = sub_975C();
  v49 = v10;
  v12 = v11;
  v48 = v13;
  v14 = a1 + *(v4 + 20);
  v15 = *(v14 + 8);
  v54 = *v14;
  v53 = v15;
  v52 = *(v14 + 16);
  v51 = type metadata accessor for ScreenshotServicesSettingsViewModel();
  sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel);
  v16 = sub_964C();
  v17 = (*(*v16 + 184))(v16);

  sub_5C78(a1, v8);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_5CE8(v8, v19 + v18);
  sub_1A90(v50, v49, v12 & 1, v48, v17 & 1, sub_5D4C, v19, v60);
  sub_972C();
  v50 = a1;
  v20 = *v55;
  v21 = sub_975C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_964C();
  v29 = (*(*v28 + 184))(v28);

  sub_5C78(v50, v8);
  v30 = swift_allocObject();
  sub_5CE8(v8, v30 + v18);
  sub_1A90(v21, v23, v25 & 1, v27, (v29 & 1) == 0, sub_5F08, v30, v66);
  v31 = v60[0];
  v32 = v60[1];
  v33 = v62;
  v34 = v64;
  v35 = v65;
  v36 = v66[0];
  v37 = v66[1];
  v38 = v68;
  v39 = v70;
  v40 = v71;
  v41 = v67;
  v42 = v61 & 1;
  v59 = v61 & 1;
  v43 = v63 & 1;
  LOBYTE(v27) = v67 & 1;
  v58 = v67 & 1;
  v44 = v69 & 1;
  *a2 = v60[0];
  *(a2 + 8) = v32;
  *(a2 + 16) = v42;
  *(a2 + 24) = v33;
  *(a2 + 32) = v43;
  *(a2 + 40) = v34;
  *(a2 + 48) = v35;
  *(a2 + 56) = v36;
  *(a2 + 64) = v37;
  *(a2 + 72) = v41 & 1;
  *(a2 + 80) = v38;
  *(a2 + 88) = v44;
  *(a2 + 96) = v39;
  *(a2 + 104) = v40;
  v45 = v31;
  sub_1680(v31, v32, v42);

  sub_1680(v36, v37, v27);

  sub_21C0(v36, v37, v27);

  sub_21C0(v45, v32, v42);
}

uint64_t sub_49C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*(*(sub_1690(&qword_104D8, &qword_A228) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v62 = v54 - v3;
  v74 = sub_94FC();
  v76 = *(v74 - 8);
  v4 = *(v76 + 64);
  (__chkstk_darwin)();
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_956C();
  v7 = *(v61 - 8);
  v8 = v7[8];
  v9 = (__chkstk_darwin)();
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v54 - v12;
  v14 = sub_989C();
  v60 = v14;
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v54 - v20;
  *a1 = swift_getKeyPath();
  sub_1690(&qword_104A0, &qword_A200);
  v75 = a1;
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for ScreenshotServicesSettingsList();
  v23 = a1 + *(v22 + 20);
  *v23 = sub_28E8;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v55 = v22;
  v73 = *(v22 + 24);
  v56 = "c-icon.screenshots";
  sub_988C();
  v68 = sub_160C();
  v24 = *v68;
  sub_955C();
  v70 = v15[2];
  v71 = v15 + 2;
  v70(v19, v21, v14);
  v25 = v7[2];
  v26 = v61;
  v69 = v7 + 2;
  v67 = v25;
  v25(v11, v13, v61);
  v27 = [v24 bundleURL];
  sub_952C();

  v28 = *(v76 + 104);
  v66 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v76 += 104;
  v65 = v28;
  v28(v6);
  v57 = v19;
  v58 = v11;
  v29 = v62;
  v59 = v6;
  sub_951C();

  v30 = v7[1];
  v31 = v13;
  v32 = v13;
  v33 = v26;
  v73 = v7 + 1;
  v64 = v30;
  v30(v32, v26);
  v34 = v15[1];
  v35 = v21;
  v36 = v60;
  v72 = v15 + 1;
  v63 = v34;
  (v34)(v21);
  sub_953C();
  v37 = sub_954C();
  v38 = *(v37 - 8);
  result = (*(v38 + 48))(v29, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v55;
    (*(v38 + 32))(v75 + *(v55 + 28), v29, v37);
    v62 = *(v40 + 32);
    sub_1690(&qword_104E0, &qword_A230);
    v41 = *(sub_950C() - 8);
    v54[1] = *(v41 + 72);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_A1C0;
    v43 = v35;
    sub_988C();
    v44 = *v68;
    v45 = v31;
    sub_955C();
    v46 = v57;
    v47 = v35;
    v48 = v36;
    v70(v57, v47, v36);
    v49 = v58;
    v67(v58, v31, v33);
    v50 = [v44 bundleURL];
    v51 = v59;
    sub_952C();

    v65(v51, v66, v74);
    sub_951C();

    v64(v45, v33);
    v63(v43, v48);
    sub_988C();
    v52 = *v68;
    sub_955C();
    v70(v46, v43, v48);
    v67(v49, v45, v33);
    v53 = [v52 bundleURL];
    sub_952C();

    v65(v51, v66, v74);
    sub_951C();

    v64(v45, v33);
    result = (v63)(v43, v48);
    *&v62[v75] = v55;
  }

  return result;
}

uint64_t sub_51CC@<X0>(uint64_t *a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1[3] = type metadata accessor for ScreenshotServicesSettingsList();
  a1[4] = sub_5974(&qword_103F0, type metadata accessor for ScreenshotServicesSettingsList);
  v2 = sub_59BC(a1);
  sub_49C8(v2);
}

uint64_t sub_5358(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1690(&qword_104E8, &unk_A2D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_950C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_954C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_54CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1690(&qword_104E8, &unk_A2D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_950C();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_954C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_5628()
{
  sub_57E8(319, &qword_10548, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_5754();
    if (v1 <= 0x3F)
    {
      sub_950C();
      if (v2 <= 0x3F)
      {
        sub_954C();
        if (v3 <= 0x3F)
        {
          sub_57E8(319, &unk_10560, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_5754()
{
  if (!qword_10550)
  {
    type metadata accessor for ScreenshotServicesSettingsViewModel();
    sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel);
    v0 = sub_966C();
    if (!v1)
    {
      atomic_store(v0, &qword_10550);
    }
  }
}

void sub_57E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_585C()
{
  sub_19A8(&qword_104B8, &qword_A218);
  sub_19A8(&qword_104B0, &qword_A210);
  sub_19A8(&qword_104A8, &qword_A208);
  sub_19F0(&qword_104D0, &qword_104A8, &qword_A208);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_59BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_5A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1690(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5AD0()
{
  v1 = *(v0 + 16);
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (v1 + *(type metadata accessor for ScreenshotServicesSettingsList() + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for ScreenshotServicesSettingsViewModel();
  sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel);
  sub_965C();
  swift_getKeyPath();
  sub_968C();

  sub_980C();
}

uint64_t sub_5C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5D54()
{
  v1 = type metadata accessor for ScreenshotServicesSettingsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_1690(&qword_104A0, &qword_A200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_96AC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[5]];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_5CE0();
  v12 = v1[6];
  v13 = sub_950C();
  (*(*(v13 - 8) + 8))(&v5[v12], v13);
  v14 = v1[7];
  v15 = sub_954C();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);
  v16 = *&v5[v1[8]];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5F10(uint64_t a1)
{
  v3 = type metadata accessor for ScreenshotServicesSettingsList();
  v4 = v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  type metadata accessor for ScreenshotServicesSettingsViewModel();
  sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel);
  v8 = sub_964C();
  (*(*v8 + 192))(a1);
}

uint64_t sub_6024@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_970C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1690(&qword_104A0, &qword_A200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_6224(v2, &v17 - v11, &qword_104A0, &qword_A200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_96AC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_991C();
    v16 = sub_973C();
    sub_959C();

    sub_96FC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_6224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1690(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_6290()
{
  v0 = sub_95CC();
  sub_8FF8(v0, qword_10BB8);
  sub_8FC0(v0, qword_10BB8);
  return sub_95BC();
}

void sub_631C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v1 = sub_962C();
  v2 = *(*v0 + 136);
  if (v3 != ((v2)(v1) & 1))
  {
    v2();
    _SSEnablePIPExperience();
    sub_85EC();
  }
}

void (*sub_6428(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_64BC;
}

void sub_64BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_631C();
}

uint64_t (*sub_64FC(uint64_t *a1))()
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
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
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

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__fullScreenPreviewEnabled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_94F8;
}

uint64_t sub_6680@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

void sub_6718()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v1 = sub_962C();
  v2 = *(*v0 + 184);
  if (v3 != ((v2)(v1) & 1))
  {
    v2();
    _SSEnableHDRCapture();
    sub_85EC();
  }
}

void (*sub_6820(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_68B4;
}

void sub_68B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_6718();
}

uint64_t (*sub_68F4(uint64_t *a1))()
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
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
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

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrEnabled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_6A64;
}

void sub_6A7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v1 = sub_962C();
  v2 = *(*v0 + 232);
  if (v3 != ((v2)(v1) & 1))
  {
    v2();
    _SSEnableCarPlayScreenshots();
    sub_85EC();
  }
}

void (*sub_6B84(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_6C18;
}

void sub_6C18(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_6A7C();
}

uint64_t (*sub_6C58(uint64_t *a1))()
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
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
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

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlayScreenshotsEnabled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_94F8;
}

void sub_6DDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v1 = sub_962C();
  v2 = *(*v0 + 280);
  if (v3 != ((v2)(v1) & 1))
  {
    v2();
    _SSEnableVisualLookUpInScreenshots();
    sub_85EC();
  }
}

void (*sub_6EF8(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_6F8C;
}

void sub_6F8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_6DDC();
}

uint64_t (*sub_6FCC(uint64_t *a1))()
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
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
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

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__visualLookUpEnabled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_94F8;
}

void sub_713C(uint64_t a1, char a2)
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
    sub_960C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_960C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_72B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7364@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7410()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  return v1;
}

uint64_t sub_747C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_74E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_962C();
}

uint64_t sub_756C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_962C();
}

uint64_t sub_75E4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  return swift_endAccess();
}

uint64_t sub_7660(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1690(&qword_105F0, &qword_A4B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  sub_1690(&qword_105E8, &qword_A4A8);
  sub_960C();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_7798()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_77D0();
  return v3;
}

char *sub_77D0()
{
  v1 = sub_1690(&qword_105E8, &qword_A4A8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v19[-v4];
  v6 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__fullScreenPreviewEnabled;
  v19[15] = 0;
  sub_95EC();
  v7 = *(v2 + 32);
  v7(&v0[v6], v5, v1);
  v8 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrEnabled;
  v19[14] = 0;
  sub_95EC();
  v7(&v0[v8], v5, v1);
  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlayScreenshotsEnabled;
  v19[13] = 0;
  sub_95EC();
  v7(&v0[v9], v5, v1);
  v10 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__visualLookUpEnabled;
  v19[12] = 0;
  sub_95EC();
  v7(&v0[v10], v5, v1);
  v11 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__viSupported;
  v19[11] = 0;
  sub_95EC();
  v7(&v0[v11], v5, v1);
  v12 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlaySupported;
  v19[10] = 0;
  sub_95EC();
  v7(&v0[v12], v5, v1);
  v13 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrCaptureSupported;
  v19[9] = 0;
  sub_95EC();
  v7(&v0[v13], v5, v1);
  sub_85EC();
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v14, v0, sub_7E9C, _SSPreferencesDidChangeRemoteNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  [v16 addObserver:v0 selector:"handleScreensChanged:" name:UIScreenDidConnectNotification object:0];

  v17 = [v15 defaultCenter];
  [v17 addObserver:v0 selector:"handleScreensChanged:" name:UIScreenDidDisconnectNotification object:0];

  return v0;
}

uint64_t sub_7AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_98EC();
  *(v4 + 24) = sub_98DC();
  v6 = sub_98CC();

  return _swift_task_switch(sub_7B78, v6, v5);
}

uint64_t sub_7B78()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_85CC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_7BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1690(&unk_10850, &qword_A6C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_9270(a3, v26 - v10);
  v12 = sub_990C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_92E0(v11);
  }

  else
  {
    sub_98FC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_98CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_98AC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_92E0(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_92E0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

char *sub_7EA4()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v3 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__fullScreenPreviewEnabled;
  v4 = sub_1690(&qword_105E8, &qword_A4A8);
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v3], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrEnabled], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlayScreenshotsEnabled], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__visualLookUpEnabled], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__viSupported], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlaySupported], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrCaptureSupported], v4);
  return v0;
}

uint64_t sub_8020()
{
  sub_7EA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_8190()
{
  _SSHDRCaptureSupported();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_962C();
  v1 = _SSHDRCaptureEnabled();
  (*(*v0 + 192))(v1);
  v2 = &FindClass;
  if (qword_10BB0 != -1)
  {
    swift_once();
  }

  v25 = sub_95CC();
  sub_8FC0(v25, qword_10BB8);

  v3 = sub_95AC();
  v4 = sub_992C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = (*(*v0 + 424))() & 1;
    *(v5 + 8) = 1024;
    *(v5 + 10) = (*(*v0 + 184))() & 1;

    _os_log_impl(&dword_0, v3, v4, "Update hdr enabled. Supported: %{BOOL}d, enabled: %{BOOL}d", v5, 0xEu);
  }

  else
  {
  }

  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  v8 = [v6 screens];
  sub_905C();
  v9 = sub_98BC();

  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_20:

    return;
  }

  v10 = sub_994C();
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v10 >= 1)
  {
    v11 = 0;
    v24 = v9 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v13 = sub_993C();
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (v2[41].base_prots != -1)
      {
        swift_once();
      }

      sub_8FC0(v25, qword_10BB8);
      v15 = v14;
      v16 = v7;
      v12 = sub_95AC();
      v17 = sub_992C();
      if (os_log_type_enabled(v12, v17))
      {
        v18 = v10;
        v19 = v9;
        v20 = v7;
        v21 = v2;
        v22 = swift_slowAlloc();
        *v22 = 134218496;
        *(v22 + 4) = v11;
        *(v22 + 12) = 1024;
        *(v22 + 14) = v15 == v16;

        *(v22 + 18) = 2048;
        [v15 potentialEDRHeadroom];
        *(v22 + 20) = v23;
        _os_log_impl(&dword_0, v12, v17, "Screen %ld (is main: %{BOOL}d) potential headroom: %f", v22, 0x1Cu);
        v2 = v21;
        v7 = v20;
        v9 = v19;
        v10 = v18;
      }

      else
      {

        v12 = v15;
      }

      ++v11;
    }

    while (v10 != v11);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_85EC()
{
  sub_8190();
  v1 = _SSPIPExperienceEnabled();
  (*(*v0 + 144))(v1 ^ 1u);
  v2 = _SSCarPlayScreenshotsEnabled();
  (*(*v0 + 240))(v2);
  v3 = _SSVisualLookUpInScreenshotsEnabled();
  (*(*v0 + 288))(v3);
  _SSVisualIntelligenceV2EnabledIgnoringOrientation();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_962C();
  _SSCarPlayEnabled();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_962C();
  if (qword_10BB0 != -1)
  {
    swift_once();
  }

  v4 = sub_95CC();
  sub_8FC0(v4, qword_10BB8);

  v5 = sub_95AC();
  v6 = sub_992C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109888;
    *(v7 + 4) = (*(*v0 + 136))() & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = (*(*v0 + 184))() & 1;
    *(v7 + 14) = 1024;
    *(v7 + 16) = (*(*v0 + 280))() & 1;
    *(v7 + 20) = 1024;
    *(v7 + 22) = (*(*v0 + 328))() & 1;

    _os_log_impl(&dword_0, v5, v6, "update settings, fullScreenPreviewEnabled: %{BOOL}d, hdrEnabled: %{BOOL}d, visualLookUpEnabled: %{BOOL}d, viSupported: %{BOOL}d", v7, 0x1Au);
  }

  else
  {
  }
}

uint64_t sub_8910@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScreenshotServicesSettingsViewModel();
  result = sub_95DC();
  *a1 = result;
  return result;
}

uint64_t sub_8950(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8A48;

  return v7(a1);
}

uint64_t sub_8A48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_8B40(uint64_t a1)
{
  v2 = (*(*(sub_1690(&unk_10850, &qword_A6C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    type metadata accessor for ScreenshotServicesSettingsViewModel();
    swift_unknownObjectRetain();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = sub_990C();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      swift_unknownObjectRetain();
      v8 = sub_98DC();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = &protocol witness table for MainActor;
      v9[4] = v6;
      sub_7BDC(0, 0, v4, &unk_A6D8, v9);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_8D6C(const char *a1, uint64_t (*a2)(void))
{
  if (qword_10BB0 != -1)
  {
    swift_once();
  }

  v3 = sub_95CC();
  sub_8FC0(v3, qword_10BB8);
  v4 = sub_95AC();
  v5 = sub_992C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, a1, v6, 2u);
  }

  return a2();
}

uint64_t type metadata accessor for ScreenshotServicesSettingsViewModel()
{
  result = qword_10D00;
  if (!qword_10D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8ED4()
{
  sub_8F70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_8F70()
{
  if (!qword_10620)
  {
    v0 = sub_963C();
    if (!v1)
    {
      atomic_store(v0, &qword_10620);
    }
  }
}

uint64_t sub_8FC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_8FF8(uint64_t a1, uint64_t *a2)
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

unint64_t sub_905C()
{
  result = qword_10848;
  if (!qword_10848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10848);
  }

  return result;
}

uint64_t sub_90A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_90E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_917C;

  return sub_7AE0(v3, v4, v5, v2);
}

uint64_t sub_917C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_9270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1690(&unk_10850, &qword_A6C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92E0(uint64_t a1)
{
  v2 = sub_1690(&unk_10850, &qword_A6C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9348()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_9380(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_94F4;

  return sub_8950(a1, v5);
}

uint64_t sub_9438(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_917C;

  return sub_8950(a1, v5);
}