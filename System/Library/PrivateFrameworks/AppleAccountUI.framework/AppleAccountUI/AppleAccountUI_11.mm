uint64_t sub_1C556C844(uint64_t a1)
{
  v24 = a1;
  v33 = 0;
  v41 = 0;
  v23 = 0;
  v30 = sub_1C5594C74();
  v25 = v30;
  v26 = *(v30 - 8);
  v29 = v26;
  v27 = v26;
  MEMORY[0x1EEE9AC00](v24);
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  v41 = v3;
  v4 = sub_1C54B05F8();
  (*(v29 + 16))(v2, v4, v30);
  v35 = sub_1C5594C54();
  v31 = v35;
  v34 = sub_1C5596944();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v36 = sub_1C5596E04();
  if (os_log_type_enabled(v35, v34))
  {
    v5 = v23;
    v14 = sub_1C5596A74();
    v10 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v12 = 0;
    v15 = sub_1C5419DC0(0);
    v13 = v15;
    v16 = sub_1C5419DC0(v12);
    v40 = v14;
    v39 = v15;
    v38 = v16;
    v17 = 0;
    v18 = &v40;
    sub_1C5419E14(0, &v40);
    sub_1C5419E14(v17, v18);
    v37 = v36;
    v19 = v8;
    MEMORY[0x1EEE9AC00](v8);
    v20 = &v8[-6];
    v8[-4] = v6;
    v8[-3] = &v39;
    v8[-2] = &v38;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v22 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v31, v32, "AppleAccountHeaderView onAppear was called. Updating image and account info...", v10, 2u);
      v8[1] = 0;
      sub_1C5419E74(v13);
      sub_1C5419E74(v16);
      sub_1C5596A54();

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  (*(v27 + 8))(v28, v25);
  sub_1C556A9D8();
  return sub_1C556CE80();
}

unint64_t sub_1C556CC08()
{
  v2 = qword_1EC15EFF8;
  if (!qword_1EC15EFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556CC90()
{
  v2 = qword_1EC15F000;
  if (!qword_1EC15F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF80);
    sub_1C556CC08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556CD34()
{
  v2 = qword_1EC15F008;
  if (!qword_1EC15F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF88);
    sub_1C556CC90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556CDD8()
{
  v2 = qword_1EC15F010;
  if (!qword_1EC15F010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF90);
    sub_1C556CD34();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556CE80()
{
  v93 = 0;
  v128 = 0;
  v127 = 0;
  v113 = 0;
  v112 = 0;
  v94 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v95 = &v20 - v94;
  v96 = sub_1C5594834();
  v97 = *(v96 - 8);
  v98 = v97;
  v99 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v100 = &v20 - v101;
  MEMORY[0x1EEE9AC00](&v20 - v101);
  v102 = &v20 - v101;
  v128 = &v20 - v101;
  v127 = v0;
  v103 = *(v0 + 144);
  v1 = v103;
  v104 = *MEMORY[0x1E6959750];
  v2 = v104;
  v105 = v104;
  v3 = sub_1C5596574();
  v124 = MEMORY[0x1E69E6158];
  v123[0] = v3;
  v123[1] = v4;
  if (MEMORY[0x1E69E6158])
  {
    v86 = v124;
    v89 = v123;
    __swift_project_boxed_opaque_existential_0(v123, v124);
    v84 = *(v86 - 8);
    v85 = v84;
    v88 = &v20;
    v5 = MEMORY[0x1EEE9AC00](&v20);
    v87 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v85 + 16))(v5);
    v90 = sub_1C5596E14();
    (*(v85 + 8))(v87, v86);
    __swift_destroy_boxed_opaque_existential_0(v89);
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  v81 = v91;
  v83 = [v103 objectForKeyedSubscript_];
  v82 = v83;
  swift_unknownObjectRelease();
  if (v83)
  {
    v80 = v82;
    v79 = v82;
    v78 = v106;
    sub_1C5596AF4();
    sub_1C551433C(v78, &v121);
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0uLL;
    v122 = 0uLL;
  }

  v126 = v122;
  v125 = v121;

  if (*(&v126 + 1))
  {
    if (swift_dynamicCast())
    {
      v76 = v106[4];
      v77 = v106[5];
    }

    else
    {
      v76 = 0;
      v77 = 0;
    }

    v73 = v77;
    v72 = v76;

    v74 = v72;
    v75 = v73;
  }

  else
  {

    sub_1C544435C(&v125);
    v74 = 0;
    v75 = 0;
  }

  v67 = v75;
  v68 = v74;
  v69 = *(v92 + 144);
  v7 = v69;
  v70 = *MEMORY[0x1E6959788];
  v8 = v70;
  v71 = v70;
  v9 = sub_1C5596574();
  v118 = MEMORY[0x1E69E6158];
  v117[0] = v9;
  v117[1] = v10;
  if (MEMORY[0x1E69E6158])
  {
    v61 = v118;
    v64 = v117;
    __swift_project_boxed_opaque_existential_0(v117, v118);
    v59 = *(v61 - 8);
    v60 = v59;
    v63 = &v20;
    v11 = MEMORY[0x1EEE9AC00](&v20);
    v62 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v11);
    v65 = sub_1C5596E14();
    (*(v60 + 8))(v62, v61);
    __swift_destroy_boxed_opaque_existential_0(v64);
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  v56 = v66;
  v58 = [v69 objectForKeyedSubscript_];
  v57 = v58;
  swift_unknownObjectRelease();
  if (v58)
  {
    v55 = v57;
    v54 = v57;
    v53 = v107;
    sub_1C5596AF4();
    sub_1C551433C(v53, &v115);
    swift_unknownObjectRelease();
  }

  else
  {
    v115 = 0uLL;
    v116 = 0uLL;
  }

  v120 = v116;
  v119 = v115;

  if (*(&v120 + 1))
  {
    if (swift_dynamicCast())
    {
      v51 = v107[4];
      v52 = v107[5];
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v48 = v52;
    v47 = v51;

    v49 = v47;
    v50 = v48;
  }

  else
  {

    sub_1C544435C(&v119);
    v49 = 0;
    v50 = 0;
  }

  v13 = v100;
  v36 = v50;
  v35 = v49;
  (*(v98 + 56))(v95, 1, 1, v96);
  v39 = 0;
  sub_1C5594804();
  v41 = objc_opt_self();
  (*(v98 + 16))(v13, v102, v96);
  v42 = sub_1C5594814();
  v37 = *(v98 + 8);
  v38 = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v100, v96);
  type metadata accessor for Options();
  v40 = sub_1C5596E04();
  sub_1C556E510();
  sub_1C5596B04();
  v43 = [v41 localizedStringFromPersonNameComponents:v42 style:2 options:v114];

  v14 = sub_1C5596574();
  sub_1C5565460(v14, v15);

  v45 = *(v92 + 144);
  v44 = v45;
  v16 = v45;
  v46 = [v45 aa_formattedUsername];
  if (v46)
  {
    v34 = v46;
    v29 = v46;
    v30 = sub_1C5596574();
    v31 = v17;

    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v27 = v33;
  v28 = v32;
  if (v33)
  {
    v25 = v28;
    v26 = v27;
    v24 = v27;
    v21 = v28;
    v112 = v28;
    v113 = v27;

    sub_1C5594CF4();
    v18 = *(v92 + 40);
    v130 = *(v92 + 56);
    v129 = v18;
    v23 = &v129;
    sub_1C55653C8(&v129, v111);
    sub_1C55653C8(v23, v110);
    v109 = v130;
    v108 = v129;
    sub_1C5594CF4();
    v107[6] = v21;
    v107[7] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8);
    v22 = &v108;
    sub_1C5595F94();
    sub_1C5565428();
    sub_1C5565428();
  }

  else
  {
  }

  return (v37)(v102, v96);
}

uint64_t sub_1C556D94C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v28 = a1;
  v27 = a2;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v10 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v21);
  v24 = &v10 - v23;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v23);
  v26 = &v10 - v25;
  v43 = &v10 - v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F028);
  v33 = *(*(v29 - 8) + 64);
  v30 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v10 - v30;
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v10 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v10 - v35;
  v42 = &v10 - v35;
  v41 = v7;
  v40 = v8 & 1;
  if (sub_1C544DA34(v8 & 1, 1))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050);
    v17 = sub_1C556E750();
    sub_1C5410F68();
    sub_1C5595D14();
    v18 = sub_1C556E6AC();
    sub_1C540EFD8(v24, v20, v26);
    sub_1C556EE64(v24);
    v37 = v24;
    sub_1C556EECC(v26, v22);
    sub_1C540EFD8(v22, v20, v24);
    sub_1C556EE64(v22);
    sub_1C556EECC(v24, v22);
    sub_1C540FD1C(v22, v20, v20, v18, v18, v31);
    sub_1C556EE64(v22);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030);
    (*(*(v15 - 8) + 56))(v31, 0, 1);
    sub_1C556E60C();
    sub_1C540F554(v31, v15, v34);
    sub_1C556E7D8(v31);
    sub_1C556E90C(v34, v36);
    sub_1C556EE64(v24);
    sub_1C556EE64(v26);
  }

  else if (sub_1C544DA34(v27 & 1, 0))
  {
    v39 = v26;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050);
    v13 = sub_1C556E750();
    sub_1C5410F68();
    sub_1C5595D14();
    v14 = sub_1C556E6AC();
    sub_1C540EFD8(v24, v20, v26);
    sub_1C556EE64(v24);
    v38 = v24;
    sub_1C556EECC(v26, v22);
    sub_1C540EFD8(v22, v20, v24);
    sub_1C556EE64(v22);
    sub_1C556EECC(v24, v22);
    sub_1C54108A0(v22, v20, v20, v14, v14, v31);
    sub_1C556EE64(v22);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030);
    (*(*(v11 - 8) + 56))(v31, 0, 1);
    sub_1C556E60C();
    sub_1C540F554(v31, v11, v34);
    sub_1C556E7D8(v31);
    sub_1C556E90C(v34, v36);
    sub_1C556EE64(v24);
    sub_1C556EE64(v26);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030);
    (*(*(v10 - 8) + 56))(v31, 1);
    sub_1C556E60C();
    sub_1C540F554(v31, v10, v34);
    sub_1C556E7D8(v31);
    sub_1C556E90C(v34, v36);
  }

  sub_1C556EB6C(v36, v34);
  sub_1C556EDCC();
  sub_1C540EFD8(v34, v29, v19);
  sub_1C556E7D8(v34);
  return sub_1C556E7D8(v36);
}

id sub_1C556DFC0(uint64_t a1)
{
  v4 = [v1 initWithContact_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C556E010()
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5597014();
}

uint64_t sub_1C556E214()
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5597004();
}

uint64_t sub_1C556E258()
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5596FE4();
}

uint64_t sub_1C556E29C()
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5596FF4();
}

uint64_t sub_1C556E448@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for Options()
{
  v4 = qword_1EC159F08;
  if (!qword_1EC159F08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC159F08);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C556E510()
{
  v2 = qword_1EC159F20;
  if (!qword_1EC159F20)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E590()
{
  v2 = qword_1EC15F018;
  if (!qword_1EC15F018)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E60C()
{
  v2 = qword_1EC15F038;
  if (!qword_1EC15F038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F030);
    sub_1C556E6AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E6AC()
{
  v2 = qword_1EC15F040;
  if (!qword_1EC15F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F020);
    sub_1C556E750();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E750()
{
  v2 = qword_1EC15F048;
  if (!qword_1EC15F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556E7D8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F058);
    swift_getEnumCaseMultiPayload();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1C556E90C(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F028);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F058);
    swift_getEnumCaseMultiPayload();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020);
    memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  return a2;
}

char *sub_1C556EB6C(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F028);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F058);
    swift_getEnumCaseMultiPayload();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020);
    memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  return a2;
}

unint64_t sub_1C556EDCC()
{
  v2 = qword_1EC15F060;
  if (!qword_1EC15F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F028);
    sub_1C556E60C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556EE64(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C556EECC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_1C556EFC4()
{
  v2 = qword_1EC15F068;
  if (!qword_1EC15F068)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556F0A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1C556F1BC(void *result, int a2, int a3)
{
  v3 = result + 21;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[20] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1C556F410()
{
  v2 = qword_1EC159F28;
  if (!qword_1EC159F28)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F4C0()
{
  v2 = qword_1EC159F30;
  if (!qword_1EC159F30)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F558()
{
  v2 = qword_1EC159F18;
  if (!qword_1EC159F18)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F5D8()
{
  v2 = qword_1EC159F10;
  if (!qword_1EC159F10)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F658()
{
  v2 = qword_1EC159F88;
  if (!qword_1EC159F88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F88);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C556F6E8(void *a1)
{

  MEMORY[0x1E69E5920](a1[2]);
  MEMORY[0x1E69E5920](a1[3]);
  if (a1[4])
  {
  }

  if (a1[6])
  {
  }

  return a1;
}

void *sub_1C556F788(void *a1, void *a2)
{
  v7 = *a1;

  *a2 = v7;
  v8 = a1[1];

  a2[1] = v8;
  v9 = a1[2];
  MEMORY[0x1E69E5928](v9);
  a2[2] = v9;
  v11 = a1[3];
  MEMORY[0x1E69E5928](v11);
  a2[3] = v11;
  if (a1[4])
  {
    v5 = a1[4];
    v6 = a1[5];

    a2[4] = v5;
    a2[5] = v6;
  }

  else
  {
    *(a2 + 2) = *(a1 + 2);
  }

  if (a1[6])
  {
    v3 = a1[6];
    v4 = a1[7];

    a2[6] = v3;
    a2[7] = v4;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  return a2;
}

unint64_t sub_1C556F8D4()
{
  v2 = qword_1EC15F088;
  if (!qword_1EC15F088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F080);
    sub_1C5413D10();
    sub_1C5452038();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F9B4()
{
  v2 = qword_1EC15F090;
  if (!qword_1EC15F090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF20);
    sub_1C556F8D4();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F090);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556FA5C(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1C556FAF0()
{
  v2 = qword_1EC15F098;
  if (!qword_1EC15F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF50);
    sub_1C556F9B4();
    sub_1C556FB98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FB98()
{
  v2 = qword_1EC15F0A0;
  if (!qword_1EC15F0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FC14()
{
  v2 = qword_1EC15F0A8;
  if (!qword_1EC15F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF58);
    sub_1C556FAF0();
    sub_1C546FD20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FCBC()
{
  v2 = qword_1EC15F0B0;
  if (!qword_1EC15F0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF30);
    sub_1C556FD60();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FD60()
{
  v2 = qword_1EC15F0B8;
  if (!qword_1EC15F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F078);
    sub_1C5595414();
    sub_1C556FE80();
    sub_1C556FFD0();
    swift_getOpaqueTypeConformance2();
    sub_1C54EC138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FE80()
{
  v2 = qword_1EC15F0C0;
  if (!qword_1EC15F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F078);
    sub_1C556FF28();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FF28()
{
  v2 = qword_1EC15F0C8;
  if (!qword_1EC15F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F070);
    sub_1C547070C();
    sub_1C5435844();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FFD0()
{
  v2 = qword_1EC15F0D0;
  if (!qword_1EC15F0D0)
  {
    sub_1C5595414();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5570050(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  *a2 = v6;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  v7 = a1[3];

  *(a2 + 24) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF50);
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF58);
  result = a2;
  *(a2 + *(v4 + 36)) = *(a1 + *(v4 + 36));
  return result;
}

char *sub_1C557019C(void *a1, char *a2)
{
  if (a1[6])
  {
    *a2 = *a1;
    a2[16] = *(a1 + 16);
    v7 = a1[3];
    v8 = a1[4];
    v9 = *(a1 + 40);
    sub_1C54130AC(v7, v8, v9 & 1);
    *(a2 + 3) = v7;
    *(a2 + 4) = v8;
    a2[40] = v9 & 1;
    v10 = a1[6];
    sub_1C5594CF4();
    *(a2 + 6) = v10;
    if (a1[10])
    {
      v3 = a1[7];
      v4 = a1[8];
      v5 = *(a1 + 72);
      sub_1C54130AC(v3, v4, v5 & 1);
      *(a2 + 7) = v3;
      *(a2 + 8) = v4;
      a2[72] = v5 & 1;
      v6 = a1[10];
      sub_1C5594CF4();
      *(a2 + 10) = v6;
    }

    else
    {
      *(a2 + 56) = *(a1 + 7);
      *(a2 + 72) = *(a1 + 9);
    }
  }

  else
  {
    memcpy(a2, a1, 0x58uLL);
  }

  return a2;
}

unint64_t sub_1C55702F8()
{
  v2 = qword_1EC15F0E0;
  if (!qword_1EC15F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF60);
    sub_1C556FCBC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5570390()
{
  v2 = qword_1EC159FC0;
  if (!qword_1EC159FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F0D8);
    sub_1C5452350();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5570428(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

    if (*(a1 + 80))
    {
      sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
    }
  }

  return a1;
}

uint64_t sub_1C55704C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F070) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

uint64_t sub_1C55705B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F070) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F078);

  return a1;
}

uint64_t AccountManagerHelper.init()()
{
  v18 = "Fatal error";
  v19 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v20 = "AppleAccountUI/AccountManagerHelper.swift";
  v35 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0);
  v22 = *(v27 - 8);
  v23 = v27 - 8;
  v21 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v7 - v21;
  v35 = v0;
  v25 = v0;
  v24 = OBJC_IVAR___AAUIAccountManagerHelper__account;
  v28 = 0;
  v1 = sub_1C5570A94(0, &v7 - v21);
  (*(v22 + 32))(&v25[v24], v26, v27, v1);
  v29 = v35;
  v30 = OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager;
  v31 = sub_1C5570B10();
  v32 = [objc_opt_self() defaultStore];
  if (!v32)
  {
    sub_1C5596C94();
    __break(1u);
    goto LABEL_5;
  }

  v17 = v32;
  v2 = sub_1C55716EC(v32);
  *&v29[v30] = v2;
  v13 = v35;
  v14 = OBJC_IVAR___AAUIAccountManagerHelper_accountManager;
  v15 = sub_1C557172C();
  v16 = [objc_opt_self() defaultStore];
  if (v16)
  {
    v12 = v16;
LABEL_5:
    v3 = sub_1C55716EC(v12);
    *&v13[v14] = v3;
    v7 = v35;
    v4 = type metadata accessor for AccountManagerHelper();
    v34.receiver = v7;
    v34.super_class = v4;
    v11 = objc_msgSendSuper2(&v34, sel_init);
    MEMORY[0x1E69E5928](v11);
    v35 = v11;
    v8 = &v11[OBJC_IVAR___AAUIAccountManagerHelper_accountManager];
    v9 = &v33;
    swift_beginAccess();
    v10 = *v8;
    MEMORY[0x1E69E5928](v10);
    swift_endAccess();
    *&v5 = MEMORY[0x1E69E5928](v11).n128_u64[0];
    [v10 setDelegate_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v10);
    sub_1C557258C();
    MEMORY[0x1E69E5920](v35);
    return v11;
  }

  result = sub_1C5596C94();
  __break(1u);
  return result;
}

double sub_1C5570A94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F108);
  sub_1C5402CCC(v6, v2, a2);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

unint64_t sub_1C5570B10()
{
  v2 = qword_1EC15F0F8;
  if (!qword_1EC15F0F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15F0F8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1C5570B74()
{
  sub_1C5570B10();
  v2 = [objc_opt_self() defaultStore];
  if (v2)
  {
    v1 = v2;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  return sub_1C55716EC(v1);
}

id sub_1C5570C58()
{
  sub_1C557172C();
  v2 = [objc_opt_self() defaultStore];
  if (v2)
  {
    v1 = v2;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  return sub_1C55716EC(v1);
}

uint64_t sub_1C5570D60()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t sub_1C5570E0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x68))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5570EAC(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x70))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5570F58(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  sub_1C5594E94();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5571014(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C54031B4;
}

uint64_t sub_1C55710FC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5571178(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F110);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_1C55712CC(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F110);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C55710FC();
  return sub_1C55713F0;
}

void sub_1C55713F0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5571178(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5571178(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C55714EC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___AAUIAccountManagerHelper__account;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C557158C(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR___AAUIAccountManagerHelper__account;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

unint64_t sub_1C557172C()
{
  v2 = qword_1EC15F100;
  if (!qword_1EC15F100)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15F100);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5571790()
{
  v2 = *(v0 + OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t type metadata accessor for AccountManagerHelper()
{
  v1 = qword_1EC16A2D8;
  if (!qword_1EC16A2D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C55718B8()
{
  v2 = (v0 + OBJC_IVAR___AAUIAccountManagerHelper_accountManager);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5571990(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUIAccountManagerHelper_accountManager);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5571A2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x98))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5571ACC(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA0))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C5571BF8()
{
  v9 = v0;
  v6 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))();
  v5 = *MEMORY[0x1E698C218];
  v7 = [v6 accounts];
  if (v7)
  {
    type metadata accessor for AIDAServiceType();
    sub_1C543D95C();
    sub_1C5572838();
    v3 = sub_1C5596444();
    MEMORY[0x1E69E5920](v7);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v8[0] = v5;
  type metadata accessor for AIDAServiceType();
  sub_1C543D95C();
  sub_1C5572838();
  sub_1C5596464();
  sub_1C5401EF8(v8);
  v2 = v8[1];
  MEMORY[0x1E69E5920](v6);

  return v2;
}

uint64_t sub_1C5571E28()
{
  v9 = v0;
  v6 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))();
  v5 = *MEMORY[0x1E698C238];
  v7 = [v6 accounts];
  if (v7)
  {
    type metadata accessor for AIDAServiceType();
    sub_1C543D95C();
    sub_1C5572838();
    v3 = sub_1C5596444();
    MEMORY[0x1E69E5920](v7);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v8[0] = v5;
  type metadata accessor for AIDAServiceType();
  sub_1C543D95C();
  sub_1C5572838();
  sub_1C5596464();
  sub_1C5401EF8(v8);
  v2 = v8[1];
  MEMORY[0x1E69E5920](v6);

  return v2;
}

uint64_t sub_1C5572058()
{
  v6 = v0;
  v4 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xB0))();
  v1 = (MEMORY[0x1E69E5928])();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xB8))(v1);
  }

  (MEMORY[0x1E69E5920])();
  return v5;
}

uint64_t sub_1C5572164()
{
  type metadata accessor for AIDAServiceType();
  sub_1C543D95C();
  sub_1C5572838();
  v9 = sub_1C5596414();
  v7 = *(v0 + OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager);
  MEMORY[0x1E69E5928](v7);
  v6 = *MEMORY[0x1E698C218];
  v8 = [v7 accountForService_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v8);
  if (v8)
  {
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C218]);
    MEMORY[0x1E69E5928](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F128);
    sub_1C5596474();
    MEMORY[0x1E69E5920](v8);
  }

  v3 = *(v5 + OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager);
  MEMORY[0x1E69E5928](v3);
  v2 = *MEMORY[0x1E698C238];
  v4 = [v3 accountForService_];
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5928](v4);
  if (v4)
  {
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C238]);
    MEMORY[0x1E69E5928](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F128);
    sub_1C5596474();
    MEMORY[0x1E69E5920](v4);
  }

  sub_1C5594CF4();
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v8);
  sub_1C541439C();
  return v9;
}

uint64_t sub_1C557258C()
{
  v16 = v0;
  v8 = MEMORY[0x1E69E7D40];
  v6 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))();
  (MEMORY[0x1E69E5928])();
  v4 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v14 = sub_1C5572CE4;
  v15 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_1C5572CEC;
  v13 = &block_descriptor_20;
  v5 = _Block_copy(&aBlock);

  [v6 addAccountChangeObserver:v7 handler:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
  v1 = MEMORY[0x1E69E5920](v6);
  v2 = (*((*v7 & *v8) + 0xC0))(v1);
  return (*((*v7 & *v8) + 0x70))(v2);
}

uint64_t type metadata accessor for AIDAServiceType()
{
  v4 = qword_1EC159F40;
  if (!qword_1EC159F40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC159F40);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C5572838()
{
  v2 = qword_1EC15F120;
  if (!qword_1EC15F120)
  {
    type metadata accessor for AIDAServiceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F120);
    return WitnessTable;
  }

  return v2;
}

double sub_1C55728B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v24 = a1;
  v23 = a2;
  v22 = a3 + 16;
  v12 = *MEMORY[0x1E698C218];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698C218]);
  v20[0] = v12;
  type metadata accessor for AIDAServiceType();
  sub_1C543D95C();
  sub_1C5572838();
  sub_1C5596464();
  sub_1C5401EF8(v20);
  v19 = v20[1];
  sub_1C5594CF4();
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v11 = *MEMORY[0x1E698C238];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C238]);
    v18 = v11;
    sub_1C5596464();
    sub_1C5401EF8(&v18);
    if (v19)
    {
      sub_1C5401EF8(&v19);
    }
  }

  v9 = v21;
  v17 = v21;
  v10 = *MEMORY[0x1E698C218];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698C218]);
  v15[0] = v10;
  sub_1C5596464();
  sub_1C5401EF8(v15);
  v14 = v15[1];
  sub_1C5594CF4();
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v8 = *MEMORY[0x1E698C238];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C238]);
    v13 = v8;
    sub_1C5596464();
    sub_1C5401EF8(&v13);
    if (v14)
    {
      sub_1C5401EF8(&v14);
    }
  }

  v6 = v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    MEMORY[0x1E69E5928](v9);
    if (v6)
    {
      v5 = 0;
    }

    else
    {
      v5 = v9 != 0;
    }

    v3 = MEMORY[0x1E69E5920](v9);
    if (v5)
    {
      (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x70))(0, v3);
      MEMORY[0x1E69E5920](Strong);
      MEMORY[0x1E69E5920](v6);
      *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
      return result;
    }

    MEMORY[0x1E69E5920](Strong);
  }

  MEMORY[0x1E69E5920](v6);
  *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  return result;
}

uint64_t sub_1C5572CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  type metadata accessor for AIDAServiceType();
  sub_1C543D95C();
  sub_1C5572838();
  v6 = sub_1C5596444();
  MEMORY[0x1E69E5928](a3);
  sub_1C5596444();
  v4(v6);

  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](a2);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id AccountManagerHelper.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountManagerHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5572F7C()
{
  updated = sub_1C55731C4();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1C55731C4()
{
  v4 = qword_1EC15F198;
  if (!qword_1EC15F198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F108);
    v3 = sub_1C5594EA4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15F198);
      return v1;
    }
  }

  return v4;
}

id sub_1C5573268(uint64_t a1)
{
  v4 = [v1 initWithAccountStore_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C5573388()
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D54();
}

uint64_t sub_1C55733C4()
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D24();
}

uint64_t sub_1C5573410()
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C5573460()
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D44();
}

uint64_t sub_1C55734F8()
{
  sub_1C5572838();
  sub_1C557370C();
  return sub_1C5596D04();
}

unint64_t sub_1C557355C()
{
  v2 = qword_1EC159F68;
  if (!qword_1EC159F68)
  {
    type metadata accessor for AIDAServiceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55735F4()
{
  v2 = qword_1EC159F50;
  if (!qword_1EC159F50)
  {
    type metadata accessor for AIDAServiceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557368C()
{
  v2 = qword_1EC159F78;
  if (!qword_1EC159F78)
  {
    type metadata accessor for AIDAServiceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557370C()
{
  v2 = qword_1EC159F60;
  if (!qword_1EC159F60)
  {
    type metadata accessor for AIDAServiceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C557378C()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 20));
  sub_1C5594CF4();
  return v2;
}

uint64_t type metadata accessor for LockDownModeRowElement()
{
  v1 = qword_1EC16A7F0;
  if (!qword_1EC16A7F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C5573848()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 24));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5573890()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 28));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55738D8()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5573920()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 36));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5573968()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 40));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55739B0()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 44));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55739F8()
{
  type metadata accessor for LockDownModeRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5573A90()
{
  type metadata accessor for LockDownModeRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C5573B54(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for LockDownModeRowElement() + 48));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C5573C40()
{
  type metadata accessor for LockDownModeRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5573CF0()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 48));

  return v2 & 1;
}

uint64_t sub_1C5573D3C(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for LockDownModeRowElement() + 48);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C5573D98()
{
  type metadata accessor for LockDownModeRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5573E30()
{
  type metadata accessor for LockDownModeRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C5573EF4(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for LockDownModeRowElement() + 52));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C5573FE0()
{
  type metadata accessor for LockDownModeRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5574090()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement() + 52));

  return v2 & 1;
}

uint64_t sub_1C55740DC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for LockDownModeRowElement() + 52);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C5574138@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v8 = sub_1C5574F24;
  v25 = 0;
  v24 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1A0);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v3 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1A8);
  v6 = *(*(v18 - 8) + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v3 - v5;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v3 - v5);
  v21 = &v3 - v7;
  v25 = &v3 - v7;
  v24 = v1;
  v9 = &v22;
  v23 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1B0);
  v11 = sub_1C5574F2C();
  sub_1C5412C88();
  v12 = 0;
  v13 = 1;
  sub_1C5596024();
  v15 = sub_1C55750D4();
  sub_1C5411148();
  sub_1C5595D84();
  sub_1C5372C00(v16);
  v19 = sub_1C557515C();
  sub_1C540EFD8(v20, v18, v21);
  sub_1C5372C00(v20);
  sub_1C5372D14(v21, v20);
  sub_1C540EFD8(v20, v18, v17);
  sub_1C5372C00(v20);
  return sub_1C5372C00(v21);
}

uint64_t sub_1C557437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = a1;
  v57 = &unk_1C55C98F8;
  v58 = &unk_1C55C98A0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v94 = 0;
  v89 = 0;
  v59 = sub_1C5596384();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v23 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E8);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (v65[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v23 - v67;
  v69 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v67);
  v70 = &v23 - v69;
  v71 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v69);
  v72 = &v23 - v71;
  v100 = &v23 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E0);
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (v74[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v23 - v76;
  v78 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v76);
  v79 = &v23 - v78;
  v80 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v78);
  v81 = &v23 - v80;
  v99 = &v23 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1B0);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v23 - v83;
  v85 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v83);
  v86 = &v23 - v85;
  v98 = &v23 - v85;
  v97 = a1;
  if (sub_1C55739F8())
  {
    v8 = v56;
    v50 = type metadata accessor for LockDownModeRowElement();
    v9 = (v8 + *(v50 + 24));
    v47 = *v9;
    v49 = v9[1];
    sub_1C5594CF4();
    v10 = (v8 + *(v50 + 32));
    v46 = *v10;
    v48 = v10[1];
    sub_1C5594CF4();
    v51 = sub_1C5575054();
    sub_1C5450D48(v47, v49, v46, v48, v50, v79);

    v90 = v50;
    v91 = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v79, v73, v81);
    v53 = v74[1];
    v54 = v74 + 1;
    v53(v79, v73);
    v89 = v79;
    v45 = v74[2];
    v44 = v74 + 2;
    v45(v77, v81, v73);
    sub_1C540EFD8(v77, v73, v79);
    v53(v77, v73);
    v45(v77, v79, v73);
    v87 = v50;
    v88 = v51;
    v11 = swift_getOpaqueTypeConformance2();
    sub_1C540FD1C(v77, v73, v64, OpaqueTypeConformance2, v11, v84);
    v53(v77, v73);
    sub_1C53730EC(v84, v86);
    v53(v79, v73);
    v53(v81, v73);
  }

  else
  {
    v12 = v56;
    v39 = type metadata accessor for LockDownModeRowElement();
    v13 = (v12 + v39[6]);
    v30 = *v13;
    v38 = v13[1];
    sub_1C5594CF4();
    v14 = (v12 + v39[7]);
    v27 = *v14;
    v37 = v14[1];
    sub_1C5594CF4();
    v15 = (v12 + v39[9]);
    v28 = *v15;
    v36 = v15[1];
    sub_1C5594CF4();
    v16 = (v12 + v39[10]);
    v29 = *v16;
    v35 = v16[1];
    sub_1C5594CF4();
    v17 = (v12 + v39[11]);
    v26 = *v17;
    v34 = v17[1];
    sub_1C5594CF4();
    (*(v60 + 16))(v63, v12, v59);
    v32 = sub_1C5573FE0();
    v33 = v18;
    v25 = v19;
    v40 = sub_1C5575054();
    v31 = v22;
    v22[7] = v40;
    sub_1C5452AB8(v30, v38, v27, v37, v28, v36, v29, v35, v70, v26, v34, v63, v32, v33, v25 & 1, v39);

    (*(v60 + 8))(v63, v59);

    v95 = v39;
    v96 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v70, v64, v72);
    v42 = v65[1];
    v43 = v65 + 1;
    v42(v70, v64);
    v94 = v70;
    v24 = v65[2];
    v23 = v65 + 2;
    v24(v68, v72, v64);
    sub_1C540EFD8(v68, v64, v70);
    v42(v68, v64);
    v24(v68, v70, v64);
    v92 = v39;
    v93 = v40;
    v20 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v68, v73, v64, v20, v41, v84);
    v42(v68, v64);
    sub_1C53730EC(v84, v86);
    v42(v70, v64);
    v42(v72, v64);
  }

  sub_1C53731FC(v86, v84);
  sub_1C5574F2C();
  sub_1C540EFD8(v84, v82, v55);
  sub_1C537330C(v84);
  return sub_1C537330C(v86);
}

unint64_t sub_1C5574F2C()
{
  v2 = qword_1EC15F1B8;
  if (!qword_1EC15F1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F1B0);
    type metadata accessor for LockDownModeRowElement();
    sub_1C5575054();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5575054()
{
  v2 = qword_1EC15F1C0;
  if (!qword_1EC15F1C0)
  {
    type metadata accessor for LockDownModeRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55750D4()
{
  v2 = qword_1EC15F1C8;
  if (!qword_1EC15F1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557515C()
{
  v2 = qword_1EC15F1F0;
  if (!qword_1EC15F1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F1A8);
    sub_1C55750D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557524C()
{
  v2 = qword_1EC15F1F8;
  if (!qword_1EC15F1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55753C8()
{
  v2 = qword_1EC15F200;
  if (!qword_1EC15F200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5575474@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v99 = a1;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F208);
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83);
  v87 = v43 - v86;
  v116 = v43 - v86;
  v88 = 0;
  v89 = sub_1C5596384();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88);
  v93 = v43 - v92;
  v94 = type metadata accessor for LockDownModeRowElement();
  v95 = (*(*(v94 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v98 = v43 - v95;
  v115 = v43 - v95;
  v114 = v2;
  v97 = *(v3 + 52);
  v96 = 1;
  v4 = sub_1C5409594();
  v5 = v99;
  v6 = v98 + v97;
  *v6 = v4 & v96;
  *(v6 + 8) = v7;
  v102 = v5[3];
  v100 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v102);
  v8 = v101;
  v9 = sub_1C5596F04();
  v103 = v8;
  v104 = v9;
  v105 = v10;
  v106 = v8;
  if (v8)
  {
    v45 = v106;
    v46 = 512;
  }

  else
  {
    v11 = v99;
    v12 = v105;
    v13 = (v98 + v94[5]);
    *v13 = v104;
    v13[1] = v12;
    v79 = v113;
    sub_1C5432498(v11, v113);
    v14 = v103;
    sub_1C5596374();
    v80 = v14;
    v81 = v14;
    if (v14)
    {
      v45 = v81;
      v46 = 514;
    }

    else
    {
      (*(v90 + 32))(v98, v93, v89);
      v75 = v99[3];
      v76 = v99[4];
      __swift_project_boxed_opaque_existential_0(v99, v75);
      sub_1C55753C8();
      v15 = v80;
      sub_1C5596F24();
      v77 = v15;
      v78 = v15;
      if (!v15)
      {
        v112 = 0;
        v16 = sub_1C5596D74();
        v71 = 0;
        v72 = v16;
        v73 = v17;
        v74 = 0;
        v18 = (v98 + v94[6]);
        *v18 = v16;
        v18[1] = v17;
        v111 = 1;
        v19 = sub_1C5596D74();
        v67 = 0;
        v68 = v19;
        v69 = v20;
        v70 = 0;
        v21 = (v98 + v94[7]);
        *v21 = v19;
        v21[1] = v20;
        v110 = 4;
        v22 = sub_1C5596D74();
        v63 = 0;
        v64 = v22;
        v65 = v23;
        v66 = 0;
        v24 = (v98 + v94[8]);
        *v24 = v22;
        v24[1] = v23;
        v109 = 2;
        v25 = sub_1C5596D74();
        v59 = 0;
        v60 = v25;
        v61 = v26;
        v62 = 0;
        v27 = (v98 + v94[9]);
        *v27 = v25;
        v27[1] = v26;
        v108 = 3;
        v28 = sub_1C5596D74();
        v55 = 0;
        v56 = v28;
        v57 = v29;
        v58 = 0;
        v30 = (v98 + v94[10]);
        *v30 = v28;
        v30[1] = v29;
        v107 = 5;
        v31 = sub_1C5596D74();
        v51 = 0;
        v52 = v31;
        v53 = v32;
        v54 = 0;
        v33 = (v98 + v94[11]);
        *v33 = v31;
        v33[1] = v32;
        sub_1C5594B64();
        v47 = sub_1C5594B44();
        v48 = MEMORY[0x1C69456F0]();
        MEMORY[0x1E69E5920](v47);
        v50 = (v98 + v94[12]);
        v49 = 1;
        v34 = sub_1C5409594();
        v35 = v50;
        v36 = v84;
        v37 = v34;
        v38 = v87;
        v40 = v39;
        v41 = v83;
        *v50 = v37 & v49;
        *(v35 + 1) = v40;
        (*(v36 + 8))(v38, v41);
        sub_1C5575FE8(v98, v82);
        __swift_destroy_boxed_opaque_existential_0(v99);
        return sub_1C557629C(v98);
      }

      v45 = v78;
      v46 = 515;
    }
  }

  v44 = v46;
  v43[1] = v45;
  __swift_destroy_boxed_opaque_existential_0(v99);
  if (v44)
  {
    (*(v90 + 8))(v98, v89);
  }

  if ((v44 & 2) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v44 & 4) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v44 & 8) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v44 & 0x10) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v44 & 0x20) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v44 & 0x40) != 0)
  {
    sub_1C5401ECC();
  }

  result = v98 + v94[13];
  sub_1C5373718();
  return result;
}

uint64_t sub_1C5575FE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(a2, a1);
  v30 = type metadata accessor for LockDownModeRowElement();
  v3 = (a1 + v30[5]);
  v13 = (a2 + v30[5]);
  *v13 = *v3;
  v14 = v3[1];
  sub_1C5594CF4();
  v13[1] = v14;
  v4 = v30[6];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1C5594CF4();
  *(v15 + 8) = v16;
  v5 = v30[7];
  v17 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v18 = *(a1 + v5 + 8);
  sub_1C5594CF4();
  *(v17 + 8) = v18;
  v6 = v30[8];
  v19 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v20 = *(a1 + v6 + 8);
  sub_1C5594CF4();
  *(v19 + 8) = v20;
  v7 = v30[9];
  v21 = a2 + v7;
  *(a2 + v7) = *(a1 + v7);
  v22 = *(a1 + v7 + 8);
  sub_1C5594CF4();
  *(v21 + 8) = v22;
  v8 = v30[10];
  v23 = a2 + v8;
  *(a2 + v8) = *(a1 + v8);
  v24 = *(a1 + v8 + 8);
  sub_1C5594CF4();
  *(v23 + 8) = v24;
  v9 = v30[11];
  v25 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v26 = *(a1 + v9 + 8);
  sub_1C5594CF4();
  *(v25 + 8) = v26;
  v10 = v30[12];
  v28 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v29 = *(a1 + v10 + 8);

  *(v28 + 8) = v29;
  v11 = v30[13];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  result = a2;
  *(v32 + 8) = v33;
  return result;
}

uint64_t sub_1C557629C(uint64_t a1)
{
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for LockDownModeRowElement();

  return a1;
}

uint64_t sub_1C557644C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C557378C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C5576494()
{
  v2 = qword_1EC15F210;
  if (!qword_1EC15F210)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5576528()
{
  v2 = qword_1EC15F218;
  if (!qword_1EC15F218)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55765BC()
{
  v2 = qword_1EC15F220;
  if (!qword_1EC15F220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5576684()
{
  v2 = qword_1EC15F228;
  if (!qword_1EC15F228)
  {
    type metadata accessor for LockDownModeRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557671C()
{
  v2 = qword_1EC15F230;
  if (!qword_1EC15F230)
  {
    type metadata accessor for LockDownModeRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F230);
    return WitnessTable;
  }

  return v2;
}

id sub_1C5576818()
{
  sub_1C543D95C();
  result = sub_1C5404B48();
  qword_1EC16A808 = result;
  return result;
}

uint64_t *sub_1C557684C()
{
  if (qword_1EC16A800 != -1)
  {
    swift_once();
  }

  return &qword_1EC16A808;
}

uint64_t static AccountInformationKey.defaultValue.getter()
{
  v0 = sub_1C557684C();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1C55768E4@<X0>(uint64_t *a1@<X8>)
{
  result = static AccountInformationKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t RUIDecodingUserInfo.account.getter()
{
  sub_1C557695C();
  sub_1C55969E4();
  return v1;
}

unint64_t sub_1C557695C()
{
  v2 = qword_1EC15F238;
  if (!qword_1EC15F238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F238);
    return WitnessTable;
  }

  return v2;
}

double sub_1C55769D8@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = RUIDecodingUserInfo.account.getter();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1C5576A44(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  RUIDecodingUserInfo.account.setter(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double RUIDecodingUserInfo.account.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1C557695C();
  sub_1C55969F4();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*RUIDecodingUserInfo.account.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = RUIDecodingUserInfo.account.getter();
  return sub_1C5576BB0;
}

double sub_1C5576BB0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return RUIDecodingUserInfo.account.setter(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  RUIDecodingUserInfo.account.setter(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5576C88@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID;
  v2 = sub_1C5594994();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5576CFC()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5576D34()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5576D6C()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1C5576D98@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID;
  v2 = sub_1C5594994();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5576E04()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1 & 1;
}

uint64_t sub_1C5576EA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 128))(v2) & 1;
}

uint64_t sub_1C5576F28(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 136))(v4 & 1);
}

uint64_t sub_1C5576FA8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1C5594E94();
}

void (*sub_1C557703C(void *a1))(void (***a1)(void, void))
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C557711C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5577198(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_1C55772EC(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C557711C();
  return sub_1C5577410;
}

void sub_1C5577410(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5577198(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5577198(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C557750C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C55775A4(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

void *sub_1C5577788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v77 = a1;
  v72 = a2;
  v79 = a3;
  v80 = a4;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v70 = a8;
  v71 = a9;
  v58 = "Fatal error";
  v59 = "Unexpectedly found nil while unwrapping an Optional value";
  v60 = "AppleAccountUI/CustodianListItem.swift";
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v97 = 0;
  v91 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v61 = 0;
  v62 = sub_1C5594994();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v66 = v30 - v65;
  v73 = sub_1C5594684();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v80);
  v78 = v30 - v76;
  v105 = v77;
  v106 = v10;
  v103 = v11;
  v104 = v12;
  v101 = v13;
  v102 = v14;
  v99 = v15;
  v100 = v16;
  v98 = v17;
  v97 = v9;
  sub_1C5594CF4();
  v93 = v79;
  v94 = v80;
  if (v80)
  {
    v95 = v93;
    v96 = v94;
  }

  else
  {
    v95 = sub_1C55965F4();
    v96 = v18;
    if (v94)
    {
      sub_1C5401ECC();
    }
  }

  v53 = v92;
  v92[0] = v95;
  v92[1] = v96;
  sub_1C5594674();
  v50 = sub_1C54141E8();
  v54 = sub_1C5596AC4();
  v55 = v19;
  v51 = *(v74 + 8);
  v52 = v74 + 8;
  v51(v78, v73);
  sub_1C5401ECC();
  v56 = sub_1C5596614();
  v91 = v56 & 1;

  if (v56)
  {
    sub_1C5594CF4();
    v48 = v67;
    v49 = v68;
  }

  else
  {
    sub_1C5594CF4();
    if (v80)
    {
      v46 = v79;
      v47 = v80;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v48 = v46;
    v49 = v47;
  }

  v20 = v57;
  v21 = v49;
  v57[4] = v48;
  v20[5] = v21;
  sub_1C5594CF4();
  v87 = v77;
  v88 = v72;
  if (v72)
  {
    v89 = v87;
    v90 = v88;
  }

  else
  {
    v89 = sub_1C55965F4();
    v90 = v22;
    if (v88)
    {
      sub_1C5401ECC();
    }
  }

  v42 = v86;
  v86[0] = v89;
  v86[1] = v90;
  sub_1C5594674();
  v43 = sub_1C5596AC4();
  v44 = v23;
  v51(v78, v73);
  sub_1C5401ECC();
  v45 = sub_1C5596614();
  v85 = v45 & 1;

  if (v45)
  {
    sub_1C5594CF4();
    v40 = v67;
    v41 = v68;
  }

  else
  {
    sub_1C5594CF4();
    if (v72)
    {
      v38 = v77;
      v39 = v72;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v40 = v38;
    v41 = v39;
  }

  v24 = v70;
  v25 = v69;
  v26 = v57;
  v27 = v41;
  v57[2] = v40;
  v26[3] = v27;
  sub_1C54F044C(v25, v24);
  if ((v70 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_31;
  }

  v36 = v69;
  v37 = v70;
  v34 = v70;
  v33 = v69;
  v82 = v69;
  v83 = v70;
  sub_1C544DE30(v69, v70);
  v28 = sub_1C55781A4(v33, v34);
  v35 = v28;
  if (!v28)
  {
    sub_1C544DEAC(v33, v34);
LABEL_31:
    sub_1C55965F4();
    v57[6] = sub_1C5595EF4();
    goto LABEL_32;
  }

  v32 = v35;
  v31 = v35;
  v81 = v35;

  v57[6] = v31;

  sub_1C544DEAC(v33, v34);
LABEL_32:
  (*(v63 + 16))(v66, v71, v62);
  (*(v63 + 32))(v57 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID, v66, v62);
  v30[0] = v57 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  v30[1] = &v84;
  swift_beginAccess();
  sub_1C542BAB8(1, v30[0]);
  swift_endAccess();
  (*(v63 + 8))(v71, v62);
  sub_1C54F0970(v69, v70);

  return v57;
}

uint64_t sub_1C55781A4(uint64_t a1, unint64_t a2)
{
  sub_1C5418C84();
  sub_1C544DE30(a1, a2);
  v7 = sub_1C54493D0(a1, a2);
  if (v7)
  {
    MEMORY[0x1E69E5928](v7);
    v3 = sub_1C5595ED4();

    MEMORY[0x1E69E5920](v7);
    sub_1C544DEAC(a1, a2);
    sub_1C5410D10();
    return v3;
  }

  else
  {
    sub_1C544DEAC(a1, a2);
    return 0;
  }
}

uint64_t sub_1C55782A8()
{
  sub_1C5401ECC();
  sub_1C5401ECC();
  sub_1C5410D10();
  v4 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID;
  v1 = sub_1C5594994();
  (*(*(v1 - 8) + 8))(v0 + v4);
  v5 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  (*(*(v2 - 8) + 8))(v0 + v5);
  return v6;
}

uint64_t sub_1C5578440@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CustodianListItem();
  result = sub_1C5594E34();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CustodianListItem()
{
  v1 = qword_1EC16A9B0;
  if (!qword_1EC16A9B0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1C5578508()
{
  v2 = qword_1EC15F240;
  if (!qword_1EC15F240)
  {
    sub_1C5594994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55785A4()
{
  updated = sub_1C5594994();
  if (v0 <= 0x3F)
  {
    updated = sub_1C5433B4C();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

AppleAccountUI::AAUISignOutFlowStage_optional __swiftcall AAUISignOutFlowStage.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1C5596E04();
  *v2 = "signoutOffer";
  *(v2 + 8) = 12;
  *(v2 + 16) = 2;
  *(v2 + 24) = "eraseAllData";
  *(v2 + 32) = 12;
  *(v2 + 40) = 2;
  *(v2 + 48) = "signoutRemainInformation";
  *(v2 + 56) = 24;
  *(v2 + 64) = 2;
  *(v2 + 72) = "signoutRemovedInformation";
  *(v2 + 80) = 25;
  *(v2 + 88) = 2;
  sub_1C540FCD8();
  v5 = sub_1C5596D64();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      default:

        *v4 = 4;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

unint64_t sub_1C55789F0()
{
  v2 = qword_1EC15F250;
  if (!qword_1EC15F250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5578B60@<X0>(uint64_t *a1@<X8>)
{
  result = AAUISignOutFlowStage.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5578B90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C5578BF8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5578C90(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___AAUISignOutOrEraseOfferFlow_navController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C55329E0;
}

uint64_t sub_1C5578D3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C5578DA4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5578E3C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___AAUISignOutOrEraseOfferFlow_presentingController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C55329E0;
}

uint64_t sub_1C5578EE8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_signOutFlowDirector);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C5578F50(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_signOutFlowDirector);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C557903C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_account);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C55790AC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_account);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55791B4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_dataclassActionsStore);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5579224(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_dataclassActionsStore);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C557932C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1C55793B0(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v5 = MEMORY[0x1E69E5928](a4);
  LODWORD(v12) = 0;
  BYTE4(v12) = 1;
  v11 = (*(ObjectType + 280))(a1, a2, a3, a4, v12, v5);
  MEMORY[0x1E69E5928](v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v11);
  return v11;
}

char *SignOutOrEraseOfferFlow.__allocating_init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  v9 = BYTE4(a5);
  v6 = objc_allocWithZone(v5);
  LODWORD(v14) = v8;
  BYTE4(v14) = v9 & 1;
  return SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(a1, a2, a3, a4, v14);
}

char *SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v25 = a5;
  v9 = a5;
  v10 = BYTE4(a5);
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v18 = a5;
  v19 = BYTE4(a5) & 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *OBJC_IVAR___AAUISignOutOrEraseOfferFlow_signOutFlowDirector = 0;
  v5 = &v24[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed];
  *v5 = 0;
  v5[4] = 1;
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  MEMORY[0x1E69E5928](a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a2);
  swift_endAccess();
  v7 = v24;
  MEMORY[0x1E69E5928](a3);
  *&v7[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_account] = a3;
  v8 = v24;
  MEMORY[0x1E69E5928](a4);
  *&v8[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_dataclassActionsStore] = a4;
  v11 = &v24[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed];
  swift_beginAccess();
  *v11 = v9;
  v11[4] = v10 & 1;
  swift_endAccess();
  v17.receiver = v24;
  v17.super_class = type metadata accessor for SignOutOrEraseOfferFlow();
  v16 = objc_msgSendSuper2(&v17, sel_init);
  MEMORY[0x1E69E5928](v16);
  v24 = v16;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v24);
  return v16;
}

uint64_t sub_1C5579AE8(uint64_t a1)
{
  v54 = a1;
  v73 = 0;
  v72 = 0;
  v53 = 0;
  v67 = 0;
  v66 = 0;
  v55 = sub_1C5594C74();
  v56 = *(v55 - 8);
  v57 = v56;
  MEMORY[0x1EEE9AC00](v54);
  v58 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v3;
  v72 = v1;
  v59 = sub_1C5578B90();
  if (v59)
  {
    v52 = v59;
    v50 = v59;
    v67 = v59;
    v51 = sub_1C5578D3C();
    if (v51)
    {
      v49 = v51;
      v46 = v51;
      v66 = v51;
      v45 = type metadata accessor for SignOutFlowDirector();
      swift_unknownObjectRetain();
      v4 = v50;
      v5 = v46;
      v47 = sub_1C557903C();
      v48 = sub_1C55791B4();
      v65 = sub_1C557932C();
      LODWORD(v64) = v65;
      BYTE4(v64) = BYTE4(v65);
      v6 = sub_1C557A1A0(v54, v50, v46, v47, v48, v64);
      sub_1C5578F50(v6);
      v7 = sub_1C5578EE8();
      v63 = v7;
      if (v7)
      {
        v44 = v63;

        sub_1C5410D10();
        v42 = 0;
        v62 = 0;
        v8 = AAUISignOutFlowStage.rawValue.getter();
        v9 = v44;
        v39 = v8;
        v40 = v10;
        sub_1C5594CF4();
        v41 = sub_1C5596554();
        v11 = v41;

        v60[0] = 0;
        v60[1] = v41;
        v61 = v42;
        v12 = *(*v9 + 408);
        v43 = v60;
        v12();
        sub_1C545CDC0(v43);
      }

      else
      {
        sub_1C5410D10();
      }
    }

    return v53;
  }

  else
  {
    v13 = v58;
    v14 = sub_1C54B0910();
    (*(v57 + 16))(v13, v14, v55);
    v36 = sub_1C5594C54();
    v33 = v36;
    v35 = sub_1C5596954();
    v34 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v37 = sub_1C5596E04();
    if (os_log_type_enabled(v36, v35))
    {
      v15 = v53;
      v24 = sub_1C5596A74();
      v20 = v24;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v22 = 0;
      v25 = sub_1C5419DC0(0);
      v23 = v25;
      v26 = sub_1C5419DC0(v22);
      v71 = v24;
      v70 = v25;
      v69 = v26;
      v27 = 0;
      v28 = &v71;
      sub_1C5419E14(0, &v71);
      sub_1C5419E14(v27, v28);
      v68 = v37;
      v29 = v18;
      MEMORY[0x1EEE9AC00](v18);
      v30 = &v18[-6];
      v18[-4] = v16;
      v18[-3] = &v70;
      v18[-2] = &v69;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v32 = v15;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v33, v34, "SignOutOfferFlow: Error invoking buddy, no navigation controller found.", v20, 2u);
        v18[1] = 0;
        sub_1C5419E74(v23);
        sub_1C5419E74(v26);
        sub_1C5596A54();

        v19 = v32;
      }
    }

    else
    {

      v19 = v53;
    }

    v18[0] = v19;

    (*(v57 + 8))(v58, v55);
    return v18[0];
  }
}

uint64_t sub_1C557A1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = BYTE4(a6);
  swift_allocObject();
  LODWORD(v14) = v7;
  BYTE4(v14) = v8 & 1;
  return sub_1C557AD54(a1, a2, a3, a4, a5, v14);
}

id SignOutOrEraseOfferFlow.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutOrEraseOfferFlow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C557A440(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533B48;
}

void (*sub_1C557A4D8(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533D64;
}

uint64_t sub_1C557A570()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C557A5C8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C557A648(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C557A6E0;
}

void sub_1C557A6E0(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1C5401EF8(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1C557A7A4()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1C557A7FC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C557A874()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C557A8C4(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_1C557A910()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C557A960(char a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
  return swift_endAccess();
}

uint64_t sub_1C557AA08()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1C557AA60(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C557AB34()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C557AB90(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1C557AC5C()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C557ACAC(char a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t sub_1C557AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = BYTE4(a6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 64) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  MEMORY[0x1E69E5928](a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a2);
  swift_endAccess();
  MEMORY[0x1E69E5928](a3);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a3);
  swift_endAccess();
  MEMORY[0x1E69E5928](a4);
  *(v6 + 56) = a4;
  MEMORY[0x1E69E5928](a5);
  *(v6 + 72) = a5;
  if (v16)
  {
    v10 = [objc_opt_self() sharedConnection];
    if (v10)
    {
      v8 = *MEMORY[0x1E69ADE60];
      MEMORY[0x1E69E5928](*MEMORY[0x1E69ADE60]);
      sub_1C5596574();
      v9 = sub_1C5596554();

      [v10 effectiveBoolValueForSetting_];
      MEMORY[0x1E69E5920](v9);
      MEMORY[0x1E69E5920](v10);
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }
  }

  type metadata accessor for MCRestrictedBoolType();
  sub_1C54BCE08();
  *(v11 + 96) = sub_1C5596E24() & 1;
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1C557B18C(uint64_t a1)
{
  v283 = a1;
  v348 = 0;
  v281 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v282 = 0;
  v340 = 0;
  v339 = 0;
  v333 = 0;
  v329 = 0;
  v328 = 0;
  v284 = sub_1C5594C74();
  v285 = *(v284 - 8);
  v286 = v285;
  v291 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v293 = (v291 + 15) & 0xFFFFFFFFFFFFFFF0;
  v287 = v76 - v293;
  MEMORY[0x1EEE9AC00](v2);
  v288 = v76 - v293;
  MEMORY[0x1EEE9AC00](v3);
  v289 = v76 - v293;
  MEMORY[0x1EEE9AC00](v4);
  v290 = v76 - v293;
  MEMORY[0x1EEE9AC00](v5);
  v292 = v76 - v293;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v294 = v76 - v293;
  v295 = *v8;
  v296 = v8[1];
  v297 = *(v8 + 16);
  v346 = v295;
  v347 = v296;
  v348 = v297;
  v345 = v1;
  v298 = (*(*v1 + 160))(v7);
  if (v298)
  {
    v279 = v298;
    v278 = v298;
    v340 = v298;
    if (v297)
    {
      if (v297 == 1)
      {
        v275 = v296;
        v141 = v296;
        v44 = v296;
        v333 = v141;
        v45 = v141;
        v332 = 0;
        v138 = AAUISignOutFlowStage.rawValue.getter();
        v139 = v46;
        sub_1C5594CF4();
        v140 = sub_1C5596554();
        v47 = v140;

        v331 = v140;
        v330 = v141;
        v142 = type metadata accessor for AAUIWelcomeFlowStage();
        sub_1C545CBC8();
        v143 = &v331;
        v144 = sub_1C55964D4();
        sub_1C5401EF8(v143);
        if (v144)
        {
          v48 = v280;

          (*(*v48 + 440))();
        }

        else
        {

          swift_getObjectType();
          v136 = 0;
          type metadata accessor for WelcomeFlowResult();
          v49 = v141;
          v137 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(1, v141, v136, v136);
          [v278 welcomeFlowEndedWithResult_];
          swift_unknownObjectRelease();
        }

        v146 = v282;
      }

      else
      {
        v274 = v296;
        v50 = v288;
        v116 = v296;
        v51 = v296;
        v339 = v116;
        v52 = sub_1C54B0910();
        (*(v286 + 16))(v50, v52, v284);
        v53 = v116;
        v124 = 7;
        v125 = swift_allocObject();
        *(v125 + 16) = v116;
        v135 = sub_1C5594C54();
        v117 = v135;
        v134 = sub_1C5596944();
        v118 = v134;
        v119 = 17;
        v128 = swift_allocObject();
        v120 = v128;
        v121 = 32;
        *(v128 + 16) = 32;
        v54 = swift_allocObject();
        v55 = v121;
        v129 = v54;
        v122 = v54;
        *(v54 + 16) = 8;
        v123 = v55;
        v56 = swift_allocObject();
        v57 = v125;
        v126 = v56;
        *(v56 + 16) = sub_1C55380D4;
        *(v56 + 24) = v57;
        v58 = swift_allocObject();
        v59 = v126;
        v132 = v58;
        v127 = v58;
        *(v58 + 16) = sub_1C5473EFC;
        *(v58 + 24) = v59;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
        v130 = sub_1C5596E04();
        v131 = v60;

        v61 = v128;
        v62 = v131;
        *v131 = sub_1C545C6D4;
        v62[1] = v61;

        v63 = v129;
        v64 = v131;
        v131[2] = sub_1C545C6D4;
        v64[3] = v63;

        v65 = v131;
        v66 = v132;
        v131[4] = sub_1C5473FA4;
        v65[5] = v66;
        sub_1C540FCD8();

        if (os_log_type_enabled(v135, v134))
        {
          v68 = v282;
          v109 = sub_1C5596A74();
          v106 = v109;
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
          v110 = sub_1C5419DC0(0);
          v108 = v110;
          v112 = 1;
          v111 = sub_1C5419DC0(1);
          v338 = v109;
          v337 = v110;
          v336 = v111;
          v113 = &v338;
          sub_1C5419E14(2, &v338);
          sub_1C5419E14(v112, v113);
          v334 = sub_1C545C6D4;
          v335 = v120;
          sub_1C5419E28(&v334, v113, &v337, &v336);
          v114 = v68;
          v115 = v68;
          if (v68)
          {
            v104 = 0;

            __break(1u);
          }

          else
          {
            v334 = sub_1C545C6D4;
            v335 = v122;
            sub_1C5419E28(&v334, &v338, &v337, &v336);
            v102 = 0;
            v103 = 0;
            v334 = sub_1C5473FA4;
            v335 = v127;
            sub_1C5419E28(&v334, &v338, &v337, &v336);
            v100 = 0;
            v101 = 0;
            _os_log_impl(&dword_1C5355000, v117, v118, "Deferring action from stage: %s", v106, 0xCu);
            sub_1C5419E74(v108);
            sub_1C5419E74(v111);
            sub_1C5596A54();

            v105 = v100;
          }
        }

        else
        {
          v69 = v282;

          v105 = v69;
        }

        v99 = v105;

        (*(v286 + 8))(v288, v284);
        swift_getObjectType();
        v97 = 0;
        type metadata accessor for WelcomeFlowResult();
        v70 = v116;
        v98 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(1, v116, v97, v97);
        [v278 welcomeFlowEndedWithResult_];
        swift_unknownObjectRelease();

        v146 = v99;
      }

      goto LABEL_59;
    }

    v276 = v295;
    v277 = v296;
    v266 = v296;
    v265 = v295;
    sub_1C5594CF4();
    v9 = v266;
    v329 = v265;
    v328 = v266;
    v327 = v266;
    v326 = 0;
    v267 = AAUISignOutFlowStage.rawValue.getter();
    v268 = v10;
    sub_1C5594CF4();
    v269 = sub_1C5596554();
    v11 = v269;

    v325 = v269;
    v271 = type metadata accessor for AAUIWelcomeFlowStage();
    v270 = v271;
    sub_1C545CA98();
    v272 = &v325;
    v273 = sub_1C5596E24();
    sub_1C5401EF8(v272);

    if (v273)
    {
      v262 = v299;
      swift_beginAccess();
      v263 = *(v280 + 48);
      swift_endAccess();
      v264 = v263 ^ 1;
    }

    else
    {
      v264 = 0;
    }

    v261 = v264;

    if (v261)
    {
      sub_1C557CE68();

      swift_unknownObjectRelease();
      return v282;
    }

    v12 = v266;
    v324 = 0;
    v254 = AAUISignOutFlowStage.rawValue.getter();
    v255 = v13;
    sub_1C5594CF4();
    v256 = sub_1C5596554();
    v14 = v256;

    v323 = v256;
    v322 = v266;
    v257 = sub_1C545CBC8();
    v258 = &v323;
    v259 = sub_1C55964D4();
    sub_1C5401EF8(v258);
    if (v259)
    {
      v15 = v294;

      v16 = sub_1C54B0910();
      (*(v286 + 16))(v15, v16, v284);
      v252 = sub_1C5594C54();
      v249 = v252;
      v251 = sub_1C5596944();
      v250 = v251;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v253 = sub_1C5596E04();
      if (os_log_type_enabled(v252, v251))
      {
        v17 = v282;
        v240 = sub_1C5596A74();
        v236 = v240;
        v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v238 = 0;
        v241 = sub_1C5419DC0(0);
        v239 = v241;
        v242 = sub_1C5419DC0(v238);
        v302[0] = v240;
        v301 = v241;
        v300 = v242;
        v243 = 0;
        v244 = v302;
        sub_1C5419E14(0, v302);
        sub_1C5419E14(v243, v244);
        v299[3] = v253;
        v245 = v76;
        MEMORY[0x1EEE9AC00](v76);
        v246 = &v76[-6];
        v76[-4] = v18;
        v76[-3] = &v301;
        v76[-2] = &v300;
        v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v248 = v17;
        if (v17)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v249, v250, "Completed Stage: Signout Offer. Starting SignOut information.", v236, 2u);
          v234 = 0;
          sub_1C5419E74(v239);
          sub_1C5419E74(v242);
          sub_1C5596A54();

          v235 = v248;
        }
      }

      else
      {

        v235 = v282;
      }

      v19 = v280;
      v232 = v235;

      v20 = (*(v286 + 8))(v294, v284);
      (*(*v19 + 432))(v20);
      v233 = v232;
LABEL_48:
      v145 = v233;

      v146 = v145;
LABEL_59:
      v96 = v146;
      swift_unknownObjectRelease();
      return v96;
    }

    v21 = v266;
    v321 = 2;
    v227 = AAUISignOutFlowStage.rawValue.getter();
    v228 = v22;
    sub_1C5594CF4();
    v229 = sub_1C5596554();
    v23 = v229;

    v320 = v229;
    v319 = v266;
    v230 = &v320;
    v231 = sub_1C55964D4();
    sub_1C5401EF8(v230);
    if (v231)
    {
      v24 = v292;

      v25 = sub_1C54B0910();
      (*(v286 + 16))(v24, v25, v284);
      v225 = sub_1C5594C54();
      v222 = v225;
      v224 = sub_1C5596944();
      v223 = v224;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v226 = sub_1C5596E04();
      if (os_log_type_enabled(v225, v224))
      {
        v26 = v282;
        v213 = sub_1C5596A74();
        v209 = v213;
        v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v211 = 0;
        v214 = sub_1C5419DC0(0);
        v212 = v214;
        v215 = sub_1C5419DC0(v211);
        v305 = v213;
        v304 = v214;
        v303 = v215;
        v216 = 0;
        v217 = &v305;
        sub_1C5419E14(0, &v305);
        sub_1C5419E14(v216, v217);
        v302[1] = v226;
        v218 = v76;
        MEMORY[0x1EEE9AC00](v76);
        v219 = &v76[-6];
        v76[-4] = v27;
        v76[-3] = &v304;
        v76[-2] = &v303;
        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v221 = v26;
        if (v26)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v222, v223, "Completed Stage: Sign Out Remain Information", v209, 2u);
          v207 = 0;
          sub_1C5419E74(v212);
          sub_1C5419E74(v215);
          sub_1C5596A54();

          v208 = v221;
        }
      }

      else
      {

        v208 = v282;
      }

      v206 = v208;

      (*(v286 + 8))(v292, v284);
      sub_1C5594CF4();
      if (v265)
      {
        v205 = v265;
        v204 = v265;
        v306[0] = sub_1C55965F4();
        v306[1] = v28;
        v203 = v306;
        sub_1C5596464();
        sub_1C5401ECC();
      }

      else
      {
        memset(v308, 0, sizeof(v308));
        v309 = 0;
      }

      if (v309)
      {
        if (swift_dynamicCast())
        {
          v201 = v306[2];
          v202 = v306[3];
        }

        else
        {
          v201 = 0;
          v202 = 0;
        }

        v199 = v201;
        v200 = v202;
      }

      else
      {
        sub_1C544435C(v308);
        v199 = 0;
        v200 = 0;
      }

      v29 = v280;
      v198 = v200;
      v196 = v199;
      sub_1C5594CF4();
      v197 = &v307;
      swift_beginAccess();
      v30 = v198;
      v29[10] = v196;
      v29[11] = v30;

      swift_endAccess();

      (*(*v29 + 448))(v31);
      v233 = v206;
      goto LABEL_48;
    }

    v32 = v266;
    v318 = 3;
    v191 = AAUISignOutFlowStage.rawValue.getter();
    v192 = v33;
    sub_1C5594CF4();
    v193 = sub_1C5596554();
    v34 = v193;

    v317 = v193;
    v316[1] = v266;
    v194 = &v317;
    v195 = sub_1C55964D4();
    sub_1C5401EF8(v194);
    if (v195)
    {
      v35 = v290;

      v36 = sub_1C54B0910();
      (*(v286 + 16))(v35, v36, v284);
      v189 = sub_1C5594C54();
      v186 = v189;
      v188 = sub_1C5596944();
      v187 = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v190 = sub_1C5596E04();
      if (os_log_type_enabled(v189, v188))
      {
        v37 = v282;
        v177 = sub_1C5596A74();
        v173 = v177;
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v175 = 0;
        v178 = sub_1C5419DC0(0);
        v176 = v178;
        v179 = sub_1C5419DC0(v175);
        v313[0] = v177;
        v312 = v178;
        v311 = v179;
        v180 = 0;
        v181 = v313;
        sub_1C5419E14(0, v313);
        sub_1C5419E14(v180, v181);
        v310 = v190;
        v182 = v76;
        MEMORY[0x1EEE9AC00](v76);
        v183 = &v76[-6];
        v76[-4] = v38;
        v76[-3] = &v312;
        v76[-2] = &v311;
        v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v185 = v37;
        if (v37)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v186, v187, "Completed Stage: Sign out Removed information", v173, 2u);
          v171 = 0;
          sub_1C5419E74(v176);
          sub_1C5419E74(v179);
          sub_1C5596A54();

          v172 = v185;
        }
      }

      else
      {

        v172 = v282;
      }

      v170 = v172;

      (*(v286 + 8))(v290, v284);
      swift_getObjectType();
      v168 = 0;
      type metadata accessor for WelcomeFlowResult();
      v39 = v266;
      v169 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(v168, v266, v168, v168);
      [v278 welcomeFlowEndedWithResult_];
      swift_unknownObjectRelease();
      v233 = v170;
      goto LABEL_48;
    }

    v40 = v289;

    v41 = sub_1C54B0910();
    (*(v286 + 16))(v40, v41, v284);
    v166 = sub_1C5594C54();
    v163 = v166;
    v165 = sub_1C5596954();
    v164 = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v167 = sub_1C5596E04();
    if (os_log_type_enabled(v166, v165))
    {
      v42 = v282;
      v154 = sub_1C5596A74();
      v150 = v154;
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v152 = 0;
      v155 = sub_1C5419DC0(0);
      v153 = v155;
      v156 = sub_1C5419DC0(v152);
      v316[0] = v154;
      v315 = v155;
      v314 = v156;
      v157 = 0;
      v158 = v316;
      sub_1C5419E14(0, v316);
      sub_1C5419E14(v157, v158);
      v313[1] = v167;
      v159 = v76;
      MEMORY[0x1EEE9AC00](v76);
      v160 = &v76[-6];
      v76[-4] = v43;
      v76[-3] = &v315;
      v76[-2] = &v314;
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v162 = v42;
      if (v42)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v163, v164, "Completed Stage: Unknown.", v150, 2u);
        v148 = 0;
        sub_1C5419E74(v153);
        sub_1C5419E74(v156);
        sub_1C5596A54();

        v149 = v162;
      }
    }

    else
    {

      v149 = v282;
    }

    v147 = v149;

    (*(v286 + 8))(v289, v284);

    swift_unknownObjectRelease();
    return v147;
  }

  else
  {
    v71 = v287;
    v72 = sub_1C54B0910();
    (*(v286 + 16))(v71, v72, v284);
    v94 = sub_1C5594C54();
    v91 = v94;
    v93 = sub_1C5596954();
    v92 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v95 = sub_1C5596E04();
    if (os_log_type_enabled(v94, v93))
    {
      v73 = v282;
      v82 = sub_1C5596A74();
      v78 = v82;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v80 = 0;
      v83 = sub_1C5419DC0(0);
      v81 = v83;
      v84 = sub_1C5419DC0(v80);
      v344 = v82;
      v343 = v83;
      v342 = v84;
      v85 = 0;
      v86 = &v344;
      sub_1C5419E14(0, &v344);
      sub_1C5419E14(v85, v86);
      v341 = v95;
      v87 = v76;
      MEMORY[0x1EEE9AC00](v76);
      v88 = &v76[-6];
      v76[-4] = v74;
      v76[-3] = &v343;
      v76[-2] = &v342;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v90 = v73;
      if (v73)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v91, v92, "SignOutFlowDirector: Missing reference to the buddy flow invoker.", v78, 2u);
        v76[1] = 0;
        sub_1C5419E74(v81);
        sub_1C5419E74(v84);
        sub_1C5596A54();

        v77 = v90;
      }
    }

    else
    {

      v77 = v282;
    }

    v76[0] = v77;

    (*(v286 + 8))(v287, v284);
    return v76[0];
  }
}

uint64_t sub_1C557CE68()
{
  swift_beginAccess();
  v4 = *(v0 + 96);
  v1 = swift_endAccess();
  if (v4)
  {
    (*(*v3 + 424))(v1);
  }

  else
  {
    (*(*v3 + 440))(v1);
  }

  swift_beginAccess();
  v3[48] = 1;
  return swift_endAccess();
}

void sub_1C557CF78()
{
  v55 = 0;
  v74 = 0;
  v72 = 0;
  v70 = 0;
  v36 = 0;
  v37 = sub_1C5596284();
  v38 = *(v37 - 8);
  v39 = v38;
  MEMORY[0x1EEE9AC00](0);
  v40 = v14 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C55962A4();
  v42 = *(v41 - 8);
  v43 = v42;
  MEMORY[0x1EEE9AC00](v55);
  v44 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C5594C74();
  v46 = v52;
  v47 = *(v52 - 8);
  v51 = v47;
  v48 = v47;
  v49 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v2 = v14 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v2;
  v74 = v3;
  v4 = sub_1C54B0910();
  (*(v51 + 16))(v2, v4, v52);
  v57 = sub_1C5594C54();
  v53 = v57;
  v56 = sub_1C5596944();
  v54 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v58 = sub_1C5596E04();
  if (os_log_type_enabled(v57, v56))
  {
    v5 = v36;
    v27 = sub_1C5596A74();
    v23 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v25 = 0;
    v28 = sub_1C5419DC0(0);
    v26 = v28;
    v29 = sub_1C5419DC0(v25);
    v62 = v27;
    v61 = v28;
    v60 = v29;
    v30 = 0;
    v31 = &v62;
    sub_1C5419E14(0, &v62);
    sub_1C5419E14(v30, v31);
    v59 = v58;
    v32 = v14;
    MEMORY[0x1EEE9AC00](v14);
    v33 = &v14[-6];
    v14[-4] = v6;
    v14[-3] = &v61;
    v14[-2] = &v60;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v35 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v53, v54, "Starting Sign Out or Erase offer.", v23, 2u);
      v21 = 0;
      sub_1C5419E74(v26);
      sub_1C5419E74(v29);
      sub_1C5596A54();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v48 + 8))(v50, v46);
  v15 = 0;
  v73 = 0;
  v14[0] = AAUISignOutFlowStage.rawValue.getter();
  v14[1] = v7;
  sub_1C5594CF4();
  v20 = sub_1C5596554();
  v8 = v20;

  v72 = v20;
  v71 = v15;
  v19 = sub_1C5580A68(&v71);
  v70 = v19;
  v16 = 0;
  sub_1C5444CF8();
  v18 = sub_1C5596984();

  swift_unknownObjectRetain();
  v9 = v20;
  v10 = swift_allocObject();
  v11 = v15;
  v12 = v19;
  v13 = v20;
  v10[2] = v45;
  v10[3] = v12;
  v10[4] = v13;
  v68 = sub_1C5581678;
  v69 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = v11;
  v66 = sub_1C544364C;
  v67 = &block_descriptor_21;
  v17 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v16, v44, v40, v17);
  (*(v39 + 8))(v40, v37);
  (*(v43 + 8))(v44, v41);
  _Block_release(v17);

  swift_unknownObjectRelease();
}

uint64_t sub_1C557D728(uint64_t a1, uint64_t a2, void *a3)
{
  v69 = a3;
  v68 = a2;
  v72 = a1;
  v73 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v62 = 0;
  v84 = 0;
  v82 = 0;
  v63 = sub_1C5594C74();
  v64 = *(v63 - 8);
  v65 = v64;
  v66 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](0);
  v67 = v20 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v3;
  v93 = v4;
  v92 = v5;
  type metadata accessor for SignOutActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();
  v6 = v69;

  v91[3] = type metadata accessor for SignOutFlowDirector();
  v91[4] = &off_1F447F528;
  v91[0] = v72;
  v71 = SignOutActionInvokingOBWelcomeController.__allocating_init(model:stage:flowDirector:)(v68, v69, v91);
  v7 = v71;
  v70 = &v90;
  swift_beginAccess();
  v8 = *(v72 + 40);
  *(v72 + 40) = v71;

  swift_endAccess();
  v74 = v72 + 32;
  v75 = &v89;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v76 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v61 = v76;
    v57 = v76;
    v84 = v76;
    v59 = &v83;
    swift_beginAccess();
    v60 = *(v72 + 40);
    v58 = v60;
    v9 = v60;
    swift_endAccess();
    if (v60)
    {
      v56 = v58;
      v52 = v58;
      v82 = v58;
      v53 = v72 + 32;
      v54 = &v80;
      swift_beginAccess();
      v55 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      v81 = v55;
      if (v55)
      {
        v51 = v81;
        v10 = v81;
        sub_1C5401EF8(&v81);
        v47 = sub_1C54F02F8();
        v49 = 1;
        v46 = sub_1C5596E04();
        v45 = v11;
        v12 = v52;
        v13 = v46;
        *v45 = v52;
        sub_1C540FCD8();
        v48 = v13;
        v50 = sub_1C5596704();

        [v51 setViewControllers:v50 animated:v49];
      }

      else
      {
        sub_1C5401EF8(&v81);
      }

      v42 = v72 + 24;
      v43 = &v78;
      swift_beginAccess();
      v44 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      v79 = v44;
      if (v44)
      {
        v41 = v79;
        v14 = v79;
        sub_1C5401EF8(&v79);
        [v41 presentViewController:v57 animated:1 completion:0];
      }

      else
      {
        sub_1C5401EF8(&v79);
      }

      return v62;
    }
  }

  v15 = v67;
  v16 = sub_1C54B0910();
  (*(v65 + 16))(v15, v16, v63);
  v38 = sub_1C5594C54();
  v35 = v38;
  v37 = sub_1C5596954();
  v36 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v39 = sub_1C5596E04();
  if (os_log_type_enabled(v38, v37))
  {
    v17 = v62;
    v26 = sub_1C5596A74();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v24 = 0;
    v27 = sub_1C5419DC0(0);
    v25 = v27;
    v28 = sub_1C5419DC0(v24);
    v88 = v26;
    v87 = v27;
    v86 = v28;
    v29 = 0;
    v30 = &v88;
    sub_1C5419E14(0, &v88);
    sub_1C5419E14(v29, v30);
    v85 = v39;
    v31 = v20;
    MEMORY[0x1EEE9AC00](v20);
    v32 = &v20[-6];
    v20[-4] = v18;
    v20[-3] = &v87;
    v20[-2] = &v86;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v34 = v17;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v35, v36, "Unable to start Sign Out offer.", v22, 2u);
      v20[1] = 0;
      sub_1C5419E74(v25);
      sub_1C5419E74(v28);
      sub_1C5596A54();

      v21 = v34;
    }
  }

  else
  {

    v21 = v62;
  }

  v20[0] = v21;

  (*(v65 + 8))(v67, v63);
  return v20[0];
}

void sub_1C557DE00()
{
  v45 = 0;
  v60 = 0;
  v26 = 0;
  v27 = sub_1C5596284();
  v28 = *(v27 - 8);
  v29 = v28;
  MEMORY[0x1EEE9AC00](0);
  v30 = &v7 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C55962A4();
  v32 = *(v31 - 8);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v45);
  v34 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C5594C74();
  v36 = v42;
  v37 = *(v42 - 8);
  v41 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v2 = &v7 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  v60 = v3;
  v4 = sub_1C54B0910();
  (*(v41 + 16))(v2, v4, v42);
  v47 = sub_1C5594C54();
  v43 = v47;
  v46 = sub_1C5596944();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v48 = sub_1C5596E04();
  if (os_log_type_enabled(v47, v46))
  {
    v5 = v26;
    v17 = sub_1C5596A74();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v15 = 0;
    v18 = sub_1C5419DC0(0);
    v16 = v18;
    v19 = sub_1C5419DC0(v15);
    v52 = v17;
    v51 = v18;
    v50 = v19;
    v20 = 0;
    v21 = &v52;
    sub_1C5419E14(0, &v52);
    sub_1C5419E14(v20, v21);
    v49 = v48;
    v22 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v23 = &v7 - 6;
    *(&v7 - 4) = v6;
    *(&v7 - 3) = &v51;
    *(&v7 - 2) = &v50;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v25 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v43, v44, "Starting DisembarkUI flow.", v13, 2u);
      v11 = 0;
      sub_1C5419E74(v16);
      sub_1C5419E74(v19);
      sub_1C5596A54();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v38 + 8))(v40, v36);
  v8 = 0;
  sub_1C5444CF8();
  v10 = sub_1C5596984();

  v58 = sub_1C55816EC;
  v59 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = 0;
  v56 = sub_1C544364C;
  v57 = &block_descriptor_25;
  v9 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v8, v34, v30, v9);
  (*(v29 + 8))(v30, v27);
  (*(v33 + 8))(v34, v31);
  _Block_release(v9);
}

uint64_t sub_1C557E464(uint64_t a1)
{
  v37 = a1;
  v36 = 0;
  v52 = 0;
  v35 = 0;
  v46 = 0;
  v38 = sub_1C5594C74();
  v39 = *(v38 - 8);
  v40 = v39;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v2;
  v42 = v2 + 32;
  v43 = &v51;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v44 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v34 = v44;
    v27 = v44;
    v46 = v44;
    v26 = objc_opt_self();
    v5 = v27;
    [v26 startDisembarkUIFlowWithParentViewController_];

    return v35;
  }

  else
  {
    v3 = v41;
    v4 = sub_1C54B0910();
    (*(v40 + 16))(v3, v4, v38);
    v32 = sub_1C5594C54();
    v29 = v32;
    v31 = sub_1C5596954();
    v30 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v33 = sub_1C5596E04();
    if (os_log_type_enabled(v32, v31))
    {
      v6 = v35;
      v17 = sub_1C5596A74();
      v13 = v17;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v15 = 0;
      v18 = sub_1C5419DC0(0);
      v16 = v18;
      v19 = sub_1C5419DC0(v15);
      v50 = v17;
      v49 = v18;
      v48 = v19;
      v20 = 0;
      v21 = &v50;
      sub_1C5419E14(0, &v50);
      sub_1C5419E14(v20, v21);
      v47 = v33;
      v22 = &v9;
      MEMORY[0x1EEE9AC00](&v9);
      v23 = &v9 - 6;
      *(&v9 - 4) = v7;
      *(&v9 - 3) = &v49;
      *(&v9 - 2) = &v48;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v25 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v29, v30, "Unable to start DisembarkUI flow. Navigation controller is nil.", v13, 2u);
        v11 = 0;
        sub_1C5419E74(v16);
        sub_1C5419E74(v19);
        sub_1C5596A54();

        v12 = v25;
      }
    }

    else
    {

      v12 = v35;
    }

    v10 = v12;

    (*(v40 + 8))(v41, v38);
    return v10;
  }
}

void sub_1C557E920()
{
  v54 = 0;
  v73 = 0;
  v71 = 0;
  v69 = 0;
  v35 = 0;
  v36 = sub_1C5596284();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x1EEE9AC00](0);
  v39 = v13 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C55962A4();
  v41 = *(v40 - 8);
  v42 = v41;
  MEMORY[0x1EEE9AC00](v54);
  v43 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C5594C74();
  v45 = v51;
  v46 = *(v51 - 8);
  v50 = v46;
  v47 = v46;
  v48 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v2 = v13 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v2;
  v73 = v3;
  v4 = sub_1C54B0910();
  (*(v50 + 16))(v2, v4, v51);
  v56 = sub_1C5594C54();
  v52 = v56;
  v55 = sub_1C5596944();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v57 = sub_1C5596E04();
  if (os_log_type_enabled(v56, v55))
  {
    v5 = v35;
    v26 = sub_1C5596A74();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v24 = 0;
    v27 = sub_1C5419DC0(0);
    v25 = v27;
    v28 = sub_1C5419DC0(v24);
    v61 = v26;
    v60 = v27;
    v59 = v28;
    v29 = 0;
    v30 = &v61;
    sub_1C5419E14(0, &v61);
    sub_1C5419E14(v29, v30);
    v58 = v57;
    v31 = v13;
    MEMORY[0x1EEE9AC00](v13);
    v32 = &v13[-6];
    v13[-4] = v6;
    v13[-3] = &v60;
    v13[-2] = &v59;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v34 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v52, v53, "Starting Sign Out Remain Information.", v22, 2u);
      v20 = 0;
      sub_1C5419E74(v25);
      sub_1C5419E74(v28);
      sub_1C5596A54();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v47 + 8))(v49, v45);
  v14 = 2;
  v72 = 2;
  v13[0] = AAUISignOutFlowStage.rawValue.getter();
  v13[1] = v7;
  sub_1C5594CF4();
  v19 = sub_1C5596554();
  v8 = v19;

  v71 = v19;
  v70 = v14;
  v18 = sub_1C5580A68(&v70);
  v69 = v18;
  v15 = 0;
  sub_1C5444CF8();
  v17 = sub_1C5596984();

  swift_unknownObjectRetain();
  v9 = v19;
  v10 = swift_allocObject();
  v11 = v18;
  v12 = v19;
  v10[2] = v44;
  v10[3] = v11;
  v10[4] = v12;
  v67 = sub_1C5581758;
  v68 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = 0;
  v65 = sub_1C544364C;
  v66 = &block_descriptor_32;
  v16 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v15, v43, v39, v16);
  (*(v38 + 8))(v39, v36);
  (*(v42 + 8))(v43, v40);
  _Block_release(v16);

  swift_unknownObjectRelease();
}

uint64_t sub_1C557F0CC(uint64_t a1, uint64_t a2, void *a3)
{
  v113 = a3;
  v112 = a2;
  v119 = a1;
  v118 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v103 = 0;
  v134 = 0;
  v132 = 0;
  v126 = 0;
  v124 = 0;
  v104 = sub_1C5594C74();
  v105 = *(v104 - 8);
  v106 = v105;
  v107 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](0);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v26 - v109;
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v26 - v109;
  v146 = v4;
  v145 = v5;
  v144 = v6;
  type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();
  v7 = v113;

  v143[3] = type metadata accessor for SignOutFlowDirector();
  v143[4] = &off_1F447F528;
  v143[0] = v119;
  v117 = 32;
  v111 = &v142;
  swift_beginAccess();
  v114 = *(v119 + 72);
  v8 = v114;
  swift_endAccess();
  v116 = SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(model:stage:flowDirector:dataclassActionsStore:)(v112, v113, v143, v114);
  v9 = v116;
  v115 = &v141;
  swift_beginAccess();
  v10 = *(v119 + 40);
  *(v119 + 40) = v116;

  swift_endAccess();
  v120 = &v140;
  swift_beginAccess();
  v121 = *(v119 + 96);
  swift_endAccess();
  if (v121)
  {
    v55 = v119 + 32;
    v56 = &v139;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v57 = Strong;
    swift_endAccess();
    if (Strong)
    {
      v54 = v57;
      v50 = v57;
      v134 = v57;
      v52 = &v133;
      swift_beginAccess();
      v53 = *(v119 + 40);
      v51 = v53;
      v20 = v53;
      swift_endAccess();
      if (v53)
      {
        v49 = v51;
        v48 = v51;
        v132 = v51;
        [v50 pushViewController_animated_];

        return v103;
      }
    }

    v21 = v108;
    v22 = sub_1C54B0910();
    (*(v106 + 16))(v21, v22, v104);
    v46 = sub_1C5594C54();
    v43 = v46;
    v45 = sub_1C5596954();
    v44 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v47 = sub_1C5596E04();
    if (os_log_type_enabled(v46, v45))
    {
      v23 = v103;
      v34 = sub_1C5596A74();
      v30 = v34;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v32 = 0;
      v35 = sub_1C5419DC0(0);
      v33 = v35;
      v36 = sub_1C5419DC0(v32);
      v138 = v34;
      v137 = v35;
      v136 = v36;
      v37 = 0;
      v38 = &v138;
      sub_1C5419E14(0, &v138);
      sub_1C5419E14(v37, v38);
      v135 = v47;
      v39 = &v26;
      MEMORY[0x1EEE9AC00](&v26);
      v40 = &v26 - 6;
      *(&v26 - 4) = v24;
      *(&v26 - 3) = &v137;
      *(&v26 - 2) = &v136;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v42 = v23;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v43, v44, "Unable to start sign out remain information flow. OnboardingViewController is nil.", v30, 2u);
        v28 = 0;
        sub_1C5419E74(v33);
        sub_1C5419E74(v36);
        sub_1C5596A54();

        v29 = v42;
      }
    }

    else
    {

      v29 = v103;
    }

    v27 = v29;

    (*(v106 + 8))(v108, v104);
    return v27;
  }

  else
  {
    v99 = v119 + 32;
    v100 = &v131;
    swift_beginAccess();
    v102 = swift_unknownObjectWeakLoadStrong();
    v101 = v102;
    swift_endAccess();
    if (v102)
    {
      v98 = v101;
      v94 = v101;
      v126 = v101;
      v96 = &v125;
      swift_beginAccess();
      v97 = *(v119 + 40);
      v95 = v97;
      v11 = v97;
      swift_endAccess();
      if (v97)
      {
        v93 = v95;
        v83 = v95;
        v124 = v95;
        v89 = 0;
        v85 = sub_1C54F02F8();
        v87 = 1;
        v84 = sub_1C5596E04();
        v82 = v12;
        v13 = v83;
        v14 = v84;
        *v82 = v83;
        sub_1C540FCD8();
        v86 = v14;
        v88 = sub_1C5596704();

        [v94 setViewControllers:v88 animated:v87];

        v90 = v119 + 24;
        v91 = &v122;
        swift_beginAccess();
        v92 = swift_unknownObjectWeakLoadStrong();
        swift_endAccess();
        v123 = v92;
        if (v92)
        {
          v81 = v123;
          v15 = v123;
          sub_1C5401EF8(&v123);
          [v81 presentViewController:v94 animated:1 completion:0];
        }

        else
        {
          sub_1C5401EF8(&v123);
        }

        return v103;
      }
    }

    v16 = v110;
    v17 = sub_1C54B0910();
    (*(v106 + 16))(v16, v17, v104);
    v79 = sub_1C5594C54();
    v76 = v79;
    v78 = sub_1C5596954();
    v77 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v80 = sub_1C5596E04();
    if (os_log_type_enabled(v79, v78))
    {
      v18 = v103;
      v67 = sub_1C5596A74();
      v63 = v67;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v65 = 0;
      v68 = sub_1C5419DC0(0);
      v66 = v68;
      v69 = sub_1C5419DC0(v65);
      v130 = v67;
      v129 = v68;
      v128 = v69;
      v70 = 0;
      v71 = &v130;
      sub_1C5419E14(0, &v130);
      sub_1C5419E14(v70, v71);
      v127 = v80;
      v72 = &v26;
      MEMORY[0x1EEE9AC00](&v26);
      v73 = &v26 - 6;
      *(&v26 - 4) = v19;
      *(&v26 - 3) = &v129;
      *(&v26 - 2) = &v128;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v75 = v18;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v76, v77, "Unable to start Sign Out flow.", v63, 2u);
        v61 = 0;
        sub_1C5419E74(v66);
        sub_1C5419E74(v69);
        sub_1C5596A54();

        v62 = v75;
      }
    }

    else
    {

      v62 = v103;
    }

    v59 = v62;

    (*(v106 + 8))(v110, v104);
    return v59;
  }
}

uint64_t sub_1C557FB80()
{
  v33 = 0;
  v41 = 0;
  v22 = 0;
  v30 = sub_1C5594C74();
  v24 = v30;
  v25 = *(v30 - 8);
  v29 = v25;
  v26 = v25;
  v27 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v0 = v7 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  v41 = v1;
  v2 = sub_1C54B0910();
  (*(v29 + 16))(v0, v2, v30);
  v35 = sub_1C5594C54();
  v31 = v35;
  v34 = sub_1C5596944();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v36 = sub_1C5596E04();
  if (os_log_type_enabled(v35, v34))
  {
    v3 = v22;
    v13 = sub_1C5596A74();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v11 = 0;
    v14 = sub_1C5419DC0(0);
    v12 = v14;
    v15 = sub_1C5419DC0(v11);
    v40 = v13;
    v39 = v14;
    v38 = v15;
    v16 = 0;
    v17 = &v40;
    sub_1C5419E14(0, &v40);
    sub_1C5419E14(v16, v17);
    v37 = v36;
    v18 = v7;
    MEMORY[0x1EEE9AC00](v7);
    v19 = &v7[-6];
    v7[-4] = v4;
    v7[-3] = &v39;
    v7[-2] = &v38;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v31, v32, "Starting Sign Out Removed Information.", v9, 2u);
      v7[2] = 0;
      sub_1C5419E74(v12);
      sub_1C5419E74(v15);
      sub_1C5596A54();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v26 + 8))(v28, v24);
  type metadata accessor for AAUIDeviceLocatorStore();
  v5 = sub_1C5463574();
  v7[1] = v5;

  (*(*v5 + 88))(sub_1C55817CC, v23);
}

double sub_1C557FFA8(unsigned int a1, uint64_t a2)
{
  v13 = a1;
  v18 = a2;
  v11[1] = 0;
  v19 = sub_1C55819E4;
  v46 = 0;
  v45 = 0;
  v42 = 0;
  v40 = 0;
  v20 = 0;
  v24 = sub_1C5596284();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v11[0] = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = v11 - v11[0];
  v28 = sub_1C55962A4();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v27 = v11 - v12;
  v46 = v2 & 1;
  v45 = v3;
  v14 = &v44;
  swift_beginAccess();
  *(v18 + 64) = v13;
  swift_endAccess();
  v17 = 3;
  v43 = 3;
  v15 = AAUISignOutFlowStage.rawValue.getter();
  v16 = v4;
  sub_1C5594CF4();
  v32 = sub_1C5596554();
  MEMORY[0x1E69E5928](v32);

  MEMORY[0x1E69E5920](v32);
  v42 = v32;
  v41 = v17;
  v31 = sub_1C5580A68(&v41);
  v40 = v31;
  sub_1C5444CF8();
  v30 = sub_1C5596984();

  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](v32);
  v5 = swift_allocObject();
  v6 = v19;
  v7 = v31;
  v8 = v5;
  v9 = v32;
  v8[2] = v18;
  v8[3] = v7;
  v8[4] = v9;
  v38 = v6;
  v39 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_1C544364C;
  v37 = &block_descriptor_70;
  v29 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v20, v27, v23, v29);
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
  MEMORY[0x1E69E5920](v30);
  swift_unknownObjectRelease();
  *&result = MEMORY[0x1E69E5920](v32).n128_u64[0];
  return result;
}

uint64_t sub_1C558037C(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = a3;
  v51 = a2;
  v57 = a1;
  v56 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v45 = 0;
  v63 = 0;
  v46 = sub_1C5594C74();
  v47 = *(v46 - 8);
  v48 = v47;
  v49 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](0);
  v50 = &v16 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v3;
  v72 = v4;
  v71 = v5;
  type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();
  v6 = v52;

  v70[3] = type metadata accessor for SignOutFlowDirector();
  v70[4] = &off_1F447F528;
  v70[0] = v57;
  v54 = SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(model:stage:flowDirector:)(v51, v52, v70);
  v7 = v54;
  v55 = v57 + 40;
  v53 = &v69;
  swift_beginAccess();
  v8 = *(v57 + 40);
  *(v57 + 40) = v54;

  swift_endAccess();
  v59 = &v68;
  swift_beginAccess();
  v60 = *(v57 + 40);
  v58 = v60;
  v9 = v60;
  swift_endAccess();
  if (v60)
  {
    v44 = v58;
    v35 = v58;
    v63 = v58;
    v36 = v57 + 32;
    v37 = &v61;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    v62 = Strong;
    if (Strong)
    {
      v34 = v62;
      v12 = v62;
      sub_1C5401EF8(&v62);
      [v34 pushViewController:v35 animated:1];
    }

    else
    {
      sub_1C5401EF8(&v62);
    }

    return v45;
  }

  else
  {
    v10 = v50;
    v11 = sub_1C54B0910();
    (*(v48 + 16))(v10, v11, v46);
    v42 = sub_1C5594C54();
    v39 = v42;
    v41 = sub_1C5596954();
    v40 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v43 = sub_1C5596E04();
    if (os_log_type_enabled(v42, v41))
    {
      v13 = v45;
      v24 = sub_1C5596A74();
      v20 = v24;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v22 = 0;
      v25 = sub_1C5419DC0(0);
      v23 = v25;
      v26 = sub_1C5419DC0(v22);
      v67 = v24;
      v66 = v25;
      v65 = v26;
      v27 = 0;
      v28 = &v67;
      sub_1C5419E14(0, &v67);
      sub_1C5419E14(v27, v28);
      v64 = v43;
      v29 = &v16;
      MEMORY[0x1EEE9AC00](&v16);
      v30 = &v16 - 6;
      *(&v16 - 4) = v14;
      *(&v16 - 3) = &v66;
      *(&v16 - 2) = &v65;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v32 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v39, v40, "Unable to start Sign Out removed information.", v20, 2u);
        v18 = 0;
        sub_1C5419E74(v23);
        sub_1C5419E74(v26);
        sub_1C5596A54();

        v19 = v32;
      }
    }

    else
    {

      v19 = v45;
    }

    v17 = v19;

    (*(v48 + 8))(v50, v46);
    return v17;
  }
}

char *sub_1C5580A68(uint64_t a1)
{
  v43 = a1;
  v51 = sub_1C55817D8;
  v55 = sub_1C5473EFC;
  v57 = sub_1C545C6D4;
  v59 = sub_1C545C6D4;
  v62 = sub_1C5473FA4;
  v79 = 0;
  v78 = 0;
  v41 = 0;
  v48 = sub_1C5594C74();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v44 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v1 = v19 - v44;
  v45 = v19 - v44;
  v49 = *v2;
  v79 = v49;
  v78 = v3;
  v4 = sub_1C54B0910();
  (*(v46 + 16))(v1, v4, v48);
  v50 = 17;
  v53 = 7;
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  v66 = sub_1C5594C54();
  v67 = sub_1C5596944();
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v52 = 32;
  v5 = swift_allocObject();
  v6 = v54;
  v56 = v5;
  *(v5 + 16) = v51;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v56;
  v63 = v7;
  *(v7 + 16) = v55;
  *(v7 + 24) = v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v61 = sub_1C5596E04();
  v64 = v9;

  v10 = v58;
  v11 = v64;
  *v64 = v57;
  v11[1] = v10;

  v12 = v60;
  v13 = v64;
  v64[2] = v59;
  v13[3] = v12;

  v14 = v63;
  v15 = v64;
  v64[4] = v62;
  v15[5] = v14;
  sub_1C540FCD8();

  if (os_log_type_enabled(v66, v67))
  {
    v16 = v41;
    v34 = sub_1C5596A74();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v35 = sub_1C5419DC0(0);
    v36 = sub_1C5419DC0(1);
    v37 = &v72;
    v72 = v34;
    v38 = &v71;
    v71 = v35;
    v39 = &v70;
    v70 = v36;
    sub_1C5419E14(2, &v72);
    sub_1C5419E14(1, v37);
    v68 = v57;
    v69 = v58;
    sub_1C5419E28(&v68, v37, v38, v39);
    v40 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v68 = v59;
      v69 = v60;
      sub_1C5419E28(&v68, &v72, &v71, &v70);
      v32 = 0;
      v68 = v62;
      v69 = v63;
      sub_1C5419E28(&v68, &v72, &v71, &v70);
      _os_log_impl(&dword_1C5355000, v66, v67, "Creating sign out model for stage: %s", v34, 0xCu);
      sub_1C5419E74(v35);
      sub_1C5419E74(v36);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x1E69E5920](v66);
  (*(v46 + 8))(v45, v48, v17);
  if (v49)
  {
    if (v49 == 2)
    {
      type metadata accessor for SignOutRemainInformationModel();
      v25 = &v74;
      v26 = 32;
      v27 = 0;
      swift_beginAccess();
      v29 = *(v42 + 56);
      MEMORY[0x1E69E5928](v29);
      swift_endAccess();
      v28 = &v73;
      swift_beginAccess();
      v30 = *(v42 + 96);
      swift_endAccess();
      return SignOutRemainInformationModel.__allocating_init(account:isEraseAllowed:)(v29, v30 & 1);
    }

    if (v49 == 3)
    {
      v19[2] = 0;
      v19[3] = type metadata accessor for SignOutRemovedInformationModel();
      v19[0] = &v77;
      v19[4] = 32;
      v19[5] = 0;
      swift_beginAccess();
      v20 = *(v42 + 56);
      MEMORY[0x1E69E5928](v20);
      swift_endAccess();
      v19[1] = &v76;
      swift_beginAccess();
      v21 = *(v42 + 64);
      swift_endAccess();
      sub_1C55817E0();
      v22 = sub_1C5404B48();
      v19[6] = &v75;
      swift_beginAccess();
      v23 = *(v42 + 80);
      v24 = *(v42 + 88);
      sub_1C5594CF4();
      swift_endAccess();
      return SignOutRemovedInformationModel.__allocating_init(account:isFindMyEnabled:walletCardListStore:theftAndLossDisclaimerLabel:)(v20, v21 & 1, v22, v23, v24);
    }
  }

  type metadata accessor for SignOutOrEraseOfferModel();
  return SignOutOrEraseOfferModel.__allocating_init()();
}

uint64_t sub_1C5581418()
{
  sub_1C55381C8();
  MEMORY[0x1C6948CE0](v0 + 3);
  MEMORY[0x1C6948CE0](v0 + 4);
  sub_1C5401EF8(v0 + 5);
  MEMORY[0x1E69E5920](v0[7]);
  MEMORY[0x1E69E5920](v0[9]);
  sub_1C5401ECC();
  return v2;
}

void (*sub_1C5581560(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 176))();
  return sub_1C545A074;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C55817E0()
{
  v2 = qword_1EC15F288;
  if (!qword_1EC15F288)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15F288);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C558185C()
{
  v2 = qword_1EC15F290;
  if (!qword_1EC15F290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F290);
    return WitnessTable;
  }

  return v2;
}

uint64_t dispatch thunk of SignOutOrEraseOfferFlow.__allocating_init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a5;
  BYTE4(v7) = BYTE4(a5) & 1;
  return (*(v5 + 280))(a1, a2, a3, a4, v7);
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1C5581A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  sub_1C5594CF4();
  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60);
  sub_1C5402CCC(v6, v2, a2);
}

uint64_t sub_1C5581AC8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1;
}

uint64_t sub_1C5581B64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 112))(v2);
}

uint64_t sub_1C5581BE4(uint64_t *a1, uint64_t *a2)
{
  sub_1C540955C(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 120))(v4);
}

uint64_t sub_1C5581C70()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C5581D14(void *a1))(void (***a1)(void, void))
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C5581E28()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5581EA4(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F320);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_1C5581FF8(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F320);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C5581E28();
  return sub_1C558211C;
}

void sub_1C558211C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5581EA4(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5581EA4(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C5582218@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C55822B0(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1C5582460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v24 = a2;
  v20 = a3;
  v23 = a4;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318);
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  v13 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v12 - v13;
  v31 = MEMORY[0x1EEE9AC00](v25);
  v30 = v5;
  v28 = v6;
  v29 = v7;
  v27 = v4;
  v17 = OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  v14 = 0;
  type metadata accessor for CustodianListItem();
  v8 = sub_1C5596E04();
  sub_1C5581A58(v8, v18);
  (*(v15 + 32))(v4 + v17, v18, v19);
  MEMORY[0x1E69E5928](v25);
  v9 = v24;
  v4[2] = v25;
  MEMORY[0x1E69E5928](v9);
  v4[3] = v24;
  sub_1C5594CF4();
  v10 = v23;
  v4[4] = v20;
  v4[5] = v10;
  v22 = v4[3];
  MEMORY[0x1E69E5928](v22);

  v21 = v26;
  [v22 setDataDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v22);

  MEMORY[0x1E69E5920](v24);
  MEMORY[0x1E69E5920](v25);
  return v26;
}

uint64_t sub_1C5582664()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  sub_1C5401ECC();
  v3 = OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318);
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C5582774@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReviewCustodianListViewModel();
  result = sub_1C5594E34();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ReviewCustodianListViewModel()
{
  v1 = qword_1EC16AF60;
  if (!qword_1EC16AF60)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void sub_1C5582824()
{
  v3 = *(v0 + 24);
  v4 = [v3 localContacts];
  if (v4)
  {
    sub_1C5403328();
    v1 = sub_1C5596714();
    MEMORY[0x1E69E5920](v4);
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E69E5920](v3);
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
    sub_1C55837B0();
    sub_1C55966B4();
  }
}

uint64_t sub_1C55829CC(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v109 = a1;
  v106 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v125 = 0;
  v123 = 0;
  v102 = sub_1C5594C74();
  v103 = *(v102 - 8);
  v104 = v103;
  MEMORY[0x1EEE9AC00](v102 - 8);
  v105 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v106);
  v108 = v25 - v107;
  v111 = sub_1C5594994();
  v112 = *(v111 - 8);
  v113 = v112;
  v114 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = v25 - v116;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v117 = v25 - v116;
  v132 = v25 - v116;
  v118 = *v5;
  v131 = v118;
  v130 = v6;
  v119 = [v118 custodianID];
  if (v119)
  {
    v100 = v119;
    v99 = v119;
    sub_1C5594974();
    (*(v113 + 32))(v108, v115, v111);
    (*(v113 + 56))(v108, 0, 1, v111);
  }

  else
  {
    (*(v113 + 56))(v108, 1, 1, v111);
  }

  if ((*(v113 + 48))(v108, 1, v111) == 1)
  {
    v7 = v105;
    sub_1C54EB940(v108);
    v8 = sub_1C54B05F8();
    (*(v104 + 16))(v7, v8, v102);
    v97 = sub_1C5594C54();
    v94 = v97;
    v96 = sub_1C5596954();
    v95 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v98 = sub_1C5596E04();
    if (os_log_type_enabled(v97, v96))
    {
      v39 = v101;
      v31 = sub_1C5596A74();
      v27 = v31;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v29 = 0;
      v32 = sub_1C5419DC0(0);
      v30 = v32;
      v33 = sub_1C5419DC0(v29);
      v129 = v31;
      v128 = v32;
      v127 = v33;
      v34 = 0;
      v35 = &v129;
      sub_1C5419E14(0, &v129);
      sub_1C5419E14(v34, v35);
      v126 = v98;
      v36 = v25;
      MEMORY[0x1EEE9AC00](v25);
      v37 = &v25[-6];
      v25[-4] = v22;
      v25[-3] = &v128;
      v24 = &v127;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      v23 = v39;
      sub_1C55966B4();
      v40 = v23;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v94, v95, "Local contact does not contain custodianID. Skipping adding it to the list.", v27, 2u);
        v25[1] = 0;
        sub_1C5419E74(v30);
        sub_1C5419E74(v33);
        sub_1C5596A54();

        v26 = v40;
      }
    }

    else
    {

      v26 = v101;
    }

    v25[0] = v26;

    (*(v104 + 8))(v105, v102);
    return v25[0];
  }

  (*(v113 + 32))(v117, v108, v111);
  v91 = type metadata accessor for Status();
  v9 = sub_1C5596E04();
  *v10 = 2;
  v10[1] = 1;
  v10[2] = 3;
  sub_1C540FCD8();
  v88 = v9;
  v92 = sub_1C5462C0C();
  v90 = sub_1C5596874();
  v89 = v90;
  v125 = v90;
  v124 = [v118 trustedContactStatus];
  v93 = sub_1C5596884();

  if ((v93 & 1) == 0)
  {
    goto LABEL_11;
  }

  v85 = v101;
  v120 = (*(*v110 + 112))();
  v82 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v25[-4];
  v24 = v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60);
  sub_1C5583B88();
  v12 = v85;
  v13 = sub_1C55966C4();
  v86 = v12;
  v87 = v13;
  if (v12)
  {
    __break(1u);
LABEL_11:
    v80 = 0;
    v81 = v101;
    goto LABEL_12;
  }

  v79 = v87;
  sub_1C541439C();
  v80 = v79 ^ 1;
  v81 = v86;
LABEL_12:
  v77 = v81;
  v78 = v80;

  if (v78)
  {
    v74 = type metadata accessor for CustodianListItem();
    v75 = v74;
    v76 = [v118 fullName];
    if (v76)
    {
      v73 = v76;
      v68 = v76;
      v69 = sub_1C5596574();
      v70 = v14;

      v71 = v69;
      v72 = v70;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v65 = v72;
    v66 = v71;
    v67 = [v118 firstName];
    if (v67)
    {
      v64 = v67;
      v59 = v67;
      v60 = sub_1C5596574();
      v61 = v15;

      v62 = v60;
      v63 = v61;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v53 = v63;
    v54 = v62;
    v55 = [v118 handle];
    v56 = sub_1C5596574();
    v57 = v16;
    v58 = [v118 imageData];
    if (v58)
    {
      v52 = v58;
      v47 = v58;
      v48 = sub_1C55948D4();
      v49 = v17;

      v50 = v48;
      v51 = v49;
    }

    else
    {
      v50 = 0;
      v51 = 0xF000000000000000;
    }

    v43 = v51;
    v42 = v50;
    (*(v113 + 16))(v115, v117, v111);
    v18 = sub_1C55776F0(v66, v65, v54, v53, v56, v57, v42, v43, v115);
    v19 = v110;
    v46 = v18;

    v123 = v46;

    v122 = v46;
    v20 = *(*v19 + 128);
    v44 = &v121;
    v45 = v20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60);
    sub_1C5596754();
    v45(v44, 0);
  }

  (*(v113 + 8))(v117, v111);
  result = v77;
  v41 = v77;
  return result;
}

unint64_t sub_1C55837B0()
{
  v2 = qword_1EC15F328;
  if (!qword_1EC15F328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BCD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5583838(uint64_t *a1, uint64_t a2)
{
  v7 = a1;
  v8 = a2;
  v15 = 0;
  v14 = 0;
  v11 = sub_1C5594994();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v12 = &v5 - v6;
  v15 = *v7;
  v14 = v3;
  (*(v9 + 16))(v2);
  v13 = sub_1C5594964();
  (*(v9 + 8))(v12, v11);
  return v13 & 1;
}

uint64_t sub_1C55839C0()
{
  updated = sub_1C5583AB8();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1C5583AB8()
{
  v4 = qword_1EC15F330;
  if (!qword_1EC15F330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60);
    v3 = sub_1C5594EA4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15F330);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C5583B88()
{
  v2 = qword_1EC15F398;
  if (!qword_1EC15F398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F398);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5583C10()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5583C80(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *SignInDataclassActionMergeListModel.init(dataclassList:)(uint64_t a1)
{
  v109 = a1;
  v130 = 0;
  v129 = 0;
  v121 = 0;
  v110 = 0;
  v111 = sub_1C5595774();
  v112 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v113 = v44 - v112;
  v129 = v3;
  v130 = v1;
  *&v1[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController] = v2;
  v4 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout] = 2;
  *&v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image] = v2;
  v8 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_imageName];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentView] = v2;
  *&v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryView] = v2;
  v9 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL];
  *v10 = 0;
  *(v10 + 1) = 0;
  v114 = v130;
  v11 = type metadata accessor for SignInDataclassActionMergeListModel();
  v128.receiver = v114;
  v128.super_class = v11;
  v115 = objc_msgSendSuper2(&v128, sel_init);
  MEMORY[0x1E69E5928](v115);
  v130 = v115;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v105 = v130;
    v101 = 0;
    v102 = sub_1C5418C84();
    v104 = sub_1C55965F4();
    v103 = v12;
    sub_1C5439370();
    v13 = sub_1C5576C44();
    v107 = sub_1C55584D0(v104, v103, v13);
    v106 = &v105[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image];
    v108 = &v116;
    swift_beginAccess();
    v14 = *v106;
    *v106 = v107;
  }

  else
  {
    v97 = v130;
    v93 = 0;
    v94 = sub_1C5418C84();
    v96 = sub_1C55965F4();
    v95 = v15;
    sub_1C5439370();
    v16 = sub_1C5576C44();
    v99 = sub_1C55584D0(v96, v95, v16);
    v98 = &v97[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image];
    v100 = &v127;
    swift_beginAccess();
    v14 = *v98;
    *v98 = v99;
  }

  MEMORY[0x1E69E5920](v14);
  swift_endAccess();
  v45 = v130;
  v83 = 1;
  sub_1C55965F4();
  v44[1] = v17;
  v46 = sub_1C54637B4();
  v48 = v18;

  v47 = &v45[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title];
  v49 = &v126;
  v86 = 33;
  v87 = 0;
  swift_beginAccess();
  v19 = v47;
  v20 = v48;
  *v47 = v46;
  v19[1] = v20;

  swift_endAccess();
  v51 = v130;
  sub_1C55965F4();
  v50 = v21;
  v52 = sub_1C54637B4();
  v54 = v22;

  v53 = &v51[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText];
  v55 = &v125;
  swift_beginAccess();
  v23 = v53;
  v24 = v54;
  *v53 = v52;
  v23[1] = v24;

  swift_endAccess();
  v57 = v130;
  sub_1C55965F4();
  v56 = v25;
  v58 = sub_1C54637B4();
  v60 = v26;

  v59 = &v57[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton];
  v61 = &v124;
  swift_beginAccess();
  v27 = v59;
  v28 = v60;
  *v59 = v58;
  v27[1] = v28;

  swift_endAccess();
  v63 = v130;
  sub_1C55965F4();
  v62 = v29;
  v64 = sub_1C54637B4();
  v66 = v30;

  v65 = &v63[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton];
  v67 = &v123;
  swift_beginAccess();
  v31 = v65;
  v32 = v66;
  *v65 = v64;
  v31[1] = v32;

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F400);
  sub_1C5594CF4();
  v68 = v131;
  sub_1C554D990(v109, v131);
  v69 = v122;
  memcpy(v122, v68, sizeof(v122));
  v92 = sub_1C5595484();
  v121 = v92;
  v70 = sub_1C5596E04();
  sub_1C5595764();
  v33 = v70;
  sub_1C540FCD8();
  v71 = v33;
  sub_1C555C910();
  sub_1C5596B04();
  sub_1C5595474();
  v72 = &v130[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout];
  v73 = &v120;
  swift_beginAccess();
  *v72 = 3;
  swift_endAccess();
  v74 = v130;
  MEMORY[0x1E69E5928](v92);
  v75 = &v74[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController];
  v76 = &v119;
  swift_beginAccess();
  v34 = *v75;
  *v75 = v92;
  MEMORY[0x1E69E5920](v34);
  swift_endAccess();
  v78 = v130;
  sub_1C55965F4();
  v77 = v35;
  v79 = sub_1C54637B4();
  v81 = v36;

  v80 = &v78[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle];
  v82 = &v118;
  swift_beginAccess();
  v37 = v80;
  v38 = v81;
  *v80 = v79;
  v37[1] = v38;

  swift_endAccess();
  v85 = v130;
  sub_1C55965F4();
  v84 = v39;
  v88 = sub_1C54637B4();
  v90 = v40;

  v89 = &v85[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL];
  v91 = &v117;
  swift_beginAccess();
  v41 = v89;
  v42 = v90;
  *v89 = v88;
  v41[1] = v42;

  swift_endAccess();
  MEMORY[0x1E69E5920](v92);

  MEMORY[0x1E69E5920](v130);
  return v115;
}

uint64_t sub_1C5584708()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5584850(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C55848EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5584990(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5584B7C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5584CC4(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5584D60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xE8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5584E04(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5584FF0()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5585138(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C55851D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x100))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5585280(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x108))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5585474()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55855BC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5585658@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x118))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5585704(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x120))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C558588C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5585948(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C55859B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x130))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5585A5C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x138))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1C5585BD8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5585CB0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5585D48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x148))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5585DF0(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5585FD8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5586120(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C55861BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x160))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5586268(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5586400()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C55864D8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5586570@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x178))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5586618(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55867A4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C558687C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5586914@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x190))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C55869BC(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5586BA4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5586CEC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5586D88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1A8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5586E34(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5587028()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5587170(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C558720C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C55872B8(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id SignInDataclassActionMergeListModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassActionMergeListModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C55880DC()
{
  sub_1C5439370();
  type metadata accessor for ResourceBundleClass();
  result = sub_1C54B72C4();
  qword_1EC16B278 = result;
  return result;
}

uint64_t *sub_1C5588124()
{
  if (qword_1EC16B270 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B278;
}

uint64_t sub_1C5588184()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B500);
  __swift_project_value_buffer(v2, qword_1EC16B500);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558821C()
{
  if (qword_1EC16B280 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B500);
}

uint64_t sub_1C5588288@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558821C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55882EC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B518);
  __swift_project_value_buffer(v2, qword_1EC16B518);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5588384()
{
  if (qword_1EC16B288 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B518);
}

uint64_t sub_1C55883F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588384();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588454()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B530);
  __swift_project_value_buffer(v2, qword_1EC16B530);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C55884EC()
{
  if (qword_1EC16B290 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B530);
}

uint64_t sub_1C5588558@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55884EC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55885BC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B548);
  __swift_project_value_buffer(v2, qword_1EC16B548);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5588654()
{
  if (qword_1EC16B298 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B548);
}

uint64_t sub_1C55886C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588654();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588724()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B560);
  __swift_project_value_buffer(v2, qword_1EC16B560);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C55887BC()
{
  if (qword_1EC16B2A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B560);
}

uint64_t sub_1C5588828@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55887BC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558888C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B578);
  __swift_project_value_buffer(v2, qword_1EC16B578);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5588924()
{
  if (qword_1EC16B2A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B578);
}

uint64_t sub_1C5588990@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588924();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55889F4()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B590);
  __swift_project_value_buffer(v2, qword_1EC16B590);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5588A8C()
{
  if (qword_1EC16B2B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B590);
}

uint64_t sub_1C5588AF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588A8C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588B5C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B5A8);
  __swift_project_value_buffer(v2, qword_1EC16B5A8);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5588BF4()
{
  if (qword_1EC16B2B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5A8);
}

uint64_t sub_1C5588C60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588BF4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588CC4()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B5C0);
  __swift_project_value_buffer(v2, qword_1EC16B5C0);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5588D5C()
{
  if (qword_1EC16B2C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5C0);
}

uint64_t sub_1C5588DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588D5C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588E2C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B5D8);
  __swift_project_value_buffer(v2, qword_1EC16B5D8);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5588EC4()
{
  if (qword_1EC16B2C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5D8);
}

uint64_t sub_1C5588F30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588EC4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588F94()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B5F0);
  __swift_project_value_buffer(v2, qword_1EC16B5F0);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558902C()
{
  if (qword_1EC16B2D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5F0);
}

uint64_t sub_1C5589098@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558902C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55890FC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B608);
  __swift_project_value_buffer(v2, qword_1EC16B608);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589194()
{
  if (qword_1EC16B2D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B608);
}

uint64_t sub_1C5589200@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589194();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589264()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B620);
  __swift_project_value_buffer(v2, qword_1EC16B620);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C55892FC()
{
  if (qword_1EC16B2E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B620);
}

uint64_t sub_1C5589368@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55892FC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55893CC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B638);
  __swift_project_value_buffer(v2, qword_1EC16B638);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589464()
{
  if (qword_1EC16B2E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B638);
}

uint64_t sub_1C55894D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589464();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589534()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B650);
  __swift_project_value_buffer(v2, qword_1EC16B650);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C55895CC()
{
  if (qword_1EC16B2F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B650);
}

uint64_t sub_1C5589638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55895CC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558969C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B668);
  __swift_project_value_buffer(v2, qword_1EC16B668);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589734()
{
  if (qword_1EC16B2F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B668);
}

uint64_t sub_1C55897A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589734();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589804()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B680);
  __swift_project_value_buffer(v2, qword_1EC16B680);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558989C()
{
  if (qword_1EC16B300 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B680);
}

uint64_t sub_1C5589908@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558989C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558996C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B698);
  __swift_project_value_buffer(v2, qword_1EC16B698);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589A04()
{
  if (qword_1EC16B308 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B698);
}

uint64_t sub_1C5589A70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589A04();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589AD4()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B6B0);
  __swift_project_value_buffer(v2, qword_1EC16B6B0);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589B6C()
{
  if (qword_1EC16B310 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6B0);
}

uint64_t sub_1C5589BD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589B6C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589C3C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B6C8);
  __swift_project_value_buffer(v2, qword_1EC16B6C8);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589CD4()
{
  if (qword_1EC16B318 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6C8);
}

uint64_t sub_1C5589D40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589CD4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589DA4()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B6E0);
  __swift_project_value_buffer(v2, qword_1EC16B6E0);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589E3C()
{
  if (qword_1EC16B320 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6E0);
}

uint64_t sub_1C5589EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589E3C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589F0C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B6F8);
  __swift_project_value_buffer(v2, qword_1EC16B6F8);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C5589FA4()
{
  if (qword_1EC16B328 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6F8);
}

uint64_t sub_1C558A010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589FA4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A074()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B710);
  __swift_project_value_buffer(v2, qword_1EC16B710);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558A10C()
{
  if (qword_1EC16B330 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B710);
}

uint64_t sub_1C558A178@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A10C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A1DC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B728);
  __swift_project_value_buffer(v2, qword_1EC16B728);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558A274()
{
  if (qword_1EC16B338 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B728);
}

uint64_t sub_1C558A2E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A274();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A344()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B740);
  __swift_project_value_buffer(v2, qword_1EC16B740);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558A3DC()
{
  if (qword_1EC16B340 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B740);
}

uint64_t sub_1C558A448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A3DC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A4AC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B758);
  __swift_project_value_buffer(v2, qword_1EC16B758);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558A544()
{
  if (qword_1EC16B348 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B758);
}

uint64_t sub_1C558A5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A544();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A614()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B770);
  __swift_project_value_buffer(v2, qword_1EC16B770);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558A6AC()
{
  if (qword_1EC16B350 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B770);
}

uint64_t sub_1C558A718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A6AC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A77C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B788);
  __swift_project_value_buffer(v2, qword_1EC16B788);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558A814()
{
  if (qword_1EC16B358 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B788);
}

uint64_t sub_1C558A880@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A814();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A8E4()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B7A0);
  __swift_project_value_buffer(v2, qword_1EC16B7A0);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558A97C()
{
  if (qword_1EC16B360 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7A0);
}

uint64_t sub_1C558A9E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A97C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AA4C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B7B8);
  __swift_project_value_buffer(v2, qword_1EC16B7B8);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558AAE4()
{
  if (qword_1EC16B368 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7B8);
}

uint64_t sub_1C558AB50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558AAE4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558ABB4()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B7D0);
  __swift_project_value_buffer(v2, qword_1EC16B7D0);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558AC4C()
{
  if (qword_1EC16B370 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7D0);
}

uint64_t sub_1C558ACB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558AC4C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AD1C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B7E8);
  __swift_project_value_buffer(v2, qword_1EC16B7E8);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558ADB4()
{
  if (qword_1EC16B378 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7E8);
}

uint64_t sub_1C558AE20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558ADB4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AE84()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B800);
  __swift_project_value_buffer(v2, qword_1EC16B800);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558AF1C()
{
  if (qword_1EC16B380 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B800);
}

uint64_t sub_1C558AF88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558AF1C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AFEC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B818);
  __swift_project_value_buffer(v2, qword_1EC16B818);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558B084()
{
  if (qword_1EC16B388 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B818);
}

uint64_t sub_1C558B0F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B084();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B154()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B830);
  __swift_project_value_buffer(v2, qword_1EC16B830);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558B1EC()
{
  if (qword_1EC16B390 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B830);
}

uint64_t sub_1C558B258@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B1EC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B2BC()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B848);
  __swift_project_value_buffer(v2, qword_1EC16B848);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558B354()
{
  if (qword_1EC16B398 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B848);
}

uint64_t sub_1C558B3C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B354();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B424()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B860);
  __swift_project_value_buffer(v2, qword_1EC16B860);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558B4BC()
{
  if (qword_1EC16B3A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B860);
}

uint64_t sub_1C558B528@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B4BC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B58C()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B878);
  __swift_project_value_buffer(v2, qword_1EC16B878);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558B624()
{
  if (qword_1EC16B3A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B878);
}

uint64_t sub_1C558B690@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B624();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B6F4()
{
  v2 = sub_1C5594C24();
  __swift_allocate_value_buffer(v2, qword_1EC16B890);
  __swift_project_value_buffer(v2, qword_1EC16B890);
  sub_1C55965F4();
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0);
  return sub_1C5594C14();
}

uint64_t sub_1C558B78C()
{
  if (qword_1EC16B3B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B890);
}

uint64_t sub_1C558B7F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B78C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EC16B3C8 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EC16B3BC > a2)
  {
    return 1;
  }

  if (dword_1EC16B3BC < a2)
  {
    return 0;
  }

  return dword_1EC16B3C0 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EC16B3D0 == -1)
  {
    if (qword_1EC16B3D8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC16B3D8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC16B3C8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC16B3BC > a3)
      {
        return 1;
      }

      if (dword_1EC16B3BC >= a3)
      {
        return dword_1EC16B3C0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC16B3D8;
  if (qword_1EC16B3D8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC16B3D8 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1C69482D0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC16B3BC, &dword_1EC16B3C0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

void _AAUISignInViewControllerCommonInit_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 userPersonaNickName];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Initializing AAUISignInViewController with persona type %@", &v4, 0xCu);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t CKBalloonViewForClass_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    dlopenHelper_ChatKit(a1);
  }

  return MEMORY[0x1EEDF3140]();
}

uint64_t humanReadableUpdateName_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    dlopenHelper_SoftwareUpdateServices(a1);
  }

  return MEMORY[0x1EEE416C8]();
}

double gotLoadHelper_x8__OBJC_CLASS___CKColoredBalloonView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CKTextBalloonView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CKUIBehavior(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

void gotLoadHelper_x26__OBJC_CLASS___CKUIBehavior(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    dlopenHelper_ChatKit(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___SUManagerClient(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    return dlopenHelper_SoftwareUpdateServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SUScanOptions(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    return dlopenHelper_SoftwareUpdateServices(result);
  }

  return result;
}

double gotLoadHelper_x8__SUErrorDomain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    return dlopenHelper_SoftwareUpdateServices(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_ChatKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ChatKit.framework/ChatKit", 0);
  atomic_store(1u, &dlopenHelperFlag_ChatKit);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_SoftwareUpdateServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework/SoftwareUpdateServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SoftwareUpdateServices);
  return a1;
}