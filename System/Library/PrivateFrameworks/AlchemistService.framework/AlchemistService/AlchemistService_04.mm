uint64_t sub_23EDBBD04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23EDC1AB0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EF23800](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s16AlchemistService15PixelDimensionsV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 >= *a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = a1[1];
  }

  if (v5 >= v4)
  {
    v7 = *a2;
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 < v7)
  {
    return 1;
  }

  if (v3 > v2)
  {
    v2 = a1[1];
  }

  if (v5 > v4)
  {
    v4 = a2[1];
  }

  v9 = v2 < v4;
  return v7 >= v6 && v9;
}

unint64_t sub_23EDBBDCC()
{
  result = qword_27E3894C0;
  if (!qword_27E3894C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894C0);
  }

  return result;
}

unint64_t sub_23EDBBE24()
{
  result = qword_27E3894D0;
  if (!qword_27E3894D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894D0);
  }

  return result;
}

unint64_t sub_23EDBBEA4()
{
  result = qword_27E3894D8;
  if (!qword_27E3894D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894D8);
  }

  return result;
}

unint64_t sub_23EDBBEFC()
{
  result = qword_27E3894E0;
  if (!qword_27E3894E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894E0);
  }

  return result;
}

unint64_t sub_23EDBBF54()
{
  result = qword_27E3894E8;
  if (!qword_27E3894E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PixelBufferDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PixelBufferDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

unint64_t sub_23EDBC004()
{
  result = qword_27E389500;
  if (!qword_27E389500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389500);
  }

  return result;
}

unint64_t sub_23EDBC058()
{
  result = qword_27E389508;
  if (!qword_27E389508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389508);
  }

  return result;
}

unint64_t sub_23EDBC0AC()
{
  result = qword_27E389518;
  if (!qword_27E389518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389518);
  }

  return result;
}

unint64_t sub_23EDBC114()
{
  result = qword_27E389520;
  if (!qword_27E389520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389520);
  }

  return result;
}

unint64_t sub_23EDBC16C()
{
  result = qword_27E389528;
  if (!qword_27E389528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389528);
  }

  return result;
}

unint64_t sub_23EDBC1C4()
{
  result = qword_27E389530;
  if (!qword_27E389530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389530);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AlchemistService16PixelBufferErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_23EDBC24C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23EDBC294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_23EDBC2D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23EDBC300(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v64 = a2;
  v65 = a4;
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895B8, &qword_23EDC93C0);
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895C0, &qword_23EDC93C8);
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895C8, &qword_23EDC93D0);
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895D0, &qword_23EDC93D8);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895D8, &qword_23EDC93E0);
  v53 = *(v17 - 8);
  v54 = v17;
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895E0, &qword_23EDC93E8);
  v52 = *(v21 - 8);
  v22 = *(v52 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895E8, &qword_23EDC93F0);
  v51 = *(v25 - 8);
  v26 = *(v51 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895F0, &qword_23EDC93F8);
  v62 = *(v29 - 8);
  v63 = v29;
  v30 = *(v62 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v44 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBDF9C();
  sub_23EDC23A0();
  if (v65 <= 2u)
  {
    if (v65)
    {
      if (v65 != 1)
      {
        v68 = 2;
        sub_23EDBE140();
        v37 = v63;
        sub_23EDC2140();
        v38 = v54;
        sub_23EDC21A0();
        (*(v53 + 8))(v20, v38);
        return (*(v62 + 8))(v32, v37);
      }

      v67 = 1;
      sub_23EDBE194();
      v34 = v63;
      sub_23EDC2140();
      sub_23EDC21A0();
      (*(v52 + 8))(v24, v21);
      return (*(v62 + 8))(v32, v34);
    }

    v66 = 0;
    sub_23EDBE1E8();
    v34 = v63;
    sub_23EDC2140();
    sub_23EDC21B0();
    v35 = v51;
LABEL_10:
    (*(v35 + 8))(v28, v25);
    return (*(v62 + 8))(v32, v34);
  }

  if (v65 == 3)
  {
    v69 = 3;
    sub_23EDBE0EC();
    v28 = v55;
    v34 = v63;
    sub_23EDC2140();
    v25 = v57;
    sub_23EDC21A0();
    v35 = v56;
    goto LABEL_10;
  }

  if (v65 == 4)
  {
    v72 = 6;
    sub_23EDBDFF0();
    v28 = v58;
    v34 = v63;
    sub_23EDC2140();
    v25 = v60;
    sub_23EDC2160();
    v35 = v59;
    goto LABEL_10;
  }

  v39 = (v62 + 8);
  if (v64 | v61)
  {
    v71 = 5;
    sub_23EDBE044();
    v40 = v48;
    v41 = v63;
    sub_23EDC2140();
    v43 = v49;
    v42 = v50;
  }

  else
  {
    v70 = 4;
    sub_23EDBE098();
    v40 = v45;
    v41 = v63;
    sub_23EDC2140();
    v43 = v46;
    v42 = v47;
  }

  (*(v43 + 8))(v40, v42);
  return (*v39)(v32, v41);
}

uint64_t sub_23EDBCA7C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD000000000000011;
    if (v1 != 1)
    {
      v4 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x7865746E6F436F6ELL;
    }
  }

  else
  {
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23EDBCB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23EDBD260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23EDBCBA0(uint64_t a1)
{
  v2 = sub_23EDBDF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCBDC(uint64_t a1)
{
  v2 = sub_23EDBDF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCC38(uint64_t a1)
{
  v2 = sub_23EDBE0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCC74(uint64_t a1)
{
  v2 = sub_23EDBE0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCCB0(uint64_t a1)
{
  v2 = sub_23EDBE044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCCEC(uint64_t a1)
{
  v2 = sub_23EDBE044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCD28(uint64_t a1)
{
  v2 = sub_23EDBE098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCD64(uint64_t a1)
{
  v2 = sub_23EDBE098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F436E7275746572 && a2 == 0xEA00000000006564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23EDBCE4C(uint64_t a1)
{
  v2 = sub_23EDBE194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCE88(uint64_t a1)
{
  v2 = sub_23EDBE194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23EDBCF78(uint64_t a1)
{
  v2 = sub_23EDBE1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCFB4(uint64_t a1)
{
  v2 = sub_23EDBE1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23EDBD074(uint64_t a1)
{
  v2 = sub_23EDBE140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBD0B0(uint64_t a1)
{
  v2 = sub_23EDBE140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBD10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23EDBD198(uint64_t a1)
{
  v2 = sub_23EDBDFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBD1D4(uint64_t a1)
{
  v2 = sub_23EDBDFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBD210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23EDBD4B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_23EDBD260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865746E6F436F6ELL && a2 == 0xE900000000000074;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023EDCBA30 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023EDCBA50 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023EDCBA70 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023EDCBA90 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023EDCBAB0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023EDCBAD0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_23EDC2240();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23EDBD4B4(uint64_t *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389538, &qword_23EDC9378);
  v64 = *(v62 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v65 = &v51 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389540, &qword_23EDC9380);
  v61 = *(v63 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v69 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389548, &qword_23EDC9388);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v51 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389550, &qword_23EDC9390);
  v58 = *(v55 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  v68 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389558, &qword_23EDC9398);
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = &v51 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389560, &qword_23EDC93A0);
  v53 = *(v54 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389568, &qword_23EDC93A8);
  v52 = *(v18 - 8);
  v19 = *(v52 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389570, &unk_23EDC93B0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v70 = a1;
  v29 = __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_23EDBDF9C();
  v30 = v71;
  sub_23EDC2360();
  if (!v30)
  {
    v31 = v21;
    v51 = v18;
    v71 = v17;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = sub_23EDC2120();
    v36 = (2 * *(v35 + 16)) | 1;
    v72 = v35;
    v73 = v35 + 32;
    v74 = 0;
    v75 = v36;
    v37 = sub_23ED89DB0();
    if (v37 == 7 || v74 != v75 >> 1)
    {
      v39 = sub_23EDC1F30();
      swift_allocError();
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600) + 48);
      *v41 = &type metadata for PixelBufferError;
      v29 = v26;
      sub_23EDC20A0();
      sub_23EDC1F10();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v23 + 8))(v26, v22);
      swift_unknownObjectRelease();
    }

    else if (v37 <= 2u)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          v76 = 1;
          sub_23EDBE194();
          v44 = v71;
          sub_23EDC2090();
          v45 = v54;
          LODWORD(v29) = sub_23EDC2100();
          (*(v53 + 8))(v44, v45);
        }

        else
        {
          v76 = 2;
          sub_23EDBE140();
          sub_23EDC2090();
          v47 = v57;
          LODWORD(v29) = sub_23EDC2100();
          (*(v56 + 8))(v32, v47);
        }

        (*(v23 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v29 = v29;
      }

      else
      {
        v76 = 0;
        sub_23EDBE1E8();
        sub_23EDC2090();
        v46 = v51;
        LODWORD(v29) = sub_23EDC2110();
        (*(v52 + 8))(v31, v46);
        (*(v23 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v29 = v29;
      }
    }

    else if (v37 > 4u)
    {
      if (v37 == 5)
      {
        v76 = 5;
        sub_23EDBE044();
        sub_23EDC2090();
        (*(v61 + 8))(v34, v63);
        (*(v23 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v29 = 1;
      }

      else
      {
        v76 = 6;
        sub_23EDBDFF0();
        v49 = v65;
        sub_23EDC2090();
        v50 = v62;
        v29 = sub_23EDC20C0();
        (*(v64 + 8))(v49, v50);
        (*(v23 + 8))(v26, v22);
        swift_unknownObjectRelease();
      }
    }

    else if (v37 == 3)
    {
      v76 = 3;
      sub_23EDBE0EC();
      sub_23EDC2090();
      v38 = v55;
      LODWORD(v29) = sub_23EDC2100();
      (*(v58 + 8))(v33, v38);
      (*(v23 + 8))(v26, v22);
      swift_unknownObjectRelease();
      v29 = v29;
    }

    else
    {
      v76 = 4;
      sub_23EDBE098();
      v48 = v66;
      sub_23EDC2090();
      (*(v60 + 8))(v48, v59);
      (*(v23 + 8))(v26, v22);
      swift_unknownObjectRelease();
      v29 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  return v29;
}

unint64_t sub_23EDBDF9C()
{
  result = qword_27E389578;
  if (!qword_27E389578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389578);
  }

  return result;
}

unint64_t sub_23EDBDFF0()
{
  result = qword_27E389580;
  if (!qword_27E389580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389580);
  }

  return result;
}

unint64_t sub_23EDBE044()
{
  result = qword_27E389588;
  if (!qword_27E389588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389588);
  }

  return result;
}

unint64_t sub_23EDBE098()
{
  result = qword_27E389590;
  if (!qword_27E389590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389590);
  }

  return result;
}

unint64_t sub_23EDBE0EC()
{
  result = qword_27E389598;
  if (!qword_27E389598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389598);
  }

  return result;
}

unint64_t sub_23EDBE140()
{
  result = qword_27E3895A0;
  if (!qword_27E3895A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895A0);
  }

  return result;
}

unint64_t sub_23EDBE194()
{
  result = qword_27E3895A8;
  if (!qword_27E3895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895A8);
  }

  return result;
}

unint64_t sub_23EDBE1E8()
{
  result = qword_27E3895B0;
  if (!qword_27E3895B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PixelBufferError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PixelBufferError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23EDBE408()
{
  result = qword_27E3895F8;
  if (!qword_27E3895F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895F8);
  }

  return result;
}

unint64_t sub_23EDBE460()
{
  result = qword_27E389600;
  if (!qword_27E389600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389600);
  }

  return result;
}

unint64_t sub_23EDBE4B8()
{
  result = qword_27E389608;
  if (!qword_27E389608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389608);
  }

  return result;
}

unint64_t sub_23EDBE510()
{
  result = qword_27E389610;
  if (!qword_27E389610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389610);
  }

  return result;
}

unint64_t sub_23EDBE568()
{
  result = qword_27E389618;
  if (!qword_27E389618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389618);
  }

  return result;
}

unint64_t sub_23EDBE5C0()
{
  result = qword_27E389620;
  if (!qword_27E389620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389620);
  }

  return result;
}

unint64_t sub_23EDBE618()
{
  result = qword_27E389628;
  if (!qword_27E389628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389628);
  }

  return result;
}

unint64_t sub_23EDBE670()
{
  result = qword_27E389630;
  if (!qword_27E389630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389630);
  }

  return result;
}

unint64_t sub_23EDBE6C8()
{
  result = qword_27E389638;
  if (!qword_27E389638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389638);
  }

  return result;
}

unint64_t sub_23EDBE720()
{
  result = qword_27E389640;
  if (!qword_27E389640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389640);
  }

  return result;
}

unint64_t sub_23EDBE778()
{
  result = qword_27E389648;
  if (!qword_27E389648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389648);
  }

  return result;
}

unint64_t sub_23EDBE7D0()
{
  result = qword_27E389650;
  if (!qword_27E389650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389650);
  }

  return result;
}

unint64_t sub_23EDBE828()
{
  result = qword_27E389658;
  if (!qword_27E389658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389658);
  }

  return result;
}

unint64_t sub_23EDBE880()
{
  result = qword_27E389660;
  if (!qword_27E389660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389660);
  }

  return result;
}

unint64_t sub_23EDBE8D8()
{
  result = qword_27E389668;
  if (!qword_27E389668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389668);
  }

  return result;
}

unint64_t sub_23EDBE930()
{
  result = qword_27E389670;
  if (!qword_27E389670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389670);
  }

  return result;
}

unint64_t sub_23EDBE988()
{
  result = qword_27E389678;
  if (!qword_27E389678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389678);
  }

  return result;
}

unint64_t sub_23EDBE9E0()
{
  result = qword_27E389680;
  if (!qword_27E389680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389680);
  }

  return result;
}

unint64_t sub_23EDBEA38()
{
  result = qword_27E389688;
  if (!qword_27E389688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389688);
  }

  return result;
}

unint64_t sub_23EDBEA90()
{
  result = qword_27E389690;
  if (!qword_27E389690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389690);
  }

  return result;
}

unint64_t sub_23EDBEAE8()
{
  result = qword_27E389698;
  if (!qword_27E389698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389698);
  }

  return result;
}

unint64_t sub_23EDBEB40()
{
  result = qword_27E3896A0;
  if (!qword_27E3896A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3896A0);
  }

  return result;
}

uint64_t sub_23EDBEBAC()
{
  sub_23EDB452C(v0 + OBJC_IVAR____TtC16AlchemistService34InferenceSessionDefinitionAccessor__session);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for InferenceSessionDefinitionAccessor()
{
  result = qword_27E3896B0;
  if (!qword_27E3896B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23EDBEC40()
{
  result = type metadata accessor for InferenceSessionDefinition();
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

uint64_t sub_23EDBECDC(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v28 = sub_23EDC1790();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23EDC1700();
  v25 = *(v27 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23EDC1DD0();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23EDC1DC0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_23EDC1860();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  type metadata accessor for VirtualMemoryStatistics();
  *(v1 + 16) = swift_allocObject();
  sub_23EDC1F80();
  v15 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC16AlchemistService10Signposter_signpostIDMap) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC16AlchemistService10Signposter_signpostStateMap) = v15;
  v21 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  sub_23EDC0AB8();
  sub_23EDC1850();
  v30 = MEMORY[0x277D84F90];
  sub_23EDC0B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389700, &qword_23EDC9D38);
  sub_23EDC0B5C();
  sub_23EDC1E70();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v22);
  *(v1 + v21) = sub_23EDC1DF0();
  v16 = v26;
  v18 = v28;
  v17 = v29;
  (*(v26 + 16))(v24, v29, v28);
  v19 = v23;
  sub_23EDC16E0();
  (*(v16 + 8))(v17, v18);
  (*(v25 + 32))(v2 + OBJC_IVAR____TtC16AlchemistService10Signposter_signposter, v19, v27);
  return v2;
}

uint64_t sub_23EDBF0BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C40, &qword_23EDC5ED8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v87 - v9);
  v100 = sub_23EDC16D0();
  v11 = *(v100 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v100);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v95 = &v87 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C48, &qword_23EDC9D30);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  MEMORY[0x28223BE20](v22);
  v23 = &v87;
  v25 = &v87 - v24;
  v97 = v19;
  v94 = v15;
  v91 = a3;
  v99 = v26;
  if (a3)
  {
    v23 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_19:
        v56 = sub_23EDC1790();
        __swift_project_value_buffer(v56, qword_27E389830);
        v57 = sub_23EDC1770();
        v58 = sub_23EDC1D80();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_23ED67000, v57, v58, "Error getting system virtual memory", v59, 2u);
          MEMORY[0x23EF24B30](v59, -1, -1);
        }

        v60 = sub_23EDC16F0();
        v61 = sub_23EDC1E10();
        result = sub_23EDC1E30();
        if (result)
        {
          if (v91)
          {
            if (!HIDWORD(v92))
            {
              if ((v92 & 0xFFFFF800) == 0xD800)
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              if (v92 >> 16 <= 0x10)
              {
                v63 = &v105;
                goto LABEL_37;
              }

              goto LABEL_58;
            }
          }

          else
          {
            if (v92)
            {
              v63 = v92;
LABEL_37:
              v70 = swift_slowAlloc();
              *v70 = 0;
              v69 = a3;
              v71 = sub_23EDC16C0();
              _os_signpost_emit_with_name_impl(&dword_23ED67000, v60, v61, v71, v63, "process-unwired-current -1 MB process-unwired-peak -1 MB", v70, 2u);
LABEL_43:
              MEMORY[0x23EF24B30](v70, -1, -1);
              goto LABEL_44;
            }

            __break(1u);
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_31;
      }

      v23 = (a1 >> 16);
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v27 = a1 + 1;
LABEL_9:
          v104 = (v27 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v27) >> 3))));
          goto LABEL_10;
        }

LABEL_48:
        v82 = (a1 & 0x3F) << 8;
        v83 = (a1 >> 6) + v82 + 33217;
        v84 = (v82 | (a1 >> 6) & 0x3F) << 8;
        v85 = (a1 >> 18) + ((v84 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v86 = (a1 >> 12) + v84 + 8487393;
        if (v23)
        {
          v27 = v85;
        }

        else
        {
          v27 = v86;
        }

        if (a1 < 0x800)
        {
          v27 = v83;
        }

        goto LABEL_9;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_46;
  }

LABEL_10:
  v28 = sub_23EDC1A30();
  v30 = v29;
  v31 = OBJC_IVAR____TtC16AlchemistService10Signposter_signpostIDMap;
  swift_beginAccess();
  v32 = *(a4 + v31);
  v33 = *(v32 + 16);
  v92 = a1;
  v93 = v10;
  v98 = v11;
  if (v33)
  {

    v34 = sub_23ED906A8(v28, v30);
    if (v35)
    {
      v36 = v100;
      (*(v11 + 16))(v25, *(v32 + 56) + *(v11 + 72) * v34, v100);

      (*(v11 + 56))(v25, 0, 1, v36);
      sub_23EDC0A50(v25);
      goto LABEL_15;
    }
  }

  v37 = *(v11 + 56);
  v38 = v28;
  v39 = a4;
  v40 = v30;
  v41 = v100;
  v37(v25, 1, 1, v100);
  sub_23EDC0A50(v25);

  sub_23EDC16F0();
  v42 = v99;
  sub_23EDC16B0();
  v43 = v41;
  v30 = v40;
  a4 = v39;
  v28 = v38;
  v37(v42, 0, 1, v43);
  swift_beginAccess();
  sub_23ED88C4C(v42, v38, v30);
  swift_endAccess();
LABEL_15:
  v44 = *(a4 + v31);
  if (!*(v44 + 16))
  {
LABEL_26:
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_23EDC1EC0();

    v102 = 0xD00000000000001ALL;
    v103 = 0x800000023EDCBC00;
    MEMORY[0x23EF237D0](v28, v30);

    v64 = v102;
    v65 = v103;
    sub_23EDC098C();
    swift_allocError();
    *v66 = v64;
    *(v66 + 8) = v65;
    *(v66 + 16) = 0;
    return swift_willThrow();
  }

  v45 = *(a4 + v31);

  v46 = sub_23ED906A8(v28, v30);
  if ((v47 & 1) == 0)
  {

    goto LABEL_26;
  }

  v99 = v30;
  v48 = v98;
  v49 = *(v44 + 56) + *(v98 + 72) * v46;
  v50 = v98 + 16;
  v51 = v95;
  v52 = v100;
  v88 = *(v98 + 16);
  v88(v95, v49, v100);

  a3 = v97;
  (*(v48 + 32))(v97, v51, v52);
  v53 = v96;
  v54 = sub_23EDA8D70();
  v89 = v50;
  v90 = v28;
  if (v53)
  {

    if (qword_27E3881A8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

  v67 = a3;
  v68 = v54;
  v96 = v55;
  v60 = sub_23EDC16F0();
  a3 = sub_23EDC1E10();
  result = sub_23EDC1E30();
  if ((result & 1) == 0)
  {
    v69 = v67;
    goto LABEL_44;
  }

  if ((v91 & 1) == 0)
  {
    if (!v92)
    {
      __break(1u);
LABEL_31:
      v69 = a3;
LABEL_44:
      v73 = v88;

      v74 = v100;
      v73(v94, v69, v100);
      v75 = sub_23EDC1750();
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      v78 = sub_23EDC1740();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
      v80 = *(v79 + 48);
      v81 = v93;
      *v93 = v78;

      sub_23EDC1F50();
      (*(*(v79 - 8) + 56))(v81, 0, 1, v79);
      swift_beginAccess();
      sub_23ED88E24(v81, v90, v99);
      swift_endAccess();

      return (*(v98 + 8))(v69, v74);
    }

LABEL_42:
    v70 = swift_slowAlloc();
    *v70 = 134218240;
    *(v70 + 4) = v68;
    *(v70 + 12) = 2048;
    *(v70 + 14) = v96;
    v69 = v67;
    v72 = sub_23EDC16C0();
    _os_signpost_emit_with_name_impl(&dword_23ED67000, v60, a3, v72, v92, "process-unwired-current %llu MB process-unwired-peak %llu MB", v70, 0x16u);
    goto LABEL_43;
  }

  if (HIDWORD(v92))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((v92 & 0xFFFFF800) != 0xD800)
  {
    if (v92 >> 16 > 0x10)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v92 = &v101;
    goto LABEL_42;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_23EDBF9EC(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, void, uint64_t), uint64_t a6)
{
  v106 = a6;
  v120 = a4;
  v104 = sub_23EDC1710();
  v112 = *(v104 - 8);
  v9 = *(v112 + 64);
  v10 = MEMORY[0x28223BE20](v104);
  v102 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = v100 - v12;
  v13 = sub_23EDC16D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v108 = (v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v107 = v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (v100 - v22);
  v114 = sub_23EDC1F70();
  v116 = *(v114 - 8);
  v24 = *(v116 + 64);
  v25 = MEMORY[0x28223BE20](v114);
  v105 = v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v100 - v27;
  v115 = v100 - v27;
  v103 = a3;
  v113 = a5;
  v109 = v14;
  v110 = v13;
  if (a3)
  {
    v28 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_64:
        swift_once();
LABEL_14:
        v42 = sub_23EDC1790();
        __swift_project_value_buffer(v42, qword_27E389830);
        v43 = sub_23EDC1770();
        v44 = sub_23EDC1D80();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_23ED67000, v43, v44, "Error getting system virtual memory", v45, 2u);
          MEMORY[0x23EF24B30](v45, -1, -1);
        }

        v30 = sub_23EDC16F0();
        v46 = v108;
        sub_23EDC1730();
        v47 = sub_23EDC1E00();
        if (sub_23EDC1E30())
        {
          LODWORD(v111) = v47;
          if ((v103 & 1) == 0)
          {

            v48 = v104;
            v49 = v102;
            if (!a1)
            {
              __break(1u);
              goto LABEL_20;
            }

            goto LABEL_34;
          }

          v61 = HIDWORD(a1);
          v48 = v104;
          v49 = v102;
          if (HIDWORD(a1))
          {
            __break(1u);
            goto LABEL_66;
          }

          v61 = a1 & 0xFFFFF800;
          v62 = 55296;
          if (v61 != 55296)
          {
            v61 = a1 >> 16;
            if (a1 >> 16 <= 0x10)
            {
              if (a1 <= 0x7F)
              {
                v63 = a1 + 1;
LABEL_33:
                v117 = (v63 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v63) & 0x18)));

                a1 = &v117;
LABEL_34:
                v57 = v113;
                v58 = v110;

                sub_23EDC1760();

                if ((*(v19 + 88))(v49, v48) == *MEMORY[0x277D85B00])
                {
                  v64 = "[Error] Interval already ended";
                }

                else
                {
                  (*(v19 + 8))(v49, v48);
                  v64 = "process-unwired-current -1 MB process-unwired-peak -1 MB";
                }

                v65 = swift_slowAlloc();
                *v65 = 0;
                v66 = v108;
                v67 = sub_23EDC16C0();
                _os_signpost_emit_with_name_impl(&dword_23ED67000, v30, v111, v67, a1, v64, v65, 2u);
                MEMORY[0x23EF24B30](v65, -1, -1);

                v46 = v66;
                goto LABEL_38;
              }

LABEL_67:
              v62 = (a1 & 0x3F) << 8;
              if (a1 < 0x800)
              {
                v93 = (a1 >> 6) + v62;
                v94 = 33217;
                goto LABEL_69;
              }

LABEL_79:
              v98 = (v62 | (a1 >> 6) & 0x3F) << 8;
              if (!v61)
              {
                v63 = (a1 >> 12) + v98 + 8487393;
                goto LABEL_70;
              }

              v93 = (a1 >> 18) + ((v98 | (a1 >> 12) & 0x3F) << 8);
              v94 = -2122219023;
LABEL_69:
              v63 = v93 + v94;
LABEL_70:
              v23 = v114;
              v48 = v104;
              v19 = v112;
              v49 = v102;
              goto LABEL_33;
            }

LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_26:

        v57 = v113;
        v58 = v110;
LABEL_38:
        (*(v109 + 8))(v46, v58);
        if (v57)
        {
          v68 = v105;
          sub_23EDC1F50();
          v69 = v115;
          v70 = sub_23EDC1F60();
          v72 = v71;
          v73 = *(v116 + 8);
          v73(v68, v23);
          v57(v70, v72, 0, 0, 1);

          return (v73)(v69, v23);
        }

        else
        {
          (*(v116 + 8))(v115, v23);
        }
      }

      v28 = (a1 >> 16);
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v29 = a1 + 1;
LABEL_9:
          v119 = (v29 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v29) >> 3))));
          goto LABEL_10;
        }

LABEL_57:
        v88 = (a1 & 0x3F) << 8;
        v89 = (a1 >> 6) + v88 + 33217;
        v90 = (v88 | (a1 >> 6) & 0x3F) << 8;
        v91 = (a1 >> 18) + ((v90 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v92 = (a1 >> 12) + v90 + 8487393;
        if (v28)
        {
          v29 = v91;
        }

        else
        {
          v29 = v92;
        }

        if (a1 < 0x800)
        {
          v29 = v89;
        }

        goto LABEL_9;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_10:
  v30 = sub_23EDC1A30();
  v14 = v31;
  v32 = OBJC_IVAR____TtC16AlchemistService10Signposter_signpostStateMap;
  v33 = v120;
  swift_beginAccess();
  v34 = *(v33 + v32);
  if (!*(v34 + 16))
  {
LABEL_21:
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_23EDC1EC0();

    v117 = 0xD00000000000001DLL;
    v118 = 0x800000023EDCBBC0;
    MEMORY[0x23EF237D0](v30, v14);

    v50 = v117;
    v51 = v118;
    sub_23EDC098C();
    swift_allocError();
    *v52 = v50;
    *(v52 + 8) = v51;
    *(v52 + 16) = 1;
    return swift_willThrow();
  }

  v35 = sub_23ED906A8(v30, v14);
  if ((v36 & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_23EDC09E0(*(v34 + 56) + *(v20 + 72) * v35, v23);

  v37 = *v23;
  v38 = v23 + *(v19 + 48);
  v23 = v114;
  (*(v116 + 32))(v115, v38, v114);
  v39 = v111;
  v40 = sub_23EDA8D70();
  if (v39)
  {

    v19 = v112;
    if (qword_27E3881A8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

  v54 = v40;
  v111 = v41;
  v46 = sub_23EDC16F0();
  sub_23EDC1730();
  v23 = sub_23EDC1E00();
  v55 = sub_23EDC1E30();
  v30 = v112;
  v100[1] = v37;
  if (v55)
  {
    v100[0] = v54;
    if ((v103 & 1) == 0)
    {

      v56 = v104;
      if (!a1)
      {
        __break(1u);
        goto LABEL_26;
      }

      goto LABEL_47;
    }

    v74 = HIDWORD(a1);
    v56 = v104;
    if (HIDWORD(a1))
    {
      __break(1u);
    }

    else
    {
      v61 = a1 & 0xFFFFF800;
      v62 = 55296;
      if (v61 == 55296)
      {
        goto LABEL_78;
      }

      v74 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v75 = a1 + 1;
LABEL_46:
          v117 = (v75 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v75) & 0x18)));

          a1 = &v117;
LABEL_47:
          v59 = v113;
          v76 = v101;

          sub_23EDC1760();

          if ((*(v30 + 88))(v76, v56) == *MEMORY[0x277D85B00])
          {
            v77 = 0;
            v78 = "[Error] Interval already ended";
          }

          else
          {
            (*(v30 + 8))(v76, v56);
            v78 = "process-unwired-current %llu MB process-unwired-peak %llu MB";
            v77 = 2;
          }

          v79 = swift_slowAlloc();
          *v79 = 0;
          *(v79 + 1) = v77;
          *(v79 + 2) = 2048;
          v54 = v100[0];
          *(v79 + 4) = v100[0];
          *(v79 + 12) = 2048;
          *(v79 + 14) = v111;
          v60 = v107;
          v80 = sub_23EDC16C0();
          _os_signpost_emit_with_name_impl(&dword_23ED67000, v46, v23, v80, a1, v78, v79, 0x16u);
          MEMORY[0x23EF24B30](v79, -1, -1);

          goto LABEL_51;
        }

LABEL_73:
        v95 = (a1 & 0x3F) << 8;
        if (a1 >= 0x800)
        {
          v99 = (v95 | (a1 >> 6) & 0x3F) << 8;
          if (!v74)
          {
            v75 = (a1 >> 12) + v99 + 8487393;
            goto LABEL_76;
          }

          v96 = (a1 >> 18) + ((v99 | (a1 >> 12) & 0x3F) << 8);
          v97 = -2122219023;
        }

        else
        {
          v96 = (a1 >> 6) + v95;
          v97 = 33217;
        }

        v75 = v96 + v97;
LABEL_76:
        v56 = v104;
        v30 = v112;
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_73;
  }

  v59 = v113;
  v60 = v107;
LABEL_51:
  (*(v109 + 8))(v60, v110);
  v81 = v114;
  if (v59)
  {
    v82 = v105;
    sub_23EDC1F50();
    v83 = v115;
    v84 = sub_23EDC1F60();
    v86 = v85;
    v87 = *(v116 + 8);
    v87(v82, v81);
    v113(v84, v86, v54, v111, 0);

    return (v87)(v83, v81);
  }

  else
  {
    (*(v116 + 8))(v115, v114);
  }
}

uint64_t sub_23EDC0608()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16AlchemistService10Signposter_signposter;
  v3 = sub_23EDC1700();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16AlchemistService10Signposter_clock;
  v5 = sub_23EDC1F90();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC16AlchemistService10Signposter_signpostIDMap];

  v7 = *&v0[OBJC_IVAR____TtC16AlchemistService10Signposter_signpostStateMap];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signposter()
{
  result = qword_27E3896D8;
  if (!qword_27E3896D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23EDC0770()
{
  result = sub_23EDC1700();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_23EDC1F90();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23EDC0868()
{
  v0 = sub_23EDC1790();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E3881A8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E389830);
  (*(v1 + 16))(v4, v5, v0);
  v6 = type metadata accessor for Signposter();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = sub_23EDBECDC(v4);
  qword_27E389878 = v9;
  return result;
}

unint64_t sub_23EDC098C()
{
  result = qword_27E3896E8;
  if (!qword_27E3896E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3896E8);
  }

  return result;
}

uint64_t sub_23EDC09E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23EDC0A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C48, &qword_23EDC9D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23EDC0AB8()
{
  result = qword_27E3896F0;
  if (!qword_27E3896F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3896F0);
  }

  return result;
}

unint64_t sub_23EDC0B04()
{
  result = qword_27E3896F8;
  if (!qword_27E3896F8)
  {
    sub_23EDC1DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3896F8);
  }

  return result;
}

unint64_t sub_23EDC0B5C()
{
  result = qword_27E389708;
  if (!qword_27E389708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E389700, &qword_23EDC9D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389708);
  }

  return result;
}

uint64_t sub_23EDC0BCC(uint64_t a1, unsigned int a2)
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

uint64_t sub_23EDC0C14(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23EDC0C74()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}