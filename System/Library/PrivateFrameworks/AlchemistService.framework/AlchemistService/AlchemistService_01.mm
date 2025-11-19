unint64_t sub_23ED7B504()
{
  result = qword_27E388638;
  if (!qword_27E388638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388638);
  }

  return result;
}

unint64_t sub_23ED7B55C()
{
  result = qword_27E388640;
  if (!qword_27E388640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388640);
  }

  return result;
}

unint64_t sub_23ED7B5B4()
{
  result = qword_27E388648;
  if (!qword_27E388648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388648);
  }

  return result;
}

unint64_t sub_23ED7B60C()
{
  result = qword_27E388650;
  if (!qword_27E388650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388650);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23ED7B674(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23ED7B6BC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ALCInputLoading(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ALCInputLoading(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_16AlchemistService15ALCInputLoadingV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23ED7B824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23ED7B86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23ED7B8B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ALCInputLoading.SourceIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALCInputLoading.SourceIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23ED7B93C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED7B958(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALCInputLoading.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALCInputLoading.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

_OWORD *sub_23ED7B9EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23ED7B9FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED7BA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED7BADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED7BB24(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_23ED7BB74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_23EDC0E80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ALCService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000003DLL, 0x800000023EDCA620);
  MEMORY[0x23EF237D0](a1, a2);
  MEMORY[0x23EF237D0](0x6C65646F6D6C6D2ELL, 0xE900000000000063);
  v12 = sub_23EDC19A0();
  v13 = sub_23EDC19A0();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {

    sub_23EDC0E70();

    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v15 = sub_23EDC1790();
    __swift_project_value_buffer(v15, qword_27E3897E8);
    v16 = sub_23EDC1770();
    v17 = sub_23EDC1D60();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23ED67000, v16, v17, "Found the model in framework bundle.", v18, 2u);
      MEMORY[0x23EF24B30](v18, -1, -1);
    }

    (*(v6 + 32))(v32, v9, v5);
  }

  else
  {
    v19 = [objc_opt_self() defaultManager];
    v20 = sub_23EDC19A0();
    v21 = [v19 fileExistsAtPath_];

    if (v21)
    {
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v22 = sub_23EDC1790();
      __swift_project_value_buffer(v22, qword_27E3897E8);
      v23 = sub_23EDC1770();
      v24 = sub_23EDC1D60();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23ED67000, v23, v24, "Found the model via hardcoded path.", v25, 2u);
        MEMORY[0x23EF24B30](v25, -1, -1);
      }

      sub_23EDC0E50();
    }

    else
    {

      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v26 = sub_23EDC1790();
      __swift_project_value_buffer(v26, qword_27E3897E8);
      v27 = sub_23EDC1770();
      v28 = sub_23EDC1D80();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_23ED67000, v27, v28, "Unable to locate the model.", v29, 2u);
        MEMORY[0x23EF24B30](v29, -1, -1);
      }

      sub_23ED721D8();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
    }
  }
}

void sub_23ED7C050(uint64_t a1@<X8>)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = sub_23EDC0E80();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v47 - v7;
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_23EDC0E60();
  v59[0] = 0;
  v10 = [v8 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:0 error:v59];

  v11 = v59[0];
  if (v10)
  {
    v48 = a1;
    v49 = v1;
    v50 = v8;
    v12 = sub_23EDC1AF0();
    v13 = v11;

    v54 = *(v12 + 16);
    if (v54)
    {
      v14 = 0;
      v53 = v55 + 16;
      v51 = (v55 + 8);
      v56 = (v55 + 32);
      v15 = MEMORY[0x277D84F90];
      v52 = v3;
      while (1)
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
LABEL_30:
          swift_once();
LABEL_23:
          v37 = sub_23EDC1790();
          __swift_project_value_buffer(v37, qword_27E3897E8);

          v38 = sub_23EDC1770();
          v39 = sub_23EDC1D80();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v59[0] = v41;
            *v40 = 136315138;
            v42 = MEMORY[0x23EF23860](v15, v3);
            v44 = v43;

            v45 = sub_23ED713FC(v42, v44, v59);

            *(v40 + 4) = v45;
            _os_log_impl(&dword_23ED67000, v38, v39, "Found too many models at %s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v41);
            MEMORY[0x23EF24B30](v41, -1, -1);
            MEMORY[0x23EF24B30](v40, -1, -1);
          }

          else
          {
          }

          goto LABEL_27;
        }

        v16 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v17 = v12;
        v18 = *(v55 + 72);
        (*(v55 + 16))(v58, v12 + v16 + v18 * v14, v3);
        sub_23EDC0E40();
        v19 = sub_23EDC1A10();
        v21 = v20;

        if (v19 == 0x636C65646F6D6C6DLL && v21 == 0xE800000000000000)
        {
          break;
        }

        v22 = sub_23EDC2240();

        if (v22)
        {
          goto LABEL_11;
        }

        (*v51)(v58, v3);
LABEL_5:
        ++v14;
        v12 = v17;
        if (v54 == v14)
        {
          goto LABEL_18;
        }
      }

LABEL_11:
      v23 = *v56;
      (*v56)(v57, v58, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23EDA0D60(0, v15[2] + 1, 1);
        v15 = v59[0];
      }

      v26 = v15[2];
      v25 = v15[3];
      if (v26 >= v25 >> 1)
      {
        sub_23EDA0D60(v25 > 1, v26 + 1, 1);
        v15 = v59[0];
      }

      v15[2] = v26 + 1;
      v27 = v15 + v16 + v26 * v18;
      v3 = v52;
      v23(v27, v57, v52);
      goto LABEL_5;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_18:

    v33 = v15[2];
    if (v33)
    {
      (*(v55 + 16))(v48, v15 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v3);
      if (v33 != 1)
      {
        if (qword_27E388190 != -1)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

LABEL_27:
    }

    else
    {

      v34 = sub_23EDC1530();
      sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0]);
      swift_allocError();
      v36 = v35;
      sub_23ED90B6C(MEMORY[0x277D84F90]);
      sub_23EDC1520();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D29D78], v34);
      swift_willThrow();
    }
  }

  else
  {
    v28 = v59[0];
    v29 = sub_23EDC0E30();

    swift_willThrow();
    v30 = sub_23EDC1530();
    sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0]);
    swift_allocError();
    v32 = v31;
    sub_23ED90B6C(MEMORY[0x277D84F90]);
    sub_23EDC1520();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D29D78], v30);
    swift_willThrow();
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23ED7C7E8@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v4 = sub_23EDC1170();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23EDC0E80();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388770, &qword_23EDC4D50);
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  a1(v56, v20);
  v23 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  v24 = *(v23 + 8);
  v25 = v55;
  sub_23EDC1070();
  if (!v25)
  {
    v48 = v12;
    v55 = v8;
    v26 = sub_23EDC0F80();
    MEMORY[0x23EF22EC0](v26);
    (*(v51 + 1))(v7, v52);
    sub_23ED7C050(v15);
    v51 = v22;
    v52 = v18;
    v28 = v54;
    v27 = v55;
    if (qword_27E3881A0 != -1)
    {
      swift_once();
    }

    v29 = sub_23EDC1790();
    __swift_project_value_buffer(v29, qword_27E389818);
    v30 = v48;
    (*(v28 + 16))(v48, v15, v27);
    v31 = sub_23EDC1770();
    v32 = sub_23EDC1D90();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v44 = v33;
      v47 = swift_slowAlloc();
      v57 = v47;
      *v33 = 136315138;
      sub_23ED7D5EC(&qword_27E3885F8, MEMORY[0x277CC9260]);
      v34 = sub_23EDC21E0();
      v36 = v35;
      v45 = v17;
      v46 = v15;
      v37 = *(v54 + 8);
      v37(v30, v27);
      v38 = sub_23ED713FC(v34, v36, &v57);

      v39 = v44;
      *(v44 + 1) = v38;
      v27 = v55;
      _os_log_impl(&dword_23ED67000, v31, v32, v49, v39, 0xCu);
      v40 = v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x23EF24B30](v40, -1, -1);
      MEMORY[0x23EF24B30](v39, -1, -1);

      v37(v45, v27);
      v15 = v46;
      v28 = v54;
    }

    else
    {

      v41 = *(v28 + 8);
      v41(v30, v27);
      v41(v17, v27);
    }

    (*(v53 + 8))(v51, v52);
    (*(v28 + 32))(v50, v15, v27);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v56);
}

uint64_t sub_23ED7CCEC(uint64_t a1, uint64_t a2)
{
  sub_23EDC0F40();
  v4 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v5 = *(*(v4 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v6 == a2)
  {
    goto LABEL_17;
  }

  v8 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  if (v8)
  {
    return 0;
  }

  sub_23EDC0F50();
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v10 = *(*(v9 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v11 == a2)
  {
LABEL_17:

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    return 0;
  }

  v13 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  if (v13)
  {
    return 0;
  }

  sub_23EDC0F60();
  v14 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v15 = *(*(v14 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v16 == a2)
  {
    goto LABEL_22;
  }

  v18 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  if (v18)
  {
    return 1;
  }

  sub_23EDC0F70();
  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v21 = *(*(v20 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v22 == a2)
  {
LABEL_22:

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    return 1;
  }

  else
  {
    v23 = sub_23EDC2240();

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    if (v23)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_23ED7CEF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23EDC0F40();
  v6 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v7 = *(*(v6 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v8 == a2)
  {
    goto LABEL_20;
  }

  v10 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v10)
  {
LABEL_21:
    sub_23ED7C7E8(MEMORY[0x277D29A10], "Loading model from resource: %s", a3);
    return;
  }

  sub_23EDC0F50();
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v12 = *(*(v11 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v13 == a2)
  {
    goto LABEL_18;
  }

  v15 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v15)
  {
LABEL_19:
    sub_23ED7BB74(0xD000000000000082, 0x800000023EDCA530, a3);
    return;
  }

  sub_23EDC0F60();
  v16 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v17 = *(*(v16 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v18 == a2)
  {
LABEL_20:

    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    goto LABEL_21;
  }

  v20 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v20)
  {
    goto LABEL_21;
  }

  sub_23EDC0F70();
  v21 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v22 = *(*(v21 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v23 == a2)
  {
LABEL_18:

    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    goto LABEL_19;
  }

  v24 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v24)
  {
    goto LABEL_19;
  }

  v25 = sub_23EDC1530();
  sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0]);
  swift_allocError();
  v27 = v26;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000003BLL, 0x800000023EDCA4F0);
  MEMORY[0x23EF237D0](a1, a2);
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D29D78], v25);
  swift_willThrow();
}

void sub_23ED7D270(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23EDC0F40();
  v6 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v7 = *(*(v6 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v8 == a2)
  {
    goto LABEL_20;
  }

  v10 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v10)
  {
LABEL_21:
    sub_23ED7C7E8(MEMORY[0x277D29A18], "Loading fov model from resource: %s", a3);
    return;
  }

  sub_23EDC0F50();
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v12 = *(*(v11 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v13 == a2)
  {
    goto LABEL_18;
  }

  v15 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v15)
  {
LABEL_19:
    sub_23ED7BB74(0xD00000000000002FLL, 0x800000023EDCA6A0, a3);
    return;
  }

  sub_23EDC0F60();
  v16 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v17 = *(*(v16 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v18 == a2)
  {
LABEL_20:

    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    goto LABEL_21;
  }

  v20 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v20)
  {
    goto LABEL_21;
  }

  sub_23EDC0F70();
  v21 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v22 = *(*(v21 + 8) + 8);
  if (sub_23EDC0FD0() == a1 && v23 == a2)
  {
LABEL_18:

    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    goto LABEL_19;
  }

  v24 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (v24)
  {
    goto LABEL_19;
  }

  v25 = sub_23EDC1530();
  sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0]);
  swift_allocError();
  v27 = v26;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD000000000000039, 0x800000023EDCA660);
  MEMORY[0x23EF237D0](a1, a2);
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D29D78], v25);
  swift_willThrow();
}

uint64_t sub_23ED7D5EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED7D66C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() *a3];
  sub_23ED7BB24(0, &qword_27E388780, 0x277CCAE20);
  return sub_23EDC0D60();
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

uint64_t sub_23ED7D7D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v80 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v77 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v76 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = *(v8 + 16);
  v82 = &v76 - v16;
  v15();
  v79 = a2;
  (v15)(a2, a4, v7);
  v17 = objc_opt_self();
  v18 = [v17 degrees];
  v83 = a3;
  sub_23EDC0D90();
  sub_23EDC0D70();
  v20 = v19;

  v21 = *(v8 + 8);
  v21(v14, v7);
  v22 = [v17 degrees];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v24 = v23;

  v21(v14, v7);
  v25 = [v17 degrees];
  v81 = v8;
  v78 = a4;
  if (v24 >= v20)
  {
    sub_23EDC0D90();
    sub_23EDC0D70();
    v30 = v29;

    v21(v14, v7);
    v31 = v17;
    v32 = [v17 degrees];
    if (v30 >= 40.0)
    {
      sub_23EDC0D90();
      sub_23EDC0D70();
      v58 = v57;

      v21(v14, v7);
      v33 = v79;
      if (v58 <= 80.0)
      {
LABEL_13:
        v60 = [v17 radians];
        v61 = v77;
        sub_23EDC0D90();
        sub_23EDC0D70();
        v63 = v62;

        v21(v61, v7);
        v64 = tan(v63 * 0.5);
        v65 = [v31 radians];
        sub_23EDC0D90();
        sub_23EDC0D70();
        v67 = v66;

        v21(v61, v7);
        v68 = v64 * tan(v67 * 0.5);
        v69 = [v31 radians];
        sub_23EDC0D90();
        sub_23EDC0D70();
        v71 = v70;

        v21(v61, v7);
        v72 = tan(v71 * 0.5);
        atan(v68 / v72);
        v73 = [v31 radians];
        sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
        sub_23EDC0D60();
        v74 = v81;
        v56 = v82;
        v21(v82, v7);
        v55 = *(v74 + 32);
        v55(v56, v14, v7);
        return (v55)(v80, v56, v7);
      }

      v59 = [v17 &selRef_coords + 6];
      sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
      sub_23EDC0D60();
    }

    else
    {
      sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
      sub_23EDC0D60();
      v33 = v79;
    }

    v21(v33, v7);
    (*(v8 + 32))(v33, v14, v7);
    goto LABEL_13;
  }

  sub_23EDC0D90();
  sub_23EDC0D70();
  v27 = v26;

  v21(v14, v7);
  v28 = [v17 degrees];
  v76 = v17;
  if (v27 < 60.0)
  {
    sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
LABEL_8:
    sub_23EDC0D60();
    v38 = v82;
    v21(v82, v7);
    v36 = v81;
    (*(v81 + 32))(v38, v14, v7);
    goto LABEL_9;
  }

  sub_23EDC0D90();
  sub_23EDC0D70();
  v35 = v34;

  v21(v14, v7);
  v36 = v81;
  if (v35 > 90.0)
  {
    v37 = [v76 degrees];
    sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
    goto LABEL_8;
  }

LABEL_9:
  v39 = v76;
  v40 = [v76 radians];
  v41 = v77;
  sub_23EDC0D90();
  sub_23EDC0D70();
  v43 = v42;

  v21(v41, v7);
  v44 = tan(v43 * 0.5);
  v45 = [v39 radians];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v47 = v46;

  v21(v41, v7);
  v48 = v44 * tan(v47 * 0.5);
  v49 = [v39 radians];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v51 = v50;

  v21(v41, v7);
  v52 = tan(v51 * 0.5);
  atan(v48 / v52);
  v53 = [v39 radians];
  sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
  sub_23EDC0D60();
  v54 = v79;
  v21(v79, v7);
  v55 = *(v36 + 32);
  v55(v54, v14, v7);
  v56 = v82;
  return (v55)(v80, v56, v7);
}

uint64_t sub_23ED7E064(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v52 = a4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20);
  v27 = &v43 - v26;
  if (a2 < 1 || v25 < 1)
  {
    goto LABEL_10;
  }

  v48 = v24;
  v51 = v23;
  v45 = v6;
  v46 = v4;
  v44 = v25;
  atan2(vcvtd_n_f64_u64(v25, 1uLL), a2);
  v47 = objc_opt_self();
  v28 = [v47 degrees];
  sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
  sub_23EDC0D60();
  v29 = *(v10 + 32);
  v29(v27, v22, v9);
  if (v52 < 1)
  {
    (*(v10 + 8))(v27, v9);
LABEL_10:
    sub_23ED7E62C();
    swift_allocError();
    *v42 = 0xD00000000000002BLL;
    *(v42 + 8) = 0x800000023EDCA6D0;
    *(v42 + 16) = 4;
    return swift_willThrow();
  }

  atan2(vcvtd_n_f64_u64(v52, 1uLL), a2);
  v30 = [v47 degrees];
  sub_23EDC0D60();
  v31 = v48;
  v29(v48, v18, v9);
  v52 = v27;
  sub_23ED7D7D8(v51, v14, v27, v31);
  v32 = *(v10 + 8);
  v32(v14, v9);
  if (qword_27E388160 != -1)
  {
    swift_once();
  }

  v33 = v49;
  __swift_project_value_buffer(v49, qword_27E389778);
  v44 = objc_opt_self();
  v34 = [v44 meters];
  v35 = v50;
  sub_23EDC0D90();
  sub_23EDC0D70();

  v45 = *(v45 + 8);
  (v45)(v35, v33);
  v36 = [v47 radians];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v38 = v37;

  v32(v14, v9);
  tan(v38 * 0.5);
  v39 = v32;
  if (qword_27E388148 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_27E389730);
  v40 = [v44 meters];
  sub_23EDC0D90();
  sub_23EDC0D70();

  (v45)(v35, v33);
  v39(v51, v9);
  v39(v48, v9);
  return (v39)(v52, v9);
}

unint64_t sub_23ED7E62C()
{
  result = qword_27E388CC0;
  if (!qword_27E388CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388CC0);
  }

  return result;
}

void sub_23ED7E6C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v7 = objc_allocWithZone(type metadata accessor for CustomUnitProportion());
  v8 = sub_23EDC19A0();
  v9 = [v7 initWithSymbol:v8 converter:v6];

  *a5 = v9;
}

id sub_23ED7E768()
{
  if (qword_27E388170 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

id sub_23ED7E8E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomUnitProportion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23ED7E948(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for StereoProperties();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23ED7E9D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v6 = *(v38 - 8);
  v7 = *(v6 + 84);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  v39 = v7;
  if (v9 > v7)
  {
    v7 = *(v8 + 84);
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30) - 8);
  v11 = v10;
  v12 = *(v4 + 64);
  if (*(v10 + 84) <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v13 <= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v12 + v14;
  v20 = *(v6 + 80) & 0xF8 | v15 | v16 | 7;
  v21 = *(v6 + 64) + v15;
  v22 = *(v8 + 64) + v16;
  v23 = a1;
  if (a2 > v18)
  {
    v24 = ((v12 + (v19 & ~v14) + v20) & ~v20) + ((v17 + ((v22 + (v21 & ~v15)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v25 = 8 * v24;
    if (v24 <= 3)
    {
      v27 = ((a2 - v18 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v27))
      {
        v26 = *(a1 + v24);
        if (!v26)
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v27 > 0xFF)
      {
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v27 < 2)
      {
LABEL_32:
        if (v18)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    v26 = *(a1 + v24);
    if (!*(a1 + v24))
    {
      goto LABEL_32;
    }

LABEL_19:
    v28 = (v26 - 1) << v25;
    if (v24 > 3)
    {
      v28 = 0;
    }

    if (v24)
    {
      if (v24 <= 3)
      {
        v29 = v24;
      }

      else
      {
        v29 = 4;
      }

      if (v29 > 2)
      {
        if (v29 == 3)
        {
          v30 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v30 = *a1;
        }
      }

      else if (v29 == 1)
      {
        v30 = *a1;
      }

      else
      {
        v30 = *a1;
      }
    }

    else
    {
      v30 = 0;
    }

    return v18 + (v30 | v28) + 1;
  }

LABEL_33:
  if (v5 >= v13)
  {
    v31 = *(v4 + 48);
    v32 = v5;
    v33 = v40;
    goto LABEL_38;
  }

  v23 = ((((a1 + v19) & ~v14) + v12 + v20) & ~v20);
  if (v39 == v13)
  {
    v31 = *(v6 + 48);
    v32 = v39;
    v33 = v38;
LABEL_38:

    return v31(v23, v32, v33);
  }

  v23 = ((v23 + v21) & ~v15);
  if (v9 == v13)
  {
    v31 = *(v8 + 48);
    v32 = v9;
    v33 = v37;
    goto LABEL_38;
  }

  v35 = *(v11 + 48);
  v36 = (v23 + v22) & ~v16;

  return v35(v36);
}

void sub_23ED7EDE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v44 = v4;
  v5 = *(v4 + 84);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78) - 8);
  v43 = v6;
  v7 = *(v6 + 84);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00) - 8);
  v42 = v8;
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30) - 8);
  v12 = v11;
  v13 = *(v4 + 64);
  if (*(v11 + 84) <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v4 + 80);
  v17 = *(v8 + 80);
  v18 = *(v11 + 80);
  v19 = *(v6 + 80) & 0xF8 | v17 | v18 | 7;
  v20 = (v13 + ((v13 + v16) & ~v16) + v19) & ~v19;
  v21 = *(v6 + 64) + v17;
  v22 = *(v8 + 64) + v18;
  v23 = ((*(v11 + 64) + ((v22 + (v21 & ~v17)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = v23 + v20;
  if (a3 > v15)
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v28 = ((a3 - v15 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v28))
      {
        v26 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v26 = v29;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }

    v27 = a2;
    if (v15 < a2)
    {
      goto LABEL_38;
    }

LABEL_14:
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        *&v25[v24] = 0;
        if (!v27)
        {
          return;
        }

        goto LABEL_28;
      }

      *&v25[v24] = 0;
    }

    else if (v26)
    {
      v25[v24] = 0;
      if (!v27)
      {
        return;
      }

      goto LABEL_28;
    }

    if (!v27)
    {
      return;
    }

LABEL_28:
    if (v5 >= v14)
    {
      v33 = *(v44 + 56);
      v34 = v25;
    }

    else
    {
      v30 = (&v25[v13 + v16] & ~v16) + v13 + v19;
      v31 = (v30 & ~v19);
      if (v14 < v27)
      {
        v32 = ~v14 + v27;
        bzero(v31, v23);
        if (v23 <= 3)
        {
          *v31 = v32;
        }

        else
        {
          *v31 = v32;
        }

        return;
      }

      if (v7 == v14)
      {
        v33 = *(v43 + 56);
        v34 = (v30 & ~v19);
      }

      else
      {
        v34 = (&v31[v21] & ~v17);
        if (v9 != v14)
        {
          v37 = *(v12 + 56);
          v38 = &v34[v22] & ~v18;

          v37(v38);
          return;
        }

        v33 = *(v42 + 56);
      }
    }

    v33(v34);
    return;
  }

  v26 = 0;
  v27 = a2;
  v25 = a1;
  if (v15 >= a2)
  {
    goto LABEL_14;
  }

LABEL_38:
  v35 = ~v15 + v27;
  if (v24 < 4)
  {
    v36 = (v35 >> (8 * v24)) + 1;
    bzero(v25, v23 + v20);
    *v25 = v35;
    if (v26 > 1)
    {
LABEL_40:
      if (v26 == 2)
      {
        *&v25[v24] = v36;
      }

      else
      {
        *&v25[v24] = v36;
      }

      return;
    }
  }

  else
  {
    bzero(v25, v23 + v20);
    *v25 = v35;
    v36 = 1;
    if (v26 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v26)
  {
    v25[v24] = v36;
  }
}

uint64_t type metadata accessor for StereoProperties()
{
  result = qword_27E388820;
  if (!qword_27E388820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23ED7F2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23ED7F468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_23ED7F5D8()
{
  sub_23ED7F710(319, &qword_27E388830, &qword_27E388790, 0x277CCADA8);
  if (v0 <= 0x3F)
  {
    sub_23ED7F6BC();
    if (v1 <= 0x3F)
    {
      sub_23ED7F710(319, &qword_27E388840, &qword_27E388780, 0x277CCAE20);
      if (v2 <= 0x3F)
      {
        sub_23ED7F768();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23ED7F6BC()
{
  if (!qword_27E388838)
  {
    type metadata accessor for CustomUnitProportion();
    v0 = sub_23EDC0DA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E388838);
    }
  }
}

void sub_23ED7F710(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23ED7BB24(255, a3, a4);
    v5 = sub_23EDC0DA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23ED7F768()
{
  if (!qword_27E388848)
  {
    v0 = sub_23EDC1E40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E388848);
    }
  }
}

uint64_t sub_23ED7F7C0()
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](0);
  return sub_23EDC2320();
}

uint64_t sub_23ED7F82C()
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](0);
  return sub_23EDC2320();
}

uint64_t sub_23ED7F86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23EDC1490();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v43 = &v30[-v12];
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v41 = v11 + 32;
  v42 = v11 + 16;
  v40 = v11 + 88;
  v39 = *MEMORY[0x277D36CA8];
  v38 = v11;
  v33 = (v11 + 96);
  v34 = (v11 + 8);

  v31 = 0;
  v19 = 0;
  v36 = v6;
  v37 = a1;
  v35 = v10;
  for (i = a3; v16; v10 = v35)
  {
LABEL_10:
    while (1)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v38;
      v23 = v43;
      (*(v38 + 16))(v43, *(a1 + 48) + *(v38 + 72) * (v21 | (v19 << 6)), v6);
      (*(v22 + 32))(v10, v23, v6);
      v24 = (*(v22 + 88))(v10, v6);
      if (v24 == v39)
      {
        break;
      }

      result = (*v34)(v10, v6);
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    (*v33)(v10, v6);
    v25 = *v10;
    v26 = *(v25 + 16);
    v27 = i;
    if (v26)
    {
      v28 = (v25 + 40);
      while (1)
      {
        v29 = *(v28 - 1) == a2 && *v28 == v27;
        if (v29 || (sub_23EDC2240() & 1) != 0)
        {
          break;
        }

        v28 += 2;
        if (!--v26)
        {
          goto LABEL_19;
        }
      }

      v31 = 1;
    }

    else
    {
LABEL_19:
    }

    v6 = v36;
    a1 = v37;
  }

LABEL_6:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return v31 & 1;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_23ED7FB48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_23ED71DA8((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

void sub_23ED7FB98(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (*(*a1 + 16) && (v10 = sub_23ED9C888(a2), (v11 & 1) != 0) && (sub_23ED71DA8(*(v9 + 56) + 32 * v10, v16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v15;
  }

  else
  {
    v12 = MEMORY[0x277D84F98];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v12;

  sub_23ED7FCCC(a4, a5, a3, isUniquelyReferenced_nonNull_native, v16);
  v14 = v16[0];
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
  v16[0] = v14;
  sub_23ED88AE4(v16, a2);
}

_OWORD *sub_23ED7FCCC(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B8, &unk_23EDC4ED0);
  v32 = v10;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a5;
  v13 = sub_23ED9C888(a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_23ED7BB70(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_23ED9C888(a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_23ED80748(v13, a3, *v28, v28[1], v19);
  v30 = a3;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v31);
}

_OWORD *sub_23ED7FEB4(uint64_t a1, void *a2, char a3, void *a4)
{
  v24 = MEMORY[0x277D83B88];
  *&v23 = a1;
  v7 = *a4;
  v9 = sub_23ED9C888(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *a4;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(&v23, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a3 & 1);
  v18 = *a4;
  v19 = sub_23ED9C888(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *a4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D83B88]);
  sub_23ED807F4(v9, a2, *v21, v15);
  v22 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

_OWORD *sub_23ED7FFF0(int a1, void *a2, char a3, void *a4)
{
  v24 = MEMORY[0x277D84CC0];
  LODWORD(v23) = a1;
  v7 = *a4;
  v9 = sub_23ED9C888(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *a4;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(&v23, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a3 & 1);
  v18 = *a4;
  v19 = sub_23ED9C888(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *a4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D84CC0]);
  sub_23ED80908(v9, a2, *v21, v15);
  v22 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

_OWORD *sub_23ED8012C(uint64_t a1, void *a2, char a3, void *a4)
{
  type metadata accessor for CFString(0);
  v9 = v8;
  v31 = v8;
  *&v30 = a1;
  v10 = *a4;
  v12 = sub_23ED9C888(a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a3 & 1) != 0)
  {
LABEL_7:
    v18 = *a4;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      return sub_23ED7BB70(&v30, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v15, a3 & 1);
  v21 = *a4;
  v22 = sub_23ED9C888(a2);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a4;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v9);
  v25 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_23ED80874(v12, a2, *v27, v18);
  v29 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v30);
}

_OWORD *sub_23ED80300(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  *&v29 = a1;
  v8 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  *(&v29 + 1) = a2;
  v9 = *a5;
  v11 = sub_23ED9C888(a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_23ED7BB70(&v29, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_23ED9C888(a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v8);
  v24 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_23ED80988(v11, a3, *v26, v26[1], v17);
  v28 = a3;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v29);
}

_OWORD *sub_23ED804D4(void *a1, char a2, void *a3, double a4)
{
  v24 = MEMORY[0x277D839F8];
  *&v23 = a4;
  v7 = *a3;
  v9 = sub_23ED9C888(a1);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a2 & 1) != 0)
  {
LABEL_7:
    v15 = *a3;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(&v23, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a2 & 1);
  v18 = *a3;
  v19 = sub_23ED9C888(a1);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *a3;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839F8]);
  sub_23ED80A8C(v9, a1, v15, *v21);
  v22 = a1;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

_OWORD *sub_23ED8060C(char a1, void *a2, char a3, void *a4)
{
  v24 = MEMORY[0x277D839B0];
  LOBYTE(v23) = a1;
  v7 = *a4;
  v9 = sub_23ED9C888(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *a4;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(&v23, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a3 & 1);
  v18 = *a4;
  v19 = sub_23ED9C888(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *a4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839B0]);
  sub_23ED80A0C(v9, a2, *v21, v15);
  v22 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

_OWORD *sub_23ED80748(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B8, &unk_23EDC4ED0);
  *&v14 = a3;
  *(&v14 + 1) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  *(a5[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v14, (a5[7] + 32 * a1));
  v11 = a5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v13;
  }

  return result;
}

_OWORD *sub_23ED807F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = MEMORY[0x277D83B88];
  *&v9 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v9, (a4[7] + 32 * a1));
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

_OWORD *sub_23ED80874(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for CFString(0);
  v14 = v8;
  *&v13 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v13, (a4[7] + 32 * a1));
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_23ED80908(unint64_t a1, uint64_t a2, int a3, void *a4)
{
  v10 = MEMORY[0x277D84CC0];
  LODWORD(v9) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v9, (a4[7] + 32 * a1));
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

_OWORD *sub_23ED80988(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v10 = a3;
  v11 = MEMORY[0x277D837D0];
  *(&v10 + 1) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  *(a5[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v10, (a5[7] + 32 * a1));
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

_OWORD *sub_23ED80A0C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v9, (a4[7] + 32 * a1));
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

_OWORD *sub_23ED80A8C(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  v10 = MEMORY[0x277D839F8];
  v9[0] = a4;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(v9, (a3[7] + 32 * a1));
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

id sub_23ED80B0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_23ED71DA8(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_23ED7BB70(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_23ED6FA68(&v19, &qword_27E388898, &unk_23EDC4EA8);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23ED80C5C(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 < 1 || a2 < 1 || a3 <= 0.0)
  {
    sub_23ED83D68();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v3 = a1 * a1;
  if ((a1 * a1) >> 64 == (a1 * a1) >> 63)
  {
    v4 = a2 * a2;
    if ((a2 * a2) >> 64 == (a2 * a2) >> 63)
    {
      v5 = __OFADD__(v3, v4);
      v6 = v3 + v4;
      if (!v5)
      {
        sqrt(v6 / 1872.0);
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

IOSurfaceRef sub_23ED80D20(uint64_t a1, uint64_t a2, CGColorSpaceRef space)
{
  v5 = CGColorSpaceCopyPropertyList(space);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388710, &qword_23EDC4CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4D80;
  v7 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v8 = MEMORY[0x277D83B88];
  *(inited + 40) = a1;
  v9 = *MEMORY[0x277CD2A28];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = a2;
  v10 = *MEMORY[0x277CD2A70];
  *(inited + 104) = v8;
  *(inited + 112) = v10;
  v11 = MEMORY[0x277D84CC0];
  *(inited + 120) = 1111970369;
  v12 = *MEMORY[0x277CD2960];
  *(inited + 144) = v11;
  *(inited + 152) = v12;
  *(inited + 184) = v8;
  *(inited + 160) = 4;
  v13 = v7;
  v14 = v9;
  v15 = v10;
  v16 = v12;
  sub_23ED79F84(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886C0, &qword_23EDC4CB0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_23ED83E0C();
  v17 = sub_23EDC1890();

  v18 = IOSurfaceCreate(v17);

  if (!v18)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    v19 = *MEMORY[0x277CD29C0];
    v20 = v18;
    IOSurfaceSetValue(v20, v19, v5);

LABEL_4:
    swift_unknownObjectRelease();
  }

  return v18;
}

unint64_t sub_23ED80ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388860, &unk_23EDC4E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4860;
  v1 = *MEMORY[0x277CD3330];
  *(inited + 32) = *MEMORY[0x277CD3330];
  v2 = swift_initStackObject();
  v3 = *MEMORY[0x277CD3310];
  *(v2 + 32) = *MEMORY[0x277CD3310];
  *(v2 + 16) = xmmword_23EDC4D80;
  v4 = MEMORY[0x277D83B88];
  *(v2 + 40) = 0;
  v5 = *MEMORY[0x277CD3320];
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  v6 = *MEMORY[0x277CD3328];
  type metadata accessor for CFString(0);
  v7 = MEMORY[0x277CD3300];
  *(v2 + 80) = v6;
  v8 = *v7;
  *(v2 + 104) = v9;
  *(v2 + 112) = v8;
  v10 = MEMORY[0x277D839B0];
  *(v2 + 120) = 1;
  v11 = *MEMORY[0x277CD3318];
  *(v2 + 144) = v10;
  *(v2 + 152) = v11;
  v12 = *MEMORY[0x277CD36C0];
  *(v2 + 184) = v9;
  *(v2 + 160) = v12;
  v13 = v1;
  v14 = v3;
  v15 = v5;
  v16 = v6;
  v17 = v8;
  v18 = v11;
  v19 = v12;
  v20 = sub_23ED7A3B4(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886D0, &qword_23EDC4CC0);
  swift_arrayDestroy();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
  *(inited + 40) = v20;
  v21 = sub_23ED7A3B4(inited);
  swift_setDeallocating();
  sub_23ED6FA68(inited + 32, &qword_27E3886D0, &qword_23EDC4CC0);
  return v21;
}

void sub_23ED810AC(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_23ED9C888(a2);
    if (v7)
    {
      sub_23ED71DA8(*(v3 + 56) + 32 * v6, &v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
      if (swift_dynamicCast())
      {
        v16 = v8;
        if (a3 >> 62)
        {
          v9 = sub_23EDC1FE0();
          if (v9)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9)
          {
LABEL_6:
            if (v9 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v9; ++i)
            {
              if ((a3 & 0xC000000000000001) != 0)
              {
                v11 = MEMORY[0x23EF23C50](i, a3);
              }

              else
              {
                v11 = *(a3 + 8 * i + 32);
              }

              v12 = v11;
              v13 = sub_23ED9C888(v11);
              if (v14)
              {
                v15 = v13;
                if (!swift_isUniquelyReferenced_nonNull_native())
                {
                  sub_23ED795C8();
                }

                sub_23ED7BB70((*(v17 + 56) + 32 * v15), &v18);
                sub_23ED900BC(v15, v17);
              }

              else
              {

                v18 = 0u;
                v19 = 0u;
              }

              sub_23ED6FA68(&v18, &qword_27E3888A8, &qword_23EDC4EC0);
            }
          }
        }

        *(&v19 + 1) = v16;
        *&v18 = v17;
        sub_23ED88AE4(&v18, a2);
      }
    }
  }
}

void sub_23ED81294(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23ED80ED8();
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *a1;
  sub_23ED82C80(v7, sub_23ED7FB48, 0, isUniquelyReferenced_nonNull_native, v30);

  *a1 = v30[0];
  v10 = *MEMORY[0x277CD3410];
  v31 = MEMORY[0x277D84CC0];
  LODWORD(v30[0]) = 1;
  sub_23ED88AE4(v30, v10);
  v11 = sub_23EDC19A0();
  sub_23ED7FB98(a1, *MEMORY[0x277CD33B0], v11, a2, a3);
  v12 = sub_23EDC19A0();
  v13 = *MEMORY[0x277CD2F50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888A0, &qword_23EDC4EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4D90;
  *(inited + 32) = v12;
  v15 = v12;
  sub_23ED810AC(a1, v13, inited);
  swift_setDeallocating();
  v16 = *(inited + 16);
  swift_arrayDestroy();
  v17 = *MEMORY[0x277CD3458];
  v18 = MEMORY[0x277D839B0];
  v31 = MEMORY[0x277D839B0];
  LOBYTE(v30[0]) = 1;
  sub_23ED88AE4(v30, v17);
  v19 = *MEMORY[0x277CD3360];
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23EDC4DA0;
  v21 = *MEMORY[0x277CD36B0];
  *(v20 + 32) = *MEMORY[0x277CD36B0];
  v22 = *MEMORY[0x277CD36B8];
  *(v20 + 40) = *MEMORY[0x277CD36B8];
  v23 = v21;
  v24 = v22;
  *(v20 + 48) = sub_23EDC19A0();
  sub_23ED810AC(a1, v19, v20);
  swift_setDeallocating();
  v25 = *(v20 + 16);
  swift_arrayDestroy();
  v26 = *MEMORY[0x277CD2CD8];
  v31 = v18;
  LOBYTE(v30[0]) = 1;
  v27 = v26;
  sub_23ED88AE4(v30, v27);
  if ((a4 & 0x100000000) == 0)
  {
    v28 = *MEMORY[0x277CD2D48];
    v31 = MEMORY[0x277D83A90];
    LODWORD(v30[0]) = a4;
    sub_23ED88AE4(v30, v28);
  }

  v31 = v18;
  LOBYTE(v30[0]) = 1;
  sub_23ED88AE4(v30, v27);
}

void sub_23ED81580(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v6 = *MEMORY[0x277CD3038];
    v7 = sub_23ED9C888(*MEMORY[0x277CD3038]);
    if (v8)
    {
      sub_23ED71DA8(*(v3 + 56) + 32 * v7, &v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
      if (swift_dynamicCast())
      {
        v10 = v20;
        v11 = *MEMORY[0x277CD3110];
        v12 = MEMORY[0x277D83B88];
        v23 = MEMORY[0x277D83B88];
        *&v22 = a2;
        sub_23ED7BB70(&v22, &v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v10;
        v14 = __swift_mutable_project_boxed_opaque_existential_0(&v20, v21);
        sub_23ED7FEB4(*v14, v11, isUniquelyReferenced_nonNull_native, &v19);
        __swift_destroy_boxed_opaque_existential_0Tm(&v20);
        v15 = v19;
        v16 = *MEMORY[0x277CD3118];
        v23 = v12;
        *&v22 = a3;
        sub_23ED7BB70(&v22, &v20);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v19 = v15;
        v18 = __swift_mutable_project_boxed_opaque_existential_0(&v20, v21);
        sub_23ED7FEB4(*v18, v16, v17, &v19);
        __swift_destroy_boxed_opaque_existential_0Tm(&v20);
        v23 = v9;
        *&v22 = v19;
        sub_23ED88AE4(&v22, v6);
      }
    }
  }
}

uint64_t sub_23ED81728(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  if (a1 <= 0.0 || a2 <= 0.0 || (v9 = [objc_opt_self() degrees], sub_23EDC0D90(), v9, sub_23EDC0D70(), v11 = v10, (*(v5 + 8))(v8, v4), v11 > 1.0) && v11 >= 180.0)
  {
    sub_23ED83D68();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_23EDC11B0();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B0, &qword_23EDC4EC8);
    result = swift_allocObject();
    *(result + 16) = xmmword_23EDC4DB0;
    *(result + 32) = v13;
    *(result + 40) = 0;
    *(result + 48) = a1 * 0.5;
    *(result + 56) = 0;
    *(result + 64) = v13;
    *(result + 72) = a2 * 0.5;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0x3FF0000000000000;
  }

  return result;
}

uint64_t sub_23ED8191C(uint64_t a1, int a2)
{
  v18 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = objc_opt_self();
  v8 = [v7 meters];
  sub_23EDC0D90();

  sub_23EDC0D70();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v6, v2);
  if (v10 <= 0.0)
  {
    sub_23ED83D68();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v12 = [v7 meters];
    sub_23EDC0D90();

    sub_23EDC0D70();
    v14 = v13;
    v11(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B0, &qword_23EDC4EC8);
    result = swift_allocObject();
    *(result + 16) = xmmword_23EDC4870;
    v16 = -(v14 * 0.5);
    if (v18)
    {
      v16 = v14 * 0.5;
    }

    *(result + 32) = v16;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  return result;
}

void sub_23ED81B34(uint64_t *a1)
{
  v2 = *MEMORY[0x277CD33B0];
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_23ED9C888(*MEMORY[0x277CD33B0]), (v5 & 1) != 0) && (sub_23ED71DA8(*(v3 + 56) + 32 * v4, &v26), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90), swift_dynamicCast()))
  {
    v6 = v24[0];
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = sub_23EDC19A0();
  v8 = sub_23EDC19A0();
  sub_23EDA89EC();
  if (v1)
  {
  }

  else
  {
    v27 = MEMORY[0x277D84CC0];
    LODWORD(v26) = 5242880;
    sub_23ED7BB70(&v26, v24);
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v6;
    v11 = __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
    sub_23ED7FFF0(*v11, v9, isUniquelyReferenced_nonNull_native, &v28);

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v12 = v28;
    v13 = v8;
    v14 = sub_23EDC19A0();

    type metadata accessor for CFString(0);
    v27 = v15;
    *&v26 = v14;
    sub_23ED7BB70(&v26, v24);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v12;
    v17 = v25;
    v18 = __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
    v19 = *(*(v17 - 8) + 64);
    MEMORY[0x28223BE20](v18);
    v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    sub_23ED8012C(*v21, v13, v16, &v28);

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v23 = v28;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
    *&v26 = v23;
    sub_23ED88AE4(&v26, v2);
  }
}

uint64_t sub_23ED81E0C()
{
  v0 = sub_23EDC0EF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23EDC0EE0();
  v5 = sub_23EDC0ED0();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v21 = 0;
  v22 = 0xE000000000000000;
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v17 = v5;
  v18 = v7;
  v19 = 0;
  v20 = v8;
  v9 = sub_23EDC1A80();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    do
    {
      if ((v11 != 45 || v12 != 0xE100000000000000) && (sub_23EDC2240() & 1) == 0)
      {
        MEMORY[0x23EF237C0](v11, v12);
      }

      v11 = sub_23EDC1A80();
      v12 = v13;
    }

    while (v13);
    v15 = v21;
    v14 = v22;
  }

  else
  {
    v15 = 0;
    v14 = 0xE000000000000000;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD000000000000014, 0x800000023EDCA810);
  MEMORY[0x23EF237D0](49, 0xE100000000000000);
  MEMORY[0x23EF237D0](0xD000000000000017, 0x800000023EDCA830);
  MEMORY[0x23EF237D0](0xD00000000000001BLL, 0x800000023EDCA7F0);
  MEMORY[0x23EF237D0](0xD000000000000011, 0x800000023EDCA850);
  MEMORY[0x23EF237D0](v15, v14);
  MEMORY[0x23EF237D0](0xD000000000000014, 0x800000023EDCA870);
  MEMORY[0x23EF237D0](0xD000000000000018, 0x800000023EDCA890);
  MEMORY[0x23EF237D0](0xD00000000000001BLL, 0x800000023EDCA7F0);
  MEMORY[0x23EF237D0](0xD000000000000013, 0x800000023EDCA8B0);
  MEMORY[0x23EF237D0](v15, v14);

  MEMORY[0x23EF237D0](0xD000000000000015, 0x800000023EDCA8D0);
  MEMORY[0x23EF237D0](2105355298, 0xE400000000000000);
  return v17;
}

uint64_t sub_23ED820C4()
{
  v0 = sub_23EDC1430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23EDC1480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = sub_23EDC1440();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *MEMORY[0x277D36C90];
  v19 = *(v14 + 104);
  v43 = v20;
  v19(v17, v18);
  sub_23EDC1460();
  (*(v6 + 32))(v12, v10, v5);
  sub_23EDC1450();
  v21 = (*(v1 + 88))(v4, v0);
  if (v21 == *MEMORY[0x277D36C78])
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v22 = sub_23EDC1790();
    __swift_project_value_buffer(v22, qword_27E3897E8);
    v23 = sub_23EDC1770();
    v24 = sub_23EDC1D60();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Comment not yet available";
LABEL_15:
    _os_log_impl(&dword_23ED67000, v23, v24, v26, v25, 2u);
    MEMORY[0x23EF24B30](v25, -1, -1);
LABEL_16:

    (*(v6 + 8))(v12, v5);
    (*(v14 + 8))(v17, v43);
LABEL_17:
    v29 = 0;
    return v29 & 1;
  }

  if (v21 == *MEMORY[0x277D36C70] || v21 == *MEMORY[0x277D36C80])
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v28 = sub_23EDC1790();
    __swift_project_value_buffer(v28, qword_27E3897E8);
    v23 = sub_23EDC1770();
    v24 = sub_23EDC1D60();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Comment not eligible";
    goto LABEL_15;
  }

  if (v21 != *MEMORY[0x277D36C88])
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v36 = sub_23EDC1790();
    __swift_project_value_buffer(v36, qword_27E3897E8);
    v37 = sub_23EDC1770();
    v38 = sub_23EDC1D60();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = v38;
      v41 = v39;
      _os_log_impl(&dword_23ED67000, v37, v40, "Comment unknown eligibility result", v39, 2u);
      MEMORY[0x23EF24B30](v41, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    (*(v14 + 8))(v17, v43);
    (*(v1 + 8))(v4, v0);
    goto LABEL_17;
  }

  v31 = sub_23EDC1470();
  v29 = sub_23ED7F86C(v31, 20035, 0xE200000000000000);

  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v32 = sub_23EDC1790();
  __swift_project_value_buffer(v32, qword_27E3897E8);
  v33 = sub_23EDC1770();
  v34 = sub_23EDC1D60();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = v29 & 1;
    _os_log_impl(&dword_23ED67000, v33, v34, "Comment eligible: %{BOOL}d", v35, 8u);
    MEMORY[0x23EF24B30](v35, -1, -1);
  }

  (*(v6 + 8))(v12, v5);
  (*(v14 + 8))(v17, v43);
  return v29 & 1;
}

void sub_23ED82844(uint64_t *a1)
{
  if (sub_23ED820C4())
  {
    v2 = *MEMORY[0x277CD3038];
    v3 = *a1;
    if (*(*a1 + 16) && (v4 = sub_23ED9C888(*MEMORY[0x277CD3038]), (v5 & 1) != 0) && (sub_23ED71DA8(*(v3 + 56) + 32 * v4, &v22), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90), swift_dynamicCast()))
    {
      v6 = v20[0];
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v7 = *MEMORY[0x277CD3198];
    v8 = sub_23ED81E0C();
    v23 = MEMORY[0x277D837D0];
    *&v22 = v8;
    *(&v22 + 1) = v9;
    sub_23ED7BB70(&v22, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    v11 = v21;
    v12 = __swift_mutable_project_boxed_opaque_existential_0(v20, v21);
    v13 = *(*(v11 - 8) + 64);
    MEMORY[0x28223BE20](v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    sub_23ED80300(*v15, v15[1], v7, isUniquelyReferenced_nonNull_native, &v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v17 = v19;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
    *&v22 = v17;
    sub_23ED88AE4(&v22, v2);
  }
}

uint64_t sub_23ED82A44(uint64_t *a1)
{
  v2 = *MEMORY[0x277CD3038];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888A0, &qword_23EDC4EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4D90;
  v4 = *MEMORY[0x277CD3178];
  *(inited + 32) = *MEMORY[0x277CD3178];
  v5 = v4;
  sub_23ED810AC(a1, v2, inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  sub_23ED8FA88(*MEMORY[0x277CD3458], &v19);
  sub_23ED6FA68(&v19, &qword_27E3888A8, &qword_23EDC4EC0);
  sub_23ED8FA88(*MEMORY[0x277CD3258], &v19);
  sub_23ED6FA68(&v19, &qword_27E3888A8, &qword_23EDC4EC0);
  v7 = *MEMORY[0x277CD3410];
  v20 = MEMORY[0x277D84CC0];
  LODWORD(v19) = 1;
  sub_23ED88AE4(&v19, v7);
  v8 = sub_23EDC19A0();
  v9 = *MEMORY[0x277CD33B0];
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_23EDC4D90;
  *(v10 + 32) = v8;
  v11 = v8;
  sub_23ED810AC(a1, v9, v10);
  swift_setDeallocating();
  v12 = *(v10 + 16);
  swift_arrayDestroy();
  v13 = sub_23EDC19A0();
  v14 = *MEMORY[0x277CD2F50];
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_23EDC4D90;
  *(v15 + 32) = v13;
  v16 = v13;
  sub_23ED810AC(a1, v14, v15);

  swift_setDeallocating();
  v17 = *(v15 + 16);
  return swift_arrayDestroy();
}

unint64_t sub_23ED82C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_23ED80B0C(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_23ED7BB70(v43, v41);
  v13 = *a5;
  result = sub_23ED9C888(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_23ED77818(v19, a4 & 1);
    v21 = *a5;
    result = sub_23ED9C888(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_23ED795C8();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    sub_23ED7BB70(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_23ED7BB70(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_23ED80B0C(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_23ED7BB70(v43, v41);
        v31 = *a5;
        result = sub_23ED9C888(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_23ED77818(v35, 1);
          v36 = *a5;
          result = sub_23ED9C888(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          sub_23ED7BB70(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_23ED7BB70(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_23ED80B0C(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_23ED73F0C();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_23ED82F60(CGImageDestination *a1, CGImage *a2, CGImage *a3, uint64_t a4, uint64_t a5)
{
  v174 = a1;
  v175 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v132 - v12;
  Width = CGImageGetWidth(a2);
  if (Width != CGImageGetWidth(a3) || (Height = CGImageGetHeight(a2), Height != CGImageGetHeight(a3)))
  {
    sub_23ED83D68();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v173 = a3;
  v16 = type metadata accessor for StereoProperties();
  v17 = *(v16 + 20);
  if (qword_27E388178 != -1)
  {
    swift_once();
  }

  sub_23EDC0D90();
  sub_23EDC0D70();
  v19 = v18;
  (*(v10 + 8))(v13, v9);
  v20 = round(v19 * 1000000.0);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v21 = CGImageGetWidth(a2);
  v22 = CGImageGetHeight(a2);
  v23 = a5;
  v24 = sub_23ED81728(v21, v22);
  if (!v5)
  {
    v25 = v24;
    v26 = v16;
    v27 = *(v16 + 24);
    v28 = sub_23ED8191C(v23 + v27, 0);
    v29 = sub_23ED8191C(v23 + v27, 1);
    v152 = v28;
    v167 = v20;
    v163 = v29;
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388858, &qword_23EDC4E48);
    inited = swift_initStackObject();
    v170 = inited;
    v161 = xmmword_23EDC4870;
    *(inited + 1) = xmmword_23EDC4870;
    v31 = *MEMORY[0x277CD3330];
    inited[4] = *MEMORY[0x277CD3330];
    v158 = v31;
    v159 = inited + 4;
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388860, &unk_23EDC4E50);
    v32 = swift_initStackObject();
    v166 = v25;
    v33 = v32;
    v160 = xmmword_23EDC4D80;
    v34 = *MEMORY[0x277CD3310];
    *(v32 + 32) = *MEMORY[0x277CD3310];
    *&v172 = v32 + 32;
    *(v32 + 16) = xmmword_23EDC4D80;
    v35 = MEMORY[0x277D83B88];
    *(v32 + 40) = 0;
    v164 = v23;
    v165 = v26;
    v36 = *MEMORY[0x277CD3320];
    *(v32 + 64) = v35;
    *(v32 + 72) = v36;
    v37 = v35;
    v38 = *MEMORY[0x277CD3328];
    type metadata accessor for CFString(0);
    v168 = v39;
    *(v33 + 80) = v38;
    v171 = *MEMORY[0x277CD32F8];
    v40 = v171;
    *(v33 + 104) = v39;
    *(v33 + 112) = v40;
    v41 = MEMORY[0x277D839B0];
    v42 = MEMORY[0x277CD32F0];
    *(v33 + 120) = 1;
    v43 = *v42;
    *(v33 + 144) = v41;
    *(v33 + 152) = v43;
    *(v33 + 184) = v37;
    *(v33 + 160) = v167;
    v44 = v158;
    v45 = v34;
    v46 = v36;
    v47 = v38;
    v48 = v43;
    v154 = v44;
    v158 = v45;
    v157 = v46;
    v155 = v47;
    v156 = v48;
    v49 = v171;
    v50 = sub_23ED7A3B4(v33);
    swift_setDeallocating();
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886D0, &qword_23EDC4CC0);
    swift_arrayDestroy();
    v151 = *MEMORY[0x277CD3360];
    v51 = v151;
    v52 = v170;
    v170[5] = v50;
    v52[6] = v51;
    v53 = swift_initStackObject();
    v172 = xmmword_23EDC4880;
    *(v53 + 16) = xmmword_23EDC4880;
    v54 = *MEMORY[0x277CD36B0];
    *(v53 + 32) = *MEMORY[0x277CD36B0];
    v138 = v53 + 32;
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388868, &qword_23EDC4E60);
    v55 = swift_initStackObject();
    *(v55 + 16) = v172;
    v56 = *MEMORY[0x277CD3688];
    *(v55 + 32) = *MEMORY[0x277CD3688];
    v57 = *MEMORY[0x277CD3690];
    *(v55 + 40) = v152;
    *(v55 + 48) = v57;
    *(v55 + 56) = &unk_2851646B0;
    v152 = v151;
    v58 = v54;
    v59 = v56;
    v60 = v57;
    v148 = v152;
    v150 = v58;
    v152 = v59;
    v151 = v60;
    v61 = sub_23ED7A4DC(v55);
    swift_setDeallocating();
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388870, &qword_23EDC4E68);
    swift_arrayDestroy();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388878, &unk_23EDC4E70);
    v147 = v62;
    *(v53 + 40) = v61;
    v144 = *MEMORY[0x277CD36B8];
    v63 = v144;
    *(v53 + 64) = v62;
    *(v53 + 72) = v63;
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388710, &qword_23EDC4CF8);
    v64 = swift_initStackObject();
    *(v64 + 16) = v172;
    v65 = *MEMORY[0x277CD36A0];
    *(v64 + 32) = *MEMORY[0x277CD36A0];
    v139 = v64 + 32;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388880, &unk_23EDC4E80);
    v145 = v66;
    *(v64 + 40) = v166;
    v67 = *MEMORY[0x277CD36A8];
    *(v64 + 64) = v66;
    *(v64 + 72) = v67;
    v68 = *MEMORY[0x277CD3698];
    *(v64 + 104) = v168;
    *(v64 + 80) = v68;
    v144 = v144;
    v69 = v65;
    v70 = v67;
    v71 = v68;
    v141 = v144;
    v144 = v69;
    v143 = v70;
    v142 = v71;

    v72 = sub_23ED79F84(v64);
    swift_setDeallocating();
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886C0, &qword_23EDC4CB0);
    swift_arrayDestroy();
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388888, &qword_23EDC4E90);
    *(v53 + 104) = v139;
    *(v53 + 80) = v72;
    v73 = sub_23ED7A3B4(v53);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = *MEMORY[0x277CD3380];
    v75 = v170;
    v170[7] = v73;
    v75[8] = v74;
    v76 = swift_initStackObject();
    *(v76 + 16) = v172;
    v77 = *MEMORY[0x277CD3378];
    *(v76 + 32) = *MEMORY[0x277CD3378];
    v133 = v76 + 32;
    v138 = 0x800000023EDCA760;
    v78 = MEMORY[0x277D837D0];
    v79 = MEMORY[0x277CD3388];
    *(v76 + 40) = 0xD000000000000022;
    *(v76 + 48) = 0x800000023EDCA760;
    v80 = *v79;
    *(v76 + 64) = v78;
    *(v76 + 72) = v80;
    *(v76 + 104) = v78;
    v136 = 0xD000000000000053;
    v137 = 0x800000023EDCA790;
    *(v76 + 80) = 0xD000000000000053;
    *(v76 + 88) = 0x800000023EDCA790;
    v81 = v74;
    v82 = v77;
    v83 = v80;
    v132 = v81;
    v135 = v82;
    v134 = v83;
    v84 = sub_23ED7A3B4(v76);
    swift_setDeallocating();
    swift_arrayDestroy();
    v85 = v170;
    v170[9] = v84;
    v86 = sub_23ED7A4F0(v85);
    swift_setDeallocating();
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388890, &qword_23EDC4E98);
    swift_arrayDestroy();
    v170 = sub_23ED767DC(v86);

    v87 = swift_initStackObject();
    *(v87 + 16) = v161;
    *(v87 + 32) = v154;
    v162 = v87 + 32;
    v88 = swift_allocObject();
    *(v88 + 16) = v160;
    v89 = v157;
    *(v88 + 32) = v158;
    *(v88 + 40) = 0;
    v90 = MEMORY[0x277D83B88];
    *(v88 + 64) = MEMORY[0x277D83B88];
    *(v88 + 72) = v89;
    *(v88 + 80) = v155;
    v91 = *MEMORY[0x277CD3308];
    v92 = v168;
    *(v88 + 104) = v168;
    *(v88 + 112) = v91;
    *(v88 + 120) = 1;
    v93 = v156;
    *(v88 + 144) = MEMORY[0x277D839B0];
    *(v88 + 152) = v93;
    *(v88 + 184) = v90;
    *(v88 + 160) = v167;
    v94 = v91;
    v95 = sub_23ED7A3B4(v88);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v96 = v148;
    *(v87 + 40) = v95;
    *(v87 + 48) = v96;
    v97 = swift_allocObject();
    *(v97 + 16) = v172;
    *(v97 + 32) = v150;
    v98 = swift_initStackObject();
    *(v98 + 16) = v172;
    *(v98 + 32) = v152;
    v99 = v151;
    *(v98 + 40) = v163;
    *(v98 + 48) = v99;
    *(v98 + 56) = &unk_2851646B0;
    v167 = sub_23ED7A4DC(v98);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v97 + 40) = v167;
    v100 = v141;
    *(v97 + 64) = v147;
    *(v97 + 72) = v100;
    v101 = swift_allocObject();
    *(v101 + 32) = v144;
    *(v101 + 16) = v172;
    *(v101 + 40) = v166;
    v102 = v142;
    v103 = v143;
    *(v101 + 64) = v145;
    *(v101 + 72) = v103;
    *(v101 + 104) = v92;
    *(v101 + 80) = v102;
    v104 = sub_23ED79F84(v101);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v97 + 104) = v139;
    *(v97 + 80) = v104;
    v105 = sub_23ED7A3B4(v97);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v106 = v132;
    *(v87 + 56) = v105;
    *(v87 + 64) = v106;
    v107 = swift_allocObject();
    *(v107 + 16) = v172;
    v108 = v134;
    *(v107 + 32) = v135;
    *(v107 + 40) = 0xD000000000000022;
    *(v107 + 48) = v138;
    v109 = MEMORY[0x277D837D0];
    *(v107 + 64) = MEMORY[0x277D837D0];
    *(v107 + 72) = v108;
    *(v107 + 104) = v109;
    v110 = v137;
    *(v107 + 80) = v136;
    *(v107 + 88) = v110;
    v111 = sub_23ED7A3B4(v107);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v87 + 72) = v111;
    v112 = sub_23ED7A4F0(v87);
    swift_setDeallocating();
    swift_arrayDestroy();
    v113 = sub_23ED767DC(v112);

    v114 = (v164 + *(v165 + 28));
    if (v114[1])
    {
      v115 = v175;
    }

    else
    {
      v116 = *v114;
      v117 = *MEMORY[0x277CD2D48];
      v180 = MEMORY[0x277D839F8];
      *&v179 = v116;
      sub_23ED7BB70(&v179, &v177);
      v118 = v175;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = v118;
      v120 = __swift_mutable_project_boxed_opaque_existential_0(&v177, v178);
      sub_23ED804D4(v117, isUniquelyReferenced_nonNull_native, &v176, *v120);
      __swift_destroy_boxed_opaque_existential_0Tm(&v177);
      v115 = v176;
    }

    v121 = *MEMORY[0x277CD2CD8];
    v180 = MEMORY[0x277D839B0];
    LOBYTE(v179) = 1;
    sub_23ED7BB70(&v179, &v177);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v115;
    v123 = __swift_mutable_project_boxed_opaque_existential_0(&v177, v178);
    sub_23ED8060C(*v123, v121, v122, &v176);
    __swift_destroy_boxed_opaque_existential_0Tm(&v177);
    v181 = v176;
    sub_23ED81B34(&v181);
    sub_23ED82A44(&v181);
    v124 = CGImageGetWidth(a2);
    v125 = CGImageGetHeight(a2);
    sub_23ED81580(&v181, v124, v125);
    sub_23ED82844(&v181);
    v126 = v181;
    swift_bridgeObjectRetain_n();
    v127 = swift_isUniquelyReferenced_nonNull_native();
    *&v179 = v126;
    sub_23ED82C80(v170, sub_23ED7FB48, 0, v127, &v179);

    v128 = swift_isUniquelyReferenced_nonNull_native();
    *&v179 = v126;
    sub_23ED82C80(v113, sub_23ED7FB48, 0, v128, &v179);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
    sub_23ED83E0C();
    v129 = sub_23EDC1890();

    v130 = v174;
    CGImageDestinationAddImage(v174, a2, v129);

    v131 = sub_23EDC1890();

    CGImageDestinationAddImage(v130, v173, v131);
  }
}

unint64_t sub_23ED83D68()
{
  result = qword_27E388850;
  if (!qword_27E388850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388850);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_23ED83E0C()
{
  result = qword_27E388360;
  if (!qword_27E388360)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388360);
  }

  return result;
}

unint64_t sub_23ED83EB0()
{
  result = qword_27E3888C0;
  if (!qword_27E3888C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3888C0);
  }

  return result;
}

uint64_t sub_23ED83F54(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v50 = a2;
  v52 = *(a1 - 8);
  v6 = v52[8];
  v7 = (MEMORY[0x28223BE20])();
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v14 = sub_23EDC1790();
  v15 = __swift_project_value_buffer(v14, qword_27E3897E8);
  v16 = v52 + 2;
  v17 = v52[2];
  v17(v13, v4, a1);
  v47 = v15;
  v18 = sub_23EDC1770();
  v19 = sub_23EDC1D70();
  v20 = os_log_type_enabled(v18, v19);
  v48 = v17;
  v49 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v3;
    v22 = v21;
    v44 = swift_slowAlloc();
    v53 = v44;
    *v22 = 136315138;
    v17(v11, v13, a1);
    v23 = v4;
    v24 = v11;
    v25 = sub_23EDC1A00();
    v27 = v26;
    v46 = v52[1];
    v46(v13, a1);
    v28 = v25;
    v11 = v24;
    v4 = v23;
    v29 = sub_23ED713FC(v28, v27, &v53);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_23ED67000, v18, v19, "%s checking for cancellation", v22, 0xCu);
    v30 = v44;
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x23EF24B30](v30, -1, -1);
    MEMORY[0x23EF24B30](v22, -1, -1);
  }

  else
  {

    v46 = v52[1];
    v46(v13, a1);
  }

  result = (*(v50 + 8))(a1);
  if (result)
  {
    v32 = v48;
    v48(v51, v4, a1);
    v33 = sub_23EDC1770();
    v34 = sub_23EDC1D70();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v32;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v36 = 136315138;
      v38 = v51;
      v35(v11, v51, a1);
      v39 = sub_23EDC1A00();
      v41 = v40;
      v46(v38, a1);
      v42 = sub_23ED713FC(v39, v41, &v53);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_23ED67000, v33, v34, "%s is in cancelled state; throwing CancellationError.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x23EF24B30](v37, -1, -1);
      MEMORY[0x23EF24B30](v36, -1, -1);
    }

    else
    {

      v46(v51, a1);
    }

    sub_23EDC1BB0();
    sub_23ED85994();
    swift_allocError();
    sub_23EDC1880();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23ED843DC(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23[-v9];
  v29 = 0;
  v24 = v8;
  v25 = v11;
  v26 = v1;
  v27 = &v29;
  sub_23EDC2080();
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v12 = sub_23EDC1790();
  __swift_project_value_buffer(v12, qword_27E3897E8);
  v13 = *(v3 + 16);
  v13(v10, v1, a1);
  v14 = sub_23EDC1770();
  v15 = sub_23EDC1D70();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    v13(v7, v10, a1);
    v18 = sub_23EDC1A00();
    v20 = v19;
    (*(v3 + 8))(v10, a1);
    v21 = sub_23ED713FC(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 1024;
    swift_beginAccess();
    *(v16 + 14) = v29;
    _os_log_impl(&dword_23ED67000, v14, v15, "%s isCancelled=%{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x23EF24B30](v17, -1, -1);
    MEMORY[0x23EF24B30](v16, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v10, a1);
  }

  swift_beginAccess();
  return v29;
}

uint64_t sub_23ED84734(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v44 = a2;
  v45 = a3;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v43 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v38[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38[-v15];
  v17 = sub_23EDC1D00();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23ED8589C(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_23ED8590C(v16);
  }

  v41 = v21;
  v42 = v4;
  (*(v18 + 32))(v21, v16, v17);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v23 = sub_23EDC1790();
  __swift_project_value_buffer(v23, qword_27E3897E8);
  v24 = *(v7 + 16);
  v24(v12, v44, a4);
  v25 = sub_23EDC1770();
  v26 = sub_23EDC1D70();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = v25;
    v28 = v27;
    v44 = swift_slowAlloc();
    v46 = v44;
    *v28 = 136315138;
    v39 = v26;
    v24(v43, v12, a4);
    v29 = sub_23EDC1A00();
    v31 = v30;
    (*(v7 + 8))(v12, a4);
    v32 = sub_23ED713FC(v29, v31, &v46);

    v33 = v28;
    *(v28 + 4) = v32;
    v34 = v40;
    _os_log_impl(&dword_23ED67000, v40, v39, "%s checking current task cancelled state", v33, 0xCu);
    v35 = v44;
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x23EF24B30](v35, -1, -1);
    MEMORY[0x23EF24B30](v33, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, a4);
  }

  v36 = v41;
  v37 = sub_23EDC1CE0();
  result = (*(v18 + 8))(v36, v17);
  *v45 = v37 & 1;
  return result;
}

uint64_t sub_23ED84B20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v42 = a2;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v41 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v36[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36[-v14];
  v16 = sub_23EDC1D00();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23ED8589C(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_23ED8590C(v15);
  }

  v39 = v20;
  v40 = v3;
  (*(v17 + 32))(v20, v15, v16);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v22 = sub_23EDC1790();
  __swift_project_value_buffer(v22, qword_27E3897E8);
  v23 = *(v6 + 16);
  v23(v11, v42, a3);
  v24 = sub_23EDC1770();
  v25 = sub_23EDC1D70();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v38 = v24;
    v27 = v26;
    v42 = swift_slowAlloc();
    v43 = v42;
    *v27 = 136315138;
    v37 = v25;
    v23(v41, v11, a3);
    v28 = sub_23EDC1A00();
    v30 = v29;
    (*(v6 + 8))(v11, a3);
    v31 = sub_23ED713FC(v28, v30, &v43);

    v32 = v27;
    *(v27 + 4) = v31;
    v33 = v38;
    _os_log_impl(&dword_23ED67000, v38, v37, "%s marking as cancelled", v32, 0xCu);
    v34 = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x23EF24B30](v34, -1, -1);
    MEMORY[0x23EF24B30](v32, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v11, a3);
  }

  v35 = v39;
  sub_23EDC1CF0();
  return (*(v17 + 8))(v35, v16);
}

uint64_t sub_23ED84EFC()
{
  v1 = *v0;
  v2 = atomic_load(v0 + 16);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v3 = sub_23EDC1790();
  __swift_project_value_buffer(v3, qword_27E3897E8);

  v4 = sub_23EDC1770();
  v5 = sub_23EDC1D70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;

    v8 = sub_23EDC1A00();
    v10 = sub_23ED713FC(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2 & 1;
    _os_log_impl(&dword_23ED67000, v4, v5, "%s isCancelled=%{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EF24B30](v7, -1, -1);
    MEMORY[0x23EF24B30](v6, -1, -1);
  }

  return v2 & 1;
}

void sub_23ED850A8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v3 = sub_23EDC1790();
  __swift_project_value_buffer(v3, qword_27E3897E8);

  v4 = sub_23EDC1770();
  v5 = sub_23EDC1D70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;

    v8 = sub_23EDC1A00();
    v10 = sub_23ED713FC(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23ED67000, v4, v5, "%s marking as cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EF24B30](v7, -1, -1);
    MEMORY[0x23EF24B30](v6, -1, -1);
  }

  atomic_store(1u, v1 + 16);
}

uint64_t sub_23ED85278()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3888C8, qword_23EDC4FF8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23ED85344()
{
  v7 = v0[7];
  v8 = v0[8];
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  sub_23EDC1C60();
  v4 = type metadata accessor for WriteOnceReadMany();
  sub_23EDB8E40(v4);
  return v6;
}

uint64_t sub_23ED853D4()
{
  v1 = v0;
  v2 = *v0;
  if (!sub_23ED85344())
  {
    goto LABEL_8;
  }

  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v3 = sub_23EDC1790();
  __swift_project_value_buffer(v3, qword_27E3897E8);

  v4 = sub_23EDC1770();
  v5 = sub_23EDC1D70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;

    v8 = sub_23EDC1A00();
    v10 = sub_23ED713FC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23ED67000, v4, v5, "%s checking captured task cancelled state", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EF24B30](v7, -1, -1);
    MEMORY[0x23EF24B30](v6, -1, -1);
  }

  isCancelled = swift_task_isCancelled();

  if (isCancelled)
  {
    v12 = 1;
  }

  else
  {
LABEL_8:
    v13 = v1[5];
    v14 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    v12 = (*(v14 + 8))(v13, v14);
  }

  return v12 & 1;
}

uint64_t sub_23ED855C4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *v0;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  result = sub_23ED85344();
  if (result)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v5 = sub_23EDC1790();
    __swift_project_value_buffer(v5, qword_27E3897E8);

    v6 = sub_23EDC1770();
    v7 = sub_23EDC1D70();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;

      v10 = sub_23EDC1A00();
      v12 = sub_23ED713FC(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_23ED67000, v6, v7, "%s cancelling capture task", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x23EF24B30](v9, -1, -1);
      MEMORY[0x23EF24B30](v8, -1, -1);
    }

    v13 = v3[10];
    v14 = v3[11];
    v15 = v3[12];
    sub_23EDC1C50();
  }

  return result;
}

uint64_t *sub_23ED857AC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];
  v2 = v0[8];

  return v0;
}

uint64_t sub_23ED857E4()
{
  sub_23ED857AC();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED8589C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED8590C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23ED85994()
{
  result = qword_27E388490;
  if (!qword_27E388490)
  {
    sub_23EDC1BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388490);
  }

  return result;
}

uint64_t sub_23ED859EC()
{
  if (*v0)
  {
    result = 0x636E657265666E69;
  }

  else
  {
    result = 0x6F6974617265706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_23ED85A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL;
  if (v6 || (sub_23EDC2240() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF65706963655265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23EDC2240();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23ED85B3C(uint64_t a1)
{
  v2 = sub_23ED85DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED85B78(uint64_t a1)
{
  v2 = sub_23ED85DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ALCInferenceInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388950, &qword_23EDC50C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED85DB4();
  sub_23EDC23A0();
  v11[15] = 0;
  sub_23EDC0EF0();
  sub_23ED8622C(&qword_27E388960, MEMORY[0x277CC95F0]);
  sub_23EDC2190();
  if (!v1)
  {
    v9 = *(type metadata accessor for ALCInferenceInput() + 20);
    v11[14] = 1;
    type metadata accessor for InferenceRecipe();
    sub_23ED8622C(&qword_27E388968, type metadata accessor for InferenceRecipe);
    sub_23EDC2190();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23ED85DB4()
{
  result = qword_27E388958;
  if (!qword_27E388958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388958);
  }

  return result;
}

uint64_t type metadata accessor for ALCInferenceInput()
{
  result = qword_27E3889F8;
  if (!qword_27E3889F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ALCInferenceInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for InferenceRecipe();
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23EDC0EF0();
  v26 = *(v30 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388970, &qword_23EDC50C8);
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ALCInferenceInput();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED85DB4();
  sub_23EDC2360();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v33 = 0;
  sub_23ED8622C(&qword_27E388978, MEMORY[0x277CC95F0]);
  v18 = v28;
  v19 = v30;
  sub_23EDC20F0();
  (*(v17 + 32))(v24, v18, v19);
  v32 = 1;
  sub_23ED8622C(&qword_27E388980, type metadata accessor for InferenceRecipe);
  sub_23EDC20F0();
  (*(v29 + 8))(v11, v31);
  v20 = v24;
  sub_23ED86274(v6, &v24[*(v23 + 20)]);
  sub_23ED862D8(v20, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_23ED6FB2C(v20);
}

uint64_t sub_23ED8622C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED86274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecipe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED862D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ALCInferenceInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED8636C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A48, &qword_23EDC54F8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23EDC50A0;
  *(v4 + 32) = sub_23EDC1200();
  *(v4 + 40) = 2;
  *(v4 + 48) = sub_23EDC1210();
  *(v4 + 56) = 2;
  *(v4 + 64) = sub_23EDC11F0();
  *(v4 + 72) = 2;
  *(v4 + 80) = sub_23EDC11D0();
  *(v4 + 88) = 2;
  *(v4 + 96) = sub_23EDC11C0();
  *(v4 + 104) = 2;
  *(v4 + 112) = sub_23EDC11E0();
  *(v4 + 120) = 2;
  v5 = sub_23EDC1220();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a2 = v4;
  return result;
}

uint64_t sub_23ED86454()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = (v1 + 40);
    v4 = &qword_27E388A50;
    v5 = &qword_23EDC5500;
    v6 = (v1 + 40);
    do
    {
      v7 = *v6;
      v6 += 2;
      if (v7 == 2)
      {
        v8 = *(v3 - 1);
        IOSurface = CVPixelBufferGetIOSurface(v8);
        if (IOSurface)
        {
          v10 = IOSurface;
          __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
          sub_23EDC1830();
          v11 = IOSurfaceSetOwnershipIdentity();
          if (v11)
          {
            v12 = v11;
            if (qword_27E3881A0 != -1)
            {
              swift_once();
            }

            v13 = sub_23EDC1790();
            __swift_project_value_buffer(v13, qword_27E389818);
            v14 = sub_23EDC1770();
            v15 = sub_23EDC1D80();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = v5;
              v17 = v4;
              v18 = swift_slowAlloc();
              *v18 = 67240192;
              *(v18 + 4) = v12;
              _os_log_impl(&dword_23ED67000, v14, v15, "ALCInferenceProvider unable to assign output surface ownership identity error: %{public}d", v18, 8u);
              v19 = v18;
              v4 = v17;
              v5 = v16;
              MEMORY[0x23EF24B30](v19, -1, -1);
            }
          }
        }
      }

      v3 = v6;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

uint64_t sub_23ED8665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736567616D695FLL && a2 == 0xE700000000000000)
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

uint64_t sub_23ED866F0(uint64_t a1)
{
  v2 = sub_23ED86908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8672C(uint64_t a1)
{
  v2 = sub_23ED86908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ALCInferenceOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388988, &qword_23EDC50D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED86908();

  sub_23EDC23A0();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388998, &qword_23EDC50D8);
  sub_23ED86D4C(&qword_27E3889A0, &qword_27E388998, &qword_23EDC50D8);
  sub_23EDC2190();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23ED86908()
{
  result = qword_27E388990;
  if (!qword_27E388990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388990);
  }

  return result;
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

uint64_t ALCInferenceOutput.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3889A8, &qword_23EDC50E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED86908();
  sub_23EDC2360();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388998, &qword_23EDC50D8);
    sub_23ED86D4C(&qword_27E3889B0, &qword_27E388998, &qword_23EDC50D8);
    sub_23EDC20F0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_23ED86B90()
{
  result = qword_27E3889B8;
  if (!qword_27E3889B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889B8);
  }

  return result;
}

unint64_t sub_23ED86BE8()
{
  result = qword_27E3889C0;
  if (!qword_27E3889C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889C0);
  }

  return result;
}

unint64_t sub_23ED86C3C(uint64_t a1)
{
  result = sub_23ED86C64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23ED86C64()
{
  result = qword_27E3889C8;
  if (!qword_27E3889C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889C8);
  }

  return result;
}

uint64_t sub_23ED86D4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23ED86DA0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23ED86DD0(uint64_t a1)
{
  v2 = sub_23ED876CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED86E0C(uint64_t a1)
{
  v2 = sub_23ED876CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED86E70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A38, &qword_23EDC54F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED876CC();
  sub_23EDC23A0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23ED86F84@<X0>(__IOSurface *a1@<X1>, uint64_t a2@<X8>)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  result = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], a1, 0, v7);
  v4 = result;
  if (result || !v7[0])
  {
    sub_23ED87720();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    result = swift_willThrow();
  }

  else
  {
    *a2 = v7[0];
    *(a2 + 8) = 2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23ED87054(uint64_t a1)
{
  *(a1 + 8) = sub_23ED87084();
  result = sub_23ED870D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23ED87084()
{
  result = qword_27E3889E8;
  if (!qword_27E3889E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889E8);
  }

  return result;
}

unint64_t sub_23ED870D8()
{
  result = qword_27E3889F0;
  if (!qword_27E3889F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889F0);
  }

  return result;
}

uint64_t sub_23ED87140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23EDC0EF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for InferenceRecipe();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23ED87244(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23EDC0EF0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for InferenceRecipe();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23ED87340()
{
  result = sub_23EDC0EF0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InferenceRecipe();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23ED873D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23ED8742C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
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

unint64_t sub_23ED874C0()
{
  result = qword_27E388A08;
  if (!qword_27E388A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A08);
  }

  return result;
}

unint64_t sub_23ED87518()
{
  result = qword_27E388A10;
  if (!qword_27E388A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A10);
  }

  return result;
}

unint64_t sub_23ED87570()
{
  result = qword_27E388A18;
  if (!qword_27E388A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A18);
  }

  return result;
}

unint64_t sub_23ED875C8()
{
  result = qword_27E388A20;
  if (!qword_27E388A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A20);
  }

  return result;
}

unint64_t sub_23ED87620()
{
  result = qword_27E388A28;
  if (!qword_27E388A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A28);
  }

  return result;
}

unint64_t sub_23ED87678()
{
  result = qword_27E388A30;
  if (!qword_27E388A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A30);
  }

  return result;
}

unint64_t sub_23ED876CC()
{
  result = qword_27E388A40;
  if (!qword_27E388A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A40);
  }

  return result;
}

unint64_t sub_23ED87720()
{
  result = qword_27E389030[0];
  if (!qword_27E389030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E389030);
  }

  return result;
}

unint64_t sub_23ED87788()
{
  result = qword_27E388A58;
  if (!qword_27E388A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A58);
  }

  return result;
}

unint64_t sub_23ED877E0()
{
  result = qword_27E388A60;
  if (!qword_27E388A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A60);
  }

  return result;
}

uint64_t sub_23ED87838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v69 - v5;
  v6 = sub_23EDC1810();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v6);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = (&v69 - v11);
  v12 = sub_23EDC17D0();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23EDC1FC0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v18 = MEMORY[0x28223BE20](v15);
  v79 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v80 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v69 - v32;
  v85[6] = a1;
  v34 = sub_23EDC0D50();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_23EDC0D40();
  sub_23EDC1FB0();
  v83 = v33;
  sub_23ED6FA00(v33, v31, &qword_27E388470, &qword_23EDC5ED0);
  v38 = *(v16 + 6);
  v39 = v38(v31, 1, v15);
  v78 = v12;
  if (v39 == 1)
  {
    v40 = v16;
    sub_23ED6FA68(v31, &qword_27E388470, &qword_23EDC5ED0);
  }

  else
  {
    (*(v16 + 4))(v24, v31, v15);
    (*(v16 + 2))(v22, v24, v15);
    v85[3] = v12;
    __swift_allocate_boxed_opaque_existential_0(v85);
    sub_23EDC17C0();
    v41 = sub_23EDC0D20();
    sub_23ED889C8(v85, v22);
    v41(v84, 0);
    v40 = v16;
    (*(v16 + 1))(v24, v15);
  }

  sub_23ED9235C();
  v42 = v82;
  v43 = sub_23EDC0D10();
  v45 = v83;
  if (v42)
  {
    sub_23ED6FA68(v83, &qword_27E388470, &qword_23EDC5ED0);
  }

  v47 = v43;
  v48 = v44;
  v82 = v37;
  sub_23ED922EC(v43, v44);
  v70 = sub_23ED8F770(v47, v48, v47, v48);
  v49 = v80;
  sub_23ED6FA00(v45, v80, &qword_27E388470, &qword_23EDC5ED0);
  if (v38(v49, 1, v15) == 1)
  {
    v50 = &qword_27E388470;
    v51 = &qword_23EDC5ED0;
    v52 = v49;
  }

  else
  {
    v53 = v40;
    v54 = v40[4];
    v55 = v79;
    (v54)(v79, v49, v15);
    v56 = sub_23EDC0D30();
    if (*(v56 + 16) && (v57 = sub_23ED9C7E0(v55), (v58 & 1) != 0))
    {
      v80 = v15;
      sub_23ED71DA8(*(v56 + 56) + 32 * v57, v85);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v59 = v76;
      v60 = v78;
      v61 = swift_dynamicCast();
      v62 = v77;
      (*(v77 + 56))(v59, v61 ^ 1u, 1, v60);
      if ((*(v62 + 48))(v59, 1, v60) != 1)
      {
        v63 = (*(v62 + 32))(v75, v59, v60);
        MEMORY[0x28223BE20](v63);
        *(&v69 - 2) = v70;
        v64 = v71;
        v76 = v53;
        v65 = v74;
        sub_23EDC17B0();
        v67 = v72;
        v66 = v73;
        (*(v73 + 16))(v72, v64, v65);
        (*(v66 + 56))(v67, 0, 1, v65);
        sub_23EDC14E0();
        swift_unknownObjectRelease();

        sub_23ED6F8AC(v47, v48);
        v68 = v64;
        v45 = v83;
        (*(v66 + 8))(v68, v65);
        (*(v62 + 8))(v75, v60);
        v76[1](v79, v80);
        return sub_23ED6FA68(v45, &qword_27E388470, &qword_23EDC5ED0);
      }

      v53[1](v79, v80);
    }

    else
    {

      v53[1](v55, v15);
      v59 = v76;
      (*(v77 + 56))(v76, 1, 1, v78);
    }

    v50 = &unk_27E389000;
    v51 = &qword_23EDC78D0;
    v52 = v59;
  }

  sub_23ED6FA68(v52, v50, v51);
  sub_23ED922EC(v47, v48);
  MEMORY[0x23EF23260](v47, v48);
  swift_unknownObjectRelease();

  sub_23ED6F8AC(v47, v48);
  return sub_23ED6FA68(v45, &qword_27E388470, &qword_23EDC5ED0);
}

uint64_t sub_23ED88118@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v72[1] = a6;
  v86 = a4;
  v87 = a5;
  v84 = a2;
  v85 = a3;
  v88 = a1;
  v83 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = v72 - v9;
  v76 = sub_23EDC1810();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = v72 - v14;
  v15 = sub_23EDC17D0();
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v15);
  v72[0] = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23EDC1FC0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v79 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v72 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v72 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v82 = v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v72 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v72 - v35;
  v37 = sub_23EDC0D50();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_23EDC0D40();
  sub_23EDC1FB0();
  v92 = v36;
  sub_23ED6FA00(v36, v34, &qword_27E388470, &qword_23EDC5ED0);
  v41 = *(v19 + 48);
  v42 = v41(v34, 1, v18);
  v81 = v15;
  v78 = v19;
  if (v42 == 1)
  {
    v43 = v18;
    sub_23ED6FA68(v34, &qword_27E388470, &qword_23EDC5ED0);
  }

  else
  {
    (*(v19 + 32))(v27, v34, v18);
    (*(v19 + 16))(v25, v27, v18);
    v91[3] = v15;
    __swift_allocate_boxed_opaque_existential_0(v91);
    sub_23EDC17C0();
    v44 = sub_23EDC0D20();
    sub_23ED889C8(v91, v25);
    v44(v90, 0);
    v43 = v18;
    (*(v19 + 8))(v27, v18);
  }

  v84(0);
  sub_23ED8F964(v85, 255, v86);
  v45 = v89;
  v46 = sub_23EDC0D10();
  v48 = v92;
  if (v45)
  {
    sub_23ED6FA68(v92, &qword_27E388470, &qword_23EDC5ED0);
  }

  v50 = v46;
  v51 = v47;
  v89 = v40;
  sub_23ED922EC(v46, v47);
  v88 = sub_23ED8F770(v50, v51, v50, v51);
  v52 = v82;
  sub_23ED6FA00(v48, v82, &qword_27E388470, &qword_23EDC5ED0);
  v53 = v43;
  if (v41(v52, 1, v43) == 1)
  {
    v54 = &qword_27E388470;
    v55 = &qword_23EDC5ED0;
    v56 = v52;
  }

  else
  {
    v57 = v78;
    v58 = v79;
    (*(v78 + 32))(v79, v52, v53);
    v59 = sub_23EDC0D30();
    if (*(v59 + 16) && (v60 = sub_23ED9C7E0(v58), (v61 & 1) != 0))
    {
      v87 = v53;
      sub_23ED71DA8(*(v59 + 56) + 32 * v60, v91);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v62 = v77;
      v63 = v81;
      v64 = swift_dynamicCast();
      v65 = v80;
      (*(v80 + 56))(v62, v64 ^ 1u, 1, v63);
      if ((*(v65 + 48))(v62, 1, v63) != 1)
      {
        v66 = v72[0];
        v67 = (*(v65 + 32))(v72[0], v62, v63);
        MEMORY[0x28223BE20](v67);
        v72[-2] = v88;
        v68 = v73;
        v69 = v76;
        sub_23EDC17B0();
        v70 = v75;
        v71 = v74;
        (*(v75 + 16))(v74, v68, v69);
        (*(v70 + 56))(v71, 0, 1, v69);
        sub_23EDC14E0();
        swift_unknownObjectRelease();

        sub_23ED6F8AC(v50, v51);
        (*(v70 + 8))(v68, v69);
        (*(v80 + 8))(v66, v81);
        v48 = v92;
        (*(v57 + 8))(v79, v87);
        return sub_23ED6FA68(v48, &qword_27E388470, &qword_23EDC5ED0);
      }

      (*(v57 + 8))(v58, v87);
    }

    else
    {

      (*(v57 + 8))(v58, v53);
      v62 = v77;
      (*(v80 + 56))(v77, 1, 1, v81);
    }

    v54 = &unk_27E389000;
    v55 = &qword_23EDC78D0;
    v56 = v62;
  }

  sub_23ED6FA68(v56, v54, v55);
  sub_23ED922EC(v50, v51);
  MEMORY[0x23EF23260](v50, v51);
  swift_unknownObjectRelease();

  sub_23ED6F8AC(v50, v51);
  return sub_23ED6FA68(v48, &qword_27E388470, &qword_23EDC5ED0);
}

uint64_t sub_23ED889C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23ED7BB70(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_23ED784A4(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_23EDC1FC0();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_23ED6FA68(a1, &qword_27E3888A8, &qword_23EDC4EC0);
    sub_23ED8F9AC(a2, v10);
    v8 = sub_23EDC1FC0();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_23ED6FA68(v10, &qword_27E3888A8, &qword_23EDC4EC0);
  }

  return result;
}

void sub_23ED88AE4(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_23ED7BB70(a1, v14);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v6 = v15;
    v7 = __swift_mutable_project_boxed_opaque_existential_0(v14, v15);
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v7);
    v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10);
    sub_23ED907D8(v10, a2, isUniquelyReferenced_nonNull_native, &v13, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);

    *v2 = v13;
  }

  else
  {
    sub_23ED6FA68(a1, &qword_27E3888A8, &qword_23EDC4EC0);
    sub_23ED8FA88(a2, v14);

    sub_23ED6FA68(v14, &qword_27E3888A8, &qword_23EDC4EC0);
  }
}

uint64_t sub_23ED88C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C48, &qword_23EDC9D30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_23EDC16D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_23ED6FA68(a1, &qword_27E388C48, &qword_23EDC9D30);
    sub_23ED8FC98(a2, a3, v10);

    return sub_23ED6FA68(v10, &qword_27E388C48, &qword_23EDC9D30);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23ED78C58(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_23ED88E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C40, &qword_23EDC5ED8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_23ED6FA68(a1, &qword_27E388C40, &qword_23EDC5ED8);
    sub_23ED8FB28(a2, a3, v10);

    return sub_23ED6FA68(v10, &qword_27E388C40, &qword_23EDC5ED8);
  }

  else
  {
    sub_23ED7BA6C(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23ED78AE8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_23ED89000(uint64_t a1)
{
  v2 = sub_23ED89648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8903C(uint64_t a1)
{
  v2 = sub_23ED89648();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23ED89094()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_23ED890EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23ED91E44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23ED89120(uint64_t a1)
{
  v2 = sub_23ED895F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8915C(uint64_t a1)
{
  v2 = sub_23ED895F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED89198(uint64_t a1)
{
  v2 = sub_23ED8969C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED891D4(uint64_t a1)
{
  v2 = sub_23ED8969C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED89210(uint64_t a1)
{
  v2 = sub_23ED896F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8924C(uint64_t a1)
{
  v2 = sub_23ED896F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ALCInferenceProvider.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A68, &qword_23EDC55C0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A70, &qword_23EDC55C8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A78, &qword_23EDC55D0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A80, &qword_23EDC55D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED895F4();
  sub_23EDC23A0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23ED8969C();
      v12 = v26;
      sub_23EDC2140();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23ED89648();
      v12 = v29;
      sub_23EDC2140();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23ED896F0();
    sub_23EDC2140();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_23ED895F4()
{
  result = qword_27E388A88;
  if (!qword_27E388A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A88);
  }

  return result;
}

unint64_t sub_23ED89648()
{
  result = qword_27E388A90;
  if (!qword_27E388A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A90);
  }

  return result;
}

unint64_t sub_23ED8969C()
{
  result = qword_27E388A98;
  if (!qword_27E388A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A98);
  }

  return result;
}

unint64_t sub_23ED896F0()
{
  result = qword_27E388AA0;
  if (!qword_27E388AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388AA0);
  }

  return result;
}

uint64_t ALCInferenceProvider.Error.hashValue.getter()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

uint64_t ALCInferenceProvider.Error.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AA8, &qword_23EDC55E0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AB0, &qword_23EDC55E8);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AB8, &qword_23EDC55F0);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AC0, &qword_23EDC55F8);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED895F4();
  v18 = v49;
  sub_23EDC2360();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_23EDC2120();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_23ED8969C();
          v33 = v40;
          sub_23EDC2090();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_23ED89648();
          v37 = v40;
          sub_23EDC2090();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_23ED896F0();
        v35 = v40;
        sub_23EDC2090();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }
  }

  v26 = sub_23EDC1F30();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600) + 48);
  *v28 = &type metadata for ALCInferenceProvider.Error;
  sub_23EDC20A0();
  sub_23EDC1F10();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

uint64_t sub_23ED89D7C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23ED89DB0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23ED89E14()
{
  v1 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider35ALCModelOutputStreamIteratorWrapper_wrappedIterator;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C00, &qword_23EDC5E98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23ED89E98(uint64_t a1)
{
  v2[6] = a1;
  v3 = sub_23EDC1530();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *v1;
  v2[10] = *v1;

  return MEMORY[0x2822009F8](sub_23ED89F5C, v6, 0);
}

uint64_t sub_23ED89F5C()
{
  v1 = v0[10];
  v2 = sub_23ED8F964(&qword_27E388BF8, 255, type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamIteratorWrapper);
  swift_beginAccess();
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C00, &qword_23EDC5E98);
  *v4 = v0;
  v4[1] = sub_23ED8A080;
  v6 = v0[6];

  return MEMORY[0x2822005A8](v6, v1, v2, v5, v0 + 5);
}

uint64_t sub_23ED8A080()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_23ED8A1C8, v5, 0);
  }

  else
  {
    v6 = *(v2 + 72);
    swift_endAccess();

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_23ED8A1C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  swift_endAccess();
  (*(v2 + 104))(v1, *MEMORY[0x277D29DB8], v3);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  swift_allocError();
  (*(v2 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23ED8A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v9 = sub_23EDC1530();
  v6[6] = v9;
  v10 = *(v9 - 8);
  v6[7] = v10;
  v11 = *(v10 + 64) + 15;
  v6[8] = swift_task_alloc();
  v12 = type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamIteratorWrapper(0);
  v13 = *(MEMORY[0x277D856D0] + 4);
  v14 = swift_task_alloc();
  v6[9] = v14;
  *v14 = v6;
  v14[1] = sub_23ED8A420;

  return MEMORY[0x282200308](a1, v12, a6);
}

uint64_t sub_23ED8A420()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_23EDC1B90();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_23ED8A614;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_23EDC1B90();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_23ED8A5B0;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_23ED8A5B0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23ED8A614()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389010, &qword_23EDC58B0);
  swift_dynamicCast();
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23ED8A72C@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C00, &qword_23EDC5E98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B70, &unk_23EDC5930);
  sub_23EDC1C20();
  v8 = type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamIteratorWrapper(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_23ED9228C(v1, type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamWrapper);
  result = (*(v4 + 32))(v11 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider35ALCModelOutputStreamIteratorWrapper_wrappedIterator, v7, v3);
  *a1 = v11;
  return result;
}

uint64_t sub_23ED8A85C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C20, &qword_23EDC5EB8);
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = sub_23EDC1510();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = *a3;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v17 = sub_23EDC1790();
  __swift_project_value_buffer(v17, qword_27E389818);
  v18 = sub_23EDC1770();
  v19 = sub_23EDC1D60();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23ED67000, v18, v19, "ALCInferenceProvider received output", v20, 2u);
    MEMORY[0x23EF24B30](v20, -1, -1);
  }

  v25 = v16;
  sub_23ED86454();
  sub_23ED87838(v16, v15);
  (*(v9 + 16))(v13, v15, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  sub_23EDC1C90();
  (*(v23 + 8))(v7, v24);
  return (*(v9 + 8))(v15, v8);
}

void sub_23ED8AC44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C20, &qword_23EDC5EB8);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - v6;
  v7 = sub_23EDC1510();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - v11;
  v12 = sub_23EDC13D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v17 = sub_23EDC1790();
  __swift_project_value_buffer(v17, qword_27E389818);
  v18 = *(v13 + 16);
  v44 = a3;
  v18(v16, a3, v12);
  v19 = sub_23EDC1770();
  v20 = sub_23EDC1D60();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v4;
    v22 = v21;
    *v21 = 134349056;
    sub_23EDC1340();
    v24 = v23;
    (*(v13 + 8))(v16, v12);
    *(v22 + 1) = v24;
    _os_log_impl(&dword_23ED67000, v19, v20, "ALCInferenceProvider received summary with actual focal length = %{public}f", v22, 0xCu);
    v4 = v38;
    MEMORY[0x23EF24B30](v22, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v25 = v45;
  v26 = v46;
  sub_23ED88118(v44, MEMORY[0x277CEA5A0], &qword_27E388C30, MEMORY[0x277CEA5A0], MEMORY[0x277CEA5A8], sub_23ED92340, v45);
  if (v26)
  {
    v27 = v26;
    v28 = sub_23EDC1770();
    v29 = sub_23EDC1D80();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = v26;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_23ED67000, v28, v29, "ALCInferenceProvider got error from pipeline: %{public}@", v30, 0xCu);
      sub_23ED6FA68(v31, &unk_27E388D00, &unk_23EDC6730);
      MEMORY[0x23EF24B30](v31, -1, -1);
      MEMORY[0x23EF24B30](v30, -1, -1);
    }

    v47 = v26;
    v34 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
    sub_23EDC1CA0();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    (*(v40 + 16))(v39, v25, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
    v37 = v42;
    sub_23EDC1C90();
    (*(v43 + 8))(v37, v4);
    (*(v35 + 8))(v25, v36);
  }
}

uint64_t sub_23ED8B198()
{
  v1 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_owning_task_id_token;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A50, &qword_23EDC5500);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23ED8B2B4()
{
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000001FLL, 0x800000023EDCAC00);
  sub_23EDC0EF0();
  sub_23ED8F964(&qword_27E388AE0, 255, MEMORY[0x277CC95F0]);
  v0 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v0);

  MEMORY[0x23EF237D0](0xD000000000000011, 0x800000023EDCAC20);
  v1 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v1);

  MEMORY[0x23EF237D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_23ED8B400()
{
  sub_23ED6FA68(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation, &qword_27E388C18, &qword_23EDC5EB0);
  v1 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_operationID;
  v2 = sub_23EDC0EF0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_providerID, v2);
  sub_23ED9228C(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_recipe, type metadata accessor for InferenceRecipe);
  v4 = *(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_delegate);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_canceller);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23ED8B5B8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_23ED8B5DC, v2, 0);
}

uint64_t sub_23ED8B5DC()
{
  v1 = v0[10];
  swift_beginAccess();
  v3 = *(v1 + 112);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v9 = *(v1 + 112);
    }

    if (sub_23EDC1FE0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = v0[10];
    v5 = v0[8];
    sub_23ED8F964(&qword_27E388C08, v2, type metadata accessor for ALCInferenceProvider.InferenceJobQueue);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_23ED8B91C;

    return MEMORY[0x2822007B8]();
  }

  v10 = v0[8];
  swift_beginAccess();

  MEMORY[0x23EF23830](v11);
  if (*((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23EDC1B20();
  }

  v12 = v0[8];
  sub_23EDC1B50();
  swift_endAccess();
  v13 = v0[10];
  v14 = swift_task_alloc();
  v0[13] = v14;
  v21 = *(v0 + 4);
  *(v14 + 16) = v21;
  *(v14 + 32) = sub_23ED91F70;
  *(v14 + 40) = v13;
  v15 = swift_task_alloc();
  v0[14] = v15;
  v15[2] = v21;
  v15[3] = sub_23ED91F70;
  v15[4] = v13;
  sub_23ED8F964(&qword_27E388C08, v16, type metadata accessor for ALCInferenceProvider.InferenceJobQueue);
  v17 = *(MEMORY[0x277D85A10] + 4);

  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_23ED8BBC4;

  return MEMORY[0x282200830]();
}

uint64_t sub_23ED8B91C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23ED8BA48, v3, 0);
}

uint64_t sub_23ED8BA48()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v8 = *(v0 + 64);
  *(v2 + 16) = v8;
  *(v2 + 32) = sub_23ED91F70;
  *(v2 + 40) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v3[2] = v8;
  v3[3] = sub_23ED91F70;
  v3[4] = v1;
  sub_23ED8F964(&qword_27E388C08, v4, type metadata accessor for ALCInferenceProvider.InferenceJobQueue);
  v5 = *(MEMORY[0x277D85A10] + 4);

  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_23ED8BBC4;

  return MEMORY[0x282200830]();
}

uint64_t sub_23ED8BBC4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_23ED8BD58;
  }

  else
  {
    v7 = v2[13];
    v6 = v2[14];
    v8 = v2[10];

    v5 = sub_23ED8BCF4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23ED8BCF4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23ED8BD58()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_23ED8BDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C18, &qword_23EDC5EB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B68, &qword_23EDC58E0);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation;
  swift_beginAccess();
  sub_23ED9221C(v9, a2 + v12);
  swift_endAccess();
  swift_beginAccess();

  MEMORY[0x23EF23830](v13);
  if (*((*(a3 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(a3 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23EDC1B20();
  }

  sub_23EDC1B50();
  return swift_endAccess();
}

uint64_t sub_23ED8BF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B68, &qword_23EDC58E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C18, &qword_23EDC5EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  swift_beginAccess();
  v11 = *(a1 + 112);
  if (!(v11 >> 62))
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v11 < 0)
  {
    v27 = *(a1 + 112);
  }

  if (sub_23EDC1FE0())
  {
LABEL_3:
    swift_beginAccess();
    sub_23ED8CB14();
    swift_endAccess();
  }

LABEL_4:
  v12 = *(a1 + 112);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v28 = *(a1 + 112);
    }

    result = sub_23EDC1FE0();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v12 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x23EF23C50](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(v12 + 32);
  }

  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v15 = sub_23EDC1790();
  __swift_project_value_buffer(v15, qword_27E389818);

  v16 = sub_23EDC1770();
  v17 = sub_23EDC1D70();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136446210;

    v21 = sub_23ED8B2B4();
    v23 = v22;

    v24 = sub_23ED713FC(v21, v23, &v31);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_23ED67000, v16, v17, "ALCInferenceProvider resuming %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x23EF24B30](v20, -1, -1);
    v25 = v19;
    v3 = v30;
    MEMORY[0x23EF24B30](v25, -1, -1);
  }

  v26 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation;
  swift_beginAccess();
  sub_23ED6FA00(v14 + v26, v10, &qword_27E388C18, &qword_23EDC5EB0);
  if ((*(v3 + 48))(v10, 1, v2))
  {

    return sub_23ED6FA68(v10, &qword_27E388C18, &qword_23EDC5EB0);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_23ED6FA68(v10, &qword_27E388C18, &qword_23EDC5EB0);
    sub_23EDC1BA0();

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_23ED8C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v6 = sub_23EDC1BE0();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED8C468, 0, 0);
}

uint64_t sub_23ED8C468()
{
  v29 = v0;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_23EDC1790();
  __swift_project_value_buffer(v2, qword_27E389818);

  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D70();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v27 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446466;
    sub_23EDC1C70();
    sub_23ED8F964(&qword_27E388C10, 255, MEMORY[0x277D85720]);
    v10 = sub_23EDC21E0();
    v12 = v11;
    (*(v6 + 8))(v5, v7);
    v13 = sub_23ED713FC(v10, v12, &v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    v14 = sub_23ED8B2B4();
    v16 = sub_23ED713FC(v14, v15, &v28);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_23ED67000, v3, v4, "ALCInferenceProvider TaskPriority is %{public}s, fulfilling %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v9, -1, -1);
    MEMORY[0x23EF24B30](v8, -1, -1);
  }

  v17 = v0[7];
  v18 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_recipe;
  v19 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_operationID;
  v20 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_providerID;
  v21 = *(v17 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_canceller);
  v0[5] = type metadata accessor for StatefulCanceller();
  v0[6] = &off_285165680;
  v0[2] = v21;
  v22 = *(v17 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_delegate);
  v23 = *(v17 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_delegate + 8);

  v24 = swift_task_alloc();
  v0[14] = v24;
  *v24 = v0;
  v24[1] = sub_23ED8C768;
  v25 = v0[8];

  return sub_23EDB61B8(v17 + v18, v17 + v19, v17 + v20, (v0 + 2), v22, v23);
}

uint64_t sub_23ED8C768()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_23ED8C8F8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = sub_23ED8C884;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23ED8C884()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  (*(v0 + 72))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23ED8C8F8()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4(v5);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[15];

  return v6();
}

uint64_t sub_23ED8C98C(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v4 = sub_23EDC1790();
  __swift_project_value_buffer(v4, qword_27E389818);

  v5 = sub_23EDC1770();
  v6 = sub_23EDC1D70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_23ED8B2B4();
    v11 = sub_23ED713FC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23ED67000, v5, v6, "ALCInferenceProvider %{public}s cancelled.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EF24B30](v8, -1, -1);
    MEMORY[0x23EF24B30](v7, -1, -1);
  }

  v12 = *(a1 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_canceller);
  sub_23ED850A8();
  return a2();
}

void sub_23ED8CB14()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x23EF23C50](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_23EDC1FE0())
  {
    goto LABEL_20;
  }

  if (!sub_23EDC1FE0())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_23EDC1FE0();
LABEL_16:
    if (v4)
    {
      sub_23ED92144(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_23ED8CBEC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ALCInferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ALCInferenceProvider.init()();
  return v0;
}

uint64_t ALCInferenceProvider.init()()
{
  v1 = v0;
  type metadata accessor for InferencePipeline();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v1 + 16) = v2;
  type metadata accessor for ALCInferenceProvider.InferenceJobQueue();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x277D84F90];
  *(v1 + 24) = v3;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v4 = sub_23EDC1790();
  __swift_project_value_buffer(v4, qword_27E389818);
  v5 = sub_23EDC1770();
  v6 = sub_23EDC1D60();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23ED67000, v5, v6, "Joint predictor model loaded successfully", v7, 2u);
    MEMORY[0x23EF24B30](v7, -1, -1);
  }

  return v1;
}

uint64_t _s16AlchemistService20ALCInferenceProviderC15transitionAsset_2toy20ModelManagerServices09InferencedF10DescriptorV_AF9LoadStateOtYaAF0K5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = v3;
  v4[9] = a3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23EDC1660();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED8CE70, 0, 0);
}

uint64_t sub_23ED8CE70()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  v6 = sub_23EDC1610();
  v8 = v7;
  v0[13] = v7;
  (*(v2 + 16))(v1, v5, v3);
  v9 = (*(v2 + 88))(v1, v3);
  if (v9 == *MEMORY[0x277D29F18])
  {
    v10 = *(v0[8] + 16);
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_23ED8D610;

    return sub_23EDB7448(v6, v8);
  }

  else if (v9 == *MEMORY[0x277D29F08])
  {
    v13 = *(v0[8] + 16);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_23ED8D4DC;

    return sub_23EDB7758(v6, v8);
  }

  else if (v9 == *MEMORY[0x277D29F10])
  {
    v15 = *(v0[8] + 16);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_23ED8D344;

    return sub_23EDB6FB0(v6, v8);
  }

  else
  {
    v17 = v0[11];
    v33 = v0[12];
    v18 = v0[10];
    v19 = v0[7];

    v20 = sub_23EDC1530();
    sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0]);
    v21 = swift_allocError();
    v23 = v22;
    sub_23EDC1EC0();

    sub_23ED8F964(&qword_27E388AC8, 255, MEMORY[0x277D29F20]);
    v24 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v24);

    v25 = MEMORY[0x277D84F90];
    sub_23ED90B6C(MEMORY[0x277D84F90]);
    sub_23EDC1520();
    v26 = *(*(v20 - 8) + 104);
    v26(v23, *MEMORY[0x277D29D98], v20);
    swift_willThrow();
    (*(v17 + 8))(v33, v18);
    v27 = v0[12];
    v28 = v0[9];
    swift_getErrorValue();
    v30 = v0[2];
    v29 = v0[3];
    v31 = v0[4];
    sub_23EDC2290();
    sub_23ED90B6C(v25);
    sub_23EDC1520();
    v26(v28, *MEMORY[0x277D29D70], v20);
    swift_willThrowTypedImpl();

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_23ED8D344()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);

  if (v0)
  {
    v6 = sub_23ED8D744;
  }

  else
  {
    v6 = sub_23ED8D478;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED8D478()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23ED8D4DC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 104);

  if (v0)
  {
    v6 = sub_23ED8D8B4;
  }

  else
  {
    v6 = sub_23ED92908;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED8D610()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 104);

  if (v0)
  {
    v6 = sub_23ED8DA24;
  }

  else
  {
    v6 = sub_23ED92908;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED8D744()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  sub_23EDC2290();
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v7 = *MEMORY[0x277D29D70];
  v8 = sub_23EDC1530();
  (*(*(v8 - 8) + 104))(v3, v7, v8);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23ED8D8B4()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  sub_23EDC2290();
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v7 = *MEMORY[0x277D29D70];
  v8 = sub_23EDC1530();
  (*(*(v8 - 8) + 104))(v3, v7, v8);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23ED8DA24()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[9];
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  sub_23EDC2290();
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v7 = *MEMORY[0x277D29D70];
  v8 = sub_23EDC1530();
  (*(*(v8 - 8) + 104))(v3, v7, v8);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23ED8DBB4()
{
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E389818);
  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23ED67000, v2, v3, "requestOneShot(...) is not yet implemented", v4, 2u);
    MEMORY[0x23EF24B30](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v6 = *MEMORY[0x277D29D98];
  v7 = sub_23EDC1530();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t ALCInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v40 = v2;
  v37 = v4;
  v38 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AD0, &qword_23EDC5618);
  v36 = *(v39 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v41 = &v33 - v6;
  v7 = sub_23EDC0EF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_23EDC1620();
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v15 = sub_23EDC1790();
  __swift_project_value_buffer(v15, qword_27E389818);
  (*(v8 + 16))(v12, v14, v7);
  v16 = sub_23EDC1770();
  v17 = sub_23EDC1D60();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a2;
    v19 = v18;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v19 = 136446210;
    sub_23ED8F964(&qword_27E388AE0, 255, MEMORY[0x277CC95F0]);
    v20 = sub_23EDC21E0();
    v21 = v7;
    v23 = v22;
    v24 = *(v8 + 8);
    v25 = v12;
    v26 = v21;
    v24(v25, v21);
    v27 = sub_23ED713FC(v20, v23, &v42);

    *(v19 + 4) = v27;
    _os_log_impl(&dword_23ED67000, v16, v17, "ALCInferenceProvider got streaming request from UUID %{public}s", v19, 0xCu);
    v28 = v34;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x23EF24B30](v28, -1, -1);
    v29 = v19;
    a2 = v35;
    MEMORY[0x23EF24B30](v29, -1, -1);
  }

  else
  {

    v24 = *(v8 + 8);
    v30 = (v24)(v12, v7);
    v26 = v7;
  }

  MEMORY[0x28223BE20](v30);
  *(&v33 - 4) = v38;
  *(&v33 - 3) = v14;
  v31 = v37;
  *(&v33 - 2) = v40;
  *(&v33 - 1) = v31;
  sub_23EDC1510();
  (*(v36 + 104))(v41, *MEMORY[0x277D858A0], v39);
  a2[3] = type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamWrapper(0);
  a2[4] = sub_23ED8F964(&qword_27E388AD8, 255, type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamWrapper);
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_23EDC1CD0();
  return (v24)(v14, v26);
}

uint64_t sub_23ED8E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v60 = a3;
  v68 = a1;
  v65 = sub_23EDC0EF0();
  v62 = *(v65 - 8);
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v61 = v5;
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  v67 = *(v9 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A50, &qword_23EDC5500);
  v58 = *(v12 - 8);
  v13 = *(v58 + 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v19 = type metadata accessor for ALCInferenceInput();
  v59 = *(v19 - 8);
  v20 = *(v59 + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  sub_23ED6B108(&v50 - v22);
  v53 = v20;
  v54 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v10;
  v56 = v23;
  v24 = v66;
  v25 = v68;
  sub_23ED92C2C();
  v26 = *(v58 + 4);
  v27 = v16;
  v28 = v12;
  v26(v16, v18, v12);
  v29 = v67;
  v52 = *(v67 + 16);
  v30 = v24;
  v31 = v25;
  v32 = v9;
  v52(v24, v31, v9);
  v33 = type metadata accessor for ALCInferenceProvider.OutputDelegate(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  swift_defaultActor_initialize();
  v37 = *(v29 + 32);
  v67 = v29 + 32;
  v58 = v37;
  v38 = v30;
  v51 = v32;
  v37(v36 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_continuation, v30, v32);
  v26((v36 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_owning_task_id_token), v27, v28);
  v39 = sub_23EDC1BE0();
  (*(*(v39 - 8) + 56))(v64, 1, 1, v39);
  v50 = type metadata accessor for ALCInferenceInput;
  v40 = v54;
  sub_23ED92810(v56, v54, type metadata accessor for ALCInferenceInput);
  v41 = v62;
  v42 = v57;
  (*(v62 + 16))(v57, v60, v65);
  v52(v38, v68, v32);
  v43 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v44 = (v53 + *(v41 + 80) + v43) & ~*(v41 + 80);
  v45 = (v61 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (*(v67 + 48) + v46 + 8) & ~*(v67 + 48);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  sub_23ED92878(v40, v48 + v43, v50);
  (*(v41 + 32))(v48 + v44, v42, v65);
  *(v48 + v45) = v36;
  *(v48 + v46) = v63;
  v58(v48 + v47, v66, v51);

  sub_23ED8EDE0(0, 0, v64, &unk_23EDC5EF0, v48);

  return sub_23ED9228C(v56, type metadata accessor for ALCInferenceInput);
}

uint64_t sub_23ED8E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = *(*(type metadata accessor for InferenceRecipe() - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v10 = sub_23EDC0EF0();
  v8[9] = v10;
  v11 = *(v10 - 8);
  v8[10] = v11;
  v12 = *(v11 + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED8E900, 0, 0);
}

uint64_t sub_23ED8E900()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v27 = v1;
  v28 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = *(v4 + 16);
  v9();
  (v9)(v2, v7, v3);
  v10 = type metadata accessor for ALCInferenceInput();
  sub_23ED92810(v8 + *(v10 + 20), v5, type metadata accessor for InferenceRecipe);
  v26 = sub_23ED8F964(&qword_27E388C60, 255, type metadata accessor for ALCInferenceProvider.OutputDelegate);
  v11 = type metadata accessor for ALCInferenceProvider.InferenceJob(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v0[13] = v14;
  v15 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B68, &qword_23EDC58E0);
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_canceller;
  type metadata accessor for StatefulCanceller();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v14 + v17) = v18;
  v19 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_operationID;
  v20 = *(v4 + 32);

  v20(v14 + v19, v27, v3);
  v20(v14 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_providerID, v2, v3);
  sub_23ED92878(v5, v14 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_recipe, type metadata accessor for InferenceRecipe);
  v21 = (v14 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_delegate);
  *v21 = v6;
  v21[1] = v26;
  v22 = *(v28 + 16);
  v23 = *(v28 + 24);
  v24 = swift_task_alloc();
  v0[14] = v24;
  *v24 = v0;
  v24[1] = sub_23ED8EB80;

  return sub_23ED8B5B8(v14, v22);
}

uint64_t sub_23ED8EB80()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23ED8ED54;
  }

  else
  {
    v3 = sub_23ED8EC94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23ED8EC94()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  sub_23EDC1CA0();

  v6 = v0[1];

  return v6();
}

uint64_t sub_23ED8ED54()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_23ED8EDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23ED6FA00(a3, v24 - v10, &qword_27E388C58, &qword_23EDC5EE0);
  v12 = sub_23EDC1BE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23ED6FA68(v11, &qword_27E388C58, &qword_23EDC5EE0);
  }

  else
  {
    sub_23EDC1BD0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23EDC1B90();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23EDC1A20() + 32;

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

      sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);

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

  sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t ALCInferenceProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ALCInferenceProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23ED8F0F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = ALCInferenceProvider.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_23ED8F130()
{
  v1 = sub_23EDC15F0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_23ED8F194()
{
  v1 = sub_23EDC15C0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23ED8F23C()
{
  sub_23EDC15D0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v7 = sub_23EDC1530();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[5] = v10;
  v11 = *v3;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_23ED92928;

  return _s16AlchemistService20ALCInferenceProviderC15transitionAsset_2toy20ModelManagerServices09InferencedF10DescriptorV_AF9LoadStateOtYaAF0K5ErrorOYKF(a1, a2, v10);
}

uint64_t sub_23ED8F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D29EA0] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23ED70118;

  return MEMORY[0x282188C90](a1, a2, a3, a4, a5);
}

void sub_23ED8F498()
{
  v1 = *(MEMORY[0x277D29E98] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_23ED68C90;

  JUMPOUT(0x23EF23340);
}

uint64_t sub_23ED8F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23EDC1530();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[5] = v8;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_23ED8F63C;

  return _s16AlchemistService20ALCInferenceProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientI0VAI_AG09InferenceD20RequestConfigurationVtYaAG0O5ErrorOYKF(v9, v10, v11, v8);
}

uint64_t sub_23ED8F63C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

xpc_object_t sub_23ED8F770(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  bytes[2] = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    if (a1 <= a1 >> 32)
    {
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_29;
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  BYTE4(bytes[1]) = BYTE4(a2);
  v7 = a4 >> 62;
  BYTE5(bytes[1]) = BYTE5(a2);
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v11 = 0;
      goto LABEL_26;
    }

    v13 = *(a3 + 16);
    v12 = *(a3 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_26;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v7)
  {
LABEL_15:
    v11 = BYTE6(a4);
LABEL_26:
    v9 = xpc_data_create(bytes, v11);
    sub_23ED6F8AC(a3, a4);
    goto LABEL_27;
  }

  LODWORD(v6) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_8:
  if (v6 != 2)
  {
    v10 = a4 >> 62;
    memset(bytes, 0, 14);
    if ((a4 >> 62) > 1)
    {
      v11 = 0;
      if (v10 != 2)
      {
        goto LABEL_26;
      }

      v15 = *(a3 + 16);
      v14 = *(a3 + 24);
      v11 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v10)
    {
      goto LABEL_15;
    }

    LODWORD(v6) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_24:
      v11 = v6;
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
  }

  a1 = *(a1 + 16);
  v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_12:
  v9 = sub_23ED91D7C(a1, v8, a3, a4);
  sub_23ED6F8AC(a3, a4);
LABEL_27:
  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23ED8F964(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_23ED8F9AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23ED9C7E0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED79098();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_23EDC1FC0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_23ED7BB70((*(v11 + 56) + 32 * v8), a2);
    sub_23ED8FE08(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_23ED8FA88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23ED9C888(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED795C8();
      v11 = v13;
    }

    sub_23ED7BB70((*(v11 + 56) + 32 * v8), a2);
    sub_23ED900BC(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23ED8FB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23ED906A8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED798E8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
    v22 = *(v15 - 8);
    sub_23ED7BA6C(v14 + *(v22 + 72) * v9, a3);
    sub_23ED902B8(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23ED8FC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23ED906A8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED79B30();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_23EDC16D0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_23ED904BC(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_23EDC16D0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_23ED8FE08(int64_t a1, uint64_t a2)
{
  v4 = sub_23EDC1FC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_23EDC1E80();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_23EDC18C0();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23ED900BC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23EDC1E80() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_23EDC22F0();
      type metadata accessor for CFString(0);
      sub_23ED8F964(&qword_27E388D10, 255, type metadata accessor for CFString);
      v12 = v11;
      sub_23EDC14B0();
      v13 = sub_23EDC2320();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_23ED902B8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23EDC1E80() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23EDC22F0();

      sub_23EDC1A50();
      v13 = sub_23EDC2320();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23ED904BC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23EDC1E80() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23EDC22F0();

      sub_23EDC1A50();
      v13 = sub_23EDC2320();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_23EDC16D0() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23ED906A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23EDC22F0();
  sub_23EDC1A50();
  v6 = sub_23EDC2320();

  return sub_23ED90720(a1, a2, v6);
}

unint64_t sub_23ED90720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23EDC2240())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_23ED907D8(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v33 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_23ED9C888(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_23ED7BB70(&v32, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v16, a3 & 1);
  v22 = *a4;
  v23 = sub_23ED9C888(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = v33;
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v32, v33);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_23ED909E4(v13, a2, v29, v19, a5);
  v31 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v32);
}

_OWORD *sub_23ED909E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v16 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v15, (a4[7] + 32 * a1));
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_23ED90AB0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_23EDC1FE0();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_23EDC1F00();
    *v1 = result;
  }

  return result;
}

unint64_t sub_23ED90B6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C68, &qword_23EDC5EF8);
    v3 = sub_23EDC2050();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23ED906A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_23ED90CB0()
{
  result = qword_27E388AE8;
  if (!qword_27E388AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388AE8);
  }

  return result;
}

uint64_t sub_23ED90D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_23ED70118;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_23ED90E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_23ED70118;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_23ED90F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_23ED70118;

  return v13(a1, a2, a3, a4);
}

void sub_23ED9111C()
{
  sub_23ED916C4(319, &qword_27E388B00, MEMORY[0x277D858C8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23ED911FC()
{
  sub_23ED916C4(319, &qword_27E388B18, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23ED912F0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23ED912F0()
{
  if (!qword_27E388B20)
  {
    v0 = sub_23EDC1840();
    if (!v1)
    {
      atomic_store(v0, &qword_27E388B20);
    }
  }
}

uint64_t sub_23ED91348()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A50, &qword_23EDC5500);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_23ED913A0()
{
  sub_23ED914BC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_23EDC0EF0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for InferenceRecipe();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23ED914BC()
{
  if (!qword_27E388B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E388B68, &qword_23EDC58E0);
    v0 = sub_23EDC1E40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E388B60);
    }
  }
}

uint64_t sub_23ED91534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B70, &unk_23EDC5930);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23ED915C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B70, &unk_23EDC5930);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23ED9163C()
{
  sub_23ED916C4(319, &qword_27E388B88, MEMORY[0x277D858D8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23ED916C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_23EDC1510();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E389010, &qword_23EDC58B0);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for XPCReferenceShareableDecodingError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCReferenceShareableDecodingError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23ED918DC()
{
  result = qword_27E388B90;
  if (!qword_27E388B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388B90);
  }

  return result;
}

uint64_t sub_23ED9197C(uint64_t a1)
{
  result = sub_23ED8F964(&qword_27E388BA0, 255, type metadata accessor for ALCInferenceProvider.OutputDelegate);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23ED91AC0()
{
  result = qword_27E388BB8;
  if (!qword_27E388BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BB8);
  }

  return result;
}

unint64_t sub_23ED91B18()
{
  result = qword_27E388BC0;
  if (!qword_27E388BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BC0);
  }

  return result;
}

unint64_t sub_23ED91B70()
{
  result = qword_27E388BC8;
  if (!qword_27E388BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BC8);
  }

  return result;
}

unint64_t sub_23ED91BC8()
{
  result = qword_27E388BD0;
  if (!qword_27E388BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BD0);
  }

  return result;
}

unint64_t sub_23ED91C20()
{
  result = qword_27E388BD8;
  if (!qword_27E388BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BD8);
  }

  return result;
}

unint64_t sub_23ED91C78()
{
  result = qword_27E388BE0;
  if (!qword_27E388BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BE0);
  }

  return result;
}

unint64_t sub_23ED91CD0()
{
  result = qword_27E388BE8;
  if (!qword_27E388BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BE8);
  }

  return result;
}

unint64_t sub_23ED91D28()
{
  result = qword_27E388BF0;
  if (!qword_27E388BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BF0);
  }

  return result;
}

xpc_object_t sub_23ED91D7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_23EDC0DC0();
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = sub_23EDC0DE0();
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_23EDC0DD0();
    goto LABEL_18;
  }

  v10 = (a1 - v9 + v8);
  result = sub_23EDC0DD0();
  if (v10)
  {
    v12 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        return xpc_data_create(v10, v13);
      }

      v15 = *(a3 + 16);
      v14 = *(a3 + 24);
      v13 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        return xpc_data_create(v10, v13);
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(a4);
      return xpc_data_create(v10, v13);
    }

    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = HIDWORD(a3) - a3;
      return xpc_data_create(v10, v13);
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23ED91E44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023EDCAB80 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023EDCABA0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023EDCABC0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_23EDC2240();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23ED91F78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23ED70118;

  return sub_23ED8C3A4(a1, v4, v5, v7, v6);
}

uint64_t sub_23ED92044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ALCInferenceProvider.InferenceJob(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23EDC1FE0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_23EDC1FE0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23ED92144(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23EDC1FE0();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_23EDC1FE0();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_23ED90AB0(result);

  return sub_23ED92044(v4, v2, 0);
}