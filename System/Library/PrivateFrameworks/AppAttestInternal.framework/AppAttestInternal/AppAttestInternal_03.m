id AppAttestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppAttestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AppAttestHandler()
{
  result = qword_28136F370;
  if (!qword_28136F370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261B7F34()
{
  result = sub_2261E3CDC();
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

void sub_2261B8014(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v182 = a3;
  v191 = *MEMORY[0x277D85DE8];
  v169 = type metadata accessor for Key(0);
  v7 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v170 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppUUID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v162 - v15;
  v178 = sub_2261E3C3C();
  v175 = *(v178 - 8);
  v17 = *(v175 + 64);
  v18 = MEMORY[0x28223BE20](v178);
  v174 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v171 = &v162 - v21;
  MEMORY[0x28223BE20](v20);
  v176 = &v162 - v22;
  v23 = sub_2261E3CDC();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v31 = &v162 - v30;
  v177 = a1;
  if (!a2)
  {
    a1 = 7104878;
    goto LABEL_9;
  }

  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
LABEL_9:
    v179 = a1;
    v172 = v12;
    v173 = v16;
    v38 = v28;
    v167 = v9;
    v181 = a4;
    v39 = v182;
    v40 = v29;
    sub_2261AA444();
    v41 = sub_22619DFA0();

    v180 = v40;
    v42 = *(v40 + 16);
    if (a2)
    {
      v43 = a2;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    if ((v41 & 1) == 0)
    {
      v42(v27, &v39[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v38);
      v49 = sub_2261E3FFC();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v188 = 0xD00000000000002ELL;
      *(&v188 + 1) = 0x80000002261EBE00;

      MEMORY[0x22AA782B0](v179, v43);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v49, v188, *(&v188 + 1), 0xD000000000000061, 0x80000002261EBE30, 48);

      (*(v180 + 8))(v27, v38);
      v50 = sub_2261A9CDC(3, 0xD000000000000020, 0x80000002261EBEA0);
      (*(v181 + 16))(v181, 0, 0, v50);

LABEL_36:
      v134 = *MEMORY[0x277D85DE8];
      return;
    }

    v168 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
    v42(v31, &v39[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v38);
    v44 = sub_2261E400C();
    *&v188 = 0;
    *(&v188 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&error = 0xD00000000000001BLL;
    *(&error + 1) = 0x80000002261EBED0;

    MEMORY[0x22AA782B0](v179, v43);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v45 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448(v187, v45);

    v188 = v187[0];
    v189 = v187[1];
    v190 = v187[2];
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v47 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v47);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v44, error, *(&error + 1), 0xD000000000000061, 0x80000002261EBE30, 53);

    (*(v180 + 8))(v31, v38);
    v48 = v173;
    sub_2261AC2DC(v177, a2, v173);
    v165 = v46;
    v166 = 0;
    v164 = a2;
    v180 = "n is ineligible. { clientUUID=";
    v51 = v175;
    v52 = v178;
    v53 = (*(v175 + 48))(v48, 1, v178);
    if (v53 == 1)
    {
      sub_22619A7B4(v48, &qword_27D78DF28, &unk_2261E6FD0);
      v54 = v176;
      sub_2261E3C2C();
      v55 = sub_2261E400C();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v188 = 0xD000000000000021;
      *(&v188 + 1) = 0x80000002261EBF50;
      v56 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v56);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v57 = v180;
      v58 = v182;
      sub_2261A4EAC(v55, v188, *(&v188 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 62);
      v59 = v178;

      v60 = *(v51 + 16);
      v61 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    else
    {
      v62 = v171;
      (*(v51 + 32))(v171, v48, v52);
      v179 = *(v51 + 16);
      (v179)(v176, v62, v52);
      LODWORD(v173) = sub_2261E400C();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v188 = 0xD00000000000001DLL;
      *(&v188 + 1) = 0x80000002261EC1B0;
      v63 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v63);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v57 = v180;
      v58 = v182;
      sub_2261A4EAC(v173, v188, *(&v188 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 59);
      v59 = v178;
      v54 = v176;

      (*(v51 + 8))(v62, v59);
      v61 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v60 = v179;
    }

    v64 = v174;
    v179 = v60;
    v171 = v61;
    (v60)(v174, v54, v59);
    v65 = sub_2261E3C1C();
    sub_2261C350C(v64, v65, v66, v172);
    LOBYTE(v64) = sub_2261E400C();
    *&v188 = 0;
    *(&v188 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v188 = 0xD000000000000016;
    *(&v188 + 1) = 0x80000002261EBF80;
    v67 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v67);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v64, v188, *(&v188 + 1), 0xD000000000000061, v57 | 0x8000000000000000, 72);

    type metadata accessor for SecurityController();
    v68 = sub_2261A0FCC(*&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken], *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8], *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16], *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24]);
    v69 = sub_2261A2BD8();
    v70 = *v69;
    v71 = v69[1];

    v72 = MEMORY[0x277D839B0];
    v73 = isRunningInRecovery();
    sub_2261A10B4(v70, v71, v73 & 1, v72, &v188);

    v173 = v68;
    if (v188 == 2 || (v188 & 1) == 0)
    {
      v75 = 0;
    }

    else
    {
      *&error = 0;
      if (!*MEMORY[0x277CDBF00])
      {
        __break(1u);
        return;
      }

      v74 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
      v75 = v74;
      v76 = error;
      if (error)
      {
        type metadata accessor for CFError(0);
        sub_2261A2790();
        v77 = v76;
        v78 = swift_allocError();
        *v79 = v77;
        v80 = v75;
        LOBYTE(v77) = sub_2261E3FFC();
        *&v188 = 0;
        *(&v188 + 1) = 0xE000000000000000;
        sub_2261E410C();
        MEMORY[0x22AA782B0](0xD00000000000003FLL, 0x80000002261EC170);
        swift_getErrorValue();
        v81 = sub_2261E429C();
        MEMORY[0x22AA782B0](v81);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v77, v188, *(&v188 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 90);

        if (error)
        {
        }
      }

      else
      {
        v119 = v74;
      }
    }

    isRunningInRecovery();
    v82 = v166;
    v83 = sub_2261C854C(v75);
    if (v82)
    {

      v84 = sub_2261E3FFC();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v183 = 0xD00000000000001ELL;
      *(&v183 + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v85 = sub_2261E429C();
      MEMORY[0x22AA782B0](v85);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v86 = v176;
      v87 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v87);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v88 = *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

      sub_22619C448(&v188, v89);

      error = v188;
      v185 = v189;
      v186 = v190;
      v90 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v90);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v84, v183, *(&v183 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 101);

      *&error = 0;
      *(&error + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&error = 0xD00000000000001ELL;
      *(&error + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v91 = sub_2261E429C();
      MEMORY[0x22AA782B0](v91);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v92 = sub_2261A9CDC(0, error, *(&error + 1));

      (*(v181 + 16))(v181, 0, 0, v92);

      sub_2261AC974(v172, type metadata accessor for AppUUID);
      (*(v175 + 8))(v86, v178);
      goto LABEL_36;
    }

    v93 = v83;

    v94 = v93;
    v95 = sub_2261C9E2C();
    v97 = v96;

    if (!v97)
    {
      v117 = sub_2261E3FFC();
      sub_2261A4EAC(v117, 0xD000000000000031, 0x80000002261EBFC0, 0xD000000000000061, v180 | 0x8000000000000000, 107);
      v118 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EBFC0);
      (*(v181 + 16))(v181, 0, 0, v118);

      sub_2261AC974(v172, type metadata accessor for AppUUID);
      (*(v175 + 8))(v176, v178);
      goto LABEL_36;
    }

    v166 = v75;
    v163 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;
    v98 = *&v58[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

    v99 = sub_22619C044();

    v100 = v174;
    (v179)(v174, v172, v178);
    v179 = v94;
    v101 = v170;
    sub_2261C3918(v99 & 1, v100, v94, v95, v97, v170);
    v102 = sub_2261E400C();
    *&v188 = 0;
    *(&v188 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v103 = v182;
    *&v188 = 0xD000000000000015;
    *(&v188 + 1) = 0x80000002261EC000;
    v104 = v169;
    v105 = &v101[*(v169 + 28)];
    v106 = *v105;
    v107 = v105[1];
    MEMORY[0x22AA782B0](*v105, v107);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v102, v188, *(&v188 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 114);

    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v189 + 1) = v104;
    *&v190 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v188);
    sub_2261AC9D4(v101, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    v110 = v109;
    nullsub_1(v109);
    sub_2261C3CDC(&v188, v110, &error);
    v174 = v107;

    __swift_destroy_boxed_opaque_existential_0(&v188);
    v120 = *(&error + 1);
    v121 = v185;
    if (BYTE1(v185) == 1)
    {
      v122 = error;
      sub_22619C838();
      v123 = sub_2261E3FFC();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v183 = v188;
      MEMORY[0x22AA782B0](0xD000000000000029, 0x80000002261EC140);
      v188 = v122;
      LOBYTE(v189) = v121 & 1;
      sub_22619C7B4();
      v124 = sub_2261E429C();
      v126 = v125;
      sub_2261795CC(v122, *(&v122 + 1), v121, 1);
      MEMORY[0x22AA782B0](v124, v126);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v127 = v172;
      MEMORY[0x22AA782B0](*&v172[*(v167 + 20)], *&v172[*(v167 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v128 = *&v103[v163];

      sub_22619C448(&v188, v129);

      error = v188;
      v185 = v189;
      v186 = v190;
      v130 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v130);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v123, v183, *(&v183 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 119);

      v131 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
      (*(v181 + 16))(v181, 0, 0, v131);

      sub_2261795CC(v122, *(&v122 + 1), v121, 1);
      v132 = v127;
LABEL_33:
      sub_2261AC974(v132, type metadata accessor for AppUUID);
      (*(v175 + 8))(v176, v178);
LABEL_34:
      v133 = v101;
LABEL_35:
      sub_2261AC974(v133, type metadata accessor for Key);
      goto LABEL_36;
    }

    LODWORD(v171) = v185;
    if (!error)
    {
      v139 = v171;
      v111 = sub_2261E3FFC();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v183 = 0xD000000000000027;
      *(&v183 + 1) = 0x80000002261EC020;
      v112 = v172;
      MEMORY[0x22AA782B0](*&v172[*(v167 + 20)], *&v172[*(v167 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v113 = *&v103[v163];

      sub_22619C448(&v188, v114);

      error = v188;
      v185 = v189;
      v186 = v190;
      v115 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v115);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v111, v183, *(&v183 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 126);

      v116 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
      (*(v181 + 16))(v181, 0, 0, v116);

      sub_2261AC95C(0, v120, v139);
      v132 = v112;
      goto LABEL_33;
    }

    v169 = *(&error + 1);
    v162 = error;
    v135 = sub_2261E400C();
    *&v188 = 0;
    *(&v188 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v188 = 0xD00000000000001DLL;
    *(&v188 + 1) = 0x80000002261EC070;
    MEMORY[0x22AA782B0](v106, v174);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v135, v188, *(&v188 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 131);

    v136 = v176;
    v137 = sub_2261E3C1C();
    if (v164)
    {
      if (v137 == v177 && v138 == v164)
      {

LABEL_51:
        sub_2261E3C1C();
        v160 = sub_2261E3DAC();
        v161 = sub_2261E3DAC();
        (*(v181 + 16))(v181, v160, v161, 0);

        sub_2261795CC(v162, v169, v171, 0);
        sub_2261AC974(v172, type metadata accessor for AppUUID);
        (*(v175 + 8))(v136, v178);
        goto LABEL_34;
      }

      v140 = sub_2261E425C();

      if (v140)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___appUUIDDataManager, type metadata accessor for AppUUIDDataManager, sub_2261DD6B8);
    *(&v189 + 1) = v167;
    *&v190 = &off_28395C880;
    v141 = __swift_allocate_boxed_opaque_existential_1(&v188);
    sub_2261AC9D4(v172, v141, type metadata accessor for AppUUID);
    v142 = MEMORY[0x277CC9318];
    nullsub_1(MEMORY[0x277CC9318]);
    sub_2261DD794(&v188, v142, &error);

    __swift_destroy_boxed_opaque_existential_0(&v188);
    v149 = error;
    v150 = v185;
    if (BYTE1(v185) == 1)
    {
      sub_22619C838();
      LODWORD(v177) = sub_2261E3FFC();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v183 = v188;
      MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC110);
      v188 = v149;
      LOBYTE(v189) = v150 & 1;
      sub_2261E413C();
      sub_2261B5424(v149, *(&v149 + 1), v150, 1, sub_2261A28B8, sub_22619C830);
      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v151 = v172;
      MEMORY[0x22AA782B0](*&v172[*(v167 + 20)], *&v172[*(v167 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v152 = *&v182[v163];

      sub_22619C448(&v188, v153);

      error = v188;
      v185 = v189;
      v186 = v190;
      v154 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v154);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v177, v183, *(&v183 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 137);

      v155 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
      (*(v181 + 16))(v181, 0, 0, v155);

      sub_2261B5424(v149, *(&v149 + 1), v150, 1, sub_2261A28B8, sub_22619C830);
      sub_2261795CC(v162, v169, v171, 0);
      v156 = v151;
    }

    else
    {
      if (*(&error + 1) >> 60 != 15)
      {
        sub_22619D8F4(error, *(&error + 1));
        v159 = sub_2261E400C();
        sub_2261A4EAC(v159, 0xD000000000000023, 0x80000002261EC0E0, 0xD000000000000061, v180 | 0x8000000000000000, 149);
        sub_2261B5424(v149, *(&v149 + 1), v150, 0, sub_2261A28B8, sub_22619C830);
        sub_2261B5424(v149, *(&v149 + 1), v150, 0, sub_2261A28B8, sub_22619C830);
        v136 = v176;
        v101 = v170;
        goto LABEL_51;
      }

      v157 = error;
      v158 = v185;
      v143 = sub_2261E3FFC();
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v183 = 0xD000000000000027;
      *(&v183 + 1) = 0x80000002261EC090;
      v144 = v172;
      MEMORY[0x22AA782B0](*&v172[*(v167 + 20)], *&v172[*(v167 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v145 = *&v182[v163];

      sub_22619C448(&v188, v146);

      error = v188;
      v185 = v189;
      v186 = v190;
      v147 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v147);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v143, v183, *(&v183 + 1), 0xD000000000000061, v180 | 0x8000000000000000, 144);

      v148 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
      (*(v181 + 16))(v181, 0, 0, v148);

      sub_2261ACA3C(v157, *(&v149 + 1), v158);
      sub_2261795CC(v162, v169, v171, 0);
      v156 = v144;
    }

    sub_2261AC974(v156, type metadata accessor for AppUUID);
    (*(v175 + 8))(v176, v178);
    v133 = v170;
    goto LABEL_35;
  }

  v33 = sub_2261E3FFC();
  sub_2261A4EAC(v33, 0xD000000000000015, 0x80000002261EC1D0, 0xD000000000000061, 0x80000002261EBE30, 41);
  v34 = sub_2261A9CDC(1, 0xD000000000000013, 0x80000002261EC1F0);
  v35 = *(a4 + 16);
  v182 = v34;
  v35(a4, 0, 0);
  v36 = *MEMORY[0x277D85DE8];
  v37 = v182;
}

void sub_2261B9D60(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char *a7, void (**a8)(const void *, void, char *))
{
  v283 = a7;
  v280 = a5;
  v281 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v272 = &v253[-v15];
  v16 = sub_2261E3CDC();
  v278 = *(v16 - 8);
  v279 = v16;
  v17 = v278[8];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v253[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v273 = &v253[-v21];
  v274 = type metadata accessor for Key(0);
  v22 = *(*(v274 - 8) + 64);
  MEMORY[0x28223BE20](v274);
  v276 = &v253[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v253[-v26];
  v28 = sub_2261E3C3C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v275 = &v253[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v271 = v32;
  MEMORY[0x28223BE20](v31);
  v277 = &v253[-v33];
  v34 = swift_allocObject();
  v35 = a4;
  v282 = v34;
  *(v34 + 16) = a8;
  v36 = a8;
  v37 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v37 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    goto LABEL_15;
  }

  v38 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v38 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    goto LABEL_15;
  }

  v39 = v281 >> 62;
  if ((v281 >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_15;
    }

    v40 = *(v280 + 16);
    v41 = *(v280 + 24);
LABEL_14:
    if (v40 != v41)
    {
      goto LABEL_19;
    }

LABEL_15:
    _Block_copy(a8);
    v42 = sub_2261E3FFC();
    sub_2261A4EAC(v42, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 166);
    v43 = 0x80000002261EC1F0;
    v44 = 1;
    v45 = 0xD000000000000013;
LABEL_16:
    v283 = sub_2261A9CDC(v44, v45, v43);
    v36[2](v36, 0, v283);

    v46 = v283;

    return;
  }

  if (v39)
  {
    v40 = v280;
    v41 = v280 >> 32;
    goto LABEL_14;
  }

  if ((v281 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v269 = a3;
  v270 = v35;
  v267 = v28;
  v268 = v29;
  _Block_copy(a8);
  sub_2261AA444();
  v47 = sub_22619DFA0();

  v48 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v47 & 1) == 0)
  {
    v54 = sub_2261E3FFC();
    v311.n128_u64[0] = 0;
    v311.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v269, v270);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v55 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v55);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v54, v311.n128_i64[0], v311.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 172);

    v45 = 0xD000000000000020;
    v43 = 0x80000002261EBEA0;
    v44 = 3;
    goto LABEL_16;
  }

  v263 = v36;
  LODWORD(v264) = sub_2261E400C();
  v311.n128_u64[0] = 0;
  v311.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v284 = v311;
  v262 = 0xD00000000000001CLL;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v269, v270);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v49 = v283;
  v50 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(v297, v50);

  v311 = v297[0];
  v312 = v297[1];
  v313 = v297[2];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v52 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v52);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v265 = "n is ineligible. { clientUUID=";
  v266 = v48;
  sub_2261A4EAC(v264, v284, *(&v284 + 1), 0xD000000000000061, 0x80000002261EBE30, 177);

  sub_2261AC2DC(a1, a2, v27);
  v53 = v49;
  v56 = v262;
  v264 = 0;
  v261 = v51;
  v58 = v267;
  v57 = v268;
  v59 = (*(v268 + 48))(v27, 1, v267);
  if (v59 != 1)
  {
    v68 = *(v57 + 32);
    v68(v277, v27, v58);
    if (sub_2261E3C1C() == a1 && v69 == a2)
    {
    }

    else
    {
      v70 = sub_2261E425C();

      if ((v70 & 1) == 0)
      {
        v100 = sub_2261E3FFC();
        v311.n128_u64[0] = 0;
        v311.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v299 = v311;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v91 = v277;
        v101 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v101);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v269, v270);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v102 = *&v283[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

        sub_22619C448(&v311, v103);

        v284 = v311;
        v285 = v312;
        v286 = v313;
        v104 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v104);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v100, v299.n128_i64[0], v299.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 187);

        v105 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v263[2](v263, 0, v105);

        goto LABEL_37;
      }
    }

    v260 = v57 + 32;
    v71 = v56;
    v262 = v68;
    v72 = sub_2261E400C();
    v311.n128_u64[0] = 0;
    v311.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v73 = v277;
    v74 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v74);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v75 = v283;
    sub_2261A4EAC(v72, v311.n128_i64[0], v311.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 192);

    v76 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;
    v77 = *&v75[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

    v78 = sub_22619C044();

    v79 = v268 + 16;
    v80 = v275;
    v81 = v73;
    v82 = *(v268 + 16);
    v82(v275, v81, v267);
    v83 = v270;

    v84 = v276;
    sub_2261C3918(v78 & 1, v80, 0, v269, v83, v276);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v312 + 1) = v274;
    v313.n128_u64[0] = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v311);
    sub_2261AC9D4(v84, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    v86 = v264;
    sub_2261C74AC(&v311, v87, &v284);
    if (v86)
    {

      sub_22619A7B4(&v311, &qword_27D78DFD0, &qword_2261E6FF0);
      v88 = 0;
      v89 = 65280;
LABEL_32:
      v90 = sub_2261E3FFC();
      v311.n128_u64[0] = 0;
      v311.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v311.n128_u64[0] = v71;
      v311.n128_u64[1] = 0x80000002261EC3E0;
      v91 = v277;
      v92 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v92);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v90, v311.n128_i64[0], v311.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 205);

      v93 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v263[2](v263, 0, v93);

      sub_2261AC95C(0, v88, v89);
LABEL_35:
      sub_2261AC974(v84, type metadata accessor for Key);
LABEL_37:
      (*(v268 + 8))(v91, v267);
LABEL_38:

      return;
    }

    v259 = v79;
    v274 = v76;

    sub_22619A7B4(&v311, &qword_27D78DFD0, &qword_2261E6FF0);
    v94 = v284;
    v89 = v285;
    if (BYTE1(v285) == 1)
    {
      sub_22619C838();
      LODWORD(v281) = sub_2261E3FFC();
      v311.n128_u64[0] = 0;
      v311.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      *&v284 = 0xD00000000000001DLL;
      *(&v284 + 1) = 0x80000002261EC6B0;
      v311 = v94;
      LOBYTE(v312) = v89 & 1;
      sub_22619C7B4();
      v95 = sub_2261E429C();
      v97 = v96;
      sub_2261795CC(v94, *(&v94 + 1), v89, 1);
      MEMORY[0x22AA782B0](v95, v97);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v91 = v277;
      v98 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v98);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v281, v284, *(&v284 + 1), 0xD000000000000061, v265 | 0x8000000000000000, 198);

      v99 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v263[2](v263, 0, v99);

      sub_2261795CC(v94, *(&v94 + 1), v89, 1);
      goto LABEL_35;
    }

    v264 = *(&v284 + 1);
    if (!v284)
    {
      v88 = v264;
      goto LABEL_32;
    }

    v256 = v82;
    v258 = v285;
    v107 = v278;
    v106 = v279;
    v108 = v273;
    (v278[2])(v273, &v75[v266], v279);
    v257 = v94;
    v109 = v94;
    v110 = sub_2261E400C();
    v311.n128_u64[0] = 0;
    v311.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
    v111 = sub_2261C9E2C();
    if (v112)
    {
      v113 = v112;
    }

    else
    {
      v111 = 7104878;
      v113 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v111, v113);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v110, v311.n128_i64[0], v311.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 210);

    (*(v107 + 8))(v108, v106);
    v114 = *&v75[v274];

    v115 = sub_22619C044();

    v116 = sub_2261E3C1C();
    v118 = v117;
    v278 = v109;
    v119 = sub_2261C9E2C();
    if (v120)
    {
      v121 = v119;
      v122 = v120;
    }

    else
    {
      v122 = v270;

      v121 = v269;
    }

    v123 = swift_allocObject();
    v311.n128_u8[0] = 0;
    sub_2261C378C(v115 & 1, 0, v116, v118, v121, v122, v298);
    v124 = v298[1];
    *(v123 + 16) = v298[0];
    *(v123 + 32) = v124;
    *(v123 + 48) = v298[2];
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
    v125 = *(v123 + 16);
    v126 = *(v123 + 20);
    v127 = *(v123 + 24);
    v129 = *(v123 + 32);
    v128 = *(v123 + 40);
    v279 = v123;
    v130 = *(v123 + 48);
    v131 = *(v123 + 56);
    *(&v312 + 1) = &type metadata for AssertionCounter;
    v313.n128_u64[0] = &off_28395C888;
    v132 = swift_allocObject();
    v311.n128_u64[0] = v132;
    *(v132 + 16) = v125;
    *(v132 + 20) = v126;
    *(v132 + 24) = v127;
    *(v132 + 32) = v129;
    *(v132 + 40) = v128;
    *(v132 + 48) = v130;
    *(v132 + 56) = v131;

    sub_2261A8A9C(&v311, MEMORY[0x277D83B88], &v284);

    sub_22619A7B4(&v311, &qword_27D78DFD0, &qword_2261E6FF0);
    v144 = v284;
    if (BYTE1(v285) == 1)
    {
      v145 = v285;
      v146 = sub_2261E3FFC();
      v311.n128_u64[0] = 0;
      v311.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v299 = v311;
      MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC650);
      v311 = v144;
      LOBYTE(v312) = v145 & 1;
      sub_22619C7B4();
      v147 = sub_2261E429C();
      v149 = v148;
      sub_226179098(v144, *(&v144 + 1), v145, 1);
      MEMORY[0x22AA782B0](v147, v149);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v134 = v277;
      v150 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v150);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v151 = *&v283[v274];

      sub_22619C448(&v311, v152);

      v284 = v311;
      v285 = v312;
      v286 = v313;
      v153 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v153);

      MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
      sub_2261A4EAC(v146, v299.n128_i64[0], v299.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 217);

      v154 = sub_2261A9CDC(0, 0xD000000000000027, 0x80000002261EC680);
      v263[2](v263, 0, v154);

      v155 = v257;
      v156 = v264;
      v157 = v258;
      sub_2261795CC(v257, v264, v258, 0);
      v158 = v155;
      v159 = v156;
      v160 = v157;
    }

    else
    {
      v161 = v276;
      v162 = v283;
      if ((BYTE8(v284) & 1) != 0 || v284 > 1)
      {
        v133 = sub_2261E3FFC();
        v311.n128_u64[0] = 0;
        v311.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();

        v299.n128_u64[0] = 0xD000000000000027;
        v299.n128_u64[1] = 0x80000002261EC450;
        v134 = v277;
        v135 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v135);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v136 = *&v162[v274];

        sub_22619C448(&v311, v137);

        v284 = v311;
        v285 = v312;
        v286 = v313;
        v138 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v138);

        MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
        sub_2261A4EAC(v133, v299.n128_i64[0], v299.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 225);

        v139 = sub_2261A9CDC(1, 0xD000000000000028, 0x80000002261EC480);
        v263[2](v263, 0, v139);

        v140 = v257;
        v141 = v264;
        v142 = v258;
        sub_2261795CC(v257, v264, v258, 0);
        sub_2261795CC(v140, v141, v142, 0);
        v143 = v161;
LABEL_52:
        sub_2261AC974(v143, type metadata accessor for Key);
        (*(v268 + 8))(v134, v267);
LABEL_53:

        goto LABEL_38;
      }

      v163 = sub_2261E400C();
      v311.n128_u64[0] = 0;
      v311.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD00000000000005CLL, 0x80000002261EC4B0);
      *&v284 = v144;
      v164 = sub_2261E423C();
      MEMORY[0x22AA782B0](v164);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v163, v311.n128_i64[0], v311.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 230);

      v165 = *&v162[v274];

      v166 = sub_22619C044();

      v299.n128_u8[0] = v166 & 1;
      LOBYTE(v301) = 0;
      sub_2261AF3A8();
      sub_2261E3EFC();
      sub_2261E3EFC();
      v167 = v279;
      if (*&v311 == v284)
      {

        v168 = sub_2261CDB98();
      }

      else
      {
        v169 = sub_2261E425C();

        if (v169)
        {
          v168 = sub_2261CDB98();
        }

        else
        {
          v168 = sub_2261CDAC8();
        }
      }

      v171 = *v168;
      v170 = v168[1];
      sub_22619D8F4(*v168, v170);
      v172 = sub_2261CDBE8();
      v173 = v167[2];
      v319[0] = v167[1];
      v319[1] = v173;
      v174 = v167[2];
      v319[2] = v167[3];
      v175 = *v172;
      v176 = v167[3];
      v320 = v174;
      v321[0] = v176;
      sub_2261790A8(v257, v264, v258, 0);
      sub_2261AF3FC(&v320, &v311);
      sub_2261AF3FC(v321, &v311);
      sub_2261CD7CC(v171, v170, v175, v319, v278, &v299);
      sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
      v273 = sub_2261CBA0C(1, &v299);
      v178 = v177;
      v255 = v179;

      v254 = v178;
      if ((v178 & 0x100) != 0)
      {
        v198 = v254;
        v199 = v254 & 1;
        v200 = v273;
        v201 = v255;
        sub_22619C838();
        LODWORD(v281) = sub_2261E3FFC();
        v311.n128_u64[0] = 0;
        v311.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v301 = v311;
        MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
        v311.n128_u64[0] = v200;
        v311.n128_u64[1] = v201;
        LOBYTE(v312) = v199;
        sub_2261E413C();
        sub_2261B5424(v200, v201, v198, 1, sub_22619C840, sub_22619C830);
        MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
        v202 = v277;
        v203 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v203);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v204 = *&v283[v274];

        sub_22619C448(&v311, v205);

        v284 = v311;
        v285 = v312;
        v286 = v313;
        v206 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v206);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v281, v301, *(&v301 + 1), 0xD000000000000061, v265 | 0x8000000000000000, 240);

        v207 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
        v263[2](v263, 0, v207);

        sub_2261AF4E8(&v299);
        sub_2261B5424(v200, v201, v198, 1, sub_22619C840, sub_22619C830);
        v208 = v257;
        v209 = v264;
        v210 = v258;
        sub_2261795CC(v257, v264, v258, 0);
        sub_2261795CC(v208, v209, v210, 0);
        sub_2261AC974(v276, type metadata accessor for Key);
        (*(v268 + 8))(v202, v267);
        goto LABEL_53;
      }

      sub_22619D8F4(v273, v255);
      v180 = sub_2261E400C();
      v311.n128_u64[0] = 0;
      v311.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v311.n128_u64[0] = 0xD00000000000002CLL;
      v311.n128_u64[1] = 0x80000002261EC570;
      v181 = sub_2261E3B9C();
      MEMORY[0x22AA782B0](v181);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v182 = v283;
      sub_2261A4EAC(v180, v311.n128_i64[0], v311.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 252);

      v183 = *&v182[v274];

      sub_22619C448(v300, v184);

      if (*(&v300[0] + 1) == 1)
      {
        goto LABEL_66;
      }

      v305 = v300[0];
      v306 = v300[1];
      v307 = v300[2];
      v185 = sub_2261A54B0();
      v187 = v186;
      v308 = v305;
      sub_22619A7B4(&v308, &qword_27D78DE20, &unk_2261E6280);
      v309 = v306;
      sub_22619A7B4(&v309, &qword_27D78DE20, &unk_2261E6280);
      v310 = v307;
      sub_22619A7B4(&v310, &qword_27D78DE20, &unk_2261E6280);
      if (!v187)
      {
LABEL_66:
        v211 = sub_2261E3FFC();
        v311.n128_u64[0] = 0;
        v311.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();

        *&v301 = 0xD00000000000001ELL;
        *(&v301 + 1) = 0x80000002261EC5A0;
        v134 = v277;
        v212 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v212);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v213 = *&v283[v274];

        sub_22619C448(&v311, v214);

        v284 = v311;
        v285 = v312;
        v286 = v313;
        v215 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v215);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v211, v301, *(&v301 + 1), 0xD000000000000061, v265 | 0x8000000000000000, 256);

        v216 = sub_2261A9CDC(0, 0xD000000000000016, 0x80000002261EBBB0);
        v263[2](v263, 0, v216);
        sub_2261AF4E8(&v299);

        v217 = v273;
        v218 = v255;
        v219 = v254;
        sub_2261B5424(v273, v255, v254, 0, sub_22619C840, sub_22619C830);
        v220 = v257;
        v221 = v264;
        v222 = v258;
        sub_2261795CC(v257, v264, v258, 0);
      }

      else
      {
        v188 = *&v283[v274];

        v189 = sub_22619C044();

        sub_2261790A8(v257, v264, v258, 0);
        v190 = v273;
        v191 = v255;
        sub_2261B5424(v273, v255, v254, 0, sub_22619D8F4, sub_22619C838);
        v192 = v280;
        v193 = v281;
        sub_22619D8F4(v280, v281);
        sub_2261D02A8(0, v189 & 1, v185, v187, v278, v190, v191, v192, &v301, v193);
        v194 = sub_2261AF53C();
        *(&v293 + 1) = &type metadata for AppAttestationRequestContext;
        *&v294 = sub_2261AF5C4();
        v195 = swift_allocObject();
        *&v292 = v195;
        v196 = v302;
        v195[1] = v301;
        v195[2] = v196;
        v197 = v304;
        v195[3] = v303;
        v195[4] = v197;
        sub_2261AF618(&v301, &v311);
        sub_2261D4738(&v292, &v284);

        __swift_destroy_boxed_opaque_existential_0(&v292);
        if (BYTE8(v286))
        {
          v311 = v284;
          LOBYTE(v312) = v285;
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          sub_22619C830();
        }

        else
        {
          sub_2261795DC(&v284, &v296);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
          if (swift_dynamicCast())
          {
            v315 = v288;
            v316 = v289;
            v317 = v290;
            v318 = v291;
            v311 = v284;
            v312 = v285;
            v313 = v286;
            v314 = v287;
            v223 = sub_2261E3FAC();
            v224 = v272;
            (*(*(v223 - 8) + 56))(v272, 1, 1, v223);
            v225 = v275;
            v226 = v267;
            v256(v275, v277, v267);
            v227 = *(v268 + 80) & 0xF8;
            v228 = (v271 + 263) & 0xFFFFFFFFFFFFFFF8;
            v229 = swift_allocObject();
            *(v229 + 16) = 0;
            *(v229 + 24) = 0;
            v230 = v283;
            *(v229 + 32) = v283;
            v231 = v316;
            *(v229 + 104) = v315;
            *(v229 + 120) = v231;
            *(v229 + 136) = v317;
            *(v229 + 152) = v318;
            v232 = v312;
            *(v229 + 40) = v311;
            *(v229 + 56) = v232;
            v233 = v314;
            *(v229 + 72) = v313;
            *(v229 + 88) = v233;
            v234 = v304;
            *(v229 + 192) = v303;
            *(v229 + 208) = v234;
            v235 = v302;
            *(v229 + 160) = v301;
            *(v229 + 176) = v235;
            v236 = v282;
            *(v229 + 224) = sub_2261C2F78;
            *(v229 + 232) = v236;
            v237 = v270;
            *(v229 + 240) = v269;
            *(v229 + 248) = v237;
            v262(v229 + 256, v225, v226);
            *(v229 + v228) = v279;

            sub_2261AF618(&v301, &v284);
            v238 = v230;

            sub_2261B0BA4(0, 0, v224, &unk_2261E7068, v229);
            sub_2261AF4E8(&v299);

            v239 = v273;
            v240 = v255;
            LOBYTE(v237) = v254;
            sub_2261B5424(v273, v255, v254, 0, sub_22619C840, sub_22619C830);
            v241 = v257;
            v242 = v264;
            v243 = v258;
            sub_2261795CC(v257, v264, v258, 0);
            sub_2261AF6C8(&v301);
            sub_2261B5424(v239, v240, v237, 0, sub_22619C840, sub_22619C830);
            sub_2261795CC(v241, v242, v243, 0);
            sub_2261AC974(v276, type metadata accessor for Key);
            (*(v268 + 8))(v277, v267);

            goto LABEL_38;
          }
        }

        v244 = sub_2261E3FFC();
        v311.n128_u64[0] = 0;
        v311.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v295 = v311;
        MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC5C0);
        v284 = v301;
        v285 = v302;
        v286 = v303;
        v287 = v304;
        sub_2261AF618(&v301, &v311);
        sub_2261AF674();
        v245 = sub_2261E423C();
        v247 = v246;
        v311 = v284;
        v312 = v285;
        v313 = v286;
        v314 = v287;
        sub_2261AF6C8(&v311);
        MEMORY[0x22AA782B0](v245, v247);

        MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
        v134 = v277;
        v248 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v248);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v249 = *&v283[v274];

        sub_22619C448(&v284, v250);

        v292 = v284;
        v293 = v285;
        v294 = v286;
        v251 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v251);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v244, v295.n128_i64[0], v295.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 270);

        v252 = sub_2261A9CDC(0, 0xD000000000000025, 0x80000002261EC5F0);
        v263[2](v263, 0, v252);
        sub_2261AF4E8(&v299);

        v217 = v273;
        v218 = v255;
        v219 = v254;
        sub_2261B5424(v273, v255, v254, 0, sub_22619C840, sub_22619C830);
        v220 = v257;
        v221 = v264;
        v222 = v258;
        sub_2261795CC(v257, v264, v258, 0);
        sub_2261AF6C8(&v301);
      }

      sub_2261B5424(v217, v218, v219, 0, sub_22619C840, sub_22619C830);
      v158 = v220;
      v159 = v221;
      v160 = v222;
    }

    sub_2261795CC(v158, v159, v160, 0);
    v143 = v276;
    goto LABEL_52;
  }

  sub_22619A7B4(v27, &qword_27D78DF28, &unk_2261E6FD0);
  (v278[2])(v20, &v53[v266], v279);
  v60 = sub_2261E3FFC();
  v311.n128_u64[0] = 0;
  v311.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v305 = v311;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v269, v270);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v61 = *&v53[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager];

  sub_22619C448(&v284, v62);

  v63 = 0;
  v64 = 0;
  if (*(&v284 + 1) != 1)
  {
    v311 = v284;
    v312 = v285;
    v313 = v286;
    v63 = sub_2261A5660();
    v64 = v65;
    v319[0] = v311;
    sub_22619A7B4(v319, &qword_27D78DE20, &unk_2261E6280);
    v301 = v312;
    sub_22619A7B4(&v301, &qword_27D78DE20, &unk_2261E6280);
    v299 = v313;
    sub_22619A7B4(&v299, &qword_27D78DE20, &unk_2261E6280);
  }

  *&v300[0] = v63;
  *(&v300[0] + 1) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v66 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v66);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v60, v305.n128_i64[0], v305.n128_u64[1], 0xD000000000000061, v265 | 0x8000000000000000, 181);

  (v278[1])(v20, v279);
  v67 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v263[2](v263, 0, v67);
}

void sub_2261BC6D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const __CFData *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v388 = a6;
  v389 = a8;
  v387 = a5;
  v11 = sub_2261E3CDC();
  v385 = *(v11 - 8);
  v386 = v11;
  v12 = *(v385 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v351 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v384 = v351 - v16;
  v17 = type metadata accessor for Key(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v351 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v351 - v23;
  v25 = sub_2261E3C3C();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v351 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v35 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v35 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    goto LABEL_15;
  }

  v36 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    goto LABEL_15;
  }

  v37 = v388 >> 62;
  if ((v388 >> 62) > 1)
  {
    if (v37 != 2)
    {
      goto LABEL_15;
    }

    v38 = *(v387 + 2);
    v39 = *(v387 + 3);
LABEL_14:
    if (v38 != v39)
    {
      goto LABEL_19;
    }

LABEL_15:
    v40 = sub_2261E3FFC();
    sub_2261A4EAC(v40, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 337);
    v41 = 0x80000002261EC1F0;
    v42 = 1;
    v43 = 0xD000000000000013;
LABEL_16:
    v388 = sub_2261A9CDC(v42, v43, v41);
    (*(v389 + 16))(v389, 0, v388);
    v44 = v388;

    return;
  }

  if (v37)
  {
    v38 = v387;
    v39 = v387 >> 32;
    goto LABEL_14;
  }

  if ((v388 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v381 = v34;
  v382 = v33;
  v376 = v20;
  v377 = v351 - v31;
  v379 = v32;
  v380 = v30;
  sub_2261AA444();
  v45 = sub_22619DFA0();
  v383 = a7;
  v46 = v45;

  v47 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v46 & 1) == 0)
  {
    v50 = sub_2261E3FFC();
    v408.n128_u64[0] = 0;
    v408.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v381, v382);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v51 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v51);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v50, v408.n128_i64[0], v408.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 343);

    v43 = 0xD000000000000020;
    v41 = 0x80000002261EBEA0;
    v42 = 3;
    goto LABEL_16;
  }

  LODWORD(v374) = sub_2261E400C();
  v408.n128_u64[0] = 0;
  v408.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v403 = v408;
  v372 = 0xD000000000000023;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v381, v382);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v378 = v47;
  v48 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(v399, v48);

  v408 = v399[0];
  v409 = v399[1];
  v410 = v399[2];
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v49 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v49);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v375 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v374, v403.n128_i64[0], v403.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 348);

  sub_2261AC2DC(a1, a2, v24);
  v52 = v379;
  v53 = (*(v379 + 48))(v24, 1, v380);
  if (v53 != 1)
  {
    (*(v52 + 32))(v377, v24, v380);
    if (sub_2261E3C1C() == a1 && v65 == a2)
    {
    }

    else
    {
      v66 = sub_2261E425C();

      if ((v66 & 1) == 0)
      {
        v91 = sub_2261E3FFC();
        v408.n128_u64[0] = 0;
        v408.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v394 = v408;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v92 = v377;
        v93 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v93);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v381, v382);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v94 = *(v383 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

        sub_22619C448(&v408, v95);

        v403 = v408;
        v404 = v409;
        v405 = v410;
        v96 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v96);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v91, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 358);

        v97 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        (*(v389 + 16))(v389, 0, v97);

LABEL_34:
        (*(v379 + 8))(v92, v380);
        return;
      }
    }

    v67 = sub_2261E400C();
    v408.n128_u64[0] = 0;
    v408.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v68 = v377;
    v69 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v69);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v70 = v383;
    sub_2261A4EAC(v67, v408.n128_i64[0], v408.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 363);

    v71 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;
    v72 = *(v70 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

    v73 = sub_22619C044();

    (*(v379 + 16))(v29, v68, v380);
    v74 = v382;

    v75 = v376;
    sub_2261C3918(v73 & 1, v29, 0, v381, v74, v376);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    v409.n128_u64[1] = v17;
    v410.n128_u64[0] = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v408);
    sub_2261AC9D4(v75, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v408, v77, &v403);
    v374 = v71;

    sub_22619A7B4(&v408, &qword_27D78DFD0, &qword_2261E6FF0);
    v78 = v403;
    v79 = v404.n128_u8[0];
    if (v404.n128_u8[1])
    {
      v408 = v403;
      v80 = v404.n128_u8[0] & 1;
      v409.n128_u8[0] = v404.n128_u8[0] & 1;
      sub_22619C838();
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      LODWORD(v388) = sub_2261E3FFC();
      v408.n128_u64[0] = 0;
      v408.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v394 = v408;
      MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261EC6B0);
      v408 = v78;
      v409.n128_u8[0] = v79 & 1;
      v81 = sub_2261E429C();
      MEMORY[0x22AA782B0](v81);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v82 = v377;
      v83 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v83);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v381, v382);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v84 = *(v383 + v374);

      sub_22619C448(&v408, v85);

      v403 = v408;
      v404 = v409;
      v405 = v410;
      v86 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v86);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v388, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 379);

      v394.n128_u64[0] = 0xD000000000000017;
      v394.n128_u64[1] = 0x80000002261EC700;
      v403 = v78;
      v404.n128_u8[0] = v80;
      v87 = sub_2261E429C();
      v89 = v88;
      sub_2261795CC(v78.n128_u64[0], v78.n128_i64[1], v79, 1);
      MEMORY[0x22AA782B0](v87, v89);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v90 = sub_2261A9CDC(2, v394.n128_i64[0], v394.n128_i64[1]);

      (*(v389 + 16))(v389, 0, v90);

      sub_2261795CC(v78.n128_u64[0], v78.n128_i64[1], v79, 1);
LABEL_32:
      sub_2261AC974(v376, type metadata accessor for Key);
      (*(v379 + 8))(v82, v380);
      return;
    }

    if (v403.n128_u64[0])
    {
      sub_2261790A8(v403.n128_u64[0], v403.n128_i64[1], v404.n128_u8[0], 0);
      v98 = v78.n128_u64[0];
      v99 = sub_2261C9E2C();
      if (v100)
      {
        v101 = v100;
        v370 = v79;
        v371 = v78;
        v103 = v384;
        v102 = v385;
        v104 = *(v385 + 16);
        v105 = v383;
        v372 = v99;
        v106 = v386;
        v104(v384, v383 + v378, v386);
        v107 = sub_2261E400C();
        v408.n128_u64[0] = 0;
        v408.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v369 = 0xD00000000000002FLL;
        MEMORY[0x22AA782B0]();
        v368 = v98;
        v108 = sub_2261C9E2C();
        if (v109)
        {
          v110 = v109;
        }

        else
        {
          v108 = 7104878;
          v110 = 0xE300000000000000;
        }

        MEMORY[0x22AA782B0](v108, v110);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v107, v408.n128_i64[0], v408.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 396);

        (*(v102 + 8))(v103, v106);
        v111 = *(v105 + v374);

        v112 = sub_22619C044();

        v113 = sub_2261E3C1C();
        v115 = v114;

        v408.n128_u8[0] = 1;
        v384 = v101;
        sub_2261C378C(v112 & 1, 0x100000000, v113, v115, v372, v101, &v400);
        v116 = v401.n128_u64[0];
        v117 = v402;
        v118 = v400.n128_u8[0];
        v386 = v401.n128_i64[1];

        v385 = v117.n128_u64[1];

        sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
        v409.n128_u64[1] = &type metadata for AssertionCounter;
        v410.n128_u64[0] = &off_28395C888;
        v119 = swift_allocObject();
        v408.n128_u64[0] = v119;
        v120 = v401;
        v119[1] = v400;
        v119[2] = v120;
        v119[3] = v402;
        sub_2261A8A9C(&v408, MEMORY[0x277D84CC0], &v403);
        v130 = v369;
        v367 = v118;

        sub_22619A7B4(&v408, &qword_27D78DFD0, &qword_2261E6FF0);
        v131 = v371.n128_u64[0];
        v132 = v370;
        sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);
        v133 = v403.n128_u64[0];
        if (v404.n128_u8[1])
        {
          v134 = v403.n128_i64[1];
          v135 = v404.n128_u8[0];
          v408 = v403;
          v409.n128_u8[0] = v404.n128_u8[0] & 1;
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          sub_226179098(v133, v134, v135, 1);
          v136 = v371.n128_i64[1];
LABEL_50:
          v148 = sub_2261E3FFC();
          v408.n128_u64[0] = 0;
          v408.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v394 = v408;
          MEMORY[0x22AA782B0](0xD000000000000038, 0x80000002261EC7D0);
          v138 = v377;
          v149 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v149);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v372, v384);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v408 = v400;
          v409 = v401;
          v410 = v402;
          sub_2261A65DC();
          v150 = sub_2261E423C();
          v152 = v151;

          MEMORY[0x22AA782B0](v150, v152);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);
          v153 = *(v383 + v374);

          sub_22619C448(&v408, v154);

          v403 = v408;
          v404 = v409;
          v405 = v410;
          v155 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v155);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v148, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 410);

          v156 = sub_2261A9CDC(0, 0xD000000000000030, 0x80000002261EC810);
          (*(v389 + 16))(v389, 0, v156);
          sub_2261795CC(v131, v136, v132, 0);

          v157 = v131;
          v158 = v136;
LABEL_51:
          sub_2261795CC(v157, v158, v132, 0);
          sub_2261AC974(v376, type metadata accessor for Key);
          (*(v379 + 8))(v138, v380);
          return;
        }

        v366 = v116;
        v136 = v371.n128_i64[1];
        if ((v403.n128_u64[0] & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        if (v403.n128_u32[0] == -1)
        {
          v159 = sub_2261E3FFC();
          v408.n128_u64[0] = 0;
          v408.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v394 = v408;
          MEMORY[0x22AA782B0](0xD000000000000030, 0x80000002261EC8C0);
          v138 = v377;
          v160 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v160);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v372, v384);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v408 = v400;
          v409 = v401;
          v410 = v402;
          sub_2261A65DC();
          v161 = sub_2261E423C();
          v163 = v162;

          MEMORY[0x22AA782B0](v161, v163);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);
          v164 = *(v383 + v374);

          sub_22619C448(&v408, v165);

          v403 = v408;
          v404 = v409;
          v405 = v410;
          v166 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v166);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v159, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 422);

          v146 = "reached. { uuid=";
          v147 = 0xD000000000000028;
          goto LABEL_53;
        }

        if (!v403.n128_u32[0])
        {
          v137 = sub_2261E3FFC();
          v408.n128_u64[0] = 0;
          v408.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v394 = v408;
          MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261EC850);
          v138 = v377;
          v139 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v139);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v372, v384);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v408 = v400;
          v409 = v401;
          v410 = v402;
          sub_2261A65DC();
          v140 = sub_2261E423C();
          v142 = v141;

          MEMORY[0x22AA782B0](v140, v142);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);
          v143 = *(v383 + v374);

          sub_22619C448(&v408, v144);

          v403 = v408;
          v404 = v409;
          v405 = v410;
          v145 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v145);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v137, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 416);

          v146 = "ssertion. { uuid=";
          v147 = 0xD000000000000029;
LABEL_53:
          v167 = sub_2261A9CDC(2, v147, v146 | 0x8000000000000000);
          (*(v389 + 16))(v389, 0, v167);
          v168 = v371.n128_i64[1];
          v169 = v371.n128_u64[0];
          v132 = v370;
          sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);

          v157 = v169;
          v158 = v168;
          goto LABEL_51;
        }

        v170 = v403.n128_u32[0] + 1;
        v363 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager;
        v171 = *(v383 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager);
        v409.n128_u64[1] = &type metadata for AssertionCounter;
        v410.n128_u64[0] = &off_28395C888;
        v172 = swift_allocObject();
        v408.n128_u64[0] = v172;
        *(v172 + 16) = v367;
        v364 = v170;
        *(v172 + 20) = v170;
        *(v172 + 24) = 0;
        v174 = v385;
        v173 = v386;
        *(v172 + 32) = v366;
        *(v172 + 40) = v173;
        *(v172 + 48) = v117.n128_u64[0];
        *(v172 + 56) = v174;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v175 = MEMORY[0x277CC9318];
        nullsub_1(MEMORY[0x277CC9318]);
        sub_2261A5998(&v408, v175, &v403);

        __swift_destroy_boxed_opaque_existential_0(&v408);
        v365 = v403;
        v362 = v404.n128_u8[0];
        if (v404.n128_u8[1])
        {
          v188 = 256;
        }

        else
        {
          v188 = 0;
        }

        if (v404.n128_u8[1] == 1)
        {
          v189 = v362;
          v190 = v362 & 1;
          v191 = v365;
          sub_22619C838();
          v192 = v385;

          v193 = v386;

          LODWORD(v388) = sub_2261E3FFC();
          v408.n128_u64[0] = 0;
          v408.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v394 = v408;
          MEMORY[0x22AA782B0](0xD00000000000003ALL, 0x80000002261ECBB0);
          v408 = v191;
          v409.n128_u8[0] = v190;
          sub_22619C7B4();
          v194 = sub_2261E429C();
          v196 = v195;
          v387 = sub_22619C830;
          sub_2261B5424(v191.n128_i64[0], v191.n128_i64[1], v189, 1, sub_2261A28B8, sub_22619C830);
          MEMORY[0x22AA782B0](v194, v196);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v92 = v377;
          v197 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v197);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v372, v384);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v408.n128_u8[0] = v367;
          v408.n128_u32[1] = v364;
          v408.n128_u8[8] = 0;
          v409.n128_u64[0] = v366;
          v409.n128_u64[1] = v193;
          v410.n128_u64[0] = v117.n128_u64[0];
          v410.n128_u64[1] = v192;
          sub_2261A65DC();
          v198 = sub_2261E423C();
          v200 = v199;

          MEMORY[0x22AA782B0](v198, v200);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);
          v201 = *(v383 + v374);

          sub_22619C448(&v408, v202);

          v403 = v408;
          v404 = v409;
          v405 = v410;
          v203 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v203);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v388, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 432);

          v204 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
          (*(v389 + 16))(v389, 0, v204);
          v205 = v371.n128_i64[1];
          v206 = v371.n128_u64[0];
          v207 = v370;
          sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);

          sub_2261795CC(v206, v205, v207, 0);
          sub_2261B5424(v365.n128_i64[0], v365.n128_i64[1], v362, 1, sub_2261A28B8, v387);
          goto LABEL_43;
        }

        if (v365.n128_u64[1] >> 60 == 15)
        {
          v208 = v362;
          v209 = v188 | v362;

          sub_2261B5424(v365.n128_i64[0], v365.n128_i64[1], v208, 0, sub_2261A28B8, sub_22619C830);
          v176 = sub_2261E3FFC();
          v408.n128_u64[0] = 0;
          v408.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v394 = v408;
          MEMORY[0x22AA782B0](0xD000000000000039, 0x80000002261EC930);
          v82 = v377;
          v177 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v177);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v372, v384);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v408.n128_u8[0] = v367;
          v408.n128_u32[1] = v364;
          v408.n128_u8[8] = 0;
          v409.n128_u64[0] = v366;
          v409.n128_u64[1] = v386;
          v410.n128_u64[0] = v117.n128_u64[0];
          v410.n128_u64[1] = v385;
          sub_2261A65DC();
          v178 = sub_2261E423C();
          v180 = v179;

          MEMORY[0x22AA782B0](v178, v180);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);
          v181 = *(v383 + v374);

          sub_22619C448(&v408, v182);

          v403 = v408;
          v404 = v409;
          v405 = v410;
          v183 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v183);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v176, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 439);

          v184 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
          (*(v389 + 16))(v389, 0, v184);
          v185 = v371.n128_i64[1];
          v186 = v371.n128_u64[0];
          v187 = v370;
          sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);

          sub_2261795CC(v186, v185, v187, 0);
          sub_2261ACA3C(v365.n128_i64[0], v365.n128_i64[1], v209);
          goto LABEL_32;
        }

        v210 = *(v383 + v374);

        v211 = sub_22619C044();

        v394.n128_u8[0] = v211 & 1;
        v416.n128_u8[0] = 0;
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        if (*&v408 == *&v403)
        {
        }

        else
        {
          v212 = sub_2261E425C();

          if ((v212 & 1) == 0)
          {
            v213 = sub_2261CDAC8();
LABEL_66:
            v215 = *v213;
            v214 = v213[1];
            sub_22619D8F4(*v213, v214);
            v216 = sub_2261CDBE8();
            v416.n128_u8[0] = v367;
            v416.n128_u32[1] = v133;
            v416.n128_u8[8] = 0;
            v417.n128_u64[0] = v366;
            v417.n128_u64[1] = v386;
            v418.n128_u64[0] = v117.n128_u64[0];
            v418.n128_u64[1] = v385;
            v217 = *v216;
            sub_2261790A8(v371.n128_u64[0], v371.n128_i64[1], v370, 0);

            sub_2261CD7CC(v215, v214, v217, &v416, v368, &v403);
            sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
            v218 = sub_2261CBA0C(0, &v403);
            v358 = v219;
            v359 = v218;
            v360 = v220;
            v361 = 0;

            if ((v360 & 0x100) != 0)
            {
              v232 = v360;
              v233 = v360 & 1;
              v235 = v358;
              v234 = v359;
              sub_22619C838();
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              v236 = sub_2261E3FFC();
              v408.n128_u64[0] = 0;
              v408.n128_u64[1] = 0xE000000000000000;
              sub_2261E410C();
              v390 = v408;
              MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
              v408.n128_u64[0] = v234;
              v408.n128_u64[1] = v235;
              v409.n128_u8[0] = v233;
              sub_22619C7B4();
              v237 = sub_2261E429C();
              v239 = v238;
              v388 = sub_22619C840;
              sub_2261B5424(v234, v235, v232, 1, sub_22619C840, sub_22619C830);
              MEMORY[0x22AA782B0](v237, v239);

              MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
              v240 = sub_2261E3C1C();
              MEMORY[0x22AA782B0](v240);

              MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
              MEMORY[0x22AA782B0](v372, v384);

              MEMORY[0x22AA782B0](8236, 0xE200000000000000);
              v396 = v405;
              v397 = v406;
              v398 = v407;
              v394 = v403;
              v395 = v404;
              sub_2261B50AC(&v403, &v408);
              sub_2261B5108();
              v241 = sub_2261E423C();
              v243 = v242;
              v410 = v396;
              v411 = v397;
              v412 = v398;
              v408 = v394;
              v409 = v395;
              sub_2261AF4E8(&v408);
              MEMORY[0x22AA782B0](v241, v243);

              MEMORY[0x22AA782B0](32, 0xE100000000000000);
              v244 = *(v383 + v374);

              sub_22619C448(&v394, v245);

              v413 = v394;
              v414 = v395;
              v415 = v396;
              v246 = sub_2261E3E3C();
              MEMORY[0x22AA782B0](v246);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v236, v390.n128_i64[0], v390.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 452);

              v247 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
              (*(v389 + 16))(v389, 0, v247);
              v248 = v371.n128_i64[1];
              v249 = v371.n128_u64[0];
              v250 = v370;
              sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);

              sub_2261AF4E8(&v403);
              sub_2261B5424(v234, v235, v232, 1, v388, sub_22619C830);
              v251 = v249;
              v252 = v248;
              goto LABEL_71;
            }

            sub_22619D8F4(v359, v358);
            v221 = sub_2261E400C();
            v408.n128_u64[0] = 0;
            v408.n128_u64[1] = 0xE000000000000000;
            sub_2261E410C();
            MEMORY[0x22AA782B0](v130, 0x80000002261EC9B0);
            v222 = sub_2261E3B9C();
            MEMORY[0x22AA782B0](v222);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v223 = v383;
            sub_2261A4EAC(v221, v408.n128_i64[0], v408.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 464);

            type metadata accessor for SecurityController();
            v354 = sub_2261A0FCC(*(v223 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v223 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v223 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v223 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
            if (sub_2261B515C())
            {
              v224 = v361;
              v225 = sub_2261A2234();
              v355 = v226;
              v356 = v225;
              v357 = v227;
              v369 = v228;
              v361 = v224;
              if (!v224)
              {
LABEL_75:
                sub_2261790A8(v371.n128_u64[0], v371.n128_i64[1], v370, 0);
                v256 = v358;
                sub_2261B5424(v359, v358, v360, 0, sub_22619D8F4, sub_22619C838);
                v257 = v387;
                v258 = v388;
                sub_22619D8F4(v387, v388);
                v260 = v355;
                v259 = v356;
                v261 = v357;
                v262 = v369;
                sub_22619D9F4(v356, v355, v357, v369);
                sub_22619D664(v368, v359, v256, v257, v258, v259, v260, v261, &v394, v262);
                v263 = v361;
                v387 = sub_22619D21C(&v394);
                v388 = v264;
                if (v263)
                {

LABEL_78:

                  v265 = sub_2261E3FFC();
                  v408.n128_u64[0] = 0;
                  v408.n128_u64[1] = 0xE000000000000000;
                  sub_2261E410C();
                  v390 = v408;
                  MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EC9E0);
                  v266 = v377;
                  v267 = sub_2261E3C1C();
                  MEMORY[0x22AA782B0](v267);

                  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
                  MEMORY[0x22AA782B0](v372, v384);

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  v408 = v416;
                  v409 = v417;
                  v410 = v418;
                  sub_2261A65DC();
                  v268 = sub_2261E423C();
                  v270 = v269;

                  MEMORY[0x22AA782B0](v268, v270);

                  MEMORY[0x22AA782B0](32, 0xE100000000000000);
                  v271 = *(v383 + v374);

                  sub_22619C448(&v408, v272);

                  v413 = v408;
                  v414 = v409;
                  v415 = v410;
                  v273 = sub_2261E3E3C();
                  MEMORY[0x22AA782B0](v273);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v265, v390.n128_i64[0], v390.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 499);

                  v274 = sub_2261A9CDC(0, 0xD000000000000022, 0x80000002261ECA10);
                  (*(v389 + 16))(v389, 0, v274);
                  v275 = v371.n128_i64[1];
                  v276 = v371.n128_u64[0];
                  v277 = v370;
                  sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);

                  sub_2261B5258(&v394);
                  sub_2261B52AC(v356, v355, v357, v369);
                  v279 = v358;
                  v278 = v359;
                  v280 = v360;
                  sub_2261B5424(v359, v358, v360, 0, sub_22619C840, sub_22619C830);

                  sub_2261B5424(v278, v279, v280, 0, sub_22619C840, sub_22619C830);
                  sub_2261AF4E8(&v403);
                  sub_2261795CC(v276, v275, v277, 0);
                  sub_2261B5424(v365.n128_i64[0], v365.n128_i64[1], v362, 0, sub_2261A28B8, sub_22619C830);
                  sub_2261AC974(v376, type metadata accessor for Key);
                  (*(v379 + 8))(v266, v380);
                  return;
                }

                if (v388 >> 60 == 15)
                {
                  goto LABEL_78;
                }

                v282 = v387;
                v281 = v388;
                sub_2261A74CC(v387, v388);
                sub_2261B52FC(&v394, &v408);
                sub_2261CDF10(v282, v281, &v394, &v408);
                sub_2261B5358(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionCborManager, type metadata accessor for AssertionCBORManager, sub_2261CE6A0);
                v361 = sub_2261CDF30(&v408);
                v368 = v283;

                v284 = sub_2261E400C();
                v413.n128_u64[0] = 0xD00000000000002CLL;
                v413.n128_u64[1] = 0x80000002261ECA70;
                v285 = sub_2261E3B9C();
                MEMORY[0x22AA782B0](v285);

                MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                v286 = v383;
                sub_2261A4EAC(v284, v413.n128_i64[0], v413.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 514);

                sub_2261B53D0(&v408);
                v287 = *(v286 + v363);
                v414.n128_u64[1] = &type metadata for AssertionCounter;
                v415.n128_u64[0] = &off_28395C888;
                v288 = swift_allocObject();
                v413.n128_u64[0] = v288;
                *(v288 + 16) = v367;
                *(v288 + 20) = v364;
                *(v288 + 24) = 0;
                v289 = v385;
                v290 = v386;
                *(v288 + 32) = v366;
                *(v288 + 40) = v290;
                *(v288 + 48) = v117.n128_u64[0];
                *(v288 + 56) = v289;

                v291 = MEMORY[0x277CC9318];
                nullsub_1(MEMORY[0x277CC9318]);
                sub_2261A5998(&v413, v291, &v390);

                __swift_destroy_boxed_opaque_existential_0(&v413);
                v310 = v390.n128_i64[1];
                v382 = v390.n128_u64[0];
                v311 = v391.n128_u8[0];
                if (v391.n128_u8[1] == 1)
                {
                  LODWORD(v381) = v391.n128_u8[0];
                  v312 = v382;
                  LODWORD(v363) = v391.n128_u8[0] & 1;
                  sub_22619C838();
                  v352 = sub_2261E3FFC();
                  v413.n128_u64[0] = 0;
                  v413.n128_u64[1] = 0xE000000000000000;
                  sub_2261E410C();
                  v393 = v413;
                  v353 = 0xD000000000000042;
                  MEMORY[0x22AA782B0]();
                  v413.n128_u64[0] = v312;
                  v413.n128_u64[1] = v310;
                  v414.n128_u8[0] = v311 & 1;
                  v351[1] = sub_22619C7B4();
                  v313 = sub_2261E429C();
                  MEMORY[0x22AA782B0](v313);

                  MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
                  v314 = sub_2261E3C1C();
                  MEMORY[0x22AA782B0](v314);

                  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
                  MEMORY[0x22AA782B0](v372, v384);

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  v413.n128_u8[0] = v367;
                  v413.n128_u32[1] = v364;
                  v413.n128_u8[8] = 0;
                  v414.n128_u64[0] = v366;
                  v414.n128_u64[1] = v386;
                  v415.n128_u64[0] = v117.n128_u64[0];
                  v415.n128_u64[1] = v385;
                  sub_2261A65DC();
                  v315 = sub_2261E423C();
                  v317 = v316;

                  MEMORY[0x22AA782B0](v315, v317);

                  MEMORY[0x22AA782B0](32, 0xE100000000000000);
                  v318 = *(v383 + v374);

                  sub_22619C448(&v413, v319);

                  v390 = v413;
                  v391 = v414;
                  v392 = v415;
                  v320 = sub_2261E3E3C();
                  MEMORY[0x22AA782B0](v320);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v352, v393.n128_i64[0], v393.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 530);

                  v390.n128_u64[0] = 0;
                  v390.n128_u64[1] = 0xE000000000000000;
                  sub_2261E410C();
                  v393 = v390;
                  MEMORY[0x22AA782B0](v353, 0x80000002261ECB60);
                  v321 = v312;
                  v390.n128_u64[0] = v312;
                  v390.n128_u64[1] = v310;
                  v391.n128_u8[0] = v363;
                  v322 = sub_2261E429C();
                  v324 = v323;
                  v325 = v381;
                  sub_2261B5424(v321, v310, v381, 1, sub_2261A28B8, sub_22619C830);
                  MEMORY[0x22AA782B0](v322, v324);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  v326 = sub_2261A9CDC(0, v393.n128_i64[0], v393.n128_i64[1]);

                  v327 = v389;
                  v328 = (v389 + 16);
                  (*(v389 + 16))(v389, 0, v326);

                  sub_2261B5424(v321, v310, v325, 1, sub_2261A28B8, sub_22619C830);
                  v329 = v361;
                  v330 = v368;
                  v331 = sub_2261E3B8C();
                  (*v328)(v327, v331, 0);

                  v332 = v371.n128_i64[1];
                  v333 = v371.n128_u64[0];
                  v334 = v370;
                  sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);
                  sub_22619C840(v329, v330);
                  sub_2261B5258(&v394);
                  sub_2261A28B8(v387, v388);
                  sub_2261B52AC(v356, v355, v357, v369);
                  v336 = v358;
                  v335 = v359;
                  LOBYTE(v327) = v360;
                  sub_2261B5424(v359, v358, v360, 0, sub_22619C840, sub_22619C830);

                  sub_2261B5424(v335, v336, v327, 0, sub_22619C840, sub_22619C830);
                  sub_2261AF4E8(&v403);
                  sub_2261795CC(v333, v332, v334, 0);
                  v254 = v365.n128_i64[1];
                  v253 = v365.n128_u64[0];
                  v255 = v362;
                  goto LABEL_72;
                }

                if (v390.n128_u64[1] >> 60 != 15)
                {
                  v337 = v391.n128_u8[0];
                  sub_2261B5424(v382, v390.n128_i64[1], v391.n128_i8[0], 0, sub_2261A74CC, sub_22619C838);

                  v338 = sub_2261E400C();
                  v390.n128_u64[0] = 0xD000000000000025;
                  v390.n128_u64[1] = 0x80000002261ECB30;
                  v413.n128_u8[0] = v367;
                  v413.n128_u32[1] = v364;
                  v413.n128_u8[8] = 0;
                  v414.n128_u64[0] = v366;
                  v414.n128_u64[1] = v386;
                  v415.n128_u64[0] = v117.n128_u64[0];
                  v415.n128_u64[1] = v385;
                  sub_2261A65DC();
                  v339 = sub_2261E423C();
                  v341 = v340;

                  MEMORY[0x22AA782B0](v339, v341);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v338, v390.n128_i64[0], v390.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 542);

                  v342 = v382;
                  sub_2261B5424(v382, v310, v337, 0, sub_2261A28B8, sub_22619C830);
                  sub_2261B5424(v342, v310, v337, 0, sub_2261A28B8, sub_22619C830);
                  v343 = v361;
                  v344 = v368;
                  v345 = sub_2261E3B8C();
                  (*(v389 + 16))(v389, v345, 0);

                  v346 = v371.n128_i64[1];
                  v347 = v371.n128_u64[0];
                  v348 = v370;
                  sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);
                  sub_22619C840(v343, v344);
                  sub_2261B5258(&v394);
                  sub_2261A28B8(v387, v388);
                  sub_2261B52AC(v356, v355, v357, v369);
                  v350 = v358;
                  v349 = v359;
                  LOBYTE(v343) = v360;
                  sub_2261B5424(v359, v358, v360, 0, sub_22619C840, sub_22619C830);

                  sub_2261B5424(v349, v350, v343, 0, sub_22619C840, sub_22619C830);
                  sub_2261AF4E8(&v403);
                  sub_2261795CC(v347, v346, v348, 0);
                  v254 = v365.n128_i64[1];
                  v253 = v365.n128_u64[0];
                  v255 = v362;
                  goto LABEL_72;
                }

                v292 = sub_2261E3FFC();
                v413.n128_u64[0] = 0;
                v413.n128_u64[1] = 0xE000000000000000;
                sub_2261E410C();
                v393 = v413;
                MEMORY[0x22AA782B0](0xD000000000000041, 0x80000002261ECAA0);
                v293 = sub_2261E3C1C();
                MEMORY[0x22AA782B0](v293);

                MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
                MEMORY[0x22AA782B0](v372, v384);

                MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                v413.n128_u8[0] = v367;
                v413.n128_u32[1] = v364;
                v413.n128_u8[8] = 0;
                v414.n128_u64[0] = v366;
                v414.n128_u64[1] = v386;
                v415.n128_u64[0] = v117.n128_u64[0];
                v415.n128_u64[1] = v385;
                sub_2261A65DC();
                v294 = sub_2261E423C();
                v296 = v295;

                MEMORY[0x22AA782B0](v294, v296);

                MEMORY[0x22AA782B0](32, 0xE100000000000000);
                v297 = *(v383 + v374);

                sub_22619C448(&v413, v298);

                v390 = v413;
                v391 = v414;
                v392 = v415;
                v299 = sub_2261E3E3C();
                MEMORY[0x22AA782B0](v299);

                MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                sub_2261A4EAC(v292, v393.n128_i64[0], v393.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 537);

                v300 = sub_2261A9CDC(0, 0xD000000000000039, 0x80000002261ECAF0);
                v301 = v389;
                v302 = (v389 + 16);
                (*(v389 + 16))(v389, 0, v300);

                sub_2261ACA3C(v382, v310, v311);
                v303 = v361;
                v304 = v368;
                v305 = sub_2261E3B8C();
                (*v302)(v301, v305, 0);

                v306 = v371.n128_i64[1];
                v307 = v371.n128_u64[0];
                v250 = v370;
                sub_2261795CC(v371.n128_u64[0], v371.n128_i64[1], v370, 0);
                sub_22619C840(v303, v304);
                sub_2261B5258(&v394);
                sub_2261A28B8(v387, v388);
                sub_2261B52AC(v356, v355, v357, v369);
                v309 = v358;
                v308 = v359;
                LOBYTE(v303) = v360;
                sub_2261B5424(v359, v358, v360, 0, sub_22619C840, sub_22619C830);

                sub_2261B5424(v308, v309, v303, 0, sub_22619C840, sub_22619C830);
                sub_2261AF4E8(&v403);
                v251 = v307;
                v252 = v306;
LABEL_71:
                sub_2261795CC(v251, v252, v250, 0);
                v254 = v365.n128_i64[1];
                v253 = v365.n128_u64[0];
                v255 = v362;
LABEL_72:
                sub_2261B5424(v253, v254, v255, 0, sub_2261A28B8, sub_22619C830);
                sub_2261AC974(v376, type metadata accessor for Key);
                (*(v379 + 8))(v377, v380);
                return;
              }

              v229 = sub_2261E3FFC();
              v408.n128_u64[0] = 0xD000000000000021;
              v408.n128_u64[1] = 0x80000002261EB5E0;
              v230 = v361;
              swift_getErrorValue();
              v231 = sub_2261E429C();
              MEMORY[0x22AA782B0](v231);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v229, v408.n128_i64[0], v408.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 482);

              v356 = 0;
              v357 = 0;
              v369 = 0;
              v361 = 0;
            }

            else
            {
              v356 = 0;
              v357 = 0;
              v369 = 0;
            }

            v355 = 0xF000000000000000;
            goto LABEL_75;
          }
        }

        v213 = sub_2261CDB98();
        goto LABEL_66;
      }

      sub_2261795CC(v78.n128_u64[0], v78.n128_i64[1], v79, 0);
      v127 = sub_2261E3FFC();
      v408.n128_u64[0] = 0;
      v408.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](v372, 0x80000002261EC7A0);
      v92 = v377;
      v128 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v128);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v381, v382);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v127, v408.n128_i64[0], v408.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 391);

      v129 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      (*(v389 + 16))(v389, 0, v129);
      sub_2261795CC(v78.n128_u64[0], v78.n128_i64[1], v79, 0);

      sub_2261795CC(v78.n128_u64[0], v78.n128_i64[1], v79, 0);
    }

    else
    {
      sub_2261795CC(0, v403.n128_i64[1], v404.n128_u8[0], 0);
      v121 = sub_2261E3FFC();
      v408.n128_u64[0] = 0;
      v408.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v394 = v408;
      MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC720);
      v92 = v377;
      v122 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v122);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v381, v382);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v123 = *(v383 + v374);

      sub_22619C448(&v408, v124);

      v403 = v408;
      v404 = v409;
      v405 = v410;
      v125 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v125);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v121, v394.n128_i64[0], v394.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 385);

      v126 = sub_2261A9CDC(2, 0xD000000000000034, 0x80000002261EC760);
      (*(v389 + 16))(v389, 0, v126);
      sub_2261795CC(0, v78.n128_i64[1], v79, 0);
    }

LABEL_43:
    sub_2261AC974(v376, type metadata accessor for Key);
    goto LABEL_34;
  }

  sub_22619A7B4(v24, &qword_27D78DF28, &unk_2261E6FD0);
  v55 = v385;
  v54 = v386;
  v56 = v383;
  (*(v385 + 16))(v15, v383 + v378, v386);
  v57 = sub_2261E3FFC();
  v408.n128_u64[0] = 0;
  v408.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v400 = v408;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v381, v382);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v58 = *(v56 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

  sub_22619C448(&v403, v59);

  v60 = 0;
  v61 = 0;
  if (v403.n128_u64[1] != 1)
  {
    v408 = v403;
    v409 = v404;
    v410 = v405;
    v60 = sub_2261A5660();
    v61 = v62;
    v413 = v408;
    sub_22619A7B4(&v413, &qword_27D78DE20, &unk_2261E6280);
    v416 = v409;
    sub_22619A7B4(&v416, &qword_27D78DE20, &unk_2261E6280);
    v394 = v410;
    sub_22619A7B4(&v394, &qword_27D78DE20, &unk_2261E6280);
  }

  v390.n128_u64[0] = v60;
  v390.n128_u64[1] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v63 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v63);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v57, v400.n128_i64[0], v400.n128_u64[1], 0xD000000000000061, v375 | 0x8000000000000000, 352);

  (*(v55 + 8))(v15, v54);
  v64 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  (*(v389 + 16))(v389, 0, v64);
}

void sub_2261C09C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v130 = a8;
  v129 = a5;
  v128 = a4;
  v127 = a3;
  v125 = sub_2261E3CDC();
  v126 = *(v125 - 8);
  v12 = *(v126 + 64);
  v13 = MEMORY[0x28223BE20](v125);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v114 - v16;
  v18 = type metadata accessor for Key(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v114 - v24;
  v26 = sub_2261E3C3C();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    goto LABEL_15;
  }

  v35 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v35 = v129 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    goto LABEL_15;
  }

  v36 = v128 >> 62;
  if ((v128 >> 62) > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_15;
    }

    v37 = *(v127 + 16);
    v38 = *(v127 + 24);
LABEL_14:
    if (v37 != v38)
    {
      goto LABEL_19;
    }

LABEL_15:
    v39 = sub_2261E3FFC();
    sub_2261A4EAC(v39, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 549);
    v40 = 0x80000002261EC1F0;
    v41 = 1;
    v42 = 0xD000000000000013;
LABEL_16:
    v129 = sub_2261A9CDC(v41, v42, v40);
    (*(v130 + 16))(v130, 0, v129);
    v43 = v129;

    return;
  }

  if (v36)
  {
    v37 = v127;
    v38 = v127 >> 32;
    goto LABEL_14;
  }

  if ((v128 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v118 = v17;
  v119 = v21;
  v120 = &v114 - v32;
  v121 = v33;
  v122 = v31;
  v124 = a7;
  sub_2261AA444();
  v44 = sub_22619DFA0();

  v123 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v44 & 1) == 0)
  {
    v47 = sub_2261E3FFC();
    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v129, a6);
    MEMORY[0x22AA782B0](0x3D626F6C62202CLL, 0xE700000000000000);
    v48 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v48);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v47, v137, *(&v137 + 1), 0xD000000000000061, 0x80000002261EBE30, 555);

    v42 = 0xD000000000000020;
    v40 = 0x80000002261EBEA0;
    v41 = 3;
    goto LABEL_16;
  }

  v116 = sub_2261E3FEC();
  *&v137 = 0;
  *(&v137 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v134 = v137;
  MEMORY[0x22AA782B0](0xD000000000000023, 0x80000002261ECBF0);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v129, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v45 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(&v137, v45);

  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v46 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v46);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v117 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v116, v134, *(&v134 + 1), 0xD000000000000061, 0x80000002261EBE30, 560);

  sub_2261AC2DC(a1, a2, v25);
  v49 = v121;
  if ((*(v121 + 48))(v25, 1, v122) != 1)
  {
    (*(v49 + 32))(v120, v25, v122);
    if (sub_2261E3C1C() == a1 && v60 == a2)
    {

      v61 = v118;
    }

    else
    {
      v62 = sub_2261E425C();

      v61 = v118;
      if ((v62 & 1) == 0)
      {
        v81 = sub_2261E3FFC();
        *&v137 = 0;
        *(&v137 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v142 = v137;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v82 = v120;
        v83 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v83);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v129, a6);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v84 = *(v124 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

        sub_22619C448(&v137, v85);

        v134 = v137;
        v135 = v138;
        v136 = v139;
        v86 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v86);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v81, v142, *(&v142 + 1), 0xD000000000000061, v117 | 0x8000000000000000, 570);

        v87 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        (*(v130 + 16))(v130, 0, v87);

        (*(v121 + 8))(v82, v122);
        return;
      }
    }

    v63 = v61;
    v64 = sub_2261E3FEC();
    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v65 = v120;
    v66 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v66);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v67 = v124;
    sub_2261A4EAC(v64, v137, *(&v137 + 1), 0xD000000000000061, v117 | 0x8000000000000000, 575);

    v68 = *(v67 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

    v69 = sub_22619C044();

    (*(v121 + 16))(v30, v65, v122);

    v70 = v69 & 1;
    v71 = v119;
    sub_2261C3918(v70, v30, 0, v129, a6, v119);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v138 + 1) = v18;
    *&v139 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v137);
    sub_2261AC9D4(v71, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v137, v73, &v134);

    sub_22619A7B4(&v137, &qword_27D78DFD0, &qword_2261E6FF0);
    v74 = v134;
    LODWORD(v129) = v135;
    if (BYTE1(v135))
    {
      v137 = v134;
      v75 = v129;
      LOBYTE(v138) = v129 & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      sub_2261795CC(v74, *(&v74 + 1), v75, 1);
      v76 = v117;
    }

    else
    {
      v88 = v123;
      v76 = v117;
      if (v134)
      {
        v89 = sub_2261C9E2C();
        if (v90)
        {
          v118 = v90;
          v115 = v89;
          v91 = v126;
          v92 = v125;
          (*(v126 + 16))(v63, v124 + v88, v125);
          v116 = sub_2261E3FEC();
          *&v137 = 0;
          *(&v137 + 1) = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
          v93 = sub_2261C9E2C();
          if (v94)
          {
            v95 = v94;
          }

          else
          {
            v93 = 7104878;
            v95 = 0xE300000000000000;
          }

          MEMORY[0x22AA782B0](v93, v95);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v116, v137, *(&v137 + 1), 0xD000000000000061, v76 | 0x8000000000000000, 587);

          (*(v91 + 8))(v63, v92);
          v96 = sub_2261E3B8C();
          v97 = sub_2261C8E9C(v74, v96);
          v99 = v98;
          v101 = v100;

          if ((v101 & 0x100) != 0)
          {
            *&v137 = v97;
            *(&v137 + 1) = v99;
            LOBYTE(v138) = v101 & 1;
            LODWORD(v128) = v101 & 1;
            sub_22619C838();
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            LODWORD(v127) = sub_2261E3FFC();
            *&v137 = 0;
            *(&v137 + 1) = 0xE000000000000000;
            sub_2261E410C();
            v134 = v137;
            MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261ECC20);
            *&v137 = v97;
            *(&v137 + 1) = v99;
            LOBYTE(v138) = v101 & 1;
            v102 = sub_2261E429C();
            MEMORY[0x22AA782B0](v102);

            MEMORY[0x22AA782B0](0x3D644979656B202CLL, 0xE800000000000000);
            MEMORY[0x22AA782B0](v115, v118);

            MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
            v103 = v120;
            v104 = sub_2261E3C1C();
            MEMORY[0x22AA782B0](v104);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v127, v134, *(&v134 + 1), 0xD000000000000061, v117 | 0x8000000000000000, 594);

            *&v137 = 0;
            *(&v137 + 1) = 0xE000000000000000;
            sub_2261E410C();

            *&v134 = 0xD000000000000017;
            *(&v134 + 1) = 0x80000002261ECC40;
            *&v137 = v97;
            *(&v137 + 1) = v99;
            LOBYTE(v138) = v128;
            v105 = sub_2261E429C();
            v107 = v106;
            sub_2261795CC(v97, v99, v101, 1);
            MEMORY[0x22AA782B0](v105, v107);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v108 = sub_2261A9CDC(0, v134, *(&v134 + 1));

            (*(v130 + 16))(v130, 0, v108);
            sub_2261795CC(v74, *(&v74 + 1), v129, 0);
          }

          else
          {
            sub_2261790A8(v97, v99, v101, 0);

            if (v97)
            {
              v109 = v97;
              v110 = sub_2261E3BBC();
              v112 = v111;
              sub_2261795CC(v97, v99, v101, 0);
              v113 = sub_2261E3B8C();
            }

            else
            {
              v113 = 0;
              v110 = 0;
              v112 = 0xF000000000000000;
            }

            (*(v130 + 16))(v130, v113, 0);

            sub_2261795CC(v74, *(&v74 + 1), v129, 0);
            sub_2261A28B8(v110, v112);
            sub_2261795CC(v97, v99, v101, 0);
            v103 = v120;
          }

          sub_2261795CC(v97, v99, v101, BYTE1(v101) & 1);
          sub_2261AC974(v119, type metadata accessor for Key);
          (*(v121 + 8))(v103, v122);
          return;
        }

        sub_2261795CC(v74, *(&v74 + 1), v129, 0);
      }
    }

    v77 = sub_2261E3FFC();
    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v137 = 0xD00000000000001CLL;
    *(&v137 + 1) = 0x80000002261EC3E0;
    v78 = v120;
    v79 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v79);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v77, v137, *(&v137 + 1), 0xD000000000000061, v76 | 0x8000000000000000, 582);

    v80 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    (*(v130 + 16))(v130, 0, v80);

    sub_2261AC974(v119, type metadata accessor for Key);
    (*(v121 + 8))(v78, v122);
    return;
  }

  sub_22619A7B4(v25, &qword_27D78DF28, &unk_2261E6FD0);
  v50 = v124;
  v51 = v125;
  (*(v126 + 16))(v15, v124 + v123, v125);
  v52 = sub_2261E3FFC();
  *&v137 = 0;
  *(&v137 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v133 = v137;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v129, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v53 = *(v50 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

  sub_22619C448(&v134, v54);

  v55 = 0;
  v56 = 0;
  if (*(&v134 + 1) != 1)
  {
    v137 = v134;
    v138 = v135;
    v139 = v136;
    v55 = sub_2261A5660();
    v56 = v57;
    v140 = v137;
    sub_22619A7B4(&v140, &qword_27D78DE20, &unk_2261E6280);
    v141 = v138;
    sub_22619A7B4(&v141, &qword_27D78DE20, &unk_2261E6280);
    v142 = v139;
    sub_22619A7B4(&v142, &qword_27D78DE20, &unk_2261E6280);
  }

  v131 = v55;
  v132 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v58 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v58);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v52, v133, *(&v133 + 1), 0xD000000000000061, v117 | 0x8000000000000000, 564);

  (*(v126 + 8))(v15, v51);
  v59 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  (*(v130 + 16))(v130, 0, v59);
}

void sub_2261C1EA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v106 = a6;
  v11 = sub_2261E3CDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v92 - v17;
  v104 = type metadata accessor for Key(0);
  v18 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v105 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v92 - v22;
  v24 = sub_2261E3C3C();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v33 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_9:
    v39 = sub_2261E3FFC();
    sub_2261A4EAC(v39, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 602);
    v40 = 0x80000002261EC1F0;
    v41 = 1;
    v42 = 0xD000000000000013;
LABEL_11:
    v105 = sub_2261A9CDC(v41, v42, v40);
    (*(v106 + 16))(v106, 0, v105);
    v44 = v105;

    return;
  }

  v100 = a3;
  v101 = a4;
  v98 = v12;
  v99 = v11;
  v95 = &v92 - v30;
  v96 = v31;
  v97 = v29;
  sub_2261AA444();
  v34 = sub_22619DFA0();

  v103 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v34 & 1) == 0)
  {
    v43 = sub_2261E3FFC();
    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v100, v101);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v43, v113, *(&v113 + 1), 0xD000000000000061, 0x80000002261EBE30, 608);

    v42 = 0xD000000000000020;
    v40 = 0x80000002261EBEA0;
    v41 = 3;
    goto LABEL_11;
  }

  LODWORD(v94) = sub_2261E3FEC();
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v110 = v113;
  MEMORY[0x22AA782B0](0xD000000000000026, 0x80000002261ECC60);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  v35 = v100;
  MEMORY[0x22AA782B0](v100, v101);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v36 = sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448(&v113, v36);

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v38 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v38);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v93 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v94, v110, *(&v110 + 1), 0xD000000000000061, 0x80000002261EBE30, 613);

  v94 = a5;
  sub_2261AC2DC(a1, a2, v23);
  v92 = v37;
  v45 = v96;
  v46 = v97;
  v47 = (*(v96 + 48))(v23, 1, v97);
  if (v47 == 1)
  {
    sub_22619A7B4(v23, &qword_27D78DF28, &unk_2261E6FD0);
    v48 = v94;
    (*(v98 + 16))(v16, v94 + v103, v99);
    v49 = v35;
    v50 = sub_2261E3FFC();
    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v109 = v113;
    MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v49, v101);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v51 = *(v48 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

    sub_22619C448(&v110, v52);

    v53 = 0;
    v54 = 0;
    if (*(&v110 + 1) != 1)
    {
      v113 = v110;
      v114 = v111;
      v115 = v112;
      v53 = sub_2261A5660();
      v54 = v55;
      v116 = v113;
      sub_22619A7B4(&v116, &qword_27D78DE20, &unk_2261E6280);
      v117 = v114;
      sub_22619A7B4(&v117, &qword_27D78DE20, &unk_2261E6280);
      v118 = v115;
      sub_22619A7B4(&v118, &qword_27D78DE20, &unk_2261E6280);
    }

    v107 = v53;
    v108 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
    v56 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v56);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v50, v109, *(&v109 + 1), 0xD000000000000061, v93 | 0x8000000000000000, 617);

    (*(v98 + 8))(v16, v99);
    v57 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
    (*(v106 + 16))(v106, 0, v57);

    return;
  }

  (*(v45 + 32))(v95, v23, v46);
  if (sub_2261E3C1C() == a1 && v58 == a2)
  {
  }

  else
  {
    v59 = sub_2261E425C();

    if ((v59 & 1) == 0)
    {
      v77 = sub_2261E3FFC();
      *&v113 = 0;
      *(&v113 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v118 = v113;
      MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
      MEMORY[0x22AA782B0](a1, a2);
      MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
      v78 = v95;
      v79 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v79);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v100, v101);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v80 = *(v94 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

      sub_22619C448(&v113, v81);

      v110 = v113;
      v111 = v114;
      v112 = v115;
      v82 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v82);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v77, v118, *(&v118 + 1), 0xD000000000000061, v93 | 0x8000000000000000, 623);

      v83 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
      (*(v106 + 16))(v106, 0, v83);

      (*(v96 + 8))(v78, v97);
      return;
    }
  }

  v60 = sub_2261E3FEC();
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
  v61 = v95;
  v62 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v62);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v63 = v93;
  v64 = v94;
  sub_2261A4EAC(v60, v113, *(&v113 + 1), 0xD000000000000061, v93 | 0x8000000000000000, 628);

  v65 = *(v64 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager);

  v66 = sub_22619C044();

  (*(v96 + 16))(v28, v61, v97);
  v67 = v101;

  v68 = v105;
  sub_2261C3918(v66 & 1, v28, 0, v100, v67, v105);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
  *(&v114 + 1) = v104;
  *&v115 = &off_28395C890;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v113);
  sub_2261AC9D4(v68, boxed_opaque_existential_1, type metadata accessor for Key);
  type metadata accessor for SecKey();
  sub_2261C74AC(&v113, v70, &v110);

  sub_22619A7B4(&v113, &qword_27D78DFD0, &qword_2261E6FF0);
  v71 = v110;
  v72 = v111;
  if (BYTE1(v111))
  {
    v113 = v110;
    LOBYTE(v114) = v111 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_2261795CC(v71, *(&v71 + 1), v72, 1);
LABEL_24:
    v73 = sub_2261E3FFC();
    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v113 = 0xD00000000000001CLL;
    *(&v113 + 1) = 0x80000002261EC3E0;
    v74 = v95;
    v75 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v75);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v73, v113, *(&v113 + 1), 0xD000000000000061, v63 | 0x8000000000000000, 634);

    v76 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    (*(v106 + 16))(v106, 0, v76);

    sub_2261AC974(v68, type metadata accessor for Key);
    (*(v96 + 8))(v74, v97);
    return;
  }

  if (!v110)
  {
    sub_2261795CC(0, *(&v110 + 1), v111, 0);
    goto LABEL_24;
  }

  v84 = v98;
  v85 = v102;
  v86 = v99;
  (*(v98 + 16))(v102, v94 + v103, v99);
  v87 = v71;
  v88 = sub_2261E3FEC();
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
  v89 = sub_2261C9E2C();
  if (v90)
  {
    v91 = v90;
  }

  else
  {
    v89 = 7104878;
    v91 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v89, v91);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v88, v113, *(&v113 + 1), 0xD000000000000061, v93 | 0x8000000000000000, 639);

  (*(v84 + 8))(v85, v86);
  (*(v106 + 16))(v106, v87, 0);
  sub_2261795CC(v71, *(&v71 + 1), v72, 0);
  sub_2261795CC(v71, *(&v71 + 1), v72, 0);
  sub_2261AC974(v105, type metadata accessor for Key);
  (*(v96 + 8))(v95, v97);
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_2261E3C3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = (*(v2 + 64) + 263) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 48);

  v7 = *(v0 + 64);

  v8 = *(v0 + 80);

  v9 = *(v0 + 96);

  v10 = *(v0 + 112);

  v11 = *(v0 + 128);

  v12 = *(v0 + 144);

  v13 = *(v0 + 176);

  sub_22619C840(*(v0 + 192), *(v0 + 200));
  sub_22619C840(*(v0 + 208), *(v0 + 216));
  v14 = *(v0 + 232);

  v15 = *(v0 + 248);

  (*(v2 + 8))(v0 + 256, v1);
  v16 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v3 | 7);
}

uint64_t sub_2261C30C0()
{
  v2 = sub_2261E3C3C();
  v3 = v0[4];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[31];
  v8 = *(v0 + ((*(*(v2 - 8) + 64) + 263) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2261C31BC;

  return sub_2261AF71C(v9, v10, v11, v3, (v0 + 5), (v0 + 20), v4, v5);
}

uint64_t sub_2261C31BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2261C32B0()
{
  result = qword_28136E1B0;
  if (!qword_28136E1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1B0);
  }

  return result;
}

uint64_t sub_2261C32FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2261C336C()
{
  result = qword_28136EA30;
  if (!qword_28136EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA30);
  }

  return result;
}

unint64_t sub_2261C33C0()
{
  result = qword_28136EA20;
  if (!qword_28136EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA20);
  }

  return result;
}

uint64_t sub_2261C3414(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_22619C838();
  }
}

unint64_t sub_2261C3440()
{
  result = qword_28136E7E0;
  if (!qword_28136E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E7E0);
  }

  return result;
}

uint64_t sub_2261C34C0@<X0>(uint64_t a1@<X8>)
{
  sub_2261E3C2C();
  v2 = sub_2261E3C1C();
  v4 = v3;
  result = type metadata accessor for AppUUID(0);
  v6 = (a1 + *(result + 20));
  *v6 = v2;
  v6[1] = v4;
  return result;
}

uint64_t sub_2261C350C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2261E3C3C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AppUUID(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_2261C3590()
{
  v0 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v0);

  return 0x3D64697575;
}

uint64_t sub_2261C35E4()
{
  if (*(v0 + 8))
  {
    sub_2261E410C();

    strcpy(v5, "environment=");
    BYTE5(v5[1]) = 0;
    HIWORD(v5[1]) = -5120;
    v1 = sub_22619C4AC(*v0);
  }

  else
  {
    v2 = *(v0 + 4);
    v5[0] = 0;
    v5[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0x6D6E6F7269766E65, 0xEC0000003D746E65);
    v3 = sub_22619C4AC(*v0);
    MEMORY[0x22AA782B0](v3);

    MEMORY[0x22AA782B0](0x65746E756F63202CLL, 0xEA00000000003D72);
    v1 = sub_2261E423C();
  }

  MEMORY[0x22AA782B0](v1);

  MEMORY[0x22AA782B0](0x495555707061202CLL, 0xEA00000000003D44);
  MEMORY[0x22AA782B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](*(v0 + 32), *(v0 + 40));
  return v5[0];
}

uint64_t sub_2261C378C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result & 1;
  *(a7 + 4) = a2;
  *(a7 + 8) = BYTE4(a2) & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_2261C37D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261C3808()
{
  v1 = v0;
  sub_2261E410C();

  strcpy(v7, "environment=");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v2 = sub_22619C4AC(*v0);
  MEMORY[0x22AA782B0](v2);

  MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
  v3 = type metadata accessor for Key(0);
  v4 = &v0[*(v3 + 20)];
  v5 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v5);

  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](*&v1[*(v3 + 28)], *&v1[*(v3 + 28) + 8]);
  return v7[0];
}

uint64_t sub_2261C3918@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1 & 1;
  v11 = type metadata accessor for Key(0);
  v12 = v11[5];
  v13 = sub_2261E3C3C();
  result = (*(*(v13 - 8) + 32))(&a6[v12], a2, v13);
  *&a6[v11[6]] = a3;
  v15 = &a6[v11[7]];
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_2261C39F4()
{
  result = sub_2261E3C3C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2261C3A68(uint64_t a1, int a2)
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

uint64_t sub_2261C3AB0(uint64_t result, int a2, int a3)
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

void sub_2261C3B34()
{
  sub_2261E3C3C();
  if (v0 <= 0x3F)
  {
    sub_2261C3BD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2261C3BD0()
{
  if (!qword_28136E178)
  {
    type metadata accessor for SecKey();
    v0 = sub_2261E406C();
    if (!v1)
    {
      atomic_store(v0, &qword_28136E178);
    }
  }
}

char *sub_2261C3C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  v12 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v13 = sub_2261A51D8();
  v14 = sub_2261E3CDC();
  (*(*(v14 - 8) + 16))(&v11[v12], v13, v14);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  return v11;
}

uint64_t sub_2261C3CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2261E406C();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v75 = &v63[-v9];
  v78 = a2;
  v77 = *(a2 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v76 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v63[-v17];
  v19 = type metadata accessor for Key(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2261A6578(a1, &v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (v24)
  {
    v72 = a3;
    v73 = v6;
    v25(v18, 0, 1, v19);
    sub_2261C4730(v18, v23);
    v26 = &v23[*(v19 + 20)];
    v27 = sub_2261E3C1C();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30 && (v31 = *&v23[*(v19 + 24)]) != 0)
    {
      sub_2261C47F0(v23, v16);
      v25(v16, 0, 1, v19);
      v32 = v31;
      v33 = v82;
      v34 = sub_2261C4854(v16);
      v82 = v33;
      if (v33)
      {

        sub_22619A7B4(v16, &qword_27D78E060, &unk_2261E71B0);
        return sub_2261C4794(v23);
      }

      v41 = v34;
      v42 = v35;
      v43 = v36;
      sub_22619A7B4(v16, &qword_27D78E060, &unk_2261E71B0);
      if ((v43 & 0x100) != 0)
      {
        v79 = v41;
        v80 = v42;
        v81 = v43 & 1;
        sub_22619C7B4();
        swift_willThrowTypedImpl();
        v82 = swift_allocError();
        *v57 = v41;
        *(v57 + 8) = v42;
        *(v57 + 16) = v43 & 1;

        return sub_2261C4794(v23);
      }

      v70 = v43;
      sub_22619B938();
      type metadata accessor for SecKey();
      v71 = sub_2261E09C4(v32, v41, v42, v44);
      v46 = v45;
      v48 = v47;

      if ((v48 & 0x100) != 0)
      {
        v58 = v71;
        sub_2261C349C(v71, v46, v48, 1);
        sub_22619C81C(v41, v42, v70, 0);
        v79 = v58;
        v80 = v46;
        v81 = v48 & 1;
        sub_22619C7B4();
        swift_willThrowTypedImpl();
        v82 = swift_allocError();
        *v59 = v58;
        *(v59 + 8) = v46;
        *(v59 + 16) = v48 & 1;

        sub_2261C3498(v58, v46, v48, 1);
        return sub_2261C4794(v23);
      }

      v65 = v41;
      v66 = v42;
      v67 = v46;
      v68 = v48;
      v69 = v32;
      v79 = v71;
      v49 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E068, qword_2261E71C0);
      v50 = v75;
      v51 = v78;
      if (swift_dynamicCast())
      {
        v52 = v77;
        v74 = *(v77 + 56);
        (v74)(v50, 0, 1, v51);
        v77 = *(v52 + 32);
        (v77)(v76, v50, v51);
        v75 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
        v64 = sub_2261E400C();
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_2261E410C();

        v79 = 0xD00000000000001ELL;
        v80 = 0x80000002261ED2B0;
        sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
        v53 = sub_2261E423C();
        MEMORY[0x22AA782B0](v53);

        MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
        v55 = v65;
        v54 = v66;
        MEMORY[0x22AA782B0](v65, v66);
        sub_22619C81C(v55, v54, v70, 0);
        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v64, v79, v80, 0xD000000000000068, 0x80000002261ED1B0, 46);

        sub_2261C3498(v71, v67, v68, 0);
        sub_2261C4794(v23);
        v56 = v72;
        (v77)(v72, v76, v51);
        (v74)(v56, 0, 1, v51);
        sub_22619C7B4();
        sub_2261E434C();
        return swift_storeEnumTagMultiPayload();
      }

      sub_22619C81C(v65, v66, v70, 0);
      (*(v77 + 56))(v50, 1, 1, v51);
      (*(v74 + 8))(v50, v73);
      v60 = sub_2261E3FEC();
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000032, 0x80000002261ED240);
      sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
      v61 = sub_2261E423C();
      MEMORY[0x22AA782B0](v61);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v60, v79, v80, 0xD000000000000068, 0x80000002261ED1B0, 42);

      sub_2261C3498(v71, v67, v68, 0);
      sub_2261C4794(v23);
      v62 = v72;
      *v72 = 0xD00000000000002ALL;
      v62[1] = 0x80000002261ED280;
      *(v62 + 16) = 1;
      sub_22619C7B4();
    }

    else
    {
      v37 = sub_2261E3FEC();
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_2261E410C();

      v79 = 0xD00000000000001CLL;
      v80 = 0x80000002261ED190;
      sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
      v38 = sub_2261E423C();
      MEMORY[0x22AA782B0](v38);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v37, v79, v80, 0xD000000000000068, 0x80000002261ED1B0, 34);

      sub_2261C4794(v23);
      v39 = v72;
      *v72 = 0xD000000000000019;
      v39[1] = 0x80000002261ED220;
      *(v39 + 16) = 0;
      sub_22619C7B4();
    }

    sub_2261E434C();
  }

  else
  {
    v25(v18, 1, 1, v19);
    sub_22619A7B4(v18, &qword_27D78E060, &unk_2261E71B0);
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x80000002261EBA10;
    *(a3 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261C4730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Key(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2261C4794(uint64_t a1)
{
  v2 = type metadata accessor for Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261C47F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2261C4854(uint64_t a1)
{
  v113 = sub_2261E3D3C();
  v115 = *(v113 - 8);
  v2 = *(v115 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2261E3D2C();
  v116 = *(v114 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  v112 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_2261E3E2C();
  v117 = *(v118 - 8);
  v6 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v8 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v96 - v11;
  v13 = type metadata accessor for Key(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v96 - v19;
  sub_22619A73C(a1, v12, &qword_27D78E060, &unk_2261E71B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22619A7B4(v12, &qword_27D78E060, &unk_2261E71B0);
    LOBYTE(v121) = 0;
    return 0xD000000000000017;
  }

  else
  {
    sub_2261C4730(v12, v18);
    sub_2261C4730(v18, v20);
    sub_22619AC3C();
    sub_2261A2CB8(v126);

    v22 = v20;
    if (*(&v126[0] + 1) == 1)
    {
      v23 = sub_2261E3FEC();
      *&v127 = 0;
      *(&v127 + 1) = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000034, 0x80000002261ED2D0);
      sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
      v24 = sub_2261E423C();
      MEMORY[0x22AA782B0](v24);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v23, v127, *(&v127 + 1), 0xD000000000000068, 0x80000002261ED1B0, 89);

      sub_2261C4794(v20);
      LOBYTE(v121) = 1;
      return 0xD000000000000031;
    }

    else
    {
      v127 = v126[0];
      v128 = v126[1];
      v129 = v126[2];
      sub_2261A54B0();
      if (v25 && (sub_2261E3E1C(), v110 = sub_2261E3DEC(), v27 = v26, , v28 = *(v117 + 8), v28(v8, v118), v27 >> 60 != 15))
      {
        v109 = v27;
        v34 = v22 + *(v13 + 20);
        sub_2261E3C1C();
        sub_2261E3E1C();
        v35 = sub_2261E3DEC();
        v117 = v22;
        v37 = v36;

        v38 = v118;
        v28(v8, v118);
        if (v37 >> 60 == 15)
        {
          v39 = sub_2261E3FEC();
          *&v121 = 0;
          *(&v121 + 1) = 0xE000000000000000;
          sub_2261E410C();

          v124 = 0xD000000000000024;
          v125 = 0x80000002261ED350;
          sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
          v40 = v117;
          v41 = sub_2261E423C();
          MEMORY[0x22AA782B0](v41);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v130 = v129;
          v131 = v128;
          v132 = v127;
          v121 = v127;
          v122 = v128;
          v123 = v129;
          sub_22619C894();
          v42 = sub_2261E423C();
          v44 = v43;
          sub_22619A7B4(&v132, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v131, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v130, &qword_27D78DE20, &unk_2261E6280);
          MEMORY[0x22AA782B0](v42, v44);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v39, v124, v125, 0xD000000000000068, 0x80000002261ED1B0, 100);

          sub_2261A28B8(v110, v109);
          sub_2261C4794(v40);
          LOBYTE(v121) = 0;
          return 0xD000000000000021;
        }

        else
        {
          v108 = v35;
          v45 = (v117 + *(v13 + 28));
          v46 = *v45;
          v47 = v45[1];
          sub_2261E3E1C();
          v48 = sub_2261E3DEC();
          v50 = v49;
          v28(v8, v38);
          if (v50 >> 60 == 15)
          {
            v51 = v37;
            v52 = sub_2261E3FEC();
            *&v121 = 0;
            *(&v121 + 1) = 0xE000000000000000;
            sub_2261E410C();

            v124 = 0xD000000000000026;
            v125 = 0x80000002261ED3B0;
            sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
            v53 = v117;
            v54 = sub_2261E423C();
            MEMORY[0x22AA782B0](v54);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            v130 = v129;
            v131 = v128;
            v132 = v127;
            v121 = v127;
            v122 = v128;
            v123 = v129;
            sub_22619C894();
            v55 = sub_2261E423C();
            v57 = v56;
            sub_22619A7B4(&v132, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v131, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v130, &qword_27D78DE20, &unk_2261E6280);
            MEMORY[0x22AA782B0](v55, v57);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v52, v124, v125, 0xD000000000000068, 0x80000002261ED1B0, 105);

            sub_2261A28B8(v108, v51);
            sub_2261A28B8(v110, v109);
            sub_2261C4794(v53);
            LOBYTE(v121) = 0;
            return 0xD000000000000023;
          }

          else
          {
            v130 = v127;
            v107 = v48;
            v106 = v50;
            sub_22619A7B4(&v130, &qword_27D78DE20, &unk_2261E6280);
            v131 = v128;
            sub_22619A7B4(&v131, &qword_27D78DE20, &unk_2261E6280);
            v132 = v129;
            sub_22619A7B4(&v132, &qword_27D78DE20, &unk_2261E6280);
            v102 = sub_22619C4AC(*v117);
            v101 = v58;
            v59 = sub_2261C8280(&qword_28136E230, MEMORY[0x277CC5540]);
            v60 = v111;
            v61 = v113;
            v96[1] = v59;
            sub_2261E3D1C();
            v62 = v108;
            sub_22619D8F4(v108, v37);
            sub_22619D714(v62, v37);
            sub_2261A28B8(v62, v37);
            v63 = v112;
            sub_2261E3D0C();
            v64 = *(v115 + 8);
            v115 += 8;
            v120 = v64;
            v64(v60, v61);
            v65 = v114;
            *(&v122 + 1) = v114;
            v66 = sub_2261C8280(&qword_28136E238, MEMORY[0x277CC5290]);
            v103 = v37;
            v67 = v66;
            *&v123 = v66;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v121);
            v69 = v116;
            v70 = *(v116 + 16);
            v118 = v116 + 16;
            v119 = v70;
            v70(boxed_opaque_existential_1, v63, v65);
            __swift_project_boxed_opaque_existential_0(&v121, *(&v122 + 1));
            v105 = sub_22619D680;
            sub_2261E3ADC();
            v71 = *(v69 + 8);
            v116 = v69 + 8;
            v104 = v71;
            v71(v63, v65);
            v72 = v124;
            v73 = v125;
            __swift_destroy_boxed_opaque_existential_0(&v121);
            v100 = sub_2261E3B9C();
            v99 = v74;
            sub_22619C840(v72, v73);
            sub_2261E3D1C();
            v75 = v110;
            v76 = v109;
            sub_22619D8F4(v110, v109);
            sub_22619D714(v75, v76);
            sub_2261A28B8(v75, v76);
            sub_2261E3D0C();
            v120(v60, v61);
            *(&v122 + 1) = v65;
            *&v123 = v67;
            v77 = __swift_allocate_boxed_opaque_existential_1(&v121);
            v119(v77, v63, v65);
            __swift_project_boxed_opaque_existential_0(&v121, *(&v122 + 1));
            sub_2261E3ADC();
            v104(v63, v65);
            v78 = v124;
            v79 = v125;
            __swift_destroy_boxed_opaque_existential_0(&v121);
            v98 = sub_2261E3B9C();
            v97 = v80;
            sub_22619C840(v78, v79);
            sub_2261E3D1C();
            v81 = v107;
            v82 = v106;
            sub_22619D8F4(v107, v106);
            sub_22619D714(v81, v82);
            sub_2261A28B8(v81, v82);
            sub_2261E3D0C();
            v120(v60, v61);
            *(&v122 + 1) = v65;
            *&v123 = v67;
            v83 = __swift_allocate_boxed_opaque_existential_1(&v121);
            v119(v83, v63, v65);
            __swift_project_boxed_opaque_existential_0(&v121, *(&v122 + 1));
            sub_2261E3ADC();
            v104(v63, v65);
            v84 = v124;
            v85 = v125;
            __swift_destroy_boxed_opaque_existential_0(&v121);
            v86 = sub_2261E3B9C();
            v88 = v87;
            sub_22619C840(v84, v85);
            *&v121 = 0;
            *(&v121 + 1) = 0xE000000000000000;
            sub_2261E410C();

            v89 = sub_2261A2B60();
            v91 = *v89;
            v90 = v89[1];
            *&v121 = v91;
            *(&v121 + 1) = v90;

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            MEMORY[0x22AA782B0](v100, v99);

            MEMORY[0x22AA782B0](v102, v101);

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            MEMORY[0x22AA782B0](v98, v97);

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            MEMORY[0x22AA782B0](v86, v88);

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            v92 = sub_2261A2B78();
            v94 = *v92;
            v93 = v92[1];

            MEMORY[0x22AA782B0](v94, v93);

            sub_2261A28B8(v107, v106);
            sub_2261A28B8(v110, v109);
            sub_2261A28B8(v108, v103);
            v95 = v121;
            sub_2261C4794(v117);
            return v95;
          }
        }
      }

      else
      {
        v29 = sub_2261E3FEC();
        *&v121 = 0;
        *(&v121 + 1) = 0xE000000000000000;
        sub_2261E410C();

        v124 = 0xD000000000000019;
        v125 = 0x80000002261EBB90;
        sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
        v30 = sub_2261E423C();
        MEMORY[0x22AA782B0](v30);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v130 = v129;
        v131 = v128;
        v132 = v127;
        v121 = v127;
        v122 = v128;
        v123 = v129;
        sub_22619C894();
        v31 = sub_2261E423C();
        v33 = v32;
        sub_22619A7B4(&v132, &qword_27D78DE20, &unk_2261E6280);
        sub_22619A7B4(&v131, &qword_27D78DE20, &unk_2261E6280);
        sub_22619A7B4(&v130, &qword_27D78DE20, &unk_2261E6280);
        MEMORY[0x22AA782B0](v31, v33);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v29, v124, v125, 0xD000000000000068, 0x80000002261ED1B0, 95);

        sub_2261C4794(v22);
        LOBYTE(v121) = 1;
        return 0xD000000000000016;
      }
    }
  }
}

uint64_t sub_2261C5B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v164 = a4;
  v138 = sub_2261E406C();
  v137 = *(v138 - 8);
  v7 = *(v137 + 64);
  v8 = MEMORY[0x28223BE20](v138);
  v145 = v121 - v9;
  v152 = a3;
  v144 = *(a3 - 8);
  v10 = *(v144 + 64);
  MEMORY[0x28223BE20](v8);
  v139 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2261E3D3C();
  v146 = *(v142 - 8);
  v12 = *(v146 + 64);
  MEMORY[0x28223BE20](v142);
  v140 = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2261E3D2C();
  v147 = *(v143 - 8);
  v14 = *(v147 + 64);
  MEMORY[0x28223BE20](v143);
  v141 = v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2261E3E2C();
  v148 = *(v150 - 8);
  v16 = *(v148 + 64);
  MEMORY[0x28223BE20](v150);
  v149 = v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2261E406C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v121 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v121 - v25;
  v27 = type metadata accessor for Key(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18);
  if ((*(*(a2 - 8) + 48))(v22, 1, a2) == 1)
  {
    (*(v19 + 8))(v22, v18);
    (*(v28 + 56))(v26, 1, 1, v27);
LABEL_4:
    sub_22619A7B4(v26, &qword_27D78E060, &unk_2261E71B0);
    v33 = v164;
    *v164 = 0xD000000000000017;
    v33[1] = 0x80000002261EBA10;
    *(v33 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v32 = swift_dynamicCast();
  (*(v28 + 56))(v26, v32 ^ 1u, 1, v27);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_4;
  }

  v35 = v31;
  sub_2261C4730(v26, v31);
  sub_22619AC3C();
  sub_2261A2CB8(v157);

  if (*(&v157[0] + 1) == 1)
  {
    v36 = sub_2261E3FEC();
    *&v158 = 0;
    *(&v158 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000034, 0x80000002261ED2D0);
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
    v37 = sub_2261E423C();
    MEMORY[0x22AA782B0](v37);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v36, v158, *(&v158 + 1), 0xD000000000000068, 0x80000002261ED1B0, 89);

    v38 = 0x80000002261ED310;
    sub_2261C4794(v31);
    v39 = 0xD000000000000031;
LABEL_10:
    v51 = v164;
    *v164 = v39;
    v51[1] = v38;
    *(v51 + 16) = 1;
LABEL_11:
    sub_22619C7B4();
    goto LABEL_12;
  }

  v158 = v157[0];
  v159 = v157[1];
  v160 = v157[2];
  sub_2261A54B0();
  v40 = v150;
  if (!v41)
  {
    goto LABEL_9;
  }

  v42 = v149;
  sub_2261E3E1C();
  v136 = sub_2261E3DEC();
  v44 = v43;

  v45 = *(v148 + 8);
  v45(v42, v40);
  v148 = v44;
  if (v44 >> 60 == 15)
  {
LABEL_9:
    v46 = sub_2261E3FEC();
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v156 = 0xD000000000000019;
    *(&v156 + 1) = 0x80000002261EBB90;
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
    v47 = sub_2261E423C();
    MEMORY[0x22AA782B0](v47);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v161 = v160;
    v162 = v159;
    v163 = v158;
    v153 = v158;
    v154 = v159;
    v155 = v160;
    sub_22619C894();
    v48 = sub_2261E423C();
    v50 = v49;
    sub_22619A7B4(&v163, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v162, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v161, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v48, v50);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v46, v156, *(&v156 + 1), 0xD000000000000068, 0x80000002261ED1B0, 95);

    v38 = 0x80000002261EBBB0;
    sub_2261C4794(v35);
    v39 = 0xD000000000000016;
    goto LABEL_10;
  }

  v52 = &v35[*(v27 + 20)];
  sub_2261E3C1C();
  v53 = v149;
  sub_2261E3E1C();
  v135 = sub_2261E3DEC();
  v55 = v54;

  v45(v53, v40);
  if (v55 >> 60 == 15)
  {
    v56 = sub_2261E3FEC();
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v156 = 0xD000000000000024;
    *(&v156 + 1) = 0x80000002261ED350;
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
    v57 = sub_2261E423C();
    MEMORY[0x22AA782B0](v57);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v161 = v160;
    v162 = v159;
    v163 = v158;
    v153 = v158;
    v154 = v159;
    v155 = v160;
    sub_22619C894();
    v58 = sub_2261E423C();
    v60 = v59;
    sub_22619A7B4(&v163, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v162, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v161, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v58, v60);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v56, v156, *(&v156 + 1), 0xD000000000000068, 0x80000002261ED1B0, 100);

    v61 = 0x80000002261ED380;
    sub_2261A28B8(v136, v148);
    sub_2261C4794(v35);
    v62 = 0xD000000000000021;
LABEL_18:
    v74 = v164;
    *v164 = v62;
    v74[1] = v61;
    *(v74 + 16) = 0;
    goto LABEL_11;
  }

  v134 = v55;
  v63 = &v35[*(v27 + 28)];
  v64 = v53;
  v65 = *v63;
  v66 = *(v63 + 1);
  sub_2261E3E1C();
  v133 = sub_2261E3DEC();
  v68 = v67;
  v45(v64, v40);
  v150 = v68;
  if (v68 >> 60 == 15)
  {
    v69 = sub_2261E3FEC();
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v156 = 0xD000000000000026;
    *(&v156 + 1) = 0x80000002261ED3B0;
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
    v70 = sub_2261E423C();
    MEMORY[0x22AA782B0](v70);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v161 = v160;
    v162 = v159;
    v163 = v158;
    v153 = v158;
    v154 = v159;
    v155 = v160;
    sub_22619C894();
    v71 = sub_2261E423C();
    v73 = v72;
    sub_22619A7B4(&v163, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v162, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v161, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v71, v73);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v69, v156, *(&v156 + 1), 0xD000000000000068, 0x80000002261ED1B0, 105);

    v61 = 0x80000002261ED3E0;
    sub_2261A28B8(v135, v134);
    sub_2261A28B8(v136, v148);
    sub_2261C4794(v35);
    v62 = 0xD000000000000023;
    goto LABEL_18;
  }

  v121[0] = v27;
  v128 = sub_22619C4AC(*v35);
  v127 = v75;
  v76 = sub_2261C8280(&qword_28136E230, MEMORY[0x277CC5540]);
  v77 = v140;
  v78 = v142;
  v121[1] = v76;
  sub_2261E3D1C();
  v79 = v135;
  v80 = v134;
  sub_22619D8F4(v135, v134);
  sub_22619D714(v79, v80);
  sub_2261A28B8(v79, v80);
  v81 = v141;
  sub_2261E3D0C();
  v122 = *(v146 + 8);
  v146 += 8;
  v122(v77, v78);
  v82 = v143;
  *(&v154 + 1) = v143;
  *&v155 = sub_2261C8280(&qword_28136E238, MEMORY[0x277CC5290]);
  v130 = v155;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v153);
  v129 = v35;
  v84 = v147;
  v85 = *(v147 + 16);
  v149 = (v147 + 16);
  v151 = v85;
  v85(boxed_opaque_existential_1, v81, v82);
  __swift_project_boxed_opaque_existential_0(&v153, *(&v154 + 1));
  v132 = sub_22619D680;
  sub_2261E3ADC();
  v86 = v136;
  v87 = *(v84 + 8);
  v147 = v84 + 8;
  v131 = v87;
  v87(v81, v82);
  v88 = v163;
  __swift_destroy_boxed_opaque_existential_0(&v153);
  v126 = sub_2261E3B9C();
  v125 = v89;
  sub_22619C840(v88, *(&v88 + 1));
  sub_2261E3D1C();
  v90 = v148;
  sub_22619D8F4(v86, v148);
  sub_22619D714(v86, v90);
  sub_2261A28B8(v86, v90);
  sub_2261E3D0C();
  v91 = v122;
  v122(v77, v78);
  *(&v154 + 1) = v82;
  *&v155 = v130;
  v92 = __swift_allocate_boxed_opaque_existential_1(&v153);
  v151(v92, v81, v82);
  __swift_project_boxed_opaque_existential_0(&v153, *(&v154 + 1));
  sub_2261E3ADC();
  v131(v81, v82);
  v93 = v163;
  __swift_destroy_boxed_opaque_existential_0(&v153);
  v124 = sub_2261E3B9C();
  v123 = v94;
  sub_22619C840(v93, *(&v93 + 1));
  sub_2261E3D1C();
  v95 = v133;
  v96 = v150;
  sub_22619D8F4(v133, v150);
  sub_22619D714(v95, v96);
  sub_2261A28B8(v95, v96);
  sub_2261E3D0C();
  v91(v77, v78);
  *(&v154 + 1) = v82;
  *&v155 = v130;
  v97 = __swift_allocate_boxed_opaque_existential_1(&v153);
  v151(v97, v81, v82);
  __swift_project_boxed_opaque_existential_0(&v153, *(&v154 + 1));
  sub_2261E3ADC();
  v131(v81, v82);
  v98 = v163;
  __swift_destroy_boxed_opaque_existential_0(&v153);
  v99 = sub_2261E3B9C();
  v101 = v100;
  sub_22619C840(v98, *(&v98 + 1));
  *&v153 = 0;
  *(&v153 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v102 = sub_2261A2B60();
  v104 = *v102;
  v103 = v102[1];

  *&v153 = v104;
  *(&v153 + 1) = v103;
  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v126, v125);

  MEMORY[0x22AA782B0](v128, v127);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v124, v123);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v99, v101);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  v105 = sub_2261A2B78();
  v107 = *v105;
  v106 = v105[1];

  MEMORY[0x22AA782B0](v107, v106);

  v108 = v153;
  v161 = v153;

  v109 = v145;
  v110 = v152;
  if (swift_dynamicCast())
  {

    sub_2261A28B8(v133, v150);
    sub_2261A28B8(v135, v134);
    sub_2261A28B8(v136, v148);
    v162 = v158;
    sub_22619A7B4(&v162, &qword_27D78DE20, &unk_2261E6280);
    v163 = v159;
    sub_22619A7B4(&v163, &qword_27D78DE20, &unk_2261E6280);
    v153 = v160;
    sub_22619A7B4(&v153, &qword_27D78DE20, &unk_2261E6280);
    v111 = v144;
    (*(v144 + 56))(v109, 0, 1, v110);
    sub_2261C4794(v129);
    v112 = *(v111 + 32);
    v113 = v139;
    v112(v139, v109, v110);
    v112(v164, v113, v110);
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v144 + 56))(v109, 1, 1, v110);
  (*(v137 + 8))(v109, v138);
  v151 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v114 = sub_2261E3FEC();
  *&v153 = 0;
  *(&v153 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v156 = v153;
  MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBC30);
  MEMORY[0x22AA782B0](v108, *(&v108 + 1));

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
  v115 = v129;
  v116 = sub_2261E423C();
  MEMORY[0x22AA782B0](v116);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v161 = v160;
  v162 = v159;
  v163 = v158;
  v153 = v158;
  v154 = v159;
  v155 = v160;
  sub_22619C894();
  v117 = sub_2261E423C();
  v119 = v118;
  sub_22619A7B4(&v163, &qword_27D78DE20, &unk_2261E6280);
  sub_22619A7B4(&v162, &qword_27D78DE20, &unk_2261E6280);
  sub_22619A7B4(&v161, &qword_27D78DE20, &unk_2261E6280);
  MEMORY[0x22AA782B0](v117, v119);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v114, v156, *(&v156 + 1), 0xD000000000000068, 0x80000002261ED1B0, 117);

  sub_2261A28B8(v133, v150);
  sub_2261A28B8(v135, v134);
  sub_2261A28B8(v136, v148);
  sub_2261C4794(v115);
  v120 = v164;
  *v164 = 0xD000000000000025;
  v120[1] = 0x80000002261EBC60;
  *(v120 + 16) = 1;
  sub_22619C7B4();
LABEL_12:
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261C74AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v89 = a3;
  v86 = a2;
  v6 = sub_2261E406C();
  v7 = sub_2261E406C();
  v83 = *(v7 - 1);
  v84 = v7;
  v8 = *(v83 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = v73 - v10;
  v94 = v6;
  v11 = *(v6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v73 - v22;
  v24 = type metadata accessor for Key(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v88 = v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22619A73C(a1, &v90, &qword_27D78DFD0, &qword_2261E6FF0);
  if (!v93)
  {
    sub_22619A7B4(&v90, &qword_27D78DFD0, &qword_2261E6FF0);
    (*(v25 + 56))(v23, 1, 1, v24);
    goto LABEL_6;
  }

  v81 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  v28 = swift_dynamicCast();
  v29 = *(v25 + 56);
  v29(v23, v28 ^ 1u, 1, v24);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_6:
    sub_22619A7B4(v23, &qword_27D78E060, &unk_2261E71B0);
    v35 = v89;
    *v89 = 0xD000000000000017;
    v35[1] = 0x80000002261EBA10;
    *(v35 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v30 = v23;
  v31 = v88;
  sub_2261C4730(v30, v88);
  sub_2261C47F0(v31, v21);
  v29(v21, 0, 1, v24);
  v80 = v3;
  v32 = sub_2261C4854(v21);
  v82 = v4;
  if (v4)
  {
    sub_22619A7B4(v21, &qword_27D78E060, &unk_2261E71B0);
    return sub_2261C4794(v31);
  }

  v37 = v32;
  v38 = v33;
  v39 = v34;
  sub_22619A7B4(v21, &qword_27D78E060, &unk_2261E71B0);
  if ((v39 & 0x100) != 0)
  {
    v90 = v37;
    v91 = v38;
    v92 = v39 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v82 = swift_allocError();
    *v54 = v37;
    *(v54 + 8) = v38;
    *(v54 + 16) = v39 & 1;
LABEL_14:
    v31 = v88;
    return sub_2261C4794(v31);
  }

  sub_22619B938();
  type metadata accessor for SecKey();
  v41 = v40;

  v79 = v41;
  v42 = sub_2261DFE64(v37, v38, v41);
  v44 = v43;
  v46 = v45;
  sub_22619C81C(v37, v38, v39, 0);

  if ((v46 & 0x100) != 0)
  {
    sub_2261C349C(v42, v44, v46, 1);
    sub_22619C81C(v37, v38, v39, 0);
    v90 = v42;
    v91 = v44;
    v92 = v46 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v82 = swift_allocError();
    *v55 = v42;
    *(v55 + 8) = v44;
    *(v55 + 16) = v46 & 1;
    sub_2261C3498(v42, v44, v46, 1);
    goto LABEL_14;
  }

  v75 = v39;
  v76 = v37;
  v77 = v44;
  v78 = v46;
  if (!v42)
  {
    v83 = v38;
    v84 = 0;
    v53 = v85;
    v48 = v86;
    v51 = *(v86 - 1);
    (*(v51 + 56))(v85, 1, 1, v86);
    v50 = v81;
    goto LABEL_17;
  }

  v90 = v42;
  v47 = v42;
  v48 = v86;
  v49 = swift_dynamicCast();
  v50 = v81;
  if (v49)
  {
    v83 = v38;
    v84 = v42;
    v51 = *(v48 - 1);
    v52 = *(v51 + 56);
    v52(v15, 0, 1, v48);
    v53 = v85;
    (*(v51 + 32))(v85, v15, v48);
    v52(v53, 0, 1, v48);
LABEL_17:
    v56 = v94;
    (*(v50 + 56))(v53, 0, 1, v94);
    v57 = *(v50 + 32);
    v58 = v87;
    v81 = v50 + 32;
    v86 = v57;
    (v57)(v87, v53, v56);
    v59 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
    LODWORD(v85) = sub_2261E400C();
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002CLL, 0x80000002261ED410);
    v73[1] = sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
    v60 = sub_2261E423C();
    MEMORY[0x22AA782B0](v60);

    MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
    v61 = v76;
    v62 = v83;
    MEMORY[0x22AA782B0](v76, v83);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v74 = "Invalid parameter fields. { ";
    v79 = v59;
    sub_2261A4EAC(v85, v90, v91, 0xD000000000000068, 0x80000002261ED1B0, 69);

    if ((*(v51 + 48))(v58, 1, v48) == 1)
    {
      v63 = sub_2261E400C();
      v90 = 0;
      v91 = 0xE000000000000000;
      sub_2261E410C();

      v90 = 0xD000000000000021;
      v91 = 0x80000002261ED440;
      v64 = v88;
      v65 = sub_2261E423C();
      MEMORY[0x22AA782B0](v65);

      MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
      MEMORY[0x22AA782B0](v61, v62);
      sub_22619C81C(v61, v62, v75, 0);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v63, v90, v91, 0xD000000000000068, v74 | 0x8000000000000000, 71);

      sub_2261C3498(v84, v77, v78, 0);
      sub_2261C4794(v64);
    }

    else
    {
      sub_2261C4794(v88);
      sub_2261C3498(v84, v77, v78, 0);
      sub_22619C81C(v61, v62, v75, 0);
    }

    (v86)(v89, v87, v94);
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  sub_22619C81C(v76, v38, v75, 0);
  (*(*(v48 - 1) + 56))(v15, 1, 1, v48);
  v66 = *(v50 + 8);
  v67 = v50;
  v68 = v94;
  v66(v15, v94);
  v69 = v85;
  (*(v67 + 56))(v85, 1, 1, v68);
  (*(v83 + 8))(v69, v84);
  LOBYTE(v67) = sub_2261E3FFC();
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_2261E410C();

  v90 = 0xD00000000000002ELL;
  v91 = 0x80000002261ED470;
  sub_2261C8280(qword_28136E2D0, type metadata accessor for Key);
  v70 = v88;
  v71 = sub_2261E423C();
  MEMORY[0x22AA782B0](v71);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v67, v90, v91, 0xD000000000000068, 0x80000002261ED1B0, 65);

  sub_2261C3498(v42, v77, v78, 0);
  sub_2261C4794(v70);
  v72 = v89;
  *v89 = 0xD00000000000002BLL;
  v72[1] = 0x80000002261ED4A0;
  *(v72 + 16) = 1;
  sub_22619C7B4();
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261C80B0()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v4 = sub_2261E3CDC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261C815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  *(v13 + 6) = 0;
  *(v13 + 7) = 0;
  v14 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v15 = sub_2261A51D8();
  v16 = sub_2261E3CDC();
  result = (*(*(v16 - 8) + 16))(&v13[v14], v15, v16);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  *(v13 + 5) = a4;
  *a5 = v13;
  return result;
}

uint64_t sub_2261C8280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for KeyDataManager()
{
  result = qword_28136F1B0;
  if (!qword_28136F1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261C831C()
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261C83C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = v3;
  v14[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E070, &qword_2261E7248);
  v8 = sub_2261E426C();
  objc_sync_enter(v8);
  swift_unknownObjectRelease();
  if (qword_28136EB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_28136EB60;

  v10 = sub_22619F5B4(a1, a2, v9);

  if ((v10 & 1) == 0)
  {
    swift_beginAccess();

    sub_22619FAAC(v14, a1, a2);
    swift_endAccess();

    a3(v11);
  }

  v12 = sub_2261E426C();
  objc_sync_exit(v12);
  return swift_unknownObjectRelease();
}

SecKeyRef sub_2261C854C(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E5760;
  v4 = *MEMORY[0x277CDBFD0];
  *(inited + 32) = *MEMORY[0x277CDBFD0];
  v5 = sub_2261A9B48(0, &qword_28136E1A0, 0x277CCABB0);
  v6 = v4;
  *(inited + 40) = sub_2261E402C();
  v7 = *MEMORY[0x277CDC158];
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v8 = *MEMORY[0x277CDC170];
  type metadata accessor for CFString(0);
  *(inited + 80) = v8;
  v9 = *MEMORY[0x277CDC188];
  *(inited + 104) = v10;
  *(inited + 112) = v9;
  v11 = *MEMORY[0x277CDC040];
  *(inited + 144) = v10;
  *(inited + 120) = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v11;
  sub_2261CB294(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
  swift_arrayDestroy();
  if (a1)
  {
    v16 = *MEMORY[0x277CDBEC0];
    type metadata accessor for SecAccessControl(0);
    v54 = v17;
    *&v53 = a1;
    sub_22619A7A4(&v53, error);
    v18 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CAD8C(error, v16, isUniquelyReferenced_nonNull_native);
    if (qword_28136F2D0 != -1)
    {
      swift_once();
    }

    v20 = sub_2261E3CDC();
    __swift_project_value_buffer(v20, qword_28136F2D8);
    v21 = sub_2261E400C();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261ED5A0);
    error[0] = v18;
    sub_2261E413C();
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v21, v53, *(&v53 + 1), 0xD000000000000063, 0x80000002261ED530, 37);

LABEL_5:
    error[0] = 0;
    sub_2261CB6C8(&qword_28136E200, type metadata accessor for CFString);
    v22 = sub_2261E3D4C();

    RandomKey = SecKeyCreateRandomKey(v22, error);

    v24 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError);
      v25 = swift_allocError();
      *v26 = v24;
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      v27 = sub_2261E3CDC();
      __swift_project_value_buffer(v27, qword_28136F2D8);
      v28 = sub_2261E3FFC();
      *&v53 = 0;
      *(&v53 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v53 = 0xD00000000000001ELL;
      *(&v53 + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v29 = sub_2261E429C();
      MEMORY[0x22AA782B0](v29);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v28, v53, *(&v53 + 1), 0xD000000000000063, 0x80000002261ED530, 69);

      *&v53 = 0;
      *(&v53 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v53 = 0xD00000000000001ELL;
      *(&v53 + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v30 = sub_2261E429C();
      MEMORY[0x22AA782B0](v30);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v31 = v53;
      sub_22619C7B4();
      swift_allocError();
      *v32 = v31;
      *(v32 + 16) = 1;
      swift_willThrow();
    }

    else if (!RandomKey)
    {
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      v49 = sub_2261E3CDC();
      __swift_project_value_buffer(v49, qword_28136F2D8);
      v50 = sub_2261E3FFC();
      RandomKey = 0x80000002261ED5D0;
      sub_2261A4EAC(v50, 0xD000000000000015, 0x80000002261ED5D0, 0xD000000000000063, 0x80000002261ED530, 74);
      sub_22619C7B4();
      swift_allocError();
      *v51 = 0xD000000000000015;
      *(v51 + 8) = 0x80000002261ED5D0;
      *(v51 + 16) = 1;
      swift_willThrow();
    }

    goto LABEL_14;
  }

  v33 = sub_2261CB3BC();
  if (!v1)
  {
    v41 = qword_28136F2D0;
    v42 = v33;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_2261E3CDC();
    __swift_project_value_buffer(v43, qword_28136F2D8);
    v44 = sub_2261E400C();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261ED5A0);
    error[0] = v42;
    type metadata accessor for SecAccessControl(0);
    v46 = v45;
    sub_2261E413C();
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v44, 0, 0xE000000000000000, 0xD000000000000063, 0x80000002261ED530, 59);

    v47 = *MEMORY[0x277CDBEC0];
    v54 = v46;
    *&v53 = v42;
    sub_22619A7A4(&v53, error);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CAD8C(error, v47, v48);

    goto LABEL_5;
  }

  if (qword_28136F2D0 != -1)
  {
    swift_once();
  }

  v34 = sub_2261E3CDC();
  __swift_project_value_buffer(v34, qword_28136F2D8);
  v35 = sub_2261E3FFC();
  sub_2261E410C();

  swift_getErrorValue();
  v36 = sub_2261E429C();
  MEMORY[0x22AA782B0](v36);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v35, 0xD000000000000029, 0x80000002261ED500, 0xD000000000000063, 0x80000002261ED530, 55);

  sub_2261E410C();

  *&v53 = 0xD000000000000029;
  *(&v53 + 1) = 0x80000002261ED500;
  swift_getErrorValue();
  v37 = sub_2261E429C();
  MEMORY[0x22AA782B0](v37);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  RandomKey = 0xD000000000000029;
  sub_22619C7B4();
  swift_allocError();
  *v38 = 0xD000000000000029;
  *(v38 + 8) = 0x80000002261ED500;
  *(v38 + 16) = 1;
  swift_willThrow();

LABEL_14:
  v39 = *MEMORY[0x277D85DE8];
  return RandomKey;
}

CFDataRef sub_2261C8E9C(__SecKey *a1, const __CFData *a2)
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC300];
  if (SecKeyIsAlgorithmSupported(a1, kSecKeyOperationTypeSign, *MEMORY[0x277CDC300]))
  {
    error[0] = 0;
    result = SecKeyCreateSignature(a1, v4, a2, error);
    v6 = error[0];
    if (error[0])
    {
      v7 = result;
      type metadata accessor for CFError(0);
      sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError);
      v8 = swift_allocError();
      *v9 = v6;
      sub_2261E410C();

      swift_getErrorValue();
      v10 = sub_2261E429C();
      MEMORY[0x22AA782B0](v10);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);

      result = 0xD000000000000026;
    }
  }

  else
  {
    result = 0xD000000000000023;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2261C9054(__SecKey *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  v108 = sub_2261E3CDC();
  v2 = *(v108 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v108);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v102 - v7;
  v9 = sub_2261E3C6C();
  v107 = *(v9 - 8);
  v10 = *(v107 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v102 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E088, &unk_2261E7270);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v102 - v21;
  error[0] = 0;
  v23 = SecKeyCopyPublicKey(a1);
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v106 = v2;
  v25 = SecKeyCopyExternalRepresentation(v23, error);
  if (!v25)
  {
    goto LABEL_5;
  }

  v26 = v25;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v27 = error[0];
    if (error[0])
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  *v110 = xmmword_2261E6D40;
  sub_2261E3BAC();

  if (v110[1] >> 60 == 15)
  {
LABEL_5:

    v27 = error[0];
    if (error[0])
    {
LABEL_6:
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v108, qword_28136F2D8);
      v28 = sub_2261E3CBC();
      v29 = sub_2261E3FFC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v109 = v27;
        v110[0] = v31;
        *v30 = 136315138;
        type metadata accessor for CFError(0);
        sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError);
        v32 = sub_2261E429C();
        v34 = v33;

        v35 = sub_2261A4344(v32, v34, v110);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_226177000, v28, v29, "Failed to extract public key. { error=%s }", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x22AA792E0](v31, -1, -1);
        MEMORY[0x22AA792E0](v30, -1, -1);
      }

      v110[0] = 0;
      v110[1] = 0xE000000000000000;
      sub_2261E410C();

      v110[0] = 0xD000000000000026;
      v110[1] = 0x80000002261ED670;
      v109 = v27;
      type metadata accessor for CFError(0);
      sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError);
      v36 = sub_2261E429C();
      v38 = v37;

      MEMORY[0x22AA782B0](v36, v38);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      result = v110[0];
      goto LABEL_13;
    }

LABEL_12:
    result = 0xD00000000000001DLL;
    goto LABEL_13;
  }

  v104 = *v110;
  v41 = SecKeyCopyAttributes(a1);
  v105 = v24;
  if (v41)
  {
    v42 = v41;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v110[0] = 0;
      v103 = sub_2261A9B48(0, &qword_28136E190, 0x277D82BB8);
      sub_2261CB710();
      sub_2261E3D5C();

      v43 = v110[0];
      v24 = v105;
      if (v110[0])
      {
        if (*(v110[0] + 16) && (v44 = sub_2261CAA68(*MEMORY[0x277CDC018]), (v45 & 1) != 0))
        {
          sub_226198CB8(*(v43 + 56) + 32 * v44, v110);

          if (swift_dynamicCast())
          {
            v46 = v109;
            v47 = v106;
            if ((v109 | 0x80) == 0x180)
            {
              v48 = v109 >> 3;
              if (((v109 >> 3) | 0x10) == 0x30)
              {
                v108 = v109 & 0xFFFFFFFFFFFFFFF8;
                v106 = v109 >> 3;
                v49 = sub_2261E3BDC();
                v51 = v50;
                v52 = sub_2261E3BDC();
                v54 = v52;
                v55 = v53;
                v56 = -35;
                if (v108 == 256)
                {
                  v56 = -7;
                }

                v103 = v56;
                sub_22619D8F4(v52, v53);
                sub_22619D8F4(v49, v51);
                v106 = v49;
                v108 = v51;
                sub_2261E3C4C();
                sub_22619A73C(v22, v20, &qword_27D78E088, &unk_2261E7270);
                v57 = v107;
                if ((*(v107 + 48))(v20, 1, v9) == 1)
                {
                  sub_2261CB778(v20);

                  sub_2261A28B8(v104, *(&v104 + 1));
                  sub_22619C840(v106, v108);
                  sub_22619C840(v54, v55);
                  sub_2261CB778(v22);
                  result = 0xD00000000000001ALL;
                }

                else
                {
                  v87 = v106;
                  v103 = v55;
                  (*(v57 + 32))(v15, v20, v9);
                  v88 = sub_2261E3C5C();
                  v89 = v105;
                  if (v88 == 2)
                  {
                    (*(v57 + 16))(v13, v15, v9);
                    v90 = sub_2261E3B3C();

                    sub_2261A28B8(v104, *(&v104 + 1));
                    sub_22619C840(v87, v108);
                    sub_22619C840(v54, v103);
                    (*(v57 + 8))(v15, v9);
                    sub_2261CB778(v22);
                    result = v90;
                  }

                  else
                  {

                    sub_2261A28B8(v104, *(&v104 + 1));
                    sub_22619C840(v87, v108);
                    sub_22619C840(v54, v103);
                    (*(v57 + 8))(v15, v9);
                    sub_2261CB778(v22);
                    result = 0xD00000000000001CLL;
                  }
                }

                goto LABEL_13;
              }

              if (qword_28136F2D0 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v108, qword_28136F2D8);
              v78 = a1;
              v79 = sub_2261E3CBC();
              v80 = sub_2261E3FFC();

              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v110[0] = v82;
                *v81 = 134218242;
                *(v81 + 4) = v48;
                *(v81 + 12) = 2080;
                v83 = sub_2261CA4AC();
                if (v84 >> 60 == 15)
                {
                  v85 = 7104878;
                  v86 = 0xE300000000000000;
                }

                else
                {
                  v97 = v83;
                  v98 = v84;
                  v99 = sub_2261E3B9C();
                  v86 = v100;
                  sub_2261A28B8(v97, v98);
                  v85 = v99;
                }

                v24 = v105;
                v101 = sub_2261A4344(v85, v86, v110);

                *(v81 + 14) = v101;
                _os_log_impl(&dword_226177000, v79, v80, "Invalid key coordinate size. { size=%ld, key=%s }", v81, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v82);
                MEMORY[0x22AA792E0](v82, -1, -1);
                MEMORY[0x22AA792E0](v81, -1, -1);
              }

              else
              {

                v24 = v105;
              }

              v96 = v104;
            }

            else
            {
              if (qword_28136F2D0 != -1)
              {
                swift_once();
              }

              v70 = v108;
              v71 = __swift_project_value_buffer(v108, qword_28136F2D8);
              (*(v47 + 16))(v8, v71, v70);
              v72 = sub_2261E3FEC();
              v110[0] = 0;
              v110[1] = 0xE000000000000000;
              sub_2261E410C();

              v110[0] = 0xD000000000000024;
              v110[1] = 0x80000002261ED700;
              v109 = v46;
              v73 = sub_2261E423C();
              MEMORY[0x22AA782B0](v73);

              MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
              v74 = sub_2261CA4AC();
              if (v75 >> 60 == 15)
              {
                v76 = 7104878;
                v77 = 0xE300000000000000;
              }

              else
              {
                v91 = v74;
                v92 = v75;
                v93 = sub_2261E3B9C();
                v77 = v94;
                sub_2261A28B8(v91, v92);
                v76 = v93;
                v24 = v105;
              }

              v95 = v104;
              MEMORY[0x22AA782B0](v76, v77);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v72, v110[0], v110[1], 0xD000000000000063, 0x80000002261ED530, 130);

              (*(v106 + 8))(v8, v70);
              v96 = v95;
            }

            sub_2261A28B8(v96, *(&v104 + 1));

            result = 0xD00000000000001CLL;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }

    else
    {

      v24 = v105;
    }
  }

  if (qword_28136F2D0 != -1)
  {
    swift_once();
  }

  v58 = v108;
  v59 = __swift_project_value_buffer(v108, qword_28136F2D8);
  (*(v106 + 16))(v6, v59, v58);
  v60 = sub_2261E3FEC();
  v110[0] = 0;
  v110[1] = 0xE000000000000000;
  sub_2261E410C();

  v110[0] = 0xD000000000000028;
  v110[1] = 0x80000002261ED6A0;
  v61 = sub_2261CA4AC();
  if (v62 >> 60 == 15)
  {
    v63 = 7104878;
    v64 = 0xE300000000000000;
  }

  else
  {
    v65 = v61;
    v66 = v62;
    v67 = sub_2261E3B9C();
    v64 = v68;
    sub_2261A28B8(v65, v66);
    v63 = v67;
    v24 = v105;
  }

  v69 = v104;
  MEMORY[0x22AA782B0](v63, v64);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v60, v110[0], v110[1], 0xD000000000000063, 0x80000002261ED530, 125);

  (*(v106 + 8))(v6, v58);
  sub_2261A28B8(v69, *(&v104 + 1));

  result = 0xD000000000000021;
LABEL_13:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2261C9E2C()
{
  v0 = sub_2261CA4AC();
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = v0;
  v4 = v1;
  v5 = sub_2261E3B9C();
  sub_2261A28B8(v3, v4);
  return v5;
}

CFDictionaryRef sub_2261C9EA0(__SecKey *a1)
{
  result = SecKeyCopyAttributes(a1);
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CFString(0);
      sub_2261CB6C8(&qword_28136E200, type metadata accessor for CFString);
      sub_2261E3D5C();
    }

    return 0;
  }

  return result;
}

uint64_t sub_2261CA420()
{
  v0 = sub_2261E3CDC();
  __swift_allocate_value_buffer(v0, qword_28136F2D8);
  v1 = __swift_project_value_buffer(v0, qword_28136F2D8);
  v2 = sub_2261A5130();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__SecKey *sub_2261CA4AC()
{
  error[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2261E3D3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2261E3D2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecKeyCopyPublicKey(v0);
  if (result)
  {
    v12 = result;
    error[0] = 0;
    v13 = SecKeyCopyExternalRepresentation(result, error);
    if (v13)
    {
      v14 = v13;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_9;
      }

      v23 = xmmword_2261E6D40;
      sub_2261E3BAC();

      v15 = *(&v23 + 1);
      if (*(&v23 + 1) >> 60 != 15)
      {
        v16 = v23;
        if (!error[0])
        {
          v20[1] = sub_2261CB6C8(&qword_28136E230, MEMORY[0x277CC5540]);
          sub_2261E3D1C();
          sub_22619D8F4(v16, v15);
          v21 = v16;
          sub_22619D714(v16, v15);
          sub_2261A28B8(v16, v15);
          sub_2261E3D0C();
          (*(v2 + 8))(v5, v1);
          v24 = v6;
          v25 = sub_2261CB6C8(&qword_28136E238, MEMORY[0x277CC5290]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
          (*(v7 + 16))(boxed_opaque_existential_1, v10, v6);
          __swift_project_boxed_opaque_existential_0(&v23, v24);
          sub_2261E3ADC();

          sub_2261A28B8(v21, v15);
          (*(v7 + 8))(v10, v6);
          v19 = v22;
          __swift_destroy_boxed_opaque_existential_0(&v23);
          result = v19;
          goto LABEL_10;
        }

        sub_2261A28B8(v16, v15);
        goto LABEL_9;
      }
    }

LABEL_9:
    result = 0;
  }

LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2261CA83C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2261E3CAC();
}

uint64_t sub_2261CA888()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2261E3C9C();
}

uint64_t sub_2261CA8E0()
{
  sub_2261E42EC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2261E3C9C();
  return sub_2261E430C();
}

uint64_t sub_2261CA948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2261E3C8C();
}

unint64_t sub_2261CA9B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2261E42EC();
  type metadata accessor for CFString(0);
  sub_2261CB6C8(&qword_28136E208, type metadata accessor for CFString);
  sub_2261E3C9C();
  v4 = sub_2261E430C();

  return sub_2261CAF34(a1, v4);
}

unint64_t sub_2261CAA68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2261E403C();

  return sub_2261CB040(a1, v5);
}

uint64_t sub_2261CAAAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E090, &unk_2261E7390);
  result = sub_2261E41AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_22619A7A4(v22, v34);
      }

      else
      {
        sub_226198CB8(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_2261E42EC();
      type metadata accessor for CFString(0);
      sub_2261CB6C8(&qword_28136E208, type metadata accessor for CFString);
      sub_2261E3C9C();
      result = sub_2261E430C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_22619A7A4(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_2261CAD8C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2261CA9B4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2261CB114();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2261CAAAC(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_2261CA9B4(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_2261E428C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_22619A7A4(a1, v20);
  }

  else
  {
    sub_2261CAECC(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_2261CAECC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_22619A7A4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_2261CAF34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2261CB6C8(&qword_28136E208, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2261E3C8C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2261CB040(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2261A9B48(0, &qword_28136E190, 0x277D82BB8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2261E404C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2261CB114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E090, &unk_2261E7390);
  v2 = *v0;
  v3 = sub_2261E419C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_226198CB8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_22619A7A4(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

unint64_t sub_2261CB294(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E090, &unk_2261E7390);
    v3 = sub_2261E41CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22619A73C(v4, &v11, &qword_27D78E080, &qword_2261E7268);
      v5 = v11;
      result = sub_2261CA9B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22619A7A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

SecAccessControlRef sub_2261CB3BC()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, error);
  if (!result)
  {
    v1 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError);
      v2 = v1;
      v3 = swift_allocError();
      *v4 = v2;
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      v5 = sub_2261E3CDC();
      __swift_project_value_buffer(v5, qword_28136F2D8);
      v6 = sub_2261E3FFC();
      sub_2261E410C();

      swift_getErrorValue();
      v7 = sub_2261E429C();
      MEMORY[0x22AA782B0](v7);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v6, 0xD000000000000029, 0x80000002261ED500, 0xD000000000000063, 0x80000002261ED530, 257);

      sub_2261E410C();

      swift_getErrorValue();
      v8 = sub_2261E429C();
      MEMORY[0x22AA782B0](v8);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_22619C7B4();
      swift_allocError();
      *v9 = 0xD000000000000029;
      *(v9 + 8) = 0x80000002261ED500;
      *(v9 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      sub_22619C7B4();
      swift_allocError();
      *v10 = 0xD000000000000020;
      *(v10 + 8) = 0x80000002261ED790;
      *(v10 + 16) = 1;
      swift_willThrow();
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2261CB6C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2261CB710()
{
  result = qword_28136E198;
  if (!qword_28136E198)
  {
    sub_2261A9B48(255, &qword_28136E190, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E198);
  }

  return result;
}

uint64_t sub_2261CB778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E088, &unk_2261E7270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyUtility(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for KeyUtility(_WORD *result, int a2, int a3)
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

char *sub_2261CB950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  *(v11 + 8) = 16;
  v12 = OBJC_IVAR____TtC17AppAttestInternal21AuthenticationManager_logger;
  v13 = sub_2261A5210();
  v14 = sub_2261E3CDC();
  (*(*(v14 - 8) + 16))(&v11[v12], v13, v14);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  return v11;
}

uint64_t sub_2261CBA0C(char a1, unint64_t a2)
{
  v213 = *MEMORY[0x277D85DE8];
  v5 = sub_2261E3D3C();
  v166 = *(v5 - 8);
  v167 = v5;
  v6 = *(v166 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v161[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2261E3D2C();
  v169 = *(v9 - 8);
  v170 = v9;
  v10 = *(v169 + 64);
  MEMORY[0x28223BE20](v9);
  v168 = &v161[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2261E3E2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v161[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a2 + 28);
  v173 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 49);
  v183 = *(a2 + 33);
  v184[0] = v19;
  *(v184 + 15) = *(a2 + 64);
  v174 = v18;
  v175 = v17;
  if (v18)
  {
    v172 = v2;
    v20 = sub_2261E3FEC();
    *&v185[0] = 0;
    *(&v185[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    v186 = 0xD00000000000001BLL;
    v187 = 0x80000002261ED7D0;
    if (a1)
    {
      v21 = 1819047270;
    }

    else
    {
      v21 = 0x6C616D696E696DLL;
    }

    if (a1)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    MEMORY[0x22AA782B0](v21, v22);

    MEMORY[0x22AA782B0](32, 0xE100000000000000);
    *&v185[0] = 0;
    *(&v185[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v182 = 0x3D646975476161;
    *(&v182 + 1) = 0xE700000000000000;
    v23 = 7104878;
    v24 = 0xE300000000000000;
    if (*(a2 + 8) >> 60 != 15)
    {
      v25 = *a2;
      v23 = sub_2261E3B9C();
      v24 = v26;
    }

    MEMORY[0x22AA782B0](v23, v24);

    MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
    LOBYTE(v185[0]) = *(a2 + 16);
    v27 = sub_2261E423C();
    MEMORY[0x22AA782B0](v27);

    MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
    v28 = *(a2 + 72);
    v29 = sub_2261C9E2C();
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v29 = 7104878;
      v31 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v29, v31);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v185[0] = __PAIR64__(v175, v173);
    BYTE8(v185[0]) = v174;
    *(v185 + 9) = v183;
    *(&v185[1] + 9) = v184[0];
    *(&v185[2] + 1) = *(v184 + 15);
    sub_2261A65DC();
    v32 = sub_2261E423C();
    MEMORY[0x22AA782B0](v32);

    MEMORY[0x22AA782B0](v182, *(&v182 + 1));

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v20, v186, v187, 0xD00000000000006FLL, 0x80000002261ED7F0, 34);

    result = 0xD000000000000013;
    goto LABEL_44;
  }

  v171 = a2;
  sub_22619AC3C();
  sub_2261A2CB8(v188);

  if (*(&v188[0] + 1) == 1)
  {
    v34 = sub_2261E3FEC();
    *&v185[0] = 0;
    *(&v185[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    v186 = 0xD000000000000023;
    v187 = 0x80000002261ED860;
    if (a1)
    {
      v35 = 1819047270;
    }

    else
    {
      v35 = 0x6C616D696E696DLL;
    }

    if (a1)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE700000000000000;
    }

    MEMORY[0x22AA782B0](v35, v36);

    MEMORY[0x22AA782B0](32, 0xE100000000000000);
    *&v185[0] = 0;
    *(&v185[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v182 = 0x3D646975476161;
    *(&v182 + 1) = 0xE700000000000000;
    v37 = v171;
    v38 = 7104878;
    v39 = 0xE300000000000000;
    if (*(v171 + 8) >> 60 != 15)
    {
      v40 = *v171;
      v38 = sub_2261E3B9C();
      v39 = v41;
    }

    MEMORY[0x22AA782B0](v38, v39);

    MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
    LOBYTE(v185[0]) = *(v37 + 16);
    v42 = sub_2261E423C();
    MEMORY[0x22AA782B0](v42);

    MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
    v43 = *(v37 + 72);
    v44 = sub_2261C9E2C();
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v44 = 7104878;
      v46 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v44, v46);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v185[0] = __PAIR64__(v175, v173);
    BYTE8(v185[0]) = v174;
    *(v185 + 9) = v183;
    *(&v185[1] + 9) = v184[0];
    *(&v185[2] + 1) = *(v184 + 15);
    sub_2261A65DC();
    v47 = sub_2261E423C();
    MEMORY[0x22AA782B0](v47);

    MEMORY[0x22AA782B0](v182, *(&v182 + 1));

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v34, v186, v187, 0xD00000000000006FLL, 0x80000002261ED7F0, 39);

    result = 0xD00000000000001BLL;
    goto LABEL_44;
  }

  v189 = v188[0];
  v190 = v188[1];
  v191 = v188[2];
  v172 = v2;
  v48 = *(v2 + 48);

  v49 = sub_2261A30F4();

  if (sub_2261A3324(v49, 4u))
  {
    sub_2261A5588();
  }

  else
  {
    sub_2261A54B0();
  }

  if (!v50 || (sub_2261E3E1C(), v51 = sub_2261E3DEC(), v53 = v52, , v54 = v16, v55 = v53, (*(v13 + 8))(v54, v12), v53 >> 60 == 15))
  {
    v56 = sub_2261E3FEC();
    *&v185[0] = 0;
    *(&v185[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    v186 = 0xD00000000000001ELL;
    v187 = 0x80000002261ED8B0;
    if (a1)
    {
      v57 = 1819047270;
    }

    else
    {
      v57 = 0x6C616D696E696DLL;
    }

    if (a1)
    {
      v58 = 0xE400000000000000;
    }

    else
    {
      v58 = 0xE700000000000000;
    }

    MEMORY[0x22AA782B0](v57, v58);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v185[0] = 0;
    *(&v185[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v182 = 0x3D646975476161;
    *(&v182 + 1) = 0xE700000000000000;
    v59 = v171;
    v60 = 7104878;
    v61 = 0xE300000000000000;
    if (*(v171 + 8) >> 60 != 15)
    {
      v62 = *v171;
      v60 = sub_2261E3B9C();
      v61 = v63;
    }

    MEMORY[0x22AA782B0](v60, v61);

    MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
    LOBYTE(v185[0]) = *(v59 + 16);
    v64 = sub_2261E423C();
    MEMORY[0x22AA782B0](v64);

    MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
    v65 = *(v59 + 72);
    v66 = sub_2261C9E2C();
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v66 = 7104878;
      v68 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v66, v68);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v185[0] = __PAIR64__(v175, v173);
    BYTE8(v185[0]) = v174;
    *(v185 + 9) = v183;
    *(&v185[1] + 9) = v184[0];
    *(&v185[2] + 1) = *(v184 + 15);
    sub_2261A65DC();
    v69 = sub_2261E423C();
    MEMORY[0x22AA782B0](v69);

    MEMORY[0x22AA782B0](v182, *(&v182 + 1));

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v198 = v191;
    v199 = v190;
    v200 = v189;
    v185[0] = v189;
    v185[1] = v190;
    v185[2] = v191;
    sub_22619C894();
    v70 = sub_2261E423C();
    v72 = v71;
    sub_22619F7EC(&v200);
    sub_22619F7EC(&v199);
    sub_22619F7EC(&v198);
    MEMORY[0x22AA782B0](v70, v72);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v56, v186, v187, 0xD00000000000006FLL, 0x80000002261ED7F0, 45);

    result = 0xD000000000000016;
    goto LABEL_44;
  }

  sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540]);
  v74 = v167;
  sub_2261E3D1C();
  sub_22619D8F4(v51, v55);
  v75 = v176;
  sub_22619D714(v51, v55);
  v164 = v51;
  v165 = v55;
  sub_2261A28B8(v51, v55);
  v76 = v168;
  sub_2261E3D0C();
  (*(v166 + 8))(v8, v74);
  v77 = v170;
  *(&v185[1] + 1) = v170;
  *&v185[2] = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v185);
  v79 = v169;
  (*(v169 + 16))(boxed_opaque_existential_1, v76, v77);
  __swift_project_boxed_opaque_existential_0(v185, *(&v185[1] + 1));
  sub_2261E3ADC();
  v176 = v75;
  (*(v79 + 8))(v76, v77);
  v81 = v186;
  v80 = v187;
  __swift_destroy_boxed_opaque_existential_0(v185);
  v186 = v81;
  v187 = v80;
  LODWORD(v168) = *(v171 + 16);
  v181[3] = v168;
  v169 = v81;
  v170 = v80;
  sub_22619D8F4(v81, v80);
  sub_2261E3B7C();
  v180 = bswap32(v175);
  v82 = MEMORY[0x277D838B0];
  v83 = MEMORY[0x277CC9C18];
  *(&v185[1] + 1) = MEMORY[0x277D838B0];
  *&v185[2] = MEMORY[0x277CC9C18];
  *&v185[0] = &v180;
  *(&v185[0] + 1) = v181;
  v84 = __swift_project_boxed_opaque_existential_0(v185, MEMORY[0x277D838B0]);
  v86 = *v84;
  v85 = v84[1];
  sub_2261E3B7C();
  __swift_destroy_boxed_opaque_existential_0(v185);
  if (a1)
  {
    v87 = 1819047270;
  }

  else
  {
    v87 = 0x6C616D696E696DLL;
  }

  if (a1)
  {
    v88 = 0xE400000000000000;
  }

  else
  {
    v88 = 0xE700000000000000;
  }

  if (a1)
  {

    goto LABEL_54;
  }

  v89 = sub_2261E425C();

  if (v89)
  {
LABEL_54:
    v91 = *v171;
    v90 = *(v171 + 8);
    v92 = v90 >> 60;
    v166 = v90;
    v167 = v91;
    if (v90 >> 60 == 15)
    {
LABEL_78:
      v126 = sub_2261E3FEC();
      *&v185[0] = 0;
      *(&v185[0] + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v182 = 0xD00000000000001ALL;
      *(&v182 + 1) = 0x80000002261ED910;
      MEMORY[0x22AA782B0](v87, v88);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      *&v185[0] = 0;
      *(&v185[0] + 1) = 0xE000000000000000;
      sub_2261E410C();

      v178 = 0x3D646975476161;
      v179 = 0xE700000000000000;
      v127 = 7104878;
      v128 = 0xE300000000000000;
      if (v92 <= 0xE)
      {
        v127 = sub_2261E3B9C();
        v128 = v129;
      }

      MEMORY[0x22AA782B0](v127, v128);

      MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
      LOBYTE(v185[0]) = v168;
      v130 = sub_2261E423C();
      MEMORY[0x22AA782B0](v130);

      MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
      v131 = *(v171 + 72);
      v132 = sub_2261C9E2C();
      if (v133)
      {
        v134 = v133;
      }

      else
      {
        v132 = 7104878;
        v134 = 0xE300000000000000;
      }

      MEMORY[0x22AA782B0](v132, v134);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      *&v185[0] = __PAIR64__(v175, v173);
      BYTE8(v185[0]) = v174;
      *(v185 + 9) = v183;
      *(&v185[1] + 9) = v184[0];
      *(&v185[2] + 1) = *(v184 + 15);
      sub_2261A65DC();
      v135 = sub_2261E423C();
      MEMORY[0x22AA782B0](v135);

      MEMORY[0x22AA782B0](v178, v179);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v204 = v191;
      v205 = v190;
      v206 = v189;
      v185[0] = v189;
      v185[1] = v190;
      v185[2] = v191;
      sub_22619C894();
      v136 = sub_2261E423C();
      v138 = v137;
      sub_22619F7EC(&v206);
      sub_22619F7EC(&v205);
      sub_22619F7EC(&v204);
      MEMORY[0x22AA782B0](v136, v138);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v126, v182, *(&v182 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 75);

      sub_2261A28B8(v164, v165);
      sub_22619C840(v169, v170);
      sub_22619C840(v186, v187);
      result = 0xD000000000000012;
      goto LABEL_44;
    }

    v93 = v90 >> 62;
    if ((v90 >> 62) > 1)
    {
      if (v93 != 2)
      {
LABEL_77:
        sub_2261A28B8(v167, v166);
        goto LABEL_78;
      }

      v111 = *(v91 + 16);
      v110 = *(v91 + 24);
      v94 = v110 - v111;
      if (!__OFSUB__(v110, v111))
      {
        goto LABEL_70;
      }

      __break(1u);
    }

    else if (!v93)
    {
      v94 = BYTE6(v90);
      goto LABEL_71;
    }

    if (__OFSUB__(HIDWORD(v91), v91))
    {
      __break(1u);
    }

    v94 = HIDWORD(v91) - v91;
LABEL_70:
    sub_22619D8F4(v167, v166);
    v90 = v166;
LABEL_71:
    if (v94 == 16)
    {
      v112 = v90;
      sub_2261E3BCC();
      v113 = *(v171 + 72);
      v114 = sub_2261CA4AC();
      if (v115 >> 60 == 15)
      {
        LODWORD(v171) = sub_2261E3FEC();
        *&v185[0] = 0;
        *(&v185[0] + 1) = 0xE000000000000000;
        sub_2261E410C();
        v182 = v185[0];
        MEMORY[0x22AA782B0](0xD000000000000036, 0x80000002261ED950);
        MEMORY[0x22AA782B0](v87, v88);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        *&v185[0] = 0;
        *(&v185[0] + 1) = 0xE000000000000000;
        sub_2261E410C();

        v178 = 0x3D646975476161;
        v179 = 0xE700000000000000;
        v116 = v167;
        v117 = sub_2261E3B9C();
        MEMORY[0x22AA782B0](v117);

        MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
        LOBYTE(v185[0]) = v168;
        v118 = sub_2261E423C();
        MEMORY[0x22AA782B0](v118);

        MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
        v119 = sub_2261C9E2C();
        if (v120)
        {
          v121 = v120;
        }

        else
        {
          v119 = 7104878;
          v121 = 0xE300000000000000;
        }

        MEMORY[0x22AA782B0](v119, v121);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        *&v185[0] = __PAIR64__(v175, v173);
        BYTE8(v185[0]) = v174;
        *(v185 + 9) = v183;
        *(&v185[1] + 9) = v184[0];
        *(&v185[2] + 1) = *(v184 + 15);
        sub_2261A65DC();
        v122 = sub_2261E423C();
        MEMORY[0x22AA782B0](v122);

        MEMORY[0x22AA782B0](v178, v179);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v207 = v191;
        v208 = v190;
        v209 = v189;
        v185[0] = v189;
        v185[1] = v190;
        v185[2] = v191;
        sub_22619C894();
        v123 = sub_2261E423C();
        v125 = v124;
        sub_22619F7EC(&v209);
        sub_22619F7EC(&v208);
        sub_22619F7EC(&v207);
        MEMORY[0x22AA782B0](v123, v125);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v171, v182, *(&v182 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 83);

        sub_2261A28B8(v116, v112);
        sub_2261A28B8(v164, v165);
        sub_22619C840(v169, v170);
        sub_22619C840(v186, v187);
        result = 0xD00000000000002ELL;
      }

      else
      {
        v139 = v115;
        v177 = 0x2000;
        *(&v185[1] + 1) = v82;
        *&v185[2] = v83;
        *&v185[0] = &v177;
        *(&v185[0] + 1) = &v178;
        v140 = v114;
        v141 = __swift_project_boxed_opaque_existential_0(v185, v82);
        v143 = *v141;
        v142 = v141[1];
        sub_2261E3B7C();
        __swift_destroy_boxed_opaque_existential_0(v185);
        sub_2261E3BCC();
        v145 = sub_2261C9054(v113);
        v146 = v144;
        v148 = v147;
        if ((v147 & 0x100) != 0)
        {
          v192 = v189;
          sub_22619F7EC(&v192);
          v193 = v190;
          sub_22619F7EC(&v193);
          v194 = v191;
          sub_22619F7EC(&v194);
          *&v185[0] = v145;
          *(&v185[0] + 1) = v146;
          LOBYTE(v185[1]) = v148 & 1;
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v160 = v145;
          *(v160 + 8) = v146;
          *(v160 + 16) = v148 & 1;
          sub_2261A28B8(v140, v139);
          sub_2261A28B8(v167, v166);
          sub_2261A28B8(v164, v165);
          sub_22619C840(v169, v170);
          result = sub_22619C840(v186, v187);
        }

        else
        {
          v163 = v140;
          v171 = v139;
          if (v144 >> 60 == 15)
          {
            v162 = sub_2261E3FFC();
            *&v185[0] = 0;
            *(&v185[0] + 1) = 0xE000000000000000;
            sub_2261E410C();
            v182 = v185[0];
            MEMORY[0x22AA782B0](0xD00000000000002CLL, 0x80000002261ED9C0);
            MEMORY[0x22AA782B0](v87, v88);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            *&v185[0] = 0;
            *(&v185[0] + 1) = 0xE000000000000000;
            sub_2261E410C();

            v178 = 0x3D646975476161;
            v179 = 0xE700000000000000;
            v149 = v166;
            v150 = v167;
            v151 = sub_2261E3B9C();
            MEMORY[0x22AA782B0](v151);

            MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
            LOBYTE(v185[0]) = v168;
            v152 = sub_2261E423C();
            MEMORY[0x22AA782B0](v152);

            MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
            v153 = sub_2261C9E2C();
            if (v154)
            {
              v155 = v154;
            }

            else
            {
              v153 = 7104878;
              v155 = 0xE300000000000000;
            }

            MEMORY[0x22AA782B0](v153, v155);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            *&v185[0] = __PAIR64__(v175, v173);
            BYTE8(v185[0]) = v174;
            *(v185 + 9) = v183;
            *(&v185[1] + 9) = v184[0];
            *(&v185[2] + 1) = *(v184 + 15);
            sub_2261A65DC();
            v156 = sub_2261E423C();
            MEMORY[0x22AA782B0](v156);

            MEMORY[0x22AA782B0](v178, v179);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            v210 = v191;
            v211 = v190;
            v212 = v189;
            v185[0] = v189;
            v185[1] = v190;
            v185[2] = v191;
            sub_22619C894();
            v157 = sub_2261E423C();
            v159 = v158;
            sub_22619F7EC(&v212);
            sub_22619F7EC(&v211);
            sub_22619F7EC(&v210);
            MEMORY[0x22AA782B0](v157, v159);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v162, v182, *(&v182 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 96);

            sub_2261A28B8(v163, v171);
            sub_2261A28B8(v150, v149);
            sub_2261A28B8(v164, v165);
            sub_22619C840(v169, v170);
            sub_22619C840(v186, v187);
            result = 0xD000000000000024;
          }

          else
          {
            v195 = v189;
            sub_22619F7EC(&v195);
            v196 = v190;
            sub_22619F7EC(&v196);
            v197 = v191;
            sub_22619F7EC(&v197);
            sub_2261E3BCC();
            sub_22619C840(v169, v170);
            sub_2261CDCA0(v145, v146, v148, 0);
            sub_2261A28B8(v163, v171);
            sub_2261A28B8(v167, v166);
            sub_2261A28B8(v164, v165);
            result = v186;
          }
        }
      }

      goto LABEL_44;
    }

    goto LABEL_77;
  }

  v95 = sub_2261E3FEC();
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_2261E410C();
  v182 = v185[0];
  MEMORY[0x22AA782B0](0xD000000000000033, 0x80000002261ED8D0);
  MEMORY[0x22AA782B0](0x6C616D696E696DLL, 0xE700000000000000);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  *&v185[0] = 0;
  *(&v185[0] + 1) = 0xE000000000000000;
  sub_2261E410C();

  v178 = 0x3D646975476161;
  v179 = 0xE700000000000000;
  v96 = v171;
  v97 = 7104878;
  v98 = 0xE300000000000000;
  if (*(v171 + 8) >> 60 != 15)
  {
    v99 = *v171;
    v97 = sub_2261E3B9C();
    v98 = v100;
  }

  MEMORY[0x22AA782B0](v97, v98);

  MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
  LOBYTE(v185[0]) = v168;
  v101 = sub_2261E423C();
  MEMORY[0x22AA782B0](v101);

  MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v102 = *(v96 + 72);
  v103 = sub_2261C9E2C();
  if (v104)
  {
    v105 = v104;
  }

  else
  {
    v103 = 7104878;
    v105 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v103, v105);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  *&v185[0] = __PAIR64__(v175, v173);
  BYTE8(v185[0]) = v174;
  *(v185 + 9) = v183;
  *(&v185[1] + 9) = v184[0];
  *(&v185[2] + 1) = *(v184 + 15);
  sub_2261A65DC();
  v106 = sub_2261E423C();
  MEMORY[0x22AA782B0](v106);

  MEMORY[0x22AA782B0](v178, v179);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v201 = v191;
  v202 = v190;
  v203 = v189;
  v185[0] = v189;
  v185[1] = v190;
  v185[2] = v191;
  sub_22619C894();
  v107 = sub_2261E423C();
  v109 = v108;
  sub_22619F7EC(&v203);
  sub_22619F7EC(&v202);
  sub_22619F7EC(&v201);
  MEMORY[0x22AA782B0](v107, v109);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v95, v182, *(&v182 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 69);
  sub_22619C840(v169, v170);
  sub_2261A28B8(v164, v165);

  result = v186;
LABEL_44:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2261CD630()
{
  v1 = v0;
  sub_2261E410C();

  v2 = 7104878;
  v3 = 0xE300000000000000;
  if (v0[1] >> 60 != 15)
  {
    v4 = *v0;
    v2 = sub_2261E3B9C();
    v3 = v5;
  }

  MEMORY[0x22AA782B0](v2, v3);

  MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
  v13 = *(v0 + 16);
  v6 = sub_2261E423C();
  MEMORY[0x22AA782B0](v6);

  MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v7 = v0[9];
  v8 = sub_2261C9E2C();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 7104878;
    v10 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v8, v10);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v14 = *(v1 + 3);
  v15 = *(v1 + 5);
  v16 = *(v1 + 7);
  sub_2261A65DC();
  v11 = sub_2261E423C();
  MEMORY[0x22AA782B0](v11);

  return 0x3D646975476161;
}

__n128 sub_2261CD7CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4->n128_u32[1];
  result = a4[1];
  v8 = a4[2].n128_u64[0];
  v9 = a4[2].n128_u64[1];
  v10 = a4->n128_u8[0] & 1;
  v11 = a4->n128_u8[8] & 1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v10;
  *(a6 + 28) = v6;
  *(a6 + 32) = v11;
  *(a6 + 40) = result;
  *(a6 + 56) = v8;
  *(a6 + 64) = v9;
  *(a6 + 72) = a5;
  return result;
}

uint64_t sub_2261CD81C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1819047270;
  }

  else
  {
    v4 = 0x6C616D696E696DLL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1819047270;
  }

  else
  {
    v6 = 0x6C616D696E696DLL;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2261E425C();
  }

  return v9 & 1;
}

uint64_t sub_2261CD8BC()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CD938()
{
  *v0;
  sub_2261E3E6C();
}

uint64_t sub_2261CD9A0()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CDA18@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2261E41EC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2261CDA78(uint64_t *a1@<X8>)
{
  v2 = 1819047270;
  if (!*v1)
  {
    v2 = 0x6C616D696E696DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_2261CDAC8()
{
  if (qword_28136EEE0 != -1)
  {
    swift_once();
  }

  return qword_28136FE90;
}

uint64_t sub_2261CDB30(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = sub_2261E3A9C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = sub_2261E3A5C();
  *a3 = 0x1000000000;
  *a4 = result | 0x4000000000000000;
  return result;
}

void *sub_2261CDB98()
{
  if (qword_27D78FD88 != -1)
  {
    swift_once();
  }

  return qword_27D791468;
}

uint64_t sub_2261CDBF4()
{
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC17AppAttestInternal21AuthenticationManager_logger;
  v3 = sub_2261E3CDC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261CDCA0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_22619C830();
  }

  else
  {
    return sub_2261A28B8(a1, a2);
  }
}

unint64_t sub_2261CDCB4()
{
  result = qword_27D78E098;
  if (!qword_27D78E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E098);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticationManager()
{
  result = qword_28136EEC0;
  if (!qword_28136EEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261CDD5C()
{
  result = sub_2261E3CDC();
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2261CDE54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2261CDE9C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 sub_2261CDF10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = v4;
  *(a4 + 80) = *(a3 + 64);
  result = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = result;
  return result;
}

uint64_t sub_2261CDF30(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v3 = sub_2261E3DAC();
  v4 = objc_opt_self();
  v5 = [v4 cborWithUTF8String_];

  *(inited + 32) = v5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[8];
  v53 = a1[9];
  v54 = a1[10];
  v55 = a1[7];
  v9 = sub_2261E3B8C();
  v10 = [v4 cborWithData_];

  *(inited + 40) = v10;
  v11 = sub_2261E3DAC();
  v12 = [v4 cborWithUTF8String_];

  *(inited + 48) = v12;
  v13 = *a1;
  v14 = a1[1];
  v15 = sub_2261E3B8C();
  v16 = [v4 cborWithData_];

  *(inited + 56) = v16;
  sub_2261CEFA0(inited);
  v17 = v8;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
  swift_arrayDestroy();
  sub_2261CF098();
  sub_2261CF0E4();
  v18 = sub_2261E3D4C();

  v19 = [v4 cborWithDictionary_];

  if (v17 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_2261E6800;
  sub_22619D8F4(v55, v17);
  sub_22619D8F4(v53, v54);
  v21 = sub_2261E3DAC();
  v52 = v19;
  v22 = [v4 cborWithUTF8String_];

  *(v20 + 32) = v22;
  sub_22619D8F4(v55, v17);
  v23 = sub_2261E3B8C();
  v24 = v17;
  v25 = [v4 cborWithData_];

  sub_22619C840(v55, v24);
  *(v20 + 40) = v25;
  v26 = sub_2261E3DAC();
  v27 = [v4 cborWithUTF8String_];

  *(v20 + 48) = v27;
  sub_22619D8F4(v53, v54);
  v28 = sub_2261E3B8C();
  v29 = [v4 cborWithData_];

  sub_22619C840(v53, v54);
  *(v20 + 56) = v29;
  sub_2261CEFA0(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  v30 = sub_2261E3D4C();

  v31 = [v4 cborWithDictionary_];

  v32 = [v52 dictionary];
  if (!v32)
  {
    v40 = sub_2261E3FFC();
    v41 = 0x80000002261EDB20;
    sub_2261A4EAC(v40, 0xD000000000000029, 0x80000002261EDB20, 0xD00000000000006ELL, 0x80000002261EDAB0, 59);
    sub_22619C7B4();
    swift_allocError();
    *v42 = 0xD000000000000029;
    *(v42 + 8) = 0x80000002261EDB20;
    *(v42 + 16) = 1;
    swift_willThrow();

    v43 = v52;
    sub_2261B52AC(v55, v24, v53, v54);
    goto LABEL_13;
  }

  v33 = v32;
  v34 = sub_2261E3D6C();

  v35 = sub_2261E3DAC();
  v36 = [v4 cborWithUTF8String_];

  if ((v34 & 0xC000000000000001) == 0)
  {
    v39 = v53;
    v44 = v31;
    goto LABEL_10;
  }

  if (v34 >= 0)
  {
    v34 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v37 = v31;
  result = sub_2261E416C();
  if (!__OFADD__(result, 1))
  {
    v39 = v53;
    sub_2261CE790(v34, result + 1);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CEC14(v31, v36, isUniquelyReferenced_nonNull_native);

    v46 = sub_2261E3D4C();

    v47 = [v4 cborWithDictionary_];

    sub_2261B52AC(v55, v24, v39, v54);
    v19 = v47;
LABEL_11:
    v43 = v19;
    v48 = sub_2261E3B4C();
    if (v49 >> 60 != 15)
    {
      v41 = v48;

      return v41;
    }

    v50 = sub_2261E3FFC();
    v41 = 0x80000002261EDA90;
    sub_2261A4EAC(v50, 0xD00000000000001FLL, 0x80000002261EDA90, 0xD00000000000006ELL, 0x80000002261EDAB0, 82);
    sub_22619C7B4();
    swift_allocError();
    *v51 = 0xD00000000000001FLL;
    *(v51 + 8) = 0x80000002261EDA90;
    *(v51 + 16) = 1;
    swift_willThrow();
LABEL_13:

    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_2261CE604()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal20AssertionCBORManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2261CE6A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC17AppAttestInternal20AssertionCBORManager_logger;
  v5 = sub_2261A5280();
  v6 = sub_2261E3CDC();
  (*(*(v6 - 8) + 16))(v3 + v4, v5, v6);
  return v3;
}

unint64_t sub_2261CE74C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2261E403C();

  return sub_2261CED7C(a1, v5);
}

uint64_t sub_2261CE790(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
    v2 = sub_2261E41BC();
    v20 = v2;
    sub_2261E415C();
    v3 = sub_2261E417C();
    if (v3)
    {
      v4 = v3;
      sub_2261CF098();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_2261CE9AC(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_2261E403C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_2261E417C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2261CE9AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
  result = sub_2261E41AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_2261E403C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

id sub_2261CEC14(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2261CE74C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2261CE9AC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2261CE74C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_2261CF098();
        sub_2261E428C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_2261CEE40();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

unint64_t sub_2261CED7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2261CF098();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2261E404C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2261CEE40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
  v2 = *v0;
  v3 = sub_2261E419C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

unint64_t sub_2261CEFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
    v3 = sub_2261E41CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2261CE74C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2261CF098()
{
  result = qword_28136E1C0;
  if (!qword_28136E1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1C0);
  }

  return result;
}

unint64_t sub_2261CF0E4()
{
  result = qword_28136E1B8;
  if (!qword_28136E1B8)
  {
    sub_2261CF098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E1B8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2261CF160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2261CF1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AssertionCBORManager()
{
  result = qword_28136EF10;
  if (!qword_28136EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261CF260()
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261CF300@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_2261E406C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  if (qword_28136F1A0 != -1)
  {
    swift_once();
  }

  if (qword_28136F1A8)
  {
    v9 = qword_28136F1A8;
    v10 = sub_2261E3DAC();
    v11 = [v9 valueForKey_];

    if (v11)
    {
      sub_2261E409C();

      swift_unknownObjectRelease();
      sub_22619A7A4(v19, v20);
    }

    else
    {

      memset(v20, 0, sizeof(v20));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B8, &unk_2261E78B0);
    v14 = swift_dynamicCast();
    v15 = *(*(a1 - 8) + 56);
    if (v14)
    {
      v16 = *(a1 - 8);
      v15(v8, 0, 1, a1);
      (*(v16 + 32))(a2, v8, a1);
      v17 = a2;
      v18 = 0;
    }

    else
    {
      v15(v8, 1, 1, a1);
      (*(v5 + 8))(v8, v4);
      v17 = a2;
      v18 = 1;
    }

    return (v15)(v17, v18, 1, a1);
  }

  else
  {
    v12 = *(*(a1 - 8) + 56);

    return v12(a2, 1, 1, a1);
  }
}

id sub_2261CF5C8()
{
  if (qword_28136F1A0 != -1)
  {
    swift_once();
  }

  if (!qword_28136F1A8)
  {
    return 0;
  }

  v0 = qword_28136F1A8;
  v1 = sub_2261E3DAC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_2261CF674()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2261E3DAC();
  v2 = [v0 initWithSuiteName_];

  qword_28136F1A8 = v2;
}

uint64_t sub_2261CF6F4(char a1)
{
  if (!a1)
  {
    return 0x7365747461707061;
  }

  if (a1 == 1)
  {
    return 0x6E68747561626577;
  }

  return 0x6972707265746E65;
}

uint64_t sub_2261CF75C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E68747561626577;
  if (v2 != 1)
  {
    v4 = 0x6972707265746E65;
    v3 = 0xEA00000000006573;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7365747461707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE006E6F69746174;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E68747561626577;
  if (*a2 != 1)
  {
    v8 = 0x6972707265746E65;
    v7 = 0xEA00000000006573;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7365747461707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE006E6F69746174;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2261E425C();
  }

  return v11 & 1;
}

uint64_t sub_2261CF870(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E69676972;
  v3 = 0x4F74736575716572;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6144746E65696C63;
    v12 = 0xEE00687361486174;
    if (a1 != 6)
    {
      v11 = 0xD000000000000010;
      v12 = 0x80000002261EDBF0;
    }

    v13 = 0xD000000000000011;
    if (a1 == 4)
    {
      v13 = 0x4345444970696863;
      v14 = 0xEA00000000004449;
    }

    else
    {
      v14 = 0x80000002261EDA70;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
    if (a1 != 2)
    {
      v5 = 0x6F744B4955747461;
      v6 = 0xEB000000004B4942;
    }

    v7 = 0xE500000000000000;
    v8 = 0x4449707061;
    if (!a1)
    {
      v8 = 0x4F74736575716572;
      v7 = 0xED00006E69676972;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE00687361486174;
        if (v9 != 0x6144746E65696C63)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000002261EDBF0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000004449;
      if (v9 != 0x4345444970696863)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x80000002261EDA70;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000746E65;
        if (v9 != 0x6D6E6F7269766E65)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v3 = 0x6F744B4955747461;
      v2 = 0xEB000000004B4942;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v9 != 0x4449707061)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (v9 != v3)
    {
LABEL_45:
      v15 = sub_2261E425C();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_2261CFB28()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CFBDC()
{
  *v0;
  *v0;
  sub_2261E3E6C();
}

uint64_t sub_2261CFC7C()
{
  sub_2261E3E6C();
}

uint64_t sub_2261CFDD8()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CFE88()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CFFF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2261D2078();
  *a2 = result;
  return result;
}

void sub_2261D0028(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F69746174;
  v4 = 0xE800000000000000;
  v5 = 0x6E68747561626577;
  if (v2 != 1)
  {
    v5 = 0x6972707265746E65;
    v4 = 0xEA00000000006573;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365747461707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2261D0098()
{
  v1 = v0;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x5474736575716572, 0xEC0000003D657079);
  v2 = 0xE800000000000000;
  v3 = 0x6E68747561626577;
  if (*v0 != 1)
  {
    v3 = 0x6972707265746E65;
    v2 = 0xEA00000000006573;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7365747461707061;
  }

  if (*v0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xEE006E6F69746174;
  }

  MEMORY[0x22AA782B0](v4, v5);

  MEMORY[0x22AA782B0](0x3D766E65202CLL, 0xE600000000000000);
  v6 = sub_22619C4AC(*(v0 + 1));
  MEMORY[0x22AA782B0](v6);

  MEMORY[0x22AA782B0](0x3D44497072202CLL, 0xE700000000000000);
  MEMORY[0x22AA782B0](*(v0 + 8), *(v0 + 16));
  MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v7 = *(v0 + 24);
  v8 = sub_2261C9E2C();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x22AA782B0](v8, v10);

  MEMORY[0x22AA782B0](0x614468747561202CLL, 0xEB000000003D6174);
  v11 = v1[4];
  v12 = v1[5];
  v13 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v13);

  MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
  v14 = v1[6];
  v15 = v1[7];
  v16 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v16);

  return 0;
}

uint64_t sub_2261D02A8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 1) = a2 & 1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_2261D02DC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_2261D0318()
{
  v1 = v0;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x5474736575716572, 0xEC0000003D657079);
  v2 = 0xE800000000000000;
  v3 = 0x6E68747561626577;
  if (*v0 != 1)
  {
    v3 = 0x6972707265746E65;
    v2 = 0xEA00000000006573;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7365747461707061;
  }

  if (*v0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xEE006E6F69746174;
  }

  MEMORY[0x22AA782B0](v4, v5);

  MEMORY[0x22AA782B0](0x3D766E65202CLL, 0xE600000000000000);
  v6 = sub_22619C4AC(*(v0 + 1));
  MEMORY[0x22AA782B0](v6);

  MEMORY[0x22AA782B0](0x3D44497072202CLL, 0xE700000000000000);
  MEMORY[0x22AA782B0](*(v0 + 8), *(v0 + 16));
  MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v7 = *(v0 + 24);
  v8 = sub_2261C9E2C();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x22AA782B0](v8, v10);

  MEMORY[0x22AA782B0](0x6E6F6974706F202CLL, 0xEA00000000003D73);
  v11 = *(v1 + 32);
  v12 = sub_2261E3D7C();
  MEMORY[0x22AA782B0](v12);

  return 0;
}

uint64_t sub_2261D04FC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 1) = a2 & 1;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_2261D0518()
{
  v1 = v0;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x4F74736575716572, 0xEE003D6E69676972);
  MEMORY[0x22AA782B0](*v1, v1[1]);
  MEMORY[0x22AA782B0](0x6F7269766E65202CLL, 0xEE003D746E656D6ELL);
  MEMORY[0x22AA782B0](v1[2], v1[3]);
  MEMORY[0x22AA782B0](0x4B4955747461202CLL, 0xEE003D4B49426F74);
  v2 = v0[4];
  v3 = v1[5];

  v4 = sub_2261D20C4(20);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x22AA78280](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x22AA782B0](v11, v13);

  MEMORY[0x22AA782B0](0xD000000000000010, 0x80000002261EDC10);
  MEMORY[0x22AA782B0](v1[6], v1[7]);
  return 0;
}

uint64_t sub_2261D069C()
{
  v1 = 0x4F74736575716572;
  v2 = 0x6F744B4955747461;
  if (*v0 != 2)
  {
    v2 = 0x4345444970696863;
  }

  if (*v0)
  {
    v1 = 0x6D6E6F7269766E65;
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

uint64_t sub_2261D0738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2261D21B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2261D0778(uint64_t a1)
{
  v2 = sub_2261D2160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D07B4(uint64_t a1)
{
  v2 = sub_2261D2160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D07F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0C0, &qword_2261E78E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2160();
  sub_2261E437C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_2261E422C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_2261E422C();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_2261E422C();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_2261E422C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2261D09B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_2261D09C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2261D09F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2261D0A24()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

double sub_2261D0A54@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2261D2330(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2261D0ADC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2261D2624();
  *a2 = result;
  return result;
}

void sub_2261D0B0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E69676972;
  v4 = 0x4F74736575716572;
  v5 = 0xEE00687361486174;
  v6 = 0x6144746E65696C63;
  if (v2 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000002261EDBF0;
  }

  v7 = 0xEA00000000004449;
  v8 = 0xD000000000000011;
  if (v2 == 4)
  {
    v8 = 0x4345444970696863;
  }

  else
  {
    v7 = 0x80000002261EDA70;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000746E65;
  v10 = 0x6D6E6F7269766E65;
  if (v2 != 2)
  {
    v10 = 0x6F744B4955747461;
    v9 = 0xEB000000004B4942;
  }

  if (*v1)
  {
    v4 = 0x4449707061;
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

unint64_t sub_2261D0C38()
{
  v1 = *v0;
  v2 = 0x4F74736575716572;
  v3 = 0x6144746E65696C63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000011;
  if (v1 == 4)
  {
    v4 = 0x4345444970696863;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6E6F7269766E65;
  if (v1 != 2)
  {
    v5 = 0x6F744B4955747461;
  }

  if (*v0)
  {
    v2 = 0x4449707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2261D0D60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2261D2624();
  *a1 = result;
  return result;
}

uint64_t sub_2261D0D94(uint64_t a1)
{
  v2 = sub_2261D2670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D0DD0(uint64_t a1)
{
  v2 = sub_2261D2670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D0E0C()
{
  v1 = v0;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x4F74736575716572, 0xEE003D6E69676972);
  MEMORY[0x22AA782B0](*v1, v1[1]);
  MEMORY[0x22AA782B0](0x3D4449707061202CLL, 0xE800000000000000);
  MEMORY[0x22AA782B0](v1[2], v1[3]);
  MEMORY[0x22AA782B0](0x6F7269766E65202CLL, 0xEE003D746E656D6ELL);
  MEMORY[0x22AA782B0](v1[4], v1[5]);
  MEMORY[0x22AA782B0](0x4B4955747461202CLL, 0xEE003D4B49426F74);
  MEMORY[0x22AA782B0](v1[6], v1[7]);
  MEMORY[0x22AA782B0](0x444970696863202CLL, 0xED00003D44494345);
  MEMORY[0x22AA782B0](v1[8], v1[9]);
  MEMORY[0x22AA782B0](0xD000000000000014, 0x80000002261EDC30);
  MEMORY[0x22AA782B0](v1[10], v1[11]);
  MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
  MEMORY[0x22AA782B0](v1[12], v1[13]);
  return 0;
}

uint64_t sub_2261D0FA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0C8, &qword_2261E78E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2670();
  sub_2261E437C();
  v11 = *v3;
  v12 = v3[1];
  v27[15] = 0;
  sub_2261E422C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v27[14] = 1;
  sub_2261E422C();
  v15 = v3[4];
  v16 = v3[5];
  v27[13] = 2;
  sub_2261E422C();
  v17 = v3[6];
  v18 = v3[7];
  v27[12] = 3;
  sub_2261E422C();
  v19 = v3[8];
  v20 = v3[9];
  v27[11] = 4;
  sub_2261E422C();
  v21 = v3[10];
  v22 = v3[11];
  v27[10] = 5;
  sub_2261E422C();
  v23 = v3[12];
  v24 = v3[13];
  v27[9] = 6;
  sub_2261E422C();
  v26 = *(v3 + 112);
  v27[8] = 7;
  sub_2261E421C();
  return (*(v6 + 8))(v9, v5);
}