uint64_t sub_21BAF6E40()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21BAF6E78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21BAF6EB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21BAF6EF4()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21BAF6F30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2478, &qword_21BB25208);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2480, &qword_21BB25210);
  sub_21BB0AE64();
  sub_21BB0AF30();
  return swift_getOpaqueTypeConformance2();
}

void sub_21BAF6FC8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21BB0B300(v2);
}

uint64_t sub_21BAF6FFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BB0B620(v4);
}

uint64_t sub_21BAF7028()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21BAF7064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 slotID];
  *a2 = result;
  return result;
}

uint64_t sub_21BAF7098()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26C8, &qword_21BB25458);
  type metadata accessor for MessagingSettingsProvider();
  sub_21BB13B1C();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BAF71A0()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21BAF7208()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2750, &qword_21BB25678);
  type metadata accessor for MessagingSettingsProvider();
  sub_21BB175A8();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BAF72F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2880, qword_21BB258E0);
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

uint64_t sub_21BAF73C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2880, qword_21BB258E0);
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

uint64_t sub_21BAF74E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BB1F1FC(v4);
}

uint64_t sub_21BAF7520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B50, &qword_21BB25D70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B58, qword_21BB25D78);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21BAF7644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B50, &qword_21BB25D70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B58, qword_21BB25D78);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21BAF7770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BB22C9C();
  *a1 = result & 1;
  return result;
}

id sub_21BAF77EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 au_BOOLValue];
  *a2 = result;
  return result;
}

void sub_21BAF812C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21BAF8C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(a15 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void sub_21BAF8C6C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x21BAF8C44);
}

void sub_21BAF9DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BAFBB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BAFDD90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_21BAFE0B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void AUGetAuthorizationStatesForService(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = tcc_server_singleton_default();
  v9 = tcc_service_singleton_for_CF_name();
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = _AULoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = a1;
    _os_log_impl(&dword_21BAF4000, v13, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", buf, 0xCu);
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  tcc_server_message_get_authorization_records_by_service();
  if (a2)
  {
    v17 = v14;
    *a2 = v14;
  }

  if (a3)
  {
    v18 = v15;
    *a3 = v15;
  }

  if (a4)
  {
    v19 = v16;
    *a4 = v16;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void AUSetTCCLevelForService(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _AULoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v12 = 138412802;
    v13 = a1;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_21BAF4000, v6, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%@", &v12, 0x20u);
  }

  v8 = tcc_server_singleton_default();
  [v5 cStringUsingEncoding:4];
  v9 = tcc_identity_create();
  v10 = tcc_service_singleton_for_CF_name();
  tcc_server_message_set_authorization_value();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_21BAFF180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB004D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB0099C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __AUGetAuthorizationStatesForService_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_14;
        case 2:
          v9 = 32;
          goto LABEL_14;
        case 3:
          v9 = 40;
LABEL_14:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_16;
  }

  v10 = _AULoggingFacility();
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __AUGetAuthorizationStatesForService_block_invoke_cold_1(a1, a3, v6);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_21BAF4000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v13, 0xCu);
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

void sub_21BB024CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB02CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PSCalendarAuthorizationStates(void *a1, void *a2, void *a3)
{
  v6 = tcc_server_create();
  v7 = *MEMORY[0x277D6C118];
  v8 = tcc_service_singleton_for_CF_name();
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = _AULoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BAF4000, v12, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service kTCCServiceCalendar", buf, 2u);
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  tcc_server_message_get_authorization_records_by_service();
  if (a1)
  {
    *a1 = [v13 copy];
  }

  if (a2)
  {
    *a2 = [v14 copy];
  }

  if (a3)
  {
    *a3 = [v15 copy];
  }
}

void __PSCalendarAuthorizationStates_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_15;
        case 2:
          v9 = 32;
          goto LABEL_15;
        case 4:
          v9 = 40;
LABEL_15:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_17;
  }

  v10 = _AULoggingFacility();
  v11 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PSCalendarAuthorizationStates_block_invoke_cold_1(a3, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21BAF4000, v11, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for kTCCServiceCalendar", v12, 2u);
  }

LABEL_17:
}

id _AULoggingFacility()
{
  if (_AULoggingFacility_onceToken != -1)
  {
    _AULoggingFacility_cold_1();
  }

  v1 = _AULoggingFacility_oslog;

  return v1;
}

uint64_t sub_21BB05AAC()
{
  v1 = v0;
  v2 = [v0 applicationBundleIdentifier];
  v3 = sub_21BB22FCC();
  v5 = v4;

  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v7 = sub_21BB08774(v3, v5, 0);
  result = MEMORY[0x277D84F90];
  if (!v7)
  {
    return result;
  }

  v9 = MEMORY[0x277D84F90];
  sub_21BB22ABC();
  v10 = [v1 applicationBundleIdentifier];
  sub_21BB22FCC();

  v11 = sub_21BB22AAC();

  v28 = v9;
  v12 = *(v11 + 16);
  if (v12)
  {
    v24 = v7;
    sub_21BB230CC();
    v7 = 0;
    v13 = v11 + 32;
    v25 = MEMORY[0x277D84F90];
    while (v7 < *(v11 + 16))
    {
      sub_21BB094F8(v13, v27);
      sub_21BB230BC();
      sub_21BB230AC();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v15 = MEMORY[0x28223BE20](isCurrentExecutor);
      MEMORY[0x28223BE20](v15);
      sub_21BB2294C();
      __swift_project_boxed_opaque_existential_0Tm(v27, v27[3]);
      if (sub_21BB22A4C())
      {
        sub_21BB094F8(v27, v26);
        v16 = objc_allocWithZone(type metadata accessor for DefaultAppsSpecifier());
        v17 = v1;
        if (!sub_21BB09A50(v26, v1))
        {
          goto LABEL_28;
        }

        v18 = __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x21CEFFA70](v18);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21BB2307C();
        }

        sub_21BB2308C();
        v25 = v28;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v27);
      }

      ++v7;
      v13 += 40;
      if (v12 == v7)
      {

        v7 = v24;
        v20 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_16:
  v27[0] = v20;
  v1 = (v20 >> 62);
  if (v20 >> 62)
  {
LABEL_25:
    if (!sub_21BB2325C())
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:

    return v27[0];
  }

LABEL_18:
  v21 = objc_opt_self();
  v22 = sub_21BB22FAC();
  v23 = [v21 groupSpecifierWithID_];

  if (!v23)
  {
    goto LABEL_22;
  }

  if (!v1 || (sub_21BB2325C() & 0x8000000000000000) == 0)
  {
    sub_21BB09360(0, 0, v23);

    v7 = v23;
    goto LABEL_22;
  }

  __break(1u);
LABEL_28:
  result = sub_21BB2324C();
  __break(1u);
  return result;
}

uint64_t sub_21BB05F20(void *a1)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21BB22A4C();
}

void sub_21BB05FE0()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2430, &qword_21BB25070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v10 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_21BB230EC();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_21BB230CC();
    v6 = v4;
    v7 = sub_21BB230BC();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_21BB06278(0, 0, v2, &unk_21BB25080, v8);
  }
}

uint64_t sub_21BB06134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21BB230CC();
  v4[4] = sub_21BB230BC();
  v6 = sub_21BB230AC();

  return MEMORY[0x2822009F8](sub_21BB061CC, v6, v5);
}

uint64_t sub_21BB061CC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = [v2 delegate];
  v4 = v3;
  if (v3)
  {
    [v3 systemSettingsSpecifiersProviderDidReloadSpecifiers_];
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = v4 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21BB06278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2430, &qword_21BB25070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_21BB09800(a3, v26 - v10);
  v12 = sub_21BB230EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BB09870(v11, &qword_27CDB2430, &qword_21BB25070);
  }

  else
  {
    sub_21BB230DC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21BB230AC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21BB22FFC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2438, &qword_21BB25098);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_21BB09870(a3, &qword_27CDB2430, &qword_21BB25070);

      return v23;
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

  sub_21BB09870(a3, &qword_27CDB2430, &qword_21BB25070);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2438, &qword_21BB25098);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_21BB0657C()
{
  v50[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21BB2293C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BB22F8C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = [objc_opt_self() defaultWorkspace];
  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = v7;
  v50[0] = 0;
  v9 = [v7 defaultApplicationForCategory:10 error:v50];
  if (!v9)
  {
    v22 = v50[0];
    v23 = sub_21BB2289C();

    swift_willThrow();
LABEL_16:

LABEL_17:
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = v9;
  v11 = v50[0];
  v12 = [v0 applicationBundleIdentifier];
  v13 = sub_21BB22FCC();
  v15 = v14;

  v16 = v10;
  v17 = [v16 bundleIdentifier];
  if (!v17)
  {

    goto LABEL_14;
  }

  v49[1] = v4;
  v18 = v17;
  v19 = sub_21BB22FCC();
  v21 = v20;

  if (v13 == v19 && v15 == v21)
  {

    goto LABEL_10;
  }

  v24 = sub_21BB232AC();

  if ((v24 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_10:
  v25 = [v16 bundleIdentifier];

  if (v25)
  {
    v26 = sub_21BB22FCC();
    v28 = v27;

    if (v26 == 0xD000000000000013 && 0x800000021BB27E60 == v28)
    {

LABEL_15:

      goto LABEL_16;
    }

    v30 = sub_21BB232AC();

    if (v30)
    {
      goto LABEL_15;
    }
  }

  v31 = [objc_allocWithZone(type metadata accessor for MessagingSettingsProvider()) init];
  v32 = MEMORY[0x277D84F90];
  v50[0] = MEMORY[0x277D84F90];
  objc_allocWithZone(type metadata accessor for RCSMessagingSpecifier());
  v33 = v31;
  v34 = v0;
  v35 = sub_21BB13E58(v33, v0);
  if (v35)
  {
    v36 = v35;
    MEMORY[0x21CEFFA70]();
    if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21BB2307C();
    }

    sub_21BB2308C();

    v32 = v50[0];
  }

  v37 = objc_allocWithZone(type metadata accessor for MMSMessagingSpecifier());
  v38 = v33;
  v39 = v34;
  sub_21BB11A08(v38, v0);
  if (v40)
  {
    v41 = v40;
    MEMORY[0x21CEFFA70]();
    if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v48 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21BB2307C();
    }

    sub_21BB2308C();

    v32 = v50[0];
  }

  if (v32 >> 62)
  {
    if (!sub_21BB2325C())
    {
      goto LABEL_35;
    }
  }

  else if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:

    goto LABEL_17;
  }

  v42 = objc_opt_self();
  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v43 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  v44 = sub_21BB22FAC();

  v45 = [v42 groupSpecifierWithName_];

  if (v45)
  {
    if (!(v32 >> 62) || (sub_21BB2325C() & 0x8000000000000000) == 0)
    {
      v46 = v45;
      sub_21BB09360(0, 0, v46);

      v8 = v16;
      v38 = v46;
      v16 = v46;
      goto LABEL_35;
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
}

id sub_21BB06B2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();

  sub_21BB094B0(0, &qword_27CDB2428, 0x277D3FAD8);
  v7 = sub_21BB2305C();

  return v7;
}

void sub_21BB06C24()
{
  v0 = [objc_opt_self() sharedInputModeController];
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = [v0 extensionInputModes];
  if (!v2 || (v3 = v2, v4 = sub_21BB2306C(), v3, v5 = sub_21BB0723C(v4), , !v5))
  {

    return;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_37:
    v7 = sub_21BB2325C();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_38:

LABEL_39:

    return;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_6:
  v38 = v1;
  v39 = v7;
  v8 = 0;
  v40 = v6;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CEFFBF0](v8, v5);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_36;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_21BB230CC();
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = [v10 containingBundle];
    if (v12 && (v13 = v12, v14 = [v12 bundleIdentifier], v13, v14))
    {
      v15 = sub_21BB22FCC();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v1 = [v41 applicationBundleIdentifier];
    v18 = sub_21BB22FCC();
    v20 = v19;

    if (!v17)
    {

      goto LABEL_8;
    }

    if (v15 == v18 && v17 == v20)
    {
      break;
    }

    v21 = sub_21BB232AC();

    if (v21)
    {
      goto LABEL_27;
    }

LABEL_8:
    ++v8;
    v6 = v40;
    if (v11 == v39)
    {
      goto LABEL_34;
    }
  }

LABEL_27:
  sub_21BB094B0(0, &qword_27CDB2410, &off_2782EED48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_21BB2288C();

  v24 = sub_21BB22FAC();

  v25 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v24 target:0 set:0 get:0 detail:0 cell:2 edit:0];

  if (!v25)
  {
LABEL_34:

    goto LABEL_39;
  }

  v26 = v25;
  v27 = sub_21BB22FAC();
  v28 = v26;
  [v26 setProperty:v27 forKey:*MEMORY[0x277D3FF08]];

  v29 = sub_21BB22FAC();
  v30 = PSBundlePathForPreferenceBundle();

  if (v30)
  {

    v31 = v30;

    if (!v31)
    {
      sub_21BB22FCC();
      v31 = sub_21BB22FAC();
    }

    [v28 setProperty:v31 forKey:*MEMORY[0x277D40000]];

    v32 = sub_21BB2309C();
    [v28 setProperty:v32 forKey:*MEMORY[0x277D3FE00]];

    v33 = sub_21BB2309C();
    [v28 setProperty:v33 forKey:*MEMORY[0x277D3FDF8]];

    v34 = sub_21BB2309C();
    [v28 setProperty:v34 forKey:*MEMORY[0x277D40020]];

    v35 = sub_21BB22FAC();
    [v28 setProperty:v35 forKey:*MEMORY[0x277D3FFD8]];

    v36 = [v41 applicationBundleIdentifier];
    if (!v36)
    {
      sub_21BB22FCC();
      v36 = sub_21BB22FAC();
    }

    [v28 setProperty:v36 forKey:*MEMORY[0x277D3FD90]];

    v37 = sub_21BB22FAC();
    [v28 setIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB0723C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_21BB2321C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_21BB09454(i, v6);
    sub_21BB094B0(0, &qword_27CDB2420, 0x277D75680);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_21BB231FC();
    v4 = *(v7 + 16);
    sub_21BB2322C();
    sub_21BB2323C();
    sub_21BB2320C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_21BB07364(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21BB229FC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v12 = &v54 - v11;
  v13 = *MEMORY[0x277D6C178];
  if (!*MEMORY[0x277D6C178])
  {
    __break(1u);
    goto LABEL_25;
  }

  v54 = v10;
  v55 = result;
  v14 = *MEMORY[0x277D6C1C0];
  if (!*MEMORY[0x277D6C1C0])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = v13;
  v16 = sub_21BB22FCC();
  v18 = v17;

  if (*(a1 + 16))
  {
    sub_21BB10978(v16, v18);
    v20 = v19;

    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v14;
  v22 = sub_21BB22FCC();
  v24 = v23;

  if (!*(a1 + 16))
  {

    return 0;
  }

  sub_21BB10978(v22, v24);
  v26 = v25;

  if ((v26 & 1) == 0)
  {

    return 0;
  }

LABEL_13:

  v27 = sub_21BB094B0(0, &qword_27CDB2410, &off_2782EED48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  sub_21BB2288C();

  v57 = v27;
  v56[0] = v2;
  v30 = v2;
  v31 = sub_21BB22FAC();

  if (v27)
  {
    v32 = __swift_project_boxed_opaque_existential_0Tm(v56, v27);
    v33 = *(v27 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v36 = &v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36);
    v37 = sub_21BB2329C();
    (*(v33 + 8))(v36, v27);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v31 target:v37 set:0 get:0 detail:0 cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v38)
  {
    v39 = sub_21BB2309C();
    [v38 setProperty:v39 forKey:*MEMORY[0x277D40020]];

    v40 = [objc_opt_self() currentDevice];
    v41 = [v40 userInterfaceIdiom];

    v42 = 0xD000000000000012;
    if (v41)
    {
      v42 = 0xD000000000000016;
      v43 = "Primary Text, Button";
    }

    else
    {
      v43 = "WalletPrivacySettings";
    }

    v57 = MEMORY[0x277D837D0];
    v56[0] = v42;
    v56[1] = v43 | 0x8000000000000000;
    __swift_project_boxed_opaque_existential_0Tm(v56, MEMORY[0x277D837D0]);
    v44 = sub_21BB2329C();
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    [v38 setProperty:v44 forKey:*MEMORY[0x277D40008]];
    swift_unknownObjectRelease();
    v45 = [v30 applicationBundleIdentifier];
    sub_21BB22FCC();

    sub_21BB229EC();
    v47 = v54;
    v46 = v55;
    (*(v54 + 16))(v8, v12, v55);
    v48 = sub_21BB232BC();
    v49 = sub_21BB22FAC();
    [v38 setProperty:v48 forKey:v49];
    swift_unknownObjectRelease();

    v50 = sub_21BB22FAC();
    v51 = sub_21BB22FAC();
    [v38 setProperty:v50 forKey:v51];

    v52 = sub_21BB22FAC();
    v53 = sub_21BB22FAC();
    [v38 setProperty:v52 forKey:v53];

    (*(v47 + 8))(v12, v46);
    return v38;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21BB07B54()
{
  v1 = sub_21BB229FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v58 - v6;
  v7 = sub_21BB22EEC();
  v67 = *(v7 - 8);
  v8 = v67[8];
  MEMORY[0x28223BE20](v7);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2408, &qword_21BB25058);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v58 - v13;
  v15 = sub_21BB22F0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21BB08350();
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v62 = v2;
  v63 = v1;
  v64 = v0;
  v22 = [v0 applicationBundleIdentifier];
  sub_21BB22FCC();

  sub_21BB22EDC();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_21BB09870(v14, &qword_27CDB2408, &qword_21BB25058);
    return 0;
  }

  v25 = v15;
  v61 = v21;
  result = (*(v16 + 32))(v19, v14, v15);
  v26 = *MEMORY[0x277D6C128];
  if (*MEMORY[0x277D6C128])
  {
    type metadata accessor for AUHelperFunctions();
    sub_21BB20B5C();
    v28 = v27;
    sub_21BB22EFC();
    v29 = v67;
    v30 = (v67[11])(v10, v7);
    v31 = v19;
    v32 = v64;
    if (v30 != *MEMORY[0x277D49308])
    {
      v37 = *MEMORY[0x277D49300];
      (*(v16 + 8))(v31, v25);

      if (v30 != v37)
      {
        (v67[1])(v10, v7);
      }

      return 0;
    }

    v59 = v31;
    (v29[12])(v10, v7);
    v33 = v10[1];
    v58 = *v10;
    v34 = sub_21BB094B0(0, &qword_27CDB2410, &off_2782EED48);
    v68[3] = v34;
    v68[0] = v32;
    v35 = v32;
    if (v28)
    {

      v36 = sub_21BB22FAC();
    }

    else
    {
      v36 = 0;
    }

    v67 = v26;
    v60 = v25;
    if (v34)
    {
      v38 = __swift_project_boxed_opaque_existential_0Tm(v68, v34);
      v39 = *(v34 - 8);
      v40 = *(v39 + 64);
      MEMORY[0x28223BE20](v38);
      v42 = &v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42);
      v43 = sub_21BB2329C();
      (*(v39 + 8))(v42, v34);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
    }

    else
    {
      v43 = 0;
    }

    v23 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v36 target:v43 set:0 get:0 detail:0 cell:2 edit:0];

    result = swift_unknownObjectRelease();
    if (v23)
    {

      v44 = sub_21BB22FAC();

      [v23 setProperty:v44 forKey:*MEMORY[0x277D401A8]];

      v45 = sub_21BB2309C();
      [v23 setProperty:v45 forKey:*MEMORY[0x277D40020]];

      sub_21BB21ACC();
      if (v46)
      {
        v47 = sub_21BB22FAC();
      }

      else
      {
        v47 = 0;
      }

      [v23 setProperty:v47 forKey:*MEMORY[0x277D3FFD8]];
      swift_unknownObjectRelease();
      v48 = [v32 applicationBundleIdentifier];
      sub_21BB22FCC();

      v49 = v66;
      sub_21BB229EC();
      v51 = v62;
      v50 = v63;
      (*(v62 + 16))(v65, v49, v63);
      v52 = sub_21BB232BC();
      v53 = sub_21BB22FAC();
      [v23 setProperty:v52 forKey:v53];
      swift_unknownObjectRelease();

      v54 = sub_21BB22FAC();
      v55 = sub_21BB22FAC();
      [v23 setProperty:v54 forKey:v55];

      v56 = sub_21BB22FAC();
      v57 = sub_21BB22FAC();
      [v23 setProperty:v56 forKey:v57];

      (*(v51 + 8))(v49, v50);
      (*(v16 + 8))(v59, v60);
      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21BB08350()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &unk_27CDB23C0);
  swift_endAccess();
  if (v2)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_21BB22F1C();
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_21BB09870(v11, &qword_27CDB25D0, &qword_21BB25060);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_21BB22F1C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_21BB22F2C();

  swift_beginAccess();

  objc_setAssociatedObject(v1, &unk_27CDB23C0, v7, 1);
  swift_endAccess();

  return v7;
}

id sub_21BB08530(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = a4();

  return v7;
}

void sub_21BB08620(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_21BB0866C()
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong delegate];
    if (v2)
    {
      [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

id sub_21BB08774(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21BB22FAC();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_21BB2289C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL sub_21BB0886C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_21BB088C4()
{
  v1 = *v0;
  sub_21BB232DC();
  MEMORY[0x21CEFFD10](v1);
  return sub_21BB232FC();
}

uint64_t sub_21BB08938()
{
  v1 = *v0;
  sub_21BB232DC();
  MEMORY[0x21CEFFD10](v1);
  return sub_21BB232FC();
}

void *sub_21BB0897C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21BB0898C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_21BB229BC();
}

uint64_t sub_21BB08A4C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21BB229DC();
}

uint64_t sub_21BB08A98()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21BB229CC();
}

uint64_t sub_21BB08AF0()
{
  sub_21BB232DC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_21BB229CC();
  return sub_21BB232FC();
}

uint64_t sub_21BB08BA0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_21BB08C78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2440, &qword_21BB250A8);
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

void sub_21BB08D84(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_21BB08C78(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  sub_21BB08F00(a1, a2, 1, a3, a4);
  *v4 = v6;
}

uint64_t sub_21BB08E60(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_21BB2325C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_21BB231DC();
  *v1 = result;
  return result;
}

void sub_21BB08F00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = *v5;
  v11 = (v10 + 32 + 16 * a1);
  a1 = swift_arrayDestroy();
  v12 = __OFSUB__(a3, v6);
  v13 = a3 - v6;
  if (v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v10 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_21;
  }

  a1 = &v11[2 * a3];
  v16 = (v10 + 32 + 16 * a2);
  if (a1 != v16 || a1 >= v16 + 16 * v15)
  {
    a1 = memmove(a1, v16, 16 * v15);
  }

  v18 = *(v10 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_22;
  }

  *(v10 + 16) = v19;
LABEL_13:
  if (a3 > 0)
  {
    a1 = a4;
    *v11 = a4;
    v11[1] = a5;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    v20 = a1;

    __break(1u);
    return;
  }
}

uint64_t sub_21BB0902C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21BB09120;

  return v6(v2 + 32);
}

uint64_t sub_21BB09120()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

char *sub_21BB09234(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_21BB094B0(0, &qword_27CDB2428, 0x277D3FAD8);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21BB2325C();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_21BB2325C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_21BB09360(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21BB2325C();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_21BB2325C();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_21BB08E60(result);

  return sub_21BB09234(v6, v5, 1, v3);
}

uint64_t sub_21BB09454(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21BB094B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_21BB094F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void (*sub_21BB09564())()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_21BB09650;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21BB09658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BB0970C;

  return sub_21BB06134(a1, v4, v5, v6);
}

uint64_t sub_21BB0970C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21BB09800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2430, &qword_21BB25070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB09870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21BB098D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BB09A4C;

  return sub_21BB0902C(a1, v5);
}

uint64_t sub_21BB09988(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BB0970C;

  return sub_21BB0902C(a1, v5);
}

id sub_21BB09A50(uint64_t *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  sub_21BB094F8(a1, v2 + OBJC_IVAR____TtC19AppSystemSettingsUI20DefaultAppsSpecifier_provider);
  swift_unknownObjectWeakAssign();
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21BB22A1C();
  if (v8)
  {
    v9 = sub_21BB22FAC();
  }

  else
  {
    v9 = 0;
  }

  type metadata accessor for DefaultAppsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_initWithName_target_set_get_detail_cell_edit_, v9, 0, 0, sel_getLocalizedDetailText, ObjCClassFromMetadata, 2, 0);

  if (v11)
  {

    v12 = v11;
    [v12 setTarget_];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    sub_21BB22A2C();
    v14 = sub_21BB22FAC();

    [v12 setIdentifier_];

    __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    [v12 setUserInfo_];

    swift_unknownObjectRelease();
    a2 = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

id sub_21BB09DBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BB09E64()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  result = [v0 specifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = result;
  v4 = [result userInfo];

  if (v4)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v27 = v20;
  v28 = v21;
  if (!*(&v21 + 1))
  {
    sub_21BB09870(&v27, &qword_27CDB25D0, &qword_21BB25060);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    return sub_21BB09870(&v22, &qword_27CDB2458, &qword_21BB25148);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2460, &qword_21BB25150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    return sub_21BB09870(&v22, &qword_27CDB2458, &qword_21BB25148);
  }

  if (!*(&v23 + 1))
  {
    return sub_21BB09870(&v22, &qword_27CDB2458, &qword_21BB25148);
  }

  sub_21BB0A83C(&v22, &v27);
  result = [v1 specifier];
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_0Tm(&v27, *(&v28 + 1));
  sub_21BB22A0C();
  if (v6)
  {
    v7 = sub_21BB22FAC();
  }

  else
  {
    v7 = 0;
  }

  [v5 setProperty:v7 forKey:*MEMORY[0x277D401A8]];

  swift_unknownObjectRelease();
  sub_21BB094F8(&v27, &v20);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BB094F8(&v20, v19);

  sub_21BB22E0C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v20);

  v25 = sub_21BB0A854;
  v26 = v8;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2468, &qword_21BB25158));
  v10 = sub_21BB22CEC();
  v11 = [v10 view];
  if (!v11)
  {

    return __swift_destroy_boxed_opaque_existential_0Tm(&v27);
  }

  v12 = v11;
  result = [v1 view];
  if (!result)
  {
    goto LABEL_23;
  }

  v13 = result;
  [result addSubview_];

  result = [v1 view];
  if (result)
  {
    v14 = result;
    [result bounds];
    v16 = v15;
    v18 = v17;

    [v12 setFrame_];
    [v12 setAutoresizingMask_];
    [v1 addChildViewController_];
    [v10 didMoveToParentViewController_];

    return __swift_destroy_boxed_opaque_existential_0Tm(&v27);
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_21BB0A208()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong specifier];

    if (v2)
    {
      type metadata accessor for DefaultAppsSpecifier();
      if (swift_dynamicCastClass())
      {
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          v4 = v3;
          v5 = [v3 delegate];
          if (v5)
          {
            [v5 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_21BB0A3AC(void *a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_setSpecifier_, a1);
  if ([a1 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v12 = v7;
  v13 = v8;
  if (!*(&v8 + 1))
  {
    sub_21BB09870(&v12, &qword_27CDB25D0, &qword_21BB25060);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    return sub_21BB09870(&v9, &qword_27CDB2458, &qword_21BB25148);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2460, &qword_21BB25150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_21BB09870(&v9, &qword_27CDB2458, &qword_21BB25148);
  }

  if (!*(&v10 + 1))
  {
    return sub_21BB09870(&v9, &qword_27CDB2458, &qword_21BB25148);
  }

  sub_21BB0A83C(&v9, &v12);
  __swift_project_boxed_opaque_existential_0Tm(&v12, *(&v13 + 1));
  sub_21BB22A1C();
  if (v4)
  {
    v5 = sub_21BB22FAC();
  }

  else
  {
    v5 = 0;
  }

  [v2 setTitle_];

  return __swift_destroy_boxed_opaque_existential_0Tm(&v12);
}

uint64_t sub_21BB0A83C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21BB0A85C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2470, &qword_21BB25200);
  sub_21BB22E1C();
  __swift_project_boxed_opaque_existential_0Tm(v21, v22);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v3 = sub_21BB22A3C();
  v4 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(v16 - v5, boxed_opaque_existential_1, AssociatedTypeWitness);
  v7 = sub_21BB22E4C();
  sub_21BB0ADD4(v0, &v17);
  v8 = swift_allocObject();
  v9 = v18;
  v8[1] = v17;
  v8[2] = v9;
  v10 = v20;
  v8[3] = v19;
  v8[4] = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  v23[0] = v7;
  v23[1] = sub_21BB0AE0C;
  v23[2] = v8;
  v24 = 0;
  AssociatedConformanceWitness = 0;
  sub_21BB22E1C();
  __swift_project_boxed_opaque_existential_0Tm(v21, v22);
  v16[0] = sub_21BB22A0C();
  v16[1] = v11;
  sub_21BB0ADD4(v0, &v17);
  v12 = swift_allocObject();
  v13 = v18;
  v12[1] = v17;
  v12[2] = v13;
  v14 = v20;
  v12[3] = v19;
  v12[4] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2478, &qword_21BB25208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2480, &qword_21BB25210);
  sub_21BB0AE64();
  sub_21BB0AF30();
  sub_21BB22DBC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_21BB0AB4C(uint64_t a1)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 56);
  (*(a1 + 48))(isCurrentExecutor);
}

uint64_t sub_21BB0ABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a3 + 56);
  (*(a3 + 48))(isCurrentExecutor);
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

uint64_t sub_21BB0ACAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BB0ACF4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_21BB0AE64()
{
  result = qword_27CDB2488;
  if (!qword_27CDB2488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2478, &qword_21BB25208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2488);
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

unint64_t sub_21BB0AF30()
{
  result = qword_27CDB2490;
  if (!qword_27CDB2490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2480, &qword_21BB25210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2490);
  }

  return result;
}

uint64_t sub_21BB0AFAC()
{
  v0 = sub_21BB22B0C();
  __swift_allocate_value_buffer(v0, qword_27CDB3700);
  __swift_project_value_buffer(v0, qword_27CDB3700);
  return sub_21BB22AFC();
}

uint64_t sub_21BB0B028()
{
  v0 = sub_21BB22B0C();
  __swift_allocate_value_buffer(v0, qword_27CDB24A0);
  v1 = __swift_project_value_buffer(v0, qword_27CDB24A0);
  if (qword_27CDB23C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CDB3700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21BB0B0F0()
{
  sub_21BB094B0(0, &qword_27CDB25C0, 0x277CFB9C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CDB24B8 = result;
  return result;
}

uint64_t sub_21BB0B158()
{
  result = sub_21BB22FAC();
  qword_27CDB24C0 = result;
  return result;
}

void *sub_21BB0B190()
{
  swift_getKeyPath();
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v1 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  v2 = v1;
  return v1;
}

id sub_21BB0B240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v4 = *(v3 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  *a2 = v4;

  return v4;
}

void sub_21BB0B300(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
  v5 = *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
    sub_21BB2295C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB094B0(0, &qword_27CDB25F8, 0x277CC37A8);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BB2316C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_21BB0B498()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v1 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_21BB0B558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21BB0B620(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_21BB111D8(v5, a1);
  v7 = v6;

  if (v7)
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
    sub_21BB2295C();
  }
}

uint64_t sub_21BB0B770(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

char *sub_21BB0B7E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
  sub_21BB094B0(0, &qword_27CDB2628, 0x277D85C78);
  v4 = sub_21BB2312C();
  v5 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo] = 0;
  *&v1[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID] = MEMORY[0x277D84F98];
  sub_21BB2299C();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  [*&v6[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient] setDelegate_];
  return v6;
}

void *sub_21BB0B900(void *a1)
{
  v2 = v1;
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a1 slotID];
  swift_getKeyPath();
  v21 = v1;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v5 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (*(v6 + 16) && (v7 = sub_21BB1090C(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v11 = *&v2[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient];
    v20[0] = 0;
    v12 = [v11 getSystemConfiguration:a1 withError:v20];
    v13 = v20[0];
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v14 = v13;
      v15 = sub_21BB2289C();

      swift_willThrow();
      v9 = 0;
    }

    v16 = [a1 slotID];
    swift_getKeyPath();
    v20[0] = v2;
    v17 = v12;
    sub_21BB2296C();

    v20[0] = v2;
    swift_getKeyPath();
    sub_21BB2298C();

    swift_beginAccess();
    sub_21BB0BB74(v9, v16);
    swift_endAccess();
    v20[0] = v2;
    swift_getKeyPath();
    sub_21BB2297C();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_21BB0BB74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_21BB10F34(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = sub_21BB1090C(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_21BB1107C();
        v14 = v16;
      }

      result = sub_21BB10DA0(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_21BB0BC34()
{
  v1 = v0;
  v41[6] = *MEMORY[0x277D85DE8];
  v2 = sub_21BB11330();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = [v2 subscriptionsInUse];
    if (v4)
    {
      v5 = v4;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v6 = sub_21BB2306C();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v40 = v3;
  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v34 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
  v39 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  if (v7)
  {
    v8 = 0;
    v37 = v6 & 0xFFFFFFFFFFFFFF8;
    v38 = v6 & 0xC000000000000001;
    v35 = v6;
    v36 = v7;
    while (1)
    {
      if (v38)
      {
        v9 = MEMORY[0x21CEFFBF0](v8, v6);
      }

      else
      {
        if (v8 >= *(v37 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v7 = sub_21BB2325C();
        goto LABEL_8;
      }

      v12 = [v9 slotID];
      swift_getKeyPath();
      v41[0] = v1;
      sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
      sub_21BB2296C();

      v13 = *&v1[v39];
      if (*(v13 + 16) && (v14 = sub_21BB1090C(v12), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
      }

      else
      {
        v17 = *&v1[v34];
        v41[0] = 0;
        v18 = [v17 getSystemConfiguration:v10 withError:{v41, v34}];
        v19 = v41[0];
        if (!v18)
        {
          v20 = v19;
          v21 = sub_21BB2289C();

          swift_willThrow();
          v18 = 0;
        }

        v22 = [v10 slotID];
        swift_getKeyPath();
        v41[0] = v1;
        v16 = v18;
        sub_21BB2296C();

        v41[0] = v1;
        swift_getKeyPath();
        sub_21BB2298C();

        swift_beginAccess();
        sub_21BB0BB74(v18, v22);
        swift_endAccess();
        v41[0] = v1;
        swift_getKeyPath();
        sub_21BB2297C();

        v6 = v35;
        v11 = v8 + 1;
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      v23 = [v16 featureDisabledByProfile];

      if (v23)
      {
        goto LABEL_27;
      }

LABEL_24:
      v24 = [v10 phoneNumber];
      if (v24)
      {
        v25 = v24;
        v26 = [v10 labelID];
        if (v26)
        {
          v27 = v26;
          v28 = [objc_opt_self() sharedManager];
          v29 = [v28 supportedForPhoneNumber:v25 simID:v27];

          v6 = v35;
          if (v29)
          {
LABEL_27:
            sub_21BB231FC();
            v30 = *(v40 + 16);
            sub_21BB2322C();
            sub_21BB2323C();
            sub_21BB2320C();
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

LABEL_12:
      ++v8;
      if (v11 == v36)
      {
        v31 = v40;
        goto LABEL_31;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_21BB0C0F0()
{
  result = sub_21BB11330();
  if (result)
  {
    result = [result subscriptions];
    if (result)
    {
      v1 = result;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v2 = sub_21BB2306C();

      if (v2 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
      {
        v4 = 0;
        v5 = &off_2782EF000;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x21CEFFBF0](v4, v2);
          }

          else
          {
            if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v7 = *(v2 + 8 * v4 + 32);
          }

          v8 = v7;
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          v10 = sub_21BB0B900(v7);
          if (!v10)
          {
            v13 = v8;
            goto LABEL_18;
          }

          v11 = v10;
          v12 = [v10 operationStatus];
          if (v12)
          {
            v13 = v12;
            if ([v12 v5[397]] == -1)
            {
              v14 = [v11 featureEnabledByDefault];

              if (v14)
              {
                goto LABEL_25;
              }
            }

            else
            {
              if ([v11 featureDisabledByProfile])
              {

LABEL_18:
                goto LABEL_7;
              }

              if (![v13 v5[397]])
              {

                return 1;
              }

              v15 = [v13 v5[397]];

              if (v15 == 1)
              {
LABEL_25:

                return 1;
              }
            }
          }

          else
          {
            v6 = [v11 featureEnabledByDefault];

            if (v6)
            {
              goto LABEL_25;
            }
          }

LABEL_7:
          ++v4;
          v5 = &off_2782EF000;
          if (v9 == i)
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

      return 0;
    }
  }

  return result;
}

uint64_t sub_21BB0C33C()
{
  v1 = [v0 operationStatus];
  if (!v1)
  {
    return [v0 featureEnabledByDefault];
  }

  v2 = v1;
  if ([v1 switchState] == -1)
  {
    v4 = [v0 featureEnabledByDefault];

    return v4;
  }

  else if ([v0 featureDisabledByProfile])
  {

    return 0;
  }

  else if ([v2 switchState])
  {
    v5 = [v2 switchState];

    return v5 == 1;
  }

  else
  {

    return 1;
  }
}

void sub_21BB0C420(char a1, void *a2)
{
  v3 = v2;
  v21[1] = *MEMORY[0x277D85DE8];
  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v6 = sub_21BB22B0C();
  __swift_project_value_buffer(v6, qword_27CDB24A0);
  v7 = a2;
  v8 = sub_21BB22AEC();
  v9 = sub_21BB230FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2112;
    *(v10 + 10) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_21BAF4000, v8, v9, "Setting RCS enabled: %{BOOL}d for: %@", v10, 0x12u);
    sub_21BB09870(v11, &qword_27CDB25E8, &qword_21BB252C8);
    MEMORY[0x21CF00730](v11, -1, -1);
    MEMORY[0x21CF00730](v10, -1, -1);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v21[0] = 0;
  if (a1)
  {
    v14 = [v13 enableLazuli:v7 withError:v21];
  }

  else
  {
    v14 = [v13 disableLazuli:v7 withError:v21];
  }

  v15 = v21[0];
  if (v14)
  {
    v16 = *MEMORY[0x277D85DE8];

    v17 = v15;
  }

  else
  {
    v18 = v21[0];
    v19 = sub_21BB2289C();

    swift_willThrow();
    v20 = *MEMORY[0x277D85DE8];
  }
}

id sub_21BB0C668()
{
  v0 = sub_21BB11330();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = [v0 subscriptionsInUse];
    if (v2)
    {
      v3 = v2;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v4 = sub_21BB2306C();
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v17 = v1;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_8;
    }

LABEL_23:
    v16 = MEMORY[0x277D84F90];
LABEL_24:

    return v16;
  }

LABEL_22:
  v5 = sub_21BB2325C();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_8:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEFFBF0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    result = [objc_opt_self() sharedManager];
    if (!result)
    {
      break;
    }

    v11 = result;
    v12 = [v8 phoneNumber];
    v13 = [v8 labelID];
    v14 = [v11 mmsSupportedAndConfiguredForPhoneNumber:v12 simID:v13];

    if (v14)
    {
      sub_21BB231FC();
      v15 = *(v17 + 16);
      sub_21BB2322C();
      sub_21BB2323C();
      sub_21BB2320C();
    }

    else
    {
    }

    ++v6;
    if (v9 == v5)
    {
      v16 = v17;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BB0C894(void *a1)
{
  [a1 slotID];
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_21BB22FAC();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {

    v12 = 0u;
    v13 = 0u;
LABEL_9:
    sub_21BB09870(&v12, &qword_27CDB25D0, &qword_21BB25060);
LABEL_11:
    v8 = sub_21BB0CAA4(a1);
    return v8 & 1;
  }

  v5 = sub_21BB22FAC();

  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v10 = 0u;
    v11 = 0u;
  }

  v12 = *v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    goto LABEL_9;
  }

  sub_21BB118AC(&v12, v14);
  sub_21BB09454(v14, &v12);
  sub_21BB094B0(0, &qword_27CDB25D8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    goto LABEL_11;
  }

  v7 = [v10[0] BOOLValue];

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  v8 = v7;
  return v8 & 1;
}

uint64_t sub_21BB0CAA4(uint64_t a1)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v4 = sub_21BB22FAC();
  v5 = [objc_allocWithZone(MEMORY[0x277CC3620]) initWithBundleType_];
  v19[0] = 0;
  v6 = [v3 copyCarrierBundleValueWithDefault:a1 key:v4 bundleType:v5 error:v19];

  v7 = v19[0];
  if (!v6)
  {
    v14 = v19[0];
    v15 = sub_21BB2289C();

    swift_willThrow();
    result = 0;
    goto LABEL_13;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v16 = v7;
    goto LABEL_10;
  }

  v19[0] = 0;
  v8 = v7;
  v6 = v6;
  sub_21BB22F4C();

  v9 = v19[0];
  if (!v19[0])
  {
LABEL_10:

    result = 0;
    goto LABEL_13;
  }

  if (!*(v19[0] + 2) || (v10 = sub_21BB10978(0xD000000000000011, 0x800000021BB281B0), (v11 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_21BB09454(v9[7] + 32 * v10, v19);

  sub_21BB094B0(0, &qword_27CDB25D8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    result = 1;
    goto LABEL_13;
  }

  v12 = [v18 BOOLValue];

  result = v12;
LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BB0CCC8()
{
  v0 = sub_21BB11330();
  if (!v0)
  {
    return 0;
  }

  v1 = [v0 subscriptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
  v3 = sub_21BB2306C();

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
  {
    v5 = 0;
    v18 = v3 & 0xC000000000000001;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v7 = MEMORY[0x21CEFFBF0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = sub_21BB0B900(v7);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = v10;
      v12 = v3;
      v13 = [v10 businessMessagingCapabilities];
      if (!v13)
      {
        goto LABEL_7;
      }

      v14 = v13;
      if (([v11 featureSupported] & 1) == 0)
      {

LABEL_7:
        v3 = v12;
LABEL_8:

        goto LABEL_9;
      }

      v15 = [v14 supported];

      v3 = v12;
      if (v15)
      {
        v16 = 1;
        goto LABEL_25;
      }

LABEL_9:
      ++v5;
      if (v9 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v16 = 0;
LABEL_25:

  return v16;
}

uint64_t sub_21BB0CE8C()
{
  v1 = v0;
  v152[6] = *MEMORY[0x277D85DE8];
  result = sub_21BB11330();
  if (!result)
  {
    goto LABEL_149;
  }

  result = [result subscriptions];
  if (!result)
  {
    goto LABEL_149;
  }

  v3 = result;
  sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
  v4 = sub_21BB2306C();

  v129 = v4;
  if (v4 >> 62)
  {
    goto LABEL_147;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_148:

    result = 0;
LABEL_149:
    v127 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_5:
  v6 = 0;
  v7 = 0;
  v139 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
  v8 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
  v128 = v5;
  v9 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  v146 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  v140 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
  while (1)
  {
    if ((v129 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x21CEFFBF0](v6, v129);
    }

    else
    {
      if (v6 >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_139;
      }

      v13 = *(v129 + 32 + 8 * v6);
    }

    v10 = v13;
    v14 = __OFADD__(v6++, 1);
    if (v14)
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      v5 = sub_21BB2325C();
      if (!v5)
      {
        goto LABEL_148;
      }

      goto LABEL_5;
    }

    v15 = sub_21BB0B900(v13);
    if (v15)
    {
      break;
    }

LABEL_11:

    if (v6 == v5)
    {
      goto LABEL_148;
    }
  }

  v11 = v15;
  v16 = [v15 businessMessagingCapabilities];
  if (!v16)
  {
LABEL_10:

    goto LABEL_11;
  }

  v141 = v16;
  v17 = [v16 userPreferenceForSwitch];
  if (v17 != -1)
  {
    if (v17 != 1)
    {
      goto LABEL_8;
    }

    v131 = v11;
    v130 = v10;
    swift_getKeyPath();
    v152[0] = v1;
    sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
    sub_21BB2296C();

    if (*&v1[v8])
    {
      goto LABEL_80;
    }

    v18 = v6;
    v19 = *&v1[v139];
    v152[0] = 0;
    v20 = [v19 getSubscriptionInfoWithError_];
    if (v20)
    {
      v21 = v5;
      v22 = v7;
      v23 = *&v1[v140];
      v24 = v152[0];
      if (v23)
      {
        sub_21BB094B0(0, &qword_27CDB25F8, 0x277CC37A8);
        v25 = v23;
        v26 = v20;
        v27 = sub_21BB2316C();

        if (v27)
        {
          v28 = v140;
          v29 = *&v1[v140];
          v7 = v22;
          v5 = v21;
LABEL_79:
          *&v1[v28] = v20;

          v6 = v18;
          v8 = v28;
LABEL_80:
          swift_getKeyPath();
          v152[0] = v1;
          sub_21BB2296C();

          v81 = *&v1[v8];
          if (v81)
          {
            v82 = [v81 subscriptions];
            v10 = v130;
            if (v82)
            {
              v83 = v82;
              v84 = sub_21BB2306C();

              v133 = v6;
              if (v84 >> 62)
              {
                v85 = sub_21BB2325C();
              }

              else
              {
                v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              swift_beginAccess();
              if (v85)
              {
                v86 = 0;
                v138 = v84 & 0xC000000000000001;
                v136 = v84 & 0xFFFFFFFFFFFFFF8;
                v134 = v85;
                v143 = v84;
                while (1)
                {
                  if (v138)
                  {
                    v88 = MEMORY[0x21CEFFBF0](v86, v84);
                    v89 = v86 + 1;
                    if (__OFADD__(v86, 1))
                    {
                      goto LABEL_140;
                    }
                  }

                  else
                  {
                    if (v86 >= *(v136 + 16))
                    {
                      goto LABEL_141;
                    }

                    v88 = *(v84 + 8 * v86 + 32);
                    v89 = v86 + 1;
                    if (__OFADD__(v86, 1))
                    {
                      goto LABEL_140;
                    }
                  }

                  v145 = v89;
                  v148 = v7;
                  v151 = v88;
                  v90 = [v88 slotID];
                  swift_getKeyPath();
                  v152[0] = v1;
                  sub_21BB2296C();

                  v91 = *&v1[v9];
                  if (*(v91 + 16))
                  {
                    v92 = sub_21BB1090C(v90);
                    if (v93)
                    {
                      v94 = *(*(v91 + 56) + 8 * v92);
                      goto LABEL_117;
                    }
                  }

                  v95 = *&v1[v139];
                  v152[0] = 0;
                  v96 = v151;
                  v97 = [v95 getSystemConfiguration:v151 withError:v152];
                  v98 = v152[0];
                  if (!v97)
                  {
                    v99 = v98;
                    v100 = sub_21BB2289C();

                    v96 = v151;
                    swift_willThrow();

                    v148 = 0;
                  }

                  v101 = [v96 slotID];
                  swift_getKeyPath();
                  v152[0] = v1;
                  v94 = v97;
                  sub_21BB2296C();

                  v152[0] = v1;
                  swift_getKeyPath();
                  sub_21BB2298C();

                  v9 = v146;
                  swift_beginAccess();
                  if (v97)
                  {
                    break;
                  }

                  v113 = sub_21BB1090C(v101);
                  v8 = v140;
                  v85 = v134;
                  if (v114)
                  {
                    v115 = v113;
                    v116 = *&v1[v146];
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v118 = *&v1[v146];
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      sub_21BB1107C();
                    }

                    sub_21BB10DA0(v115, v118);
                    *&v1[v146] = v118;
                  }

LABEL_116:
                  swift_endAccess();
                  v152[0] = v1;
                  swift_getKeyPath();
                  sub_21BB2297C();

                  if (!v97)
                  {
                    v124 = v151;
                    v84 = v143;
                    goto LABEL_122;
                  }

LABEL_117:
                  v123 = [v94 operationStatus];
                  if (!v123)
                  {
                    v87 = [v94 featureEnabledByDefault];

                    v7 = v148;
                    v84 = v143;
                    if (v87)
                    {
                      goto LABEL_137;
                    }

                    goto LABEL_87;
                  }

                  v124 = v123;
                  v84 = v143;
                  if ([v123 switchState] == -1)
                  {
                    v125 = [v94 featureEnabledByDefault];

                    v7 = v148;
                    if (v125)
                    {
                      goto LABEL_137;
                    }

                    goto LABEL_87;
                  }

                  if ([v94 featureDisabledByProfile])
                  {

LABEL_122:
                    v7 = v148;
                    goto LABEL_87;
                  }

                  if (![v124 switchState])
                  {

                    goto LABEL_137;
                  }

                  v126 = [v124 switchState];

                  v7 = v148;
                  if (v126 == 1)
                  {
                    goto LABEL_137;
                  }

LABEL_87:
                  ++v86;
                  if (v145 == v85)
                  {
                    v10 = v130;
                    goto LABEL_129;
                  }
                }

                v102 = *&v1[v146];
                v103 = swift_isUniquelyReferenced_nonNull_native();
                v104 = *&v1[v146];
                v106 = sub_21BB1090C(v101);
                v107 = v104[2];
                v108 = (v105 & 1) == 0;
                v109 = v107 + v108;
                if (__OFADD__(v107, v108))
                {
                  goto LABEL_144;
                }

                v110 = v105;
                if (v104[3] >= v109)
                {
                  if (v103)
                  {
                    if ((v105 & 1) == 0)
                    {
                      goto LABEL_113;
                    }
                  }

                  else
                  {
                    sub_21BB1107C();
                    if ((v110 & 1) == 0)
                    {
                      goto LABEL_113;
                    }
                  }
                }

                else
                {
                  sub_21BB10B14(v109, v103);
                  v111 = sub_21BB1090C(v101);
                  if ((v110 & 1) != (v112 & 1))
                  {
                    goto LABEL_151;
                  }

                  v106 = v111;
                  if ((v110 & 1) == 0)
                  {
LABEL_113:
                    v104[(v106 >> 6) + 8] |= 1 << v106;
                    *(v104[6] + 8 * v106) = v101;
                    *(v104[7] + 8 * v106) = v94;
                    v121 = v104[2];
                    v14 = __OFADD__(v121, 1);
                    v122 = v121 + 1;
                    if (v14)
                    {
                      goto LABEL_146;
                    }

                    v104[2] = v122;
                    goto LABEL_115;
                  }
                }

                v119 = v104[7];
                v120 = *(v119 + 8 * v106);
                *(v119 + 8 * v106) = v94;

LABEL_115:
                v9 = v146;
                *&v1[v146] = v104;
                v8 = v140;
                v85 = v134;
                goto LABEL_116;
              }

LABEL_129:
              v6 = v133;
              goto LABEL_130;
            }
          }

          else
          {
            v10 = v130;
          }

LABEL_7:
          v11 = v131;
LABEL_8:
          v12 = v141;
LABEL_9:

          goto LABEL_10;
        }
      }

      v77 = v22;
    }

    else
    {
      v78 = v152[0];
      v79 = sub_21BB2289C();

      swift_willThrow();
      v29 = *&v1[v140];
      if (!v29)
      {
        v20 = 0;
        v7 = 0;
        v28 = v140;
        goto LABEL_79;
      }

      v21 = v5;
      v77 = 0;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v152[0] = v1;
    sub_21BB2295C();
    v7 = v77;

    v6 = v18;
    v8 = v140;
    v5 = v21;
    goto LABEL_80;
  }

  if (([v141 enabledByDefault] & 1) == 0)
  {
    goto LABEL_8;
  }

  v131 = v11;
  v30 = sub_21BB11330();
  if (!v30)
  {
    goto LABEL_7;
  }

  v31 = [v30 subscriptions];
  if (!v31)
  {
    goto LABEL_7;
  }

  v32 = v31;
  v33 = sub_21BB2306C();

  if (v33 >> 62)
  {
    v34 = sub_21BB2325C();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v34)
  {
LABEL_130:

    v11 = v131;
    v12 = v141;
    v5 = v128;
    goto LABEL_9;
  }

  v130 = v10;
  v35 = 0;
  v144 = v33 & 0xC000000000000001;
  v137 = v33 & 0xFFFFFFFFFFFFFF8;
  v132 = v6;
  v142 = v33;
  v135 = v34;
  while (1)
  {
    if (v144)
    {
      v37 = MEMORY[0x21CEFFBF0](v35, v33);
    }

    else
    {
      if (v35 >= *(v137 + 16))
      {
        goto LABEL_143;
      }

      v37 = *(v33 + 8 * v35 + 32);
    }

    v38 = v37;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_142;
    }

    v149 = v35 + 1;
    v39 = [v37 slotID];
    swift_getKeyPath();
    v152[0] = v1;
    sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
    sub_21BB2296C();

    v40 = *&v1[v9];
    v150 = v38;
    if (*(v40 + 16))
    {
      v41 = sub_21BB1090C(v39);
      if (v42)
      {
        v43 = *(*(v40 + 56) + 8 * v41);
LABEL_63:
        v72 = [v43 operationStatus];
        v6 = v132;
        if (v72)
        {
          v73 = v72;
          v33 = v142;
          if ([v72 switchState] == -1)
          {
            v75 = [v43 featureEnabledByDefault];

            v8 = v140;
            v9 = v146;
            if (v75)
            {
              goto LABEL_137;
            }
          }

          else if ([v43 featureDisabledByProfile])
          {

            v8 = v140;
            v9 = v146;
          }

          else
          {
            if (![v73 switchState])
            {

              goto LABEL_137;
            }

            v76 = [v73 switchState];

            v8 = v140;
            v9 = v146;
            if (v76 == 1)
            {
LABEL_137:

              result = 1;
              goto LABEL_149;
            }
          }
        }

        else
        {
          v36 = [v43 featureEnabledByDefault];

          v8 = v140;
          v33 = v142;
          if (v36)
          {
            goto LABEL_137;
          }
        }

        goto LABEL_33;
      }
    }

    v44 = *&v1[v139];
    v152[0] = 0;
    v45 = [v44 getSystemConfiguration:v38 withError:v152];
    v46 = v152[0];
    if (v45)
    {
      v47 = v7;
    }

    else
    {
      v48 = v46;
      v49 = sub_21BB2289C();

      swift_willThrow();
      v47 = 0;
    }

    v50 = [v150 slotID];
    swift_getKeyPath();
    v152[0] = v1;
    v147 = v45;
    sub_21BB2296C();

    v152[0] = v1;
    swift_getKeyPath();
    sub_21BB2298C();

    swift_beginAccess();
    if (v45)
    {
      break;
    }

    v62 = sub_21BB1090C(v50);
    v9 = v146;
    v7 = v47;
    v38 = v150;
    if (v63)
    {
      v64 = v62;
      v65 = *&v1[v146];
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v67 = *&v1[v146];
      if (!v66)
      {
        sub_21BB1107C();
      }

      sub_21BB10DA0(v64, v67);
      *&v1[v146] = v67;
    }

LABEL_62:
    swift_endAccess();
    v152[0] = v1;
    swift_getKeyPath();
    sub_21BB2297C();

    v43 = v147;
    if (v45)
    {
      goto LABEL_63;
    }

    v74 = v38;
    v6 = v132;
    v8 = v140;
    v33 = v142;

LABEL_33:
    ++v35;
    if (v149 == v135)
    {
      v10 = v130;
      goto LABEL_130;
    }
  }

  v51 = *&v1[v146];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *&v1[v146];
  v55 = sub_21BB1090C(v50);
  v56 = v53[2];
  v57 = (v54 & 1) == 0;
  v58 = v56 + v57;
  if (__OFADD__(v56, v57))
  {
    goto LABEL_145;
  }

  v59 = v54;
  if (v53[3] >= v58)
  {
    if (v52)
    {
      if (v54)
      {
        goto LABEL_56;
      }
    }

    else
    {
      sub_21BB1107C();
      if (v59)
      {
        goto LABEL_56;
      }
    }

LABEL_59:
    v53[(v55 >> 6) + 8] |= 1 << v55;
    *(v53[6] + 8 * v55) = v50;
    *(v53[7] + 8 * v55) = v147;
    v70 = v53[2];
    v14 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v14)
    {
      __break(1u);
    }

    v53[2] = v71;
    goto LABEL_61;
  }

  sub_21BB10B14(v58, v52);
  v60 = sub_21BB1090C(v50);
  if ((v59 & 1) == (v61 & 1))
  {
    v55 = v60;
    if ((v59 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_56:
    v68 = v53[7];
    v69 = *(v68 + 8 * v55);
    *(v68 + 8 * v55) = v147;

LABEL_61:
    v9 = v146;
    *&v1[v146] = v53;
    v7 = v47;
    v38 = v150;
    goto LABEL_62;
  }

LABEL_151:
  type metadata accessor for CTSubscriptionSlot(0);
  result = sub_21BB232CC();
  __break(1u);
  return result;
}

void *sub_21BB0DF64()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2630, &qword_21BB25328);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22[-v3];
  v5 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v23[0] = 0;
  v6 = [v5 getCurrentDataSubscriptionContextSync_];
  if (v6)
  {
    v7 = v6;
    v8 = v23[0];
    v9 = [v7 uuid];

    sub_21BB228DC();
    v10 = 0;
  }

  else
  {
    v11 = v23[0];
    v12 = sub_21BB2289C();

    swift_willThrow();
    v10 = 1;
  }

  v13 = sub_21BB228EC();
  (*(*(v13 - 8) + 56))(v4, v10, 1, v13);
  v14 = sub_21BB11330();
  if (v14 && (v15 = [v14 subscriptions]) != 0)
  {
    v16 = v15;
    sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
    v17 = sub_21BB2306C();

    MEMORY[0x28223BE20](v18);
    *&v22[-16] = v0;
    *&v22[-8] = v4;
    v19 = sub_21BB0E8AC(sub_21BB11918, &v22[-32], v17);
  }

  else
  {
    v19 = 0;
  }

  sub_21BB09870(v4, &qword_27CDB2630, &qword_21BB25328);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void *sub_21BB0E1BC(void **a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v70[1] = *MEMORY[0x277D85DE8];
  v6 = sub_21BB228EC();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2638, &qword_21BB25330);
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v11 = &v59[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2630, &qword_21BB25328);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v67 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v59[-v16];
  v18 = sub_21BB2291C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a1;
  result = sub_21BB0B900(v23);
  v69 = result;
  if (result)
  {
    v62 = v11;
    v63 = v6;
    v25 = *(a2 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
    v70[0] = 0;
    v26 = [v25 copyMobileSubscriberCountryCode:v23 error:v70];
    v27 = v70[0];
    if (v26)
    {
      v28 = v26;
      v70[0] = 0;
      v29 = v27;
      v30 = [v25 copyMobileSubscriberIsoCountryCode:v28 error:v70];

      v31 = v70[0];
      if (v30)
      {
        v61 = v3;
        sub_21BB22FCC();
        v32 = v31;

        v33 = sub_21BB22FEC();
        v35 = v34;
      }

      else
      {
        v38 = v70[0];
        v39 = sub_21BB2289C();

        swift_willThrow();
        v33 = 0;
        v35 = 0;
        v61 = 0;
      }

      sub_21BB2290C();
      sub_21BB228FC();
      (*(v19 + 8))(v22, v18);
      v40 = sub_21BB22FEC();
      v42 = v41;

      if (v35)
      {
        v43 = v67;
        if (v33 == v40 && v35 == v42)
        {
          v60 = 1;
        }

        else
        {
          v60 = sub_21BB232AC();
        }
      }

      else
      {
        v60 = 0;
        v43 = v67;
      }

      v44 = v69;
      LODWORD(v61) = sub_21BB0C33C();
      v45 = [v44 messagingCapabilities];
      v46 = v45;
      v48 = v62;
      v47 = v63;
      v49 = v68;
      if (v45)
      {
      }

      v67 = v46;
      v50 = [v23 uuid];
      sub_21BB228DC();

      (*(v49 + 56))(v17, 0, 1, v47);
      v51 = *(v65 + 48);
      sub_21BB11938(v66, v48);
      sub_21BB11938(v17, v48 + v51);
      v52 = *(v49 + 48);
      if (v52(v48, 1, v47) == 1)
      {
        sub_21BB09870(v17, &qword_27CDB2630, &qword_21BB25328);

        v53 = v52(v48 + v51, 1, v47);
        v54 = v67;
        if (v53 == 1)
        {
          sub_21BB09870(v48, &qword_27CDB2630, &qword_21BB25328);
          v55 = 0;
          if ((v60 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_21BB11938(v48, v43);
        if (v52(v48 + v51, 1, v47) != 1)
        {
          v56 = v64;
          (*(v49 + 32))(v64, v48 + v51, v47);
          sub_21BB119A8(&qword_27CDB2640, MEMORY[0x277CC95F0]);
          LODWORD(v66) = sub_21BB22F7C();

          v57 = *(v49 + 8);
          v57(v56, v47);
          sub_21BB09870(v17, &qword_27CDB2630, &qword_21BB25328);
          v57(v43, v47);
          sub_21BB09870(v48, &qword_27CDB2630, &qword_21BB25328);
          v55 = v66 ^ 1;
          v54 = v67;
          if (v60)
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }

        sub_21BB09870(v17, &qword_27CDB2630, &qword_21BB25328);

        (*(v49 + 8))(v43, v47);
        v54 = v67;
      }

      sub_21BB09870(v48, &qword_27CDB2638, &qword_21BB25330);
      v55 = 1;
      if (v60)
      {
LABEL_23:
        result = ((v61 & (v54 == 0)) & v55);
        goto LABEL_26;
      }

LABEL_25:
      result = 0;
      goto LABEL_26;
    }

    v36 = v70[0];
    v37 = sub_21BB2289C();

    swift_willThrow();
    result = 0;
  }

LABEL_26:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21BB0E8AC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CEFFBF0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_21BB0E9C0(char a1)
{
  v2 = v1;
  v43[3] = *MEMORY[0x277D85DE8];
  v3 = sub_21BB11330();
  if (v3)
  {
    v4 = [v3 subscriptions];
    if (v4)
    {
      v5 = v4;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v6 = sub_21BB2306C();

      v43[0] = MEMORY[0x277D84F90];
      if (v6 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
      {
        v8 = 0;
        v9 = v6 & 0xC000000000000001;
        v10 = v6 & 0xFFFFFFFFFFFFFF8;
        v40 = v2;
        while (1)
        {
          if (v9)
          {
            v11 = MEMORY[0x21CEFFBF0](v8, v6);
          }

          else
          {
            if (v8 >= *(v10 + 16))
            {
              goto LABEL_22;
            }

            v11 = *(v6 + 8 * v8 + 32);
          }

          v12 = v11;
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v14 = sub_21BB0B900(v11);
          if (v14)
          {
            v15 = v14;
            v16 = [v14 businessMessagingCapabilities];
            if (v16)
            {
              v17 = v10;
              v18 = v9;
              v19 = v6;
              v20 = v16;
              v21 = [v16 supported];

              if (v21)
              {
                sub_21BB231FC();
                v22 = *(v43[0] + 2);
                sub_21BB2322C();
                sub_21BB2323C();
                sub_21BB2320C();
              }

              else
              {
              }

              v6 = v19;
              v9 = v18;
              v10 = v17;
              v2 = v40;
              goto LABEL_8;
            }
          }

LABEL_8:
          ++v8;
          if (v13 == i)
          {
            v23 = v43[0];
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

      v23 = MEMORY[0x277D84F90];
LABEL_25:

      if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
      {
        goto LABEL_43;
      }

      for (j = *(v23 + 16); j; j = sub_21BB2325C())
      {
        v25 = 0;
        v26 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
        v41 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x21CEFFBF0](v25, v23);
          }

          else
          {
            if (v25 >= *(v23 + 16))
            {
              goto LABEL_42;
            }

            v29 = *(v23 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          v32 = *&v2[v26];
          v43[0] = 0;
          if (a1)
          {
            v33 = [v32 enableBusinessMessaging:v30 withError:v43];
          }

          else
          {
            v33 = [v32 disableBusinessMessaging:v30 withError:v43];
          }

          if (v33)
          {
            v34 = v43[0];
          }

          else
          {
            v27 = v43[0];
            v28 = sub_21BB2289C();

            v26 = v41;
            swift_willThrow();
          }

          ++v25;
          if (v31 == j)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        ;
      }

LABEL_44:
    }
  }

  swift_getKeyPath();
  v43[0] = v2;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v43[0] = v2;
  swift_getKeyPath();
  sub_21BB2298C();

  v35 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  v36 = *&v2[v35];
  *&v2[v35] = MEMORY[0x277D84F98];

  swift_getKeyPath();
  sub_21BB2297C();

  v37 = CFNotificationCenterGetDarwinNotifyCenter();
  v38 = sub_21BB22FAC();
  CFNotificationCenterPostNotification(v37, v38, 0, 0, 1u);

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21BB0EE38()
{
  result = sub_21BB11330();
  if (result)
  {
    result = [result subscriptions];
    if (result)
    {
      v2 = result;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v3 = sub_21BB2306C();

      if (v3 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
      {
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x21CEFFBF0](v5, v3);
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v10 = v6;
          v9 = sub_21BB0EF90(&v10, v0);

          if (v9)
          {

            return 1;
          }

          ++v5;
          if (v8 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      return 0;
    }
  }

  return result;
}

id sub_21BB0EF90(uint64_t *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2648, qword_21BB25338);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BB25230;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 32) = 5456722;
  *(v4 + 40) = 0xE300000000000000;
  *(v4 + 88) = v5;
  *(v4 + 56) = v5;
  *(v4 + 64) = 0xD000000000000023;
  *(v4 + 72) = 0x800000021BB281D0;
  v6 = sub_21BB2305C();

  v7 = [objc_allocWithZone(MEMORY[0x277CC3620]) initWithBundleType_];
  v17[0] = 0;
  v8 = [v3 copyCarrierBundleValue:v2 keyHierarchy:v6 bundleType:v7 error:v17];

  v9 = v17[0];
  if (v8)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = v9;
    if (v10)
    {
      v12 = [v10 BOOLValue];

      result = v12;
    }

    else
    {

      result = 0;
    }
  }

  else
  {
    v14 = v17[0];
    v15 = sub_21BB2289C();

    swift_willThrow();
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for MessagingSettingsProvider()
{
  result = qword_27CDB24F0;
  if (!qword_27CDB24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BB0F258()
{
  result = sub_21BB229AC();
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

void sub_21BB0F310(void *a1, void *a2)
{
  v3 = v2;
  swift_getKeyPath();
  v63 = v2;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v6 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = [a1 slotID];
  v9 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21BB10F34(v9, v8, isUniquelyReferenced_nonNull_native);
  v11 = [a1 slotID];
  swift_getKeyPath();
  v62 = v3;
  sub_21BB2296C();

  v12 = *(v3 + v6);
  if (*(v12 + 16))
  {
    v13 = sub_21BB1090C(v11);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      v16 = sub_21BB0C33C();
      v17 = v16 ^ sub_21BB0C33C();
      if (v17)
      {
        if (qword_27CDB23D0 != -1)
        {
          swift_once();
        }

        v18 = sub_21BB22B0C();
        __swift_project_value_buffer(v18, qword_27CDB24A0);
        v19 = v9;
        v20 = v15;
        v21 = sub_21BB22AEC();
        v22 = sub_21BB230FC();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = v15;
          v24 = swift_slowAlloc();
          *v24 = 67109376;
          *(v24 + 4) = sub_21BB0C33C() & 1;

          *(v24 + 8) = 1024;
          *(v24 + 10) = sub_21BB0C33C() & 1;

          _os_log_impl(&dword_21BAF4000, v21, v22, "RCS enabled changing %{BOOL}d -> %{BOOL}d", v24, 0xEu);
          v25 = v24;
          v15 = v23;
          MEMORY[0x21CF00730](v25, -1, -1);
        }

        else
        {

          v21 = v19;
        }
      }

      v36 = [v15 messagingCapabilities];
      v37 = [v9 messagingCapabilities];
      v38 = v37;
      if (v36)
      {
        if (v37)
        {
          sub_21BB094B0(0, &qword_27CDB2618, 0x277CC36A8);
          v39 = sub_21BB2316C();

          if (v39)
          {
            goto LABEL_28;
          }

          goto LABEL_23;
        }

        v38 = v36;
      }

      else if (!v37)
      {
        goto LABEL_28;
      }

LABEL_23:
      if (qword_27CDB23D0 != -1)
      {
        swift_once();
      }

      v40 = sub_21BB22B0C();
      __swift_project_value_buffer(v40, qword_27CDB24A0);
      v41 = sub_21BB22AEC();
      v42 = sub_21BB230FC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_21BAF4000, v41, v42, "RCS messaging capabilities have changed", v43, 2u);
        MEMORY[0x21CF00730](v43, -1, -1);
      }

      v17 = 1;
LABEL_28:
      v44 = [v15 businessMessagingCapabilities];
      v45 = [v9 businessMessagingCapabilities];
      v46 = v45;
      if (v44)
      {
        if (v45)
        {
          sub_21BB094B0(0, &qword_27CDB2610, 0x277CC3678);
          v47 = sub_21BB2316C();

          if ((v47 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_33:
          if ((v17 & 1) == 0)
          {
LABEL_47:

            return;
          }

LABEL_42:
          if (qword_27CDB23D0 != -1)
          {
            swift_once();
          }

          v52 = sub_21BB22B0C();
          __swift_project_value_buffer(v52, qword_27CDB24A0);
          v53 = sub_21BB22AEC();
          v54 = sub_21BB2310C();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v62 = v56;
            *v55 = 136315138;
            type metadata accessor for CTSubscriptionSlot(0);
            sub_21BB094B0(0, &qword_27CDB2600, 0x277CC36B8);
            sub_21BB119A8(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot);

            v57 = sub_21BB22F6C();
            v59 = v58;

            v60 = sub_21BB10364(v57, v59, &v62);

            *(v55 + 4) = v60;
            _os_log_impl(&dword_21BAF4000, v53, v54, "RCS system configuration has changed to: %s", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v56);
            MEMORY[0x21CF00730](v56, -1, -1);
            MEMORY[0x21CF00730](v55, -1, -1);
          }

          sub_21BB0B620(v61);
          goto LABEL_47;
        }

        v46 = v44;
      }

      else if (!v45)
      {
        goto LABEL_33;
      }

LABEL_37:
      if (qword_27CDB23D0 != -1)
      {
        swift_once();
      }

      v48 = sub_21BB22B0C();
      __swift_project_value_buffer(v48, qword_27CDB24A0);
      v49 = sub_21BB22AEC();
      v50 = sub_21BB230FC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_21BAF4000, v49, v50, "RCS business messaging capabilities have changed", v51, 2u);
        MEMORY[0x21CF00730](v51, -1, -1);
      }

      goto LABEL_42;
    }
  }

  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v26 = sub_21BB22B0C();
  __swift_project_value_buffer(v26, qword_27CDB24A0);
  v27 = sub_21BB22AEC();
  v28 = sub_21BB2310C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v62 = v30;
    *v29 = 136315138;
    type metadata accessor for CTSubscriptionSlot(0);
    sub_21BB094B0(0, &qword_27CDB2600, 0x277CC36B8);
    sub_21BB119A8(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot);

    v31 = sub_21BB22F6C();
    v33 = v32;

    v34 = sub_21BB10364(v31, v33, &v62);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_21BAF4000, v27, v28, "RCS system configuration has changed to: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x21CF00730](v30, -1, -1);
    MEMORY[0x21CF00730](v29, -1, -1);
  }

  sub_21BB0B620(v35);
}

void sub_21BB0FC30()
{
  v68[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v68[0] = 0;
  v2 = [v1 getSubscriptionInfoWithError_];
  v3 = v68[0];
  if (!v2)
  {
    v19 = v68[0];
    v20 = sub_21BB2289C();

    swift_willThrow();
    goto LABEL_77;
  }

  v4 = v2;
  v5 = v2;
  v6 = v3;
  sub_21BB0B300(v4);
  v7 = sub_21BB11330();
  if (!v7 || (v8 = &off_2782EF000, (v9 = [v7 subscriptionsInUse]) == 0))
  {
LABEL_76:

    goto LABEL_77;
  }

  v10 = v9;
  sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
  v11 = sub_21BB2306C();

  v12 = v11 >> 62;
  if (v11 >> 62)
  {
LABEL_83:
    v13 = sub_21BB2325C();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = [v5 *(v8 + 3120)];
  if (!v14)
  {
    goto LABEL_68;
  }

  v15 = v14;
  v16 = sub_21BB2306C();

  v63 = v5;
  if (v16 >> 62)
  {
LABEL_85:
    v17 = sub_21BB2325C();
    v5 = v63;
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 != v17)
  {
    goto LABEL_68;
  }

  if (!v12)
  {
    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_68;
    }

    goto LABEL_15;
  }

  v18 = sub_21BB2325C();
  if (!v18)
  {
LABEL_68:

    goto LABEL_77;
  }

LABEL_15:
  v21 = 0;
  v65 = v11;
  v66 = v11 & 0xC000000000000001;
  v62 = v11 & 0xFFFFFFFFFFFFFF8;
  v60 = v4;
  v61 = v11 + 32;
  v64 = v18;
  while (1)
  {
    if (v66)
    {
      v22 = MEMORY[0x21CEFFBF0](v21, v11);
    }

    else
    {
      if (v21 >= *(v62 + 16))
      {
        __break(1u);
        goto LABEL_85;
      }

      v22 = *(v61 + 8 * v21);
    }

    v23 = v22;
    v24 = __OFADD__(v21, 1);
    v25 = v21 + 1;
    if (v24)
    {
      goto LABEL_82;
    }

    v26 = [v5 *(v8 + 3120)];
    v67 = v25;
    if (v26)
    {
      v27 = v26;
      v8 = sub_21BB2306C();

      if (v8 >> 62)
      {
        v28 = sub_21BB2325C();
        if (v28)
        {
LABEL_26:
          v29 = 0;
          v5 = (v8 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x21CEFFBF0](v29, v8);
            }

            else
            {
              if (v29 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_81;
              }

              v30 = *(v8 + 8 * v29 + 32);
            }

            v11 = v30;
            v12 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            v4 = &off_2782EF000;
            v31 = [v30 slotID];
            if (v31 == [v23 slotID])
            {

              goto LABEL_39;
            }

            ++v29;
            if (v12 == v28)
            {
              goto LABEL_38;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }

      else
      {
        v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_26;
        }
      }

LABEL_38:

      v11 = 0;
LABEL_39:
      v5 = v63;
    }

    else
    {
      v11 = 0;
    }

    v32 = [v23 label];
    if (v32)
    {
      v33 = v32;
      v34 = sub_21BB22FCC();
      v36 = v35;

      if (!v11)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v34 = 0;
      v36 = 0;
      if (!v11)
      {
        goto LABEL_48;
      }
    }

    v37 = [v11 label];
    if (v37)
    {
      v38 = v37;
      v39 = sub_21BB22FCC();
      v41 = v40;

      if (!v36)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_48:
    v39 = 0;
    v41 = 0;
    if (!v36)
    {
LABEL_46:
      if (v41)
      {
        goto LABEL_47;
      }

      goto LABEL_54;
    }

LABEL_49:
    if (!v41)
    {
      goto LABEL_47;
    }

    if (v34 == v39 && v36 == v41)
    {

      goto LABEL_54;
    }

    v42 = sub_21BB232AC();

    if ((v42 & 1) == 0)
    {
      break;
    }

LABEL_54:
    v43 = [v23 phoneNumber];
    if (v43)
    {
      v44 = v43;
      v45 = sub_21BB22FCC();
      v47 = v46;

      if (!v11)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v45 = 0;
      v47 = 0;
      if (!v11)
      {
        goto LABEL_61;
      }
    }

    v48 = [v11 label];
    if (v48)
    {
      v49 = v48;
      v50 = sub_21BB22FCC();
      v13 = v51;

      if (v47)
      {
        goto LABEL_62;
      }

      goto LABEL_16;
    }

LABEL_61:
    v50 = 0;
    v13 = 0;
    if (v47)
    {
LABEL_62:
      if (!v13)
      {
LABEL_47:

LABEL_71:

        goto LABEL_72;
      }

      if (v45 == v50 && v47 == v13)
      {
      }

      else
      {
        v52 = sub_21BB232AC();

        if ((v52 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_17;
    }

LABEL_16:

    if (v13)
    {

      goto LABEL_71;
    }

LABEL_17:
    v11 = v65;
    v21 = v67;
    v8 = &off_2782EF000;
    if (v67 == v64)
    {
      goto LABEL_68;
    }
  }

LABEL_72:
  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v53 = sub_21BB22B0C();
  __swift_project_value_buffer(v53, qword_27CDB24A0);
  v54 = v5;
  v55 = sub_21BB22AEC();
  v56 = sub_21BB2310C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v54;
    *v58 = v60;
    v5 = v54;
    _os_log_impl(&dword_21BAF4000, v55, v56, "Subscription info has changed to: %@", v57, 0xCu);
    sub_21BB09870(v58, &qword_27CDB25E8, &qword_21BB252C8);
    MEMORY[0x21CF00730](v58, -1, -1);
    MEMORY[0x21CF00730](v57, -1, -1);

    goto LABEL_76;
  }

LABEL_77:
  v59 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21BB10364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21BB10430(v11, 0, 0, 1, a1, a2);
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
    sub_21BB09454(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21BB10430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21BB1053C(a5, a6);
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
    result = sub_21BB231EC();
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

uint64_t sub_21BB1053C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BB10588(a1, a2);
  sub_21BB106B8(&unk_282D7BD70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21BB10588(uint64_t a1, unint64_t a2)
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

  v6 = sub_21BB107A4(v5, 0);
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

  result = sub_21BB231EC();
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
        v10 = sub_21BB2302C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21BB107A4(v10, 0);
        result = sub_21BB231BC();
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

uint64_t sub_21BB106B8(uint64_t result)
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

  result = sub_21BB10818(result, v12, 1, v3);
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

void *sub_21BB107A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB25C8, &unk_21BB252B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21BB10818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB25C8, &unk_21BB252B8);
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

unint64_t sub_21BB1090C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21BB232DC();
  MEMORY[0x21CEFFD10](a1);
  v4 = sub_21BB232FC();

  return sub_21BB109F0(a1, v4);
}

unint64_t sub_21BB10978(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21BB232DC();
  sub_21BB2300C();
  v6 = sub_21BB232FC();

  return sub_21BB10A5C(a1, a2, v6);
}

unint64_t sub_21BB109F0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21BB10A5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21BB232AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21BB10B14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2620, &qword_21BB25320);
  v34 = a2;
  result = sub_21BB2327C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_21BB232DC();
      MEMORY[0x21CEFFD10](v21);
      result = sub_21BB232FC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21BB10DA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BB231AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_21BB232DC();
      MEMORY[0x21CEFFD10](v10);
      result = sub_21BB232FC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21BB10F34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21BB1090C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21BB1107C();
    result = v17;
    goto LABEL_8;
  }

  sub_21BB10B14(v14, a3 & 1);
  v18 = *v4;
  result = sub_21BB1090C(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for CTSubscriptionSlot(0);
  sub_21BB232CC();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

id sub_21BB1107C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2620, &qword_21BB25320);
  v2 = *v0;
  v3 = sub_21BB2326C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_21BB111D8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = sub_21BB1090C(*(*(a1 + 48) + 8 * v12));
      if (v15)
      {
        v16 = v14;
        sub_21BB094B0(0, &qword_27CDB2600, 0x277CC36B8);
        v17 = *(*(a2 + 56) + 8 * v16);
        v18 = v13;
        v19 = v17;
        LOBYTE(v17) = sub_21BB2316C();

        if (v17)
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21BB11330()
{
  v1 = v0;
  v10[1] = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  v10[0] = v0;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider);
  sub_21BB2296C();

  v2 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
  if (!*&v0[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo])
  {
    v3 = *&v0[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient];
    v10[0] = 0;
    v4 = [v3 getSubscriptionInfoWithError_];
    v5 = v10[0];
    if (!v4)
    {
      v6 = v5;
      v7 = sub_21BB2289C();

      swift_willThrow();
      v4 = 0;
    }

    sub_21BB0B300(v4);
  }

  swift_getKeyPath();
  v10[0] = v1;
  sub_21BB2296C();

  result = *&v1[v2];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21BB114B8(char a1, id a2)
{
  v3 = [a2 slotID];
  if (v3 == 2)
  {
    v4 = 0x62616E4532534D4DLL;
  }

  else
  {
    v4 = 0x6C62616E45534D4DLL;
  }

  if (v3 == 2)
  {
    v5 = 0xEB0000000064656CLL;
  }

  else
  {
    v5 = 0xEA00000000006465;
  }

  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v6 = sub_21BB22B0C();
  __swift_project_value_buffer(v6, qword_27CDB24A0);

  v7 = sub_21BB22AEC();
  v8 = sub_21BB230FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2080;
    *(v9 + 10) = sub_21BB10364(v4, v5, &v22);
    _os_log_impl(&dword_21BAF4000, v7, v8, "Setting MMS enabled: %{BOOL}d for key: %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF00730](v10, -1, -1);
    MEMORY[0x21CF00730](v9, -1, -1);
  }

  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_21BB22FAC();
  v21 = [v11 initWithSuiteName_];

  if (v21)
  {
    v13 = sub_21BB22FAC();

    [v21 setBool:a1 & 1 forKey:v13];

    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v14)
    {
      v15 = v14;
      v16 = sub_21BB22AEC();
      v17 = sub_21BB230FC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21BAF4000, v16, v17, "Notifying observers of MMS enabled change", v18, 2u);
        MEMORY[0x21CF00730](v18, -1, -1);
      }

      v19 = qword_27CDB23E0;
      v20 = v15;
      if (v19 != -1)
      {
        swift_once();
      }

      CFNotificationCenterPostNotification(v20, qword_27CDB24C0, 0, 0, 1u);
    }
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

_OWORD *sub_21BB118AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_21BB118BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo) = v2;
  v4 = v2;
}

uint64_t sub_21BB11938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2630, &qword_21BB25328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB119A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21BB11A08(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21BB2293C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_21BB22F8C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR____TtC19AppSystemSettingsUI21MMSMessagingSpecifier_specifiersProvider;
  swift_unknownObjectWeakInit();
  v12 = sub_21BB0C668();
  v13 = v12;
  v14 = v12 >> 62;
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:

    MEMORY[0x21CF007F0](&v3[v11]);
    swift_deallocPartialClassInstance();
    return;
  }

  if (!sub_21BB2325C())
  {
    goto LABEL_23;
  }

LABEL_3:
  *&v3[OBJC_IVAR____TtC19AppSystemSettingsUI21MMSMessagingSpecifier_provider] = a1;
  swift_unknownObjectWeakAssign();
  if (v14)
  {
    v15 = sub_21BB2325C();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = a1;
  if (v15 == 1)
  {
    sub_21BB22F9C();
    if (qword_27CDB23D8 != -1)
    {
      swift_once();
    }

    v17 = qword_27CDB24B8;
    sub_21BB2292C();
    sub_21BB22FDC();
    v18 = sub_21BB22FAC();

    v30.receiver = v3;
    v30.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v30, sel_initWithName_target_set_get_detail_cell_edit_, v18, 0, sel_setMMSEnabled_specifier_, sel_isMMSEnabledFor_, 0, 6, 0);

    v20 = a2;
    if (!v19)
    {

      goto LABEL_20;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v29 = v19;
      v23 = MEMORY[0x21CEFFBF0](0, v13);
      goto LABEL_13;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v13 + 32);
      v22 = v19;
      v23 = v21;
LABEL_13:
      v24 = v23;

      [v19 setUserInfo_];

LABEL_18:
      [v19 setTarget_];

LABEL_20:
      return;
    }

    __break(1u);
  }

  else
  {

    sub_21BB22F9C();
    if (qword_27CDB23D8 != -1)
    {
      swift_once();
    }

    v25 = qword_27CDB24B8;
    sub_21BB2292C();
    sub_21BB22FDC();
    v26 = sub_21BB22FAC();

    type metadata accessor for MMSMessagingViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31.receiver = v3;
    v31.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v31, sel_initWithName_target_set_get_detail_cell_edit_, v26, 0, 0, 0, ObjCClassFromMetadata, 2, 0);

    v20 = a2;
    if (v28)
    {

      v19 = v28;
      [v19 setUserInfo_];
      goto LABEL_18;
    }
  }
}

uint64_t sub_21BB11E70(void *a1)
{
  if ([a1 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI21MMSMessagingSpecifier_provider);
      sub_21BB0C894(v5);
      v3 = sub_21BB2309C();

      return v3;
    }
  }

  else
  {
    sub_21BB122FC(v8);
  }

  sub_21BB094B0(0, &qword_27CDB25D8, 0x277CCABB0);
  return sub_21BB2315C();
}

void sub_21BB1221C(void *a1, id a2)
{
  if ([a2 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
    if (swift_dynamicCast())
    {
      sub_21BB114B8([a1 BOOLValue], v3);
    }
  }

  else
  {
    sub_21BB122FC(v6);
  }
}

uint64_t sub_21BB122FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB25D0, &qword_21BB25060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BB12364()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = [v0 specifier];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 userInfo];

  if (v4)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_21BB09870(&v22, &qword_27CDB25D0, &qword_21BB25060);
    return;
  }

  type metadata accessor for MessagingSettingsProvider();
  if (swift_dynamicCast())
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(&v22 + 1) = sub_21BB12CC8;
    *&v23 = v5;
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26C0, &qword_21BB253C8));
    v7 = v19;
    v8 = sub_21BB22CEC();
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        [v11 addSubview_];

        v13 = [v1 view];
        if (v13)
        {
          v14 = v13;
          [v13 bounds];
          v16 = v15;
          v18 = v17;

          [v10 setFrame_];
          [v10 setAutoresizingMask_];
          [v1 addChildViewController_];
          [v8 didMoveToParentViewController_];

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }
  }
}

void sub_21BB125E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong specifier];

    if (v2)
    {
      type metadata accessor for MMSMessagingSpecifier();
      if (swift_dynamicCastClass())
      {
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          v4 = v3;
          v5 = [v3 delegate];
          if (v5)
          {
            [v5 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_21BB1278C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_21BB2293C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21BB22F8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_setSpecifier_, a1);
  if ([a1 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    type metadata accessor for MessagingSettingsProvider();
    if (swift_dynamicCast())
    {

      sub_21BB22F9C();
      if (qword_27CDB23D8 != -1)
      {
        swift_once();
      }

      v8 = qword_27CDB24B8;
      sub_21BB2292C();
      sub_21BB22FDC();
      v9 = sub_21BB22FAC();

      [v1 setTitle_];
    }
  }

  else
  {
    sub_21BB09870(v13, &qword_27CDB25D0, &qword_21BB25060);
  }
}

uint64_t sub_21BB12CD0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26C8, &qword_21BB25458);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v17 = a1;
  v18 = a2;
  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26D0, &qword_21BB25460);
  sub_21BB13964();
  sub_21BB22D3C();
  v10 = swift_allocObject();
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = a3;
  v11 = &v9[*(v6 + 36)];
  *v11 = sub_21BB13AD4;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  v20 = a1;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  type metadata accessor for MessagingSettingsProvider();
  sub_21BB13B1C();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider);
  v13 = a1;
  swift_retain_n();
  v14 = v13;
  sub_21BB22DCC();

  return sub_21BB09870(v9, &qword_27CDB26C8, &qword_21BB25458);
}

uint64_t sub_21BB12EEC()
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_21BB1330C(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26E8, &qword_21BB25468);
  sub_21BB139FC();
  sub_21BB22E8C();
}

uint64_t sub_21BB13020(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB0C668();
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2720, &qword_21BB254A8);
  sub_21BB13E04(&qword_27CDB2728, &qword_27CDB2720, &qword_21BB254A8);
  sub_21BB13C8C(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot);
  sub_21BB13A80();
  sub_21BB22E7C();
}

id sub_21BB131E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 slotID];
  *a2 = result;
  return result;
}

void sub_21BB13214(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2;
  v7 = v5;
  v8 = [v7 label];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BB22FCC();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *a3 = v10;
  a3[1] = v12;
  a3[2] = v6;
  a3[3] = v7;
}

uint64_t sub_21BB1330C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_21BB22F8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v7 = sub_21BB22D6C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21BB134FC(uint64_t a1, void (*a2)(uint64_t))
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_21BB135BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_21BB230CC();
  swift_bridgeObjectRetain_n();
  v8 = a3;
  v9 = a4;
  v10 = sub_21BB230BC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v8;
  v11[7] = v9;

  v13 = v8;
  v14 = v9;
  v15 = sub_21BB230BC();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v12;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v13;
  v16[7] = v14;
  sub_21BB22E6C();
  sub_21BB13BE0();
  return sub_21BB22E3C();
}

uint64_t sub_21BB13724@<X0>(void *a1@<X5>, _BYTE *a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_21BB0C894(a1);

  *a2 = v4 & 1;
  return result;
}

uint64_t sub_21BB137D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB114B8(v9, a8);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21BB138A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21BB138EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21BB13958()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21BB12EEC();
}

unint64_t sub_21BB13964()
{
  result = qword_27CDB26D8;
  if (!qword_27CDB26D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26D0, &qword_21BB25460);
    sub_21BB139FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26D8);
  }

  return result;
}

unint64_t sub_21BB139FC()
{
  result = qword_27CDB26E0;
  if (!qword_27CDB26E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26E8, &qword_21BB25468);
    sub_21BB13A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26E0);
  }

  return result;
}

unint64_t sub_21BB13A80()
{
  result = qword_27CDB26F0;
  if (!qword_27CDB26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26F0);
  }

  return result;
}

unint64_t sub_21BB13B1C()
{
  result = qword_27CDB26F8;
  if (!qword_27CDB26F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26C8, &qword_21BB25458);
    sub_21BB13E04(&qword_27CDB2700, &qword_27CDB2708, &unk_21BB25470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26F8);
  }

  return result;
}

unint64_t sub_21BB13BE0()
{
  result = qword_27CDB2718;
  if (!qword_27CDB2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2718);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_21BB13C80(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_21BB13214(a1, *(v2 + 16), a2);
}

uint64_t sub_21BB13C8C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BB13CE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21BB13D28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21BB13D94@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_21BB13724(*(v1 + 56), a1);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21BB13E04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_21BB13E58(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21BB2293C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_21BB22F8C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR____TtC19AppSystemSettingsUI21RCSMessagingSpecifier_specifiersProvider;
  swift_unknownObjectWeakInit();
  v12 = sub_21BB0BC34();
  if (v12 >> 62)
  {
    v19 = sub_21BB2325C();

    if (v19)
    {
      goto LABEL_3;
    }

LABEL_9:

    MEMORY[0x21CF007F0](&v3[v11]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_unknownObjectWeakAssign();
  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v14 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  v15 = sub_21BB22FAC();

  type metadata accessor for RCSMessagingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21.receiver = v3;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, sel_initWithName_target_set_get_detail_cell_edit_, v15, 0, 0, 0, ObjCClassFromMetadata, 2, 0);

  if (v17)
  {

    v18 = v17;
    [v18 setTarget_];
    [v18 setUserInfo_];
  }

  return v17;
}

void sub_21BB141C8()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = [v0 specifier];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 userInfo];

  if (v4)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_21BB09870(&v22, &qword_27CDB25D0, &qword_21BB25060);
    return;
  }

  type metadata accessor for MessagingSettingsProvider();
  if (swift_dynamicCast())
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(&v22 + 1) = sub_21BB14B2C;
    *&v23 = v5;
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2748, "HM"));
    v7 = v19;
    v8 = sub_21BB22CEC();
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        [v11 addSubview_];

        v13 = [v1 view];
        if (v13)
        {
          v14 = v13;
          [v13 bounds];
          v16 = v15;
          v18 = v17;

          [v10 setFrame_];
          [v10 setAutoresizingMask_];
          [v1 addChildViewController_];
          [v8 didMoveToParentViewController_];

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }
  }
}

void sub_21BB1444C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong specifier];

    if (v2)
    {
      type metadata accessor for RCSMessagingSpecifier();
      if (swift_dynamicCastClass())
      {
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          v4 = v3;
          v5 = [v3 delegate];
          if (v5)
          {
            [v5 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_21BB145F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_21BB2293C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21BB22F8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_setSpecifier_, a1);
  if ([a1 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    type metadata accessor for MessagingSettingsProvider();
    if (swift_dynamicCast())
    {

      sub_21BB22F9C();
      if (qword_27CDB23D8 != -1)
      {
        swift_once();
      }

      v8 = qword_27CDB24B8;
      sub_21BB2292C();
      sub_21BB22FDC();
      v9 = sub_21BB22FAC();

      [v1 setTitle_];
    }
  }

  else
  {
    sub_21BB09870(v13, &qword_27CDB25D0, &qword_21BB25060);
  }
}

uint64_t sub_21BB14B34(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2750, &qword_21BB25678);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v17 = a1;
  v18 = a2;
  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2758, &qword_21BB25680);
  sub_21BB13E04(&qword_27CDB2760, &qword_27CDB2758, &qword_21BB25680);
  sub_21BB22D3C();
  v10 = swift_allocObject();
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = a3;
  v11 = &v9[*(v6 + 36)];
  *v11 = sub_21BB17560;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  v20 = a1;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  type metadata accessor for MessagingSettingsProvider();
  sub_21BB175A8();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider);
  v13 = a1;
  swift_retain_n();
  v14 = v13;
  sub_21BB22DCC();

  return sub_21BB09870(v9, &qword_27CDB2750, &qword_21BB25678);
}

uint64_t sub_21BB14D7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v56 = a3;
  v54 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2780, &qword_21BB25690);
  v47 = *(v53 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v53);
  v46 = &v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2788, &qword_21BB25698);
  v7 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v9 = &v45 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2790, &qword_21BB256A0);
  v10 = *(*(v49 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v49);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2798, &qword_21BB256A8);
  v45 = *(v50 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27A0, &qword_21BB256B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  sub_21BB230CC();
  v51 = sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = a1;
  v27 = sub_21BB0BC34();
  if (v27 >> 62)
  {
    v28 = sub_21BB2325C();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = &v45;
  MEMORY[0x28223BE20](v29);
  v30 = v55;
  v31 = v56;
  *(&v45 - 4) = v26;
  *(&v45 - 3) = v30;
  v43 = v31;
  if (v28 == 1)
  {
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_21BB15628(v15);

    sub_21BB176F0();
    sub_21BB17744();
    sub_21BB22EAC();
    v32 = v45;
    v33 = v50;
    (*(v45 + 16))(v9, v18, v50);
    swift_storeEnumTagMultiPayload();
    sub_21BB177FC();
    sub_21BB17894();
    sub_21BB22CFC();
    (*(v32 + 8))(v18, v33);
  }

  else
  {
    sub_21BB16094(v57);
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_21BB15628(v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27A8, &qword_21BB256B8);
    v34 = sub_21BB1766C();
    v35 = sub_21BB17744();
    v43 = v34;
    v44 = v35;
    v36 = v46;
    sub_21BB22E9C();
    v37 = v47;
    v38 = v53;
    (*(v47 + 16))(v9, v36, v53);
    swift_storeEnumTagMultiPayload();
    sub_21BB177FC();
    sub_21BB17894();
    sub_21BB22CFC();
    (*(v37 + 8))(v36, v38);
  }

  sub_21BB17ABC(v25, v23, &qword_27CDB27A0, &qword_21BB256B0);
  v39 = v54;
  sub_21BB17ABC(v23, v54, &qword_27CDB27A0, &qword_21BB256B0);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27E8, &qword_21BB256C8) + 48);
  v41 = v26;
  sub_21BB09870(v25, &qword_27CDB27A0, &qword_21BB256B0);
  *(v39 + v40) = v41;

  sub_21BB09870(v23, &qword_27CDB27A0, &qword_21BB256B0);
}

uint64_t sub_21BB15400@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21BB2293C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21BB22F8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v8 = qword_27CDB24B8;
  sub_21BB2292C();
  v9 = sub_21BB22FDC();
  v11 = v10;
  v12 = a1;
  result = sub_21BB0BC34();
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x21CEFFBF0](0, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_8:
    v15 = v14;

    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BB15628@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_21BB2293C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_21BB22F8C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v5 = qword_27CDB24B8;
  sub_21BB2292C();
  v6 = v5;
  v50 = sub_21BB22FDC();
  v51 = v7;
  sub_21BB22F9C();
  sub_21BB2292C();
  v49 = sub_21BB22FDC();
  v9 = v8;
  sub_21BB22F9C();
  sub_21BB2292C();
  v10 = sub_21BB22FDC();
  v12 = v11;
  v48 = v6;
  if (sub_21BB0EE38())
  {
    sub_21BB22F9C();
    v13 = v6;
    sub_21BB2292C();
    v14 = v13;
    sub_21BB22FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27F0, &qword_21BB256D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21BB25590;
    v16 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v17 = sub_21BB17938();
    *(v15 + 64) = v17;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
    sub_21BB22F9C();
    sub_21BB2292C();
    v18 = sub_21BB22FDC();
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 72) = v18;
    *(v15 + 80) = v19;
    MEMORY[0x21CEFFA40](v49, v9);

    MEMORY[0x21CEFFA40](10333, 0xE200000000000000);
    MEMORY[0x21CEFFA40](v50, v51);

    MEMORY[0x21CEFFA40](41, 0xE100000000000000);
    *(v15 + 136) = v16;
    *(v15 + 144) = v17;
    *(v15 + 112) = 91;
    *(v15 + 120) = 0xE100000000000000;
  }

  else
  {
    sub_21BB22F9C();
    v20 = v6;
    sub_21BB2292C();
    sub_21BB22FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27F0, &qword_21BB256D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21BB25230;
    *(v21 + 56) = MEMORY[0x277D837D0];
    v22 = sub_21BB17938();
    *(v21 + 64) = v22;
    *(v21 + 32) = v10;
    *(v21 + 40) = v12;
    MEMORY[0x21CEFFA40](v49, v9);

    MEMORY[0x21CEFFA40](10333, 0xE200000000000000);
    MEMORY[0x21CEFFA40](v50, v51);

    MEMORY[0x21CEFFA40](41, 0xE100000000000000);
    *(v21 + 96) = MEMORY[0x277D837D0];
    *(v21 + 104) = v22;
    *(v21 + 72) = 91;
    *(v21 + 80) = 0xE100000000000000;
  }

  sub_21BB22FBC();

  v23 = sub_21BB0DF64();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 label];

    if (v25)
    {
      v52 = sub_21BB22FCC();
      v27 = v26;

      sub_21BB22F9C();
      v28 = v48;
      sub_21BB2292C();
      v29 = v28;
      v30 = sub_21BB22FDC();
      MEMORY[0x21CEFFA40](v30);

      MEMORY[0x21CEFFA40](10333, 0xE200000000000000);
      MEMORY[0x21CEFFA40](0xD000000000000031, 0x800000021BB284F0);
      MEMORY[0x21CEFFA40](41, 0xE100000000000000);
      sub_21BB22F9C();
      sub_21BB2292C();
      sub_21BB22FDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27F0, &qword_21BB256D0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21BB25230;
      v32 = MEMORY[0x277D837D0];
      *(v31 + 56) = MEMORY[0x277D837D0];
      v33 = sub_21BB17938();
      *(v31 + 32) = v52;
      *(v31 + 40) = v27;
      *(v31 + 96) = v32;
      *(v31 + 104) = v33;
      *(v31 + 64) = v33;
      *(v31 + 72) = 91;
      *(v31 + 80) = 0xE100000000000000;
      v34 = sub_21BB22FBC();
      v36 = v35;

      MEMORY[0x21CEFFA40](v34, v36);

      MEMORY[0x21CEFFA40](2570, 0xE200000000000000);
    }
  }

  sub_21BB22CDC();
  v37 = sub_21BB22D5C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  KeyPath = swift_getKeyPath();
  v45 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2790, &qword_21BB256A0) + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27D0, &qword_21BB256C0) + 28);
  result = sub_21BB22BAC();
  *v45 = KeyPath;
  *a1 = v37;
  *(a1 + 8) = v39;
  *(a1 + 16) = v41 & 1;
  *(a1 + 24) = v43;
  return result;
}

uint64_t sub_21BB15DDC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB0BC34();
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2720, &qword_21BB254A8);
  sub_21BB13E04(&qword_27CDB2728, &qword_27CDB2720, &qword_21BB254A8);
  sub_21BB13C8C(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot);
  sub_21BB176F0();
  sub_21BB22E7C();
}

void sub_21BB15F9C(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2;
  v7 = v5;
  v8 = [v7 label];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BB22FCC();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *a3 = v10;
  a3[1] = v12;
  a3[2] = v6;
  a3[3] = v7;
}

uint64_t sub_21BB16094@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_21BB22F8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v7 = sub_21BB22D6C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21BB16284(uint64_t a1, void (*a2)(uint64_t))
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_21BB16338(uint64_t a1)
{
  v2 = sub_21BB22BBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BB22C8C();
}

id sub_21BB16400()
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_21BB228CC();
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v0 != 0xD000000000000013 || v1 != 0x800000021BB285E0)
  {
    v2 = sub_21BB232AC();

    if (v2)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_21BB22B8C();
    goto LABEL_11;
  }

LABEL_8:
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_21BB228BC();
  sub_21BB1798C(MEMORY[0x277D84F90]);
  v6 = sub_21BB22F3C();

  [v4 openSensitiveURL:v5 withOptions:v6];

  sub_21BB22B9C();
LABEL_11:
}

uint64_t sub_21BB165C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2810, &qword_21BB25870);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v30 - v11;
  sub_21BB230CC();

  v13 = a3;
  v14 = a4;
  v15 = sub_21BB230BC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v13;
  v16[7] = v14;

  v18 = v13;
  v19 = v14;
  v20 = sub_21BB230BC();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v17;
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = v18;
  v21[7] = v19;
  sub_21BB22E6C();
  v32 = a1;
  v33 = a2;
  v34 = v18;
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2818, &qword_21BB25878);
  sub_21BB13E04(&qword_27CDB2820, &qword_27CDB2818, &qword_21BB25878);
  sub_21BB22E2C();
  v22 = sub_21BB0B900(v19);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 featureDisabledByProfile];
  }

  else
  {
    v24 = 0;
  }

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = v31;
  (*(v9 + 32))(v31, v12, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2828, &qword_21BB258B0);
  v29 = (v27 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_21BB17BB4;
  v29[2] = v26;
  return result;
}

void sub_21BB168A8(void *a1@<X5>, _BYTE *a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_21BB0B900(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BB0C33C();

    v7 = v6 & 1;
  }

  else
  {

    v7 = 0;
  }

  *a2 = v7;
}

uint64_t sub_21BB1697C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB0C420(v9, a8);
}

uint64_t sub_21BB16A34@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB13BE0();

  v6 = sub_21BB22D6C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_21BB17BBC(a1, a2);
  if (v13)
  {
    v14 = sub_21BB22D6C();
    v16 = v15;
    v18 = v17;
    v20 = v19 & 1;
    sub_21BB17DD4(v14, v15, v19 & 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v20 = 0;
    v18 = 0;
  }

  v21 = v10 & 1;
  sub_21BB17DD4(v6, v8, v21);

  sub_21BB17DE4(v14, v16, v20, v18);
  sub_21BB17E28(v14, v16, v20, v18);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v21;
  *(a3 + 24) = v12;
  *(a3 + 32) = v14;
  *(a3 + 40) = v16;
  *(a3 + 48) = v20;
  *(a3 + 56) = v18;
  sub_21BB17E28(v14, v16, v20, v18);
  sub_21BB17E6C(v6, v8, v21);
}

uint64_t sub_21BB16C14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  v4 = MEMORY[0x277D85700];
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  v6 = sub_21BB230BC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v8 = v5;
  v9 = sub_21BB230BC();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v8;
  sub_21BB22E6C();
  sub_21BB22E2C();
  LOBYTE(v9) = sub_21BB0C0F0();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = (v9 & 1) == 0;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2838, &unk_21BB258C0);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_21BB181C0;
  v14[2] = v12;
  return result;
}

uint64_t sub_21BB16E10@<X0>(_BYTE *a1@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_21BB0CE8C();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_21BB16EBC(char *a1)
{
  v1 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB0E9C0(v1);
}

uint64_t sub_21BB16F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_21BB22F8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v7 = sub_21BB22D6C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21BB1715C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_21BB22F8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v7 = sub_21BB22D6C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21BB1734C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2830, &qword_21BB258B8);
  v12 = *(v3 - 8);
  v4 = *(v12 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = sub_21BB0CCC8();
  if (v8)
  {
    MEMORY[0x28223BE20](v8);
    *(&v11 - 2) = v7;
    sub_21BB1715C(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2838, &unk_21BB258C0);
    sub_21BB17E84();
    sub_21BB22EAC();
    (*(v12 + 32))(a1, v6, v3);
    return (*(v12 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v10 = *(v12 + 56);

    return v10(a1, 1, 1, v3);
  }
}

unint64_t sub_21BB175A8()
{
  result = qword_27CDB2768;
  if (!qword_27CDB2768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2750, &qword_21BB25678);
    sub_21BB13E04(&qword_27CDB2770, &qword_27CDB2778, &qword_21BB25688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2768);
  }

  return result;
}

unint64_t sub_21BB1766C()
{
  result = qword_27CDB27B0;
  if (!qword_27CDB27B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB27A8, &qword_21BB256B8);
    sub_21BB176F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27B0);
  }

  return result;
}

unint64_t sub_21BB176F0()
{
  result = qword_27CDB27B8;
  if (!qword_27CDB27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27B8);
  }

  return result;
}

unint64_t sub_21BB17744()
{
  result = qword_27CDB27C0;
  if (!qword_27CDB27C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2790, &qword_21BB256A0);
    sub_21BB13E04(&qword_27CDB27C8, &qword_27CDB27D0, &qword_21BB256C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27C0);
  }

  return result;
}

unint64_t sub_21BB177FC()
{
  result = qword_27CDB27D8;
  if (!qword_27CDB27D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2798, &qword_21BB256A8);
    sub_21BB176F0();
    sub_21BB17744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27D8);
  }

  return result;
}

unint64_t sub_21BB17894()
{
  result = qword_27CDB27E0;
  if (!qword_27CDB27E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2780, &qword_21BB25690);
    sub_21BB1766C();
    sub_21BB17744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27E0);
  }

  return result;
}

uint64_t sub_21BB1792C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_21BB15400(*(v1 + 16), a1);
}

unint64_t sub_21BB17938()
{
  result = qword_27CDB27F8;
  if (!qword_27CDB27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27F8);
  }

  return result;
}

unint64_t sub_21BB1798C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2800, &qword_21BB25708);
    v3 = sub_21BB2328C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BB17ABC(v4, &v13, &qword_27CDB2808, &unk_21BB25710);
      v5 = v13;
      v6 = v14;
      result = sub_21BB10978(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21BB118AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_21BB17ABC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21BB17B24(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_21BB15F9C(a1, *(v2 + 16), a2);
}

void sub_21BB17B88(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_21BB168A8(*(v1 + 56), a1);
}

uint64_t sub_21BB17BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21BB16A34(*(v1 + 32), *(v1 + 40), a1);
}

void *sub_21BB17BBC(uint64_t a1, void *a2)
{
  v3 = sub_21BB2293C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_21BB22F8C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  result = sub_21BB0B900(a2);
  if (result)
  {
    v8 = result;
    v9 = sub_21BB0B900(a2);
    if (!v9 || (v10 = v9, v11 = [v9 featureDisabledByProfile], v10, (v11 & 1) == 0))
    {
      if ((sub_21BB0C33C() & 1) == 0)
      {

        return 0;
      }

      v12 = [v8 messagingCapabilities];
      if (v12)
      {
        v13 = v12;

        return 0;
      }
    }

    sub_21BB22F9C();
    if (qword_27CDB23D8 != -1)
    {
      swift_once();
    }

    v14 = qword_27CDB24B8;
    sub_21BB2292C();
    v15 = sub_21BB22FDC();

    return v15;
  }

  return result;
}

uint64_t sub_21BB17DD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21BB17DE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BB17DD4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BB17E28(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BB17E6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BB17E6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21BB17E84()
{
  result = qword_27CDB2840;
  if (!qword_27CDB2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2838, &unk_21BB258C0);
    sub_21BB13E04(&qword_27CDB2730, &qword_27CDB2738, qword_21BB25540);
    sub_21BB13E04(&qword_27CDB2848, &qword_27CDB2850, &qword_21BB258D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2840);
  }

  return result;
}

uint64_t sub_21BB17F68@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21BB16E10(a1);
}

uint64_t objectdestroy_35Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21BB17FB4(char *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21BB16EBC(a1);
}

unint64_t sub_21BB17FC0()
{
  result = qword_27CDB2858;
  if (!qword_27CDB2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2828, &qword_21BB258B0);
    sub_21BB13E04(&qword_27CDB2860, &qword_27CDB2810, &qword_21BB25870);
    sub_21BB13E04(&qword_27CDB2848, &qword_27CDB2850, &qword_21BB258D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2858);
  }

  return result;
}

unint64_t sub_21BB180A4()
{
  result = qword_27CDB2868;
  if (!qword_27CDB2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2870, &qword_21BB258D8);
    sub_21BB18128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2868);
  }

  return result;
}

unint64_t sub_21BB18128()
{
  result = qword_27CDB2878;
  if (!qword_27CDB2878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2830, &qword_21BB258B8);
    sub_21BB17E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2878);
  }

  return result;
}

uint64_t type metadata accessor for AULinkSpecifierView_v1()
{
  result = qword_27CDB2888;
  if (!qword_27CDB2888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB18238()
{
  sub_21BB182BC();
  if (v0 <= 0x3F)
  {
    sub_21BB18314();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BB182BC()
{
  if (!qword_27CDB2898)
  {
    sub_21BB22CCC();
    v0 = sub_21BB22B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB2898);
    }
  }
}

void sub_21BB18314()
{
  if (!qword_27CDB28A0)
  {
    type metadata accessor for AUSpecifier();
    sub_21BB1A65C(&qword_27CDB28A8, type metadata accessor for AUSpecifier);
    v0 = sub_21BB22C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB28A0);
    }
  }
}

uint64_t sub_21BB183C4@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28B0, &qword_21BB25978);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v68 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28B8, &qword_21BB25980);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28C0, &qword_21BB25988);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28C8, &qword_21BB25990);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v68 - v14;
  v15 = sub_21BB22ECC();
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15);
  v71 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28D0, &qword_21BB25998);
  v18 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v81 = &v68 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28D8, &qword_21BB259A0);
  v20 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v68 - v21;
  v69 = sub_21BB22A8C();
  v68 = *(v69 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21BB22A6C();
  v24 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28E0, &qword_21BB259A8);
  v77 = *(v86 - 8);
  v26 = *(v77 + 64);
  MEMORY[0x28223BE20](v86);
  v28 = &v68 - v27;
  v29 = sub_21BB22A9C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v68 - v35;
  v37 = sub_21BB22CCC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  sub_21BB1A144(v41);
  sub_21BB22C5C();
  (*(v38 + 8))(v41, v37);
  (*(v30 + 104))(v34, *MEMORY[0x277D40280], v29);
  sub_21BB1A65C(&qword_27CDB28E8, MEMORY[0x277D40290]);
  sub_21BB2303C();
  sub_21BB2303C();
  v43 = *(v30 + 8);
  v43(v34, v29);
  v44 = (v43)(v36, v29);
  if (v91 == v92)
  {
    MEMORY[0x28223BE20](v44);
    *(&v68 - 2) = v1;
    sub_21BB230CC();
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v45 = *(v1 + *(type metadata accessor for AULinkSpecifierView_v1() + 20) + 8);
    swift_beginAccess();
    v46 = *(v45 + 16);
    sub_21BB22A7C();
    sub_21BB22A5C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28F0, &qword_21BB259B0);
    sub_21BB1A358();
    sub_21BB1A65C(&qword_27CDB2968, MEMORY[0x277D40248]);
    sub_21BB22BDC();
    v47 = v77;
    v48 = v86;
    (*(v77 + 16))(v88, v28, v86);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2950, &qword_27CDB28E0, &qword_21BB259A8);
    sub_21BB1A544();
    sub_21BB22CFC();
    return (*(v47 + 8))(v28, v48);
  }

  else
  {
    v50 = *(v1 + *(type metadata accessor for AULinkSpecifierView_v1() + 20) + 8);
    v51 = v76;
    sub_21BB1AA18(v76);
    v53 = v78;
    v52 = v79;
    v54 = v42;
    if ((*(v78 + 48))(v51, 1, v79) == 1)
    {
      sub_21BB09870(v51, &qword_27CDB28C8, &qword_21BB25990);
      swift_beginAccess();
      v55 = *(v50 + 16);
      v56 = v72;
      sub_21BB22A7C();
      v57 = (*(v68 + 56))(v56, 0, 1, v69);
      MEMORY[0x28223BE20](v57);
      *(&v68 - 2) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28F0, &qword_21BB259B0);
      sub_21BB1A358();
      sub_21BB1A65C(&qword_27CDB2940, MEMORY[0x277D40250]);
      v58 = v82;
      sub_21BB22BEC();
      v59 = v84;
      v60 = v85;
      (*(v84 + 16))(v83, v58, v85);
      swift_storeEnumTagMultiPayload();
      sub_21BB13E04(&qword_27CDB2948, &qword_27CDB28C0, &qword_21BB25988);
      v61 = v81;
      sub_21BB22CFC();
      (*(v59 + 8))(v58, v60);
    }

    else
    {
      v62 = v71;
      (*(v53 + 32))(v71, v51, v52);
      v63 = v70;
      (*(v53 + 16))(v70, v62, v52);
      v64 = (*(v53 + 56))(v63, 0, 1, v52);
      MEMORY[0x28223BE20](v64);
      *(&v68 - 2) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28F0, &qword_21BB259B0);
      sub_21BB1A358();
      sub_21BB1A65C(&qword_27CDB2960, MEMORY[0x277D4D798]);
      v65 = v82;
      sub_21BB22BEC();
      v66 = v84;
      v67 = v85;
      (*(v84 + 16))(v83, v65, v85);
      swift_storeEnumTagMultiPayload();
      sub_21BB13E04(&qword_27CDB2948, &qword_27CDB28C0, &qword_21BB25988);
      v61 = v81;
      sub_21BB22CFC();
      (*(v66 + 8))(v65, v67);
      (*(v53 + 8))(v62, v52);
    }

    sub_21BB17ABC(v61, v88, &qword_27CDB28D0, &qword_21BB25998);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2950, &qword_27CDB28E0, &qword_21BB259A8);
    sub_21BB1A544();
    sub_21BB22CFC();
    return sub_21BB09870(v61, &qword_27CDB28D0, &qword_21BB25998);
  }
}

uint64_t sub_21BB190E8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2918, &unk_21BB259C0);
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v18 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2970, &qword_21BB259D8);
  v6 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2908, &qword_21BB259B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *(v1 + *(type metadata accessor for AULinkSpecifierView_v1() + 20) + 8);
  swift_beginAccess();
  v15 = [*(v14 + 16) au_prefersSubtitleAppearance];
  v23 = v1;
  v22 = v1;
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2978, &unk_21BB259E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2980, &unk_21BB260B0);
    sub_21BB13E04(&qword_27CDB2988, &qword_27CDB2978, &unk_21BB259E0);
    sub_21BB1A710();
    sub_21BB22DFC();
    (*(v10 + 16))(v8, v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2900, &qword_27CDB2908, &qword_21BB259B8);
    sub_21BB1A410();
    sub_21BB22CFC();
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2928, &unk_21BB260A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2938, &qword_21BB259D0);
    sub_21BB13E04(&qword_27CDB2920, &qword_27CDB2928, &unk_21BB260A0);
    sub_21BB1A4C8();
    sub_21BB22BCC();
    v17 = v21;
    (*(v2 + 16))(v8, v5, v21);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2900, &qword_27CDB2908, &qword_21BB259B8);
    sub_21BB1A410();
    sub_21BB22CFC();
    return (*(v2 + 8))(v5, v17);
  }
}

uint64_t sub_21BB19564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for AULinkSpecifierView_v1() + 20) + 8);
  swift_beginAccess();
  v5 = [*(v4 + 16) au_titleString];
  if (v5)
  {
    v6 = v5;
    sub_21BB22FCC();

    sub_21BB13BE0();
    v7 = sub_21BB22D6C();
    v9 = v8;
    v11 = v10;
    v13 = v12 & 1;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v13 = 0;
    v11 = 0;
  }

  v14 = [*(v4 + 16) au_detailString];
  if (v14)
  {
    v15 = v14;
    sub_21BB22FCC();

    sub_21BB13BE0();
    v14 = sub_21BB22D6C();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
  }

  else
  {
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v11;
  a2[4] = v14;
  a2[5] = v17;
  a2[6] = v21;
  a2[7] = v19;
  v22 = v14;
  sub_21BB17DE4(v7, v9, v13, v11);
  sub_21BB17DE4(v22, v17, v21, v19);
  sub_21BB17E28(v22, v17, v21, v19);
  sub_21BB17E28(v7, v9, v13, v11);
}