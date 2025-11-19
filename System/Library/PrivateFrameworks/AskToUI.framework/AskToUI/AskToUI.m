uint64_t SendRequestFlowError.hashValue.getter()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

uint64_t sub_24117FF94()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

uint64_t sub_241180008()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

id sub_24118005C()
{
  v1 = sub_2411AB728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *v0;

    sub_2411ABE38();
    v8 = sub_2411AB808();
    sub_2411AB578();

    sub_2411AB718();
    swift_getAtKeyPath();
    sub_2411857B0(v9[0], 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }
}

uint64_t sub_2411801C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2411AB728();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MessageComposeApexEntryView();
  sub_241186C60(v1 + *(v12 + 20), v11, &qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2411AB7F8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2411ABE38();
    v16 = sub_2411AB808();
    sub_2411AB578();

    sub_2411AB718();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t MessageComposeApexEntryView.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = *(type metadata accessor for MessageComposeApexEntryView() + 20);
  *(a1 + v2) = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);

  return MEMORY[0x2821FEBC8](a1 + v2, v3, 0);
}

uint64_t sub_241180450@<X0>(BOOL *a1@<X8>)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24118005C();
  swift_getKeyPath();
  sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v3 = *&v2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8];

  if (v3)
  {
  }

  *a1 = v3 != 0;
  return result;
}

uint64_t sub_24118059C(char *a1)
{
  v1 = *a1;
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v1)
  {
  }

  else
  {
    v3 = sub_24118005C();
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
    sub_2411AB458();
  }
}

uint64_t MessageComposeApexEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = type metadata accessor for MessageComposeApexEntryView();
  v74 = *(v1 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v87 = v3;
  v84 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2411AB378();
  v71 = *(v72 - 1);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2411AB448();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v69 - v13;
  v15 = sub_2411ABCC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v69 - v21;
  v82 = sub_2411AB388();
  v75 = *(v82 - 8);
  v23 = *(v75 + 64);
  v24 = MEMORY[0x28223BE20](v82);
  v73 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v86 = v69 - v26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C60, &qword_2411ACC00);
  v76 = *(v78 - 8);
  v27 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v83 = v69 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C68, &qword_2411ACC08);
  v79 = *(v29 - 8);
  v80 = v29;
  v30 = *(v79 + 64);
  MEMORY[0x28223BE20](v29);
  v77 = v69 - v31;
  sub_2411ABCB8();
  sub_2411856FC();
  v32 = sub_2411ABE98();
  if (!v32)
  {
    v32 = [objc_opt_self() mainBundle];
  }

  v33 = v32;
  sub_2411AB438();
  (*(v16 + 16))(v20, v22, v15);
  (*(v8 + 16))(v12, v14, v7);
  v34 = [v33 bundleURL];
  v70 = v15;
  v35 = v7;
  v36 = v34;
  sub_2411AB3B8();

  (*(v71 + 104))(v6, *MEMORY[0x277CC9118], v72);
  sub_2411AB398();

  (*(v8 + 8))(v14, v35);
  (*(v16 + 8))(v22, v70);
  v37 = v85;
  v38 = v84;
  sub_241185748(v85, v84);
  sub_2411ABDA8();
  v39 = sub_2411ABD98();
  v40 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v74 = *(v74 + 80);
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  *(v41 + 16) = v39;
  *(v41 + 24) = v42;
  sub_2411857BC(v38, v41 + v40);
  sub_241185748(v37, v38);
  v43 = sub_2411ABD98();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v42;
  sub_2411857BC(v38, v44 + v40);
  v45 = sub_2411AB918();
  v72 = v69;
  v69[2] = v88;
  v69[1] = v89;
  LODWORD(v70) = v90;
  v46 = MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v46);
  v47 = v75;
  (*(v75 + 16))(v73, v86, v82);
  v48 = sub_2411AB838();
  v50 = v49;
  v52 = v51;
  v69[0] = v53;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C78, &qword_2411ACC10);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C80, &qword_2411ACC18);
  v67 = sub_241186A54(&qword_27E533C88, &qword_27E533C78, &qword_2411ACC10);
  v68 = sub_241185A88();
  sub_2411AB8B8();
  sub_241185B0C(v48, v50, v52 & 1);

  (*(v47 + 8))(v86, v82);
  v54 = v85;
  v55 = sub_24118005C();
  swift_getKeyPath();
  v88 = v55;
  v86 = sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  LOBYTE(v43) = v55[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose];

  v94 = v43;
  v56 = v84;
  sub_241185748(v54, v84);
  v57 = (v74 + 16) & ~v74;
  v58 = swift_allocObject();
  sub_2411857BC(v56, v58 + v57);
  v88 = MEMORY[0x277CE1428];
  v89 = v71;
  v90 = v73;
  v91 = MEMORY[0x277CE1410];
  v92 = v67;
  v93 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v77;
  v60 = v78;
  v62 = v83;
  sub_2411AB8C8();

  (*(v76 + 8))(v62, v60);
  v63 = sub_24118005C();
  swift_getKeyPath();
  v88 = v63;
  sub_2411AB468();

  LOBYTE(v62) = v63[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView];

  v94 = v62;
  sub_241185748(v54, v56);
  v64 = swift_allocObject();
  sub_2411857BC(v56, v64 + v57);
  v88 = v60;
  v89 = MEMORY[0x277D839B0];
  v90 = OpaqueTypeConformance2;
  v91 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v65 = v80;
  sub_2411AB8C8();

  return (*(v79 + 8))(v61, v65);
}

uint64_t sub_2411812A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v160 = a1;
  v128 = a2;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D68, &qword_2411ACE70) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v126 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v127 = &v113 - v5;
  v118 = sub_2411AB6F8();
  v117 = *(v118 - 8);
  v6 = *(v117 + 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageComposeApexEntryView();
  v140 = *(v8 - 8);
  v9 = *(v140 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v142 = v10;
  v159 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2411AB378();
  v11 = *(v156 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v156);
  v152 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2411AB448();
  v14 = *(v155 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v155);
  v153 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v113 - v18;
  v161 = sub_2411ABCC8();
  v20 = *(v161 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v161);
  v143 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v113 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v151 = &v113 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v113 - v29;
  v158 = sub_2411AB388();
  v162 = *(v158 - 8);
  v31 = *(v162 + 64);
  v32 = MEMORY[0x28223BE20](v158);
  v122 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v120 = &v113 - v35;
  MEMORY[0x28223BE20](v34);
  v115 = &v113 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D70, &qword_2411ACE78);
  v38 = *(v37 - 8);
  v148 = v37;
  v149 = v38;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v125 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v150 = &v113 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v147 = &v113 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v157 = &v113 - v47;
  MEMORY[0x28223BE20](v46);
  v114 = &v113 - v48;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D78, &qword_2411ACE80);
  v123 = *(v124 - 8);
  v49 = *(v123 + 64);
  v50 = MEMORY[0x28223BE20](v124);
  v145 = &v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v154 = &v113 - v52;
  sub_2411ABDA8();
  v121 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2411ABCB8();
  v141 = sub_2411856FC();
  v53 = sub_2411ABE98();
  v119 = v26;
  if (!v53)
  {
    v53 = [objc_opt_self() mainBundle];
  }

  v54 = v53;
  sub_2411AB438();
  v55 = v20[2];
  v138 = v20 + 2;
  v137 = v55;
  v55(v151, v30, v161);
  v56 = v14[2];
  v144 = v30;
  v57 = v155;
  v134 = v14 + 2;
  v133 = v56;
  v56(v153, v19, v155);
  v58 = [v54 bundleURL];
  v59 = v152;
  sub_2411AB3B8();

  v60 = *(v11 + 104);
  v132 = *MEMORY[0x277CC9118];
  v146 = v11 + 104;
  v131 = v60;
  v60(v59);
  v61 = v115;
  v62 = v19;
  sub_2411AB398();

  v63 = v14[1];
  v139 = v14 + 1;
  v130 = v63;
  v63(v19, v57);
  v64 = v20[1];
  v65 = v144;
  v144 = (v20 + 1);
  v129 = v64;
  v64(v65, v161);
  v66 = v159;
  sub_241185748(v160, v159);
  v67 = (*(v140 + 80) + 16) & ~*(v140 + 80);
  v136 = *(v140 + 80);
  v135 = &v142[v67];
  v68 = swift_allocObject();
  v140 = v67;
  v69 = sub_2411857BC(v66, v68 + v67);
  MEMORY[0x28223BE20](v69);
  *(&v113 - 2) = v61;
  v70 = v114;
  sub_2411AB8F8();
  v71 = *(v162 + 8);
  v162 += 8;
  v142 = v71;
  (v71)(v61, v158);
  v72 = v116;
  sub_2411AB6E8();
  sub_241186A54(&qword_27E533D80, &qword_27E533D70, &qword_2411ACE78);
  v73 = v148;
  sub_2411AB898();
  (*(v117 + 1))(v72, v118);
  v74 = *(v149 + 8);
  v118 = v149 + 8;
  v117 = v74;
  v74(v70, v73);
  v75 = v119;
  sub_2411ABCB8();
  v76 = sub_2411ABE98();
  if (!v76)
  {
    v76 = [objc_opt_self() mainBundle];
  }

  v77 = v76;
  sub_2411AB438();
  v78 = v161;
  v137(v151, v75, v161);
  v79 = v155;
  v133(v153, v62, v155);
  v80 = [v77 bundleURL];
  v81 = v152;
  sub_2411AB3B8();

  v131(v81, v132, v156);
  v82 = v120;
  sub_2411AB398();

  v130(v62, v79);
  v129(v75, v78);
  v83 = v159;
  sub_241185748(v160, v159);
  v84 = swift_allocObject();
  v85 = sub_2411857BC(v83, v84 + v140);
  MEMORY[0x28223BE20](v85);
  *(&v113 - 2) = v82;
  sub_2411AB8F8();
  (v142)(v82, v158);
  sub_2411ABCB8();
  v86 = sub_2411ABE98();
  if (!v86)
  {
    v86 = [objc_opt_self() mainBundle];
  }

  v87 = v86;
  sub_2411AB438();
  v88 = v143;
  v89 = v161;
  v137(v151, v143, v161);
  v90 = v155;
  v133(v153, v62, v155);
  v91 = [v87 bundleURL];
  v92 = v152;
  sub_2411AB3B8();

  v131(v92, v132, v156);
  v93 = v122;
  sub_2411AB398();

  v130(v62, v90);
  v129(v88, v89);
  v94 = v127;
  sub_2411AB698();
  v95 = sub_2411AB6A8();
  (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
  v96 = v159;
  sub_241185748(v160, v159);
  v97 = swift_allocObject();
  sub_2411857BC(v96, v97 + v140);
  v98 = sub_241186C60(v94, v126, &qword_27E533D68, &qword_2411ACE70);
  MEMORY[0x28223BE20](v98);
  *(&v113 - 2) = v93;
  v99 = v147;
  sub_2411AB8E8();
  sub_241186CE4(v94, &qword_27E533D68, &qword_2411ACE70);
  (v142)(v93, v158);
  v100 = v123;
  v101 = *(v123 + 16);
  v102 = v145;
  v103 = v124;
  v101(v145, v154, v124);
  v104 = *(v149 + 16);
  v105 = v148;
  v104(v150, v157, v148);
  v106 = v125;
  v104(v125, v99, v105);
  v107 = v128;
  v101(v128, v102, v103);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D88, &qword_2411ACE88);
  v109 = v150;
  v104(&v107[*(v108 + 48)], v150, v105);
  v104(&v107[*(v108 + 64)], v106, v105);
  v110 = v117;
  v117(v147, v105);
  v110(v157, v105);
  v111 = *(v100 + 8);
  v111(v154, v103);
  v110(v106, v105);
  v110(v109, v105);
  v111(v145, v103);
}

void sub_2411823E0()
{
  v0 = sub_2411ABA38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2411ABDA8();
  v5 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_24118005C();
  swift_getKeyPath();
  v21 = v6;
  v7 = sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v8 = *&v6[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask];

  if (v8)
  {
    v20[0] = v7;
    v20[1] = v5;
    v9 = *(v8 + 16);

    v10 = sub_2411ABAA8();
    if (v10)
    {
      v11 = v10;
      sub_2411ABA18();
    }

    sub_2411ABA48();
    v16 = sub_2411ABAE8();
    v17 = sub_2411AB648();

    (*(v1 + 104))(v4, *MEMORY[0x277CEEB70], v0);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8]);
    sub_2411ABC88();

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v12 = sub_2411AB5A8();
    __swift_project_value_buffer(v12, qword_27E535AC0);
    v13 = sub_2411AB588();
    v14 = sub_2411ABE28();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24117E000, v13, v14, "SendFlow (Extension): Didn't log .userDidAcknowledgeAskToApprove checkpoint because messageComposeRequestTask was nil.", v15, 2u);
      MEMORY[0x245CDDA90](v15, -1, -1);
    }
  }

  v18 = sub_24118005C();
  v19 = v18;
  if (v18[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose] == 1)
  {
    v18[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose] = 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    v20[-2] = v19;
    LOBYTE(v20[-1]) = 1;
    v21 = v19;
    sub_2411AB458();
  }
}

void sub_24118283C()
{
  v0 = sub_2411ABA38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2411ABDA8();
  v5 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_24118005C();
  swift_getKeyPath();
  v21 = v6;
  v7 = sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v8 = *&v6[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask];

  if (v8)
  {
    v20[0] = v7;
    v20[1] = v5;
    v9 = *(v8 + 16);

    v10 = sub_2411ABAA8();
    if (v10)
    {
      v11 = v10;
      sub_2411ABA18();
    }

    sub_2411ABA48();
    v16 = sub_2411ABAE8();
    v17 = sub_2411AB648();

    (*(v1 + 104))(v4, *MEMORY[0x277CEEB68], v0);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8]);
    sub_2411ABC88();

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v12 = sub_2411AB5A8();
    __swift_project_value_buffer(v12, qword_27E535AC0);
    v13 = sub_2411AB588();
    v14 = sub_2411ABE28();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24117E000, v13, v14, "SendFlow (Extension): Didn't log .userDidTapAskInPerson checkpoint because messageComposeRequestTask was nil.", v15, 2u);
      MEMORY[0x245CDDA90](v15, -1, -1);
    }
  }

  v18 = sub_24118005C();
  v19 = v18;
  if (v18[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView] == 1)
  {
    v18[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView] = 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    v20[-2] = v19;
    LOBYTE(v20[-1]) = 1;
    v21 = v19;
    sub_2411AB458();
  }
}

void sub_241182C98()
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_24118005C();
  sub_241187DF4(0, 0);
}

double sub_241182D60@<D0>(uint64_t a1@<X8>)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24118005C();
  swift_getKeyPath();
  *&v6 = v2;
  sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v4 = *&v2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent];
  v3 = *&v2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8];

  if (v3)
  {
    *&v6 = v4;
    *(&v6 + 1) = v3;
    sub_2411869E8();
    sub_2411AB848();
  }

  sub_2411AB7D8();

  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_241182F14(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *a2;
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v6)
  {
    sub_241182FE0(a5);
  }
}

uint64_t sub_241182FE0(const char *a1)
{
  v3 = v1;
  v4 = sub_2411AB7F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v9 = sub_2411AB5A8();
  __swift_project_value_buffer(v9, qword_27E535AC0);
  v10 = sub_2411AB588();
  v11 = sub_2411ABE48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24117E000, v10, v11, a1, v12, 2u);
    MEMORY[0x245CDDA90](v12, -1, -1);
  }

  v13 = sub_2411801C8(v8);
  MEMORY[0x28223BE20](v13);
  *(&v15 - 2) = v3;
  sub_2411AB7E8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2411831B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2411ABA38();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_2411ABDA8();
  v5[7] = sub_2411ABD98();
  v10 = sub_2411ABD48();
  v5[8] = v10;
  v5[9] = v9;

  return MEMORY[0x2822009F8](sub_2411832A4, v10, v9);
}

uint64_t sub_2411832A4()
{
  v1 = v0[2];
  v0[10] = sub_24118005C();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_241183340;

  return sub_2411880BC();
}

uint64_t sub_241183340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 88);
  v11 = *v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 120) = v3;

  if (v3)
  {
    v7 = *(v5 + 64);
    v8 = *(v5 + 72);
    v9 = sub_241183A2C;
  }

  else
  {

    v7 = *(v5 + 64);
    v8 = *(v5 + 72);
    v9 = sub_241183460;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_241183460()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[7];

  v4 = v1;
  v5 = sub_2411ABB88();
  v6 = v0[14];
  if (v2)
  {

    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v7 = sub_2411AB5A8();
    __swift_project_value_buffer(v7, qword_27E535AC0);
    v8 = sub_2411AB588();
    v9 = sub_2411ABE28();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24117E000, v8, v9, "SendFlow (Extension): Didn't log .didFetchPayload metric because requestPayload was nil.", v10, 2u);
      MEMORY[0x245CDDA90](v10, -1, -1);
    }

    v11 = 0;
  }

  else
  {
    v12 = v5;
    v13 = v0[5];
    v14 = v0[6];
    v51 = v0[4];

    sub_2411ABA48();
    v15 = v12;
    v16 = sub_2411ABA78();
    sub_2411ABC98();

    v17 = sub_2411ABA78();
    v18 = sub_2411ABCA8();

    v19 = sub_2411AB648();
    v11 = v12;
    (*(v13 + 104))(v14, *MEMORY[0x277CEEB90], v51);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8]);
    sub_2411ABC88();

    (*(v13 + 8))(v14, v51);
  }

  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[2];
  v23 = [objc_allocWithZone(MEMORY[0x277CD6888]) init];
  v24 = sub_24118005C();
  [v23 setMessageComposeDelegate_];

  [v23 _setCanEditRecipients_];
  v25 = v20;
  sub_2411ABB98();
  v26 = sub_2411ABCD8();

  [v23 setMessage:v25 withExtensionBundleIdentifier:v26];

  v27 = sub_2411ABD38();

  [v23 setRecipients_];

  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 userInterfaceIdiom];

  if (!v29)
  {
    [v23 setPreferredPresentationStyle_];
  }

  v30 = v0[3];
  if (v30)
  {
    [v30 presentViewController:v23 animated:1 completion:0];
  }

  if (v11)
  {
    v50 = v0[13];
    v52 = v0[14];
    v49 = v0[12];
    v32 = v0[5];
    v31 = v0[6];
    v48 = v0[4];
    sub_2411ABA48();
    v33 = sub_2411ABA78();
    sub_2411ABC98();

    v34 = sub_2411ABA78();
    v35 = sub_2411ABCA8();

    v36 = sub_2411AB648();
    (*(v32 + 104))(v31, *MEMORY[0x277CEEBB0], v48);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8]);
    sub_2411ABC88();

    (*(v32 + 8))(v31, v48);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v37 = sub_2411AB5A8();
    __swift_project_value_buffer(v37, qword_27E535AC0);
    v38 = sub_2411AB588();
    v39 = sub_2411ABE28();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[13];
    v42 = v0[14];
    v43 = v0[12];
    if (v40)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_24117E000, v38, v39, "SendFlow (Extension): Didn't log .didPresentMessageCompose metric because requestPayload was nil.", v44, 2u);
      MEMORY[0x245CDDA90](v44, -1, -1);
    }
  }

  v45 = v0[6];

  v46 = v0[1];

  return v46();
}

uint64_t sub_241183A2C()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = v1;
  v4 = sub_2411AB588();
  v5 = sub_2411ABE28();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): failed to display Message Compose error %@", v7, 0xCu);
    sub_241186CE4(v8, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v8, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 16);

  *(v0 + 128) = sub_24118005C();
  v13 = v11;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_241183C14;

  return sub_2411885BC(v11);
}

uint64_t sub_241183C14()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_241183D70, v6, v5);
}

uint64_t sub_241183D70()
{
  v1 = v0[15];
  v2 = v0[7];

  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_241183DE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[2] = a4;
  v21 = a5;
  v20[1] = a3;
  v7 = type metadata accessor for MessageComposeApexEntryView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v20 - v12;
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_2411ABDD8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_241185748(a2, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1;
  v16 = sub_2411ABD98();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = MEMORY[0x277D85700];
  sub_2411857BC(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_241192B80(0, 0, v13, v21, v18);
}

uint64_t sub_241184024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2411ABDA8();
  v5[4] = sub_2411ABD98();
  v7 = sub_2411ABD48();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2411840BC, v7, v6);
}

uint64_t sub_2411840BC()
{
  v1 = v0[2];
  v2 = sub_24118005C();
  v3 = sub_241188B30();

  if (v3)
  {
    v4 = v0[4];
    v5 = v0[2];

    v6 = [objc_opt_self() viewControllerForNewContact_];
    v7 = sub_24118005C();
    [v6 setDelegate_];

    v8 = sub_24118005C();
    v9 = *&v8[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_contactStore];

    [v6 setContactStore_];
    v10 = sub_24118005C();
    v11 = *&v10[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_downtimeContainerFetcher];

    v12 = [v11 downtimeWhitelistContainer];
    [v6 setParentContainer_];

    v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (!v15)
    {
      [v13 setModalPresentationStyle_];
    }

    v16 = v0[3];
    if (v16)
    {
      [v16 presentViewController:v13 animated:1 completion:0];
    }

    v17 = v0[1];

    return v17();
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v19 = sub_2411AB5A8();
    __swift_project_value_buffer(v19, qword_27E535AC0);
    v20 = sub_2411AB588();
    v21 = sub_2411ABE28();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24117E000, v20, v21, "SendFlow (Extension): contact was nil", v22, 2u);
      MEMORY[0x245CDDA90](v22, -1, -1);
    }

    v23 = v0[2];

    v0[7] = sub_24118005C();
    sub_241186420();
    v24 = swift_allocError();
    v0[8] = v24;
    *v25 = 0;
    v26 = swift_task_alloc();
    v0[9] = v26;
    *v26 = v0;
    v26[1] = sub_241184424;

    return sub_2411885BC(v24);
  }
}

uint64_t sub_241184424()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_241184580, v6, v5);
}

uint64_t sub_241184580()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241184608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2411ABA38();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_2411ABDA8();
  v5[8] = sub_2411ABD98();
  v10 = sub_2411ABD48();
  v5[9] = v10;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_2411846FC, v10, v9);
}

uint64_t sub_2411846FC()
{
  v25 = v0;
  if (v0[3] == 1)
  {
    v1 = v0[4];
    swift_getKeyPath();
    v0[2] = v1;
    sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
    sub_2411AB468();

    v2 = *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
    if (v2)
    {
      v3 = *(v2 + 16);

      v4 = sub_2411ABAA8();
      if (v4)
      {
        v5 = v4;
        sub_2411ABA18();
      }

      v17 = v0[6];
      v16 = v0[7];
      v18 = v0[5];
      sub_2411ABA48();
      v19 = sub_2411ABAE8();
      v20 = sub_2411AB648();

      (*(v17 + 104))(v16, *MEMORY[0x277CEEBC8], v18);
      sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8]);
      sub_2411ABC88();

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      if (qword_27E533C20 != -1)
      {
        swift_once();
      }

      v11 = sub_2411AB5A8();
      __swift_project_value_buffer(v11, qword_27E535AC0);
      v12 = sub_2411AB588();
      v13 = sub_2411ABE28();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_24119F950(0xD00000000000002ELL, 0x80000002411AE4D0, &v24);
        _os_log_impl(&dword_24117E000, v12, v13, "%s Didn't log .userDidSendViaMessageCompose checkpoint because messageComposeRequestTask was nil.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x245CDDA90](v15, -1, -1);
        MEMORY[0x245CDDA90](v14, -1, -1);
      }
    }

    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_241184AF8;
    v22 = v0[4];

    return sub_24118944C();
  }

  else
  {
    v6 = sub_2411ABB78();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v0[12] = sub_2411ABB68();
    v9 = *(MEMORY[0x277CEED10] + 4);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_241184CDC;

    return MEMORY[0x2821413A8](0);
  }
}

uint64_t sub_241184AF8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_241184C18, v4, v3);
}

uint64_t sub_241184C18()
{
  v1 = v0[3];
  v2 = sub_2411ABB78();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[12] = sub_2411ABB68();
  v5 = *(MEMORY[0x277CEED10] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_241184CDC;

  return MEMORY[0x2821413A8](v1 == 1);
}

uint64_t sub_241184CDC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_2411850A4;
  }

  else
  {
    v7 = sub_241184E18;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_241184E18()
{
  v1 = v0[12];

  if (v0[3] == 2)
  {
    sub_241186420();
    v2 = swift_allocError();
    *v3 = 1;
  }

  else
  {
    v2 = 0;
  }

  v0[15] = v2;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_241184EF8;
  v5 = v0[4];

  return sub_2411885BC(v2);
}

uint64_t sub_241184EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24118503C, v5, v4);
}

uint64_t sub_24118503C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2411850A4()
{
  v20 = v0;
  v1 = v0[12];

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AC0);
  v4 = v2;
  v5 = sub_2411AB588();
  v6 = sub_2411ABE28();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24119F950(0xD00000000000002ELL, 0x80000002411AE4D0, &v19);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24117E000, v5, v6, "%s Error calling messagesComposeDidFinish: %@", v9, 0x16u);
    sub_241186CE4(v10, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CDDA90](v11, -1, -1);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  else
  {
  }

  if (v0[3] == 2)
  {
    sub_241186420();
    v14 = swift_allocError();
    *v15 = 1;
  }

  else
  {
    v14 = 0;
  }

  v0[15] = v14;
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_241184EF8;
  v17 = v0[4];

  return sub_2411885BC(v14);
}

uint64_t sub_24118546C@<X0>(void *a1@<X8>)
{
  sub_241186DA4();
  result = sub_2411AB738();
  *a1 = v3;
  return result;
}

uint64_t sub_2411854BC(void **a1)
{
  v1 = *a1;
  sub_241186DA4();
  v2 = v1;
  return sub_2411AB748();
}

uint64_t type metadata accessor for MessageComposeApexEntryView()
{
  result = qword_27E533CB8;
  if (!qword_27E533CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2411855B4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2411856FC()
{
  result = qword_27E533C70;
  if (!qword_27E533C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E533C70);
  }

  return result;
}

uint64_t sub_241185748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageComposeApexEntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2411857B0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2411857BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageComposeApexEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241185820@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(type metadata accessor for MessageComposeApexEntryView() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_241180450(a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for MessageComposeApexEntryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_2411857B0(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2411AB7F8();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
    v9 = *(v6 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2411859BC(char *a1)
{
  v3 = *(*(type metadata accessor for MessageComposeApexEntryView() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_24118059C(a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_241185A88()
{
  result = qword_27E533C90;
  if (!qword_27E533C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C80, &qword_2411ACC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533C90);
  }

  return result;
}

uint64_t sub_241185B0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_241185C00()
{
  result = qword_27E533CA0;
  if (!qword_27E533CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendRequestFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SendRequestFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241185DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E533CA8, &unk_2411ACDB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_241185EC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E533CA8, &unk_2411ACDB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_241185F6C()
{
  sub_241186028(319, &qword_27E533CC8, type metadata accessor for SendRequestFlowStore);
  if (v0 <= 0x3F)
  {
    sub_241186028(319, &unk_27E533CD0, MEMORY[0x277CDE530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_241186028(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2411AB6B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24118607C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C68, &qword_2411ACC08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C60, &qword_2411ACC00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C78, &qword_2411ACC10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C80, &qword_2411ACC18);
  sub_241186A54(&qword_27E533C88, &qword_27E533C78, &qword_2411ACC10);
  sub_241185A88();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2411861D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_241186218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2411862D8;

  return sub_241184608(a1, v4, v5, v7, v6);
}

uint64_t sub_2411862D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_2411863CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_241186420()
{
  result = qword_27E533D48;
  if (!qword_27E533D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533D48);
  }

  return result;
}

uint64_t sub_241186474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_2411AB388() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_2411AB838();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2411865A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241186628(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageComposeApexEntryView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_241184024(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_35Tm()
{
  v1 = (type metadata accessor for MessageComposeApexEntryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_2411857B0(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2411AB7F8();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
    v9 = *(v6 + v7);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

uint64_t sub_2411868C0(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageComposeApexEntryView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_2411831B0(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_2411869E8()
{
  result = qword_27E533D60;
  if (!qword_27E533D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533D60);
  }

  return result;
}

uint64_t sub_241186A54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_241186AB4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessageComposeApexEntryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_10Tm()
{
  v1 = (type metadata accessor for MessageComposeApexEntryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  sub_2411857B0(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2411AB7F8();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_241186C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_241186CE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_241186DA4()
{
  result = qword_27E533D90;
  if (!qword_27E533D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533D90);
  }

  return result;
}

void type metadata accessor for MessageComposeResult()
{
  if (!qword_27E533D98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E533D98);
    }
  }
}

uint64_t MessageComposeExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_2411AB4D8();
}

uint64_t sub_241187008()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_241187088()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t MessageComposeScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x2D6567617373656DLL;
  a3[1] = 0xEF65736F706D6F63;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t MessageComposeScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = swift_allocObject();
  v6 = *(a1 + 24);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 24) = v6;
  *(v5 + 32) = v3;
  *(v5 + 40) = *(v1 + 1);
  *(v5 + 56) = v4;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533E00, &qword_2411ACF00);
  sub_2411AB6D8();
  sub_2411876D4();
  swift_getWitnessTable();
  return sub_2411AB4B8();
}

uint64_t sub_241187248@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v27 = a4;
  v28 = a5;
  v26 = *(a3 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533E00, &qword_2411ACF00);
  v10 = sub_2411AB6D8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  sub_2411ABDA8();
  v25[1] = sub_2411ABD98();
  sub_2411ABD48();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  swift_getKeyPath();
  if (qword_27E533C10 != -1)
  {
    swift_once();
  }

  v31 = qword_27E535AB0;
  v19 = qword_27E535AB0;
  v20 = v27;
  sub_2411AB878();

  (*(v26 + 8))(v9, a3);
  v21 = sub_2411876D4();
  v29 = v20;
  v30 = v21;
  swift_getWitnessTable();
  v22 = v11[2];
  v22(v17, v15, v10);
  v23 = v11[1];
  v23(v15, v10);
  v22(v28, v17, v10);
  v23(v17, v10);
}

uint64_t sub_241187558()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_241187598@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  return sub_241187248(*(v1 + 32), *(v1 + 48), *(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_2411875A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_2411ABDD8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2411ABDA8();
  v7 = a1;
  v8 = sub_2411ABD98();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_241192B80(0, 0, v5, &unk_2411AD020, v9);

  return 1;
}

unint64_t sub_2411876D4()
{
  result = qword_27E533E08[0];
  if (!qword_27E533E08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533E00, &qword_2411ACF00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E533E08);
  }

  return result;
}

uint64_t sub_241187738(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2411877B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2411ABDA8();
  *(v4 + 24) = sub_2411ABD98();
  v6 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_241187850, v6, v5);
}

uint64_t sub_241187850()
{
  v1 = *(v0 + 24);

  if (qword_27E533C10 != -1)
  {
    swift_once();
  }

  sub_241189E34(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24118790C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_241187960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2411879A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241187A0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241187A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2411862D8;

  return sub_2411877B8(a1, v4, v5, v6);
}

uint64_t sub_241187B38()
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v1 = *(v0 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);
  v2 = *(v0 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8);

  return v1;
}

uint64_t sub_241187BF4()
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v1 = *(v0 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
}

uint64_t sub_241187CF0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
    sub_2411AB458();
  }

  return result;
}

uint64_t sub_241187DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v19 - v7;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v9 = sub_2411AB5A8();
  __swift_project_value_buffer(v9, qword_27E535AC0);
  v10 = sub_2411AB588();
  v11 = sub_2411ABE48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24117E000, v10, v11, "SendFlow (Extension): user tapped cancel on ask prompt", v12, 2u);
    MEMORY[0x245CDDA90](v12, -1, -1);
  }

  v13 = sub_2411ABDD8();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_2411ABDA8();
  v14 = v3;
  sub_2411927DC(a1);
  v15 = sub_2411ABD98();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;
  sub_241192B80(0, 0, v8, &unk_2411AD3C0, v16);
}

uint64_t sub_24118801C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  return *(v2 + *a2);
}

uint64_t sub_2411880BC()
{
  v1[3] = v0;
  sub_2411ABDA8();
  v1[4] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_241188154, v3, v2);
}

uint64_t sub_241188154()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): composing message content", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[3];

  swift_getKeyPath();
  v0[2] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v6 = *(v5 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  v0[7] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_241188398;

    return sub_24118A8C8();
  }

  else
  {
    v9 = v0[4];

    sub_241191650();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_241188398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 64);
  v10 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v11 = v8[5];
    v12 = v8[6];
    v13 = sub_24118854C;
  }

  else
  {
    v8[10] = a3;
    v8[11] = a2;
    v8[12] = a1;
    v11 = v8[5];
    v12 = v8[6];
    v13 = sub_2411884D4;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_2411884D4()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  return v3(v4, v5, v6);
}

uint64_t sub_24118854C()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2411885BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_2411ABDA8();
  v2[5] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_241188658, v4, v3);
}

uint64_t sub_241188658()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[8] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): dismiss called", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v0[9] = sub_2411ABD98();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_241188820;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_241188820()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_2411889AC;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_241188944;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_241188944()
{
  v1 = v0[5];

  v2 = v0[3];
  sub_24118BC94();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2411889AC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v1;
  v7 = sub_2411AB588();
  v8 = sub_2411ABE28();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24117E000, v7, v8, "SendFlow (Extension): error sending dismiss message to host %@", v11, 0xCu);
    sub_241186CE4(v12, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v12, -1, -1);
    MEMORY[0x245CDDA90](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[3];
  sub_24118BC94();
  v16 = v0[1];

  return v16();
}

id sub_241188B30()
{
  v1 = v0;
  v2 = sub_2411ABB28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FD0, &unk_2411AD390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v58 - v9);
  swift_getKeyPath();
  v66 = v0;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v11 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask;
  v12 = *(v0 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  if (!v12)
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v17 = sub_2411AB5A8();
    __swift_project_value_buffer(v17, qword_27E535AC0);
    v18 = sub_2411AB588();
    v19 = sub_2411ABE28();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24117E000, v18, v19, "SendFlow (Extension): question was nil", v20, 2u);
      MEMORY[0x245CDDA90](v20, -1, -1);
    }

    return 0;
  }

  v13 = *(v12 + 16);

  v14 = sub_2411ABAE8();

  v65 = v14;
  sub_2411AB5B8();
  v15 = sub_2411AB608();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_241186CE4(v10, &qword_27E533FD0, &unk_2411AD390);
LABEL_20:
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v32 = sub_2411AB5A8();
    __swift_project_value_buffer(v32, qword_27E535AC0);
    v33 = sub_2411AB588();
    v34 = sub_2411ABE28();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24117E000, v33, v34, "SendFlow (Extension): case let .communication = question.askToTopicMetadata returned nil", v35, 2u);
      MEMORY[0x245CDDA90](v35, -1, -1);
    }

    return 0;
  }

  if ((*(v16 + 88))(v10, v15) != *MEMORY[0x277CEEAD0])
  {
    (*(v16 + 8))(v10, v15);
    goto LABEL_20;
  }

  (*(v16 + 96))(v10, v15);
  v21 = *v10;
  v22 = sub_2411ABB38();
  if (!*(v22 + 16))
  {

    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v37 = sub_2411AB5A8();
    __swift_project_value_buffer(v37, qword_27E535AC0);
    v38 = sub_2411AB588();
    v39 = sub_2411ABE28();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24117E000, v38, v39, "SendFlow (Extension): handle was nil", v40, 2u);
      MEMORY[0x245CDDA90](v40, -1, -1);
    }

    return 0;
  }

  (*(v3 + 16))(v6, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  v23 = sub_2411ABB18();
  (*(v3 + 8))(v6, v2);
  v24 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  swift_getKeyPath();
  v66 = v1;
  sub_2411AB468();

  v25 = *(v1 + v11);
  if (!v25 || (v26 = *(v25 + 16), , v27 = sub_2411ABAA8(), , !v27) || (v41 = sub_2411ABA28(), v43 = v42, v27, !v43))
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v28 = sub_2411AB5A8();
    __swift_project_value_buffer(v28, qword_27E535AC0);
    v29 = sub_2411AB588();
    v30 = sub_2411ABE28();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24117E000, v29, v30, "SendFlow (Extension): clientBundleIdentifier was nil", v31, 2u);
      MEMORY[0x245CDDA90](v31, -1, -1);
    }

    return 0;
  }

  sub_241192790();

  v44 = sub_24118B718(v41, v43, 1);
  if (v44)
  {
    v64 = v44;
    v46 = [v44 localizedName];
    sub_2411ABCF8();
    v45 = v47;
  }

  else
  {
    v45 = 0;
    v64 = 0;
  }

  v61 = MEMORY[0x245CDCED0]();
  v62 = MEMORY[0x245CDCED0]();
  v63 = v48;
  if (!v45)
  {
  }

  v60 = MEMORY[0x245CDCED0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FE0, &qword_2411AD9C0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2411AD060;
  *(v49 + 32) = v41;
  *(v49 + 40) = v43;
  v59 = objc_allocWithZone(MEMORY[0x277CBDBB0]);
  v50 = sub_2411ABCD8();

  v51 = sub_2411ABCD8();

  v52 = sub_2411ABCD8();

  v53 = sub_2411ABCD8();

  v54 = sub_2411ABD38();

  v55 = [v59 initWithUrlString:0 username:v50 userIdentifier:v51 service:v52 displayname:v53 teamIdentifier:0 bundleIdentifiers:v54];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FE8, &qword_2411AD3A0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2411AD070;
  *(v56 + 32) = [objc_allocWithZone(MEMORY[0x277CBDB20]) initWithLabel:0 value:v55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E533FF0, &qword_2411AD3A8);
  v57 = sub_2411ABD38();

  [v24 setSocialProfiles_];

  return v24;
}

uint64_t sub_24118944C()
{
  v1[12] = v0;
  sub_2411ABDA8();
  v1[13] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[14] = v3;
  v1[15] = v2;

  return MEMORY[0x2822009F8](sub_2411894E4, v3, v2);
}

uint64_t sub_2411894E4()
{
  v23 = v0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[16] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): marking message as sent.", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[12];

  swift_getKeyPath();
  v0[10] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v6 = *(v5 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  if (v6)
  {
    v7 = v0[12];
    v0[17] = *(v6 + 16);
    swift_getKeyPath();
    v0[11] = v7;

    sub_2411AB468();

    v8 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager;
    swift_beginAccess();
    sub_2411920FC(v7 + v8, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v9);
    v11 = sub_2411ABA98();
    v0[18] = v11;
    v17 = *(MEMORY[0x277CEED48] + 4);
    v18 = v11;
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    v19[1] = sub_241189A00;

    return MEMORY[0x282141428](v18, v9, v10);
  }

  else
  {
    v12 = v0[13];

    v13 = sub_2411AB588();
    v14 = sub_2411ABE28();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24119F950(0xD000000000000013, 0x80000002411AEAE0, &v22);
      _os_log_impl(&dword_24117E000, v13, v14, "SendFlow (Extension): %s messageComposeRequest is nil. This is unexpected.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x245CDDA90](v16, -1, -1);
      MEMORY[0x245CDDA90](v15, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_241189A00()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = sub_241189C08;
  }

  else
  {

    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = sub_241189B1C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_241189B1C()
{
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[16];
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Extension): marked message as sent.", v7, 2u);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_241189C08()
{
  v1 = v0[18];
  v2 = v0[13];

  v3 = v0[20];
  v4 = v0[16];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v3;
  v6 = sub_2411AB588();
  v7 = sub_2411ABE48();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24117E000, v6, v7, "SendFlow (Extension): failed to mark message as sent: %@", v8, 0xCu);
    sub_241186CE4(v9, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v9, -1, -1);
    MEMORY[0x245CDDA90](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[16];
  v13 = sub_2411AB588();
  v14 = sub_2411ABE48();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[17];
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24117E000, v13, v14, "SendFlow (Extension): marked message as sent.", v17, 2u);
    MEMORY[0x245CDDA90](v17, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_241189DF8()
{
  sub_241186DA4();
  sub_2411AB738();
  return v1;
}

id sub_241189E34(void *a1)
{
  v2 = v1;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AC0);
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): configuring XPC connection", v6, 2u);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  [a1 setExportedObject_];
  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v9 = [v7 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 activate];
  v10 = *(v2 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  *(v2 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection) = a1;

  return a1;
}

uint64_t sub_241189FF0()
{
  v0 = sub_2411ABC08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-1] - v6;
  sub_2411ABBF8();
  v13 = &type metadata for KnownClientVerifier;
  v14 = &off_2852EF3E0;
  v8 = objc_allocWithZone(type metadata accessor for SendRequestFlowStore());
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v1 + 16))(v5, v7, v0);
  v9 = sub_241191984(v5, v8);
  (*(v1 + 8))(v7, v0);
  result = __swift_destroy_boxed_opaque_existential_0(v12);
  qword_27E535AB0 = v9;
  return result;
}

uint64_t sub_24118A14C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  *a2 = *(v3 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
}

uint64_t sub_24118A200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB458();
}

uint64_t sub_24118A2CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v4 = *(v3 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);
  a2[1] = v4;
}

uint64_t sub_24118A384(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB458();
}

uint64_t sub_24118A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);
  v4 = *(a1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_24118A4B0(uint64_t a1, uint64_t *a2)
{
  sub_2411920FC(a1, v6);
  v3 = *a2;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  v5[3] = &type metadata for KnownClientVerifier;
  v5[4] = &off_2852EF3E0;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB458();

  __swift_destroy_boxed_opaque_existential_0(v5);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_24118A5CC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v5 = *a1;
  swift_beginAccess();
  return sub_2411920FC(v2 + v5, a2);
}

uint64_t sub_24118A694@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v6 = *a2;
  swift_beginAccess();
  return sub_2411920FC(v5 + v6, a3);
}

uint64_t sub_24118A760(uint64_t a1, uint64_t *a2)
{
  sub_2411920FC(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB458();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_24118A840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v5), a2);
  return swift_endAccess();
}

uint64_t sub_24118A8C8()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_2411ABDA8();
  v1[11] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_24118A99C, v4, v3);
}

uint64_t sub_24118A99C()
{
  v1 = v0[8];
  v2 = *(v1 + 24);
  v0[14] = v2;
  if (v2)
  {
    v3 = qword_27E533C20;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_2411AB5A8();
    v0[15] = __swift_project_value_buffer(v4, qword_27E535AC0);
    v5 = sub_2411AB588();
    v6 = sub_2411ABE48();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Extension): message content fetch in flight", v7, 2u);
      MEMORY[0x245CDDA90](v7, -1, -1);
    }

    v8 = *(MEMORY[0x277D857C8] + 4);
    v9 = swift_task_alloc();
    v0[16] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
    *v9 = v0;
    v9[1] = sub_24118AC98;
    v12 = MEMORY[0x277D84950];
    v13 = v0 + 5;
    v14 = v2;
  }

  else
  {
    v15 = v0[9];
    v16 = v0[10];
    v17 = sub_2411ABDD8();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);

    v18 = sub_2411ABD98();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v1;
    v21 = sub_24118FD04(0, 0, v15, &unk_2411AD2C8, v19);
    v0[18] = v21;
    v22 = *(v1 + 24);
    *(v1 + 24) = v21;

    v23 = *(MEMORY[0x277D857C8] + 4);
    v24 = swift_task_alloc();
    v0[19] = v24;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
    *v24 = v0;
    v24[1] = sub_24118AEF8;
    v12 = MEMORY[0x277D84950];
    v13 = v0 + 2;
    v14 = v21;
  }

  return MEMORY[0x282200430](v13, v14, v10, v11, v12);
}

uint64_t sub_24118AC98()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_24118B0C8;
  }

  else
  {
    v7 = sub_24118ADD4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24118ADD4()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = sub_2411AB588();
  v7 = sub_2411ABE48();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24117E000, v6, v7, "SendFlow (Extension): message content fetched", v10, 2u);
    MEMORY[0x245CDDA90](v10, -1, -1);
  }

  else
  {
  }

  v11 = v0[9];

  v12 = v0[1];

  return v12(v3, v4, v5);
}

uint64_t sub_24118AEF8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_24118B140;
  }

  else
  {
    v7 = sub_24118B034;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24118B034()
{
  v1 = v0[18];
  v2 = v0[11];

  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[9];

  v7 = v0[1];

  return v7(v4, v3, v5);
}

uint64_t sub_24118B0C8()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[17];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24118B140()
{
  v1 = v0[18];
  v2 = v0[11];

  v3 = v0[20];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24118B1B8()
{
  v1[2] = v0;
  sub_2411ABDA8();
  v1[3] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24118B250, v3, v2);
}

uint64_t sub_24118B250()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[6] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): fetching message compose payload...", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = sub_2411ABB78();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[7] = sub_2411ABB68();
  v9 = *(v5 + 16);
  v10 = sub_2411ABA98();
  v0[8] = v10;
  v11 = *(MEMORY[0x277CEED08] + 4);
  v12 = v10;
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_24118B434;

  return MEMORY[0x2821413A0](v12);
}

uint64_t sub_24118B434(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v9 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    v7 = sub_24118B6A4;
  }

  else
  {

    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    v7 = sub_24118B550;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24118B550()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[3];

  v4 = sub_2411ABB88();
  v5 = v0[10];
  if (v2)
  {
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v4;
    v10 = v0[6];

    v11 = sub_2411AB588();
    v12 = sub_2411ABE48();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24117E000, v11, v12, "SendFlow (Extension): fetched message compose payload", v13, 2u);
      MEMORY[0x245CDDA90](v13, -1, -1);
    }

    v14 = v0[7];

    v15 = v0[1];

    return v15(v9);
  }
}

uint64_t sub_24118B6A4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];

  v4 = v0[11];
  v5 = v0[1];

  return v5();
}

id sub_24118B718(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2411ABCD8();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_2411AB368();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_24118B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  sub_2411ABDA8();
  v10 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a2 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  if (v11)
  {
    v33 = a1;
    v34 = v10;
    v30 = *(v6 + 16);
    v30(v9, a1, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v14 = v5;
    v15 = v13;
    v16 = *(v6 + 32);
    v31 = v14;
    v28 = v16;
    (v16)(v13 + v12, v9);
    v41 = sub_241192598;
    v42 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2411A1938;
    v40 = &block_descriptor_81;
    v17 = _Block_copy(&aBlock);
    v32 = v15;

    v18 = v11;

    v29 = v18;
    v19 = [v18 remoteObjectProxyWithErrorHandler_];
    _Block_release(v17);
    sub_2411ABED8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC8, &qword_2411AD380);
    swift_dynamicCast();
    v20 = v36;
    if (v35)
    {
      v21 = sub_2411AB358();
    }

    else
    {
      v21 = 0;
    }

    v24 = v31;
    v30(v9, v33, v31);
    v25 = swift_allocObject();
    v28(v25 + v12, v9, v24);
    v41 = sub_2411926C0;
    v42 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_24118BC50;
    v40 = &block_descriptor_87;
    v26 = _Block_copy(&aBlock);

    [v20 dismissWithPropagatingError:v21 reply:v26];
    _Block_release(v26);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_241191650();
    v22 = swift_allocError();
    *v23 = 0;
    aBlock = v22;
    sub_2411ABD68();
  }
}

uint64_t sub_24118BC00(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  return sub_2411ABD68();
}

uint64_t sub_24118BC50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_24118BC94()
{
  v1 = v0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Extension): invalidating", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB458();

  if (*(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_2411AB458();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x28223BE20](v8);
    sub_2411AB458();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView) = 0;
  }

  v9 = swift_getKeyPath();
  MEMORY[0x28223BE20](v9);
  sub_2411AB458();

  result = *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

id sub_24118C08C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SendRequestFlowStore()
{
  result = qword_27E533EE8;
  if (!qword_27E533EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24118C1F8()
{
  result = sub_2411AB4A8();
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

uint64_t sub_24118C2C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2411ABDA8();
  v3[5] = sub_2411ABD98();
  v5 = sub_2411ABD48();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_24118C364, v5, v4);
}

uint64_t sub_24118C364()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) dismissViewControllerAnimated:1 completion:0];
  if (v1)
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v2 = sub_2411AB5A8();
    *(v0 + 64) = __swift_project_value_buffer(v2, qword_27E535AC0);
    v3 = sub_2411AB588();
    v4 = sub_2411ABE48();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Extension): added a contact via ScreenTime passcode view", v5, 2u);
      MEMORY[0x245CDDA90](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_24118C544;
    v7 = *(v0 + 32);

    return sub_24118CAA8();
  }

  else
  {
    *(v0 + 88) = 0;
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_24118C790;
    v10 = *(v0 + 32);

    return sub_2411885BC(0);
  }
}

uint64_t sub_24118C544()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_24118C91C;
  }

  else
  {
    v7 = sub_24118C680;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24118C680()
{
  v1 = v0[8];
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): delivered default response", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v0[11] = 0;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_24118C790;
  v6 = v0[4];

  return sub_2411885BC(0);
}

uint64_t sub_24118C790()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24118C8B0, v4, v3);
}

uint64_t sub_24118C8B0()
{
  v1 = v0[11];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24118C91C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): error delivering default response: %@", v7, 0xCu);
    sub_241186CE4(v8, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v8, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  v11 = v0[10];

  v0[11] = v11;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_24118C790;
  v13 = v0[4];

  return sub_2411885BC(v11);
}

uint64_t sub_24118CAA8()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = sub_2411ABDA8();
  v1[8] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_24118CB7C, v4, v3);
}

uint64_t sub_24118CB7C()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[4] = v1;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v2 = *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  v0[11] = v2;
  if (v2)
  {
    v3 = *(v2 + 16);

    v4 = sub_2411ABAE8();
    v5 = sub_2411AB628();
    v0[12] = v5;

    if (v5)
    {
      v6 = *(v2 + 16);
      v7 = sub_2411ABAA8();
      if (v7)
      {
        v8 = v7;
        v9 = sub_2411ABA18();
        v11 = v10;

        v0[13] = v9;
        v0[14] = v11;
        if (v11)
        {
          v12 = sub_2411AC028();
          v14 = v13;
          v15 = *(MEMORY[0x277CE4600] + 4);
          v16 = swift_task_alloc();
          v0[15] = v16;
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FA8, &qword_2411AD320);
          *v16 = v0;
          v16[1] = sub_24118CFA8;

          return MEMORY[0x2821372C0](v0 + 2, v12, v14, &unk_2411AD318, 0, v17);
        }
      }

      v20 = v0[8];

      if (qword_27E533C20 != -1)
      {
        swift_once();
      }

      v21 = sub_2411AB5A8();
      __swift_project_value_buffer(v21, qword_27E535AC0);
      v22 = sub_2411AB588();
      v23 = sub_2411ABE28();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_24117E000, v22, v23, "SendFlow (Extension): could not deliver response. client bundle identifier was nil", v24, 2u);
        MEMORY[0x245CDDA90](v24, -1, -1);
      }

      sub_241191650();
      swift_allocError();
      *v25 = 4;
      swift_willThrow();
    }

    else
    {
      v26 = v0[8];

      if (qword_27E533C20 != -1)
      {
        swift_once();
      }

      v27 = sub_2411AB5A8();
      __swift_project_value_buffer(v27, qword_27E535AC0);
      v28 = sub_2411AB588();
      v29 = sub_2411ABE28();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_24117E000, v28, v29, "SendFlow (Extension): could not deliver response. default answer choice was nil", v30, 2u);
        MEMORY[0x245CDDA90](v30, -1, -1);
      }

      sub_241191650();
      swift_allocError();
      *v31 = 3;
      swift_willThrow();
    }
  }

  else
  {
    v18 = v0[8];

    sub_241191650();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  v32 = v0[6];

  v33 = v0[1];

  return v33();
}

uint64_t sub_24118CFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[14];

    v5 = v2[9];
    v6 = v2[10];
    v7 = sub_24118D488;
  }

  else
  {
    v5 = v2[9];
    v6 = v2[10];
    v7 = sub_24118D0C4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24118D0C4()
{
  v1 = v0[13];
  v25 = v0[14];
  v2 = v0[12];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = *(v0[11] + 16);
  sub_2411ABAE8();
  v9 = objc_allocWithZone(sub_2411AB9B8());
  v10 = v2;
  v11 = sub_2411AB9A8();
  v0[17] = v11;
  v12 = sub_2411ABDD8();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = v5;
  v14 = v11;
  v15 = sub_2411ABD98();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = v1;
  v16[7] = v25;
  v18 = sub_24118FFB0(0, 0, v3, &unk_2411AD330, v16);
  v0[18] = v18;
  v19 = *(MEMORY[0x277D857C8] + 4);
  v20 = swift_task_alloc();
  v0[19] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
  *v20 = v0;
  v20[1] = sub_24118D2C8;
  v22 = MEMORY[0x277D84950];
  v23 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v21, v18, v23, v21, v22);
}

uint64_t sub_24118D2C8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[18];

    v5 = v2[9];
    v6 = v2[10];
    v7 = sub_24118D504;
  }

  else
  {
    v5 = v2[9];
    v6 = v2[10];
    v7 = sub_24118D3E4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24118D3E4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24118D488()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  v4 = v0[16];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24118D504()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);

  v4 = *(v0 + 160);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24118D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_2411ABDA8();
  v6[3] = sub_2411ABD98();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24118D658;

  return sub_24118C2C8(a5, a6);
}

uint64_t sub_24118D658()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_24118D794, v5, v4);
}

uint64_t sub_24118D794()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24118D9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_2411ABDA8();
  v6[5] = sub_2411ABD98();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_24118DA80;

  return sub_2411885BC(0);
}

uint64_t sub_24118DA80()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_24118DBBC, v5, v4);
}

uint64_t sub_24118DBBC()
{
  v1 = v0[5];
  v2 = v0[2];

  if (v2)
  {
    v4 = v0[3];
    (v0[2])(v3);
  }

  v5 = v0[1];

  return v5();
}

id sub_24118DC30()
{
  if (qword_27E533C10 != -1)
  {
    swift_once();
  }

  v1 = qword_27E535AB0;
  qword_27E535AB8 = qword_27E535AB0;

  return v1;
}

uint64_t sub_24118DC94@<X0>(void *a1@<X8>)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27E533C18 != -1)
  {
    swift_once();
  }

  v2 = qword_27E535AB8;

  *a1 = v2;
  return result;
}

uint64_t sub_24118DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_241192ACC(&qword_27E534008, type metadata accessor for SendRequestFlowStore);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24118DDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F58, &qword_2411AD1B8) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v10 = sub_2411ABC78();
  v7[10] = v10;
  v11 = *(v10 - 8);
  v7[11] = v11;
  v12 = *(v11 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v13 = sub_2411ABA38();
  v7[14] = v13;
  v14 = *(v13 - 8);
  v7[15] = v14;
  v15 = *(v14 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = sub_2411ABDA8();
  v7[18] = sub_2411ABD98();
  v17 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_24118DFC8, v17, v16);
}

uint64_t sub_24118DFC8()
{
  v92 = v0;
  v1 = v0[18];
  v2 = v0[4];

  v3 = *(v2 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  if (v3)
  {
    v4 = qword_27E533C20;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = v0[7];
    v7 = sub_2411AB5A8();
    __swift_project_value_buffer(v7, qword_27E535AC0);
    v8 = v6;
    v9 = sub_2411AB588();
    v10 = sub_2411ABE48();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[7];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v91 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_24119F950(0xD00000000000002ELL, 0x80000002411AE9A0, &v91);
      *(v12 + 12) = 2112;
      *(v12 + 14) = v11;
      *v13 = v11;
      v15 = v11;
      _os_log_impl(&dword_24117E000, v9, v10, "Extension: %s messageComposeRequest: %@", v12, 0x16u);
      sub_241186CE4(v13, &unk_27E533D50, &qword_2411AD1C0);
      MEMORY[0x245CDDA90](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245CDDA90](v14, -1, -1);
      MEMORY[0x245CDDA90](v12, -1, -1);
    }

    v16 = v0[7];
    v25 = sub_2411ABBB8();

    v26 = sub_2411ABAA8();
    v89 = v5;
    if (v26)
    {
      v27 = v26;
      sub_2411ABA18();
    }

    v28 = v0[15];
    v29 = v0[16];
    v30 = v0[14];
    v87 = v0[13];
    v84 = v0[12];
    v31 = v0[4];
    sub_2411ABA48();
    v90 = v25;
    v32 = sub_2411ABAE8();
    v33 = sub_2411AB648();

    (*(v28 + 104))(v29, *MEMORY[0x277CEEBD8], v30);
    sub_241192ACC(&qword_27E533F70, MEMORY[0x277CEEBE8]);
    sub_2411ABC88();

    (*(v28 + 8))(v29, v30);
    v34 = v89;
    sub_2411ABC58();
    swift_getKeyPath();
    v0[2] = v31;
    sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
    sub_2411AB468();

    v88 = v34;
    sub_2411ABC58();
    sub_2411ABC68();
    v36 = v0[11];
    v35 = v0[12];
    v37 = v0[10];
    if (v38)
    {
      v39 = v0[9];
      sub_2411ABC38();
      v85 = *(v36 + 8);
      v85(v35, v37);
      v40 = sub_2411ABC48();
      v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
      sub_241186CE4(v39, &qword_27E533F58, &qword_2411AD1B8);
      if (v41 != 1)
      {
        v52 = v90;
        v59 = sub_2411ABAA8();

        if (v59)
        {

          v60 = sub_2411AB588();
          v61 = sub_2411ABE48();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_24117E000, v60, v61, "SendFlow (Extension): Known client and input clientInfo is not nil. Use input clientInfo...", v62, 2u);
            v52 = v90;
            MEMORY[0x245CDDA90](v62, -1, -1);
          }

          swift_retain_n();
          goto LABEL_28;
        }

LABEL_19:
        v42 = sub_2411AB588();
        v43 = sub_2411ABE48();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_24117E000, v42, v43, "SendFlow (Extension): generating client info...", v44, 2u);
          MEMORY[0x245CDDA90](v44, -1, -1);
        }

        v45 = v0[13];
        v46 = v0[10];

        v47 = sub_2411ABB08();
        sub_2411ABAD8();
        sub_2411ABAE8();
        sub_2411ABAB8();
        v48 = sub_2411ABAF8();
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        v51 = v47;
        v52 = sub_2411ABAC8();
        v53 = v51;

        v54 = sub_2411AB588();
        v55 = sub_2411ABE48();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = 138412290;
          *(v56 + 4) = v53;
          *v57 = v47;
          v58 = v53;
          _os_log_impl(&dword_24117E000, v54, v55, "SendFlow (Extension): Generated client info %@", v56, 0xCu);
          sub_241186CE4(v57, &unk_27E533D50, &qword_2411AD1C0);
          MEMORY[0x245CDDA90](v57, -1, -1);
          MEMORY[0x245CDDA90](v56, -1, -1);
        }

        else
        {
        }

LABEL_28:
        v86 = v0[13];
        v82 = v0[11];
        v83 = v0[10];
        v79 = v0[8];
        v80 = v0[17];
        v63 = v0[6];
        v81 = v0[5];
        v64 = v0[4];
        type metadata accessor for MessageComposeRequestTask();
        v65 = swift_allocObject();
        *(v65 + 16) = v52;
        *(v65 + 24) = 0;
        swift_getKeyPath();
        v66 = swift_task_alloc();
        *(v66 + 16) = v64;
        *(v66 + 24) = v65;
        v0[3] = v64;

        sub_2411AB458();

        v67 = sub_2411ABDD8();
        (*(*(v67 - 8) + 56))(v79, 1, 1, v67);
        v68 = v64;

        v69 = sub_2411ABD98();
        v70 = swift_allocObject();
        v71 = MEMORY[0x277D85700];
        v70[2] = v69;
        v70[3] = v71;
        v70[4] = v68;
        v70[5] = v52;
        v70[6] = v90;
        v70[7] = v81;
        v70[8] = v63;
        sub_241192B80(0, 0, v79, &unk_2411AD220, v70);

        v85(v86, v83);
        goto LABEL_29;
      }
    }

    else
    {
      v85 = *(v36 + 8);
      v85(v0[12], v0[10]);
    }

    goto LABEL_19;
  }

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v17 = sub_2411AB5A8();
  __swift_project_value_buffer(v17, qword_27E535AC0);
  v18 = sub_2411AB588();
  v19 = sub_2411ABE28();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24117E000, v18, v19, "SendFlow (Extension): connection is nil.\ntrigger dismiss", v20, 2u);
    MEMORY[0x245CDDA90](v20, -1, -1);
  }

  v22 = v0[5];
  v21 = v0[6];

  sub_241191650();
  v23 = swift_allocError();
  *v24 = 0;
  v22();

LABEL_29:
  v72 = v0[16];
  v73 = v0[12];
  v74 = v0[13];
  v76 = v0[8];
  v75 = v0[9];

  v77 = v0[1];

  return v77();
}

uint64_t sub_24118EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v10 = sub_2411ABA38();
  v8[21] = v10;
  v11 = *(v10 - 8);
  v8[22] = v11;
  v12 = *(v11 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = sub_2411ABDA8();
  v8[25] = sub_2411ABD98();
  v14 = sub_2411ABD48();
  v8[26] = v14;
  v8[27] = v13;

  return MEMORY[0x2822009F8](sub_24118EBF8, v14, v13);
}

uint64_t sub_24118EBF8()
{
  v2 = v0[15];
  v1 = v0[16];
  swift_getKeyPath();
  v0[10] = v2;
  v0[28] = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore___observationRegistrar;
  v0[29] = sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v3 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager;
  swift_beginAccess();
  sub_2411920FC(v2 + v3, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v4);
  v6 = sub_2411ABA98();
  v0[30] = v6;
  v7 = v0[17];
  v8 = v6;
  v9 = sub_2411ABAB8();
  v10 = *(MEMORY[0x277CEED58] + 4);
  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_24118EED4;

  return MEMORY[0x282141438](v8, v9, v4, v5);
}

uint64_t sub_24118EED4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v8 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);
    v5 = *(v2 + 216);
    v6 = sub_24118F524;
  }

  else
  {

    v4 = *(v2 + 208);
    v5 = *(v2 + 216);
    v6 = sub_24118EFF0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24118EFF0()
{
  v1 = v0[25];
  v2 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = sub_2411ABAA8();
  if (v3)
  {
    v4 = v3;
    sub_2411ABA18();
  }

  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  v8 = v0[17];
  sub_2411ABA48();
  v9 = sub_2411ABAE8();
  v10 = sub_2411AB648();

  v57 = *(v5 + 104);
  v57(v6, *MEMORY[0x277CEEBA8], v7);
  sub_241192ACC(&qword_27E533F70, MEMORY[0x277CEEBE8]);
  sub_2411ABC88();

  v11 = *(v5 + 8);
  v11(v6, v7);
  v12 = sub_2411ABAD8();
  v13 = v0[28];
  v14 = v0[29];
  if (v12)
  {
    v55 = v0[29];
    v56 = v11;
    v15 = v0[17];
    v16 = v0[32];
    v17 = v0[15];
    v18 = sub_2411ABAE8();
    v19 = sub_241191BA0(v18);
    v21 = v20;
    swift_getKeyPath();
    v22 = swift_task_alloc();
    v22[2] = v17;
    v22[3] = v19;
    v22[4] = v21;
    v0[14] = v17;
    sub_2411AB458();

    v23 = sub_2411ABAA8();
    if (v23)
    {
      v24 = v23;
      sub_2411ABA18();
    }

    v27 = v0[23];
    v28 = v0[21];
    v29 = v0[17];
    v30 = sub_2411ABAE8();
    v31 = sub_2411AB648();

    v57(v27, *MEMORY[0x277CEEBC0], v28);
    sub_2411ABC88();

    v56(v27, v28);
  }

  else
  {
    v25 = v0[15];
    swift_getKeyPath();
    v26 = swift_task_alloc();
    v26[3] = 0;
    v26[4] = 0;
    v26[2] = v25;
    v0[11] = v25;
    sub_2411AB458();
  }

  v33 = v0[28];
  v32 = v0[29];
  v34 = v0[15];
  swift_getKeyPath();
  v0[12] = v34;
  sub_2411AB468();

  v35 = *(v34 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8);
  if (((v35 == 0) ^ *(v34 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose)))
  {
    v36 = v35 == 0;
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[15];
    swift_getKeyPath();
    v40 = swift_task_alloc();
    *(v40 + 16) = v39;
    *(v40 + 24) = v36;
    v0[13] = v39;
    sub_2411AB458();
  }

  else
  {
    *(v34 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose) = v35 == 0;
  }

  v41 = v0[24];
  v42 = v0[19];
  v43 = v0[20];
  v44 = v0[18];
  v45 = v0[15];
  v46 = sub_2411ABDD8();
  (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
  v47 = v45;
  v48 = sub_2411ABD98();
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v47;
  sub_24118FFB0(0, 0, v43, &unk_2411AD2A8, v49);

  v44(0);
  v51 = v0[23];
  v52 = v0[20];

  v53 = v0[1];

  return v53();
}

uint64_t sub_24118F524()
{
  v1 = v0[30];
  v2 = v0[25];

  v3 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v4 = sub_2411AB5A8();
  __swift_project_value_buffer(v4, qword_27E535AC0);
  v5 = sub_2411AB588();
  v6 = sub_2411ABE48();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Extension): validateCanCompose failed. Skipping message compose...", v7, 2u);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  v9 = v0[18];
  v8 = v0[19];

  v10 = v3;
  v9(v3);

  v11 = v0[23];
  v12 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_24118F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2411ABDA8();
  v4[4] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_24118F8D0, v6, v5);
}

uint64_t sub_24118F8D0()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): Prefetching message compose payload...", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[3];

  swift_getKeyPath();
  v0[2] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v6 = *(v5 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  v0[7] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_24118FAE4;

    return sub_24118A8C8();
  }

  else
  {
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24118FAE4(void *a1, uint64_t a2, void *a3)
{
  v7 = *v4;
  v8 = *(*v4 + 64);
  v14 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = v7[5];
    v10 = v7[6];
    v11 = sub_24118FC94;
  }

  else
  {
    v12 = v7[7];

    v9 = v7[5];
    v10 = v7[6];
    v11 = sub_24118FC30;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_24118FC30()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24118FC94()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_24118FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_241191D58(a3, v24 - v10);
  v12 = sub_2411ABDD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241186CE4(v11, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2411ABD48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2411ABD18() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

      return v22;
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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24118FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_241191D58(a3, v24 - v10);
  v12 = sub_2411ABDD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241186CE4(v11, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2411ABD48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2411ABD18() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

      return v22;
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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24119024C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB0, &qword_2411AD338);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241190318, 0, 0);
}

uint64_t sub_241190318()
{
  v1 = [objc_opt_self() defaultStore];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_24119050C;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB8, &qword_2411AD340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
    sub_2411ABD58();
    (*(v4 + 32))(boxed_opaque_existential_0Tm, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2411908B0;
    v0[13] = &block_descriptor;
    [v2 aa_primaryAppleAccountWithCompletion_];
    (*(v4 + 8))(boxed_opaque_existential_0Tm, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_24119050C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_2411906EC;
  }

  else
  {
    v3 = sub_24119061C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24119061C()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 appleID];
    if (v2)
    {
      v3 = *(v0 + 152);
      v4 = v2;
      v5 = sub_2411ABCF8();
      v7 = v6;

      *v3 = v5;
      v3[1] = v7;
      goto LABEL_6;
    }
  }

  v8 = *(v0 + 152);
  *v8 = 0;
  v8[1] = 0;
LABEL_6:
  v9 = *(v0 + 176);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2411906EC()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = sub_2411AB5A8();
  __swift_project_value_buffer(v4, qword_27E535AC0);
  v5 = v3;
  v6 = sub_2411AB588();
  v7 = sub_2411ABE28();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24117E000, v6, v7, "SendFlow (Extension): error fetching primary Apple Account. %@", v10, 0xCu);
    sub_241186CE4(v11, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v11, -1, -1);
    MEMORY[0x245CDDA90](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[19];
  *v14 = 0;
  v14[1] = 0;
  v15 = v0[22];

  v16 = v0[1];

  return v16();
}

void sub_2411908B0(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB0, &qword_2411AD338);
    sub_2411ABD68();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB0, &qword_2411AD338);
    sub_2411ABD78();
  }
}

uint64_t sub_241190958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  sub_2411ABDA8();
  v7[15] = sub_2411ABD98();
  v9 = sub_2411ABD48();
  v7[16] = v9;
  v7[17] = v8;

  return MEMORY[0x2822009F8](sub_2411909F4, v9, v8);
}

uint64_t sub_2411909F4()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): sending default response to client", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[11];

  swift_getKeyPath();
  v0[10] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore);
  sub_2411AB468();

  v6 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager;
  swift_beginAccess();
  sub_2411920FC(v5 + v6, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v7);
  v9 = *(MEMORY[0x277CEED50] + 4);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_241190C04;
  v11 = v0[13];
  v12 = v0[14];
  v13 = v0[12];

  return MEMORY[0x282141430](v13, v11, v12, v7, v8);
}

uint64_t sub_241190C04()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_241190DAC;
  }

  else
  {
    v7 = sub_241190D40;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_241190D40()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_241190DAC()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_241190E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FA0, &qword_2411AD2E0) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  sub_2411ABDA8();
  v4[5] = sub_2411ABD98();
  v7 = sub_2411ABD48();
  v4[6] = v7;
  v4[7] = v6;

  return MEMORY[0x2822009F8](sub_241190EE8, v7, v6);
}

uint64_t sub_241190EE8()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[8] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): composing message content", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_241191038;
  v6 = v0[3];

  return sub_24118B1B8();
}

uint64_t sub_241191038(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v7 = *(v3 + 56);
  v8 = *(v3 + 48);
  if (v1)
  {
    v9 = sub_24119137C;
  }

  else
  {
    v9 = sub_24119117C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24119117C()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[4];
  v3 = v0[5];

  v5 = sub_2411ABA78();
  sub_2411ABA68();
  v6 = sub_2411ABBA8();

  v7 = sub_2411AB428();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  ATPayload.newMessage(sessionId:)(v4);
  v9 = v8;
  sub_241186CE4(v4, &qword_27E533FA0, &qword_2411AD2E0);
  if (v2)
  {
    v10 = v0[10];

    v20 = v0[4];

    v21 = v0[1];
  }

  else
  {
    v11 = v0[8];
    v12 = sub_2411AB588();
    v13 = sub_2411ABE48();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24117E000, v12, v13, "SendFlow (Extension): composing completed", v14, 2u);
      MEMORY[0x245CDDA90](v14, -1, -1);
    }

    v15 = v0[10];
    v16 = v0[2];

    *v16 = v9;
    v16[1] = v6;
    v17 = v9;
    v18 = sub_2411ABA58();
    v19 = v0[10];
    v23 = v18;
    v24 = v0[4];
    v25 = v0[2];

    *(v25 + 16) = v23;

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_24119137C()
{
  v1 = v0[5];

  v2 = v0[11];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2411913E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_241191458(uint64_t a1, int a2)
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

uint64_t sub_2411914A0(uint64_t result, int a2, int a3)
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

uint64_t sub_2411914EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24119152C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24119157C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2411862D8;

  return sub_24118DDF4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_241191650()
{
  result = qword_27E533F60;
  if (!qword_27E533F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533F60);
  }

  return result;
}

uint64_t sub_2411916F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_241191748(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241186E60;

  return sub_24118EAC0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_241191890()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2411918D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_24118F838(a1, v4, v5, v6);
}

id sub_241191984(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2411ABC08();
  v18[3] = v5;
  v18[4] = MEMORY[0x277CEED60];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v18);
  (*(*(v5 - 8) + 32))(boxed_opaque_existential_0Tm, a1, v5);
  v17[3] = &type metadata for KnownClientVerifier;
  v17[4] = &off_2852EF3E0;
  *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask] = 0;
  v7 = &a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent];
  *v7 = 0;
  v7[1] = 0;
  *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection] = 0;
  a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose] = 0;
  a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView] = 0;
  sub_2411AB498();
  sub_2411920FC(v17, &a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__connectedClientVerifier]);
  sub_2411920FC(v18, &a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager]);
  v8 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_contactStore] = v8;
  v9 = objc_opt_self();
  v10 = v8;
  result = [v9 defaultStore];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() defaultCenter];
    v14 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v10 accountStore:v12 notificationCenter:v13];

    *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_downtimeContainerFetcher] = v14;
    v16.receiver = a2;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v18);
    __swift_destroy_boxed_opaque_existential_0(v17);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_241191BA0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F80, &qword_2411AD2B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2411AD060;
  v3 = sub_2411AB658();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_241191D04();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();

  v8 = [v7 bundleForClass_];
  sub_2411AB348();

  v9 = sub_2411ABCE8();

  return v9;
}

unint64_t sub_241191D04()
{
  result = qword_27E533F88;
  if (!qword_27E533F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533F88);
  }

  return result;
}

uint64_t sub_241191D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241191DC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241191E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_241190E18(a1, v4, v5, v6);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_2411920FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2411921D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_241192224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_24118D594(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2411922EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24119233C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2411862D8;

  return sub_241190958(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_241192420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2411924E4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_241192530()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask) = *(v0 + 24);
}

uint64_t sub_241192598(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370) - 8) + 80);

  return sub_24118BC00(a1);
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_77Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2411926C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2411ABD78();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_241192790()
{
  result = qword_27E533FD8;
  if (!qword_27E533FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E533FD8);
  }

  return result;
}

uint64_t sub_2411927DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2411927EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24119283C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_24118D9CC(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for ExtensionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_241192A78()
{
  result = qword_27E534000;
  if (!qword_27E534000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534000);
  }

  return result;
}

uint64_t sub_241192ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241192B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_241191D58(a3, v26 - v10);
  v12 = sub_2411ABDD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241186CE4(v11, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2411ABD48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2411ABD18() + 32;
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

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
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

uint64_t sub_241192E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_241191D58(a3, v27 - v11);
  v13 = sub_2411ABDD8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_241186CE4(v12, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2411ABD48();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2411ABD18() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5340C8, &qword_2411AD720);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

      return v24;
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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5340C8, &qword_2411AD720);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2411931A0(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_24119320C()
{
  v1 = (v0 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_24119325C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void static RemoteController.ExtensionIdentity.sendAskToQuestionExtension.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x80000002411AEB00;
  a1[2] = 0x2D6567617373656DLL;
  a1[3] = 0xEF65736F706D6F63;
}

id HostSendAskToQuestionFlowCoordinator.__allocating_init(messageComposeRequest:remoteController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2411971A0(a1, a2, v7, ObjectType, a3);
}

id HostSendAskToQuestionFlowCoordinator.init(messageComposeRequest:remoteController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_2411971A0(a1, a2, v3, ObjectType, a3);
}

uint64_t sub_241193428()
{
  v1[5] = v0;
  v2 = sub_2411ABA38();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_2411ABDA8();
  v1[9] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v1[10] = v6;
  v1[11] = v5;

  return MEMORY[0x2822009F8](sub_24119351C, v6, v5);
}

uint64_t sub_24119351C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state;
  v0[12] = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state;
  if (*(v1 + v2))
  {
    v3 = v0[9];

    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v4 = sub_2411AB5A8();
    __swift_project_value_buffer(v4, qword_27E535AC0);
    v5 = sub_2411AB588();
    v6 = sub_2411ABE48();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Host): tried to load remote view while it is already loading or loaded", v7, 2u);
      MEMORY[0x245CDDA90](v7, -1, -1);
    }

    v8 = v0[8];

    v9 = v0[1];

    return v9();
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v11 = sub_2411AB5A8();
    v0[13] = __swift_project_value_buffer(v11, qword_27E535AC0);
    v12 = sub_2411AB588();
    v13 = sub_2411ABE48();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24117E000, v12, v13, "SendFlow (Host): loading remote view...", v14, 2u);
      MEMORY[0x245CDDA90](v14, -1, -1);
    }

    v15 = v0[5];

    *(v1 + v2) = 1;
    v16 = (v15 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
    swift_beginAccess();
    v0[14] = *v16;
    v17 = v16[1];
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 72);
    swift_unknownObjectRetain();
    v22 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_241193854;

    return v22(ObjectType, v17);
  }
}

uint64_t sub_241193854()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_241193B6C;
  }

  else
  {
    v7 = sub_241193990;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_241193990()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  swift_unknownObjectRelease();
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Host): loaded extension", v6, 2u);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  v7 = v0[12];
  v8 = v0[5];

  *(v8 + v7) = 2;
  v9 = *(v8 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest);
  v10 = sub_2411ABAA8();
  if (v10)
  {
    v11 = v10;
    sub_2411ABA18();
  }

  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  sub_2411ABA48();
  v15 = sub_2411ABAE8();
  v16 = sub_2411AB648();

  (*(v13 + 104))(v12, *MEMORY[0x277CEEB98], v14);
  sub_241197390();
  sub_2411ABC88();

  (*(v13 + 8))(v12, v14);
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_241193B6C()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[9];

  swift_unknownObjectRelease();
  v5 = v1;
  v6 = sub_2411AB588();
  v7 = sub_2411ABE28();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24117E000, v6, v7, "SendFlow (Host): Error loading remote view: %@ Calling dismiss...", v9, 0xCu);
    sub_241186CE4(v10, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v10, -1, -1);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  v13 = v0[16];
  v14 = v0[5];

  v15 = v13;
  sub_241194A90(v13);

  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

void sub_241193CF4()
{
  v1 = v0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Host): Establising xpc connection...", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 80);
  swift_unknownObjectRetain();
  v11 = v10(ObjectType, v8);
  swift_unknownObjectRelease();
  v12 = *(v1 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection);
  *(v1 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection) = v11;
  v13 = v11;

  [v13 setExportedObject_];
  v14 = sub_24119D714();
  [v13 setExportedInterface_];

  v15 = sub_24119D95C();
  [v13 setRemoteObjectInterface_];

  [v13 activate];
  v16 = sub_2411AB588();
  v17 = sub_2411ABE48();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24117E000, v16, v17, "SendFlow (Host): Establised xpc connection", v18, 2u);
    MEMORY[0x245CDDA90](v18, -1, -1);
  }
}

uint64_t sub_2411940AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_2411ABDA8();
  v2[5] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_241194148, v4, v3);
}

uint64_t sub_241194148()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE28();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Host): sending begin message", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[2].i64[0];
  v10 = v0[1];

  v0[4].i64[0] = sub_2411ABD98();
  v6 = swift_task_alloc();
  v0[4].i64[1] = v6;
  v6[1] = vextq_s8(v10, v10, 8uLL);
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[5].i64[0] = v8;
  *v8 = v0;
  v8[1] = sub_241194318;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_241194318()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_2411944A0;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_24119443C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24119443C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2411944A0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

void sub_241194518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  sub_2411ABDA8();
  v10 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection);
  if (v11)
  {
    v28 = v10;
    v25 = *(v6 + 16);
    v26 = a1;
    v25(v9);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v24 = *(v6 + 32);
    v24(v13 + v12, v9, v5);
    v35 = sub_2411983BC;
    v36 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2411A1938;
    v34 = &block_descriptor_0;
    v14 = _Block_copy(&aBlock);
    v15 = v11;

    v27 = v15;
    v16 = [v15 remoteObjectProxyWithErrorHandler_];
    _Block_release(v14);
    sub_2411ABED8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5340E0, &qword_2411AD758);
    swift_dynamicCast();
    v17 = v30;
    v20 = sub_2411ABA98();
    (v25)(v9, v26, v5);
    v21 = swift_allocObject();
    v24(v21 + v12, v9, v5);
    v35 = sub_2411983EC;
    v36 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2411A19A0;
    v34 = &block_descriptor_76;
    v22 = _Block_copy(&aBlock);
    v23 = v20;

    [v17 sendBeginMessageWithMessageComposeRequest:v23 reply:v22];

    _Block_release(v22);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_241198364();
    v18 = swift_allocError();
    *v19 = 0;
    aBlock = v18;
    sub_2411ABD68();
  }
}

uint64_t sub_24119494C(void *a1)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  sub_2411ABD68();
}

uint64_t sub_241194A1C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
    return sub_2411ABD68();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
    return sub_2411ABD78();
  }
}

uint64_t sub_241194A90(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534028, &unk_2411AD520);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v11 = sub_2411AB5A8();
  __swift_project_value_buffer(v11, qword_27E535AC0);
  v12 = sub_2411AB588();
  v13 = sub_2411ABE48();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24117E000, v12, v13, "SendFlow (Host): dismissing flow", v14, 2u);
    MEMORY[0x245CDDA90](v14, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock);
  v15 = *(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock + 8);

  v16(v17);

  v18 = (v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 64);
  swift_unknownObjectRetain();
  v23 = v22(ObjectType, v20);
  swift_unknownObjectRelease();
  [v23 setDelegate_];

  v24 = *v18;
  v25 = v18[1];
  v26 = swift_getObjectType();
  v27 = *(v25 + 64);
  swift_unknownObjectRetain();
  v28 = v27(v26, v25);
  swift_unknownObjectRelease();
  sub_2411ABE78();

  v29 = sub_2411ABE68();
  v30 = *(v29 - 8);
  LODWORD(v24) = (*(v30 + 48))(v10, 1, v29);
  sub_241186CE4(v10, &qword_27E534028, &unk_2411AD520);
  if (v24 != 1)
  {
    v31 = *v18;
    v32 = v18[1];
    v33 = swift_getObjectType();
    v34 = *(v32 + 64);
    swift_unknownObjectRetain();
    v35 = v34(v33, v32);
    swift_unknownObjectRelease();
    (*(v30 + 56))(v8, 1, 1, v29);
    sub_2411ABE88();
  }

  v36 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection;
  [*(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection) invalidate];
  v37 = *(v2 + v36);
  *(v2 + v36) = 0;

  *(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state) = 0;
  v38 = v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd;
  v40 = *(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd);
  v39 = *(v38 + 8);

  v40(a1);
}

uint64_t sub_241194E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_2411ABDA8();
  v4[6] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_241194ED0, v6, v5);
}

uint64_t sub_241194ED0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  v0[10] = v6;
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_241195034;
  v9 = v0[5];

  return sub_241195A80(sub_2411973E8, v5, sub_241197428, v6, sub_241197430, v7);
}

uint64_t sub_241195034()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v9 = *v0;

  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2411951BC, v7, v6);
}

uint64_t sub_2411951BC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_24119521C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 64);
  v7 = v6(ObjectType, a2);
  [v7 setModalPresentationStyle_];

  v8 = v6(ObjectType, a2);
  [a3 presentViewController:v8 animated:0 completion:0];
}

void sub_2411952E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 64);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    v8 = [v7 presentingViewController];

    if (v8)
    {
      [v8 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_241195418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_2411ABDA8();
  v4[7] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2411954B4, v6, v5);
}

uint64_t sub_2411954B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  swift_unknownObjectWeakInit();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v0 + 2;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  v0[11] = v6;
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_241195628;
  v9 = v0[6];

  return sub_241195A80(sub_241197458, v5, sub_241197460, v6, sub_24119858C, v7);
}

uint64_t sub_241195628()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v9 = *v0;

  MEMORY[0x245CDDB60](v1 + 16);
  v6 = *(v1 + 72);
  v7 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2411957B4, v7, v6);
}

uint64_t sub_2411957B4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241195814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2411ABA38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    ObjectType = swift_getObjectType();
    v14 = (*(a2 + 64))(ObjectType, a2);
    [v12 setRootViewController_];

    [v12 makeKeyAndVisible];
    v15 = *(a4 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest);
    v16 = sub_2411ABAA8();
    if (v16)
    {
      v17 = v16;
      sub_2411ABA18();
    }

    sub_2411ABA48();
    v18 = sub_2411ABAE8();
    v19 = sub_2411AB648();

    (*(v7 + 104))(v10, *MEMORY[0x277CEEBA0], v6);
    sub_241197390();
    sub_2411ABC88();

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_241195A20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setRootViewController_];
  }
}

uint64_t sub_241195A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  sub_2411ABDA8();
  v7[12] = sub_2411ABD98();
  v9 = sub_2411ABD48();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x2822009F8](sub_241195B24, v9, v8);
}

uint64_t sub_241195B24()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlowPresenter (Host): Begin presentation...", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];

  v10 = (v6 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock);
  v11 = *(v6 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock + 8);
  *v10 = v9;
  v10[1] = v7;

  v12 = (v6 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd);
  v13 = *(v6 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd + 8);
  *v12 = v8;
  v12[1] = v5;

  v14 = sub_2411AB588();
  v15 = sub_2411ABE48();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24117E000, v14, v15, "SendFlow (Host): running appearance  presentation...", v16, 2u);
    MEMORY[0x245CDDA90](v16, -1, -1);
  }

  v17 = v0[11];
  v19 = v0[5];
  v18 = v0[6];

  v20 = (v17 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  v23 = swift_unknownObjectRetain();
  v19(v23, v21);
  swift_unknownObjectRelease();
  v24 = swift_task_alloc();
  v0[15] = v24;
  *v24 = v0;
  v24[1] = sub_241195D84;
  v25 = v0[11];

  return sub_241193428();
}

uint64_t sub_241195D84()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_241195EA4, v4, v3);
}

uint64_t sub_241195EA4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

id HostSendAskToQuestionFlowCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HostSendAskToQuestionFlowCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostSendAskToQuestionFlowCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall HostSendAskToQuestionFlowCoordinator.hostViewControllerDidActivate(_:)(EXHostViewController a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  sub_241193CF4();
  v6 = sub_2411ABDD8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2411ABDA8();
  v7 = v1;
  v8 = sub_2411ABD98();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_241192B80(0, 0, v5, &unk_2411AD550, v9);
}

uint64_t sub_2411961D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2411ABDA8();
  v4[3] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24119626C, v6, v5);
}

uint64_t sub_24119626C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_241196310;
  v3 = *(v0 + 16);

  return sub_2411940AC(v1);
}

uint64_t sub_241196310()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_24119644C;
  }

  else
  {
    v7 = sub_24118D794;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24119644C()
{
  v19 = v0;
  v1 = v0[3];

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AC0);
  v4 = v2;
  v5 = sub_2411AB588();
  v6 = sub_2411ABE28();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24119F950(0xD000000000000021, 0x80000002411AEC80, &v18);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Host): Error sending begin message: %s %@", v8, 0x16u);
    sub_241186CE4(v9, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CDDA90](v10, -1, -1);
    MEMORY[0x245CDDA90](v8, -1, -1);
  }

  v13 = v0[7];
  v14 = v0[2];
  v15 = v13;
  sub_241194A90(v13);

  v16 = v0[1];

  return v16();
}

uint64_t SendAskToPayloadFlowError.hashValue.getter()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

uint64_t sub_241196984(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v12 = sub_2411AB5A8();
  __swift_project_value_buffer(v12, qword_27E535AC0);
  v13 = sub_2411AB588();
  v14 = sub_2411ABE48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24117E000, v13, v14, "SendFlow (Host): received dismiss message", v15, 2u);
    MEMORY[0x245CDDA90](v15, -1, -1);
  }

  sub_2411ABDB8();
  v16 = sub_2411ABDD8();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v4;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v18 = v4;
  v19 = a1;

  sub_241192B80(0, 0, v11, &unk_2411AD738, v17);
}

uint64_t sub_241196B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_241196B9C, 0, 0);
}

uint64_t sub_241196B9C()
{
  sub_2411ABDA8();
  *(v0 + 48) = sub_2411ABD98();
  v2 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_241196C30, v2, v1);
}

uint64_t sub_241196C30()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];

  sub_241194A90(v2);

  return MEMORY[0x2822009F8](sub_241196CA4, 0, 0);
}

uint64_t sub_241196CA4()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241196DA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241196EA0;

  return v7(a1);
}

uint64_t sub_241196EA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_241196F98(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24119708C;

  return v6(v2 + 32);
}

uint64_t sub_24119708C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

id sub_2411971A0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state] = 0;
  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection] = 0;
  v10 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock];
  *v10 = nullsub_1;
  v10[1] = 0;
  v11 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd];
  *v11 = nullsub_1;
  v11[1] = 0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v12 = sub_2411AB5A8();
  __swift_project_value_buffer(v12, qword_27E535AC0);
  v13 = sub_2411AB588();
  v14 = sub_2411ABE48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24117E000, v13, v14, "SendFlow (Host): initialized flow coordinator", v15, 2u);
    MEMORY[0x245CDDA90](v15, -1, -1);
  }

  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest] = a1;
  v16 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController];
  *v16 = a2;
  v16[1] = a5;
  v21.receiver = a3;
  v21.super_class = type metadata accessor for HostSendAskToQuestionFlowCoordinator();

  swift_unknownObjectRetain();
  v17 = objc_msgSendSuper2(&v21, sel_init);
  v18 = *(a5 + 16);
  v19 = v17;
  v18(v17, a4, a5);

  swift_unknownObjectRelease();
  return v19;
}

unint64_t sub_241197390()
{
  result = qword_27E533F70;
  if (!qword_27E533F70)
  {
    sub_2411ABA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533F70);
  }

  return result;
}

uint64_t sub_2411973F0()
{
  MEMORY[0x245CDDB60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241197430()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_241197468()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2411974C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_2411961D4(a1, v4, v5, v6);
}

uint64_t sub_24119757C(id a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v3 = sub_2411AB5A8();
    __swift_project_value_buffer(v3, qword_27E535AC0);
    v4 = a1;
    v5 = sub_2411AB588();
    v6 = sub_2411ABE28();

    if (!os_log_type_enabled(v5, v6))
    {

      return sub_241194A90(a1);
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24119F950(0xD00000000000002ALL, 0x80000002411AEC50, &v22);
    *(v7 + 12) = 2080;
    ErrorValue = swift_getErrorValue();
    v10 = *(*(v21[2] - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v12 + 16))(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = sub_2411ABD08();
    v15 = sub_24119F950(v13, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Host): %s, error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDDA90](v8, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v16 = sub_2411AB5A8();
    __swift_project_value_buffer(v16, qword_27E535AC0);
    v5 = sub_2411AB588();
    v17 = sub_2411ABE48();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_24119F950(0xD00000000000002ALL, 0x80000002411AEC50, &v22);
      _os_log_impl(&dword_24117E000, v5, v17, "SendFlow (Host): %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x245CDDA90](v19, -1, -1);
      MEMORY[0x245CDDA90](v18, -1, -1);
    }
  }

  return sub_241194A90(a1);
}

unint64_t sub_241197904()
{
  result = qword_27E534050;
  if (!qword_27E534050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534050);
  }

  return result;
}

uint64_t sub_241197958@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t dispatch thunk of HostSendAskToQuestionFlowCoordinator.loadRemoteView()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_241186E60;

  return v6();
}

uint64_t dispatch thunk of HostSendAskToQuestionFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2411862D8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HostSendAskToQuestionFlowCoordinator.showRemoteFlowAsRootIn(window:onFlowEnd:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x130);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_241186E60;

  return v12(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinator.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinator.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_241197FEC()
{
  result = qword_27E5340C0;
  if (!qword_27E5340C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5340C0);
  }

  return result;
}

uint64_t sub_241198040(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241186E60;

  return sub_241196F98(a1, v5);
}

uint64_t sub_2411980F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2411862D8;

  return sub_241196F98(a1, v5);
}

uint64_t sub_2411981B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2411981F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_241198248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241186E60;

  return sub_241196B78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_241198364()
{
  result = qword_27E5340D8;
  if (!qword_27E5340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5340D8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241198404(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_241198494(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241186E60;

  return sub_241196DA8(a1, v5);
}

id HostSendAskToQuestionFlowCoordinatorFactory.makeFlowCoordinator(messageComposeRequest:)()
{
  type metadata accessor for RemoteController();
  v0 = swift_allocObject();
  v0[8] = 0;
  v0[2] = 0xD00000000000001CLL;
  v0[3] = 0x80000002411AEB00;
  v0[4] = 0x2D6567617373656DLL;
  v0[5] = 0xEF65736F706D6F63;
  v1 = type metadata accessor for HostSendAskToQuestionFlowCoordinator();
  v0[6] = 0;
  v0[7] = 0;
  v2 = objc_allocWithZone(v1);

  return sub_241198664(v3, v0, v2);
}

id sub_241198664(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state] = 0;
  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection] = 0;
  v6 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock];
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd];
  *v7 = nullsub_1;
  v7[1] = 0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v8 = sub_2411AB5A8();
  __swift_project_value_buffer(v8, qword_27E535AC0);
  v9 = sub_2411AB588();
  v10 = sub_2411ABE48();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24117E000, v9, v10, "SendFlow (Host): initialized flow coordinator", v11, 2u);
    MEMORY[0x245CDDA90](v11, -1, -1);
  }

  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest] = a1;
  v12 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController];
  *v12 = a2;
  v12[1] = &protocol witness table for RemoteController;
  v16.receiver = a3;
  v16.super_class = type metadata accessor for HostSendAskToQuestionFlowCoordinator();

  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = sub_2411989B4();
  [v14 setDelegate_];

  return v13;
}

uint64_t getEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinatorFactory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinatorFactory(_WORD *result, int a2, int a3)
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

__n128 RemoteController.__allocating_init(extensionIdentity:extensionBundleIdentifier:)(__n128 *a1, unint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  result = *a1;
  v8 = a1[1].n128_u64[0];
  v9 = a1[1].n128_u64[1];
  v6[3].n128_u64[1] = a3;
  v6[4].n128_u64[0] = 0;
  v6[1] = result;
  v6[2].n128_u64[0] = v8;
  v6[2].n128_u64[1] = v9;
  v6[3].n128_u64[0] = a2;
  return result;
}

AskToUI::RemoteController::ExtensionIdentity __swiftcall RemoteController.ExtensionIdentity.init(id:sceneID:)(Swift::String id, Swift::String sceneID)
{
  *v2 = id;
  v2[1] = sceneID;
  result.sceneID = sceneID;
  result.id = id;
  return result;
}

id sub_2411989B4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CC5E68]) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_241198A20(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_241198A2C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2411989B4();
  return sub_241198A74;
}

void sub_241198A74(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
}

void sub_241198A90(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2411989B4();
  v5 = [v4 placeholderView];

  v6 = [v5 backgroundColor];
  *a2 = v6;
}

void sub_241198B04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2411989B4();
  v5 = [v4 placeholderView];

  [v5 setBackgroundColor_];
}

id sub_241198B7C()
{
  v0 = sub_2411989B4();
  v1 = [v0 placeholderView];

  v2 = [v1 backgroundColor];
  return v2;
}

void sub_241198BE0(void *a1)
{
  v2 = sub_2411989B4();
  v3 = [v2 placeholderView];

  [v3 setBackgroundColor_];
}

void (*sub_241198C58(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_2411989B4();
  v4 = [v3 placeholderView];

  v5 = [v4 backgroundColor];
  *a1 = v5;
  return sub_241198CE8;
}

void sub_241198CE8(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 8) + 64);
  if (a2)
  {
    v3 = *a1;
    v4 = [v2 placeholderView];
    [v4 setBackgroundColor_];

    v5 = v3;
  }

  else
  {
    v5 = *a1;
    v3 = [*(*(a1 + 8) + 64) placeholderView];
    [v3 setBackgroundColor_];
  }
}

void sub_241198DA0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2411989B4();
  v5 = [v4 delegate];

  *a2 = v5;
}

id sub_241198E00(SEL *a1)
{
  v2 = sub_2411989B4();
  v3 = [v2 *a1];

  return v3;
}

void sub_241198E44(uint64_t a1)
{
  v2 = sub_2411989B4();
  [v2 setDelegate_];
  swift_unknownObjectRelease();
}

uint64_t (*sub_241198EA0(void *a1))(void *a1)
{
  a1[1] = v1;
  v3 = sub_2411989B4();
  v4 = [v3 delegate];

  *a1 = v4;
  return sub_241198F10;
}

uint64_t sub_241198F10(void *a1)
{
  [*(a1[1] + 64) setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t RemoteController.init(extensionIdentity:extensionBundleIdentifier:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *(v3 + 56) = a3;
  *(v3 + 64) = 0;
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = a2;
  return v3;
}

uint64_t sub_241198F78()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534028, &unk_2411AD520) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5340F0, &qword_2411AD810) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_2411AB568();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_2411ABDA8();
  v1[10] = sub_2411ABD98();
  v8 = sub_2411ABD48();
  v1[11] = v8;
  v1[12] = v7;

  return MEMORY[0x2822009F8](sub_2411990F4, v8, v7);
}

uint64_t sub_2411990F4()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[13] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "RemoteController: loading extension", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_24119924C;
  v6 = v0[4];
  v7 = v0[2];

  return sub_241199848(v6);
}

uint64_t sub_24119924C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_2411997A4;
  }

  else
  {
    v7 = sub_241199388;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_241199388()
{
  v57 = v0;
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_24119ACB4(v0[4]);
    sub_24119AD1C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v10 = v0[3];
    v9 = v0[4];

    v11 = v0[1];
  }

  else
  {
    v12 = v0[13];
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[5];
    v16 = v0[6];
    (*(v16 + 32))(v13, v0[4], v15);
    v17 = *(v16 + 16);
    v17(v14, v13, v15);
    v18 = sub_2411AB588();
    v19 = sub_2411ABE18();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[8];
    if (v20)
    {
      v22 = v0[6];
      v23 = v0[7];
      v24 = v0[5];
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v25 = 136315138;
      v17(v23, v21, v24);
      v26 = sub_2411ABD08();
      v54 = v17;
      v28 = v27;
      v55 = *(v22 + 8);
      v55(v21, v24);
      v29 = sub_24119F950(v26, v28, &v56);
      v17 = v54;

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24117E000, v18, v19, "RemoteController: found identity: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x245CDDA90](v53, -1, -1);
      MEMORY[0x245CDDA90](v25, -1, -1);
    }

    else
    {
      v30 = v0[5];
      v31 = v0[6];

      v55 = *(v31 + 8);
      v55(v21, v30);
    }

    v32 = v0[13];
    v33 = v0[9];
    v34 = v0[7];
    v35 = v0[5];
    v36 = v0[2];
    v37 = v0[3];
    v38 = sub_2411989B4();
    v17(v34, v33, v35);
    v40 = *(v36 + 32);
    v39 = *(v36 + 40);

    sub_2411ABE58();
    v41 = sub_2411ABE68();
    (*(*(v41 - 8) + 56))(v37, 0, 1, v41);
    sub_2411ABE88();

    v42 = sub_2411AB588();
    v43 = sub_2411ABE18();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_24117E000, v42, v43, "RemoteController: completed configuring remote view...", v44, 2u);
      MEMORY[0x245CDDA90](v44, -1, -1);
    }

    v46 = v0[8];
    v45 = v0[9];
    v48 = v0[6];
    v47 = v0[7];
    v50 = v0[4];
    v49 = v0[5];
    v51 = v0[3];

    v55(v45, v49);

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_2411997A4()
{
  v1 = v0[10];

  v2 = v0[15];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v7 = v0[3];
  v6 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_241199848(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534028, &unk_2411AD520) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5340F0, &qword_2411AD810) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_2411AB568();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = sub_2411AB518();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = sub_2411AB538();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = sub_2411ABDA8();
  v2[19] = sub_2411ABD98();
  v15 = sub_2411ABD48();
  v2[20] = v15;
  v2[21] = v14;

  return MEMORY[0x2822009F8](sub_241199A8C, v15, v14);
}

uint64_t sub_241199A8C()
{
  v1 = v0[17];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FE0, &qword_2411AD9C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2411AD060;
  v4 = *(v2 + 24);
  *(v3 + 32) = *(v2 + 16);
  *(v3 + 40) = v4;

  sub_2411AB558();

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v5 = sub_2411AB5A8();
  v0[22] = __swift_project_value_buffer(v5, qword_27E535AC0);
  v6 = sub_2411AB588();
  v7 = sub_2411ABE48();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24117E000, v6, v7, "RemoteController: loaded extension", v8, 2u);
    MEMORY[0x245CDDA90](v8, -1, -1);
  }

  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];

  sub_2411AB528();
  v12 = sub_2411ABD98();
  v0[23] = v12;
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_241199D30;
  v14 = v0[14];
  v15 = MEMORY[0x277D85700];

  return sub_24119A9A0(v12, v15);
}

uint64_t sub_241199D30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return MEMORY[0x2822009F8](sub_241199E48, v7, v8);
  }

  return result;
}

uint64_t sub_241199E48()
{
  v107 = v0;
  v1 = v0[25];
  if (!v1)
  {
    v17 = v0[19];
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);

    sub_24119AD1C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    goto LABEL_21;
  }

  v2 = v0[3];
  v3 = *(v1 + 16);
  result = swift_retain_n();
  v102 = v3;
  if (!v3)
  {
LABEL_13:
    v15 = v0[19];

    v16 = 1;
LABEL_19:
    v32 = v0[6];
    v33 = v0[7];
    v34 = v0[5];
    v35 = v0[3];
    v36 = *(v33 + 56);
    v36(v34, v16, 1, v32);

    if ((*(v33 + 48))(v34, 1, v32) != 1)
    {
      v53 = v0[22];
      v54 = v0[11];
      v55 = v0[9];
      v56 = v0[6];
      v57 = v0[7];
      v58 = *(v57 + 32);
      v58(v54, v0[5], v56);
      v104 = *(v57 + 16);
      v104(v55, v54, v56);
      v59 = sub_2411AB588();
      v60 = sub_2411ABE18();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v0[9];
      v103 = v36;
      v101 = v58;
      if (v61)
      {
        v63 = v0[7];
        v64 = v0[8];
        v65 = v0[6];
        v66 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v106 = v99;
        *v66 = 136315138;
        v104(v64, v62, v65);
        v67 = sub_2411ABD08();
        v69 = v68;
        (*(v63 + 8))(v62, v65);
        v70 = sub_24119F950(v67, v69, &v106);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_24117E000, v59, v60, "RemoteController: found identity: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x245CDDA90](v99, -1, -1);
        MEMORY[0x245CDDA90](v66, -1, -1);
      }

      else
      {
        v71 = v0[6];
        v72 = v0[7];

        (*(v72 + 8))(v62, v71);
      }

      v73 = v0[22];
      v74 = v0[11];
      v75 = v0[8];
      v76 = v0[6];
      v77 = v0[3];
      v78 = v0[4];
      v79 = sub_2411989B4();
      v104(v75, v74, v76);
      v81 = *(v77 + 32);
      v80 = *(v77 + 40);

      sub_2411ABE58();
      v82 = sub_2411ABE68();
      (*(*(v82 - 8) + 56))(v78, 0, 1, v82);
      sub_2411ABE88();

      v83 = sub_2411AB588();
      v84 = sub_2411ABE18();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_24117E000, v83, v84, "RemoteController: completed configuring remote view...", v85, 2u);
        MEMORY[0x245CDDA90](v85, -1, -1);
      }

      v86 = v0[16];
      v87 = v0[17];
      v88 = v0[14];
      v90 = v0[12];
      v89 = v0[13];
      v91 = v0[11];
      v96 = v0[10];
      v97 = v0[9];
      v98 = v0[8];
      v92 = v0[6];
      v94 = v0[15];
      v95 = v0[7];
      v100 = v0[5];
      v105 = v0[4];
      v93 = v0[2];

      (*(v89 + 8))(v88, v90);
      (*(v86 + 8))(v87, v94);
      v101(v93, v91, v92);
      v103(v93, 0, 1, v92);

      v52 = v0[1];
      goto LABEL_28;
    }

    v38 = v0[16];
    v37 = v0[17];
    v40 = v0[14];
    v39 = v0[15];
    v41 = v0[12];
    v42 = v0[13];
    sub_24119ACB4(v0[5]);
    sub_24119AD1C();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    (*(v42 + 8))(v40, v41);
    (*(v38 + 8))(v37, v39);
LABEL_21:
    v44 = v0[17];
    v45 = v0[14];
    v47 = v0[10];
    v46 = v0[11];
    v49 = v0[8];
    v48 = v0[9];
    v51 = v0[4];
    v50 = v0[5];

    v52 = v0[1];
LABEL_28:

    return v52();
  }

  v5 = 0;
  v6 = v0[7];
  while (v5 < *(v1 + 16))
  {
    v7 = v0[18];
    (*(v6 + 16))(v0[10], v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v0[6]);
    sub_2411ABD98();
    sub_2411ABD48();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    dyld_get_active_platform();
    v8 = *(v2 + 56);
    if (!v8)
    {
      v22 = v0[19];
      v23 = v0[3];

LABEL_18:

      v28 = v0[10];
      v30 = v0[6];
      v29 = v0[7];
      v31 = v0[5];

      (*(v29 + 32))(v31, v28, v30);
      v16 = 0;
      goto LABEL_19;
    }

    v9 = v1;
    v10 = *(v2 + 48);
    v11 = v0[10];
    if (sub_2411AB548() == v10 && v8 == v12)
    {
      v24 = v0[19];
      v25 = v0[3];

      goto LABEL_18;
    }

    v13 = sub_2411ABF98();

    if (v13)
    {
      v26 = v0[19];
      v27 = v0[3];
      goto LABEL_18;
    }

    ++v5;
    result = (*(v6 + 8))(v0[10], v0[6]);
    v1 = v9;
    if (v102 == v5)
    {
      v14 = v0[3];
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_24119A5F8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2411989B4();
  v6[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_2411AB368();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t RemoteController.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t RemoteController.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t (*sub_24119A764(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_241198EA0(v2);
  return sub_24119B544;
}

id sub_24119A7E0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_2411989B4();
  v5 = [v4 *a3];

  return v5;
}

uint64_t (*sub_24119A824(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_241198C58(v2);
  return sub_24119A894;
}

void sub_24119A898(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24119A8E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2411862D8;

  return sub_241198F78();
}

uint64_t sub_24119A9A0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2411AB518();
  v4 = sub_24119B4EC();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_24119AA60;

  return MEMORY[0x282200308](v2 + 2, v3, v4);
}

uint64_t sub_24119AA60()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = sub_2411ABD48();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_24119AC0C;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = sub_2411ABD48();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_24119ABF0;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_24119AC0C()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_24119ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5340F0, &qword_2411AD810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24119AD1C()
{
  result = qword_27E5340F8;
  if (!qword_27E5340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5340F8);
  }

  return result;
}

id sub_24119AD70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2411989B4();
  *a2 = result;
  return result;
}

void sub_24119AD9C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
  v3 = v2;
}

void sub_24119ADF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2411989B4();
  [v4 setDelegate_];
}

uint64_t dispatch thunk of RemoteControllerProtocol.load()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RemoteController.load()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2411862D8;

  return v6();
}

uint64_t getEnumTagSinglePayload for ExtensionLoadingError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtensionLoadingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24119B498()
{
  result = qword_27E534100;
  if (!qword_27E534100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534100);
  }

  return result;
}

unint64_t sub_24119B4EC()
{
  result = qword_27E534108;
  if (!qword_27E534108)
  {
    sub_2411AB518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534108);
  }

  return result;
}

uint64_t sub_24119B5C0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2411ABEF8();
    v5 = v4;
    v6 = sub_2411ABF48();
    v8 = v7;
    v9 = MEMORY[0x245CDD350](v3, v5, v6, v7);
    sub_24119D4B8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24119D4B8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_2411ABEE8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24119D4C4(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_24119D4B8(v3, v5, v2 != 0);
  return v13;
}

uint64_t FlowKind.hashValue.getter()
{
  sub_2411ABFF8();
  MEMORY[0x245CDD450](0);
  return sub_2411AC018();
}

uint64_t sub_24119B758()
{
  sub_2411ABFF8();
  MEMORY[0x245CDD450](0);
  return sub_2411AC018();
}

uint64_t sub_24119B7C4()
{
  sub_2411ABFF8();
  MEMORY[0x245CDD450](0);
  return sub_2411AC018();
}

uint64_t sub_24119B804()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_24119B840(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24119B8A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24119B934;
}

uint64_t SceneBasedSendAskFlowController.__allocating_init(flowCoordinatorFactory:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 120) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  sub_24119B9F4(a1, v2 + 32);
  return v2;
}

uint64_t SceneBasedSendAskFlowController.init(flowCoordinatorFactory:)(__int128 *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 120) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  sub_24119B9F4(a1, v1 + 32);
  return v1;
}

uint64_t sub_24119B9F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24119BA0C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = sub_24119B5C0(v5);

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v6 info];
  if (!v7)
  {

LABEL_7:
    v14 = 0u;
    v15 = 0u;
LABEL_8:
    result = sub_241186CE4(&v14, &qword_27E534110, &unk_2411ADA30);
    goto LABEL_9;
  }

  v8 = v7;
  sub_2411AB998();
  v9 = [v8 objectForSetting_];

  if (v9)
  {
    sub_2411ABED8();
    swift_unknownObjectRelease();
  }

  else
  {

    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (result)
  {
    result = sub_24119BB78(v12, *(&v12 + 1));
    v11 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v11 = 1;
LABEL_10:
  *a2 = v11;
  return result;
}

uint64_t sub_24119BB78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_24119BBCC(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v60 - v8;
  v10 = sub_2411ABA38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2411920FC(a1, &v65);
  swift_beginAccess();
  sub_24119C450(&v65, v3 + 80);
  swift_endAccess();
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (!v17 || (v18 = sub_24119B5C0(v17), , !v18))
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v22 = sub_2411AB5A8();
    __swift_project_value_buffer(v22, qword_27E535AC0);
    v23 = sub_2411AB588();
    v24 = sub_2411ABE28();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24117E000, v23, v24, "No BSAction in configuration context", v25, 2u);
      MEMORY[0x245CDDA90](v25, -1, -1);
    }

    sub_241198364();
    v26 = swift_allocError();
    *v27 = 2;
    swift_willThrow();
    goto LABEL_22;
  }

  v19 = [v18 info];
  if (v19)
  {
    v20 = v19;
    sub_2411AB998();
    v21 = [v20 objectForSetting_];

    if (v21)
    {
      sub_2411ABED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    v65 = v63;
    v66 = v64;
    if (*(&v64 + 1))
    {
      if (swift_dynamicCast())
      {
        v61 = a2;
        v28 = v63;
        v29 = sub_2411AB318();
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        sub_2411AB308();
        sub_24119CFD0(&qword_27E534120, MEMORY[0x277CEEAF8]);
        v62 = v28;
        sub_2411AB2F8();

        v38 = v65;
        v39 = *(v3 + 120);
        *(v3 + 120) = v65;
        v40 = v38;

        v60[2] = sub_2411ABA48();
        v41 = sub_2411AB968();
        v60[1] = sub_2411ABA18();

        v42 = sub_2411AB988();
        v43 = sub_2411AB648();

        (*(v11 + 104))(v14, *MEMORY[0x277CEEB88], v10);
        sub_24119CFD0(&qword_27E533F70, MEMORY[0x277CEEBE8]);
        sub_2411ABC88();

        (*(v11 + 8))(v14, v10);
        sub_2411AB988();
        v44 = v40;
        sub_2411AB968();
        v45 = sub_2411ABAF8();
        v46 = *(v45 + 48);
        v47 = *(v45 + 52);
        swift_allocObject();
        v48 = sub_2411ABAC8();
        sub_2411920FC(v3 + 32, &v65);
        v49 = *(&v66 + 1);
        v50 = v67;
        __swift_project_boxed_opaque_existential_1Tm(&v65, *(&v66 + 1));
        v51 = (*(v50 + 8))(v48, v49, v50);
        __swift_destroy_boxed_opaque_existential_0(&v65);
        v52 = *(v3 + 72);
        *(v3 + 72) = v51;
        v53 = v51;

        v54 = sub_2411ABDD8();
        (*(*(v54 - 8) + 56))(v9, 1, 1, v54);
        sub_2411ABDA8();
        v55 = v53;
        v56 = v61;

        v57 = sub_2411ABD98();
        v58 = swift_allocObject();
        v59 = MEMORY[0x277D85700];
        v58[2] = v57;
        v58[3] = v59;
        v58[4] = v55;
        v58[5] = v56;
        v58[6] = v3;
        sub_241192B80(0, 0, v9, &unk_2411ADA50, v58);

        sub_24119BB78(v62, *(&v62 + 1));
        return;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  sub_241186CE4(&v65, &qword_27E534110, &unk_2411ADA30);
LABEL_17:
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v32 = sub_2411AB5A8();
  __swift_project_value_buffer(v32, qword_27E535AC0);
  v33 = sub_2411AB588();
  v34 = sub_2411ABE28();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24117E000, v33, v34, "Configuration context had a BSAction, but the send request payload data was nil", v35, 2u);
    MEMORY[0x245CDDA90](v35, -1, -1);
  }

  sub_241198364();
  v26 = swift_allocError();
  *v36 = 3;
  swift_willThrow();

LABEL_22:
  v37 = v26;
  sub_24119CC54(v26);
}