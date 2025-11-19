void sub_238BD3C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id LA_LOG()
{
  if (LA_LOG_once != -1)
  {
    LA_LOG_cold_1();
  }

  v1 = LA_LOG_log;

  return v1;
}

void sub_238BD4278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BD5284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 152));
  _Unwind_Resume(a1);
}

void sub_238BD5548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getCDPStateControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPStateControllerClass_softClass;
  v7 = getCDPStateControllerClass_softClass;
  if (!getCDPStateControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCDPStateControllerClass_block_invoke;
    v3[3] = &unk_278A65748;
    v3[4] = &v4;
    __getCDPStateControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_238BD5AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCDPStateControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreCDPLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278A65768;
    v7 = 0;
    CoreCDPLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreCDPLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CDPStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPStateControllerClass_block_invoke_cold_1();
  }

  getCDPStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreCDPLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238BD754C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_238BD77EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BD875C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BD8B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BDBB98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id LA_LOG_0()
{
  if (LA_LOG_once_0 != -1)
  {
    LA_LOG_cold_1_0();
  }

  v1 = LA_LOG_log_0;

  return v1;
}

void sub_238BDBE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BDBF24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BDC1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BDC464(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, v10, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4(void *a1, const char *a2)
{

  return [a1 setActive:1];
}

uint64_t __LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_fmt;
  LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_fmt = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_238BDFBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE0F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE12F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BE1D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE2818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE4374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE4640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE4938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_238BE6F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLAPSPasscodeTypeIdentifier(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"LAPSPasscodeTypeIdentifierUnknown";
  }

  else
  {
    return off_278A65FF8[a1];
  }
}

id LAViewControllerForPresentationContext(void *a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v1)
  {
    v2 = [v1 rootViewController];
  }

  else
  {
    v3 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    v2 = [v3 rootViewController];
  }

  return v2;
}

void sub_238BE80B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE85A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BE955C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEAC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEAF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEB2A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BEB838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEB9B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BEC060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_238BECE3C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_238BF3418();
  v2 = [v0 initWithOptions:v1 configuration:0];

  return v2;
}

id sub_238BECF40(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_238BF3418();
  v5 = [v3 initWithOptions:v4 configuration:a2];

  return v5;
}

void sub_238BED070(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238BF3368();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v51 - v10;
  v62 = sub_238BF3388();
  v11 = *(v62 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v62);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = sub_238BF33A8();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v2 viewModel];
  if (!v22)
  {
LABEL_4:
    v23 = [v2 presentationContext];
    if (v23)
    {
      v56 = v15;
      v58 = v9;

      [v2 clean];
      sub_238BF3278();
      v24 = *(v11 + 16);
      v57 = a1;
      v25 = v62;
      v54 = v24;
      v55 = v11 + 16;
      v24(v17, a1, v62);
      v26 = v2;
      v27 = sub_238BF3398();
      v28 = sub_238BF34E8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = v4;
        v30 = v29;
        v31 = swift_slowAlloc();
        v52 = v5;
        v32 = v31;
        *v30 = 138543618;
        *(v30 + 4) = v26;
        *v31 = v26;
        *(v30 + 12) = 2048;
        v33 = v26;
        v34 = sub_238BF3378();
        (*(v11 + 8))(v17, v25);
        *(v30 + 14) = v34;
        _os_log_impl(&dword_238BCD000, v27, v28, "%{public}@ starting evaluation with presentation style: %ld", v30, 0x16u);
        sub_238BF1704(v32, &qword_27DF6A788, &qword_238BF7B70);
        v35 = v32;
        v5 = v52;
        MEMORY[0x23EE74E00](v35, -1, -1);
        v36 = v30;
        v4 = v53;
        MEMORY[0x23EE74E00](v36, -1, -1);
      }

      else
      {
        (*(v11 + 8))(v17, v25);
      }

      (*(v59 + 8))(v21, v60);
      v43 = [v26 configuration];
      v44 = [v43 countdownPrimaryActionTitle];

      v45 = v61;
      v46 = v56;
      if (v44)
      {
        sub_238BF3468();
      }

      v54(v46, v57, v62);
      sub_238BF3358();
      type metadata accessor for LAContextProvider();
      sub_238BF1B90();
      v47 = [v26 internalOptions];
      sub_238BF3428();

      (*(v5 + 16))(v58, v45, v4);
      v48 = objc_allocWithZone(sub_238BF32F8());
      v49 = sub_238BF32A8();
      sub_238BEDE88(v49);
      [v26 setViewModel_];
      v50 = [v26 viewModel];
      if (v50)
      {
        [v50 start];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v5 + 8))(v45, v4);
    }

    else
    {
      sub_238BF32F8();
      sub_238BF1118();
      v40 = swift_allocError();
      *v41 = 0;
      v42 = sub_238BF32E8();

      sub_238BEE61C(0, v42);
    }

    return;
  }

  if ([v22 isInvalidated])
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  sub_238BF32F8();
  sub_238BF1118();
  v37 = swift_allocError();
  *v38 = 1;
  v39 = sub_238BF32E8();

  sub_238BEE61C(0, v39);

  swift_unknownObjectRelease();
}

uint64_t sub_238BED714(unsigned int *a1)
{
  v2 = sub_238BF3388();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *a1, v2);
  sub_238BED070(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238BED80C(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_238BF3388();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a3, v5);
  v10 = a1;
  sub_238BED070(v9);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238BED908()
{
  v1 = sub_238BF33A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 viewModel];
  if (v6)
  {
    v7 = v6;
    v8 = sub_238BF3438();
    [v7 stopWithReason:v8 invalidate:1];

    swift_unknownObjectRelease();
  }

  [v0 clean];
  sub_238BF3278();
  v9 = v0;
  v10 = sub_238BF3398();
  v11 = sub_238BF34E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v1;
    v15 = v14;
    v24 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v23 = [v9 viewModel];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A780, &qword_238BF7B68);
    v16 = sub_238BF34F8();
    v18 = v17;
    swift_unknownObjectRelease();
    v19 = sub_238BF0AC4(v16, v18, &v24);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_238BCD000, v10, v11, "%{public}@ invalidated view model: %{public}s", v12, 0x16u);
    sub_238BF1704(v13, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EE74E00](v15, -1, -1);
    MEMORY[0x23EE74E00](v12, -1, -1);

    return (*(v2 + 8))(v5, v22);
  }

  else
  {

    return (*(v2 + 8))(v5, v1);
  }
}

id sub_238BEDC18()
{
  v1 = v0;
  v2 = [v0 subscriptions];
  if (v2)
  {
    v3 = v2;
    v4 = sub_238BF34C8();

    v5 = *(v4 + 16);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v5 = *(MEMORY[0x277D84F90] + 16);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = v4 + 32;
  do
  {
    sub_238BF0BDC(v6, v8);
    sub_238BF33C8();
    if (swift_dynamicCast())
    {
      sub_238BF33B8();
    }

    v6 += 32;
    --v5;
  }

  while (v5);
LABEL_9:

  return [v1 setSubscriptions_];
}

uint64_t sub_238BEDD78()
{
  v1 = *v0;
  sub_238BF35C8();
  MEMORY[0x23EE74600](v1);
  return sub_238BF35E8();
}

uint64_t sub_238BEDDEC()
{
  v1 = *v0;
  sub_238BF35C8();
  MEMORY[0x23EE74600](v1);
  return sub_238BF35E8();
}

unint64_t sub_238BEDE30()
{
  if (*v0)
  {
    result = 0xD000000000000054;
  }

  else
  {
    result = 0xD00000000000004ELL;
  }

  *v0;
  return result;
}

void sub_238BEDE88(uint64_t a1)
{
  v40 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80);
  v1 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v3 = &v35 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A0, &qword_238BF7B88);
  v4 = *(*(v35 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v35);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A8, &qword_238BF7B90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7B0, &qword_238BF7B98);
  v39 = *(v37 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v15 = &v35 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7B8, &qword_238BF7BA0);
  v43 = *(v41 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v18 = &v35 - v17;
  v46 = sub_238BF3298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7C0, &qword_238BF7BA8);
  v44 = MEMORY[0x277CBCD90];
  sub_238BF1378(&qword_27DF6A7C8, &qword_27DF6A7C0, &qword_238BF7BA8);
  sub_238BF1AC4(&qword_27DF6A7D0, MEMORY[0x277D24168]);
  sub_238BF33F8();

  sub_238BF1378(&qword_27DF6A7D8, &qword_27DF6A7A8, &qword_238BF7B90);
  sub_238BF33D8();
  (*(v9 + 8))(v12, v8);
  v19 = sub_238BF32D8();
  v20 = *(*(v19 - 8) + 56);
  v21 = v36;
  v20(v36, 1, 1, v19);
  v22 = v38;
  v20(v38, 1, 1, v19);
  v23 = *(v42 + 48);
  sub_238BF11B4(v21, v3);
  sub_238BF11B4(v22, &v3[v23]);
  sub_238BF1378(&qword_27DF6A7E0, &qword_27DF6A7B0, &qword_238BF7B98);
  v24 = v37;
  sub_238BF33E8();
  sub_238BF1704(v3, &qword_27DF6A798, &qword_238BF7B80);
  (*(v39 + 8))(v15, v24);
  v25 = swift_allocObject();
  v26 = v45;
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_238BF125C;
  *(v27 + 24) = v25;
  sub_238BF1378(&qword_27DF6A7E8, &qword_27DF6A7B8, &qword_238BF7BA0);
  v28 = v41;
  v29 = sub_238BF3408();

  (*(v43 + 8))(v18, v28);
  v46 = sub_238BF32B8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7F0, &qword_238BF7BB0);
  sub_238BF1378(&qword_27DF6A7F8, &qword_27DF6A7F0, &qword_238BF7BB0);
  v30 = sub_238BF3408();

  v46 = sub_238BF32C8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_238BF3408();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A800, &qword_238BF7BB8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_238BF7B40;
  v33 = sub_238BF33C8();
  *(v32 + 32) = v29;
  *(v32 + 56) = v33;
  *(v32 + 64) = v30;
  *(v32 + 120) = v33;
  *(v32 + 88) = v33;
  *(v32 + 96) = v31;

  v34 = sub_238BF34B8();

  [v26 setSubscriptions_];
}

void sub_238BEE61C(void *a1, void *a2)
{
  v5 = sub_238BF33A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238BF3278();
  v10 = v2;

  v11 = a2;
  v12 = sub_238BF3398();
  v13 = sub_238BF34E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = v13;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v16;
    v33 = swift_slowAlloc();
    v35 = v33;
    *v15 = 138544130;
    *(v15 + 4) = v10;
    *v16 = v10;
    *(v15 + 12) = 2082;
    v34 = [v10 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A898, &qword_238BF7BE0);
    v17 = sub_238BF34F8();
    v31 = v5;
    v19 = v18;
    swift_unknownObjectRelease();
    v20 = sub_238BF0AC4(v17, v19, &v35);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2082;
    v34 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A8A0, &qword_238BF7BE8);
    v21 = sub_238BF34F8();
    v23 = sub_238BF0AC4(v21, v22, &v35);

    *(v15 + 24) = v23;
    *(v15 + 32) = 2082;
    v34 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A8A8, &qword_238BF7BF0);
    v24 = sub_238BF34F8();
    v26 = sub_238BF0AC4(v24, v25, &v35);

    *(v15 + 34) = v26;
    _os_log_impl(&dword_238BCD000, v12, v32, "%{public}@ will inform delegate %{public}s about result: %{public}s error: %{public}s", v15, 0x2Au);
    v27 = v30;
    sub_238BF1704(v30, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v27, -1, -1);
    v28 = v33;
    swift_arrayDestroy();
    MEMORY[0x23EE74E00](v28, -1, -1);
    MEMORY[0x23EE74E00](v15, -1, -1);

    (*(v6 + 8))(v9, v31);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v29 = 0;
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (*(v6 + 8))(v9, v5);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v29 = sub_238BF3418();
  if (a2)
  {
LABEL_4:
    a2 = sub_238BF3238();
  }

LABEL_5:
  [v10 finishWithResult:v29 error:a2];
}

uint64_t sub_238BEE9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238BF32D8();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_238BEEA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80) - 8);
  v7 = (*(*v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = v6[14];
  sub_238BF17B0(a1, &v12 - v8, &qword_27DF6A798, &qword_238BF7B80);
  sub_238BF11B4(&v9[v6[14]], a3);
  sub_238BF17B0(a2, a3 + v10, &qword_27DF6A7A0, &qword_238BF7B88);
  return sub_238BF1704(v9, &qword_27DF6A7A0, &qword_238BF7B88);
}

void sub_238BEEB80(void (*a1)(uint64_t, uint64_t), unsigned int (*a2)(uint64_t, uint64_t))
{
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80);
  v4 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v6 = &v96 - v5;
  v7 = sub_238BF3338();
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = *(v108 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v107 = &v96 - v13;
  MEMORY[0x28223BE20](v12);
  v104 = &v96 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A0, &qword_238BF7B88);
  v15 = *(*(v110 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v110);
  v103 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v101 = &v96 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v102 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v96 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v96 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v96 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v96 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v96 - v32;
  v34 = sub_238BF33A8();
  v113 = *(v34 - 8);
  v114 = v34;
  v35 = *(v113 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238BF3278();
  v116 = a1;
  sub_238BF17B0(a1, v33, &qword_27DF6A7A0, &qword_238BF7B88);
  v117 = a2;
  sub_238BF17B0(a2, v31, &qword_27DF6A7A0, &qword_238BF7B88);
  v38 = v112;
  v39 = sub_238BF3398();
  v40 = sub_238BF34E8();

  v41 = os_log_type_enabled(v39, v40);
  v106 = v11;
  v112 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v96 = v39;
    v43 = v42;
    v44 = swift_slowAlloc();
    v98 = v44;
    v99 = swift_slowAlloc();
    v118[0] = v99;
    *v43 = 138543874;
    *(v43 + 4) = v38;
    *v44 = v38;
    *(v43 + 12) = 2082;
    v100 = v6;
    v97 = v40;
    sub_238BF17B0(v33, v28, &qword_27DF6A7A0, &qword_238BF7B88);
    v45 = v38;
    v46 = sub_238BF3478();
    v48 = v47;
    sub_238BF1704(v33, &qword_27DF6A7A0, &qword_238BF7B88);
    v49 = sub_238BF0AC4(v46, v48, v118);

    *(v43 + 14) = v49;
    *(v43 + 22) = 2082;
    sub_238BF17B0(v31, v28, &qword_27DF6A7A0, &qword_238BF7B88);
    v50 = sub_238BF3478();
    v52 = v51;
    v6 = v100;
    sub_238BF1704(v31, &qword_27DF6A7A0, &qword_238BF7B88);
    v53 = sub_238BF0AC4(v50, v52, v118);

    *(v43 + 24) = v53;
    v54 = v96;
    _os_log_impl(&dword_238BCD000, v96, v97, "%{public}@ state changed from: %{public}s to: %{public}s", v43, 0x20u);
    v55 = v98;
    sub_238BF1704(v98, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v55, -1, -1);
    v56 = v99;
    swift_arrayDestroy();
    MEMORY[0x23EE74E00](v56, -1, -1);
    MEMORY[0x23EE74E00](v43, -1, -1);
  }

  else
  {

    sub_238BF1704(v31, &qword_27DF6A7A0, &qword_238BF7B88);
    sub_238BF1704(v33, &qword_27DF6A7A0, &qword_238BF7B88);
  }

  (*(v113 + 8))(v37, v114);
  v57 = *(v115 + 48);
  sub_238BF17B0(v116, v6, &qword_27DF6A7A0, &qword_238BF7B88);
  sub_238BF17B0(v117, &v6[v57], &qword_27DF6A7A0, &qword_238BF7B88);
  v58 = sub_238BF32D8();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  if (v60(&v6[v57], 1, v58) == 1)
  {
    goto LABEL_5;
  }

  v64 = v111;
  sub_238BF17B0(&v6[v57], v111, &qword_27DF6A7A0, &qword_238BF7B88);
  v65 = *(v59 + 88);
  v66 = v65(v64, v58);
  v67 = v66;
  v68 = *MEMORY[0x277D24140];
  v117 = v65;
  if (v66 == v68)
  {
    v116 = *(v59 + 96);
    v116(v64, v58);
    v69 = v60(v6, 1, v58);
    v70 = v108;
    if (v69 == 1)
    {
      goto LABEL_30;
    }

    v71 = v6;
    v72 = v6;
    v73 = v105;
LABEL_16:
    sub_238BF17B0(v72, v73, &qword_27DF6A7A0, &qword_238BF7B88);
    v76 = v73;
    goto LABEL_17;
  }

  if (v66 == *MEMORY[0x277D24150])
  {
    v64 = v111;
    v116 = *(v59 + 96);
    v116(v111, v58);
    v74 = v60(v6, 1, v58);
    v70 = v108;
    if (v74 == 1)
    {
      goto LABEL_30;
    }

    v71 = v6;
    v72 = v6;
    v73 = v103;
    goto LABEL_16;
  }

  if (v66 == *MEMORY[0x277D24160])
  {
    v64 = v111;
    v116 = *(v59 + 96);
    v116(v111, v58);
    v75 = v60(v6, 1, v58);
    v70 = v108;
    if (v75 == 1)
    {
      goto LABEL_30;
    }

    v71 = v6;
    v72 = v6;
    v73 = v102;
    goto LABEL_16;
  }

  if (v66 != *MEMORY[0x277D24148])
  {
    if (v66 == *MEMORY[0x277D24158])
    {
      v94 = v111;
      (*(v59 + 96))(v111, v58);
      v95 = *(v94 + 8);
      sub_238BEE61C(*v94, v95);

      sub_238BF1704(&v6[v57], &qword_27DF6A7A0, &qword_238BF7B88);
      v63 = v6;
      v61 = &qword_27DF6A7A0;
      v62 = &qword_238BF7B88;
      goto LABEL_6;
    }

    (*(v59 + 8))(v111, v58);
LABEL_5:
    v61 = &qword_27DF6A798;
    v62 = &qword_238BF7B80;
    v63 = v6;
LABEL_6:
    sub_238BF1704(v63, v61, v62);
    return;
  }

  v64 = v111;
  v116 = *(v59 + 96);
  v116(v111, v58);
  v92 = v60(v6, 1, v58);
  v70 = v108;
  if (v92 == 1)
  {
    goto LABEL_30;
  }

  v71 = v6;
  v93 = v101;
  sub_238BF17B0(v6, v101, &qword_27DF6A7A0, &qword_238BF7B88);
  v73 = v93;
  v76 = v93;
LABEL_17:
  if (v117(v76, v58) != v67)
  {
    (*(v59 + 8))(v73, v58);
    v6 = v71;
    v64 = v111;
LABEL_30:
    v88 = v107;
    v89 = v109;
    (*(v70 + 32))(v107, v64, v109);
    sub_238BF1704(&v6[v57], &qword_27DF6A7A0, &qword_238BF7B88);
    sub_238BF1704(v6, &qword_27DF6A7A0, &qword_238BF7B88);
    (*(v70 + 16))(v106, v88, v89);
    if ([v112 viewModel])
    {
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        swift_unknownObjectRelease();
      }
    }

    v90 = objc_allocWithZone(sub_238BF3328());
    v91 = sub_238BF3308();
    (*(v70 + 8))(v88, v89);
    sub_238BEFF64(v91);

    return;
  }

  v116(v73, v58);
  v77 = v104;
  v78 = v109;
  (*(v70 + 32))(v104, v111, v109);
  v79 = *(v70 + 8);
  v79(v73, v78);
  sub_238BF1704(v71 + v57, &qword_27DF6A7A0, &qword_238BF7B88);
  sub_238BF1704(v71, &qword_27DF6A7A0, &qword_238BF7B88);
  v80 = [v112 pageViewController];
  v81 = [v80 viewControllers];

  if (!v81)
  {
LABEL_43:
    v79(v77, v78);
    return;
  }

  sub_238BF1764();
  v82 = sub_238BF34C8();

  if (!(v82 >> 62))
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v83)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  v83 = sub_238BF3538();
  if (!v83)
  {
LABEL_42:

    goto LABEL_43;
  }

LABEL_21:
  v84 = __OFSUB__(v83, 1);
  v85 = v83 - 1;
  if (v84)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v86 = MEMORY[0x23EE74540](v85, v82);
    goto LABEL_26;
  }

  if ((v85 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v85 < *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v86 = *(v82 + 8 * v85 + 32);
LABEL_26:
    v87 = v86;

    sub_238BF3328();
    if (swift_dynamicCastClass())
    {
      sub_238BF3318();
    }

    goto LABEL_43;
  }

  __break(1u);
}

void sub_238BEF7F8(uint64_t a1)
{
  v3 = sub_238BF3268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238BF33A8();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238BF3278();
  (*(v4 + 16))(v7, a1, v3);
  v12 = v1;
  v13 = sub_238BF3398();
  v14 = sub_238BF34D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v16 = 138543618;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2082;
    sub_238BF1AC4(&qword_27DF6A810, MEMORY[0x277CC9260]);
    v34 = v8;
    v18 = v12;
    v19 = sub_238BF3568();
    v21 = v20;
    (*(v4 + 8))(v7, v3);
    v22 = sub_238BF0AC4(v19, v21, &v37);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_238BCD000, v13, v14, "%{public}@ opening URL: %{public}s", v16, 0x16u);
    v23 = v32;
    sub_238BF1704(v32, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v23, -1, -1);
    v24 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23EE74E00](v24, -1, -1);
    MEMORY[0x23EE74E00](v16, -1, -1);

    (*(v36 + 8))(v11, v34);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    (*(v36 + 8))(v11, v8);
  }

  v25 = objc_opt_self();
  v26 = [v25 sharedApplication];
  v27 = sub_238BF3248();
  v28 = [v26 canOpenURL_];

  if (v28)
  {
    v29 = [v25 sharedApplication];
    v30 = sub_238BF3248();
    sub_238BF157C(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey();
    sub_238BF1AC4(&qword_27DF6A808, type metadata accessor for OpenExternalURLOptionsKey);
    v31 = sub_238BF3418();

    [v29 openURL:v30 options:v31 completionHandler:0];
  }
}

uint64_t sub_238BEFC5C(uint64_t a1, SEL *a2)
{
  v3 = sub_238BF3268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [objc_opt_self() *a2];
    sub_238BF3258();

    sub_238BEF7F8(v7);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_238BEFD88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238BF3368();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  if ([v1 viewModel])
  {
    sub_238BF32F8();
    if (swift_dynamicCastClass())
    {
      sub_238BF3288();
      swift_unknownObjectRelease();
      (*(v4 + 32))(v10, v8, v3);
      sub_238BF3348();
      return (*(v4 + 8))(v10, v3);
    }

    swift_unknownObjectRelease();
  }

  v12 = *MEMORY[0x277D24188];
  v13 = sub_238BF3388();
  v14 = *(*(v13 - 8) + 104);

  return v14(a1, v12, v13);
}

void sub_238BEFF64(void *a1)
{
  v2 = v1;
  v4 = sub_238BF3388();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 presentationContext];
  if (v9)
  {
    v10 = v9;
    v11 = off_278A66000;
    if ([v1 isInViewHierarchy])
    {
LABEL_22:
      v52 = [v2 v11[260]];
      v53 = [v52 viewControllers];

      if (v53)
      {
        sub_238BF1764();
        v54 = sub_238BF34C8();

        if (v54 >> 62)
        {
          v55 = sub_238BF3538();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v53 = v55 != 0;
      }

      v56 = [v2 v11[260]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A830, &unk_238BF7BD0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_238BF7B50;
      *(v57 + 32) = a1;
      sub_238BF1764();
      v58 = a1;
      v59 = sub_238BF34B8();

      [v56 setViewControllers:v59 direction:0 animated:v53 completion:0];

      return;
    }

    v12 = [v1 pageViewController];
    [v2 addChildViewController_];
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      [v13 setTranslatesAutoresizingMaskIntoConstraints_];

      v15 = [v2 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v12 view];
        if (v17)
        {
          v18 = v17;
          v61 = v5;
          [v16 addSubview_];

          v19 = [v2 view];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 topAnchor];

            v22 = [v12 view];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 topAnchor];

              v25 = [v21 constraintEqualToAnchor_];
              [v25 setActive_];

              v26 = [v2 view];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 leadingAnchor];

                v29 = [v12 view];
                if (v29)
                {
                  v30 = v29;
                  v31 = [v29 leadingAnchor];

                  v32 = [v28 constraintEqualToAnchor_];
                  [v32 setActive_];

                  v33 = [v2 view];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v33 bottomAnchor];

                    v36 = [v12 view];
                    if (v36)
                    {
                      v37 = v36;
                      v38 = [v36 bottomAnchor];

                      v39 = [v35 constraintEqualToAnchor_];
                      [v39 setActive_];

                      v40 = [v2 view];
                      if (v40)
                      {
                        v41 = v40;
                        v42 = [v40 trailingAnchor];

                        v43 = [v12 view];
                        if (v43)
                        {
                          v44 = v43;
                          v45 = [v43 trailingAnchor];

                          v46 = [v42 constraintEqualToAnchor_];
                          [v46 setActive_];

                          [v12 didMoveToParentViewController_];
                          sub_238BEFD88(v8);
                          v47 = v61;
                          v48 = (*(v61 + 88))(v8, v4);
                          if (v48 == *MEMORY[0x277D24180])
                          {
                            [v10 showViewController:v2 sender:0];
                            v11 = off_278A66000;
                          }

                          else
                          {
                            v11 = off_278A66000;
                            if (v48 == *MEMORY[0x277D24188])
                            {
                              [v2 setModalInPresentation_];
                              [v10 presentViewController:v2 animated:1 completion:0];
                            }

                            else
                            {
                              (*(v47 + 8))(v8, v4);
                            }
                          }

                          goto LABEL_22;
                        }

LABEL_38:
                        __break(1u);
                        return;
                      }

LABEL_37:
                      __break(1u);
                      goto LABEL_38;
                    }

LABEL_36:
                    __break(1u);
                    goto LABEL_37;
                  }

LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_238BF32F8();
  sub_238BF1118();
  v49 = swift_allocError();
  *v50 = 0;
  v51 = sub_238BF32E8();

  sub_238BEE61C(0, v51);
}

uint64_t sub_238BF0684(uint64_t a1, id *a2)
{
  result = sub_238BF3448();
  *a2 = 0;
  return result;
}

uint64_t sub_238BF06FC(uint64_t a1, id *a2)
{
  v3 = sub_238BF3458();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_238BF077C@<X0>(uint64_t *a1@<X8>)
{
  sub_238BF3468();
  v2 = sub_238BF3438();

  *a1 = v2;
  return result;
}

uint64_t sub_238BF07C0()
{
  v1 = *v0;
  v2 = sub_238BF3468();
  v3 = MEMORY[0x23EE744D0](v2);

  return v3;
}

uint64_t sub_238BF07FC()
{
  v1 = *v0;
  sub_238BF3468();
  sub_238BF3488();
}

uint64_t sub_238BF0850()
{
  v1 = *v0;
  sub_238BF3468();
  sub_238BF35C8();
  sub_238BF3488();
  v2 = sub_238BF35E8();

  return v2;
}

uint64_t sub_238BF08C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_238BF3468();
  v6 = v5;
  if (v4 == sub_238BF3468() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_238BF3578();
  }

  return v9 & 1;
}

uint64_t sub_238BF094C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_238BF3438();

  *a2 = v5;
  return result;
}

uint64_t sub_238BF0994@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_238BF3468();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_238BF09C0(uint64_t a1)
{
  v2 = sub_238BF1AC4(&qword_27DF6A808, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_238BF1AC4(&unk_27DF6A8D0, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

uint64_t sub_238BF0AC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238BF0C38(v11, 0, 0, 1, a1, a2);
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
    sub_238BF0BDC(v11, v9);
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

uint64_t sub_238BF0BDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_238BF0C38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238BF0D44(a5, a6);
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
    result = sub_238BF3528();
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

uint64_t sub_238BF0D44(uint64_t a1, unint64_t a2)
{
  v4 = sub_238BF0D90(a1, a2);
  sub_238BF0EC0(&unk_284B7B2D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238BF0D90(uint64_t a1, unint64_t a2)
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

  v6 = sub_238BF0FAC(v5, 0);
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

  result = sub_238BF3528();
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
        v10 = sub_238BF3498();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238BF0FAC(v10, 0);
        result = sub_238BF3508();
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

uint64_t sub_238BF0EC0(uint64_t result)
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

  result = sub_238BF1020(result, v12, 1, v3);
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

void *sub_238BF0FAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A790, &qword_238BF7B78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238BF1020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A790, &qword_238BF7B78);
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

unint64_t sub_238BF1118()
{
  result = qword_27DF6AA10[0];
  if (!qword_27DF6AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF6AA10);
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

uint64_t sub_238BF11B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A0, &qword_238BF7B88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238BF1224()
{
  MEMORY[0x23EE74E30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_238BF125C(void (*a1)(uint64_t, uint64_t), unsigned int (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_238BEEB80(a1, a2);
  }
}

uint64_t sub_238BF12C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238BF1300(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_238BF1378(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_238BF13E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_238BF3468();
  sub_238BF35C8();
  sub_238BF3488();
  v4 = sub_238BF35E8();

  return sub_238BF1478(a1, v4);
}

unint64_t sub_238BF1478(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_238BF3468();
      v9 = v8;
      if (v7 == sub_238BF3468() && v9 == v10)
      {
        break;
      }

      v12 = sub_238BF3578();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_238BF157C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A818, &qword_238BF7BC0);
    v3 = sub_238BF3548();
    v4 = a1 + 32;

    while (1)
    {
      sub_238BF17B0(v4, &v11, &qword_27DF6A820, &qword_238BF7BC8);
      v5 = v11;
      result = sub_238BF13E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_238BF16F4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_27DF6A8B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DF6A8B0);
    }
  }
}

_OWORD *sub_238BF16F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_238BF1704(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_238BF1764()
{
  result = qword_27DF6A828;
  if (!qword_27DF6A828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF6A828);
  }

  return result;
}

uint64_t sub_238BF17B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s13FailureReasonOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13FailureReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238BF1998()
{
  result = qword_27DF6AAA0[0];
  if (!qword_27DF6AAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF6AAA0);
  }

  return result;
}

uint64_t sub_238BF1AC4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_238BF1B0C()
{
  v0 = [objc_opt_self() createContext];

  return v0;
}

id sub_238BF1B90()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_238BF1BC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LAContextProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_238BF1C5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LAContextProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}