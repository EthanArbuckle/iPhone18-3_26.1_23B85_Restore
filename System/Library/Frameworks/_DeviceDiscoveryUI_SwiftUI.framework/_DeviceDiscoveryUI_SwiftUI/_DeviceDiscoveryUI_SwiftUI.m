uint64_t sub_23B6DF690()
{
  v0 = sub_23B6E8F68();
  __swift_allocate_value_buffer(v0, qword_27E17A758);
  __swift_project_value_buffer(v0, qword_27E17A758);
  return sub_23B6E8F58();
}

uint64_t sub_23B6DF710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = 1;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v16 = type metadata accessor for DevicePicker(0, &v31);
  v17 = &a9[v16[15]];
  v18 = &a9[v16[17]];
  v35 = 0;
  sub_23B6E9128();
  v19 = v32;
  *v18 = v31;
  *(v18 + 1) = v19;
  v20 = v16[13];
  v21 = sub_23B6E8FD8();
  (*(*(v21 - 8) + 32))(&a9[v20], a1, v21);
  v22 = &a9[v16[14]];
  *v22 = a2;
  *(v22 + 1) = a3;
  v22[16] = a4 & 1;
  *v17 = a6;
  v17[1] = a7;
  v23 = v16[16];
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v24 = type metadata accessor for DevicePicker.PickerContentMode(0, &v31);
  return (*(*(v24 - 8) + 32))(&a9[v23], a5, v24);
}

uint64_t DevicePicker.init(_:onSelect:label:fallback:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a3;
  v43 = a8;
  v34 = a7;
  v35 = a6;
  v32[1] = a5;
  v33 = a4;
  v41 = a2;
  v39 = a9;
  v38 = a10;
  v15 = sub_23B6E8FD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a11;
  v44[0] = a11;
  v44[1] = a12;
  v36 = a13;
  v37 = a14;
  v44[2] = a13;
  v44[3] = a14;
  v21 = type metadata accessor for DevicePicker.PickerContentMode(0, v44);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = v32 - v29;
  sub_23B6DFB60();
  if (sub_23B6E9248())
  {
    v33();
  }

  else
  {
    v35();
  }

  swift_storeEnumTagMultiPayload();
  (*(v16 + 16))(v20, a1, v15);
  (*(v22 + 16))(v27, v30, v21);
  sub_23B6DF710(v20, v41, v42, 0, v27, v43, v38, v40, v39, a12, v36, v37);
  (*(v16 + 8))(a1, v15);
  return (*(v22 + 8))(v30, v21);
}

unint64_t sub_23B6DFB60()
{
  result = qword_27E17A770;
  if (!qword_27E17A770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E17A770);
  }

  return result;
}

uint64_t DevicePicker.init<A>(_:access:onSelect:label:fallback:parameters:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v77 = a8;
  v78 = a7;
  v75[1] = a6;
  v76 = a5;
  v95 = a4;
  v85 = a3;
  v94 = a2;
  v91 = a9;
  v96 = a16;
  v100 = a13;
  v101 = a15;
  v98 = a11;
  v102 = a12;
  v103 = a10;
  v105[0] = a12;
  v105[1] = a13;
  v105[2] = a15;
  v105[3] = a16;
  v18 = type metadata accessor for DevicePicker.PickerContentMode(0, v105);
  v92 = *(v18 - 8);
  v93 = v18;
  v19 = *(v92 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v89 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v90 = v75 - v25;
  v26 = *(a14 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v24, v28);
  v82 = v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29, v30);
  v33 = v75 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = v75 - v35;
  v88 = sub_23B6E8FD8();
  v87 = *(v88 - 8);
  v37 = *(v87 + 64);
  v39 = MEMORY[0x28223BE20](v88, v38);
  v86 = v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v99 = v75 - v42;
  v97 = a1;
  v79 = a17;
  sub_23B6E8FB8();
  v104 = v26;
  v43 = *(v26 + 16);
  v43(v36, a1, a14);
  v84 = v33;
  v43(v33, v36, a14);
  v44 = (*(v26 + 80) + 64) & ~*(v26 + 80);
  v81 = v44;
  v45 = (v27 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v48 = v100;
  v47 = v101;
  *(v46 + 2) = v102;
  *(v46 + 3) = v48;
  *(v46 + 4) = a14;
  *(v46 + 5) = v47;
  v49 = v96;
  *(v46 + 6) = v96;
  *(v46 + 7) = a17;
  v80 = *(v104 + 32);
  v80(&v46[v44], v36, a14);
  v83 = v46;
  v50 = &v46[v45];
  v51 = v97;
  v52 = v98;
  *v50 = v103;
  v50[1] = v52;
  v53 = v82;
  v43(v82, v51, a14);
  v54 = v79;
  v55 = swift_allocObject();
  v57 = v100;
  v56 = v101;
  *(v55 + 2) = v102;
  *(v55 + 3) = v57;
  *(v55 + 4) = a14;
  *(v55 + 5) = v56;
  *(v55 + 6) = v49;
  *(v55 + 7) = v54;
  v80(&v55[v81], v53, a14);
  v58 = &v55[v45];
  v59 = v95;
  *v58 = v85;
  *(v58 + 1) = v59;
  sub_23B6DFB60();
  v60 = v103;
  sub_23B6E09BC(v103);

  if (v60)
  {
    v60(v61);
  }

  v62 = v84;
  sub_23B6E8FC8();

  v63 = *(v104 + 8);
  v104 += 8;
  v63(v62, a14);
  v64 = sub_23B6E9248();

  v66 = v90;
  if (v64)
  {
    v76(v65);
  }

  else
  {
    v78(v65);
  }

  v67 = v93;
  swift_storeEnumTagMultiPayload();
  v68 = v87;
  v69 = v86;
  v70 = v88;
  (*(v87 + 16))(v86, v99, v88);
  v71 = v92;
  v72 = v89;
  (*(v92 + 16))(v89, v66, v67);
  sub_23B6DF710(v69, sub_23B6E0928, v55, 1, v72, sub_23B6E02CC, v83, v102, v91, v100, v101, v96);

  sub_23B6E09CC(v103);
  v73 = sub_23B6E8F08();
  (*(*(v73 - 8) + 8))(v94, v73);
  v63(v97, a14);
  (*(v71 + 8))(v66, v67);
  return (*(v68 + 8))(v99, v70);
}

uint64_t sub_23B6E022C()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  if (*(v0 + v3))
  {
    v4 = *(v0 + v3 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_23B6E02CC()
{
  v1 = *(v0 + 56);
  v2 = v0 + ((*(*(*(v0 + 32) - 8) + 64) + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v2)
  {
    v3 = *(v2 + 8);
    (*v2)();
  }

  v4 = sub_23B6E8FC8();

  return v4;
}

void sub_23B6E03A0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v36 = a4;
  v37 = a3;
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_23B6E9288();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v40 = &v34 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v34 - v14;
  if (qword_27E17A750 != -1)
  {
    swift_once();
  }

  v16 = sub_23B6E8F68();
  v38 = __swift_project_value_buffer(v16, qword_27E17A758);
  v17 = sub_23B6E8F48();
  v18 = sub_23B6E9238();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = a2;
    v20 = AssociatedTypeWitness;
    v21 = v15;
    v22 = v6;
    v23 = v11;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_23B6DE000, v17, v18, "Converting result to endpoint", v19, 2u);
    v25 = v24;
    v11 = v23;
    v6 = v22;
    v15 = v21;
    AssociatedTypeWitness = v20;
    MEMORY[0x23EEA4660](v25, -1, -1);
  }

  v26 = v40;
  sub_23B6E8FA8();
  if ((*(v11 + 48))(v26, 1, AssociatedTypeWitness) == 1)
  {
    (*(v35 + 8))(v26, v6);
    v27 = sub_23B6E8F48();
    v28 = sub_23B6E9228();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23B6DE000, v27, v28, "Failed to get endpoint", v29, 2u);
      MEMORY[0x23EEA4660](v29, -1, -1);
    }
  }

  else
  {
    v30 = v11;
    (*(v11 + 32))(v15, v26, AssociatedTypeWitness);
    v31 = sub_23B6E8F48();
    v32 = sub_23B6E9238();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23B6DE000, v31, v32, "Returning endpoint to client", v33, 2u);
      MEMORY[0x23EEA4660](v33, -1, -1);
    }

    v37(v15);
    (*(v30 + 8))(v15, AssociatedTypeWitness);
  }
}

uint64_t sub_23B6E0890()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

void sub_23B6E0928(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v6 = v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v1[6];
  v8 = v1[7];
  sub_23B6E03A0(a1, v1 + v5, *v6, *(v6 + 1));
}

uint64_t sub_23B6E09BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B6E09CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void DevicePicker.init<A>(for:onSelectEndpoint:label:fallback:parameters:)()
{
  sub_23B6DF884();

  sub_23B6E92B8();
  __break(1u);
}

uint64_t DevicePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a3;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v104 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v103 = &v97 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v102 = &v97 - v13;
  v112 = v12;
  v14 = v12 - 8;
  v107 = *(v12 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v114 = v17;
  v105 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 24);
  v19 = *(v14 + 40);
  v20 = sub_23B6E9188();
  v111 = *(v20 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v109 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A778, &qword_23B6E96D0);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_23B6E14CC();
  v126 = v24;
  v127 = v20;
  *&v130 = v20;
  *(&v130 + 1) = v24;
  v120 = v26;
  v121 = WitnessTable;
  *&v131 = WitnessTable;
  *(&v131 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = *(OpaqueTypeMetadata2 - 8);
  v28 = *(v110 + 64);
  v30 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v29);
  v108 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v106 = &v97 - v34;
  v35 = *(v18 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33, v37);
  v39 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v18;
  *&v41 = v18;
  *(&v41 + 1) = v3;
  v42 = *(v14 + 48);
  v101 = v19;
  *&v43 = v19;
  v119 = v42;
  *(&v43 + 1) = v42;
  v123 = v43;
  v124 = v41;
  v131 = v43;
  v130 = v41;
  v44 = type metadata accessor for DevicePicker.PickerContentMode(0, &v130);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  v49 = &v97 - v48;
  v115 = OpaqueTypeMetadata2;
  v116 = v3;
  v50 = sub_23B6E9028();
  v117 = *(v50 - 8);
  v118 = v50;
  v51 = *(v117 + 64);
  MEMORY[0x28223BE20](v50, v52);
  v125 = &v97 - v53;
  v54 = v113;
  (*(v45 + 16))(v49, v113 + *(v14 + 72), v44);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v102;
    v56 = v116;
    (*(v4 + 32))(v102, v49, v116);
    v57 = *(v4 + 16);
    v58 = v103;
    v57(v103, v55, v56);
    v59 = v104;
    v57(v104, v58, v56);
    *&v130 = v127;
    *(&v130 + 1) = v126;
    v61 = v120;
    v60 = v121;
    *&v131 = v121;
    *(&v131 + 1) = v120;
    swift_getOpaqueTypeConformance2();
    v62 = v119;
    sub_23B6E1A14(v59, v115, v56);
    v63 = *(v4 + 8);
    v63(v59, v56);
    v63(v58, v56);
    v63(v55, v56);
  }

  else
  {
    v99 = v35;
    v64 = *(v35 + 32);
    v100 = v40;
    v64(v39, v49, v40);
    v65 = v107;
    v104 = *(v107 + 16);
    v66 = v105;
    v67 = v54;
    v68 = v54;
    v69 = v112;
    (v104)(v105, v68, v112);
    v70 = *(v65 + 80);
    v98 = v39;
    v71 = (v70 + 48) & ~v70;
    v72 = swift_allocObject();
    v73 = v123;
    *(v72 + 16) = v124;
    *(v72 + 32) = v73;
    v107 = *(v65 + 32);
    v74 = (v107)(v72 + v71, v66, v69);
    MEMORY[0x28223BE20](v74, v75);
    *(&v97 - 3) = v124;
    v76 = v109;
    sub_23B6E9178();
    v103 = sub_23B6E1798(v69);
    (v104)(v66, v67, v69);
    v77 = swift_allocObject();
    v78 = v123;
    *(v77 + 16) = v124;
    *(v77 + 32) = v78;
    v79 = v77 + v71;
    v80 = v127;
    (v107)(v79, v66, v69);
    v81 = v126;
    v82 = v120;
    v96 = v120;
    v83 = v121;
    v94 = v126;
    v95 = v121;
    v84 = v108;
    sub_23B6E9118();

    v61 = v82;

    v60 = v83;

    (*(v111 + 8))(v76, v80);
    *&v130 = v80;
    *(&v130 + 1) = v81;
    *&v131 = v83;
    *(&v131 + 1) = v82;
    swift_getOpaqueTypeConformance2();
    v85 = v110;
    v86 = *(v110 + 16);
    v87 = v106;
    v88 = v115;
    v86(v106, v84, v115);
    v89 = *(v85 + 8);
    v89(v84, v88);
    v86(v84, v87, v88);
    v62 = v119;
    sub_23B6E191C(v84, v88);
    v89(v84, v88);
    v89(v87, v88);
    (*(v99 + 8))(v98, v100);
  }

  *&v130 = v127;
  *(&v130 + 1) = v126;
  *&v131 = v60;
  *(&v131 + 1) = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v129 = v62;
  v90 = v118;
  swift_getWitnessTable();
  v91 = v117;
  v92 = v125;
  (*(v117 + 16))(v122, v125, v90);
  return (*(v91 + 8))(v92, v90);
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

unint64_t sub_23B6E14CC()
{
  result = qword_27E17A780;
  if (!qword_27E17A780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A778, &qword_23B6E96D0);
    sub_23B6E1558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17A780);
  }

  return result;
}

unint64_t sub_23B6E1558()
{
  result = qword_27E17A788[0];
  if (!qword_27E17A788[0])
  {
    type metadata accessor for DevicePickerVC(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E17A788);
  }

  return result;
}

uint64_t sub_23B6E15B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v5 = a1 + *(type metadata accessor for DevicePicker(0, &v8) + 68);
  v6 = *(v5 + 8);
  LOBYTE(v8) = *v5;
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9138();
  sub_23B6E9148();
}

uint64_t sub_23B6E1668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_23B6E1798(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9158();
  return v4;
}

uint64_t sub_23B6E17FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v8 = type metadata accessor for DevicePicker(0, v25);
  v9 = v8[13];
  v10 = sub_23B6E8FD8();
  (*(*(v10 - 8) + 16))(a6, a1 + v9, v10);
  v11 = v8[15];
  v12 = (a1 + v8[14]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = a1 + v11;
  v17 = *(a1 + v11);
  v18 = *(v16 + 8);
  v19 = type metadata accessor for DevicePickerVC(0);
  v20 = (a6 + *(v19 + 24));
  *v20 = v17;
  v20[1] = v18;
  v21 = a6 + *(v19 + 20);
  *v21 = v13;
  *(v21 + 8) = v14;
  *(v21 + 16) = v15;
  sub_23B6E2E84();
  sub_23B6E09BC(v17);
  LOBYTE(v17) = sub_23B6E90D8();
  v22 = sub_23B6E8FF8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A778, &qword_23B6E96D0);
  v24 = a6 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v17;
  return result;
}

uint64_t sub_23B6E191C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B6E9008();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23B6E9018();
}

uint64_t sub_23B6E1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23B6E9008();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23B6E9018();
}

uint64_t sub_23B6E1B30()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for DevicePicker(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_23B6E15B0(v6, v1, v2, v3, v4);
}

uint64_t sub_23B6E1BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_23B6E1668(v1[6], v1[2], a1);
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v20 = v1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v5 = type metadata accessor for DevicePicker(0, &v20);
  v19 = *(*(v5 - 1) + 64);
  v6 = v0 + ((*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80));
  v7 = v5[13];
  v8 = sub_23B6E8FD8();
  (*(*(v8 - 8) + 8))(&v6[v7], v8);
  v9 = &v6[v5[14]];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  sub_23B6E1B28();
  v13 = &v6[v5[15]];
  if (*v13)
  {
    v14 = *(v13 + 1);
  }

  v15 = v5[16];
  v20 = v1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  type metadata accessor for DevicePicker.PickerContentMode(0, &v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v2;
  }

  else
  {
    v16 = v1;
  }

  (*(*(v16 - 8) + 8))(&v6[v15]);
  v17 = *&v6[v5[17] + 8];

  return swift_deallocObject();
}

uint64_t sub_23B6E1D84@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for DevicePicker(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_23B6E17FC(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_23B6E1E68(char a1)
{
  sub_23B6E92C8();
  MEMORY[0x23EEA4390](a1 & 1);
  return sub_23B6E92E8();
}

BOOL sub_23B6E1EB0(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_23B6E1E30(*a1, *a2);
}

uint64_t sub_23B6E1EC8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23B6E1E68(*v1);
}

uint64_t sub_23B6E1EDC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_23B6E1E40(a1, *v2);
}

uint64_t sub_23B6E1EF0(uint64_t a1, void *a2)
{
  sub_23B6E92C8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_23B6E1E40(v9, *v2);
  return sub_23B6E92E8();
}

uint64_t sub_23B6E1FA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_23B6E1FF0(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v21 = v1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v5 = type metadata accessor for DevicePicker.OnSelectKind(319, &v21);
  if (v6 <= 0x3F)
  {
    v16 = 0;
    v21 = v5;
    v7 = sub_23B6E8FD8();
    if (v8 <= 0x3F)
    {
      v17 = 0;
      v22 = v7;
      v23 = &type metadata for DDSelectionHandler;
      sub_23B6E2618();
      if (v10 <= 0x3F)
      {
        v18 = 0;
        v24 = v9;
        v15[0] = v1;
        v15[1] = v2;
        v15[2] = v3;
        v15[3] = v4;
        v11 = type metadata accessor for DevicePicker.PickerContentMode(319, v15);
        if (v12 <= 0x3F)
        {
          v19 = 0;
          v25 = v11;
          sub_23B6E267C();
          if (v14 <= 0x3F)
          {
            v20 = 0;
            v26 = v13;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B6E20F4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23B6E8FD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(a3 + 24) - 8);
  v11 = *(v7 + 80);
  if (*(v10 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(v10 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + 31;
  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v14 = *(v10 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v15 = ((v12 + ((((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v9 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v15)) == 0)
  {
LABEL_31:
    v23 = (a1 + v11 + 1) & ~v11;
    if (v8 < 0x7FFFFFFE)
    {
      v25 = *((v13 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      if ((v25 + 1) >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v24 = *(v7 + 48);

      return v24(v23);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v9 + (v16 | v22) + 1;
}

void sub_23B6E2350(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23B6E8FD8() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 24) - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (*(v12 + 64) <= *(*(*(a4 + 16) - 8) + 64))
  {
    v15 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v15 = *(v12 + 64);
  }

  v16 = v14 + 31;
  v17 = *(v12 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v18 = ((v15 + ((((v16 + ((v13 + 1) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + v17 + 16) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 >= a3)
  {
    v21 = 0;
    v22 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((v15 + ((((v16 + ((v13 + 1) & ~v13)) & 0xFFFFFFF8) + v17 + 16) & ~v17) + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v11 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v25 = (a1 + v13 + 1) & ~v13;
      if (v10 < 0x7FFFFFFE)
      {
        v27 = ((v16 + v25) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v27 = 0;
          v27[1] = 0;
          *v27 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v27 = a2;
        }
      }

      else
      {
        v26 = *(v9 + 56);

        v26(v25, a2);
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v11 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

void sub_23B6E2618()
{
  if (!qword_27E17A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A818, &qword_23B6E9940);
    v0 = sub_23B6E9288();
    if (!v1)
    {
      atomic_store(v0, &qword_27E17A810);
    }
  }
}

void sub_23B6E267C()
{
  if (!qword_27E17A820[0])
  {
    v0 = sub_23B6E9168();
    if (!v1)
    {
      atomic_store(v0, qword_27E17A820);
    }
  }
}

uint64_t getEnumTagSinglePayload for DevicePickerSupportedAction(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DevicePickerSupportedAction(_WORD *result, int a2, int a3)
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

uint64_t sub_23B6E27B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_23B6E9188();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A778, &qword_23B6E96D0);
  swift_getWitnessTable();
  sub_23B6E14CC();
  swift_getOpaqueTypeMetadata2();
  sub_23B6E9028();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B6E28E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B6E2928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B6E29A0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B6E2A30(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B6E2AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B6E2B78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_23B6E2CA0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B6E2F0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B6E2FD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23B6E3500(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B6E2FD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B6E30E4(a5, a6);
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
    result = sub_23B6E92A8();
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

uint64_t sub_23B6E30E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_23B6E3130(a1, a2);
  sub_23B6E3260(&unk_284E2A3B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23B6E3130(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B6E334C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23B6E92A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23B6E91B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B6E334C(v10, 0);
        result = sub_23B6E9298();
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

uint64_t sub_23B6E3260(uint64_t result)
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

  result = sub_23B6E33C0(result, v12, 1, v3);
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

void *sub_23B6E334C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A938, &unk_23B6E98D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B6E33C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A938, &unk_23B6E98D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23B6E3500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23B6E35CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v31 - v5;
  v7 = sub_23B6E8FD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + *(type metadata accessor for DevicePickerVC(0) + 24);
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 8);

    v14(v16);
    sub_23B6E09CC(v14);
  }

  else
  {
    v17 = sub_23B6E8F98();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_23B6E8F88();
  }

  sub_23B6DFB60();
  (*(v8 + 16))(v12, v1, v7);

  result = sub_23B6E9268();
  if (result)
  {
    v21 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A978, &qword_23B6E9A20);
    sub_23B6E90C8();
    v22 = v32;
    v23 = *&v32[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect];
    v24 = *&v32[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect + 8];
    v25 = v32[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect + 16];
    v26 = sub_23B6E9208();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v23;
    *(v27 + 40) = v24;
    *(v27 + 48) = v25;
    *(v27 + 56) = v21;
    sub_23B6E2E84();
    v28 = v21;
    v29 = sub_23B6E482C(0, 0, v6, &unk_23B6E9A30, v27);

    v30 = *&v22[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask];
    *&v22[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask] = v29;

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B6E3890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 160) = a6;
  *(v7 + 16) = a4;
  v8 = sub_23B6E8F78();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  *(v7 + 56) = *(v9 + 64);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18) - 8) + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38) - 8);
  *(v7 + 88) = v11;
  *(v7 + 96) = *(v11 + 64);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B6E3A1C, 0, 0);
}

uint64_t sub_23B6E3A1C()
{
  v1 = *(v0 + 160);
  *(v0 + 120) = sub_23B6E91E8();
  sub_23B6E91D8();

  if (v1)
  {
    v2 = *(MEMORY[0x277CC5868] + 4);
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_23B6E3B4C;
    v4 = *(v0 + 112);
    v5 = *(v0 + 32);

    return MEMORY[0x2821164F8](v4);
  }

  else
  {
    v6 = *(MEMORY[0x277CC5870] + 4);
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_23B6E3C60;
    v8 = *(v0 + 72);
    v9 = *(v0 + 32);

    return MEMORY[0x282116508](v8);
  }
}

uint64_t sub_23B6E3B4C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_23B6E40F0;
  }

  else
  {
    v3 = sub_23B6E3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23B6E3C60()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_23B6E418C;
  }

  else
  {
    v3 = sub_23B6E3F20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23B6E3D74()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[2];
  v8 = v0[3];
  v9 = sub_23B6E9208();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_23B6E5768(v1, v3, &qword_27E17A980, &qword_23B6E9A38);

  v10 = sub_23B6E91D8();
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v10;
  v12[3] = v13;
  v12[4] = v7;
  v12[5] = v8;
  sub_23B6E58F8(v3, v12 + v11);
  sub_23B6E4418(0, 0, v5, &unk_23B6E9A58, v12);

  sub_23B6E5A78(v1, &qword_27E17A980, &qword_23B6E9A38);
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[9];
  v16 = v0[10];
  v18 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_23B6E3F20()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v21 = v0[2];
  v9 = sub_23B6E9208();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  (*(v7 + 16))(v4, v2, v6);

  v10 = sub_23B6E91D8();
  v11 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 2) = v10;
  *(v12 + 3) = v13;
  *(v12 + 4) = v21;
  *(v12 + 5) = v8;
  (*(v7 + 32))(&v12[v11], v4, v6);
  sub_23B6E4418(0, 0, v3, &unk_23B6E9A48, v12);

  (*(v7 + 8))(v2, v6);
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[9];
  v16 = v0[10];
  v18 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_23B6E40F0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B6E418C()
{
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B6E4228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  sub_23B6E91E8();
  v6[6] = sub_23B6E91D8();
  v9 = sub_23B6E91C8();

  return MEMORY[0x2822009F8](sub_23B6E42FC, v9, v8);
}

uint64_t sub_23B6E42FC()
{
  v1 = v0[5];
  sub_23B6E5768(v0[4], v1, &qword_27E17A980, &qword_23B6E9A38);
  v2 = sub_23B6E8FE8();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v8 = v0[2];
    v7 = v0[3];

    v8(v6);
    (*(v3 + 8))(v6, v2);

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_23B6E4418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_23B6E5768(a3, v28 - v12, &qword_27E17A970, &qword_23B6E9A18);
  v14 = sub_23B6E9208();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_23B6E5A78(v13, &qword_27E17A970, &qword_23B6E9A18);
  }

  else
  {
    sub_23B6E91F8();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_23B6E91C8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_23B6E91A8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_23B6E4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23B6E91E8();
  v6[5] = sub_23B6E91D8();
  v8 = sub_23B6E91C8();

  return MEMORY[0x2822009F8](sub_23B6E47B4, v8, v7);
}

uint64_t sub_23B6E47B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v4(v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_23B6E482C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_23B6E5768(a3, v25 - v11, &qword_27E17A970, &qword_23B6E9A18);
  v13 = sub_23B6E9208();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23B6E5A78(v12, &qword_27E17A970, &qword_23B6E9A18);
  }

  else
  {
    sub_23B6E91F8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23B6E91C8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23B6E91A8() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);

      return v23;
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

  sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

id sub_23B6E4B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DevicePickerVC.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B6E4BCC()
{
  result = type metadata accessor for DevicePickerVC(319);
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

uint64_t sub_23B6E4C90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B6E4CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E8FD8();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23B6E4DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B6E8FD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_23B6E4E70()
{
  sub_23B6E8FD8();
  if (v0 <= 0x3F)
  {
    sub_23B6E2618();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B6E4F38(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask;
  if (*(*a2 + OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask))
  {
    v4 = *(*a2 + OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A930, &qword_23B6E9A10);
    sub_23B6E9218();

    v5 = *(v2 + v3);
  }

  *(v2 + v3) = 0;
}

uint64_t sub_23B6E4FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = a1 - 8;
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B6E52C0(v4, v9);
  v10 = v4 + *(v6 + 28);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = type metadata accessor for DevicePickerVC.Coordinator(0);
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask] = 0;
  sub_23B6E52C0(v9, &v15[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_parent]);
  v16 = &v15[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect];
  *v16 = v11;
  *(v16 + 1) = v12;
  v16[16] = v13;
  sub_23B6E2E84();
  v19.receiver = v15;
  v19.super_class = v14;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  result = sub_23B6E5324(v9);
  *a3 = v17;
  return result;
}

uint64_t sub_23B6E5138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E527C(&qword_27E17A968);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B6E51B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E527C(&qword_27E17A968);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B6E5238()
{
  sub_23B6E527C(&qword_27E17A968);
  sub_23B6E9098();
  __break(1u);
}

uint64_t sub_23B6E527C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DevicePickerVC(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6E52C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevicePickerVC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6E5324(uint64_t a1)
{
  v2 = type metadata accessor for DevicePickerVC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6E5380()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_23B6E1B28();

  return swift_deallocObject();
}

uint64_t sub_23B6E53CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6E54A4;

  return sub_23B6E3890(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23B6E54A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6E5598()
{
  v1 = sub_23B6E8F78();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23B6E5664(uint64_t a1)
{
  v4 = *(sub_23B6E8F78() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6E54A4;

  return sub_23B6E4718(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_23B6E5768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B6E57D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);

  v6 = sub_23B6E8FE8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_23B6E58F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6E5968(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6E5DBC;

  return sub_23B6E4228(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_23B6E5A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B6E5AD8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6E5BD0;

  return v7(a1);
}

uint64_t sub_23B6E5BD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6E5CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23B6E5D00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B6E5DBC;

  return sub_23B6E5AD8(a1, v5);
}

uint64_t sub_23B6E5DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B6E8F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B6E5E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B6E8F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DeviceAdvertiserVC()
{
  result = qword_27E17A988;
  if (!qword_27E17A988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23B6E5F84()
{
  result = sub_23B6E6008();
  if (v1 <= 0x3F)
  {
    result = sub_23B6E8F08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23B6E6008()
{
  result = qword_27E17A998;
  if (!qword_27E17A998)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E17A998);
  }

  return result;
}

uint64_t sub_23B6E60A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B6E8F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23B6E6328(v2, v13);
  (*(v5 + 16))(v9, v2 + *(a2 + 20), v4);
  v10 = objc_allocWithZone(sub_23B6E8F38());
  return sub_23B6E8F28();
}

uint64_t sub_23B6E61A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E62E4(&qword_27E17A9A8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B6E6220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E62E4(&qword_27E17A9A8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B6E62A0()
{
  sub_23B6E62E4(&qword_27E17A9A8);
  sub_23B6E9098();
  __break(1u);
}

uint64_t sub_23B6E62E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceAdvertiserVC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6E6328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DeviceAdvertiser.init(_:label:fallback:)@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a7;
  v13 = type metadata accessor for DeviceAdvertiser(0, &v19);
  v14 = a6 + *(v13 + 56);
  v23 = 0;
  sub_23B6E9128();
  v15 = v20;
  *v14 = v19;
  *(v14 + 8) = v15;
  v16 = sub_23B6E6328(a1, a6);
  v17 = *(v13 + 52);
  a2(v16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a7;
  type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(0, &v19);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DeviceAdvertiser.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a3;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v96 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6, v8);
  v95 = &v90 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v94 = &v90 - v13;
  v104 = v12;
  v14 = v12 - 8;
  v99 = *(v12 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v106 = v17;
  v97 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 24);
  v19 = *(v14 + 40);
  v20 = sub_23B6E9188();
  v103 = *(v20 - 8);
  v21 = *(v103 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v101 = &v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_23B6E6EC4();
  v118 = v24;
  v119 = v20;
  *&v122 = v20;
  *(&v122 + 1) = v24;
  v113 = v26;
  v114 = WitnessTable;
  *&v123 = WitnessTable;
  *(&v123 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  v28 = *(v102 + 64);
  v30 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v29);
  v100 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v98 = &v90 - v34;
  v35 = *(v18 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33, v37);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = v18;
  *(&v40 + 1) = v3;
  v41 = *(v14 + 48);
  v93 = v19;
  *&v42 = v19;
  v112 = v41;
  *(&v42 + 1) = v41;
  v116 = v42;
  v117 = v40;
  v123 = v42;
  v122 = v40;
  v43 = type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(0, &v122);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v90 - v47;
  v107 = OpaqueTypeMetadata2;
  v109 = v3;
  v49 = sub_23B6E9028();
  v110 = *(v49 - 8);
  v111 = v49;
  v50 = *(v110 + 64);
  MEMORY[0x28223BE20](v49, v51);
  v108 = &v90 - v52;
  v53 = v105;
  (*(v44 + 16))(v48, v105 + *(v14 + 60), v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v94;
    v55 = v109;
    (*(v4 + 32))(v94, v48, v109);
    v56 = v95;
    v57 = v112;
    sub_23B6E35C4(v54);
    v58 = v96;
    sub_23B6E35C4(v56);
    *&v122 = v119;
    *(&v122 + 1) = v118;
    v60 = v113;
    v59 = v114;
    *&v123 = v114;
    *(&v123 + 1) = v113;
    swift_getOpaqueTypeConformance2();
    v61 = v108;
    sub_23B6E1A14(v58, v107, v55);
    v62 = *(v4 + 8);
    v62(v58, v55);
    v62(v56, v55);
    v62(v54, v55);
  }

  else
  {
    v91 = v35;
    (*(v35 + 32))(v39, v48, v18);
    v63 = v99;
    v96 = *(v99 + 16);
    v64 = v97;
    v65 = v53;
    v66 = v53;
    v67 = v104;
    v96(v97, v66, v104);
    v92 = v18;
    v68 = *(v63 + 80);
    v90 = v39;
    v69 = (v68 + 48) & ~v68;
    v70 = swift_allocObject();
    v71 = v116;
    *(v70 + 16) = v117;
    *(v70 + 32) = v71;
    v99 = *(v63 + 32);
    v72 = (v99)(v70 + v69, v64, v67);
    MEMORY[0x28223BE20](v72, v73);
    *(&v90 - 3) = v117;
    v74 = v101;
    sub_23B6E9178();
    v95 = sub_23B6E7094(v67);
    v96(v64, v65, v67);
    v75 = swift_allocObject();
    v76 = v116;
    *(v75 + 16) = v117;
    *(v75 + 32) = v76;
    v77 = v75 + v69;
    v78 = v119;
    (v99)(v77, v64, v67);
    v79 = v118;
    v80 = v113;
    v89 = v113;
    v59 = v114;
    v87 = v118;
    v88 = v114;
    v81 = v100;
    sub_23B6E9118();

    v60 = v80;

    (*(v103 + 8))(v74, v78);
    *&v122 = v78;
    *(&v122 + 1) = v79;
    *&v123 = v59;
    *(&v123 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    v82 = v98;
    v83 = v107;
    sub_23B6E35C4(v81);
    v84 = *(v102 + 8);
    v84(v81, v83);
    sub_23B6E35C4(v82);
    v61 = v108;
    v57 = v112;
    sub_23B6E191C(v81, v83);
    v84(v81, v83);
    v84(v82, v83);
    (*(v91 + 8))(v90, v92);
  }

  *&v122 = v119;
  *(&v122 + 1) = v118;
  *&v123 = v59;
  *(&v123 + 1) = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v121 = v57;
  v85 = v111;
  swift_getWitnessTable();
  sub_23B6E35C4(v61);
  return (*(v110 + 8))(v61, v85);
}

unint64_t sub_23B6E6EC4()
{
  result = qword_27E17A9B8[0];
  if (!qword_27E17A9B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
    sub_23B6E6F50();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E17A9B8);
  }

  return result;
}

unint64_t sub_23B6E6F50()
{
  result = qword_27E17A9A0;
  if (!qword_27E17A9A0)
  {
    type metadata accessor for DeviceAdvertiserVC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17A9A0);
  }

  return result;
}

uint64_t sub_23B6E6FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v5 = a1 + *(type metadata accessor for DeviceAdvertiser(0, &v8) + 56);
  v6 = *(v5 + 8);
  LOBYTE(v8) = *v5;
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9138();
  sub_23B6E9148();
}

uint64_t sub_23B6E7094(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9158();
  return v4;
}

uint64_t objectdestroyTm()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12 = v0[2];
  v1 = v12;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = (type metadata accessor for DeviceAdvertiser(0, &v12) - 8);
  v11 = *(*v5 + 64);
  v6 = (v0 + ((*(*v5 + 80) + 48) & ~*(*v5 + 80)));
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = v5[15];
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(0, &v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v2;
  }

  else
  {
    v8 = v1;
  }

  (*(*(v8 - 8) + 8))(v6 + v7);
  v9 = *(v6 + v5[16] + 8);

  return swift_deallocObject();
}

uint64_t DevicePairingView.init(_:access:label:fallback:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, void (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a6;
  v28 = a8;
  v29 = a9;
  v13 = type metadata accessor for DevicePairingView(0, &v26);
  v14 = a7 + v13[15];
  v30 = 0;
  sub_23B6E9128();
  v15 = v27;
  *v14 = v26;
  *(v14 + 8) = v15;
  sub_23B6E6328(a1, a7);
  v16 = v13[13];
  v17 = sub_23B6E8F08();
  v18 = (*(v17 - 8) + 16);
  (*v18)(a7 + v16, a2, v17);
  sub_23B6E8F38();
  v19 = sub_23B6E8F18();
  v20 = (v18 - 1);
  v21 = a7 + v13[14];
  if (v19)
  {
    a3();
  }

  else
  {
    a4();
  }

  (*v20)(a2, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v26 = a5;
  v27 = a6;
  v28 = a8;
  v29 = a9;
  type metadata accessor for DevicePairingView.AdvertiserContentMode(0, &v26);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DevicePairingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a3;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v96 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6, v8);
  v95 = &v90 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v94 = &v90 - v13;
  v104 = v12;
  v14 = v12 - 8;
  v99 = *(v12 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v106 = v17;
  v97 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 24);
  v19 = *(v14 + 40);
  v20 = sub_23B6E9188();
  v103 = *(v20 - 8);
  v21 = *(v103 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v101 = &v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_23B6E6EC4();
  v118 = v24;
  v119 = v20;
  *&v122 = v20;
  *(&v122 + 1) = v24;
  v113 = v26;
  v114 = WitnessTable;
  *&v123 = WitnessTable;
  *(&v123 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  v28 = *(v102 + 64);
  v30 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v29);
  v100 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v98 = &v90 - v34;
  v35 = *(v18 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33, v37);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = v18;
  *(&v40 + 1) = v3;
  v41 = *(v14 + 48);
  v93 = v19;
  *&v42 = v19;
  v112 = v41;
  *(&v42 + 1) = v41;
  v116 = v42;
  v117 = v40;
  v123 = v42;
  v122 = v40;
  v43 = type metadata accessor for DevicePairingView.AdvertiserContentMode(0, &v122);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v90 - v47;
  v107 = OpaqueTypeMetadata2;
  v109 = v3;
  v49 = sub_23B6E9028();
  v110 = *(v49 - 8);
  v111 = v49;
  v50 = *(v110 + 64);
  MEMORY[0x28223BE20](v49, v51);
  v108 = &v90 - v52;
  v53 = v105;
  (*(v44 + 16))(v48, v105 + *(v14 + 64), v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v94;
    v55 = v109;
    (*(v4 + 32))(v94, v48, v109);
    v56 = v95;
    v57 = v112;
    sub_23B6E35C4(v54);
    v58 = v96;
    sub_23B6E35C4(v56);
    *&v122 = v119;
    *(&v122 + 1) = v118;
    v60 = v113;
    v59 = v114;
    *&v123 = v114;
    *(&v123 + 1) = v113;
    swift_getOpaqueTypeConformance2();
    v61 = v108;
    sub_23B6E1A14(v58, v107, v55);
    v62 = *(v4 + 8);
    v62(v58, v55);
    v62(v56, v55);
    v62(v54, v55);
  }

  else
  {
    v91 = v35;
    (*(v35 + 32))(v39, v48, v18);
    v63 = v99;
    v96 = *(v99 + 16);
    v64 = v97;
    v65 = v53;
    v66 = v53;
    v67 = v104;
    v96(v97, v66, v104);
    v92 = v18;
    v68 = *(v63 + 80);
    v90 = v39;
    v69 = (v68 + 48) & ~v68;
    v70 = swift_allocObject();
    v71 = v116;
    *(v70 + 16) = v117;
    *(v70 + 32) = v71;
    v99 = *(v63 + 32);
    v72 = (v99)(v70 + v69, v64, v67);
    MEMORY[0x28223BE20](v72, v73);
    *(&v90 - 3) = v117;
    v74 = v101;
    sub_23B6E9178();
    v95 = sub_23B6E80FC(v67);
    v96(v64, v65, v67);
    v75 = swift_allocObject();
    v76 = v116;
    *(v75 + 16) = v117;
    *(v75 + 32) = v76;
    v77 = v75 + v69;
    v78 = v119;
    (v99)(v77, v64, v67);
    v79 = v118;
    v80 = v113;
    v89 = v113;
    v59 = v114;
    v87 = v118;
    v88 = v114;
    v81 = v100;
    sub_23B6E9118();

    v60 = v80;

    (*(v103 + 8))(v74, v78);
    *&v122 = v78;
    *(&v122 + 1) = v79;
    *&v123 = v59;
    *(&v123 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    v82 = v98;
    v83 = v107;
    sub_23B6E35C4(v81);
    v84 = *(v102 + 8);
    v84(v81, v83);
    sub_23B6E35C4(v82);
    v61 = v108;
    v57 = v112;
    sub_23B6E191C(v81, v83);
    v84(v81, v83);
    v84(v82, v83);
    (*(v91 + 8))(v90, v92);
  }

  *&v122 = v119;
  *(&v122 + 1) = v118;
  *&v123 = v59;
  *(&v123 + 1) = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v121 = v57;
  v85 = v111;
  swift_getWitnessTable();
  sub_23B6E35C4(v61);
  return (*(v110 + 8))(v61, v85);
}

uint64_t sub_23B6E7E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v5 = a1 + *(type metadata accessor for DevicePairingView(0, &v8) + 60);
  v6 = *(v5 + 8);
  LOBYTE(v8) = *v5;
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9138();
  sub_23B6E9148();
}

uint64_t sub_23B6E7F40(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v11[0] = v2[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(a1(0, v11) - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a2(v8, v3, v4, v5, v6);
}

uint64_t sub_23B6E7FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B6E35C4(v5);
  sub_23B6E35C4(v7);
  return (*(v3 + 8))(v7, a2);
}

uint64_t sub_23B6E80D8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_23B6E7FF8(v0[6], v0[2]);
}

uint64_t sub_23B6E80FC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9158();
  return v4;
}

uint64_t sub_23B6E8160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B6E6328(a1, a2);
  v3 = a2 + *(type metadata accessor for DeviceAdvertiserVC() + 20);
  sub_23B6E8EF8();
  v4 = sub_23B6E90D8();
  v5 = sub_23B6E8FF8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A9B0, &qword_23B6E9B60);
  v7 = a2 + *(result + 36);
  *v7 = v5;
  *(v7 + 8) = v4;
  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v5 = (type metadata accessor for DevicePairingView(0, &v14) - 8);
  v13 = *(*v5 + 64);
  v6 = (v0 + ((*(*v5 + 80) + 48) & ~*(*v5 + 80)));
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = v5[15];
  v8 = sub_23B6E8F08();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v5[16];
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  type metadata accessor for DevicePairingView.AdvertiserContentMode(0, &v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v2;
  }

  else
  {
    v10 = v1;
  }

  (*(*(v10 - 8) + 8))(v6 + v9);
  v11 = *(v6 + v5[17] + 8);

  return swift_deallocObject();
}

uint64_t sub_23B6E8368@<X0>(uint64_t (*a1)(void, void *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v9[0] = v2[2];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(a1(0, v9) - 8);
  return sub_23B6E8160(v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), a2);
}

uint64_t sub_23B6E8440(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_23B6E8480(uint64_t a1)
{
  v2 = sub_23B6E6008();
  if (v3 <= 0x3F)
  {
    v10 = 0;
    v13 = v2;
    v4 = *(a1 + 32);
    v9[0] = *(a1 + 16);
    v9[1] = v4;
    v5 = type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(319, v9);
    if (v6 <= 0x3F)
    {
      v11 = 0;
      v14 = v5;
      sub_23B6E267C();
      if (v8 <= 0x3F)
      {
        v12 = 0;
        v15 = v7;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B6E8528(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v8 = ((v4 + ((v7 + 40) & ~v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v5 = *(a1 + 24);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_23B6E867C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v7 = ((v5 + ((v6 + 40) & ~v6) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v9 = a3 - 2147483646;
    if (v7)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v11 = a2 & 0x7FFFFFFF;
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 + 1;
    }

    if (v7)
    {
      v13 = result;
      bzero(result, v7);
      result = v13;
      *v13 = v11;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v7) = v12;
      }

      else
      {
        *(result + v7) = v12;
      }
    }

    else if (v8)
    {
      *(result + v7) = v12;
    }

    return result;
  }

  v8 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 <= 1)
  {
    if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *(result + v7) = 0;
    goto LABEL_28;
  }

  *(result + v7) = 0;
  if (a2)
  {
LABEL_29:
    *(result + 3) = (a2 - 1);
  }

  return result;
}

void sub_23B6E8824(uint64_t a1)
{
  v2 = sub_23B6E6008();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = v2;
    v4 = sub_23B6E8F08();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v17 = v4;
      v6 = *(a1 + 32);
      v11[0] = *(a1 + 16);
      v11[1] = v6;
      v7 = type metadata accessor for DevicePairingView.AdvertiserContentMode(319, v11);
      if (v8 <= 0x3F)
      {
        v14 = 0;
        v18 = v7;
        sub_23B6E267C();
        if (v10 <= 0x3F)
        {
          v15 = 0;
          v19 = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B6E88E4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23B6E8F08();
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

  v10 = *(*(a3 + 24) - 8);
  v11 = *(v7 + 80);
  if (*(v10 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(v10 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v13 = *(v10 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v14 = ((v12 + ((((v11 + 40) & ~v11) + *(*(v6 - 8) + 64) + v13) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
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
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14)) == 0)
  {
LABEL_31:
    if ((v8 & 0x80000000) != 0)
    {
      v23 = *(v7 + 48);

      return v23((a1 + v11 + 40) & ~v11);
    }

    else
    {
      v22 = *(a1 + 24);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    LODWORD(v15) = *a1;
  }

  return v9 + (v15 | v21) + 1;
}

double sub_23B6E8B1C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23B6E8F08() - 8);
  v10 = v8;
  v11 = *(v8 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(a4 + 24) - 8);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (*(v13 + 64) <= *(*(*(a4 + 16) - 8) + 64))
  {
    v16 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v16 = *(v13 + 64);
  }

  v17 = *(v13 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v18 = ((v16 + ((((v14 + 40) & ~v14) + v15 + v17) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v21 = 0;
    v22 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((v16 + ((((v14 + 40) & ~v14) + v15 + v17) & ~v17) + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v12 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v18] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *&a1[v18] = 0;
      }

      else if (v21)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      if ((v11 & 0x80000000) != 0)
      {
        v25 = *(v10 + 56);

        v25(&a1[v14 + 40] & ~v14, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 8) = 0u;
        *(a1 + 24) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 3) = (a2 - 1);
      }

      return result;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v12 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *&a1[v18] = v23;
    }

    else
    {
      *&a1[v18] = v23;
    }
  }

  else if (v21)
  {
    a1[v18] = v23;
  }

  return result;
}

uint64_t sub_23B6E8DB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_23B6E9188();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
  swift_getWitnessTable();
  sub_23B6E6EC4();
  swift_getOpaqueTypeMetadata2();
  sub_23B6E9028();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}