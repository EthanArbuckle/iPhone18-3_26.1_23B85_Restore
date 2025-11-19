unint64_t sub_1C554472C()
{
  v2 = qword_1EC15EA00;
  if (!qword_1EC15EA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55447C0(uint64_t a1)
{
  type metadata accessor for BenefactorDetailsView.Coordinator();
  MEMORY[0x1E69E5928](a1);
  return sub_1C5461820(a1);
}

id sub_1C5544844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C55449B4();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a2);
  v9 = sub_1C5461BF0(a3, a2);
  sub_1C5461EA0();
  v8 = sub_1C5404B48();
  v5 = [v8 viewModelForFlow:3 withContact:{a2, MEMORY[0x1E69E5928](a2).n128_f64[0]}];
  MEMORY[0x1E69E5920](a2);
  sub_1C5461F04();
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](v9);
  v7 = sub_1C5461C38(a2, v5);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return v7;
}

unint64_t sub_1C55449B4()
{
  v2 = qword_1EC15EA08;
  if (!qword_1EC15EA08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15EA08);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5544A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C55447C0(*v1);
  *a1 = result;
  return result;
}

void sub_1C5544AFC()
{
  sub_1C54F035C();
  sub_1C5595724();
  __break(1u);
}

unint64_t sub_1C5544B3C()
{
  v2 = qword_1EC15EA10;
  if (!qword_1EC15EA10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5544BCC()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5544BF8()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1C5544C30(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1C5544C7C()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1C5544CB4(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1C5544D00@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for SignOutUnsyncedDataAlert();
  sub_1C54367BC((v5[1] + *(v3 + 28)), v1);
  sub_1C5595004();
  return sub_1C5436890(v7);
}

uint64_t type metadata accessor for SignOutUnsyncedDataAlert()
{
  v1 = qword_1EC169660;
  if (!qword_1EC169660)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C5544EAC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1C54367BC(v2, (&v5 - v6));
  v3 = type metadata accessor for SignOutUnsyncedDataAlert();
  sub_1C5436BB4(v7, (v1 + *(v3 + 28)));
  return sub_1C5436890(v8);
}

uint64_t sub_1C5544F5C()
{
  type metadata accessor for SignOutUnsyncedDataAlert();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5544FF4()
{
  type metadata accessor for SignOutUnsyncedDataAlert();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C55450B8(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SignOutUnsyncedDataAlert() + 32));
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

uint64_t sub_1C55451A4()
{
  type metadata accessor for SignOutUnsyncedDataAlert();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5545254()
{
  v2 = *(v0 + *(type metadata accessor for SignOutUnsyncedDataAlert() + 32));

  return v2 & 1;
}

uint64_t sub_1C55452A0(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SignOutUnsyncedDataAlert() + 32);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C55452FC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v71 = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA18);
  v54 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = &v16 - v56;
  v2 = MEMORY[0x1EEE9AC00](&v16 - v56);
  v55 = &v16 - v56;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v16 - v56;
  v97 = &v16 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA20);
  v59 = *(v58 - 8);
  v60 = v59;
  v62 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v64 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v61 = &v16 - v64;
  v3 = MEMORY[0x1EEE9AC00](&v16 - v64);
  v63 = &v16 - v64;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v16 - v64;
  v96 = &v16 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA28);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v69 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = &v16 - v69;
  MEMORY[0x1EEE9AC00](&v16 - v69);
  v70 = &v16 - v69;
  v95 = &v16 - v69;
  v94 = v1;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v27 = MEMORY[0x1E6981E70];
    v28 = MEMORY[0x1E6981E60];
    sub_1C544B78C();
    v46 = 1;
    sub_1C5596064();
    v80[2] = v82;
    v80[3] = v83;
    v81 = v84;
    v80[0] = sub_1C5545E50();
    v80[1] = v4;
    v36 = sub_1C55451A4();
    v37 = v5;
    v30 = v6;
    v35 = &v16;
    v29 = 24;
    MEMORY[0x1EEE9AC00](&v16);
    v31 = v13;
    v34 = &v16;
    MEMORY[0x1EEE9AC00](&v16);
    v32 = v13;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA40);
    v43 = sub_1C5518AB8();
    v44 = sub_1C54141E8();
    v47 = sub_1C5547FCC();
    v45 = MEMORY[0x1E6981138];
    v33 = v12;
    v15 = MEMORY[0x1E6981138];
    v14 = v47;
    v13[1] = v44;
    v13[0] = v43;
    v42 = MEMORY[0x1E6981148];
    v12[3] = MEMORY[0x1E6981148];
    v12[2] = v41;
    v40 = MEMORY[0x1E69E6158];
    v12[1] = MEMORY[0x1E69E6158];
    v12[0] = v39;
    v38 = v80;
    sub_1C5595D04();

    sub_1C5401ECC();
    v72 = v39;
    v73 = v40;
    v74 = v41;
    v75 = v42;
    v76 = v43;
    v77 = v44;
    v78 = v47;
    v79 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v63, v58, v65);
    v49 = *(v60 + 8);
    v50 = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49(v63, v58);
    v71 = v63;
    v26 = *(v60 + 16);
    v25 = v60 + 16;
    v26(v61, v65, v58);
    sub_1C540EFD8(v61, v58, v63);
    v49(v61, v58);
    v26(v61, v63, v58);
    v7 = sub_1C5548054();
    sub_1C540FD1C(v61, v58, v52, OpaqueTypeConformance2, v7, v68);
    v49(v61, v58);
    sub_1C536E350(v68, v70);
    v49(v63, v58);
    v49(v65, v58);
  }

  else
  {
    v23 = &v16;
    MEMORY[0x1EEE9AC00](&v16);
    v20 = v13;
    v14 = v8;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30);
    v22 = sub_1C5547E74();
    sub_1C544B78C();
    sub_1C5596064();
    v24 = sub_1C5548054();
    sub_1C540EFD8(v55, v52, v57);
    sub_1C536E1D0(v55);
    v93 = v55;
    sub_1C536E25C(v57, v53);
    sub_1C540EFD8(v53, v52, v55);
    sub_1C536E1D0(v53);
    sub_1C536E25C(v55, v53);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40);
    v18 = sub_1C5518AB8();
    v19 = sub_1C54141E8();
    v9 = sub_1C5547FCC();
    v85 = v16;
    v86 = MEMORY[0x1E69E6158];
    v87 = v17;
    v88 = MEMORY[0x1E6981148];
    v89 = v18;
    v90 = v19;
    v91 = v9;
    v92 = MEMORY[0x1E6981138];
    v10 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v53, v58, v52, v10, v24, v68);
    sub_1C536E1D0(v53);
    sub_1C536E350(v68, v70);
    sub_1C536E1D0(v55);
    sub_1C536E1D0(v57);
  }

  sub_1C536E4E8(v70, v68);
  sub_1C5548D38();
  sub_1C540EFD8(v68, v66, v51);
  sub_1C536E680(v68);
  return sub_1C536E680(v70);
}

uint64_t sub_1C5545E50()
{
  v61 = 0;
  v64 = sub_1C5548F08;
  v76 = 0;
  v75 = 0;
  v73 = 0;
  v66 = 0;
  v67 = 0;
  v51 = 0;
  v56 = sub_1C55949C4();
  v54 = *(v56 - 8);
  v55 = v56 - 8;
  v52 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v57 = &v17 - v52;
  v76 = v0;
  sub_1C5548EA4();
  v58 = sub_1C5404B48();
  v75 = v58;
  sub_1C55949B4();
  v1 = sub_1C55949A4();
  v2 = v53;
  v59 = v1;
  (*(v54 + 8))(v57, v56);
  [v58 setLocale_];
  MEMORY[0x1E69E5920](v59);
  v60 = *v2;
  sub_1C5594CF4();
  v74 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E820);
  v3 = sub_1C553F644();
  v65 = sub_1C546A654(v64, v61, v62, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v63);
  v48 = v65;
  sub_1C541439C();
  v73 = v48;
  sub_1C5594CF4();
  v46 = MEMORY[0x1E69E7CA0] + 8;
  v47 = sub_1C5596C64();
  v49 = sub_1C5596704();

  v50 = [v58 stringFromItems_];
  MEMORY[0x1E69E5920](v49);
  if (v50)
  {
    v45 = v50;
    v40 = v50;
    v41 = sub_1C5596574();
    v42 = v4;
    MEMORY[0x1E69E5920](v40);
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v38 = v44;
  v39 = v43;
  if (v44)
  {
    v36 = v39;
    v37 = v38;
    v31 = v38;
    v32 = sub_1C54637B4();
    v33 = v5;

    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v69 = v34;
  v70 = v35;
  sub_1C5594CF4();
  if (v70)
  {
    v71 = v69;
    v72 = v70;
  }

  else
  {
    v68 = v48;
    v27 = sub_1C55965F4();
    v28 = v6;
    sub_1C5548F5C();
    v29 = sub_1C55964A4();
    v30 = v7;

    v71 = v29;
    v72 = v30;
    if (v70)
    {
      sub_1C5401ECC();
    }
  }

  v18 = v71;
  v24 = v72;
  v66 = v71;
  v67 = v72;
  sub_1C55965F4();
  v17 = v8;
  v22 = sub_1C54637B4();
  v23 = v9;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D0);
  v21 = sub_1C5596E04();
  v19 = v10;
  sub_1C5594CF4();
  v19[3] = MEMORY[0x1E69E6158];
  v11 = sub_1C54E5644();
  v12 = v18;
  v13 = v19;
  v14 = v24;
  v19[4] = v11;
  *v13 = v12;
  v13[1] = v14;
  sub_1C540FCD8();
  v25 = sub_1C5596584();
  v26 = v15;

  MEMORY[0x1E69E5920](v58);
  return v25;
}

uint64_t sub_1C55464A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v68 = a1;
  v91 = 0;
  v90 = sub_1C5547100;
  v59 = sub_1C55496EC;
  v60 = sub_1C5549750;
  v113 = 0;
  v112 = 0;
  v110 = 0;
  v108 = 0;
  v81 = 0;
  v2 = type metadata accessor for SignOutUnsyncedDataAlert();
  v61 = *(v2 - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v65 = (v29 - v64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90);
  v66 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v67 = v29 - v66;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v96 = *(v98 - 8);
  v97 = v98 - 8;
  v69 = (v96[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v68);
  v70 = v29 - v69;
  v71 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = v29 - v71;
  v73 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v74 = v29 - v73;
  v75 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v76 = v29 - v75;
  v77 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v101 = v29 - v77;
  v78 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v94 = v29 - v78;
  v113 = v29 - v78;
  v112 = v14;
  v80 = 1;
  v83 = sub_1C55965F4();
  v87 = v15;
  v79 = sub_1C5439370();
  v86 = sub_1C5576C44();
  v82 = sub_1C55965F4();
  v85 = v16;
  sub_1C54398B0();
  v84 = v17;
  v88 = sub_1C55947B4();
  v89 = v18;

  MEMORY[0x1E69E5920](v86);

  v92 = v111;
  v111[0] = v88;
  v111[1] = v89;
  v93 = sub_1C54141E8();
  sub_1C5596004();
  v95 = sub_1C547070C();
  sub_1C540EFD8(v101, v98, v94);
  v99 = v96[1];
  v100 = v96 + 1;
  v99(v101, v98);
  v110 = v101;
  v50 = 1;
  v42 = sub_1C55965F4();
  v46 = v19;
  v45 = sub_1C5576C44();
  v41 = sub_1C55965F4();
  v44 = v20;
  sub_1C54398B0();
  v43 = v21;
  v49 = 0;
  v47 = sub_1C55947B4();
  v48 = v22;

  MEMORY[0x1E69E5920](v45);

  v57 = v109;
  v109[0] = v47;
  v109[1] = v48;
  sub_1C5594F04();
  v51 = sub_1C5594F34();
  v23 = *(v51 - 8);
  v52 = *(v23 + 56);
  v53 = v23 + 56;
  v52(v67, 0, v50);
  sub_1C55493C8(v68, v65);
  v54 = *(v62 + 80);
  v55 = (v54 + 16) & ~v54;
  v56 = swift_allocObject();
  sub_1C5549590(v65, (v56 + v55));
  sub_1C5595FF4();
  sub_1C540EFD8(v76, v98, v101);
  v99(v76, v98);
  v108 = v76;
  v34 = 1;
  v29[2] = sub_1C55965F4();
  v31 = v24;
  v30 = sub_1C5576C44();
  v29[1] = sub_1C55965F4();
  v29[4] = v25;
  sub_1C54398B0();
  v29[3] = v26;
  v32 = sub_1C55947B4();
  v33 = v27;

  MEMORY[0x1E69E5920](v30);

  v37 = v107;
  v107[0] = v32;
  v107[1] = v33;
  sub_1C5594F14();
  (v52)(v67, 0, v34, v51);
  sub_1C55493C8(v68, v65);
  v35 = (v54 + 16) & ~v54;
  v36 = swift_allocObject();
  sub_1C5549590(v65, (v36 + v35));
  sub_1C5595FF4();
  sub_1C540EFD8(v74, v98, v76);
  v99(v74, v98);
  v39 = v96[2];
  v38 = v96 + 2;
  v39(v74, v94, v98);
  v40 = v106;
  v106[0] = v74;
  v39(v72, v101, v98);
  v106[1] = v72;
  v39(v70, v76, v98);
  v106[2] = v70;
  v105[0] = v98;
  v105[1] = v98;
  v105[2] = v98;
  v102 = v95;
  v103 = v95;
  v104 = v95;
  sub_1C540F5A0(v40, 3uLL, v105, v58);
  v99(v70, v98);
  v99(v72, v98);
  v99(v74, v98);
  v99(v76, v98);
  v99(v101, v98);
  return (v99)(v94, v98);
}

uint64_t sub_1C5547100()
{
  v23 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68);
  v12 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v20 = v6 - v12;
  v22 = sub_1C55948B4();
  v18 = *(v22 - 8);
  v19 = v22 - 8;
  v13 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v14 = v6 - v13;
  v15 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v13);
  v16 = v6 - v15;
  v23 = v6 - v15;
  v21 = 1;
  sub_1C55965F4();
  v17 = v2;
  sub_1C55948A4();

  if ((*(v18 + 48))(v20, v21, v22) == 1)
  {
    return sub_1C54EA3A0(v20);
  }

  v4 = v14;
  (*(v18 + 32))(v16, v20, v22);
  v9 = [objc_opt_self() sharedApplication];
  (*(v18 + 16))(v4, v16, v22);
  v8 = sub_1C5594884();
  v11 = *(v18 + 8);
  v10 = v18 + 8;
  v11(v14, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D848);
  v6[1] = 0;
  v6[2] = sub_1C5596E04();
  v6[3] = type metadata accessor for OpenExternalURLOptionsKey();
  v6[5] = sub_1C54C4C30();
  v6[4] = MEMORY[0x1E69E7CA0] + 8;
  v6[6] = sub_1C5596454();
  v7 = sub_1C5596434();

  [v9 openURL:v8 options:v7 completionHandler:0];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  v5 = MEMORY[0x1E69E5920](v9);
  return (v11)(v16, v22, v5);
}

uint64_t sub_1C5547464(uint64_t a1)
{
  v3 = *(a1 + 8);

  v3(v1);
}

uint64_t sub_1C55474C0(uint64_t a1)
{
  v3 = *(a1 + 24);

  v3(v1);
}

uint64_t sub_1C554751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0u;
  v22 = 0u;
  v23 = a1;
  v17 = sub_1C5547660();
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v14[0] = v17;
  v14[1] = v2;
  v15 = v3 & 1;
  v16 = v4;
  v10 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v14, MEMORY[0x1E6981148], &v21);
  sub_1C5414260(v14);
  v6 = v21;
  v7 = v22;
  v8 = *(&v22 + 1);
  sub_1C54130AC(v21, *(&v21 + 1), v22 & 1);
  sub_1C5594CF4();
  v11 = v6;
  v12 = v7 & 1;
  v13 = v8;
  sub_1C540EFD8(&v11, v10, a2);
  sub_1C5414260(&v11);
  return sub_1C5414260(&v21);
}

uint64_t sub_1C5547660()
{
  sub_1C5594CF4();
  sub_1C5596744();

  sub_1C55965F4();
  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C55478D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v17 = a1;
  v13 = 0;
  v12 = sub_1C5453B74;
  v20 = sub_1C55497B4;
  v22 = sub_1C5548E9C;
  v34 = MEMORY[0x1E697D0D0];
  v66 = 0;
  v65 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v9 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v9 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30);
  v10 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v9 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v10);
  v46 = &v9 - v11;
  v66 = &v9 - v11;
  v65 = a1;
  v14 = MEMORY[0x1E6981E70];
  v15 = MEMORY[0x1E6981E60];
  sub_1C544B78C();
  v35 = 0;
  v36 = 1;
  sub_1C5596064();
  v16 = v60;
  v60[0] = v62;
  v60[1] = v63;
  v61 = v64 & 1;
  v4 = sub_1C5545E50();
  v25 = v59;
  v59[0] = v4;
  v59[1] = v5;
  v23 = sub_1C55451A4();
  v24 = v6;
  v19 = v7;
  v21 = &v49;
  v50 = v17;
  v18 = &v47;
  v48 = v17;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA40);
  v30 = sub_1C5518AB8();
  v31 = sub_1C54141E8();
  v32 = sub_1C5547FCC();
  v27 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E6981148];
  v33 = MEMORY[0x1E6981138];
  sub_1C5595C14();

  sub_1C5401ECC();
  v51 = v26;
  v52 = v27;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = v31;
  v57 = v32;
  v58 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5411148();
  sub_1C5595D84();
  (*(v38 + 8))(v40, v41);
  v44 = sub_1C5547E74();
  sub_1C540EFD8(v45, v43, v46);
  sub_1C536ECEC(v45);
  sub_1C536ED54(v46, v45);
  sub_1C540EFD8(v45, v43, v42);
  sub_1C536ECEC(v45);
  return sub_1C536ECEC(v46);
}

unint64_t sub_1C5547E74()
{
  v2 = qword_1EC15EA38;
  if (!qword_1EC15EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5547FCC();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5547FCC()
{
  v2 = qword_1EC15EA48;
  if (!qword_1EC15EA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5548054()
{
  v2 = qword_1EC15EA50;
  if (!qword_1EC15EA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55480DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v68 = a1;
  v91 = 0;
  v90 = sub_1C5547100;
  v59 = sub_1C55496EC;
  v60 = sub_1C5549750;
  v113 = 0;
  v112 = 0;
  v110 = 0;
  v108 = 0;
  v81 = 0;
  v2 = type metadata accessor for SignOutUnsyncedDataAlert();
  v61 = *(v2 - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v65 = (v29 - v64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90);
  v66 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v67 = v29 - v66;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v96 = *(v98 - 8);
  v97 = v98 - 8;
  v69 = (v96[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v68);
  v70 = v29 - v69;
  v71 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = v29 - v71;
  v73 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v74 = v29 - v73;
  v75 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v76 = v29 - v75;
  v77 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v101 = v29 - v77;
  v78 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v94 = v29 - v78;
  v113 = v29 - v78;
  v112 = v14;
  v80 = 1;
  v83 = sub_1C55965F4();
  v87 = v15;
  v79 = sub_1C5439370();
  v86 = sub_1C5576C44();
  v82 = sub_1C55965F4();
  v85 = v16;
  sub_1C54398B0();
  v84 = v17;
  v88 = sub_1C55947B4();
  v89 = v18;

  MEMORY[0x1E69E5920](v86);

  v92 = v111;
  v111[0] = v88;
  v111[1] = v89;
  v93 = sub_1C54141E8();
  sub_1C5596004();
  v95 = sub_1C547070C();
  sub_1C540EFD8(v101, v98, v94);
  v99 = v96[1];
  v100 = v96 + 1;
  v99(v101, v98);
  v110 = v101;
  v50 = 1;
  v42 = sub_1C55965F4();
  v46 = v19;
  v45 = sub_1C5576C44();
  v41 = sub_1C55965F4();
  v44 = v20;
  sub_1C54398B0();
  v43 = v21;
  v49 = 0;
  v47 = sub_1C55947B4();
  v48 = v22;

  MEMORY[0x1E69E5920](v45);

  v57 = v109;
  v109[0] = v47;
  v109[1] = v48;
  sub_1C5594F04();
  v51 = sub_1C5594F34();
  v23 = *(v51 - 8);
  v52 = *(v23 + 56);
  v53 = v23 + 56;
  v52(v67, 0, v50);
  sub_1C55493C8(v68, v65);
  v54 = *(v62 + 80);
  v55 = (v54 + 16) & ~v54;
  v56 = swift_allocObject();
  sub_1C5549590(v65, (v56 + v55));
  sub_1C5595FF4();
  sub_1C540EFD8(v76, v98, v101);
  v99(v76, v98);
  v108 = v76;
  v34 = 1;
  v29[2] = sub_1C55965F4();
  v31 = v24;
  v30 = sub_1C5576C44();
  v29[1] = sub_1C55965F4();
  v29[4] = v25;
  sub_1C54398B0();
  v29[3] = v26;
  v32 = sub_1C55947B4();
  v33 = v27;

  MEMORY[0x1E69E5920](v30);

  v37 = v107;
  v107[0] = v32;
  v107[1] = v33;
  sub_1C5594F14();
  (v52)(v67, 0, v34, v51);
  sub_1C55493C8(v68, v65);
  v35 = (v54 + 16) & ~v54;
  v36 = swift_allocObject();
  sub_1C5549590(v65, (v36 + v35));
  sub_1C5595FF4();
  sub_1C540EFD8(v74, v98, v76);
  v99(v74, v98);
  v39 = v96[2];
  v38 = v96 + 2;
  v39(v74, v94, v98);
  v40 = v106;
  v106[0] = v74;
  v39(v72, v101, v98);
  v106[1] = v72;
  v39(v70, v76, v98);
  v106[2] = v70;
  v105[0] = v98;
  v105[1] = v98;
  v105[2] = v98;
  v102 = v95;
  v103 = v95;
  v104 = v95;
  sub_1C540F5A0(v40, 3uLL, v105, v58);
  v99(v70, v98);
  v99(v72, v98);
  v99(v74, v98);
  v99(v76, v98);
  v99(v101, v98);
  return (v99)(v94, v98);
}

unint64_t sub_1C5548D38()
{
  v2 = qword_1EC15EA70;
  if (!qword_1EC15EA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5547FCC();
    swift_getOpaqueTypeConformance2();
    sub_1C5548054();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5548EA4()
{
  v2 = qword_1EC15EA78;
  if (!qword_1EC15EA78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15EA78);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5548F08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54637B4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C5548F5C()
{
  v2 = qword_1EC15EA80;
  if (!qword_1EC15EA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E820);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5548FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void *a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  v11 = type metadata accessor for SignOutUnsyncedDataAlert();
  sub_1C5549080(a6, a7 + *(v11 + 28));
  v13 = *(v11 + 32);
  result = sub_1C5409594();
  v8 = a7 + v13;
  *v8 = result & 1;
  *(v8 + 1) = v9;
  return result;
}

void *sub_1C5549080(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1C55491F0()
{
  v5 = sub_1C5549334();
  if (v0 <= 0x3F)
  {
    v5 = sub_1C54AE1F0();
    if (v1 <= 0x3F)
    {
      v5 = sub_1C543D8C0();
      if (v2 <= 0x3F)
      {
        v5 = sub_1C5433F94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1C5549334()
{
  v4 = qword_1EC15EA88;
  if (!qword_1EC15EA88)
  {
    v3 = sub_1C5596764();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15EA88);
      return v1;
    }
  }

  return v4;
}

void *sub_1C55493C8(void *a1, void *a2)
{
  v8 = *a1;
  sub_1C5594CF4();
  *a2 = v8;
  v9 = a1[1];
  v10 = a1[2];

  a2[1] = v9;
  a2[2] = v10;
  v11 = a1[3];
  v13 = a1[4];

  a2[3] = v11;
  a2[4] = v13;
  v14 = type metadata accessor for SignOutUnsyncedDataAlert();
  v15 = *(v14 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v15);

    *(a2 + v15) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v14 + 32);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

__n128 sub_1C5549590(void *a1, void *a2)
{
  *a2 = *a1;
  v2 = a1[2];
  a2[1] = a1[1];
  a2[2] = v2;
  v3 = a1[4];
  a2[3] = a1[3];
  a2[4] = v3;
  v7 = type metadata accessor for SignOutUnsyncedDataAlert();
  v8 = *(v7 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5595104();
    (*(*(v4 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v8, a1 + v8, *(*(v10 - 8) + 64));
  }

  result = *(a1 + *(v7 + 32));
  *(a2 + *(v7 + 32)) = result;
  return result;
}

uint64_t sub_1C55496EC()
{
  v1 = *(type metadata accessor for SignOutUnsyncedDataAlert() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C5547464(v2);
}

uint64_t sub_1C5549750()
{
  v1 = *(type metadata accessor for SignOutUnsyncedDataAlert() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C55474C0(v2);
}

id static AsyncIconImageBridge.hostingController(icon:size:)(uint64_t a1, double a2, double a3)
{
  v34 = a1;
  v27 = a2;
  v28 = a3;
  v30 = sub_1C554A774;
  v21 = "Fatal error";
  v22 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v23 = "AppleAccountUI/AsyncIconImageBridge.swift";
  v50 = 0;
  v49 = 0;
  v47 = 0.0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v42 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA98);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v24 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v17 - v24;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v17 - v25;
  v50 = &v17 - v25;
  v49 = v7;
  v47 = v6;
  v48 = v8;
  v46 = v3;
  sub_1C5549C00();
  v26 = *MEMORY[0x1E69A8A80];
  MEMORY[0x1E69E5928](v26);
  v29 = sub_1C5549C64(v26);
  v45 = v29;
  v43 = v27;
  v44 = v28;
  [v29 setSize_];
  MEMORY[0x1E69E5928](v34);
  MEMORY[0x1E69E5928](v29);
  MEMORY[0x1E69E5928](v34);
  MEMORY[0x1E69E5928](v29);
  v9 = swift_allocObject();
  v10 = v28;
  v11 = v34;
  v12 = v9;
  v13 = v29;
  v31 = v12;
  v12[2] = v27;
  v12[3] = v10;
  *(v12 + 4) = v11;
  *(v12 + 5) = v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAA8);
  v33 = sub_1C554A79C();
  sub_1C554A788();
  sub_1C5594C44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAC8);
  (*(v35 + 16))(v39, v37, v38);
  v40 = sub_1C5595484();
  v42 = v40;
  *&v14 = MEMORY[0x1E69E5928](v40).n128_u64[0];
  v41 = [v40 view];
  MEMORY[0x1E69E5920](v40);
  if (v41)
  {
    v20 = v41;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v19 = v20;
  v18 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor_];
  MEMORY[0x1E69E5920](v18);
  v15 = MEMORY[0x1E69E5920](v19);
  (*(v35 + 8))(v37, v38, v15);
  MEMORY[0x1E69E5920](v29);
  return v40;
}

unint64_t sub_1C5549C00()
{
  v2 = qword_1EC15EAA0;
  if (!qword_1EC15EAA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15EAA0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1C5549C64(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() imageDescriptorNamed_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

_BYTE *sub_1C5549CC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v102 = a4;
  v114 = a1;
  v112 = a5;
  v113 = a6;
  v115 = a2;
  v116 = a3;
  v103 = "Fatal error";
  v104 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v105 = "AppleAccountUI/AsyncIconImageBridge.swift";
  v193 = 0;
  v191 = 0.0;
  v192 = 0;
  v190 = 0;
  v189 = 0;
  memset(__b, 0, 0x39uLL);
  v186 = 0;
  v187 = 0;
  v185 = 0;
  v183 = 0;
  v176 = 0;
  v177 = 0;
  v168 = 0;
  v167 = 0;
  v165 = 0;
  v159 = 0;
  v106 = 0;
  v107 = sub_1C5595F04();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v111 = &v21 - v110;
  v119 = sub_1C5594C34();
  v117 = *(v119 - 8);
  v118 = v119 - 8;
  v6 = MEMORY[0x1EEE9AC00](v119);
  v120 = (&v21 - v7);
  v193 = v8;
  v191 = v6;
  v192 = v9;
  v190 = v115;
  v189 = v116;
  (*(v117 + 16))();
  if ((*(v117 + 88))(v120, v119) == *MEMORY[0x1E69E3A28])
  {
    (*(v117 + 96))(v120, v119);
    v99 = *v120;
    v159 = v99;
    v67 = sub_1C54127B4();
    v68 = v10;
    v69 = v11;
    v70 = v12;
    sub_1C54127C8(v111);
    v71 = sub_1C5595F44();
    (*(v108 + 8))(v111, v107);
    v74 = v147;
    v147[0] = v71;
    v72 = MEMORY[0x1E6981748];
    v73 = MEMORY[0x1E6981710];
    sub_1C5410F68();
    sub_1C5595D14();
    sub_1C5410D10();
    v75 = v141;
    v141[0] = v147[1];
    v141[1] = v147[2];
    v89 = 1;
    v142 = v148 & 1;
    v143 = v149;
    v144 = v150 & 1;
    v145 = v151;
    v146 = v152;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0);
    v94 = sub_1C546FB60();
    v98 = v153;
    sub_1C540EFD8(v75, v92, v153);
    sub_1C5410D10();
    v76 = v153[0];
    v77 = v153[1];
    v78 = v154;
    v79 = v155;
    v80 = v156;
    v81 = v157;
    v82 = v158;

    v83 = v129;
    v129[0] = v76;
    v129[1] = v77;
    v130 = v78 & 1 & v89;
    v131 = v79;
    v132 = v80 & 1 & v89;
    v133 = v81;
    v134 = v82;
    v97 = v135;
    sub_1C540EFD8(v129, v92, v135);
    sub_1C5410D10();
    v84 = v135[0];
    v85 = v135[1];
    v86 = v136;
    v87 = v137;
    v88 = v138;
    v90 = v139;
    v91 = v140;

    v95 = v122;
    v122[0] = v84;
    v122[1] = v85;
    v123 = v86 & 1 & v89;
    v124 = v87;
    v125 = v88 & 1 & v89;
    v126 = v90;
    v127 = v91;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAC0);
    v13 = sub_1C554A844();
    v96 = v128;
    sub_1C540FD1C(v95, v92, v93, v94, v13, v128);
    sub_1C5410D10();
    v100 = v160;
    v101 = 57;
    memcpy(v160, v96, 0x39uLL);
    sub_1C554AAC0(v160, &v121);
    memcpy(__b, v100, v101);
    sub_1C5410D10();
    sub_1C5410D10();

    memcpy(__dst, v100, v101);
  }

  else
  {
    *&v14 = MEMORY[0x1E69E5928](v116).n128_u64[0];
    v66 = [v115 imageForDescriptor_];
    swift_unknownObjectRelease();
    if (v66)
    {
      v65 = v66;
      v50 = v66;
      v168 = v66;
      v16 = [v66 CGImage];
      v51 = v16;
      if (v16)
      {
        v49 = v51;
      }

      else
      {
        sub_1C5596C94();
        __break(1u);
      }

      v37 = v49;
      [v50 scale];
      v36 = v17;
      sub_1C542ABC0();
      v18 = sub_1C5595EE4();
      v38 = &v166;
      v166 = v18;
      v46 = &v167;
      v42 = MEMORY[0x1E6981748];
      v43 = MEMORY[0x1E6981710];
      sub_1C540EFD8(&v166, MEMORY[0x1E6981748], &v167);
      sub_1C5410D10();
      v39 = v167;

      v40 = &v164;
      v164 = v39;
      v45 = &v165;
      sub_1C540EFD8(&v164, v42, &v165);
      sub_1C5410D10();
      v41 = v165;

      v44 = &v161;
      v161 = v41;
      sub_1C540FD1C(&v161, v42, v42, v43, v43, &v162);
      sub_1C5410D10();
      v48 = v162;
      v47 = v163;

      v186 = v48;
      v187 = v47 & 1;
      sub_1C5410D10();
      sub_1C5410D10();
      MEMORY[0x1E69E5920](v50);
      v63 = v48;
      v64 = v47;
    }

    else
    {
      sub_1C55965F4();
      v15 = sub_1C5595EF4();
      v52 = &v184;
      v184 = v15;
      v60 = &v185;
      v56 = MEMORY[0x1E6981748];
      v57 = MEMORY[0x1E6981710];
      sub_1C540EFD8(&v184, MEMORY[0x1E6981748], &v185);
      sub_1C5410D10();
      v53 = v185;

      v54 = &v182;
      v182 = v53;
      v59 = &v183;
      sub_1C540EFD8(&v182, v56, &v183);
      sub_1C5410D10();
      v55 = v183;

      v58 = &v179;
      v179 = v55;
      sub_1C54108A0(&v179, v56, v56, v57, v57, &v180);
      sub_1C5410D10();
      v62 = v180;
      v61 = v181;

      v186 = v62;
      v187 = v61 & 1;
      sub_1C5410D10();
      sub_1C5410D10();
      v63 = v62;
      v64 = v61;
    }

    v24 = &v174;
    v174 = v63;
    v27 = 1;
    v175 = v64 & 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAC0);
    v30 = sub_1C554A844();
    v33 = &v176;
    sub_1C540EFD8(v24, v29, &v176);
    sub_1C5410D10();
    v25 = v176;
    v26 = v177;

    v31 = &v171;
    v171 = v25;
    v172 = v26 & 1 & v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0);
    v19 = sub_1C546FB60();
    v32 = v173;
    sub_1C54108A0(v31, v28, v29, v19, v30, v173);
    sub_1C5410D10();
    v34 = v178;
    v35 = 57;
    memcpy(v178, v32, 0x39uLL);
    sub_1C554AAC0(v178, &v170);
    memcpy(__b, v34, v35);
    sub_1C5410D10();
    sub_1C5410D10();
    (*(v117 + 8))(v120, v119);
    memcpy(__dst, v34, v35);
  }

  v23 = v169;
  memcpy(v169, __dst, 0x39uLL);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAA8);
  sub_1C554A79C();
  sub_1C540EFD8(v23, v22, v102);
  sub_1C554ABB8();
  result = __b;
  sub_1C554ABB8();
  return result;
}

unint64_t sub_1C554A79C()
{
  v2 = qword_1EC15EAB0;
  if (!qword_1EC15EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAA8);
    sub_1C546FB60();
    sub_1C554A844();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554A844()
{
  v2 = qword_1EC15EAB8;
  if (!qword_1EC15EAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EAB8);
    return WitnessTable;
  }

  return v2;
}

id AsyncIconImageBridge.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for AsyncIconImageBridge();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id AsyncIconImageBridge.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncIconImageBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C554AAC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 56);
  sub_1C554AB78();
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10 & 1;
  return result;
}

uint64_t sub_1C554AC48()
{
  v4[0] = *(v0 + 8);
  v4[1] = *(v0 + 24);
  sub_1C5409F74(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F84();
  sub_1C5409FBC();
  return v2;
}

_OWORD *sub_1C554ACEC()
{
  v4[0] = *(v0 + 8);
  v4[1] = *(v0 + 24);
  sub_1C5409F74(v4, v3);
  sub_1C5409F74(v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F94();
  sub_1C5409FBC();
  result = v4;
  sub_1C5409FBC();
  return result;
}

_OWORD *sub_1C554ADC4@<X0>(uint64_t a1@<X8>)
{
  v10[0] = *(v1 + 8);
  v10[1] = *(v1 + 24);
  sub_1C5409F74(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595FA4();
  result = v10;
  sub_1C5409FBC();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8 & 1;
  return result;
}

uint64_t sub_1C554AEA0()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1C554AF18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 32) = a4;
}

uint64_t sub_1C554AFA0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v77 = sub_1C554C258;
  v96 = MEMORY[0x1E697CF10];
  v102 = MEMORY[0x1E697D368];
  v113 = MEMORY[0x1E697D600];
  v43 = sub_1C5411614;
  v44 = sub_1C554D870;
  v45 = MEMORY[0x1E697D340];
  v161 = 0;
  __n = 40;
  v130 = 0;
  memset(&v160[5], 0, 0x28uLL);
  memcpy(__dst, __src, sizeof(__dst));
  v61 = __dst[0];
  v71 = __dst[1];
  v72 = __dst[2];
  v73 = LOBYTE(__dst[3]);
  v62 = __dst[4];
  v131 = 0;
  v110 = sub_1C5595584();
  v103 = *(v110 - 8);
  v104 = v110 - 8;
  v47 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v105 = &v22 - v47;
  v88 = sub_1C55955D4();
  v79 = *(v88 - 8);
  v80 = v88 - 8;
  v48 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v22 - v48;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAD0);
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v49 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v22 - v49;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAD8);
  v91 = *(v94 - 8);
  v92 = v94 - 8;
  v50 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v22 - v50;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAE0);
  v97 = *(v100 - 8);
  v98 = v100 - 8;
  v51 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v22 - v51;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAE8);
  v106 = *(v109 - 8);
  v107 = v109 - 8;
  v52 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v22 - v52;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAF0);
  v117 = *(v120 - 8);
  v118 = v120 - 8;
  v53 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v22 - v53;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAF8);
  v54 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v121);
  v126 = &v22 - v54;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB00);
  v55 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128);
  v135 = &v22 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB08);
  v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v129 = &v22 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB10);
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v22 - v59;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB18);
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v69 = *(v64 + 64);
  v66 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](__src);
  v67 = &v22 - v66;
  v68 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v70 = &v22 - v68;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v22 - v3;
  v161 = &v22 - v3;
  v160[5] = v4;
  v160[6] = v71;
  v160[7] = v72;
  v127 = 1;
  v141 = 1;
  LOBYTE(v160[8]) = v73 & 1;
  v160[9] = v5;
  sub_1C554C1F0(v6, v160);
  v75 = v142;
  v142[2] = __src;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20);
  sub_1C554C260();
  sub_1C5595964();
  sub_1C554C4D4();
  v78 = sub_1C55957A4();
  sub_1C55955C4();
  v85 = sub_1C554C50C();
  MEMORY[0x1C6946710](v78, 0x3FB999999999999ALL, v130, v87, v84);
  v90 = *(v79 + 8);
  v89 = v79 + 8;
  v90(v87, v88);
  (*(v81 + 8))(v83, v84);
  v86 = sub_1C5595804();
  sub_1C55955C4();
  v159[9] = v84;
  v159[10] = v85;
  v114 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1C6946710](v86, v131, v130, v87, v94);
  v90(v87, v88);
  (*(v91 + 8))(v93, v94);
  v159[7] = v94;
  v159[8] = OpaqueTypeConformance2;
  v101 = swift_getOpaqueTypeConformance2();
  sub_1C5595C94();
  (*(v97 + 8))(v99, v100);
  sub_1C5595574();
  v159[5] = v100;
  v159[6] = v101;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = MEMORY[0x1E697C750];
  sub_1C5595E24();
  (*(v103 + 8))(v105, v110);
  (*(v106 + 8))(v108, v109);
  v159[1] = v109;
  v159[2] = v110;
  v159[3] = v111;
  v159[4] = v112;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = sub_1C5411080();
  sub_1C5411148();
  sub_1C5595BB4();
  (*(v117 + 8))(v119, v120);
  v7 = sub_1C5595E74();
  v125 = v159;
  v159[0] = v7;
  v123 = sub_1C554D3E0();
  v122 = MEMORY[0x1E69815C0];
  v124 = MEMORY[0x1E6981568];
  sub_1C5410CE8();
  sub_1C5595A74();
  sub_1C5410D10();
  sub_1C536F188(v126);
  v132 = sub_1C554D5CC();
  v8 = sub_1C5410F68();
  v133 = &v14;
  v14 = 0;
  v15 = v127;
  v16 = 0x7FF0000000000000;
  v17 = 0;
  v18 = v8;
  v19 = v9;
  v20 = v128;
  v21 = v132;
  sub_1C5595D24();
  v10 = __src;
  sub_1C536F1F0(v135);
  v11 = *(v10 + 8);
  v137 = &v165;
  v165 = v11;
  v166 = *(v10 + 24);
  sub_1C5409F74(&v165, &v155);
  v153 = v165;
  v154 = v166;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F84();
  v138 = v150;
  v139 = v151;
  v140 = v152;
  sub_1C5409FBC();
  v156 = v138;
  v157 = v139;
  if (v140 & 1 & v141)
  {
    v40 = 0;
    v41 = 1;
  }

  else
  {
    v40 = v156;
    v41 = 0;
  }

  v34 = v41;
  v35 = v40;
  v12 = *(__src + 8);
  v36 = &v163;
  v163 = v12;
  v164 = *(__src + 24);
  sub_1C5409F74(&v163, v147);
  v145 = v163;
  v146 = v164;
  sub_1C5595F84();
  v37 = v143[5];
  v38 = v143[6];
  v39 = v144;
  sub_1C5409FBC();
  v147[4] = v37;
  v148 = v38;
  v149 = v39 & 1;
  if (v39)
  {
    v32 = 0;
    v33 = 1;
  }

  else
  {
    v32 = v148;
    v33 = 0;
  }

  v23 = v33;
  v22 = v32;
  v24 = sub_1C554D674();
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C536F1F0(v129);
  v26 = type metadata accessor for CGSize();
  sub_1C554C1F0(__src, v143);
  v25 = swift_allocObject();
  memcpy((v25 + 16), __src, 0x28uLL);
  v27 = sub_1C554D878();
  v28 = sub_1C5411860();
  v20 = v28;
  sub_1C5595C64();

  sub_1C536F1F0(v60);
  v142[4] = v58;
  v142[5] = v26;
  v142[6] = v27;
  v142[7] = v28;
  v29 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v70, v63, v74);
  v31 = *(v64 + 8);
  v30 = v64 + 8;
  v31(v70, v63);
  (*(v64 + 16))(v67, v74, v63);
  sub_1C540EFD8(v67, v63, v42);
  v31(v67, v63);
  return (v31)(v74, v63);
}

uint64_t sub_1C554BE6C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v22 = a1;
  v21 = sub_1C554DE24;
  v37 = 0;
  v10[1] = 40;
  memset(&v36[5], 0, 0x28uLL);
  memcpy(__dst, v22, sizeof(__dst));
  v12 = __dst[0];
  v16 = __dst[1];
  v17 = __dst[2];
  v18 = LOBYTE(__dst[3]);
  v13 = __dst[4];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB38);
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v11 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v27 = v10 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20);
  v15 = *(*(v29 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v31 = v10 - v14;
  MEMORY[0x1EEE9AC00](v2);
  v32 = v10 - v3;
  v37 = v10 - v3;
  v36[5] = v4;
  v36[6] = v16;
  v36[7] = v17;
  LOBYTE(v36[8]) = v18 & 1;
  v36[9] = v5;
  sub_1C554C1F0(v6, v36);
  v19 = &v33;
  v34 = v22;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB48);
  sub_1C554C3B4();
  sub_1C5596164();
  sub_1C554C4D4();
  v7 = [objc_opt_self() systemGroupedBackgroundColor];
  v8 = sub_1C5595E44();
  v23 = &v35;
  v35 = v8;
  sub_1C554C308();
  sub_1C5595BF4();
  sub_1C5410D10();
  (*(v24 + 8))(v27, v26);
  v30 = sub_1C554C260();
  sub_1C540EFD8(v31, v29, v32);
  sub_1C554DE2C(v31);
  sub_1C554DEBC(v32, v31);
  sub_1C540EFD8(v31, v29, v28);
  sub_1C554DE2C(v31);
  return sub_1C554DE2C(v32);
}

uint64_t sub_1C554C1F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1C5594CF4();
  *a2 = v4;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 24);
  v6 = a1[4];

  result = a2;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1C554C260()
{
  v2 = qword_1EC15EB28;
  if (!qword_1EC15EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB20);
    sub_1C554C308();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C308()
{
  v2 = qword_1EC15EB30;
  if (!qword_1EC15EB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB38);
    sub_1C554C3B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C3B4()
{
  v2 = qword_1EC15EB40;
  if (!qword_1EC15EB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB48);
    sub_1C554C44C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C44C()
{
  v2 = qword_1EC15EB50;
  if (!qword_1EC15EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C50C()
{
  v2 = qword_1EC15EB60;
  if (!qword_1EC15EB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C554C594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v8 = a1;
  v10 = sub_1C554DF6C;
  v29 = 0;
  v28 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB48);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v20 = &v6 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v6 - v7;
  v29 = &v6 - v7;
  v28 = v4;
  v30 = *v4;
  sub_1C540955C(&v30, &v27);
  v15 = &v26;
  v26 = v30;
  KeyPath = swift_getKeyPath();
  sub_1C554C1F0(v8, v25);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v8, 0x28uLL);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E820);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB58);
  v14 = sub_1C554DF74();
  sub_1C554C44C();
  sub_1C5596104();
  v19 = sub_1C554C3B4();
  sub_1C540EFD8(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_1C540EFD8(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t sub_1C554C860@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v16 = 0;
  memset(&v14[16], 0, 0x28uLL);
  memset(v14, 0, 0x80uLL);
  memcpy(__dst, a2, sizeof(__dst));
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v14[16] = __dst[0];
  v14[17] = __dst[1];
  v14[18] = __dst[2];
  LOBYTE(v14[19]) = __dst[3] & 1;
  v14[20] = __dst[4];
  sub_1C554C1F0(a2, v12);
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB98);
  sub_1C554E00C();
  sub_1C5412C88();
  sub_1C5596024();
  sub_1C554C4D4();

  memcpy(v18, v13, sizeof(v18));
  memcpy(v11, v18, sizeof(v11));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB58);
  sub_1C554C44C();
  sub_1C540EFD8(v11, v8, v14);
  sub_1C554E094(v11);
  memcpy(v19, v14, sizeof(v19));
  sub_1C554E0E4(v19, v10);
  memcpy(v9, v19, sizeof(v9));
  sub_1C540EFD8(v9, v8, a3);
  sub_1C554E094(v9);
  return sub_1C554E094(v14);
}

uint64_t *sub_1C554CA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = v101;
  v65 = a4;
  v43 = a2;
  v42 = a3;
  v113 = 0;
  v111 = 0;
  v112 = 0;
  v69 = v101;
  memset(v101, 0, sizeof(v101));
  v30 = sub_1C5595F04();
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v23 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v31 = v22 - v23;
  v113 = a1;
  v111 = v5;
  v112 = v6;
  sub_1C554CFD8();
  v32 = sub_1C5595ED4();
  v24 = sub_1C54127B4();
  v25 = v7;
  v26 = v8;
  v27 = v9;
  sub_1C54127C8(v31);
  v33 = sub_1C5595F44();
  (*(v28 + 8))(v31, v30);

  v34 = v106;
  v106[0] = v33;
  sub_1C5595B14();
  sub_1C5410D10();
  v37 = v103;
  v103[0] = v106[1];
  v103[1] = v106[2];
  v58 = 1;
  v104 = v107 & 1;
  v105 = v108;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8);
  v36 = sub_1C5413D10();
  sub_1C5410F68();
  v38 = &v109;
  sub_1C5595D14();
  sub_1C5410D10();
  v39 = __dst;
  v40 = 72;
  memcpy(__dst, v38, sizeof(__dst));
  v41 = v102;
  memcpy(v102, __dst, sizeof(v102));
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8);
  v63 = sub_1C5413C6C();
  v70 = v110;
  sub_1C540EFD8(v41, v61, v110);
  sub_1C5410D10();
  v10 = sub_1C54637B4();
  v44 = v100;
  v100[0] = v10;
  v100[1] = v11;
  sub_1C54141E8();
  v96 = sub_1C5595A04();
  v97 = v12;
  v98 = v13;
  v99 = v14;
  v46 = v96;
  v47 = v12;
  v48 = v13;
  v49 = v14;
  v45 = sub_1C5595824();
  v92 = v46;
  v93 = v47;
  v94 = v48 & 1 & v58;
  v95 = v49;
  v88 = sub_1C55959C4();
  v89 = v15;
  v90 = v16;
  v91 = v17;
  v51 = v88;
  v52 = v15;
  v53 = v16;
  v54 = v17;

  sub_1C5412EA0(v46, v47, v48 & 1);

  v50 = sub_1C5595EA4();
  v84 = v51;
  v85 = v52;
  v86 = v53 & 1 & v58;
  v87 = v54;
  v80 = sub_1C5595984();
  v81 = v18;
  v82 = v19;
  v83 = v20;
  v55 = v80;
  v56 = v18;
  v57 = v19;
  v59 = v20;

  sub_1C5412EA0(v51, v52, v53 & 1);

  v60 = v77;
  v77[0] = v55;
  v77[1] = v56;
  v78 = v57 & 1 & v58;
  v79 = v59;
  v62 = MEMORY[0x1E6981148];
  v64 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v77, MEMORY[0x1E6981148], v69);
  sub_1C5414260(v60);
  v68 = v75;
  sub_1C554E1BC(v70, v75);
  v66 = v76;
  v76[0] = v68;
  v67 = v74;
  sub_1C54142A8(v69, v74);
  v76[1] = v67;
  v73[0] = v61;
  v73[1] = v62;
  v71 = v63;
  v72 = v64;
  sub_1C540F5A0(v66, 2uLL, v73, v65);
  sub_1C5414260(v67);
  sub_1C5410D10();
  sub_1C5414260(v69);
  result = v70;
  sub_1C5410D10();
  return result;
}

id sub_1C554CFD8()
{
  sub_1C5594CF4();
  sub_1C5594CF4();
  v11 = sub_1C5596554();
  MEMORY[0x1E69E5928](v11);

  MEMORY[0x1E69E5920](v11);
  v12 = [objc_opt_self() sharedManager];
  v13 = [v12 appBundleIdentifierForDataclass_];
  MEMORY[0x1E69E5920](v12);
  sub_1C5596574();
  MEMORY[0x1E69E5920](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB88);
  sub_1C5596E04();
  v17 = v0;
  v14 = *MEMORY[0x1E6959690];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959690]);
  *v17 = sub_1C545C2A0(v14);
  v17[1] = v1;
  MEMORY[0x1E69E5920](v14);
  v17[2] = sub_1C55965F4();
  v17[3] = v2;
  v15 = *MEMORY[0x1E6959650];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959650]);
  v17[4] = sub_1C545C2A0(v15);
  v17[5] = v3;
  MEMORY[0x1E69E5920](v15);
  v17[6] = sub_1C55965F4();
  v17[7] = v4;
  v16 = *MEMORY[0x1E6959600];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959600]);
  v17[8] = sub_1C545C2A0(v16);
  v17[9] = v5;
  MEMORY[0x1E69E5920](v16);
  v17[10] = sub_1C55965F4();
  v17[11] = v6;
  sub_1C540FCD8();
  sub_1C5596454();
  sub_1C5594CF4();
  sub_1C5596464();
  sub_1C5401ECC();
  sub_1C5418C84();
  if (v18)
  {
    v9 = sub_1C554D91C();

    MEMORY[0x1E69E5920](v11);
    return v9;
  }

  else
  {
    v8 = sub_1C540F46C();

    MEMORY[0x1E69E5920](v11);
    return v8;
  }
}

unint64_t sub_1C554D3E0()
{
  v2 = qword_1EC15EB68;
  if (!qword_1EC15EB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAE8);
    sub_1C5595584();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAD0);
    sub_1C554C50C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554D5CC()
{
  v2 = qword_1EC15EB70;
  if (!qword_1EC15EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB00);
    sub_1C554D3E0();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554D674()
{
  v2 = qword_1EC15EB78;
  if (!qword_1EC15EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB08);
    sub_1C554D5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB78);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1C554D718(uint64_t *result, double *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0;
  v3 = result[1];
  v11 = *result;
  v12 = v3;
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  v8 = a3;
  if (v9 != 0.0 || v5 != 0.0)
  {
    v13[0] = *(a3 + 8);
    v13[1] = *(a3 + 24);
    sub_1C5409F74(v13, v7);
    sub_1C5409F74(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
    sub_1C5595F94();
    sub_1C5409FBC();
    result = v13;
    sub_1C5409FBC();
  }

  return result;
}

unint64_t sub_1C554D878()
{
  v2 = qword_1EC15EB80;
  if (!qword_1EC15EB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB10);
    sub_1C554D674();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB80);
    return WitnessTable;
  }

  return v2;
}

id sub_1C554D91C()
{
  v1 = sub_1C5596554();
  v2 = [swift_getObjCClassFromMetadata() imageForDataclassWithType_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

uint64_t sub_1C554D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = sub_1C5409E40();
  v6 = v2;
  v7 = v3;
  v9 = v4;

  __b[1] = v11;
  __b[2] = v6;
  LOBYTE(__b[3]) = v7 & 1;
  __b[4] = v9;
  sub_1C5594CF4();
  sub_1C5594CF4();
  __b[0] = a1;

  sub_1C554C4D4();
  result = a1;
  *a2 = a1;
  *(a2 + 8) = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1C554DB24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C554DC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C554DE2C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB38);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20);

  return a1;
}

uint64_t sub_1C554DEBC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB38);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1C554DF74()
{
  v2 = qword_1EC15EB90;
  if (!qword_1EC15EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E820);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554E00C()
{
  v2 = qword_1EC15EBA0;
  if (!qword_1EC15EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C554E094(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 96), *(a1 + 104), *(a1 + 112) & 1);

  return a1;
}

uint64_t sub_1C554E0E4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x30uLL);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  sub_1C54130AC(v4, v5, v6 & 1);
  *(a2 + 96) = v4;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6 & 1;
  v9 = *(a1 + 120);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 120) = v9;
  return result;
}

uint64_t sub_1C554E1BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x30uLL);
  return a2;
}

uint64_t sub_1C554E224()
{
  sub_1C55965F4();
  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C554E3F8()
{
  sub_1C5596E04();
  *v0 = "fullName";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  *(v0 + 24) = "customName";
  *(v0 + 32) = 10;
  *(v0 + 40) = 2;
  sub_1C540FCD8();
  v4 = sub_1C5596D64();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1C554E52C()
{
  result = sub_1C5596E04();
  *v1 = 0;
  v1[1] = 1;
  sub_1C540FCD8();
  return result;
}

uint64_t sub_1C554E724@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C554E3F8();
  *a1 = result;
  return result;
}

uint64_t sub_1C554E75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C554E57C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C554E794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C554E52C();
  *a1 = result;
  return result;
}

unint64_t sub_1C554E7F0()
{
  v2 = qword_1EC15EBA8;
  if (!qword_1EC15EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C5C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBA8);
    return WitnessTable;
  }

  return v2;
}

id sub_1C554E8F0(uint64_t a1, void *a2)
{
  v10 = a1;
  v9 = a2;
  *&v2 = MEMORY[0x1E69E5928](a2).n128_u64[0];
  if (a2)
  {
    v4 = [a2 navigationController];
    MEMORY[0x1E69E5920](a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return v7;
  }

  sub_1C54F02F8();
  return sub_1C5404B48();
}

uint64_t sub_1C554EA10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C554E88C();
  *a1 = result;
  return result;
}

unint64_t sub_1C554EA88()
{
  v2 = qword_1EC15EBB0;
  if (!qword_1EC15EBB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBB0);
    return WitnessTable;
  }

  return v2;
}

void sub_1C554EB4C()
{
  sub_1C554EA88();
  sub_1C5595724();
  __break(1u);
}

uint64_t sub_1C554EB8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C554ECD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C554EF14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C554EEB0();
  *a1 = result;
  return result;
}

unint64_t sub_1C554EF8C()
{
  v2 = qword_1EC15EBB8;
  if (!qword_1EC15EBB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBB8);
    return WitnessTable;
  }

  return v2;
}

void sub_1C554F050()
{
  sub_1C554EF8C();
  sub_1C5595724();
  __break(1u);
}

id sub_1C554F0A4(void *a1)
{
  v35 = a1;
  v45 = 0;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v34 = 0;
  v42 = sub_1C5594C74();
  v36 = v42;
  v37 = *(v42 - 8);
  v41 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v1 = &v12 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  v57 = v2;
  v56 = v3;
  v4 = sub_1C54B05F8();
  (*(v41 + 16))(v1, v4, v42);
  v47 = sub_1C5594C54();
  v43 = v47;
  v46 = sub_1C5596974();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v48 = sub_1C5596E04();
  if (os_log_type_enabled(v47, v46))
  {
    v5 = v34;
    v25 = sub_1C5596A74();
    v21 = v25;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v23 = 0;
    v26 = sub_1C5419DC0(0);
    v24 = v26;
    v27 = sub_1C5419DC0(v23);
    v52 = v25;
    v51 = v26;
    v50 = v27;
    v28 = 0;
    v29 = &v52;
    sub_1C5419E14(0, &v52);
    sub_1C5419E14(v28, v29);
    v49 = v48;
    v30 = &v12;
    MEMORY[0x1EEE9AC00](&v12);
    v31 = &v12 - 6;
    *(&v12 - 4) = v6;
    *(&v12 - 3) = &v51;
    *(&v12 - 2) = &v50;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v33 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v43, v44, "Creating LegacyContactsView.", v21, 2u);
      v19 = 0;
      sub_1C5419E74(v24);
      sub_1C5419E74(v27);
      sub_1C5596A54();

      v20 = v33;
    }
  }

  else
  {

    v20 = v34;
  }

  (*(v38 + 8))(v40, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBC0);
  v7 = v35;
  memset(v54, 0, sizeof(v54));
  v13 = type metadata accessor for LegacyContactsViewModel();
  sub_1C54F56B4();
  v14 = v55;
  sub_1C54768EC(v35, v54, v13, v55);
  v18 = sub_1C5595484();
  v53 = v18;
  v8 = v18;
  sub_1C55965F4();
  v15 = v9;
  sub_1C54637B4();
  v16 = v10;
  v17 = sub_1C5596554();

  [v18 setTitle_];

  return v18;
}

void *sub_1C554F6C8(void *a1)
{
  v36 = a1;
  v46 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v31 = 0;
  v32 = sub_1C5594994();
  v33 = *(v32 - 8);
  v34 = v33;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C5594C74();
  v37 = v43;
  v38 = *(v43 - 8);
  v42 = v38;
  v39 = v38;
  v40 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v2 = &v12 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  v57 = v3;
  v56 = v4;
  v5 = sub_1C54B05F8();
  (*(v42 + 16))(v2, v5, v43);
  v48 = sub_1C5594C54();
  v44 = v48;
  v47 = sub_1C5596974();
  v45 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v49 = sub_1C5596E04();
  if (os_log_type_enabled(v48, v47))
  {
    v6 = v31;
    v22 = sub_1C5596A74();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v20 = 0;
    v23 = sub_1C5419DC0(0);
    v21 = v23;
    v24 = sub_1C5419DC0(v20);
    v53 = v22;
    v52 = v23;
    v51 = v24;
    v25 = 0;
    v26 = &v53;
    sub_1C5419E14(0, &v53);
    sub_1C5419E14(v25, v26);
    v50 = v49;
    v27 = &v12;
    MEMORY[0x1EEE9AC00](&v12);
    v28 = (&v12 - 6);
    *(&v12 - 4) = v7;
    *(&v12 - 3) = &v52;
    *(&v12 - 2) = &v51;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v30 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v44, v45, "Creating LegacyContactsViewModel.", v18, 2u);
      v16 = 0;
      sub_1C5419E74(v21);
      sub_1C5419E74(v24);
      sub_1C5596A54();

      v17 = v30;
    }
  }

  else
  {

    v17 = v31;
  }

  (*(v39 + 8))(v41, v37);
  sub_1C5594984();
  v14 = sub_1C5594944();
  v15 = v8;
  v54 = v14;
  v55 = v8;
  (*(v34 + 8))(v35, v32);
  v13 = 0;
  type metadata accessor for LegacyContactsViewModel();
  v9 = v36;
  v12 = sub_1C54F51C8();
  v10 = sub_1C542ABC0();
  return sub_1C54F51F4(v36, v12, v13, v13, v10 & 1, v14, v15);
}

void *sub_1C554FC94(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v42 = a2;
  v41 = a1;
  v52 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v35 = 0;
  v36 = sub_1C5594994();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C5594C74();
  v43 = v49;
  v44 = *(v49 - 8);
  v48 = v44;
  v45 = v44;
  v46 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v16 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v4;
  v65 = v5;
  v63 = v6;
  v64 = v7;
  v62 = v8;
  v9 = sub_1C54B05F8();
  (*(v48 + 16))(v4, v9, v49);
  v54 = sub_1C5594C54();
  v50 = v54;
  v53 = sub_1C5596974();
  v51 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v55 = sub_1C5596E04();
  if (os_log_type_enabled(v54, v53))
  {
    v10 = v35;
    v26 = sub_1C5596A74();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v24 = 0;
    v27 = sub_1C5419DC0(0);
    v25 = v27;
    v28 = sub_1C5419DC0(v24);
    v59 = v26;
    v58 = v27;
    v57 = v28;
    v29 = 0;
    v30 = &v59;
    sub_1C5419E14(0, &v59);
    sub_1C5419E14(v29, v30);
    v56 = v55;
    v31 = &v16;
    MEMORY[0x1EEE9AC00](&v16);
    v32 = (&v16 - 6);
    *(&v16 - 4) = v11;
    *(&v16 - 3) = &v58;
    *(&v16 - 2) = &v57;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v34 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v50, v51, "Creating LegacyContactsViewModel.", v22, 2u);
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

  (*(v45 + 8))(v47, v43);
  sub_1C5594984();
  v18 = sub_1C5594944();
  v19 = v12;
  v60 = v18;
  v61 = v12;
  (*(v38 + 8))(v39, v36);
  v17 = 0;
  type metadata accessor for LegacyContactsViewModel();
  v13 = v41;
  v16 = sub_1C54F51C8();
  v14 = sub_1C542ABC0();
  return sub_1C54F51F4(v41, v16, v17, v17, v14 & 1, v18, v19);
}

id LegacyContactsViewFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LegacyContactsViewFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id LegacyContactsViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyContactsViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C555042C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C55504FC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F94();
  sub_1C5409FBC();
}

uint64_t sub_1C55505F4@<X0>(uint64_t a1@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595FA4();

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7 & 1;
  return result;
}

uint64_t sub_1C5550790(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
}

uint64_t sub_1C5550818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = &v168;
  v46 = a5;
  v75 = 0;
  v77 = sub_1C55516CC;
  v96 = MEMORY[0x1E697CF10];
  v107 = MEMORY[0x1E697D600];
  v119 = MEMORY[0x1E697D368];
  v47 = sub_1C5411614;
  v48 = sub_1C5552210;
  v49 = MEMORY[0x1E697D340];
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v171 = a1;
  v172 = a2;
  v173 = a3;
  v174 = a4;
  *&v131 = a1;
  *(&v131 + 1) = a2;
  v132 = a3;
  v134 = a4;
  v124 = 0;
  v104 = sub_1C5595584();
  v97 = *(v104 - 8);
  v98 = v104 - 8;
  v50 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v99 = v23 - v50;
  v88 = sub_1C55955D4();
  v79 = *(v88 - 8);
  v80 = v88 - 8;
  v51 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88);
  v87 = v23 - v51;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBC8);
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v52 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v83 = v23 - v52;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBD0);
  v91 = *(v94 - 8);
  v92 = v94 - 8;
  v53 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v93 = v23 - v53;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBD8);
  v100 = *(v103 - 8);
  v101 = v103 - 8;
  v54 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v103);
  v102 = v23 - v54;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBE0);
  v112 = *(v114 - 8);
  v113 = v114 - 8;
  v55 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v114);
  v115 = v23 - v55;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBE8);
  v56 = (*(*(v117 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v117);
  v116 = v23 - v56;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBF0);
  v127 = *(v130 - 8);
  v128 = v130 - 8;
  v57 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v130);
  v129 = v23 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBF8);
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v122 = v23 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC00);
  v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v23 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC08);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v23 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC10);
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v72 = *(v67 + 64);
  v69 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v70 = v23 - v69;
  v71 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23 - v69);
  v73 = v23 - v71;
  MEMORY[0x1EEE9AC00](v23 - v71);
  v74 = v23 - v5;
  v170 = v23 - v5;
  v168 = v131;
  v121 = 1;
  v138 = 1;
  LOBYTE(v169) = v132 & 1;
  *(&v169 + 1) = v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18);
  sub_1C5551924();
  sub_1C5595964();
  v78 = sub_1C55957A4();
  sub_1C55955C4();
  v85 = sub_1C5551AF4();
  v123 = 0;
  MEMORY[0x1C6946710](v78, 0x3FB999999999999ALL);
  v90 = *(v79 + 8);
  v89 = v79 + 8;
  v90(v87, v88);
  (*(v81 + 8))(v83, v84);
  v86 = sub_1C5595804();
  sub_1C55955C4();
  v167[3] = v84;
  v167[4] = v85;
  v120 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1C6946710](v86, v124, v123, v87, v94);
  v90(v87, v88);
  (*(v91 + 8))(v93, v94);
  sub_1C5595574();
  v167[1] = v94;
  v167[2] = OpaqueTypeConformance2;
  v105 = swift_getOpaqueTypeConformance2();
  v106 = MEMORY[0x1E697C750];
  sub_1C5595E24();
  (*(v97 + 8))(v99, v104);
  (*(v100 + 8))(v102, v103);
  v7 = sub_1C5595E74();
  v111 = v167;
  v167[0] = v7;
  v163 = v103;
  v164 = v104;
  v165 = v105;
  v166 = v106;
  v109 = swift_getOpaqueTypeConformance2();
  v108 = MEMORY[0x1E69815C0];
  v110 = MEMORY[0x1E6981568];
  sub_1C5410CE8();
  sub_1C5595A74();
  sub_1C5410D10();
  (*(v112 + 8))(v115, v114);
  v118 = sub_1C5551D48();
  sub_1C5595C94();
  sub_1C536F3A8(v116);
  v161 = v117;
  v162 = v118;
  v125 = swift_getOpaqueTypeConformance2();
  v8 = sub_1C5410F68();
  v126 = &v15;
  v15 = 0;
  v16 = v121;
  v17 = 0x7FF0000000000000;
  v18 = 0;
  v19 = v8;
  v20 = v9;
  v21 = v130;
  v22 = v125;
  sub_1C5595D24();
  (*(v127 + 8))(v129, v130);

  v155 = v131;
  v156 = v132 & 1 & v138;
  v157 = v134;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F84();
  v135 = v152;
  v136 = v153;
  v137 = v154;

  v158 = v135;
  v159 = v136;
  if (v137 & 1 & v138)
  {
    v43 = 0;
    v44 = 1;
  }

  else
  {
    v43 = v158;
    v44 = 0;
  }

  v37 = v44;
  v38 = v43;

  v146 = v131;
  v42 = 1;
  v147 = v132 & 1;
  v148 = v134;
  sub_1C5595F84();
  v39 = v143;
  v40 = v144;
  v41 = v145;

  v149 = v39;
  v150 = v40;
  if (v41 & 1 & v42)
  {
    v35 = 0;
    v36 = 1;
  }

  else
  {
    v35 = v150;
    v36 = 0;
  }

  v24 = v36;
  v23[1] = v35;
  v25 = sub_1C5551EEC();
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C536F438(v122);
  v26 = sub_1C5551FE0();
  v27 = sub_1C5411080();
  sub_1C5411148();
  sub_1C5595BB4();
  sub_1C536F438(v62);
  v29 = type metadata accessor for CGSize();

  v10 = swift_allocObject();
  v11 = *(&v131 + 1);
  v12 = v132;
  v13 = v134;
  v28 = v10;
  *(v10 + 16) = v131;
  *(v10 + 24) = v11;
  *(v10 + 32) = v12 & 1;
  *(v10 + 40) = v13;
  v30 = sub_1C5552254();
  v31 = sub_1C5411860();
  v21 = v31;
  sub_1C5595C64();

  sub_1C536F438(v65);
  v139 = v63;
  v140 = v29;
  v141 = v30;
  v142 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v73, v66, v74);
  v34 = *(v67 + 8);
  v33 = v67 + 8;
  v34(v73, v66);
  (*(v67 + 16))(v70, v74, v66);
  sub_1C540EFD8(v70, v66, v46);
  v34(v70, v66);
  return (v34)(v74, v66);
}

uint64_t sub_1C55516CC@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v9 = 0;
  v10 = sub_1C5551B7C;
  v22 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC30);
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v5 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18);
  v7 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v5 - v7;
  v8 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v7);
  v20 = &v5 - v8;
  v22 = &v5 - v8;
  sub_1C5551A78();
  sub_1C5596164();
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  v3 = sub_1C5595E44();
  v11 = &v21;
  v21 = v3;
  sub_1C55519CC();
  sub_1C5595BF4();
  sub_1C5410D10();
  (*(v12 + 8))(v15, v14);
  v18 = sub_1C5551924();
  sub_1C540EFD8(v19, v17, v20);
  sub_1C5553304(v19);
  sub_1C5553394(v20, v19);
  sub_1C540EFD8(v19, v17, v16);
  sub_1C5553304(v19);
  return sub_1C5553304(v20);
}

unint64_t sub_1C5551924()
{
  v2 = qword_1EC15EC20;
  if (!qword_1EC15EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC18);
    sub_1C55519CC();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55519CC()
{
  v2 = qword_1EC15EC28;
  if (!qword_1EC15EC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC30);
    sub_1C5551A78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551A78()
{
  v2 = qword_1EC169E00[0];
  if (!qword_1EC169E00[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC169E00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551AF4()
{
  v2 = qword_1EC15EC38;
  if (!qword_1EC15EC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC38);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5551B7C@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  sub_1C55965F4();
  v4 = sub_1C5595F14();
  sub_1C55965F4();
  v5 = sub_1C54637B4();
  v6 = v1;

  sub_1C55965F4();
  v7 = sub_1C54637B4();
  v8 = v2;

  sub_1C540EFC0(v4, v5, v6, v7, v8, v18);
  memcpy(__dst, v18, sizeof(__dst));
  sub_1C5551A78();
  sub_1C540EFD8(__dst, &unk_1F447EC60, __b);
  sub_1C5412D34();
  v9 = __b[0];
  v10 = __b[1];
  v11 = __b[2];
  v12 = __b[3];
  v13 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  sub_1C540EFD8(v15, &unk_1F447EC60, a1);
  sub_1C5412D34();
  result = __b;
  sub_1C5412D34();
  return result;
}

unint64_t sub_1C5551D48()
{
  v2 = qword_1EC15EC40;
  if (!qword_1EC15EC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBD8);
    sub_1C5595584();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBC8);
    sub_1C5551AF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551EEC()
{
  v2 = qword_1EC15EC48;
  if (!qword_1EC15EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBE8);
    sub_1C5551D48();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551FE0()
{
  v2 = qword_1EC15EC50;
  if (!qword_1EC15EC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC00);
    sub_1C5551EEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5552084(uint64_t a1, double *a2)
{
  if (*a2 != 0.0 || a2[1] != 0.0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
    sub_1C5595F94();
    sub_1C5409FBC();
  }

  return result;
}

unint64_t sub_1C5552254()
{
  v2 = qword_1EC15EC58;
  if (!qword_1EC15EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC08);
    sub_1C5551FE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55522F8()
{
  v1 = sub_1C5409E40();

  sub_1C5409FBC();
  return v1;
}

uint64_t sub_1C5552434@<X0>(uint64_t a1@<X8>)
{
  memset(&v10[25], 0, 0x28uLL);
  memset(v10, 0, 0xC8uLL);
  memcpy(__dst, v1, sizeof(__dst));
  v10[25] = __dst[0];
  v10[26] = __dst[1];
  v10[27] = __dst[2];
  v10[28] = __dst[3];
  v10[29] = __dst[4];
  sub_1C5595354();
  sub_1C5412728(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC60);
  sub_1C5552B00();
  sub_1C5596024();
  sub_1C5412D34();
  memcpy(v12, v9, sizeof(v12));
  memcpy(v7, v12, sizeof(v7));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC70);
  sub_1C5552B88();
  sub_1C540EFD8(v7, v4, v10);
  sub_1C5552C10(v7);
  memcpy(v13, v10, sizeof(v13));
  sub_1C5552C9C(v13, v6);
  memcpy(v5, v13, sizeof(v5));
  sub_1C540EFD8(v5, v4, a1);
  sub_1C5552C10(v5);
  return sub_1C5552C10(v10);
}

uint64_t *sub_1C555260C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  __src = a1;
  v43 = sub_1C5413E90;
  __n = 40;
  __c = 0;
  memset(&v81[11], 0, 0x28uLL);
  v60 = v70;
  v50 = 88;
  memset(v70, 0, sizeof(v70));
  memcpy(v82, __src, sizeof(v82));
  v12 = v82[0];
  v14 = v82[1];
  v15 = v82[2];
  v16 = v82[3];
  v13 = v82[4];
  v41 = 0;
  v23 = sub_1C5595F04();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  MEMORY[0x1EEE9AC00](__src);
  v24 = &v10 - v2;
  v81[11] = v3;
  v81[12] = v14;
  v81[13] = v15;
  v81[14] = v16;
  v81[15] = v4;
  v25 = *v5;

  v17 = sub_1C54127B4();
  v18 = v6;
  v19 = v7;
  v20 = v8;
  sub_1C54127C8(v24);
  v26 = sub_1C5595F44();
  (*(v21 + 8))(v24, v23);

  v27 = v76;
  v76[0] = v26;
  sub_1C5595B14();
  sub_1C5410D10();
  v31 = v73;
  v73[0] = v76[1];
  v73[1] = v76[2];
  v42 = 1;
  v74 = v77 & 1;
  v75 = v78;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8);
  v30 = sub_1C5413D10();
  sub_1C5410F68();
  v32 = &v79;
  sub_1C5595D14();
  sub_1C5410D10();
  v33 = v83;
  v34 = 72;
  memcpy(v83, v32, sizeof(v83));
  v37 = v72;
  memcpy(v72, v83, sizeof(v72));
  v36 = sub_1C5595E54();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8);
  sub_1C5413C6C();
  v38 = &v80;
  sub_1C5595B94();

  sub_1C5410D10();
  v39 = __dst;
  memcpy(__dst, v38, v50);
  v40 = v71;
  memcpy(v71, v39, v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEB8);
  v54 = sub_1C5413BC4();
  v61 = v81;
  sub_1C540EFD8(v40, v52, v81);
  sub_1C5553224();
  v46 = sub_1C5595434();
  sub_1C5412728(__src, v68);
  v44 = v62;
  v62[2] = __src;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEF0);
  sub_1C5413E98();
  v48 = &v69;
  sub_1C5596064();
  sub_1C5412D34();
  v49 = v85;
  memcpy(v85, v48, v50);
  v51 = v67;
  memcpy(v67, v49, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF00);
  v55 = sub_1C5413F20();
  sub_1C540EFD8(v51, v53, v60);
  sub_1C5413FA8(v51);
  v59 = v65;
  sub_1C5553268(v61, v65);
  v57 = v66;
  v66[0] = v59;
  v58 = v64;
  sub_1C54140E0(v60, v64);
  v66[1] = v58;
  v63[0] = v52;
  v63[1] = v53;
  v62[3] = v54;
  v62[4] = v55;
  sub_1C540F5A0(v57, 2uLL, v63, v56);
  sub_1C5413FA8(v58);
  sub_1C5553224();
  sub_1C5413FA8(v60);
  result = v61;
  sub_1C5553224();
  return result;
}

unint64_t sub_1C5552B00()
{
  v2 = qword_1EC15EC68;
  if (!qword_1EC15EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5552B88()
{
  v2 = qword_1EC15EC78;
  if (!qword_1EC15EC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5552C10(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 136), *(a1 + 144), *(a1 + 152) & 1);

  sub_1C5412EA0(*(a1 + 168), *(a1 + 176), *(a1 + 184) & 1);

  return a1;
}

uint64_t sub_1C5552C9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x30uLL);
  v4 = *(a1 + 96);

  *(a2 + 96) = v4;
  v5 = *(a1 + 104);

  *(a2 + 104) = v5;
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  sub_1C54130AC(v6, v7, v8 & 1);
  *(a2 + 136) = v6;
  *(a2 + 144) = v7;
  *(a2 + 152) = v8 & 1;
  v9 = *(a1 + 160);
  sub_1C5594CF4();
  *(a2 + 160) = v9;
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  v12 = *(a1 + 184);
  sub_1C54130AC(v10, v11, v12 & 1);
  *(a2 + 168) = v10;
  *(a2 + 176) = v11;
  *(a2 + 184) = v12 & 1;
  v15 = *(a1 + 192);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 192) = v15;
  return result;
}

uint64_t sub_1C5552EA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 32))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v4 = *(a1 + 24);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C5552FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C5553224()
{
}

uint64_t sub_1C5553268(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x30uLL);
  v5 = a1[9];

  *(a2 + 72) = v5;
  v7 = a1[10];

  result = a2;
  *(a2 + 80) = v7;
  return result;
}

uint64_t sub_1C5553304(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC30);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18);

  return a1;
}

uint64_t sub_1C5553394(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC30);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1C5553450@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v22 = MEMORY[0x1E6981198];
  v27 = sub_1C5553AE8;
  v24 = sub_1C5553EAC;
  v54 = 0;
  v20 = 40;
  memset(&v53[5], 0, 0x28uLL);
  memcpy(__dst, v40, sizeof(__dst));
  v13 = __dst[0];
  v17 = __dst[1];
  v18 = LOBYTE(__dst[2]);
  v19 = __dst[3];
  v14 = __dst[4];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC80);
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v10 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v9 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC88);
  v11 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v9 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC90);
  v12 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v9 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC98);
  v16 = *(*(v45 - 8) + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v47 = &v9 - v15;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v9 - v2;
  v54 = &v9 - v2;
  v53[5] = v3;
  v53[6] = v17;
  LOBYTE(v53[7]) = v18;
  v53[8] = v19;
  v53[9] = v4;
  sub_1C5470FB4(v5, v53);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v40, v20);
  sub_1C5470FB4(v40, v52);
  v25 = &v49;
  v50 = v40;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECA0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECA8);
  v6 = sub_1C5553EB4();
  v51[1] = v21;
  v51[2] = v6;
  swift_getOpaqueTypeConformance2();
  sub_1C5595FD4();
  sub_1C5470F7C();
  v7 = sub_1C5553FB8(*(v40 + 16) & 1);
  v32 = v51;
  v51[0] = v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECB8);
  v29 = sub_1C555400C();
  v30 = sub_1C5554094();
  v31 = sub_1C55056A4();
  sub_1C5595A84();
  sub_1C5410D10();
  (*(v33 + 8))(v36, v35);
  v38 = sub_1C5554134();
  sub_1C544B7B0();
  sub_1C5595B34();
  sub_1C536F5D8(v39);
  v42 = sub_1C5554264(*(v40 + 16) & 1);
  sub_1C55542B4();
  sub_1C5595B94();

  sub_1C536F668(v43);
  v46 = sub_1C555435C();
  sub_1C540EFD8(v47, v45, v48);
  sub_1C536F774(v47);
  sub_1C536F8BC(v48, v47);
  sub_1C540EFD8(v47, v45, v44);
  sub_1C536F774(v47);
  return sub_1C536F774(v48);
}

uint64_t sub_1C5553AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v15 = a1;
  v30 = MEMORY[0x1E6981198];
  v54 = 0;
  v53 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECA0);
  v31 = *(v37 - 8);
  v32 = v37 - 8;
  v12 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v12 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v12 - v13;
  v54 = &v12 - v13;
  v53 = v4;
  v55 = *v4;
  sub_1C5402BDC(&v55, &v51);
  v14 = &v50;
  v50 = v55;
  sub_1C54141E8();
  v46 = sub_1C5595A04();
  v47 = v5;
  v48 = v6;
  v49 = v7;
  v21 = v43;
  v43[0] = v46;
  v43[1] = v5;
  v16 = 1;
  v20 = 1;
  v44 = v6 & 1;
  v45 = v7;
  v8 = sub_1C5553F54();
  v19 = sub_1C54AFEF4(v8, v9 & 1);
  v17 = MEMORY[0x1E6981148];
  v18 = MEMORY[0x1E6981138];
  sub_1C5410F68();
  v22 = &v52;
  v26 = 0;
  sub_1C5595D24();
  sub_1C5414260(v21);
  v23 = __dst;
  v24 = 144;
  memcpy(__dst, v22, sizeof(__dst));
  v27 = v42;
  memcpy(v42, __dst, sizeof(v42));
  sub_1C5595884();
  v25 = v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECA8);
  v29 = sub_1C5553EB4();
  sub_1C5595A94();
  sub_1C5414260(v27);
  v40 = v28;
  v41 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v35, v37, v36);
  v39 = *(v31 + 8);
  v38 = v31 + 8;
  v39(v35, v37);
  (*(v31 + 16))(v35, v36, v37);
  sub_1C540EFD8(v35, v37, v33);
  v39(v35, v37);
  return (v39)(v36, v37);
}

unint64_t sub_1C5553EB4()
{
  v2 = qword_1EC15ECB0;
  if (!qword_1EC15ECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5553FB8(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return sub_1C5595E54();
  }
}

unint64_t sub_1C555400C()
{
  v2 = qword_1EC15ECC0;
  if (!qword_1EC15ECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5554094()
{
  v2 = qword_1EC15ECC8;
  if (!qword_1EC15ECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5554134()
{
  v2 = qword_1EC15ECD0;
  if (!qword_1EC15ECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC88);
    sub_1C555400C();
    sub_1C55541DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55541DC()
{
  v2 = qword_1EC15ECD8;
  if (!qword_1EC15ECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5554264(char a1)
{
  if (a1)
  {
    return sub_1C5595E54();
  }

  else
  {
    return sub_1C5595E84();
  }
}

unint64_t sub_1C55542B4()
{
  v2 = qword_1EC15ECE8;
  if (!qword_1EC15ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC90);
    sub_1C5554134();
    sub_1C54EC138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C555435C()
{
  v2 = qword_1EC15ECF0;
  if (!qword_1EC15ECF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC98);
    sub_1C55542B4();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5554404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  sub_1C5594CF4();
  sub_1C5594CF4();
  __b[0] = a1;
  __b[1] = a2;
  LOBYTE(__b[2]) = a3 & 1;

  __b[3] = a4;
  __b[4] = a5;

  sub_1C5470F7C();
  result = a1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

unint64_t sub_1C55545DC()
{
  v2 = qword_1EC15ECF8;
  if (!qword_1EC15ECF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55546D8()
{
  v2 = qword_1EC15ED00;
  if (!qword_1EC15ED00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5554754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1C555486C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C5554A7C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1C5554AB4@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  sub_1C54367BC((v5[1] + *(v3 + 20)), v1);
  sub_1C5595004();
  return sub_1C5436890(v7);
}

uint64_t type metadata accessor for SignInDataclassActionConfirmationAlert()
{
  v1 = qword_1EC16A130;
  if (!qword_1EC16A130)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C5554C60(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1C54367BC(v2, (&v5 - v6));
  v3 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  sub_1C5436BB4(v7, (v1 + *(v3 + 20)));
  return sub_1C5436890(v8);
}

uint64_t sub_1C5554D10()
{
  type metadata accessor for SignInDataclassActionConfirmationAlert();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5554DA8()
{
  type metadata accessor for SignInDataclassActionConfirmationAlert();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C5554E6C(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SignInDataclassActionConfirmationAlert() + 24));
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

uint64_t sub_1C5554F58()
{
  type metadata accessor for SignInDataclassActionConfirmationAlert();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5555008()
{
  v2 = *(v0 + *(type metadata accessor for SignInDataclassActionConfirmationAlert() + 24));

  return v2 & 1;
}

uint64_t sub_1C5555054(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SignInDataclassActionConfirmationAlert() + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C55550B0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v74 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED08);
  v57 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v59 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v17 - v59;
  MEMORY[0x1EEE9AC00](&v17 - v59);
  v58 = &v17 - v59;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v17 - v59;
  v100 = &v17 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED10);
  v62 = *(v61 - 8);
  v63 = v62;
  v65 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v17 - v67;
  MEMORY[0x1EEE9AC00](&v17 - v67);
  v66 = &v17 - v67;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v17 - v67;
  v99 = &v17 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED18);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = &v17 - v72;
  MEMORY[0x1EEE9AC00](&v17 - v72);
  v73 = &v17 - v72;
  v98 = &v17 - v72;
  v97 = v1;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v29 = MEMORY[0x1E6981E70];
    v30 = MEMORY[0x1E6981E60];
    sub_1C544B78C();
    v49 = 1;
    v36 = 0;
    sub_1C5596064();
    v83[2] = v85;
    v83[3] = v86;
    v84 = v87;
    sub_1C55965F4();
    v31 = v4;
    v32 = sub_1C54637B4();
    v33 = v5;

    v83[0] = v32;
    v83[1] = v33;
    v39 = sub_1C5554F58();
    v40 = v6;
    v34 = v7;
    v38 = &v17;
    MEMORY[0x1EEE9AC00](&v17);
    v35 = v14;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED30);
    v46 = sub_1C5518AB8();
    v47 = sub_1C54141E8();
    v50 = sub_1C5556DA0();
    v48 = MEMORY[0x1E6981138];
    v37 = v13;
    v16 = MEMORY[0x1E6981138];
    v15 = v50;
    v14[1] = v47;
    v14[0] = v46;
    v45 = MEMORY[0x1E6981148];
    v13[3] = MEMORY[0x1E6981148];
    v13[2] = v44;
    v43 = MEMORY[0x1E69E6158];
    v13[1] = MEMORY[0x1E69E6158];
    v13[0] = v42;
    v41 = v83;
    sub_1C5595D04();

    sub_1C5401ECC();
    v75 = v42;
    v76 = v43;
    v77 = v44;
    v78 = v45;
    v79 = v46;
    v80 = v47;
    v81 = v50;
    v82 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v66, v61, v68);
    v52 = *(v63 + 8);
    v53 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52(v66, v61);
    v74 = v66;
    v28 = *(v63 + 16);
    v27 = v63 + 16;
    v28(v64, v68, v61);
    sub_1C540EFD8(v64, v61, v66);
    v52(v64, v61);
    v28(v64, v66, v61);
    v8 = sub_1C5556E28();
    sub_1C540FD1C(v64, v61, v55, OpaqueTypeConformance2, v8, v71);
    v52(v64, v61);
    sub_1C536FC70(v71, v73);
    v52(v66, v61);
    v52(v68, v61);
  }

  else
  {
    v25 = &v17;
    MEMORY[0x1EEE9AC00](&v17);
    v22 = v14;
    v15 = v9;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20);
    v24 = sub_1C5556C48();
    sub_1C544B78C();
    sub_1C5596064();
    v26 = sub_1C5556E28();
    sub_1C540EFD8(v58, v55, v60);
    sub_1C536FAF0(v58);
    v96 = v58;
    sub_1C536FB7C(v60, v56);
    sub_1C540EFD8(v56, v55, v58);
    sub_1C536FAF0(v56);
    sub_1C536FB7C(v58, v56);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30);
    v20 = sub_1C5518AB8();
    v21 = sub_1C54141E8();
    v10 = sub_1C5556DA0();
    v88 = v18;
    v89 = MEMORY[0x1E69E6158];
    v90 = v19;
    v91 = MEMORY[0x1E6981148];
    v92 = v20;
    v93 = v21;
    v94 = v10;
    v95 = MEMORY[0x1E6981138];
    v11 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v56, v61, v55, v11, v26, v71);
    sub_1C536FAF0(v56);
    sub_1C536FC70(v71, v73);
    sub_1C536FAF0(v58);
    sub_1C536FAF0(v60);
  }

  sub_1C536FE08(v73, v71);
  sub_1C5557758();
  sub_1C540EFD8(v71, v69, v54);
  sub_1C536FFA0(v71);
  return sub_1C536FFA0(v73);
}

uint64_t sub_1C5555C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v41 = a1;
  v64 = 0;
  v63 = nullsub_1;
  v34 = sub_1C5557DB0;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v57 = 0;
  v2 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  v35 = *(v2 - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v39 = (v21 - v38);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90);
  v40 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v62 = v21 - v40;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v69 = *(v71 - 8);
  v70 = v71 - 8;
  v42 = (v69[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v21 - v42;
  v44 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v45 = v21 - v44;
  v46 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v74 = v21 - v46;
  v47 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v67 = v21 - v47;
  v83 = v21 - v47;
  v82 = v10;
  v58 = 1;
  v50 = sub_1C55965F4();
  v54 = v11;
  v48 = sub_1C5439370();
  v53 = sub_1C5576C44();
  v49 = sub_1C55965F4();
  v52 = v12;
  sub_1C54398B0();
  v51 = v13;
  v55 = sub_1C55947B4();
  v56 = v14;

  MEMORY[0x1E69E5920](v53);

  v65 = v81;
  v81[0] = v55;
  v81[1] = v56;
  sub_1C5594F14();
  v59 = sub_1C5594F34();
  v15 = *(v59 - 8);
  v60 = *(v15 + 56);
  v61 = v15 + 56;
  v60(v62, 0, v58);
  v66 = sub_1C54141E8();
  sub_1C5595FF4();
  v68 = sub_1C547070C();
  sub_1C540EFD8(v74, v71, v67);
  v72 = v69[1];
  v73 = v69 + 1;
  v72(v74, v71);
  v80 = v74;
  v26 = 1;
  v21[1] = sub_1C55965F4();
  v23 = v16;
  v22 = sub_1C5576C44();
  v21[0] = sub_1C55965F4();
  v21[3] = v17;
  sub_1C54398B0();
  v21[2] = v18;
  v24 = sub_1C55947B4();
  v25 = v19;

  MEMORY[0x1E69E5920](v22);

  v29 = v79;
  v79[0] = v24;
  v79[1] = v25;
  sub_1C5594F04();
  (v60)(v62, 0, v26, v59);
  sub_1C5557AEC(v41, v39);
  v27 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v28 = swift_allocObject();
  sub_1C5557C6C(v39, (v28 + v27));
  sub_1C5595FF4();
  sub_1C540EFD8(v45, v71, v74);
  v72(v45, v71);
  v31 = v69[2];
  v30 = v69 + 2;
  v31(v45, v67, v71);
  v32 = v78;
  v78[0] = v45;
  v31(v43, v74, v71);
  v78[1] = v43;
  v77[0] = v71;
  v77[1] = v71;
  v75 = v68;
  v76 = v68;
  sub_1C540F5A0(v32, 2uLL, v77, v33);
  v72(v43, v71);
  v72(v45, v71);
  v72(v74, v71);
  return (v72)(v67, v71);
}

uint64_t sub_1C55564B0(void (**a1)(uint64_t))
{
  v3 = *a1;

  v3(v1);
}

uint64_t sub_1C555650C@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  sub_1C55965F4();
  v6 = sub_1C54637B4();
  v7 = v1;

  v23 = v6;
  v24 = v7;
  sub_1C54141E8();
  v19 = sub_1C5595A04();
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v16[0] = v19;
  v16[1] = v2;
  v17 = v3 & 1;
  v18 = v4;
  v12 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v16, MEMORY[0x1E6981148], &v25);
  sub_1C5414260(v16);
  v8 = v25;
  v9 = v26;
  v10 = *(&v26 + 1);
  sub_1C54130AC(v25, *(&v25 + 1), v26 & 1);
  sub_1C5594CF4();
  v13 = v8;
  v14 = v9 & 1;
  v15 = v10;
  sub_1C540EFD8(&v13, v12, a1);
  sub_1C5414260(&v13);
  return sub_1C5414260(&v25);
}

uint64_t sub_1C55566A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v20 = a1;
  v13 = 0;
  v12 = sub_1C5453B74;
  v22 = sub_1C5557E14;
  v24 = sub_1C555650C;
  v36 = MEMORY[0x1E697D0D0];
  v66 = 0;
  v65 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v9 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v9 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20);
  v10 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v9 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v10);
  v48 = &v9 - v11;
  v66 = &v9 - v11;
  v65 = a1;
  v14 = MEMORY[0x1E6981E70];
  v15 = MEMORY[0x1E6981E60];
  sub_1C544B78C();
  v37 = 0;
  v38 = 1;
  sub_1C5596064();
  v19 = v60;
  v60[0] = v62;
  v60[1] = v63;
  v61 = v64 & 1;
  sub_1C55965F4();
  v16 = v4;
  v17 = sub_1C54637B4();
  v18 = v5;

  v27 = v59;
  v59[0] = v17;
  v59[1] = v18;
  v25 = sub_1C5554F58();
  v26 = v6;
  v21 = v7;
  v23 = &v49;
  v50 = v20;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED30);
  v32 = sub_1C5518AB8();
  v33 = sub_1C54141E8();
  v34 = sub_1C5556DA0();
  v29 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E6981148];
  v35 = MEMORY[0x1E6981138];
  sub_1C5595C14();

  sub_1C5401ECC();
  v51 = v28;
  v52 = v29;
  v53 = v30;
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v57 = v34;
  v58 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5411148();
  sub_1C5595D84();
  (*(v40 + 8))(v42, v43);
  v46 = sub_1C5556C48();
  sub_1C540EFD8(v47, v45, v48);
  sub_1C537045C(v47);
  sub_1C53704C4(v48, v47);
  sub_1C540EFD8(v47, v45, v44);
  sub_1C537045C(v47);
  return sub_1C537045C(v48);
}

unint64_t sub_1C5556C48()
{
  v2 = qword_1EC15ED28;
  if (!qword_1EC15ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5556DA0();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5556DA0()
{
  v2 = qword_1EC15ED38;
  if (!qword_1EC15ED38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5556E28()
{
  v2 = qword_1EC15ED40;
  if (!qword_1EC15ED40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5556EB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v41 = a1;
  v64 = 0;
  v63 = nullsub_1;
  v34 = sub_1C5557DB0;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v57 = 0;
  v2 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  v35 = *(v2 - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v39 = (v21 - v38);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90);
  v40 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v62 = v21 - v40;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v69 = *(v71 - 8);
  v70 = v71 - 8;
  v42 = (v69[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v21 - v42;
  v44 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v45 = v21 - v44;
  v46 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v74 = v21 - v46;
  v47 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v67 = v21 - v47;
  v83 = v21 - v47;
  v82 = v10;
  v58 = 1;
  v50 = sub_1C55965F4();
  v54 = v11;
  v48 = sub_1C5439370();
  v53 = sub_1C5576C44();
  v49 = sub_1C55965F4();
  v52 = v12;
  sub_1C54398B0();
  v51 = v13;
  v55 = sub_1C55947B4();
  v56 = v14;

  MEMORY[0x1E69E5920](v53);

  v65 = v81;
  v81[0] = v55;
  v81[1] = v56;
  sub_1C5594F14();
  v59 = sub_1C5594F34();
  v15 = *(v59 - 8);
  v60 = *(v15 + 56);
  v61 = v15 + 56;
  v60(v62, 0, v58);
  v66 = sub_1C54141E8();
  sub_1C5595FF4();
  v68 = sub_1C547070C();
  sub_1C540EFD8(v74, v71, v67);
  v72 = v69[1];
  v73 = v69 + 1;
  v72(v74, v71);
  v80 = v74;
  v26 = 1;
  v21[1] = sub_1C55965F4();
  v23 = v16;
  v22 = sub_1C5576C44();
  v21[0] = sub_1C55965F4();
  v21[3] = v17;
  sub_1C54398B0();
  v21[2] = v18;
  v24 = sub_1C55947B4();
  v25 = v19;

  MEMORY[0x1E69E5920](v22);

  v29 = v79;
  v79[0] = v24;
  v79[1] = v25;
  sub_1C5594F04();
  (v60)(v62, 0, v26, v59);
  sub_1C5557AEC(v41, v39);
  v27 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v28 = swift_allocObject();
  sub_1C5557C6C(v39, (v28 + v27));
  sub_1C5595FF4();
  sub_1C540EFD8(v45, v71, v74);
  v72(v45, v71);
  v31 = v69[2];
  v30 = v69 + 2;
  v31(v45, v67, v71);
  v32 = v78;
  v78[0] = v45;
  v31(v43, v74, v71);
  v78[1] = v43;
  v77[0] = v71;
  v77[1] = v71;
  v75 = v68;
  v76 = v68;
  sub_1C540F5A0(v32, 2uLL, v77, v33);
  v72(v43, v71);
  v72(v45, v71);
  v72(v74, v71);
  return (v72)(v67, v71);
}

unint64_t sub_1C5557758()
{
  v2 = qword_1EC15ED60;
  if (!qword_1EC15ED60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5556DA0();
    swift_getOpaqueTypeConformance2();
    sub_1C5556E28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55578BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v8 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  sub_1C5549080(a3, a4 + *(v8 + 20));
  v10 = *(v8 + 24);
  result = sub_1C5409594();
  v5 = a4 + v10;
  *v5 = result & 1;
  *(v5 + 1) = v6;
  return result;
}

unint64_t sub_1C55579E8()
{
  v4 = sub_1C54AE1F0();
  if (v0 <= 0x3F)
  {
    v4 = sub_1C543D8C0();
    if (v1 <= 0x3F)
    {
      v4 = sub_1C5433F94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

void *sub_1C5557AEC(void *a1, void *a2)
{
  v8 = *a1;
  v10 = a1[1];

  *a2 = v8;
  a2[1] = v10;
  v11 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  v12 = *(v11 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v12);

    *(a2 + v12) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v11 + 24);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

__n128 sub_1C5557C6C(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  v6 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  v7 = *(v6 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1C5595104();
    (*(*(v3 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v7, a1 + v7, *(*(v9 - 8) + 64));
  }

  result = *(a1 + *(v6 + 24));
  *(a2 + *(v6 + 24)) = result;
  return result;
}

uint64_t sub_1C5557DB0()
{
  v1 = *(type metadata accessor for SignInDataclassActionConfirmationAlert() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C55564B0(v2);
}

char *SignOutOrEraseOfferModel.init()()
{
  v55 = 0;
  v0 = OBJC_IVAR___AAUISignOutOrEraseOfferModel_title;
  *OBJC_IVAR___AAUISignOutOrEraseOfferModel_title = 0;
  *(v0 + 8) = 0;
  v1 = &v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentViewLayout] = 2;
  *&v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_image] = 0;
  v4 = &v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_imageName];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentView] = 0;
  *&v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryView] = 0;
  v5 = &v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v55[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL];
  *v6 = 0;
  *(v6 + 1) = 0;
  v54.receiver = v55;
  v54.super_class = type metadata accessor for SignOutOrEraseOfferModel();
  v53 = objc_msgSendSuper2(&v54, sel_init);
  MEMORY[0x1E69E5928](v53);
  v55 = v53;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v50 = v55;
    sub_1C5418C84();
    v49 = sub_1C55965F4();
    v48 = v7;
    sub_1C5439370();
    v8 = sub_1C5576C44();
    v52 = sub_1C55584D0(v49, v48, v8);
    v51 = &v50[OBJC_IVAR___AAUISignOutOrEraseOfferModel_image];
    swift_beginAccess();
    v9 = *v51;
    *v51 = v52;
  }

  else
  {
    v45 = v55;
    sub_1C5418C84();
    v44 = sub_1C55965F4();
    v43 = v10;
    sub_1C5439370();
    v11 = sub_1C5576C44();
    v47 = sub_1C55584D0(v44, v43, v11);
    v46 = &v45[OBJC_IVAR___AAUISignOutOrEraseOfferModel_image];
    swift_beginAccess();
    v9 = *v46;
    *v46 = v47;
  }

  MEMORY[0x1E69E5920](v9);
  swift_endAccess();
  v19 = v55;
  sub_1C55965F4();
  v20 = sub_1C54637B4();
  v22 = v12;

  v21 = &v19[OBJC_IVAR___AAUISignOutOrEraseOfferModel_title];
  swift_beginAccess();
  *v21 = v20;
  v21[1] = v22;

  swift_endAccess();
  v23 = v55;
  sub_1C55965F4();
  v24 = sub_1C54637B4();
  v26 = v13;

  v25 = &v23[OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText];
  swift_beginAccess();
  *v25 = v24;
  v25[1] = v26;

  swift_endAccess();
  v27 = v55;
  sub_1C55965F4();
  v28 = sub_1C54637B4();
  v30 = v14;

  v29 = &v27[OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton];
  swift_beginAccess();
  *v29 = v28;
  v29[1] = v30;

  swift_endAccess();
  v31 = v55;
  sub_1C55965F4();
  v32 = sub_1C54637B4();
  v34 = v15;

  v33 = &v31[OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton];
  swift_beginAccess();
  *v33 = v32;
  v33[1] = v34;

  swift_endAccess();
  v35 = v55;
  sub_1C55965F4();
  v36 = sub_1C54637B4();
  v38 = v16;

  v37 = &v35[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle];
  swift_beginAccess();
  *v37 = v36;
  v37[1] = v38;

  swift_endAccess();
  v39 = v55;
  sub_1C55965F4();
  v40 = sub_1C54637B4();
  v42 = v17;

  v41 = &v39[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL];
  swift_beginAccess();
  *v41 = v40;
  v41[1] = v42;

  swift_endAccess();
  MEMORY[0x1E69E5920](v55);
  return v53;
}

id sub_1C55584D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C5596554();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v6);
  return v4;
}

uint64_t sub_1C5558694()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55587DC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5558878@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555891C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xB0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5558B08()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5558C50(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5558CEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xC0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5558D90(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xC8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5558F7C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55590C4(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5559160@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5559204(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xE0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55593F0()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5559538(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C55595D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5559678(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55597F8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55598B4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C5559920@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x108))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C55599C8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x110))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1C5559B44()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_image);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5559C1C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_image);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5559CB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x120))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5559D5C(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x128))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5559F44()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555A08C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555A128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x138))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555A1D4(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x140))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555A36C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C555A444(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C555A4DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x150))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C555A584(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x158))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555A710()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C555A7E8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C555A880@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x168))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C555A928(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x170))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555AB10()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555AC58(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555ACF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555ADA0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x188))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555AF94()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555B0DC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555B178@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555B224(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id SignOutOrEraseOfferModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutOrEraseOfferModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C555BF30()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C555BFA0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *SignOutRemainInformationModel.init(account:isEraseAllowed:)(uint64_t a1, int a2)
{
  v101 = a1;
  v114 = a2;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v118 = 0;
  v107 = 0;
  v102 = sub_1C5595774();
  v103 = (*(*(v102 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v104 = &v47 - v103;
  v136 = v3;
  v108 = 1;
  v135 = v4 & 1;
  v137 = v2;
  *&v2[OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController] = v5;
  v6 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_detailText];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v137[OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout] = 2;
  v109 = &qword_1EC15E000;
  *&v137[OBJC_IVAR___AAUISignOutRemainInformationModel_image] = v5;
  v10 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_imageName];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v137[OBJC_IVAR___AAUISignOutRemainInformationModel_contentView] = v5;
  *&v137[OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryView] = v5;
  v11 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL];
  *v12 = 0;
  *(v12 + 1) = 0;
  v105 = v137;
  v13 = type metadata accessor for SignOutRemainInformationModel();
  v134.receiver = v105;
  v134.super_class = v13;
  v106 = objc_msgSendSuper2(&v134, sel_init);
  MEMORY[0x1E69E5928](v106);
  v137 = v106;
  v110 = v106;
  sub_1C5418C84();
  sub_1C55965F4();
  v112 = sub_1C54FA360();
  v111 = &v110[v109[448]];
  v113 = &v133;
  swift_beginAccess();
  v14 = *v111;
  *v111 = v112;
  MEMORY[0x1E69E5920](v14);
  swift_endAccess();
  v115 = v137;
  if (v114)
  {
    sub_1C55965F4();
    v96 = v15;
    v97 = sub_1C54637B4();
    v98 = v16;

    v99 = v97;
    v100 = v98;
  }

  else
  {
    sub_1C55965F4();
    v93 = v17;
    v94 = sub_1C54637B4();
    v95 = v18;

    v99 = v94;
    v100 = v95;
  }

  v50 = v100;
  v48 = v99;
  v49 = &v115[OBJC_IVAR___AAUISignOutRemainInformationModel_title];
  v51 = &v132;
  v88 = 33;
  v89 = 0;
  swift_beginAccess();
  v19 = v49;
  v20 = v50;
  *v49 = v48;
  v19[1] = v20;

  swift_endAccess();
  v53 = v137;
  v76 = 1;
  sub_1C55965F4();
  v52 = v21;
  v54 = sub_1C54637B4();
  v56 = v22;

  v55 = &v53[OBJC_IVAR___AAUISignOutRemainInformationModel_detailText];
  v57 = &v131;
  swift_beginAccess();
  v23 = v55;
  v24 = v56;
  *v55 = v54;
  v23[1] = v24;

  swift_endAccess();
  v59 = v137;
  sub_1C55965F4();
  v58 = v25;
  v60 = sub_1C54637B4();
  v62 = v26;

  v61 = &v59[OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton];
  v63 = &v130;
  swift_beginAccess();
  v27 = v61;
  v28 = v62;
  *v61 = v60;
  v27[1] = v28;

  swift_endAccess();
  v65 = v137;
  sub_1C55965F4();
  v64 = v29;
  v66 = sub_1C54637B4();
  v68 = v30;

  v67 = &v65[OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton];
  v69 = &v129;
  swift_beginAccess();
  v31 = v67;
  v32 = v68;
  *v67 = v66;
  v31[1] = v32;

  swift_endAccess();
  v71 = v137;
  sub_1C55965F4();
  v70 = v33;
  v72 = sub_1C54637B4();
  v74 = v34;

  v73 = &v71[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle];
  v75 = &v128;
  swift_beginAccess();
  v35 = v73;
  v36 = v74;
  *v73 = v72;
  v35[1] = v36;

  swift_endAccess();
  v78 = v137;
  sub_1C55965F4();
  v77 = v37;
  v79 = sub_1C54637B4();
  v81 = v38;

  v80 = &v78[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL];
  v82 = &v127;
  swift_beginAccess();
  v39 = v80;
  v40 = v81;
  *v80 = v79;
  v39[1] = v40;

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EE38);
  v123 = sub_1C55522F8();
  v124 = v41;
  v125 = v42;
  v126 = v43;
  v119 = v123;
  v120 = v41;
  v121 = v42 & 1;
  v122 = v43;
  v92 = sub_1C5595484();
  v118 = v92;
  v83 = sub_1C5596E04();
  sub_1C5595764();
  v44 = v83;
  sub_1C540FCD8();
  v84 = v44;
  sub_1C555C910();
  sub_1C5596B04();
  sub_1C5595474();
  v85 = &v137[OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout];
  v86 = &v117;
  swift_beginAccess();
  *v85 = 3;
  swift_endAccess();
  v87 = v137;
  MEMORY[0x1E69E5928](v92);
  v90 = &v87[OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController];
  v91 = &v116;
  swift_beginAccess();
  v45 = *v90;
  *v90 = v92;
  MEMORY[0x1E69E5920](v45);
  swift_endAccess();
  MEMORY[0x1E69E5920](v92);
  MEMORY[0x1E69E5920](v101);
  MEMORY[0x1E69E5920](v137);
  return v106;
}

unint64_t sub_1C555C910()
{
  v2 = qword_1EC15EE40;
  if (!qword_1EC15EE40)
  {
    sub_1C5595774();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C555CA58()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555CBA0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555CC3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555CCE0(void *a1, void *a2)
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

uint64_t sub_1C555CECC()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555D014(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555D0B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xE8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555D154(void *a1, void *a2)
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

uint64_t sub_1C555D340()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555D488(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555D524@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x100))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555D5D0(void *a1, void *a2)
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

uint64_t sub_1C555D7C4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555D90C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555D9A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x118))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555DA54(void *a1, void *a2)
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

uint64_t sub_1C555DBDC()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555DC98(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C555DD04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x130))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C555DDAC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x138))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1C555DF28()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_image);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C555E000(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutRemainInformationModel_image);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C555E098@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x148))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C555E140(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555E328()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555E470(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555E50C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x160))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555E5B8(void *a1, void *a2)
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

uint64_t sub_1C555E750()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C555E828(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C555E8C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x178))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C555E968(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555EAF4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C555EBCC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C555EC64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x190))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C555ED0C(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555EEF4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555F03C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555F0D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1A8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555F184(void *a1, void *a2)
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

uint64_t sub_1C555F378()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555F4C0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C555F55C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C555F608(void *a1, void *a2)
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

id SignOutRemainInformationModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemainInformationModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5560430()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_hostingController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C55604A0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___SignOutRemovedInformationModel_hostingController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

id SignOutRemovedInformationModel.init(account:isFindMyEnabled:walletCardListStore:theftAndLossDisclaimerLabel:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = v142;
  v97 = a5;
  v96 = a4;
  v138 = a3;
  v98 = a2;
  v95 = a1;
  v91 = a2;
  v133 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v92 = 0;
  v143 = 0;
  v141 = 0;
  v93 = sub_1C5595774();
  MEMORY[0x1EEE9AC00](0);
  v94 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1C5594C74();
  v100 = *(v99 - 8);
  v101 = v100;
  v102 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v103 = &v55 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v7;
  v156 = v8;
  v155 = v9;
  v153 = v10;
  v154 = v11;
  v158 = v5;
  *&v5[OBJC_IVAR___SignOutRemovedInformationModel_hostingController] = v12;
  v108 = &qword_1EC15E000;
  v13 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_title];
  *v13 = v12;
  *(v13 + 1) = v12;
  v115 = &qword_1EC15E000;
  v14 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_detailText];
  *v14 = v12;
  *(v14 + 1) = v12;
  v122 = &qword_1EC15E000;
  v15 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_primaryButton];
  *v15 = v12;
  *(v15 + 1) = v12;
  v130 = &qword_1EC15E000;
  v16 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_secondaryButton];
  *v16 = v12;
  *(v16 + 1) = v12;
  *&v158[OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout] = 2;
  *&v158[OBJC_IVAR___SignOutRemovedInformationModel_image] = v12;
  v17 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_imageName];
  *v17 = v12;
  *(v17 + 1) = v12;
  *&v158[OBJC_IVAR___SignOutRemovedInformationModel_contentView] = v12;
  *&v158[OBJC_IVAR___SignOutRemovedInformationModel_secondaryView] = v12;
  v18 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_helpLinkTitle];
  *v18 = v12;
  *(v18 + 1) = v12;
  v19 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_helpLinkURL];
  *v19 = v12;
  *(v19 + 1) = v12;
  v104 = v158;
  v20 = type metadata accessor for SignOutRemovedInformationModel();
  v152.receiver = v104;
  v152.super_class = v20;
  v106 = objc_msgSendSuper2(&v152, sel_init);
  v105 = v106;
  v21 = v106;
  v158 = v106;
  v109 = v106;
  v128 = 1;
  sub_1C55965F4();
  v107 = v22;
  v110 = sub_1C54637B4();
  v112 = v23;

  v111 = &v109[v108[459]];
  v132 = 33;
  v113 = &v151;
  swift_beginAccess();
  v24 = v111;
  v25 = v112;
  *v111 = v110;
  v24[1] = v25;

  swift_endAccess();
  v116 = v158;
  sub_1C55965F4();
  v114 = v26;
  v117 = sub_1C54637B4();
  v119 = v27;

  v118 = &v116[v115[460]];
  v120 = &v150;
  swift_beginAccess();
  v28 = v118;
  v29 = v119;
  *v118 = v117;
  v28[1] = v29;

  swift_endAccess();
  v123 = v158;
  sub_1C55965F4();
  v121 = v30;
  v124 = sub_1C54637B4();
  v126 = v31;

  v125 = &v123[v122[461]];
  v127 = &v149;
  swift_beginAccess();
  v32 = v125;
  v33 = v126;
  *v125 = v124;
  v32[1] = v33;

  swift_endAccess();
  v131 = v158;
  sub_1C55965F4();
  v129 = v34;
  v134 = sub_1C54637B4();
  v136 = v35;

  v135 = &v131[v130[462]];
  v137 = &v148;
  swift_beginAccess();
  v36 = v135;
  v37 = v136;
  *v135 = v134;
  v36[1] = v37;

  swift_endAccess();
  swift_unknownObjectRetain();
  if (v138)
  {
    v89 = v138;
    v82 = v138;
    v143 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEB0);
    v40 = v95;
    swift_unknownObjectRetain();
    sub_1C5594CF4();
    sub_1C54119C4(v95, v91 & 1, v82, v96, v97, v159);
    v41 = v90;
    v42 = v90[23];
    v142[1] = v90[24];
    v142[0] = v42;
    v43 = v90[25];
    v44 = v90[26];
    v45 = v90[27];
    v90[5] = v90[28];
    v142[4] = v45;
    v142[3] = v44;
    v142[2] = v43;
    v46 = v41[29];
    v47 = v41[30];
    v48 = v41[31];
    v41[9] = v41[32];
    v41[8] = v48;
    v41[7] = v47;
    v41[6] = v46;
    v81 = sub_1C5595484();
    v141 = v81;
    v72 = sub_1C5596E04();
    sub_1C5595764();
    v49 = v72;
    sub_1C540FCD8();
    v73 = v49;
    sub_1C555C910();
    sub_1C5596B04();
    sub_1C5595474();
    v74 = &v158[OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout];
    v77 = 33;
    v75 = &v140;
    v78 = 0;
    swift_beginAccess();
    *v74 = 3;
    swift_endAccess();
    v76 = v158;
    v50 = v81;
    v79 = &v76[OBJC_IVAR___SignOutRemovedInformationModel_hostingController];
    v80 = &v139;
    swift_beginAccess();
    v51 = *v79;
    *v79 = v81;

    swift_endAccess();
    swift_unknownObjectRelease();
    v83 = v92;
  }

  else
  {
    v38 = v103;
    v39 = sub_1C54B0910();
    (*(v101 + 16))(v38, v39, v99);
    v87 = sub_1C5594C54();
    v84 = v87;
    v86 = sub_1C5596954();
    v85 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v88 = sub_1C5596E04();
    if (os_log_type_enabled(v87, v86))
    {
      v52 = v92;
      v63 = sub_1C5596A74();
      v59 = v63;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v61 = 0;
      v64 = sub_1C5419DC0(0);
      v62 = v64;
      v65 = sub_1C5419DC0(v61);
      v147 = v63;
      v146 = v64;
      v145 = v65;
      v66 = 0;
      v67 = &v147;
      sub_1C5419E14(0, &v147);
      sub_1C5419E14(v66, v67);
      v144 = v88;
      v68 = &v55;
      MEMORY[0x1EEE9AC00](&v55);
      v69 = &v55 - 6;
      *(&v55 - 4) = v53;
      *(&v55 - 3) = &v146;
      *(&v55 - 2) = &v145;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v71 = v52;
      if (v52)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v84, v85, "WalletCardListStore is nil. Not displaying Sign Out Removed Information view.", v59, 2u);
        v57 = 0;
        sub_1C5419E74(v62);
        sub_1C5419E74(v65);
        sub_1C5596A54();

        v58 = v71;
      }
    }

    else
    {

      v58 = v92;
    }

    v56 = v58;

    (*(v101 + 8))(v103, v99);
    v83 = v56;
  }

  swift_unknownObjectRelease();

  return v105;
}

uint64_t sub_1C55610B4()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55611FC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5561298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C556133C(void *a1, void *a2)
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

uint64_t sub_1C5561528()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5561670(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C556170C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xE8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C55617B0(void *a1, void *a2)
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

uint64_t sub_1C556199C()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5561AE4(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5561B80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x100))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5561C2C(void *a1, void *a2)
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

uint64_t sub_1C5561E20()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5561F68(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5562004@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x118))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C55620B0(void *a1, void *a2)
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

uint64_t sub_1C5562238()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55622F4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C5562360@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x130))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5562408(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x138))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1C5562584()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_image);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C556265C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___SignOutRemovedInformationModel_image);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55626F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x148))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C556279C(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5562984()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5562ACC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5562B68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x160))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5562C14(void *a1, void *a2)
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

uint64_t sub_1C5562DAC()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_contentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5562E84(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___SignOutRemovedInformationModel_contentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5562F1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x178))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5562FC4(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5563150()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5563228(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55632C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x190))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5563368(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5563550()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5563698(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5563734@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1A8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C55637E0(void *a1, void *a2)
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

uint64_t sub_1C55639D4()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5563B1C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5563BB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

double sub_1C5563C64(void *a1, void *a2)
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

id SignOutRemovedInformationModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemovedInformationModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RemoteUIController.registerAppleAccountAvatarPickerView()()
{
  sub_1C5564AFC();
  sub_1C55965F4();
  sub_1C55969D4();
}

unint64_t sub_1C5564AFC()
{
  v2 = qword_1EC15EEB8;
  if (!qword_1EC15EEB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EEB8);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5564B74(uint64_t a1)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a1);
  RemoteUIController.registerAppleAccountAvatarPickerView()();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

Swift::Void __swiftcall RemoteUIController.registerSIWASharingTipView()()
{
  sub_1C5564C3C();
  sub_1C55965F4();
  sub_1C55969D4();
}

unint64_t sub_1C5564C3C()
{
  v2 = qword_1EC15EEC0;
  if (!qword_1EC15EEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EEC0);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5564CB4(uint64_t a1)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a1);
  RemoteUIController.registerSIWASharingTipView()();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

Swift::Void __swiftcall RemoteUIController.addAccountUserInfo(account:)(ACAccount account)
{
  v2 = sub_1C55969C4();
  MEMORY[0x1E69E5928](account.super.isa);
  RUIDecodingUserInfo.account.setter(account.super.isa);
  MEMORY[0x1E69E5920](v2);
}

double sub_1C5564D7C(uint64_t a1, uint64_t a2, ACAccount a3)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3.super.isa);
  MEMORY[0x1E69E5928](a1);
  RemoteUIController.addAccountUserInfo(account:)(a3);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3.super.isa).n128_u64[0];
  return result;
}

uint64_t sub_1C5564DFC()
{

  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C5564E68()
{
  v4 = v0;
  v5 = *v0;
  sub_1C545D998(&v5, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8);
  sub_1C5595F84();
  sub_1C5436F54();
  return v2;
}

uint64_t sub_1C5564EEC(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  v7 = *v1;
  sub_1C545D998(&v7, &v4);
  sub_1C545D998(&v7, &v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8);
  sub_1C5595F94();
  sub_1C5436F54();
  sub_1C5436F54();
}

void (*sub_1C5564FAC(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x90uLL);
  *a1 = v3;
  *v3 = *v1;
  sub_1C545D998(v3, v3 + 2);
  *(v3 + 2) = *v3;
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8);
  sub_1C5595F84();
  return sub_1C5565078;
}

void sub_1C5565078(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 112);

    sub_1C545D998(v4, (v4 + 48));
    *(v4 + 64) = *v4;
    *(v4 + 120) = v2;
    sub_1C5595F94();
    sub_1C5436F54();
    sub_1C5410D10();
  }

  else
  {
    v3 = *(v4 + 112);
    sub_1C545D998(v4, (v4 + 80));
    *(v4 + 96) = *v4;
    *(v4 + 128) = v3;
    sub_1C5595F94();
    sub_1C5436F54();
  }

  sub_1C5436F54();
  free(v4);
}

uint64_t sub_1C55651B8()
{
  v4 = v0;
  v5 = *v0;
  sub_1C545D998(&v5, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8);
  sub_1C5595FA4();
  sub_1C5436F54();
  return v2;
}

uint64_t sub_1C5565254()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1C5565294()
{
  sub_1C5594CF4();
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C5565328()
{
  v4 = v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  sub_1C55653C8(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0);
  sub_1C5595F84();
  sub_1C5565428();
  return v2;
}

void *sub_1C55653C8(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1C5594CF4();
  a2[1] = v4;
  v6 = a1[2];

  result = a2;
  a2[2] = v6;
  return result;
}

uint64_t sub_1C5565460(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v8 = a2;
  v6 = v2;
  v9 = *(v2 + 16);
  v10 = *(v2 + 32);
  sub_1C55653C8(&v9, v5);
  sub_1C55653C8(&v9, v4);
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0);
  sub_1C5595F94();
  sub_1C5565428();
  sub_1C5565428();
}

void (*sub_1C5565544(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xE0uLL);
  *a1 = v3;
  *v3 = *(v1 + 16);
  v3[2] = *(v1 + 32);
  sub_1C55653C8(v3, v3 + 3);
  *(v3 + 3) = *v3;
  v3[8] = v3[2];
  v3[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0);
  sub_1C5595F84();
  return sub_1C5565620;
}

void sub_1C5565620(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v2 = *(v6 + 168);
    v3 = *(v6 + 176);
    sub_1C5594CF4();
    sub_1C55653C8(v6, (v6 + 72));
    *(v6 + 96) = *v6;
    *(v6 + 112) = *(v6 + 16);
    *(v6 + 184) = v2;
    *(v6 + 192) = v3;
    sub_1C5595F94();
    sub_1C5565428();
    sub_1C5401ECC();
  }

  else
  {
    v4 = *(v6 + 168);
    v5 = *(v6 + 176);
    sub_1C55653C8(v6, (v6 + 120));
    *(v6 + 144) = *v6;
    *(v6 + 160) = *(v6 + 16);
    *(v6 + 200) = v4;
    *(v6 + 208) = v5;
    sub_1C5595F94();
    sub_1C5565428();
  }

  sub_1C5565428();
  free(v6);
}

uint64_t sub_1C556575C()
{
  v4 = v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  sub_1C55653C8(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0);
  sub_1C5595FA4();
  sub_1C5565428();
  return v2;
}

uint64_t sub_1C5565814()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();

  return v2;
}

uint64_t sub_1C5565860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

uint64_t sub_1C55658D8()
{
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F0);
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C5565980()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  sub_1C55653C8(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8);
  sub_1C5595F84();
  sub_1C5565428();
  return v2;
}

uint64_t sub_1C5565A14()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  sub_1C55653C8(&v4, v3);
  sub_1C55653C8(&v4, v2);
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8);
  sub_1C5595F94();
  sub_1C5565428();
  sub_1C5565428();
}

uint64_t sub_1C5565ADC()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  sub_1C55653C8(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8);
  sub_1C5595FA4();
  sub_1C5565428();
  return v2;
}

uint64_t sub_1C5565B88()
{
  v2 = *(v0 + 40);
  sub_1C5594CF4();

  return v2;
}

uint64_t sub_1C5565BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
}

uint64_t sub_1C5565C4C()
{
  v4 = v0;
  v5 = *(v0 + 64);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  sub_1C5373718();
  return v2 & 1;
}

__int128 *sub_1C5565CD4(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v7 = *(v1 + 64);
  sub_1C5409664(&v7, v4);
  sub_1C5409664(&v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
  result = &v7;
  sub_1C5373718();
  return result;
}

void (*sub_1C5565D8C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v3;
  *v3 = *(v1 + 64);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C545D34C;
}

uint64_t sub_1C5565E58()
{
  v4 = v0;
  v5 = *(v0 + 64);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  sub_1C5373718();
  return v2;
}

uint64_t sub_1C5565EF8()
{
  v2 = *(v0 + 64);

  return v2 & 1;
}

uint64_t sub_1C5565F34(char a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1C5565F80()
{
  v4 = v0;
  v5 = *(v0 + 80);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  sub_1C5373718();
  return v2 & 1;
}

__int128 *sub_1C5566008(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v7 = *(v1 + 80);
  sub_1C5409664(&v7, v4);
  sub_1C5409664(&v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
  result = &v7;
  sub_1C5373718();
  return result;
}

void (*sub_1C55660C0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v3;
  *v3 = *(v1 + 80);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C545D34C;
}

uint64_t sub_1C556618C()
{
  v4 = v0;
  v5 = *(v0 + 80);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  sub_1C5373718();
  return v2;
}

uint64_t sub_1C556622C()
{
  v2 = *(v0 + 80);

  return v2 & 1;
}

uint64_t sub_1C5566268(char a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1C55662B4()
{
  v4 = *(v0 + 96);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  sub_1C5373718();
  return v2 & 1;
}

__int128 *sub_1C5566330()
{
  v4 = *(v0 + 96);
  sub_1C5409664(&v4, v3);
  sub_1C5409664(&v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
  result = &v4;
  sub_1C5373718();
  return result;
}

uint64_t sub_1C55663CC()
{
  v4 = *(v0 + 96);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  sub_1C5373718();
  return v2;
}

uint64_t sub_1C5566460()
{
  v2 = *(v0 + 96);

  return v2 & 1;
}

uint64_t sub_1C556649C(char a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1C55664E8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1C5522CD8();
  sub_1C5595F74();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1C5566570()
{
  v4 = *(v0 + 112);
  sub_1C550606C(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0);
  sub_1C5595F84();
  sub_1C55060CC(&v4);
  return v2;
}

double sub_1C55665E8(uint64_t a1)
{
  v7 = *(v1 + 112);
  sub_1C550606C(&v7, &v6);
  sub_1C550606C(&v7, &v5);
  v4 = v7;
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0);
  sub_1C5595F94();
  sub_1C55060CC(&v4);
  sub_1C55060CC(&v7);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55666A4()
{
  v4 = *(v0 + 112);
  sub_1C550606C(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0);
  sub_1C5595FA4();
  sub_1C55060CC(&v4);
  return v2;
}

uint64_t sub_1C5566734()
{
  v2 = *(v0 + 112);
  MEMORY[0x1E69E5928](v2);

  return v2;
}

uint64_t sub_1C556677C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);

  v3 = *(v2 + 112);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  MEMORY[0x1E69E5920](v3);

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C55667FC()
{

  type metadata accessor for AppleAccountHeaderViewModel();
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C5566874()
{
  v4 = *(v0 + 128);
  sub_1C545D998(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8);
  sub_1C5595F84();
  sub_1C5436F54();
  return v2;
}

uint64_t sub_1C55668EC()
{
  v4 = *(v0 + 128);
  sub_1C545D998(&v4, &v3);
  sub_1C545D998(&v4, &v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8);
  sub_1C5595F94();
  sub_1C5436F54();
  sub_1C5436F54();
}

uint64_t sub_1C5566998()
{
  v4 = *(v0 + 128);
  sub_1C545D998(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8);
  sub_1C5595FA4();
  sub_1C5436F54();
  return v2;
}

uint64_t sub_1C5566A28()
{
  v2 = *(v0 + 128);

  return v2;
}

uint64_t sub_1C5566A68(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t sub_1C5566AD0()
{
  v2 = *(v0 + 144);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C5566B10()
{
  v2 = *(v0 + 160);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

void *sub_1C5566B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v42 = a1;
  v41 = a2;
  v40 = a3 & 1;
  v39 = a4 & 1;
  v38 = a5 & 1;
  v37 = a6;
  sub_1C55965F4();
  sub_1C5595EF4();
  __b[0] = sub_1C5564DFC();
  __b[1] = v7;
  sub_1C55965F4();
  __b[2] = sub_1C5565294();
  __b[3] = v8;
  __b[4] = v9;
  __b[5] = sub_1C55658D8();
  __b[6] = v10;
  __b[7] = v11;
  LOBYTE(__b[8]) = sub_1C5409594() & 1;
  __b[9] = v12;
  LOBYTE(__b[10]) = sub_1C5409594() & 1;
  __b[11] = v13;
  LOBYTE(__b[12]) = sub_1C5409594() & 1;
  __b[13] = v14;
  MEMORY[0x1E69E5928](a2);
  __b[18] = a2;
  LOBYTE(__b[19]) = a5 & 1;
  MEMORY[0x1E69E5928](a1);
  __b[20] = a1;
  sub_1C5522CD8();
  MEMORY[0x1E69E5928](a1);
  v34 = sub_1C5566ED4(a1);
  sub_1C5595F74();
  __b[14] = v35;
  __b[15] = v36;
  v31 = a3;
  sub_1C5595F74();
  LOBYTE(__b[8]) = v32;
  __b[9] = v33;

  v28 = a4;
  sub_1C5595F74();
  LOBYTE(__b[10]) = v29;
  __b[11] = v30;

  v26 = a6;
  MEMORY[0x1E69E5928](a2);
  if (a6)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for AppleAccountHeaderViewModel();
    MEMORY[0x1E69E5928](a2);
    v27 = sub_1C550CA38(a2);
  }

  MEMORY[0x1E69E5920](a2);
  __b[16] = sub_1C55667FC();
  __b[17] = v15;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1C55271EC(__dst, v24);

  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  sub_1C545EC80(__b);
  return memcpy(a7, __dst, 0xA8uLL);
}

uint64_t sub_1C5566F14@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v14 = v1;
  v10 = sub_1C55687A0;
  v30 = 0;
  __src[0] = v31;
  __src[1] = 168;
  memcpy(v31, v1, sizeof(v31));
  memcpy(__dst, v31, sizeof(__dst));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF0);
  v7 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v21 = __src - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF8);
  v8 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = __src - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](__src - v8);
  v26 = __src - v9;
  v30 = __src - v9;
  v13 = sub_1C5595424();
  sub_1C55271EC(v14, &v29);
  v11 = v27;
  v27[2] = v14;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF00);
  sub_1C55687A8();
  sub_1C5596064();
  sub_1C545EC80(v14);
  sub_1C55965F4();
  v15 = v3;
  v16 = sub_1C54637B4();
  v17 = v4;

  v20 = v28;
  v28[0] = v16;
  v28[1] = v17;
  v19 = sub_1C5568830();
  sub_1C54141E8();
  sub_1C5595BE4();
  sub_1C5401ECC();
  sub_1C53706F0(v21);
  v24 = sub_1C55688B8();
  sub_1C540EFD8(v25, v23, v26);
  sub_1C5370988(v25);
  sub_1C5370C64(v26, v25);
  sub_1C540EFD8(v25, v23, v22);
  sub_1C5370988(v25);
  return sub_1C5370988(v26);
}

uint64_t sub_1C55671E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = v229;
  v213 = a1;
  v132 = a2;
  v171 = 0;
  v290 = 0;
  v289 = 0;
  v288 = 0;
  v245 = 0;
  v133 = 0u;
  memset(v244, 0, sizeof(v244));
  v236 = 0;
  memset(v235, 0, sizeof(v235));
  v219 = 0;
  v2 = *a1;
  v3 = *(a1 + 1);
  v293 = *(a1 + 2);
  v292 = v3;
  v291 = v2;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v297 = *(a1 + 6);
  v296 = v6;
  v295 = v5;
  v294 = v4;
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v301 = a1[20];
  v300 = v9;
  v299 = v8;
  v298 = v7;
  v304 = v293;
  v303 = v292;
  v302 = v291;
  v308 = v297;
  v307 = v296;
  v306 = v295;
  v305 = v294;
  v312 = v301;
  v311 = v9;
  v310 = v8;
  v309 = v7;
  v134 = sub_1C5595414();
  v135 = *(v134 - 8);
  v136 = v135;
  MEMORY[0x1EEE9AC00](0);
  v137 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1C5594FC4();
  v139 = *(v138 - 8);
  v140 = v139;
  MEMORY[0x1EEE9AC00](v171);
  v141 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C55949C4();
  MEMORY[0x1EEE9AC00](v171);
  v142 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5596544();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v143 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v145 = *(v144 - 8);
  v146 = v145;
  v147 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v144 - 8);
  v148 = &v98 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F070);
  v150 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149 - 8);
  v151 = &v98 - v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F078);
  v153 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152 - 8);
  v154 = &v98 - v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
  v156 = *(v155 - 8);
  v157 = v156;
  v158 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v155 - 8);
  v159 = &v98 - v158;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40);
  v161 = (*(*(v160 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v160 - 8);
  v162 = &v98 - v161;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  v164 = *(v163 - 8);
  v165 = v164;
  v167 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v163 - 8);
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v98 - v169;
  MEMORY[0x1EEE9AC00](&v98 - v169);
  v168 = &v98 - v169;
  MEMORY[0x1EEE9AC00](v15);
  v170 = &v98 - v169;
  v290 = &v98 - v169;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF60);
  v174 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  v173 = &v98 - v176;
  MEMORY[0x1EEE9AC00](v16);
  v175 = &v98 - v176;
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v98 - v176;
  v289 = &v98 - v176;
  v191 = sub_1C5595F04();
  v178 = *(v191 - 8);
  v190 = v178;
  MEMORY[0x1EEE9AC00](v191 - 8);
  v192 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20);
  v179 = (*(*(v207 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v207 - 8);
  v208 = &v98 - v179;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF50);
  v180 = (*(*(v209 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v209 - 8);
  v214 = &v98 - v180;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF58);
  v181 = v216;
  v182 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216 - 8);
  v184 = (v182 + 15) & 0xFFFFFFFFFFFFFFF0;
  v218 = &v98 - v184;
  v183 = &v98 - v184;
  MEMORY[0x1EEE9AC00](v19);
  v215 = &v98 - v184;
  v185 = (&v98 - v184);
  v288 = &v98 - v184;
  v193 = sub_1C5564E68();
  v186 = sub_1C54127B4();
  v187 = v20;
  v188 = v21;
  v189 = v22;
  sub_1C54127C8(v192);
  v194 = sub_1C5595F44();
  (*(v190 + 8))(v192, v191);

  v280[0] = v194;
  v195 = v280;
  sub_1C5595B14();
  sub_1C5410D10();
  v277[0] = v280[1];
  v277[1] = v280[2];
  v278 = v281;
  v279 = v282;
  v276 = sub_1C5410CD0();
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8);
  sub_1C5413D10();
  v197 = &v276;
  v198 = v277;
  sub_1C5595BA4();
  sub_1C5410D10();
  sub_1C5410D10();
  v272[0] = v283;
  v272[1] = v284;
  v273 = v285;
  v274 = v286;
  v275 = v287;
  sub_1C55965F4();
  v199 = v23;
  v200 = sub_1C54637B4();
  v201 = v24;

  v271[0] = v200;
  v271[1] = v201;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F080);
  v203 = sub_1C556F8D4();
  v204 = sub_1C54141E8();
  v205 = v271;
  v206 = v272;
  sub_1C5595C04();
  sub_1C5401ECC();
  sub_1C556F97C();
  v270 = sub_1C54E7400(*(v213 + 152)) & 1;
  v25 = sub_1C556F9B4();
  MEMORY[0x1C6946950](&v270, v207, &unk_1F447F048, v25);
  sub_1C556FA5C(v208);
  sub_1C5596014();
  v211 = sub_1C556FAF0();
  v212 = sub_1C546FC00();
  v210 = MEMORY[0x1E69817E8];
  v269 = sub_1C546EEB4();
  v268 = v269;
  sub_1C5595E04();
  sub_1C556FA5C(v214);
  v217 = sub_1C556FC14();
  sub_1C540EFD8(v218, v216, v215);
  sub_1C556FA5C(v218);
  if (sub_1C5565F80())
  {
    v128 = 1;
    sub_1C55965F4();
    sub_1C55964E4();
    v127 = 0;
    sub_1C5439370();
    v113 = sub_1C5576C44();
    sub_1C54982B4();
    v226[23] = v127;
    v226[24] = v127;
    v227 = 0;
    v228 = v128;
    v226[21] = sub_1C5596594();
    v226[22] = v26;
    sub_1C55271EC(v213, v226);
    v27 = swift_allocObject();
    v28 = v213;
    v114 = v27;
    v29 = *v213;
    v30 = *(v213 + 1);
    *(v27 + 48) = *(v213 + 2);
    *(v27 + 32) = v30;
    *(v27 + 16) = v29;
    v31 = *(v28 + 3);
    v32 = *(v28 + 4);
    v33 = *(v28 + 5);
    *(v27 + 112) = *(v28 + 6);
    *(v27 + 96) = v33;
    *(v27 + 80) = v32;
    *(v27 + 64) = v31;
    v34 = *(v28 + 7);
    v35 = *(v28 + 8);
    v36 = *(v28 + 9);
    *(v27 + 176) = v28[20];
    *(v27 + 160) = v36;
    *(v27 + 144) = v35;
    *(v27 + 128) = v34;
    sub_1C5596004();
    (*(v140 + 104))(v141, *MEMORY[0x1E697DC20], v138);
    sub_1C547070C();
    sub_1C5595AE4();
    (*(v140 + 8))(v141, v138);
    (*(v146 + 8))(v148, v144);
    v37 = [objc_opt_self() systemBlueColor];
    v115 = sub_1C5595E44();
    v116 = sub_1C5595E94();

    v225 = v116;
    v118 = sub_1C556FF28();
    v117 = MEMORY[0x1E69815C0];
    v119 = MEMORY[0x1E6981568];
    sub_1C5410CE8();
    v120 = &v225;
    sub_1C5595A74();
    sub_1C5410D10();
    sub_1C55704C0(v151);
    sub_1C5568A04();
    v121 = sub_1C556FE80();
    v122 = sub_1C556FFD0();
    sub_1C5595AC4();
    (*(v136 + 8))(v137, v134);
    sub_1C55705B4(v154);
    v221 = v152;
    v222 = v134;
    v223 = v121;
    v224 = v122;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C544B7B0();
    sub_1C5595B34();
    (*(v157 + 8))(v159, v155);
    v125 = sub_1C5596E04();
    v124 = v38;
    *v38 = sub_1C55957C4();
    v39 = sub_1C55957D4();
    v40 = v125;
    v124[1] = v39;
    sub_1C540FCD8();
    v126 = v40;
    sub_1C54DA7DC();
    sub_1C5596B04();
    v129 = v220;
    sub_1C556FD60();
    sub_1C5595D84();
    sub_1C5372950(v162);
    v130 = sub_1C556FCBC();
    sub_1C540EFD8(v168, v163, v170);
    sub_1C5372950(v168);
    v219 = v168;
    sub_1C5372A34(v170, v166);
    sub_1C540EFD8(v166, v163, v168);
    sub_1C5372950(v166);
    sub_1C5372A34(v168, v173);
    (*(v165 + 56))(v173, 0, 1, v163);
    sub_1C540F554(v173, v163, v175);
    sub_1C53722B8(v173);
    sub_1C53723F0(v175, v177);
    sub_1C5372950(v168);
    sub_1C5372950(v170);
  }

  else
  {
    (*(v165 + 56))(v173, 1, 1, v163);
    sub_1C556FCBC();
    sub_1C540F554(v173, v163, v175);
    sub_1C53722B8(v173);
    sub_1C53723F0(v175, v177);
  }

  if (sub_1C5565C4C())
  {
    v104 = sub_1C5595424();
    sub_1C55271EC(v213, v238);
    v105 = &v98;
    MEMORY[0x1EEE9AC00](&v98);
    v102 = (&v98 - 4);
    *(&v98 - 2) = v41;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C828);
    sub_1C54522C8();
    sub_1C5596064();
    sub_1C545EC80(v213);
    v42 = v131;
    v43 = *&v238[168];
    v131[63] = v239;
    v42[62] = v43;
    v44 = v240;
    v45 = v241;
    v246 = v243;
    v42[66] = v242;
    v42[65] = v45;
    v42[64] = v44;
    v46 = v42[62];
    v42[35] = v42[63];
    v42[34] = v46;
    v47 = v42[64];
    v48 = v42[65];
    v49 = v42[66];
    v237[10] = v246;
    v42[38] = v49;
    v42[37] = v48;
    v42[36] = v47;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C830);
    v109 = sub_1C5452350();
    v112 = v244;
    v106 = v237;
    sub_1C540EFD8(v237, v108, v244);
    sub_1C54523D8(v106);
    v50 = v131;
    v51 = v131[56];
    v131[69] = v131[57];
    v50[68] = v51;
    v52 = v50[58];
    v53 = v50[59];
    v54 = v50[60];
    v248 = v245;
    v50[72] = v54;
    v50[71] = v53;
    v50[70] = v52;
    sub_1C5452578(&v247, &v234);
    v55 = v108;
    v56 = v131;
    v57 = v131[68];
    v131[18] = v131[69];
    v56[17] = v57;
    v58 = v56[70];
    v59 = v56[71];
    v60 = v56[72];
    v233[10] = v248;
    v56[21] = v60;
    v56[20] = v59;
    v56[19] = v58;
    v111 = v235;
    v107 = v233;
    sub_1C540EFD8(v233, v55, v235);
    sub_1C54523D8(v107);
    v61 = v131;
    v62 = v131[28];
    v131[75] = v131[29];
    v61[74] = v62;
    v63 = v61[30];
    v64 = v61[31];
    v65 = v61[32];
    v250 = v236;
    v61[78] = v65;
    v61[77] = v64;
    v61[76] = v63;
    sub_1C5452578(&v249, &v230);
    v66 = v108;
    v67 = v131;
    v68 = v131[74];
    v131[81] = v131[75];
    v67[80] = v68;
    v69 = v67[76];
    v70 = v67[77];
    v71 = v67[78];
    v251 = v250;
    v67[84] = v71;
    v67[83] = v70;
    v67[82] = v69;
    v72 = v67[80];
    v67[1] = v67[81];
    *v67 = v72;
    v73 = v67[82];
    v74 = v67[83];
    v75 = v67[84];
    v229[10] = v251;
    v67[4] = v75;
    v67[3] = v74;
    v67[2] = v73;
    v110 = v229;
    sub_1C540F554(v229, v66, v231);
    sub_1C5570428(v110);
    v76 = v131;
    v77 = v111;
    v78 = v231[0];
    v131[87] = v231[1];
    v76[86] = v78;
    v79 = v231[2];
    v80 = v231[3];
    v252 = v232;
    v76[90] = v231[4];
    v76[89] = v80;
    v76[88] = v79;
    v81 = v76[86];
    v76[126] = v76[87];
    v76[125] = v81;
    v82 = v76[88];
    v83 = v76[89];
    v84 = v76[90];
    v267 = v252;
    v76[129] = v84;
    v76[128] = v83;
    v76[127] = v82;
    sub_1C54523D8(v77);
    sub_1C54523D8(v112);
  }

  else
  {
    v85 = v131;
    v100 = 0;
    memset(&v260[11], 0, 32);
    v261 = 0uLL;
    v262 = 0uLL;
    v263 = 0uLL;
    v264 = 0;
    v131[103] = 0u;
    v85[102] = 0u;
    v86 = v261;
    v87 = v262;
    v259[10] = v264;
    v85[106] = v263;
    v85[105] = v87;
    v85[104] = v86;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C830);
    sub_1C5452350();
    sub_1C540F554(v259, v101, v260);
    v88 = v131;
    v89 = v131[108];
    v131[120] = v131[109];
    v88[119] = v89;
    v90 = v88[110];
    v91 = v88[111];
    v92 = v88[112];
    v265 = v260[10];
    v88[123] = v92;
    v88[122] = v91;
    v88[121] = v90;
    v93 = v88[119];
    v88[126] = v88[120];
    v88[125] = v93;
    v94 = v88[121];
    v95 = v88[122];
    v96 = v88[123];
    v267 = v265;
    v88[129] = v96;
    v88[128] = v95;
    v88[127] = v94;
  }

  sub_1C5570050(v185, v183);
  v258[0] = v183;
  sub_1C537263C(v177, v175);
  v258[1] = v175;
  v99 = v266;
  v98 = v257;
  sub_1C557019C(v266, v257);
  v258[2] = v98;
  v256[0] = v181;
  v256[1] = v172;
  v256[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0D8);
  v253 = v217;
  v254 = sub_1C55702F8();
  v255 = sub_1C5570390();
  sub_1C540F5A0(v258, 3uLL, v256, v132);
  sub_1C5570428(v98);
  sub_1C53722B8(v175);
  sub_1C556FA5C(v183);
  sub_1C5570428(v99);
  sub_1C53722B8(v177);
  return sub_1C556FA5C(v185);
}

unint64_t sub_1C55687A8()
{
  v2 = qword_1EC15EF08;
  if (!qword_1EC15EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5568830()
{
  v2 = qword_1EC15EF10;
  if (!qword_1EC15EF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EEF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55688B8()
{
  v2 = qword_1EC15EF48;
  if (!qword_1EC15EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EEF8);
    sub_1C5568830();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EF48);
    return WitnessTable;
  }

  return v2;
}

__int128 *sub_1C5568960(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 96);
  sub_1C5409664(&v5, v3);
  sub_1C5409664(&v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
  result = &v5;
  sub_1C5373718();
  return result;
}

uint64_t sub_1C5568A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v148, 0, sizeof(v148));
  v101 = 0;
  v102 = 0;
  v99 = 0u;
  v100 = 0u;
  v71 = 0u;
  v72 = 0u;
  v149 = a1;
  v146 = sub_1C5565328();
  v147 = v2;
  sub_1C54141E8();
  v142 = sub_1C5595A04();
  v143 = v3;
  v144 = v4;
  v145 = v5;
  v51 = v3;
  v52 = v4;
  v53 = v5;
  sub_1C5595834();
  v138 = v142;
  v139 = v51;
  v140 = v52 & 1;
  v141 = v53;
  v134 = sub_1C55959C4();
  v135 = v6;
  v136 = v7;
  v137 = v8;
  v55 = v6;
  v54 = v7;
  v56 = v8;

  sub_1C5412EA0(v142, v51, v52 & 1);

  v130 = v134;
  v131 = v55;
  v132 = v54 & 1;
  v133 = v56;
  v126 = sub_1C55959B4();
  v127 = v9;
  v128 = v10;
  v129 = v11;
  v57 = v9;
  v58 = v10;
  v59 = v11;
  sub_1C5412EA0(v134, v55, v54 & 1);

  v123[0] = v126;
  v123[1] = v57;
  v124 = v58 & 1;
  v125 = v59;
  sub_1C540EFD8(v123, MEMORY[0x1E6981148], v148);
  sub_1C5414260(v123);
  v150 = *(a1 + 40);
  v151 = *(a1 + 56);
  sub_1C55653C8(&v150, v118);
  v116 = v150;
  v117 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8);
  sub_1C5595F84();
  sub_1C5565428();
  if (v115)
  {
    v101 = v114;
    v102 = v115;
    sub_1C5594CF4();
    v97 = v114;
    v98 = v115;
    v93 = sub_1C5595A04();
    v94 = v12;
    v95 = v13;
    v96 = v14;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    sub_1C5595824();
    v89 = v93;
    v90 = v22;
    v91 = v23 & 1;
    v92 = v24;
    v85 = sub_1C55959C4();
    v86 = v15;
    v87 = v16;
    v88 = v17;
    v25 = v15;
    v26 = v16;
    v27 = v17;

    sub_1C5412EA0(v93, v22, v23 & 1);

    v84 = sub_1C5410CD0();
    v80 = v85;
    v81 = v25;
    v82 = v26 & 1;
    v83 = v27;
    v76 = sub_1C5595994();
    v77 = v18;
    v78 = v19;
    v79 = v20;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    sub_1C5410D10();
    sub_1C5412EA0(v80, v25, v26 & 1);

    v73[0] = v76;
    v73[1] = v28;
    v74 = v29 & 1;
    v75 = v30;
    v37 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v73, MEMORY[0x1E6981148], &v99);
    sub_1C5414260(v73);
    v31 = v99;
    v32 = v100;
    v33 = *(&v100 + 1);
    sub_1C54130AC(v99, *(&v99 + 1), v100 & 1);
    sub_1C5594CF4();
    v68 = v31;
    v69 = v32 & 1;
    v70 = v33;
    sub_1C540EFD8(&v68, v37, &v71);
    sub_1C5414260(&v68);
    v35 = v71;
    v34 = v72;
    v36 = *(&v72 + 1);
    sub_1C54130AC(v71, *(&v71 + 1), v72 & 1);
    sub_1C5594CF4();
    v61 = v35;
    v62 = v34 & 1;
    v63 = v36;
    sub_1C540F554(&v61, v37, &v64);
    sub_1C54366A4(&v61);
    v38 = v64;
    v39 = v65;
    v40 = v66;
    v41 = v67;
    sub_1C54365B4(v64, v65, v66, v67);
    v119 = v38;
    v120 = v39;
    v121 = v40;
    v122 = v41;
    sub_1C5414260(&v71);
    sub_1C5414260(&v99);

    v46 = v38;
    v47 = v39;
    v48 = v40;
    v49 = v41;
  }

  else
  {
    memset(v109, 0, sizeof(v109));
    sub_1C540F554(v109, MEMORY[0x1E6981148], &v110);
    v42 = v110;
    v43 = v111;
    v44 = v112;
    v45 = v113;
    sub_1C54365B4(v110, v111, v112, v113);
    v119 = v42;
    v120 = v43;
    v121 = v44;
    v122 = v45;
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
  }

  sub_1C54142A8(v148, v107);
  v108[0] = v107;
  v106[0] = v46;
  v106[1] = v47;
  v106[2] = v48;
  v106[3] = v49;
  v108[1] = v106;
  v105[0] = MEMORY[0x1E6981148];
  v105[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448);
  v103 = MEMORY[0x1E6981138];
  v104 = sub_1C5436610();
  sub_1C540F5A0(v108, 2uLL, v105, a2);
  sub_1C54366A4(v106);
  sub_1C5414260(v107);
  sub_1C54366A4(&v119);
  return sub_1C5414260(v148);
}

uint64_t sub_1C5569224@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v83 = sub_1C556A760;
  v48 = sub_1C556C13C;
  v49 = MEMORY[0x1E6981448];
  v50 = sub_1C556C83C;
  v51 = sub_1C556CC00;
  v97 = 0;
  __src = v98;
  __n = 168;
  memcpy(v98, v1, sizeof(v98));
  memcpy(__dst, v98, sizeof(__dst));
  v54 = sub_1C5596A04();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v13 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF68);
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v82 = &v13 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF70);
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v13 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF78);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v13 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF80);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v13 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF88);
  v73 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v13 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF90);
  v76 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v13 - v76;
  v78 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v76);
  v79 = &v13 - v78;
  v80 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v78);
  v81 = &v13 - v80;
  v97 = &v13 - v80;
  sub_1C55271EC(v1, &v96);
  v84 = &v89;
  v90 = v1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF98);
  v86 = sub_1C556BA00();
  sub_1C5410F68();
  sub_1C5596074();
  sub_1C545EC80(v1);
  v87 = v1[20];
  *&v4 = MEMORY[0x1E69E5928](v87).n128_u64[0];
  v88 = [v87 imageData];
  if (v88)
  {
    v45 = v88;
    v40 = v88;
    v41 = sub_1C55948D4();
    v42 = v5;
    MEMORY[0x1E69E5920](v40);
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0xF000000000000000;
  }

  v14 = v44;
  v13 = v43;
  MEMORY[0x1E69E5920](v87);
  v16 = v95;
  v95[0] = v13;
  v95[1] = v14;
  sub_1C55271EC(v47, &v94);
  v24 = 184;
  v25 = 7;
  v15 = swift_allocObject();
  v26 = 168;
  memcpy((v15 + 16), v47, 0xA8uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFB8);
  v20 = sub_1C556C144();
  v21 = sub_1C556C1CC();
  sub_1C543AE1C();
  sub_1C5595DE4();

  sub_1C556C2DC(v16);
  sub_1C537131C(v82);
  v18 = [objc_opt_self() defaultCenter];
  v17 = *sub_1C55415F0();
  MEMORY[0x1E69E5928](v17);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  sub_1C55271EC(v47, &v93);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v47, v26);
  v92[21] = v59;
  v92[22] = v19;
  v92[23] = v20;
  v92[24] = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5443C8C();
  sub_1C5595E34();

  (*(v55 + 8))(v58, v54);
  (*(v62 + 8))(v65, v61);
  sub_1C55271EC(v47, v92);
  v27 = swift_allocObject();
  memcpy((v27 + 16), v47, v26);
  sub_1C556CC08();
  sub_1C5595DC4();
  sub_1C5411348(v51);
  sub_1C53715C0(v68);
  v28 = *sub_1C545CFA4();
  v29 = *sub_1C545CFB8();
  v30 = *sub_1C545CFC4();
  sub_1C545CFD0();
  sub_1C5594F54();
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  sub_1C556CC90();
  sub_1C5595D74();
  sub_1C53716A0(v71);
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  v11 = sub_1C5595E44();
  v38 = &v91;
  v91 = v11;
  v36 = sub_1C556CD34();
  v35 = MEMORY[0x1E69815C0];
  v37 = MEMORY[0x1E6981568];
  sub_1C5410CE8();
  sub_1C5595A74();
  sub_1C5410D10();
  sub_1C53716A0(v74);
  v39 = sub_1C556CDD8();
  sub_1C540EFD8(v79, v75, v81);
  sub_1C53717F8(v79);
  sub_1C5371974(v81, v77);
  sub_1C540EFD8(v77, v75, v46);
  sub_1C53717F8(v77);
  return sub_1C53717F8(v81);
}

uint64_t sub_1C5569B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v83 = a1;
  v51 = sub_1C556F6D0;
  v52 = MEMORY[0x1E6981218];
  v53 = sub_1C556F6D8;
  v54 = MEMORY[0x1E697D510];
  v55 = &unk_1C55CC370;
  v56 = sub_1C556F6D0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v107 = 0;
  v96 = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFF0);
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (v58[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v16 - v60;
  v62 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v60);
  v63 = &v16 - v62;
  v64 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v62);
  v65 = &v16 - v64;
  v122 = &v16 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF8);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v16 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFA8);
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v16 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE8);
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (v75[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v16 - v77;
  v79 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v77);
  v80 = &v16 - v79;
  v81 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v79);
  v82 = &v16 - v81;
  v121 = &v16 - v81;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF98);
  v85 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v16 - v85;
  v87 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v16 - v87;
  v120 = &v16 - v87;
  v119 = v8;
  v90 = *(v8 + 144);
  MEMORY[0x1E69E5928](v90);
  v89 = *MEMORY[0x1E698B760];
  *&v9 = MEMORY[0x1E69E5928](v89).n128_u64[0];
  v91 = [v90 aa:v89 isAccountClass:v9];
  MEMORY[0x1E69E5920](v89);
  MEMORY[0x1E69E5920](v90);
  if (v91)
  {
    v49 = sub_1C5471180();
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    sub_1C5566F14(v68);
    sub_1C55271EC(v83, v106);
    v38 = swift_allocObject();
    memcpy((v38 + 16), v83, 0xA8uLL);
    v40 = sub_1C55688B8();
    sub_1C543AECC();
    sub_1C5595B44();

    sub_1C5370988(v68);
    v10 = *(v83 + 6);
    v39 = &v123;
    v123 = v10;
    sub_1C5409664(&v123, &v105);
    v104 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
    sub_1C5595FA4();
    v42 = v101;
    v43 = v102;
    v41 = v103;
    sub_1C5373718();
    v99 = v66;
    v100 = v40;
    v45 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C5541FD0(v42, v43, v41 & 1, v69);

    (*(v70 + 8))(v73, v69);
    v97 = v69;
    v98 = OpaqueTypeConformance2;
    v46 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v80, v74, v82);
    v47 = v75[1];
    v48 = v75 + 1;
    v47(v80, v74);
    v96 = v80;
    v36 = v75[2];
    v35 = v75 + 2;
    v36(v78, v82, v74);
    sub_1C540EFD8(v78, v74, v80);
    v47(v78, v74);
    v36(v78, v80, v74);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB0);
    v11 = sub_1C556BBA8();
    v92 = v69;
    v93 = v37;
    v94 = OpaqueTypeConformance2;
    v95 = v11;
    v12 = swift_getOpaqueTypeConformance2();
    sub_1C540FD1C(v78, v74, v57, v46, v12, v86);
    v47(v78, v74);
    sub_1C5371E28(v86, v88);
    v47(v80, v74);
    v47(v82, v74);
  }

  else
  {
    sub_1C5566F14(v68);
    sub_1C55271EC(v83, &v118);
    v20 = 184;
    v21 = 7;
    v18 = swift_allocObject();
    v22 = 168;
    memcpy((v18 + 16), v83, 0xA8uLL);
    v23 = sub_1C55688B8();
    sub_1C543AECC();
    sub_1C5595B44();

    sub_1C5370988(v68);
    v13 = *(v83 + 6);
    v19 = &v124;
    v124 = v13;
    sub_1C5409664(&v124, &v117);
    v116 = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
    sub_1C5595FA4();
    v26 = v114[21];
    v27 = v114[22];
    v24 = v115;
    sub_1C5373718();
    sub_1C55271EC(v83, v114);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v83, v22);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFB0);
    v112 = v66;
    v113 = v23;
    v31 = 1;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = sub_1C556BBA8();
    sub_1C5595D34();

    (*(v70 + 8))(v73, v69);
    v108 = v69;
    v109 = v28;
    v110 = v29;
    v111 = v30;
    v32 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v63, v57, v65);
    v33 = v58[1];
    v34 = v58 + 1;
    v33(v63, v57);
    v107 = v63;
    v17 = v58[2];
    v16 = v58 + 2;
    v17(v61, v65, v57);
    sub_1C540EFD8(v61, v57, v63);
    v33(v61, v57);
    v17(v61, v63, v57);
    v106[21] = v69;
    v106[22] = v29;
    v14 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v61, v74, v57, v14, v32, v86);
    v33(v61, v57);
    sub_1C5371E28(v86, v88);
    v33(v63, v57);
    v33(v65, v57);
  }

  sub_1C5371F38(v88, v86);
  sub_1C556BA00();
  sub_1C540EFD8(v86, v84, v50);
  sub_1C5372048(v86);
  return sub_1C5372048(v88);
}

void *sub_1C556A768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[8] = a1;
  v19 = *(a1 + 112);
  sub_1C550606C(&v19, &v16);
  v15 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0);
  sub_1C5595FA4();
  sub_1C55060CC(&v19);
  MEMORY[0x1E69E5928](*(a1 + 144));
  v14[0] = nullsub_1(v14[4]);
  v14[1] = v2;
  v14[2] = v3;
  v14[3] = v4;
  sub_1C55271EC(a1, v13);
  v7 = swift_allocObject();
  memcpy((v7 + 16), a1, 0xA8uLL);
  sub_1C55000E0();
  sub_1C5595B04();
  sub_1C5411348(sub_1C556F6E0);
  sub_1C54FFFEC(v14);
  memcpy(__dst, v17, sizeof(__dst));
  memcpy(v12, __dst, sizeof(v12));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFB0);
  sub_1C556BBA8();
  sub_1C540EFD8(v12, v9, v18);
  sub_1C556F6E8(v12);
  memcpy(v21, v18, sizeof(v21));
  sub_1C556F788(v21, v11);
  memcpy(v10, v21, sizeof(v10));
  sub_1C540EFD8(v10, v9, a2);
  sub_1C556F6E8(v10);
  return sub_1C556F6E8(v18);
}

uint64_t sub_1C556A9D8()
{
  v153 = 0;
  v208 = 0;
  v154 = 0;
  v200 = 0;
  v199 = 0;
  v186 = 0;
  v181 = 0;
  v173 = 0;
  v155 = sub_1C5594C74();
  v156 = *(v155 - 8);
  v157 = v156;
  v160 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v155 - 8);
  v162 = (v160 + 15) & 0xFFFFFFFFFFFFFFF0;
  v158 = v35 - v162;
  MEMORY[0x1EEE9AC00](v35 - v162);
  v159 = v35 - v162;
  MEMORY[0x1EEE9AC00](v35 - v162);
  v161 = v35 - v162;
  MEMORY[0x1EEE9AC00](v35 - v162);
  v163 = v35 - v162;
  v208 = v0;
  v211 = *(v0 + 112);
  v165 = &v211;
  sub_1C550606C(&v211, &v207);
  v206 = v211;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0);
  sub_1C5595F84();
  v167 = v205;
  v166 = v205;
  sub_1C55060CC(v165);
  v168 = [v167 imageData];
  if (v168)
  {
    v151 = v168;
    v146 = v168;
    v147 = sub_1C55948D4();
    v148 = v1;

    v149 = v147;
    v150 = v148;
  }

  else
  {
    v149 = 0;
    v150 = 0xF000000000000000;
  }

  v144 = v150;
  v145 = v149;
  if (v150 >> 60 != 15)
  {
    v142 = v145;
    v143 = v144;
    v137 = v144;
    v138 = v145;
    v199 = v145;
    v200 = v144;

    v210 = *(v152 + 112);
    v139 = &v210;
    sub_1C550606C(&v210, &v198);
    v197 = v210;
    sub_1C5595F84();
    v140 = v196;
    sub_1C55060CC(v139);
    [v140 cropRect];
    v195 = v2;
    v194 = v3;
    v193 = v4;
    v192 = v5;
    v141.size.height = v2;
    v141.size.width = v3;
    v141.origin.y = v4;
    v141.origin.x = v5;

    v191 = v141;
    if (!CGRectIsNull(v141))
    {
      sub_1C5418C84();
      sub_1C544DE30(v138, v137);
      v136 = sub_1C54493D0(v138, v137);
      if (v136)
      {
        v135 = v136;
        v127 = v136;
        v181 = v136;
        v209 = *(v152 + 112);
        v128 = &v209;
        sub_1C550606C(&v209, &v180);
        v179 = v209;
        sub_1C5595F84();
        v129 = v178;
        sub_1C55060CC(v128);
        [v129 cropRect];
        v177 = v6;
        v176 = v7;
        v175 = v8;
        v174 = v9;
        v133 = v6;
        v132 = v7;
        v131 = v8;
        v130 = v9;

        v10 = sub_1C5449944(v130, v131, v132, v133);
        v134 = v10;
        if (v10)
        {
          v126 = v134;
          v11 = v163;
          v120 = v134;
          v173 = v134;
          v12 = sub_1C54B05F8();
          (*(v157 + 16))(v11, v12, v155);
          v124 = sub_1C5594C54();
          v121 = v124;
          v123 = sub_1C5596974();
          v122 = v123;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
          v125 = sub_1C5596E04();
          if (os_log_type_enabled(v124, v123))
          {
            v14 = v154;
            v111 = sub_1C5596A74();
            v107 = v111;
            v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
            v109 = 0;
            v112 = sub_1C5419DC0(0);
            v110 = v112;
            v113 = sub_1C5419DC0(v109);
            v172 = v111;
            v171 = v112;
            v170 = v113;
            v114 = 0;
            v115 = &v172;
            sub_1C5419E14(0, &v172);
            sub_1C5419E14(v114, v115);
            v169 = v125;
            v116 = v35;
            MEMORY[0x1EEE9AC00](v35);
            v117 = &v35[-6];
            v35[-4] = v15;
            v35[-3] = &v171;
            v35[-2] = &v170;
            v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
            sub_1C5419F0C();
            sub_1C55966B4();
            v119 = v14;
            if (v14)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_1C5355000, v121, v122, "Setting image to croppedUIImage...", v107, 2u);
              v105 = 0;
              sub_1C5419E74(v110);
              sub_1C5419E74(v113);
              sub_1C5596A54();

              v106 = v119;
            }
          }

          else
          {

            v106 = v154;
          }

          v103 = v106;

          (*(v157 + 8))(v163, v155);
          v16 = v120;
          v17 = sub_1C5595ED4();
          sub_1C5564EEC(v17);

          v104 = v103;
LABEL_32:
          v55 = v104;
          sub_1C544DEAC(v138, v137);
          return v55;
        }
      }
    }

    sub_1C5418C84();
    sub_1C544DE30(v138, v137);
    v102 = sub_1C54493D0(v138, v137);
    if (v102)
    {
      v101 = v102;
      v18 = v161;
      v95 = v102;
      v186 = v102;
      v19 = sub_1C54B05F8();
      (*(v157 + 16))(v18, v19, v155);
      v99 = sub_1C5594C54();
      v96 = v99;
      v98 = sub_1C5596974();
      v97 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v100 = sub_1C5596E04();
      if (os_log_type_enabled(v99, v98))
      {
        v20 = v154;
        v86 = sub_1C5596A74();
        v82 = v86;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v84 = 0;
        v87 = sub_1C5419DC0(0);
        v85 = v87;
        v88 = sub_1C5419DC0(v84);
        v185 = v86;
        v184 = v87;
        v183 = v88;
        v89 = 0;
        v90 = &v185;
        sub_1C5419E14(0, &v185);
        sub_1C5419E14(v89, v90);
        v182 = v100;
        v91 = v35;
        MEMORY[0x1EEE9AC00](v35);
        v92 = &v35[-6];
        v35[-4] = v21;
        v35[-3] = &v184;
        v35[-2] = &v183;
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v94 = v20;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v96, v97, "Setting image to newImage...", v82, 2u);
          v80 = 0;
          sub_1C5419E74(v85);
          sub_1C5419E74(v88);
          sub_1C5596A54();

          v81 = v94;
        }
      }

      else
      {

        v81 = v154;
      }

      v78 = v81;

      (*(v157 + 8))(v161, v155);
      v22 = v95;
      v23 = sub_1C5595ED4();
      sub_1C5564EEC(v23);

      v79 = v78;
    }

    else
    {
      v24 = v159;
      v25 = sub_1C54B05F8();
      (*(v157 + 16))(v24, v25, v155);
      v76 = sub_1C5594C54();
      v73 = v76;
      v75 = sub_1C5596974();
      v74 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v77 = sub_1C5596E04();
      if (os_log_type_enabled(v76, v75))
      {
        v26 = v154;
        v64 = sub_1C5596A74();
        v60 = v64;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v62 = 0;
        v65 = sub_1C5419DC0(0);
        v63 = v65;
        v66 = sub_1C5419DC0(v62);
        v190 = v64;
        v189 = v65;
        v188 = v66;
        v67 = 0;
        v68 = &v190;
        sub_1C5419E14(0, &v190);
        sub_1C5419E14(v67, v68);
        v187 = v77;
        v69 = v35;
        MEMORY[0x1EEE9AC00](v35);
        v70 = &v35[-6];
        v35[-4] = v27;
        v35[-3] = &v189;
        v35[-2] = &v188;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v72 = v26;
        if (v26)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v73, v74, "Failed to create UIImage from data. Setting to default placeholder image...", v60, 2u);
          v58 = 0;
          sub_1C5419E74(v63);
          sub_1C5419E74(v66);
          sub_1C5596A54();

          v59 = v72;
        }
      }

      else
      {

        v59 = v154;
      }

      v57 = v59;

      (*(v157 + 8))(v159, v155);
      sub_1C55965F4();
      v28 = sub_1C5595EF4();
      sub_1C5564EEC(v28);
      v79 = v57;
    }

    v104 = v79;
    goto LABEL_32;
  }

  v29 = v158;

  v30 = sub_1C54B05F8();
  (*(v157 + 16))(v29, v30, v155);
  v53 = sub_1C5594C54();
  v50 = v53;
  v52 = sub_1C5596944();
  v51 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v54 = sub_1C5596E04();
  if (os_log_type_enabled(v53, v52))
  {
    v31 = v154;
    v41 = sub_1C5596A74();
    v37 = v41;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v39 = 0;
    v42 = sub_1C5419DC0(0);
    v40 = v42;
    v43 = sub_1C5419DC0(v39);
    v204 = v41;
    v203 = v42;
    v202 = v43;
    v44 = 0;
    v45 = &v204;
    sub_1C5419E14(0, &v204);
    sub_1C5419E14(v44, v45);
    v201 = v54;
    v46 = v35;
    MEMORY[0x1EEE9AC00](v35);
    v47 = &v35[-6];
    v35[-4] = v32;
    v35[-3] = &v203;
    v35[-2] = &v202;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v49 = v31;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v50, v51, "AppleAccountHeaderView: pickerContact.imageData is nil. Using default avatar.", v37, 2u);
      v35[1] = 0;
      sub_1C5419E74(v40);
      sub_1C5419E74(v43);
      sub_1C5596A54();

      v36 = v49;
    }
  }

  else
  {

    v36 = v154;
  }

  v35[0] = v36;

  (*(v157 + 8))(v158, v155);
  sub_1C55965F4();
  v33 = sub_1C5595EF4();
  sub_1C5564EEC(v33);
  return v35[0];
}

unint64_t sub_1C556BA00()
{
  v2 = qword_1EC15EFA0;
  if (!qword_1EC15EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EEF8);
    sub_1C55688B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB0);
    sub_1C556BBA8();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556BBA8()
{
  v2 = qword_1EC15A028;
  if (!qword_1EC15A028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB0);
    sub_1C55000E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556BC4C(uint64_t a1)
{
  v31 = a1;
  v40 = 0;
  v51 = 0;
  v30 = 0;
  v37 = sub_1C5594C74();
  v32 = v37;
  v33 = *(v37 - 8);
  v36 = v33;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v31);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  v51 = v3;
  v4 = sub_1C54B05F8();
  (*(v36 + 16))(v2, v4, v37);
  v42 = sub_1C5594C54();
  v38 = v42;
  v41 = sub_1C5596944();
  v39 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v43 = sub_1C5596E04();
  if (os_log_type_enabled(v42, v41))
  {
    v5 = v30;
    v21 = sub_1C5596A74();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v19 = 0;
    v22 = sub_1C5419DC0(0);
    v20 = v22;
    v23 = sub_1C5419DC0(v19);
    v47[0] = v21;
    v46 = v22;
    v45 = v23;
    v24 = 0;
    v25 = v47;
    sub_1C5419E14(0, v47);
    sub_1C5419E14(v24, v25);
    v44 = v43;
    v26 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v27 = &v10 - 6;
    *(&v10 - 4) = v6;
    *(&v10 - 3) = &v46;
    *(&v10 - 2) = &v45;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v29 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v38, v39, "Contact changed. Updating profile picture...", v17, 2u);
      v15 = 0;
      sub_1C5419E74(v20);
      sub_1C5419E74(v23);
      sub_1C5596A54();

      v16 = v29;
    }
  }

  else
  {

    v16 = v30;
  }

  (*(v34 + 8))(v35, v32);
  sub_1C5522CD8();
  v11 = *(v31 + 160);
  v7 = v11;
  v14 = sub_1C5566ED4(v11);
  v52 = *(v31 + 112);
  v13 = &v52;
  sub_1C550606C(&v52, &v50);
  sub_1C550606C(v13, &v49);
  v48 = v52;
  v8 = v14;
  v47[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0);
  v12 = &v48;
  sub_1C5595F94();
  sub_1C55060CC(v12);
  sub_1C55060CC(v13);

  return sub_1C556A9D8();
}

unint64_t sub_1C556C144()
{
  v2 = qword_1EC15EFC0;
  if (!qword_1EC15EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556C1CC()
{
  v2 = qword_1EC15EFC8;
  if (!qword_1EC15EFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB8);
    sub_1C556C264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556C264()
{
  v2 = qword_1EC15EFD0;
  if (!qword_1EC15EFD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556C2DC(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1C544DEAC(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_1C556C32C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = a1;
  v57 = 0;
  v56 = 0;
  v39 = 0;
  v42 = sub_1C5594C74();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v40);
  v45 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v3;
  v56 = v4;
  v47 = *(v4 + 144);
  v5 = v47;
  v46 = *MEMORY[0x1E6959640];
  v6 = v46;
  v48 = [v47 isEnabledForDataclass_];

  if (v48)
  {
    return v39;
  }

  v7 = v45;
  v8 = sub_1C54B05F8();
  (*(v44 + 16))(v7, v8, v42);
  v37 = sub_1C5594C54();
  v34 = v37;
  v36 = sub_1C5596944();
  v35 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v38 = sub_1C5596E04();
  if (os_log_type_enabled(v37, v36))
  {
    v9 = v39;
    v25 = sub_1C5596A74();
    v21 = v25;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v23 = 0;
    v26 = sub_1C5419DC0(0);
    v24 = v26;
    v27 = sub_1C5419DC0(v23);
    v52 = v25;
    v51 = v26;
    v50 = v27;
    v28 = 0;
    v29 = &v52;
    sub_1C5419E14(0, &v52);
    sub_1C5419E14(v28, v29);
    v49 = v38;
    v30 = &v14;
    MEMORY[0x1EEE9AC00](&v14);
    v31 = &v14 - 6;
    *(&v14 - 4) = v10;
    *(&v14 - 3) = &v51;
    *(&v14 - 2) = &v50;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v33 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v34, v35, "SNaP editor dismissed. Syncing me card to server...", v21, 2u);
      v19 = 0;
      sub_1C5419E74(v24);
      sub_1C5419E74(v27);
      sub_1C5596A54();

      v20 = v33;
    }
  }

  else
  {

    v20 = v39;
  }

  v17 = v20;

  (*(v44 + 8))(v45, v42);
  v58 = *(v41 + 128);
  v15 = &v58;
  sub_1C545D998(&v58, &v55);
  v54 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8);
  sub_1C5595F84();
  v11 = v15;
  v12 = v53;
  v16 = v53;
  sub_1C5436F54();
  (*(*v12 + 104))(v11);

  return v17;
}