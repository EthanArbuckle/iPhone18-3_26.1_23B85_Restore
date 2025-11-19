uint64_t sub_23D434CE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23D46B8F8();
  sub_23D43B63C();
  return swift_getWitnessTable();
}

uint64_t sub_23D434D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA738, &qword_23D46D2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D434DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA738, &qword_23D46D2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D434E20()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D434E58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D434EA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D434EE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D434F18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D434F60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23D434FA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D434FE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D435020(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D46BA88();

    return sub_23D46B8F8();
  }

  else
  {
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    sub_23D46B8F8();
    sub_23D46BFA8();
    swift_getWitnessTable();
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    return sub_23D46B8F8();
  }
}

uint64_t sub_23D435184(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D46BA88();
    sub_23D46B8F8();
  }

  else
  {
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    sub_23D46B8F8();
    sub_23D46BFA8();
    swift_getWitnessTable();
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    sub_23D46B8F8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D435384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D435450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23D43551C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23D46B8F8();
  sub_23D43B63C();
  return swift_getWitnessTable();
}

uint64_t sub_23D4355E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DABF8, &qword_23D46D9A0);
  sub_23D453400();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D435648()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D435698()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D4356D0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D435728()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D4357C0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D4357FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAD20, &unk_23D46E678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAD38, &qword_27E2DAD20, &unk_23D46E678);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D4358EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23D436AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBTextWelcomeControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __OnBoardingKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BD0C98;
    v7 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBTextWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBTextWelcomeControllerClass_block_invoke_cold_1();
  }

  getOBTextWelcomeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23D436EF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getOBTextWelcomeControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBTextWelcomeControllerClass_softClass_0;
  v7 = getOBTextWelcomeControllerClass_softClass_0;
  if (!getOBTextWelcomeControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getOBTextWelcomeControllerClass_block_invoke_0;
    v3[3] = &unk_278BD0C78;
    v3[4] = &v4;
    __getOBTextWelcomeControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23D438CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D4392C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getOBTextWelcomeControllerClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __OnBoardingKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BD0DE8;
    v7 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBTextWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBTextWelcomeControllerClass_block_invoke_cold_1();
  }

  getOBTextWelcomeControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23D43A9A4(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_23D43AA70(uint64_t a1)
{
  v2 = *(*a1 + 464);

  v2(v3);

  (*(*a1 + 512))(v4);

  return a1;
}

uint64_t sub_23D43AB24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA700, &qword_23D46D1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA708, &qword_23D46D1F0);
  sub_23D43B810(&qword_27E2DA710, &qword_27E2DA700, &qword_23D46D1E8);
  sub_23D43B3EC();
  return sub_23D46BBA8();
}

uint64_t sub_23D43AC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA738, &qword_23D46D2B0);
  v3 = *(*(v69 - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v74 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v75 = &v61[-v6];
  v7 = sub_23D46BF08();
  v73 = sub_23D46BEF8();
  v71 = v7;
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v9 = *(*a1 + 416);
  v67 = *a1 + 416;
  v68 = v9;
  v78 = (v9)(isCurrentExecutor);
  v79 = v10;
  v70 = sub_23D43B690();
  v11 = sub_23D46BAC8();
  v64 = v11;
  v13 = v12;
  v63 = v12;
  v15 = v14;
  v17 = v16;
  v66 = v16;
  KeyPath = swift_getKeyPath();
  v78 = v11;
  v79 = v13;
  v62 = v15 & 1;
  v80 = v15 & 1;
  v81 = v17;
  v82 = KeyPath;
  v83 = 0;
  v84 = 0;
  sub_23D46BA38();
  v18 = sub_23D46BAB8();
  v20 = v19;
  v22 = v21;
  sub_23D46BB78();
  v23 = sub_23D46BAA8();
  v25 = v24;
  LOBYTE(v17) = v26;

  sub_23D43B748(v18, v20, v22 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA748, &qword_23D46D2E8);
  sub_23D43B758();
  sub_23D46BB38();
  sub_23D43B748(v23, v25, v17 & 1);

  sub_23D43B748(v64, v63, v62);

  v28 = *(*a1 + 1376);
  if ((v28)(v27) || v29 != 0xE000000000000000)
  {
    v31 = sub_23D46C1B8();

    v30 = v31 ^ 1;
  }

  else
  {

    v30 = 0;
  }

  v75[*(v69 + 36)] = sub_23D469394(v30 & 1) & 1;
  v78 = v68();
  v79 = v32;
  v33 = sub_23D46BAC8();
  v67 = v34;
  v68 = v33;
  v36 = v35;
  v69 = v37;
  v66 = swift_getKeyPath();
  if (v28() || v38 != 0xE000000000000000)
  {
    v39 = sub_23D46C1B8();
  }

  else
  {

    v39 = 1;
  }

  v40 = sub_23D469394(v39 & 1);
  v77 = v36 & 1;
  v76 = 0;
  KeyPath = sub_23D46B9D8();
  sub_23D46BEF8();
  sub_23D46BEE8();
  v41 = swift_task_isCurrentExecutor();
  if ((v41 & 1) == 0)
  {
    v41 = swift_task_reportUnexpectedExecutor();
  }

  LODWORD(v71) = v40 & 1;
  v78 = (*(*a1 + 464))(v41);
  v79 = v42;
  v43 = sub_23D46BAC8();
  v45 = v44;
  v47 = v46;
  v70 = v48;

  v49 = v74;
  sub_23D434D48(v75, v74);
  v50 = v77;
  LOBYTE(v78) = v77;
  v51 = v76;
  v52 = v72;
  sub_23D434D48(v49, v72);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA768, &qword_23D46D2F8);
  v54 = v52 + *(v53 + 48);
  v55 = v67;
  v56 = v68;
  *v54 = v68;
  *(v54 + 8) = v55;
  *(v54 + 16) = v50;
  v57 = KeyPath;
  v58 = v66;
  *(v54 + 24) = v69;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  *(v54 + 48) = v51;
  *(v54 + 49) = v71;
  v59 = v52 + *(v53 + 64);
  *v59 = v57;
  *(v59 + 8) = 0x4008000000000000;
  *(v59 + 16) = 0;
  *(v59 + 24) = v43;
  *(v59 + 32) = v45;
  v47 &= 1u;
  *(v59 + 40) = v47;
  *(v59 + 48) = v70;
  sub_23D43B858(v56, v55, v50 & 1);

  sub_23D43B858(v43, v45, v47);

  sub_23D434DB8(v75);
  sub_23D43B748(v43, v45, v47);

  sub_23D43B748(v56, v55, v78);

  sub_23D434DB8(v74);
}

uint64_t sub_23D43B2AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v4 = a1;
    a1 = sub_23D46BB88();
  }

  *a2 = a1;
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

unint64_t sub_23D43B3EC()
{
  result = qword_27E2DA718;
  if (!qword_27E2DA718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA708, &qword_23D46D1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA718);
  }

  return result;
}

uint64_t sub_23D43B48C()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA700, &qword_23D46D1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA708, &qword_23D46D1F0);
  sub_23D43B810(&qword_27E2DA710, &qword_27E2DA700, &qword_23D46D1E8);
  sub_23D43B3EC();
  return sub_23D46BBA8();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D43B5A8(uint64_t *a1, int a2)
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

uint64_t sub_23D43B5F0(uint64_t result, int a2, int a3)
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

unint64_t sub_23D43B63C()
{
  result = qword_27E2DA730;
  if (!qword_27E2DA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA730);
  }

  return result;
}

unint64_t sub_23D43B690()
{
  result = qword_27E2DA740;
  if (!qword_27E2DA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA740);
  }

  return result;
}

uint64_t sub_23D43B6E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D46B9B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23D43B718(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23D46B9C8();
}

uint64_t sub_23D43B748(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23D43B758()
{
  result = qword_27E2DA750;
  if (!qword_27E2DA750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA748, &qword_23D46D2E8);
    sub_23D43B810(&qword_27E2DA758, &qword_27E2DA760, &qword_23D46D2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA750);
  }

  return result;
}

uint64_t sub_23D43B810(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D43B858(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D43B870()
{
  type metadata accessor for AFUSettings();
  result = sub_23D453904();
  qword_27E2DBDF8 = result;
  return result;
}

uint64_t *sub_23D43B8A4()
{
  if (qword_27E2DAE08 != -1)
  {
    swift_once();
  }

  return &qword_27E2DBDF8;
}

uint64_t sub_23D43B8F4()
{
  if (qword_27E2DAE08 != -1)
  {
    swift_once();
  }
}

void *sub_23D43B950()
{
  v1 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__deviceManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D43B99C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__deviceManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D43BA54()
{
  v1 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__delegateQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D43BAA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__delegateQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_23D43BB5C()
{
  v10 = sub_23D46BF58();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D46BF38();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_23D46BD38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23D43BDA4();
  sub_23D46BD18();
  v11 = MEMORY[0x277D84F90];
  sub_23D4412C8(&qword_27E2DA788, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
  sub_23D43F138(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320);
  sub_23D46BFF8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_23D46BF88();
}

unint64_t sub_23D43BDA4()
{
  result = qword_27E2DA780;
  if (!qword_27E2DA780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2DA780);
  }

  return result;
}

id sub_23D43BDF0()
{
  v1 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__internalQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D43BE44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__internalQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_23D43BF08()
{
  v1 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__uuidToSerialNumber;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23D43BF50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__uuidToSerialNumber;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_23D43C030(void *a1)
{
  v2 = sub_23D46BF58();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D46BF38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_23D46BD38();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v11 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v12 = (*MEMORY[0x277D85000] & *a1) + 112;
  v13 = v11(v10);
  if (v13)
  {
  }

  else
  {
    v14 = sub_23D43BDA4();
    v23[0] = "stopped due to disconnect";
    v23[1] = v14;
    sub_23D46BD18();
    v27 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA788, MEMORY[0x277D85230]);
    v25 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
    v24 = v11;
    sub_23D43F138(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320);
    sub_23D46BFF8();
    (*(v26 + 104))(v5, *MEMORY[0x277D85260], v2);
    v15 = sub_23D46BF88();
    v16 = MEMORY[0x277D85000];
    v17 = (*((*MEMORY[0x277D85000] & *a1) + 0x90))(v15);
    v18 = v16;
    v19 = (*((*v16 & *a1) + 0x88))(v17);
    v20 = [objc_allocWithZone(MEMORY[0x277D73FE0]) initWithDelegate:a1 delegateQueue:v19 listener:0];

    v21 = (*((*v18 & *a1) + 0x78))(v20);
    v22 = v24(v21);
    [v22 activate];
  }
}

uint64_t sub_23D43C3E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23D43C450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D46BD08();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23D46BD38();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v12);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  sub_23D46BD18();
  v23 = MEMORY[0x277D84F90];
  sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v14, v9, v17);
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v14, v21);
}

uint64_t sub_23D43C72C(void *a1)
{
  v2 = v1;
  v4 = sub_23D46B898();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = sub_23D46B808();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_23D46B888();
    v32 = sub_23D46B878();
    v33 = sub_23D46BF28();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23D433000, v32, v33, "getSerialNumberForEndpoint: deviceEndpoint is nil", v34, 2u);
      MEMORY[0x23EEE1B10](v34, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  v17 = a1;
  v18 = [v17 uuid];
  sub_23D46B7F8();

  v19 = sub_23D46B7E8();
  v21 = v20;
  (*(v13 + 8))(v16, v12);

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    sub_23D46B888();
    v35 = sub_23D46B878();
    v36 = sub_23D46BF28();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23D433000, v35, v36, "getSerialNumberForEndpoint: deviceEndpoint uuid is nil", v37, 2u);
      MEMORY[0x23EEE1B10](v37, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
    return 0;
  }

  v39[0] = 0;
  v39[1] = 0;
  v24 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v22);
  v25 = swift_allocObject();
  v25[2] = v2;
  v25[3] = v17;
  v25[4] = v39;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_23D43F22C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_23D43F238;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43D1A8;
  aBlock[3] = &block_descriptor_15;
  v27 = _Block_copy(aBlock);
  v28 = v17;
  v29 = v2;

  dispatch_sync(v24, v27);

  _Block_release(v27);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    v31 = v39[0];

    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D43CBA0(void *a1, void *a2, uint64_t *a3)
{
  v6 = sub_23D46B898();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_23D46B808();
  v10 = *(v72 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v72);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v70 = v69 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v69 - v17;
  v19 = [a2 uuid];
  sub_23D46B7F8();

  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *a1) + 0xB8))();
  if (*(v21 + 16) && (v22 = sub_23D43E0B4(v18), (v23 & 1) != 0))
  {
    v24 = (*(v21 + 56) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v10[1];

    v27(v18, v72);

    v28 = a3[1];
    *a3 = v26;
    a3[1] = v25;
  }

  else
  {

    v69[0] = v10[1];
    v69[1] = v10 + 1;
    v30 = (v69[0])(v18, v72);
    v31 = (*((*v20 & *a1) + 0x70))(v30);
    if (v31 && (v32 = v31, v33 = [v31 serialNumber:a2 endpointIndex:0], v32, v33))
    {
      v34 = sub_23D46BDD8();
      v36 = v35;

      v37 = a3[1];
      *a3 = v34;
      a3[1] = v36;

      v38 = [a2 uuid];
      v39 = v70;
      sub_23D46B7F8();

      v41 = *a3;
      v40 = a3[1];
      v42 = *((*v20 & *a1) + 0xC8);

      v44 = v42(v74);
      v45 = v43;
      if (v40)
      {
        v46 = *v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = *v45;
        *v45 = 0x8000000000000000;
        sub_23D43EA14(v41, v40, v39, isUniquelyReferenced_nonNull_native);
        (v69[0])(v39, v72);
        *v45 = v73;
      }

      else
      {
        v59 = sub_23D43E0B4(v39);
        if (v60)
        {
          v61 = v59;
          v62 = *v45;
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v73 = *v45;
          *v45 = 0x8000000000000000;
          if ((v63 & 1) == 0)
          {
            sub_23D43ECB0();
          }

          v64 = v73;
          v65 = *(v73 + 48) + v10[9] * v61;
          v66 = v72;
          v67 = v69[0];
          (v69[0])(v65, v72);
          v68 = *(*(v64 + 56) + 16 * v61 + 8);

          sub_23D43E6F4(v61, v64);
          v67(v39, v66);
          *v45 = v64;
        }

        else
        {
          (v69[0])(v39, v72);
        }
      }

      return v44(v74, 0);
    }

    else
    {
      sub_23D46B888();
      v48 = a2;
      v49 = sub_23D46B878();
      v50 = sub_23D46BF28();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v74[0] = v52;
        *v51 = 136315138;
        v53 = [v48 uuid];
        sub_23D46B7F8();

        sub_23D4412C8(&qword_27E2DA818, MEMORY[0x277CC95F0]);
        v54 = v72;
        v55 = sub_23D46C1A8();
        v57 = v56;
        (v69[0])(v14, v54);
        v58 = sub_23D43DB0C(v55, v57, v74);

        *(v51 + 4) = v58;
        _os_log_impl(&dword_23D433000, v49, v50, "getSerialNumberForEndpoint: serialNumber is nil for %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x23EEE1B10](v52, -1, -1);
        MEMORY[0x23EEE1B10](v51, -1, -1);
      }

      return (*(v71 + 8))(v9, v6);
    }
  }
}

id sub_23D43D76C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23D43D7A0()
{
  v1 = v0;
  v16 = sub_23D46BF58();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D46BF38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_23D46BD38();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *&v0[OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__deviceManager] = 0;
  *&v0[OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__delegateQueue] = 0;
  v15 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__internalQueue;
  v10 = sub_23D43BDA4();
  v14[1] = "ngs/AccessoryListView.swift";
  v14[2] = v10;
  sub_23D46BD18();
  v18 = MEMORY[0x277D84F90];
  sub_23D4412C8(&qword_27E2DA788, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
  sub_23D43F138(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320);
  sub_23D46BFF8();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v16);
  *&v0[v15] = sub_23D46BF88();
  v11 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__uuidToSerialNumber;
  *&v1[v11] = sub_23D43EF3C(MEMORY[0x277D84F90]);
  v12 = type metadata accessor for AFUEndpointStatusController();
  v17.receiver = v1;
  v17.super_class = v12;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_23D43DA6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFUEndpointStatusController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D43DB0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D43DBD8(v11, 0, 0, 1, a1, a2);
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
    sub_23D441268(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D43DBD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D43DCE4(a5, a6);
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
    result = sub_23D46C068();
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

uint64_t sub_23D43DCE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D43DD30(a1, a2);
  sub_23D43DE60(&unk_284F754D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D43DD30(uint64_t a1, unint64_t a2)
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

  v6 = sub_23D43DF4C(v5, 0);
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

  result = sub_23D46C068();
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
        v10 = sub_23D46BE38();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D43DF4C(v10, 0);
        result = sub_23D46C028();
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

uint64_t sub_23D43DE60(uint64_t result)
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

  result = sub_23D43DFC0(result, v12, 1, v3);
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

void *sub_23D43DF4C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA830, &qword_23D46D378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D43DFC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA830, &qword_23D46D378);
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

unint64_t sub_23D43E0B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23D46B808();
  sub_23D4412C8(&qword_27E2DA828, MEMORY[0x277CC95F0]);
  v5 = sub_23D46BD98();

  return sub_23D43E14C(a1, v5);
}

unint64_t sub_23D43E14C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23D46B808();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
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
      sub_23D4412C8(&qword_27E2DA838, MEMORY[0x277CC95F0]);
      v16 = sub_23D46BDB8();
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

uint64_t sub_23D43E30C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23D46B808();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA820, "D-");
  v48 = a2;
  result = sub_23D46C0E8();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_23D4412C8(&qword_27E2DA828, MEMORY[0x277CC95F0]);
      result = sub_23D46BD98();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_23D43E6F4(int64_t a1, uint64_t a2)
{
  v43 = sub_23D46B808();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_23D46C008();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23D4412C8(&qword_27E2DA828, MEMORY[0x277CC95F0]);
      v26 = sub_23D46BD98();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_23D43EA14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_23D46B808();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_23D43E0B4(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_23D43ECB0();
      goto LABEL_9;
    }

    sub_23D43E30C(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_23D43E0B4(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23D46C1D8();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_23D43EBF0(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_23D43EBF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_23D46B808();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_23D43ECB0()
{
  v1 = v0;
  v36 = sub_23D46B808();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA820, "D-");
  v4 = *v0;
  v5 = sub_23D46C0D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_23D43EF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DA840, qword_23D46D380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA820, "D-");
    v8 = sub_23D46C0F8();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23D441310(v10, v6);
      result = sub_23D43E0B4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23D46B808();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D43F138(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D43F18C()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  [v3 deactivate];

  return (*((*v2 & *v1) + 0x78))(0);
}

uint64_t sub_23D43F238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23D43F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_23D46BD08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23D46BD38();
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v25);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v4) + 0xE0))(a1);
  if (v17)
  {
    v18 = result;
    v19 = v17;
    sub_23D43BDA4();
    v23 = sub_23D46BF68();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    aBlock[4] = a3;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = v24;
    v21 = _Block_copy(aBlock);
    sub_23D46BD18();
    v26 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
    sub_23D46BFF8();
    v22 = v23;
    MEMORY[0x23EEE1040](0, v15, v11, v21);
    _Block_release(v21);

    (*(v8 + 8))(v11, v7);
    (*(v12 + 8))(v15, v25);
  }

  return result;
}

uint64_t sub_23D43F55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23D46BD08();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23D46BD38();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v3) + 0xE0))(a1);
  if (v16)
  {
    v17 = result;
    v18 = v16;
    sub_23D43BDA4();
    v19 = sub_23D46BF68();
    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = v18;
    v20[4] = a2;
    v20[5] = a3;
    aBlock[4] = sub_23D4406A4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_41;
    v21 = _Block_copy(aBlock);
    sub_23D46BD18();
    v25 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
    sub_23D46BFF8();
    MEMORY[0x23EEE1040](0, v14, v10, v21);
    _Block_release(v21);

    (*(v24 + 8))(v10, v7);
    (*(v11 + 8))(v14, v23);
  }

  return result;
}

uint64_t sub_23D43F874(uint64_t a1, uint64_t a2)
{
  v5 = sub_23D46BD08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23D46BD38();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(a1);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    sub_23D43BDA4();
    v22 = sub_23D46BF68();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = a2;
    aBlock[4] = sub_23D440218;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_35;
    v19 = _Block_copy(aBlock);
    sub_23D46BD18();
    v24 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
    sub_23D46BFF8();
    v20 = v22;
    MEMORY[0x23EEE1040](0, v13, v9, v19);
    _Block_release(v19);

    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v13, v23);
  }

  return result;
}

uint64_t sub_23D43FBA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          v17 = (*(*v9 + 1520))(v16);
          (*(*v9 + 1584))(0x65646E6963736552, 0xEF74657373412064, v17, v18, 0, v1, v2, 0.0);

          break;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        (*(*v9 + 848))(v14);
        sub_23D43B690();
        v15 = sub_23D46BFD8();

        if (v15)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D43FEE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          v17 = (*(*v9 + 1520))(v16);
          (*(*v9 + 1584))(0xD000000000000014, 0x800000023D46F1C0, v17, v18, 0, v1, v2, 1.0);

          break;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        (*(*v9 + 848))(v14);
        sub_23D43B690();
        v15 = sub_23D46BFD8();

        if (v15)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D440218()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(**sub_23D45393C() + 400);

  v6 = v4(v5);

  if (v6 >> 62)
  {
LABEL_35:
    v7 = sub_23D46C0C8();
    if (!v7)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_33;
    }
  }

  v27 = v3;
  v8 = 4;
  while (1)
  {
    v9 = v8 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EEE1110](v8 - 4, v6);
      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v10 = *(v6 + 8 * v8);

      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ((*(*v10 + 512))() == v1 && v12 == v2)
    {
      break;
    }

    v14 = sub_23D46C1B8();

    if (v14)
    {
      goto LABEL_22;
    }

    (*(*v10 + 848))(v15);
    v3 = v16;
    sub_23D43B690();
    v17 = sub_23D46BFD8();

    if (v17)
    {
      goto LABEL_22;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  if (v27 == 1)
  {
    v18 = 0x432064616F6C7055;
  }

  else
  {
    v18 = 0x462064616F6C7055;
  }

  if (v27 == 1)
  {
    v19 = 0xEF6574656C706D6FLL;
  }

  else
  {
    v19 = 0xED000064656C6961;
  }

  MEMORY[0x23EEE0EE0](v18, v19);

  v21 = (*(*v10 + 1424))(v20);
  v23 = 1.0;
  if (v27 != 1)
  {
    if (v22 == 1.0)
    {
      v23 = 0.01;
      (*(*v10 + 1432))(v21, 0.01);
      v21 = (*(*v10 + 1528))(0, 0xE000000000000000);
    }

    else
    {
      v23 = v22;
    }
  }

  v24 = (*(*v10 + 1520))(v21);
  (*(*v10 + 1584))(0x6574656C706D6F43, 0xEA00000000002064, v24, v25, 0, v1, v2, v23);

LABEL_33:
}

uint64_t sub_23D4406A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v23 = v0[5];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(**sub_23D45393C() + 400);

  v6 = v4(v5);

  v24 = v3;
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_36:
  }

LABEL_35:
  v7 = sub_23D46C0C8();
  if (!v7)
  {
    goto LABEL_36;
  }

LABEL_5:
  v8 = 4;
  while (1)
  {
    v9 = v8 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EEE1110](v8 - 4, v6);
      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v10 = *(v6 + 8 * v8);

      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ((*(*v10 + 512))() == v1 && v12 == v2)
    {
      break;
    }

    v14 = sub_23D46C1B8();

    if (v14)
    {
      goto LABEL_22;
    }

    (*(*v10 + 848))(v15);
    sub_23D43B690();
    v16 = sub_23D46BFD8();

    if (v16)
    {
      goto LABEL_22;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_36;
    }
  }

LABEL_22:

  sub_23D46C038();

  MEMORY[0x23EEE0EE0](2629690, 0xE300000000000000);
  v17 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v17);

  MEMORY[0x23EEE0EE0](2109216, 0xE300000000000000);
  v18 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v18);

  MEMORY[0x23EEE0EE0](0x29736574796220, 0xE700000000000000);
  v19.n128_u64[0] = 0x3F847AE147AE147BLL;
  if (v24 >= 1 && v23 >= 1 && v23 >= v24)
  {
    v19.n128_f64[0] = v24 / v23;
  }

  if (v24 == v23)
  {
    v20 = 0x6574656C706D6F43;
  }

  else
  {
    v20 = 0x20676E6967617453;
  }

  if (v24 == v23)
  {
    v21 = 0xE900000000000064;
  }

  else
  {
    v21 = 0xEB000000002E2E2ELL;
  }

  (*(*v10 + 1584))(v20, v21, v1, v2, 1, v1, v2, v19);
}

uint64_t sub_23D440AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_35:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
LABEL_22:

            if ((*(*v9 + 1376))(v16))
            {
              v18 = 0;
            }

            else
            {
              v18 = v17 == 0xE000000000000000;
            }

            if (v18)
            {
            }

            else
            {
              v19 = sub_23D46C1B8();

              if ((v19 & 1) == 0)
              {
                v21 = (*(*v9 + 1472))(v20);
                v23 = v22;
                v31 = v22;
                v24 = (*v9 + 1424);
                v25 = *v24;
                if ((*v24)() != 1.0)
                {
                  v26 = MEMORY[0x23EEE0EE0](0xD000000000000019, 0x800000023D46F1E0);
                  v23 = v31;
                }

                v27 = (*(*v9 + 1520))(v26);
                v29 = v28;
                v25();
                (*(*v9 + 1584))(v21, v23, v27, v29, 0, v1, v2);

                break;
              }
            }
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

          goto LABEL_22;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        (*(*v9 + 848))(v14);
        sub_23D43B690();
        v15 = sub_23D46BFD8();

        if (v15)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D440F34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_24:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          (*(*v9 + 1584))(0, 0xE000000000000000, 0, 0xE000000000000000, 0, v1, v2, 0.01);
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        (*(*v9 + 848))(v14);
        sub_23D43B690();
        v15 = sub_23D46BFD8();

        if (v15)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
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

uint64_t sub_23D441268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D4412C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D441310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DA840, qword_23D46D380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D4413CC()
{
  type metadata accessor for AFUSettings();
  result = sub_23D453904();
  qword_27E2DBE00 = result;
  return result;
}

uint64_t *sub_23D441400()
{
  if (qword_27E2DAE10 != -1)
  {
    swift_once();
  }

  return &qword_27E2DBE00;
}

uint64_t sub_23D441450()
{
  if (qword_27E2DAE10 != -1)
  {
    swift_once();
  }
}

id sub_23D441744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFUObserverController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23D4417B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFUObserverController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_23D4417F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_23D44180C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = sub_23D46BD08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D46BD38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 serialNumber];
  if (result)
  {
    v17 = result;
    v18 = sub_23D46BDD8();
    v25 = v11;
    v20 = v19;

    sub_23D43BDA4();
    v24 = sub_23D46BF68();
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    aBlock[4] = a3;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = v26;
    v22 = _Block_copy(aBlock);
    sub_23D46BD18();
    v27 = MEMORY[0x277D84F90];
    sub_23D4425D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D442630();
    sub_23D46BFF8();
    v23 = v24;
    MEMORY[0x23EEE1040](0, v15, v10, v22);
    _Block_release(v22);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v25);
  }

  return result;
}

id sub_23D441AB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D46BD08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23D46BD38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 serialNumber];
  if (result)
  {
    v19 = result;
    v20 = sub_23D46BDD8();
    v34 = v21;
    v35 = v20;

    v22 = [a2 assetVersion];
    v36 = v9;
    v37 = v13;
    if (v22)
    {

      result = [a2 assetVersion];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v23 = result;
      v24 = a3;
      v25 = a4;
      v26 = sub_23D46BDD8();
      v28 = v27;
    }

    else
    {
      v24 = a3;
      v25 = a4;
      v28 = 0xE700000000000000;
      v26 = 0x6E776F6E6B6E55;
    }

    sub_23D43BDA4();
    v29 = sub_23D46BF68();
    v30 = swift_allocObject();
    v31 = v34;
    v30[2] = v35;
    v30[3] = v31;
    v30[4] = v24;
    v30[5] = v25;
    v30[6] = v26;
    v30[7] = v28;
    aBlock[4] = sub_23D442694;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_8;
    v32 = _Block_copy(aBlock);
    sub_23D46BD18();
    v38 = MEMORY[0x277D84F90];
    sub_23D4425D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D442630();
    sub_23D46BFF8();
    MEMORY[0x23EEE1040](0, v17, v12, v32);
    _Block_release(v32);

    (*(v36 + 8))(v12, v8);
    (*(v14 + 8))(v17, v37);
  }

  return result;
}

id sub_23D441DF0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23D46BD08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D46BD38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 serialNumber];
  if (result)
  {
    v31 = a3;
    v17 = result;
    v18 = sub_23D46BDD8();
    v30 = v19;

    v20 = [a2 assetVersion];
    v32 = v11;
    if (v20)
    {

      result = [a2 assetVersion];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v21 = result;
      v22 = sub_23D46BDD8();
      v24 = v23;
    }

    else
    {
      v24 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E55;
    }

    sub_23D43BDA4();
    v25 = sub_23D46BF68();
    v26 = swift_allocObject();
    v28 = v30;
    v27 = v31;
    v26[2] = v18;
    v26[3] = v28;
    v26[4] = v27;
    v26[5] = v22;
    v26[6] = v24;
    aBlock[4] = sub_23D442144;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_0;
    v29 = _Block_copy(aBlock);
    sub_23D46BD18();
    v33 = MEMORY[0x277D84F90];
    sub_23D4425D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D442630();
    sub_23D46BFF8();
    MEMORY[0x23EEE1040](0, v15, v10, v29);
    _Block_release(v29);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v32);
  }

  return result;
}

uint64_t sub_23D442144()
{
  v1 = v0[2];
  v2 = v0[3];
  v27 = v0[5];
  v28 = v0[4];
  v26 = v0[6];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_28:
    v6 = sub_23D46C0C8();
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  v7 = 4;
  while (1)
  {
    v8 = v7 - 4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
      v10 = v7 - 3;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_28;
      }

      v9 = *(v5 + 8 * v7);

      v10 = v7 - 3;
      if (__OFADD__(v8, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ((*(*v9 + 512))() == v1 && v11 == v2)
    {
      break;
    }

    v13 = sub_23D46C1B8();

    if (v13)
    {
      goto LABEL_22;
    }

    (*(*v9 + 848))(v14);
    sub_23D43B690();
    v15 = sub_23D46BFD8();

    if (v15)
    {
      goto LABEL_22;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_29;
    }
  }

LABEL_22:

  UARPFirmwareStagingCompletionStatusToString();
  v16 = sub_23D46BE28();
  v18 = v17;
  MEMORY[0x23EEE0EE0](v27, v26);
  MEMORY[0x23EEE0EE0](32, 0xE100000000000000);
  MEMORY[0x23EEE0EE0](v16, v18);

  v20 = (*(*v9 + 1424))(v19);
  if (v28)
  {
    v22 = v21;
    if (v21 == 1.0)
    {
      v22 = 0.01;
      (*(*v9 + 1432))(v20, 0.01);
      v20 = (*(*v9 + 1528))(0, 0xE000000000000000);
    }
  }

  else
  {
    v22 = 1.0;
  }

  v23 = (*(*v9 + 1520))(v20);
  (*(*v9 + 1584))(0x6574656C706D6F43, 0xEA00000000002064, v23, v24, 0, v1, v2, v22);

LABEL_29:
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D4425D8()
{
  result = qword_27E2DA850;
  if (!qword_27E2DA850)
  {
    sub_23D46BD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA850);
  }

  return result;
}

unint64_t sub_23D442630()
{
  result = qword_27E2DA860;
  if (!qword_27E2DA860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA7B0, &qword_23D46D920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA860);
  }

  return result;
}

uint64_t sub_23D442694()
{
  v1 = v0[3];
  v27 = v0[2];
  v25 = v0[5];
  v26 = v0[4];
  v3 = v0[6];
  v2 = v0[7];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(**sub_23D45393C() + 400);

  v6 = v4(v5);

  if (v6 >> 62)
  {
LABEL_33:
    v7 = sub_23D46C0C8();
    if (!v7)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_31;
    }
  }

  v23 = v3;
  v24 = v2;
  v3 = 4;
  v8 = v27;
  while (1)
  {
    v9 = v3 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EEE1110](v3 - 4, v6);
      v11 = v3 - 3;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v10 = *(v6 + 8 * v3);

      v11 = v3 - 3;
      if (__OFADD__(v9, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:

        goto LABEL_23;
      }
    }

    if ((*(*v10 + 512))() == v8 && v12 == v1)
    {
      goto LABEL_20;
    }

    v14 = sub_23D46C1B8();

    if (v14)
    {
      goto LABEL_23;
    }

    (*(*v10 + 848))(v15);
    v2 = v1;
    sub_23D43B690();
    v16 = sub_23D46BFD8();

    if (v16)
    {
      break;
    }

    ++v3;
    v8 = v27;
    if (v11 == v7)
    {
      goto LABEL_31;
    }
  }

  v8 = v27;
LABEL_23:

  sub_23D46C038();

  MEMORY[0x23EEE0EE0](2629690, 0xE300000000000000);
  v17 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v17);

  MEMORY[0x23EEE0EE0](2109216, 0xE300000000000000);
  v18 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v18);

  MEMORY[0x23EEE0EE0](0x29736574796220, 0xE700000000000000);
  v19 = 0.01;
  if (v26 && v25 && v25 >= v26)
  {
    v19 = v26 / v25;
  }

  if (v26 == v25)
  {
    v28 = 0x6574656C706D6F43;
    v29 = 0xEA00000000002064;
    v20 = v23;
    v21 = v24;
  }

  else
  {
    v28 = 0x20676E6967617453;
    v29 = 0xE800000000000000;
    MEMORY[0x23EEE0EE0](v23, v24);
    v20 = 774778400;
    v21 = 0xE400000000000000;
  }

  MEMORY[0x23EEE0EE0](v20, v21);
  (*(*v10 + 1584))(v28, v29, v8, v1, 1, v27, v1, v19);

LABEL_31:
}

uint64_t sub_23D442B38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_35:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
LABEL_22:

            if ((*(*v9 + 1376))(v16))
            {
              v18 = 0;
            }

            else
            {
              v18 = v17 == 0xE000000000000000;
            }

            if (v18)
            {
            }

            else
            {
              v19 = sub_23D46C1B8();

              if ((v19 & 1) == 0)
              {
                v21 = (*(*v9 + 1472))(v20);
                v23 = v22;
                v31 = v22;
                v24 = (*v9 + 1424);
                v25 = *v24;
                if ((*v24)() != 1.0)
                {
                  v26 = MEMORY[0x23EEE0EE0](0xD000000000000019, 0x800000023D46F1E0);
                  v23 = v31;
                }

                v27 = (*(*v9 + 1520))(v26);
                v29 = v28;
                v25();
                (*(*v9 + 1584))(v21, v23, v27, v29, 0, v1, v2);

                break;
              }
            }
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

          goto LABEL_22;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        (*(*v9 + 848))(v14);
        sub_23D43B690();
        v15 = sub_23D46BFD8();

        if (v15)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D442F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_24:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          (*(*v9 + 1584))(0, 0xE000000000000000, 0, 0xE000000000000000, 0, v1, v2, 0.01);
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        (*(*v9 + 848))(v14);
        sub_23D43B690();
        v15 = sub_23D46BFD8();

        if (v15)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

void type metadata accessor for UARPFirmwareStagingCompletionStatus()
{
  if (!qword_27E2DA870)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E2DA870);
    }
  }
}

uint64_t sub_23D4432CC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23D4432FC(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_23D443334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_23D443364(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_23D4433BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_23D4433EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_23D443444()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_23D443474(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_23D4434CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_23D46C1B8();
  }
}

uint64_t sub_23D4434FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D46BDF8();
  v3 = v0[2];
  v4 = v0[3];
  sub_23D46BDF8();
  v5 = v0[4];
  v6 = v0[5];
  sub_23D46BDF8();
  v7 = v0[6];
  v8 = v0[7];

  return sub_23D46BDF8();
}

uint64_t sub_23D443554()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_23D46C1E8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  return sub_23D46C228();
}

uint64_t sub_23D4435F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
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

uint64_t sub_23D443608@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23D443614()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();

  return sub_23D46BDF8();
}

uint64_t sub_23D44369C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_23D46C1E8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  return sub_23D46C228();
}

uint64_t sub_23D443738()
{
  type metadata accessor for SettingsAccessory();
  sub_23D452C84(&qword_27E2DA8E0, type metadata accessor for SettingsAccessory);

  return sub_23D46BCA8();
}

uint64_t sub_23D4437C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  return v1;
}

void (*sub_23D443840(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  *(v3 + 32) = sub_23D46BC68();
  return sub_23D4438CC;
}

void sub_23D4438CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23D443918()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);

  return sub_23D46BC98();
}

uint64_t sub_23D443964()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 20));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return v3;
}

uint64_t type metadata accessor for AccessoryDetailView()
{
  result = qword_27E2DB0A0;
  if (!qword_27E2DB0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D443A18()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 20));
  v3 = *v1;
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D443A94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 20));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return sub_23D443B58;
}

uint64_t sub_23D443B5C()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 20));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D443BC8()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 24));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return v3;
}

uint64_t sub_23D443C30()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 24));
  v3 = *v1;
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D443CAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return sub_23D452ECC;
}

uint64_t sub_23D443D70()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 24));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D443DE0()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 28));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return v3;
}

uint64_t sub_23D443E40()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 28));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D443EA8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 28));
  v7 = *v5;
  v6 = v5[1];
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return sub_23D443F60;
}

uint64_t sub_23D443F64()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 28));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D444004()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 32));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return v3;
}

uint64_t sub_23D44406C()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 32));
  v3 = *v1;
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D4440E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return sub_23D452ECC;
}

void sub_23D4441AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[8] = v2[6];
  v4 = v2[7];
  v5 = v2[12];
  v6 = v2[13];
  v2[4] = v3;
  v2[5] = v5;
  v2[9] = v4;
  if (a2)
  {

    sub_23D46BBD8();

    v7 = v2[7];
  }

  else
  {
    sub_23D46BBD8();
  }

  free(v2);
}

uint64_t sub_23D444268()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 32));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D4442D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  sub_23D46BBB8();
  return v1;
}

uint64_t sub_23D44431C()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 36));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return v3;
}

uint64_t sub_23D44437C()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 36));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D4443E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 36));
  v7 = *v5;
  v6 = v5[1];
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return sub_23D452ED0;
}

void sub_23D44449C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v4 = v2[8];
  v2[3] = v3;
  if (a2)
  {

    sub_23D46BBD8();

    v5 = v2[4];
  }

  else
  {
    sub_23D46BBD8();
  }

  free(v2);
}

uint64_t sub_23D444550()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 36));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D4445B8()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 40));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v3;
}

uint64_t sub_23D444620()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D444690(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 40));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D44474C;
}

uint64_t sub_23D444750()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 40));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D4447BC()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 44));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v3;
}

uint64_t sub_23D444824()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D444894(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 44));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D452ED4;
}

uint64_t sub_23D444950()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 44));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D4449F8()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 48));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v3;
}

uint64_t sub_23D444A60()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 48));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D444AD0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView() + 48));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D452ED4;
}

void sub_23D444B8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v4;
  *(v1 + 49) = v2;
  sub_23D46BBD8();

  free(v1);
}

uint64_t sub_23D444BF4()
{
  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 48));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v3;
}

uint64_t sub_23D444C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryDetailView();
  v5 = (a2 + v4[5]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v5[2] = 0;
  v6 = (a2 + v4[6]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v6[2] = 0;
  v7 = (a2 + v4[8]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v7[2] = 0;
  v8 = (a2 + v4[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  sub_23D46BBB8();
  *v8 = v38;
  v8[1] = v39;
  type metadata accessor for SettingsAccessory();
  sub_23D452C84(&qword_27E2DA8E0, type metadata accessor for SettingsAccessory);

  sub_23D46BCA8();
  v9 = a2 + v4[10];
  v10 = sub_23D46BBB8();
  *v9 = v38;
  *(v9 + 8) = v39;
  (*(*a1 + 992))(v10);
  v11 = a2 + v4[11];
  v12 = sub_23D46BBB8();
  *v11 = v38;
  *(v11 + 8) = v39;
  (*(*a1 + 1088))(v12);
  sub_23D4451F8();
  sub_23D46BE68();
  sub_23D46BE68();
  v13 = a2 + v4[12];
  sub_23D46BBB8();
  *v13 = v38;
  *(v13 + 8) = v39;
  v14 = (a2 + v4[9]);
  sub_23D46BBB8();
  *v14 = v38;
  v14[1] = v39;
  v15 = *(**sub_23D45393C() + 400);

  v17 = v15(v16);
  v18 = v17;
  if (v17 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D46C0C8())
  {
    v20 = 0;
    v37 = *(*a1 + 464);
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x23EEE1110](v20, v18);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v21 = *(v18 + 8 * v20 + 32);

      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

LABEL_11:
      v23 = (*(*v21 + 464))();
      v25 = v24;
      if (v23 == v37() && v25 == v26)
      {
      }

      else
      {
        v28 = sub_23D46C1B8();

        if ((v28 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v30 = (*(*v21 + 512))(v29);
      v32 = v31;
      if (v30 == (*(*a1 + 512))() && v32 == v33)
      {

LABEL_26:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
        sub_23D46BC88();
      }

      v35 = sub_23D46C1B8();

      if (v35)
      {
        goto LABEL_26;
      }

LABEL_4:

      ++v20;
      if (v22 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
}

unint64_t sub_23D4451F8()
{
  result = qword_27E2DA910;
  if (!qword_27E2DA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA910);
  }

  return result;
}

void sub_23D44524C()
{
  v1 = v0;
  v2 = sub_23D46B7D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v179 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v179 - v11;
  type metadata accessor for AFUSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v205 = [objc_opt_self() bundleForClass_];
  v14 = [v205 resourceURL];
  if (!v14)
  {
    v27 = v205;

    return;
  }

  v15 = v14;
  sub_23D46B7C8();

  (*(v3 + 32))(v12, v10, v2);
  v16 = *MEMORY[0x277CE5460];
  sub_23D46BDD8();
  sub_23D46B7B8();

  v17 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v18 = sub_23D46B7A8();
  v19 = [v17 initWithContentsOfURL_];

  v22 = *(v3 + 8);
  v21 = v3 + 8;
  v20 = v22;
  v22(v7, v2);
  if (!v19)
  {
    v20(v12, v2);
LABEL_18:

    return;
  }

  v204 = v20;
  v201 = v1;
  v23 = *MEMORY[0x277CE54D0];
  *&v211 = sub_23D46BDD8();
  *(&v211 + 1) = v24;
  v25 = sub_23D46C1C8();
  v203 = v19;
  v26 = [v19 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v26)
  {
    sub_23D46BFE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v211 = 0u;
    v212 = 0u;
  }

  v213 = v211;
  v214 = v212;
  if (!*(&v212 + 1))
  {
    v204(v12, v2);

LABEL_16:
    sub_23D4519AC(&v213, &qword_27E2DA918, &qword_23D46D468);
    return;
  }

  v202 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA920, &qword_23D46D470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v204(v12, v202);

    goto LABEL_18;
  }

  v28 = v207;
  v29 = *MEMORY[0x277CE5480];
  sub_23D46BDD8();
  sub_23D46B7B8();

  v30 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v31 = sub_23D46B7A8();
  v32 = [v30 initWithContentsOfURL_];

  v33 = v7;
  v34 = v32;
  v35 = v202;
  v36 = v204;
  v204(v33, v202);
  if (!v34)
  {
    v36(v12, v35);

    return;
  }

  v199 = v21;
  v198 = v12;
  v200 = v28;
  *&v211 = sub_23D46BDD8();
  *(&v211 + 1) = v37;
  v38 = [v34 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v38)
  {
    sub_23D46BFE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v211 = 0u;
    v212 = 0u;
  }

  v39 = v203;
  v40 = v204;
  v41 = v200;
  v213 = v211;
  v214 = v212;
  if (!*(&v212 + 1))
  {
    v204(v198, v202);

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v40(v198, v202);

    goto LABEL_18;
  }

  v195 = v34;
  v196 = v207;
  v42 = *(v41 + 2);
  if (v42)
  {
    v43 = (v200 + 32);
    v44 = *MEMORY[0x277CE54C8];
    v197 = *MEMORY[0x277CE54D8];
    v194 = *MEMORY[0x277CE54B8];
    v193 = *MEMORY[0x277CE5490];
    v191 = *MEMORY[0x277CE54C0];
    v190 = *MEMORY[0x277CE5518];
    v189 = *MEMORY[0x277CE54A8];
    v188 = *MEMORY[0x277CE5498];
    v187 = *MEMORY[0x277CE54A0];
    while (1)
    {
      v45 = *v43;
      v46 = sub_23D46BDD8();
      v48 = v47;
      if (!*(v45 + 16))
      {
        goto LABEL_28;
      }

      v49 = v46;

      v50 = sub_23D450300(v49, v48);
      v52 = v51;

      if ((v52 & 1) == 0)
      {
        goto LABEL_28;
      }

      *&v211 = *(*(v45 + 56) + 8 * v50);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_28;
      }

      v53 = v44;
      v54 = v213;
      v55 = sub_23D46BDD8();
      if (!*(v45 + 16))
      {
        goto LABEL_49;
      }

      v57 = sub_23D450300(v55, v56);
      v59 = v58;

      if ((v59 & 1) == 0)
      {
        goto LABEL_50;
      }

      *&v211 = *(*(v45 + 56) + 8 * v57);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_28;
      }

      v60 = v213;
      v61 = sub_23D46BDD8();
      if (!*(v45 + 16))
      {

        goto LABEL_28;
      }

      v192 = *(&v60 + 1);
      v186 = v60;
      v63 = sub_23D450300(v61, v62);
      v65 = v64;

      if ((v65 & 1) == 0)
      {
LABEL_49:

        goto LABEL_50;
      }

      *&v211 = *(*(v45 + 56) + 8 * v63);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_51;
      }

      v66 = v213;
      v67 = sub_23D46BDD8();
      if (!*(v45 + 16))
      {

        goto LABEL_50;
      }

      v185 = v66;
      v69 = sub_23D450300(v67, v68);
      v71 = v70;

      if ((v71 & 1) == 0)
      {

LABEL_50:

LABEL_51:

        v44 = v53;
        goto LABEL_29;
      }

      *&v211 = *(*(v45 + 56) + 8 * v69);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        v44 = v53;
        goto LABEL_29;
      }

      v182 = *(&v213 + 1);
      v180 = v213;
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
      v72 = sub_23D46BC78();
      v181 = (*(*v213 + 608))(v72);
      v74 = v73;
      v183 = v73;

      *&v213 = v181;
      *(&v213 + 1) = v74;
      *&v211 = sub_23D46BDD8();
      *(&v211 + 1) = v75;
      v181 = sub_23D43B690();
      v76 = sub_23D46BFC8();

      if (v76)
      {
        v77 = sub_23D46BC78();
        v78 = (*(*v213 + 608))(v77);
        v80 = v79;

        *&v213 = v78;
        *(&v213 + 1) = v80;
        *&v211 = sub_23D46BDD8();
        *(&v211 + 1) = v81;
        v82 = sub_23D46BFC8();

        if (v82)
        {
          goto LABEL_61;
        }
      }

      v83 = sub_23D46BDD8();
      if (!*(v45 + 16))
      {
        break;
      }

      v85 = sub_23D450300(v83, v84);
      v87 = v86;

      if ((v87 & 1) == 0)
      {
        goto LABEL_61;
      }

      v88 = *(*(v45 + 56) + 8 * v85);
      swift_unknownObjectRetain();

      *&v213 = v88;
      if ((swift_dynamicCast() & 1) != 0 && v211 == 1)
      {

        goto LABEL_51;
      }

LABEL_62:
      v183 = type metadata accessor for AccessoryDetailView();
      v89 = (v201 + v183[7]);
      v90 = v89[1];
      *&v213 = *v89;
      v91 = v213;
      *(&v213 + 1) = v90;

      v179[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
      sub_23D46BBC8();
      v92 = v207;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181 = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v92 = sub_23D450378(0, *(v92 + 2) + 1, 1, v92);
      }

      v95 = *(v92 + 2);
      v94 = *(v92 + 3);
      if (v95 >= v94 >> 1)
      {
        v92 = sub_23D450378((v94 > 1), v95 + 1, 1, v92);
      }

      *(v92 + 2) = v95 + 1;
      v96 = &v92[64 * v95];
      *(v96 + 2) = v54;
      v97 = v192;
      *(v96 + 6) = v186;
      *(v96 + 7) = v97;
      v98 = *(&v185 + 1);
      *(v96 + 8) = v185;
      *(v96 + 9) = v98;
      v99 = v182;
      *(v96 + 10) = v180;
      *(v96 + 11) = v99;
      *&v211 = v91;
      *(&v211 + 1) = v181;
      v210 = v92;
      sub_23D46BBD8();

      v100 = sub_23D46BC78();
      v101 = (*(*v213 + 752))(v100);
      v103 = v102;
      v104 = v186;

      if (v104 == v101 && v97 == v103)
      {
LABEL_68:

        v44 = v53;
        v104 = v186;
LABEL_70:
        v106 = (v201 + v183[5]);
        v107 = *v106;
        v108 = *(v106 + 2);
        v213 = v107;
        *&v214 = v108;
        *&v211 = v104;
        *(&v211 + 1) = v192;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
        sub_23D46BBD8();
        goto LABEL_71;
      }

      v105 = sub_23D46C1B8();

      v44 = v53;
      if (v105)
      {
        goto LABEL_70;
      }

      v117 = sub_23D46BC78();
      v118 = (*(*v213 + 752))(v117);
      v120 = v119;

      if (v118 == sub_23D46BDD8() && v120 == v121)
      {

        v104 = v186;
      }

      else
      {
        v127 = sub_23D46C1B8();

        v104 = v186;
        if ((v127 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      if (v104 == sub_23D46BDD8() && v192 == v128)
      {
        goto LABEL_68;
      }

      v104 = v186;
      v129 = sub_23D46C1B8();

      v44 = v53;
      if (v129)
      {
        goto LABEL_70;
      }

LABEL_71:
      v109 = sub_23D46BC78();
      v110 = (*(*v213 + 896))(v109);
      v112 = v111;

      if (v104 == v110 && v192 == v112)
      {
        goto LABEL_73;
      }

      v113 = sub_23D46C1B8();

      if (v113)
      {
        goto LABEL_75;
      }

      v122 = sub_23D46BC78();
      v123 = (*(*v213 + 896))(v122);
      v125 = v124;

      if (v123 == sub_23D46BDD8() && v125 == v126)
      {
      }

      else
      {
        v130 = sub_23D46C1B8();

        if ((v130 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      if (v186 == sub_23D46BDD8() && v192 == v131)
      {
        v44 = v53;
LABEL_73:

LABEL_75:
        v114 = (v201 + v183[6]);
        v115 = *v114;
        v116 = *(v114 + 2);
        v213 = v115;
        *&v214 = v116;
        *&v211 = v186;
        *(&v211 + 1) = v192;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
        sub_23D46BBD8();
        goto LABEL_29;
      }

      v132 = sub_23D46C1B8();

      v44 = v53;
      if (v132)
      {
        goto LABEL_75;
      }

LABEL_28:

LABEL_29:
      ++v43;
      if (!--v42)
      {
        goto LABEL_93;
      }
    }

LABEL_61:

    goto LABEL_62;
  }

LABEL_93:

  v133 = *(v196 + 2);
  v134 = v201;
  if (v133)
  {
    v135 = *MEMORY[0x277CE54C8];
    v136 = (v196 + 32);
    v200 = *MEMORY[0x277CE54D8];
    v197 = *MEMORY[0x277CE54B8];
    do
    {
      v137 = *v136;
      v138 = sub_23D46BDD8();
      v140 = v139;
      if (*(v137 + 16))
      {
        v141 = v138;

        v142 = sub_23D450300(v141, v140);
        v144 = v143;

        if (v144)
        {
          *&v211 = *(*(v137 + 56) + 8 * v142);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v145 = v213;
            v146 = sub_23D46BDD8();
            if (*(v137 + 16))
            {
              v148 = sub_23D450300(v146, v147);
              v150 = v149;

              if (v150)
              {
                *&v211 = *(*(v137 + 56) + 8 * v148);
                swift_unknownObjectRetain();
                if (swift_dynamicCast())
                {
                  v151 = v213;
                  v152 = sub_23D46BDD8();
                  if (*(v137 + 16))
                  {
                    v196 = *(&v151 + 1);
                    v194 = v151;
                    v154 = sub_23D450300(v152, v153);
                    v156 = v155;

                    if (v156)
                    {
                      v157 = *(*(v137 + 56) + 8 * v154);
                      swift_unknownObjectRetain();

                      v210 = v157;
                      if (swift_dynamicCast())
                      {
                        v192 = *(&v213 + 1);
                        v193 = v213;
                        v158 = (v201 + *(type metadata accessor for AccessoryDetailView() + 36));
                        v160 = *v158;
                        v159 = v158[1];
                        *&v211 = *v158;
                        *(&v211 + 1) = v159;
                        v191 = v159;

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
                        sub_23D46BBC8();
                        v161 = v209;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v161 = sub_23D450378(0, *(v161 + 2) + 1, 1, v161);
                        }

                        v163 = *(v161 + 2);
                        v162 = *(v161 + 3);
                        v164 = v163 + 1;
                        if (v163 >= v162 >> 1)
                        {
                          v190 = v163 + 1;
                          v168 = sub_23D450378((v162 > 1), v163 + 1, 1, v161);
                          v164 = v190;
                          v161 = v168;
                        }

                        *(v161 + 2) = v164;
                        v165 = &v161[64 * v163];
                        *(v165 + 2) = v145;
                        v166 = v196;
                        *(v165 + 6) = v194;
                        *(v165 + 7) = v166;
                        v167 = v192;
                        *(v165 + 8) = v193;
                        *(v165 + 9) = v167;
                        *(v165 + 10) = 0;
                        *(v165 + 11) = 0xE000000000000000;
                        v206 = v161;
                        v207 = v160;
                        v208 = v191;
                        sub_23D46BBD8();

                        goto LABEL_114;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }
                }
              }

LABEL_114:

              v134 = v201;
              goto LABEL_96;
            }
          }
        }
      }

LABEL_96:
      ++v136;
      --v133;
    }

    while (v133);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v169 = sub_23D46BC78();
  v170 = (*(*v213 + 1040))(v169);

  v171 = v202;
  if (v170 < 0)
  {
    __break(1u);
  }

  else
  {
    v172 = AUSettingsPallasAudienceTypeToString();
    v173 = sub_23D46BDD8();
    v175 = v174;

    v176 = (v134 + *(type metadata accessor for AccessoryDetailView() + 32));
    v177 = v176[1];
    v178 = v176[2];
    *&v213 = *v176;
    *(&v213 + 1) = v177;
    *&v214 = v178;
    *&v211 = v173;
    *(&v211 + 1) = v175;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBD8();

    v204(v198, v171);
  }
}

uint64_t sub_23D4468B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryDetailView();
  v5 = v4 - 8;
  v27 = *(v4 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA928, &qword_23D46D478);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA930, &qword_23D46D480);
  sub_23D43B810(&qword_27E2DA938, &qword_27E2DA930, &qword_23D46D480);
  sub_23D46BA98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v12 = sub_23D46BC78();
  (*(*v31 + 416))(v12);

  sub_23D43B810(&qword_27E2DA940, &qword_27E2DA928, &qword_23D46D478);
  sub_23D46BB28();

  (*(v8 + 8))(v11, v7);
  v13 = sub_23D46BCE8();
  v14 = (v1 + *(v5 + 28));
  v15 = *v14;
  v16 = *(v14 + 2);
  v31 = v15;
  v32 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  v17 = v29;
  v18 = v30;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA948, &qword_23D46D488) + 36));
  *v19 = v13;
  v19[1] = v17;
  v19[2] = v18;
  v20 = v2;
  v21 = v26;
  sub_23D45048C(v20, v26);
  v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v23 = swift_allocObject();
  sub_23D4504F0(v21, v23 + v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA950, &unk_23D46D490);
  v25 = (a1 + *(result + 36));
  *v25 = sub_23D450554;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  return result;
}

uint64_t sub_23D446C30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v85 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9A8, ">4");
  v3 = *(*(v80 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v80);
  v89 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v92 = &v70[-v6];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9B0, &qword_23D46D638);
  v83 = *(v84 - 8);
  v7 = *(v83 + 64);
  v8 = MEMORY[0x28223BE20](v84);
  v82 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v91 = &v70[-v10];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9B8, &qword_23D46D640);
  v81 = *(v88 - 8);
  v11 = *(v81 + 64);
  v12 = MEMORY[0x28223BE20](v88);
  v87 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v90 = &v70[-v14];
  sub_23D46BF08();
  v79 = sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9C0, &qword_23D46D648);
  sub_23D43B810(&qword_27E2DA9C8, &qword_27E2DA9C0, &qword_23D46D648);
  v16 = sub_23D46BC48();
  v78 = v70;
  MEMORY[0x28223BE20](v16);
  v77 = &v70[-32];
  v76 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D46BA38();
  v73 = sub_23D46BAB8();
  v72 = v17;
  v71 = v18;
  v75 = v19;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v20 = sub_23D46BC78();
  v21 = (*(*v93 + 1280))(v20);

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v23 = sub_23D46BC78();
    v24 = (*(*v93 + 1328))(v23);

    v22 = v24 ^ 1;
  }

  v25 = sub_23D469394(v22 & 1);
  sub_23D46BA38();
  v26 = sub_23D46BAB8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = swift_getKeyPath();
  v34 = sub_23D46BC78();
  v35 = (*(*v93 + 1280))(v34);

  v86 = a1;
  v36 = 1;
  if ((v35 & 1) == 0)
  {
    v37 = sub_23D46BC78();
    v36 = (*(*v93 + 1328))(v37);
  }

  v38 = sub_23D469394(v36 & 1);
  v109 = v71 & 1;
  v39 = v25 & 1;
  v108 = v71 & 1;
  v40 = v30 & 1;
  v107 = v30 & 1;
  v41 = v30 & 1;
  v42 = v73;
  v43 = v72;
  v93 = v73;
  v94 = v72;
  v95 = v71 & 1;
  v96 = v75;
  v97 = KeyPath;
  v98 = 1;
  v99 = v39;
  v100 = v26;
  v101 = v28;
  v102 = v41;
  v103 = v32;
  v104 = v33;
  v105 = 1;
  v106 = v38 & 1;
  sub_23D43B858(v73, v72, v71 & 1);

  sub_23D43B858(v26, v28, v40);

  sub_23D43B748(v26, v28, v40);

  sub_23D43B748(v42, v43, v109);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9D0, &qword_23D46D650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9D8, &qword_23D46D658);
  sub_23D43B810(&qword_27E2DA9E0, &qword_27E2DA9D0, &qword_23D46D650);
  sub_23D43B810(&qword_27E2DA9E8, &qword_27E2DA9D8, &qword_23D46D658);
  v44 = sub_23D46BC58();
  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9F0, &qword_23D46D660);
  sub_23D450E50();
  sub_23D46BC48();
  v45 = sub_23D46BCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v46 = sub_23D46BC78();
  v47 = (*(*v93 + 1472))(v46);
  v49 = v48;

  if (v47 || v49 != 0xE000000000000000)
  {
    v51 = sub_23D46C1B8();

    v50 = v51 ^ 1;
  }

  else
  {

    v50 = 0;
  }

  v52 = v92;
  v53 = &v92[*(v80 + 36)];
  *v53 = v45;
  v53[8] = v50 & 1;
  v54 = v81;
  v55 = *(v81 + 16);
  v56 = v87;
  v55(v87, v90, v88);
  v57 = v83;
  v58 = *(v83 + 16);
  v59 = v82;
  v60 = v84;
  v58(v82, v91, v84);
  sub_23D451944(v52, v89, &qword_27E2DA9A8, ">4");
  v61 = v85;
  v62 = v56;
  v63 = v88;
  v55(v85, v62, v88);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA10, &qword_23D46D670);
  v58(&v61[*(v64 + 48)], v59, v60);
  v65 = &v61[*(v64 + 64)];
  v66 = v89;
  sub_23D451944(v89, v65, &qword_27E2DA9A8, ">4");
  sub_23D4519AC(v92, &qword_27E2DA9A8, ">4");
  v67 = *(v57 + 8);
  v67(v91, v60);
  v68 = *(v54 + 8);
  v68(v90, v63);
  sub_23D4519AC(v66, &qword_27E2DA9A8, ">4");
  v67(v59, v60);
  v68(v87, v63);
}

uint64_t sub_23D447728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v390 = a2;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA68, &qword_23D46D720);
  v3 = *(*(v399 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v399);
  v391 = &v354[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v386 = &v354[-v7];
  MEMORY[0x28223BE20](v6);
  v388 = &v354[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA70, &qword_23D46D728);
  v383 = *(v9 - 8);
  v384 = v9;
  v10 = *(v383 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v354[-v11];
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA78, &qword_23D46D730);
  v13 = *(*(v415 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v415);
  v389 = &v354[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v410 = &v354[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v407 = &v354[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v381 = &v354[-v21];
  MEMORY[0x28223BE20](v20);
  v406 = &v354[-v22];
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA80, &qword_23D46D738);
  v23 = *(*(v396 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v396);
  v408 = &v354[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v409 = &v354[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v404 = &v354[-v29];
  MEMORY[0x28223BE20](v28);
  v427 = &v354[-v30];
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA88, &qword_23D46D740);
  v31 = *(*(v413 - 8) + 64);
  MEMORY[0x28223BE20](v413);
  v414 = &v354[-v32];
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA90, &qword_23D46D748);
  v33 = *(*(v377 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v377);
  v405 = &v354[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v421 = &v354[-v36];
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA98, &qword_23D46D750);
  v37 = *(*(v395 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v395);
  v394 = &v354[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v371 = &v354[-v40];
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAA0, &qword_23D46D758);
  v41 = *(*(v370 - 8) + 64);
  MEMORY[0x28223BE20](v370);
  v374 = &v354[-v42];
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAA8, &qword_23D46D760);
  v43 = *(*(v373 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v373);
  v403 = &v354[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x28223BE20](v44);
  v372 = &v354[-v47];
  MEMORY[0x28223BE20](v46);
  v419 = &v354[-v48];
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAB0, &qword_23D46D768);
  v49 = *(*(v369 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v369);
  v402 = &v354[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v50);
  v418 = &v354[-v52];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAB8, &qword_23D46D770);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v366 = &v354[-v55];
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAC0, &qword_23D46D778);
  v56 = *(*(v365 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v365);
  v401 = &v354[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = MEMORY[0x28223BE20](v57);
  v364 = &v354[-v60];
  MEMORY[0x28223BE20](v59);
  v417 = &v354[-v61];
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAC8, &qword_23D46D780);
  v62 = *(*(v362 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v362);
  v397 = &v354[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v63);
  v426 = &v354[-v65];
  v363 = type metadata accessor for AccessoryDetailView();
  v430 = *(v363 - 8);
  v66 = *(v430 + 64);
  MEMORY[0x28223BE20](v363);
  v431 = v67;
  v434 = &v354[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v433 = *(v68 - 8);
  v69 = *(v433 + 64);
  MEMORY[0x28223BE20](v68);
  v423 = &v354[-v70];
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD0, &qword_23D46D788);
  v424 = *(v412 - 8);
  v71 = *(v424 + 64);
  MEMORY[0x28223BE20](v412);
  v411 = &v354[-v72];
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD8, &qword_23D46D790);
  v400 = *(v420 - 8);
  v73 = *(v400 + 64);
  v74 = MEMORY[0x28223BE20](v420);
  v398 = &v354[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = MEMORY[0x28223BE20](v74);
  v385 = &v354[-v77];
  MEMORY[0x28223BE20](v76);
  v416 = &v354[-v78];
  v79 = sub_23D46BF08();
  v387 = sub_23D46BEF8();
  v432 = v79;
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v382 = v12;
  v425 = v68;
  v380 = sub_23D46B9E8();
  LOBYTE(v517[0]) = 1;
  v429 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v80 = [objc_opt_self() mainBundle];
  v81 = sub_23D46B788();
  v83 = v82;

  *&v449 = v81;
  *(&v449 + 1) = v83;
  v84 = sub_23D43B690();
  v85 = sub_23D46BAC8();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v92 = sub_23D46BC78();
  v93 = (*(*v449 + 512))(v92);
  v435 = a1;
  v94 = v93;
  v96 = v95;

  *&v449 = v94;
  *(&v449 + 1) = v96;
  v428 = v84;
  v97 = sub_23D46BAC8();
  v99 = v98;
  v101 = v100;
  v89 &= 1u;
  LOBYTE(v449) = v89;
  LOBYTE(v438) = v89;
  LOBYTE(v567[0]) = 1;
  LOBYTE(v96) = v102 & 1;
  LOBYTE(v446[0]) = v102 & 1;
  LODWORD(v422) = v102 & 1;
  sub_23D43B858(v85, v87, v89);

  sub_23D43B858(v97, v99, v96);

  sub_23D43B748(v97, v99, v96);

  sub_23D43B748(v85, v87, v449);

  *(&v464 + 1) = v438;
  DWORD1(v464) = *(&v438 + 3);
  *(&v465 + 9) = v567[0];
  HIDWORD(v465) = *(v567 + 3);
  DWORD1(v467) = *(v446 + 3);
  *(&v467 + 1) = v446[0];
  *&v463 = v85;
  *(&v463 + 1) = v87;
  v468[0] = v85;
  v468[1] = v87;
  LOBYTE(v464) = v89;
  *(&v464 + 1) = v91;
  *&v465 = 0;
  BYTE8(v465) = 1;
  *&v466 = v97;
  *(&v466 + 1) = v99;
  LOBYTE(v467) = v422;
  *(&v467 + 1) = v101;
  v469 = v89;
  *&v470[3] = *(&v438 + 3);
  *v470 = v438;
  v471 = v91;
  v472 = 0;
  v473 = 1;
  *v474 = v567[0];
  *&v474[3] = *(v567 + 3);
  v475 = v97;
  v476 = v99;
  v103 = v435;
  v477 = v422;
  *&v478[3] = *(v446 + 3);
  *v478 = v446[0];
  v479 = v101;
  sub_23D451944(&v463, &v449, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v468, &qword_27E2DAAE0, &qword_23D46D798);
  *&v462[23] = v464;
  *&v462[39] = v465;
  *&v462[55] = v466;
  *&v462[71] = v467;
  *&v462[7] = v463;
  v379 = LOBYTE(v517[0]);
  v104 = v423;
  v105 = v425;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v106 = *(v433 + 8);
  v433 += 8;
  v422 = v106;
  v106(v104, v105);
  v107 = v411;
  sub_23D46BC28();
  v108 = sub_23D46BC78();
  LOBYTE(v84) = (*(*v449 + 560))(v108);

  LOBYTE(v449) = v84 & 1;
  v109 = v434;
  sub_23D45048C(v103, v434);
  v110 = (*(v430 + 80) + 16) & ~*(v430 + 80);
  v430 = *(v430 + 80);
  v429 = v110 + v431;
  v111 = swift_allocObject();
  v431 = v110;
  sub_23D4504F0(v109, v111 + v110);
  v112 = sub_23D43B810(&qword_27E2DAAE8, &qword_27E2DAAD0, &qword_23D46D788);
  v113 = v412;
  v393 = v112;
  sub_23D46BB58();

  v114 = *(v424 + 8);
  v424 += 8;
  v392 = v114;
  v114(v107, v113);
  v378 = sub_23D46B9E8();
  LOBYTE(v517[0]) = 1;
  v376 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v115 = [objc_opt_self() mainBundle];
  v116 = sub_23D46B788();
  v118 = v117;

  *&v449 = v116;
  *(&v449 + 1) = v118;
  v119 = sub_23D46BAC8();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v126 = sub_23D46BC78();
  v127 = (*(*v449 + 464))(v126);
  v129 = v128;

  *&v449 = v127;
  *(&v449 + 1) = v129;
  v130 = sub_23D46BAC8();
  v132 = v131;
  v134 = v133;
  v123 &= 1u;
  LOBYTE(v449) = v123;
  LOBYTE(v438) = v123;
  LOBYTE(v567[0]) = 1;
  LOBYTE(v129) = v135 & 1;
  LOBYTE(v446[0]) = v135 & 1;
  v375 = v135 & 1;
  sub_23D43B858(v119, v121, v123);

  sub_23D43B858(v130, v132, v129);

  sub_23D43B748(v130, v132, v129);

  sub_23D43B748(v119, v121, v449);

  *(&v481 + 1) = v438;
  DWORD1(v481) = *(&v438 + 3);
  *(&v482 + 9) = v567[0];
  HIDWORD(v482) = *(v567 + 3);
  DWORD1(v484) = *(v446 + 3);
  *(&v484 + 1) = v446[0];
  *&v480 = v119;
  *(&v480 + 1) = v121;
  v485[0] = v119;
  v485[1] = v121;
  LOBYTE(v481) = v123;
  *(&v481 + 1) = v125;
  *&v482 = 0;
  BYTE8(v482) = 1;
  *&v483 = v130;
  *(&v483 + 1) = v132;
  LOBYTE(v484) = v375;
  *(&v484 + 1) = v134;
  v486 = v123;
  *&v487[3] = *(&v438 + 3);
  *v487 = v438;
  v488 = v125;
  v489 = 0;
  v490 = 1;
  *v491 = v567[0];
  *&v491[3] = *(v567 + 3);
  v492 = v130;
  v493 = v132;
  v494 = v375;
  *&v495[3] = *(v446 + 3);
  *v495 = v446[0];
  v496 = v134;
  sub_23D451944(&v480, &v449, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v485, &qword_27E2DAAE0, &qword_23D46D798);
  *&v461[23] = v481;
  *&v461[39] = v482;
  *&v461[55] = v483;
  *&v461[71] = v484;
  *&v461[7] = v480;
  v375 = LOBYTE(v517[0]);
  v376 = sub_23D46B9E8();
  LOBYTE(v517[0]) = 1;
  v368 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v136 = [objc_opt_self() mainBundle];
  v137 = sub_23D46B788();
  v139 = v138;

  *&v449 = v137;
  *(&v449 + 1) = v139;
  v140 = sub_23D46BAC8();
  v142 = v141;
  v144 = v143;
  v146 = v145;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v147 = sub_23D46BC78();
  v148 = (*(*v449 + 608))(v147);
  v150 = v149;

  *&v449 = v148;
  *(&v449 + 1) = v150;
  v151 = sub_23D46BAC8();
  v153 = v152;
  v155 = v154;
  v144 &= 1u;
  LOBYTE(v449) = v144;
  LOBYTE(v438) = v144;
  LOBYTE(v567[0]) = 1;
  LOBYTE(v150) = v156 & 1;
  LOBYTE(v446[0]) = v156 & 1;
  v367 = v156 & 1;
  sub_23D43B858(v140, v142, v144);

  sub_23D43B858(v151, v153, v150);

  sub_23D43B748(v151, v153, v150);

  sub_23D43B748(v140, v142, v449);

  *(&v498 + 1) = v438;
  DWORD1(v498) = *(&v438 + 3);
  *(&v499 + 9) = v567[0];
  HIDWORD(v499) = *(v567 + 3);
  DWORD1(v501) = *(v446 + 3);
  *(&v501 + 1) = v446[0];
  *&v497 = v140;
  *(&v497 + 1) = v142;
  v502[0] = v140;
  v502[1] = v142;
  LOBYTE(v498) = v144;
  *(&v498 + 1) = v146;
  *&v499 = 0;
  BYTE8(v499) = 1;
  *&v500 = v151;
  *(&v500 + 1) = v153;
  LOBYTE(v501) = v367;
  *(&v501 + 1) = v155;
  v503 = v144;
  *&v504[3] = *(&v438 + 3);
  *v504 = v438;
  v505 = v146;
  v506 = 0;
  v507 = 1;
  *v508 = v567[0];
  *&v508[3] = *(v567 + 3);
  v509 = v151;
  v510 = v153;
  v511 = v367;
  *&v512[3] = *(v446 + 3);
  *v512 = v446[0];
  v513 = v155;
  sub_23D451944(&v497, &v449, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v502, &qword_27E2DAAE0, &qword_23D46D798);
  *&v460[23] = v498;
  *&v460[39] = v499;
  *&v460[55] = v500;
  *&v460[71] = v501;
  *&v460[7] = v497;
  v367 = LOBYTE(v517[0]);
  v368 = sub_23D46B9E8();
  LOBYTE(v552[0]) = 1;
  v361 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v157 = [objc_opt_self() mainBundle];
  v158 = sub_23D46B788();
  v160 = v159;

  *&v449 = v158;
  *(&v449 + 1) = v160;
  v161 = sub_23D46BAC8();
  v163 = v162;
  LOBYTE(v160) = v164;
  v358 = v165;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v166 = sub_23D46BC78();
  v167 = (*(*v449 + 704))(v166);
  v169 = v168;

  *&v449 = v167;
  *(&v449 + 1) = v169;
  v170 = sub_23D46BAC8();
  v172 = v171;
  LOBYTE(v157) = v173;
  v175 = v174;
  KeyPath = swift_getKeyPath();
  v177 = swift_getKeyPath();
  LOBYTE(v446[0]) = v160 & 1;
  LOBYTE(v517[0]) = 1;
  *&v438 = v170;
  *(&v438 + 1) = v172;
  LOBYTE(v439[0]) = v157 & 1;
  *(&v439[0] + 1) = v175;
  v439[1] = KeyPath;
  LOBYTE(v439[2]) = 0;
  *(&v439[2] + 1) = v177;
  LOBYTE(v439[3]) = 2;
  *&v568[7] = v438;
  v568[71] = 2;
  *&v568[55] = v439[2];
  *&v568[39] = KeyPath;
  *&v568[23] = v439[0];
  LODWORD(v359) = v160 & 1;
  v360 = 1;
  *&v449 = v170;
  *(&v449 + 1) = v172;
  LOBYTE(v450[0]) = v157 & 1;
  *(&v450[0] + 1) = v175;
  v450[1] = KeyPath;
  LOBYTE(v450[2]) = 0;
  *(&v450[2] + 1) = v177;
  LOBYTE(v450[3]) = 2;
  sub_23D43B858(v161, v163, v160 & 1);
  v178 = v358;

  sub_23D451944(&v438, v567, &qword_27E2DABE8, &qword_23D46D988);
  sub_23D4519AC(&v449, &qword_27E2DABE8, &qword_23D46D988);
  sub_23D43B748(v161, v163, v160 & 1);

  *&v516[25] = *&v568[16];
  *&v516[41] = *&v568[32];
  *&v516[57] = *&v568[48];
  *&v516[9] = *v568;
  v526 = *&v568[48];
  v525 = *&v568[32];
  v524 = *&v568[16];
  *&v514 = v161;
  *(&v514 + 1) = v163;
  LOBYTE(v515) = v359;
  *(&v515 + 1) = v438;
  DWORD1(v515) = *(&v438 + 3);
  *(&v515 + 1) = v178;
  *v516 = 0;
  v516[8] = v360;
  *&v516[73] = *&v568[64];
  v517[0] = v161;
  v517[1] = v163;
  v518 = v359;
  *&v519[3] = *(&v438 + 3);
  *v519 = v438;
  v520 = v178;
  v521 = 0;
  v522 = v360;
  v527 = *&v568[64];
  v523 = *v568;
  sub_23D451944(&v514, &v449, &qword_27E2DAAF0, &qword_23D46D7C8);
  sub_23D4519AC(v517, &qword_27E2DAAF0, &qword_23D46D7C8);
  *&v459[71] = *&v516[32];
  *&v459[87] = *&v516[48];
  *&v459[103] = *&v516[64];
  *&v459[7] = v514;
  *&v459[23] = v515;
  *&v459[39] = *v516;
  v459[119] = v516[80];
  *&v459[55] = *&v516[16];
  v360 = LOBYTE(v552[0]);
  v361 = sub_23D46B9E8();
  LOBYTE(v552[0]) = 1;
  v359 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v179 = [objc_opt_self() mainBundle];
  v180 = sub_23D46B788();
  v182 = v181;

  *&v449 = v180;
  *(&v449 + 1) = v182;
  v183 = sub_23D46BAC8();
  v185 = v184;
  v187 = v186;
  v189 = v188;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v190 = sub_23D46BC78();
  v191 = (*(*v449 + 656))(v190);
  v193 = v192;

  *&v449 = v191;
  *(&v449 + 1) = v193;
  v194 = sub_23D46BAC8();
  v196 = v195;
  v198 = v197;
  v187 &= 1u;
  LOBYTE(v449) = v187;
  LOBYTE(v438) = v187;
  LOBYTE(v567[0]) = 1;
  LOBYTE(v193) = v199 & 1;
  LOBYTE(v446[0]) = v199 & 1;
  LODWORD(v358) = v199 & 1;
  sub_23D43B858(v183, v185, v187);

  sub_23D43B858(v194, v196, v193);

  sub_23D43B748(v194, v196, v193);

  sub_23D43B748(v183, v185, v449);

  *(&v529 + 1) = v438;
  DWORD1(v529) = *(&v438 + 3);
  *(&v530 + 9) = v567[0];
  HIDWORD(v530) = *(v567 + 3);
  DWORD1(v532) = *(v446 + 3);
  *(&v532 + 1) = v446[0];
  *&v528 = v183;
  *(&v528 + 1) = v185;
  v533[0] = v183;
  v533[1] = v185;
  LOBYTE(v529) = v187;
  *(&v529 + 1) = v189;
  *&v530 = 0;
  BYTE8(v530) = 1;
  *&v531 = v194;
  *(&v531 + 1) = v196;
  LOBYTE(v532) = v358;
  *(&v532 + 1) = v198;
  v534 = v187;
  *&v535[3] = *(&v438 + 3);
  *v535 = v438;
  v536 = v189;
  v537 = 0;
  v538 = 1;
  *v539 = v567[0];
  *&v539[3] = *(v567 + 3);
  v540 = v194;
  v541 = v196;
  v542 = v358;
  *&v543[3] = *(v446 + 3);
  *v543 = v446[0];
  v544 = v198;
  sub_23D451944(&v528, &v449, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v533, &qword_27E2DAAE0, &qword_23D46D798);
  *&v458[23] = v529;
  *&v458[39] = v530;
  *&v458[55] = v531;
  *&v458[71] = v532;
  *&v458[7] = v528;
  LODWORD(v359) = LOBYTE(v552[0]);
  v358 = sub_23D46B9E8();
  LOBYTE(v455[0]) = 1;
  v357 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v200 = [objc_opt_self() mainBundle];
  v201 = sub_23D46B788();
  v203 = v202;

  *&v449 = v201;
  *(&v449 + 1) = v203;
  v204 = sub_23D46BAC8();
  v206 = v205;
  v208 = v207;
  v210 = v209;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v211 = sub_23D46BC78();
  v212 = (*(*v449 + 1184))(v211);
  v214 = v213;

  *&v449 = v212;
  *(&v449 + 1) = v214;
  v215 = sub_23D46BAC8();
  v217 = v216;
  LOBYTE(v212) = v218;
  v220 = v219;
  v432 = sub_23D46BB98();
  v428 = sub_23D46BB68();
  v356 = swift_getKeyPath();
  v208 &= 1u;
  LOBYTE(v449) = v208;
  LOBYTE(v438) = v208;
  LOBYTE(v567[0]) = 1;
  LOBYTE(v212) = v212 & 1;
  LOBYTE(v446[0]) = v212;
  v355 = v212;
  sub_23D43B858(v204, v206, v208);

  sub_23D43B858(v215, v217, v212);

  sub_23D43B748(v215, v217, v212);

  sub_23D43B748(v204, v206, v449);

  *(&v546 + 1) = v438;
  *(&v547 + 9) = v567[0];
  DWORD1(v549) = *(v446 + 3);
  *(&v549 + 1) = v446[0];
  DWORD1(v546) = *(&v438 + 3);
  HIDWORD(v547) = *(v567 + 3);
  *&v545 = v204;
  *(&v545 + 1) = v206;
  LOBYTE(v546) = v208;
  *(&v546 + 1) = v210;
  *&v547 = 0;
  BYTE8(v547) = 1;
  *&v548 = v215;
  *(&v548 + 1) = v217;
  LOBYTE(v549) = v355;
  *(&v549 + 1) = v220;
  *&v550 = v432;
  *(&v550 + 1) = v356;
  v551 = v428;
  v552[0] = v204;
  v552[1] = v206;
  v553 = v208;
  *v554 = v438;
  *&v554[3] = *(&v438 + 3);
  v555 = v210;
  v556 = 0;
  v557 = 1;
  *&v558[3] = *(v567 + 3);
  *v558 = v567[0];
  v559 = v215;
  v560 = v217;
  v561 = v355;
  *v562 = v446[0];
  *&v562[3] = *(v446 + 3);
  v563 = v220;
  v564 = v432;
  v565 = v356;
  v566 = v428;
  sub_23D451944(&v545, &v449, &qword_27E2DAAF8, &qword_23D46D7D0);
  v221 = sub_23D4519AC(v552, &qword_27E2DAAF8, &qword_23D46D7D0);
  v432 = v354;
  *(&v457[3] + 7) = v548;
  *(&v457[4] + 7) = v549;
  *(&v457[5] + 7) = v550;
  *(&v457[6] + 7) = v551;
  *(v457 + 7) = v545;
  *(&v457[1] + 7) = v546;
  *(&v457[2] + 7) = v547;
  *(&v450[3] + 1) = v457[3];
  *(&v450[4] + 1) = v457[4];
  *(&v450[5] + 1) = v457[5];
  v450[6] = *(&v457[5] + 15);
  *(v450 + 1) = v457[0];
  *(&v450[1] + 1) = v457[1];
  v449 = v358;
  LOBYTE(v450[0]) = v455[0];
  *(&v450[2] + 1) = v457[2];
  MEMORY[0x28223BE20](v221);
  v222 = v435;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB00, &qword_23D46D7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAB08, &qword_27E2DAB00, &qword_23D46D7D8);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D46BB08();
  v567[4] = v450[3];
  v567[5] = v450[4];
  v567[6] = v450[5];
  v567[7] = v450[6];
  v567[0] = v449;
  v567[1] = v450[0];
  v567[2] = v450[1];
  v567[3] = v450[2];
  sub_23D4519AC(v567, &qword_27E2DAB00, &qword_23D46D7D8);
  v223 = v425;
  v224 = sub_23D46BC78();
  v225 = (*(*v449 + 1184))(v224);
  v227 = v226;

  if (v225 || v227 != 0xE000000000000000)
  {
    v229 = sub_23D46C1B8();

    v228 = v229 ^ 1;
  }

  else
  {

    v228 = 0;
  }

  v426[*(v362 + 36)] = sub_23D469394(v228 & 1) & 1;
  v230 = sub_23D46B9E8();
  v231 = v366;
  *v366 = v230;
  *(v231 + 8) = 0;
  *(v231 + 16) = 1;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB18, &qword_23D46D7E0);
  sub_23D44C4F0(v222, v231 + *(v232 + 44));
  v233 = sub_23D46BC78();
  v234 = (*(*v449 + 1040))(v233);

  v235 = sub_23D469394(v234 != 0);
  v236 = v364;
  sub_23D45132C(v231, v364, &qword_27E2DAAB8, &qword_23D46D770);
  v236[*(v365 + 36)] = v235 & 1;
  sub_23D45132C(v236, v417, &qword_27E2DAAC0, &qword_23D46D778);
  v237 = v222 + *(v363 + 48);
  v238 = *(v237 + 8);
  LOBYTE(v438) = *v237;
  LOBYTE(v231) = v438;
  *(&v438 + 1) = v238;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  v239 = v411;
  sub_23D46BC28();
  LOBYTE(v449) = v231;
  *(&v449 + 1) = v238;
  sub_23D46BBC8();
  LOBYTE(v449) = v438;
  v240 = v434;
  sub_23D45048C(v222, v434);
  v241 = swift_allocObject();
  sub_23D4504F0(v240, v241 + v431);
  v242 = v418;
  v243 = v412;
  sub_23D46BB58();

  v392(v239, v243);
  v244 = sub_23D44CCB4();
  v242[*(v399 + 36)] = sub_23D469394(v244 & 1) & 1;
  v245 = sub_23D46BC78();
  LOBYTE(v243) = (*(*v449 + 992))(v245);

  v246 = swift_getKeyPath();
  v247 = swift_allocObject();
  *(v247 + 16) = (v243 & 1) == 0;
  v248 = &v242[*(v369 + 36)];
  *v248 = v246;
  v248[1] = sub_23D452ED8;
  v248[2] = v247;
  v249 = sub_23D46B9E8();
  v250 = v371;
  *v371 = v249;
  *(v250 + 8) = 0;
  *(v250 + 16) = 1;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB20, &qword_23D46D7E8);
  sub_23D44CDE0(v222, (v250 + *(v432 + 11)));
  v251 = sub_23D46BC78();
  v252 = (*(*v449 + 1040))(v251);

  LOBYTE(v246) = sub_23D469394(v252 != 0);
  v253 = v374;
  sub_23D45132C(v250, v374, &qword_27E2DAA98, &qword_23D46D750);
  v253[*(v370 + 36)] = v246 & 1;
  v254 = sub_23D46BC78();
  LOBYTE(v252) = (*(*v449 + 992))(v254);

  v255 = swift_getKeyPath();
  v256 = swift_allocObject();
  *(v256 + 16) = (v252 & 1) == 0;
  v257 = v372;
  sub_23D45132C(v253, v372, &qword_27E2DAAA0, &qword_23D46D758);
  v258 = &v257[*(v373 + 36)];
  *v258 = v255;
  v258[1] = sub_23D452ED8;
  v258[2] = v256;
  sub_23D45132C(v257, v419, &qword_27E2DAAA8, &qword_23D46D760);
  v259 = v423;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v422(v259, v223);
  v260 = v222;
  sub_23D46BA38();
  sub_23D46BAB8();
  v261 = v414;
  sub_23D46BCF8();
  v262 = swift_getKeyPath();
  v263 = v261 + *(v413 + 36);
  *v263 = v262;
  *(v263 + 8) = 2;
  v264 = sub_23D46BC78();
  v265 = (*(*v449 + 1136))(v264);
  v267 = v266;

  *&v449 = v265;
  *(&v449 + 1) = v267;
  v268 = v434;
  sub_23D45048C(v222, v434);
  v269 = swift_allocObject();
  sub_23D4504F0(v268, v269 + v431);
  v270 = sub_23D451570();
  v271 = v421;
  v428 = v270;
  sub_23D46BB58();

  sub_23D4519AC(v261, &qword_27E2DAA88, &qword_23D46D740);
  v272 = sub_23D44D4FC();
  v271[*(v415 + 36)] = sub_23D469394(v272 & 1) & 1;
  v273 = sub_23D46BC78();
  LOBYTE(v265) = (*(*v449 + 992))(v273);

  v274 = swift_getKeyPath();
  v275 = swift_allocObject();
  *(v275 + 16) = (v265 & 1) == 0;
  v276 = &v271[*(v377 + 36)];
  *v276 = v274;
  v276[1] = sub_23D452ED8;
  v276[2] = v275;
  v277 = sub_23D46B9E8();
  v278 = v394;
  *v394 = v277;
  *(v278 + 8) = 0;
  *(v278 + 16) = 1;
  v279 = sub_23D44D63C(v260, (v278 + *(v432 + 11)));
  MEMORY[0x28223BE20](v279);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB50, &qword_23D46D828);
  v281 = sub_23D43B810(&qword_27E2DAB58, &qword_27E2DAA98, &qword_23D46D750);
  v282 = sub_23D451690();
  v377 = v280;
  v373 = v282;
  v374 = v281;
  sub_23D46BB08();
  sub_23D4519AC(v278, &qword_27E2DAA98, &qword_23D46D750);
  v283 = sub_23D46BC78();
  v284 = (*(*v449 + 1184))(v283);
  v286 = v285;

  if (v284 || v286 != 0xE000000000000000)
  {
    v287 = sub_23D46C1B8();
  }

  else
  {

    v287 = 1;
  }

  v427[*(v396 + 36)] = sub_23D469394(v287 & 1) & 1;
  v288 = v423;
  v289 = v425;
  v290 = v435;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v422(v288, v289);
  sub_23D46BA38();
  sub_23D46BAB8();
  v291 = v414;
  sub_23D46BCF8();
  v292 = swift_getKeyPath();
  v293 = v291 + *(v413 + 36);
  *v293 = v292;
  *(v293 + 8) = 2;
  v294 = sub_23D46BC78();
  v295 = (*(*v449 + 800))(v294);
  v297 = v296;

  *&v449 = v295;
  *(&v449 + 1) = v297;
  v298 = v434;
  sub_23D45048C(v290, v434);
  v299 = swift_allocObject();
  sub_23D4504F0(v298, v299 + v431);
  v300 = v382;
  sub_23D46BB58();

  sub_23D4519AC(v291, &qword_27E2DAA88, &qword_23D46D740);
  v301 = sub_23D450088(MEMORY[0x277CE54E0]);
  v302 = 1;
  if ((v301 & 1) == 0)
  {
    v302 = sub_23D450088(MEMORY[0x277CE54A0]);
  }

  v303 = sub_23D469394(v302 & 1);
  v304 = v381;
  (*(v383 + 32))(v381, v300, v384);
  *(v304 + *(v415 + 36)) = v303 & 1;
  sub_23D45132C(v304, v406, &qword_27E2DAA78, &qword_23D46D730);
  v305 = sub_23D46B9E8();
  v306 = v394;
  *v394 = v305;
  *(v306 + 8) = 0;
  *(v306 + 16) = 1;
  v307 = sub_23D44DE70(v290, (v306 + *(v432 + 11)));
  MEMORY[0x28223BE20](v307);
  v308 = v404;
  sub_23D46BB08();
  sub_23D4519AC(v306, &qword_27E2DAA98, &qword_23D46D750);
  v309 = sub_23D44E858();
  v308[*(v396 + 36)] = sub_23D469394(v309 & 1) & 1;
  v310 = v435;
  v311 = v423;
  v312 = v425;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v422(v311, v312);
  sub_23D46BA38();
  sub_23D46BAB8();
  v313 = v414;
  sub_23D46BCF8();
  v314 = swift_getKeyPath();
  v315 = v313 + *(v413 + 36);
  *v315 = v314;
  *(v315 + 8) = 2;
  v316 = sub_23D46BC78();
  v317 = (*(*v449 + 944))(v316);
  v319 = v318;

  *&v449 = v317;
  *(&v449 + 1) = v319;
  v320 = v434;
  sub_23D45048C(v310, v434);
  v321 = swift_allocObject();
  sub_23D4504F0(v320, v321 + v431);
  v322 = v407;
  sub_23D46BB58();

  sub_23D4519AC(v313, &qword_27E2DAA88, &qword_23D46D740);
  v323 = sub_23D44EB50();
  v322[*(v415 + 36)] = sub_23D469394(v323 & 1) & 1;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v422(v311, v312);
  v324 = v411;
  sub_23D46BC28();
  v325 = sub_23D46BC78();
  LOBYTE(v317) = (*(*v449 + 1328))(v325);

  LOBYTE(v449) = v317 & 1;
  v326 = v434;
  sub_23D45048C(v310, v434);
  v327 = swift_allocObject();
  sub_23D4504F0(v326, v327 + v431);
  v328 = v385;
  v329 = v412;
  sub_23D46BB58();

  v330 = v329;
  v331 = 1;
  v392(v324, v330);
  v332 = sub_23D46BC78();
  LOBYTE(v317) = (*(*v449 + 1280))(v332);

  if ((v317 & 1) == 0)
  {
    v333 = sub_23D46BC78();
    v331 = (*(*v449 + 1328))(v333);
  }

  v334 = sub_23D469394(v331 & 1);
  v335 = v400;
  v336 = v386;
  (*(v400 + 32))(v386, v328, v420);
  *(v336 + *(v399 + 36)) = v334 & 1;
  v337 = v388;
  sub_23D45132C(v336, v388, &qword_27E2DAA68, &qword_23D46D720);
  v444 = v380;
  v445[0] = v379;
  *&v445[33] = *&v462[32];
  *&v445[49] = *&v462[48];
  *&v445[65] = *&v462[64];
  *&v445[80] = *&v462[79];
  *&v445[1] = *v462;
  *&v445[17] = *&v462[16];
  v446[0] = &v444;
  v338 = v398;
  (*(v335 + 16))();
  *&v443[33] = *&v461[32];
  *&v443[49] = *&v461[48];
  *&v443[65] = *&v461[64];
  *&v443[1] = *v461;
  *&v443[17] = *&v461[16];
  *&v441[33] = *&v460[32];
  *&v441[49] = *&v460[48];
  *&v441[65] = *&v460[64];
  *&v441[1] = *v460;
  *&v441[17] = *&v460[16];
  *(&v439[4] + 1) = *&v459[64];
  *(&v439[5] + 1) = *&v459[80];
  *(&v439[6] + 1) = *&v459[96];
  *(v439 + 1) = *v459;
  *(&v439[1] + 1) = *&v459[16];
  *(&v439[2] + 1) = *&v459[32];
  *(&v439[3] + 1) = *&v459[48];
  *&v437[33] = *&v458[32];
  *&v437[49] = *&v458[48];
  *&v437[65] = *&v458[64];
  *&v437[1] = *v458;
  v442 = v378;
  v443[0] = v375;
  *&v443[80] = *&v461[79];
  v446[1] = v338;
  v446[2] = &v442;
  v440 = v376;
  v441[0] = v367;
  *&v441[80] = *&v460[79];
  v438 = v368;
  LOBYTE(v439[0]) = v360;
  *(&v439[7] + 1) = *&v459[112];
  v446[3] = &v440;
  v446[4] = &v438;
  v436 = v361;
  v437[0] = v359;
  *&v437[80] = *&v458[79];
  *&v437[17] = *&v458[16];
  v446[5] = &v436;
  v339 = v397;
  sub_23D451944(v426, v397, &qword_27E2DAAC8, &qword_23D46D780);
  v446[6] = v339;
  v340 = v401;
  sub_23D451944(v417, v401, &qword_27E2DAAC0, &qword_23D46D778);
  v446[7] = v340;
  v341 = v402;
  sub_23D451944(v418, v402, &qword_27E2DAAB0, &qword_23D46D768);
  v446[8] = v341;
  v342 = v403;
  sub_23D451944(v419, v403, &qword_27E2DAAA8, &qword_23D46D760);
  v446[9] = v342;
  v343 = v405;
  sub_23D451944(v421, v405, &qword_27E2DAA90, &qword_23D46D748);
  v446[10] = v343;
  v344 = v409;
  sub_23D451944(v427, v409, &qword_27E2DAA80, &qword_23D46D738);
  v446[11] = v344;
  v345 = v406;
  v346 = v410;
  sub_23D451944(v406, v410, &qword_27E2DAA78, &qword_23D46D730);
  v446[12] = v346;
  v347 = v404;
  v348 = v408;
  sub_23D451944(v404, v408, &qword_27E2DAA80, &qword_23D46D738);
  v446[13] = v348;
  v349 = v407;
  v350 = v389;
  sub_23D451944(v407, v389, &qword_27E2DAA78, &qword_23D46D730);
  v446[14] = v350;
  v351 = v391;
  sub_23D451944(v337, v391, &qword_27E2DAA68, &qword_23D46D720);
  v446[15] = v351;
  sub_23D44B498(v446, v390);
  sub_23D4519AC(v337, &qword_27E2DAA68, &qword_23D46D720);
  sub_23D4519AC(v349, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v347, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v345, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v427, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v421, &qword_27E2DAA90, &qword_23D46D748);
  sub_23D4519AC(v419, &qword_27E2DAAA8, &qword_23D46D760);
  sub_23D4519AC(v418, &qword_27E2DAAB0, &qword_23D46D768);
  sub_23D4519AC(v417, &qword_27E2DAAC0, &qword_23D46D778);
  sub_23D4519AC(v426, &qword_27E2DAAC8, &qword_23D46D780);
  v352 = *(v400 + 8);
  v352(v416, v420);
  sub_23D4519AC(v351, &qword_27E2DAA68, &qword_23D46D720);
  sub_23D4519AC(v350, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v408, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v410, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v409, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v405, &qword_27E2DAA90, &qword_23D46D748);
  sub_23D4519AC(v403, &qword_27E2DAAA8, &qword_23D46D760);
  sub_23D4519AC(v402, &qword_27E2DAAB0, &qword_23D46D768);
  sub_23D4519AC(v401, &qword_27E2DAAC0, &qword_23D46D778);
  sub_23D4519AC(v397, &qword_27E2DAAC8, &qword_23D46D780);
  v447[4] = *&v437[48];
  v447[5] = *&v437[64];
  v448 = *&v437[80];
  v447[0] = v436;
  v447[1] = *v437;
  v447[3] = *&v437[32];
  v447[2] = *&v437[16];
  sub_23D4519AC(v447, &qword_27E2DAB88, &qword_23D46D8B8);
  v450[5] = v439[5];
  v450[6] = v439[6];
  *(&v450[6] + 9) = *(&v439[6] + 9);
  v450[1] = v439[1];
  v450[2] = v439[2];
  v450[4] = v439[4];
  v450[3] = v439[3];
  v450[0] = v439[0];
  v449 = v438;
  sub_23D4519AC(&v449, &qword_27E2DAB90, &qword_23D46D8C0);
  v451[4] = *&v441[48];
  v451[5] = *&v441[64];
  v452 = *&v441[80];
  v451[0] = v440;
  v451[1] = *v441;
  v451[3] = *&v441[32];
  v451[2] = *&v441[16];
  sub_23D4519AC(v451, &qword_27E2DAB88, &qword_23D46D8B8);
  v453[4] = *&v443[48];
  v453[5] = *&v443[64];
  v454 = *&v443[80];
  v453[0] = v442;
  v453[1] = *v443;
  v453[3] = *&v443[32];
  v453[2] = *&v443[16];
  sub_23D4519AC(v453, &qword_27E2DAB88, &qword_23D46D8B8);
  v352(v398, v420);
  v455[4] = *&v445[48];
  v455[5] = *&v445[64];
  v456 = *&v445[80];
  v455[0] = v444;
  v455[1] = *v445;
  v455[3] = *&v445[32];
  v455[2] = *&v445[16];
  sub_23D4519AC(v455, &qword_27E2DAB88, &qword_23D46D8B8);
}

uint64_t sub_23D44B498@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v6 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v45[0] = **a1;
  v45[1] = v6;
  v45[2] = v5;
  v8 = *(v4 + 64);
  v7 = *(v4 + 80);
  v9 = *(v4 + 48);
  v46 = *(v4 + 96);
  v45[4] = v8;
  v45[5] = v7;
  v45[3] = v9;
  memmove(a2, v4, 0x68uLL);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB98, &qword_23D46D8C8);
  v11 = v10[12];
  v12 = a1[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD8, &qword_23D46D790);
  (*(*(v13 - 8) + 16))(&a2[v11], v12, v13);
  v14 = v10[16];
  v15 = a1[2];
  v16 = v15[12];
  v17 = *(v15 + 5);
  v18 = *(v15 + 3);
  v47[4] = *(v15 + 4);
  v47[5] = v17;
  v48 = v16;
  v20 = *(v15 + 1);
  v19 = *(v15 + 2);
  v47[0] = *v15;
  v47[1] = v20;
  v47[2] = v19;
  v47[3] = v18;
  memmove(&a2[v14], v15, 0x68uLL);
  v21 = v10[20];
  v22 = a1[3];
  v24 = v22[3];
  v23 = v22[4];
  v25 = *(v22 + 12);
  v49[5] = v22[5];
  v50 = v25;
  v27 = v22[1];
  v26 = v22[2];
  v49[0] = *v22;
  v49[1] = v27;
  v49[2] = v26;
  v49[3] = v24;
  v49[4] = v23;
  memmove(&a2[v21], v22, 0x68uLL);
  v28 = v10[24];
  v29 = a1[4];
  v30 = *(v29 + 121);
  v31 = v29[7];
  v32 = v29[5];
  v51[6] = v29[6];
  v52[0] = v31;
  *(v52 + 9) = v30;
  v51[0] = *v29;
  v33 = v29[4];
  v35 = v29[1];
  v34 = v29[2];
  v51[3] = v29[3];
  v51[4] = v33;
  v51[1] = v35;
  v51[2] = v34;
  v51[5] = v32;
  memmove(&a2[v28], v29, 0x89uLL);
  v36 = v10[28];
  v37 = a1[5];
  v39 = v37[1];
  v38 = v37[2];
  v53[0] = *v37;
  v53[1] = v39;
  v53[2] = v38;
  v41 = v37[4];
  v40 = v37[5];
  v42 = v37[3];
  v54 = *(v37 + 12);
  v53[4] = v41;
  v53[5] = v40;
  v53[3] = v42;
  memmove(&a2[v36], v37, 0x68uLL);
  sub_23D451944(a1[6], &a2[v10[32]], &qword_27E2DAAC8, &qword_23D46D780);
  sub_23D451944(a1[7], &a2[v10[36]], &qword_27E2DAAC0, &qword_23D46D778);
  sub_23D451944(a1[8], &a2[v10[40]], &qword_27E2DAAB0, &qword_23D46D768);
  sub_23D451944(a1[9], &a2[v10[44]], &qword_27E2DAAA8, &qword_23D46D760);
  sub_23D451944(a1[10], &a2[v10[48]], &qword_27E2DAA90, &qword_23D46D748);
  sub_23D451944(a1[11], &a2[v10[52]], &qword_27E2DAA80, &qword_23D46D738);
  sub_23D451944(a1[12], &a2[v10[56]], &qword_27E2DAA78, &qword_23D46D730);
  sub_23D451944(a1[13], &a2[v10[60]], &qword_27E2DAA80, &qword_23D46D738);
  sub_23D451944(a1[14], &a2[v10[64]], &qword_27E2DAA78, &qword_23D46D730);
  sub_23D451944(a1[15], &a2[v10[68]], &qword_27E2DAA68, &qword_23D46D720);
  sub_23D451944(v45, v44, &qword_27E2DAB88, &qword_23D46D8B8);
  sub_23D451944(v47, v44, &qword_27E2DAB88, &qword_23D46D8B8);
  sub_23D451944(v49, v44, &qword_27E2DAB88, &qword_23D46D8B8);
  sub_23D451944(v51, v44, &qword_27E2DAB90, &qword_23D46D8C0);
  return sub_23D451944(v53, v44, &qword_27E2DAB88, &qword_23D46D8B8);
}

uint64_t sub_23D44B830@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D44B8D8@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690();
  v3 = sub_23D46BAC8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_23D44BA28(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [objc_opt_self() mainBundle];
  v6 = sub_23D46B788();
  v8 = v7;

  v12[0] = v6;
  v12[1] = v8;
  sub_23D45048C(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23D4504F0(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_23D43B690();
  sub_23D46BC08();
}

uint64_t sub_23D44BC28(uint64_t a1)
{
  v2 = sub_23D46BD08();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D46BD38();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryDetailView();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_23D46BD58();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v42);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  sub_23D46BF08();
  v35 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a1 + *(v8 + 40);
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(aBlock) = v18;
  v45 = v19;
  LOBYTE(v43) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  v20 = sub_23D45393C();
  v21 = *v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  (*(*v21 + 464))(aBlock);

  v22 = *v20;

  sub_23D46BC78();
  (*(*v22 + 472))(aBlock);

  sub_23D43BDA4();
  v23 = sub_23D46BF68();
  sub_23D46BD48();
  sub_23D46BD68();
  v32 = *(v10 + 8);
  v32(v14, v42);
  v24 = v34;
  sub_23D45048C(a1, v34);
  v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_23D4504F0(v24, v26 + v25);
  v48 = sub_23D452BE0;
  v49 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_23D43C3E4;
  v47 = &block_descriptor_1;
  v27 = _Block_copy(&aBlock);
  v28 = v36;
  sub_23D46BD18();
  v43 = MEMORY[0x277D84F90];
  sub_23D452C84(&qword_27E2DA850, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
  v29 = v39;
  v30 = v41;
  sub_23D46BFF8();
  MEMORY[0x23EEE1010](v16, v28, v29, v27);
  _Block_release(v27);

  (*(v40 + 8))(v29, v30);
  (*(v37 + 8))(v28, v38);
  v32(v16, v42);
}

uint64_t sub_23D44C248(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *sub_23D45393C();
  sub_23D45048C(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23D4504F0(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  v8 = sub_23D454E90();
  (*(*v5 + 440))(v8, sub_23D452E64, v7);
}

uint64_t sub_23D44C410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v8 + 1184))(v0);
  v3 = v2;

  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xE000000000000000;
  }

  if (v4)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23D46C1B8();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_23D44C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for AccessoryDetailView();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD0, &qword_23D46D788);
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v22);
  v13 = v20 - v12;
  sub_23D46BF08();
  v20[1] = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  (*(v6 + 8))(v9, v5);
  sub_23D46BC28();
  v14 = sub_23D46BC78();
  v15 = (*(*v24 + 992))(v14);

  LOBYTE(v24) = v15 & 1;
  sub_23D45048C(a1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  sub_23D4504F0(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_23D43B810(&qword_27E2DAAE8, &qword_27E2DAAD0, &qword_23D46D788);
  v18 = v22;
  sub_23D46BB58();

  (*(v10 + 8))(v13, v18);
}

uint64_t sub_23D44C8CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D44C974@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690();
  v3 = sub_23D46BAC8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

BOOL sub_23D44CAD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v3 + 1040))(v0);

  return v1 != 0;
}

uint64_t sub_23D44CB64@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690();
  v3 = sub_23D46BAC8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_23D44CCB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v5 + 1040))(v0);

  if (v1)
  {
    v2 = sub_23D46BC78();
    (*(*v5 + 1088))(v2);

    sub_23D450570();
    v3 = sub_23D46BDB8() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_23D44CDE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AccessoryDetailView();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v5;
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB0, &qword_23D46D8D0);
  v54 = *(v56 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB8, &qword_23D46D8D8);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v43 - v13;
  sub_23D46BF08();
  v55 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = [objc_opt_self() mainBundle];
  v15 = sub_23D46B788();
  v17 = v16;

  *&v62 = v15;
  *(&v62 + 1) = v17;
  sub_23D43B690();
  v46 = sub_23D46BAC8();
  v45 = v18;
  v47 = v19;
  v48 = v20;
  v21 = (a1 + *(v3 + 32));
  v22 = v21[1];
  v24 = v21[2];
  *&v59 = *v21;
  v23 = v59;
  *(&v59 + 1) = v22;
  v60 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  sub_23D46BA38();
  *&v59 = sub_23D46BAB8();
  *(&v59 + 1) = v25;
  LOBYTE(v60) = v26 & 1;
  v61 = v27;
  MEMORY[0x28223BE20](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABC0, &qword_23D46D8E0);
  sub_23D451D9C();
  sub_23D46BC18();
  *&v62 = v23;
  *(&v62 + 1) = v22;
  v63 = v24;
  sub_23D46BBC8();
  v62 = v59;
  v28 = v51;
  sub_23D45048C(a1, v51);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_23D4504F0(v28, v30 + v29);
  sub_23D43B810(&qword_27E2DABD0, &qword_27E2DABB0, &qword_23D46D8D0);
  v31 = v58;
  v32 = v56;
  sub_23D46BB58();

  (*(v54 + 8))(v8, v32);
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 16);
  v36 = v57;
  v35(v57, v31, v53);
  v37 = v46;
  v38 = v44;
  v39 = v45;
  *v44 = v46;
  v38[1] = v39;
  LOBYTE(v29) = v47 & 1;
  *(v38 + 16) = v47 & 1;
  v38[3] = v48;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABD8, &qword_23D46D8E8);
  v35(v38 + *(v40 + 64), v36, v33);
  sub_23D43B858(v37, v39, v29);
  v41 = *(v34 + 8);

  v41(v58, v33);
  v41(v36, v33);
  sub_23D43B748(v37, v39, v29);
}

uint64_t sub_23D44D430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D44D484(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1144);

  return v4(v2, v3);
}

uint64_t sub_23D44D4FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v1 = sub_23D46BC78();
  v2 = (*(*v7 + 1040))(v1);

  if (v2)
  {
    v3 = (v0 + *(type metadata accessor for AccessoryDetailView() + 32));
    v8 = *v3;
    v9 = *(v3 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBC8();
    if (v5 == 0x41206D6F74737543 && v6 == 0xEF65636E65696475)
    {

      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = sub_23D46C1B8();
    }
  }

  return v2 & 1;
}

uint64_t sub_23D44D63C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AccessoryDetailView();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v5;
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB0, &qword_23D46D8D0);
  v54 = *(v56 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB8, &qword_23D46D8D8);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v43 - v13;
  sub_23D46BF08();
  v55 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = [objc_opt_self() mainBundle];
  v15 = sub_23D46B788();
  v17 = v16;

  *&v62 = v15;
  *(&v62 + 1) = v17;
  sub_23D43B690();
  v46 = sub_23D46BAC8();
  v45 = v18;
  v47 = v19;
  v48 = v20;
  v21 = (a1 + *(v3 + 20));
  v22 = v21[1];
  v24 = v21[2];
  *&v59 = *v21;
  v23 = v59;
  *(&v59 + 1) = v22;
  v60 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  sub_23D46BA38();
  *&v59 = sub_23D46BAB8();
  *(&v59 + 1) = v25;
  LOBYTE(v60) = v26 & 1;
  v61 = v27;
  MEMORY[0x28223BE20](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABC0, &qword_23D46D8E0);
  sub_23D451D9C();
  sub_23D46BC18();
  *&v62 = v23;
  *(&v62 + 1) = v22;
  v63 = v24;
  sub_23D46BBC8();
  v62 = v59;
  v28 = v51;
  sub_23D45048C(a1, v51);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_23D4504F0(v28, v30 + v29);
  sub_23D43B810(&qword_27E2DABD0, &qword_27E2DABB0, &qword_23D46D8D0);
  v31 = v58;
  v32 = v56;
  sub_23D46BB58();

  (*(v54 + 8))(v8, v32);
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 16);
  v36 = v57;
  v35(v57, v31, v53);
  v37 = v46;
  v38 = v44;
  v39 = v45;
  *v44 = v46;
  v38[1] = v39;
  LOBYTE(v29) = v47 & 1;
  *(v38 + 16) = v47 & 1;
  v38[3] = v48;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABD8, &qword_23D46D8E8);
  v35(v38 + *(v40 + 64), v36, v33);
  sub_23D43B858(v37, v39, v29);
  v41 = *(v34 + 8);

  v41(v58, v33);
  v41(v36, v33);
  sub_23D43B748(v37, v39, v29);
}

uint64_t sub_23D44DC8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v7 + 1184))(v0);
  v3 = v2;

  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xE000000000000000;
  }

  if (v4)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_23D46C1B8();
  }

  return v5 & 1;
}

uint64_t sub_23D44DD68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D44DDBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 808);

  return v4(v2, v3);
}

uint64_t sub_23D44DE34()
{
  if (sub_23D450088(MEMORY[0x277CE54E0]))
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_23D450088(MEMORY[0x277CE54A0]);
  }

  return v0 & 1;
}

uint64_t sub_23D44DE70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AccessoryDetailView();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v5;
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB0, &qword_23D46D8D0);
  v54 = *(v56 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB8, &qword_23D46D8D8);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v43 - v13;
  sub_23D46BF08();
  v55 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v14 = sub_23D46BC78();
  v15 = (*(*v62 + 368))(v14);
  v17 = v16;

  *&v62 = v15;
  *(&v62 + 1) = v17;
  sub_23D43B690();
  v46 = sub_23D46BAC8();
  v45 = v18;
  v47 = v19;
  v48 = v20;
  v21 = (a1 + *(v3 + 24));
  v23 = v21[1];
  v24 = v21[2];
  *&v59 = *v21;
  v22 = v59;
  *(&v59 + 1) = v23;
  v60 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  sub_23D46BA38();
  *&v59 = sub_23D46BAB8();
  *(&v59 + 1) = v25;
  LOBYTE(v60) = v26 & 1;
  v61 = v27;
  MEMORY[0x28223BE20](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABC0, &qword_23D46D8E0);
  sub_23D451D9C();
  sub_23D46BC18();
  *&v62 = v22;
  *(&v62 + 1) = v23;
  v63 = v24;
  sub_23D46BBC8();
  v62 = v59;
  v28 = v51;
  sub_23D45048C(a1, v51);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_23D4504F0(v28, v30 + v29);
  sub_23D43B810(&qword_27E2DABD0, &qword_27E2DABB0, &qword_23D46D8D0);
  v31 = v58;
  v32 = v56;
  sub_23D46BB58();

  (*(v54 + 8))(v8, v32);
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 16);
  v36 = v57;
  v35(v57, v31, v53);
  v37 = v46;
  v38 = v44;
  v39 = v45;
  *v44 = v46;
  v38[1] = v39;
  LOBYTE(v29) = v47 & 1;
  *(v38 + 16) = v47 & 1;
  v38[3] = v48;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABD8, &qword_23D46D8E8);
  v35(v38 + *(v40 + 64), v36, v33);
  sub_23D43B858(v37, v39, v29);
  v41 = *(v34 + 8);

  v41(v58, v33);
  v41(v36, v33);
  sub_23D43B748(v37, v39, v29);
}

uint64_t sub_23D44E49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D46BA28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D46BA18();
  sub_23D46BA08();
  sub_23D46B9F8();
  sub_23D46BA08();
  sub_23D46BA48();
  *a2 = sub_23D46BAB8();
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;
  *(a2 + 48) = 1;
}

uint64_t sub_23D44E620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v13[2] = a2;
  v4 = type metadata accessor for AccessoryDetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = (a1 + *(v4 + 28));
  v9 = *v7;
  v8 = v7[1];
  v13[4] = v9;
  v13[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  sub_23D45048C(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_23D4504F0(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB70, &qword_23D46D830);
  sub_23D43B810(&qword_27E2DABA0, &qword_27E2DA8F8, &qword_23D46D450);
  sub_23D451714();
  sub_23D451D2C();
  sub_23D46BC38();
}

uint64_t sub_23D44E858()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v14 + 1184))(v0);
  v3 = v2;

  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xE000000000000000;
  }

  if (v4)
  {
  }

  else
  {
    v5 = sub_23D46C1B8();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = sub_23D46BC78();
  v8 = (*(*v14 + 896))(v7);
  v10 = v9;

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0xE000000000000000;
  }

  if (v11)
  {

    v6 = 0;
  }

  else
  {
    v12 = sub_23D46C1B8();

    v6 = v12 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_23D44E9F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 944))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D44EA44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 952);

  return v4(v2, v3);
}

uint64_t sub_23D44EABC()
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_23D44EB50()
{
  if ((sub_23D44E858() & 1) == 0)
  {
    goto LABEL_8;
  }

  v1 = (v0 + *(type metadata accessor for AccessoryDetailView() + 24));
  v14 = *v1;
  v16 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  v2 = *MEMORY[0x277CE54E0];
  if (v12 == sub_23D46BDD8() && v13 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_23D46C1B8();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((sub_23D44E858() & 1) == 0)
    {
      v6 = 0;
      return v6 & 1;
    }

    v7 = (v0 + *(type metadata accessor for AccessoryDetailView() + 24));
    v15 = *v7;
    v17 = *(v7 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBC8();
    v8 = *MEMORY[0x277CE54A0];
    if (v12 != sub_23D46BDD8() || v13 != v9)
    {
      v6 = sub_23D46C1B8();
LABEL_15:

      return v6 & 1;
    }

LABEL_14:
    v6 = 1;
    goto LABEL_15;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_23D44ECD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D44ED7C@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690();
  v3 = sub_23D46BAC8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_23D44EECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v5 + 1280))(v0);

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_23D46BC78();
    v2 = (*(*v5 + 1328))(v3);
  }

  return v2 & 1;
}

uint64_t sub_23D44EFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA38, &qword_23D46D6C0);
  v3 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v92 = &v78 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA40, &qword_23D46D6C8);
  v5 = *(*(v91 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v91);
  v94 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v78 - v9;
  MEMORY[0x28223BE20](v8);
  v93 = &v78 - v10;
  v85 = type metadata accessor for AccessoryDetailView();
  v80 = *(v85 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v85);
  v96 = v12;
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  v99 = *(v98 - 8);
  v14 = *(v99 + 64);
  v15 = MEMORY[0x28223BE20](v98);
  v83 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v78 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA50, &qword_23D46D6D8);
  v19 = *(*(v97 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v97);
  v84 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA58, &qword_23D46D6E0);
  v24 = *(*(v82 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v82);
  v88 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v78 - v28;
  MEMORY[0x28223BE20](v27);
  v86 = &v78 - v30;
  sub_23D46BF08();
  v87 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v81 = objc_opt_self();
  v31 = [v81 mainBundle];
  v32 = sub_23D46B788();
  v34 = v33;

  *&v110 = v32;
  *(&v110 + 1) = v34;
  sub_23D45048C(a1, v13);
  v35 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v36 = swift_allocObject();
  sub_23D4504F0(v13, v36 + v35);
  v80 = sub_23D43B690();
  sub_23D46BC08();
  sub_23D46BCD8();
  sub_23D46B948();
  v37 = *(v99 + 32);
  v99 += 32;
  v79 = v37;
  v37(v23, v18, v98);
  v38 = &v23[*(v97 + 36)];
  v39 = v108;
  *(v38 + 4) = v107;
  *(v38 + 5) = v39;
  *(v38 + 6) = v109;
  v40 = v104;
  *v38 = v103;
  *(v38 + 1) = v40;
  v41 = v106;
  *(v38 + 2) = v105;
  *(v38 + 3) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v42 = sub_23D46BC78();
  LOBYTE(v34) = (*(*v110 + 1280))(v42);

  v43 = 1;
  if ((v34 & 1) == 0)
  {
    v44 = sub_23D46BC78();
    v43 = (*(*v110 + 1328))(v44);
  }

  v45 = sub_23D469394(v43 & 1);
  sub_23D45132C(v23, v29, &qword_27E2DAA50, &qword_23D46D6D8);
  v29[*(v82 + 36)] = v45 & 1;
  v46 = v86;
  sub_23D45132C(v29, v86, &qword_27E2DAA58, &qword_23D46D6E0);
  v47 = [v81 mainBundle];
  v48 = sub_23D46B788();
  v50 = v49;

  *&v110 = v48;
  *(&v110 + 1) = v50;
  sub_23D45048C(a1, v13);
  v51 = swift_allocObject();
  sub_23D4504F0(v13, v51 + v35);
  v52 = v83;
  sub_23D46BC08();
  sub_23D46BCD8();
  sub_23D46B948();
  v53 = v84;
  v79(v84, v52, v98);
  v54 = (v53 + *(v97 + 36));
  v55 = v115;
  v54[4] = v114;
  v54[5] = v55;
  v54[6] = v116;
  v56 = v111;
  *v54 = v110;
  v54[1] = v56;
  v57 = v113;
  v54[2] = v112;
  v54[3] = v57;
  v58 = a1 + *(v85 + 40);
  v59 = *v58;
  v60 = *(v58 + 8);
  LOBYTE(v101) = v59;
  v102 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  LOBYTE(v50) = v100;
  KeyPath = swift_getKeyPath();
  v62 = swift_allocObject();
  *(v62 + 16) = (v50 & 1) == 0;
  v63 = v92;
  sub_23D45132C(v53, v92, &qword_27E2DAA50, &qword_23D46D6D8);
  v64 = (v63 + *(v89 + 36));
  *v64 = KeyPath;
  v64[1] = sub_23D451314;
  v64[2] = v62;
  v65 = sub_23D46BC78();
  LOBYTE(KeyPath) = (*(*v101 + 1280))(v65);

  v66 = 0;
  if ((KeyPath & 1) == 0)
  {
    v67 = sub_23D46BC78();
    v68 = (*(*v101 + 1328))(v67);

    v66 = v68 ^ 1;
  }

  v69 = sub_23D469394(v66 & 1);
  v70 = v63;
  v71 = v90;
  sub_23D45132C(v70, v90, &qword_27E2DAA38, &qword_23D46D6C0);
  *(v71 + *(v91 + 36)) = v69 & 1;
  v72 = v93;
  sub_23D45132C(v71, v93, &qword_27E2DAA40, &qword_23D46D6C8);
  v73 = v88;
  sub_23D451944(v46, v88, &qword_27E2DAA58, &qword_23D46D6E0);
  v74 = v94;
  sub_23D451944(v72, v94, &qword_27E2DAA40, &qword_23D46D6C8);
  v75 = v95;
  sub_23D451944(v73, v95, &qword_27E2DAA58, &qword_23D46D6E0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA60, &qword_23D46D718);
  sub_23D451944(v74, v75 + *(v76 + 48), &qword_27E2DAA40, &qword_23D46D6C8);
  sub_23D4519AC(v72, &qword_27E2DAA40, &qword_23D46D6C8);
  sub_23D4519AC(v46, &qword_27E2DAA58, &qword_23D46D6E0);
  sub_23D4519AC(v74, &qword_27E2DAA40, &qword_23D46D6C8);
  sub_23D4519AC(v73, &qword_27E2DAA58, &qword_23D46D6E0);
}

uint64_t sub_23D44FB8C()
{
  sub_23D46C038();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v6 + 464))(v0);
  v3 = v2;

  MEMORY[0x23EEE0EE0](v1, v3);

  v4 = sub_23D46BDE8();

  notify_post((v4 + 32));
}

uint64_t sub_23D44FCA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA20, &qword_23D46D680);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-v9];
  sub_23D46BF08();
  v35 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v11 = sub_23D46BC78();
  v12 = (*(**&v36 + 1424))(v11);

  v36 = v12;
  LOBYTE(v37) = 0;
  MEMORY[0x28223BE20](v13);
  *&v31[-16] = a1;
  v38 = 0x3FF0000000000000;
  sub_23D451050();
  sub_23D46B8A8();
  v14 = sub_23D46BC78();
  v15 = (*(**&v36 + 1520))(v14);
  v17 = v16;

  v36 = *&v15;
  v37 = v17;
  sub_23D43B690();
  v18 = sub_23D46BAC8();
  v20 = v19;
  v32 = v21;
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v25 = v4[2];
  v25(v8, v10, v3);
  v33 = v10;
  v26 = v3;
  v27 = v34;
  v25(v34, v8, v26);
  v28 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA30, &qword_23D46D6B8) + 48)];
  *v28 = v18;
  *(v28 + 1) = v20;
  LOBYTE(v25) = v32 & 1;
  v28[16] = v32 & 1;
  *(v28 + 3) = v23;
  *(v28 + 4) = KeyPath;
  v28[40] = 1;
  sub_23D43B858(v18, v20, v25);
  v29 = v4[1];

  v29(v33, v26);
  sub_23D43B748(v18, v20, v25);

  v29(v8, v26);
}

uint64_t sub_23D450088(uint64_t *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v4 = sub_23D46BC78();
  v5 = (*(*v17 + 1184))(v4);
  v7 = v6;

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 0xE000000000000000;
  }

  if (v8)
  {
  }

  else
  {
    v9 = sub_23D46C1B8();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = (v3 + *(type metadata accessor for AccessoryDetailView() + 20));
  v18 = *v11;
  v19 = *(v11 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  v12 = *a1;
  if (v15 == sub_23D46BDD8() && v16 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23D46C1B8();
  }

  return v10 & 1;
}

uint64_t sub_23D450228(uint64_t *a1)
{
  if (sub_23D44E858())
  {
    v3 = (v1 + *(type metadata accessor for AccessoryDetailView() + 24));
    v11 = *v3;
    v12 = *(v3 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBC8();
    v4 = *a1;
    if (v9 == sub_23D46BDD8() && v10 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_23D46C1B8();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_23D450300(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23D46C1E8();
  sub_23D46BDF8();
  v6 = sub_23D46C228();

  return sub_23D4505C4(a1, a2, v6);
}

char *sub_23D450378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF0, &unk_23D46D990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23D45048C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D4504F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D450570()
{
  result = qword_27E2DA958;
  if (!qword_27E2DA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA958);
  }

  return result;
}

unint64_t sub_23D4505C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D46C1B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23D45067C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D46B998();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D4506D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D46B978();
  *a1 = result;
  return result;
}

uint64_t sub_23D450728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D46B958();
  *a1 = result;
  return result;
}

uint64_t sub_23D450754(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D46B968();
}

unint64_t sub_23D450790()
{
  result = qword_27E2DA960;
  if (!qword_27E2DA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA960);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23D450814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23D45085C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23D4508E4()
{
  sub_23D4509CC();
  if (v0 <= 0x3F)
  {
    sub_23D450A88(319, &qword_27E2DA970);
    if (v1 <= 0x3F)
    {
      sub_23D450A24();
      if (v2 <= 0x3F)
      {
        sub_23D450A88(319, &qword_27E2DA980);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23D4509CC()
{
  if (!qword_27E2DA968)
  {
    type metadata accessor for SettingsAccessory();
    v0 = sub_23D46BCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2DA968);
    }
  }
}

void sub_23D450A24()
{
  if (!qword_27E2DA978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA8F8, &qword_23D46D450);
    v0 = sub_23D46BBF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2DA978);
    }
  }
}

void sub_23D450A88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23D46BBF8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_23D450AD4()
{
  result = qword_27E2DA988;
  if (!qword_27E2DA988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA950, &unk_23D46D490);
    sub_23D450B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA988);
  }

  return result;
}

unint64_t sub_23D450B60()
{
  result = qword_27E2DA990;
  if (!qword_27E2DA990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA948, &qword_23D46D488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA928, &qword_23D46D478);
    sub_23D43B810(&qword_27E2DA940, &qword_27E2DA928, &qword_23D46D478);
    swift_getOpaqueTypeConformance2();
    sub_23D43B810(&qword_27E2DA998, &qword_27E2DA9A0, ",4");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA990);
  }

  return result;
}

uint64_t sub_23D450C98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_23D46BA58();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA18, &qword_23D46D678);
  sub_23D44FCA0(v3, (a1 + *(v4 + 44)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v5 = sub_23D46BC78();
  v6 = (*(*v14 + 1472))(v5);
  v8 = v7;

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0xE000000000000000;
  }

  if (v9)
  {

    v11 = 0;
  }

  else
  {
    v10 = sub_23D46C1B8();

    v11 = v10 ^ 1;
  }

  v12 = sub_23D469394(v11 & 1);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9F0, &qword_23D46D660);
  *(a1 + *(result + 36)) = v12 & 1;
  return result;
}

unint64_t sub_23D450E50()
{
  result = qword_27E2DA9F8;
  if (!qword_27E2DA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA9F0, &qword_23D46D660);
    sub_23D43B810(&qword_27E2DAA00, &qword_27E2DAA08, &qword_23D46D668);
    sub_23D43B63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA9F8);
  }

  return result;
}

uint64_t sub_23D450F08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v4 = sub_23D46BC78();
  (*(*v13 + 1472))(v4);

  sub_23D43B690();
  v5 = sub_23D46BAC8();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

unint64_t sub_23D451050()
{
  result = qword_27E2DAA28;
  if (!qword_27E2DAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAA28);
  }

  return result;
}

uint64_t sub_23D4510C0(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(*(type metadata accessor for AccessoryDetailView() - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_23D4511B4()
{
  v1 = type metadata accessor for AccessoryDetailView();
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AFUSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  sub_23D456B6C(v5);

  v3 = v0 + ((v2 + 16) & ~v2) + *(v1 + 40);
  v6 = *v3;
  v7 = *(v3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
}

uint64_t sub_23D45132C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D4513A4()
{
  v1 = type metadata accessor for AccessoryDetailView();
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0 + ((v2 + 16) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  v4 = v9;
  v5 = v3 + *(v1 + 48);
  LOBYTE(v9) = *v5;
  v10 = *(v5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  if (v8)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  (*(*v4 + 1096))(v6);

  type metadata accessor for AFUSettings();
  sub_23D46BC78();
  sub_23D456B6C(v9);
}

unint64_t sub_23D451570()
{
  result = qword_27E2DAB28;
  if (!qword_27E2DAB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAA88, &qword_23D46D740);
    sub_23D43B810(&qword_27E2DAB30, &qword_27E2DAB38, &qword_23D46D818);
    sub_23D43B810(&qword_27E2DAB40, &qword_27E2DAB48, &qword_23D46D820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAB28);
  }

  return result;
}

unint64_t sub_23D451690()
{
  result = qword_27E2DAB60;
  if (!qword_27E2DAB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAB50, &qword_23D46D828);
    sub_23D451714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAB60);
  }

  return result;
}

unint64_t sub_23D451714()
{
  result = qword_27E2DAB68;
  if (!qword_27E2DAB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAB70, &qword_23D46D830);
    sub_23D43B810(&qword_27E2DAB78, &qword_27E2DAB80, &qword_23D46D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAB68);
  }

  return result;
}

uint64_t sub_23D451810()
{
  v1 = type metadata accessor for AccessoryDetailView();
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0 + *(v1 + 40) + ((v2 + 16) & ~v2);
  v5 = *v3;
  v6 = *(v3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
}

uint64_t sub_23D451944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D4519AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D451A0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for AccessoryDetailView();
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (v6 + *(v5 + 24));
  v38 = *v13;
  v39 = *(v13 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  if (v7 == v36 && v8 == v37)
  {
  }

  else
  {
    v14 = sub_23D46C1B8();

    if ((v14 & 1) == 0)
    {

      v34 = 0;
      v15 = 0;
      v17 = 0;
      v30 = 0;
      v21 = 0;
      v22 = 0;
      v24 = 0;
      v31 = 0;
      v26 = 0;
      v33 = 0;
      goto LABEL_11;
    }
  }

  v35 = sub_23D46BA58();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D43B690();

  v15 = sub_23D46BAC8();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = sub_23D46BAC8();
  v24 = v23;
  v26 = v25;
  v27 = v19 & 1;
  v40 = v19 & 1;
  v29 = v28 & 1;
  v30 = v27;
  v31 = v28 & 1;
  sub_23D43B858(v15, v17, v27);

  sub_23D43B858(v22, v24, v29);

  sub_23D43B748(v22, v24, v29);

  sub_23D43B748(v15, v17, v40);

  v33 = 1;
  v34 = v35;
LABEL_11:
  *a2 = v34;
  a2[1] = 0;
  a2[2] = v33;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v30;
  a2[6] = v21;
  a2[7] = v22;
  a2[8] = v24;
  a2[9] = v31;
  a2[10] = v26;
  return result;
}

unint64_t sub_23D451D2C()
{
  result = qword_27E2DABA8;
  if (!qword_27E2DABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DABA8);
  }

  return result;
}

unint64_t sub_23D451D9C()
{
  result = qword_27E2DABC8;
  if (!qword_27E2DABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DABC0, &qword_23D46D8E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DABC8);
  }

  return result;
}

uint64_t sub_23D451E64()
{
  v1 = type metadata accessor for AccessoryDetailView();
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = v3 + *(v1 + 40);
  LOBYTE(v9) = *v4;
  v11 = *(v4 + 8);
  LOBYTE(v8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  v5 = v9;
  v6 = (v3 + *(v1 + 24));
  v10 = *v6;
  v12 = *(v6 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  (*(*v5 + 904))(v8);
}

uint64_t sub_23D452028@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for AccessoryDetailView();
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (v6 + *(v5 + 20));
  v38 = *v13;
  v39 = *(v13 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  if (v7 == v36 && v8 == v37)
  {
  }

  else
  {
    v14 = sub_23D46C1B8();

    if ((v14 & 1) == 0)
    {

      v34 = 0;
      v15 = 0;
      v17 = 0;
      v30 = 0;
      v21 = 0;
      v22 = 0;
      v24 = 0;
      v31 = 0;
      v26 = 0;
      v33 = 0;
      goto LABEL_11;
    }
  }

  v35 = sub_23D46BA58();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D43B690();

  v15 = sub_23D46BAC8();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = sub_23D46BAC8();
  v24 = v23;
  v26 = v25;
  v27 = v19 & 1;
  v40 = v19 & 1;
  v29 = v28 & 1;
  v30 = v27;
  v31 = v28 & 1;
  sub_23D43B858(v15, v17, v27);

  sub_23D43B858(v22, v24, v29);

  sub_23D43B748(v22, v24, v29);

  sub_23D43B748(v15, v17, v40);

  v33 = 1;
  v34 = v35;
LABEL_11:
  *a2 = v34;
  a2[1] = 0;
  a2[2] = v33;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v30;
  a2[6] = v21;
  a2[7] = v22;
  a2[8] = v24;
  a2[9] = v31;
  a2[10] = v26;
  return result;
}

uint64_t sub_23D452364()
{
  v1 = *(v0 + 16);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (v1 + *(type metadata accessor for AccessoryDetailView() + 28));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABE0, &qword_23D46D8F0);
  sub_23D43B810(&qword_27E2DABA0, &qword_27E2DA8F8, &qword_23D46D450);
  swift_getOpaqueTypeConformance2();
  sub_23D451D2C();
  sub_23D46BC38();
}

uint64_t sub_23D45252C()
{
  v1 = type metadata accessor for AccessoryDetailView();
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = v3 + *(v1 + 40);
  LOBYTE(v9) = *v4;
  v11 = *(v4 + 8);
  LOBYTE(v8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  v5 = v9;
  v6 = (v3 + *(v1 + 20));
  v10 = *v6;
  v12 = *(v6 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  (*(*v5 + 760))(v8);
}

uint64_t sub_23D4526F0()
{
  v1 = *(v0 + 16);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (v1 + *(type metadata accessor for AccessoryDetailView() + 36));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABE0, &qword_23D46D8F0);
  sub_23D43B810(&qword_27E2DABA0, &qword_27E2DA8F8, &qword_23D46D450);
  swift_getOpaqueTypeConformance2();
  sub_23D451D2C();
  sub_23D46BC38();
}

void sub_23D4528C0()
{
  v1 = type metadata accessor for AccessoryDetailView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v2 + *(v1 + 40);
  LOBYTE(v8) = *v3;
  v10 = *(v3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  v4 = v8;
  v5 = (v2 + *(v1 + 32));
  v9 = *v5;
  v11 = *(v5 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  v6 = sub_23D46BDC8();

  v7 = AUSettingsPallasStringToAudienceType();

  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(*v4 + 1048))(v7);
  }
}

uint64_t sub_23D452AAC()
{
  v0 = *(*(type metadata accessor for AccessoryDetailView() - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AFUSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  sub_23D456B6C(v2);
}

uint64_t sub_23D452BF8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D452C84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AccessoryDetailView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 8);

  v8 = *(v6 + 16);

  v9 = v0 + v3 + v1[8];
  v10 = *(v9 + 8);

  v11 = *(v9 + 16);

  v12 = (v0 + v3 + v1[9]);
  v13 = *v12;

  v14 = v12[1];

  v15 = v0 + v3 + v1[10];
  v16 = *(v15 + 8);

  v17 = *(v15 + 16);

  v18 = (v0 + v3 + v1[11]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v0 + v3 + v1[12] + 8);

  v22 = *(v0 + v3 + v1[13] + 8);

  v23 = *(v0 + v3 + v1[14] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_23D452E64()
{
  v1 = *(type metadata accessor for AccessoryDetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_23D44524C();
}

uint64_t sub_23D452EDC()
{
  v0 = *sub_23D45393C();
}

uint64_t sub_23D452F08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF8, &qword_23D46D9A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC00, &qword_23D46D9A8);
  sub_23D453194();
  sub_23D46BA98();
  v4 = &v3[*(v0 + 36)];
  *v4 = sub_23D453328;
  sub_23D453400();
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  sub_23D46BAD8();
  return sub_23D4534B8(v3);
}

uint64_t sub_23D45301C(uint64_t a1)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(*a1 + 400))(isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC48, &unk_23D46DB20);
  sub_23D43B810(&qword_27E2DAC50, &qword_27E2DAC48, &unk_23D46DB20);
  sub_23D453218();
  sub_23D453864();
  sub_23D46BC38();
}

unint64_t sub_23D453194()
{
  result = qword_27E2DAC08;
  if (!qword_27E2DAC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAC00, &qword_23D46D9A8);
    sub_23D453218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC08);
  }

  return result;
}

unint64_t sub_23D453218()
{
  result = qword_27E2DAC10;
  if (!qword_27E2DAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC10);
  }

  return result;
}

uint64_t sub_23D45326C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_23D46998C(v4);
  v7 = v6;
  v9 = v8;

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  *(a2 + 16) = v9;
  return result;
}

uint64_t sub_23D453328()
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *(**sub_23D45393C() + 456);

  v0(v1);
}

unint64_t sub_23D453400()
{
  result = qword_27E2DAC18;
  if (!qword_27E2DAC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DABF8, &qword_23D46D9A0);
    sub_23D43B810(&qword_27E2DAC20, &qword_27E2DAC28, &qword_23D46D9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC18);
  }

  return result;
}

uint64_t sub_23D4534B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF8, &qword_23D46D9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D453520()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF8, &qword_23D46D9A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC00, &qword_23D46D9A8);
  sub_23D453194();
  sub_23D46BA98();
  v6 = &v4[*(v1 + 36)];
  *v6 = sub_23D453328;
  sub_23D453400();
  v6[2] = 0;
  v6[3] = 0;
  v6[1] = 0;
  sub_23D46BAD8();
  return sub_23D4534B8(v4);
}

uint64_t sub_23D453634@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *sub_23D45393C();
}

unint64_t sub_23D453690()
{
  result = qword_27E2DAC30;
  if (!qword_27E2DAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC30);
  }

  return result;
}

uint64_t sub_23D453704(uint64_t a1)
{
  v2 = sub_23D453810();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t sub_23D453750(uint64_t a1)
{
  v2 = sub_23D453810();

  return MEMORY[0x28212D8D8](a1, v2);
}

unint64_t sub_23D4537BC()
{
  result = qword_27E2DAC38;
  if (!qword_27E2DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC38);
  }

  return result;
}

unint64_t sub_23D453810()
{
  result = qword_27E2DAC40;
  if (!qword_27E2DAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC40);
  }

  return result;
}

unint64_t sub_23D453864()
{
  result = qword_27E2DAC58;
  if (!qword_27E2DAC58)
  {
    type metadata accessor for SettingsAccessory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC58);
  }

  return result;
}

uint64_t sub_23D4538C4()
{
  v0 = type metadata accessor for AFUSettings();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_23D454E18();
  qword_27E2DBE08 = v3;
  return result;
}