void sub_29EABED94(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v25 - v15;
  if (a1)
  {
    v17 = sub_29EB1491C();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a1;
    v19 = a1;
    sub_29EAD3968(0, 0, v16, &unk_29EB17670, v18);
  }

  [a2 cancel];
  sub_29EABDBE4();
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v20 = sub_29EB1454C();
  __swift_project_value_buffer(v20, qword_2A187A840);

  v21 = sub_29EB1452C();
  v22 = sub_29EB14A3C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_29EABC674(a4, a5, &v26);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_29EABC674(a6, a7, &v26);
    _os_log_impl(&dword_29EAA5000, v21, v22, "Cancelling %s for %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v24, -1, -1);
    MEMORY[0x29EDA8150](v23, -1, -1);
  }
}

uint64_t sub_29EABF030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x29EDCA608];
  v4[3] = a4;
  v5 = sub_29EB14D0C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EABF11C, 0, 0);
}

uint64_t sub_29EABF11C()
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 48);
  sub_29EB14F2C();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_29EABF214;
  v3 = *(v0 + 48);
  v4 = *MEMORY[0x29EDCA608];

  return sub_29EAB56F0(10000000000000000, 0, 0, 0, 1);
}

uint64_t sub_29EABF214()
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_29EABFA20;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_29EABF3D8;
  }

  v9 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29EABF3D8()
{
  v10 = *MEMORY[0x29EDCA608];
  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) closeAndReturnError_];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v4 = v2;
    v5 = sub_29EB1417C();

    swift_willThrow();
  }

  v6 = *(v0 + 48);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x29EDCA608];

  return v7();
}

uint64_t sub_29EABF4C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v22 - v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v5 = sub_29EB1454C();
  __swift_project_value_buffer(v5, qword_2A187A840);
  v6 = v0;
  v7 = sub_29EB1452C();
  v8 = sub_29EB14A4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *&v6[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress];
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&dword_29EAA5000, v7, v8, "Got update %@", v9, 0xCu);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v14 = *&v6[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_observationBlock];
  v13 = *&v6[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_observationBlock + 8];
  [*&v6[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress] fractionCompleted];
  v16 = v15;
  v17 = sub_29EB1491C();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_29EB148FC();

  v18 = sub_29EB148EC();
  v19 = swift_allocObject();
  v20 = MEMORY[0x29EDCA390];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v14;
  v19[5] = v13;
  v19[6] = v16;
  sub_29EAD3968(0, 0, v4, &unk_29EB17640, v19);
}

uint64_t sub_29EABF740()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29EABF780(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAAAE5C;

  return sub_29EABE98C(v8, a1, v4, v5, v6, v7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EABF880()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EABF8C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB73B4;

  return sub_29EABF030(a1, v4, v5, v6);
}

uint64_t sub_29EABF974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EABF9BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29EABFA20()
{
  v2 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDCA608];

  return sub_29EABF3D8();
}

uint64_t AppMigrationExtension.appContainer.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_29EB1447C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  return sub_29EABFC80(a1);
}

id AppMigrationExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for MigrationExtensionConfiguration();
  result = sub_29EAE29EC(v1);
  *a1 = result;
  return result;
}

uint64_t sub_29EABFC80@<X0>(char *a1@<X8>)
{
  v99 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A910, ".]");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v96 = &v94 - v3;
  v98 = sub_29EB1413C();
  v97 = *(v98 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v98);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_29EB1418C();
  v101 = *(v102 - 8);
  v6 = v101[8];
  MEMORY[0x2A1C7C4A8](v102);
  v104 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5C8, &qword_29EB16CE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v111 = &v94 - v10;
  v106 = sub_29EB1422C();
  v103 = *(v106 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v106);
  v100 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A918, "&]");
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v110 = &v94 - v15;
  v16 = sub_29EB1458C();
  v107 = *(v16 - 8);
  v108 = v16;
  v17 = *(v107 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v109 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v105 = &v94 - v20;
  v21 = sub_29EB144FC();
  v115 = *(v21 - 8);
  v116 = v21;
  v22 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v114 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29EB144DC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = sub_29EB1451C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29EB144AC();
  v112 = *(v31 - 8);
  v113 = v31;
  v32 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 104))(v30, *MEMORY[0x29EDC6D50], v26);
  sub_29EB144CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A920, "&]");
  v35 = sub_29EB144BC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29EB16E50;
  v40 = v39 + v38;
  v41 = *(v36 + 104);
  v41(v40, *MEMORY[0x29EDC6D38], v35);
  v41(v40 + v37, *MEMORY[0x29EDC6D40], v35);
  (*(v115 + 104))(v114, *MEMORY[0x29EDC6D48], v116);
  v42 = v117;
  result = sub_29EB1449C();
  if (!v42)
  {
    v45 = v109;
    v44 = v110;
    v46 = v111;
    sub_29EAC0E2C(&qword_2A187A928, MEMORY[0x29EDC6D28]);
    v47 = v113;
    sub_29EB149AC();
    sub_29EB149CC();
    v48 = v47;
    v49 = v34;
    if (v120 == v118)
    {
      v50 = v48;
      sub_29EABCDBC();
      swift_allocError();
      *v51 = 0xD000000000000025;
      v51[1] = 0x800000029EB1BD20;
      v51[2] = 0;
      swift_willThrow();
      v52 = v50;
      v53 = v112;
      return (*(v53 + 8))(v49, v52);
    }

    v54 = sub_29EB149EC();
    v56 = *v55;

    v54(&v118, 0);
    sub_29EB1450C();
    v57 = v107;
    v58 = v108;
    if ((*(v107 + 48))(v44, 1, v108) == 1)
    {
      sub_29EABCCEC(v44, &qword_2A187A918, "&]");
      sub_29EABCDBC();
      swift_allocError();
      *v59 = 0xD000000000000020;
      v59[1] = 0x800000029EB1BCA0;
      v59[2] = 0;
      swift_willThrow();

      v53 = v112;
      v52 = v113;
      return (*(v53 + 8))(v49, v52);
    }

    v116 = v56;
    v117 = v34;
    v60 = v105;
    (*(v57 + 32))(v105, v44, v58);
    v61 = v45;
    (*(v57 + 16))(v45, v60, v58);
    v63 = (v101 + 13);
    v62 = v101[13];
    v64 = v104;
    LODWORD(v115) = *MEMORY[0x29EDB9B10];
    v114 = v62;
    (v62)(v104);
    sub_29EAC0ABC(v61, v64, v46);
    v65 = v103;
    v66 = v106;
    if ((*(v103 + 48))(v46, 1, v106) == 1)
    {
      v67 = v57;
      sub_29EABCCEC(v46, &qword_2A187A5C8, &qword_29EB16CE0);
      v118 = 0;
      v119 = 0xE000000000000000;
      sub_29EB14C2C();

      v118 = 0xD00000000000002FLL;
      v119 = 0x800000029EB1BCD0;
      sub_29EAC0E2C(&qword_2A187A930, MEMORY[0x29EDCA318]);
      v68 = sub_29EB14E8C();
      MEMORY[0x29EDA6DF0](v68);

      v69 = v60;
      v70 = v118;
      v71 = v119;
      sub_29EABCDBC();
      swift_allocError();
      *v72 = v70;
      v72[1] = v71;
      v72[2] = 0;
      swift_willThrow();

      (*(v67 + 8))(v69, v58);
      v53 = v112;
      v52 = v113;
      v49 = v117;
      return (*(v53 + 8))(v49, v52);
    }

    v110 = v63;
    (*(v65 + 32))(v100, v46, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A938, &qword_29EB18210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29EB16460;
    v74 = *MEMORY[0x29EDB8D50];
    *(inited + 32) = *MEMORY[0x29EDB8D50];
    v75 = v74;
    sub_29EAE9110(inited);
    swift_setDeallocating();
    sub_29EAC0E74(inited + 32);
    v76 = v96;
    sub_29EB1419C();

    v77 = v97;
    v78 = v98;
    (*(v97 + 56))(v76, 0, 1, v98);
    v79 = v95;
    (*(v77 + 32))(v95, v76, v78);
    v80 = sub_29EB1411C();
    (*(v77 + 8))(v79, v78);
    v81 = v112;
    v82 = v102;
    if (v80 == 2)
    {
      v83 = v99;
      v84 = v104;
      v85 = v103;
    }

    else
    {
      v83 = v99;
      v84 = v104;
      v85 = v103;
      if (v80)
      {
        goto LABEL_14;
      }
    }

    sub_29EB1448C();
LABEL_14:
    v86 = sub_29EB144EC();
    v111 = v87;
    v112 = v86;
    v88 = type metadata accessor for MigrationDataContainer();
    v89 = *(v88 + 20);
    v109 = v88;
    v90 = v100;
    (*(v85 + 16))(&v83[v89], v100, v106);
    v118 = 0x746E656D75636F44;
    v119 = 0xE900000000000073;
    (v114)(v84, v115, v82);
    v91 = *(v88 + 24);
    v103 = sub_29EAAD404();
    sub_29EB1421C();
    v104 = v101[1];
    (v104)(v84, v82);
    v118 = 0xD00000000000001BLL;
    v119 = 0x800000029EB1BD00;
    (v114)(v84, v115, v82);
    v92 = &v83[*(v109 + 7)];
    sub_29EB1421C();

    (v104)(v84, v82);
    (*(v85 + 8))(v90, v106);
    (*(v107 + 8))(v105, v108);
    result = (*(v81 + 8))(v117, v113);
    v93 = v111;
    *v83 = v112;
    *(v83 + 1) = v93;
  }

  return result;
}

uint64_t sub_29EAC0ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5C8, &qword_29EB16CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v29 = v26 - v7;
  v8 = sub_29EB1418C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29EB1458C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_29EB1475C();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = sub_29EB1422C();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    sub_29EB1420C();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = sub_29EB1422C();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

uint64_t sub_29EAC0DE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for MigrationExtensionConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_29EAC0E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EAC0E74(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_29EAC0F3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

unint64_t ArchiveCompressionScheme.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_29EAC1028()
{
  result = qword_2A187A940;
  if (!qword_2A187A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A940);
  }

  return result;
}

unint64_t sub_29EAC1080()
{
  result = qword_2A187A948;
  if (!qword_2A187A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A948);
  }

  return result;
}

uint64_t sub_29EAC10D4()
{
  v1 = *v0;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v1);
  return sub_29EB14FAC();
}

uint64_t sub_29EAC111C()
{
  v1 = *v0;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v1);
  return sub_29EB14FAC();
}

uint64_t *sub_29EAC1160@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_29EAC124C()
{
  result = qword_2A187A950;
  if (!qword_2A187A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A950);
  }

  return result;
}

unint64_t sub_29EAC12A0()
{
  result = qword_2A187A958;
  if (!qword_2A187A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A958);
  }

  return result;
}

uint64_t sub_29EAC1350()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_29EAC13A4();
}

uint64_t sub_29EAC13A4()
{
  v2 = sub_29EB146EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = &type metadata for _t_Preflight;
  v20[4] = sub_29EAA88D4();
  v6 = swift_allocObject();
  v20[0] = v6;
  v7 = *(v0 + 80);
  *(v6 + 80) = *(v0 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v0 + 96);
  *(v6 + 128) = *(v0 + 112);
  v8 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v8;
  v9 = *(v0 + 48);
  *(v6 + 48) = *(v0 + 32);
  *(v6 + 64) = v9;
  v10 = sub_29EB1408C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_29EAA95D8(v0, v19);
  sub_29EB1407C();
  sub_29EAACFBC();
  v13 = sub_29EB1406C();
  if (v1)
  {
    sub_29EAAD4D8(v20);

    return v5;
  }

  v15 = v13;
  v16 = v14;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v18)
  {
    v5 = result;
    sub_29EAAD4D8(v20);
    sub_29EAAD010(v15, v16);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAC1538()
{
  v2 = sub_29EB146EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19[3] = &type metadata for _t_StreamRepeated;
  v19[4] = sub_29EAB622C();
  v6 = swift_allocObject();
  v19[0] = v6;
  v7 = v0[1];
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = v0[2];
  v8 = sub_29EB1408C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_29EAC3C50(v0, v18);
  sub_29EB1407C();
  sub_29EAACFBC();
  v11 = sub_29EB1406C();
  if (v1)
  {
    sub_29EAAD4D8(v19);

    return v5;
  }

  v13 = v11;
  v14 = v12;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v16)
  {
    v5 = result;
    sub_29EAAD4D8(v19);
    sub_29EAAD010(v13, v14);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAC16B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v11 = sub_29EB146EC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = a4;
  v16 = a5(v13);
  v27[0] = a1;
  v27[1] = a2;
  v27[4] = v16;
  v27[2] = a3;
  v17 = sub_29EB1408C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v20 = sub_29EB1406C();
  if (v5)
  {
    sub_29EAAD4D8(v27);

    return v15;
  }

  v22 = v20;
  v23 = v21;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v25)
  {
    v15 = result;
    sub_29EAAD4D8(v27);
    sub_29EAAD010(v22, v23);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAC1818(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_29EB146EC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = &type metadata for _t_ArchiveRepeatedFiles;
  v24[4] = sub_29EAC3ACC();
  v13 = swift_allocObject();
  v24[0] = v13;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v14 = sub_29EB1408C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_29EAB0308(a3, a4);
  sub_29EB1407C();
  sub_29EAACFBC();
  v17 = sub_29EB1406C();
  if (v4)
  {
    sub_29EAAD4D8(v24);

    return v12;
  }

  v19 = v17;
  v20 = v18;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v22)
  {
    v12 = result;
    sub_29EAAD4D8(v24);
    sub_29EAAD010(v19, v20);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAC199C(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = sub_29EB146EC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v23 = a2;
  v24 = a3(v9);
  v22[0] = a1;
  v12 = sub_29EB1408C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v15 = sub_29EB1406C();
  if (v3)
  {
    sub_29EAAD4D8(v22);

    return v11;
  }

  v17 = v15;
  v18 = v16;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v20)
  {
    v11 = result;
    sub_29EAAD4D8(v22);
    sub_29EAAD010(v17, v18);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAC1AEC(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1);
  v4 = sub_29EB146EC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20 = &type metadata for _t_ThrowsPosixError;
  v21 = sub_29EAC397C();
  v18[0] = v2;
  v19 = v3;
  v8 = sub_29EB1408C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v11 = sub_29EB1406C();
  if (v1)
  {
    sub_29EAAD4D8(v18);

    return v7;
  }

  v13 = v11;
  v14 = v12;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v16)
  {
    v7 = result;
    sub_29EAAD4D8(v18);
    sub_29EAAD010(v13, v14);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAC1C40(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29EB146EC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v24 = &type metadata for _t_ThrowsGenericError;
  v25 = sub_29EAC3928();
  v21[0] = a1;
  v22 = a2;
  v23 = a3;
  v11 = sub_29EB1408C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  sub_29EB1407C();
  sub_29EAACFBC();
  v14 = sub_29EB1406C();
  if (v3)
  {
    sub_29EAAD4D8(v21);

    return v10;
  }

  v16 = v14;
  v17 = v15;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v19)
  {
    v10 = result;
    sub_29EAAD4D8(v21);
    sub_29EAAD010(v16, v17);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t _t_MigrationInjectionMessage.jsonString.getter(uint64_t a1, uint64_t a2)
{
  v6 = sub_29EB146EC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a1;
  v21[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  v11 = sub_29EB1408C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v14 = sub_29EB1406C();
  if (v3)
  {
    sub_29EAAD4D8(v21);

    return v9;
  }

  v16 = v14;
  v17 = v15;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v19)
  {
    v9 = result;
    sub_29EAAD4D8(v21);
    sub_29EAAD010(v16, v17);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t _t_MigrationInjectionMessageWrapper.jsonString.getter()
{
  v1 = sub_29EB146EC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29EB1408C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v8 = sub_29EB1406C();
  v10 = v9;

  if (v0)
  {
    return v4;
  }

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v12)
  {
    v4 = result;
    sub_29EAAD010(v8, v10);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAC2080()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_29EAC1538();
}

uint64_t sub_29EAC20BC()
{
  if (qword_2A187A340 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1881300;
  v1 = qword_2A187A338;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_29EAC3D60(v2);
  if (qword_2A187A2F8 != -1)
  {
    swift_once();
  }

  sub_29EAC3D60(v3);
  if (qword_2A187A2D0 != -1)
  {
    swift_once();
  }

  result = sub_29EAC3D60(v4);
  off_2A187A960 = v0;
  return result;
}

uint64_t _t_allMigrationInjectionMessages.getter()
{
  if (qword_2A187A320 != -1)
  {
    swift_once();
  }
}

uint64_t sub_29EAC2280()
{
  swift_getMetatypeMetadata();
  v0 = sub_29EB146FC();
  v2 = v1;
  if ((sub_29EB1479C() & 1) == 0)
  {
    return v0;
  }

  v3 = sub_29EAC2420(0x30007uLL, v0, v2);
  v5 = v4 >> 14;
  if (v4 >> 14 == v3 >> 14)
  {

    return v0;
  }

  sub_29EB14B8C();

  v6 = sub_29EB14B7C();

  if (v5 >= v6 >> 14)
  {
    sub_29EB14B9C();

    v8 = sub_29EB1465C();

    sub_29EAC3D0C();
    sub_29EB1476C();

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_29EAC2420(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_29EB147BC();
  }

  __break(1u);
  return result;
}

AppMigrationKit::_t_MigrationInjectionCodingKey __swiftcall _t_MigrationInjectionCodingKey.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = qword_2A187A320;

  if (v5 != -1)
  {
LABEL_15:
    swift_once();
  }

  v6 = 0;
  v7 = off_2A187A960;
  v8 = *(off_2A187A960 + 2);
  v9 = (off_2A187A960 + 32);
  while (1)
  {
    v10 = v6;
    if (v8 == v6)
    {
      v15 = 0;
      goto LABEL_13;
    }

    if (v6 >= v7[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v11 = *v9;
    if (sub_29EAC2280() == countAndFlagsBits && v12 == object)
    {
      break;
    }

    v14 = sub_29EB14EBC();

    v9 += 2;
    v6 = v10 + 1;
    if (v14)
    {
      v15 = v10;
      goto LABEL_13;
    }
  }

  v15 = v10;
LABEL_13:

  *v4 = countAndFlagsBits;
  *(v4 + 8) = object;
  *(v4 + 16) = v15;
  *(v4 + 24) = v8 == v10;
  result.intValue.value = v18;
  result.stringValue._object = v17;
  result.stringValue._countAndFlagsBits = v16;
  result.intValue.is_nil = v19;
  return result;
}

uint64_t _t_MigrationInjectionCodingKey.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _t_MigrationInjectionCodingKey.intValue.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void __swiftcall _t_MigrationInjectionCodingKey.init(intValue:)(AppMigrationKit::_t_MigrationInjectionCodingKey_optional *__return_ptr retstr, Swift::Int intValue)
{
  if (qword_2A187A320 == -1)
  {
    if ((intValue & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (intValue < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(off_2A187A960 + 2) > intValue)
  {
    v4 = *(off_2A187A960 + 2 * intValue + 4);
    v5._countAndFlagsBits = sub_29EAC2280();
    _t_MigrationInjectionCodingKey.init(stringValue:)(v5);
    retstr->value.stringValue._countAndFlagsBits = v6;
    retstr->value.stringValue._object = v7;
    retstr->value.intValue.value = intValue;
    retstr->value.intValue.is_nil = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_29EAC26D0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double sub_29EAC2700@<D0>(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{
  _t_MigrationInjectionCodingKey.init(stringValue:)(a1);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_29EAC2748()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_29EAC2758(uint64_t a1)
{
  v2 = sub_29EAC2AE8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAC2794(uint64_t a1)
{
  v2 = sub_29EAC2AE8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_MigrationInjectionMessageWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A968, &qword_29EB17920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAC2AE8();
  sub_29EB14FEC();
  if (!v2)
  {
    v30 = v6;
    v18 = a2;
    if (qword_2A187A320 != -1)
    {
      swift_once();
    }

    if (*(off_2A187A960 + 2))
    {
      v19 = *(off_2A187A960 + 2);
      v11._countAndFlagsBits = sub_29EAC2280();
      _t_MigrationInjectionCodingKey.init(stringValue:)(v11);
      v20 = v23;
      v21 = v24;
      v22 = v25;
      *(&v26[1] + 8) = v19;
      __swift_allocate_boxed_opaque_existential_0(v26);
      v12 = *(*(&v19 + 1) + 8);
      sub_29EB14DFC();

      (*(v30 + 8))(v9, v5);
      sub_29EAADE9C(v26, v27);
      sub_29EAADE9C(v27, v28);
      v14 = v28[1];
      v15 = v18;
      *v18 = v28[0];
      v15[1] = v14;
      *(v15 + 4) = v29;
    }

    else
    {
      sub_29EABCDBC();
      swift_allocError();
      *v13 = 0xD000000000000010;
      v13[1] = 0x800000029EB1BD50;
      v13[2] = 0;
      swift_willThrow();
      (*(v30 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_29EAC2AE8()
{
  result = qword_2A187A970;
  if (!qword_2A187A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A970);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x29EDA8150);
  }

  return result;
}

uint64_t sub_29EAC2B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A978, &qword_29EB17928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _t_MigrationInjectionMessageWrapper.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A980, &qword_29EB17930);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v14[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAC2AE8();
  sub_29EB14FFC();
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_29EAAD474(v2, v20);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v11._countAndFlagsBits = sub_29EAC2280();
  _t_MigrationInjectionCodingKey.init(stringValue:)(v11);
  *&v14[8] = v17;
  v15 = v18;
  v16 = v19;
  v12 = *(v10 + 16);
  sub_29EB14E6C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t _t_MigrationInjectionControlMessage.jsonString.getter()
{
  v1 = sub_29EB146EC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29EB1408C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAC2EF4();
  v8 = sub_29EB1406C();
  v10 = v9;

  if (v0)
  {
    return v4;
  }

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v12)
  {
    v4 = result;
    sub_29EAAD010(v8, v10);
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_29EAC2EF4()
{
  result = qword_2A187A988;
  if (!qword_2A187A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A988);
  }

  return result;
}

uint64_t _t_MigrationInjectionControlMessage.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_29EB14D8C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_29EAC2FB0()
{
  result = qword_2A187A990;
  if (!qword_2A187A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A990);
  }

  return result;
}

unint64_t sub_29EAC3008()
{
  result = qword_2A187A998;
  if (!qword_2A187A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A998);
  }

  return result;
}

unint64_t sub_29EAC3068()
{
  result = qword_2A187A9A0;
  if (!qword_2A187A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9A0);
  }

  return result;
}

uint64_t sub_29EAC30BC()
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAC3120()
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAC316C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29EB14D8C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_29EAC328C()
{
  result = qword_2A187A9A8;
  if (!qword_2A187A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A9B0, &qword_29EB17B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9A8);
  }

  return result;
}

uint64_t dispatch thunk of _t_MigrationInjectionMessage.perform(operation:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EAAAE5C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of _t_MigrationInjectionMessage.perform(operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAB73B4;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_29EAC35A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_29EAC35F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29EAC3658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29EAC36A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for _t_MigrationInjectionControlMessage(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _t_MigrationInjectionControlMessage(_WORD *result, int a2, int a3)
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

unint64_t sub_29EAC3928()
{
  result = qword_2A187A9B8;
  if (!qword_2A187A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9B8);
  }

  return result;
}

unint64_t sub_29EAC397C()
{
  result = qword_2A187A9C0;
  if (!qword_2A187A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9C0);
  }

  return result;
}

unint64_t sub_29EAC39D0()
{
  result = qword_2A187A9C8;
  if (!qword_2A187A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9C8);
  }

  return result;
}

unint64_t sub_29EAC3A24()
{
  result = qword_2A187A9D0;
  if (!qword_2A187A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9D0);
  }

  return result;
}

unint64_t sub_29EAC3A78()
{
  result = qword_2A187A9D8;
  if (!qword_2A187A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9D8);
  }

  return result;
}

unint64_t sub_29EAC3ACC()
{
  result = qword_2A187A9E0;
  if (!qword_2A187A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9E0);
  }

  return result;
}

uint64_t sub_29EAC3B20()
{
  sub_29EAAD010(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

unint64_t sub_29EAC3B58()
{
  result = qword_2A187A9E8;
  if (!qword_2A187A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9E8);
  }

  return result;
}

unint64_t sub_29EAC3BAC()
{
  result = qword_2A187A9F0;
  if (!qword_2A187A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9F0);
  }

  return result;
}

uint64_t sub_29EAC3C00()
{
  v1 = v0[5];

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    sub_29EAAD010(v0[6], v2);
  }

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29EAC3CAC()
{
  if (v0[6])
  {

    v1 = v0[8];
  }

  if (v0[13])
  {

    v2 = v0[15];
  }

  v3 = v0[16];

  return MEMORY[0x2A1C733A0](v0, 136, 7);
}

unint64_t sub_29EAC3D0C()
{
  result = qword_2A187A9F8;
  if (!qword_2A187A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9F8);
  }

  return result;
}

uint64_t sub_29EAC3D60(uint64_t result)
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

  result = sub_29EAAD300(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

uint64_t dispatch thunk of BrowserDataImporting.importBrowserData(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAAAE5C;

  return v11(a1, a2, a3);
}

uint64_t DeviceToDeviceTransferMetrics.compressedSize.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t DeviceToDeviceTransferMetrics.init(estimatedSize:actualSize:usesCustomProgress:compressedSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = 0;
  return result;
}

uint64_t DeviceToDeviceTransferMetrics.init(estimatedSize:actualSize:usesCustomProgress:compressedSize:duration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 40) = a6;
  return result;
}

__n128 DeviceToDeviceTransferMetrics.XPCHelper.deviceToDeviceTransferMetrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 16);
  v3 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 24);
  v4 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 32);
  v5 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 40);
  result = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u8[0] = v4;
  a1[2].n128_u64[1] = v5;
  return result;
}

void sub_29EAC4038(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics;
  v4 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics);
  v5 = sub_29EB14FCC();
  v6 = sub_29EB1467C();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v3 + 8);
  v8 = sub_29EB14FCC();
  v9 = sub_29EB1467C();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v3 + 16);
  v11 = sub_29EB1467C();
  [a1 encodeBool:v10 forKey:v11];

  if (*(v3 + 32))
  {
    v12 = 0;
  }

  else
  {
    v13 = *(v3 + 24);
    v12 = sub_29EB14FCC();
  }

  v14 = sub_29EB1467C();
  [a1 encodeObject:v12 forKey:v14];

  v15 = *(v3 + 40);
  v16 = sub_29EB14FCC();
  v17 = sub_29EB1467C();
  [a1 encodeObject:v16 forKey:v17];
}

uint64_t DeviceToDeviceTransferMetrics.XPCHelper.init(coder:)(void *a1)
{
  sub_29EAC44F8();
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_29EB14FDC();
  }

  type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_29EAC44F8()
{
  result = qword_2A187AD40;
  if (!qword_2A187AD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A187AD40);
  }

  return result;
}

id DeviceToDeviceTransferMetrics.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceToDeviceTransferMetrics.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EAC4658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29EAC46AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t MigrationDataContainer.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MigrationDataContainer.containerRootDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MigrationDataContainer() + 20);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MigrationDataContainer()
{
  result = qword_2A187AA08;
  if (!qword_2A187AA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MigrationDataContainer.documentsDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MigrationDataContainer() + 24);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MigrationDataContainer.documentsDirectory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MigrationDataContainer() + 24);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MigrationDataContainer.applicationSupportDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MigrationDataContainer() + 28);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MigrationDataContainer.applicationSupportDirectory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MigrationDataContainer() + 28);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_29EAC4AF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29EB1422C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29EAC4BB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29EB1422C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29EAC4C5C()
{
  result = sub_29EB1422C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EAC4CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC4D0C, 0, 0);
}

uint64_t sub_29EAC4D0C()
{
  v27 = v0;
  v1 = (*(v0 + 96) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 104) = *v1;
  v3 = v1[1];
  *(v0 + 112) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 56);
  v5 = sub_29EB1454C();
  *(v0 + 120) = __swift_project_value_buffer(v5, qword_2A187A840);

  v6 = sub_29EB1452C();
  v7 = sub_29EB14A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EABC674(v9, v8, &v26);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EABC674(v2, v3, &v26);
    _os_log_impl(&dword_29EAA5000, v6, v7, "Starting to %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v12 = *(v0 + 96);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v25 = *(v0 + 80);
  v18 = sub_29EABD970(v17);
  *(v0 + 128) = v18;
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *(v19 + 16) = v12;
  *(v19 + 24) = v16;
  *(v19 + 32) = v15;
  *(v19 + 40) = v2;
  *(v19 + 48) = v3;
  *(v19 + 56) = v25;
  *(v19 + 72) = v13;
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v18;
  v20[5] = v16;
  v20[6] = v15;
  v20[7] = v2;
  v20[8] = v3;
  v21 = *(MEMORY[0x29EDCA470] + 4);
  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA78, qword_29EB17F60);
  *(v0 + 160) = v23;
  *v22 = v0;
  v22[1] = sub_29EAC5018;

  return MEMORY[0x2A1C73C78](v0 + 16, &unk_29EB17F58, v19, sub_29EACDD94, v20, 0, 0, v23);
}

uint64_t sub_29EAC5018()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_29EAC534C;
  }

  else
  {
    v6 = *(v2 + 136);
    v5 = *(v2 + 144);

    v4 = sub_29EAC513C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAC513C()
{
  v26 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  sub_29EABE608();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  v7 = sub_29EB1452C();
  v8 = sub_29EB14A4C();

  if (os_log_type_enabled(v7, v8))
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 128);
    v9 = *(v0 + 104);
    v22 = *(v0 + 112);
    v10 = v5;
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315650;
    v15 = v12;
    v5 = v10;
    *(v13 + 4) = sub_29EABC674(v11, v15, &v25);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_29EABC674(v9, v22, &v25);
    *(v13 + 22) = 2080;
    *(v0 + 32) = v10;
    *(v0 + 40) = v6;
    v16 = sub_29EB146FC();
    v18 = sub_29EABC674(v16, v17, &v25);

    *(v13 + 24) = v18;
    _os_log_impl(&dword_29EAA5000, v7, v8, "Finished %s for %s -- %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v14, -1, -1);
    MEMORY[0x29EDA8150](v13, -1, -1);
  }

  else
  {
    v19 = *(v0 + 128);
  }

  sub_29EABECB0(*(v0 + 64));
  v20 = *(v0 + 8);

  return v20(v5, v6);
}

uint64_t sub_29EAC534C()
{
  v30 = v0;
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[7];

  sub_29EABE608();

  v8 = v1;
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[21];
    v12 = v0[14];
    v28 = v0[13];
    v13 = v0[6];
    v14 = v0[7];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_29EABC674(v13, v14, v29);
    *(v15 + 12) = 2080;
    v18 = sub_29EABC674(v28, v12, v29);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v16 = v20;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Failed to %s for %s -- %@", v15, 0x20u);
    sub_29EABCCEC(v16, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v17, -1, -1);
    MEMORY[0x29EDA8150](v15, -1, -1);
  }

  else
  {
    v21 = v0[14];
  }

  v22 = v0[21];
  v23 = v0[16];
  v24 = v0[8];
  swift_willThrow();

  sub_29EABECB0(v24);
  v25 = v0[1];
  v26 = v0[21];

  return v25();
}

uint64_t sub_29EAC55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return MEMORY[0x2A1C73D48](sub_29EAC55CC, 0, 0);
}

uint64_t sub_29EAC55CC()
{
  v27 = v0;
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 72) = *v1;
  v3 = v1[1];
  *(v0 + 80) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 24);
  v5 = sub_29EB1454C();
  *(v0 + 88) = __swift_project_value_buffer(v5, qword_2A187A840);

  v6 = sub_29EB1452C();
  v7 = sub_29EB14A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EABC674(v9, v8, &v26);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EABC674(v2, v3, &v26);
    _os_log_impl(&dword_29EAA5000, v6, v7, "Starting to %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v25 = *(v0 + 48);
  v18 = sub_29EABD970(v17);
  *(v0 + 96) = v18;
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *(v19 + 16) = v12;
  *(v19 + 24) = v16;
  *(v19 + 32) = v15;
  *(v19 + 40) = v2;
  *(v19 + 48) = v3;
  *(v19 + 56) = v25;
  *(v19 + 72) = v13;
  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v18;
  v20[5] = v16;
  v20[6] = v15;
  v20[7] = v2;
  v20[8] = v3;
  v21 = *(MEMORY[0x29EDCA470] + 4);
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *v22 = v0;
  v22[1] = sub_29EAC58C0;
  v23 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C78](v22, &unk_29EB17F28, v19, sub_29EACDD94, v20, 0, 0, v23);
}

uint64_t sub_29EAC58C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_29EACDDCC;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_29EACDD8C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAC59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[89] = v7;
  v8[88] = a7;
  v8[87] = a6;
  v8[86] = a5;
  v8[85] = a4;
  v8[84] = a3;
  v8[83] = a2;
  v8[82] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC5A20, 0, 0);
}

uint64_t sub_29EAC5A20()
{
  v26 = v0;
  v1 = (*(v0 + 712) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 720) = *v1;
  v3 = v1[1];
  *(v0 + 728) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 672);
  v5 = sub_29EB1454C();
  *(v0 + 736) = __swift_project_value_buffer(v5, qword_2A187A840);

  v6 = sub_29EB1452C();
  v7 = sub_29EB14A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 672);
    v9 = *(v0 + 664);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EABC674(v9, v8, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EABC674(v2, v3, &v25);
    _os_log_impl(&dword_29EAA5000, v6, v7, "Starting to %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v12 = *(v0 + 712);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v24 = *(v0 + 696);
  v18 = sub_29EABD970(v17);
  *(v0 + 744) = v18;
  v19 = swift_task_alloc();
  *(v0 + 752) = v19;
  *(v19 + 16) = v12;
  *(v19 + 24) = v16;
  *(v19 + 32) = v15;
  *(v19 + 40) = v2;
  *(v19 + 48) = v3;
  *(v19 + 56) = v24;
  *(v19 + 72) = v13;
  v20 = swift_task_alloc();
  *(v0 + 760) = v20;
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v18;
  v20[5] = v16;
  v20[6] = v15;
  v20[7] = v2;
  v20[8] = v3;
  v21 = *(MEMORY[0x29EDCA470] + 4);
  v22 = swift_task_alloc();
  *(v0 + 768) = v22;
  *v22 = v0;
  v22[1] = sub_29EAC5D28;

  return MEMORY[0x2A1C73C78](v0 + 16, &unk_29EB17F10, v19, sub_29EACDD94, v20, 0, 0, &type metadata for PreflightInfo);
}

uint64_t sub_29EAC5D28()
{
  v2 = *(*v1 + 768);
  v5 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = sub_29EAC60DC;
  }

  else
  {
    v3 = sub_29EAC5E3C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAC5E3C()
{
  v39 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 672);
  sub_29EABE608();
  v5 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v5;
  v6 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v6;
  v7 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v7;
  v8 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v8;
  sub_29EAB83AC(v0 + 144, v0 + 272);

  sub_29EAB83AC(v0 + 144, v0 + 400);
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A4C();

  sub_29EACD61C(v0 + 144);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 744);
    v12 = *(v0 + 728);
    v13 = *(v0 + 720);
    v14 = *(v0 + 672);
    v15 = *(v0 + 664);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_29EABC674(v15, v14, &v38);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_29EABC674(v13, v12, &v38);
    *(v16 + 22) = 2080;
    v18 = *(v0 + 224);
    *(v0 + 592) = *(v0 + 208);
    *(v0 + 608) = v18;
    v19 = *(v0 + 256);
    *(v0 + 624) = *(v0 + 240);
    *(v0 + 640) = v19;
    v20 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v20;
    v21 = *(v0 + 192);
    *(v0 + 560) = *(v0 + 176);
    *(v0 + 576) = v21;
    v22 = sub_29EB146FC();
    v24 = sub_29EABC674(v22, v23, &v38);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Finished %s for %s -- %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v17, -1, -1);
    MEMORY[0x29EDA8150](v16, -1, -1);
  }

  else
  {
    v25 = *(v0 + 744);
    sub_29EACD61C(v0 + 144);
  }

  v26 = *(v0 + 760);
  v27 = *(v0 + 752);
  v28 = *(v0 + 680);
  v29 = *(v0 + 656);
  v30 = *(v0 + 128);
  v32 = *(v0 + 80);
  v31 = *(v0 + 96);
  v29[6] = *(v0 + 112);
  v29[7] = v30;
  v29[4] = v32;
  v29[5] = v31;
  v33 = *(v0 + 16);
  v34 = *(v0 + 32);
  v35 = *(v0 + 64);
  v29[2] = *(v0 + 48);
  v29[3] = v35;
  *v29 = v33;
  v29[1] = v34;
  sub_29EABECB0(v28);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_29EAC60DC()
{
  v30 = v0;
  v1 = v0[97];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[84];

  sub_29EABE608();

  v8 = v1;
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[97];
    v12 = v0[91];
    v28 = v0[90];
    v13 = v0[84];
    v14 = v0[83];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_29EABC674(v14, v13, v29);
    *(v15 + 12) = 2080;
    v18 = sub_29EABC674(v28, v12, v29);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v16 = v20;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Failed to %s for %s -- %@", v15, 0x20u);
    sub_29EABCCEC(v16, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v17, -1, -1);
    MEMORY[0x29EDA8150](v15, -1, -1);
  }

  else
  {
    v21 = v0[91];
  }

  v22 = v0[97];
  v23 = v0[93];
  v24 = v0[85];
  swift_willThrow();

  sub_29EABECB0(v24);
  v25 = v0[1];
  v26 = v0[97];

  return v25();
}

uint64_t sub_29EAC6340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[109] = v7;
  v8[108] = a7;
  v8[107] = a6;
  v8[106] = a5;
  v8[105] = a4;
  v8[104] = a3;
  v8[103] = a2;
  v8[102] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC637C, 0, 0);
}

uint64_t sub_29EAC637C()
{
  v27 = v0;
  v1 = (*(v0 + 872) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 880) = *v1;
  v3 = v1[1];
  *(v0 + 888) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 832);
  v5 = sub_29EB1454C();
  *(v0 + 896) = __swift_project_value_buffer(v5, qword_2A187A840);

  v6 = sub_29EB1452C();
  v7 = sub_29EB14A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 832);
    v9 = *(v0 + 824);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EABC674(v9, v8, &v26);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EABC674(v2, v3, &v26);
    _os_log_impl(&dword_29EAA5000, v6, v7, "Starting to %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v12 = *(v0 + 872);
  v13 = *(v0 + 848);
  v14 = *(v0 + 840);
  v15 = *(v0 + 832);
  v16 = *(v0 + 824);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v25 = *(v0 + 856);
  v18 = sub_29EABD970(v17);
  *(v0 + 904) = v18;
  v19 = swift_task_alloc();
  *(v0 + 912) = v19;
  *(v19 + 16) = v12;
  *(v19 + 24) = v16;
  *(v19 + 32) = v15;
  *(v19 + 40) = v2;
  *(v19 + 48) = v3;
  *(v19 + 56) = v25;
  *(v19 + 72) = v13;
  v20 = swift_task_alloc();
  *(v0 + 920) = v20;
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v18;
  v20[5] = v16;
  v20[6] = v15;
  v20[7] = v2;
  v20[8] = v3;
  v21 = *(MEMORY[0x29EDCA470] + 4);
  v22 = swift_task_alloc();
  *(v0 + 928) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
  *(v0 + 936) = v23;
  *v22 = v0;
  v22[1] = sub_29EAC6698;

  return MEMORY[0x2A1C73C78](v0 + 16, &unk_29EB17EE8, v19, sub_29EACDD94, v20, 0, 0, v23);
}

uint64_t sub_29EAC6698()
{
  v2 = *(*v1 + 928);
  v5 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = sub_29EAC6A88;
  }

  else
  {
    v3 = sub_29EAC67AC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAC67AC()
{
  v43 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 832);
  sub_29EABE608();
  v5 = *(v0 + 128);
  *(v0 + 272) = *(v0 + 112);
  *(v0 + 288) = v5;
  v6 = *(v0 + 160);
  *(v0 + 304) = *(v0 + 144);
  *(v0 + 320) = v6;
  v7 = *(v0 + 64);
  *(v0 + 208) = *(v0 + 48);
  *(v0 + 224) = v7;
  v8 = *(v0 + 96);
  *(v0 + 240) = *(v0 + 80);
  *(v0 + 256) = v8;
  v9 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v9;
  sub_29EACD444(v0 + 176, v0 + 336);

  sub_29EACD444(v0 + 176, v0 + 496);
  v10 = sub_29EB1452C();
  v11 = sub_29EB14A4C();

  sub_29EABCCEC(v0 + 176, &qword_2A187AA48, &qword_29EB17EF0);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 936);
    v41 = *(v0 + 904);
    v13 = *(v0 + 888);
    v14 = *(v0 + 880);
    v15 = *(v0 + 832);
    v16 = *(v0 + 824);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_29EABC674(v16, v15, &v42);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_29EABC674(v14, v13, &v42);
    *(v17 + 22) = 2080;
    v19 = *(v0 + 288);
    *(v0 + 752) = *(v0 + 272);
    *(v0 + 768) = v19;
    v20 = *(v0 + 320);
    *(v0 + 784) = *(v0 + 304);
    *(v0 + 800) = v20;
    v21 = *(v0 + 224);
    *(v0 + 688) = *(v0 + 208);
    *(v0 + 704) = v21;
    v22 = *(v0 + 256);
    *(v0 + 720) = *(v0 + 240);
    *(v0 + 736) = v22;
    v23 = *(v0 + 192);
    *(v0 + 656) = *(v0 + 176);
    *(v0 + 672) = v23;
    v24 = sub_29EB146FC();
    v26 = sub_29EABC674(v24, v25, &v42);

    *(v17 + 24) = v26;
    _os_log_impl(&dword_29EAA5000, v10, v11, "Finished %s for %s -- %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v18, -1, -1);
    MEMORY[0x29EDA8150](v17, -1, -1);
  }

  else
  {
    v27 = *(v0 + 904);
    sub_29EABCCEC(v0 + 176, &qword_2A187AA48, &qword_29EB17EF0);
  }

  v28 = *(v0 + 920);
  v29 = *(v0 + 912);
  v30 = *(v0 + 840);
  v31 = *(v0 + 816);
  v32 = *(v0 + 96);
  v34 = *(v0 + 48);
  v33 = *(v0 + 64);
  v31[4] = *(v0 + 80);
  v31[5] = v32;
  v31[2] = v34;
  v31[3] = v33;
  v35 = *(v0 + 160);
  v37 = *(v0 + 112);
  v36 = *(v0 + 128);
  v31[8] = *(v0 + 144);
  v31[9] = v35;
  v31[6] = v37;
  v31[7] = v36;
  v38 = *(v0 + 32);
  *v31 = *(v0 + 16);
  v31[1] = v38;
  sub_29EABECB0(v30);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_29EAC6A88()
{
  v30 = v0;
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[104];

  sub_29EABE608();

  v8 = v1;
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[118];
    v12 = v0[111];
    v28 = v0[110];
    v13 = v0[104];
    v14 = v0[103];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_29EABC674(v14, v13, v29);
    *(v15 + 12) = 2080;
    v18 = sub_29EABC674(v28, v12, v29);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v16 = v20;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Failed to %s for %s -- %@", v15, 0x20u);
    sub_29EABCCEC(v16, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v17, -1, -1);
    MEMORY[0x29EDA8150](v15, -1, -1);
  }

  else
  {
    v21 = v0[111];
  }

  v22 = v0[118];
  v23 = v0[113];
  v24 = v0[105];
  swift_willThrow();

  sub_29EABECB0(v24);
  v25 = v0[1];
  v26 = v0[118];

  return v25();
}

uint64_t sub_29EAC6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return MEMORY[0x2A1C73D48](sub_29EAC6D18, 0, 0);
}

uint64_t sub_29EAC6D18()
{
  v27 = v0;
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 72) = *v1;
  v3 = v1[1];
  *(v0 + 80) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 24);
  v5 = sub_29EB1454C();
  *(v0 + 88) = __swift_project_value_buffer(v5, qword_2A187A840);

  v6 = sub_29EB1452C();
  v7 = sub_29EB14A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EABC674(v9, v8, &v26);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EABC674(v2, v3, &v26);
    _os_log_impl(&dword_29EAA5000, v6, v7, "Starting to %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v25 = *(v0 + 48);
  v18 = sub_29EABD970(v17);
  *(v0 + 96) = v18;
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *(v19 + 16) = v12;
  *(v19 + 24) = v16;
  *(v19 + 32) = v15;
  *(v19 + 40) = v2;
  *(v19 + 48) = v3;
  *(v19 + 56) = v25;
  *(v19 + 72) = v13;
  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v18;
  v20[5] = v16;
  v20[6] = v15;
  v20[7] = v2;
  v20[8] = v3;
  v21 = *(MEMORY[0x29EDCA470] + 4);
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *v22 = v0;
  v22[1] = sub_29EAC700C;
  v23 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C78](v22, &unk_29EB17EA8, v19, sub_29EACD2A4, v20, 0, 0, v23);
}

uint64_t sub_29EAC700C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_29EAC731C;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_29EAC7130;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAC7130()
{
  v21 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 24);
  sub_29EABE608();

  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_29EABC674(v11, v10, &v20);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_29EABC674(v9, v8, &v20);
    *(v12 + 22) = 2080;
    v14 = sub_29EB146FC();
    v16 = sub_29EABC674(v14, v15, &v20);

    *(v12 + 24) = v16;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Finished %s for %s -- %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v13, -1, -1);
    MEMORY[0x29EDA8150](v12, -1, -1);
  }

  else
  {
    v17 = *(v0 + 96);
  }

  sub_29EABECB0(*(v0 + 32));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_29EAC731C()
{
  v30 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[3];

  sub_29EABE608();

  v8 = v1;
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[16];
    v12 = v0[10];
    v28 = v0[9];
    v13 = v0[2];
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_29EABC674(v13, v14, v29);
    *(v15 + 12) = 2080;
    v18 = sub_29EABC674(v28, v12, v29);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v16 = v20;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Failed to %s for %s -- %@", v15, 0x20u);
    sub_29EABCCEC(v16, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v17, -1, -1);
    MEMORY[0x29EDA8150](v15, -1, -1);
  }

  else
  {
    v21 = v0[10];
  }

  v22 = v0[16];
  v23 = v0[12];
  v24 = v0[4];
  swift_willThrow();

  sub_29EABECB0(v24);
  v25 = v0[1];
  v26 = v0[16];

  return v25();
}

uint64_t sub_29EAC7570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC75A8, 0, 0);
}

uint64_t sub_29EAC75A8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v11 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v11;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = *(MEMORY[0x29EDCA478] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_29EAC76C8;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v8, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD888, v3, v9);
}

uint64_t sub_29EAC76C8()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EACDDE0, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EAC7804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC783C, 0, 0);
}

uint64_t sub_29EAC783C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v10 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v10;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = *(MEMORY[0x29EDCA478] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_29EAC76C8;
  v8 = *(v0 + 16);

  return MEMORY[0x2A1C73C80](v8, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD670, v3, &type metadata for PreflightInfo);
}

uint64_t sub_29EAC7958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC7990, 0, 0);
}

uint64_t sub_29EAC7990()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v11 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v11;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = *(MEMORY[0x29EDCA478] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
  *v7 = v0;
  v7[1] = sub_29EAC7ABC;
  v9 = *(v0 + 16);

  return MEMORY[0x2A1C73C80](v9, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD4B4, v3, v8);
}

uint64_t sub_29EAC7ABC()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAC7BF8, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EAC7BF8()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_29EAC7C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC7C94, 0, 0);
}

uint64_t sub_29EAC7C94()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v11 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v11;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = *(MEMORY[0x29EDCA478] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_29EAC76C8;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v8, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD2A8, v3, v9);
}

void sub_29EAC7DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v62 = a8;
  v63 = a7;
  v70 = a13;
  v71 = a14;
  v69 = a12;
  v20 = sub_29EB13FFC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v66 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29EB1400C();
  v67 = *(v23 - 8);
  v68 = v23;
  v24 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v65 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v60 - v29;
  v64 = a2;
  v31 = *(a2 + 16);
  v32 = *(v27 + 16);
  v72 = a1;
  v33 = a1;
  v35 = v34;
  v32(&v60 - v29, v33, v34);
  v36 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v37 = swift_allocObject();
  v61 = a3;
  *(v37 + 2) = a3;
  *(v37 + 3) = a4;
  v69 = a5;
  *(v37 + 4) = a5;
  *(v37 + 5) = a6;
  (*(v27 + 32))(&v37[v36], v30, v35);
  aBlock[4] = v70;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = v71;
  v38 = _Block_copy(aBlock);

  v39 = [v31 remoteObjectProxyWithErrorHandler_];
  _Block_release(v38);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA60, &qword_29EB17F38);
  if (swift_dynamicCast())
  {
    v75 = v73;
    v41 = v63(&v75, v72);
    if (v41)
    {
      v42 = v41;
      [a9 addChild:v41 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v43 = sub_29EB1454C();
        __swift_project_value_buffer(v43, qword_2A187A840);

        v44 = sub_29EB1452C();
        v45 = sub_29EB14A5C();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          aBlock[0] = v47;
          *v46 = 136315394;
          *(v46 + 4) = sub_29EABC674(v61, a4, aBlock);
          *(v46 + 12) = 2080;
          *(v46 + 14) = sub_29EABC674(v69, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v44, v45, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v47, -1, -1);
          MEMORY[0x29EDA8150](v46, -1, -1);
        }

        [v42 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v48 = sub_29EB1454C();
  __swift_project_value_buffer(v48, qword_2A187A840);
  v49 = v64;

  v50 = sub_29EB1452C();
  v51 = sub_29EB14A5C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315394;
    v75 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA68, &qword_29EB17F40);
    v54 = sub_29EB146FC();
    v56 = sub_29EABC674(v54, v55, aBlock);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_29EABC674(*(v49 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v49 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v50, v51, "Connection does not conform to %s for %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v53, -1, -1);
    MEMORY[0x29EDA8150](v52, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v57 = v65;
  v58 = v68;
  sub_29EB1415C();
  v59 = sub_29EB13F9C();
  (*(v67 + 8))(v57, v58);
  aBlock[0] = v59;
  sub_29EB148BC();
}

void sub_29EAC848C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9)
{
  v54 = a8;
  v55 = a7;
  v15 = sub_29EB13FFC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v58 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29EB1400C();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v57 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v52 - v24;
  v56 = a2;
  v26 = *(a2 + 16);
  v27 = *(v22 + 16);
  v61 = a1;
  v27(&v52 - v24, a1, v21);
  v28 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v29 = swift_allocObject();
  v52 = a3;
  v53 = a5;
  *(v29 + 2) = a3;
  *(v29 + 3) = a4;
  *(v29 + 4) = a5;
  *(v29 + 5) = a6;
  (*(v22 + 32))(&v29[v28], v25, v21);
  aBlock[4] = sub_29EACD69C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_51;
  v30 = _Block_copy(aBlock);

  v31 = [v26 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA38, &qword_29EB17EC8);
  if (swift_dynamicCast())
  {
    v64 = v62;
    v33 = v55(&v64, v61);
    if (v33)
    {
      v34 = v33;
      [a9 addChild:v33 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v35 = sub_29EB1454C();
        __swift_project_value_buffer(v35, qword_2A187A840);

        v36 = sub_29EB1452C();
        v37 = sub_29EB14A5C();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock[0] = v39;
          *v38 = 136315394;
          *(v38 + 4) = sub_29EABC674(v52, a4, aBlock);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_29EABC674(v53, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v36, v37, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v39, -1, -1);
          MEMORY[0x29EDA8150](v38, -1, -1);
        }

        [v34 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v40 = sub_29EB1454C();
  __swift_project_value_buffer(v40, qword_2A187A840);
  v41 = v56;

  v42 = sub_29EB1452C();
  v43 = sub_29EB14A5C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315394;
    v64 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA40, &qword_29EB17ED0);
    v46 = sub_29EB146FC();
    v48 = sub_29EABC674(v46, v47, aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_29EABC674(*(v41 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v41 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v42, v43, "Connection does not conform to %s for %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v45, -1, -1);
    MEMORY[0x29EDA8150](v44, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v49 = v57;
  v50 = v60;
  sub_29EB1415C();
  v51 = sub_29EB13F9C();
  (*(v59 + 8))(v49, v50);
  aBlock[0] = v51;
  sub_29EB148BC();
}

void sub_29EAC8B6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9)
{
  v54 = a8;
  v55 = a7;
  v15 = sub_29EB13FFC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v58 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29EB1400C();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v57 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v52 - v24;
  v56 = a2;
  v26 = *(a2 + 16);
  v27 = *(v22 + 16);
  v61 = a1;
  v27(&v52 - v24, a1, v21);
  v28 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v29 = swift_allocObject();
  v52 = a3;
  v53 = a5;
  *(v29 + 2) = a3;
  *(v29 + 3) = a4;
  *(v29 + 4) = a5;
  *(v29 + 5) = a6;
  (*(v22 + 32))(&v29[v28], v25, v21);
  aBlock[4] = sub_29EACD51C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_39;
  v30 = _Block_copy(aBlock);

  v31 = [v26 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA38, &qword_29EB17EC8);
  if (swift_dynamicCast())
  {
    v64 = v62;
    v33 = v55(&v64, v61);
    if (v33)
    {
      v34 = v33;
      [a9 addChild:v33 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v35 = sub_29EB1454C();
        __swift_project_value_buffer(v35, qword_2A187A840);

        v36 = sub_29EB1452C();
        v37 = sub_29EB14A5C();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock[0] = v39;
          *v38 = 136315394;
          *(v38 + 4) = sub_29EABC674(v52, a4, aBlock);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_29EABC674(v53, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v36, v37, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v39, -1, -1);
          MEMORY[0x29EDA8150](v38, -1, -1);
        }

        [v34 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v40 = sub_29EB1454C();
  __swift_project_value_buffer(v40, qword_2A187A840);
  v41 = v56;

  v42 = sub_29EB1452C();
  v43 = sub_29EB14A5C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315394;
    v64 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA40, &qword_29EB17ED0);
    v46 = sub_29EB146FC();
    v48 = sub_29EABC674(v46, v47, aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_29EABC674(*(v41 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v41 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v42, v43, "Connection does not conform to %s for %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v45, -1, -1);
    MEMORY[0x29EDA8150](v44, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v49 = v57;
  v50 = v60;
  sub_29EB1415C();
  v51 = sub_29EB13F9C();
  (*(v59 + 8))(v49, v50);
  aBlock[0] = v51;
  sub_29EB148BC();
}

void sub_29EAC924C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9)
{
  v54 = a8;
  v55 = a7;
  v15 = sub_29EB13FFC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v58 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29EB1400C();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v57 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v52 - v24;
  v56 = a2;
  v26 = *(a2 + 16);
  v27 = *(v22 + 16);
  v61 = a1;
  v27(&v52 - v24, a1, v21);
  v28 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v29 = swift_allocObject();
  v52 = a3;
  v53 = a5;
  *(v29 + 2) = a3;
  *(v29 + 3) = a4;
  *(v29 + 4) = a5;
  *(v29 + 5) = a6;
  (*(v22 + 32))(&v29[v28], v25, v21);
  aBlock[4] = sub_29EACD2D4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_4;
  v30 = _Block_copy(aBlock);

  v31 = [v26 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA38, &qword_29EB17EC8);
  if (swift_dynamicCast())
  {
    v64 = v62;
    v33 = v55(&v64, v61);
    if (v33)
    {
      v34 = v33;
      [a9 addChild:v33 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v35 = sub_29EB1454C();
        __swift_project_value_buffer(v35, qword_2A187A840);

        v36 = sub_29EB1452C();
        v37 = sub_29EB14A5C();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock[0] = v39;
          *v38 = 136315394;
          *(v38 + 4) = sub_29EABC674(v52, a4, aBlock);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_29EABC674(v53, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v36, v37, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v39, -1, -1);
          MEMORY[0x29EDA8150](v38, -1, -1);
        }

        [v34 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v40 = sub_29EB1454C();
  __swift_project_value_buffer(v40, qword_2A187A840);
  v41 = v56;

  v42 = sub_29EB1452C();
  v43 = sub_29EB14A5C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315394;
    v64 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA40, &qword_29EB17ED0);
    v46 = sub_29EB146FC();
    v48 = sub_29EABC674(v46, v47, aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_29EABC674(*(v41 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v41 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v42, v43, "Connection does not conform to %s for %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v45, -1, -1);
    MEMORY[0x29EDA8150](v44, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v49 = v57;
  v50 = v60;
  sub_29EB1415C();
  v51 = sub_29EB13F9C();
  (*(v59 + 8))(v49, v50);
  aBlock[0] = v51;
  sub_29EB148BC();
}

uint64_t sub_29EAC992C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v15 = sub_29EB1454C();
  __swift_project_value_buffer(v15, qword_2A187A840);

  v16 = a1;
  v17 = sub_29EB1452C();
  v18 = sub_29EB14A5C();

  if (os_log_type_enabled(v17, v18))
  {
    v28 = a4;
    v19 = swift_slowAlloc();
    v29 = a7;
    v20 = a8;
    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v22 = v30;
    *v19 = 136315650;
    *(v19 + 4) = sub_29EABC674(a2, a3, &v30);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_29EABC674(v28, a5, &v30);
    *(v19 + 22) = 2112;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v24;
    *v21 = v24;
    _os_log_impl(&dword_29EAA5000, v17, v18, "Failed %s for %s -- %@", v19, 0x20u);
    sub_29EABCCEC(v21, &qword_2A187A648, qword_29EB17EB0);
    v25 = v21;
    a8 = v20;
    a7 = v29;
    MEMORY[0x29EDA8150](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v22, -1, -1);
    MEMORY[0x29EDA8150](v19, -1, -1);
  }

  v30 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  return sub_29EB148BC();
}

uint64_t sub_29EAC9B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a1;
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  return MEMORY[0x2A1C73D48](sub_29EAC9BBC, 0, 0);
}

uint64_t sub_29EAC9BBC()
{
  v1 = *(v0 + 144);
  v2 = sub_29EAADFF0();
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  v4 = v2;
  v5 = v3;
  v6 = 0xD000000000000055;
  v7 = *(v0 + 144);
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v0 + 16;
  v9 = 0x800000029EB1BDC0;
  *(v0 + 128) = 40;
  *(v0 + 112) = 0xD000000000000055;
  *(v0 + 120) = 0x800000029EB1BDC0;
  *(v0 + 136) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 104) & 1) == 0)
  {
    v10 = *(v0 + 88);
    v11 = sub_29EB147BC();
    v6 = MEMORY[0x29EDA6DA0](v11);
    v9 = v12;
  }

  *(v0 + 192) = v9;
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *(v13 + 16) = sub_29EACA2A0;
  *(v13 + 24) = v8;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_29EAC9DD0;
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);

  return sub_29EAC4CE0(v6, v9, 0, v15, sub_29EACC2AC, v13);
}

uint64_t sub_29EAC9DD0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 208);
  v8 = *v3;
  v6[27] = v2;

  v9 = v6[25];
  v10 = v6[24];
  if (v2)
  {

    v11 = sub_29EAC9FBC;
  }

  else
  {
    v12 = v6[23];

    v6[28] = a2;
    v6[29] = a1;

    v11 = sub_29EAC9F54;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29EAC9F54()
{
  sub_29EAAD010(v0[21], v0[22]);
  v1 = v0[1];
  v3 = v0[28];
  v2 = v0[29];

  return v1(v2, v3);
}

uint64_t sub_29EAC9FBC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  sub_29EAAD010(v3, v2);
  v4 = v0[27];
  v5 = v0[1];

  return v5();
}

id sub_29EACA030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v27 - v11;
  v13 = sub_29EB141BC();
  v14 = sub_29EB142BC();
  v15 = type metadata accessor for SerializedDataImportRequest.XPCHelper();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest];
  *v17 = *a6;
  v18 = *(a6 + 16);
  v19 = *(a6 + 32);
  v20 = *(a6 + 48);
  *(v17 + 8) = *(a6 + 64);
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 1) = v18;
  sub_29EACD6D0(a6, aBlock);
  v28.receiver = v16;
  v28.super_class = v15;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  (*(v9 + 16))(v12, a2, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v12, v8);
  aBlock[4] = sub_29EACDD90;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EACA354;
  aBlock[3] = &block_descriptor_108;
  v24 = _Block_copy(aBlock);

  v25 = [v27 importSerializedDataFrom:v13 sandboxExtension:v14 importRequest:v21 completion:v24];
  _Block_release(v24);

  return v25;
}

unint64_t sub_29EACA2AC()
{
  result = qword_2A187AA18;
  if (!qword_2A187AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AA18);
  }

  return result;
}

unint64_t sub_29EACA300()
{
  result = qword_2A187AA20;
  if (!qword_2A187AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AA20);
  }

  return result;
}

void sub_29EACA354(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_29EACA3DC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 144) = a3;
  *(v4 + 152) = v3;
  *(v4 + 136) = a1;
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  v6 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v6;
  return MEMORY[0x2A1C73D48](sub_29EACA410, 0, 0);
}

uint64_t sub_29EACA410()
{
  v1 = *(v0 + 136);
  v2 = sub_29EAADFF0();
  *(v0 + 160) = v2;
  *(v0 + 168) = v3;
  v4 = v2;
  v5 = v3;
  v6 = 0xD000000000000055;
  v7 = *(v0 + 136);
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v0 + 16;
  v9 = 0x800000029EB1BDC0;
  *(v0 + 120) = 40;
  *(v0 + 104) = 0xD000000000000055;
  *(v0 + 112) = 0x800000029EB1BDC0;
  *(v0 + 128) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 96) & 1) == 0)
  {
    v10 = *(v0 + 80);
    v11 = sub_29EB147BC();
    v6 = MEMORY[0x29EDA6DA0](v11);
    v9 = v12;
  }

  *(v0 + 184) = v9;
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *(v13 + 16) = sub_29EACC2D8;
  *(v13 + 24) = v8;
  v14 = swift_task_alloc();
  *(v0 + 200) = v14;
  *v14 = v0;
  v14[1] = sub_29EACA624;
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);

  return sub_29EAC4CE0(v6, v9, 0, v15, sub_29EACDDD4, v13);
}

uint64_t sub_29EACA624(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v8 = *v3;
  v6[26] = v2;

  v9 = v6[24];
  v10 = v6[23];
  if (v2)
  {

    v11 = sub_29EACA810;
  }

  else
  {
    v12 = v6[22];

    v6[27] = a2;
    v6[28] = a1;

    v11 = sub_29EACA7A8;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29EACA7A8()
{
  sub_29EAAD010(v0[20], v0[21]);
  v1 = v0[1];
  v3 = v0[27];
  v2 = v0[28];

  return v1(v2, v3);
}

uint64_t sub_29EACA810()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  sub_29EAAD010(v3, v2);
  v4 = v0[26];
  v5 = v0[1];

  return v5();
}

id sub_29EACA884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v28 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v27 - v11;
  v13 = sub_29EB141BC();
  v14 = sub_29EB142BC();
  v15 = type metadata accessor for ResourcesImportRequest.XPCHelper();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest];
  v19 = a6[2];
  v18 = a6[3];
  v20 = a6[1];
  *v17 = *a6;
  *(v17 + 1) = v20;
  *(v17 + 2) = v19;
  *(v17 + 3) = v18;
  sub_29EACD8F4(a6, aBlock);
  v29.receiver = v16;
  v29.super_class = v15;
  v21 = objc_msgSendSuper2(&v29, sel_init);
  (*(v9 + 16))(v12, a2, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v12, v8);
  aBlock[4] = sub_29EACD950;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EACA354;
  aBlock[3] = &block_descriptor_90;
  v24 = _Block_copy(aBlock);

  v25 = [v28 importResourcesFrom:v13 sandboxExtension:v14 importRequest:v21 completion:v24];
  _Block_release(v24);

  return v25;
}

uint64_t sub_29EACAAE4(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
    return sub_29EB148CC();
  }
}

uint64_t sub_29EACAB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[9] = a1;
  return MEMORY[0x2A1C73D48](sub_29EACAB88, 0, 0);
}

uint64_t sub_29EACAB88()
{
  v1 = *(v0 + 72);
  v2 = sub_29EAADFF0();
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  v4 = v2;
  v5 = v3;
  v6 = 0xD000000000000055;
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v5;
  v9 = 0x800000029EB1BDC0;
  *(v0 + 40) = 0xD000000000000055;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v10 = *(v0 + 16);
    v11 = sub_29EB147BC();
    v6 = MEMORY[0x29EDA6DA0](v11);
    v9 = v12;
  }

  *(v0 + 120) = v9;
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *(v13 + 16) = sub_29EACC2E4;
  *(v13 + 24) = v8;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_29EACAD94;
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);

  return sub_29EAC55A0(v14, v6, v9, 0, v15, sub_29EACDDD4, v13);
}

uint64_t sub_29EACAD94()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  v6 = v2[15];
  if (v0)
  {

    v7 = sub_29EACAF68;
  }

  else
  {
    v8 = v2[14];

    v7 = sub_29EACAF04;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EACAF04()
{
  sub_29EAAD010(v0[12], v0[13]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_29EACAF68()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  sub_29EAAD010(v3, v2);
  v4 = v0[18];
  v5 = v0[1];

  return v5();
}

id sub_29EACAFDC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = aBlock - v7;
  v9 = sub_29EB141BC();
  v10 = sub_29EB142BC();
  (*(v5 + 16))(v8, a2, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_29EACDDD8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_84;
  v13 = _Block_copy(aBlock);

  v14 = [a1 importStagedDataclassResourcesFrom:v9 sandboxExtension:v10 dataclass:0 completion:v13];

  _Block_release(v13);
  return v14;
}

uint64_t sub_29EACB1DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EAAAE5C;

  return sub_29EACC604(a1, a2);
}

id sub_29EACB294(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SerializedDataImportRequest.XPCHelper();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest];
  *v14 = *a4;
  v15 = *(a4 + 16);
  v16 = *(a4 + 32);
  v17 = *(a4 + 48);
  *(v14 + 8) = *(a4 + 64);
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 1) = v15;
  sub_29EACD6D0(a4, aBlock);
  v25.receiver = v13;
  v25.super_class = v12;
  v18 = objc_msgSendSuper2(&v25, sel_init);
  (*(v8 + 16))(v11, a2, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v11, v7);
  aBlock[4] = sub_29EACDDD8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_66;
  v21 = _Block_copy(aBlock);

  v22 = [a1 importSerializedDataFrom:v24 importRequest:v18 completion:v21];
  _Block_release(v21);

  return v22;
}

uint64_t sub_29EACB4D8(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2A1C73D48](sub_29EACB4F8, 0, 0);
}

uint64_t sub_29EACB4F8()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v2;
  *(v0 + 40) = 0xD000000000000055;
  v4 = 0x800000029EB1BDC0;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v5 = *(v0 + 16);
    v6 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v6);
    v4 = v7;
  }

  *(v0 + 96) = v4;
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 104) = v8;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *(v9 + 16) = sub_29EACCA00;
  *(v9 + 24) = v3;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_29EACB6D0;
  v11 = *(v0 + 80);

  return sub_29EAC55A0(v10, v1, v4, 0, v8, sub_29EACDDD4, v9);
}

uint64_t sub_29EACB6D0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v2 + 128) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {

    v7 = sub_29EACB848;
  }

  else
  {
    v8 = *(v2 + 88);

    v7 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EACB848()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2();
}

id sub_29EACB8B8(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = aBlock - v9;
  if (a3)
  {
    a3 = sub_29EB1416C();
  }

  (*(v7 + 16))(v10, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_29EACD6C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_57;
  v13 = _Block_copy(aBlock);

  v14 = [a1 registerImportCompletionWithError:a3 completion:v13];
  _Block_release(v13);

  return v14;
}

uint64_t sub_29EACBA94(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148CC();
  }
}

uint64_t ImportExtensionController.__allocating_init(identity:)(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_29EB1446C();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = *(v1 + 48);
  v7 = *(v1 + 52);
  v2[6] = swift_allocObject();

  return MEMORY[0x2A1C73D48](sub_29EACBBDC, 0, 0);
}

uint64_t sub_29EACBBDC()
{
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_29EACBC8C;
  v2 = v0[5];
  v3 = v0[6];

  return ExtensionController.init(identity:)(v2);
}

uint64_t sub_29EACBC8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_29EACBE34;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_29EACBDB4;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EACBDB4()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[2], v0[3]);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_29EACBE34()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[2], v0[3]);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t ImportExtensionController.init(identity:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29EB1446C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EACBF70, 0, 0);
}

uint64_t sub_29EACBF70()
{
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_29EACC028;
  v2 = v0[6];
  v3 = v0[3];

  return ExtensionController.init(identity:)(v2);
}

uint64_t sub_29EACC028(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_29EACC1D4;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_29EACC150;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EACC150()
{
  v1 = v0[6];
  (*(v0[5] + 8))(v0[2], v0[4]);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_29EACC1D4()
{
  v1 = v0[6];
  (*(v0[5] + 8))(v0[2], v0[4]);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t ImportExtensionController.__deallocating_deinit()
{
  v0 = ExtensionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

uint64_t sub_29EACC2AC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_29EACC2E4(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_29EACAFDC(a1, a2);
}

uint64_t sub_29EACC2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  return MEMORY[0x2A1C73D48](sub_29EACC328, 0, 0);
}

uint64_t sub_29EACC328()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v10 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  *(v3 + 16) = v10;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = *(MEMORY[0x29EDCA478] + 4);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA78, qword_29EB17F60);
  *v7 = v0;
  v7[1] = sub_29EACC454;

  return MEMORY[0x2A1C73C80](v0 + 16, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACDA64, v3, v8);
}

uint64_t sub_29EACC454()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EACC5A0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 104);
    v5 = *(v3 + 32);

    *v5 = *(v3 + 16);
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_29EACC5A0()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_29EACC604(uint64_t a1, uint64_t a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x2A1C73D48](sub_29EACC63C, 0, 0);
}

uint64_t sub_29EACC63C()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 144);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v0 + 128) = 40;
  v4 = 0x800000029EB1BDC0;
  *(v0 + 112) = 0xD000000000000055;
  *(v0 + 120) = 0x800000029EB1BDC0;
  *(v0 + 136) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 104) & 1) == 0)
  {
    v5 = *(v0 + 88);
    v6 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v6);
    v4 = v7;
  }

  *(v0 + 168) = v4;
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 176) = v8;
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *(v9 + 16) = sub_29EACD6C8;
  *(v9 + 24) = v3;
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_29EACC818;
  v11 = *(v0 + 152);

  return sub_29EAC55A0(v10, v1, v4, 0, v8, sub_29EACDDD4, v9);
}

uint64_t sub_29EACC818()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 168);
  v5 = *v1;
  *(v2 + 200) = v0;

  v6 = *(v2 + 184);
  if (v0)
  {

    v7 = sub_29EACC990;
  }

  else
  {
    v8 = *(v2 + 160);

    v7 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EACC990()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);
  v3 = *(v0 + 200);

  return v2();
}

uint64_t type metadata accessor for ImportExtensionController()
{
  result = qword_2A187AA28;
  if (!qword_2A187AA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ImportExtensionController.importSerializedData(from:importRequest:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_29EACDDD0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ImportExtensionController.importResources(from:importRequest:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_29EACCD1C;

  return v12(a1, a2, a3);
}

uint64_t sub_29EACCD1C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of ImportExtensionController.importStagedDataclassResources(from:for:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_29EAB73B4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ImportExtensionController._t_importSerializedData(from:importRequest:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_29EAB73B4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ImportExtensionController.registerImportCompletion(error:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EAB73B4;

  return v8(a1);
}

uint64_t sub_29EACD1B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_29EAB73B4;

  return sub_29EAC7C5C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29EACD300()
{
  result = qword_2A187A800;
  if (!qword_2A187A800)
  {
    sub_29EB1400C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A800);
  }

  return result;
}

uint64_t sub_29EACD358(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_29EAAAE5C;

  return sub_29EAC7958(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_29EACD444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EACD530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_29EAB73B4;

  return sub_29EAC7804(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_29EACD79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_29EAB73B4;

  return sub_29EAC7570(a1, v4, v5, v6, v7, v8, v9, v11);
}

void sub_29EACD954()
{
  v2 = v0[3];
  v11 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_29EAB73B4;

  JUMPOUT(0x29EACC2F0);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  v9 = *(v2 + 40);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2A1C733A0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_53Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2A1C733A0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_29EACDDE8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EACDE88(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EACDEAC, v2, 0);
}

uint64_t sub_29EACDEAC()
{
  v37 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v36);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC08, &qword_29EB181D8);
    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v36);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC00, &qword_29EB181D0);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v34 = (v23 + *v23);
        v24 = v23[1];
        v25 = swift_task_alloc();
        *(v0 + 256) = v25;
        *v25 = v0;
        v25[1] = sub_29EACE394;

        return v34(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v28 = *(v0 + 291);
        v29 = *(v0 + 40);
        v30 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
        *(v0 + 288) = v28;
        v31 = *(v30 + 40);
        v35 = (v31 + *v31);
        v32 = v31[1];
        v33 = swift_task_alloc();
        *(v0 + 272) = v33;
        *v33 = v0;
        v33[1] = sub_29EACE6B0;

        return v35(v0 + 288, v29, v30);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v26 = *(v0 + 216);

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_29EACE394()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[28];
  v6 = v2[27];
  if (v0)
  {
    v7 = v2[29];

    v8 = sub_29EACE638;
  }

  else
  {

    v8 = sub_29EACE4F4;
  }

  return MEMORY[0x2A1C73D48](v8, v5, 0);
}

uint64_t sub_29EACE4F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 272) = v6;
  *v6 = v0;
  v6[1] = sub_29EACE6B0;

  return v8(v0 + 288, v2, v3);
}

uint64_t sub_29EACE638()
{
  v1 = v0[27];
  sub_29EAAD4D8((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v2 = v0[33];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EACE6B0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = *(v2 + 224);
    v4 = *(v2 + 232);

    v6 = sub_29EACEB48;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 224);
    v6 = sub_29EACE7D4;
  }

  return MEMORY[0x2A1C73D48](v6, v7, 0);
}

uint64_t sub_29EACE7D4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v7 = *(v0 + 248) + 1;
    *(v0 + 248) = v7;
    v8 = *(v0 + 232);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v8 + 40 * v7 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC00, &qword_29EB181D0);
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 216);
        v10 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v11 = *(v0 + 80);
        v12 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
        *(v0 + 289) = v10;
        *(v0 + 200) = v9;
        v13 = *(v12 + 32);

        v22 = (v13 + *v13);
        v14 = v13[1];
        v15 = swift_task_alloc();
        *(v0 + 256) = v15;
        *v15 = v0;
        v15[1] = sub_29EACE394;

        return v22(v0 + 289, v0 + 200, v11, v12);
      }

      else
      {
        v16 = *(v0 + 291);
        v17 = *(v0 + 40);
        v18 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
        *(v0 + 288) = v16;
        v19 = *(v18 + 40);
        v23 = (v19 + *v19);
        v20 = v19[1];
        v21 = swift_task_alloc();
        *(v0 + 272) = v21;
        *v21 = v0;
        v21[1] = sub_29EACE6B0;

        return v23(v0 + 288, v17, v18);
      }
    }
  }

  return result;
}

uint64_t sub_29EACEB48()
{
  v1 = v0[27];
  sub_29EAAD4D8((v0 + 2));

  v2 = v0[35];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EACEBB8(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EACEBDC, v2, 0);
}

uint64_t sub_29EACEBDC()
{
  v37 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v36);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;
    type metadata accessor for SerializedDataExportStream();

    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v36);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABC8, &qword_29EB18180);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v34 = (v23 + *v23);
        v24 = v23[1];
        v25 = swift_task_alloc();
        *(v0 + 256) = v25;
        *v25 = v0;
        v25[1] = sub_29EACF0BC;

        return v34(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v28 = *(v0 + 291);
        v29 = *(v0 + 40);
        v30 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
        *(v0 + 288) = v28;
        v31 = *(v30 + 40);
        v35 = (v31 + *v31);
        v32 = v31[1];
        v33 = swift_task_alloc();
        *(v0 + 272) = v33;
        *v33 = v0;
        v33[1] = sub_29EACF360;

        return v35(v0 + 288, v29, v30);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v26 = *(v0 + 216);

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_29EACF0BC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[28];
  v6 = v2[27];
  if (v0)
  {
    v7 = v2[29];

    v8 = sub_29EAE494C;
  }

  else
  {

    v8 = sub_29EACF21C;
  }

  return MEMORY[0x2A1C73D48](v8, v5, 0);
}

uint64_t sub_29EACF21C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 272) = v6;
  *v6 = v0;
  v6[1] = sub_29EACF360;

  return v8(v0 + 288, v2, v3);
}

uint64_t sub_29EACF360()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = *(v2 + 224);
    v4 = *(v2 + 232);

    v6 = sub_29EAE49A8;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 224);
    v6 = sub_29EACF484;
  }

  return MEMORY[0x2A1C73D48](v6, v7, 0);
}

uint64_t sub_29EACF484()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v7 = *(v0 + 248) + 1;
    *(v0 + 248) = v7;
    v8 = *(v0 + 232);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v8 + 40 * v7 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABC8, &qword_29EB18180);
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 216);
        v10 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v11 = *(v0 + 80);
        v12 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
        *(v0 + 289) = v10;
        *(v0 + 200) = v9;
        v13 = *(v12 + 32);

        v22 = (v13 + *v13);
        v14 = v13[1];
        v15 = swift_task_alloc();
        *(v0 + 256) = v15;
        *v15 = v0;
        v15[1] = sub_29EACF0BC;

        return v22(v0 + 289, v0 + 200, v11, v12);
      }

      else
      {
        v16 = *(v0 + 291);
        v17 = *(v0 + 40);
        v18 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
        *(v0 + 288) = v16;
        v19 = *(v18 + 40);
        v23 = (v19 + *v19);
        v20 = v19[1];
        v21 = swift_task_alloc();
        *(v0 + 272) = v21;
        *v21 = v0;
        v21[1] = sub_29EACF360;

        return v23(v0 + 288, v17, v18);
      }
    }
  }

  return result;
}

uint64_t sub_29EACF7F8(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EACF81C, v2, 0);
}

uint64_t sub_29EACF81C()
{
  v37 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v36);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;
    type metadata accessor for ResourcesArchiver();

    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v36);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB0, &qword_29EB18150);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v34 = (v23 + *v23);
        v24 = v23[1];
        v25 = swift_task_alloc();
        *(v0 + 256) = v25;
        *v25 = v0;
        v25[1] = sub_29EACFCFC;

        return v34(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v28 = *(v0 + 291);
        v29 = *(v0 + 40);
        v30 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
        *(v0 + 288) = v28;
        v31 = *(v30 + 40);
        v35 = (v31 + *v31);
        v32 = v31[1];
        v33 = swift_task_alloc();
        *(v0 + 272) = v33;
        *v33 = v0;
        v33[1] = sub_29EAD0018;

        return v35(v0 + 288, v29, v30);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v26 = *(v0 + 216);

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_29EACFCFC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[28];
  v6 = v2[27];
  if (v0)
  {
    v7 = v2[29];

    v8 = sub_29EACFFA0;
  }

  else
  {

    v8 = sub_29EACFE5C;
  }

  return MEMORY[0x2A1C73D48](v8, v5, 0);
}

uint64_t sub_29EACFE5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 272) = v6;
  *v6 = v0;
  v6[1] = sub_29EAD0018;

  return v8(v0 + 288, v2, v3);
}

uint64_t sub_29EACFFA0()
{
  v1 = v0[27];
  sub_29EAAD4D8((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v2 = v0[33];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EAD0018()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = *(v2 + 224);
    v4 = *(v2 + 232);

    v6 = sub_29EAD04B0;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 224);
    v6 = sub_29EAD013C;
  }

  return MEMORY[0x2A1C73D48](v6, v7, 0);
}

uint64_t sub_29EAD013C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v7 = *(v0 + 248) + 1;
    *(v0 + 248) = v7;
    v8 = *(v0 + 232);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v8 + 40 * v7 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB0, &qword_29EB18150);
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 216);
        v10 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v11 = *(v0 + 80);
        v12 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
        *(v0 + 289) = v10;
        *(v0 + 200) = v9;
        v13 = *(v12 + 32);

        v22 = (v13 + *v13);
        v14 = v13[1];
        v15 = swift_task_alloc();
        *(v0 + 256) = v15;
        *v15 = v0;
        v15[1] = sub_29EACFCFC;

        return v22(v0 + 289, v0 + 200, v11, v12);
      }

      else
      {
        v16 = *(v0 + 291);
        v17 = *(v0 + 40);
        v18 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
        *(v0 + 288) = v16;
        v19 = *(v18 + 40);
        v23 = (v19 + *v19);
        v20 = v19[1];
        v21 = swift_task_alloc();
        *(v0 + 272) = v21;
        *v21 = v0;
        v21[1] = sub_29EAD0018;

        return v23(v0 + 288, v17, v18);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD04B0()
{
  v1 = v0[27];
  sub_29EAAD4D8((v0 + 2));

  v2 = v0[35];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EAD0520(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAD0544, v2, 0);
}

uint64_t sub_29EAD0544()
{
  v37 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v36);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;
    type metadata accessor for SerializedDataReader(0);

    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v36);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB98, &qword_29EB18120);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v34 = (v23 + *v23);
        v24 = v23[1];
        v25 = swift_task_alloc();
        *(v0 + 256) = v25;
        *v25 = v0;
        v25[1] = sub_29EAD0A24;

        return v34(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v28 = *(v0 + 291);
        v29 = *(v0 + 40);
        v30 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
        *(v0 + 288) = v28;
        v31 = *(v30 + 40);
        v35 = (v31 + *v31);
        v32 = v31[1];
        v33 = swift_task_alloc();
        *(v0 + 272) = v33;
        *v33 = v0;
        v33[1] = sub_29EAD0CC8;

        return v35(v0 + 288, v29, v30);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v26 = *(v0 + 216);

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_29EAD0A24()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[28];
  v6 = v2[27];
  if (v0)
  {
    v7 = v2[29];

    v8 = sub_29EAE494C;
  }

  else
  {

    v8 = sub_29EAD0B84;
  }

  return MEMORY[0x2A1C73D48](v8, v5, 0);
}

uint64_t sub_29EAD0B84()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 272) = v6;
  *v6 = v0;
  v6[1] = sub_29EAD0CC8;

  return v8(v0 + 288, v2, v3);
}

uint64_t sub_29EAD0CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = *(v2 + 224);
    v4 = *(v2 + 232);

    v6 = sub_29EAE49A8;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 224);
    v6 = sub_29EAD0DEC;
  }

  return MEMORY[0x2A1C73D48](v6, v7, 0);
}

uint64_t sub_29EAD0DEC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v7 = *(v0 + 248) + 1;
    *(v0 + 248) = v7;
    v8 = *(v0 + 232);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v8 + 40 * v7 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB98, &qword_29EB18120);
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 216);
        v10 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v11 = *(v0 + 80);
        v12 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
        *(v0 + 289) = v10;
        *(v0 + 200) = v9;
        v13 = *(v12 + 32);

        v22 = (v13 + *v13);
        v14 = v13[1];
        v15 = swift_task_alloc();
        *(v0 + 256) = v15;
        *v15 = v0;
        v15[1] = sub_29EAD0A24;

        return v22(v0 + 289, v0 + 200, v11, v12);
      }

      else
      {
        v16 = *(v0 + 291);
        v17 = *(v0 + 40);
        v18 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
        *(v0 + 288) = v16;
        v19 = *(v18 + 40);
        v23 = (v19 + *v19);
        v20 = v19[1];
        v21 = swift_task_alloc();
        *(v0 + 272) = v21;
        *v21 = v0;
        v21[1] = sub_29EAD0CC8;

        return v23(v0 + 288, v17, v18);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD1160(char a1)
{
  *(v2 + 248) = v1;
  *(v2 + 371) = a1;
  v3 = sub_29EB1422C();
  *(v2 + 256) = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  *(v2 + 264) = v4;
  v6 = *(v4 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  (*(v5 + 32))();

  return MEMORY[0x2A1C73D48](sub_29EAD1274, v1, 0);
}

uint64_t sub_29EAD1274()
{
  v46 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v42 = *(v0 + 280);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 371);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136315394;
    *(v0 + 370) = v7;
    v10 = sub_29EB146FC();
    v12 = sub_29EABC674(v10, v11, &v45);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_beginAccess();
    (*(v5 + 16))(v42, v4, v6);
    v13 = sub_29EB146FC();
    v15 = sub_29EABC674(v13, v14, &v45);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v9, -1, -1);
    MEMORY[0x29EDA8150](v8, -1, -1);
  }

  v16 = *(v0 + 248);
  swift_beginAccess();
  v17 = *(v16 + 112);
  *(v0 + 296) = v17;
  v18 = *(v17 + 16);
  *(v0 + 304) = v18;
  v19 = *(v0 + 288);
  if (v18)
  {

    result = swift_beginAccess();
    *(v0 + 312) = 0;
    v21 = *(v0 + 296);
    if (*(v21 + 16))
    {
      sub_29EAAD064(v21 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB78, &qword_29EB180F0);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 288);
        v24 = *(v0 + 264);
        v23 = *(v0 + 272);
        v25 = *(v0 + 256);
        v26 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v27 = *(v0 + 80);
        v28 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v27);
        *(v0 + 369) = v26;
        (*(v24 + 16))(v23, v22, v25);
        v29 = *(v28 + 32);
        v43 = (v29 + *v29);
        v30 = v29[1];
        v31 = swift_task_alloc();
        *(v0 + 320) = v31;
        *v31 = v0;
        v31[1] = sub_29EAD17E0;
        v32 = *(v0 + 272);

        return v43(v0 + 369, v32, v27, v28);
      }

      else
      {
        v36 = *(v0 + 371);
        v37 = *(v0 + 40);
        v38 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v37);
        *(v0 + 368) = v36;
        v39 = *(v38 + 40);
        v44 = (v39 + *v39);
        v40 = v39[1];
        v41 = swift_task_alloc();
        *(v0 + 352) = v41;
        *v41 = v0;
        v41[1] = sub_29EAD1B38;

        return v44(v0 + 368, v37, v38);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v34 = *(v0 + 272);
    v33 = *(v0 + 280);
    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v35 = *(v0 + 8);

    return v35();
  }

  return result;
}

uint64_t sub_29EAD17E0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v14 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[37];
    v6 = v2[33];
    v5 = v2[34];
    v8 = v2[31];
    v7 = v2[32];
    v9 = *(v6 + 8);
    v2[42] = v9;
    v2[43] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v10 = sub_29EAD1A90;
    v11 = v8;
  }

  else
  {
    v12 = v2[31];
    (*(v2[33] + 8))(v2[34], v2[32]);
    v10 = sub_29EAD194C;
    v11 = v12;
  }

  return MEMORY[0x2A1C73D48](v10, v11, 0);
}

uint64_t sub_29EAD194C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 371);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 368) = v1;
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 352) = v6;
  *v6 = v0;
  v6[1] = sub_29EAD1B38;

  return v8(v0 + 368, v2, v3);
}

uint64_t sub_29EAD1A90()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[36];
  v4 = v0[32];
  sub_29EAAD4D8((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2(v3, v4);
  v5 = v0[41];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[34];

  v9 = v0[1];

  return v9();
}

uint64_t sub_29EAD1B38()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 296);
    v5 = *(v2 + 248);

    v6 = sub_29EAD2020;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 248);
    v6 = sub_29EAD1C60;
  }

  return MEMORY[0x2A1C73D48](v6, v7, 0);
}

uint64_t sub_29EAD1C60()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 296);

    v5 = *(v0 + 280);
    v6 = *(v0 + 272);
    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v8 = *(v0 + 312) + 1;
    *(v0 + 312) = v8;
    v9 = *(v0 + 296);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v9 + 40 * v8 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB78, &qword_29EB180F0);
      if (swift_dynamicCast())
      {
        v10 = *(v0 + 288);
        v12 = *(v0 + 264);
        v11 = *(v0 + 272);
        v13 = *(v0 + 256);
        v14 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v15 = *(v0 + 80);
        v16 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
        *(v0 + 369) = v14;
        (*(v12 + 16))(v11, v10, v13);
        v17 = *(v16 + 32);
        v27 = (v17 + *v17);
        v18 = v17[1];
        v19 = swift_task_alloc();
        *(v0 + 320) = v19;
        *v19 = v0;
        v19[1] = sub_29EAD17E0;
        v20 = *(v0 + 272);

        return v27(v0 + 369, v20, v15, v16);
      }

      else
      {
        v21 = *(v0 + 371);
        v22 = *(v0 + 40);
        v23 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
        *(v0 + 368) = v21;
        v24 = *(v23 + 40);
        v28 = (v24 + *v24);
        v25 = v24[1];
        v26 = swift_task_alloc();
        *(v0 + 352) = v26;
        *v26 = v0;
        v26[1] = sub_29EAD1B38;

        return v28(v0 + 368, v22, v23);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD2020()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  sub_29EAAD4D8((v0 + 2));
  (*(v3 + 8))(v1, v2);
  v4 = v0[45];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];

  v8 = v0[1];

  return v8();
}

uint64_t sub_29EAD20C8(char a1)
{
  *(v2 + 248) = v1;
  *(v2 + 371) = a1;
  v3 = sub_29EB14A0C();
  *(v2 + 256) = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  *(v2 + 264) = v4;
  v6 = *(v4 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  (*(v5 + 32))();

  return MEMORY[0x2A1C73D48](sub_29EAD21DC, v1, 0);
}

uint64_t sub_29EAD21DC()
{
  v46 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v42 = *(v0 + 280);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 371);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136315394;
    *(v0 + 370) = v7;
    v10 = sub_29EB146FC();
    v12 = sub_29EABC674(v10, v11, &v45);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_beginAccess();
    (*(v5 + 16))(v42, v4, v6);
    v13 = sub_29EB146FC();
    v15 = sub_29EABC674(v13, v14, &v45);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v9, -1, -1);
    MEMORY[0x29EDA8150](v8, -1, -1);
  }

  v16 = *(v0 + 248);
  swift_beginAccess();
  v17 = *(v16 + 112);
  *(v0 + 296) = v17;
  v18 = *(v17 + 16);
  *(v0 + 304) = v18;
  v19 = *(v0 + 288);
  if (v18)
  {

    result = swift_beginAccess();
    *(v0 + 312) = 0;
    v21 = *(v0 + 296);
    if (*(v21 + 16))
    {
      sub_29EAAD064(v21 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB30, &qword_29EB18088);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 288);
        v24 = *(v0 + 264);
        v23 = *(v0 + 272);
        v25 = *(v0 + 256);
        v26 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v27 = *(v0 + 80);
        v28 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v27);
        *(v0 + 369) = v26;
        (*(v24 + 16))(v23, v22, v25);
        v29 = *(v28 + 32);
        v43 = (v29 + *v29);
        v30 = v29[1];
        v31 = swift_task_alloc();
        *(v0 + 320) = v31;
        *v31 = v0;
        v31[1] = sub_29EAD2748;
        v32 = *(v0 + 272);

        return v43(v0 + 369, v32, v27, v28);
      }

      else
      {
        v36 = *(v0 + 371);
        v37 = *(v0 + 40);
        v38 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v37);
        *(v0 + 368) = v36;
        v39 = *(v38 + 40);
        v44 = (v39 + *v39);
        v40 = v39[1];
        v41 = swift_task_alloc();
        *(v0 + 352) = v41;
        *v41 = v0;
        v41[1] = sub_29EAD29F8;

        return v44(v0 + 368, v37, v38);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v34 = *(v0 + 272);
    v33 = *(v0 + 280);
    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v35 = *(v0 + 8);

    return v35();
  }

  return result;
}

uint64_t sub_29EAD2748()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v14 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[37];
    v6 = v2[33];
    v5 = v2[34];
    v8 = v2[31];
    v7 = v2[32];
    v9 = *(v6 + 8);
    v2[42] = v9;
    v2[43] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v10 = sub_29EAE4948;
    v11 = v8;
  }

  else
  {
    v12 = v2[31];
    (*(v2[33] + 8))(v2[34], v2[32]);
    v10 = sub_29EAD28B4;
    v11 = v12;
  }

  return MEMORY[0x2A1C73D48](v10, v11, 0);
}

uint64_t sub_29EAD28B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 371);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 368) = v1;
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 352) = v6;
  *v6 = v0;
  v6[1] = sub_29EAD29F8;

  return v8(v0 + 368, v2, v3);
}

uint64_t sub_29EAD29F8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 296);
    v5 = *(v2 + 248);

    v6 = sub_29EAE4984;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 248);
    v6 = sub_29EAD2B20;
  }

  return MEMORY[0x2A1C73D48](v6, v7, 0);
}

uint64_t sub_29EAD2B20()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 296);

    v5 = *(v0 + 280);
    v6 = *(v0 + 272);
    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v8 = *(v0 + 312) + 1;
    *(v0 + 312) = v8;
    v9 = *(v0 + 296);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v9 + 40 * v8 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB30, &qword_29EB18088);
      if (swift_dynamicCast())
      {
        v10 = *(v0 + 288);
        v12 = *(v0 + 264);
        v11 = *(v0 + 272);
        v13 = *(v0 + 256);
        v14 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v15 = *(v0 + 80);
        v16 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
        *(v0 + 369) = v14;
        (*(v12 + 16))(v11, v10, v13);
        v17 = *(v16 + 32);
        v27 = (v17 + *v17);
        v18 = v17[1];
        v19 = swift_task_alloc();
        *(v0 + 320) = v19;
        *v19 = v0;
        v19[1] = sub_29EAD2748;
        v20 = *(v0 + 272);

        return v27(v0 + 369, v20, v15, v16);
      }

      else
      {
        v21 = *(v0 + 371);
        v22 = *(v0 + 40);
        v23 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
        *(v0 + 368) = v21;
        v24 = *(v23 + 40);
        v28 = (v24 + *v24);
        v25 = v24[1];
        v26 = swift_task_alloc();
        *(v0 + 352) = v26;
        *v26 = v0;
        v26[1] = sub_29EAD29F8;

        return v28(v0 + 368, v22, v23);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD2EE0(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_29EB14A0C();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAD2FCC, v1, 0);
}

uint64_t sub_29EAD2FCC()
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = sub_29EB1405C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 216) = sub_29EB1404C();
  *(v0 + 160) = xmmword_29EB16E70;
  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAD3084, 0, 0);
}

uint64_t sub_29EAD3084()
{
  v9 = *MEMORY[0x29EDCA608];
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 176), *(v0 + 192));
  sub_29EAE414C(&qword_2A187AB28, MEMORY[0x29EDB9DC8]);
  sub_29EB1495C();
  for (i = *(v0 + 144); i != *(v0 + 152); i = *(v0 + 144))
  {
    v3 = *i;
    *(v0 + 144) = i + 1;
    if (*(v0 + 168) >> 62 == 2)
    {
      v4 = *(*(v0 + 160) + 24);
    }

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB38, &qword_29EB180A8);
    *(v0 + 40) = v2;
    *(v0 + 48) = sub_29EAE3B20();
    *(v0 + 16) = v3;
    *(v0 + 258) = *__swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_29EB1427C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v5 = *(MEMORY[0x29EDB9A80] + 4);
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_29EAD327C;
  v7 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C5A720]();
}

uint64_t sub_29EAD327C(__int16 a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *v2;
  v5 = *(*v2 + 224);
  v11 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v6 = *(v4 + 136);
    swift_unknownObjectRelease();
    sub_29EAAD010(*(v4 + 160), *(v4 + 168));
    v7 = sub_29EAD35D8;
  }

  else
  {
    *(v4 + 256) = a1;
    v7 = sub_29EAD33DC;
  }

  v8 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EAD33DC()
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 256);
  if ((v1 & 0x100) != 0)
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 136);
    swift_unknownObjectRelease();
    *(v0 + 240) = *(v0 + 160);
    v8 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73D48](sub_29EAD3724, v6, 0);
  }

  else
  {
    v2 = v1;
    while (1)
    {
      if (*(v0 + 168) >> 62 == 2)
      {
        v3 = *(*(v0 + 160) + 24);
      }

      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB38, &qword_29EB180A8);
      *(v0 + 40) = v4;
      *(v0 + 48) = sub_29EAE3B20();
      *(v0 + 16) = v2;
      *(v0 + 258) = *__swift_project_boxed_opaque_existential_1((v0 + 16), v4);
      sub_29EB1427C();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v5 = *(v0 + 144);
      if (v5 == *(v0 + 152))
      {
        break;
      }

      v2 = *v5;
      *(v0 + 144) = v5 + 1;
    }

    v9 = *(MEMORY[0x29EDB9A80] + 4);
    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    *v10 = v0;
    v10[1] = sub_29EAD327C;
    v11 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C5A720]();
  }
}

uint64_t sub_29EAD35D8()
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 184);
  v2 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAD3664, v1, 0);
}

uint64_t sub_29EAD3664()
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];

  (*(v3 + 8))(v4, v2);
  v5 = v0[29];
  v6 = v0[26];

  v7 = v0[1];
  v8 = *MEMORY[0x29EDCA608];

  return v7();
}

uint64_t sub_29EAD3724()
{
  v24 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  sub_29EAAD660();
  sub_29EB1403C();
  if (v3)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 216);

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_29EABCCEC(v0 + 96, &qword_2A187AB48, &qword_29EB180B0);
    sub_29EAE3B84();
    sub_29EB1403C();
    v8 = *(v0 + 184);
    sub_29EAACE48();
    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v19 = *(v0 + 216);
    (*(*(v0 + 200) + 8))(*(v0 + 176), *(v0 + 192));
    sub_29EAAD010(v17, v18);
  }

  else
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 112);
    *(v0 + 56) = *(v0 + 96);
    *(v0 + 72) = v10;
    *(v0 + 88) = *(v0 + 128);
    sub_29EAACB3C(v0 + 56);
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);

    sub_29EAAD010(v11, v12);
    (*(v15 + 8))(v16, v14);
    sub_29EAAD4D8(v0 + 56);
  }

  v20 = *(v0 + 208);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x29EDCA608];

  return v21();
}

uint64_t sub_29EAD3968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = v27 - v11;
  sub_29EAE37E4(a3, v27 - v11);
  v13 = sub_29EB1491C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_29EABCCEC(v12, &unk_2A187A8A0, &qword_29EB17630);
  }

  else
  {
    sub_29EB1490C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_29EB1489C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_29EB1471C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_29EABCCEC(a3, &unk_2A187A8A0, &qword_29EB17630);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29EABCCEC(a3, &unk_2A187A8A0, &qword_29EB17630);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_29EAD3C58()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187AA80);
  v1 = __swift_project_value_buffer(v0, qword_2A187AA80);
  if (qword_2A187A2E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A1881290);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_29EAD3D20(uint64_t a1)
{
  v2 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id sub_29EAD3D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = aBlock - v8;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v10 = sub_29EB1454C();
  __swift_project_value_buffer(v10, qword_2A187AA80);
  v11 = sub_29EB1452C();
  v12 = sub_29EB14A4C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_29EAA5000, v11, v12, "Received request to preflight export", v13, 2u);
    MEMORY[0x29EDA8150](v13, -1, -1);
  }

  v14 = sub_29EB1491C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v16 = v3;

  v17 = sub_29EAD3968(0, 0, v9, &unk_29EB18190, v15);
  v18 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  aBlock[4] = sub_29EAE4610;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_86;
  v19 = _Block_copy(aBlock);

  [v18 setCancellationHandler_];
  _Block_release(v19);

  return v18;
}

uint64_t sub_29EAD3FF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[95] = a6;
  v6[94] = a5;
  v6[93] = a4;
  v7 = *((*MEMORY[0x29EDCA1E8] & *a4) + 0x50);
  v6[96] = v7;
  v8 = *(v7 - 8);
  v6[97] = v8;
  v9 = *(v8 + 64) + 15;
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v6[100] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAD40F0, 0, 0);
}

uint64_t sub_29EAD40F0()
{
  sub_29EB148FC();
  *(v0 + 808) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EAD4184, v2, v1);
}

uint64_t sub_29EAD4184()
{
  v1 = v0[101];
  v2 = v0[93];

  v0[102] = *(v2 + *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EAD4224, 0, 0);
}

uint64_t sub_29EAD4224()
{
  if (*(v0 + 816))
  {
    v1 = swift_task_alloc();
    *(v0 + 824) = v1;
    *v1 = v0;
    v1[1] = sub_29EAD4B7C;

    return sub_29EAABD08(v0 + 16);
  }

  v3 = *(v0 + 800);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 744);
  v7 = *((*MEMORY[0x29EDCA1E8] & *v6) + 0x68);
  *(v0 + 840) = v7;
  v8 = *(v4 + 16);
  *(v0 + 848) = v8;
  *(v0 + 856) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, &v6[v7], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB8, &qword_29EB18158);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C((v0 + 312), v0 + 272);
    sub_29EAAD474(v0 + 272, v0 + 632);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABF0, &qword_29EB181B8);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 672), v0 + 592);
      v9 = *(v0 + 616);
      v10 = *(v0 + 624);
      __swift_project_boxed_opaque_existential_1((v0 + 592), v9);
      v11 = *(v10 + 16);
      v53 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 864) = v13;
      *v13 = v0;
      v13[1] = sub_29EAD5628;
      v14 = v9;
      v15 = v10;
      v16 = v53;
    }

    else
    {
      *(v0 + 704) = 0;
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      sub_29EABCCEC(v0 + 672, &qword_2A187ABF8, &qword_29EB181C0);
      *(v0 + 896) = 0u;
      v23 = *(v0 + 296);
      v24 = *(v0 + 304);
      __swift_project_boxed_opaque_existential_1((v0 + 272), v23);
      v25 = *(v24 + 56);
      v55 = (v25 + *v25);
      v26 = v25[1];
      v27 = swift_task_alloc();
      *(v0 + 912) = v27;
      *v27 = v0;
      v27[1] = sub_29EAD5B3C;
      v14 = v23;
      v15 = v24;
      v16 = v55;
    }

    return v16(v14, v15);
  }

  *(v0 + 344) = 0;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  sub_29EABCCEC(v0 + 312, &qword_2A187ABC0, &qword_29EB18160);
  *(v0 + 928) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0;
  v17 = *(v0 + 856);
  (*(v0 + 848))(*(v0 + 792), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C((v0 + 392), v0 + 352);
    sub_29EAAD474(v0 + 352, v0 + 512);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABE0, &qword_29EB181A8);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 552), v0 + 472);
      v18 = *(v0 + 496);
      v19 = *(v0 + 504);
      __swift_project_boxed_opaque_existential_1((v0 + 472), v18);
      v20 = *(v19 + 16);
      v54 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 984) = v22;
      *v22 = v0;
      v22[1] = sub_29EAD6428;
      v14 = v18;
      v15 = v19;
      v16 = v54;
    }

    else
    {
      *(v0 + 584) = 0;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      sub_29EABCCEC(v0 + 552, &qword_2A187ABE8, &qword_29EB181B0);
      *(v0 + 1016) = 0u;
      v46 = *(v0 + 376);
      v47 = *(v0 + 384);
      __swift_project_boxed_opaque_existential_1((v0 + 352), v46);
      v48 = *(v47 + 56);
      v57 = (v48 + *v48);
      v49 = v48[1];
      v50 = swift_task_alloc();
      *(v0 + 1032) = v50;
      *v50 = v0;
      v50[1] = sub_29EAD6938;
      v14 = v46;
      v15 = v47;
      v16 = v57;
    }

    return v16(v14, v15);
  }

  *(v0 + 424) = 0;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0u;
  sub_29EABCCEC(v0 + 392, &qword_2A187ABA8, &qword_29EB18130);
  v28 = *(v0 + 856);
  (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
  v29 = swift_dynamicCast();
  if ((v29 & 1) == 0)
  {
    *(v0 + 464) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
  }

  sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v30 = sub_29EB1454C();
  __swift_project_value_buffer(v30, qword_2A187AA80);
  v31 = sub_29EB1452C();
  v32 = sub_29EB14A4C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_29EAA5000, v31, v32, "Completed calculating preflight info", v33, 2u);
    MEMORY[0x29EDA8150](v33, -1, -1);
  }

  v34 = *(v0 + 976);
  v35 = *(v0 + 760);
  v36 = *(v0 + 752);
  v52 = *(v0 + 928);
  v56 = *(v0 + 960);
  v51 = *(v0 + 944);

  v37 = type metadata accessor for PreflightInfo.XPCHelper();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  *v39 = v52;
  *(v39 + 1) = v51;
  *(v39 + 2) = v56;
  *(v39 + 6) = v34;
  *(v39 + 56) = 0u;
  *(v39 + 72) = 0u;
  *(v39 + 88) = 0u;
  *(v39 + 13) = 0;
  v40 = MEMORY[0x29EDCA190];
  v39[112] = v29;
  *(v39 + 15) = v40;
  *(v0 + 712) = v38;
  *(v0 + 720) = v37;
  v41 = objc_msgSendSuper2((v0 + 712), sel_init);
  v36(v41, 0);

  v42 = *(v0 + 800);
  v43 = *(v0 + 792);
  v44 = *(v0 + 784);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_29EAD4B7C()
{
  v2 = *(*v1 + 824);
  v5 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v3 = sub_29EAD6F00;
  }

  else
  {
    v3 = sub_29EAD4C90;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAD4C90()
{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  if (sub_29EAE4618(v0 + 144) == 1)
  {
    v5 = *(v0 + 816);

    v6 = *(v0 + 800);
    v7 = *(v0 + 776);
    v8 = *(v0 + 768);
    v9 = *(v0 + 744);
    v10 = *((*MEMORY[0x29EDCA1E8] & *v9) + 0x68);
    *(v0 + 840) = v10;
    v11 = *(v7 + 16);
    *(v0 + 848) = v11;
    *(v0 + 856) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v6, &v9[v10], v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB8, &qword_29EB18158);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 312), v0 + 272);
      sub_29EAAD474(v0 + 272, v0 + 632);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABF0, &qword_29EB181B8);
      if (swift_dynamicCast())
      {
        sub_29EAADE9C((v0 + 672), v0 + 592);
        v12 = *(v0 + 616);
        v13 = *(v0 + 624);
        __swift_project_boxed_opaque_existential_1((v0 + 592), v12);
        v14 = *(v13 + 16);
        v70 = (v14 + *v14);
        v15 = v14[1];
        v16 = swift_task_alloc();
        *(v0 + 864) = v16;
        *v16 = v0;
        v16[1] = sub_29EAD5628;
        v17 = v12;
        v18 = v13;
        v19 = v70;
      }

      else
      {
        *(v0 + 704) = 0;
        *(v0 + 672) = 0u;
        *(v0 + 688) = 0u;
        sub_29EABCCEC(v0 + 672, &qword_2A187ABF8, &qword_29EB181C0);
        *(v0 + 896) = 0u;
        v44 = *(v0 + 296);
        v45 = *(v0 + 304);
        __swift_project_boxed_opaque_existential_1((v0 + 272), v44);
        v46 = *(v45 + 56);
        v72 = (v46 + *v46);
        v47 = v46[1];
        v48 = swift_task_alloc();
        *(v0 + 912) = v48;
        *v48 = v0;
        v48[1] = sub_29EAD5B3C;
        v17 = v44;
        v18 = v45;
        v19 = v72;
      }

      return v19(v17, v18);
    }

    *(v0 + 344) = 0;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    sub_29EABCCEC(v0 + 312, &qword_2A187ABC0, &qword_29EB18160);
    *(v0 + 928) = 0u;
    *(v0 + 944) = 0u;
    *(v0 + 960) = 0u;
    *(v0 + 976) = 0;
    v38 = *(v0 + 856);
    (*(v0 + 848))(*(v0 + 792), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 392), v0 + 352);
      sub_29EAAD474(v0 + 352, v0 + 512);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABE0, &qword_29EB181A8);
      if (swift_dynamicCast())
      {
        sub_29EAADE9C((v0 + 552), v0 + 472);
        v39 = *(v0 + 496);
        v40 = *(v0 + 504);
        __swift_project_boxed_opaque_existential_1((v0 + 472), v39);
        v41 = *(v40 + 16);
        v71 = (v41 + *v41);
        v42 = v41[1];
        v43 = swift_task_alloc();
        *(v0 + 984) = v43;
        *v43 = v0;
        v43[1] = sub_29EAD6428;
        v17 = v39;
        v18 = v40;
        v19 = v71;
      }

      else
      {
        *(v0 + 584) = 0;
        *(v0 + 552) = 0u;
        *(v0 + 568) = 0u;
        sub_29EABCCEC(v0 + 552, &qword_2A187ABE8, &qword_29EB181B0);
        *(v0 + 1016) = 0u;
        v63 = *(v0 + 376);
        v64 = *(v0 + 384);
        __swift_project_boxed_opaque_existential_1((v0 + 352), v63);
        v65 = *(v64 + 56);
        v74 = (v65 + *v65);
        v66 = v65[1];
        v67 = swift_task_alloc();
        *(v0 + 1032) = v67;
        *v67 = v0;
        v67[1] = sub_29EAD6938;
        v17 = v63;
        v18 = v64;
        v19 = v74;
      }

      return v19(v17, v18);
    }

    *(v0 + 424) = 0;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    sub_29EABCCEC(v0 + 392, &qword_2A187ABA8, &qword_29EB18130);
    v49 = *(v0 + 856);
    (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
    v50 = swift_dynamicCast();
    if ((v50 & 1) == 0)
    {
      *(v0 + 464) = 0;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
    }

    sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
    if (qword_2A187A328 != -1)
    {
      swift_once();
    }

    v51 = sub_29EB1454C();
    __swift_project_value_buffer(v51, qword_2A187AA80);
    v52 = sub_29EB1452C();
    v53 = sub_29EB14A4C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_29EAA5000, v52, v53, "Completed calculating preflight info", v54, 2u);
      MEMORY[0x29EDA8150](v54, -1, -1);
    }

    v55 = *(v0 + 976);
    v56 = *(v0 + 760);
    v57 = *(v0 + 752);
    v69 = *(v0 + 928);
    v73 = *(v0 + 960);
    v68 = *(v0 + 944);

    v58 = type metadata accessor for PreflightInfo.XPCHelper();
    v59 = objc_allocWithZone(v58);
    v60 = &v59[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
    *v60 = v69;
    *(v60 + 1) = v68;
    *(v60 + 2) = v73;
    *(v60 + 6) = v55;
    *(v60 + 56) = 0u;
    *(v60 + 72) = 0u;
    *(v60 + 88) = 0u;
    *(v60 + 13) = 0;
    v61 = MEMORY[0x29EDCA190];
    v60[112] = v50;
    *(v60 + 15) = v61;
    *(v0 + 712) = v59;
    *(v0 + 720) = v58;
    v62 = objc_msgSendSuper2((v0 + 712), sel_init);
    v57(v62, 0);
  }

  else
  {
    v20 = *(v0 + 816);
    v21 = *(v0 + 760);
    v22 = *(v0 + 752);
    v23 = type metadata accessor for PreflightInfo.XPCHelper();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
    v26 = *(v0 + 176);
    v27 = *(v0 + 192);
    v28 = *(v0 + 160);
    *v25 = *(v0 + 144);
    v29 = *(v0 + 208);
    v30 = *(v0 + 224);
    v31 = *(v0 + 256);
    *(v25 + 6) = *(v0 + 240);
    *(v25 + 7) = v31;
    *(v25 + 4) = v29;
    *(v25 + 5) = v30;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    *(v25 + 1) = v28;
    *(v0 + 728) = v24;
    *(v0 + 736) = v23;
    v32 = objc_msgSendSuper2((v0 + 728), sel_init);
    v22(v32, 0);
  }

  v33 = *(v0 + 800);
  v34 = *(v0 + 792);
  v35 = *(v0 + 784);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_29EAD5628(uint64_t a1)
{
  v2 = *(*v1 + 864);
  v4 = *v1;
  *(*v1 + 872) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD5728, 0, 0);
}

uint64_t sub_29EAD5728()
{
  v1 = v0[77];
  v2 = v0[78];
  __swift_project_boxed_opaque_existential_1(v0 + 74, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[110] = v5;
  *v5 = v0;
  v5[1] = sub_29EAD5850;

  return v7(v1, v2);
}

uint64_t sub_29EAD5850(uint64_t a1)
{
  v2 = *(*v1 + 880);
  v4 = *v1;
  *(*v1 + 888) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD5950, 0, 0);
}

uint64_t sub_29EAD5950()
{
  if ((v0[109] & 0x8000000000000000) != 0 || (v0[111] & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 74);
  v1 = v0[111];
  v0[113] = v0[109];
  v0[112] = v1;
  v2 = v0[37];
  v3 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v2);
  v4 = *(v3 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[114] = v6;
  *v6 = v0;
  v6[1] = sub_29EAD5B3C;

  return v8(v2, v3);
}

uint64_t sub_29EAD5B3C(uint64_t a1)
{
  v2 = *(*v1 + 912);
  v4 = *v1;
  *(*v1 + 920) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD5C3C, 0, 0);
}

uint64_t sub_29EAD5C3C()
{
  if ((*(v0 + 920) & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v2);
  v3 = sub_29EB04E10(v2, v1);
  v4 = *(v3 + 16);
  if (v4 > 0x63)
  {
    return sub_29EB14D2C();
  }

  v5 = v3;
  if (v4)
  {
    v6 = 0;
    v7 = (v0 + 1052);
    v8 = (v3 + 40);
    while (v6 < *(v5 + 16))
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      if (sub_29EB1474C() > 254)
      {
        sub_29EB14C2C();

        *v7 = 255;
        v47 = sub_29EB14E8C();
        MEMORY[0x29EDA6DF0](v47);

        MEMORY[0x29EDA6DF0](41, 0xE100000000000000);
        return sub_29EB14D2C();
      }

      ++v6;
      v8 += 2;
      if (v4 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_18;
  }

LABEL_8:
  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v11);
  v13 = (*(v12 + 64))(v11, v12);
  v15 = v14;
  v16 = *(v0 + 296);
  v17 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v16);
  v18 = (*(v17 + 72))(v16, v17) & 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  v19 = *(v0 + 920);
  *(v0 + 976) = v5;
  *(v0 + 968) = v18;
  *(v0 + 960) = v15;
  *(v0 + 952) = v13;
  *(v0 + 936) = vextq_s8(*(v0 + 896), *(v0 + 896), 8uLL);
  *(v0 + 928) = v19;
  v20 = *(v0 + 856);
  (*(v0 + 848))(*(v0 + 792), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C((v0 + 392), v0 + 352);
    sub_29EAAD474(v0 + 352, v0 + 512);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABE0, &qword_29EB181A8);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 552), v0 + 472);
      v21 = *(v0 + 496);
      v22 = *(v0 + 504);
      __swift_project_boxed_opaque_existential_1((v0 + 472), v21);
      v23 = *(v22 + 16);
      v55 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 984) = v25;
      *v25 = v0;
      v25[1] = sub_29EAD6428;
      v26 = v21;
      v27 = v22;
      v28 = v55;
    }

    else
    {
      *(v0 + 584) = 0;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      sub_29EABCCEC(v0 + 552, &qword_2A187ABE8, &qword_29EB181B0);
      *(v0 + 1016) = 0u;
      v48 = *(v0 + 376);
      v49 = *(v0 + 384);
      __swift_project_boxed_opaque_existential_1((v0 + 352), v48);
      v50 = *(v49 + 56);
      v57 = (v50 + *v50);
      v51 = v50[1];
      v52 = swift_task_alloc();
      *(v0 + 1032) = v52;
      *v52 = v0;
      v52[1] = sub_29EAD6938;
      v26 = v48;
      v27 = v49;
      v28 = v57;
    }

    return v28(v26, v27);
  }

  *(v0 + 424) = 0;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0u;
  sub_29EABCCEC(v0 + 392, &qword_2A187ABA8, &qword_29EB18130);
  v30 = *(v0 + 856);
  (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
  LOBYTE(v7) = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    *(v0 + 464) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
  }

  sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
  if (qword_2A187A328 != -1)
  {
    goto LABEL_29;
  }

LABEL_18:
  v31 = sub_29EB1454C();
  __swift_project_value_buffer(v31, qword_2A187AA80);
  v32 = sub_29EB1452C();
  v33 = sub_29EB14A4C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_29EAA5000, v32, v33, "Completed calculating preflight info", v34, 2u);
    MEMORY[0x29EDA8150](v34, -1, -1);
  }

  v35 = *(v0 + 976);
  v36 = *(v0 + 760);
  v37 = *(v0 + 752);
  v54 = *(v0 + 928);
  v56 = *(v0 + 960);
  v53 = *(v0 + 944);

  v38 = type metadata accessor for PreflightInfo.XPCHelper();
  v39 = objc_allocWithZone(v38);
  v40 = &v39[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  *v40 = v54;
  *(v40 + 1) = v53;
  *(v40 + 2) = v56;
  *(v40 + 6) = v35;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  *(v40 + 13) = 0;
  v41 = MEMORY[0x29EDCA190];
  v40[112] = v7;
  *(v40 + 15) = v41;
  *(v0 + 712) = v39;
  *(v0 + 720) = v38;
  v42 = objc_msgSendSuper2((v0 + 712), sel_init);
  v37(v42, 0);

  v43 = *(v0 + 800);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_29EAD6428(uint64_t a1)
{
  v2 = *(*v1 + 984);
  v4 = *v1;
  *(*v1 + 992) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD6528, 0, 0);
}

uint64_t sub_29EAD6528()
{
  v1 = v0[62];
  v2 = v0[63];
  __swift_project_boxed_opaque_existential_1(v0 + 59, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[125] = v5;
  *v5 = v0;
  v5[1] = sub_29EAD664C;

  return v7(v1, v2);
}

uint64_t sub_29EAD664C(uint64_t a1)
{
  v2 = *(*v1 + 1000);
  v4 = *v1;
  *(*v1 + 1008) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD674C, 0, 0);
}

uint64_t sub_29EAD674C()
{
  if ((v0[124] & 0x8000000000000000) != 0 || (v0[126] & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 59);
  v1 = v0[126];
  v0[128] = v0[124];
  v0[127] = v1;
  v2 = v0[47];
  v3 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 44, v2);
  v4 = *(v3 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[129] = v6;
  *v6 = v0;
  v6[1] = sub_29EAD6938;

  return v8(v2, v3);
}

uint64_t sub_29EAD6938(uint64_t a1)
{
  v2 = *(*v1 + 1032);
  v4 = *v1;
  *(*v1 + 1040) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD6A38, 0, 0);
}

uint64_t sub_29EAD6A38()
{
  if ((*(v0 + 1040) & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 352), v3);
  v4 = sub_29EAB035C(v3, v2);
  v5 = *(v4 + 16);
  if (v5 > 0x63)
  {
    return sub_29EB14D2C();
  }

  v6 = v4;
  if (v5)
  {
    v7 = 0;
    v8 = (v4 + 40);
    while (v7 < *(v6 + 16))
    {
      v1 = *(v8 - 1);
      v9 = *v8;

      if (sub_29EB1474C() > 254)
      {
        sub_29EB14C2C();

        *(v0 + 1048) = 255;
        v33 = sub_29EB14E8C();
        MEMORY[0x29EDA6DF0](v33);

        MEMORY[0x29EDA6DF0](41, 0xE100000000000000);
        return sub_29EB14D2C();
      }

      ++v7;
      v8 += 2;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v10);
    v12 = (*(v11 + 64))(v10, v11);
    v39 = v13;
    v40 = v12;
    v5 = *(v0 + 376);
    v7 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v5);
    LOBYTE(v5) = (*(v7 + 72))(v5, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 352));
    v1 = *(v0 + 1024);
    v37 = *(v0 + 1016);
    v38 = *(v0 + 1040);
    v14 = *(v0 + 856);
    (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
    LOBYTE(v7) = swift_dynamicCast();
    if ((v7 & 1) == 0)
    {
      *(v0 + 464) = 0;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
    }

    sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
    if (qword_2A187A328 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v15 = sub_29EB1454C();
  __swift_project_value_buffer(v15, qword_2A187AA80);
  v16 = sub_29EB1452C();
  v17 = sub_29EB14A4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_29EAA5000, v16, v17, "Completed calculating preflight info", v18, 2u);
    MEMORY[0x29EDA8150](v18, -1, -1);
  }

  v19 = v5 & 1;
  v20 = *(v0 + 976);
  v21 = *(v0 + 760);
  v22 = *(v0 + 752);
  v35 = *(v0 + 928);
  v36 = *(v0 + 960);
  v34 = *(v0 + 944);

  v23 = type metadata accessor for PreflightInfo.XPCHelper();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  *v25 = v35;
  *(v25 + 1) = v34;
  *(v25 + 2) = v36;
  *(v25 + 6) = v20;
  *(v25 + 7) = v38;
  *(v25 + 8) = v1;
  *(v25 + 9) = v37;
  *(v25 + 10) = v40;
  *(v25 + 11) = v39;
  *(v25 + 12) = v19;
  *(v25 + 13) = v6;
  v26 = MEMORY[0x29EDCA190];
  v25[112] = v7;
  *(v25 + 15) = v26;
  *(v0 + 712) = v24;
  *(v0 + 720) = v23;
  v27 = objc_msgSendSuper2((v0 + 712), sel_init);
  v22(v27, 0);

  v28 = *(v0 + 800);
  v29 = *(v0 + 792);
  v30 = *(v0 + 784);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_29EAD6F00()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[95];
  v4 = v0[94];

  v5 = v1;
  v4(0, v1);

  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];

  v9 = v0[1];

  return v9();
}

void sub_29EAD6FBC()
{
  sub_29EB1492C();
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v0 = sub_29EB1454C();
  __swift_project_value_buffer(v0, qword_2A187AA80);
  oslog = sub_29EB1452C();
  v1 = sub_29EB14A5C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_29EAA5000, oslog, v1, "Preflight was cancelled", v2, 2u);
    MEMORY[0x29EDA8150](v2, -1, -1);
  }
}

id sub_29EAD70C4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  v7 = sub_29EAD3D54(sub_29EAE4980, v5);

  return v7;
}

uint64_t sub_29EAD715C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7)
{
  v8 = v7;
  v67 = a7;
  v68 = a6;
  v61 = a4;
  v62 = a5;
  v59 = a2;
  v11 = *v7;
  v12 = *MEMORY[0x29EDCA1E8];
  v13 = sub_29EB13FFC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29EB1400C();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v60 = &v59 - v23;
  v24 = *((v12 & v11) + 0x50);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v28 = &v59 - v27;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v29 = sub_29EB1454C();
  v63 = __swift_project_value_buffer(v29, qword_2A187AA80);
  v30 = sub_29EB1452C();
  v31 = sub_29EB14A4C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v8;
    v33 = a1;
    v34 = a3;
    v35 = v19;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_29EAA5000, v30, v31, "Received request to export serialized data", v36, 2u);
    v37 = v36;
    v19 = v35;
    a3 = v34;
    a1 = v33;
    v8 = v32;
    MEMORY[0x29EDA8150](v37, -1, -1);
  }

  (*(v25 + 16))(v28, v8 + *((*MEMORY[0x29EDCA1E8] & *v8) + 0x68), v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB8, &qword_29EB18158);
  if (swift_dynamicCast())
  {
    result = sub_29EAADE9C(&aBlock, v73);
    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      v40 = *(v59 + OBJC_IVAR___AMKRawMigrationRequest_request + 8);
      v39 = *(v59 + OBJC_IVAR___AMKRawMigrationRequest_request + 16);
      v41 = *(v59 + OBJC_IVAR___AMKRawMigrationRequest_request);
      v42 = objc_opt_self();

      v43 = [v42 progressWithTotalUnitCount_];
      [v43 setCancellable_];
      v44 = sub_29EB1491C();
      v45 = v60;
      (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
      sub_29EAAD474(v73, &aBlock);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v47 = v61;
      v46[4] = a1;
      v46[5] = v47;
      v46[6] = v62;
      v46[7] = v43;
      v46[8] = v8;
      sub_29EAADE9C(&aBlock, (v46 + 9));
      v46[14] = v41;
      v46[15] = v40;
      v46[16] = v39;
      v46[17] = a3;
      v48 = v67;
      v46[18] = v68;
      v46[19] = v48;

      v49 = v43;
      v50 = v8;

      v51 = a1;
      v52 = sub_29EAD3968(0, 0, v45, &unk_29EB18170, v46);
      v71 = sub_29EAE44D0;
      v72 = v52;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v70 = sub_29EABE4EC;
      *(&v70 + 1) = &block_descriptor_70;
      v53 = _Block_copy(&aBlock);

      [v49 setCancellationHandler_];
      _Block_release(v53);

      __swift_destroy_boxed_opaque_existential_1(v73);
      return v49;
    }
  }

  else
  {
    v71 = 0;
    aBlock = 0u;
    v70 = 0u;
    sub_29EABCCEC(&aBlock, &qword_2A187ABC0, &qword_29EB18160);
    v54 = sub_29EB1452C();
    v55 = sub_29EB14A5C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_29EAA5000, v54, v55, "App extension doesn't support serialized data export", v56, 2u);
      MEMORY[0x29EDA8150](v56, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860]);
    v57 = v66;
    sub_29EB1415C();
    v58 = sub_29EB13F9C();
    (*(v65 + 8))(v19, v57);
    v68(0, v58);

    return 0;
  }

  return result;
}

uint64_t sub_29EAD77F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = v17;
  *(v8 + 160) = v15;
  *(v8 + 176) = v16;
  *(v8 + 144) = v14;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  v9 = sub_29EB1430C();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAD78E8, 0, 0);
}

uint64_t sub_29EAD78E8()
{
  v11 = v0;
  if (*(v0 + 120))
  {
    v1 = *(v0 + 112);
    v2 = sub_29EB14D8C() != 0;
  }

  else
  {
    v2 = 1;
  }

  *(v0 + 486) = v2;
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v10[0] = v2;
  v5 = v4;
  v6 = v3;
  *(v0 + 232) = sub_29EB054D0(v10, v5, v3);
  sub_29EB148FC();
  *(v0 + 240) = sub_29EB148EC();
  v8 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EAD7C08, v8, v7);
}

uint64_t sub_29EAD7C08()
{
  v1 = v0[30];
  v2 = v0[17];

  v0[31] = *(v2 + *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EAD7CA8, 0, 0);
}

uint64_t sub_29EAD7CA8()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 232);

    v2 = swift_task_alloc();
    *(v0 + 256) = v2;
    *v2 = v0;
    v2[1] = sub_29EAD7E2C;
    v3 = *(v0 + 232);

    return sub_29EACEBB8(2, v3);
  }

  else
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v12 = *(v0 + 160);
    sub_29EB142FC();
    v8 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v8);
    *(v0 + 16) = v7;
    *(v0 + 24) = v12;
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_29EAD8030;
    v11 = *(v0 + 232);

    return sub_29EB01B54(v11, v0 + 16, v8, v9);
  }
}

uint64_t sub_29EAD7E2C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_29EAD886C;
  }

  else
  {
    v3 = sub_29EAD7F40;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAD7F40()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 224);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v10 = *(v0 + 160);
  sub_29EB142FC();
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  *(v0 + 16) = v4;
  *(v0 + 24) = v10;
  v7 = swift_task_alloc();
  *(v0 + 272) = v7;
  *v7 = v0;
  v7[1] = sub_29EAD8030;
  v8 = *(v0 + 232);

  return sub_29EB01B54(v8, v0 + 16, v5, v6);
}

uint64_t sub_29EAD8030()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_29EAD8F58;
  }

  else
  {
    v3 = sub_29EAD8144;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAD8144()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  sub_29EB142FC();
  sub_29EB142EC();
  v0[36] = v5;
  v6 = *(v4 + 8);
  v0[37] = v6;
  v0[38] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_29EAD8220;
  v8 = v0[29];

  return sub_29EB01CD4();
}

uint64_t sub_29EAD8220()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_29EAD9018;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 232);
    v4 = sub_29EAD833C;
  }

  return MEMORY[0x2A1C73D48](v4, v5, 0);
}

uint64_t sub_29EAD833C()
{
  v1 = v0[29];
  v0[41] = v1[19];
  v2 = v1[14];
  v0[42] = v2;
  if (v2)
  {
    v0[43] = v1[16];
    v0[44] = v1[15];
    v3 = sub_29EAD8394;
  }

  else
  {
    v0[47] = 0;
    v3 = sub_29EAD85D8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAD8394()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = swift_task_alloc();
  v0[45] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = *(MEMORY[0x29EDCA468] + 4);
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_29EAD849C;
  v7 = MEMORY[0x29EDCA0D0];

  return MEMORY[0x2A1C73C70](v0 + 12, 0, 0, 0xD000000000000019, 0x800000029EB1BFA0, sub_29EAE4988, v4, v7);
}

uint64_t sub_29EAD849C()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EAD85B4, 0, 0);
}

uint64_t sub_29EAD85D8()
{
  v2 = *(v1 + 288);
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  v3 = v2 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 1.84467441e19)
  {
    v0 = *(v1 + 336);
    v28 = *(v1 + 486);
    if (qword_2A187A328 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_7:
  v4 = sub_29EB1454C();
  __swift_project_value_buffer(v4, qword_2A187AA80);
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Completed exporting serialized data", v7, 2u);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v8 = *(v1 + 376);
  v9 = *(v1 + 328);
  v26 = *(v1 + 296);
  v27 = *(v1 + 304);
  v10 = *(v1 + 192);
  v24 = *(v1 + 200);
  v25 = *(v1 + 224);
  v11 = *(v1 + 176);
  v12 = *(v1 + 184);
  v22 = *(v1 + 232);
  v23 = *(v1 + 104);

  v13 = type metadata accessor for AppContentMetrics.XPCHelper();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v15 = 0;
  v16 = *(v1 + 479);
  *(v15 + 1) = *(v1 + 482);
  *(v15 + 1) = v16;
  *(v15 + 1) = v28;
  *(v15 + 2) = v11;
  *(v15 + 3) = v9;
  *(v15 + 4) = 0;
  *(v15 + 5) = v8;
  *(v15 + 6) = v0 == 0;
  *(v15 + 7) = v3;
  *(v15 + 4) = 0u;
  *(v15 + 5) = 0u;
  *(v15 + 6) = 0u;
  *(v15 + 14) = 0;
  *(v15 + 15) = 2;
  *(v15 + 17) = 0;
  *(v15 + 18) = 0;
  *(v15 + 16) = 0;
  *(v1 + 72) = v14;
  *(v1 + 80) = v13;
  v17 = objc_msgSendSuper2((v1 + 72), sel_init);
  v12(v17, 0);

  v26(v25, v24);
  sub_29EADB428(v23);
  v19 = *(v1 + 216);
  v18 = *(v1 + 224);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_29EAD886C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);

  v3 = *(v0 + 264);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  __swift_project_value_buffer(v4, qword_2A187AA80);
  v5 = v3;
  v6 = sub_29EB1452C();
  v7 = sub_29EB14A5C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_29EAA5000, v6, v7, "Failed to export serialized data %@", v8, 0xCu);
    sub_29EABCCEC(v9, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v9, -1, -1);
    MEMORY[0x29EDA8150](v8, -1, -1);
  }

  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 104);

  v15 = type metadata accessor for AppContentMetrics.XPCHelper();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = 2;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 15) = 2;
  *(v17 + 16) = 0;
  *(v17 + 17) = 0;
  *(v17 + 18) = 0;
  *(v0 + 40) = v16;
  *(v0 + 48) = v15;
  v18 = objc_msgSendSuper2((v0 + 40), sel_init);
  v19 = v3;
  v13(v18, v3);

  sub_29EADB428(v14);
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_29EAD8AC4()
{
  v1 = v0[29];
  v0[52] = v1[19];
  v2 = v1[14];
  v0[53] = v2;
  if (v2)
  {
    v0[54] = v1[16];
    v0[55] = v1[15];
    v3 = sub_29EAD8B1C;
  }

  else
  {
    v0[58] = 0;
    v3 = sub_29EAD8D5C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAD8B1C()
{
  v1 = v0[26].i64[1];
  v2 = swift_task_alloc();
  v0[28].i64[0] = v2;
  v3 = v0[27];
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = *(MEMORY[0x29EDCA468] + 4);
  v5 = swift_task_alloc();
  v0[28].i64[1] = v5;
  *v5 = v0;
  v5[1] = sub_29EAD8C20;
  v6 = MEMORY[0x29EDCA0D0];

  return MEMORY[0x2A1C73C70](&v0[5].u64[1], 0, 0, 0xD000000000000019, 0x800000029EB1BFA0, sub_29EAE44F4, v2, v6);
}

uint64_t sub_29EAD8C20()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v4 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EAD8D38, 0, 0);
}

void sub_29EAD8D5C()
{
  v2 = *(v0 + 392);
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v4 = *(v0 + 464);
  v5 = *(v0 + 416);
  v26 = *(v0 + 400);
  v27 = *(v0 + 408);
  v6 = *(v0 + 384);
  v7 = *(v0 + 486);
  v24 = *(v0 + 200);
  v25 = *(v0 + 224);
  v8 = *(v0 + 192);
  v22 = *(v0 + 232);
  v21 = *(v0 + 184);
  v9 = *(v0 + 176);
  v23 = *(v0 + 104);
  v10 = *(v0 + 424) == 0;
  v11 = v3;
  v12 = type metadata accessor for AppContentMetrics.XPCHelper();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v14 = 0;
  v15 = *(v0 + 472);
  *(v14 + 1) = *(v0 + 475);
  *(v14 + 1) = v15;
  *(v14 + 1) = v7;
  *(v14 + 2) = v9;
  *(v14 + 3) = v5;
  *(v14 + 4) = 0;
  *(v14 + 5) = v4;
  *(v14 + 6) = v10;
  *(v14 + 7) = v11;
  *(v14 + 4) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 6) = 0u;
  *(v14 + 14) = 0;
  *(v14 + 15) = 2;
  *(v14 + 17) = 0;
  *(v14 + 18) = 0;
  *(v14 + 16) = 0;
  *(v0 + 56) = v13;
  *(v0 + 64) = v12;
  v16 = objc_msgSendSuper2((v0 + 56), sel_init);
  v17 = v6;
  v21(v16, v6);

  v26(v25, v24);
  sub_29EADB428(v23);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_29EAD8F58()
{
  v0[48] = v0[35];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  sub_29EB142FC();
  sub_29EB142EC();
  v0[49] = v6;
  v7 = *(v4 + 8);
  v0[50] = v7;
  v0[51] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2A1C73D48](sub_29EAD8AC4, v1, 0);
}

uint64_t sub_29EAD9018()
{
  v0[48] = v0[40];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  sub_29EB142FC();
  sub_29EB142EC();
  v0[49] = v6;
  v7 = *(v4 + 8);
  v0[50] = v7;
  v0[51] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2A1C73D48](sub_29EAD8AC4, v1, 0);
}

id sub_29EAD90D8(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  if (a6)
  {
    v13 = sub_29EB146AC();
    a6 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = sub_29EAD715C(v16, v17, a5, v13, a6, sub_29EAE4980, v15);

  return v19;
}

void sub_29EAD91E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_29EB1416C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_29EAD9254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7)
{
  v8 = v7;
  v68 = a7;
  v69 = a6;
  v61 = a4;
  v62 = a5;
  v63 = a1;
  v11 = *v7;
  v12 = *MEMORY[0x29EDCA1E8];
  v13 = sub_29EB13FFC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29EB1400C();
  v67 = *(v16 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v65 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19 - 8);
  v60 = &v60 - v22;
  v23 = *((v12 & v11) + 0x50);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v27 = &v60 - v26;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v28 = sub_29EB1454C();
  v64 = __swift_project_value_buffer(v28, qword_2A187AA80);
  v29 = sub_29EB1452C();
  v30 = sub_29EB14A4C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v8;
    v32 = v16;
    v33 = a2;
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_29EAA5000, v29, v30, "Starting to export resources", v34, 2u);
    v35 = v34;
    a2 = v33;
    v16 = v32;
    v8 = v31;
    MEMORY[0x29EDA8150](v35, -1, -1);
  }

  (*(v24 + 16))(v27, v8 + *((*MEMORY[0x29EDCA1E8] & *v8) + 0x68), v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
  if (swift_dynamicCast())
  {
    result = sub_29EAADE9C(&aBlock, v74);
    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      v38 = *(a2 + OBJC_IVAR___AMKRawMigrationRequest_request + 8);
      v37 = *(a2 + OBJC_IVAR___AMKRawMigrationRequest_request + 16);
      v39 = *(a2 + OBJC_IVAR___AMKRawMigrationRequest_request);
      v40 = a3;
      v41 = objc_opt_self();

      v42 = [v41 progressWithTotalUnitCount_];
      [v42 setCancellable_];
      v43 = sub_29EB1491C();
      v44 = v60;
      (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
      sub_29EAAD474(v74, &aBlock);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v46 = v63;
      v48 = v61;
      v47 = v62;
      v45[4] = v63;
      v45[5] = v48;
      v45[6] = v47;
      v45[7] = v42;
      v45[8] = v8;
      sub_29EAADE9C(&aBlock, (v45 + 9));
      v45[14] = v39;
      v45[15] = v38;
      v45[16] = v37;
      v45[17] = v40;
      v49 = v68;
      v45[18] = v69;
      v45[19] = v49;
      v50 = v46;
      v51 = v42;
      v52 = v8;

      v53 = sub_29EAD3968(0, 0, v44, &unk_29EB18140, v45);
      v72 = sub_29EAE431C;
      v73 = v53;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v71 = sub_29EABE4EC;
      *(&v71 + 1) = &block_descriptor_57_0;
      v54 = _Block_copy(&aBlock);

      [v51 setCancellationHandler_];
      _Block_release(v54);

      __swift_destroy_boxed_opaque_existential_1(v74);
      return v51;
    }
  }

  else
  {
    v72 = 0;
    aBlock = 0u;
    v71 = 0u;
    sub_29EABCCEC(&aBlock, &qword_2A187ABA8, &qword_29EB18130);
    v55 = sub_29EB1452C();
    v56 = sub_29EB14A5C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_29EAA5000, v55, v56, "App extension doesn't support resources export", v57, 2u);
      MEMORY[0x29EDA8150](v57, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860]);
    v58 = v65;
    sub_29EB1415C();
    v59 = sub_29EB13F9C();
    (*(v67 + 8))(v58, v16);
    v69(0, v59);

    return 0;
  }

  return result;
}

uint64_t sub_29EAD98E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x29EDCA608];
  *(v8 + 200) = v19;
  *(v8 + 184) = v18;
  *(v8 + 168) = v17;
  *(v8 + 152) = v16;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v9 = sub_29EB1430C();
  *(v8 + 208) = v9;
  v10 = *(v9 - 8);
  *(v8 + 216) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v12 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAD9A04, 0, 0);
}

uint64_t sub_29EAD9A04()
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  type metadata accessor for ResourcesArchiver();
  v3 = swift_allocObject();
  *(v0 + 240) = v3;
  *(v3 + 24) = v1 != 0;
  if (v2)
  {
    *(v0 + 88) = v2;
    v4 = v0 + 88;
    v5 = &type metadata for ArchiveFormat;
LABEL_9:
    v16 = *MEMORY[0x29EDCA608];
    v17 = MEMORY[0x29EDC9CA8];

    return MEMORY[0x2A1C73108](v5, v4, v5, v17);
  }

  if (v1 >= 2)
  {
    *(v0 + 96) = v1;
    v4 = v0 + 96;
    v5 = &type metadata for ArchiveCompressionScheme;
    goto LABEL_9;
  }

  v6 = v3;
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = objc_allocWithZone(AMKArchiveWriter);
  *(v0 + 104) = 0;
  v10 = [v9 initWithArchiveFormat:0 compressionScheme:v1 fileHandle:v8 progress:v7 updateProgress:1 error:v0 + 104];
  *(v0 + 248) = v10;
  v11 = *(v0 + 104);
  if (v10)
  {
    *(v6 + 16) = v10;
    sub_29EB148FC();
    v12 = v11;
    *(v0 + 256) = sub_29EB148EC();
    v13 = sub_29EB1489C();
    v15 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73D48](sub_29EAD9E40, v13, v14);
  }

  else
  {
    v18 = v11;
    v19 = sub_29EB1417C();

    swift_willThrow();
    swift_deallocPartialClassInstance();
    if (qword_2A187A328 != -1)
    {
      swift_once();
    }

    v20 = sub_29EB1454C();
    __swift_project_value_buffer(v20, qword_2A187AA80);
    v21 = v19;
    v22 = sub_29EB1452C();
    v23 = sub_29EB14A5C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_29EAA5000, v22, v23, "Failed to export resources %@", v24, 0xCu);
      sub_29EABCCEC(v25, &qword_2A187A648, qword_29EB17EB0);
      MEMORY[0x29EDA8150](v25, -1, -1);
      MEMORY[0x29EDA8150](v24, -1, -1);
    }

    v28 = *(v0 + 248);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);

    v31 = type metadata accessor for AppContentMetrics.XPCHelper();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
    *v33 = 1;
    *(v33 + 1) = 0;
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = 2;
    *(v33 + 40) = 0u;
    *(v33 + 56) = 0u;
    *(v33 + 72) = 0u;
    *(v33 + 88) = 0u;
    *(v33 + 104) = 0u;
    *(v33 + 15) = 2;
    *(v33 + 16) = 0;
    *(v33 + 17) = 0;
    *(v33 + 18) = 0;
    *(v0 + 40) = v32;
    *(v0 + 48) = v31;
    v34 = objc_msgSendSuper2((v0 + 40), sel_init);
    v35 = v19;
    v30(v34, v19);

    if (v28)
    {
      v36 = *(v0 + 240);
    }

    sub_29EADB428(*(v0 + 112));
    v38 = *(v0 + 224);
    v37 = *(v0 + 232);

    v39 = *(v0 + 8);
    v40 = *MEMORY[0x29EDCA608];

    return v39();
  }
}

uint64_t sub_29EAD9E40()
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = v0[32];
  v2 = v0[18];

  v0[33] = *(v2 + *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60));

  v3 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAD9F0C, 0, 0);
}

uint64_t sub_29EAD9F0C()
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(v0 + 264))
  {
    v1 = *(v0 + 240);

    v2 = swift_task_alloc();
    *(v0 + 272) = v2;
    *v2 = v0;
    v2[1] = sub_29EADA0D0;
    v3 = *(v0 + 240);
    v4 = *MEMORY[0x29EDCA608];

    return sub_29EACF7F8(0, v3);
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v14 = *(v0 + 168);
    sub_29EB142FC();
    v10 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v10);
    *(v0 + 16) = v8;
    *(v0 + 24) = v14;
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_29EADA330;
    v12 = *(v0 + 240);
    v13 = *MEMORY[0x29EDCA608];

    return sub_29EAAEE34(v12, v0 + 16, v10, v9);
  }
}

uint64_t sub_29EADA0D0()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_29EADA9A0;
  }

  else
  {
    v3 = sub_29EADA210;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EADA210()
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 264);

  v2 = *(v0 + 232);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v11 = *(v0 + 168);
  sub_29EB142FC();
  v6 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  *(v0 + 16) = v4;
  *(v0 + 24) = v11;
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *v7 = v0;
  v7[1] = sub_29EADA330;
  v8 = *(v0 + 240);
  v9 = *MEMORY[0x29EDCA608];

  return sub_29EAAEE34(v8, v0 + 16, v6, v5);
}