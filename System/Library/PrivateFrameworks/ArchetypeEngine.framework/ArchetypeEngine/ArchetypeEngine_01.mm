uint64_t sub_240FC34BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v93 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v105 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = v85 - v9;
  v10 = type metadata accessor for ATMegadomeLifeEvent();
  v11 = v10[9];
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(a3 + v11) = v12;
  v87 = v12;
  *a3 = sub_240FD430C();
  a3[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E840, &qword_240FD5B58);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v85 - v17;
  v19 = sub_240FD432C();
  v20 = sub_240FC590C(&qword_27E51E848, MEMORY[0x28221EA70]);
  v86 = v19;
  MEMORY[0x245CD6230](v19, v20);
  v21 = sub_240FD427C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD42CC();
  (*(v15 + 8))(v18, v14);
  v26 = v10[5];
  v90 = a3;
  sub_240FD426C();
  (*(v22 + 8))(v25, v21);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E850, &qword_240FD5B60);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v85 - v29;
  v88 = a1;
  sub_240FD42FC();
  v31 = sub_240FD435C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    sub_240FBA1A8(v30, &qword_27E51E850, &qword_240FD5B60);
    v34 = sub_240FD422C();
    v35 = v104;
    (*(*(v34 - 8) + 56))(v104, 1, 1, v34);
  }

  else
  {
    v35 = v104;
    sub_240FD434C();
    (*(v32 + 8))(v30, v31);
  }

  v36 = sub_240FBA140(v35, v90 + v10[6], &qword_27E51E578, &qword_240FD51A0);
  MEMORY[0x28223BE20](v36);
  v37 = v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v88;
  sub_240FD42FC();
  if (v33(v37, 1, v31) == 1)
  {
    sub_240FBA1A8(v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E850, &qword_240FD5B60);
    v39 = sub_240FD422C();
    v40 = v105;
    (*(*(v39 - 8) + 56))(v105, 1, 1, v39);
  }

  else
  {
    v40 = v105;
    sub_240FD433C();
    (*(v32 + 8))(v37, v31);
  }

  v41 = v90;
  sub_240FBA140(v40, v90 + v10[7], &qword_27E51E578, &qword_240FD51A0);
  v89 = v10[8];
  *(v41 + v89) = MEMORY[0x277D84F90];
  v42 = sub_240FD431C();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E858, &qword_240FD5B68);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v99 = v85 - v47;
  v48 = *(v45 + 16);
  if (!v48)
  {

    goto LABEL_25;
  }

  v85[1] = v85;
  v94 = 0;
  v50 = *(v46 + 16);
  v49 = v46 + 16;
  v97 = v50;
  v51 = (*(v49 + 64) + 32) & ~*(v49 + 64);
  v85[2] = v45;
  v52 = v45 + v51;
  v96 = (v49 - 8);
  v91 = MEMORY[0x277D84F90];
  v95 = *(v49 + 56);
  v53 = &unk_240FD5B78;
  v92 = v43;
  v98 = v49;
  do
  {
    v54 = v99;
    v97(v99, v52, v43);
    v104 = sub_240FD42AC();
    v105 = v85;
    v103 = *(v104 - 1);
    v55 = *(v103 + 64);
    MEMORY[0x28223BE20](v104);
    v100 = v85 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E860, &qword_240FD5B70);
    v102 = v85;
    v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v56 - 8);
    v59 = v85 - v58;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E868, v53);
    v101 = v85;
    v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v60 - 8);
    v63 = v85 - v62;
    sub_240FD436C();
    (*v96)(v54, v43);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E870, &qword_240FD5B80);
    v65 = v53;
    v66 = *(v64 - 8);
    if ((*(v66 + 48))(v63, 1, v64) == 1)
    {
      sub_240FBA1A8(v63, &qword_27E51E868, v65);
      v53 = v65;
LABEL_13:
      (*(v103 + 56))(v59, 1, 1, v104);
LABEL_14:
      sub_240FBA1A8(v59, &qword_27E51E860, &qword_240FD5B70);
      goto LABEL_15;
    }

    v106 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E800, &qword_240FD5A48);
    sub_240FC5954();
    sub_240FC590C(&qword_27E51E810, MEMORY[0x28221E9F0]);
    v67 = v94;
    sub_240FD42BC();
    if (v67)
    {

      (*(v66 + 8))(v63, v64);
      v94 = 0;
      v43 = v92;
      v53 = &unk_240FD5B78;
      goto LABEL_13;
    }

    v94 = 0;
    (*(v66 + 8))(v63, v64);
    v69 = v103;
    v68 = v104;
    if ((*(v103 + 48))(v59, 1, v104) == 1)
    {
      v43 = v92;
      v53 = &unk_240FD5B78;
      goto LABEL_14;
    }

    v70 = v100;
    v71 = (*(v69 + 32))(v100, v59, v68);
    MEMORY[0x28223BE20](v71);
    (*(v69 + 16))(v85 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v70, v68);
    sub_240FC59AC(v85 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v92;
    v53 = &unk_240FD5B78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_240FB6C80(0, *(v91 + 2) + 1, 1, v91);
    }

    v74 = *(v91 + 2);
    v73 = *(v91 + 3);
    if (v74 >= v73 >> 1)
    {
      v91 = sub_240FB6C80((v73 > 1), v74 + 1, 1, v91);
    }

    (*(v69 + 8))(v100, v68);
    v75 = v91;
    *(v91 + 2) = v74 + 1;
    v76 = &v75[128 * v74];
    v77 = v107[0];
    v78 = v107[1];
    v79 = v107[3];
    *(v76 + 4) = v107[2];
    *(v76 + 5) = v79;
    *(v76 + 2) = v77;
    *(v76 + 3) = v78;
    v80 = v107[4];
    v81 = v107[5];
    v82 = v107[7];
    *(v76 + 8) = v107[6];
    *(v76 + 9) = v82;
    *(v76 + 6) = v80;
    *(v76 + 7) = v81;
    *(v90 + v89) = v75;
LABEL_15:
    v52 += v95;
    --v48;
  }

  while (v48);

  v38 = v88;
LABEL_25:
  v83 = v87;
  [v87 setDateStyle_];
  [v83 setTimeStyle_];

  return (*(*(v86 - 8) + 8))(v38);
}

uint64_t ATMegadomeLifeEvent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v65 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v73 = &v65 - v9;
  v10 = v0[1];
  v68 = v11;
  if (v10)
  {
    v71[0] = *v1;
    v71[1] = v10;
  }

  else
  {
    strcpy(v71, "[unknown name]");
    HIBYTE(v71[1]) = -18;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7F0, &unk_240FD5A38);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v65 - v14;
  v74 = type metadata accessor for ATMegadomeLifeEvent();
  sub_240FB99A0(v1 + v74[5], v15, &qword_27E51E7F0, &unk_240FD5A38);
  v16 = sub_240FD424C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_240FBA1A8(v15, &qword_27E51E7F0, &unk_240FD5A38);
    strcpy(v70, "[unknown type]");
    HIBYTE(v70[1]) = -18;
  }

  else
  {
    v70[0] = sub_240FD423C();
    v70[1] = v19;
    (*(v17 + 8))(v15, v16);
  }

  v20 = v73;
  v21 = v74;
  v22 = v74[6];
  sub_240FB99A0(v1 + v22, v73, &qword_27E51E578, &qword_240FD51A0);
  v23 = sub_240FD422C();
  v69 = *(v23 - 8);
  v24 = *(v69 + 48);
  v75 = v23;
  v25 = v24(v20, 1);
  sub_240FBA1A8(v20, &qword_27E51E578, &qword_240FD51A0);
  v26 = 0x6E776F6E6B6E755BLL;
  v73 = 0xEE005D6574616420;
  v27 = 0xEE005D6574616420;
  if (v25 != 1)
  {
    v28 = *(v1 + v21[9]);
    v29 = v1 + v22;
    v30 = v68;
    sub_240FB99A0(v29, v68, &qword_27E51E578, &qword_240FD51A0);
    result = (v24)(v30, 1, v75);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v32 = sub_240FD41BC();
    (*(v69 + 8))(v30, v75);
    v33 = [v28 stringFromDate_];

    v26 = sub_240FD449C();
    v27 = v34;

    v21 = v74;
  }

  v67 = v26;
  v68 = v27;
  v35 = v21[7];
  v36 = v72;
  sub_240FB99A0(v1 + v35, v72, &qword_27E51E578, &qword_240FD51A0);
  v37 = (v24)(v36, 1, v75);
  sub_240FBA1A8(v36, &qword_27E51E578, &qword_240FD51A0);
  if (v37 != 1)
  {
    v40 = *(v1 + v21[9]);
    v38 = v1;
    v41 = v66;
    sub_240FB99A0(v1 + v35, v66, &qword_27E51E578, &qword_240FD51A0);
    result = (v24)(v41, 1, v75);
    if (result != 1)
    {
      v42 = sub_240FD41BC();
      (*(v69 + 8))(v41, v75);
      v43 = [v40 stringFromDate_];

      v39 = sub_240FD449C();
      v73 = v44;

      goto LABEL_14;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v38 = v1;
  v39 = 0x6E776F6E6B6E755BLL;
LABEL_14:
  v45 = *(v38 + v74[8]);
  v46 = *(v45 + 16);
  v47 = MEMORY[0x277D84F90];
  if (v46)
  {
    v75 = v39;
    v78 = MEMORY[0x277D84F90];
    sub_240FB87F0(0, v46, 0);
    v47 = v78;
    v48 = (v45 + 32);
    do
    {
      v49 = *v48;
      v50 = v48[1];
      v51 = v48[3];
      v79[2] = v48[2];
      v79[3] = v51;
      v79[0] = v49;
      v79[1] = v50;
      v52 = v48[4];
      v53 = v48[5];
      v54 = v48[7];
      v79[6] = v48[6];
      v79[7] = v54;
      v79[4] = v52;
      v79[5] = v53;
      sub_240FC5200(v79, &v76);
      v55 = sub_240FC30F8();
      v57 = v56;
      sub_240FC5238(v79);
      v78 = v47;
      v59 = *(v47 + 16);
      v58 = *(v47 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_240FB87F0((v58 > 1), v59 + 1, 1);
        v47 = v78;
      }

      *(v47 + 16) = v59 + 1;
      v60 = v47 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v48 += 8;
      --v46;
    }

    while (v46);
    v39 = v75;
  }

  v61 = v68;
  v76 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
  sub_240FC5268();
  v62 = sub_240FD444C();
  v64 = v63;

  v76 = 0;
  v77 = 0xE000000000000000;
  sub_240FD46BC();

  v76 = 10;
  v77 = 0xE100000000000000;
  MEMORY[0x245CD64D0](v71[0], v71[1]);

  MEMORY[0x245CD64D0](0x203A657079740ALL, 0xE700000000000000);
  MEMORY[0x245CD64D0](v70[0], v70[1]);

  MEMORY[0x245CD64D0](0x5B203A656D69740ALL, 0xE800000000000000);
  MEMORY[0x245CD64D0](v67, v61);

  MEMORY[0x245CD64D0](539831584, 0xE400000000000000);
  MEMORY[0x245CD64D0](v39, v73);

  MEMORY[0x245CD64D0](0x697461636F6C0A5DLL, 0xEE005B203A736E6FLL);
  MEMORY[0x245CD64D0](v62, v64);

  MEMORY[0x245CD64D0](2653, 0xE200000000000000);
  return v76;
}

uint64_t type metadata accessor for ATMegadomeLifeEvent()
{
  result = qword_27E51E818;
  if (!qword_27E51E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ATMegadomeDataRetriever.getLifeEvents(nRecords:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D1F398])
  {
    v3 = MEMORY[0x277D1F3A0] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || MEMORY[0x277D1F3A8] == 0 || MEMORY[0x277D1F390] == 0 || MEMORY[0x277D1F388] == 0)
  {
    return v57;
  }

  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E800, &qword_240FD5A48);
  v48 = sub_240FD42EC();
  v9 = sub_240FD422C();
  v49 = v40;
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v40 - v13;
  MEMORY[0x28223BE20](v12);
  result = sub_240FD421C();
  if ((a2 * 86400) >> 64 != (86400 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_240FD41AC();
  v46 = v10;
  v17 = v10[1];
  v16 = v10 + 1;
  v53 = v17;
  v18 = (v17)(v40 - v13, v9);
  v47 = v40;
  v19 = MEMORY[0x28223BE20](v18);
  v52 = v40 - v13;
  MEMORY[0x28223BE20](v19);
  result = sub_240FD421C();
  if ((a3 * 86400) >> 64 != (86400 * a3) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = 0;
  sub_240FD41AC();
  v45 = v16;
  v53(v40 - v13, v9);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7E0, &qword_240FD5A10);
  v43 = v40;
  v20 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v51 = v40 - v21;
  sub_240FC2E7C();
  result = sub_240FD446C();
  if (result)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7D8, &qword_240FD5A08);
    v40[2] = v40;
    v23 = v22 - 8;
    v24 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v22);
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
    v26 = v46;
    v27 = v46[2];
    v41 = v14;
    v27(v40 - v25, v14, v9);
    v28 = (v27)(v40 + *(v23 + 56) - v25, v52, v9);
    v40[1] = v40;
    MEMORY[0x28223BE20](v28);
    sub_240FB99A0(v40 - v25, v40 - v25, &qword_27E51E7D8, &qword_240FD5A08);
    v29 = *(v23 + 56);
    v30 = v26[4];
    v30(v51, v40 - v25, v9);
    v31 = v53;
    v32 = (v53)(v40 + v29 - v25, v9);
    v46 = v40;
    MEMORY[0x28223BE20](v32);
    sub_240FBA140(v40 - v25, v40 - v25, &qword_27E51E7D8, &qword_240FD5A08);
    v30(v51 + *(v42 + 36), v40 + *(v23 + 56) - v25, v9);
    v33 = v31(v40 - v25, v9);
    MEMORY[0x28223BE20](v33);
    v34 = v48;
    v40[-4] = &v57;
    v40[-3] = v34;
    v40[-2] = v50;
    sub_240FC590C(&qword_27E51E810, MEMORY[0x28221E9F0]);
    v35 = v44;
    sub_240FD42DC();

    sub_240FBA1A8(v51, &qword_27E51E7E0, &qword_240FD5A10);
    v36 = v53;
    v53(v52, v9);
    v36(v41, v9);
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E808, &unk_240FD5A50);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_240FD5170;
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_240FD46BC();
      MEMORY[0x245CD64D0](0xD000000000000027, 0x8000000240FD65D0);
      v54 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E600, &qword_240FD5500);
      sub_240FD475C();
      MEMORY[0x245CD64D0](0xD00000000000004ALL, 0x8000000240FD6600);
      v38 = v55;
      v39 = v56;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 32) = v38;
      *(v37 + 40) = v39;
      sub_240FD487C();
    }

    return v57;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_240FC4FD0(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for ATMegadomeLifeEvent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_240FD432C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1);

  sub_240FC34BC(v18, a4, v14);
  v20 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_240FB6D8C(0, v20[2] + 1, 1, v20);
    *a3 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_240FB6D8C(v22 > 1, v23 + 1, 1, v20);
    *a3 = v20;
  }

  v20[2] = v23 + 1;
  result = sub_240FC58A8(v14, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23);
  *a2 = *(*a3 + 16) >= a5;
  return result;
}

unint64_t sub_240FC5268()
{
  result = qword_27E51E7F8;
  if (!qword_27E51E7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E640, &qword_240FD5730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E7F8);
  }

  return result;
}

uint64_t sub_240FC5300(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7F0, &unk_240FD5A38);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_240FC5434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7F0, &unk_240FD5A38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_240FC5550()
{
  sub_240FC56E4(319, &qword_27E51E688, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_240FC5690(319, &qword_27E51E828, MEMORY[0x28221E980]);
    if (v1 <= 0x3F)
    {
      sub_240FC5690(319, &qword_27E51E680, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_240FC56E4(319, &qword_27E51E830, &type metadata for ATLocation, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_240FC5734();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240FC5690(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_240FD463C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_240FC56E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_240FC5734()
{
  result = qword_27E51E838;
  if (!qword_27E51E838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51E838);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_240FC57C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_240FC5824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_240FC58A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATMegadomeLifeEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FC590C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_240FC5954()
{
  result = qword_27E51E878;
  if (!qword_27E51E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E800, &qword_240FD5A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E878);
  }

  return result;
}

uint64_t sub_240FC59AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E880, &qword_240FD5B88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - v6;
  sub_240FD429C();
  v8 = sub_240FD440C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = sub_240FBA1A8(v7, &qword_27E51E880, &qword_240FD5B88);
    v69 = 0;
    v12 = 1;
  }

  else
  {
    v69 = sub_240FD43EC();
    v12 = v13;
    v11 = (*(v9 + 8))(v7, v8);
  }

  MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD429C();
  if (v10(v14, 1, v8) == 1)
  {
    sub_240FBA1A8(v14, &qword_27E51E880, &qword_240FD5B88);
    v68 = 0;
    v15 = 1;
  }

  else
  {
    v68 = sub_240FD43FC();
    v15 = v16;
    (*(v9 + 8))(v14, v8);
  }

  v71 = v12 & 1;
  v70 = v15 & 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E888, &qword_240FD5B90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - v19;
  sub_240FD428C();
  v21 = sub_240FD43DC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) == 1)
  {
    v24 = sub_240FBA1A8(v20, &qword_27E51E888, &qword_240FD5B90);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v25 = sub_240FD43BC();
    v66 = v26;
    v67 = v25;
    v24 = (*(v22 + 8))(v20, v21);
  }

  MEMORY[0x28223BE20](v24);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v27 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v28 = sub_240FD439C();
    v64 = v29;
    v65 = v28;
    v27 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v27);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v30 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v31 = sub_240FD43AC();
    v62 = v32;
    v63 = v31;
    v30 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v30);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v33 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v34 = sub_240FD437C();
    v60 = v35;
    v61 = v34;
    v33 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v33);
  sub_240FD428C();
  if (v23(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v21) == 1)
  {
    v36 = sub_240FBA1A8(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E888, &qword_240FD5B90);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v37 = sub_240FD43CC();
    v58 = v38;
    v59 = v37;
    v36 = (*(v22 + 8))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  MEMORY[0x28223BE20](v36);
  v39 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD428C();
  if (v23(v39, 1, v21) == 1)
  {
    v40 = sub_240FD42AC();
    (*(*(v40 - 8) + 8))(a1, v40);
    result = sub_240FBA1A8(v39, &qword_27E51E888, &qword_240FD5B90);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = sub_240FD438C();
    v43 = v44;
    v45 = sub_240FD42AC();
    (*(*(v45 - 8) + 8))(a1, v45);
    result = (*(v22 + 8))(v39, v21);
  }

  v46 = v71;
  v47 = v70;
  *a2 = v69;
  *(a2 + 8) = v46;
  v48 = v67;
  *(a2 + 16) = v68;
  *(a2 + 24) = v47;
  v50 = v65;
  v49 = v66;
  *(a2 + 32) = v48;
  *(a2 + 40) = v49;
  v52 = v63;
  v51 = v64;
  *(a2 + 48) = v50;
  *(a2 + 56) = v51;
  v54 = v61;
  v53 = v62;
  *(a2 + 64) = v52;
  *(a2 + 72) = v53;
  v56 = v59;
  v55 = v60;
  *(a2 + 80) = v54;
  *(a2 + 88) = v55;
  v57 = v58;
  *(a2 + 96) = v56;
  *(a2 + 104) = v57;
  *(a2 + 112) = v42;
  *(a2 + 120) = v43;
  return result;
}

uint64_t ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v8 = sub_240FD422C();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for ATSpotlightDataRecord();
  v6[15] = v11;
  v12 = *(v11 - 8);
  v6[16] = v12;
  v13 = *(v12 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FC6258, 0, 0);
}

uint64_t sub_240FC6258()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_240FC7658(v2, v3, v0[6], v0[7]);
  v0[22] = v4;
  v5 = swift_task_alloc();
  v0[23] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[24] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E890, &unk_240FD5BC0);
  *v7 = v0;
  v7[1] = sub_240FC6388;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000032, 0x8000000240FD6720, sub_240FC7A44, v5, v8);
}

uint64_t sub_240FC6388()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240FC64A0, 0, 0);
}

uint64_t sub_240FC64A0()
{
  v63 = v0;
  v1 = *(v0 + 16);
  v58 = v1[2];
  if (!v58)
  {
    goto LABEL_32;
  }

  v2 = 0;
  v3 = *(v0 + 120);
  v56 = *(v0 + 128);
  v57 = *(v0 + 168);
  v4 = *(v0 + 96);
  v54 = *(v0 + 64);
  v5 = (v4 + 48);
  v51 = (v4 + 8);
  v52 = (v4 + 32);
  v6 = MEMORY[0x277D84F90];
  v50 = v3;
  v53 = (v4 + 48);
  do
  {
    if (v2 >= v1[2])
    {
      __break(1u);
LABEL_36:
      v1 = sub_240FCB08C(v1);
      goto LABEL_29;
    }

    v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v7 = *(v56 + 72);
    sub_240FBE4A4(v1 + v60 + v7 * v2, *(v0 + 168));
    v8 = *(v57 + 16);
    v9 = *(v57 + 8) & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    if (!v9)
    {
LABEL_3:
      sub_240FC2D4C(*(v0 + 168));
      goto LABEL_4;
    }

    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    sub_240FBA9F4(*(v0 + 168) + v3[9], v11);
    v12 = *v5;
    v13 = (*v5)(v11, 1, v10);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    if (v13 == 1)
    {
      v55 = v6;
      v16 = *(v0 + 168);
      v17 = *(v0 + 72);
      sub_240FC7A50(v14);
      sub_240FBA9F4(v16 + v3[8], v17);
      if (v12(v17, 1, v15) == 1)
      {
        v18 = *(v0 + 168);
        sub_240FC7A50(*(v0 + 72));
        v19 = v18 + v3[7];
        v6 = v55;
        v5 = v53;
        if ((sub_240FD41CC() & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v22 = *(v0 + 104);
        v23 = *(v0 + 88);
        (*v52)(v22, *(v0 + 72), v23);
        v24 = sub_240FD41CC();
        (*v51)(v22, v23);
        v6 = v55;
        v5 = v53;
        if ((v24 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v20 = *(v0 + 112);
      (*v52)(v20, v14, *(v0 + 88));
      v21 = sub_240FD41CC();
      (*v51)(v20, v15);
      if ((v21 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    sub_240FC7AB8(*(v0 + 168), *(v0 + 160));
    v62[0] = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_240FB8810(0, *(v6 + 16) + 1, 1);
      v5 = v53;
      v6 = v62[0];
    }

    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_240FB8810(v25 > 1, v26 + 1, 1);
      v5 = v53;
      v6 = v62[0];
    }

    v27 = *(v0 + 160);
    *(v6 + 16) = v26 + 1;
    sub_240FC7AB8(v27, v6 + v60 + v26 * v7);
    v3 = v50;
LABEL_4:
    ++v2;
  }

  while (v58 != v2);

  v28 = *(v6 + 16);
  if (v28)
  {
    v29 = *(v0 + 64);
    v62[0] = MEMORY[0x277D84F90];
    sub_240FB8810(0, v28, 0);
    v3 = v60;
    v1 = v62[0];
    v59 = *(*v29 + 152);
    v30 = v6 + v60;
    do
    {
      v31 = *(v0 + 136);
      v32 = *(v0 + 64);
      sub_240FBE4A4(v30, v31);
      v59(v31);
      sub_240FC2D4C(v31);
      v62[0] = v1;
      v34 = v1[2];
      v33 = v1[3];
      if (v34 >= v33 >> 1)
      {
        sub_240FB8810(v33 > 1, v34 + 1, 1);
        v1 = v62[0];
      }

      v35 = *(v0 + 144);
      v1[2] = v34 + 1;
      sub_240FC7AB8(v35, v1 + v60 + v34 * v7);
      v30 += v7;
      --v28;
    }

    while (v28);
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
    v3 = v60;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_29:
  v36 = v1[2];
  v62[0] = v3 + v1;
  v62[1] = v36;
  result = sub_240FC85B8(v62);
  v38 = *(v0 + 40);
  if (v1[2] <= v38)
  {
    goto LABEL_32;
  }

  if (v38 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_240FC8418(v1, v3 + v1, 0, (2 * v38) | 1);
    v40 = v39;

    v1 = v40;
LABEL_32:
    v41 = *(v0 + 168);
    v43 = *(v0 + 152);
    v42 = *(v0 + 160);
    v45 = *(v0 + 136);
    v44 = *(v0 + 144);
    v47 = *(v0 + 104);
    v46 = *(v0 + 112);
    v48 = *(v0 + 80);
    v61 = *(v0 + 72);

    v49 = *(v0 + 8);

    return v49(v1);
  }

  return result;
}

uint64_t ATSpotlightDataRetriever.getRecentRecords(bundleId:nRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = dispatch_semaphore_create(0);
  v13 = sub_240FD459C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = v12;

  v15 = v12;
  sub_240FC285C(0, 0, v11, &unk_240FD5990, v14);

  sub_240FD45FC();

  v16 = *(v4 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);
}

uint64_t sub_240FC6B58(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ATSpotlightDataRecord();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_240FBE4A4(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_240FC2D4C(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_240FC7AB8(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FB8810(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_240FB8810(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_240FC7AB8(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_240FC2D4C(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t ATSpotlightDataRetriever.init()()
{
  v1 = v0;
  v2 = sub_240FD422C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD421C();
  sub_240FD41AC();
  (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t ATSpotlightDataRetriever.deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);

  return v0;
}

uint64_t sub_240FC6EF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v20 = sub_240FCB40C;
  v21 = v11;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_240FCB484;
  v19 = &block_descriptor_1;
  v12 = _Block_copy(&v16);

  [a3 setFoundItemsHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v10;
  v20 = sub_240FCB470;
  v21 = v13;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_240FCB508;
  v19 = &block_descriptor_26;
  v14 = _Block_copy(&v16);

  [a3 setCompletionHandler_];
  _Block_release(v14);
  [a3 start];
}

size_t sub_240FC70F4(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ATSpotlightDataRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24 = a3;
    v27 = MEMORY[0x277D84F90];
    result = sub_240FB8810(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v23[1] = a2;
      v16 = 0;
      v14 = v27;
      v17 = a1;
      v25 = a1 & 0xFFFFFFFFFFFFFF8;
      v26 = a1 & 0xC000000000000001;
      a3 = v24;
      v18 = a1;
      a1 = v13;
      while (1)
      {
        if (v26)
        {
          v19 = MEMORY[0x245CD66B0](v16, v17);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_16:
            __break(1u);
LABEL_17:
            v13 = sub_240FD476C();
            goto LABEL_3;
          }

          if (v16 >= *(v25 + 16))
          {
            goto LABEL_16;
          }

          v19 = *(v17 + 8 * v16 + 32);
        }

        v20 = v19;

        ATSpotlightDataRecord.init(item:bundleID:)(v20, a3, a4, v12);
        v27 = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        a2 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          sub_240FB8810(v21 > 1, v22 + 1, 1);
          a3 = v24;
          v14 = v27;
        }

        ++v16;
        *(v14 + 16) = a2;
        sub_240FC7AB8(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22);
        v17 = v18;
        if (a1 == v16)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    swift_beginAccess();
    sub_240FBDB98(v14);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_240FC7330(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = sub_240FD443C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v33 - v14;
  if (a1)
  {
    sub_240FD442C();
    v16 = a1;
    v17 = sub_240FD441C();
    v18 = sub_240FD45DC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33[1] = a3;
      v20 = a2;
      v21 = v19;
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_240FD482C();
      v25 = sub_240FC7E70(v23, v24, &v34);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_240FB1000, v17, v18, "Failed to fetch items with error %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x245CD6DB0](v22, -1, -1);
      v26 = v21;
      a2 = v20;
      MEMORY[0x245CD6DB0](v26, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    return a2(0);
  }

  else
  {
    sub_240FD442C();

    v28 = sub_240FD441C();
    v29 = sub_240FD45CC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      swift_beginAccess();
      *(v30 + 4) = *(*(a4 + 16) + 16);

      _os_log_impl(&dword_240FB1000, v28, v29, "Fetched %ld items from Spotlight", v30, 0xCu);
      MEMORY[0x245CD6DB0](v30, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v13, v8);
    swift_beginAccess();
    v31 = *(a4 + 16);

    a2(v32);
  }
}

id sub_240FC7658(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x245CD64D0]();
  if (a4)
  {
    v8 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      MEMORY[0x245CD64D0](a3, a4);
      v9 = 539371040;
      v10 = 0xE400000000000000;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    MEMORY[0x245CD64D0](v9, v10);
  }

  type metadata accessor for ATSpolightAttributes();
  swift_initStackObject();
  sub_240FBD9D8();
  sub_240FBD410(a1, a2);

  v11 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v12 = sub_240FD448C();

  v13 = sub_240FD452C();

  v14 = [v11 initWithQueryString:v12 attributes:v13];

  return v14;
}

uint64_t ATSpotlightDataRetriever.__allocating_init()()
{
  v1 = sub_240FD422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  sub_240FD421C();
  sub_240FD41AC();
  (*(v2 + 8))(v5, v1);
  *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v8;
}

uint64_t sub_240FC78E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_240FC6EF8(a3, a4, a5, sub_240FCB318, v15);
}

uint64_t sub_240FC7A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240FC7AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATSpotlightDataRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FC7B1C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90);
  return sub_240FD457C();
}

uint64_t sub_240FC7B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_240FC7C3C;

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(a5, a6, a7, 0, 0);
}

uint64_t sub_240FC7C3C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_240FC7D3C, 0, 0);
}

uint64_t sub_240FC7D3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = v0[5];

  sub_240FD460C();
  v4 = v0[1];

  return v4();
}

uint64_t ATSpotlightDataRetriever.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

_BYTE **sub_240FC7E60(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_240FC7E70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_240FC7F3C(v11, 0, 0, 1, a1, a2);
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
    sub_240FB9F6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_240FC7F3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_240FC8048(a5, a6);
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
    result = sub_240FD46EC();
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

uint64_t sub_240FC8048(uint64_t a1, unint64_t a2)
{
  v4 = sub_240FC8094(a1, a2);
  sub_240FC81C4(&unk_2852D7E10);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_240FC8094(uint64_t a1, unint64_t a2)
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

  v6 = sub_240FC82B0(v5, 0);
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

  result = sub_240FD46EC();
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
        v10 = sub_240FD450C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_240FC82B0(v10, 0);
        result = sub_240FD46AC();
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

uint64_t sub_240FC81C4(uint64_t result)
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

  result = sub_240FC8324(result, v12, 1, v3);
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

void *sub_240FC82B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8C0, &qword_240FD5C98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_240FC8324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8C0, &qword_240FD5C98);
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

void sub_240FC8418(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C8, &unk_240FD5C80);
      v7 = *(type metadata accessor for ATSpotlightDataRecord() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for ATSpotlightDataRecord() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_240FC85B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_240FD47CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ATSpotlightDataRecord();
        v6 = sub_240FD455C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ATSpotlightDataRecord() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_240FC9104(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_240FC86E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_240FC86E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v103 = &v92[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v92[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v92[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v113 = &v92[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v92[-v19];
  MEMORY[0x28223BE20](v18);
  v108 = &v92[-v21];
  v22 = sub_240FD422C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v102 = &v92[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v109 = &v92[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v92[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v92[-v33];
  v35 = MEMORY[0x28223BE20](v32);
  v99 = &v92[-v36];
  MEMORY[0x28223BE20](v35);
  v104 = &v92[-v37];
  v38 = type metadata accessor for ATSpotlightDataRecord();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v112 = &v92[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v121 = &v92[-v43];
  result = MEMORY[0x28223BE20](v42);
  v94 = a2;
  if (a3 != a2)
  {
    v48 = &v92[-v46];
    v49 = *a4;
    v50 = *(v45 + 72);
    v122 = (v23 + 48);
    v115 = (v23 + 8);
    v116 = (v23 + 16);
    v117 = (v23 + 32);
    v51 = v49 + v50 * (a3 - 1);
    v110 = -v50;
    v111 = v49;
    v52 = a1 - a3;
    v93 = v50;
    v53 = v49 + v50 * a3;
    v106 = v47;
    v107 = v31;
    v120 = &v92[-v46];
    v100 = v20;
    v119 = v34;
LABEL_5:
    v98 = a3;
    v95 = v53;
    v96 = v52;
    v97 = v51;
    v54 = v47;
    v55 = v31;
    v56 = v52;
    while (1)
    {
      sub_240FBE4A4(v53, v48);
      v57 = v121;
      sub_240FBE4A4(v51, v121);
      v58 = *v57;
      v118 = v56;
      if (v58 == 5)
      {
        v59 = &v57[v54[16]];
        v60 = v108;
        sub_240FBA9F4(v59, v108);
        v61 = *v122;
        if ((*v122)(v60, 1, v22) != 1)
        {
          v62 = v100;
          v101 = *v117;
          v101(v104, v108, v22);
          sub_240FBA9F4(&v48[v54[16]], v62);
          if (v61(v62, 1, v22) != 1)
          {
            v85 = v104;
            v86 = v99;
            v101(v99, v62, v22);
            v77 = sub_240FD41DC();
            v87 = *v115;
            v88 = v86;
            v75 = v118;
            (*v115)(v88, v22);
            v89 = v106;
            v87(v85, v22);
            v54 = v89;
            v55 = v107;
            goto LABEL_31;
          }

          (*v115)(v104, v22);
          v60 = v62;
          v54 = v106;
          v55 = v107;
        }

        sub_240FC7A50(v60);
        v57 = v121;
      }

      v63 = &v57[v54[9]];
      v64 = v57;
      v65 = v113;
      sub_240FBA9F4(v63, v113);
      v66 = *v122;
      if ((*v122)(v65, 1, v22) == 1)
      {
        (*v116)(v119, &v64[v54[7]], v22);
        if (v66(v65, 1, v22) != 1)
        {
          sub_240FC7A50(v113);
        }
      }

      else
      {
        (*v117)(v119, v65, v22);
      }

      v67 = v120;
      v68 = v114;
      sub_240FBA9F4(&v120[v54[9]], v114);
      if (v66(v68, 1, v22) == 1)
      {
        (*v116)(v55, &v67[v54[7]], v22);
        v69 = v66(v68, 1, v22);
        v70 = v119;
        if (v69 != 1)
        {
          sub_240FC7A50(v114);
        }
      }

      else
      {
        (*v117)(v55, v68, v22);
        v70 = v119;
      }

      sub_240FCB23C(&unk_27E51E6A0, MEMORY[0x277CC9578]);
      if (sub_240FD447C())
      {
        v71 = v121;
        v72 = v105;
        sub_240FBA9F4(&v121[v54[8]], v105);
        if (v66(v72, 1, v22) == 1)
        {
          (*v116)(v109, &v71[v54[7]], v22);
          v73 = v66(v72, 1, v22);
          v74 = v117;
          v75 = v118;
          v76 = v103;
          if (v73 != 1)
          {
            sub_240FC7A50(v105);
          }
        }

        else
        {
          v79 = v72;
          v74 = v117;
          (*v117)(v109, v79, v22);
          v75 = v118;
          v76 = v103;
        }

        v80 = v120;
        sub_240FBA9F4(&v120[v54[8]], v76);
        if (v66(v76, 1, v22) == 1)
        {
          v81 = v102;
          (*v116)(v102, &v80[v54[7]], v22);
          if (v66(v76, 1, v22) != 1)
          {
            sub_240FC7A50(v76);
          }
        }

        else
        {
          v82 = *v74;
          v81 = v102;
          v82(v102, v76, v22);
        }

        v83 = v109;
        v77 = sub_240FD41DC();
        v84 = *v115;
        (*v115)(v81, v22);
        v84(v83, v22);
        v55 = v107;
        v84(v107, v22);
        v84(v119, v22);
        v54 = v106;
      }

      else
      {
        v77 = sub_240FD41DC();
        v78 = *v115;
        (*v115)(v55, v22);
        v78(v70, v22);
        v75 = v118;
      }

LABEL_31:
      sub_240FC2D4C(v121);
      v48 = v120;
      result = sub_240FC2D4C(v120);
      if ((v77 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v111)
      {
        __break(1u);
        return result;
      }

      v90 = v112;
      sub_240FC7AB8(v53, v112);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_240FC7AB8(v90, v51);
      v51 += v110;
      v53 += v110;
      v91 = __CFADD__(v75, 1);
      v56 = v75 + 1;
      if (v91)
      {
LABEL_4:
        v31 = v55;
        v47 = v54;
        a3 = v98 + 1;
        v51 = v97 + v93;
        v52 = v96 - 1;
        v53 = v95 + v93;
        if (v98 + 1 == v94)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_240FC9104(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v255 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v284 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v285 = &v249 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v295 = &v249 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v249 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v249 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v286 = &v249 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v258 = &v249 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v264 = &v249 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v267 = &v249 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v272 = &v249 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v249 - v31;
  MEMORY[0x28223BE20](v30);
  v265 = &v249 - v33;
  v303 = sub_240FD422C();
  v34 = *(v303 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v303);
  v283 = &v249 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v287 = &v249 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v249 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v301 = &v249 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v271 = &v249 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v249 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v257 = &v249 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v266 = &v249 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v274 = &v249 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v249 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v253 = &v249 - v60;
  MEMORY[0x28223BE20](v59);
  v261 = &v249 - v61;
  v292 = type metadata accessor for ATSpotlightDataRecord();
  v273 = *(v292 - 8);
  v62 = *(v273 + 64);
  v63 = MEMORY[0x28223BE20](v292);
  v262 = &v249 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v290 = &v249 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v299 = &v249 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v297 = &v249 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v281 = &v249 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v282 = &v249 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v251 = &v249 - v76;
  result = MEMORY[0x28223BE20](v75);
  v250 = &v249 - v78;
  v275 = a3;
  if (*(a3 + 8) < 1)
  {
    v80 = MEMORY[0x277D84F90];
LABEL_150:
    a3 = *v255;
    if (!*v255)
    {
      goto LABEL_189;
    }

    v137 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v276;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v137;
LABEL_153:
      v304 = result;
      v137 = *(result + 16);
      if (v137 >= 2)
      {
        while (*v275)
        {
          v245 = *(result + 16 * v137);
          v246 = result;
          v247 = *(result + 16 * (v137 - 1) + 40);
          sub_240FCAA6C(*v275 + *(v273 + 72) * v245, *v275 + *(v273 + 72) * *(result + 16 * (v137 - 1) + 32), *v275 + *(v273 + 72) * v247, a3);
          if (v82)
          {
          }

          if (v247 < v245)
          {
            goto LABEL_176;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v246 = sub_240FCAF80(v246);
          }

          if (v137 - 2 >= *(v246 + 2))
          {
            goto LABEL_177;
          }

          v248 = &v246[16 * v137];
          *v248 = v245;
          *(v248 + 1) = v247;
          v304 = v246;
          sub_240FCAEF4(v137 - 1);
          result = v304;
          v137 = *(v304 + 16);
          if (v137 <= 1)
          {
          }
        }

        goto LABEL_187;
      }
    }

LABEL_183:
    result = sub_240FCAF80(v137);
    goto LABEL_153;
  }

  v79 = *(a3 + 8);
  v302 = (v34 + 48);
  v298 = (v34 + 32);
  v293 = (v34 + 8);
  v296 = (v34 + 16);
  v80 = MEMORY[0x277D84F90];
  v254 = a4;
  v291 = v16;
  v278 = v19;
  v256 = v32;
  v81 = 0;
  v294 = v42;
  v277 = v49;
  v82 = v274;
  v280 = v58;
  v83 = v292;
  v84 = v297;
LABEL_4:
  v85 = v81;
  v86 = v81 + 1;
  v263 = v80;
  if (v86 >= v79)
  {
    v136 = v86;
    v137 = v295;
    goto LABEL_51;
  }

  v279 = v79;
  v87 = *v275;
  v88 = *(v273 + 72);
  v89 = *v275 + v88 * v86;
  v90 = v250;
  sub_240FBE4A4(v89, v250);
  a3 = v251;
  sub_240FBE4A4(v87 + v88 * v85, v251);
  LODWORD(v288) = _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(a3, v90);
  sub_240FC2D4C(a3);
  result = sub_240FC2D4C(v90);
  v252 = v85;
  v91 = v85 + 2;
  v289 = v88;
  v92 = v87 + v88 * (v85 + 2);
  do
  {
    if (v279 == v91)
    {
      v137 = v295;
      v136 = v279;
      goto LABEL_37;
    }

    sub_240FBE4A4(v92, v282);
    v300 = v89;
    v96 = v281;
    sub_240FBE4A4(v89, v281);
    if (*v96 == 5)
    {
      v97 = v265;
      sub_240FBA9F4(&v96[v83[16]], v265);
      v98 = *v302;
      if ((*v302)(v97, 1, v303) != 1)
      {
        v99 = *v298;
        v100 = v83;
        v101 = v261;
        v102 = v303;
        (*v298)(v261, v265, v303);
        v103 = v100;
        v104 = v282 + v100[16];
        v105 = v256;
        sub_240FBA9F4(v104, v256);
        if (v98(v105, 1, v102) != 1)
        {
          v134 = v253;
          v132 = v303;
          v99(v253, v105, v303);
          v93 = sub_240FD41DC();
          a3 = v293;
          v131 = *v293;
          v135 = v134;
          v83 = v292;
          (*v293)(v135, v132);
          v133 = &v293;
          goto LABEL_33;
        }

        (*v293)(v101, v303);
        v97 = v105;
        v83 = v103;
      }

      sub_240FC7A50(v97);
      v96 = v281;
    }

    v106 = &v96[v83[9]];
    v107 = v96;
    v108 = v272;
    sub_240FBA9F4(v106, v272);
    v109 = *v302;
    if ((*v302)(v108, 1, v303) == 1)
    {
      v110 = v303;
      (*v296)(v280, &v107[v83[7]], v303);
      v111 = v109(v108, 1, v110);
      v112 = v267;
      if (v111 != 1)
      {
        sub_240FC7A50(v272);
      }
    }

    else
    {
      (*v298)(v280, v108, v303);
      v112 = v267;
    }

    v113 = v282;
    sub_240FBA9F4(v282 + v83[9], v112);
    if (v109(v112, 1, v303) == 1)
    {
      v114 = v83;
      v115 = v113 + v83[7];
      v116 = v274;
      v117 = v303;
      (*v296)(v274, v115, v303);
      if (v109(v112, 1, v117) != 1)
      {
        sub_240FC7A50(v112);
      }
    }

    else
    {
      v114 = v83;
      v116 = v274;
      (*v298)(v274, v112, v303);
    }

    sub_240FCB23C(&unk_27E51E6A0, MEMORY[0x277CC9578]);
    v118 = v280;
    if ((sub_240FD447C() & 1) == 0)
    {
      v93 = sub_240FD41DC();
      a3 = v293;
      v94 = *v293;
      v95 = v303;
      (*v293)(v116, v303);
      v94(v118, v95);
      v83 = v114;
      goto LABEL_7;
    }

    v83 = v114;
    v119 = v281;
    v120 = v264;
    sub_240FBA9F4(&v281[v114[8]], v264);
    if (v109(v120, 1, v303) == 1)
    {
      v121 = v119 + v114[7];
      v122 = v303;
      (*v296)(v266, v121, v303);
      v123 = v109(v120, 1, v122);
      v124 = v258;
      if (v123 != 1)
      {
        sub_240FC7A50(v264);
      }
    }

    else
    {
      (*v298)(v266, v120, v303);
      v124 = v258;
    }

    v125 = v282;
    sub_240FBA9F4(v282 + v114[8], v124);
    if (v109(v124, 1, v303) == 1)
    {
      v126 = v125 + v114[7];
      v127 = v257;
      v128 = v303;
      (*v296)(v257, v126, v303);
      if (v109(v124, 1, v128) != 1)
      {
        sub_240FC7A50(v124);
      }
    }

    else
    {
      v127 = v257;
      (*v298)(v257, v124, v303);
    }

    v129 = v266;
    v93 = sub_240FD41DC();
    v130 = v127;
    a3 = v293;
    v131 = *v293;
    v132 = v303;
    (*v293)(v130, v303);
    v131(v129, v132);
    v131(v274, v132);
    v133 = &v305;
LABEL_33:
    v131(*(v133 - 32), v132);
LABEL_7:
    v84 = v297;
    sub_240FC2D4C(v281);
    result = sub_240FC2D4C(v282);
    ++v91;
    v92 += v289;
    v89 = v300 + v289;
  }

  while (((v288 ^ v93) & 1) == 0);
  v136 = v91 - 1;
  v137 = v295;
LABEL_37:
  a4 = v254;
  v82 = v274;
  v85 = v252;
  if (v288)
  {
    if (v136 < v252)
    {
      goto LABEL_180;
    }

    if (v252 < v136)
    {
      v138 = v289 * (v136 - 1);
      v139 = v136 * v289;
      v140 = v136;
      v141 = v136;
      v142 = v252;
      v143 = v252 * v289;
      do
      {
        if (v142 != --v141)
        {
          v144 = *v275;
          if (!*v275)
          {
            goto LABEL_186;
          }

          a3 = v144 + v143;
          sub_240FC7AB8(v144 + v143, v262);
          if (v143 < v138 || a3 >= (v144 + v139))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v143 != v138)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_240FC7AB8(v262, v144 + v138);
          v137 = v295;
        }

        ++v142;
        v138 -= v289;
        v139 -= v289;
        v143 += v289;
      }

      while (v142 < v141);
      a4 = v254;
      v82 = v274;
      v136 = v140;
      v85 = v252;
      v84 = v297;
    }
  }

LABEL_51:
  v145 = v275[1];
  if (v136 >= v145)
  {
    goto LABEL_60;
  }

  if (__OFSUB__(v136, v85))
  {
    goto LABEL_179;
  }

  if (v136 - v85 >= a4)
  {
LABEL_60:
    v148 = v136;
    if (v136 < v85)
    {
      goto LABEL_178;
    }

    goto LABEL_61;
  }

  if (__OFADD__(v85, a4))
  {
    goto LABEL_181;
  }

  if (v85 + a4 >= v145)
  {
    v146 = v275[1];
  }

  else
  {
    v146 = v85 + a4;
  }

  v147 = v299;
  if (v146 < v85)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v136 == v146)
  {
    goto LABEL_60;
  }

  v198 = *v275;
  v199 = *(v273 + 72);
  v200 = *v275 + v199 * (v136 - 1);
  v288 = -v199;
  v252 = v85;
  v201 = v85 - v136;
  v289 = v198;
  v259 = v199;
  v202 = v198 + v136 * v199;
  v260 = v146;
  while (2)
  {
    v279 = v136;
    v268 = v202;
    v269 = v201;
    a3 = v201;
    v270 = v200;
    v203 = v200;
LABEL_115:
    v300 = a3;
    sub_240FBE4A4(v202, v84);
    sub_240FBE4A4(v203, v147);
    if (*v147 != 5)
    {
      goto LABEL_120;
    }

    v204 = &v147[v83[16]];
    v205 = v286;
    sub_240FBA9F4(v204, v286);
    v206 = *v302;
    if ((*v302)(v205, 1, v303) == 1)
    {
      goto LABEL_119;
    }

    v207 = v303;
    v208 = v84;
    v209 = *v298;
    a3 = v277;
    (*v298)(v277, v286, v303);
    v210 = v208 + v83[16];
    v205 = v278;
    sub_240FBA9F4(v210, v278);
    if (v206(v205, 1, v207) == 1)
    {
      (*v293)(a3, v207);
LABEL_119:
      sub_240FC7A50(v205);
      v137 = v295;
      v147 = v299;
LABEL_120:
      v211 = &v147[v83[9]];
      v212 = v147;
      v213 = v291;
      sub_240FBA9F4(v211, v291);
      v214 = *v302;
      if ((*v302)(v213, 1, v303) == 1)
      {
        v215 = v83;
        v216 = &v212[v83[7]];
        v217 = v303;
        (*v296)(v301, v216, v303);
        if (v214(v213, 1, v217) != 1)
        {
          sub_240FC7A50(v291);
        }
      }

      else
      {
        v215 = v83;
        (*v298)(v301, v213, v303);
      }

      v218 = v215;
      v219 = v215[9];
      v84 = v297;
      sub_240FBA9F4(&v297[v219], v137);
      v220 = v214(v137, 1, v303);
      v221 = v294;
      if (v220 == 1)
      {
        v222 = v303;
        (*v296)(v294, v84 + v218[7], v303);
        v223 = v214(v137, 1, v222);
        v224 = v301;
        if (v223 != 1)
        {
          sub_240FC7A50(v137);
        }
      }

      else
      {
        (*v298)(v294, v137, v303);
        v224 = v301;
      }

      sub_240FCB23C(&unk_27E51E6A0, MEMORY[0x277CC9578]);
      if (sub_240FD447C())
      {
        v225 = v299;
        v226 = v285;
        sub_240FBA9F4(&v299[v218[8]], v285);
        if (v214(v226, 1, v303) == 1)
        {
          v227 = v225 + v218[7];
          v228 = v303;
          (*v296)(v287, v227, v303);
          v229 = v214(v226, 1, v228);
          v230 = v284;
          if (v229 != 1)
          {
            sub_240FC7A50(v285);
          }
        }

        else
        {
          (*v298)(v287, v226, v303);
          v230 = v284;
        }

        v84 = v297;
        sub_240FBA9F4(&v297[v218[8]], v230);
        if (v214(v230, 1, v303) == 1)
        {
          v234 = v283;
          v235 = v303;
          (*v296)(v283, v84 + v218[7], v303);
          if (v214(v230, 1, v235) != 1)
          {
            sub_240FC7A50(v230);
          }
        }

        else
        {
          v234 = v283;
          (*v298)(v283, v230, v303);
        }

        v236 = v287;
        v231 = sub_240FD41DC();
        a3 = v293;
        v237 = *v293;
        v238 = v303;
        (*v293)(v234, v303);
        v237(v236, v238);
        v237(v294, v238);
        v237(v301, v238);
      }

      else
      {
        v231 = sub_240FD41DC();
        v232 = *v293;
        v233 = v221;
        a3 = v303;
        (*v293)(v233, v303);
        v232(v224, a3);
      }
    }

    else
    {
      v239 = v271;
      v209(v271, v205, v207);
      v231 = sub_240FD41DC();
      v240 = *v293;
      (*v293)(v239, v207);
      v240(a3, v207);
      v84 = v297;
    }

    v147 = v299;
    sub_240FC2D4C(v299);
    result = sub_240FC2D4C(v84);
    if ((v231 & 1) == 0)
    {
      v137 = v295;
      v83 = v292;
LABEL_113:
      v136 = v279 + 1;
      v200 = v270 + v259;
      v201 = v269 - 1;
      v202 = v268 + v259;
      v148 = v260;
      if (v279 + 1 != v260)
      {
        continue;
      }

      v82 = v274;
      v85 = v252;
      if (v260 < v252)
      {
        goto LABEL_178;
      }

LABEL_61:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v80 = v263;
      }

      else
      {
        result = sub_240FB65E0(0, *(v263 + 2) + 1, 1, v263);
        v80 = result;
      }

      v150 = *(v80 + 2);
      v149 = *(v80 + 3);
      v137 = v150 + 1;
      if (v150 >= v149 >> 1)
      {
        result = sub_240FB65E0((v149 > 1), v150 + 1, 1, v80);
        v80 = result;
      }

      *(v80 + 2) = v137;
      v151 = &v80[16 * v150];
      *(v151 + 4) = v85;
      *(v151 + 5) = v148;
      v152 = *v255;
      if (!*v255)
      {
        goto LABEL_188;
      }

      a3 = v148;
      if (v150)
      {
        while (2)
        {
          v153 = v137 - 1;
          if (v137 >= 4)
          {
            v158 = &v80[16 * v137 + 32];
            v159 = *(v158 - 64);
            v160 = *(v158 - 56);
            v164 = __OFSUB__(v160, v159);
            v161 = v160 - v159;
            if (v164)
            {
              goto LABEL_165;
            }

            v163 = *(v158 - 48);
            v162 = *(v158 - 40);
            v164 = __OFSUB__(v162, v163);
            v156 = v162 - v163;
            v157 = v164;
            if (v164)
            {
              goto LABEL_166;
            }

            v165 = &v80[16 * v137];
            v167 = *v165;
            v166 = *(v165 + 1);
            v164 = __OFSUB__(v166, v167);
            v168 = v166 - v167;
            if (v164)
            {
              goto LABEL_168;
            }

            v164 = __OFADD__(v156, v168);
            v169 = v156 + v168;
            if (v164)
            {
              goto LABEL_171;
            }

            if (v169 >= v161)
            {
              v187 = &v80[16 * v153 + 32];
              v189 = *v187;
              v188 = *(v187 + 1);
              v164 = __OFSUB__(v188, v189);
              v190 = v188 - v189;
              if (v164)
              {
                goto LABEL_175;
              }

              if (v156 < v190)
              {
                v153 = v137 - 2;
              }
            }

            else
            {
LABEL_80:
              if (v157)
              {
                goto LABEL_167;
              }

              v170 = &v80[16 * v137];
              v172 = *v170;
              v171 = *(v170 + 1);
              v173 = __OFSUB__(v171, v172);
              v174 = v171 - v172;
              v175 = v173;
              if (v173)
              {
                goto LABEL_170;
              }

              v176 = &v80[16 * v153 + 32];
              v178 = *v176;
              v177 = *(v176 + 1);
              v164 = __OFSUB__(v177, v178);
              v179 = v177 - v178;
              if (v164)
              {
                goto LABEL_173;
              }

              if (__OFADD__(v174, v179))
              {
                goto LABEL_174;
              }

              if (v174 + v179 < v156)
              {
                goto LABEL_94;
              }

              if (v156 < v179)
              {
                v153 = v137 - 2;
              }
            }
          }

          else
          {
            if (v137 == 3)
            {
              v154 = *(v80 + 4);
              v155 = *(v80 + 5);
              v164 = __OFSUB__(v155, v154);
              v156 = v155 - v154;
              v157 = v164;
              goto LABEL_80;
            }

            v180 = &v80[16 * v137];
            v182 = *v180;
            v181 = *(v180 + 1);
            v164 = __OFSUB__(v181, v182);
            v174 = v181 - v182;
            v175 = v164;
LABEL_94:
            if (v175)
            {
              goto LABEL_169;
            }

            v183 = &v80[16 * v153];
            v185 = *(v183 + 4);
            v184 = *(v183 + 5);
            v164 = __OFSUB__(v184, v185);
            v186 = v184 - v185;
            if (v164)
            {
              goto LABEL_172;
            }

            if (v186 < v174)
            {
              break;
            }
          }

          v191 = v153 - 1;
          if (v153 - 1 >= v137)
          {
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
            goto LABEL_182;
          }

          if (!*v275)
          {
            goto LABEL_185;
          }

          v192 = v84;
          v193 = v80;
          v137 = *&v80[16 * v191 + 32];
          v194 = *&v80[16 * v153 + 40];
          v195 = v276;
          sub_240FCAA6C(*v275 + *(v273 + 72) * v137, *v275 + *(v273 + 72) * *&v80[16 * v153 + 32], *v275 + *(v273 + 72) * v194, v152);
          v276 = v195;
          if (v195)
          {
          }

          if (v194 < v137)
          {
            goto LABEL_163;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v196 = v193;
          }

          else
          {
            v196 = sub_240FCAF80(v193);
          }

          v83 = v292;
          if (v191 >= *(v196 + 2))
          {
            goto LABEL_164;
          }

          v197 = &v196[16 * v191];
          *(v197 + 4) = v137;
          *(v197 + 5) = v194;
          v304 = v196;
          result = sub_240FCAEF4(v153);
          v80 = v304;
          v137 = *(v304 + 16);
          v84 = v192;
          if (v137 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v79 = v275[1];
      v81 = a3;
      a4 = v254;
      if (a3 >= v79)
      {
        goto LABEL_150;
      }

      goto LABEL_4;
    }

    break;
  }

  v83 = v292;
  v241 = v300;
  if (v289)
  {
    v242 = v290;
    sub_240FC7AB8(v202, v290);
    swift_arrayInitWithTakeFrontToBack();
    sub_240FC7AB8(v242, v203);
    v203 += v288;
    v202 += v288;
    v243 = __CFADD__(v241, 1);
    a3 = v241 + 1;
    v137 = v295;
    if (v243)
    {
      goto LABEL_113;
    }

    goto LABEL_115;
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
  return result;
}

uint64_t sub_240FCAA6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for ATSpotlightDataRecord();
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v44 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v48 = a1;
  v47 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v24 = a4 + v19;
    if (v19 < 1)
    {
      v27 = a4 + v19;
    }

    else
    {
      v25 = -v15;
      v26 = a4 + v19;
      v27 = v24;
      v41 = v25;
      v42 = a4;
      do
      {
        v39[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v45;
          if (v28 <= a1)
          {
            v48 = v28;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v27;
          v45 += v25;
          v32 = v26 + v25;
          sub_240FBE4A4(v32, v13);
          v33 = v29;
          v34 = v29;
          v35 = v13;
          v36 = v44;
          sub_240FBE4A4(v34, v44);
          v37 = _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(v36, v35);
          v38 = v36;
          v13 = v35;
          sub_240FC2D4C(v38);
          sub_240FC2D4C(v35);
          if (v37)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v45 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v42;
          v25 = v41;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v45 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v40;
          v25 = v41;
        }

        else
        {
          v27 = v40;
          v25 = v41;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v46 = a4 + v18;
    if (v18 >= 1 && a2 < v45)
    {
      do
      {
        sub_240FBE4A4(a2, v13);
        v22 = v44;
        sub_240FBE4A4(a4, v44);
        v23 = _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(v22, v13);
        sub_240FC2D4C(v22);
        sub_240FC2D4C(v13);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v48 = a1;
      }

      while (a4 < v20 && a2 < v45);
    }
  }

LABEL_59:
  sub_240FCAF94(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_240FCAEF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_240FCAF80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_240FCAF94(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ATSpotlightDataRecord();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_240FCB0A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t type metadata accessor for ATSpotlightDataRetriever()
{
  result = qword_27E51E8A8;
  if (!qword_27E51E8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240FCB18C()
{
  result = sub_240FD422C();
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

uint64_t sub_240FCB23C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240FCB284()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240FCB318()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8B8, &qword_240FD5C90) - 8) + 80);

  return sub_240FC7B1C();
}

uint64_t sub_240FCB394()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240FCB3CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240FCB430()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240FCB484(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_240FC06B8(0, &qword_27E51E8C8, 0x277CC34B0);
  v3 = sub_240FD453C();

  v2(v3);
}

void sub_240FCB508(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_240FCB588(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v4 = a1;
    v5 = a1 >> 62;
    if (!(a1 >> 62))
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if (result >= v8)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  v29 = sub_240FD476C();
  result = sub_240FD476C();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v29 >= a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = v29;
    }

    if (v29 < 0)
    {
      v30 = a2;
    }

    if (a2)
    {
      v8 = v30;
    }

    else
    {
      v8 = 0;
    }

    result = sub_240FD476C();
    if (result >= v8)
    {
LABEL_10:
      if ((v4 & 0xC000000000000001) != 0 && v8)
      {
        sub_240FC06B8(0, &qword_27E51E8C8, 0x277CC34B0);

        v9 = 0;
        do
        {
          v10 = v9 + 1;
          sub_240FD46CC();
          v9 = v10;
        }

        while (v8 != v10);
        if (!v5)
        {
LABEL_15:
          v11 = 0;
          result = v4 & 0xFFFFFFFFFFFFFF8;
          v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
          v14 = v8;
          v13 = v8 <= 0;
          if (v8)
          {
            goto LABEL_16;
          }

          goto LABEL_29;
        }
      }

      else
      {

        if (!v5)
        {
          goto LABEL_15;
        }
      }

      result = sub_240FD477C();
      v14 = (v27 >> 1) - v11;
      v13 = (v27 >> 1) <= v11;
      if (v27 >> 1 != v11)
      {
LABEL_16:
        if (!v13)
        {
          v15 = (v12 + 8 * v11);
          do
          {
            v16 = *v15;
            v17 = [v16 attributeSet];
            v18 = [v17 title];

            if (v18)
            {
              v19 = sub_240FD449C();
              v21 = v20;
            }

            else
            {
              v19 = 0;
              v21 = 0xE000000000000000;
            }

            swift_beginAccess();
            v22 = *(v3 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 16) = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v22 = sub_240FB6B4C(0, *(v22 + 2) + 1, 1, v22);
              *(v3 + 16) = v22;
            }

            v25 = *(v22 + 2);
            v24 = *(v22 + 3);
            if (v25 >= v24 >> 1)
            {
              v22 = sub_240FB6B4C((v24 > 1), v25 + 1, 1, v22);
            }

            *(v22 + 2) = v25 + 1;
            v26 = &v22[16 * v25];
            *(v26 + 4) = v19;
            *(v26 + 5) = v21;
            *(v3 + 16) = v22;
            swift_endAccess();

            ++v15;
            --v14;
          }

          while (v14);
          return swift_unknownObjectRelease();
        }

        goto LABEL_44;
      }

LABEL_29:

      return swift_unknownObjectRelease();
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240FCB888(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v4 = a1;
    v3 = a1 >> 62;
    if (!(a1 >> 62))
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if (result >= v8)
      {
        goto LABEL_10;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  v43 = sub_240FD476C();
  result = sub_240FD476C();
  if (result < 0)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  if (v43 >= a2)
  {
    v44 = a2;
  }

  else
  {
    v44 = v43;
  }

  if (v43 < 0)
  {
    v44 = a2;
  }

  if (a2)
  {
    v8 = v44;
  }

  else
  {
    v8 = 0;
  }

  result = sub_240FD476C();
  if (result < v8)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((v4 & 0xC000000000000001) != 0 && v8)
  {
    sub_240FC06B8(0, &qword_27E51E8C8, 0x277CC34B0);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      sub_240FD46CC();
      v9 = v10;
    }

    while (v8 != v10);
    if (!v3)
    {
LABEL_15:
      v11 = 0;
      result = v4 & 0xFFFFFFFFFFFFFF8;
      v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
      v14 = v8;
      v13 = v8 <= 0;
      if (v8)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_15;
    }
  }

  result = sub_240FD477C();
  v14 = (v41 >> 1) - v11;
  v13 = (v41 >> 1) <= v11;
  if (v41 >> 1 != v11)
  {
LABEL_16:
    if (!v13)
    {
      v46 = *MEMORY[0x277CC3118];
      v15 = (v12 + 8 * v11);
      v45 = v5;
      do
      {
        v16 = *v15;
        v17 = [v16 attributeSet];
        v18 = [v17 authorEmailAddresses];

        if (v18)
        {
          v19 = sub_240FD453C();
        }

        else
        {
          v19 = MEMORY[0x277D84F90];
        }

        *&v48 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
        sub_240FC5268();
        v20 = sub_240FD444C();
        v22 = v21;

        v23 = [v16 attributeSet];
        v24 = [v23 recipientEmailAddresses];

        if (v24)
        {
          v25 = sub_240FD453C();
        }

        else
        {
          v25 = MEMORY[0x277D84F90];
        }

        *&v48 = v25;
        v26 = sub_240FD444C();
        v28 = v27;

        v29 = 0xE000000000000000;
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_240FD46BC();
        v50 = v48;
        MEMORY[0x245CD64D0](0x3A7463656A627553, 0xEA00000000005B20);
        v30 = [v16 attributeSet];
        v31 = [v30 subject];

        if (v31)
        {
          v32 = sub_240FD449C();
          v29 = v33;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x245CD64D0](v32, v29);

        MEMORY[0x245CD64D0](0x65646E6573202C5DLL, 0xED00005B203A7372);
        MEMORY[0x245CD64D0](v20, v22);

        MEMORY[0x245CD64D0](0xD000000000000010, 0x8000000240FD6A60);
        MEMORY[0x245CD64D0](v26, v28);

        MEMORY[0x245CD64D0](0x70696E73202C5D5DLL, 0xEE005B203A746570);
        v34 = [v16 attributeSet];
        v35 = [v34 attributeForKey_];

        if (v35)
        {
          sub_240FD464C();
          swift_unknownObjectRelease();
          sub_240FBE508(&v47, &v48);
        }

        else
        {
          v49 = MEMORY[0x277D837D0];
          *&v48 = 0;
          *(&v48 + 1) = 0xE000000000000000;
        }

        sub_240FD475C();
        __swift_destroy_boxed_opaque_existential_0(&v48);
        MEMORY[0x245CD64D0](93, 0xE100000000000000);
        v36 = v50;
        swift_beginAccess();
        v37 = *(v45 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v45 + 16) = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_240FB6B4C(0, *(v37 + 2) + 1, 1, v37);
          *(v45 + 16) = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_240FB6B4C((v39 > 1), v40 + 1, 1, v37);
        }

        *(v37 + 2) = v40 + 1;
        *&v37[16 * v40 + 32] = v36;
        *(v45 + 16) = v37;
        swift_endAccess();

        ++v15;
        --v14;
      }

      while (v14);
      return swift_unknownObjectRelease();
    }

    goto LABEL_53;
  }

LABEL_38:

  return swift_unknownObjectRelease();
}

uint64_t sub_240FCBE84(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

uint64_t sub_240FCBF6C(unint64_t a1, uint64_t a2)
{
  v4 = sub_240FD422C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v319 = &v277 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v314 = &v277 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v313 = &v277 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v312 = &v277 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v311 = &v277 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v310 = &v277 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v309 = &v277 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v308 = &v277 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v307 = &v277 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v306 = &v277 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v305 = &v277 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v277 - v31;
  MEMORY[0x28223BE20](v30);
  v304 = &v277 - v34;
  if (a1 >> 62)
  {
    v276 = v33;
    result = sub_240FD476C();
    v33 = v276;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v36 = 0;
    v299 = 0x8000000240FD6850;
    v298 = 0x8000000240FD6870;
    v297 = 0x8000000240FD6890;
    v296 = 0x8000000240FD68B0;
    v295 = 0x8000000240FD68D0;
    v294 = 0x8000000240FD68F0;
    v293 = "account identifier: [";
    v292 = "incoming SMS counts: [";
    v291 = "outgoing SMS counts: [";
    v290 = "incoming mail counts: [";
    v289 = "outgoing mail counts: [";
    v288 = 0x8000000240FD69B0;
    v287 = 0x8000000240FD69D0;
    v286 = 0x8000000240FD69F0;
    v285 = 0x8000000240FD6A10;
    v284 = *MEMORY[0x277CC3118];
    v320 = (v5 + 48);
    v321 = (v5 + 56);
    v317 = (v5 + 8);
    v318 = (v5 + 16);
    v283 = *MEMORY[0x277CC2C30];
    v282 = *MEMORY[0x277CC2E38];
    v281 = *MEMORY[0x277CC2C28];
    v280 = *MEMORY[0x277CC2E30];
    v279 = *MEMORY[0x277CC26B0];
    v278 = *MEMORY[0x277CC3218];
    v277 = v33 & 0xC000000000000001;
    v303 = a2;
    v302 = v33;
    v301 = v32;
    v300 = result;
    do
    {
      if (v277)
      {
        v37 = MEMORY[0x245CD66B0](v36);
      }

      else
      {
        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      strcpy(&v323, "title: [");
      BYTE9(v323) = 0;
      WORD5(v323) = 0;
      HIDWORD(v323) = -402653184;
      v39 = [v37 attributeSet];
      v40 = [v39 title];

      if (v40)
      {
        v41 = sub_240FD449C();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v41, v43);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v44 = v323;
      v45 = sub_240FB6B4C(0, 1, 1, MEMORY[0x277D84F90]);
      v47 = *(v45 + 2);
      v46 = *(v45 + 3);
      if (v47 >= v46 >> 1)
      {
        v45 = sub_240FB6B4C((v46 > 1), v47 + 1, 1, v45);
      }

      *(v45 + 2) = v47 + 1;
      *&v45[16 * v47 + 32] = v44;
      v48 = 0xE000000000000000;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      *&v323 = 0x2079616C70736964;
      *(&v323 + 1) = 0xEF5B203A656D616ELL;
      v49 = [v38 attributeSet];
      v50 = [v49 displayName];

      if (v50)
      {
        v51 = sub_240FD449C();
        v48 = v52;
      }

      else
      {
        v51 = 0;
      }

      MEMORY[0x245CD64D0](v51, v48);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v53 = v323;
      v55 = *(v45 + 2);
      v54 = *(v45 + 3);
      if (v55 >= v54 >> 1)
      {
        v45 = sub_240FB6B4C((v54 > 1), v55 + 1, 1, v45);
      }

      *(v45 + 2) = v55 + 1;
      *&v45[16 * v55 + 32] = v53;
      *&v325 = 0;
      *(&v325 + 1) = 0xE000000000000000;
      MEMORY[0x245CD64D0](0x3A74657070696E73, 0xEA00000000005B20);
      v56 = [v38 attributeSet];
      v57 = [v56 attributeForKey_];

      if (v57)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v322, &v323);
      }

      else
      {
        v324 = MEMORY[0x277D837D0];
        *&v323 = 0;
        *(&v323 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v323);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v58 = v325;
      v60 = *(v45 + 2);
      v59 = *(v45 + 3);
      if (v60 >= v59 >> 1)
      {
        v45 = sub_240FB6B4C((v59 > 1), v60 + 1, 1, v45);
      }

      *(v45 + 2) = v60 + 1;
      *&v45[16 * v60 + 32] = v58;
      strcpy(&v323, "due time: [");
      HIDWORD(v323) = -352321536;
      v61 = [v38 attributeSet];
      v62 = [v61 dueDate];

      v316 = v36;
      if (v62)
      {
        sub_240FD41FC();

        v63 = 0;
      }

      else
      {
        v63 = 1;
      }

      v64 = *v321;
      (*v321)(v32, v63, 1, v4);
      v65 = v304;
      sub_240FBCB00(v32, v304);
      v66 = *v320;
      if ((*v320)(v65, 1, v4))
      {
        sub_240FC7A50(v65);
        v67 = 0;
        v68 = 0xE000000000000000;
      }

      else
      {
        v69 = v319;
        (*v318)(v319, v65, v4);
        sub_240FC7A50(v65);
        v67 = sub_240FD420C();
        v68 = v70;
        (*v317)(v69, v4);
      }

      MEMORY[0x245CD64D0](v67, v68);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v71 = v323;
      v73 = *(v45 + 2);
      v72 = *(v45 + 3);
      if (v73 >= v72 >> 1)
      {
        v45 = sub_240FB6B4C((v72 > 1), v73 + 1, 1, v45);
      }

      *(v45 + 2) = v73 + 1;
      *&v45[16 * v73 + 32] = v71;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      *&v323 = 0xD000000000000012;
      *(&v323 + 1) = v299;
      v74 = [v38 attributeSet];
      v75 = [v74 completionDate];

      if (v75)
      {
        v76 = v306;
        sub_240FD41FC();

        v77 = 0;
      }

      else
      {
        v77 = 1;
        v76 = v306;
      }

      v64(v76, v77, 1, v4);
      v78 = v305;
      sub_240FBCB00(v76, v305);
      if (v66(v78, 1, v4))
      {
        sub_240FC7A50(v78);
        v79 = 0;
        v80 = 0xE000000000000000;
      }

      else
      {
        v81 = v319;
        (*v318)(v319, v78, v4);
        sub_240FC7A50(v78);
        v82 = sub_240FD420C();
        v80 = v83;
        (*v317)(v81, v4);
        v79 = v82;
      }

      MEMORY[0x245CD64D0](v79, v80);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v84 = v323;
      v86 = *(v45 + 2);
      v85 = *(v45 + 3);
      if (v86 >= v85 >> 1)
      {
        v45 = sub_240FB6B4C((v85 > 1), v86 + 1, 1, v45);
      }

      *(v45 + 2) = v86 + 1;
      *&v45[16 * v86 + 32] = v84;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      v315 = 0xD000000000000010;
      *&v323 = 0xD000000000000010;
      *(&v323 + 1) = v298;
      v87 = [v38 attributeSet];
      v88 = [v87 contentCreationDate];

      if (v88)
      {
        v89 = v308;
        sub_240FD41FC();

        v90 = 0;
      }

      else
      {
        v90 = 1;
        v89 = v308;
      }

      v64(v89, v90, 1, v4);
      v91 = v307;
      sub_240FBCB00(v89, v307);
      if (v66(v91, 1, v4))
      {
        sub_240FC7A50(v91);
        v92 = 0;
        v93 = 0xE000000000000000;
      }

      else
      {
        v94 = v319;
        (*v318)(v319, v91, v4);
        sub_240FC7A50(v91);
        v95 = sub_240FD420C();
        v93 = v96;
        (*v317)(v94, v4);
        v92 = v95;
      }

      MEMORY[0x245CD64D0](v92, v93);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v97 = v323;
      v99 = *(v45 + 2);
      v98 = *(v45 + 3);
      if (v99 >= v98 >> 1)
      {
        v45 = sub_240FB6B4C((v98 > 1), v99 + 1, 1, v45);
      }

      *(v45 + 2) = v99 + 1;
      *&v45[16 * v99 + 32] = v97;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      *&v323 = 0xD000000000000014;
      *(&v323 + 1) = v297;
      v100 = [v38 attributeSet];
      v101 = [v100 contentModificationDate];

      if (v101)
      {
        v102 = v310;
        sub_240FD41FC();

        v103 = 0;
      }

      else
      {
        v103 = 1;
        v102 = v310;
      }

      v64(v102, v103, 1, v4);
      v104 = v309;
      sub_240FBCB00(v102, v309);
      if (v66(v104, 1, v4))
      {
        sub_240FC7A50(v104);
        v105 = 0;
        v106 = 0xE000000000000000;
      }

      else
      {
        v107 = v319;
        (*v318)(v319, v104, v4);
        sub_240FC7A50(v104);
        v108 = sub_240FD420C();
        v106 = v109;
        (*v317)(v107, v4);
        v105 = v108;
      }

      MEMORY[0x245CD64D0](v105, v106);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v110 = v323;
      v112 = *(v45 + 2);
      v111 = *(v45 + 3);
      if (v112 >= v111 >> 1)
      {
        v45 = sub_240FB6B4C((v111 > 1), v112 + 1, 1, v45);
      }

      *(v45 + 2) = v112 + 1;
      *&v45[16 * v112 + 32] = v110;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();

      strcpy(&v323, "start time: [");
      HIWORD(v323) = -4864;
      v113 = [v38 attributeSet];
      v114 = [v113 startDate];

      if (v114)
      {
        v115 = v312;
        sub_240FD41FC();

        v116 = 0;
      }

      else
      {
        v116 = 1;
        v115 = v312;
      }

      v64(v115, v116, 1, v4);
      v117 = v311;
      sub_240FBCB00(v115, v311);
      if (v66(v117, 1, v4))
      {
        sub_240FC7A50(v117);
        v118 = 0;
        v119 = 0xE000000000000000;
      }

      else
      {
        v120 = v319;
        (*v318)(v319, v117, v4);
        sub_240FC7A50(v117);
        v121 = sub_240FD420C();
        v119 = v122;
        (*v317)(v120, v4);
        v118 = v121;
      }

      MEMORY[0x245CD64D0](v118, v119);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v123 = v323;
      v125 = *(v45 + 2);
      v124 = *(v45 + 3);
      if (v125 >= v124 >> 1)
      {
        v45 = sub_240FB6B4C((v124 > 1), v125 + 1, 1, v45);
      }

      *(v45 + 2) = v125 + 1;
      *&v45[16 * v125 + 32] = v123;
      strcpy(&v323, "end time: [");
      HIDWORD(v323) = -352321536;
      v126 = [v38 attributeSet];
      v127 = [v126 endDate];

      if (v127)
      {
        v128 = v314;
        sub_240FD41FC();

        v129 = 0;
      }

      else
      {
        v129 = 1;
        v128 = v314;
      }

      v64(v128, v129, 1, v4);
      v130 = v313;
      sub_240FBCB00(v128, v313);
      if (v66(v130, 1, v4))
      {
        sub_240FC7A50(v130);
        v131 = 0;
        v132 = 0xE000000000000000;
      }

      else
      {
        v133 = v319;
        (*v318)(v319, v130, v4);
        sub_240FC7A50(v130);
        v134 = sub_240FD420C();
        v132 = v135;
        (*v317)(v133, v4);
        v131 = v134;
      }

      v136 = v316;
      MEMORY[0x245CD64D0](v131, v132);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v137 = v323;
      v139 = *(v45 + 2);
      v138 = *(v45 + 3);
      if (v139 >= v138 >> 1)
      {
        v45 = sub_240FB6B4C((v138 > 1), v139 + 1, 1, v45);
      }

      *(v45 + 2) = v139 + 1;
      *&v45[16 * v139 + 32] = v137;
      strcpy(&v323, "location: [");
      HIDWORD(v323) = -352321536;
      v140 = [v38 attributeSet];
      v141 = [v140 namedLocation];

      if (v141)
      {
        v142 = sub_240FD449C();
        v144 = v143;
      }

      else
      {
        v142 = 0;
        v144 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v142, v144);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v145 = v323;
      v147 = *(v45 + 2);
      v146 = *(v45 + 3);
      if (v147 >= v146 >> 1)
      {
        v45 = sub_240FB6B4C((v146 > 1), v147 + 1, 1, v45);
      }

      *(v45 + 2) = v147 + 1;
      *&v45[16 * v147 + 32] = v145;
      strcpy(&v323, "comment: [");
      BYTE11(v323) = 0;
      HIDWORD(v323) = -369098752;
      v148 = [v38 attributeSet];
      v149 = [v148 comment];

      if (v149)
      {
        v150 = sub_240FD449C();
        v152 = v151;
      }

      else
      {
        v150 = 0;
        v152 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v150, v152);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v153 = v323;
      v155 = *(v45 + 2);
      v154 = *(v45 + 3);
      if (v155 >= v154 >> 1)
      {
        v45 = sub_240FB6B4C((v154 > 1), v155 + 1, 1, v45);
      }

      *(v45 + 2) = v155 + 1;
      *&v45[16 * v155 + 32] = v153;
      *&v323 = 0xD000000000000013;
      *(&v323 + 1) = v296;
      v156 = [v38 attributeSet];
      v157 = [v156 allDay];

      if (!v157)
      {
        sub_240FC06B8(0, &qword_27E51E8D0, 0x277CCABB0);
        v157 = sub_240FD461C();
      }

      v158 = [v157 description];
      v159 = sub_240FD449C();
      v161 = v160;

      MEMORY[0x245CD64D0](v159, v161);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v162 = v323;
      v164 = *(v45 + 2);
      v163 = *(v45 + 3);
      if (v164 >= v163 >> 1)
      {
        v45 = sub_240FB6B4C((v163 > 1), v164 + 1, 1, v45);
      }

      *(v45 + 2) = v164 + 1;
      *&v45[16 * v164 + 32] = v162;
      *&v323 = 0xD00000000000001ELL;
      *(&v323 + 1) = v295;
      v165 = [v38 attributeSet];
      v166 = [v165 calendarHolidayIdentifier];

      if (v166)
      {
        v167 = sub_240FD449C();
        v169 = v168;
      }

      else
      {
        v167 = 0;
        v169 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v167, v169);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v170 = v323;
      v172 = *(v45 + 2);
      v171 = *(v45 + 3);
      if (v172 >= v171 >> 1)
      {
        v45 = sub_240FB6B4C((v171 > 1), v172 + 1, 1, v45);
      }

      *(v45 + 2) = v172 + 1;
      *&v45[16 * v172 + 32] = v170;
      *&v323 = 0xD000000000000015;
      *(&v323 + 1) = v294;
      v173 = [v38 attributeSet];
      v174 = [v173 accountIdentifier];

      if (v174)
      {
        v175 = sub_240FD449C();
        v177 = v176;
      }

      else
      {
        v175 = 0;
        v177 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v175, v177);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v178 = v323;
      v180 = *(v45 + 2);
      v179 = *(v45 + 3);
      if (v180 >= v179 >> 1)
      {
        v45 = sub_240FB6B4C((v179 > 1), v180 + 1, 1, v45);
      }

      *(v45 + 2) = v180 + 1;
      *&v45[16 * v180 + 32] = v178;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v325 = v323;
      MEMORY[0x245CD64D0](0xD000000000000016, v293 | 0x8000000000000000);
      v181 = [v38 attributeSet];
      v182 = [v181 attributeForKey_];

      if (v182)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v322, &v323);
      }

      else
      {
        v324 = MEMORY[0x277D837D0];
        *&v323 = 0;
        *(&v323 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v323);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v183 = v325;
      v185 = *(v45 + 2);
      v184 = *(v45 + 3);
      if (v185 >= v184 >> 1)
      {
        v45 = sub_240FB6B4C((v184 > 1), v185 + 1, 1, v45);
      }

      *(v45 + 2) = v185 + 1;
      *&v45[16 * v185 + 32] = v183;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v325 = v323;
      MEMORY[0x245CD64D0](0xD000000000000016, v292 | 0x8000000000000000);
      v186 = [v38 attributeSet];
      v187 = [v186 attributeForKey_];

      if (v187)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v322, &v323);
      }

      else
      {
        v324 = MEMORY[0x277D837D0];
        *&v323 = 0;
        *(&v323 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v323);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v188 = v325;
      v190 = *(v45 + 2);
      v189 = *(v45 + 3);
      if (v190 >= v189 >> 1)
      {
        v45 = sub_240FB6B4C((v189 > 1), v190 + 1, 1, v45);
      }

      *(v45 + 2) = v190 + 1;
      *&v45[16 * v190 + 32] = v188;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v325 = v323;
      MEMORY[0x245CD64D0](0xD000000000000017, v291 | 0x8000000000000000);
      v191 = [v38 attributeSet];
      v192 = [v191 attributeForKey_];

      if (v192)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v322, &v323);
      }

      else
      {
        v324 = MEMORY[0x277D837D0];
        *&v323 = 0;
        *(&v323 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v323);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v193 = v325;
      v195 = *(v45 + 2);
      v194 = *(v45 + 3);
      if (v195 >= v194 >> 1)
      {
        v45 = sub_240FB6B4C((v194 > 1), v195 + 1, 1, v45);
      }

      *(v45 + 2) = v195 + 1;
      *&v45[16 * v195 + 32] = v193;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v325 = v323;
      MEMORY[0x245CD64D0](0xD000000000000017, v290 | 0x8000000000000000);
      v196 = [v38 attributeSet];
      v197 = [v196 attributeForKey_];

      if (v197)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v322, &v323);
      }

      else
      {
        v324 = MEMORY[0x277D837D0];
        *&v323 = 0;
        *(&v323 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v323);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v198 = v325;
      v200 = *(v45 + 2);
      v199 = *(v45 + 3);
      if (v200 >= v199 >> 1)
      {
        v45 = sub_240FB6B4C((v199 > 1), v200 + 1, 1, v45);
      }

      *(v45 + 2) = v200 + 1;
      *&v45[16 * v200 + 32] = v198;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v325 = v323;
      MEMORY[0x245CD64D0](0xD000000000000016, v289 | 0x8000000000000000);
      v201 = [v38 attributeSet];
      v202 = [v201 attributeForKey_];

      if (v202)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v322, &v323);
      }

      else
      {
        v324 = MEMORY[0x277D837D0];
        *&v323 = 0;
        *(&v323 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v323);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v203 = v325;
      v205 = *(v45 + 2);
      v204 = *(v45 + 3);
      if (v205 >= v204 >> 1)
      {
        v45 = sub_240FB6B4C((v204 > 1), v205 + 1, 1, v45);
      }

      *(v45 + 2) = v205 + 1;
      *&v45[16 * v205 + 32] = v203;
      *&v323 = 0xD000000000000012;
      *(&v323 + 1) = v288;
      v206 = [v38 attributeSet];
      v207 = [v206 accountHandles];

      if (v207)
      {
        v208 = MEMORY[0x277D837D0];
        v209 = sub_240FD453C();
      }

      else
      {
        v209 = MEMORY[0x277D84F90];
        v208 = MEMORY[0x277D837D0];
      }

      v210 = MEMORY[0x245CD6520](v209, v208);
      v212 = v211;

      MEMORY[0x245CD64D0](v210, v212);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v213 = v323;
      v215 = *(v45 + 2);
      v214 = *(v45 + 3);
      if (v215 >= v214 >> 1)
      {
        v45 = sub_240FB6B4C((v214 > 1), v215 + 1, 1, v45);
      }

      *(v45 + 2) = v215 + 1;
      *&v45[16 * v215 + 32] = v213;
      *&v323 = v315;
      *(&v323 + 1) = v287;
      v216 = [v38 attributeSet];
      v217 = [v216 phoneNumbers];

      if (v217)
      {
        v218 = MEMORY[0x277D837D0];
        v219 = sub_240FD453C();
      }

      else
      {
        v219 = MEMORY[0x277D84F90];
        v218 = MEMORY[0x277D837D0];
      }

      v220 = MEMORY[0x245CD6520](v219, v218);
      v222 = v221;

      MEMORY[0x245CD64D0](v220, v222);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v223 = v323;
      v225 = *(v45 + 2);
      v224 = *(v45 + 3);
      if (v225 >= v224 >> 1)
      {
        v45 = sub_240FB6B4C((v224 > 1), v225 + 1, 1, v45);
      }

      *(v45 + 2) = v225 + 1;
      *&v45[16 * v225 + 32] = v223;
      *&v323 = 0xD000000000000012;
      *(&v323 + 1) = v286;
      v226 = [v38 attributeSet];
      v227 = [v226 emailAddresses];

      if (v227)
      {
        v228 = MEMORY[0x277D837D0];
        v229 = sub_240FD453C();
      }

      else
      {
        v229 = MEMORY[0x277D84F90];
        v228 = MEMORY[0x277D837D0];
      }

      v230 = MEMORY[0x245CD6520](v229, v228);
      v232 = v231;

      MEMORY[0x245CD64D0](v230, v232);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v233 = v323;
      v235 = *(v45 + 2);
      v234 = *(v45 + 3);
      if (v235 >= v234 >> 1)
      {
        v45 = sub_240FB6B4C((v234 > 1), v235 + 1, 1, v45);
      }

      *(v45 + 2) = v235 + 1;
      *&v45[16 * v235 + 32] = v233;
      *&v323 = 0xD000000000000012;
      *(&v323 + 1) = v285;
      v236 = [v38 attributeSet];
      v237 = [v236 alternateNames];

      if (v237)
      {
        v238 = MEMORY[0x277D837D0];
        v239 = sub_240FD453C();
      }

      else
      {
        v239 = MEMORY[0x277D84F90];
        v238 = MEMORY[0x277D837D0];
      }

      v240 = MEMORY[0x245CD6520](v239, v238);
      v242 = v241;

      MEMORY[0x245CD64D0](v240, v242);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v243 = v323;
      v245 = *(v45 + 2);
      v244 = *(v45 + 3);
      if (v245 >= v244 >> 1)
      {
        v45 = sub_240FB6B4C((v244 > 1), v245 + 1, 1, v45);
      }

      *(v45 + 2) = v245 + 1;
      *&v45[16 * v245 + 32] = v243;
      *&v323 = 0;
      *(&v323 + 1) = 0xE000000000000000;
      sub_240FD46BC();
      v325 = v323;
      MEMORY[0x245CD64D0](0x7461642064657375, 0xED00005B203A7365);
      v246 = [v38 attributeSet];
      v247 = [v246 attributeForKey_];

      if (v247)
      {
        sub_240FD464C();
        swift_unknownObjectRelease();
        sub_240FBE508(&v322, &v323);
      }

      else
      {
        v324 = MEMORY[0x277D837D0];
        *&v323 = 0;
        *(&v323 + 1) = 0xE000000000000000;
      }

      sub_240FD475C();
      __swift_destroy_boxed_opaque_existential_0(&v323);
      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v248 = v325;
      v250 = *(v45 + 2);
      v249 = *(v45 + 3);
      if (v250 >= v249 >> 1)
      {
        v45 = sub_240FB6B4C((v249 > 1), v250 + 1, 1, v45);
      }

      *(v45 + 2) = v250 + 1;
      *&v45[16 * v250 + 32] = v248;
      strcpy(&v323, "bundleID: [");
      HIDWORD(v323) = -352321536;
      v251 = [v38 attributeSet];
      v252 = [v251 bundleID];

      if (v252)
      {
        v253 = sub_240FD449C();
        v255 = v254;
      }

      else
      {
        v253 = 0;
        v255 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v253, v255);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v256 = v323;
      v258 = *(v45 + 2);
      v257 = *(v45 + 3);
      if (v258 >= v257 >> 1)
      {
        v45 = sub_240FB6B4C((v257 > 1), v258 + 1, 1, v45);
      }

      *(v45 + 2) = v258 + 1;
      *&v45[16 * v258 + 32] = v256;
      strcpy(&v323, "contentType: [");
      HIBYTE(v323) = -18;
      v259 = [v38 attributeSet];
      v260 = [v259 contentType];

      if (v260)
      {
        v261 = sub_240FD449C();
        v263 = v262;
      }

      else
      {
        v261 = 0;
        v263 = 0xE000000000000000;
      }

      MEMORY[0x245CD64D0](v261, v263);

      MEMORY[0x245CD64D0](93, 0xE100000000000000);
      v264 = v323;
      v266 = *(v45 + 2);
      v265 = *(v45 + 3);
      if (v266 >= v265 >> 1)
      {
        v45 = sub_240FB6B4C((v265 > 1), v266 + 1, 1, v45);
      }

      *(v45 + 2) = v266 + 1;
      *&v45[16 * v266 + 32] = v264;
      *&v323 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
      sub_240FC5268();
      v267 = sub_240FD444C();
      v269 = v268;

      v270 = v303;
      swift_beginAccess();
      v271 = *(v270 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v270 + 16) = v271;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v271 = sub_240FB6B4C(0, *(v271 + 2) + 1, 1, v271);
        *(v270 + 16) = v271;
      }

      v274 = *(v271 + 2);
      v273 = *(v271 + 3);
      if (v274 >= v273 >> 1)
      {
        v271 = sub_240FB6B4C((v273 > 1), v274 + 1, 1, v271);
      }

      v36 = v136 + 1;
      *(v271 + 2) = v274 + 1;
      v275 = &v271[16 * v274];
      *(v275 + 4) = v267;
      *(v275 + 5) = v269;
      *(v270 + 16) = v271;
      swift_endAccess();

      result = v300;
      v33 = v302;
      v32 = v301;
    }

    while (v300 != v36);
  }

  return result;
}

uint64_t sub_240FCE42C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);

  a2(v7);
}

id ArchetypeRawAssortment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArchetypeRawAssortment.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArchetypeRawAssortment();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ArchetypeRawAssortment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArchetypeRawAssortment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s15ArchetypeEngine0A13RawAssortmentC19spotlightItemTitles01nG017completionHandlerySi_ySaySSGctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v8 = sub_240FD448C();
  v9 = sub_240FD452C();
  v10 = [v7 initWithQueryString:v8 attributes:v9];

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v6;
  v19 = sub_240FCF3FC;
  v20 = v11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_240FCB484;
  v18 = &block_descriptor_38;
  v12 = _Block_copy(&v15);

  [v10 setFoundItemsHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v6;
  v19 = sub_240FCF46C;
  v20 = v13;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_240FCB508;
  v18 = &block_descriptor_44;
  v14 = _Block_copy(&v15);

  [v10 setCompletionHandler_];
  _Block_release(v14);
  [v10 start];
}

void _s15ArchetypeEngine0A13RawAssortmentC24spotlightEmailAttributes7nEmails17completionHandlerySi_ySaySSGctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_240FD5CA0;
  v8 = *MEMORY[0x277CC3140];
  *(v7 + 32) = sub_240FD449C();
  *(v7 + 40) = v9;
  v10 = *MEMORY[0x277CC24C8];
  *(v7 + 48) = sub_240FD449C();
  *(v7 + 56) = v11;
  v12 = *MEMORY[0x277CC3020];
  *(v7 + 64) = sub_240FD449C();
  *(v7 + 72) = v13;
  v14 = *MEMORY[0x277CC3118];
  *(v7 + 80) = sub_240FD449C();
  *(v7 + 88) = v15;
  v16 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v17 = sub_240FD448C();
  v18 = sub_240FD452C();

  v19 = [v16 initWithQueryString:v17 attributes:v18];

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v6;
  v28 = sub_240FCF3F4;
  v29 = v20;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_240FCB484;
  v27 = &block_descriptor_25;
  v21 = _Block_copy(&v24);

  [v19 setFoundItemsHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v6;
  v28 = sub_240FCF46C;
  v29 = v22;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_240FCB508;
  v27 = &block_descriptor_31;
  v23 = _Block_copy(&v24);

  [v19 setCompletionHandler_];
  _Block_release(v23);
  [v19 start];
}

void _s15ArchetypeEngine0A13RawAssortmentC12textOnScreenSSyF_0()
{
  v0 = [objc_opt_self() primaryApp];
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = [v0 visibleElements];
  if (v2)
  {
    v3 = v2;
    sub_240FC06B8(0, &qword_27E51E8D8, 0x277CE6BA0);
    v4 = sub_240FD453C();

    if (!(v4 >> 62))
    {
      goto LABEL_4;
    }

LABEL_21:
    v5 = sub_240FD476C();
    v18 = v1;
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
    sub_240FC5268();
    sub_240FD444C();

    return;
  }

  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_21;
  }

LABEL_4:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v1;
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245CD66B0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 label];
      if (v10)
      {
        v11 = v10;
        v12 = sub_240FD449C();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_240FB6B4C(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_240FB6B4C((v15 > 1), v16 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
    }

    while (v5 != v6);
    goto LABEL_22;
  }

  __break(1u);
}

void _s15ArchetypeEngine0A13RawAssortmentC14spotlightItems11contentType17completionHandlerySS_ySaySSGctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  sub_240FD46BC();

  v69 = 0x54746E65746E6F63;
  v70 = 0xEF203D3D20657079;
  MEMORY[0x245CD64D0](a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_240FD5CB0;
  v10 = *MEMORY[0x277CC3128];
  *(v9 + 32) = sub_240FD449C();
  *(v9 + 40) = v11;
  v12 = *MEMORY[0x277CC27A0];
  *(v9 + 48) = sub_240FD449C();
  *(v9 + 56) = v13;
  v14 = *MEMORY[0x277CC2500];
  *(v9 + 64) = sub_240FD449C();
  *(v9 + 72) = v15;
  v16 = *MEMORY[0x277CC2DD0];
  *(v9 + 80) = sub_240FD449C();
  *(v9 + 88) = v17;
  v18 = *MEMORY[0x277CC31F0];
  *(v9 + 96) = sub_240FD449C();
  *(v9 + 104) = v19;
  v20 = *MEMORY[0x277CC3118];
  *(v9 + 112) = sub_240FD449C();
  *(v9 + 120) = v21;
  v22 = *MEMORY[0x277CC25D8];
  *(v9 + 128) = sub_240FD449C();
  *(v9 + 136) = v23;
  v24 = *MEMORY[0x277CC2C60];
  *(v9 + 144) = sub_240FD449C();
  *(v9 + 152) = v25;
  v26 = *MEMORY[0x277CC2678];
  *(v9 + 160) = sub_240FD449C();
  *(v9 + 168) = v27;
  v28 = *MEMORY[0x277CC2528];
  *(v9 + 176) = sub_240FD449C();
  *(v9 + 184) = v29;
  v30 = *MEMORY[0x277CC23A8];
  *(v9 + 192) = sub_240FD449C();
  *(v9 + 200) = v31;
  v32 = *MEMORY[0x277CC2640];
  *(v9 + 208) = sub_240FD449C();
  *(v9 + 216) = v33;
  v34 = *MEMORY[0x277CC2778];
  *(v9 + 224) = sub_240FD449C();
  *(v9 + 232) = v35;
  v36 = *MEMORY[0x277CC2660];
  *(v9 + 240) = sub_240FD449C();
  *(v9 + 248) = v37;
  v38 = *MEMORY[0x277CC25E0];
  *(v9 + 256) = sub_240FD449C();
  *(v9 + 264) = v39;
  v40 = *MEMORY[0x277CC2760];
  *(v9 + 272) = sub_240FD449C();
  *(v9 + 280) = v41;
  v42 = *MEMORY[0x277CC2C30];
  *(v9 + 288) = sub_240FD449C();
  *(v9 + 296) = v43;
  v44 = *MEMORY[0x277CC2E38];
  *(v9 + 304) = sub_240FD449C();
  *(v9 + 312) = v45;
  v46 = *MEMORY[0x277CC2C28];
  *(v9 + 320) = sub_240FD449C();
  *(v9 + 328) = v47;
  v48 = *MEMORY[0x277CC2E30];
  *(v9 + 336) = sub_240FD449C();
  *(v9 + 344) = v49;
  v50 = *MEMORY[0x277CC26B0];
  *(v9 + 352) = sub_240FD449C();
  *(v9 + 360) = v51;
  v52 = *MEMORY[0x277CC23A0];
  *(v9 + 368) = sub_240FD449C();
  *(v9 + 376) = v53;
  v54 = *MEMORY[0x277CC2EB8];
  *(v9 + 384) = sub_240FD449C();
  *(v9 + 392) = v55;
  v56 = *MEMORY[0x277CC2788];
  *(v9 + 400) = sub_240FD449C();
  *(v9 + 408) = v57;
  v58 = *MEMORY[0x277CC2408];
  *(v9 + 416) = sub_240FD449C();
  *(v9 + 424) = v59;
  v60 = *MEMORY[0x277CC3218];
  *(v9 + 432) = sub_240FD449C();
  *(v9 + 440) = v61;
  v62 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v63 = sub_240FD448C();

  v64 = sub_240FD452C();

  v65 = [v62 initWithQueryString:v63 attributes:v64];

  v73 = sub_240FCF378;
  v74 = v8;
  v69 = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_240FCB484;
  v72 = &block_descriptor_2;
  v66 = _Block_copy(&v69);

  [v65 setFoundItemsHandler_];
  _Block_release(v66);
  v67 = swift_allocObject();
  v67[2] = a3;
  v67[3] = a4;
  v67[4] = v8;
  v73 = sub_240FCF39C;
  v74 = v67;
  v69 = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_240FCB508;
  v72 = &block_descriptor_18;
  v68 = _Block_copy(&v69);

  [v65 setCompletionHandler_];
  _Block_release(v68);
  [v65 start];
}

uint64_t sub_240FCF2A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_240FCF2E0()
{
  v1 = *(v0 + 16);
  v2 = sub_240FD452C();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_240FCF340()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240FCF3BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ATSpotlightMailRetriever.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ATSpotlightMailRetriever.init()();
  return v3;
}

uint64_t ATSpotlightMailRetriever.init()()
{
  v1 = v0;
  v2 = sub_240FD422C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  *v7 = 0xD000000000000014;
  v7[1] = 0x8000000240FD5E60;
  v8 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier);
  v9 = *MEMORY[0x277CC32E8];
  *v8 = sub_240FD449C();
  v8[1] = v10;
  v11 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId);
  v12 = *MEMORY[0x277CC32C0];
  *v11 = sub_240FD449C();
  v11[1] = v13;
  v14 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailReceivedDate);
  v15 = *MEMORY[0x277CC32D0];
  *v14 = sub_240FD449C();
  v14[1] = v16;
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_longestChain) = 100;
  sub_240FD421C();
  sub_240FD41AC();
  (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t ATSpotlightMailRetriever.getRecentRecordsAsync(nRecords:addendum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_240FCF680, 0, 0);
}

uint64_t sub_240FCF680()
{
  v1 = v0[6];
  sub_240FD46BC();
  v2 = *MEMORY[0x277CC32D0];
  v3 = sub_240FD449C();
  v5 = v4;

  MEMORY[0x245CD64D0](0x6E2E656D6974243ELL, 0xEF294D362D28776FLL);
  v7 = v3;
  v6 = v5;
  v0[2] = v7;
  v0[3] = v5;
  if (v1)
  {
    v8 = v0[6];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      MEMORY[0x245CD64D0]();
      v10 = 539371040;
      v11 = 0xE400000000000000;
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    MEMORY[0x245CD64D0](v10, v11);

    v7 = v0[2];
    v6 = v0[3];
  }

  v0[8] = v6;
  v12 = (v0[7] + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_240FCF820;
  v16 = v0[7];
  v17 = v0[4];

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v13, v14, v17, v7, v6);
}

uint64_t sub_240FCF820(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_240FCF940, 0, 0);
}

uint64_t ATSpotlightMailRetriever.getRecentRecords(nRecords:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v9 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v8 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);
  v10 = dispatch_semaphore_create(0);
  v11 = sub_240FD459C();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = v9;
  v12[6] = v8;
  v12[7] = a1;
  v12[8] = v10;

  v13 = v10;
  sub_240FC285C(0, 0, v7, &unk_240FD5990, v12);

  sub_240FD45FC();

  v14 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);
}

uint64_t sub_240FCFAC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t ATSpotlightMailRetriever.getEmailChain(uniqueIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8E0, &qword_240FD5D00) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v3[3] = v7;
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_240FCFC04;

  return sub_240FD19A0(v7, a1, a2);
}

uint64_t sub_240FCFC04()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v3;
  v4[1] = sub_240FCFD5C;
  v5 = v1[3];
  v6 = v1[2];

  return sub_240FD1270(v5);
}

uint64_t sub_240FCFD5C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_240FCFE5C, 0, 0);
}

uint64_t sub_240FCFE5C()
{
  sub_240FBA1A8(v0[3], &qword_27E51E8E0, &qword_240FD5D00);

  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t ATSpotlightMailRetriever.getPreviousEmailsInChain(uniqueIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = swift_task_alloc();
  v7 = sub_240FD422C();
  v3[5] = v7;
  v8 = *(v7 - 8);
  v3[6] = v8;
  v9 = *(v8 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8E0, &qword_240FD5D00) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[10] = v11;
  v12 = swift_task_alloc();
  v3[11] = v12;
  *v12 = v3;
  v12[1] = sub_240FD0080;

  return sub_240FD19A0(v11, a1, a2);
}

uint64_t sub_240FD0080()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v3;
  v4[1] = sub_240FD01D8;
  v5 = v1[10];
  v6 = v1[2];

  return sub_240FD1270(v5);
}

uint64_t sub_240FD01D8(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_240FD02D8, 0, 0);
}

uint64_t sub_240FD02D8()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[9];
    sub_240FB99A0(v0[10], v2, &qword_27E51E8E0, &qword_240FD5D00);
    v3 = type metadata accessor for ATSpotlightDataRecord();
    v33 = *(v3 - 8);
    result = (*(v33 + 48))(v2, 1, v3);
    if (result == 1)
    {
      goto LABEL_24;
    }

    v5 = v0[9];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    sub_240FB99A0(v5 + *(v3 + 64), v8, &qword_27E51E578, &qword_240FD51A0);
    sub_240FC2D4C(v5);
    v32 = *(v6 + 48);
    result = v32(v8, 1, v7);
    if (result == 1)
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v30 = *(v0[6] + 32);
    result = v30(v0[8], v0[4], v0[5]);
    v9 = *(v1 + 16);
    if (v9)
    {
      v10 = 0;
      v31 = v0[13] + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v11 = (v0[6] + 8);
      v12 = v3;
      do
      {
        if (v10 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = v0[5];
        v14 = v0[3];
        sub_240FB99A0(v31 + *(v33 + 72) * v10 + *(v12 + 64), v14, &qword_27E51E578, &qword_240FD51A0);
        if (v32(v14, 1, v13) == 1)
        {
          result = sub_240FBA1A8(v0[3], &qword_27E51E578, &qword_240FD51A0);
        }

        else
        {
          v15 = v0[7];
          v16 = v1;
          v17 = v0[5];
          v30(v15, v0[3], v17);
          v18 = sub_240FD41DC();
          v19 = v17;
          v1 = v16;
          v12 = v3;
          result = (*v11)(v15, v19);
          if (v18)
          {
            v20 = v9 - v10;
            if (v9 <= v10)
            {
              goto LABEL_16;
            }

LABEL_12:
            v21 = *(v1 + 16);
            if (v21 >= v9)
            {
              v1 = v0[13];
              if (v21 != v20)
              {
                sub_240FC8418(v0[13], v1 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v10, (2 * v9) | 1);
                v1 = v22;
                goto LABEL_17;
              }

              goto LABEL_18;
            }

LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        ++v10;
      }

      while (v9 != v10);
    }

    v10 = 0;
    v20 = v9;
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_16:
    v1 = MEMORY[0x277D84F90];
LABEL_17:
    v23 = v0[13];

LABEL_18:
    (*(v0[6] + 8))(v0[8], v0[5]);
  }

  v24 = v0[9];
  v26 = v0[7];
  v25 = v0[8];
  v28 = v0[3];
  v27 = v0[4];
  sub_240FBA1A8(v0[10], &qword_27E51E8E0, &qword_240FD5D00);

  v29 = v0[1];

  return v29(v1);
}

uint64_t ATSpotlightMailRetriever.getRecentEmailsSubsetMatch(fromAuthor:toRecipients:withAdditionalRecipients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = *(type metadata accessor for ATSpotlightDataRecord() - 8);
  v5[9] = v6;
  v7 = *(v6 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FD0740, 0, 0);
}

uint64_t sub_240FD0740()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[6];
    v5 = *MEMORY[0x277CC24C8];
    v36 = sub_240FD449C();
    v37 = v6;

    MEMORY[0x245CD64D0](15677, 0xE200000000000000);

    MEMORY[0x245CD64D0](v2, v1);

    v0[2] = v36;
    v0[3] = v37;
    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = *MEMORY[0x277CC3020];
      v9 = (v0[6] + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v12 = sub_240FD449C();
        v14 = v13;

        MEMORY[0x245CD64D0](v12, v14);

        MEMORY[0x245CD64D0](15677, 0xE200000000000000);

        MEMORY[0x245CD64D0](v11, v10);

        MEMORY[0x245CD64D0](539371040, 0xE400000000000000);

        v9 += 2;
        --v7;
      }

      while (v7);
    }

    v15 = v0[7];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *MEMORY[0x277CC23D0];
      v18 = (v15 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v21 = sub_240FD449C();
        v23 = v22;

        MEMORY[0x245CD64D0](v21, v23);

        MEMORY[0x245CD64D0](15677, 0xE200000000000000);

        MEMORY[0x245CD64D0](v20, v19);

        MEMORY[0x245CD64D0](539371040, 0xE400000000000000);

        v18 += 2;
        --v16;
      }

      while (v16);
    }

    v24 = (v0[8] + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
    v26 = *v24;
    v25 = v24[1];
    v27 = v0[2];
    v28 = v0[3];
    v0[12] = v28;
    v29 = swift_task_alloc();
    v0[13] = v29;
    *v29 = v0;
    v29[1] = sub_240FD0AB8;
    v30 = v0[8];

    return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v26, v25, 100, v27, v28);
  }

  else
  {
    v33 = v0[10];
    v32 = v0[11];

    v34 = v0[1];
    v35 = MEMORY[0x277D84F90];

    return v34(v35);
  }
}

uint64_t sub_240FD0AB8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_240FD0BB8, 0, 0);
}

void sub_240FD0BB8()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[11];
    v5 = v0[9];
    v6 = MEMORY[0x277D84F90];
    v20 = v0[14];
    while (v3 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_240FBE4A4(v0[14] + v7 + v8 * v3, v0[11]);
      v9 = *(v4 + 32);
      v10 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v9) & 0xF;
      }

      v11 = v0[11];
      if (v10)
      {
        sub_240FC7AB8(v11, v0[10]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FB8810(0, *(v6 + 16) + 1, 1);
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_240FB8810(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[10];
        *(v6 + 16) = v13 + 1;
        sub_240FC7AB8(v14, v6 + v7 + v13 * v8);
        v1 = v20;
      }

      else
      {
        sub_240FC2D4C(v11);
      }

      if (v2 == ++v3)
      {
        v15 = v0[14];
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_16:
    v16 = v0[12];

    v18 = v0[10];
    v17 = v0[11];

    v19 = v0[1];

    v19(v6);
  }
}

uint64_t ATSpotlightMailRetriever.getRecentEmails(fromAuthor:toRecipients:withAdditionalRecipients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v9 = type metadata accessor for ATSpotlightDataRecord();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[10] = v12;
  *v12 = v4;
  v12[1] = sub_240FD0E9C;

  return ATSpotlightMailRetriever.getRecentEmailsSubsetMatch(fromAuthor:toRecipients:withAdditionalRecipients:)(a1, a2, a3, a4);
}

uint64_t sub_240FD0E9C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_240FD0F9C, 0, 0);
}

void sub_240FD0F9C()
{
  v1 = v0[11];
  v38 = *(v1 + 16);
  if (v38)
  {
    v2 = 0;
    v4 = v0[6];
    v3 = v0[7];
    v35 = v0[5];
    v37 = v0[4];
    v5 = MEMORY[0x277D84F90];
    v36 = v0[11];
    while (v2 < *(v1 + 16))
    {
      v6 = v0[9];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_240FBE4A4(v0[11] + v7 + v8 * v2, v6);
      v9 = *(v6 + v4[11]);
      if (!v9 || v9[2] != 1)
      {
        goto LABEL_22;
      }

      v10 = v9[4] == v0[2] && v9[5] == v0[3];
      if (!v10 && (sub_240FD47FC() & 1) == 0)
      {
        goto LABEL_22;
      }

      if (*(v37 + 16))
      {
        v11 = v0[9];
        v12 = v4[12];
        v13 = *(v11 + v12);
        if (!v13)
        {
          goto LABEL_22;
        }

        v14 = v0[4];
        v15 = *(v11 + v12);

        v17 = sub_240FD2EA8(v16);

        v18 = sub_240FD2EA8(v13);

        v19 = sub_240FD242C(v17, v18);

        v1 = v36;

        if ((v19 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (!*(v35 + 16))
      {
        goto LABEL_17;
      }

      v20 = v0[9];
      v21 = v4[13];
      if (!*(v20 + v21))
      {
        goto LABEL_22;
      }

      v22 = v0[5];
      v23 = *(v20 + v21);

      v25 = sub_240FD2EA8(v24);

      v27 = sub_240FD2EA8(v26);

      LOBYTE(v22) = sub_240FD242C(v25, v27);

      v1 = v36;

      if (v22)
      {
LABEL_17:
        sub_240FC7AB8(v0[9], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FB8810(0, *(v5 + 16) + 1, 1);
        }

        v29 = *(v5 + 16);
        v28 = *(v5 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_240FB8810(v28 > 1, v29 + 1, 1);
        }

        v30 = v0[8];
        *(v5 + 16) = v29 + 1;
        sub_240FC7AB8(v30, v5 + v7 + v29 * v8);
      }

      else
      {
LABEL_22:
        sub_240FC2D4C(v0[9]);
      }

      if (v38 == ++v2)
      {
        v31 = v0[11];
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_26:
    v33 = v0[8];
    v32 = v0[9];

    v34 = v0[1];

    v34(v5);
  }
}

uint64_t sub_240FD1270(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_240FD443C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8E0, &qword_240FD5D00) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for ATSpotlightDataRecord();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FD13DC, 0, 0);
}

uint64_t sub_240FD13DC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_240FB99A0(v0[2], v3, &qword_27E51E8E0, &qword_240FD5D00);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240FBA1A8(v0[7], &qword_27E51E8E0, &qword_240FD5D00);
LABEL_8:
    v15 = v0[6];
    sub_240FD442C();
    v16 = sub_240FD441C();
    v17 = sub_240FD45DC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[5];
    v19 = v0[6];
    v21 = v0[4];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_240FB1000, v16, v17, "No mail record found with given unique id or record does not have conversation id set - cannot build email chain", v22, 2u);
      MEMORY[0x245CD6DB0](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];
    v27 = v0[6];
    v26 = v0[7];

    v28 = v0[1];
    v29 = MEMORY[0x277D84F90];

    return v28(v29);
  }

  v4 = v0[12];
  v5 = v0[8];
  sub_240FC7AB8(v0[7], v4);
  v6 = (v4 + *(v5 + 68));
  v7 = v6[1];
  if (!v7)
  {
    sub_240FC2D4C(v0[12]);
    goto LABEL_8;
  }

  v8 = v0[3];
  v9 = *v6;
  v30 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId);
  v31 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId + 8);

  MEMORY[0x245CD64D0](540884256, 0xE400000000000000);

  MEMORY[0x245CD64D0](v9, v7);

  v0[13] = v31;
  v10 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v11 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_240FD16A8;
  v13 = v0[3];

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v10, v11, 100, v30, v31);
}

uint64_t sub_240FD16A8(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_240FD17C8, 0, 0);
}

void sub_240FD17C8()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[11];
    v5 = v0[9];
    v6 = MEMORY[0x277D84F90];
    v23 = v0[15];
    while (v3 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_240FBE4A4(v0[15] + v7 + v8 * v3, v0[11]);
      v9 = *(v4 + 32);
      v10 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v9) & 0xF;
      }

      v11 = v0[11];
      if (v10)
      {
        sub_240FC7AB8(v11, v0[10]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FB8810(0, *(v6 + 16) + 1, 1);
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_240FB8810(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[10];
        *(v6 + 16) = v13 + 1;
        sub_240FC7AB8(v14, v6 + v7 + v13 * v8);
        v1 = v23;
      }

      else
      {
        sub_240FC2D4C(v11);
      }

      if (v2 == ++v3)
      {
        v15 = v0[15];
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_16:
    v16 = v0[12];

    sub_240FC2D4C(v16);
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[10];
    v21 = v0[6];
    v20 = v0[7];

    v22 = v0[1];

    v22(v6);
  }
}

uint64_t sub_240FD19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_240FD19C4, 0, 0);
}

uint64_t sub_240FD19C4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v9 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier);
  v10 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier + 8);

  MEMORY[0x245CD64D0](540884256, 0xE400000000000000);

  MEMORY[0x245CD64D0](v3, v1);

  v0[6] = v10;
  v4 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId);
  v5 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_240FD1AF8;
  v7 = v0[5];

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v4, v5, 1, v9, v10);
}

uint64_t sub_240FD1AF8(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_240FD1C18, 0, 0);
}

uint64_t sub_240FD1C18()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for ATSpotlightDataRecord();
    v4 = *(v3 - 8);
    sub_240FBE4A4(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[8];

    v3 = type metadata accessor for ATSpotlightDataRecord();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

void sub_240FD1D40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_240FBE4A4(a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = sub_240FD2304(0xD0000000000000BELL, 0x8000000240FD6B20, 0);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *(a1 + 24);
    }

    v34 = *(a1 + 24);
    v35 = *(a1 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E8F8, &qword_240FD5D88);
    sub_240FD2FEC();
    sub_240FD3050();
    v9 = sub_240FD462C();
    v11 = v10;
    v12 = sub_240FD448C();
    v13 = [v5 firstMatchInString:v12 options:0 range:{v9, v11}];

    if (v13)
    {
      [v13 range];
      sub_240FD44EC();
      v14 = sub_240FD451C();
      v15 = MEMORY[0x245CD64A0](v14);
      v17 = v16;

      v18 = *(a2 + 32);

      *(a2 + 24) = v15;
      *(a2 + 32) = v17;
    }

    else
    {
      v19 = *(a2 + 32);

      *(a2 + 24) = v6;
      *(a2 + 32) = v7;
    }

    v20 = (a2 + *(type metadata accessor for ATSpotlightDataRecord() + 76));
    v21 = v20[1];
    if (v21)
    {
      v22 = *v20;

      v23 = sub_240FD462C();
      v25 = v24;
      v26 = sub_240FD448C();
      v27 = [v5 firstMatchInString:v26 options:0 range:{v23, v25}];

      if (v27)
      {
        [v27 range];
        sub_240FD44EC();
        v28 = sub_240FD451C();
        v29 = MEMORY[0x245CD64A0](v28);
        v31 = v30;

        v32 = (a2 + *(type metadata accessor for ATSpotlightDataRecord() + 76));
        *v32 = v29;
        v32[1] = v31;
      }

      else
      {

        v33 = (a2 + *(type metadata accessor for ATSpotlightDataRecord() + 76));
        *v33 = v22;
        v33[1] = v21;
      }
    }

    else
    {
    }
  }
}

uint64_t sub_240FD20B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier + 8);

  v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailReceivedDate + 8);
}

uint64_t ATSpotlightMailRetriever.deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);

  v4 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier + 8);

  v6 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId + 8);

  v7 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailReceivedDate + 8);

  return v0;
}

uint64_t ATSpotlightMailRetriever.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);

  v4 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_bundleId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailUniqueRecordIdentifier + 8);

  v6 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailConversationId + 8);

  v7 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightMailRetriever_mailReceivedDate + 8);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

id sub_240FD2304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_240FD448C();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_240FD418C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_240FD23E0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_240FD242C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_240FD488C();

    sub_240FD44DC();
    v17 = sub_240FD48BC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_240FD47FC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_240FD25E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_240FD488C();
  sub_240FD44DC();
  v9 = sub_240FD48BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_240FD47FC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_240FD2994(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_240FD2734(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E910, &unk_240FD5D90);
  result = sub_240FD469C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_240FD488C();
      sub_240FD44DC();
      result = sub_240FD48BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_240FD2994(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_240FD2734(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_240FD2B14();
      goto LABEL_16;
    }

    sub_240FD2C70(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_240FD488C();
  sub_240FD44DC();
  result = sub_240FD48BC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_240FD47FC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_240FD480C();
  __break(1u);
  return result;
}

void *sub_240FD2B14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E910, &unk_240FD5D90);
  v2 = *v0;
  v3 = sub_240FD468C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_240FD2C70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E910, &unk_240FD5D90);
  result = sub_240FD469C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_240FD488C();

      sub_240FD44DC();
      result = sub_240FD48BC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_240FD2EA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245CD6590](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_240FD25E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for ATSpotlightMailRetriever()
{
  result = qword_27E51E8E8;
  if (!qword_27E51E8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_240FD2FEC()
{
  result = qword_27E51E900;
  if (!qword_27E51E900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E8F8, &qword_240FD5D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E900);
  }

  return result;
}

unint64_t sub_240FD3050()
{
  result = qword_27E51E908;
  if (!qword_27E51E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E908);
  }

  return result;
}

uint64_t ATAccessibility.systemAXApp.getter()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement;
  v2 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement);
  }

  else
  {
    v4 = [objc_opt_self() systemWideElement];
    if (!v4)
    {
      sub_240FBA648();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0;
      goto LABEL_8;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;

    v3 = v6;
    v2 = 0;
  }

  v7 = v2;
  v8 = [v3 systemApplication];

  result = v8;
  if (v8)
  {
    return result;
  }

  sub_240FBA648();
  swift_allocError();
  *v10 = xmmword_240FD5DA0;
LABEL_8:
  *(v10 + 16) = 7;
  return swift_willThrow();
}

uint64_t ATAccessibility.currentAXApps.getter()
{
  v2 = ATAccessibility.systemAXApp.getter();
  if (!v1)
  {
    v3 = v2;
    v4 = [v2 currentApplications];

    if (!v4 || (v5 = sub_240FD453C(), v4, v0 = sub_240FD328C(v5), , !v0))
    {
      sub_240FBA648();
      v0 = swift_allocError();
      *v6 = xmmword_240FD5DB0;
      *(v6 + 16) = 7;
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_240FD328C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_240FD471C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_240FB9F6C(i, v6);
    sub_240FD40EC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_240FD46FC();
    v4 = *(v7 + 16);
    sub_240FD472C();
    sub_240FD473C();
    sub_240FD470C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

Swift::String __swiftcall ATAccessibility.onScreenText()()
{
  v2 = ATAccessibility.systemAXApp.getter();
  v3 = [v2 currentApplications];

  if (v3 && (v4 = sub_240FD453C(), v3, v5 = sub_240FD328C(v4), , v5))
  {
    v6 = v5;
    v105 = 0;
    v106 = 0xE000000000000000;
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_102:
      v95 = v6;
      v8 = sub_240FD476C();
      v6 = v95;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_7:
        v9 = 0;
        v97 = v6;
        v100 = v6 + 32;
        v101 = v6 & 0xC000000000000001;
        v98 = v8;
        v99 = v7;
        while (1)
        {
          if (v101)
          {
            v6 = MEMORY[0x245CD66B0](v9, v97);
          }

          else
          {
            if (v9 >= *(v7 + 16))
            {
              goto LABEL_97;
            }

            v6 = *(v100 + 8 * v9);
          }

          v13 = v6;
          v14 = __OFADD__(v9, 1);
          v15 = v9 + 1;
          if (v14)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

          v0 = [v6 label];
          if (!v0)
          {
            goto LABEL_106;
          }

          v16 = v0;
          v17 = sub_240FD449C();
          v19 = v18;

          strcpy(v104, "App label: ");
          HIDWORD(v104[1]) = -352321536;
          MEMORY[0x245CD64D0](v17, v19);

          MEMORY[0x245CD64D0](10, 0xE100000000000000);

          MEMORY[0x245CD64D0](v104[0], v104[1]);

          v0 = [v13 bundleId];
          if (!v0)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v20 = v0;
          v21 = sub_240FD449C();
          v23 = v22;

          strcpy(v104, "App bundleid: ");
          HIBYTE(v104[1]) = -18;
          MEMORY[0x245CD64D0](v21, v23);

          MEMORY[0x245CD64D0](10, 0xE100000000000000);

          MEMORY[0x245CD64D0](v104[0], v104[1]);

          v0 = [v13 processName];
          if (!v0)
          {
            __break(1u);
LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

          v24 = v0;
          v25 = sub_240FD449C();
          v27 = v26;

          v104[0] = 0xD000000000000011;
          v104[1] = 0x8000000240FD6BE0;
          MEMORY[0x245CD64D0](v25, v27);

          MEMORY[0x245CD64D0](10, 0xE100000000000000);

          MEMORY[0x245CD64D0](0xD000000000000011, 0x8000000240FD6BE0);

          v6 = [v13 visibleElements];
          if (v6)
          {
            v28 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (!(v7 >> 62))
            {
              goto LABEL_18;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (!(MEMORY[0x277D84F90] >> 62))
            {
LABEL_18:
              v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_19;
            }
          }

          v6 = sub_240FD476C();
          v29 = v6;
LABEL_19:
          v103 = v13;
          v102 = v15;
          if (v29)
          {
            if (v29 < 1)
            {
              goto LABEL_98;
            }

            v30 = 0;
            v31 = MEMORY[0x277D84F90];
            do
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v32 = MEMORY[0x245CD66B0](v30, v7);
              }

              else
              {
                v32 = *(v7 + 8 * v30 + 32);
              }

              v33 = v32;
              v34 = [v32 label];
              if (v34)
              {
                v35 = v34;
                v36 = sub_240FD449C();
                v38 = v37;
              }

              else
              {
                v36 = 0;
                v38 = 0xE000000000000000;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_240FB6B4C(0, *(v31 + 2) + 1, 1, v31);
              }

              v40 = *(v31 + 2);
              v39 = *(v31 + 3);
              if (v40 >= v39 >> 1)
              {
                v31 = sub_240FB6B4C((v39 > 1), v40 + 1, 1, v31);
              }

              ++v30;

              *(v31 + 2) = v40 + 1;
              v41 = &v31[16 * v40];
              *(v41 + 4) = v36;
              *(v41 + 5) = v38;
            }

            while (v29 != v30);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
          sub_240FC5268();
          v42 = sub_240FD444C();
          v44 = v43;

          v104[0] = 0xD000000000000013;
          v104[1] = 0x8000000240FD6C00;
          MEMORY[0x245CD64D0](v42, v44);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD000000000000013, 0x8000000240FD6C00);

          v6 = [v103 explorerElements];
          if (v6)
          {
            v45 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (v7 >> 62)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (MEMORY[0x277D84F90] >> 62)
            {
LABEL_54:
              v6 = sub_240FD476C();
              v46 = v6;
              if (!v6)
              {
                goto LABEL_55;
              }

              goto LABEL_39;
            }
          }

          v46 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v46)
          {
            goto LABEL_55;
          }

LABEL_39:
          if (v46 < 1)
          {
            goto LABEL_99;
          }

          v47 = 0;
          v48 = MEMORY[0x277D84F90];
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x245CD66B0](v47, v7);
            }

            else
            {
              v49 = *(v7 + 8 * v47 + 32);
            }

            v50 = v49;
            v51 = [v49 label];
            if (v51)
            {
              v52 = v51;
              v53 = sub_240FD449C();
              v55 = v54;
            }

            else
            {
              v53 = 0;
              v55 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_240FB6B4C(0, *(v48 + 2) + 1, 1, v48);
            }

            v57 = *(v48 + 2);
            v56 = *(v48 + 3);
            if (v57 >= v56 >> 1)
            {
              v48 = sub_240FB6B4C((v56 > 1), v57 + 1, 1, v48);
            }

            ++v47;

            *(v48 + 2) = v57 + 1;
            v58 = &v48[16 * v57];
            *(v58 + 4) = v53;
            *(v58 + 5) = v55;
          }

          while (v46 != v47);
LABEL_55:

          v59 = sub_240FD444C();
          v61 = v60;

          v104[0] = 0xD00000000000001CLL;
          v104[1] = 0x8000000240FD6C20;
          MEMORY[0x245CD64D0](v59, v61);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD00000000000001CLL, 0x8000000240FD6C20);

          v6 = [v103 nativeFocusableElements];
          if (v6)
          {
            v62 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (v7 >> 62)
            {
              goto LABEL_73;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (MEMORY[0x277D84F90] >> 62)
            {
LABEL_73:
              v6 = sub_240FD476C();
              v63 = v6;
              if (!v6)
              {
                goto LABEL_74;
              }

              goto LABEL_58;
            }
          }

          v63 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v63)
          {
            goto LABEL_74;
          }

LABEL_58:
          if (v63 < 1)
          {
            goto LABEL_100;
          }

          v64 = 0;
          v65 = MEMORY[0x277D84F90];
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v66 = MEMORY[0x245CD66B0](v64, v7);
            }

            else
            {
              v66 = *(v7 + 8 * v64 + 32);
            }

            v67 = v66;
            v68 = [v66 label];
            if (v68)
            {
              v69 = v68;
              v70 = sub_240FD449C();
              v72 = v71;
            }

            else
            {
              v70 = 0;
              v72 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_240FB6B4C(0, *(v65 + 2) + 1, 1, v65);
            }

            v74 = *(v65 + 2);
            v73 = *(v65 + 3);
            if (v74 >= v73 >> 1)
            {
              v65 = sub_240FB6B4C((v73 > 1), v74 + 1, 1, v65);
            }

            ++v64;

            *(v65 + 2) = v74 + 1;
            v75 = &v65[16 * v74];
            *(v75 + 4) = v70;
            *(v75 + 5) = v72;
          }

          while (v63 != v64);
LABEL_74:

          v76 = sub_240FD444C();
          v78 = v77;

          v104[0] = 0xD00000000000001BLL;
          v104[1] = 0x8000000240FD6C40;
          MEMORY[0x245CD64D0](v76, v78);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD00000000000001BLL, 0x8000000240FD6C40);

          v6 = [v103 elementsWithSemanticContext];
          if (v6)
          {
            v79 = v6;
            sub_240FD40EC();
            v7 = sub_240FD453C();

            if (!(v7 >> 62))
            {
              goto LABEL_76;
            }
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
            if (!(MEMORY[0x277D84F90] >> 62))
            {
LABEL_76:
              v80 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v80)
              {
                goto LABEL_8;
              }

              goto LABEL_77;
            }
          }

          v6 = sub_240FD476C();
          v80 = v6;
          if (!v6)
          {
            goto LABEL_8;
          }

LABEL_77:
          if (v80 < 1)
          {
            goto LABEL_101;
          }

          v81 = 0;
          v82 = MEMORY[0x277D84F90];
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v83 = MEMORY[0x245CD66B0](v81, v7);
            }

            else
            {
              v83 = *(v7 + 8 * v81 + 32);
            }

            v84 = v83;
            v85 = [v83 label];
            if (v85)
            {
              v86 = v85;
              v87 = sub_240FD449C();
              v89 = v88;
            }

            else
            {
              v87 = 0;
              v89 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_240FB6B4C(0, *(v82 + 2) + 1, 1, v82);
            }

            v91 = *(v82 + 2);
            v90 = *(v82 + 3);
            if (v91 >= v90 >> 1)
            {
              v82 = sub_240FB6B4C((v90 > 1), v91 + 1, 1, v82);
            }

            ++v81;

            *(v82 + 2) = v91 + 1;
            v92 = &v82[16 * v91];
            *(v92 + 4) = v87;
            *(v92 + 5) = v89;
          }

          while (v80 != v81);
LABEL_8:

          v10 = sub_240FD444C();
          v12 = v11;

          v104[0] = 0xD000000000000027;
          v104[1] = 0x8000000240FD6C60;
          MEMORY[0x245CD64D0](v10, v12);

          MEMORY[0x245CD64D0](2570, 0xE200000000000000);

          MEMORY[0x245CD64D0](0xD000000000000027, 0x8000000240FD6C60);

          v7 = v99;
          v9 = v102;
          if (v102 == v98)
          {
            v93 = v105;
            v94 = v106;
            goto LABEL_104;
          }
        }
      }
    }

    v93 = 0;
    v94 = 0xE000000000000000;
LABEL_104:

    v0 = v93;
    v1 = v94;
  }

  else
  {
    v0 = 0;
    v1 = 0xE000000000000000;
  }

LABEL_108:
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

id ATAccessibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATAccessibility.init()()
{
  *&v0[OBJC_IVAR____TtC15ArchetypeEngine15ATAccessibility__cachedSystemWideElement] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATAccessibility();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ATAccessibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATAccessibility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_240FD40EC()
{
  result = qword_27E51E8D8;
  if (!qword_27E51E8D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51E8D8);
  }

  return result;
}