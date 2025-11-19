unint64_t sub_240E7CFD0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240E7CE10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_240E7D000()
{
  result = qword_27E51B6C0;
  if (!qword_27E51B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B6C0);
  }

  return result;
}

uint64_t sub_240E7D054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v4 = sub_240E867B4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6C8, &qword_240E89250);
  OUTLINED_FUNCTION_3(v86);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v81 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6D0, &qword_240E89258);
  OUTLINED_FUNCTION_3(v84);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v17);
  v85 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6D8, &qword_240E89260);
  OUTLINED_FUNCTION_3(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6E0, &qword_240E89268);
  OUTLINED_FUNCTION_3(v83);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6E8, &qword_240E89270);
  OUTLINED_FUNCTION_3(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v33);
  v35 = (&v81 - v34);
  v36 = *(v2 + 16);
  if (v36 == 7)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
    OUTLINED_FUNCTION_3(v52);
    (*(v53 + 16))(v24, v82, v52);
    swift_storeEnumTagMultiPayload();
    sub_240E7DB7C();
    OUTLINED_FUNCTION_1_4();
    sub_240E6BAE4(v54, &qword_27E51B6F8, &qword_240E89288);
    OUTLINED_FUNCTION_4_2();
    sub_240E869D4();
    v48 = &qword_240E89268;
    sub_240E6AF3C(v29, v85, &qword_27E51B6E0, &qword_240E89268);
    swift_storeEnumTagMultiPayload();
    sub_240E7DAC4();
    sub_240E7DCC0();
    sub_240E869D4();
    v50 = v29;
    v51 = &qword_27E51B6E0;
    return sub_240E6AFAC(v50, v51, v48);
  }

  v81 = a2;
  if (v36 == 1)
  {
    v37 = sub_240E7D7C8(v82);
    v38 = sub_240E7D97C();
    v39 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B740, &qword_240E892B8) + 36));
    v40 = *(v4 + 20);
    v41 = *MEMORY[0x277CE0118];
    v42 = sub_240E86974();
    OUTLINED_FUNCTION_3(v42);
    (*(v43 + 104))(v39 + v40, v41);
    *v39 = v38;
    v39[1] = v38;
    *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
    *v35 = v37;
    v44 = v2[3];
    v45 = v2[4];
    sub_240E86E24();
    sub_240E866F4();
    v46 = (v35 + *(v30 + 36));
    v47 = v88;
    *v46 = v87;
    v46[1] = v47;
    v46[2] = v89;
    v48 = &qword_240E89270;
    sub_240E6AF3C(v35, v24, &qword_27E51B6E8, &qword_240E89270);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
    sub_240E7DB7C();
    OUTLINED_FUNCTION_1_4();
    sub_240E6BAE4(v49, &qword_27E51B6F8, &qword_240E89288);
    OUTLINED_FUNCTION_4_2();
    sub_240E869D4();
    sub_240E6AF3C(v29, v85, &qword_27E51B6E0, &qword_240E89268);
    swift_storeEnumTagMultiPayload();
    sub_240E7DAC4();
    sub_240E7DCC0();
    sub_240E869D4();
    sub_240E6AFAC(v29, &qword_27E51B6E0, &qword_240E89268);
    v50 = v35;
    v51 = &qword_27E51B6E8;
    return sub_240E6AFAC(v50, v51, v48);
  }

  v56 = sub_240E7D97C();
  v57 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F0, &unk_240E89278) + 36)];
  v58 = *(v4 + 20);
  v59 = *MEMORY[0x277CE0118];
  v60 = sub_240E86974();
  OUTLINED_FUNCTION_3(v60);
  v62 = *(v61 + 104);
  v62(v57 + v58, v59, v60);
  *v57 = v56;
  v57[1] = v56;
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
  OUTLINED_FUNCTION_3(v63);
  (*(v64 + 16))(v14, v82);
  v62(v9 + *(v4 + 20), v59, v60);
  *v9 = v56;
  v9[1] = v56;
  v65 = *v2;
  v66 = v2[1];
  sub_240E866B4();
  v67 = &v14[*(v86 + 36)];
  sub_240E6AD34(v9, v67);
  v68 = *&v87 * 0.5;
  v69 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B700, &qword_240E89290) + 68);
  sub_240E6AD34(v9, v69);
  *(v69 + *(sub_240E867A4() + 20)) = v68;
  v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B708, &qword_240E89298) + 36);
  v71 = v88;
  *v70 = v87;
  *(v70 + 16) = v71;
  *(v70 + 32) = v89;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B710, &qword_240E892A0);
  *(v69 + *(v72 + 52)) = v65;
  *(v69 + *(v72 + 56)) = 256;

  v73 = sub_240E86E24();
  v75 = v74;
  sub_240E6AD98(v9);
  v76 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B718, &qword_240E892A8) + 36));
  *v76 = v73;
  v76[1] = v75;
  v77 = sub_240E86E24();
  v79 = v78;
  v80 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B720, &qword_240E892B0) + 36));
  *v80 = v77;
  v80[1] = v79;
  sub_240E69DC4(v14, v85);
  swift_storeEnumTagMultiPayload();
  sub_240E7DAC4();
  sub_240E7DCC0();
  sub_240E869D4();
  return sub_240E69E2C(v14);
}

uint64_t sub_240E7D7C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B768, &qword_240E892C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  if (*(v1 + 16) == 1)
  {
    v12(v11, a1, v3);
    *&v11[*(v8 + 36)] = xmmword_240E890E0;
    sub_240E7DE5C();
  }

  else
  {
    v12(v7, a1, v3);
    sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288);
  }

  return sub_240E86DC4();
}

double sub_240E7D97C()
{
  v1 = 0.5;
  result = 2.0;
  switch(*(v0 + 16))
  {
    case 1:
      return result;
    case 2:
    case 3:
    case 6:
      return v1 * *(v0 + 24);
    case 4:
      v1 = 0.22;
      return v1 * *(v0 + 24);
    default:
      v1 = 0.11;
      return v1 * *(v0 + 24);
  }
}

uint64_t sub_240E7D9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_240E7D054(a1, a2);
}

uint64_t sub_240E7DA10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7DA50(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_240E7DAC4()
{
  result = qword_27E51B728;
  if (!qword_27E51B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6E0, &qword_240E89268);
    sub_240E7DB7C();
    sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B728);
  }

  return result;
}

unint64_t sub_240E7DB7C()
{
  result = qword_27E51B730;
  if (!qword_27E51B730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6E8, &qword_240E89270);
    sub_240E7DC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B730);
  }

  return result;
}

unint64_t sub_240E7DC08()
{
  result = qword_27E51B738;
  if (!qword_27E51B738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B740, &qword_240E892B8);
    sub_240E6BAE4(&qword_2815037C8, &qword_27E51B130, &qword_240E879F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B738);
  }

  return result;
}

unint64_t sub_240E7DCC0()
{
  result = qword_27E51B750;
  if (!qword_27E51B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6C8, &qword_240E89250);
    sub_240E7DD78();
    sub_240E6BAE4(&qword_27E51B760, &qword_27E51B720, &qword_240E892B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B750);
  }

  return result;
}

unint64_t sub_240E7DD78()
{
  result = qword_27E51B758;
  if (!qword_27E51B758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6F0, &unk_240E89278);
    sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288);
    sub_240E6BAE4(&qword_2815037C8, &qword_27E51B130, &qword_240E879F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B758);
  }

  return result;
}

unint64_t sub_240E7DE5C()
{
  result = qword_27E51B770;
  if (!qword_27E51B770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B768, &qword_240E892C0);
    sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288);
    sub_240E7DF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B770);
  }

  return result;
}

unint64_t sub_240E7DF14()
{
  result = qword_27E51B778;
  if (!qword_27E51B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B778);
  }

  return result;
}

unint64_t sub_240E7DF68()
{
  result = qword_27E51B780;
  if (!qword_27E51B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B788, &unk_240E892C8);
    sub_240E7DAC4();
    sub_240E7DCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B780);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_240E86F94();
}

void *sub_240E7E044(void *a1, void *a2)
{
  v3 = [a1 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_240E7C050();
  v4 = sub_240E86F34();

  sub_240E6D14C(*MEMORY[0x277CEE308], v4, &v11);
  if (!v12)
  {
    sub_240E6DFC8(&v11, &qword_27E51B178, "V:");
    goto LABEL_5;
  }

  if (!OUTLINED_FUNCTION_0_0())
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v10;
LABEL_6:
  v6 = sub_240E75EA0(v5);
  if (v6 != 4 && v6)
  {
    sub_240E6D14C(*MEMORY[0x277CEE318], v4, &v11);
    if (v12)
    {
      OUTLINED_FUNCTION_0_0();
    }

    else
    {
      sub_240E6DFC8(&v11, &qword_27E51B178, "V:");
    }

    sub_240E6D14C(*MEMORY[0x277CEE310], v4, &v11);

    if (v12)
    {
      if (OUTLINED_FUNCTION_0_0())
      {
        v7 = v10;
LABEL_17:
        sub_240E7CE10(v7);
        v8 = a2;
        return a2;
      }
    }

    else
    {
      sub_240E6DFC8(&v11, &qword_27E51B178, "V:");
    }

    v7 = 0;
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_240E7E250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7E290(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_240E7E2FC(void *a1@<X0>, __int16 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v6 = HIBYTE(a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F0, &qword_240E879B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = 0uLL;
  if (v6 == 2)
  {
    if (a1)
    {
      KeyPath = swift_getKeyPath();
      v38 = a1;
      v39 = 0x3FF0000000000000;
      v40 = v3 << 8;
      v41 = KeyPath;
      v42 = 256;
      sub_240E7E5B0();
      v35 = a1;
      sub_240E869D4();
      v11 = OUTLINED_FUNCTION_1_5();
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = 256;
      }

      goto LABEL_10;
    }

LABEL_11:
    v36 = -256;
    v31 = 0uLL;
    goto LABEL_12;
  }

  if (v6 != 3)
  {
    goto LABEL_11;
  }

  sub_240E86D64();
  v12 = sub_240E86C44();
  v14 = v13;
  v16 = v15;
  v17 = sub_240E86AB4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  sub_240E86B04();
  sub_240E6DFC8(v10, &qword_27E51B0F0, &qword_240E879B0);
  v18 = sub_240E86C04();
  v20 = v19;
  v22 = v21;

  sub_240E6AE70(v12, v14, v16 & 1);

  v43 = sub_240E86CF4();
  v23 = sub_240E86BE4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_240E6AE70(v18, v20, v22 & 1);

  v38 = v23;
  v39 = v25;
  v40 = v27 & 1;
  v41 = v29;
  v42 = 0;
  sub_240E7E5B0();
  sub_240E869D4();
  v11 = OUTLINED_FUNCTION_1_5();
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = 256;
  }

LABEL_10:
  v36 = v33 | v30;
LABEL_12:
  *a3 = v11;
  a3[1] = v31;
  a3[2].n128_u16[0] = v36;
}

void sub_240E7E5A0(__n128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_240E7E2FC(*v1, *(v1 + 8), a1);
}

unint64_t sub_240E7E5B0()
{
  result = qword_27E51B790;
  if (!qword_27E51B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B790);
  }

  return result;
}

unint64_t sub_240E7E604()
{
  result = qword_27E51B798;
  if (!qword_27E51B798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B7A0, &qword_240E893D8);
    sub_240E7E688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B798);
  }

  return result;
}

unint64_t sub_240E7E688()
{
  result = qword_27E51B7A8;
  if (!qword_27E51B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B7B0, &unk_240E893E0);
    sub_240E7E5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7A8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_1_5()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  v3 = *(v0 - 96);
  v4 = *(v0 - 95) == 0;
  return result;
}

uint64_t sub_240E7E730()
{
  type metadata accessor for Localizations();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_240E863F4();

  return v2;
}

uint64_t sub_240E7E80C()
{
  v0 = sub_240E865F4();
  __swift_allocate_value_buffer(v0, qword_27E51CEB0);
  __swift_project_value_buffer(v0, qword_27E51CEB0);
  return sub_240E865E4();
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

uint64_t sub_240E7E8E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7E928(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_240E7E9A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_240E869B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B7B8, &unk_240E894A0);
  return sub_240E7E9F4(v1, a1 + *(v3 + 44));
}

uint64_t sub_240E7E9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F0, &qword_240E879B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = v87 - v5;
  v6 = sub_240E867B4();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B128, &unk_240E894B0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (v87 - v16);
  v18 = *a1;
  v96 = *(a1 + 8);
  v19 = *(a1 + 24);
  v95 = *(a1 + 16);
  v93 = v19;
  v92 = *(a1 + 32);
  v20 = v18;
  v90 = sub_240E86D44();
  v21 = *(a1 + 40);
  v22 = *(v7 + 28);
  LODWORD(v89) = *MEMORY[0x277CE0118];
  v23 = v89;
  v24 = sub_240E86974();
  v88 = *(*(v24 - 8) + 104);
  v88(&v10[v22], v23, v24);
  *v10 = v21;
  *(v10 + 1) = v21;
  v25 = [objc_opt_self() systemGrayColor];
  v26 = sub_240E86D34();
  sub_240E866B4();
  v27 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B100, &unk_240E879C0) + 36);
  sub_240E6AD34(v10, v27);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B108, &unk_240E894C0) + 36);
  v29 = v102;
  *v28 = v101;
  *(v28 + 16) = v29;
  *(v28 + 32) = v103;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B110, &unk_240E879D0);
  *(v27 + *(v30 + 52)) = v26;
  *(v27 + *(v30 + 56)) = 256;
  v31 = sub_240E86E24();
  v33 = v32;
  sub_240E6AD98(v10);
  v34 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B118, &qword_240E894D0) + 36));
  *v34 = v31;
  v34[1] = v33;
  v35 = sub_240E86E24();
  v37 = v36;
  v38 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B120, &unk_240E879E0) + 36));
  *v38 = v35;
  v38[1] = v37;
  v91 = v17;
  *v17 = v90;
  v39 = v17 + *(v12 + 44);
  v88(&v39[*(v7 + 28)], v89, v24);
  *v39 = v21;
  *(v39 + 1) = v21;
  *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)] = 256;
  v105 = v96;
  v106 = v95;
  v87[1] = sub_240E6ADF4();

  v40 = sub_240E86C34();
  v42 = v41;
  LOBYTE(v37) = v43;
  sub_240E86AC4();
  v44 = sub_240E86AB4();
  v45 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v44);
  sub_240E86B04();
  sub_240E6DFC8(v45, &qword_27E51B0F0, &qword_240E879B0);
  v46 = sub_240E86C04();
  v48 = v47;
  LOBYTE(v45) = v49;

  sub_240E6AE70(v40, v42, v37 & 1);

  sub_240E86AC4();
  v89 = sub_240E86B54();
  v88 = v50;
  LOBYTE(v37) = v51;
  v90 = v52;
  sub_240E6AE70(v46, v48, v45 & 1);

  LODWORD(v96) = sub_240E86A34();
  sub_240E86684();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  LODWORD(v95) = v37 & 1;
  LOBYTE(__src[0]) = 0;
  v105 = v93;
  v106 = v92;

  v61 = sub_240E86C34();
  v63 = v62;
  LOBYTE(v37) = v64;
  sub_240E86AE4();
  v65 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v44);
  sub_240E86B04();
  sub_240E6DFC8(v65, &qword_27E51B0F0, &qword_240E879B0);
  v66 = sub_240E86C04();
  v68 = v67;
  LOBYTE(v42) = v69;

  sub_240E6AE70(v61, v63, v37 & 1);

  sub_240E86AE4();
  v70 = sub_240E86B54();
  v72 = v71;
  LODWORD(v97) = v73;
  v75 = v74;
  sub_240E6AE70(v66, v68, v42 & 1);

  KeyPath = swift_getKeyPath();
  v77 = v91;
  v78 = v98;
  sub_240E7BF78(v91, v98, &qword_27E51B128, &unk_240E894B0);
  v79 = v94;
  sub_240E7BF78(v78, v94, &qword_27E51B128, &unk_240E894B0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B7C0, &qword_240E89508);
  v81 = *(v80 + 48);
  v82 = v89;
  __src[0] = v89;
  v83 = v88;
  __src[1] = v88;
  LOBYTE(__src[2]) = v95;
  *(&__src[2] + 1) = *v100;
  HIDWORD(__src[2]) = *&v100[3];
  v84 = v90;
  __src[3] = v90;
  LOBYTE(__src[4]) = v96;
  *(&__src[4] + 1) = *v99;
  HIDWORD(__src[4]) = *&v99[3];
  __src[5] = v54;
  __src[6] = v56;
  __src[7] = v58;
  __src[8] = v60;
  LOBYTE(__src[9]) = 0;
  memcpy((v79 + v81), __src, 0x49uLL);
  v85 = v79 + *(v80 + 64);
  *v85 = v70;
  *(v85 + 8) = v72;
  LOBYTE(v80) = v97 & 1;
  *(v85 + 16) = v97 & 1;
  *(v85 + 24) = v75;
  *(v85 + 32) = KeyPath;
  *(v85 + 40) = 1;
  sub_240E7BF78(__src, &v105, &qword_27E51B7C8, &qword_240E89510);
  sub_240E6AF9C(v70, v72, v80);

  sub_240E6DFC8(v77, &qword_27E51B128, &unk_240E894B0);
  sub_240E6AE70(v70, v72, v80);

  v105 = v82;
  v106 = v83;
  v107 = v95;
  *v108 = *v100;
  *&v108[3] = *&v100[3];
  v109 = v84;
  v110 = v96;
  *v111 = *v99;
  *&v111[3] = *&v99[3];
  v112 = v54;
  v113 = v56;
  v114 = v58;
  v115 = v60;
  v116 = 0;
  sub_240E6DFC8(&v105, &qword_27E51B7C8, &qword_240E89510);
  return sub_240E6DFC8(v98, &qword_27E51B128, &unk_240E894B0);
}

uint64_t sub_240E7F2A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_240E7E9A0(a1);
}

uint64_t sub_240E7F2E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240E86864();
  *a1 = result;
  return result;
}

unint64_t sub_240E7F334()
{
  result = qword_27E51B7D0;
  if (!qword_27E51B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B7D8, &unk_240E89518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7D0);
  }

  return result;
}

id sub_240E7F398(uint64_t a1, unint64_t a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_240E86474();
  v8 = [v6 initWithData:v7 scale:a3];

  sub_240E6B618(a1, a2);
  return v8;
}

id sub_240E7F420(uint64_t a1)
{
  if (a1)
  {
    sub_240E6D0E8(0x7469547465656873, 0xEA0000000000656CLL, a1, &v19);
    if (v20)
    {
      OUTLINED_FUNCTION_0_0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
  }

  sub_240E6B514(&v19);
  if (!a1)
  {
    OUTLINED_FUNCTION_2_2();
LABEL_10:
    v2 = sub_240E6B514(&v19);
    if (!a1)
    {
      v10 = 0;
      OUTLINED_FUNCTION_2_2();
      v11 = 0xC000000000000000;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_6:
  sub_240E6D0E8(0x6F6349656C746974, 0xE90000000000006ELL, a1, &v19);
  if (!v20)
  {
    goto LABEL_10;
  }

  v2 = OUTLINED_FUNCTION_0_0();
  if (v2)
  {
    v10 = v16;
    v11 = v18;
    goto LABEL_12;
  }

LABEL_11:
  v10 = 0;
  v11 = 0xC000000000000000;
LABEL_12:
  OUTLINED_FUNCTION_1_6(v2, v3, v4, v5, v6, v7, v8, v9, v16, v18, v19);
  if (!v20)
  {
LABEL_16:
    sub_240E6B514(&v19);
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_0())
  {
    v12 = v17;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 1.0;
LABEL_18:
  sub_240E6B57C();
  sub_240E6B5C0(v10, v11);
  v13 = sub_240E7F398(v10, v11, v12);
  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v14 = v13;
  sub_240E6B618(v10, v11);
  return v14;
}

uint64_t sub_240E7F5C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_2_2();
LABEL_6:
    sub_240E6B514(&v25);
    if (!a1)
    {
      v4 = 0;
      OUTLINED_FUNCTION_2_2();
      v5 = 0xE000000000000000;
LABEL_12:
      sub_240E6B514(&v25);
      if (!a1)
      {
        v6 = 0;
        OUTLINED_FUNCTION_2_2();
        v7 = 0xE000000000000000;
LABEL_18:
        v8 = sub_240E6B514(&v25);
        if (!a1)
        {
          v16 = 0;
          OUTLINED_FUNCTION_2_2();
          v17 = 0xC000000000000000;
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      goto LABEL_13;
    }

    goto LABEL_7;
  }

  sub_240E6D0E8(0x54747865746E6F63, 0xEC000000656C7469, a1, &v25);
  if (!v26)
  {
    goto LABEL_6;
  }

  if (OUTLINED_FUNCTION_0_3())
  {
    v4 = v22;
    v5 = v24;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
  v5 = 0xE000000000000000;
LABEL_8:
  sub_240E6D0E8(0x6567617373656DLL, 0xE700000000000000, a1, &v25);
  if (!v26)
  {
    goto LABEL_12;
  }

  if (OUTLINED_FUNCTION_0_3())
  {
    v6 = v22;
    v7 = v24;
    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_14:
  sub_240E6D0E8(0x49747865746E6F63, 0xEB000000006E6F63, a1, &v25);
  if (!v26)
  {
    goto LABEL_18;
  }

  v8 = OUTLINED_FUNCTION_0_3();
  if (v8)
  {
    v16 = v22;
    v17 = v24;
    goto LABEL_20;
  }

LABEL_19:
  v16 = 0;
  v17 = 0xC000000000000000;
LABEL_20:
  OUTLINED_FUNCTION_1_6(v8, v9, v10, v11, v12, v13, v14, v15, v22, v24, v25);
  if (!v26)
  {
LABEL_24:
    sub_240E6B514(&v25);
    goto LABEL_25;
  }

  if (OUTLINED_FUNCTION_0_3())
  {
    v18 = v23;
    goto LABEL_26;
  }

LABEL_25:
  v18 = 1.0;
LABEL_26:
  sub_240E6B57C();
  sub_240E6B5C0(v16, v17);
  v19 = sub_240E7F398(v16, v17, v18);
  if (!v19)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v20 = v19;
  result = sub_240E6B618(v16, v17);
  *a2 = v20;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_240E6D0E8(0x63536E6565726373, 0xEB00000000656C61, v11, &a11);
}

uint64_t sub_240E7F86C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7F8AC(uint64_t result, int a2, int a3)
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

uint64_t sub_240E7F8FC(void *a1)
{
  v2 = *MEMORY[0x277CEE380];
  *&v12 = sub_240E86F74();
  *(&v12 + 1) = v3;
  v4 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_240E87114();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v14 = 0u;
  }

  v15 = v12;
  v16 = v14;
  if (*(&v14 + 1))
  {
    if (OUTLINED_FUNCTION_0_4())
    {
      sub_240E7FD2C();
    }
  }

  else
  {
    sub_240E6B514(&v15);
  }

  v5 = *MEMORY[0x277CEE388];
  *&v13 = sub_240E86F74();
  *(&v13 + 1) = v6;
  v7 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_240E87114();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    sub_240E6B514(&v15);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
  if ((OUTLINED_FUNCTION_0_4() & 1) == 0)
  {
LABEL_15:
    v8 = MEMORY[0x277D84F98];
    goto LABEL_16;
  }

  v8 = v11;

LABEL_16:
  v9 = sub_240E7FE4C(v8);

  return v9;
}

unint64_t sub_240E7FADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240E86554();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *MEMORY[0x277CEE3A0];
  v7 = sub_240E86F74();
  sub_240E6D0E8(v7, v8, a3, &v17);

  if (!v18)
  {
    sub_240E6B514(&v17);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_240E7CE10(v16);
  if (v9 == 8)
  {
    return 0;
  }

  v10 = v9;
  if (qword_27E51B0B0 != -1)
  {
    swift_once();
  }

  v11 = sub_240E865F4();
  __swift_project_value_buffer(v11, qword_27E51CEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
  v12 = *(sub_240E865A4() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_240E88060;
  sub_240E86544();
  sub_240E86534();
  v18 = &type metadata for IconAdornmentStyle;
  LOBYTE(v17) = v10;
  sub_240E86524();
  sub_240E6B514(&v17);
  sub_240E86534();
  sub_240E86564();
  sub_240E865B4();

  return v10;
}

uint64_t sub_240E7FD2C()
{
  v0 = sub_240E87184();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_240E7FD78(char a1)
{
  if (!a1)
  {
    return 0xD000000000000032;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002BLL;
  }

  return 0xD000000000000033;
}

uint64_t sub_240E7FDF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_240E7FD2C();
  *a2 = result;
  return result;
}

unint64_t sub_240E7FE20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_240E7FD78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240E7FE4C(uint64_t a1)
{
  v2 = *MEMORY[0x277CEE398];
  v3 = sub_240E86F74();
  sub_240E6D0E8(v3, v4, a1, &v18);

  if (!v19)
  {
    sub_240E6B514(&v18);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_27E51B0B0 != -1)
    {
      swift_once();
    }

    v10 = sub_240E865F4();
    __swift_project_value_buffer(v10, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v11 = *(sub_240E865A4() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_240E87DB0;
    sub_240E86574();
    v19 = MEMORY[0x277D837D0];
    *&v18 = 0xD000000000000041;
    *(&v18 + 1) = 0x8000000240E8A4A0;
    sub_240E86584();
    sub_240E6B514(&v18);
    sub_240E865C4();

    return 0;
  }

  sub_240E74D28(0, &qword_281503750, 0x277CCAAC8);
  sub_240E74D28(0, &qword_27E51B7E0, 0x277CEE618);
  v5 = sub_240E870B4();
  v14 = v5;
  if (v5)
  {
    sub_240E6B618(v16, v17);
    return v14;
  }

  if (qword_27E51B0B0 != -1)
  {
    swift_once();
  }

  v6 = sub_240E865F4();
  __swift_project_value_buffer(v6, qword_27E51CEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
  v7 = *(sub_240E865A4() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_240E87DB0;
  sub_240E86574();
  v19 = MEMORY[0x277D837D0];
  *&v18 = 0xD00000000000002CLL;
  *(&v18 + 1) = 0x8000000240E8A4F0;
  sub_240E86584();
  sub_240E6B514(&v18);
  sub_240E865C4();

  sub_240E6B618(v16, v17);
  return 0;
}

uint64_t sub_240E80204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277CEE390];
  v5 = sub_240E86F74();
  sub_240E6D0E8(v5, v6, a3, &v10);

  if (!v11)
  {
    sub_240E6B514(&v10);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v7 = 0x3C6u >> v9;
  if (v9 >= 0xA)
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t getEnumTagSinglePayload for PaymentRequestLayoutStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PaymentRequestLayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_240E80414()
{
  result = qword_27E51B7E8;
  if (!qword_27E51B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_dynamicCast();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240E804A8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E804FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_240E80580()
{
  v1 = sub_240E868C4();
  v2 = OUTLINED_FUNCTION_3_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 32);
  v9 = *(v0 + 24);
  v13 = v9;
  if (v14 == 1)
  {
    return v9;
  }

  sub_240E870A4();
  v11 = sub_240E86A24();
  sub_240E86624();

  sub_240E868B4();
  swift_getAtKeyPath();
  sub_240E80A30(&v13);
  (*(v4 + 8))(v8, v1);
  return *&v12[1];
}

void *sub_240E806C8@<X0>(void *a1@<X8>)
{
  v3 = sub_240E86D74();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *v1;
  if (*v1)
  {
    if (*(v1 + 16))
    {
      v12 = v11;
      sub_240E80580();
    }

    else
    {
      v13 = *(v1 + 8);
      v14 = v11;
    }

    v15 = v11;
    sub_240E86D54();
    (*(v6 + 104))(v10, *MEMORY[0x277CE0FE0], v3);
    v16 = sub_240E86D94();

    (*(v6 + 8))(v10, v3);
    v17 = *(v1 + 17);
    v18 = sub_240E809A8();
    if (qword_27E51B0A8 != -1)
    {
      swift_once();
    }

    v19 = qword_27E51B2E0;
    v24 = 1;

    sub_240E809A8();
    sub_240E86E24();
    sub_240E867C4();

    v23[0] = v16;
    v23[1] = 0;
    LOWORD(v23[2]) = 1;
    v23[3] = v19;
    v23[4] = 0x3FE0000000000000;
    LOBYTE(v23[5]) = v17;
    *&v23[6] = v18;
    v23[7] = 0x404B000000000000;
    memcpy(&v23[8], v22, 0x70uLL);
    LOBYTE(v23[22]) = 1;
    nullsub_1(v23);
    memcpy(v25, v23, 0xB1uLL);
  }

  else
  {
    sub_240E80A28(v25);
  }

  return memcpy(a1, v25, 0xB1uLL);
}

double sub_240E809A8()
{
  if (!*v0)
  {
    return 54.0;
  }

  v1 = *(v0 + 17);
  v2 = *v0;
  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);

  v5 = v1 == 2 && Height < Width;
  result = 54.0;
  if (v5)
  {
    return 72.0;
  }

  return result;
}

uint64_t sub_240E80A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B7F0, &qword_240E897B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E80A98()
{
  result = qword_27E51B7F8;
  if (!qword_27E51B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B800, &qword_240E897C0);
    sub_240E80B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B7F8);
  }

  return result;
}

unint64_t sub_240E80B1C()
{
  result = qword_27E51B808;
  if (!qword_27E51B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B810, &qword_240E897C8);
    sub_240E80BA8();
    sub_240E80D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B808);
  }

  return result;
}

unint64_t sub_240E80BA8()
{
  result = qword_27E51B818;
  if (!qword_27E51B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B820, &qword_240E897D0);
    sub_240E80C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B818);
  }

  return result;
}

unint64_t sub_240E80C34()
{
  result = qword_27E51B828;
  if (!qword_27E51B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B830, &qword_240E897D8);
    sub_240E6DF44();
    sub_240E80CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B828);
  }

  return result;
}

unint64_t sub_240E80CC0()
{
  result = qword_27E51B838;
  if (!qword_27E51B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B838);
  }

  return result;
}

unint64_t sub_240E80D14()
{
  result = qword_27E51B840;
  if (!qword_27E51B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B840);
  }

  return result;
}

uint64_t sub_240E80D68@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v66 = a3;
  v67 = a2;
  v68 = a4;
  v4 = a1;
  v5 = [v4 label];
  v82 = MEMORY[0x277D84F90];
  [v5 length];
  OUTLINED_FUNCTION_7_1();
  v6 = swift_allocObject();
  *(v6 + 16) = &v82;
  *(v6 + 24) = v5;
  OUTLINED_FUNCTION_7_1();
  v7 = swift_allocObject();
  v7[2] = sub_240E82EC8;
  v7[3] = v6;
  v65 = v6;
  *&v81 = sub_240E82ED0;
  *(&v81 + 1) = v7;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v80 = sub_240E814CC;
  *(&v80 + 1) = &block_descriptor_2;
  v8 = _Block_copy(&aBlock);
  v9 = v5;

  v69 = v9;
  OUTLINED_FUNCTION_6_1(v9, sel_enumerateAttributesInRange_options_usingBlock_);
  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v54 = v4[2];
    v55 = OUTLINED_FUNCTION_4_3();
    sub_240E73EA4(v55, v56, v57, v4);
    v4 = v58;
    goto LABEL_21;
  }

  v77 = 0;
  v78 = 1;
  v7 = [v4 label];
  v10 = swift_allocObject();
  *(v10 + 16) = &v77;
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_240E82F10;
  *(v11 + 24) = v10;
  *&v81 = sub_240E83B90;
  *(&v81 + 1) = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v80 = sub_240E814CC;
  *(&v80 + 1) = &block_descriptor_13;
  v12 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_6_1(v7, sel_enumerateAttributesInRange_options_usingBlock_);

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_28;
  }

  v63 = v10;
  v62 = [v4 image];
  v64 = v4;

  v61 = v77;
  v14 = v78;
  KeyPath = swift_getKeyPath();
  v84 = v14;
  v83 = 0;
  v15 = *(v82 + 16);
  v70 = v82 + 32;
  v71 = v82;

  v16 = 0;
  v7 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = 0uLL;
    v18 = v15;
    v19 = 0uLL;
    v20 = 0uLL;
    if (v16 != v15)
    {
      if (v16 >= *(v71 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v18 = v16 + 1;
      *&v75[0] = v16;
      sub_240E74C7C(v70 + 40 * v16, v75 + 8);
      v17 = v75[0];
      v19 = v75[1];
      v20 = v75[2];
    }

    aBlock = v17;
    v80 = v19;
    v81 = v20;
    if (!v20)
    {
      break;
    }

    sub_240E74B14((&aBlock + 8), v75);
    sub_240E74C7C(v75, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
    if (swift_dynamicCast())
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = v4[2];
        v34 = OUTLINED_FUNCTION_4_3();
        sub_240E73EA4(v34, v35, v36, v4);
        v4 = v37;
      }

      v22 = v4[2];
      v21 = v4[3];
      if (v22 >= v21 >> 1)
      {
        sub_240E73EA4(v21 > 1, v22 + 1, 1, v4);
        v4 = v38;
      }

      v4[2] = v22 + 1;
      v4[v22 + 4] = v7;
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      v16 = v18;
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_240E74C7C(v75, v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v7[2];
        v40 = OUTLINED_FUNCTION_4_3();
        sub_240E73D7C(v40, v41, v42, v7);
        v7 = v43;
        v76 = v43;
      }

      v25 = v7[2];
      v24 = v7[3];
      if (v25 >= v24 >> 1)
      {
        sub_240E73D7C(v24 > 1, v25 + 1, 1, v7);
        v7 = v44;
        v76 = v44;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      v26 = v73;
      v27 = v74;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
      v29 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v28);
      v31 = &KeyPath - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v31);
      sub_240E831C4(v25, v31, &v76, v26, v27);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      v16 = v18;
    }
  }

  if (!v7[2])
  {

    goto LABEL_25;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  v46 = v4[2];
  v45 = v4[3];
  if (v46 >= v45 >> 1)
  {
    sub_240E73EA4(v45 > 1, v46 + 1, 1, v4);
    v4 = v59;
  }

  v4[2] = v46 + 1;
  v4[v46 + 4] = v7;
LABEL_25:
  v47 = v66 & 1;

  v49 = v84;
  v50 = v83;
  v51 = v68;
  v52 = v67;
  *v68 = v67;
  *(v51 + 1) = v64;
  v51[16] = v47;
  v53 = v61;
  *(v51 + 3) = v62;
  *(v51 + 4) = v53;
  v51[40] = v49;
  v51[41] = v52;
  *(v51 + 6) = KeyPath;
  v51[56] = v50;
  *(v51 + 8) = v4;
  return result;
}

uint64_t sub_240E814CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_240E7C050();
  v10 = sub_240E86F34();
  v9(v10, a3, a4, a5);
}

uint64_t sub_240E8156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  sub_240E6D14C(*MEMORY[0x277CEE2E0], a1, &v87);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v11 = v85;
      goto LABEL_6;
    }
  }

  else
  {
    sub_240E6AFAC(&v87, &qword_27E51B178, "V:");
  }

  v11 = 0;
LABEL_6:
  sub_240E6D14C(*MEMORY[0x277CEE2C8], a1, &v87);
  if (!v89)
  {
LABEL_15:
    sub_240E6AFAC(&v87, &qword_27E51B178, "V:");
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = *MEMORY[0x277CEE2D8];
  v13 = sub_240E86F74();
  sub_240E6D0E8(v13, v14, v85, &v87);

  if (!v89)
  {

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v15 = *MEMORY[0x277CEE2F0];
    v16 = sub_240E86F74();
    sub_240E6D0E8(v16, v17, v85, &v87);

    if (v89)
    {
      if (swift_dynamicCast())
      {
        sub_240E6B5C0(v85, v86);
        v18 = sub_240E73374(*&v85);
        if (v18)
        {
          goto LABEL_19;
        }
      }

      sub_240E6B618(v85, v86);
    }

    else
    {
      sub_240E6B618(v85, v86);
      sub_240E6AFAC(&v87, &qword_27E51B178, "V:");
    }
  }

  else
  {
  }

LABEL_16:
  sub_240E6D14C(*MEMORY[0x277CEE2D0], a1, &v87);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      sub_240E6B5C0(v85, v86);
      v18 = sub_240E7319C();
      if (v18)
      {
LABEL_19:
        v19 = v18;
        sub_240E82E3C();
        v20 = *(*a5 + 16);
        sub_240E82E88(v20);
        sub_240E6B618(v85, v86);
        return sub_240E82F18(v20, v19, a5);
      }

      sub_240E6B618(v85, v86);
    }
  }

  else
  {
    sub_240E6AFAC(&v87, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(*MEMORY[0x277CEE378], a1, &v87);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      KeyPath = swift_getKeyPath();
      v23 = swift_getKeyPath();
      sub_240E82E3C();
      v24 = *(*a5 + 16);
      sub_240E82E88(v24);
      *&v87 = KeyPath;
      BYTE8(v87) = 0;
      v88 = v23;
      LOBYTE(v89) = 0;
      BYTE1(v89) = v11;
      v90 = v85;
      v91 = v86;
      return sub_240E82F88(v24, &v87, a5);
    }
  }

  else
  {
    sub_240E6AFAC(&v87, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(*MEMORY[0x277CEE320], a1, &v87);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v25 = sub_240E73548();
      if (v26)
      {
        v29 = v25;
        v30 = v26;
        v31 = v27;
        v32 = v28;
        sub_240E82E3C();
        v33 = *(*a5 + 16);
        sub_240E82E88(v33);
        v34 = v33;
        v35 = v29;
        v36 = v30;
        v37 = v31;
        v38 = v32;
        return sub_240E8301C(v34, v35, v36, v37, v38, a5);
      }
    }
  }

  else
  {
    sub_240E6AFAC(&v87, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(*MEMORY[0x277CEE328], a1, &v87);
  if (!v89)
  {
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_47;
  }

  v39 = *MEMORY[0x277CEE2C0];
  v40 = sub_240E86F74();
  sub_240E6D0E8(v40, v41, v85, &v87);

  if (!v89)
  {
    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_65;
  }

  v42 = *MEMORY[0x277CEE2E8];
  v43 = sub_240E86F74();
  sub_240E6D0E8(v43, v44, v85, &v87);

  if (!v89)
  {
LABEL_45:

LABEL_46:
    sub_240E6AFAC(&v87, &qword_27E51B178, "V:");
    goto LABEL_47;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:

    goto LABEL_47;
  }

  v45 = sub_240E73548();
  if (v46)
  {
    v49 = v45;
    v50 = v46;
    v51 = v47;
    v52 = v48;
    sub_240E82E3C();
    v53 = *(*a5 + 16);
    sub_240E82E88(v53);
    v34 = v53;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    return sub_240E8301C(v34, v35, v36, v37, v38, a5);
  }

LABEL_47:
  if (a3 == 1)
  {
    v54 = [a6 attributedSubstringFromRange_];
    v55 = [v54 string];

    v56 = sub_240E86F74();
    v58 = v57;

    if (v56 == 10 && v58 == 0xE100000000000000)
    {
    }

    else
    {
      v60 = sub_240E871A4();

      if ((v60 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v75 = [a6 attributedSubstringFromRange_];
    v76 = [v75 string];

    v77 = sub_240E86F74();
    v79 = v78;

    sub_240E82E3C();
    v80 = *(*a5 + 16);
    sub_240E82E88(v80);
    v81 = v80;
    v82 = v77;
    v83 = v79;
    return sub_240E830BC(v81, v82, v83, a5);
  }

LABEL_53:
  v61 = [a6 attributedSubstringFromRange_];
  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  v64 = v61;

  sub_240E82E3C();
  v65 = *(*a5 + 16);
  sub_240E82E88(v65);
  *&v87 = v62;
  BYTE8(v87) = 0;
  v88 = v63;
  LOBYTE(v89) = 0;
  v90 = v64;
  sub_240E83130(v65, &v87, a5);
  v66 = [v64 string];
  v67 = sub_240E86F74();
  v69 = v68;

  v70 = sub_240E81E4C(v67, v69);
  v72 = v71;

  if (!v72)
  {
LABEL_59:
  }

  if (v70 == 10 && v72 == 0xE100000000000000)
  {
  }

  else
  {
    v74 = sub_240E871A4();

    if ((v74 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  sub_240E82E3C();
  v84 = *(*a5 + 16);
  sub_240E82E88(v84);

  v81 = v84;
  v82 = 10;
  v83 = 0xE100000000000000;
  return sub_240E830BC(v81, v82, v83, a5);
}

uint64_t sub_240E81E4C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_240E86FB4();
  return sub_240E87004();
}

uint64_t sub_240E81ECC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(result + 16))
  {
    v6 = result;
    result = sub_240E6DCA0(*MEMORY[0x277CEE2C8]);
    if (v7)
    {
      sub_240E6DC44(*(v6 + 56) + 32 * result, &v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = *MEMORY[0x277CEE2F0];
        v9 = sub_240E86F74();
        sub_240E6D0E8(v9, v10, v11, &v12);

        if (v13)
        {
          result = swift_dynamicCast();
          if (result)
          {
            *a5 = v11;
            *(a5 + 8) = 0;
          }
        }

        else
        {
          return sub_240E6AFAC(&v12, &qword_27E51B178, "V:");
        }
      }
    }
  }

  return result;
}

uint64_t sub_240E81FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8C8, &qword_240E89998);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36[-v5];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B900, &qword_240E899F0);
  v7 = *(*(v39 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v39);
  v41 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36[-v11];
  MEMORY[0x28223BE20](v10);
  v40 = &v36[-v13];
  v14 = sub_240E86A84();
  v15 = sub_240E86A74();
  sub_240E86A74();
  if (sub_240E86A74() != v14)
  {
    v15 = sub_240E86A74();
  }

  v37 = v15;
  v38 = *(a1 + 24);
  v16 = v38;
  *v56 = *(a1 + 32);
  *&v56[9] = *(a1 + 41);
  sub_240E86684();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v59[0] = v16;
  v57 = *&v56[16];
  v58 = v56[24];
  v52[119] = 0;
  sub_240E83950(v59, &v44, &qword_27E51B8F8, &unk_240E899E0);
  sub_240E83950(&v57, &v44, &qword_27E51B7F0, &qword_240E897B8);
  sub_240E86E24();
  sub_240E867C4();
  memcpy(&v53[7], v54, 0x70uLL);
  *v6 = sub_240E869C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D0, &qword_240E899A0) + 44);
  v43[0] = sub_240E7C0A8(*(a1 + 64));
  swift_getKeyPath();
  v26 = swift_allocObject();
  memcpy((v26 + 16), a1, 0x48uLL);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_240E83B98;
  *(v27 + 24) = v26;
  sub_240E83788(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D8, &qword_240E899C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8E0, &qword_240E899D0);
  sub_240E6BAE4(&qword_281503760, &qword_27E51B8D8, &qword_240E899C8);
  sub_240E837C0();
  sub_240E86DF4();
  sub_240E86E24();
  sub_240E867C4();
  sub_240E83900(v6, v12, &qword_27E51B8C8, &qword_240E89998);
  memcpy(&v12[*(v39 + 36)], v55, 0x70uLL);
  v28 = v12;
  v29 = v40;
  sub_240E83900(v28, v40, &qword_27E51B900, &qword_240E899F0);
  v30 = v41;
  sub_240E83950(v29, v41, &qword_27E51B900, &qword_240E899F0);
  v31 = v38;
  v43[0] = v38;
  *&v43[1] = *v56;
  *(&v43[2] + 1) = *&v56[9];
  v32 = v37;
  LOBYTE(v43[5]) = v37;
  v43[6] = v18;
  v43[7] = v20;
  v43[8] = v22;
  v43[9] = v24;
  LOBYTE(v43[10]) = 0;
  memcpy(&v43[10] + 1, v53, 0x77uLL);
  v33 = v42;
  memcpy(v42, v43, 0xC8uLL);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B908, &qword_240E899F8);
  sub_240E83950(v30, v33 + *(v34 + 48), &qword_27E51B900, &qword_240E899F0);
  sub_240E83950(v43, &v44, &qword_27E51B910, &qword_240E89A00);
  sub_240E6AFAC(v29, &qword_27E51B900, &qword_240E899F0);
  sub_240E6AFAC(v30, &qword_27E51B900, &qword_240E899F0);
  v44 = v31;
  v45[0] = *v56;
  *(v45 + 9) = *&v56[9];
  v46 = v32;
  v47 = v18;
  v48 = v20;
  v49 = v22;
  v50 = v24;
  v51 = 0;
  memcpy(v52, v53, 0x77uLL);
  return sub_240E6AFAC(&v44, &qword_27E51B910, &qword_240E89A00);
}

uint64_t sub_240E82580@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    sub_240E86E24();
  }

  else
  {
    sub_240E86E34();
  }

  sub_240E867C4();
  *a3 = a1;
  memcpy(a3 + 1, __src, 0x70uLL);
}

uint64_t sub_240E82628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8C8, &qword_240E89998);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = *(a1 + 24);
  v24 = *(a1 + 32);
  v12 = *(a1 + 40);
  v25 = *(a1 + 41);
  v13 = *(a1 + 48);
  v22 = *(a1 + 56);
  v23 = v12;
  *v10 = sub_240E869C4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v21[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D0, &qword_240E899A0) + 44);
  v26[0] = sub_240E7C0A8(*(a1 + 64));
  v21[1] = swift_getKeyPath();
  v14 = swift_allocObject();
  memcpy((v14 + 16), a1, 0x48uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_240E83750;
  *(v15 + 24) = v14;
  sub_240E83788(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8D8, &qword_240E899C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8E0, &qword_240E899D0);
  sub_240E6BAE4(&qword_281503760, &qword_27E51B8D8, &qword_240E899C8);
  sub_240E837C0();
  sub_240E86DF4();
  v29 = v11;
  v27 = v13;
  v16 = v22;
  v28 = v22;
  sub_240E83950(v10, v8, &qword_27E51B8C8, &qword_240E89998);
  v17 = v24;
  *a2 = v11;
  *(a2 + 8) = v17;
  *(a2 + 16) = v23 & 1;
  *(a2 + 17) = v25;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16 & 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8F0, &qword_240E899D8);
  sub_240E83950(v8, a2 + *(v18 + 48), &qword_27E51B8C8, &qword_240E89998);
  sub_240E83950(&v29, v26, &qword_27E51B8F8, &unk_240E899E0);
  sub_240E83950(&v27, v26, &qword_27E51B7F0, &qword_240E897B8);
  v19 = v11;
  sub_240E838A0(v13, v16 & 1);
  sub_240E6AFAC(v10, &qword_27E51B8C8, &qword_240E89998);
  sub_240E6AFAC(v8, &qword_27E51B8C8, &qword_240E89998);

  return sub_240E83744(v13, v16 & 1);
}

uint64_t sub_240E8295C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B860, &qword_240E89958) - 8) + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v4);
  v6 = v59 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B868, &qword_240E89960);
  OUTLINED_FUNCTION_3(v60);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v9);
  v11 = v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B870, &qword_240E89968);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v15);
  v17 = v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B878, &qword_240E89970);
  OUTLINED_FUNCTION_3(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v21);
  v23 = v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B880, &qword_240E89978);
  OUTLINED_FUNCTION_3(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v27);
  v29 = v59 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B888, &qword_240E89980);
  OUTLINED_FUNCTION_3(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_3_2();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v59 - v35;
  if (*(v2 + 16) == 1)
  {
    *v36 = sub_240E869B4();
    *(v36 + 1) = 0;
    v36[16] = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B8C0, &qword_240E89990);
    sub_240E82628(v2, &v36[*(v37 + 44)]);
    v38 = &qword_27E51B888;
    v39 = &qword_240E89980;
    sub_240E83950(v36, v29, &qword_27E51B888, &qword_240E89980);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_7();
    sub_240E6BAE4(v40, &qword_27E51B888, &qword_240E89980);
    sub_240E83574();
    sub_240E869D4();
    v41 = v36;
  }

  else
  {
    v59[1] = v34;
    if (*(*(v2 + 64) + 16) == 1)
    {
      v42 = sub_240E86904();
    }

    else
    {
      v42 = sub_240E868F4();
    }

    *v6 = v42;
    *(v6 + 1) = 0;
    v6[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B890, &qword_240E89988);
    sub_240E81FE8(v2, &v6[*(v43 + 44)]);
    sub_240E83900(v6, v11, &qword_27E51B860, &qword_240E89958);
    *&v11[*(v60 + 36)] = 256;
    sub_240E83900(v11, v17, &qword_27E51B868, &qword_240E89960);
    v44 = &v17[*(v12 + 36)];
    *v44 = 0;
    *(v44 + 4) = 1;
    v45 = sub_240E86A34();
    sub_240E86684();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_240E83900(v17, v23, &qword_27E51B870, &qword_240E89968);
    v54 = &v23[*(v18 + 36)];
    *v54 = v45;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    v38 = &qword_27E51B878;
    v39 = &qword_240E89970;
    sub_240E83950(v23, v29, &qword_27E51B878, &qword_240E89970);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_7();
    sub_240E6BAE4(v55, v56, v57);
    sub_240E83574();
    sub_240E869D4();
    v41 = v23;
  }

  return sub_240E6AFAC(v41, v38, v39);
}

uint64_t sub_240E82DE8@<X0>(void *a1@<X8>)
{
  result = sub_240E86804();
  *a1 = v3;
  return result;
}

void sub_240E82E3C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_240E73D7C(0, v1[2] + 1, 1, v1);
    *v0 = v3;
  }
}

void sub_240E82E88(uint64_t a1)
{
  v2 = (*v1)[3];
  if (a1 + 1 > (v2 >> 1))
  {
    sub_240E73D7C(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_240E82ED0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240E82F18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = &type metadata for ImageRowComponent;
  v10 = sub_240E8330C();
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_240E74B14(&v8, v6 + 40 * a1 + 32);
}

uint64_t sub_240E82F88(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v11 = &type metadata for TextEncapsulationRowComponent;
  v12 = sub_240E83360();
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = a2[1];
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = a2[2];
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_240E74B14(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_240E8301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v16 = &type metadata for RatingRowComponent;
  v17 = sub_240E833B4();
  v12 = swift_allocObject();
  *&v15 = v12;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v13 = *a6;
  *(v13 + 16) = a1 + 1;
  return sub_240E74B14(&v15, v13 + 40 * a1 + 32);
}

uint64_t sub_240E830BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = &type metadata for StringRowComponent;
  v12 = sub_240E83408();
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v8 = *a4;
  *(v8 + 16) = a1 + 1;
  return sub_240E74B14(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_240E83130(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for AttributedStringRowComponent;
  v12 = sub_240E8345C();
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_240E74B14(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_240E831C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_240E74B14(&v12, v10 + 40 * a1 + 32);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_240E8330C()
{
  result = qword_27E51B848;
  if (!qword_27E51B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B848);
  }

  return result;
}

unint64_t sub_240E83360()
{
  result = qword_27E51B850;
  if (!qword_27E51B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B850);
  }

  return result;
}

unint64_t sub_240E833B4()
{
  result = qword_27E51B858;
  if (!qword_27E51B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B858);
  }

  return result;
}

unint64_t sub_240E83408()
{
  result = qword_2815037E0;
  if (!qword_2815037E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037E0);
  }

  return result;
}

unint64_t sub_240E8345C()
{
  result = qword_2815037D0;
  if (!qword_2815037D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037D0);
  }

  return result;
}

uint64_t sub_240E834B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E834F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240E83574()
{
  result = qword_27E51B8A0;
  if (!qword_27E51B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B878, &qword_240E89970);
    sub_240E83600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8A0);
  }

  return result;
}

unint64_t sub_240E83600()
{
  result = qword_27E51B8A8;
  if (!qword_27E51B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B870, &qword_240E89968);
    sub_240E8368C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8A8);
  }

  return result;
}

unint64_t sub_240E8368C()
{
  result = qword_27E51B8B0;
  if (!qword_27E51B8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B868, &qword_240E89960);
    sub_240E6BAE4(&qword_27E51B8B8, &qword_27E51B860, &qword_240E89958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8B0);
  }

  return result;
}

uint64_t sub_240E83744(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_240E83758(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_240E837C0()
{
  result = qword_27E51B8E8;
  if (!qword_27E51B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B8E0, &qword_240E899D0);
    sub_240E8384C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B8E8);
  }

  return result;
}

unint64_t sub_240E8384C()
{
  result = qword_2815037F0;
  if (!qword_2815037F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037F0);
  }

  return result;
}

uint64_t sub_240E838A0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  sub_240E83744(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_240E83900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_240E83950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for SalableItemView.Layout(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_240E83A7C()
{
  result = qword_27E51B918;
  if (!qword_27E51B918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B920, qword_240E89A10);
    sub_240E6BAE4(&qword_27E51B898, &qword_27E51B888, &qword_240E89980);
    sub_240E83574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B918);
  }

  return result;
}

unint64_t sub_240E83B38()
{
  result = qword_27E51B928;
  if (!qword_27E51B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B928);
  }

  return result;
}

id OUTLINED_FUNCTION_6_1(id a1, SEL a2)
{

  return [a1 a2];
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_240E83C10(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E83C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_240E83CE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_240E869B4();
  v14 = 1;
  sub_240E83DD0(a1, a2, a3, __src);
  memcpy(__dst, __src, 0x6AuLL);
  memcpy(v16, __src, 0x6AuLL);
  sub_240E7BF78(__dst, &v11, &qword_27E51B930, &qword_240E89B18);
  sub_240E6DFC8(v16, &qword_27E51B930, &qword_240E89B18);
  memcpy(&v13[7], __dst, 0x6AuLL);
  v9 = v14;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v9;
  return memcpy((a4 + 17), v13, 0x71uLL);
}

uint64_t sub_240E83DD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    sub_240E80D68(a1, a3, 1, v21);
    v17 = v21[1];
    v18 = v21[0];
    v15 = v21[3];
    v16 = v21[2];
    v13 = v21[5];
    v14 = v21[4];
    v11 = v21[7];
    v12 = v21[6];
    v10 = v21[8];
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  if (a2)
  {
    v9 = 257;
    v8 = 1;
    v7 = sub_240E869B4();
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  __src[0] = v18;
  __src[1] = v17;
  __src[2] = v16;
  __src[3] = v15;
  __src[4] = v14;
  __src[5] = v13;
  __src[6] = v12;
  __src[7] = v11;
  __src[8] = v10;
  memcpy(a4, __src, 0x48uLL);
  *(a4 + 72) = v7;
  *(a4 + 80) = 0;
  *(a4 + 88) = v8;
  *(a4 + 96) = a2;
  *(a4 + 104) = v9;

  sub_240E7BF78(__src, v20, &qword_27E51B2A8, &qword_240E89B20);
  v20[0] = v18;
  v20[1] = v17;
  v20[2] = v16;
  v20[3] = v15;
  v20[4] = v14;
  v20[5] = v13;
  v20[6] = v12;
  v20[7] = v11;
  v20[8] = v10;
  return sub_240E6DFC8(v20, &qword_27E51B2A8, &qword_240E89B20);
}

unint64_t sub_240E83F4C()
{
  result = qword_27E51B938;
  if (!qword_27E51B938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B940, &qword_240E89B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B938);
  }

  return result;
}

uint64_t sub_240E83FDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = sub_240E6ADF4();

  sub_240E86C34();
  OUTLINED_FUNCTION_0_5();
  sub_240E86B14();
  v7 = sub_240E86C04();
  v9 = v8;
  v11 = v10;

  sub_240E6AE70(a1, v6, v2 & 1);

  sub_240E86AD4();
  sub_240E86B54();
  OUTLINED_FUNCTION_0_5();
  sub_240E6AE70(v7, v9, v11 & 1);

  *a2 = a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v2 & 1;
  *(a2 + 24) = v3;
  return result;
}

unint64_t sub_240E84128()
{
  result = qword_27E51B958;
  if (!qword_27E51B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B958);
  }

  return result;
}

uint64_t sub_240E8417C()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.primaryText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_240E841A4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.primaryText.setter(v2);
}

uint64_t (*sub_240E841F0(void *a1, char a2, uint64_t a3))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = a1;

  sub_240E6E33C(a1, a2, a3, v12);
  if (a2)
  {
    sub_240E85404(v12);
    OUTLINED_FUNCTION_2_4();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    if (a2 == 1)
    {
      OUTLINED_FUNCTION_5_2(v14, 1);

      v15 = v13;
      return sub_240E8547C;
    }

    else
    {
      OUTLINED_FUNCTION_5_2(v14, 2);

      v19 = v13;
      return sub_240E8546C;
    }
  }

  else if (a1 && [v13 drawBackground])
  {
    sub_240E8548C(v12, v10);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    sub_240E8548C(v10, v18 + v17);
    return sub_240E85664;
  }

  else
  {
    sub_240E8548C(v12, v10);
    v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v21 = swift_allocObject();
    sub_240E8548C(v10, v21 + v20);
    return sub_240E854FC;
  }
}

uint64_t sub_240E8444C()
{
  v24 = sub_240E86614();
  v0 = *(v24 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v24);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240E867B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B978, &qword_240E89D10);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B980, &qword_240E89D18);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  sub_240E856FC();
  sub_240E86C54();
  if ((sub_240E86E14() & 1) == 0 || (v16 = v24, (*(v0 + 104))(v3, *MEMORY[0x277CEE128], v24), v17 = sub_240E86604(), (*(v0 + 8))(v3, v16), v18 = 26.0, (v17 & 1) == 0))
  {
    v18 = 12.0;
  }

  v19 = *(v4 + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_240E86974();
  (*(*(v21 - 8) + 104))(v7 + v19, v20, v21);
  *v7 = v18;
  v7[1] = v18;
  v22 = &v15[*(v12 + 36)];
  sub_240E857D8(v7, v22);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
  (*(v8 + 32))(v15, v11, v25);
  sub_240E8583C();
  return sub_240E86DC4();
}

uint64_t sub_240E84778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_240E85968(a1, &v6 - v4);
  sub_240E856FC();
  return sub_240E86DC4();
}

uint64_t sub_240E84818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_240E7F5C8(a3, &v4);
  sub_240E859D8();
  return sub_240E86DC4();
}

uint64_t sub_240E84874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_240E6B330(a3);
  sub_240E85A2C();
  return sub_240E86DC4();
}

uint64_t (*sub_240E848BC(void *a1, char a2, uint64_t a3))()
{
  if (a2)
  {
    if (a2 == 1)
    {
      OUTLINED_FUNCTION_2_4();
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      OUTLINED_FUNCTION_5_2(v4, 1);
      v5 = a1;

      return sub_240E85B10;
    }

    else
    {
      OUTLINED_FUNCTION_2_4();
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      OUTLINED_FUNCTION_5_2(v8, 2);
      v9 = a1;

      return sub_240E85A80;
    }
  }

  else if (sub_240E84A04(a1, 0, a3))
  {
    return sub_240E85B64;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240E849AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(void))
{
  a4(a3);
  a5();
  return sub_240E86DC4();
}

uint64_t sub_240E84A04(void *a1, uint64_t a2, uint64_t a3)
{

  if (sub_240E80204(a1, a2, a3))
  {
    sub_240E6D1B0(a3, &v11);
    sub_240E8535C();
  }

  else
  {

    if (!a1)
    {
      return 0;
    }

    v6 = [a1 localizedNavigationTitle];
    v7 = sub_240E86F74();
    v9 = v8;

    *&v11 = v7;
    *(&v11 + 1) = v9;
    sub_240E6B9D8();
  }

  return sub_240E86DC4();
}

uint64_t (*sub_240E84AD4(void *a1))()
{
  if (a1 && ([a1 drawBottomDivider] & 1) != 0)
  {
    return sub_240E84B20;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240E84B34()
{
  result = sub_240E86CD4();
  qword_27E51B948 = result;
  return result;
}

uint64_t *sub_240E84B54()
{
  if (qword_27E51B0B8 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  return &qword_27E51B948;
}

uint64_t (*static PrimaryTextColorKey.defaultValue.modify())()
{
  if (qword_27E51B0B8 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  OUTLINED_FUNCTION_6_2();
  return j__swift_endAccess;
}

uint64_t sub_240E84C44@<X0>(uint64_t *a1@<X8>)
{
  result = static PrimaryTextColorKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.primaryText.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_240E84128();
  sub_240E868D4();
  return sub_240E84CCC;
}

uint64_t sub_240E84CD8()
{
  result = sub_240E86CE4();
  qword_27E51B950 = result;
  return result;
}

uint64_t *sub_240E84CF8()
{
  if (qword_27E51B0C0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  return &qword_27E51B950;
}

uint64_t sub_240E84D5C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();
  v3 = *a2;
}

uint64_t sub_240E84DD8(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static SecondaryTextColorKey.defaultValue.modify())()
{
  if (qword_27E51B0C0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  OUTLINED_FUNCTION_6_2();
  return j_j__swift_endAccess;
}

uint64_t sub_240E84EA4@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();
  *a3 = *a2;
}

uint64_t sub_240E84EF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t *a6)
{
  v8 = *a1;

  a5(v9);
  OUTLINED_FUNCTION_3_5();
  swift_beginAccess();
  v10 = *a6;
  *a6 = v8;
}

uint64_t sub_240E84F58@<X0>(uint64_t *a1@<X8>)
{
  result = static SecondaryTextColorKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_240E84FA0(void (*a1)(void))
{
  a1();
  sub_240E868D4();
  return v2;
}

unint64_t sub_240E84FE8()
{
  result = qword_27E51B960;
  if (!qword_27E51B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B960);
  }

  return result;
}

uint64_t sub_240E8503C()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.secondaryText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_240E85064(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.secondaryText.setter(v2);
}

uint64_t (*EnvironmentValues.secondaryText.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_240E84FE8();
  sub_240E868D4();
  return sub_240E85158;
}

uint64_t sub_240E85164(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if ((a2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_7_2();
  v5 = *a1;
}

uint64_t sub_240E85260(unsigned int *a1, int a2)
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

_BYTE *sub_240E852B0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_240E8535C()
{
  result = qword_281503950;
  if (!qword_281503950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503950);
  }

  return result;
}

unint64_t sub_240E853B0()
{
  result = qword_27E51B968;
  if (!qword_27E51B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B968);
  }

  return result;
}

uint64_t sub_240E85404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240E8548C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CardOnFileView();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {

    v7 = *(v5 + 16);

    v8 = *(v5 + 24);

    v9 = *(v5 + 48);

    v10 = *(v6 + 32);
    v11 = sub_240E86774();
    if (!__swift_getEnumTagSinglePayload(v5 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v5 + v10, v11);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240E8567C(uint64_t (*a1)(uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_240E856FC()
{
  result = qword_2815037F8;
  if (!qword_2815037F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B970, &qword_240E89D08);
    sub_240E85780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037F8);
  }

  return result;
}

unint64_t sub_240E85780()
{
  result = qword_281503800;
  if (!qword_281503800)
  {
    type metadata accessor for CardOnFileView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503800);
  }

  return result;
}

uint64_t sub_240E857D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_240E867B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E8583C()
{
  result = qword_27E51B988;
  if (!qword_27E51B988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B980, &qword_240E89D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B970, &qword_240E89D08);
    sub_240E856FC();
    swift_getOpaqueTypeConformance2();
    sub_240E85904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B988);
  }

  return result;
}

unint64_t sub_240E85904()
{
  result = qword_2815037C8;
  if (!qword_2815037C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B130, &qword_240E879F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037C8);
  }

  return result;
}

uint64_t sub_240E85968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B970, &qword_240E89D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E859D8()
{
  result = qword_27E51B990;
  if (!qword_27E51B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B990);
  }

  return result;
}

unint64_t sub_240E85A2C()
{
  result = qword_27E51B998;
  if (!qword_27E51B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B998);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

unint64_t sub_240E85B6C()
{
  result = qword_27E51B9A0;
  if (!qword_27E51B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B9A0);
  }

  return result;
}

unint64_t sub_240E85BC0()
{
  result = qword_27E51B9A8;
  if (!qword_27E51B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B9A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 24) = a2;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_240E868E4();
}

uint64_t sub_240E85D00@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B188, &qword_240E87D88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B190, &unk_240E87D90);
  sub_240E6B9D8();
  sub_240E6BA2C();
  sub_240E86DB4();
  sub_240E6BAE4(&qword_27E51B1A8, &qword_27E51B188, &qword_240E87D88);
  result = sub_240E86DC4();
  *a1 = result;
  return result;
}

uint64_t sub_240E85E64@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_240E85D00(a1);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E51CE88 == -1)
  {
    if (qword_27E51CE90)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27E51CE90)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E51CE80 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27E51CE74 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E51CE74 >= a3)
      {
        result = dword_27E51CE78 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27E51CE90;
  if (qword_27E51CE90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E51CE90 = MEMORY[0x28223BE68];
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
                    v28 = result;
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
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245CD2030](v13);
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
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
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
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E51CE74, &dword_27E51CE78);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}