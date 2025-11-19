uint64_t sub_238096CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NameDropView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v20[8] = v17;
  v20[9] = v18;
  v21 = v19;
  v20[4] = v13;
  v20[5] = v14;
  v20[6] = v15;
  v20[7] = v16;
  v20[0] = v9;
  v20[1] = v10;
  v20[2] = v11;
  v20[3] = v12;
  v7 = *(&v14 + 1);
  sub_23809B34C(v20);
  if (*(&v14 + 1))
  {
  }

  else
  {
    sub_2381545CC();
    sub_23815462C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB590, &qword_238159CC8);
  sub_2380711D4(&qword_27DEEB598, &qword_27DEEB590, &qword_238159CC8);
  result = sub_238153ECC();
  *a2 = v9;
  *(a2 + 8) = WORD4(v9);
  *(a2 + 10) = BYTE10(v9);
  return result;
}

uint64_t sub_238096F04(uint64_t a1)
{
  v2 = type metadata accessor for NameDropView(0);
  v35[0] = *(v2 - 8);
  v3 = *(v35[0] + 64);
  MEMORY[0x28223BE20](v2);
  v35[1] = v4;
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = v35 - v7;
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v8 = sub_23815293C();
  __swift_project_value_buffer(v8, qword_27DEEB128);
  v9 = sub_23815291C();
  v10 = sub_2381550FC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = a1;
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238060000, v9, v10, "NameDrop view appearing", v12, 2u);
    v13 = v12;
    a1 = v11;
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

  v14 = a1 + *(v2 + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  v37 = v15;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v57 = v47;
  v58 = v48;
  v59 = v49;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v50[0] = v39;
  v50[1] = v40;
  v51 = v41;
  v52 = v42;
  sub_23809B34C(v50);
  v18 = MEMORY[0x277D85700];
  if (BYTE8(v51) == 1)
  {
    v19 = sub_238154FBC();
    v20 = v38;
    (*(*(v19 - 8) + 56))(v38, 1, 1, v19);
    v21 = a1;
    v22 = v36;
    sub_23809BCF4(v21, v36);
    sub_238154F8C();
    v23 = sub_238154F7C();
    v24 = (*(v35[0] + 80) + 32) & ~*(v35[0] + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = MEMORY[0x277D85700];
    v26 = v25 + v24;
    v18 = MEMORY[0x277D85700];
    sub_23809BD60(v22, v26);
    sub_2381351C8(0, 0, v20, &unk_238159C90, v25);
  }

  v27 = sub_23815381C();
  v28 = sub_238154FBC();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  sub_238154F8C();

  v30 = sub_238154F7C();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v18;
  v31[4] = v27;
  v32 = sub_2380D2A4C(0, 0, v29, &unk_238159C80, v31);
  v33 = *(v27 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask);
  *(v27 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask) = v32;
}

uint64_t sub_2380973C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381554BC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_238154F8C();
  v4[6] = sub_238154F7C();
  v9 = sub_238154F3C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_2380974B4, v9, v8);
}

uint64_t sub_2380974B4()
{
  v1 = *(v0 + 40);
  sub_23815562C();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_238097580;
  v3 = *(v0 + 40);

  return sub_23814A898(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_238097580()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_2380978D0;
  }

  else
  {
    v10 = sub_238097718;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_238097718()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for NameDropView(0) + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  *(v0 + 88) = sub_23815381C();

  return MEMORY[0x2822009F8](sub_2380977F8, 0, 0);
}

uint64_t sub_2380977F8()
{
  v1 = v0[11];
  sub_238119CDC();

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_238097864, v2, v3);
}

uint64_t sub_238097864()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2380978D0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_23809793C(uint64_t a1)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB128);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "NameDrop view disappearing", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = (a1 + *(type metadata accessor for NameDropView(0) + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  sub_238111C60();
}

uint64_t sub_238097AA4@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v41 = a3;
  v4 = type metadata accessor for NameDropView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1F8, &qword_2381596A0);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = a2 + *(v5 + 32);
  v19 = *v17;
  v18 = *(v17 + 8);
  v20 = *(v17 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v21 = v42;
  sub_23809BCF4(a2, v11);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_23809BD60(v11, v23 + v22);
  sub_23809BCF4(a2, v9);
  v24 = swift_allocObject();
  sub_23809BD60(v9, v24 + v22);
  v25 = v38;
  v42 = v38;
  v43 = v21;
  v44 = sub_23809E18C;
  v45 = v23;
  v46 = sub_23809E1A4;
  v47 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB540, &qword_238159C68);
  v26 = *(sub_238153DCC() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_238158810;
  v30 = v25;
  sub_238153DBC();
  sub_238153DAC();
  sub_23809E240(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = sub_23809B768();
  sub_23815449C();

  v42 = &type metadata for FieldPickerView;
  v43 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  v33 = v39;
  sub_2381544CC();
  (*(v40 + 8))(v16, v33);
  LOBYTE(v33) = sub_23815411C();
  v34 = sub_238153A4C();
  v35 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1F0, &qword_238159698) + 36);
  *v35 = v34;
  *(v35 + 8) = v33;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1B0, &qword_238159680);
  v37 = (v32 + *(result + 36));
  *v37 = sub_238098208;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = 0;
  return result;
}

void sub_238097F50(void *a1, uint64_t a2)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v4 = sub_23815293C();
  __swift_project_value_buffer(v4, qword_27DEEB128);
  v5 = sub_23815291C();
  v6 = sub_2381550FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238060000, v5, v6, "NameDrop field picker saved", v7, 2u);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  v8 = (a2 + *(type metadata accessor for NameDropView(0) + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  v12 = a1;
  sub_23811D394(v12);
}

uint64_t sub_2380980DC(uint64_t a1, uint64_t a2)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v3 = sub_23815293C();
  __swift_project_value_buffer(v3, qword_27DEEB128);
  v4 = sub_23815291C();
  v5 = sub_2381550FC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_238060000, v4, v5, "NameDrop field picker dismissed", v6, 2u);
    MEMORY[0x2383EA8A0](v6, -1, -1);
  }

  v7 = (a2 + *(type metadata accessor for NameDropView(0) + 20));
  v9 = *v7;
  v10 = *(v7 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_238098214@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v168 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A8, &qword_238159CD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v152 = &v148 - v5;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B0, &qword_238159CE0);
  v6 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v154 = &v148 - v7;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B8, &qword_238159CE8);
  v8 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v157 = &v148 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5C0, &qword_238159CF0);
  v165 = *(v10 - 8);
  v166 = v10;
  v11 = *(v165 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v156 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v155 = &v148 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB750, &qword_238159FB8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v167 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v180 = &v148 - v19;
  v20 = sub_23815468C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for NameDropView(0) + 24);
  v150 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v26 + 16);
  v30 = type metadata accessor for NameDropSessionController();
  v31 = sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  v161 = v28;
  v162 = v27;
  v160 = v29;
  v158 = v31;
  v159 = v30;
  sub_23815381C();
  sub_238111EF4();

  sub_23815466C();
  (*(v21 + 104))(v24, *MEMORY[0x277CE0FE0], v20);
  v179 = sub_2381546CC();

  (*(v21 + 8))(v24, v20);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v217[0]) = 1;
  *(v235 + 6) = *(&v235[3] + 6);
  *(&v235[1] + 6) = *(&v235[4] + 6);
  *(&v235[2] + 6) = *(&v235[5] + 6);
  *&v217[0] = sub_23807CB28(91);
  *(&v217[0] + 1) = v32;
  v172 = sub_2380704A0();
  v33 = sub_23815438C();
  v35 = v34;
  LOBYTE(v29) = v36;
  sub_23815416C();
  sub_2381541DC();
  sub_23815425C();

  v37 = sub_23815435C();
  v39 = v38;
  LOBYTE(v27) = v40;

  sub_238070490(v33, v35, v29 & 1);

  *&v217[0] = sub_2381545DC();
  v41 = sub_23815432C();
  v176 = v42;
  v177 = v41;
  v44 = v43;
  v178 = v45;
  sub_238070490(v37, v39, v27 & 1);

  KeyPath = swift_getKeyPath();
  v175 = sub_2381540FC();
  v173 = v44 & 1;
  LOBYTE(v217[0]) = v44 & 1;
  LOBYTE(v212) = 1;
  *&v217[0] = sub_23807CB28(92);
  *(&v217[0] + 1) = v46;
  v47 = sub_23815438C();
  v49 = v48;
  v51 = v50;
  sub_23815424C();
  v52 = sub_23815435C();
  v54 = v53;
  LOBYTE(v35) = v55;

  sub_238070490(v47, v49, v51 & 1);

  *&v217[0] = sub_2381545DC();
  v171 = sub_23815432C();
  v172 = v56;
  v164 = v57;
  v59 = v58;
  sub_238070490(v52, v54, v35 & 1);

  v170 = swift_getKeyPath();
  LOBYTE(v54) = sub_2381540EC();
  v60 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v54)
  {
    v60 = sub_23815413C();
  }

  v169 = v60;
  sub_23815377C();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v163 = v59 & 1;
  v231 = v59 & 1;
  v227 = 0;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v224 = v215[5];
  v225 = v215[6];
  v226 = v216;
  v220 = v215[1];
  v221 = v215[2];
  v222 = v215[3];
  v223 = v215[4];
  v217[0] = v212;
  v217[1] = v213;
  v218 = v214;
  v219 = v215[0];
  sub_23809B34C(v217);
  v69 = 1;
  v70 = v166;
  if ((BYTE8(v218) & 1) == 0)
  {
    v71 = v152;
    sub_23808F2F4(v152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_238158810;
    v73 = sub_23815412C();
    *(v72 + 32) = v73;
    v74 = sub_23815414C();
    *(v72 + 33) = v74;
    v75 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v73)
    {
      v75 = sub_23815413C();
    }

    sub_23815413C();
    v76 = sub_23815413C();
    v148 = v64;
    v149 = v62;
    if (v76 != v74)
    {
      v75 = sub_23815413C();
    }

    sub_23815377C();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v154;
    sub_23807121C(v71, v154, &qword_27DEEB5A8, &qword_238159CD8);
    v86 = v85 + *(v151 + 36);
    *v86 = v75;
    *(v86 + 8) = v78;
    *(v86 + 16) = v80;
    *(v86 + 24) = v82;
    *(v86 + 32) = v84;
    *(v86 + 40) = 0;
    v87 = sub_23815411C();
    v88 = objc_opt_self();
    v89 = [v88 mainScreen];
    [v89 bounds];
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;

    v236.origin.x = v91;
    v236.origin.y = v93;
    v236.size.width = v95;
    v236.size.height = v97;
    CGRectGetHeight(v236);
    sub_23815377C();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = v157;
    sub_23807121C(v85, v157, &qword_27DEEB5B0, &qword_238159CE0);
    v107 = v106 + *(v153 + 36);
    *v107 = v87;
    *(v107 + 8) = v99;
    *(v107 + 16) = v101;
    *(v107 + 24) = v103;
    *(v107 + 32) = v105;
    *(v107 + 40) = 0;
    v108 = sub_23815410C();
    v109 = [v88 mainScreen];
    [v109 bounds];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;

    v237.origin.x = v111;
    v237.origin.y = v113;
    v237.size.width = v115;
    v237.size.height = v117;
    CGRectGetHeight(v237);
    sub_23815377C();
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v126 = v156;
    sub_23807121C(v106, v156, &qword_27DEEB5B8, &qword_238159CE8);
    v127 = v126 + *(v70 + 36);
    *v127 = v108;
    *(v127 + 8) = v119;
    *(v127 + 16) = v121;
    *(v127 + 24) = v123;
    *(v127 + 32) = v125;
    *(v127 + 40) = 0;
    v128 = v155;
    sub_23807121C(v126, v155, &qword_27DEEB5C0, &qword_238159CF0);
    sub_23807121C(v128, v180, &qword_27DEEB5C0, &qword_238159CF0);
    v69 = 0;
    v64 = v148;
    v62 = v149;
  }

  v129 = v180;
  (*(v165 + 56))(v180, v69, 1, v70);
  v130 = v167;
  sub_2380712E4(v129, v167, &qword_27DEEB750, &qword_238159FB8);
  v131 = v168;
  *v168 = 0;
  *(v131 + 8) = 1;
  v181[0] = v179;
  v181[1] = 0;
  v182[0] = 1;
  v182[1] = 0;
  *&v182[2] = v235[0];
  *&v182[18] = v235[1];
  *&v182[34] = v235[2];
  *&v182[48] = *(&v235[2] + 14);
  v132 = v179;
  v133 = *v182;
  v134 = *&v182[16];
  v135 = *&v182[32];
  v131[10] = *(&v235[2] + 14);
  *(v131 + 3) = v134;
  *(v131 + 4) = v135;
  *(v131 + 1) = v132;
  *(v131 + 2) = v133;
  *&v183 = v177;
  *(&v183 + 1) = v176;
  LOBYTE(v184) = v173;
  DWORD1(v184) = *&v234[3];
  *(&v184 + 1) = *v234;
  *(&v184 + 1) = v178;
  *&v185 = KeyPath;
  BYTE8(v185) = 1;
  HIDWORD(v185) = *&v233[3];
  *(&v185 + 9) = *v233;
  LOBYTE(v186[0]) = v175;
  DWORD1(v186[0]) = *&v232[3];
  *(v186 + 1) = *v232;
  *(&v186[1] + 8) = 0u;
  *(v186 + 8) = 0u;
  BYTE8(v186[2]) = 1;
  v136 = v183;
  *(v131 + 13) = v184;
  *(v131 + 11) = v136;
  v137 = v185;
  v138 = v186[0];
  v139 = v186[1];
  *(v131 + 161) = *(&v186[1] + 9);
  *(v131 + 19) = v139;
  *(v131 + 17) = v138;
  *(v131 + 15) = v137;
  v140 = v164;
  *&v187 = v171;
  *(&v187 + 1) = v164;
  v141 = v163;
  LOBYTE(v188) = v163;
  DWORD1(v188) = *&v230[3];
  *(&v188 + 1) = *v230;
  *(&v188 + 1) = v172;
  *&v189 = v170;
  BYTE8(v189) = 1;
  HIDWORD(v189) = *&v229[3];
  *(&v189 + 9) = *v229;
  LOBYTE(v190) = v169;
  DWORD1(v190) = *&v228[3];
  *(&v190 + 1) = *v228;
  *(&v190 + 1) = v62;
  *&v191[0] = v64;
  *(&v191[0] + 1) = v66;
  *&v191[1] = v68;
  BYTE8(v191[1]) = 0;
  v142 = v187;
  *(v131 + 25) = v188;
  *(v131 + 23) = v142;
  v143 = v189;
  v144 = v190;
  v145 = v191[0];
  *(v131 + 257) = *(v191 + 9);
  *(v131 + 31) = v145;
  *(v131 + 29) = v144;
  *(v131 + 27) = v143;
  v131[35] = 0;
  *(v131 + 288) = 1;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB758, &unk_238159FC0);
  sub_2380712E4(v130, v131 + *(v146 + 112), &qword_27DEEB750, &qword_238159FB8);
  sub_2380712E4(v181, &v212, &qword_27DEEB760, &qword_23815F800);
  sub_2380712E4(&v183, &v212, &qword_27DEEB768, &qword_238159FD0);
  sub_2380712E4(&v187, &v212, &qword_27DEEB768, &qword_238159FD0);
  sub_238071284(v180, &qword_27DEEB750, &qword_238159FB8);
  sub_238071284(v130, &qword_27DEEB750, &qword_238159FB8);
  v192[0] = v171;
  v192[1] = v140;
  v193 = v141;
  *v194 = *v230;
  *&v194[3] = *&v230[3];
  v195 = v172;
  v196 = v170;
  v197 = 1;
  *v198 = *v229;
  *&v198[3] = *&v229[3];
  v199 = v169;
  *&v200[3] = *&v228[3];
  *v200 = *v228;
  v201 = v62;
  v202 = v64;
  v203 = v66;
  v204 = v68;
  v205 = 0;
  sub_238071284(v192, &qword_27DEEB768, &qword_238159FD0);
  *&v212 = v177;
  *(&v212 + 1) = v176;
  LOBYTE(v213) = v173;
  *(&v213 + 1) = *v234;
  DWORD1(v213) = *&v234[3];
  *(&v213 + 1) = v178;
  *&v214 = KeyPath;
  BYTE8(v214) = 1;
  *(&v214 + 9) = *v233;
  HIDWORD(v214) = *&v233[3];
  LOBYTE(v215[0]) = v175;
  *(v215 + 1) = *v232;
  DWORD1(v215[0]) = *&v232[3];
  *(v215 + 8) = 0u;
  *(&v215[1] + 8) = 0u;
  BYTE8(v215[2]) = 1;
  sub_238071284(&v212, &qword_27DEEB768, &qword_238159FD0);
  v206[0] = v179;
  v206[1] = 0;
  v207 = 1;
  v208 = 0;
  v209 = v235[0];
  v210 = v235[1];
  *v211 = v235[2];
  *&v211[14] = *(&v235[2] + 14);
  return sub_238071284(v206, &qword_27DEEB760, &qword_23815F800);
}

uint64_t sub_2380990CC(uint64_t a1)
{
  v2 = type metadata accessor for NameDropView(0);
  v35[0] = *(v2 - 8);
  v3 = *(v35[0] + 64);
  MEMORY[0x28223BE20](v2);
  v35[1] = v4;
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = v35 - v7;
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v8 = sub_23815293C();
  __swift_project_value_buffer(v8, qword_27DEEB128);
  v9 = sub_23815291C();
  v10 = sub_2381550FC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_238060000, v9, v10, "NameDrop view appearing", v11, 2u);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  v12 = sub_23815291C();
  v13 = sub_2381550FC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_238060000, v12, v13, "NameDrop displayed no Me Card View", v14, 2u);
    MEMORY[0x2383EA8A0](v14, -1, -1);
  }

  v15 = a1 + *(v2 + 24);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  v37 = v16;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v57 = v47;
  v58 = v48;
  v59 = v49;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v50[0] = v39;
  v50[1] = v40;
  v51 = v41;
  v52 = v42;
  sub_23809B34C(v50);
  v19 = MEMORY[0x277D85700];
  if (BYTE8(v51) == 1)
  {
    v20 = sub_238154FBC();
    v21 = v38;
    (*(*(v20 - 8) + 56))(v38, 1, 1, v20);
    v22 = v36;
    sub_23809BCF4(a1, v36);
    sub_238154F8C();
    v23 = sub_238154F7C();
    v24 = (*(v35[0] + 80) + 32) & ~*(v35[0] + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = MEMORY[0x277D85700];
    v26 = v25 + v24;
    v19 = MEMORY[0x277D85700];
    sub_23809BD60(v22, v26);
    sub_2381351C8(0, 0, v21, &unk_238159FB0, v25);
  }

  v27 = sub_23815381C();
  v28 = sub_238154FBC();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  sub_238154F8C();

  v30 = sub_238154F7C();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v19;
  v31[4] = v27;
  v32 = sub_2380D2A4C(0, 0, v29, &unk_238159FA0, v31);
  v33 = *(v27 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask);
  *(v27 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask) = v32;
}

uint64_t sub_2380995F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381554BC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_238154F8C();
  v4[6] = sub_238154F7C();
  v9 = sub_238154F3C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_2380996E4, v9, v8);
}

uint64_t sub_2380996E4()
{
  v1 = *(v0 + 40);
  sub_23815562C();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_2380997B0;
  v3 = *(v0 + 40);

  return sub_23814A898(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2380997B0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_23809F41C;
  }

  else
  {
    v10 = sub_238099948;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_238099948()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for NameDropView(0) + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  *(v0 + 88) = sub_23815381C();

  return MEMORY[0x2822009F8](sub_238099A28, 0, 0);
}

uint64_t sub_238099A28()
{
  v1 = v0[11];
  sub_238119CDC();

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_23809F418, v2, v3);
}

uint64_t sub_238099A94(uint64_t a1)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB128);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "NameDrop view disappearing", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = sub_23815291C();
  v7 = sub_2381550FC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238060000, v6, v7, "NameDrop no me card disappearing", v8, 2u);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  v9 = (a1 + *(type metadata accessor for NameDropView(0) + 24));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  sub_238111C60();
}

void sub_238099C7C(const char *a1)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB128);
  oslog = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, oslog, v3, a1, v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }
}

uint64_t sub_238099D70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB398, &qword_2381599F0);
  v3 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v5 = &v80 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3A0, &qword_2381599F8);
  v6 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v8 = &v80 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3A8, &qword_238159A00);
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v80 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3B0, &qword_238159A08);
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v13 = &v80 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3B8, &unk_238159A10);
  v14 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v16 = &v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF38, &qword_238159008);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3C0, &qword_238159A20);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v80 - v25;
  v27 = v2[3];
  if (v27 == 2)
  {
    *v8 = sub_238153D1C();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB510, &qword_238159B68);
    sub_23809A754(&v8[*(v48 + 44)]);
    v49 = sub_2381545AC();
    KeyPath = swift_getKeyPath();
    v51 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB4C0, &qword_238159B50) + 36)];
    *v51 = KeyPath;
    v51[1] = v49;
    v52 = v2[7];
    LOBYTE(v49) = sub_2381540FC();
    v53 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB4B0, &qword_238159B48) + 36)];
    *v53 = v49;
    *(v53 + 1) = v52;
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    *(v53 + 4) = 0;
    v53[40] = 0;
    v54 = swift_getKeyPath();
    v55 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB4A0, &qword_238159B40) + 36)];
    *v55 = v54;
    *(v55 + 1) = 1;
    v55[16] = 0;
    v56 = swift_getKeyPath();
    v57 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB490, &qword_238159B38) + 36)];
    *v57 = v56;
    v57[8] = 1;
    v58 = swift_getKeyPath();
    v59 = &v8[*(v82 + 36)];
    *v59 = v58;
    v59[1] = 0x3FE0000000000000;
    v60 = &qword_27DEEB3A0;
    v61 = &qword_2381599F8;
    sub_2380712E4(v8, v13, &qword_27DEEB3A0, &qword_2381599F8);
    swift_storeEnumTagMultiPayload();
    sub_23809D3E0();
    sub_23809D804();
    sub_238153ECC();
    sub_2380712E4(v16, v85, &qword_27DEEB3B8, &unk_238159A10);
    swift_storeEnumTagMultiPayload();
    sub_23809D354();
    sub_23809DB9C();
    sub_238153ECC();
    sub_238071284(v16, &qword_27DEEB3B8, &unk_238159A10);
    v62 = v8;
  }

  else
  {
    if (v27 == 1)
    {
      v28 = v24;
      v88 = sub_23807CB28(82);
      v89 = v29;
      sub_2380704A0();
      sub_23815389C();
      sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008);
      sub_238088600();
      sub_2381543BC();
      (*(v18 + 8))(v21, v17);
      v30 = v2[5];
      v31 = swift_getKeyPath();
      v32 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB000, &qword_238159078) + 36)];
      *v32 = v31;
      v32[1] = v30;
      v33 = swift_getKeyPath();
      v88 = v30;
      swift_retain_n();
      v34 = sub_2381538FC();
      v35 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB448, &unk_238159B00) + 36)];
      *v35 = v33;
      v35[1] = v34;
      sub_23815423C();
      sub_2381541FC();
      v36 = sub_23815425C();

      v37 = swift_getKeyPath();
      v38 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB438, &qword_238159AF8) + 36)];
      *v38 = v37;
      v38[1] = v36;
      v39 = v2[7];
      LOBYTE(v37) = sub_2381540FC();
      v40 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB428, &qword_238159AF0) + 36)];
      *v40 = v37;
      *(v40 + 1) = v39;
      *(v40 + 2) = 0;
      *(v40 + 3) = 0;
      *(v40 + 4) = 0;
      v40[40] = 0;
      v41 = swift_getKeyPath();
      v42 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB418, &qword_238159AE8) + 36)];
      *v42 = v41;
      *(v42 + 1) = 1;
      v42[16] = 0;
      v43 = swift_getKeyPath();
      v44 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB408, &qword_238159AE0) + 36)];
      *v44 = v43;
      v44[8] = 1;
      v45 = swift_getKeyPath();
      v46 = &v26[*(v28 + 36)];
      *v46 = v45;
      v46[1] = 0x3FE0000000000000;
      sub_2380712E4(v26, v13, &qword_27DEEB3C0, &qword_238159A20);
      swift_storeEnumTagMultiPayload();
      sub_23809D3E0();
      sub_23809D804();
      sub_238153ECC();
      sub_2380712E4(v16, v85, &qword_27DEEB3B8, &unk_238159A10);
      swift_storeEnumTagMultiPayload();
      sub_23809D354();
      sub_23809DB9C();
      sub_238153ECC();
      sub_238071284(v16, &qword_27DEEB3B8, &unk_238159A10);
      return sub_238071284(v26, &qword_27DEEB3C0, &qword_238159A20);
    }

    v63 = v2[4];
    v65 = v2[1];
    v66 = *v2;
    v67 = *v2;
    v82 = v2[2];
    v64 = v82;
    sub_23807BD3C(v67, v65, v82, v27);

    *v5 = sub_238153D1C();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3C8, &qword_238159A28);
    sub_23809AA0C(v63, v2, v66, v65, v64, v27, &v5[*(v68 + 44)]);
    v69 = v2[5];
    v70 = swift_getKeyPath();
    v71 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3D0, &qword_238159A60) + 36)];
    *v71 = v70;
    v71[1] = v69;
    v72 = v2[7];

    LOBYTE(v69) = sub_2381540FC();
    v73 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3D8, &qword_238159A68) + 36)];
    *v73 = v69;
    *(v73 + 1) = v72;
    *(v73 + 2) = 0;
    *(v73 + 3) = 0;
    *(v73 + 4) = 0;
    v73[40] = 0;
    v74 = swift_getKeyPath();
    v75 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3E0, &qword_238159A70) + 36)];
    *v75 = v74;
    *(v75 + 1) = 1;
    v75[16] = 0;
    v76 = swift_getKeyPath();
    v77 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3E8, &qword_238159AA8) + 36)];
    *v77 = v76;
    v77[8] = 1;
    v78 = swift_getKeyPath();
    v79 = &v5[*(v87 + 36)];
    *v79 = v78;
    v79[1] = 0x3FE0000000000000;
    v60 = &qword_27DEEB398;
    v61 = &qword_2381599F0;
    sub_2380712E4(v5, v85, &qword_27DEEB398, &qword_2381599F0);
    swift_storeEnumTagMultiPayload();
    sub_23809D354();
    sub_23809DB9C();
    sub_238153ECC();

    sub_23807BE0C(v66, v65, v82, v27);
    v62 = v5;
  }

  return sub_238071284(v62, v60, v61);
}

uint64_t sub_23809A754@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - v6);
  v8 = sub_23815467C();
  v9 = (v7 + *(v2 + 44));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v11 = *MEMORY[0x277CE1058];
  v12 = sub_2381546BC();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  v32 = sub_23807CB28(83);
  v33 = v13;
  sub_2380704A0();
  v14 = sub_23815438C();
  v16 = v15;
  LOBYTE(v9) = v17;
  sub_23815423C();
  sub_2381541FC();
  sub_23815425C();

  v18 = sub_23815435C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_238070490(v14, v16, v9 & 1);

  v25 = v30;
  sub_2380712E4(v7, v30, &qword_27DEEB030, &qword_2381590C0);
  v26 = v31;
  sub_2380712E4(v25, v31, &qword_27DEEB030, &qword_2381590C0);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB518, &qword_238159C00) + 48);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22 & 1;
  *(v27 + 24) = v24;
  sub_238070430(v18, v20, v22 & 1);

  sub_238071284(v7, &qword_27DEEB030, &qword_2381590C0);
  sub_238070490(v18, v20, v22 & 1);

  return sub_238071284(v25, &qword_27DEEB030, &qword_2381590C0);
}

uint64_t sub_23809AA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a5;
  *&v63 = a3;
  *&v64 = a4;
  v66 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v61 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB520, &qword_238159C08);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v65 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  if (a1)
  {
    v21 = (v14 + *(v10 + 36));
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
    v23 = a6;
    v24 = *MEMORY[0x277CE1058];
    v25 = sub_2381546BC();
    v26 = v24;
    a6 = v23;
    (*(*(v25 - 8) + 104))(v21 + v22, v26, v25);
    *v21 = swift_getKeyPath();
    *v14 = a1;
    sub_23809E114(v14, v20);
    (*(v11 + 56))(v20, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(&v61 - v19, 1, 1, v10);
  }

  if (*(a2 + 48))
  {

    *&v72 = sub_23807CB28(93);
    *(&v72 + 1) = v27;
    sub_2380704A0();
    v28 = sub_23815438C();
    v30 = v29;
    v32 = v31;
    sub_23815423C();
    sub_2381541FC();
    sub_23815425C();

    v33 = sub_23815435C();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_238070490(v28, v30, v32 & 1);

    v67 = v33;
    v68 = v35;
    v69 = v37 & 1;
    v70 = v39;
    v71 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB528, &qword_238159C10);
    sub_23809DFF8();
    sub_238153ECC();
  }

  else
  {

    if (a6)
    {
      v41 = v62;
      v40 = v63;
      v42 = v64;
      sub_23807BD3C(v63, v64, v62, a6);
      sub_23815423C();
      sub_2381541FC();
      sub_23815425C();

      v41 &= 1u;
      LOBYTE(v72) = v41;
      v43 = sub_23815435C();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      sub_238070490(v40, v42, v41);

      v50 = v47 & 1;
      sub_238070430(v43, v45, v47 & 1);
    }

    else
    {
      v49 = 0;
      v45 = v64;
      v50 = v62;
      v43 = v63;
    }

    v67 = v43;
    v68 = v45;
    v69 = v50;
    v70 = v49;
    v71 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB528, &qword_238159C10);
    sub_23809DFF8();
    sub_238153ECC();
    sub_23807BE0C(v43, v45, v50, v49);
  }

  v63 = v72;
  v64 = v73;
  v51 = v74;
  v52 = v65;
  sub_2380712E4(v20, v65, &qword_27DEEB520, &qword_238159C08);
  v53 = v66;
  sub_2380712E4(v52, v66, &qword_27DEEB520, &qword_238159C08);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB538, &qword_238159C18) + 48);
  v56 = v63;
  v55 = v64;
  *v54 = v63;
  *(v54 + 16) = v55;
  *(v54 + 32) = v51;
  v57 = v56;
  v58 = v55;
  v59 = *(&v55 + 1);
  sub_23809E074(v56, *(&v56 + 1), v55, *(&v55 + 1), v51);
  sub_238071284(v20, &qword_27DEEB520, &qword_238159C08);
  sub_23809E0C4(v57, *(&v57 + 1), v58, v59, v51);
  return sub_238071284(v52, &qword_27DEEB520, &qword_238159C08);
}

uint64_t sub_23809AF24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_238099D70(a1);
}

double sub_23809AF60@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *(a2 + 128) = v13;
  *(a2 + 144) = v14;
  *(a2 + 160) = v15;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *(a2 + 96) = v11;
  *(a2 + 112) = v12;
  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_23809B058(__int128 *a1, uint64_t *a2)
{
  v3 = a1[9];
  v27[8] = a1[8];
  v27[9] = v3;
  v28 = *(a1 + 20);
  v4 = a1[5];
  v27[4] = a1[4];
  v27[5] = v4;
  v5 = a1[7];
  v27[6] = a1[6];
  v27[7] = v5;
  v6 = a1[1];
  v27[0] = *a1;
  v27[1] = v6;
  v7 = a1[3];
  v27[2] = a1[2];
  v27[3] = v7;
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1[9];
  v24 = a1[8];
  v25 = v9;
  v26 = *(a1 + 20);
  v10 = a1[5];
  v20 = a1[4];
  v21 = v10;
  v11 = a1[7];
  v22 = a1[6];
  v23 = v11;
  v12 = a1[1];
  v16 = *a1;
  v17 = v12;
  v13 = a1[3];
  v18 = a1[2];
  v19 = v13;

  sub_23809F2E8(v27, v15);
  return sub_238152A9C();
}

uint64_t sub_23809B214()
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23809B2B4()
{
  v1 = *(sub_2381527EC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_23808F1EC(v0 + v2, v4, v5);
}

id sub_23809B3A0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_23809B3B0()
{
  result = qword_27DEEB1A8;
  if (!qword_27DEEB1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB170, &qword_238159608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB178, &qword_238159610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1B0, &qword_238159680);
    sub_23809B4A4();
    sub_23809B5E8();
    swift_getOpaqueTypeConformance2();
    sub_23809B7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB1A8);
  }

  return result;
}

unint64_t sub_23809B4A4()
{
  result = qword_27DEEB1B8;
  if (!qword_27DEEB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB178, &qword_238159610);
    sub_23809B530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB1B8);
  }

  return result;
}

unint64_t sub_23809B530()
{
  result = qword_27DEEB1C0;
  if (!qword_27DEEB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1C8, &qword_238159688);
    sub_2380711D4(&qword_27DEEB1D0, &qword_27DEEB1D8, &qword_238159690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB1C0);
  }

  return result;
}

unint64_t sub_23809B5E8()
{
  result = qword_27DEEB1E0;
  if (!qword_27DEEB1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1B0, &qword_238159680);
    sub_23809B674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB1E0);
  }

  return result;
}

unint64_t sub_23809B674()
{
  result = qword_27DEEB1E8;
  if (!qword_27DEEB1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1F0, &qword_238159698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1F8, &qword_2381596A0);
    sub_23809B768();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB1E8);
  }

  return result;
}

unint64_t sub_23809B768()
{
  result = qword_27DEEE2E0;
  if (!qword_27DEEE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEE2E0);
  }

  return result;
}

unint64_t sub_23809B7BC()
{
  result = qword_27DEEB200;
  if (!qword_27DEEB200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB158, &qword_2381595F0);
    sub_23809B848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB200);
  }

  return result;
}

unint64_t sub_23809B848()
{
  result = qword_27DEEB208;
  if (!qword_27DEEB208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB150, &qword_2381595E8);
    sub_23809B8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB208);
  }

  return result;
}

unint64_t sub_23809B8D4()
{
  result = qword_27DEEB210;
  if (!qword_27DEEB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB148, &qword_2381595E0);
    sub_23809B960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB210);
  }

  return result;
}

unint64_t sub_23809B960()
{
  result = qword_27DEEB218;
  if (!qword_27DEEB218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB140, &qword_2381595D8);
    sub_2380711D4(&qword_27DEEB220, &qword_27DEEB228, &qword_2381596A8);
    sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB218);
  }

  return result;
}

unint64_t sub_23809BA44()
{
  result = qword_27DEEB240;
  if (!qword_27DEEB240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1A0, &qword_238159678);
    sub_23809BAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB240);
  }

  return result;
}

unint64_t sub_23809BAD0()
{
  result = qword_27DEEB248;
  if (!qword_27DEEB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB250, &qword_2381596B8);
    sub_23809BB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB248);
  }

  return result;
}

unint64_t sub_23809BB5C()
{
  result = qword_27DEEB258;
  if (!qword_27DEEB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB260, &unk_2381596C0);
    sub_23809BC14();
    sub_2380711D4(&qword_27DEEB270, &qword_27DEEB278, &qword_23815E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB258);
  }

  return result;
}

unint64_t sub_23809BC14()
{
  result = qword_27DEEB268;
  if (!qword_27DEEB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB268);
  }

  return result;
}

unint64_t sub_23809BC68()
{
  result = qword_27DEEB280;
  if (!qword_27DEEB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB188, &qword_238159620);
    sub_23809B3B0();
    sub_23809BA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB280);
  }

  return result;
}

uint64_t sub_23809BCF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809BD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for NameDropView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_238153A2C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = v5 + v1[6];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  sub_23809BD58();
  v13 = (v5 + v1[7]);
  if (*v13)
  {
    v14 = v13[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_23809BF44(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_23809BF84()
{
  v1 = type metadata accessor for NameDropView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_238153A2C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = v5 + v1[6];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  sub_23809BD58();
  v13 = (v5 + v1[7]);
  if (*v13)
  {
    v14 = v13[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23809C0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NameDropView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_238097AA4(v4, v5, a1);
}

uint64_t sub_23809C150()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23809C1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23809C2AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_23809C374()
{
  sub_23809CC10(319, &qword_27DEEA358, MEMORY[0x277CDFAA0]);
  if (v0 <= 0x3F)
  {
    sub_23809CBC0(319, &qword_27DEEA350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_23809C468();
      if (v2 <= 0x3F)
      {
        sub_23809C4FC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23809C468()
{
  if (!qword_27DEEB2A8)
  {
    type metadata accessor for NameDropSessionController();
    sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
    v0 = sub_23815382C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB2A8);
    }
  }
}

void sub_23809C4FC()
{
  if (!qword_27DEEB2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEED750, &qword_238159750);
    v0 = sub_23815530C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB2B0);
    }
  }
}

unint64_t sub_23809C564()
{
  result = qword_27DEEB2B8;
  if (!qword_27DEEB2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB2C0, &qword_238159758);
    sub_238085CF4();
    sub_23809BC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB2B8);
  }

  return result;
}

uint64_t sub_23809C5F0(int *a1, unsigned int a2)
{
  v4 = *(sub_238153A0C() - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v4 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(v7 + 80) & 0xF8 | 7;
  v13 = v5 + v12 + 1;
  if (v9 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v13 + ((v10 + 32) & ~v11)) & ~v12) + 32;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v9 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v9 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v8 & 0x80000000) != 0)
  {
    v24 = *(v7 + 48);

    return v24((v13 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11)) & ~v12);
  }

  else
  {
    v23 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void sub_23809C81C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(sub_238153A0C() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760) - 8);
  v9 = *(v6 + 80);
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v9 & 0xF8 | 7;
  v13 = ((v9 & 0xF8) + 32) & ~v12;
  v14 = *(v8 + 80) & 0xF8 | 7;
  v15 = v7 + v14 + 1;
  v16 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = ((v15 + v13) & ~v14) + v16;
  if (v11 >= a3)
  {
    v20 = 0;
    v21 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = a3 - v11 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v10 & 0x80000000) != 0)
        {
          v25 = ((v15 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & ~v14);
          if (v10 >= a2)
          {
            v28 = *(v8 + 56);

            v28(v25, a2);
          }

          else if (v16)
          {
            v26 = ~v10 + a2;
            v27 = ((v15 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & ~v14);
            bzero(v25, v16);
            *v27 = v26;
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *a1 = v24;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v11 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_23809CAD0()
{
  sub_23809CBC0(319, &qword_27DEEB2E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23809CC10(319, &qword_27DEEA360, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_23809CC64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23809CBC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23809CC10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815380C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23809CC64()
{
  if (!qword_27DEEB2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB2C8, &unk_238159760);
    v0 = sub_238153A3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB2E8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI17NameDropViewModelV11HeaderStateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23809CD18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23809CD60(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_23809CDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView.fieldSummaryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809CE5C()
{
  v1 = type metadata accessor for NameDropView.fieldSummaryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153A0C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v1 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23809CFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView.fieldSummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809D038@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for NameDropView.fieldSummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238093AC4(a1, v6, a2);
}

uint64_t sub_23809D0B8@<X0>(uint64_t a1@<X8>)
{
  result = sub_238153CAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23809D0EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_238153CAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23809D120(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_238153CBC();
}

uint64_t sub_23809D150(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_238153CBC();
}

uint64_t sub_23809D188@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = sub_23815469C();
  *a1 = result;
  return result;
}

uint64_t sub_23809D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23809D2F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153B7C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_23809D354()
{
  result = qword_27DEEB3F0;
  if (!qword_27DEEB3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3B8, &unk_238159A10);
    sub_23809D3E0();
    sub_23809D804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB3F0);
  }

  return result;
}

unint64_t sub_23809D3E0()
{
  result = qword_27DEEB3F8;
  if (!qword_27DEEB3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3C0, &qword_238159A20);
    sub_23809D498();
    sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB3F8);
  }

  return result;
}

unint64_t sub_23809D498()
{
  result = qword_27DEEB400;
  if (!qword_27DEEB400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB408, &qword_238159AE0);
    sub_23809D550();
    sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB400);
  }

  return result;
}

unint64_t sub_23809D550()
{
  result = qword_27DEEB410;
  if (!qword_27DEEB410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB418, &qword_238159AE8);
    sub_23809D608();
    sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB410);
  }

  return result;
}

unint64_t sub_23809D608()
{
  result = qword_27DEEB420;
  if (!qword_27DEEB420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB428, &qword_238159AF0);
    sub_23809D694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB420);
  }

  return result;
}

unint64_t sub_23809D694()
{
  result = qword_27DEEB430;
  if (!qword_27DEEB430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB438, &qword_238159AF8);
    sub_23809D74C();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB430);
  }

  return result;
}

unint64_t sub_23809D74C()
{
  result = qword_27DEEB440;
  if (!qword_27DEEB440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB448, &unk_238159B00);
    sub_2380884C4();
    sub_2380711D4(&qword_27DEEB450, &qword_27DEEB458, &unk_238159B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB440);
  }

  return result;
}

unint64_t sub_23809D804()
{
  result = qword_27DEEB480;
  if (!qword_27DEEB480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3A0, &qword_2381599F8);
    sub_23809D8BC();
    sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB480);
  }

  return result;
}

unint64_t sub_23809D8BC()
{
  result = qword_27DEEB488;
  if (!qword_27DEEB488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB490, &qword_238159B38);
    sub_23809D974();
    sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB488);
  }

  return result;
}

unint64_t sub_23809D974()
{
  result = qword_27DEEB498;
  if (!qword_27DEEB498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB4A0, &qword_238159B40);
    sub_23809DA2C();
    sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB498);
  }

  return result;
}

unint64_t sub_23809DA2C()
{
  result = qword_27DEEB4A8;
  if (!qword_27DEEB4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB4B0, &qword_238159B48);
    sub_23809DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB4A8);
  }

  return result;
}

unint64_t sub_23809DAB8()
{
  result = qword_27DEEB4B8;
  if (!qword_27DEEB4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB4C0, &qword_238159B50);
    sub_2380711D4(&qword_27DEEB4C8, &qword_27DEEB4D0, &qword_238159B58);
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB4B8);
  }

  return result;
}

unint64_t sub_23809DB9C()
{
  result = qword_27DEEB4D8;
  if (!qword_27DEEB4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB398, &qword_2381599F0);
    sub_23809DC54();
    sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB4D8);
  }

  return result;
}

unint64_t sub_23809DC54()
{
  result = qword_27DEEB4E0;
  if (!qword_27DEEB4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3E8, &qword_238159AA8);
    sub_23809DD0C();
    sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB4E0);
  }

  return result;
}

unint64_t sub_23809DD0C()
{
  result = qword_27DEEB4E8;
  if (!qword_27DEEB4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3E0, &qword_238159A70);
    sub_23809DDC4();
    sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB4E8);
  }

  return result;
}

unint64_t sub_23809DDC4()
{
  result = qword_27DEEB4F0;
  if (!qword_27DEEB4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3D8, &qword_238159A68);
    sub_23809DE50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB4F0);
  }

  return result;
}

unint64_t sub_23809DE50()
{
  result = qword_27DEEB4F8;
  if (!qword_27DEEB4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3D0, &qword_238159A60);
    sub_2380711D4(&qword_27DEEB500, &qword_27DEEB508, &qword_238159B60);
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB4F8);
  }

  return result;
}

uint64_t sub_23809DF34@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2383E82A0]();
  *a1 = result;
  return result;
}

uint64_t sub_23809DF60(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x2383E82B0](v2);
}

unint64_t sub_23809DFF8()
{
  result = qword_27DEEB530;
  if (!qword_27DEEB530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB528, &qword_238159C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB530);
  }

  return result;
}

uint64_t sub_23809E074(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_23807BD3C(a1, a2, a3, a4);
  }

  else
  {
    sub_238070430(a1, a2, a3 & 1);
  }
}

uint64_t sub_23809E0C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_23807BE0C(a1, a2, a3, a4);
  }

  else
  {
    sub_238070490(a1, a2, a3 & 1);
  }
}

uint64_t sub_23809E114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809E1BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NameDropView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23809E240(uint64_t a1)
{
  v2 = sub_238153DCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB548, &unk_238159C70);
    v10 = sub_2381553FC();
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
      sub_23809E560(&qword_27DEEB550, MEMORY[0x277CDDE90]);
      v18 = sub_238154C3C();
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
          sub_23809E560(&qword_27DEEB558, MEMORY[0x277CDDE90]);
          v25 = sub_238154C7C();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23809E560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23809E5A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_238114840(a1, v4, v5, v6);
}

uint64_t sub_23809E65C(uint64_t a1)
{
  v4 = *(type metadata accessor for NameDropView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_2380973C0(a1, v6, v7, v1 + v5);
}

uint64_t sub_23809E74C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 3)
  {
    return sub_23809E75C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_23809E75C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 - 1) >= 2)
  {
    sub_23807BD3C(result, a2, a3, a4);
  }

  return result;
}

double sub_23809E7A4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_23809E8BC()
{
  v1 = type metadata accessor for NameDropView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_23809E938(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23809E9A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NameDropView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23809EA18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v6[0] = *(v1 + 24);
  v6[1] = v3;
  v7 = v4;
  return sub_238091D98(v2, v6, a1);
}

unint64_t sub_23809EA58()
{
  result = qword_27DEEB698;
  if (!qword_27DEEB698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB690, &qword_238159E98);
    sub_23809EB10();
    sub_2380711D4(&qword_27DEEB710, &qword_27DEEB718, &qword_238159EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB698);
  }

  return result;
}

unint64_t sub_23809EB10()
{
  result = qword_27DEEB6A0;
  if (!qword_27DEEB6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6A8, &qword_238159EA0);
    sub_23809EB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB6A0);
  }

  return result;
}

unint64_t sub_23809EB9C()
{
  result = qword_27DEEB6B0;
  if (!qword_27DEEB6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6B8, &qword_238159EA8);
    sub_23809EC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB6B0);
  }

  return result;
}

unint64_t sub_23809EC28()
{
  result = qword_27DEEB6C0;
  if (!qword_27DEEB6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6C8, &qword_238159EB0);
    sub_23809ECB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB6C0);
  }

  return result;
}

unint64_t sub_23809ECB4()
{
  result = qword_27DEEB6D0;
  if (!qword_27DEEB6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6D8, &qword_238159EB8);
    sub_23809ED6C();
    sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB6D0);
  }

  return result;
}

unint64_t sub_23809ED6C()
{
  result = qword_27DEEB6E0;
  if (!qword_27DEEB6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6E8, &qword_238159EC0);
    sub_23809EE24();
    sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB6E0);
  }

  return result;
}

unint64_t sub_23809EE24()
{
  result = qword_27DEEB6F0;
  if (!qword_27DEEB6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6F8, &qword_238159EC8);
    sub_23809EEDC();
    sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB6F0);
  }

  return result;
}

unint64_t sub_23809EEDC()
{
  result = qword_27DEEB700;
  if (!qword_27DEEB700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB708, &unk_238159ED0);
    sub_238087878();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB700);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23809EFE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238087150;

  return sub_238114840(a1, v4, v5, v6);
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for NameDropView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A2C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v1[5] + 8);

  v10 = v6 + v1[6];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_23809BD58();
  v14 = (v6 + v1[7]);
  if (*v14)
  {
    v15 = v14[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23809F1F8(uint64_t a1)
{
  v4 = *(type metadata accessor for NameDropView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_2380995F0(a1, v6, v7, v1 + v5);
}

unint64_t sub_23809F38C()
{
  result = qword_27DEEB780;
  if (!qword_27DEEB780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB788, &unk_238159FE0);
    sub_23809D354();
    sub_23809DB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB780);
  }

  return result;
}

uint64_t sub_23809F458(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_238152EBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_238071284(a1, &qword_27DEEBA10, &qword_23815D910);
    sub_2380F1B10(a2);
    v14 = sub_2381527EC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_238071284(v8, &qword_27DEEBA10, &qword_23815D910);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2380C755C(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2381527EC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_23809F684(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for _DDNodeDecoration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_238071284(a1, &qword_27DEEBA48, &qword_23815BF00);
    sub_2380F1B0C(a2);
    sub_2380AF04C(a2, type metadata accessor for DecorationIdentifier);
    return sub_238071284(v8, &qword_27DEEBA48, &qword_23815BF00);
  }

  else
  {
    sub_2380AF410(a1, v12, type metadata accessor for _DDNodeDecoration);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_2380C7798(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_2380AF04C(a2, type metadata accessor for DecorationIdentifier);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_23809F86C(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  if (a1 == 107)
  {
    v6 = sub_2380E6AE8(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2380E9A3C();
        v11 = v22;
      }

      v12 = *(v11 + 48);
      v13 = sub_2381527EC();
      v14 = *(v13 - 8);
      v15 = *(v14 + 8);
      v15(v12 + *(v14 + 72) * v8, v13);
      sub_2380E87A4(v8, v11);
      result = (v15)(a2, v13);
      *v3 = v11;
    }

    else
    {
      v20 = sub_2381527EC();
      v21 = *(*(v20 - 8) + 8);

      return v21(a2, v20);
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_2380C7958(a1, a2, v18);
    v19 = sub_2381527EC();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_23809FA28(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA8, &unk_23815A800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_23815364C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_238071284(a1, &qword_27DEEBBA8, &unk_23815A800);
    sub_2380E7EBC(a2, v8);
    v14 = sub_2381527EC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_238071284(v8, &qword_27DEEBBA8, &unk_23815A800);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2380C7AF4(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2381527EC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_23809FC54()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEB790);
  __swift_project_value_buffer(v0, qword_27DEEB790);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_23809FCB0()
{
  v1 = v0;
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v1, v10, type metadata accessor for TransferIDStatus);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v3 + 8))(v6, v2);
  }

  return sub_2381556BC();
}

uint64_t sub_23809FEC4()
{
  v1 = v0;
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v1, v10, type metadata accessor for TransferIDStatus);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v3 + 8))(v6, v2);
  }

  v12 = *(type metadata accessor for DecorationIdentifier(0) + 20);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  sub_238154C4C();
  return sub_2381556BC();
}

uint64_t sub_2380A0140(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380AF0AC(v2, v12, type metadata accessor for TransferIDStatus);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    return MEMORY[0x2383E9CD0](0);
  }

  (*(v5 + 32))(v9, v12, v4);
  MEMORY[0x2383E9CD0](1);
  sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
  sub_238154C4C();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2380A0334(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_2381536AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v4, v13, type metadata accessor for TransferIDStatus);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v6 + 8))(v10, v5);
  }

  return sub_2381556BC();
}

uint64_t sub_2380A0554(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_2381536AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransferIDStatus(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380AF0AC(v4, v13, type metadata accessor for TransferIDStatus);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v6 + 8))(v9, v5);
  }

  v15 = *(a2 + 20);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  return sub_238154C4C();
}

uint64_t sub_2380A07B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_2381536AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransferIDStatus(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v4, v13, type metadata accessor for TransferIDStatus);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v6 + 8))(v9, v5);
  }

  v15 = *(a2 + 20);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  sub_238154C4C();
  return sub_2381556BC();
}

uint64_t sub_2380A0B00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_2380A0B94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_2380A0C14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();
}

uint64_t sub_2380A0C84()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate;
  if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for DevicePickerViewDropDelegate();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_238159FF0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 32) = 0;
    *(v2 + 56) = 1;
    *(v2 + 64) = sub_2380AC0A0;
    *(v2 + 72) = v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2380A0D48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_238152A9C();
  }

  return result;
}

uint64_t sub_2380A0DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v136 = a3;
  v137 = a4;
  v125 = a2;
  v133 = a1;
  v139 = sub_238152E1C();
  v117 = *(v139 - 8);
  v6 = *(v117 + 64);
  MEMORY[0x28223BE20](v139);
  v132 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F8, &unk_23815A5E0);
  v130 = *(v8 - 8);
  v131 = v8;
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v8);
  v129 = &v106 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v11 = *(*(v128 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v128);
  v127 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v106 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F0, &unk_23815EA80);
  v123 = *(v15 - 8);
  v124 = v15;
  v16 = *(v123 + 64);
  MEMORY[0x28223BE20](v15);
  v122 = &v106 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v18 = *(*(v121 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v121);
  v120 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v119 = &v106 - v21;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E8, &unk_23815A5D0);
  v116 = *(v118 - 8);
  v22 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v24 = &v106 - v23;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v138 = *(v135 - 1);
  v25 = *(v138 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v106 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D8, &unk_23815A5C0);
  v114 = *(v115 - 1);
  v27 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v106 - v28;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D0, &qword_23815A5B8);
  v111 = *(v112 - 8);
  v29 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v106 - v30;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9C8, &qword_23815A5B0);
  v108 = *(v109 - 8);
  v31 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v106 - v32;
  v33 = sub_23815513C();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v35 = sub_238154A2C();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = sub_23815516C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
  (*(v38 + 104))(v41, *MEMORY[0x277D85268], v37);
  sub_238154A0C();
  v140 = MEMORY[0x277D84F90];
  sub_2380ABF30(&unk_27DEECFA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBA60, &qword_23815A710);
  sub_2380711D4(&unk_27DEECFB0, &unk_27DEEBA60, &qword_23815A710);
  sub_23815537C();
  *(v4 + 16) = sub_23815519C();
  v42 = MEMORY[0x277D84F90];
  v140 = MEMORY[0x277D84F90];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA70, &qword_23815A718);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *(v4 + 24) = sub_238152A3C();
  sub_23815277C();
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser) = 0;
  v46 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__decorations;
  v140 = sub_2380EE5CC(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB870, &qword_23815A068);
  v47 = v107;
  sub_238152A5C();
  (*(v108 + 32))(v5 + v46, v47, v109);
  v48 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__hints;
  v140 = sub_2380EE7E4(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB880, &qword_23815A070);
  v49 = v110;
  sub_238152A5C();
  (*(v111 + 32))(v5 + v48, v49, v112);
  v50 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__endpoints;
  v140 = v42;
  v51 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB890, &qword_23815A078);
  v52 = v113;
  sub_238152A5C();
  (*(v114 + 32))(v5 + v50, v52, v115);
  v53 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__shouldPauseUpdate;
  LOBYTE(v140) = 0;
  v54 = v134;
  sub_238152A5C();
  v55 = *(v138 + 32);
  v138 += 32;
  v115 = v55;
  v55(v5 + v53, v54, v135);
  v56 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodes;
  v140 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_238152A5C();
  v57 = *(v116 + 32);
  v58 = v118;
  v57(v5 + v56, v24, v118);
  v59 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfSameAccount;
  v140 = v51;
  sub_238152A5C();
  v57(v5 + v59, v24, v58);
  v60 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPeople;
  v140 = v51;
  sub_238152A5C();
  v57(v5 + v60, v24, v58);
  v61 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfOthers;
  v140 = v51;
  sub_238152A5C();
  v57(v5 + v61, v24, v58);
  v62 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfUnpaired;
  v140 = v51;
  sub_238152A5C();
  v57(v5 + v62, v24, v58);
  v63 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPaired;
  v140 = v51;
  sub_238152A5C();
  v57(v5 + v63, v24, v58);
  v64 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfAll;
  v140 = v51;
  sub_238152A5C();
  v65 = v5 + v64;
  v66 = v133;
  v67 = v24;
  v68 = v125;
  v57(v65, v67, v58);
  v69 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__boopEndpoint;
  v70 = sub_238152BAC();
  v71 = v119;
  (*(*(v70 - 8) + 56))(v119, 1, 1, v70);
  sub_2380712E4(v71, v120, &unk_27DEED890, &qword_2381593F0);
  v72 = v122;
  sub_238152A5C();
  sub_238071284(v71, &unk_27DEED890, &qword_2381593F0);
  (*(v123 + 32))(v5 + v69, v72, v124);
  v73 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__isPreviewVisible;
  LOBYTE(v140) = 1;
  v74 = v134;
  sub_238152A5C();
  v115(v5 + v73, v74, v135);
  v75 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__scrollTarget;
  v76 = sub_2381527EC();
  v77 = v126;
  (*(*(v76 - 8) + 56))(v126, 1, 1, v76);
  sub_2380712E4(v77, v127, &qword_27DEEC9F0, &qword_23815A090);
  v78 = v129;
  sub_238152A5C();
  sub_238071284(v77, &qword_27DEEC9F0, &qword_23815A090);
  (*(v130 + 32))(v5 + v75, v78, v131);
  v79 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserResults;
  *(v5 + v79) = sub_2380EE9CC(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate) = 0;
  v80 = v117;
  v81 = *(v117 + 16);
  v81(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor, v66, v139);
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_parameters) = v68;
  v82 = v137;
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_contactInfoCache) = v136;
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airDropMetadataCache) = v82;
  v83 = *MEMORY[0x277CDC040];

  v84 = DDUINearFieldIdentity();
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_identity) = v84;
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) = sub_2380ADF54(v66);
  sub_2380A1E28();
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v85 = sub_23815293C();
  __swift_project_value_buffer(v85, qword_27DEEB790);
  v86 = v132;
  v81(v132, v66, v139);

  v87 = sub_23815291C();
  v88 = sub_2381550BC();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v140 = v138;
    *v89 = 136315394;
    v90 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v91 = sub_238154CCC();
    v92 = v86;
    v94 = v93;

    v135 = *(v80 + 8);
    v95 = v92;
    v96 = v139;
    v135(v95, v139);
    v97 = sub_238085EAC(v91, v94, &v140);

    *(v89 + 4) = v97;
    *(v89 + 12) = 2080;
    v99 = MEMORY[0x2383E72D0](v98);
    v101 = sub_238085EAC(v99, v100, &v140);

    *(v89 + 14) = v101;
    _os_log_impl(&dword_238060000, v87, v88, "Created BrowserViewModel with descriptor: %s and parameters: %s", v89, 0x16u);
    v102 = v138;
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v102, -1, -1);
    MEMORY[0x2383EA8A0](v89, -1, -1);

    v135(v133, v96);
  }

  else
  {

    v103 = *(v80 + 8);
    v104 = v139;
    v103(v66, v139);
    v103(v86, v104);
  }

  return v5;
}

uint64_t sub_2380A1E28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA78, &qword_23815A720);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v75 = v53 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA80, &qword_23815A728);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = v53 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA88, &qword_23815A730);
  v7 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v65 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA90, &qword_23815A738);
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = v53 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA98, &qword_23815A740);
  v13 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v56 = v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAA0, &qword_23815A748);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v53 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAA8, &qword_23815A750);
  v20 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v53[1] = v53 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAB0, &qword_23815A758);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v53 - v25;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAB8, &qword_23815A760);
  v27 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v53[0] = v53 - v28;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAC0, &qword_23815A768);
  v64 = *(v61 - 8);
  v29 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v54 = v53 - v30;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAC8, &qword_23815A770);
  v69 = *(v67 - 8);
  v31 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v57 = v53 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAD0, &qword_23815A778);
  v34 = *(v33 - 8);
  v72 = v33;
  v73 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v62 = v53 - v36;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D8, &unk_23815A5C0);
  sub_238152A6C();
  swift_endAccess();
  sub_2380711D4(&qword_27DEEBAD8, &qword_27DEEBAB0, &qword_23815A758);
  sub_2380AF134();
  sub_238152AEC();
  (*(v23 + 8))(v26, v22);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9C8, &qword_23815A5B0);
  sub_238152A6C();
  swift_endAccess();
  sub_2380711D4(&qword_27DEEBAF0, &qword_27DEEBAA0, &qword_23815A748);
  sub_2380AF1E8();
  sub_238152AEC();
  (*(v16 + 8))(v19, v15);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D0, &qword_23815A5B8);
  v37 = v55;
  sub_238152A6C();
  swift_endAccess();
  sub_2380711D4(&qword_27DEEBB08, &qword_27DEEBA90, &qword_23815A738);
  sub_2380AF29C();
  v38 = v59;
  sub_238152AEC();
  (*(v60 + 8))(v37, v38);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v39 = v66;
  sub_238152A6C();
  swift_endAccess();
  sub_2380711D4(&qword_27DEEBB20, &qword_27DEEBA80, &qword_23815A728);
  v40 = v70;
  sub_238152AEC();
  (*(v71 + 8))(v39, v40);
  sub_2380711D4(&qword_27DEEBB28, &qword_27DEEBAB8, &qword_23815A760);
  sub_2380711D4(&qword_27DEEBB30, &qword_27DEEBAA8, &qword_23815A750);
  sub_2380711D4(&qword_27DEEBB38, &qword_27DEEBA98, &qword_23815A740);
  sub_2380711D4(&qword_27DEEBB40, &qword_27DEEBA88, &qword_23815A730);
  v41 = v54;
  sub_23815299C();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_2380AF320;
  *(v43 + 24) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_2380711D4(&qword_27DEEBB48, &qword_27DEEBAC0, &qword_23815A768);
  v44 = v57;
  v45 = v61;
  sub_238152ABC();

  (*(v64 + 8))(v41, v45);
  sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
  v46 = sub_23815517C();
  v76 = v46;
  v47 = sub_23815515C();
  v48 = v75;
  (*(*(v47 - 8) + 56))(v75, 1, 1, v47);
  sub_2380711D4(&qword_27DEEBB50, &qword_27DEEBAC8, &qword_23815A770);
  sub_2380AF3A0();
  v49 = v62;
  v50 = v67;
  sub_238152ADC();
  sub_238071284(v48, &qword_27DEEBA78, &qword_23815A720);

  (*(v69 + 8))(v44, v50);
  swift_allocObject();
  swift_weakInit();
  sub_2380711D4(&qword_27DEEBB60, &qword_27DEEBAD0, &qword_23815A778);
  v51 = v72;
  sub_238152AFC();

  (*(v73 + 8))(v49, v51);
  swift_beginAccess();
  sub_2381529AC();
  swift_endAccess();
}

void *sub_2380A2A30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v76 = a2;
  v77 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v67 - v8;
  v75 = type metadata accessor for _DDNodeViewModel();
  v71 = *(v75 - 8);
  v9 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v75);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v67 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v14 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v15 = *(v78 + 16);

  if (v15 && (a4 & 1) != 0)
  {
    if (qword_27DEEA058 != -1)
    {
      swift_once();
    }

    v16 = sub_23815293C();
    __swift_project_value_buffer(v16, qword_27DEEB790);
    v17 = sub_23815291C();
    v18 = sub_2381550FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_238060000, v17, v18, "Browser update Paused", v19, 2u);
      MEMORY[0x2383EA8A0](v19, -1, -1);
    }

    return 0;
  }

  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v22 = sub_23815293C();
  v69 = __swift_project_value_buffer(v22, qword_27DEEB790);
  v23 = sub_23815291C();
  v24 = sub_2381550FC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_238060000, v23, v24, "Browser will update", v25, 2u);
    MEMORY[0x2383EA8A0](v25, -1, -1);
  }

  v26 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v68 = v14;
    v80 = MEMORY[0x277D84F90];
    sub_2380FDAF8(0, v26, 0);
    v27 = v80;
    v28 = *(sub_238152BAC() - 8);
    v29 = *(v28 + 80);
    v67 = a1;
    v30 = a1 + ((v29 + 32) & ~v29);
    v73 = 0x8000000238161B90;
    v31 = *(v28 + 72);
    v32 = v26;
    while (1)
    {
      v78 = 91;
      v79 = 0xE100000000000000;
      v33 = sub_238152B0C();
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v33 = 0x206E776F6E6B6E55;
        v35 = 0xEC000000656D614ELL;
      }

      MEMORY[0x2383E9410](v33, v35);

      MEMORY[0x2383E9410](2108704, 0xE300000000000000);
      v36 = sub_2381310F8(v30);
      if (v37)
      {
        v38 = v36;
        v39 = v37;
        if ((v36 != 63 || v37 != 0xE100000000000000) && (sub_2381555CC() & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v38 = 0x206E776F6E6B6E55;
      v39 = 0xED00006C65646F4DLL;
LABEL_26:
      MEMORY[0x2383E9410](v38, v39);

      MEMORY[0x2383E9410](2108704, 0xE300000000000000);
      v40 = sub_238131110(v30);
      if (v41)
      {
        v42 = v41;
      }

      else
      {
        v40 = 0xD000000000000012;
        v42 = v73;
      }

      MEMORY[0x2383E9410](v40, v42);

      MEMORY[0x2383E9410](23840, 0xE200000000000000);
      v43 = v78;
      v44 = v79;
      v80 = v27;
      v46 = *(v27 + 16);
      v45 = *(v27 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_2380FDAF8((v45 > 1), v46 + 1, 1);
        v27 = v80;
      }

      *(v27 + 16) = v46 + 1;
      v47 = v27 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      v30 += v31;
      if (!--v32)
      {
        a1 = v67;
        v14 = v68;
        break;
      }
    }
  }

  v48 = sub_23815291C();
  v49 = sub_2381550CC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v78 = v51;
    *v50 = 134218242;
    *(v50 + 4) = v26;

    *(v50 + 12) = 2080;
    v80 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
    sub_2380711D4(&qword_27DEEBB78, &qword_27DEEBB70, &qword_238159970);
    v52 = sub_238154C6C();
    v54 = sub_238085EAC(v52, v53, &v78);

    *(v50 + 14) = v54;
    _os_log_impl(&dword_238060000, v48, v49, "Creating NodeViewModels for %ld endpoints: %s", v50, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x2383EA8A0](v51, -1, -1);
    MEMORY[0x2383EA8A0](v50, -1, -1);

    v55 = v72;
    if (v26)
    {
      goto LABEL_35;
    }
  }

  else
  {

    v55 = v72;
    if (v26)
    {
LABEL_35:
      v56 = *(sub_238152BAC() - 8);
      v57 = a1;
      v58 = (v71 + 48);
      v59 = v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v60 = *(v56 + 72);
      v20 = MEMORY[0x277D84F90];
      do
      {
        sub_2380A3368(v59, v14, v76, v77, v55);
        if ((*v58)(v55, 1, v75) == 1)
        {
          sub_238071284(v55, &qword_27DEEBB68, &unk_23815A780);
        }

        else
        {
          v61 = v70;
          sub_2380AF410(v55, v70, type metadata accessor for _DDNodeViewModel);
          sub_2380AF410(v61, v74, type metadata accessor for _DDNodeViewModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2380BB664(0, v20[2] + 1, 1, v20);
          }

          v63 = v20[2];
          v62 = v20[3];
          if (v63 >= v62 >> 1)
          {
            v20 = sub_2380BB664(v62 > 1, v63 + 1, 1, v20);
          }

          v20[2] = v63 + 1;
          sub_2380AF410(v74, v20 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v63, type metadata accessor for _DDNodeViewModel);
          v55 = v72;
        }

        v59 += v60;
        --v26;
      }

      while (v26);
      goto LABEL_46;
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_46:

  v64 = sub_23815291C();
  v65 = sub_2381550FC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v20[2];

    _os_log_impl(&dword_238060000, v64, v65, "Created %ld", v66, 0xCu);
    MEMORY[0x2383EA8A0](v66, -1, -1);
  }

  else
  {
  }

  return v20;
}

uint64_t sub_2380A3368@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1, uint64_t a2)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v152 = a2;
  v139 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v142 = &v125 - v11;
  v12 = sub_2381527EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v127 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v129 = &v125 - v18;
  MEMORY[0x28223BE20](v17);
  v126 = &v125 - v19;
  v140 = type metadata accessor for _DDNodeViewModel();
  v147 = *(v140 - 8);
  v20 = *(v147 + 64);
  MEMORY[0x28223BE20](v140);
  v130 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB80, &qword_23815A790);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v137 = &v125 - v24;
  v149 = sub_23815278C();
  v143 = *(v149 - 8);
  v25 = v143[8];
  v26 = MEMORY[0x28223BE20](v149);
  v145 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v144 = &v125 - v28;
  v29 = sub_238152BAC();
  v146 = *(v29 - 8);
  v30 = *(v146 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v128 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v136 = &v125 - v34;
  MEMORY[0x28223BE20](v33);
  v150 = &v125 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v151 = &v125 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB88, &qword_23815A798);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v125 - v44;
  v155 = a1;
  v46 = sub_2380AC7D0(sub_2380AF478, v154, a3);
  v153 = a1;
  sub_2380D1F78(sub_2380AF480, a4, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBB90, &unk_23815A7A0);
  v48 = (*(*(v47 - 8) + 48))(v45, 1, v47);
  v132 = v12;
  v133 = v13;
  if (v48 == 1)
  {
    sub_238071284(v45, &qword_27DEEBB88, &qword_23815A798);
    v131 = 107;
  }

  else
  {
    v131 = v45[*(v47 + 48)];
    (*(v13 + 8))(v45, v12);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v50 = *&v156[0];
  MEMORY[0x28223BE20](v49);
  *(&v125 - 2) = a1;
  sub_2380D222C(sub_2380AF4A0, v50, v151);
  v138 = v5;

  v51 = *(v146 + 16);
  v51(v150, a1, v29);
  v52 = *(v46 + 16);
  v148 = v29;
  if (v52)
  {
    v53 = sub_2380782EC(v52, 0);
    v54 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
    v55 = sub_2380790B8(v156, v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v52, v46);
    sub_23807A314();
    v56 = v55 == v52;
    v57 = v147;
    if (!v56)
    {
      __break(1u);
      goto LABEL_29;
    }

    v135 = v53;
  }

  else
  {

    v135 = MEMORY[0x277D84F90];
    v57 = v147;
  }

  v141 = v51;
  v58 = v143;
  v59 = v143[2];
  v60 = v149;
  v59(v144, v152 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airdropOpenedAt, v149);
  sub_2380712E4(v151, v40, &qword_27DEEBB68, &unk_23815A780);
  v61 = *(v57 + 48);
  v57 = v140;
  if (v61(v40, 1, v140) == 1)
  {
    sub_238071284(v40, &qword_27DEEBB68, &unk_23815A780);
    v62 = v137;
    (v58[7])(v137, 1, 1, v60);
    sub_23815277C();
    v63 = (v58[6])(v62, 1, v60);
    v64 = v142;
    if (v63 != 1)
    {
      sub_238071284(v62, &qword_27DEEBB80, &qword_23815A790);
    }
  }

  else
  {
    v65 = v137;
    v59(v137, &v40[*(v57 + 32)], v60);
    sub_2380AF04C(v40, type metadata accessor for _DDNodeViewModel);
    (v58[7])(v65, 0, 1, v60);
    (v58[4])(v145, v65, v60);
    v64 = v142;
  }

  v66 = *(v152 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_contactInfoCache);
  v67 = *(v152 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airDropMetadataCache);
  v68 = v136;
  v46 = v150;
  v141(v136, v150, v148);
  v134 = v66;

  v137 = v67;

  sub_2380B2660(v68, v156);
  v69 = v157;
  if (v157 == 255)
  {

    if (qword_27DEEA060 == -1)
    {
LABEL_20:
      v89 = sub_23815293C();
      __swift_project_value_buffer(v89, qword_27DEEBBB0);
      v90 = v128;
      v91 = v148;
      v141(v128, v46, v148);
      v92 = v46;
      v93 = sub_23815291C();
      v94 = sub_2381550DC();
      v95 = os_log_type_enabled(v93, v94);
      v96 = v149;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v98 = v90;
        v99 = swift_slowAlloc();
        *&v158 = v99;
        *v97 = 136315138;
        v100 = sub_238152B3C();
        v101 = v91;
        v103 = v102;
        v104 = *(v146 + 8);
        v104(v98, v101);
        v105 = sub_238085EAC(v100, v103, &v158);

        *(v97 + 4) = v105;
        _os_log_impl(&dword_238060000, v93, v94, "Endpoint is missing kind. Skipping {endpoint: %s}", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x2383EA8A0](v99, -1, -1);
        v106 = v97;
        v57 = v140;
        MEMORY[0x2383EA8A0](v106, -1, -1);

        v107 = v143[1];
        v108 = v149;
        v107(v145, v149);
        v107(v144, v108);
        v104(v150, v148);
      }

      else
      {

        v114 = *(v146 + 8);
        v114(v90, v91);
        v115 = v143[1];
        v115(v145, v96);
        v115(v144, v96);
        v114(v92, v91);
      }

      sub_238071284(v151, &qword_27DEEBB68, &unk_23815A780);
      v116 = 1;
      v117 = v139;
      return (*(v147 + 56))(v117, v116, 1, v57);
    }

LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  v158 = v156[0];
  v159 = v156[1];
  sub_238130414(v64);
  v70 = v142;
  v71 = v133;
  v72 = v132;
  if ((*(v133 + 48))(v142, 1, v132) == 1)
  {
    sub_238071284(v70, &qword_27DEEC9F0, &qword_23815A090);
    v73 = v129;
    sub_2381527DC();
    v74 = *(v71 + 16);
    v75 = v130;
    v74(v130, v73, v72);
    if (qword_27DEEA060 != -1)
    {
      swift_once();
    }

    v76 = sub_23815293C();
    __swift_project_value_buffer(v76, qword_27DEEBBB0);
    v77 = v127;
    v74(v127, v73, v72);
    v78 = sub_23815291C();
    v79 = sub_2381550DC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v160 = v81;
      *v80 = 136315138;
      LODWORD(v141) = v79;
      v82 = sub_23815279C();
      v84 = v83;
      v142 = *(v133 + 8);
      v85 = v77;
      v86 = v132;
      (v142)(v85, v132);
      v87 = sub_238085EAC(v82, v84, &v160);

      *(v80 + 4) = v87;
      _os_log_impl(&dword_238060000, v78, v141, "Created UUID for endpoint: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x2383EA8A0](v81, -1, -1);
      v88 = v80;
      v57 = v140;
      MEMORY[0x2383EA8A0](v88, -1, -1);

      (v142)(v129, v86);
    }

    else
    {

      v118 = *(v133 + 8);
      v118(v77, v72);
      v118(v73, v72);
    }

    sub_238071284(v151, &qword_27DEEBB68, &unk_23815A780);
    v113 = v149;
    v46 = v150;
    v58 = v143;
  }

  else
  {
    sub_238071284(v151, &qword_27DEEBB68, &unk_23815A780);
    v109 = *(v71 + 32);
    v110 = v69;
    v111 = v126;
    v109(v126, v70, v72);
    v75 = v130;
    v112 = v111;
    v69 = v110;
    v109(v130, v112, v72);
    v113 = v149;
  }

  v119 = v75 + *(v57 + 20);
  v120 = v159;
  *v119 = v158;
  *(v119 + 16) = v120;
  *(v119 + 32) = v69;
  *(v75 + *(v57 + 24)) = v135;
  v121 = v58[4];
  v121(v75 + *(v57 + 28), v144, v113);
  v121(v75 + *(v57 + 32), v145, v113);
  *(v75 + *(v57 + 44)) = v134;
  *(v75 + *(v57 + 48)) = v137;
  v122 = (v75 + *(v57 + 52));
  v123 = v152;
  *v122 = sub_2380AF4C0;
  v122[1] = v123;
  (*(v146 + 32))(v75 + *(v57 + 36), v46, v148);
  *(v75 + *(v57 + 40)) = v131;
  v117 = v139;
  sub_2380AF410(v75, v139, type metadata accessor for _DDNodeViewModel);
  v116 = 0;
  return (*(v147 + 56))(v117, v116, 1, v57);
}

uint64_t sub_2380A43F4()
{
  v0 = sub_2381527EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for DecorationIdentifier(0) + 20);
  sub_238152B7C();
  v6 = sub_2381527AC();
  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t sub_2380A44E4()
{
  v0 = sub_2381527EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152B7C();
  v5 = sub_2381527AC();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_2380A45D0(uint64_t a1)
{
  v2 = sub_2381527EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v28 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  (*(v3 + 16))(&v27 - v18, a1, v2);
  (*(v3 + 56))(v19, 0, 1, v2);
  sub_238130414(v17);
  v20 = *(v7 + 56);
  sub_2380712E4(v19, v10, &qword_27DEEC9F0, &qword_23815A090);
  sub_2380712E4(v17, &v10[v20], &qword_27DEEC9F0, &qword_23815A090);
  v21 = *(v3 + 48);
  if (v21(v10, 1, v2) != 1)
  {
    sub_2380712E4(v10, v28, &qword_27DEEC9F0, &qword_23815A090);
    if (v21(&v10[v20], 1, v2) != 1)
    {
      v23 = &v10[v20];
      v24 = v27;
      (*(v3 + 32))(v27, v23, v2);
      sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0]);
      v22 = sub_238154C7C();
      v25 = *(v3 + 8);
      v25(v24, v2);
      sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
      sub_238071284(v19, &qword_27DEEC9F0, &qword_23815A090);
      v25(v28, v2);
      sub_238071284(v10, &qword_27DEEC9F0, &qword_23815A090);
      return v22 & 1;
    }

    sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v19, &qword_27DEEC9F0, &qword_23815A090);
    (*(v3 + 8))(v28, v2);
    goto LABEL_6;
  }

  sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v19, &qword_27DEEC9F0, &qword_23815A090);
  if (v21(&v10[v20], 1, v2) != 1)
  {
LABEL_6:
    sub_238071284(v10, &qword_27DEEBA28, &qword_23815A668);
    v22 = 0;
    return v22 & 1;
  }

  sub_238071284(v10, &qword_27DEEC9F0, &qword_23815A090);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_2380A4A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecorationIdentifier(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19[-v11];
  v13 = sub_2381536AC();
  (*(*(v13 - 8) + 16))(v8, a2, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = *(v5 + 28);
  v16 = sub_2381527EC();
  (*(*(v16 - 8) + 16))(&v8[v15], a1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = sub_238152A7C();
  sub_2380F1B0C(v8);
  sub_2380AF04C(v8, type metadata accessor for DecorationIdentifier);
  sub_238071284(v12, &qword_27DEEBA48, &qword_23815BF00);
  v17(v19, 0);
}

uint64_t sub_2380A4C7C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - v7;
  v8 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _DDNodeDecoration(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _DDNodeViewModel();
  v18 = *(v17 - 8);
  v56 = v17;
  v57 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v50 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v51 = &v48 - v26;
  v27 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = v21;
    v49 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    v58[0] = v27;

    sub_238152A9C();
    sub_2380AE5C0(v27, v58);
    v30 = v58[0];
    v29 = v58[1];
    v31 = v58[2];
    v53 = v58[3];
    v54 = v58[4];
    swift_getKeyPath();
    v55 = v27;
    swift_getKeyPath();
    v58[0] = v30;

    sub_238152A9C();
    swift_getKeyPath();
    swift_getKeyPath();
    v58[0] = v29;

    sub_238152A9C();
    swift_getKeyPath();
    swift_getKeyPath();
    v58[0] = v31;

    sub_238152A9C();
    swift_getKeyPath();
    swift_getKeyPath();
    v58[0] = v53;

    sub_238152A9C();

    swift_getKeyPath();
    swift_getKeyPath();
    v58[0] = v54;

    v32 = v55;
    result = sub_238152A9C();
    v53 = *(v32 + 16);
    if (v53)
    {
      v33 = 0;
      v54 = v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v34 = v48;
      while (v33 < *(v32 + 16))
      {
        result = sub_2380AF0AC(v54 + *(v57 + 72) * v33, v34, type metadata accessor for _DDNodeViewModel);
        v35 = *(v34 + *(v56 + 24));
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = 0;
          while (v37 < *(v35 + 16))
          {
            sub_2380AF0AC(v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v37, v16, type metadata accessor for _DDNodeDecoration);
            sub_2380AF0AC(v16, v11, type metadata accessor for _DDNodeDecoration.Kind);
            sub_2380AF04C(v16, type metadata accessor for _DDNodeDecoration);
            result = swift_getEnumCaseMultiPayload();
            if (result > 3)
            {
              if ((result - 5) >= 3)
              {
                v41 = type metadata accessor for _DDNodeDecoration.Kind;
LABEL_17:
                sub_2380AF04C(v11, v41);
                v40 = v51;
                sub_2380AF410(v34, v51, type metadata accessor for _DDNodeViewModel);
                v38 = 0;
                v39 = v52;
                goto LABEL_18;
              }
            }

            else
            {
              if (result >= 3)
              {
                v41 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
                goto LABEL_17;
              }

              result = sub_2380AF04C(v11, type metadata accessor for _DDNodeDecoration.Kind);
            }

            if (v36 == ++v37)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
        ++v33;
        result = sub_2380AF04C(v34, type metadata accessor for _DDNodeViewModel);
        v32 = v55;
        if (v33 == v53)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
      v38 = 1;
      v40 = v51;
      v39 = v52;
LABEL_18:
      v42 = v50;
      v43 = v56;
      v44 = v57;
      (*(v57 + 56))(v40, v38, 1, v56);
      sub_2380712E4(v40, v42, &qword_27DEEBB68, &unk_23815A780);
      if ((*(v44 + 48))(v42, 1, v43) == 1)
      {
        sub_238071284(v42, &qword_27DEEBB68, &unk_23815A780);
        v45 = sub_2381527EC();
        (*(*(v45 - 8) + 56))(v39, 1, 1, v45);
      }

      else
      {
        v46 = sub_2381527EC();
        v47 = *(v46 - 8);
        (*(v47 + 16))(v39, v42, v46);
        sub_2380AF04C(v42, type metadata accessor for _DDNodeViewModel);
        (*(v47 + 56))(v39, 0, 1, v46);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2380712E4(v39, v49, &qword_27DEEC9F0, &qword_23815A090);
      sub_238152A9C();
      sub_238071284(v39, &qword_27DEEC9F0, &qword_23815A090);
      return sub_238071284(v40, &qword_27DEEBB68, &unk_23815A780);
    }
  }

  return result;
}

void sub_2380A54D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v66 - v4;
  v6 = sub_23815313C();
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238152DEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = sub_238152E1C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser;
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser))
  {
    if (qword_27DEEA058 != -1)
    {
      swift_once();
    }

    v25 = sub_23815293C();
    __swift_project_value_buffer(v25, qword_27DEEB790);
    v77 = sub_23815291C();
    v26 = sub_2381550FC();
    if (os_log_type_enabled(v77, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_238060000, v77, v26, "Attempting to start browser that is already active", v27, 2u);
      MEMORY[0x2383EA8A0](v27, -1, -1);
    }

    v28 = v77;
  }

  else
  {
    v76 = v21;
    v77 = v20;
    v72 = v17;
    v73 = v15;
    v74 = v11;
    v68 = v9;
    v69 = v6;
    v67 = v5;
    if (qword_27DEEA058 != -1)
    {
      swift_once();
    }

    v29 = sub_23815293C();
    __swift_project_value_buffer(v29, qword_27DEEB790);
    v30 = sub_23815291C();
    v31 = sub_2381550FC();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v10;
    v34 = v73;
    v35 = v1;
    if (v32)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_238060000, v30, v31, "Starting browser", v36, 2u);
      MEMORY[0x2383EA8A0](v36, -1, -1);
    }

    v37 = *(v76 + 16);
    v70 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor;
    v71 = v37;
    v37(v23, v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor, v77);
    v38 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_parameters);
    v39 = sub_238152EDC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();

    v42 = sub_238152E5C();
    v43 = *(v1 + v24);
    *(v1 + v24) = v42;

    v44 = *(v1 + v24);
    v45 = v74;
    v46 = v72;
    if (v44)
    {
      swift_allocObject();
      swift_weakInit();

      sub_238152E4C();

      if (*(v35 + v24))
      {
        v47 = *(v35 + 16);
        v48 = *(v35 + v24);

        sub_238152E7C();
      }
    }

    v49 = v77;
    v71(v23, v35 + v70, v77);
    sub_238152D6C();
    (*(v76 + 8))(v23, v49);
    nw_browse_descriptor_get_browse_scope();
    swift_unknownObjectRelease();
    sub_238152DDC();
    sub_238152D8C();
    sub_2380ABF30(&qword_27DEEBA08, MEMORY[0x277CD90C8]);
    v50 = sub_23815535C();
    v51 = *(v45 + 8);
    v51(v34, v33);
    v51(v46, v33);
    if ((v50 & 1) != 0 && *(v35 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) != 2)
    {
      v52 = *(v35 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_identity);
      v53 = type metadata accessor for BoopBrowser();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      v56 = swift_allocObject();
      *(v56 + 3) = 0;
      swift_unknownObjectWeakInit();
      *(v56 + 6) = 0;
      v57 = OBJC_IVAR____TtC17DeviceDiscoveryUI11BoopBrowser_currentNearbySharingInteraction;
      v58 = sub_2381534EC();
      (*(*(v58 - 8) + 56))(&v56[v57], 1, 1, v58);
      *(v56 + 4) = v52;
      sub_2381531EC();
      (*(v75 + 104))(v68, *MEMORY[0x277D54980], v69);
      swift_unknownObjectRetain();
      *(v56 + 5) = sub_23815314C();
      v59 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser;
      v60 = *(v35 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser);
      *(v35 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser) = v56;

      v61 = *(v35 + v59);
      if (v61)
      {
        *(v61 + 24) = &off_284AEFDF0;
        swift_unknownObjectWeakAssign();
        v62 = *(v35 + v59);
        if (v62)
        {
          v63 = sub_238154FBC();
          v64 = v67;
          (*(*(v63 - 8) + 56))(v67, 1, 1, v63);
          v65 = swift_allocObject();
          v65[2] = 0;
          v65[3] = 0;
          v65[4] = v62;

          sub_2380D2A4C(0, 0, v64, &unk_23815A640, v65);
        }
      }
    }
  }
}

uint64_t sub_2380A5C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_238154FBC();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_238154F8C();

    v11 = sub_238154F7C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    v12[5] = a1;
    v12[6] = a2;
    sub_2380D2A4C(0, 0, v7, &unk_23815A650, v12);
  }

  return result;
}

uint64_t sub_2380A5DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_238154F8C();
  v6[5] = sub_238154F7C();
  v8 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380A5E68, v8, v7);
}

uint64_t sub_2380A5E68()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_2380A5EE0(v3, v2);
  v5 = v0[1];

  return v5();
}

void sub_2380A5EE0(unint64_t a1, uint64_t a2)
{
  v395 = a2;
  v403[3] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v343 = &v328 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v328 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v349 = &v328 - v13;
  MEMORY[0x28223BE20](v12);
  v340 = &v328 - v14;
  v360 = sub_2381527EC();
  v371 = *(v360 - 8);
  v15 = *(v371 + 64);
  v16 = MEMORY[0x28223BE20](v360);
  v337 = &v328 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v338 = &v328 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v342 = &v328 - v21;
  MEMORY[0x28223BE20](v20);
  v341 = &v328 - v22;
  v376 = sub_238152BAC();
  v382 = *(v376 - 8);
  v23 = *(v382 + 64);
  v24 = MEMORY[0x28223BE20](v376);
  v346 = &v328 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v357 = &v328 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v336 = &v328 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v348 = &v328 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v339 = &v328 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v351 = &v328 - v35;
  MEMORY[0x28223BE20](v34);
  v355 = &v328 - v36;
  v377 = sub_238152EBC();
  v380 = *(v377 - 8);
  v37 = *(v380 + 64);
  v38 = MEMORY[0x28223BE20](v377);
  v345 = &v328 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v373 = &v328 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v328 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v364 = (&v328 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v350 = &v328 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v367 = &v328 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v358 = &v328 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v352 = &v328 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v361 = &v328 - v56;
  MEMORY[0x28223BE20](v55);
  v365 = &v328 - v57;
  v58 = sub_238152E9C();
  v399 = *(v58 - 8);
  v400 = v58;
  v59 = v399[8];
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v328 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60);
  v383 = &v328 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v385 = (&v328 - v66);
  v67 = MEMORY[0x28223BE20](v65);
  v384 = (&v328 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v381 = (&v328 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v386 = &v328 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v388 = (&v328 - v74);
  v75 = MEMORY[0x28223BE20](v73);
  v387 = (&v328 - v76);
  v77 = MEMORY[0x28223BE20](v75);
  v79 = (&v328 - v78);
  v80 = MEMORY[0x28223BE20](v77);
  v389 = &v328 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v397 = &v328 - v83;
  MEMORY[0x28223BE20](v82);
  v85 = &v328 - v84;
  swift_getKeyPath();
  swift_getKeyPath();
  v372 = v2;
  sub_238152A8C();

  v379 = v403[0];
  v402 = v403[0];
  if (qword_27DEEA058 != -1)
  {
    goto LABEL_153;
  }

  while (1)
  {
    v86 = sub_23815293C();
    v87 = __swift_project_value_buffer(v86, qword_27DEEB790);

    v378 = v87;
    v88 = sub_23815291C();
    v89 = sub_2381550FC();

    v90 = os_log_type_enabled(v88, v89);
    v347 = v11;
    v356 = v44;
    v394 = v62;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v403[0] = v92;
      *v91 = 136315138;
      sub_2380ABF30(&qword_27DEEBA20, MEMORY[0x277CD9168]);
      v93 = sub_23815501C();
      v95 = sub_238085EAC(v93, v94, v403);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_238060000, v88, v89, "Got New Results: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x2383EA8A0](v92, -1, -1);
      MEMORY[0x2383EA8A0](v91, -1, -1);
    }

    v96 = sub_23815291C();
    v97 = sub_2381550FC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v403[0] = v99;
      *v98 = 136315138;

      v101 = MEMORY[0x2383E9520](v100, v376);
      v103 = v102;

      v104 = sub_238085EAC(v101, v103, v403);

      *(v98 + 4) = v104;
      _os_log_impl(&dword_238060000, v96, v97, "discovered devices changed:%s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x2383EA8A0](v99, -1, -1);
      MEMORY[0x2383EA8A0](v98, -1, -1);
    }

    v62 = v394;
    v105 = v395;
    v106 = *(v395 + 32);
    v107 = v106 & 0x3F;
    v44 = ((1 << v106) + 63) >> 6;
    v108 = 8 * v44;

    v110 = MEMORY[0x277CD9138];
    *&v391 = v79;
    v368 = a1;
    if (v107 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }
    }

    v370 = v44;
    v369 = &v328;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v374 = &v328 - ((v108 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v374, v108);
    v375 = 0;
    v44 = 0;
    v111 = v105 + 56;
    v112 = 1 << *(v105 + 32);
    v113 = -1;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    v114 = v113 & *(v105 + 56);
    v11 = (v112 + 63) >> 6;
    v396 = (v399 + 2);
    v393 = v399 + 11;
    v392 = *v110;
    v390 = v399 + 1;
    v366 = (v399 + 12);
    v363 = (v380 + 8);
    v115 = v85;
    while (v114)
    {
      v116 = __clz(__rbit64(v114));
      v398 = (v114 - 1) & v114;
LABEL_17:
      v120 = v399;
      v119 = v400;
      a1 = v116 | (v44 << 6);
      v121 = *(v105 + 48) + v399[9] * a1;
      v122 = v399[2];
      v122(v115, v121, v400);
      v123 = v397;
      v122(v397, v115, v119);
      v124 = (v120[11])(v123, v119);
      if (v124 == v392)
      {
        v85 = v400;
        (*v366)(v123, v400);
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA18, &qword_23815A660);
        v362 = *(v126 + 48);
        v127 = *(v126 + 64);
        v128 = sub_238152E8C();
        (*(*(v128 - 8) + 8))(&v123[v127], v128);
        v129 = *v363;
        v130 = v377;
        (*v363)(v362 + v123, v377);
        v129(v123, v130);
        (*v390)(v115, v85);
        *&v374[(a1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a1;
        v131 = __OFADD__(v375++, 1);
        v62 = v394;
        v105 = v395;
        v79 = v391;
        v114 = v398;
        if (v131)
        {
          __break(1u);
LABEL_22:
          v132 = sub_2380AD5DC(v374, v370, v375, v105);
          v369 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v125 = *v390;
        v85 = v400;
        (*v390)(v123, v400);
        v125(v115, v85);
        v62 = v394;
        v105 = v395;
        v79 = v391;
        v114 = v398;
      }
    }

    v117 = v44;
    while (1)
    {
      v44 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        break;
      }

      if (v44 >= v11)
      {
        goto LABEL_22;
      }

      v118 = *(v111 + 8 * v44);
      ++v117;
      if (v118)
      {
        v116 = __clz(__rbit64(v118));
        v398 = (v118 - 1) & v118;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    swift_once();
  }

  v320 = swift_slowAlloc();
  v321 = sub_2380ACC48(v320, v44, v105, sub_2380A9CBC, 0, sub_2380AD37C);
  v369 = 0;
  v105 = v395;
  MEMORY[0x2383EA8A0](v320, -1, -1);
  v132 = v321;
  v392 = *v110;
LABEL_23:
  v134 = 0;
  a1 = (v132 + 7);
  v135 = 1 << *(v132 + 32);
  v136 = -1;
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  v137 = v136 & v132[7];
  v354 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserResults;
  v138 = (v135 + 63) >> 6;
  v393 = v399 + 4;
  v397 = (v399 + 11);
  v398 = (v399 + 2);
  v396 = (v399 + 1);
  v363 = (v399 + 12);
  v362 = (v380 + 32);
  v366 = (v380 + 16);
  v374 = (v380 + 8);
  v370 = (v382 + 8);
  v375 = v382 + 40;
  v359 = (v371 + 48);
  v353 = (v371 + 32);
  v335 = (v371 + 16);
  v380 += 56;
  v371 += 8;
  *&v133 = 136315394;
  v344 = v133;
  v390 = v132;
  while (v137)
  {
    v44 = v62;
    v139 = v79;
    v11 = v134;
LABEL_32:
    v140 = __clz(__rbit64(v137));
    v137 &= v137 - 1;
    v141 = v399;
    v85 = v400;
    v142 = v389;
    (v399[2])(v389, v132[6] + v399[9] * (v140 | (v11 << 6)), v400);
    v143 = v142;
    v79 = v139;
    (v141[4])(v139, v143, v85);
    v144 = (v141[11])(v139, v85);
    if (v144 == v392)
    {
      (*v363)(v139, v400);
      v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA18, &qword_23815A660);
      v145 = *(v334 + 48);
      v146 = *v362;
      v147 = v365;
      v148 = v139;
      v149 = v377;
      (*v362)(v365, v148, v377);
      v150 = (v79 + v145);
      v151 = v361;
      v146(v361, v150, v149);
      v152 = *v366;
      v153 = v352;
      (*v366)(v352, v147, v149);
      v331 = v152;
      (v152)(v358, v151, v149);
      v154 = sub_23815291C();
      LODWORD(v333) = sub_2381550FC();
      if (os_log_type_enabled(v154, v333))
      {
        v155 = swift_slowAlloc();
        v332 = v155;
        v330 = swift_slowAlloc();
        v403[0] = v330;
        *v155 = v344;
        v156 = v153;
        v157 = v355;
        v329 = v154;
        sub_238152EAC();
        v158 = sub_238152B3C();
        v160 = v159;
        v328 = *v370;
        v328(v157, v376);
        v161 = *v374;
        (*v374)(v156, v149);
        v162 = sub_238085EAC(v158, v160, v403);
        v163 = v358;
        v164 = v162;

        v165 = v332;
        *(v332 + 1) = v164;
        *(v165 + 6) = 2080;
        sub_238152EAC();
        v166 = sub_238152B3C();
        v168 = v167;
        v328(v157, v376);
        v169 = v163;
        v85 = v161;
        v161(v169, v149);
        v170 = sub_238085EAC(v166, v168, v403);

        v171 = v332;
        *(v332 + 14) = v170;
        v172 = v329;
        _os_log_impl(&dword_238060000, v329, v333, "Changing: %s -> %s", v171, 0x16u);
        v173 = v330;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v173, -1, -1);
        MEMORY[0x2383EA8A0](v171, -1, -1);
      }

      else
      {

        v85 = *v374;
        (*v374)(v358, v149);
        v174 = (v85)(v153, v149);
      }

      MEMORY[0x28223BE20](v174);
      *(&v328 - 2) = v365;
      v175 = v379;

      v176 = v369;
      v333 = sub_2380A9EAC(sub_2380AF01C, (&v328 - 4), v175);
      v178 = v177;
      v369 = v176;

      v62 = v394;
      v79 = v391;
      if (v178)
      {
        v179 = v361;
        v44 = v377;
        v180 = v377;
      }

      else
      {
        sub_238152EAC();
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v379 = sub_23811D2A4(v379);
        }

        if ((v333 & 0x8000000000000000) != 0)
        {
          goto LABEL_163;
        }

        v332 = v85;
        v181 = v379;
        if (v333 >= *(v379 + 2))
        {
          goto LABEL_164;
        }

        v182 = v382;
        (*(v382 + 40))(&v379[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v333], v351, v376);
        v402 = v181;
        swift_endAccess();
        v183 = v339;
        sub_238152EAC();
        v184 = v340;
        sub_238130414(v340);
        (*(v182 + 8))(v183, v376);
        v185 = v360;
        if ((*v359)(v184, 1, v360) == 1)
        {
          v44 = v377;
          v85 = v332;
          (v332)(v361, v377);
          sub_238071284(v184, &qword_27DEEC9F0, &qword_23815A090);
          goto LABEL_47;
        }

        v186 = v341;
        (*v353)(v341, v184, v185);
        (*v335)(v342, v186, v185);
        v187 = v343;
        v44 = v377;
        (v331)(v343, v361, v377);
        (*v380)(v187, 0, 1, v44);
        swift_beginAccess();
        sub_23809F458(v187, v342);
        swift_endAccess();
        (*v371)(v341, v360);
        v179 = v361;
        v180 = v44;
        v85 = v332;
      }

      (v85)(v179, v180);
LABEL_47:
      v188 = *(v334 + 64);
      (v85)(v365, v44);
      v189 = sub_238152E8C();
      (*(*(v189 - 8) + 8))(v79 + v188, v189);
      v134 = v11;
      v105 = v395;
      v132 = v390;
    }

    else
    {
      (*v396)(v139, v400);
      v134 = v11;
      v62 = v44;
      v132 = v390;
    }
  }

  while (1)
  {
    v11 = v134 + 1;
    if (__OFADD__(v134, 1))
    {
      goto LABEL_148;
    }

    if (v11 >= v138)
    {
      break;
    }

    v137 = *(a1 + 8 * v11);
    ++v134;
    if (v137)
    {
      v44 = v62;
      v139 = v79;
      goto LABEL_32;
    }
  }

  v190 = *(v105 + 32);
  v191 = v190 & 0x3F;
  v11 = ((1 << v190) + 63) >> 6;
  v192 = 8 * v11;

  v85 = MEMORY[0x277CD9140];
  if (v191 <= 0xD || (v193 = swift_stdlib_isStackAllocationSafe(), (v193 & 1) != 0))
  {
    v380 = v11;
    v375 = &v328;
    MEMORY[0x28223BE20](v193);
    v389 = &v328 - ((v192 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v389, v192);
    v390 = 0;
    v194 = v105;
    v195 = 0;
    v197 = *(v194 + 56);
    a1 = v194 + 56;
    v196 = v197;
    v198 = 1 << *(a1 - 24);
    v199 = -1;
    if (v198 < 64)
    {
      v199 = ~(-1 << v198);
    }

    v200 = v199 & v196;
    v201 = (v198 + 63) >> 6;
    v392 = *v85;
    while (v200)
    {
      v202 = __clz(__rbit64(v200));
      *&v391 = (v200 - 1) & v200;
LABEL_59:
      v85 = v399;
      v11 = v400;
      v44 = v202 | (v195 << 6);
      v205 = v399[2];
      v79 = v387;
      v205(v387, *(v395 + 48) + v399[9] * v44, v400);
      v206 = v388;
      v205(v388, v79, v11);
      LODWORD(v205) = (*(v85 + 88))(v206, v11);
      v207 = *(v85 + 8);
      v207(v206, v11);
      v207(v79, v11);
      v62 = v394;
      v200 = v391;
      if (v205 == v392)
      {
        *&v389[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
        v131 = __OFADD__(v390, 1);
        v390 = (v390 + 1);
        if (v131)
        {
          __break(1u);
LABEL_63:
          v44 = sub_2380AD5DC(v389, v380, v390, v395);
          goto LABEL_64;
        }
      }
    }

    v203 = v195;
    v79 = v381;
    while (1)
    {
      v195 = v203 + 1;
      if (__OFADD__(v203, 1))
      {
        goto LABEL_149;
      }

      if (v195 >= v201)
      {
        goto LABEL_63;
      }

      v204 = *(a1 + 8 * v195);
      ++v203;
      if (v204)
      {
        v202 = __clz(__rbit64(v204));
        *&v391 = (v204 - 1) & v204;
        goto LABEL_59;
      }
    }
  }

  v322 = swift_slowAlloc();
  v323 = v105;
  v324 = v369;
  v44 = sub_2380ACC48(v322, v11, v323, sub_2380A9F98, 0, sub_2380AD37C);
  v369 = v324;
  MEMORY[0x2383EA8A0](v322, -1, -1);
  v392 = *v85;
  v79 = v381;
LABEL_64:
  v209 = 0;
  v210 = v44 + 56;
  v211 = 1 << *(v44 + 32);
  v212 = -1;
  if (v211 < 64)
  {
    v212 = ~(-1 << v211);
  }

  v11 = v212 & *(v44 + 56);
  v213 = (v211 + 63) >> 6;
  *&v208 = 136315138;
  v391 = v208;
LABEL_67:
  if (v11)
  {
    v214 = v79;
    a1 = v209;
    goto LABEL_73;
  }

  while (1)
  {
    a1 = v209 + 1;
    if (__OFADD__(v209, 1))
    {
      goto LABEL_150;
    }

    if (a1 >= v213)
    {
      break;
    }

    v11 = *(v210 + 8 * a1);
    ++v209;
    if (v11)
    {
      v214 = v79;
LABEL_73:
      v215 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v216 = v399;
      v85 = v400;
      v217 = v386;
      (v399[2])(v386, *(v44 + 48) + v399[9] * (v215 | (a1 << 6)), v400);
      (v216[4])(v214, v217, v85);
      v218 = v216[11];
      v79 = v214;
      v219 = v218(v214, v85);
      if (v219 == v392)
      {
        (*v363)(v214, v400);
        v220 = v367;
        v221 = v377;
        (*v362)(v367, v79, v377);
        v222 = v350;
        (*v366)(v350, v220, v221);
        v223 = sub_23815291C();
        v224 = sub_2381550FC();
        v225 = os_log_type_enabled(v223, v224);
        v389 = v44;
        if (v225)
        {
          v226 = swift_slowAlloc();
          v390 = swift_slowAlloc();
          v403[0] = v390;
          *v226 = v391;
          v227 = v355;
          LODWORD(v387) = v224;
          sub_238152EAC();
          v380 = sub_238152B3C();
          v228 = v222;
          v230 = v229;
          (*v370)(v227, v376);
          v388 = *v374;
          (v388)(v228, v221);
          v231 = sub_238085EAC(v380, v230, v403);

          *(v226 + 4) = v231;
          _os_log_impl(&dword_238060000, v223, v387, "Lost device %s", v226, 0xCu);
          v232 = v390;
          __swift_destroy_boxed_opaque_existential_1(v390);
          MEMORY[0x2383EA8A0](v232, -1, -1);
          MEMORY[0x2383EA8A0](v226, -1, -1);
        }

        else
        {

          v388 = *v374;
          v233 = (v388)(v222, v221);
        }

        v390 = &v328;
        MEMORY[0x28223BE20](v233);
        *(&v328 - 2) = v367;
        swift_beginAccess();
        v234 = v369;
        v235 = sub_2380ACFD8(sub_2380AF4D4, (&v328 - 4));
        v62 = v394;
        if (v234)
        {
          swift_endAccess();

          __break(1u);
          return;
        }

        v236 = v402;
        v237 = *(v402 + 16);
        if (v237 < v235)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
        }

        if (v235 < 0)
        {
          goto LABEL_161;
        }

        v369 = 0;
        v387 = (v237 - v235);
        v380 = v235 - v237;
        v238 = v235;
        if (__OFADD__(v237, v235 - v237))
        {
          goto LABEL_162;
        }

        v239 = v235;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v238 > *(v236 + 3) >> 1)
        {
          if (v237 <= v238)
          {
            v241 = v238;
          }

          else
          {
            v241 = v237;
          }

          v236 = sub_2380BB68C(isUniquelyReferenced_nonNull_native, v241, 1, v236);
        }

        v242 = &v236[(*(v382 + 80) + 32) & ~*(v382 + 80)];
        v375 = *(v382 + 72);
        v85 = v375 * v239;
        v379 = &v242[v375 * v239];
        swift_arrayDestroy();
        if (v237 != v239)
        {
          if (v85 < v375 * v237 || v379 >= &v242[v375 * v237 + (*(v236 + 2) - v237) * v375])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v85 != v375 * v237)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v243 = *(v236 + 2);
          v131 = __OFADD__(v243, v380);
          v244 = v243 + v380;
          if (v131)
          {
            goto LABEL_165;
          }

          *(v236 + 2) = v244;
        }

        v379 = v236;
        v402 = v236;
        swift_endAccess();
        v245 = v348;
        sub_238152EAC();
        v246 = v349;
        sub_238130414(v349);
        (*v370)(v245, v376);
        v247 = v360;
        if ((*v359)(v246, 1, v360) == 1)
        {
          sub_238071284(v246, &qword_27DEEC9F0, &qword_23815A090);
        }

        else
        {
          v85 = v338;
          (*v353)(v338, v246, v247);
          swift_beginAccess();
          v248 = v343;
          sub_2380F1B10(v85);
          swift_endAccess();
          sub_238071284(v248, &qword_27DEEBA10, &qword_23815D910);
          (*v371)(v85, v247);
        }

        (v388)(v367, v377);
        v209 = a1;
        v79 = v381;
        v44 = v389;
      }

      else
      {
        (*v396)(v214, v400);
        v209 = a1;
      }

      goto LABEL_67;
    }
  }

  v249 = v395;
  v250 = *(v395 + 32);
  v251 = v250 & 0x3F;
  v252 = ((1 << v250) + 63) >> 6;
  v253 = 8 * v252;

  v85 = MEMORY[0x277CD9130];
  if (v251 <= 0xD || (v254 = swift_stdlib_isStackAllocationSafe(), (v254 & 1) != 0))
  {
    v388 = v252;
    v387 = &v328;
    MEMORY[0x28223BE20](v254);
    v389 = &v328 - ((v253 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v389, v253);
    v390 = 0;
    v255 = 0;
    v257 = *(v249 + 56);
    a1 = v249 + 56;
    v256 = v257;
    v258 = 1 << *(a1 - 24);
    v259 = -1;
    if (v258 < 64)
    {
      v259 = ~(-1 << v258);
    }

    v260 = v259 & v256;
    v11 = (v258 + 63) >> 6;
    v392 = *v85;
    while (1)
    {
      if (v260)
      {
        v85 = v400;
        *&v391 = (v260 - 1) & v260;
        v261 = __clz(__rbit64(v260)) | (v255 << 6);
        v262 = v395;
      }

      else
      {
        v263 = v255;
        v262 = v395;
        do
        {
          v255 = v263 + 1;
          if (__OFADD__(v263, 1))
          {
            goto LABEL_151;
          }

          if (v255 >= v11)
          {
            goto LABEL_115;
          }

          v264 = *(a1 + 8 * v255);
          ++v263;
        }

        while (!v264);
        v85 = v400;
        *&v391 = (v264 - 1) & v264;
        v261 = __clz(__rbit64(v264)) | (v255 << 6);
      }

      v265 = v399;
      v44 = v261;
      v266 = v399[2];
      v79 = v384;
      v266(v384, *(v262 + 48) + v399[9] * v261, v85);
      v267 = v385;
      v266(v385, v79, v85);
      LODWORD(v266) = (v265[11])(v267, v85);
      v268 = v265[1];
      v268(v267, v85);
      v268(v79, v85);
      v62 = v394;
      v260 = v391;
      if (v266 == v392)
      {
        *&v389[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
        v131 = __OFADD__(v390, 1);
        v390 = (v390 + 1);
        if (v131)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_115:
    v269 = sub_2380AD5DC(v389, v388, v390, v262);
  }

  else
  {
    v325 = swift_slowAlloc();
    v326 = v369;
    v327 = sub_2380ACC48(v325, v252, v249, sub_2380AA480, 0, sub_2380AD37C);
    v369 = v326;
    MEMORY[0x2383EA8A0](v325, -1, -1);
    v269 = v327;
    v392 = *v85;
  }

  v270 = 0;
  v271 = v269 + 7;
  v272 = 1 << *(v269 + 32);
  v273 = -1;
  if (v272 < 64)
  {
    v273 = ~(-1 << v272);
  }

  a1 = v273 & v269[7];
  v274 = (v272 + 63) >> 6;
  v395 = v382 + 32;
  v275 = v373;
  while (a1)
  {
    v276 = v270;
LABEL_124:
    v277 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v11 = v269;
    v79 = v399;
    v85 = v400;
    v44 = v383;
    (v399[2])(v383, v269[6] + v399[9] * (v277 | (v276 << 6)), v400);
    (v79[4].isa)(v62, v44, v85);
    v278 = (v79[11].isa)(v62, v85);
    if (v278 == v392)
    {
      (*v363)(v62, v400);
      v279 = v364;
      v280 = v62;
      v281 = v377;
      (*v362)(v364, v280, v377);
      v282 = *v366;
      (*v366)(v356, v279, v281);
      v389 = v282;
      (v282)(v275, v279, v281);
      v283 = v275;
      v284 = sub_23815291C();
      v285 = sub_2381550FC();
      if (os_log_type_enabled(v284, v285))
      {
        v286 = swift_slowAlloc();
        v390 = v286;
        v388 = swift_slowAlloc();
        v403[0] = v388;
        *v286 = v344;
        v287 = v356;
        v288 = v355;
        v387 = v284;
        sub_238152EAC();
        v385 = sub_238152B3C();
        v290 = v289;
        LODWORD(v386) = v285;
        *&v391 = *v370;
        (v391)(v288, v376);
        v291 = *v374;
        (*v374)(v287, v377);
        v292 = sub_238085EAC(v385, v290, v403);

        v293 = v390;
        *(v390 + 4) = v292;
        *(v293 + 6) = 2080;
        v294 = v336;
        v295 = v373;
        sub_238152EAC();
        v385 = sub_238152B8C();
        v297 = v296;
        (v391)(v294, v376);
        if (v297)
        {
          v298 = v385;
        }

        else
        {
          v298 = 0;
        }

        if (!v297)
        {
          v297 = 0xE000000000000000;
        }

        *&v391 = v291;
        v291(v295, v377);
        v299 = sub_238085EAC(v298, v297, v403);

        v300 = v390;
        *(v390 + 14) = v299;
        v301 = v387;
        _os_log_impl(&dword_238060000, v387, v386, "Found new device %s - deviceID: %s", v300, 0x16u);
        v302 = v388;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v302, -1, -1);
        MEMORY[0x2383EA8A0](v300, -1, -1);
      }

      else
      {

        v303 = *v374;
        (*v374)(v283, v281);
        *&v391 = v303;
        v303(v356, v281);
      }

      v304 = v379;
      sub_238152EAC();
      swift_beginAccess();
      v305 = swift_isUniquelyReferenced_nonNull_native();
      v390 = v11;
      if ((v305 & 1) == 0)
      {
        v304 = sub_2380BB68C(0, *(v304 + 2) + 1, 1, v304);
      }

      v307 = *(v304 + 2);
      v306 = *(v304 + 3);
      if (v307 >= v306 >> 1)
      {
        v304 = sub_2380BB68C(v306 > 1, v307 + 1, 1, v304);
      }

      *(v304 + 2) = v307 + 1;
      v308 = v382;
      v85 = v376;
      (*(v382 + 32))(&v304[((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v307], v357, v376);
      v379 = v304;
      v402 = v304;
      swift_endAccess();
      v309 = v346;
      v79 = v364;
      sub_238152EAC();
      v11 = v347;
      sub_238130414(v347);
      (*(v308 + 8))(v309, v85);
      v44 = v360;
      if ((*v359)(v11, 1, v360) == 1)
      {
        (v391)(v79, v377);
        sub_238071284(v11, &qword_27DEEC9F0, &qword_23815A090);
      }

      else
      {
        v85 = v337;
        (*v353)(v337, v11, v44);
        (v389)(v345, v79, v377);
        v11 = v372;
        v310 = v354;
        swift_beginAccess();
        v311 = *(v11 + v310);
        v312 = swift_isUniquelyReferenced_nonNull_native();
        v401 = *(v11 + v310);
        *(v11 + v310) = 0x8000000000000000;
        sub_2380C755C(v345, v85, v312);
        *(v11 + v310) = v401;
        swift_endAccess();
        (*v371)(v85, v44);
        (v391)(v79, v377);
      }

      v270 = v276;
      v275 = v373;
      v62 = v394;
      v269 = v390;
    }

    else
    {
      (*v396)(v62, v400);
      v270 = v276;
      v269 = v11;
    }
  }

  while (1)
  {
    v276 = v270 + 1;
    if (__OFADD__(v270, 1))
    {
      goto LABEL_152;
    }

    if (v276 >= v274)
    {
      break;
    }

    a1 = v271[v276];
    ++v270;
    if (a1)
    {
      goto LABEL_124;
    }
  }

  v313 = v368;
  v314 = v379;
  if (*(v368 + 16) != *(v379 + 2))
  {

    v315 = sub_23815291C();
    v316 = sub_2381550DC();
    if (os_log_type_enabled(v315, v316))
    {
      v317 = swift_slowAlloc();
      *v317 = 134218240;
      *(v317 + 4) = *(v313 + 16);

      *(v317 + 12) = 2048;
      *(v317 + 14) = *(v314 + 2);
      _os_log_impl(&dword_238060000, v315, v316, "Network endpoints count (%ld) does not match updated endpoints count (%ld)", v317, 0x16u);
      MEMORY[0x2383EA8A0](v317, -1, -1);
    }

    else
    {
    }
  }

  v318 = *(v372 + 24);
  v403[0] = v314;

  sub_238152A1C();

  swift_getKeyPath();
  swift_getKeyPath();
  v403[0] = v314;

  sub_238152A9C();
  v319 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2380A8BA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - v4;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEB790);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238060000, v7, v8, "Stopping browser", v9, 2u);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser;
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser))
  {
    v11 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser);

    sub_238152ECC();

    v12 = *(v1 + v10);
  }

  *(v1 + v10) = 0;

  v13 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser;
  v14 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser);
  if (v14)
  {
    v15 = sub_238154FBC();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;

    sub_2380D2A4C(0, 0, v5, &unk_23815A5F0, v16);

    v17 = *(v1 + v13);
  }

  *(v1 + v13) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = sub_238152A7C();
  v20 = *v19;
  v21 = MEMORY[0x277D84F90];
  *v19 = MEMORY[0x277D84F90];

  v18(v24, 0);

  v22 = *(v1 + 24);
  v24[0] = v21;
  return sub_238152A1C();
}

uint64_t sub_2380A8E50(uint64_t a1, uint64_t a2)
{
  v3 = sub_2381527EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  sub_238130414(&v28 - v19);
  (*(v4 + 16))(v18, a2, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v21 = *(v8 + 56);
  sub_2380712E4(v20, v11, &qword_27DEEC9F0, &qword_23815A090);
  sub_2380712E4(v18, &v11[v21], &qword_27DEEC9F0, &qword_23815A090);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    sub_2380712E4(v11, v29, &qword_27DEEC9F0, &qword_23815A090);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v24 = &v11[v21];
      v25 = v28;
      (*(v4 + 32))(v28, v24, v3);
      sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0]);
      v23 = sub_238154C7C();
      v26 = *(v4 + 8);
      v26(v25, v3);
      sub_238071284(v18, &qword_27DEEC9F0, &qword_23815A090);
      sub_238071284(v20, &qword_27DEEC9F0, &qword_23815A090);
      v26(v29, v3);
      sub_238071284(v11, &qword_27DEEC9F0, &qword_23815A090);
      return v23 & 1;
    }

    sub_238071284(v18, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v20, &qword_27DEEC9F0, &qword_23815A090);
    (*(v4 + 8))(v29, v3);
    goto LABEL_6;
  }

  sub_238071284(v18, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v20, &qword_27DEEC9F0, &qword_23815A090);
  if (v22(&v11[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_238071284(v11, &qword_27DEEBA28, &qword_23815A668);
    v23 = 0;
    return v23 & 1;
  }

  sub_238071284(v11, &qword_27DEEC9F0, &qword_23815A090);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_2380A92A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserResults;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_2380E6AE8(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_238152EBC();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a2, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = sub_238152EBC();
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  return swift_endAccess();
}

uint64_t sub_2380A940C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for DecorationIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v20 = a1;
  v12 = sub_2380A9774(sub_2380AF114, v19, v21[0]);

  if (v12)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = *(v8 + 20);
    v16 = sub_2381527EC();
    (*(*(v16 - 8) + 16))(&v11[v15], a1, v16);
    sub_2380AF0AC(a2, v7, type metadata accessor for _DDNodeDecoration);
    v17 = type metadata accessor for _DDNodeDecoration(0);
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = sub_238152A7C();
    sub_23809F684(v7, v11);
    v18(v21, 0);
  }

  return result;
}

BOOL sub_2380A96CC()
{
  v0 = *(type metadata accessor for DecorationIdentifier(0) + 20);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0]);
  return (sub_238154C7C() & 1) == 0;
}

uint64_t sub_2380A9774(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v20 = a1;
  v6 = type metadata accessor for DecorationIdentifier(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
LABEL_9:
    sub_2380AF0AC(*(a3 + 48) + *(v19 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v9, type metadata accessor for DecorationIdentifier);
    v17 = v20(v9);
    result = sub_2380AF04C(v9, type metadata accessor for DecorationIdentifier);
    if (v3)
    {
      goto LABEL_13;
    }

    v12 &= v12 - 1;
    if ((v17 & 1) == 0)
    {
      a2 = 0;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      a2 = 1;
      goto LABEL_13;
    }

    v12 = *(a3 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380A9944(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v24 = a1;
  v3 = type metadata accessor for DecorationIdentifier(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v13 = *(v12 - 8);
  v25 = *(v13 + 56);
  v26 = v13 + 56;
  v25(v7, 1, 1, v12);
  v14 = *(v4 + 28);
  v15 = sub_2381527EC();
  v23 = *(*(v15 - 8) + 16);
  v23(&v7[v14], a1, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = sub_238152A7C();
  sub_2380F1B0C(v7);
  sub_2380AF04C(v7, type metadata accessor for DecorationIdentifier);
  sub_238071284(v11, &qword_27DEEBA48, &qword_23815BF00);
  v16(v28, 0);

  v17 = type metadata accessor for _DDNodeDecoration(0);
  v18 = *(v17 + 24);
  v19 = sub_2381536AC();
  v20 = v27;
  (*(*(v19 - 8) + 16))(v7, v27 + v18, v19);
  v25(v7, 0, 1, v12);
  v23(&v7[*(v4 + 28)], v24, v15);
  sub_2380AF0AC(v20, v11, type metadata accessor for _DDNodeDecoration);
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = sub_238152A7C();
  sub_23809F684(v11, v7);
  v21(v28, 0);
}

BOOL sub_2380A9CBC(uint64_t a1)
{
  v2 = sub_238152E9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x277CD9138];
  if (v7 == *MEMORY[0x277CD9138])
  {
    (*(v3 + 96))(v6, v2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA18, &qword_23815A660);
    v10 = *(v9 + 48);
    v11 = *(v9 + 64);
    v12 = sub_238152E8C();
    (*(*(v12 - 8) + 8))(&v6[v11], v12);
    v13 = sub_238152EBC();
    v14 = *(*(v13 - 8) + 8);
    v14(&v6[v10], v13);
    v14(v6, v13);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  return v7 == v8;
}

uint64_t sub_2380A9EAC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_238152BAC() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2380A9FBC(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_2381527EC();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_238152BAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v39 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  sub_238130414(&v34 - v22);
  sub_238152EAC();
  sub_238130414(v21);
  (*(v11 + 8))(v14, v10);
  v24 = *(v6 + 56);
  sub_2380712E4(v23, v9, &qword_27DEEC9F0, &qword_23815A090);
  v25 = v38;
  sub_2380712E4(v21, &v9[v24], &qword_27DEEC9F0, &qword_23815A090);
  v26 = v37;
  v27 = *(v37 + 48);
  if (v27(v9, 1, v25) != 1)
  {
    sub_2380712E4(v9, v39, &qword_27DEEC9F0, &qword_23815A090);
    if (v27(&v9[v24], 1, v25) != 1)
    {
      v29 = v26;
      v30 = &v9[v24];
      v31 = v35;
      (*(v26 + 32))(v35, v30, v25);
      sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0]);
      v28 = sub_238154C7C();
      v32 = *(v29 + 8);
      v32(v31, v25);
      sub_238071284(v21, &qword_27DEEC9F0, &qword_23815A090);
      sub_238071284(v23, &qword_27DEEC9F0, &qword_23815A090);
      v32(v39, v25);
      sub_238071284(v9, &qword_27DEEC9F0, &qword_23815A090);
      return v28 & 1;
    }

    sub_238071284(v21, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v23, &qword_27DEEC9F0, &qword_23815A090);
    (*(v26 + 8))(v39, v25);
    goto LABEL_6;
  }

  sub_238071284(v21, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v23, &qword_27DEEC9F0, &qword_23815A090);
  if (v27(&v9[v24], 1, v25) != 1)
  {
LABEL_6:
    sub_238071284(v9, &qword_27DEEBA28, &qword_23815A668);
    v28 = 0;
    return v28 & 1;
  }

  sub_238071284(v9, &qword_27DEEC9F0, &qword_23815A090);
  v28 = 1;
  return v28 & 1;
}

BOOL sub_2380AA4A4(uint64_t a1, _DWORD *a2)
{
  v4 = sub_238152E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4) == *a2;
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_2380AA5C0()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airdropOpenedAt;
  v3 = sub_23815278C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser);

  v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor;
  v6 = sub_238152E1C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_parameters);

  v8 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_subscriptions);

  v9 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser);

  v10 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__decorations;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9C8, &qword_23815A5B0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__hints;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D0, &qword_23815A5B8);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__endpoints;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D8, &unk_23815A5C0);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__shouldPauseUpdate;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v18 = *(*(v17 - 8) + 8);
  v18(v0 + v16, v17);
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodes;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E8, &unk_23815A5D0);
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v19, v20);
  v21(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfSameAccount, v20);
  v21(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPeople, v20);
  v21(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfOthers, v20);
  v21(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfUnpaired, v20);
  v21(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPaired, v20);
  v21(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfAll, v20);
  v22 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__boopEndpoint;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F0, &unk_23815EA80);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v18(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__isPreviewVisible, v17);
  v24 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__scrollTarget;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F8, &unk_23815A5E0);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserResults);

  v27 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_contactInfoCache);

  v28 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airDropMetadataCache);

  v29 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_identity);
  swift_unknownObjectRelease();
  v30 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate);

  return v0;
}

uint64_t sub_2380AA9F8()
{
  sub_2380AA5C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2380AAA78()
{
  v0 = sub_23815278C();
  if (v1 <= 0x3F)
  {
    v19 = *(v0 - 8) + 64;
    v2 = sub_238152E1C();
    if (v3 <= 0x3F)
    {
      v20 = *(v2 - 8) + 64;
      sub_2380AAE3C(319, &qword_27DEEB868, &qword_27DEEB870, &qword_23815A068);
      if (v5 <= 0x3F)
      {
        v21 = *(v4 - 8) + 64;
        sub_2380AAE3C(319, &qword_27DEEB878, &qword_27DEEB880, &qword_23815A070);
        if (v7 <= 0x3F)
        {
          v22 = *(v6 - 8) + 64;
          sub_2380AAE3C(319, &qword_27DEEB888, &qword_27DEEB890, &qword_23815A078);
          if (v9 <= 0x3F)
          {
            v23 = *(v8 - 8) + 64;
            sub_2380AADEC();
            if (v11 <= 0x3F)
            {
              v12 = *(v10 - 8) + 64;
              sub_2380AAE3C(319, &qword_27DEEB8A0, &qword_27DEEB8A8, &unk_23815A080);
              if (v14 <= 0x3F)
              {
                v24 = *(v13 - 8) + 64;
                sub_2380AAE3C(319, &unk_27DEEB8B0, &unk_27DEED890, &qword_2381593F0);
                if (v16 <= 0x3F)
                {
                  v25 = *(v15 - 8) + 64;
                  sub_2380AAE3C(319, &unk_27DEEB8C0, &qword_27DEEC9F0, &qword_23815A090);
                  if (v18 <= 0x3F)
                  {
                    v26 = *(v17 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_2380AADEC()
{
  if (!qword_27DEEB898)
  {
    v0 = sub_238152AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB898);
    }
  }
}

void sub_2380AAE3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_238152AAC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2380AAE90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2381529DC();
  *a1 = result;
  return result;
}

uint64_t sub_2380AAEE0()
{
  v1 = v0;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB790);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Drop Entered: shouldPauseUpdate = true", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  sub_2380AB424();
  sub_23815484C();
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = 0;
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);

  v9(1);
}

uint64_t sub_2380AB00C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23815391C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 56) & 1) == 0)
  {
    v10 = *(v1 + 40);
    v9 = *(v1 + 48);
    sub_23815484C();
    if (sqrt((v10 - v11) * (v10 - v11) + (v9 - v12) * (v9 - v12)) > 5.0)
    {
      if (qword_27DEEA058 != -1)
      {
        swift_once();
      }

      v13 = sub_23815293C();
      __swift_project_value_buffer(v13, qword_27DEEB790);
      v14 = sub_23815291C();
      v15 = sub_2381550FC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_238060000, v14, v15, "Significant movement detected, reset timer", v16, 2u);
        MEMORY[0x2383EA8A0](v16, -1, -1);
      }

      sub_2380AB424();
      sub_23815484C();
      *(v2 + 40) = v17;
      *(v2 + 48) = v18;
      *(v2 + 56) = 0;
    }
  }

  (*(v5 + 104))(v8, *MEMORY[0x277CDD860], v4);
  sub_23815386C();
  v19 = sub_23815387C();
  return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
}

uint64_t sub_2380AB24C()
{
  v1 = v0;
  if (v0[4])
  {

    sub_2381529BC();

    v2 = v0[4];
  }

  v0[4] = 0;

  v4 = v0[8];
  v3 = v0[9];

  v4(0);

  v1[5] = 0;
  v1[6] = 0;
  *(v1 + 56) = 1;
  return 0;
}

void sub_2380AB2D4()
{
  v1 = v0;
  if (v0[4])
  {

    sub_2381529BC();

    v2 = v0[4];
  }

  v0[4] = 0;

  v4 = v0[8];
  v3 = v0[9];

  v4(0);

  v1[5] = 0;
  v1[6] = 0;
  *(v1 + 56) = 1;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v5 = sub_23815293C();
  __swift_project_value_buffer(v5, qword_27DEEB790);
  oslog = sub_23815291C();
  v6 = sub_2381550FC();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238060000, oslog, v6, "Drop Exited: shouldPauseUpdate = false", v7, 2u);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }
}

uint64_t sub_2380AB424()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9A0, &qword_23815A5A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  if (*(v0 + 32))
  {

    sub_2381529BC();

    v6 = *(v0 + 32);
  }

  *(v0 + 32) = 0;

  sub_23807A3F8(0, &qword_27DEEB9A8, 0x277CBEBB8);
  v7 = [objc_opt_self() mainRunLoop];
  v8 = *MEMORY[0x277CBE738];
  v9 = sub_2381552EC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_23815520C();

  sub_238071284(v5, &qword_27DEEB9A0, &qword_23815A5A0);
  v16 = v10;
  sub_2381551FC();
  sub_2380ABF30(&qword_27DEEB9B0, MEMORY[0x277CC9DF0]);
  v11 = sub_238152A4C();

  v16 = v11;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9B8, &qword_23815A5A8);
  sub_2380711D4(&qword_27DEEB9C0, &qword_27DEEB9B8, &qword_23815A5A8);
  v12 = sub_238152AFC();

  v13 = *(v1 + 32);
  *(v1 + 32) = v12;
}

void sub_2380AB6B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 64);
    v1 = *(Strong + 72);

    v2(0);
  }

  swift_beginAccess();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    if (*(v3 + 32))
    {
      v4 = v3;
      v5 = *(v3 + 32);

      sub_2381529BC();

      v3 = v4;
      v6 = *(v4 + 32);
    }

    *(v3 + 32) = 0;
  }

  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEEB790);
  v8 = sub_23815291C();
  v9 = sub_2381550FC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238060000, v8, v9, "Timer expired: shouldPauseUpdate = false", v10, 2u);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }
}

uint64_t sub_2380AB848()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for BrowserType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowserType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2380ABA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TransferIDStatus(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2381527EC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2380ABB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TransferIDStatus(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2381527EC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2380ABC50()
{
  result = type metadata accessor for TransferIDStatus(319);
  if (v1 <= 0x3F)
  {
    result = sub_2381527EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2380ABCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2380ABD74(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2380ABE00()
{
  sub_2380ABE58();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2380ABE58()
{
  if (!qword_27DEEB968)
  {
    v0 = sub_2381536AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB968);
    }
  }
}

uint64_t sub_2380ABF30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2380ABF7C()
{
  result = qword_27DEEB980;
  if (!qword_27DEEB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB980);
  }

  return result;
}

uint64_t sub_2380ABFD4()
{
  v1 = *v0;
  sub_2380AB24C();
  return 0;
}

uint64_t sub_2380AC068()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2380AC0A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380AC12C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_2380AC1DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380AC25C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_2380AC2D8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();
}

uint64_t sub_2380AC354(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2380712E4(a1, &v13 - v9, &unk_27DEED890, &qword_2381593F0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380712E4(v10, v8, &unk_27DEED890, &qword_2381593F0);

  sub_238152A9C();
  return sub_238071284(v10, &unk_27DEED890, &qword_2381593F0);
}

uint64_t sub_2380AC484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381536AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransferIDStatus(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 40);
  sub_23815568C();
  sub_2380AF0AC(a1, v14, type metadata accessor for TransferIDStatus);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v7 + 8))(v10, v6);
  }

  v17 = type metadata accessor for DecorationIdentifier(0);
  v18 = *(v17 + 20);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  sub_238154C4C();
  sub_2381556BC();
  v19 = -1 << *(a3 + 32);
  v20 = sub_2381553AC();
  *(a3 + 64 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
  sub_2380AF410(a1, *(a3 + 48) + *(*(v17 - 8) + 72) * v20, type metadata accessor for DecorationIdentifier);
  v21 = *(a3 + 56);
  v22 = type metadata accessor for _DDNodeDecoration(0);
  result = sub_2380AF410(a2, v21 + *(*(v22 - 8) + 72) * v20, type metadata accessor for _DDNodeDecoration);
  ++*(a3 + 16);
  return result;
}

uint64_t sub_2380AC7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_2380AC964(v10, v8, a3, v6);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_2380ACC48(v13, v8, a3, v6, a2, sub_2380AC964);
  result = MEMORY[0x2383EA8A0](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2380AC964(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v39 = a4;
  v32 = a2;
  v33 = a1;
  v5 = type metadata accessor for _DDNodeDecoration(0);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DecorationIdentifier(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v34 = 0;
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v40 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v41 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v40;
    v25 = v35;
    sub_2380AF0AC(v40[6] + *(v36 + 72) * v23, v35, type metadata accessor for DecorationIdentifier);
    v26 = v23;
    v27 = v24[7] + *(v38 + 72) * v23;
    v28 = v37;
    sub_2380AF0AC(v27, v37, type metadata accessor for _DDNodeDecoration);
    v29 = v42;
    v30 = v39(v25, v28);
    sub_2380AF04C(v28, type metadata accessor for _DDNodeDecoration);
    result = sub_2380AF04C(v25, type metadata accessor for DecorationIdentifier);
    v42 = v29;
    if (v29)
    {
      return result;
    }

    v18 = v41;
    if (v30)
    {
      *(v33 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_2380ACCE8(v33, v32, v34, v40);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_2380ACCE8(v33, v32, v34, v40);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v41 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2380ACC48(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_2380ACCE8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for _DDNodeDecoration(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for DecorationIdentifier(0);
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
  result = sub_23815552C();
  v30 = result;
  if (a2 < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *a1;
  }

  v23 = 0;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
LABEL_16:
    v27 = v24 | (v23 << 6);
    sub_2380AF0AC(a4[6] + *(v31 + 72) * v27, v20, type metadata accessor for DecorationIdentifier);
    sub_2380AF0AC(a4[7] + *(v33 + 72) * v27, v13, type metadata accessor for _DDNodeDecoration);
    sub_2380AF410(v20, v18, type metadata accessor for DecorationIdentifier);
    v28 = v32;
    sub_2380AF410(v13, v32, type metadata accessor for _DDNodeDecoration);
    result = sub_2380AC484(v18, v28, v30);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v30;
    }
  }

  v25 = v23;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= a2)
    {
      return v30;
    }

    v26 = a1[v23];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v22 = (v26 - 1) & v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2380ACFD8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_238152BAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *v2;
  v17 = v54;
  result = sub_2380A9EAC(a1, a2, *v2);
  if (!v17)
  {
    v50 = v15;
    v54 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v20 = v5;
    v42 = v10;
    v43 = v13;
    v47 = a1;
    v41 = v2;
    v52 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v16;
      v24 = (v16 + 16);
      v23 = *(v16 + 16);
      v25 = v50;
      if (v21 == v23)
      {
        return v52;
      }

      v26 = v20;
      v49 = v6 + 16;
      v45 = v6;
      v46 = (v6 + 8);
      v40 = (v6 + 40);
      v44 = a2;
      while (v21 < v23)
      {
        v27 = *(v6 + 80);
        v53 = v22;
        v48 = (v27 + 32) & ~v27;
        v28 = v22 + v48;
        v29 = *(v6 + 72);
        v30 = *(v6 + 16);
        v51 = v29 * v21;
        v30(v25, &v28[v29 * v21], v26);
        v31 = v54;
        v32 = v47(v25);
        v54 = v31;
        if (v31)
        {
          return (*v46)(v25, v26);
        }

        v33 = v32;
        result = (*v46)(v25, v26);
        if (v33)
        {
          v6 = v45;
          v25 = v50;
          v22 = v53;
        }

        else
        {
          v34 = v52;
          if (v21 == v52)
          {
            v6 = v45;
            v25 = v50;
            v22 = v53;
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v35 = *v24;
            if (v52 >= v35)
            {
              goto LABEL_27;
            }

            v36 = v29 * v52;
            result = (v30)(v43, &v28[v36], v26);
            if (v21 >= v35)
            {
              goto LABEL_28;
            }

            v37 = v42;
            v30(v42, &v28[v51], v26);
            v22 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_23811D2A4(v22);
            }

            v38 = v22 + v48;
            v39 = *v40;
            result = (*v40)(v22 + v48 + v36, v37, v26);
            v6 = v45;
            if (v21 >= v22[2])
            {
              goto LABEL_29;
            }

            result = v39(&v38[v51], v43, v26);
            *v41 = v22;
            v34 = v52;
            v25 = v50;
          }

          v52 = v34 + 1;
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v52;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2380AD37C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_238152E9C();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_2380AD5DC(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380AD5DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_238152E9C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA38, &qword_23815A670);
  result = sub_2381553FC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_2380ABF30(&qword_27DEEBA40, MEMORY[0x277CD9150]);
    result = sub_238154C3C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_2380AD904(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransferIDStatus(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_2380AF0AC(a1, &v24 - v16, type metadata accessor for TransferIDStatus);
  sub_2380AF0AC(a2, &v17[v18], type metadata accessor for TransferIDStatus);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) != 1)
  {
    sub_2380AF0AC(v17, v12, type metadata accessor for TransferIDStatus);
    if (v20(&v17[v18], 1, v19) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_2381527AC();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_2380AF04C(v17, type metadata accessor for TransferIDStatus);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v20(&v17[v18], 1, v19) != 1)
  {
LABEL_6:
    sub_238071284(v17, &qword_27DEEB998, &qword_23815A550);
    v21 = 0;
    return v21 & 1;
  }

  sub_2380AF04C(v17, type metadata accessor for TransferIDStatus);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_2380ADC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransferIDStatus(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v26 - v16;
  v18 = *(v15 + 56);
  sub_2380AF0AC(a1, v26 - v16, type metadata accessor for TransferIDStatus);
  v26[1] = a2;
  sub_2380AF0AC(a2, &v17[v18], type metadata accessor for TransferIDStatus);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) == 1)
  {
    if (v20(&v17[v18], 1, v19) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_2380AF0AC(v17, v12, type metadata accessor for TransferIDStatus);
  if (v20(&v17[v18], 1, v19) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_238071284(v17, &qword_27DEEB998, &qword_23815A550);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  v22 = sub_2381527AC();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  if (v22)
  {
LABEL_9:
    sub_2380AF04C(v17, type metadata accessor for TransferIDStatus);
    v24 = *(type metadata accessor for DecorationIdentifier(0) + 20);
    v21 = sub_2381527AC();
    return v21 & 1;
  }

  sub_2380AF04C(v17, type metadata accessor for TransferIDStatus);
LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_2380ADF54(uint64_t a1)
{
  v2 = sub_238152E1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v10 = sub_23815293C();
  v11 = __swift_project_value_buffer(v10, qword_27DEEB790);
  v55 = *(v3 + 16);
  v56 = v3 + 16;
  v55(v9, a1, v2);
  v57 = v11;
  v12 = sub_23815291C();
  v13 = sub_2381550FC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v7;
    v58 = v52;
    *v14 = 136315138;
    v15 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v16 = sub_238154CCC();
    v17 = a1;
    v18 = v2;
    v19 = v3;
    v21 = v20;

    v54 = *(v19 + 8);
    v54(v9, v18);
    v22 = sub_238085EAC(v16, v21, &v58);
    v3 = v19;
    v2 = v18;
    a1 = v17;

    *(v14 + 4) = v22;
    _os_log_impl(&dword_238060000, v12, v13, "Getting browserType for descriptor: %s", v14, 0xCu);
    v23 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v7 = v53;
    MEMORY[0x2383EA8A0](v23, -1, -1);
    MEMORY[0x2383EA8A0](v14, -1, -1);
  }

  else
  {

    v54 = *(v3 + 8);
    v54(v9, v2);
  }

  v24 = sub_238152D6C();
  application_service_name = nw_browse_descriptor_get_application_service_name(v24);
  swift_unknownObjectRelease();
  if (application_service_name)
  {
    v26 = sub_238152D6C();
    result = nw_browse_descriptor_get_application_service_name(v26);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = sub_238154DEC();
    v30 = v29;
    v31 = sub_23815291C();
    v32 = sub_2381550FC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v26;
      v35 = v3;
      v36 = v34;
      v58 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_238085EAC(v28, v30, &v58);
      _os_log_impl(&dword_238060000, v31, v32, "Got serviceName: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v37 = v36;
      v3 = v35;
      MEMORY[0x2383EA8A0](v37, -1, -1);
      MEMORY[0x2383EA8A0](v33, -1, -1);
    }

    if (v28 == 0x706F7264726961 && v30 == 0xE700000000000000)
    {

LABEL_14:
      v39 = sub_23815291C();
      v40 = sub_2381550FC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_238060000, v39, v40, "Got .airdrop", v41, 2u);
        MEMORY[0x2383EA8A0](v41, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }

    v38 = sub_2381555CC();

    if (v38)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  v55(v7, a1, v2);
  if ((*(v3 + 88))(v7, v2) == *MEMORY[0x277CD90A0])
  {
    (*(v3 + 96))(v7, v2);
    isa = v7[1].isa;

    sub_238085CA0(v7[2].isa, v7[3].isa);
    v43 = sub_23815291C();
    v44 = sub_2381550FC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_238060000, v43, v44, "Got .wifiAware", v45, 2u);
      MEMORY[0x2383EA8A0](v45, -1, -1);
    }

    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0) + 64);
    v47 = sub_238152E0C();
    (*(*(v47 - 8) + 8))(v7 + v46, v47);
    return 2;
  }

  else
  {
    v48 = sub_23815291C();
    v49 = sub_2381550FC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_238060000, v48, v49, "Got .appService", v50, 2u);
      MEMORY[0x2383EA8A0](v50, -1, -1);
    }

    v54(v7, v2);
    return 1;
  }
}

uint64_t sub_2380AE5C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for _DDNodeViewModel();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = &v43 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v43 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v45 = &v43 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = MEMORY[0x277D84F90];
    v22 = a1 + v20;
    v23 = *(v16 + 72);
    v24 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2380AF0AC(v22, v18, type metadata accessor for _DDNodeViewModel);
      v25 = &v18[*(v3 + 20)];
      v26 = v25[32];
      if (v26 > 1)
      {
        break;
      }

      if (v25[32])
      {
        goto LABEL_16;
      }

      v33 = *v25;
      v34 = *(v25 + 1);
      if ((sub_238154E5C() & 1) == 0)
      {
        sub_2380AF0AC(v18, v45, type metadata accessor for _DDNodeViewModel);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v35 = v46;
        }

        else
        {
          v35 = sub_2380BB664(0, v46[2] + 1, 1, v46);
        }

        v29 = v35[2];
        v36 = v35[3];
        v30 = v29 + 1;
        if (v29 >= v36 >> 1)
        {
          v31 = sub_2380BB664(v36 > 1, v29 + 1, 1, v35);
          v32 = v45;
          v46 = v31;
        }

        else
        {
          v46 = v35;
          v31 = v35;
          v32 = v45;
        }

        goto LABEL_29;
      }

LABEL_30:
      result = sub_2380AF04C(v18, type metadata accessor for _DDNodeViewModel);
      v22 += v23;
      if (!--v19)
      {
        goto LABEL_41;
      }
    }

    if (v26 - 2 >= 2)
    {
      if (v26 == 4)
      {
        sub_2380AF0AC(v18, v49, type metadata accessor for _DDNodeViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2380BB664(0, v21[2] + 1, 1, v21);
        }

        v29 = v21[2];
        v38 = v21[3];
        v30 = v29 + 1;
        if (v29 >= v38 >> 1)
        {
          v31 = sub_2380BB664(v38 > 1, v29 + 1, 1, v21);
          v32 = v49;
          v21 = v31;
        }

        else
        {
          v31 = v21;
          v32 = v49;
        }
      }

      else
      {
        sub_2380AF0AC(v18, v48, type metadata accessor for _DDNodeViewModel);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v39 = v50;
        }

        else
        {
          v39 = sub_2380BB664(0, v50[2] + 1, 1, v50);
        }

        v29 = v39[2];
        v40 = v39[3];
        v30 = v29 + 1;
        if (v29 >= v40 >> 1)
        {
          v31 = sub_2380BB664(v40 > 1, v29 + 1, 1, v39);
          v32 = v48;
          v50 = v31;
        }

        else
        {
          v50 = v39;
          v31 = v39;
          v32 = v48;
        }
      }
    }

    else if (*(v25 + 4))
    {
LABEL_16:
      sub_2380AF0AC(v18, v52, type metadata accessor for _DDNodeViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_2380BB664(0, v24[2] + 1, 1, v24);
      }

      v29 = v24[2];
      v37 = v24[3];
      v30 = v29 + 1;
      if (v29 >= v37 >> 1)
      {
        v31 = sub_2380BB664(v37 > 1, v29 + 1, 1, v24);
        v32 = v52;
        v24 = v31;
      }

      else
      {
        v31 = v24;
        v32 = v52;
      }
    }

    else
    {
      sub_2380AF0AC(v18, v47, type metadata accessor for _DDNodeViewModel);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v51;
      }

      else
      {
        v27 = sub_2380BB664(0, v51[2] + 1, 1, v51);
      }

      v29 = v27[2];
      v28 = v27[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v31 = sub_2380BB664(v28 > 1, v29 + 1, 1, v27);
        v32 = v47;
        v51 = v31;
      }

      else
      {
        v51 = v27;
        v31 = v27;
        v32 = v47;
      }
    }

LABEL_29:
    v31[2] = v30;
    sub_2380AF410(v32, v31 + v20 + v29 * v23, type metadata accessor for _DDNodeViewModel);
    goto LABEL_30;
  }

  v21 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
LABEL_41:
  v41 = v44;
  *v44 = v46;
  v41[1] = v24;
  v42 = v50;
  v41[2] = v51;
  v41[3] = v42;
  v41[4] = v21;
  return result;
}

uint64_t sub_2380AEB18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_238152BAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x277CD8AF8], v9);
  swift_unknownObjectRetain();
  v14 = nw_endpoint_copy_public_keys();
  if (v14)
  {
    v15 = v14;
    sub_238154EDC();
  }

  sub_238152B1C();
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380712E4(v8, v6, &unk_27DEED890, &qword_2381593F0);

  sub_238152A9C();
  sub_238071284(v8, &unk_27DEED890, &qword_2381593F0);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2380AED8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380FA430(a1, v4, v5, v6);
}

uint64_t sub_2380AEE50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380F9DB8(a1, v4, v5, v6);
}

uint64_t sub_2380AEF04()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2380AEF54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238087150;

  return sub_2380A5DCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2380AF04C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2380AF0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2380AF134()
{
  result = qword_27DEEBAE0;
  if (!qword_27DEEBAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB890, &qword_23815A078);
    sub_2380ABF30(&qword_27DEEBAE8, MEMORY[0x277CD8B10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBAE0);
  }

  return result;
}

unint64_t sub_2380AF1E8()
{
  result = qword_27DEEBAF8;
  if (!qword_27DEEBAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB870, &qword_23815A068);
    sub_2380ABF30(&qword_27DEEBB00, type metadata accessor for _DDNodeDecoration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBAF8);
  }

  return result;
}

unint64_t sub_2380AF29C()
{
  result = qword_27DEEBB10;
  if (!qword_27DEEBB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB880, &qword_23815A070);
    sub_23807D834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBB10);
  }

  return result;
}

uint64_t sub_2380AF328()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2380AF360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_2380AF3A0()
{
  result = qword_27DEEBB58;
  if (!qword_27DEEBB58)
  {
    sub_23807A3F8(255, &qword_27DEEBA50, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBB58);
  }

  return result;
}

uint64_t sub_2380AF410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380AF508(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2381527EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_23815278C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_238152BAC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2380AF690(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2381527EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_23815278C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_238152BAC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for _DDNodeViewModel()
{
  result = qword_27DEEBBC8;
  if (!qword_27DEEBBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380AF850()
{
  sub_2381527EC();
  if (v0 <= 0x3F)
  {
    sub_2380AF96C();
    if (v1 <= 0x3F)
    {
      sub_23815278C();
      if (v2 <= 0x3F)
      {
        sub_238152BAC();
        if (v3 <= 0x3F)
        {
          sub_2380AF9C4();
          if (v4 <= 0x3F)
          {
            type metadata accessor for _DDContactInfoCache(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for _DDAirDropMetadataCache(319);
              if (v6 <= 0x3F)
              {
                sub_238067930();
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

void sub_2380AF96C()
{
  if (!qword_27DEEA788)
  {
    type metadata accessor for _DDNodeDecoration(255);
    v0 = sub_238154F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA788);
    }
  }
}

void sub_2380AF9C4()
{
  if (!qword_27DEEBBD8)
  {
    v0 = sub_23815530C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEBBD8);
    }
  }
}

uint64_t sub_2380AFA20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2380AFA68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2380AFAC8()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _DDNodeDecoration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _DDNodeDecorationCombination(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + *(type metadata accessor for _DDNodeViewModel() + 24));
  v15 = *(v14 + 16);
  if (v15 != 1)
  {
    if (!v15)
    {
      swift_storeEnumTagMultiPayload();
      return 107;
    }

    *v13 = v14;
    swift_storeEnumTagMultiPayload();

    v18 = type metadata accessor for _DDNodeDecorationCombination;
    v19 = v13;
LABEL_22:
    sub_2380B3EB0(v19, v18);
    return 107;
  }

  sub_2380B3DB0(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v13, type metadata accessor for _DDNodeDecoration);
  swift_storeEnumTagMultiPayload();
  sub_2380B25FC(v13, v9);
  sub_2380B3DB0(v9, v4, type metadata accessor for _DDNodeDecoration.Kind);
  sub_2380B3EB0(v9, type metadata accessor for _DDNodeDecoration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 51;
      }

      return 107;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return 53;
    }

    v20 = type metadata accessor for _DDNodeDecoration.Kind;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2380B3EB0(v4, type metadata accessor for _DDNodeDecoration.Kind);
      return 52;
    }

    else
    {
      sub_2380B3EB0(v4, type metadata accessor for _DDNodeDecoration.Kind);
      return 48;
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
    v20 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_21:
    v18 = v20;
    v19 = v4;
    goto LABEL_22;
  }

  v21 = *v4;
  v22 = *(v4 + 4);
  v23 = *(v4 + 10);

  if (v21)
  {
    return 49;
  }

  else
  {
    return 50;
  }
}

uint64_t sub_2380AFDEC()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _DDNodeDecoration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _DDNodeDecorationCombination(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + *(type metadata accessor for _DDNodeViewModel() + 24));
  v15 = *(v14 + 16);
  if (!v15)
  {
    swift_storeEnumTagMultiPayload();
    return sub_23815463C();
  }

  if (v15 != 1)
  {
    *v13 = v14;
    swift_storeEnumTagMultiPayload();

    sub_2380B3EB0(v13, type metadata accessor for _DDNodeDecorationCombination);
    return sub_23815463C();
  }

  sub_2380B3DB0(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v13, type metadata accessor for _DDNodeDecoration);
  swift_storeEnumTagMultiPayload();
  sub_2380B25FC(v13, v9);
  sub_2380B3DB0(v9, v4, type metadata accessor for _DDNodeDecoration.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v17 = sub_2381545BC();
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v17 = sub_2381545AC();
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v19 = sub_23815463C();
      sub_2380B3EB0(v9, type metadata accessor for _DDNodeDecoration);
      v20 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
      v21 = v4;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_14:
    sub_2380B3EB0(v4, type metadata accessor for _DDNodeDecoration.Kind);
LABEL_16:
    v17 = sub_23815463C();
    goto LABEL_17;
  }

  sub_2380B3EB0(v4, type metadata accessor for _DDNodeDecoration.Kind);
  v17 = sub_2381545AC();
LABEL_17:
  v19 = v17;
  v20 = type metadata accessor for _DDNodeDecoration;
  v21 = v9;
LABEL_18:
  sub_2380B3EB0(v21, v20);
  return v19;
}

uint64_t sub_2380B0104(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v90 = a1;
  v91 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA8, &unk_23815A800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v88 - v8;
  v10 = sub_23815364C();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  MEMORY[0x28223BE20](v10);
  v89 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBF8, &unk_23815A9B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v88 - v19;
  v21 = sub_23815281C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for _DDNodeViewModel();
  v27 = &v4[v26[5]];
  LODWORD(v28) = v27[32];
  if (v28 > 2)
  {
    v52 = *(v27 + 2);
    v53 = *(v27 + 3);
    v54 = *v27;
    if (v28 == 3)
    {
      v60 = *&v4[v26[12]];
      v61 = *(v27 + 1);

      v91 = v4;
      sub_2380BE980(v4, v9);
      v62 = v92;
      v63 = v93;
      if ((*(v92 + 48))(v9, 1, v93) == 1)
      {
        sub_238071284(v9, &qword_27DEEBBA8, &unk_23815A800);
        v4 = v91;
      }

      else
      {
        v75 = v89;
        (*(v62 + 32))();
        v76 = sub_23815363C();
        if (v77 >> 60 == 15)
        {
          (*(v62 + 8))(v75, v63);
          v4 = v91;
        }

        else
        {
          v79 = v76;
          v80 = v77;
          v81 = objc_allocWithZone(MEMORY[0x277D755B8]);
          sub_238085D80(v79, v80);
          v82 = v79;
          v83 = sub_23815274C();
          v84 = [v81 initWithData_];

          sub_238087244(v82, v80);
          v85 = v84;
          v4 = v91;
          if (v85)
          {
            v86 = sub_23815466C();
            sub_238087244(v82, v80);
            (*(v92 + 8))(v89, v93);
            return v86;
          }

          (*(v92 + 8))(v89, v93);
          sub_238087244(v82, v80);
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (!v27[32])
    {
      v55 = *v27;
      v56 = *(v27 + 1);
      v57 = *(v27 + 3);
      v58 = *(v27 + 2);

      sub_23815282C();
      if ((*(v22 + 48))(v20, 1, v21) == 1)
      {
        sub_238071284(v20, &qword_27DEEBBF8, &unk_23815A9B0);
        return sub_23815467C();
      }

      else
      {
        (*(v22 + 32))(v25, v20, v21);
        v74 = sub_23815280C();
        (*(v22 + 8))(v25, v21);
        return v74;
      }
    }

    if (v28 == 1)
    {
      if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (a3 > -9.22337204e18)
      {
        if (a3 < 9.22337204e18)
        {
          v28 = *(v27 + 2);
          v29 = *(v27 + 3);
          v30 = *(v27 + 1);
          v31 = *v27;
          v32 = *&v4[v26[11]];
          v33 = *(v13 + 32);
          v34 = sub_238153A2C();
          (*(*(v34 - 8) + 16))(&v16->i8[v33], v90, v34);
          v35 = *(v13 + 36);
          v36 = sub_2381537EC();
          (*(*(v36 - 8) + 16))(&v16->i8[v35], v91, v36);
          v16->i64[0] = v31;
          v16->i64[1] = v30;
          v37 = v30;
          v16[1] = vdupq_n_s64(0x40uLL);
          v16[2].i64[0] = a3;
          v38 = v28;
          sub_2380B3E48(v31, v30, v28, v29, 1u);

          v4 = sub_2380C3CE8(v16->i64);
          v20 = v39;
          v93 = v40;
          LOBYTE(v28) = v41;
          v42 = ~v41;
          sub_238070070(v31, v37, v38, v29, 1u);
          sub_2380B3EB0(v16, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
          if (v42)
          {
            if ((v28 & 1) == 0)
            {

              v78 = v93;

              sub_2380B3F60(v4, v20, v78, v28);
              return v78;
            }

            if (qword_27DEEA060 == -1)
            {
              goto LABEL_10;
            }

            goto LABEL_43;
          }

          return 0;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        swift_once();
LABEL_10:
        v43 = sub_23815293C();
        __swift_project_value_buffer(v43, qword_27DEEBBB0);
        sub_2380B3F10(v4, v20, v93, 1);
        v44 = sub_23815291C();
        v45 = sub_2381550DC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v48;
          *v47 = v48;
          _os_log_impl(&dword_238060000, v44, v45, "Failed to load contactInfo: %@", v46, 0xCu);
          sub_238071284(v47, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v47, -1, -1);
          MEMORY[0x2383EA8A0](v46, -1, -1);

          v49 = v4;
          v50 = v20;
          v51 = v93;
        }

        else
        {

          v87 = v93;
          sub_2380B3F60(v4, v20, v93, v28);
          v49 = v4;
          v50 = v20;
          v51 = v87;
        }

        sub_2380B3F60(v49, v50, v51, v28);
        return 0;
      }

      __break(1u);
      goto LABEL_42;
    }

    v52 = *(v27 + 2);
    v53 = *(v27 + 3);
    v54 = *v27;
  }

  v61 = *(v27 + 1);

LABEL_20:
  v64 = *&v4[v26[11]];
  result = sub_2380BECE0(64, 64, a3);
  if (v65 == -1)
  {
    sub_238070070(v54, v61, v52, v53, v28);
    return 0;
  }

  if (v65)
  {
    v66 = v65;
    v67 = result;
    sub_238070070(v54, v61, v52, v53, v28);
    if (qword_27DEEA060 != -1)
    {
      swift_once();
    }

    v68 = sub_23815293C();
    __swift_project_value_buffer(v68, qword_27DEEBBB0);
    sub_2380B3E18(v67, 1);
    v69 = sub_23815291C();
    v70 = sub_2381550DC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 4) = v73;
      *v72 = v73;
      _os_log_impl(&dword_238060000, v69, v70, "Failed to generate placeholder: %@", v71, 0xCu);
      sub_238071284(v72, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v72, -1, -1);
      MEMORY[0x2383EA8A0](v71, -1, -1);
    }

    else
    {

      sub_2380B3E24(v67, v66);
    }

    sub_2380B3E24(v67, v66);
    return 0;
  }

  return result;
}

uint64_t sub_2380B0AC4()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBBB0);
  __swift_project_value_buffer(v0, qword_27DEEBBB0);
  v1 = *MEMORY[0x277D04790];
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t sub_2380B0B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBE0, &unk_23815A990);
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v50 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = 0;
  v23 = 0;
  v42 = a1;
  v43 = a2;
  v24 = *(a2 + 16);
  v25 = *(a1 + 16);
  v47 = v5;
  v48 = v25;
  v51 = (v5 + 56);
  v44 = v24;
  v45 = (v5 + 48);
  v49 = &v42 - v20;
  v26 = v24 == 0;
  if (v24)
  {
    goto LABEL_3;
  }

LABEL_2:
  v27 = 1;
  v23 = v24;
  v28 = v51;
  while (1)
  {
    v30 = *v28;
    v31 = 1;
    result = (*v28)(v21, v27, 1, v4);
    v32 = v48;
    if (v22 != v48)
    {
      if (v22 >= v48)
      {
        goto LABEL_25;
      }

      result = sub_2380B3DB0(v42 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22, v50, type metadata accessor for _DDNodeDecoration);
      v32 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_27;
      }

      v31 = 0;
      v21 = v49;
    }

    v33 = v50;
    v30(v50, v31, 1, v4);
    v34 = *(v46 + 48);
    sub_2380B258C(v21, v14);
    sub_2380B258C(v33, &v14[v34]);
    v35 = *v45;
    v36 = (*v45)(v14, 1, v4);
    result = v35(&v14[v34], 1, v4);
    if (v36 == 1)
    {
      if (result == 1)
      {
        return result;
      }

      sub_238071284(&v14[v34], &qword_27DEEBA48, &qword_23815BF00);
      return 0;
    }

    if (result == 1)
    {
      v41 = v14;
      goto LABEL_21;
    }

    sub_2380B25FC(v14, v11);
    sub_2380B25FC(&v14[v34], v9);
    if ((_s17DeviceDiscoveryUI17_DDNodeDecorationV4KindO2eeoiySbAE_AEtFZ_0(v11, v9) & 1) == 0 || (v37 = *(v4 + 20), v38 = *&v11[v37], v39 = *&v9[v37], (sub_2381546AC() & 1) == 0) || (v40 = *(v4 + 24), (sub_2381527AC() & 1) == 0))
    {
      sub_2380B3EB0(v9, type metadata accessor for _DDNodeDecoration);
      v41 = v11;
LABEL_21:
      sub_2380B3EB0(v41, type metadata accessor for _DDNodeDecoration);
      return 0;
    }

    sub_2380B3EB0(v9, type metadata accessor for _DDNodeDecoration);
    result = sub_2380B3EB0(v11, type metadata accessor for _DDNodeDecoration);
    v22 = v32;
    v21 = v49;
    v24 = v44;
    v26 = v23 >= v44;
    if (v23 == v44)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v26)
    {
      break;
    }

    result = sub_2380B3DB0(v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v23, v21, type metadata accessor for _DDNodeDecoration);
    v29 = __OFADD__(v23++, 1);
    v28 = v51;
    if (v29)
    {
      goto LABEL_26;
    }

    v27 = 0;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}