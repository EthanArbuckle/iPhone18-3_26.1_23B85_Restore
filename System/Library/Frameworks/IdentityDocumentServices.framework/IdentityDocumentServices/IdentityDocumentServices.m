uint64_t IdentityDocumentPresentmentError.init(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238A1F750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = sub_238A1F770();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v11, *MEMORY[0x277CFF920], v4);
  MEMORY[0x23EE6D770](a1);
  sub_238A15A90(MEMORY[0x277D84F90]);
  sub_238A1F780();
  sub_238A1F760();
  v17 = (*(v5 + 88))(v9, v4);
  if (v17 == *MEMORY[0x277CFFE18] || v17 == *MEMORY[0x277CFF998])
  {
    goto LABEL_6;
  }

  if (v17 == *MEMORY[0x277CFFA38] || v17 == *MEMORY[0x277CFFE10])
  {
    goto LABEL_12;
  }

  v19 = 1;
  if (v17 == *MEMORY[0x277CFFC60] || v17 == *MEMORY[0x277CFFBC0] || v17 == *MEMORY[0x277CFFC08])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFCF0])
  {
    goto LABEL_12;
  }

  v19 = 3;
  if (v17 == *MEMORY[0x277CFFBD8] || v17 == *MEMORY[0x277CFFBB8] || v17 == *MEMORY[0x277CFFC58] || v17 == *MEMORY[0x277CFFD80])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFC98])
  {
    goto LABEL_12;
  }

  if (v17 == *MEMORY[0x277CFFD58])
  {
LABEL_28:
    v19 = 1;
    goto LABEL_13;
  }

  v19 = 0;
  if (v17 == *MEMORY[0x277CFFAB8] || v17 == *MEMORY[0x277CFFA48])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFAA8])
  {
LABEL_6:
    v19 = 3;
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFCE8])
  {
    v19 = 2;
    goto LABEL_13;
  }

  v19 = 1;
  if (v17 == *MEMORY[0x277CFF910])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFB88])
  {
    goto LABEL_13;
  }

  v19 = 0;
  if (v17 == *MEMORY[0x277CFFB68] || v17 == *MEMORY[0x277CFFD78] || v17 == *MEMORY[0x277CFFCB0] || v17 == *MEMORY[0x277CFFAF0])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFD00])
  {
    goto LABEL_28;
  }

  v19 = 0;
  if (v17 == *MEMORY[0x277CFFCC0])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFC80])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFC38])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFD98])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFD20])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFD28])
  {
    goto LABEL_13;
  }

  v19 = 1;
  if (v17 == *MEMORY[0x277CFFDF0] || v17 == *MEMORY[0x277CFFCC8] || v17 == *MEMORY[0x277CFFDF8] || v17 == *MEMORY[0x277CFFC40])
  {
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFBF8])
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  if (v17 == *MEMORY[0x277CFFC50])
  {
    goto LABEL_6;
  }

  if (v17 != *MEMORY[0x277CFFD30] && v17 != *MEMORY[0x277CFFBF0] && v17 != *MEMORY[0x277CFFAE8] && v17 != *MEMORY[0x277CFFCB8] && v17 != *MEMORY[0x277CFFD50] && v17 != *MEMORY[0x277CFFE08] && v17 != *MEMORY[0x277CFFDA8] && v17 != *MEMORY[0x277CFFCE0])
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_12;
  }

LABEL_13:
  v21 = sub_238A15C6C();
  if (!v22)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v21 = sub_238A1F640();
      }

      else
      {
        v21 = sub_238A1F630();
      }
    }

    else if (v19)
    {
      v21 = sub_238A1F600();
    }

    else
    {
      v21 = sub_238A1F5F0();
    }
  }

  v23 = v21;
  v24 = v22;
  MEMORY[0x23EE6D760](a1);
  result = (*(v13 + 8))(v16, v12);
  *a2 = v19;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_238A15860(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_238A1F740();
  sub_238A15FFC(&qword_27DF499A0);
  v5 = sub_238A1F900();

  return sub_238A158E4(a1, v5);
}

unint64_t sub_238A158E4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_238A1F740();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_238A15FFC(&qword_27DF499A8);
      v16 = sub_238A1F930();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_238A15A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49990, &qword_238A1FDD8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49998, &unk_238A1FDE0);
    v8 = sub_238A1FA30();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_238A15F74(v10, v6);
      result = sub_238A15860(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_238A1F740();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_238A15FE4(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_238A15C6C()
{
  v0 = sub_238A1F750();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A1F760();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277CFFC60] || v5 == *MEMORY[0x277CFFBC0])
  {
    return sub_238A1F620();
  }

  if (v5 == *MEMORY[0x277CFFC08])
  {
    return sub_238A1F6E0();
  }

  if (v5 == *MEMORY[0x277CFF910])
  {
    return sub_238A1F5C0();
  }

  if (v5 == *MEMORY[0x277CFFD00])
  {
    return sub_238A1F6C0();
  }

  if (v5 == *MEMORY[0x277CFFDF0])
  {
    return sub_238A1F6E0();
  }

  if (v5 == *MEMORY[0x277CFFCC8] || v5 == *MEMORY[0x277CFFDF8])
  {
    return sub_238A1F6B0();
  }

  if (v5 == *MEMORY[0x277CFFC40])
  {
    return sub_238A1F680();
  }

  if (v5 == *MEMORY[0x277CFFBF8])
  {
    return sub_238A1F660();
  }

  if (v5 == *MEMORY[0x277CFFC50])
  {
    return sub_238A1F690();
  }

  if (v5 == *MEMORY[0x277CFFD30])
  {
    return sub_238A1F6F0();
  }

  if (v5 == *MEMORY[0x277CFFBF0])
  {
    return sub_238A1F650();
  }

  if (v5 == *MEMORY[0x277CFFAE8])
  {
    return sub_238A1F5D0();
  }

  if (v5 == *MEMORY[0x277CFFCB8])
  {
    return sub_238A1F6A0();
  }

  if (v5 == *MEMORY[0x277CFFD50])
  {
    return sub_238A1F700();
  }

  if (v5 == *MEMORY[0x277CFFE08])
  {
    return sub_238A1F720();
  }

  if (v5 == *MEMORY[0x277CFFDA8])
  {
    return sub_238A1F610();
  }

  (*(v1 + 8))(v4, v0);
  return 0;
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

uint64_t sub_238A15F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49990, &qword_238A1FDD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A15FE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238A15FFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_238A1F740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238A16040(uint64_t a1)
{
  v2 = sub_238A1F7A0();
  v62 = *(v2 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B0, &qword_238A1FE08);
  v5 = *(*(v75 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v57 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B8, &qword_238A1FE10);
  v10 = *(*(v73 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v57 - v13;
  v14 = sub_238A1F490();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  sub_238A1F5A0();
  sub_238A1F540();
  sub_238A1F560();
  v72 = sub_238A16734();
  result = sub_238A1F920();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v58 = a1;
  v60 = v2;
  v71 = v24;
  v26 = v15[4];
  v27 = v74;
  v66 = v22;
  v26(v74, v22, v14);
  v28 = v75;
  v29 = v27 + *(v75 + 48);
  v67 = v19;
  v26(v29, v19, v14);
  sub_238A1678C(v27, v8);
  v70 = *(v28 + 48);
  v30 = v76;
  v26(v76, v8, v14);
  v31 = v15[1];
  v31(&v70[v8], v14);
  sub_238A167FC(v27, v8);
  v32 = *(v28 + 48);
  v59 = *(v73 + 36);
  v63 = v15 + 4;
  v64 = v26;
  v26((v30 + v59), &v8[v32], v14);
  v65 = v8;
  v69 = v31;
  v70 = (v15 + 1);
  v31(v8, v14);
  v33 = v71;
  if (sub_238A1F920())
  {
    v34 = v76;
    v35 = sub_238A1F910();
    sub_238A17D1C(v34, &qword_27DF499B8, &qword_238A1FE10);
    if (v35)
    {
      v69(v33, v14);
      return sub_238A168C0();
    }
  }

  else
  {
    sub_238A17D1C(v76, &qword_27DF499B8, &qword_238A1FE10);
  }

  v36 = v66;
  sub_238A1F560();
  v37 = v67;
  sub_238A1F550();
  result = sub_238A1F920();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = v74;
  v39 = v64;
  v64(v74, v36, v14);
  v40 = v75;
  v39(v38 + *(v75 + 48), v37, v14);
  v41 = v65;
  sub_238A1678C(v38, v65);
  v42 = *(v40 + 48);
  v43 = v68;
  v39(v68, v41, v14);
  v44 = v69;
  v69((v41 + v42), v14);
  v45 = v38;
  v46 = v71;
  sub_238A167FC(v45, v41);
  v47 = *(v40 + 48);
  v76 = *(v73 + 36);
  v39(v43 + v76, (v41 + v47), v14);
  v44(v41, v14);
  if (sub_238A1F920())
  {
    v48 = sub_238A1F910();
    sub_238A17D1C(v43, &qword_27DF499B8, &qword_238A1FE10);
    v44(v46, v14);
    if (v48)
    {
      return sub_238A16CF8(v58);
    }
  }

  else
  {
    sub_238A17D1C(v43, &qword_27DF499B8, &qword_238A1FE10);
    v44(v46, v14);
  }

  v49 = v61;
  sub_238A1F470();
  v50 = sub_238A1F790();
  v51 = sub_238A1F9E0();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_238A14000, v50, v51, "Encountered a presentment request with an unknown version", v52, 2u);
    MEMORY[0x23EE6D820](v52, -1, -1);
  }

  (*(v62 + 8))(v49, v60);
  v53 = sub_238A1F670();
  v55 = v54;
  sub_238A1686C();
  swift_allocError();
  *v56 = 1;
  *(v56 + 8) = v53;
  *(v56 + 16) = v55;
  return swift_willThrow();
}

unint64_t sub_238A16734()
{
  result = qword_27DF499C0;
  if (!qword_27DF499C0)
  {
    sub_238A1F490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF499C0);
  }

  return result;
}

uint64_t sub_238A1678C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B0, &qword_238A1FE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A167FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B0, &qword_238A1FE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238A1686C()
{
  result = qword_27DF499C8;
  if (!qword_27DF499C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF499C8);
  }

  return result;
}

char *sub_238A168C0()
{
  v37 = sub_238A1F4C0();
  v0 = *(v37 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v37);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238A1F7A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A1F470();
  v9 = sub_238A1F790();
  v10 = sub_238A1F9E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_238A14000, v9, v10, "Parsing first edition presentment request", v11, 2u);
    MEMORY[0x23EE6D820](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = sub_238A1F530();
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v43 = MEMORY[0x277D84F90];
    v15 = v12;
    result = sub_238A187C4(0, v13, 0);
    v17 = 0;
    v18 = v43;
    *&v40 = v15 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    v38 = v0 + 8;
    v39 = (v0 + 16);
    v19 = v37;
    while (v17 < *(v15 + 16))
    {
      (*(v0 + 16))(v3, v40 + *(v0 + 72) * v17, v19);
      sub_238A17154(&v41);
      result = (*(v0 + 8))(v3, v19);
      v20 = v41;
      v21 = v42;
      v43 = v18;
      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        v36 = v42;
        result = sub_238A187C4((v22 > 1), v23 + 1, 1);
        v21 = v36;
        v19 = v37;
        v18 = v43;
      }

      ++v17;
      v18[2] = v23 + 1;
      v24 = &v18[3 * v23];
      v24[4] = v20;
      *(v24 + 5) = v21;
      if (v13 == v17)
      {

        v14 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D0, &unk_238A1FEF0);
    v25 = swift_allocObject();
    v40 = xmmword_238A1FDF0;
    *(v25 + 16) = xmmword_238A1FDF0;
    v26 = v18[2];
    if (v26)
    {
      v39 = v25;
      v41 = v14;
      sub_238A1878C(0, v26, 0);
      v27 = v41;
      v28 = v18 + 6;
      do
      {
        v30 = *(v28 - 2);
        v29 = *(v28 - 1);
        v31 = *v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D8, &qword_238A1FE18);
        v32 = swift_allocObject();
        *(v32 + 16) = v40;
        *(v32 + 32) = v30;
        *(v32 + 40) = v29;
        *(v32 + 48) = v31;
        v41 = v27;
        v33 = *(v27 + 16);
        v34 = *(v27 + 24);

        if (v33 >= v34 >> 1)
        {
          sub_238A1878C((v34 > 1), v33 + 1, 1);
          v27 = v41;
        }

        *(v27 + 16) = v33 + 1;
        *(v27 + 8 * v33 + 32) = v32;
        v28 += 3;
        --v26;
      }

      while (v26);

      result = v39;
    }

    else
    {
      v35 = v25;

      result = v35;
      v27 = MEMORY[0x277D84F90];
    }

    *(result + 4) = v27;
    result[40] = 1;
  }

  return result;
}

uint64_t sub_238A16CF8(uint64_t a1)
{
  v40 = a1;
  v1 = sub_238A1F510();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499F8, &qword_238A1FE38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  v9 = sub_238A1F7A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  sub_238A1F470();
  v17 = sub_238A1F790();
  v18 = sub_238A1F9E0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v9;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_238A14000, v17, v18, "Parsing second edition presentment request", v20, 2u);
    v21 = v20;
    v9 = v19;
    MEMORY[0x23EE6D820](v21, -1, -1);
  }

  v22 = *(v10 + 8);
  v22(v16, v9);
  sub_238A1F520();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A00, &qword_238A1FE40);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    sub_238A17D1C(v8, &qword_27DF499F8, &qword_238A1FE38);
  }

  else
  {
    sub_238A1F480();
    (*(v24 + 8))(v8, v23);
    v25 = sub_238A1F500();
    v26 = (*(v38 + 8))(v4, v39);
    if (v25)
    {
      MEMORY[0x28223BE20](v26);
      *(&v37 - 2) = v40;
      v27 = sub_238A175E8(sub_238A17D7C, (&v37 - 4), v25);

      return v27;
    }
  }

  sub_238A1F470();
  v28 = sub_238A1F790();
  v29 = sub_238A1F9E0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v9;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_238A14000, v28, v29, "Encountered a second edition presentment request without any use cases", v31, 2u);
    v32 = v31;
    v9 = v30;
    MEMORY[0x23EE6D820](v32, -1, -1);
  }

  v22(v14, v9);
  v33 = sub_238A1F610();
  v27 = v34;
  sub_238A1686C();
  swift_allocError();
  *v35 = 1;
  *(v35 + 8) = v33;
  *(v35 + 16) = v27;
  swift_willThrow();
  return v27;
}

uint64_t sub_238A17154@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v72 = sub_238A1F4F0();
  v1 = *(v72 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v72);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499E0, &qword_238A1FE20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  sub_238A1F4B0();
  sub_238A1F480();
  v16 = *(v9 + 8);
  v16(v15, v8);
  v17 = sub_238A1F4E0();
  v63 = v18;
  v64 = v17;
  v19 = *(v1 + 8);
  v20 = v7;
  v21 = v72;
  v19(v20, v72);
  sub_238A1F4B0();
  sub_238A1F480();
  v16(v13, v8);
  v22 = sub_238A1F4D0();
  v19(v5, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499E8, &qword_238A1FE28);
  result = sub_238A1FA20();
  v24 = result;
  v25 = 0;
  v26 = *(v22 + 64);
  v66 = v22 + 64;
  v68 = result;
  v69 = v22;
  v27 = 1 << *(v22 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v67 = result + 64;
  if (v29)
  {
    while (1)
    {
      v31 = __clz(__rbit64(v29));
      v70 = (v29 - 1) & v29;
LABEL_11:
      v34 = v31 | (v25 << 6);
      v35 = *(v69 + 56);
      v36 = (*(v69 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v71 = v38;
      v72 = v37;
      v39 = *(v35 + 8 * v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499F0, &qword_238A1FE30);
      result = sub_238A1FA20();
      v40 = result;
      v41 = 0;
      v42 = 1 << *(v39 + 32);
      v43 = v42 < 64 ? ~(-1 << v42) : -1;
      v44 = v43 & *(v39 + 64);
      v45 = (v42 + 63) >> 6;
      v46 = result + 64;
      if (v44)
      {
        break;
      }

LABEL_16:
      v48 = v41;
      while (1)
      {
        v41 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v41 >= v45)
        {
          break;
        }

        v49 = *(v39 + 64 + 8 * v41);
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v44 = (v49 - 1) & v49;
          goto LABEL_21;
        }
      }

      v24 = v68;
      *(v67 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v58 = (v24[6] + 16 * v34);
      result = v72;
      *v58 = v71;
      v58[1] = result;
      *(v24[7] + 8 * v34) = v40;
      v59 = v24[2];
      v56 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v56)
      {
        goto LABEL_31;
      }

      v24[2] = v60;

      v29 = v70;
      if (!v70)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v47 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
LABEL_21:
      v50 = v47 | (v41 << 6);
      v51 = (*(v39 + 48) + 16 * v50);
      v52 = *(*(v39 + 56) + v50);
      v53 = *v51;
      result = v51[1];
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v54 = (v40[6] + 16 * v50);
      *v54 = v53;
      v54[1] = result;
      *(v40[7] + v50) = v52;
      v55 = v40[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        break;
      }

      v40[2] = v57;

      if (!v44)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v30)
      {

        v61 = v65;
        v62 = v63;
        *v65 = v64;
        v61[1] = v62;
        v61[2] = v24;
        return result;
      }

      v33 = *(v66 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v70 = (v33 - 1) & v33;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_238A175E8(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = MEMORY[0x277D84F90];
    sub_238A187E4(0, v4, 0);
    v5 = v20;
    v7 = *(sub_238A1F590() - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    while (1)
    {
      a1(&v18, v8, &v17);
      if (v3)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_238A187E4((v12 > 1), v13 + 1, 1);
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v8 += v9;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_238A17750(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    sub_238A1878C(0, v5, 0);
    v6 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(&v16, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16;
      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_238A1878C((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_238A17880(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];
    sub_238A187C4(0, v4, 0);
    v5 = v21;
    v8 = (a3 + 32);
    while (1)
    {
      v9 = *v8++;
      v18 = v9;
      a1(&v19, &v18, &v17);
      if (v3)
      {
        break;
      }

      v10 = v19;
      v11 = v20;
      v21 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v20;
        sub_238A187C4((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v5 = v21;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_238A179A8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_238A1F570();
  v10[2] = a1;
  v8 = sub_238A17750(sub_238A17D9C, v10, v7);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_238A1F580();
    *a3 = v8;
    *(a3 + 8) = result & 1;
  }

  return result;
}

uint64_t sub_238A17A54@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v26 = a2;
  v24 = a3;
  v25 = sub_238A1F7A0();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238A1F4C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(sub_238A1F530() + 16);

  if ((v13 & 0x8000000000000000) != 0 || v13 >= v14)
  {
    sub_238A1F470();
    v16 = sub_238A1F790();
    v17 = sub_238A1F9E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v13;
      _os_log_impl(&dword_238A14000, v16, v17, "Raw request validator received a document request index %ld that does not refer to a document request.", v18, 0xCu);
      MEMORY[0x23EE6D820](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v25);
    v19 = sub_238A1F710();
    v21 = v20;
    sub_238A1686C();
    v22 = swift_allocError();
    *v23 = 1;
    *(v23 + 8) = v19;
    *(v23 + 16) = v21;
    result = swift_willThrow();
    *v26 = v22;
  }

  else
  {
    result = sub_238A1F530();
    if (v13 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v9 + 16))(v12, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v8);

      sub_238A17154(v24);
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_238A17D1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238A17D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v9[2] = *(v3 + 16);
  result = sub_238A17880(sub_238A17E04, v9, v7);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_238A17E24()
{
  v0 = sub_238A1F870();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A1F880();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277CFF1D0])
  {
    goto LABEL_2;
  }

  if (v5 == *MEMORY[0x277CFF1C8])
  {
    v6 = 1;
  }

  else if (v5 == *MEMORY[0x277CFF1B8])
  {
    v6 = 3;
  }

  else
  {
    if (v5 != *MEMORY[0x277CFF1C0])
    {
      (*(v1 + 8))(v4, v0);
LABEL_2:
      v6 = 0;
      goto LABEL_9;
    }

    v6 = 2;
  }

LABEL_9:
  LOBYTE(v14) = v6;
  v7 = sub_238A1F950();
  v14 = v7;
  v15 = v8;
  v9 = sub_238A1F860();
  if (!v10)
  {
    return v7;
  }

  v12 = 10272;
  v13 = 0xE200000000000000;
  MEMORY[0x23EE6D460](v9);

  MEMORY[0x23EE6D460](41, 0xE100000000000000);
  MEMORY[0x23EE6D460](v12, v13);

  return v14;
}

uint64_t IdentityDocumentWebPresentmentRawRequestValidator.validateISO18013MobileDocumentRequest(_:origin:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t *a3@<X8>)
{
  v67 = a1;
  v62 = a2;
  v59 = a3;
  v3 = sub_238A1F7A0();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238A1F5B0();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A08, &unk_238A1FE50);
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v14 = sub_238A1F460();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  v21 = sub_238A1F3F0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_238A1F3E0();
  sub_238A186CC();
  v24 = v68;
  sub_238A1F3D0();
  if (v24)
  {

    v25 = sub_238A1F6D0();
    v27 = v26;
    sub_238A1686C();
    v28 = swift_allocError();
    *v29 = 1;
    *(v29 + 8) = v25;
    *(v29 + 16) = v27;
    swift_willThrow();
    MEMORY[0x23EE6D760](v24);
    v72 = v28;
    MEMORY[0x23EE6D770](v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
    if (swift_dynamicCast())
    {
      MEMORY[0x23EE6D760](v28);
      v34 = v69;
      v35 = v70;
      v36 = v71;
      sub_238A1686C();
      swift_allocError();
      *v37 = v34;
      *(v37 + 8) = v35;
      *(v37 + 16) = v36;
      swift_willThrow();
      v38 = v72;
    }

    else
    {
      MEMORY[0x23EE6D760](v72);
      sub_238A1F470();
      MEMORY[0x23EE6D770](v28);
      v39 = sub_238A1F790();
      v40 = sub_238A1F9D0();
      MEMORY[0x23EE6D760](v28);
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        MEMORY[0x23EE6D770](v28);
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v43;
        *v42 = v43;
        _os_log_impl(&dword_238A14000, v39, v40, "IdentityDocumentWebPresentmentRawRequestValidator validateISO18013MobileDocumentRequest received internal error %@. Mapping to IdentityDocumentPresentmentError error", v41, 0xCu);
        sub_238A18724(v42);
        MEMORY[0x23EE6D820](v42, -1, -1);
        MEMORY[0x23EE6D820](v41, -1, -1);
      }

      (*(v64 + 8))(v66, v65);
      sub_238A1686C();
      swift_allocError();
      v45 = v44;
      MEMORY[0x23EE6D770](v28);
      IdentityDocumentPresentmentError.init(error:)(v28, v45);
      swift_willThrow();
      v38 = v28;
    }

    return MEMORY[0x23EE6D760](v38);
  }

  else
  {
    v67 = v10;
    v68 = v6;

    v30 = v63;
    (*(v63 + 32))(v20, v18, v14);
    v31 = sub_238A1F730();
    v62 = v20;
    sub_238A1F450();
    v32 = v9;
    v33 = v67;
    sub_238A1F4A0();
    (*(v60 + 8))(v13, v33);
    v47 = sub_238A16040(v32);
    v48 = v62;
    (*(v61 + 8))(v32, v68);
    v49 = *(v31 + 16);
    if (v49)
    {
      v68 = v47;
      v69 = MEMORY[0x277D84F90];
      sub_238A18804(0, v49, 0);
      v50 = 32;
      v51 = v69;
      do
      {
        v52 = *(v31 + v50);

        v54 = MEMORY[0x23EE6D4A0](v53);
        v69 = v51;
        v56 = *(v51 + 16);
        v55 = *(v51 + 24);
        if (v56 >= v55 >> 1)
        {
          v67 = v54;
          sub_238A18804((v55 > 1), v56 + 1, 1);
          v54 = v67;
          v51 = v69;
        }

        *(v51 + 16) = v56 + 1;
        *(v51 + 8 * v56 + 32) = v54;
        v50 += 8;
        --v49;
      }

      while (v49);
      (*(v63 + 8))(v48, v14);

      v47 = v68;
    }

    else
    {

      result = (*(v30 + 8))(v48, v14);
      v51 = MEMORY[0x277D84F90];
    }

    v57 = v59;
    *v59 = v47;
    v57[1] = v51;
  }

  return result;
}

unint64_t sub_238A186CC()
{
  result = qword_27DF49A10;
  if (!qword_27DF49A10)
  {
    sub_238A1F460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A10);
  }

  return result;
}

uint64_t sub_238A18724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A20, &unk_238A1FE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_238A1878C(char *a1, int64_t a2, char a3)
{
  result = sub_238A18B6C(a1, a2, a3, *v3, &qword_27DF49A40, &unk_238A1FEE0);
  *v3 = result;
  return result;
}

char *sub_238A187C4(char *a1, int64_t a2, char a3)
{
  result = sub_238A18940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A187E4(char *a1, int64_t a2, char a3)
{
  result = sub_238A18A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A18804(char *a1, int64_t a2, char a3)
{
  result = sub_238A18B6C(a1, a2, a3, *v3, &qword_27DF49A38, &qword_238A1FED8);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentityDocumentWebPresentmentRawRequestValidator(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IdentityDocumentWebPresentmentRawRequestValidator(_WORD *result, int a2, int a3)
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

void *sub_238A18920(void *a1, int64_t a2, char a3)
{
  result = sub_238A18C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A18940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D8, &qword_238A1FE18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_238A18A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D0, &unk_238A1FEF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_238A18B6C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_238A18C78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A28, &qword_238A1FEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A30, &qword_238A1FED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

IdentityDocumentServices::ISO18013MobileDocumentRequest::PresentmentRequest __swiftcall ISO18013MobileDocumentRequest.PresentmentRequest.init(documentRequestSets:isMandatory:)(IdentityDocumentServices::ISO18013MobileDocumentRequest::PresentmentRequest documentRequestSets, Swift::Bool isMandatory)
{
  *v2 = documentRequestSets.documentRequestSets._rawValue;
  *(v2 + 8) = isMandatory;
  documentRequestSets.isMandatory = isMandatory;
  return documentRequestSets;
}

IdentityDocumentServices::ISO18013MobileDocumentRequest::DocumentRequest __swiftcall ISO18013MobileDocumentRequest.DocumentRequest.init(documentType:namespaces:)(Swift::String documentType, Swift::OpaquePointer namespaces)
{
  *v2 = documentType;
  *(v2 + 16) = namespaces;
  result.documentType = documentType;
  result.namespaces = namespaces;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.RequestAuthentication.init(authenticationCertificateChain:)@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EE6D4A0]();
  *a1 = result;
  return result;
}

IdentityDocumentServices::ISO18013MobileDocumentRequest __swiftcall ISO18013MobileDocumentRequest.init(presentmentRequests:requestAuthentications:)(Swift::OpaquePointer presentmentRequests, Swift::OpaquePointer requestAuthentications)
{
  v2->_rawValue = presentmentRequests._rawValue;
  v2[1]._rawValue = requestAuthentications._rawValue;
  result.requestAuthentications = requestAuthentications;
  result.presentmentRequests = presentmentRequests;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.presentmentRequests.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.requestAuthentications.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.RequestAuthentication.authenticationCertificateChain.setter()
{
  v1 = MEMORY[0x23EE6D4A0]();
  v2 = *v0;

  *v0 = v1;
  return result;
}

uint64_t (*ISO18013MobileDocumentRequest.RequestAuthentication.authenticationCertificateChain.modify(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  *a1 = sub_238A1F990();
  return sub_238A18F4C;
}

uint64_t sub_238A18F4C(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    v6 = MEMORY[0x23EE6D4A0](v5);
    v7 = *v3;

    *v3 = v6;
  }

  else
  {
    v9 = MEMORY[0x23EE6D4A0](*a1);
    v10 = *v3;

    *v3 = v9;
  }

  return result;
}

uint64_t ISO18013MobileDocumentRequest.PresentmentRequest.documentRequestSets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequestSet.requests.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequest.documentType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequest.documentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequest.namespaces.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_238A191B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_238A1F990();
  *a2 = result;
  return result;
}

uint64_t sub_238A191E0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  v5 = *a1;

  result = MEMORY[0x23EE6D4A0](v6);
  *a2 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238A19228(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238A19270(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_238A192F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238A1933C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238A1938C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238A193D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238A19434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238A1947C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO18013MobileDocumentRequest.ElementInfo(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013MobileDocumentRequest.ElementInfo(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ISO18013MobileDocumentResponse.responseData.getter()
{
  v1 = *v0;
  sub_238A19674(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_238A19674(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ISO18013MobileDocumentResponse.init(responseData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_238A196EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_238A19740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

IdentityDocumentServices::IdentityDocumentPresentmentError::Code_optional __swiftcall IdentityDocumentPresentmentError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238A19854()
{
  v1 = *v0;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v1);
  return sub_238A1FAA0();
}

uint64_t sub_238A198C8()
{
  v1 = *v0;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v1);
  return sub_238A1FAA0();
}

uint64_t IdentityDocumentPresentmentError.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static IdentityDocumentPresentmentError.Code.~= infix(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  MEMORY[0x23EE6D770](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  result = swift_dynamicCast();
  if (result)
  {

    return v2 == v4;
  }

  return result;
}

unint64_t sub_238A19A34()
{
  result = qword_27DF49A48;
  if (!qword_27DF49A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A48);
  }

  return result;
}

uint64_t sub_238A19A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238A19AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityDocumentPresentmentError.Code(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityDocumentPresentmentError.Code(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t IdentityDocumentWebPresentmentRawRequest.RequestType.hashValue.getter()
{
  sub_238A1FA80();
  MEMORY[0x23EE6D590](0);
  return sub_238A1FAA0();
}

uint64_t sub_238A19D00()
{
  sub_238A1FA80();
  MEMORY[0x23EE6D590](0);
  return sub_238A1FAA0();
}

uint64_t sub_238A19D6C()
{
  sub_238A1FA80();
  MEMORY[0x23EE6D590](0);
  return sub_238A1FAA0();
}

uint64_t IdentityDocumentWebPresentmentRawRequest.requestData.getter()
{
  v1 = *v0;
  sub_238A19674(*v0, *(v0 + 8));
  return v1;
}

uint64_t IdentityDocumentWebPresentmentRawRequest.requestData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_238A19E40(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_238A19E40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_238A19EC0()
{
  result = qword_27DF49A50;
  if (!qword_27DF49A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A50);
  }

  return result;
}

uint64_t IdentityDocumentProviderRegistrationStore.RegistrationError.hashValue.getter()
{
  v1 = *v0;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v1);
  return sub_238A1FAA0();
}

unint64_t sub_238A19FC8()
{
  result = qword_27DF49A58;
  if (!qword_27DF49A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A58);
  }

  return result;
}

unint64_t sub_238A1A020()
{
  result = qword_27DF49A60;
  if (!qword_27DF49A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A60);
  }

  return result;
}

uint64_t _s14descr284B596F1O17RegistrationErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr284B596F1O17RegistrationErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238A1A1C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_238A1F8A0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_238A1F7A0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1A2F8, v1, 0);
}

uint64_t sub_238A1A2F8()
{
  v18 = v0;
  v1 = v0[11];
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_238A1DCFC(0x737574617473, 0xE600000000000000, &v17);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s called", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EE6D820](v9, -1, -1);
    MEMORY[0x23EE6D820](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[12] = v10;
  v11 = *(v0[3] + 112);
  v12 = *(MEMORY[0x277CFF1F8] + 4);
  v16 = (*MEMORY[0x277CFF1F8] + MEMORY[0x277CFF1F8]);
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_238A1A4AC;
  v14 = v0[7];

  return v16(v14);
}

uint64_t sub_238A1A4AC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_238A1A724;
  }

  else
  {
    v6 = sub_238A1A5D8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238A1A5D8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v3 + 32))(v1, *(v0 + 56), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277CFF1D8])
  {
    v5 = 0;
  }

  else if (v4 == *MEMORY[0x277CFF1F0])
  {
    v5 = 1;
  }

  else if (v4 == *MEMORY[0x277CFF1E8])
  {
    v5 = 2;
  }

  else
  {
    if (v4 != *MEMORY[0x277CFF1E0])
    {
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    }

    v5 = 3;
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  **(v0 + 16) = v5;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238A1A724()
{
  v23 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  sub_238A1F470();
  MEMORY[0x23EE6D770](v1);
  v3 = sub_238A1F790();
  v4 = sub_238A1F9C0();
  MEMORY[0x23EE6D760](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  if (v5)
  {
    v21 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_238A1DCFC(0x737574617473, 0xE600000000000000, &v22);
    *(v11 + 12) = 2112;
    MEMORY[0x23EE6D770](v6);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&dword_238A14000, v3, v4, "IdentityDocumentProviderRegistrationStore %s failed with error %@", v11, 0x16u);
    sub_238A17D1C(v12, &qword_27DF49A20, &unk_238A1FE60);
    MEMORY[0x23EE6D820](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE6D820](v13, -1, -1);
    MEMORY[0x23EE6D820](v11, -1, -1);

    MEMORY[0x23EE6D760](v6);
    v21(v8, v10);
  }

  else
  {
    MEMORY[0x23EE6D760](*(v0 + 112));

    v7(v8, v10);
  }

  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  **(v0 + 16) = 3;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_238A1A960()
{
  v1[3] = v0;
  v2 = sub_238A1F870();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A68, &qword_238A205E8) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_238A1F890();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentRegistration();
  v1[13] = v10;
  v11 = *(v10 - 8);
  v1[14] = v11;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  v13 = sub_238A1F800();
  v1[16] = v13;
  v14 = *(v13 - 8);
  v1[17] = v14;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v16 = sub_238A1F8F0();
  v1[19] = v16;
  v17 = *(v16 - 8);
  v1[20] = v17;
  v18 = *(v17 + 64) + 15;
  v1[21] = swift_task_alloc();
  v19 = sub_238A1F7A0();
  v1[22] = v19;
  v20 = *(v19 - 8);
  v1[23] = v20;
  v21 = *(v20 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1AC80, v0, 0);
}

uint64_t sub_238A1AC80()
{
  v18 = v0;
  v1 = v0[26];
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_238A1DCFC(0x6172747369676572, 0xED0000736E6F6974, &v17);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s called", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EE6D820](v9, -1, -1);
    MEMORY[0x23EE6D820](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[27] = v10;
  v11 = *(v0[3] + 112);
  v12 = *(MEMORY[0x277CFF1B0] + 4);
  v16 = (*MEMORY[0x277CFF1B0] + MEMORY[0x277CFF1B0]);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_238A1AE44;
  v14 = v0[21];

  return v16(v14);
}

uint64_t sub_238A1AE44()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_238A1B40C;
  }

  else
  {
    v6 = sub_238A1AF70;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238A1AF70()
{
  v67 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_238A1F8E0();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[17];
    v55 = v0[14];
    v56 = v0[15];
    v7 = *(v6 + 16);
    v6 += 16;
    v53 = v7;
    v54 = v0[13];
    v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v51 = (v6 - 8);
    v52 = *(v6 + 56);
    v9 = MEMORY[0x277D84F90];
    v59 = v0;
    do
    {
      v10 = v0[18];
      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[12];
      v53(v10, v8, v11);
      v14 = sub_238A1F7C0();
      v60 = v15;
      v63 = v14;
      v16 = sub_238A1F7F0();
      v17 = v9;
      v18 = sub_238A1F7E0();
      v20 = v19;
      sub_238A1F7D0();
      (*v51)(v10, v11);
      v21 = *(v54 + 28);
      v22 = sub_238A1F440();
      (*(*(v22 - 8) + 56))(v12 + v21, 1, 1, v22);
      *v12 = v63;
      v56[1] = v60;
      v56[2] = v16;
      v56[3] = v18;
      v56[4] = v20;
      v9 = v17;
      sub_238A1DE14(v13, v12 + v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_238A1DB24(0, v17[2] + 1, 1, v17);
      }

      v24 = v9[2];
      v23 = v9[3];
      v0 = v59;
      if (v24 >= v23 >> 1)
      {
        v9 = sub_238A1DB24(v23 > 1, v24 + 1, 1, v9);
      }

      v25 = v59[15];
      v9[2] = v24 + 1;
      sub_238A1DE84(v25, v9 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v24);
      v8 += v52;
      --v5;
    }

    while (v5);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v26 = v0[25];
  sub_238A1F470();

  v27 = sub_238A1F790();
  v28 = sub_238A1F9C0();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[27];
  v31 = v9;
  v32 = v0[25];
  v34 = v0[22];
  v33 = v0[23];
  if (v29)
  {
    v64 = v0[27];
    v35 = v0[13];
    v61 = v0[25];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v66 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_238A1DCFC(0x6172747369676572, 0xED0000736E6F6974, &v66);
    *(v36 + 12) = 2080;
    v38 = MEMORY[0x23EE6D480](v31, v35);
    v40 = sub_238A1DCFC(v38, v39, &v66);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_238A14000, v27, v28, "IdentityDocumentProviderRegistrationStore %s returning %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6D820](v37, -1, -1);
    MEMORY[0x23EE6D820](v36, -1, -1);

    v64(v61, v34);
  }

  else
  {

    v30(v32, v34);
  }

  v41 = v0[25];
  v42 = v0[26];
  v43 = v0[24];
  v44 = v0[21];
  v45 = v0[18];
  v46 = v0[15];
  v48 = v0[11];
  v47 = v0[12];
  v57 = v0[10];
  v58 = v0[7];
  v62 = v0[6];
  v65 = sub_238A1B8B0(v31);

  v49 = v0[1];

  return v49(v65);
}

uint64_t sub_238A1B40C()
{
  v66 = v0;
  v0[2] = v0[29];
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  MEMORY[0x23EE6D770]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = v0[24];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[7];
    v5(v11, 0, 1, v9);
    (*(v10 + 32))(v7, v11, v9);
    sub_238A1F470();
    (*(v10 + 16))(v8, v7, v9);
    v12 = sub_238A1F790();
    v13 = sub_238A1F9D0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[27];
    v16 = v0[24];
    v64 = v0[23];
    v17 = v0[22];
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    if (v14)
    {
      v21 = swift_slowAlloc();
      v62 = v16;
      v22 = swift_slowAlloc();
      v65 = v22;
      *v21 = 136446210;
      v60 = v17;
      v61 = v15;
      v23 = sub_238A17E24();
      v25 = v24;
      v59 = v13;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_238A1DCFC(v23, v25, &v65);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_238A14000, v12, v59, "An error occurred while fetching registrations: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23EE6D820](v22, -1, -1);
      v28 = v21;
      v29 = v26;
      MEMORY[0x23EE6D820](v28, -1, -1);

      v61(v62, v60);
    }

    else
    {

      v29 = *(v19 + 8);
      v29(v18, v20);
      v15(v16, v17);
    }

    v33 = v0[11];
    v34 = v0[5];
    v35 = v0[6];
    v36 = v0[4];
    sub_238A1A020();
    swift_allocError();
    v38 = v37;
    sub_238A1F880();
    v39 = (*(v34 + 88))(v35, v36);
    if (v39 == *MEMORY[0x277CFF1D0])
    {
      *v38 = 0;
    }

    else if (v39 == *MEMORY[0x277CFF1C8])
    {
      *v38 = 1;
    }

    else if (v39 == *MEMORY[0x277CFF1B8])
    {
      *v38 = 3;
    }

    else if (v39 == *MEMORY[0x277CFF1C0])
    {
      *v38 = 2;
    }

    else
    {
      v41 = v0[5];
      v40 = v0[6];
      v42 = v0[4];
      *v38 = 0;
      (*(v41 + 8))(v40, v42);
    }

    v43 = v0[29];
    v44 = v0[11];
    v46 = v0[8];
    v45 = v0[9];
    swift_willThrow();
    MEMORY[0x23EE6D760](v43);
    v29(v44, v46);
  }

  else
  {
    v30 = v0[29];
    v31 = v0[7];
    v5(v31, 1, 1, v0[8]);
    sub_238A17D1C(v31, &qword_27DF49A68, &qword_238A205E8);
    sub_238A1A020();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    MEMORY[0x23EE6D760](v30);
  }

  v48 = v0[25];
  v47 = v0[26];
  v49 = v0[24];
  v50 = v0[21];
  v51 = v0[18];
  v52 = v0[15];
  v54 = v0[11];
  v53 = v0[12];
  v55 = v0[10];
  v56 = v0[7];
  v63 = v0[6];

  v57 = v0[1];

  return v57();
}

uint64_t sub_238A1B8B0(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentRegistration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_238A18920(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_238A1EBC8(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_238A18920((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &protocol witness table for MobileDocumentRegistration;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_238A1EBC8(v6, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      sub_238A15FE4(&v15, v8 + 40 * v12 + 32);
      sub_238A1DFBC(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t IdentityDocumentProviderRegistrationStore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_238A1F8B0();
  v2[3] = sub_238A1F8D0();
  v2[4] = MEMORY[0x277CFF208];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_238A1F8C0();
  *(v0 + 112) = sub_238A1F850();
  return v0;
}

uint64_t IdentityDocumentProviderRegistrationStore.init()()
{
  swift_defaultActor_initialize();
  sub_238A1F8B0();
  v2[3] = sub_238A1F8D0();
  v2[4] = MEMORY[0x277CFF208];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_238A1F8C0();
  *(v0 + 112) = sub_238A1F850();
  return v0;
}

uint64_t sub_238A1BB30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_238A1F870();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A68, &qword_238A205E8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_238A1F890();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_238A1F840();
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = sub_238A1F800();
  v3[18] = v16;
  v17 = *(v16 - 8);
  v3[19] = v17;
  v18 = *(v17 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A78, &unk_238A20608) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v20 = type metadata accessor for MobileDocumentRegistration();
  v3[23] = v20;
  v21 = *(v20 - 8);
  v3[24] = v21;
  v22 = *(v21 + 64) + 15;
  v3[25] = swift_task_alloc();
  v23 = *(a2 - 8);
  v3[26] = v23;
  v24 = *(v23 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v25 = sub_238A1F7A0();
  v3[30] = v25;
  v26 = *(v25 - 8);
  v3[31] = v26;
  v27 = *(v26 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1BF18, v2, 0);
}

uint64_t sub_238A1BF18()
{
  v87 = v0;
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[3];
  v4 = v0[4];
  sub_238A1F470();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v7 = sub_238A1F790();
  v8 = sub_238A1F9C0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[35];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];
  if (v9)
  {
    v77 = v0[30];
    v80 = v0[35];
    v14 = v0[28];
    v15 = v0[26];
    v16 = v0[4];
    v83 = v6;
    v17 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v86[0] = v74;
    *v17 = 136315394;
    *(v17 + 4) = sub_238A1DCFC(0xD000000000000013, 0x8000000238A207F0, v86);
    *(v17 + 12) = 2080;
    v83(v14, v13, v16);
    v18 = sub_238A1F940();
    v71 = v8;
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_238A1DCFC(v18, v20, v86);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_238A14000, v7, v71, "IdentityDocumentProviderRegistrationStore %s called with registration %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6D820](v74, -1, -1);
    v22 = v17;
    v6 = v83;
    MEMORY[0x23EE6D820](v22, -1, -1);

    v23 = *(v11 + 8);
    v23(v80, v77);
  }

  else
  {
    v24 = v0[26];
    v25 = v0[4];

    (*(v24 + 8))(v13, v25);
    v23 = *(v11 + 8);
    v23(v10, v12);
  }

  v0[36] = v23;
  v26 = v0[23];
  v27 = v0[24];
  v28 = v0[22];
  v6(v0[27], v0[3], v0[4]);
  v29 = swift_dynamicCast();
  v30 = *(v27 + 56);
  v32 = v0[22];
  v31 = v0[23];
  if (v29)
  {
    v33 = v0[25];
    v72 = v0[21];
    v75 = v0[20];
    v34 = v0[18];
    v35 = v0[19];
    v36 = v0[17];
    v78 = v34;
    v81 = v0[16];
    v84 = v0[5];
    v30(v32, 0, 1, v31);
    sub_238A1DE84(v32, v33);
    v37 = *v33;
    v38 = v33[1];
    v40 = v33[2];
    v39 = v33[3];
    v41 = v33[4];
    sub_238A1DF4C(v33 + *(v31 + 28), v36);

    sub_238A1F7B0();
    (*(v35 + 16))(v75, v72, v78);
    sub_238A1F830();
    v42 = *(v84 + 112);
    v43 = *(MEMORY[0x277CFF200] + 4);
    v85 = (*MEMORY[0x277CFF200] + MEMORY[0x277CFF200]);
    v44 = swift_task_alloc();
    v0[37] = v44;
    *v44 = v0;
    v44[1] = sub_238A1C540;
    v45 = v0[16];

    return v85(v45);
  }

  else
  {
    v47 = v0[33];
    v30(v0[22], 1, 1, v0[23]);
    sub_238A17D1C(v32, &qword_27DF49A78, &unk_238A20608);
    sub_238A1F470();
    v48 = sub_238A1F790();
    v49 = sub_238A1F9C0();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[33];
    v52 = v0[30];
    v53 = v0[31];
    if (v50)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v86[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_238A1DCFC(0xD000000000000013, 0x8000000238A207F0, v86);
      _os_log_impl(&dword_238A14000, v48, v49, "IdentityDocumentProviderRegistrationStore %s failed to cast registration to MobileDocumentRegistration. Throwing invalidRequest error", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23EE6D820](v55, -1, -1);
      MEMORY[0x23EE6D820](v54, -1, -1);
    }

    v23(v51, v52);
    sub_238A1A020();
    swift_allocError();
    *v56 = 1;
    swift_willThrow();
    v58 = v0[34];
    v57 = v0[35];
    v60 = v0[32];
    v59 = v0[33];
    v62 = v0[28];
    v61 = v0[29];
    v63 = v0[27];
    v64 = v0[25];
    v65 = v0[21];
    v66 = v0[22];
    v68 = v0[20];
    v69 = v0[17];
    v70 = v0[16];
    v73 = v0[13];
    v76 = v0[12];
    v79 = v0[9];
    v82 = v0[8];

    v67 = v0[1];

    return v67();
  }
}

uint64_t sub_238A1C540()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_238A1C950;
  }

  else
  {
    v6 = sub_238A1C66C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238A1C66C()
{
  v42 = v0;
  v1 = v0[34];
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[36];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[25];
  v9 = v0[21];
  v10 = v0[19];
  v37 = v5;
  v39 = v0[18];
  v11 = v0[15];
  v33 = v0[34];
  v35 = v0[16];
  v12 = v0[14];
  if (v4)
  {
    v31 = v0[25];
    v13 = swift_slowAlloc();
    v29 = v9;
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_238A1DCFC(0xD000000000000013, 0x8000000238A207F0, &v41);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s finished successfully", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EE6D820](v14, -1, -1);
    MEMORY[0x23EE6D820](v13, -1, -1);

    v37(v33, v7);
    (*(v11 + 8))(v35, v12);
    (*(v10 + 8))(v29, v39);
    v15 = v31;
  }

  else
  {

    v37(v33, v7);
    (*(v11 + 8))(v35, v12);
    (*(v10 + 8))(v9, v39);
    v15 = v8;
  }

  sub_238A1DFBC(v15);
  v17 = v0[34];
  v16 = v0[35];
  v19 = v0[32];
  v18 = v0[33];
  v21 = v0[28];
  v20 = v0[29];
  v22 = v0[27];
  v23 = v0[25];
  v25 = v0[21];
  v24 = v0[22];
  v28 = v0[20];
  v30 = v0[17];
  v32 = v0[16];
  v34 = v0[13];
  v36 = v0[12];
  v38 = v0[9];
  v40 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_238A1C950()
{
  v77 = v0;
  v1 = v0[38];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v4 + 8))(v2, v3);
  v0[2] = v1;
  MEMORY[0x23EE6D770](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  v8 = swift_dynamicCast();
  v9 = *(v6 + 56);
  if (v8)
  {
    v10 = v0[32];
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[10];
    v14 = v0[11];
    v15 = v0[9];
    v9(v15, 0, 1, v13);
    (*(v14 + 32))(v11, v15, v13);
    sub_238A1F470();
    (*(v14 + 16))(v12, v11, v13);
    v16 = sub_238A1F790();
    v17 = sub_238A1F9D0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[36];
    v20 = v0[32];
    v75 = v0[31];
    v21 = v0[30];
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[10];
    if (v18)
    {
      v73 = v0[32];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v76 = v26;
      *v25 = 136446210;
      v69 = v21;
      v71 = v19;
      v27 = sub_238A17E24();
      v29 = v28;
      v67 = v17;
      v30 = *(v23 + 8);
      v30(v22, v24);
      v31 = sub_238A1DCFC(v27, v29, &v76);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_238A14000, v16, v67, "An error occurred while adding a registration: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v32 = v26;
      v33 = v30;
      MEMORY[0x23EE6D820](v32, -1, -1);
      MEMORY[0x23EE6D820](v25, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v33 = *(v23 + 8);
      v33(v22, v24);
      v19(v20, v21);
    }

    v38 = v0[13];
    v39 = v0[7];
    v40 = v0[8];
    v41 = v0[6];
    sub_238A1A020();
    swift_allocError();
    v43 = v42;
    sub_238A1F880();
    v44 = (*(v39 + 88))(v40, v41);
    if (v44 == *MEMORY[0x277CFF1D0])
    {
      *v43 = 0;
    }

    else if (v44 == *MEMORY[0x277CFF1C8])
    {
      *v43 = 1;
    }

    else if (v44 == *MEMORY[0x277CFF1B8])
    {
      *v43 = 3;
    }

    else if (v44 == *MEMORY[0x277CFF1C0])
    {
      *v43 = 2;
    }

    else
    {
      v46 = v0[7];
      v45 = v0[8];
      v47 = v0[6];
      *v43 = 0;
      (*(v46 + 8))(v45, v47);
    }

    v48 = v0[38];
    v35 = v0[25];
    v49 = v0[13];
    v51 = v0[10];
    v50 = v0[11];
    swift_willThrow();
    MEMORY[0x23EE6D760](v48);
    v33(v49, v51);
  }

  else
  {
    v34 = v0[38];
    v35 = v0[25];
    v36 = v0[9];
    v9(v36, 1, 1, v0[10]);
    sub_238A17D1C(v36, &qword_27DF49A68, &qword_238A205E8);
    sub_238A1A020();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
    MEMORY[0x23EE6D760](v34);
  }

  sub_238A1DFBC(v35);
  v53 = v0[34];
  v52 = v0[35];
  v55 = v0[32];
  v54 = v0[33];
  v57 = v0[28];
  v56 = v0[29];
  v58 = v0[27];
  v59 = v0[25];
  v61 = v0[21];
  v60 = v0[22];
  v64 = v0[20];
  v65 = v0[17];
  v66 = v0[16];
  v68 = v0[13];
  v70 = v0[12];
  v72 = v0[9];
  v74 = v0[8];

  v62 = v0[1];

  return v62();
}

uint64_t sub_238A1CE84(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_238A1F870();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A68, &qword_238A205E8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_238A1F890();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v11 = sub_238A1F820();
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = sub_238A1F7A0();
  v3[17] = v14;
  v15 = *(v14 - 8);
  v3[18] = v15;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1D0B8, v2, 0);
}

uint64_t sub_238A1D0B8()
{
  v25 = v0;
  v1 = v0[21];
  v2 = v0[4];
  sub_238A1F470();

  v3 = sub_238A1F790();
  v4 = sub_238A1F9C0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[18];
  if (v5)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_238A1DCFC(0xD00000000000002ALL, 0x8000000238A20810, &v24);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_238A1DCFC(v10, v9, &v24);
    _os_log_impl(&dword_238A14000, v3, v4, "IdentityDocumentProviderRegistrationStore %s called with documentIdentifier %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6D820](v12, -1, -1);
    MEMORY[0x23EE6D820](v11, -1, -1);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[22] = v13;
  v14 = v0[16];
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];

  sub_238A1F810();
  v18 = *(v16 + 112);
  v19 = *(MEMORY[0x277CFF1A8] + 4);
  v23 = (*MEMORY[0x277CFF1A8] + MEMORY[0x277CFF1A8]);
  v20 = swift_task_alloc();
  v0[23] = v20;
  *v20 = v0;
  v20[1] = sub_238A1D2E0;
  v21 = v0[16];

  return v23(v21);
}

uint64_t sub_238A1D2E0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_238A1D620;
  }

  else
  {
    v6 = sub_238A1D40C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238A1D40C()
{
  v27 = v0;
  v1 = v0[20];
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  v6 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v4)
  {
    v25 = v0[16];
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_238A1DCFC(0xD00000000000002ALL, 0x8000000238A20810, &v26);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s finished successfully", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE6D820](v13, -1, -1);
    MEMORY[0x23EE6D820](v12, -1, -1);

    v24(v6, v8);
    (*(v10 + 8))(v25, v11);
  }

  else
  {

    v5(v6, v8);
    (*(v10 + 8))(v9, v11);
  }

  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[19];
  v17 = v0[16];
  v19 = v0[12];
  v18 = v0[13];
  v21 = v0[8];
  v20 = v0[9];

  v22 = v0[1];

  return v22();
}

uint64_t sub_238A1D620()
{
  v63 = v0;
  v1 = v0[24];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v0[2] = v1;
  MEMORY[0x23EE6D770](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  v5 = swift_dynamicCast();
  v6 = *(v3 + 56);
  if (v5)
  {
    v7 = v0[19];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[9];
    v6(v12, 0, 1, v10);
    (*(v11 + 32))(v8, v12, v10);
    sub_238A1F470();
    (*(v11 + 16))(v9, v8, v10);
    v13 = sub_238A1F790();
    v14 = sub_238A1F9D0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[22];
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[17];
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    if (v15)
    {
      v61 = v0[19];
      v23 = swift_slowAlloc();
      v60 = v19;
      v24 = swift_slowAlloc();
      v62 = v24;
      *v23 = 136446210;
      v59 = v16;
      v25 = sub_238A17E24();
      v27 = v26;
      v28 = v22;
      v29 = *(v21 + 8);
      v29(v20, v28);
      v30 = sub_238A1DCFC(v25, v27, &v62);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_238A14000, v13, v14, "An error occurred while removing a registration: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23EE6D820](v24, -1, -1);
      MEMORY[0x23EE6D820](v23, -1, -1);

      v59(v61, v60);
    }

    else
    {

      v34 = v22;
      v29 = *(v21 + 8);
      v29(v20, v34);
      v16(v17, v19);
    }

    v35 = v0[13];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v0[6];
    sub_238A1A020();
    swift_allocError();
    v40 = v39;
    sub_238A1F880();
    v41 = (*(v37 + 88))(v36, v38);
    if (v41 == *MEMORY[0x277CFF1D0])
    {
      *v40 = 0;
    }

    else if (v41 == *MEMORY[0x277CFF1C8])
    {
      *v40 = 1;
    }

    else if (v41 == *MEMORY[0x277CFF1B8])
    {
      *v40 = 3;
    }

    else if (v41 == *MEMORY[0x277CFF1C0])
    {
      *v40 = 2;
    }

    else
    {
      v43 = v0[7];
      v42 = v0[8];
      v44 = v0[6];
      *v40 = 0;
      (*(v43 + 8))(v42, v44);
    }

    v45 = v0[24];
    v46 = v0[13];
    v47 = v0[10];
    v48 = v0[11];
    swift_willThrow();
    MEMORY[0x23EE6D760](v45);
    v29(v46, v47);
  }

  else
  {
    v31 = v0[24];
    v32 = v0[9];
    v6(v32, 1, 1, v0[10]);
    sub_238A17D1C(v32, &qword_27DF49A68, &qword_238A205E8);
    sub_238A1A020();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    MEMORY[0x23EE6D760](v31);
  }

  v50 = v0[20];
  v49 = v0[21];
  v51 = v0[19];
  v52 = v0[16];
  v54 = v0[12];
  v53 = v0[13];
  v56 = v0[8];
  v55 = v0[9];

  v57 = v0[1];

  return v57();
}

uint64_t IdentityDocumentProviderRegistrationStore.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t IdentityDocumentProviderRegistrationStore.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

size_t sub_238A1DB24(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A80, &qword_238A206B0);
  v10 = *(type metadata accessor for MobileDocumentRegistration() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for MobileDocumentRegistration() - 8);
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

uint64_t sub_238A1DCFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238A1E6EC(v11, 0, 0, 1, a1, a2);
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
    sub_238A1EC2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

uint64_t sub_238A1DE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A1DE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_238A1DF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A1DFBC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentRegistration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.status.getter(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238A1E178;

  return v8(a1);
}

uint64_t sub_238A1E178()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.registrations.getter()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238A1E37C;

  return v6();
}

uint64_t sub_238A1E37C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.addRegistration<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_238A1E178;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.removeRegistration(forDocumentIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238A1EC88;

  return v10(a1, a2);
}

unint64_t sub_238A1E6EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238A1E7F8(a5, a6);
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
    result = sub_238A1FA10();
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

uint64_t sub_238A1E7F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_238A1E844(a1, a2);
  sub_238A1E974(&unk_284B59738);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238A1E844(uint64_t a1, unint64_t a2)
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

  v6 = sub_238A1EA60(v5, 0);
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

  result = sub_238A1FA10();
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
        v10 = sub_238A1F970();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238A1EA60(v10, 0);
        result = sub_238A1FA00();
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

uint64_t sub_238A1E974(uint64_t result)
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

  result = sub_238A1EAD4(result, v12, 1, v3);
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

void *sub_238A1EA60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A88, &qword_238A206B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238A1EAD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A88, &qword_238A206B8);
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

uint64_t sub_238A1EBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A1EC2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t IdentityDocumentProviderRegistrationStore.Status.hashValue.getter()
{
  v1 = *v0;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v1);
  return sub_238A1FAA0();
}

unint64_t sub_238A1ED18()
{
  result = qword_27DF49A90;
  if (!qword_27DF49A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A90);
  }

  return result;
}

uint64_t MobileDocumentRegistration.init(mobileDocumentType:supportedAuthorityKeyIdentifiers:documentIdentifier:invalidationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = *(type metadata accessor for MobileDocumentRegistration() + 28);
  v15 = sub_238A1F440();
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  *(a7 + 4) = a5;

  return sub_238A1DE14(a6, &a7[v14]);
}

uint64_t type metadata accessor for MobileDocumentRegistration()
{
  result = qword_27DF49A98;
  if (!qword_27DF49A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentRegistration.mobileDocumentType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentRegistration.mobileDocumentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MobileDocumentRegistration.supportedAuthorityKeyIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MobileDocumentRegistration.documentIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MobileDocumentRegistration.documentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MobileDocumentRegistration.invalidationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentRegistration() + 28);

  return sub_238A1DF4C(v3, a1);
}

uint64_t MobileDocumentRegistration.invalidationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentRegistration() + 28);

  return sub_238A1DE14(a1, v3);
}

uint64_t sub_238A1F0D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_238A1F114(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238A1F1E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_238A1F294()
{
  sub_238A1F328();
  if (v0 <= 0x3F)
  {
    sub_238A1F378();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238A1F328()
{
  if (!qword_27DF49AA8)
  {
    v0 = sub_238A1F9B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF49AA8);
    }
  }
}

void sub_238A1F378()
{
  if (!qword_27DF49AB0)
  {
    sub_238A1F440();
    v0 = sub_238A1F9F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF49AB0);
    }
  }
}