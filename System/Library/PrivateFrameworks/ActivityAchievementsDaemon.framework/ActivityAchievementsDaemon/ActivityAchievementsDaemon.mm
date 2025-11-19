void sub_221DDDF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ACHGoalCompletionTrigger(uint64_t a1)
{
  v1 = 4;
  if (a1 == 1)
  {
    v1 = 16;
  }

  if (a1 == 2)
  {
    return 32;
  }

  else
  {
    return v1;
  }
}

uint64_t ACHTemplateIsAvailableForCalendarAndDate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 availabilityStart];

  if (v8)
  {
    v9 = [v5 availabilityStart];
    v10 = [v6 dateFromComponents:v9];

    v11 = [v7 compare:v10] != -1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v5 availabilityEnd];

  if (v12)
  {
    v13 = [v5 availabilityEnd];
    v14 = [v6 dateFromComponents:v13];
    v15 = [v6 hk_startOfDateByAddingDays:1 toDate:v14];

    v16 = [v6 dateByAddingUnit:128 value:-1 toDate:v15 options:0];
    v17 = [v7 compare:v16] != 1;
  }

  else
  {
    v17 = 1;
  }

  return v11 & v17;
}

id ACHCanonicalUnitForGoalType(uint64_t a1)
{
  if (ACHCanonicalUnitForGoalType_onceToken != -1)
  {
    ACHCanonicalUnitForGoalType_cold_1();
  }

  v2 = ACHCanonicalUnitForGoalType_unitByGoalType;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

uint64_t sub_221DDF5CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_221DDF604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_221DDF644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_221E56EA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_221DDF700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_221E56EA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_221DDF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_221DDF8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_221DDF9DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DistanceSample(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_221DDFAF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DistanceSample(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_221DDFF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DE037C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_221DE1178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DE14C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DE1700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221DE23B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_221DE4730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DE4AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DE54E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DE60BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id ACHEarnedInstanceAllKeys()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"template_unique_name";
  v3[1] = @"created_date";
  v3[2] = @"earned_date";
  v3[3] = @"value_in_canonical_unit";
  v3[4] = @"value_canonical_unit";
  v3[5] = @"external_identifier";
  v3[6] = @"creator_device";
  v3[7] = @"sync_provenance";
  v3[8] = @"sync_identity";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id ACHEarnedInstancePredicateForKey(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = *MEMORY[0x277D10A40];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "key")}];
  v4 = _HDSQLiteValueForNumber();
  v5 = [v1 predicateWithProperty:v2 equalToValue:v4];

  return v5;
}

id ACHEarnedInstancePredicateUsingKey(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_4];
  v2 = [MEMORY[0x277D10B28] containsPredicateWithProperty:*MEMORY[0x277D10A40] values:v1];

  return v2;
}

uint64_t __ACHEarnedInstancePredicateUsingKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 key];

  return [v2 numberWithUnsignedInteger:v3];
}

id ACHEarnedInstancePredicateForSyncAnchor(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = *MEMORY[0x277D10A40];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v4 = [v1 predicateWithProperty:v2 greaterThanValue:v3];

  return v4;
}

id ACHEarnedInstancePredicateForSyncProvenance(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"sync_provenance" equalToValue:v2];

  return v3;
}

id ACHEarnedInstanceCompoundPredicateForDateComponentStringsArray(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_329];
  v2 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v1];

  return v2;
}

id ACHEarnedInstanceCompoundPredicateForAnniversaryDateComponentsString(void *a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 hk_map:&__block_literal_global_332];
  v5 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v4];
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"earned_date" endsWithString:v3];

  v7 = MEMORY[0x277D10B20];
  v12[0] = v6;
  v12[1] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v7 predicateMatchingAllPredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_221DE8B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ACHEarnedInstanceSyncIdentityFromEarnedInstance(void *a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v8 syncIdentityManager];
  v11 = [v10 legacySyncIdentity];

  v12 = [v9 syncIdentity];

  v13 = healthSyncIdentity(v12);

  v14 = [v8 syncIdentityManager];

  if (a2 && v13)
  {
    v19 = 0;
    v15 = [v14 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v7 error:&v19];
    v16 = v19;

    if (!v15)
    {
      v17 = ACHLogDatabase();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        ACHEarnedInstanceSyncIdentityFromEarnedInstance_cold_1();
      }
    }
  }

  else
  {
    v15 = [v14 currentSyncIdentity];
  }

  return v15;
}

void sub_221DE9F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_221DEAAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_221DEB924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DEBDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DEBF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DEC370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DEC558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ACHAvailableTemplatesForDateComponentsAndCountryCodeInTemplates(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 hk_gregorianCalendar];
  v10 = [v9 dateFromComponents:v8];

  v11 = ACHAvailableTemplatesForCountryCodeInTemplates(v7, v6);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __ACHAvailableTemplatesForDateComponentsAndCountryCodeInTemplates_block_invoke;
  v16[3] = &unk_2784909F0;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = [v11 hk_filter:v16];

  return v14;
}

id ACHAvailableTemplatesForCountryCodeInTemplates(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 availableCountryCodes];
        v12 = [v11 count];

        if (v12)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v13 = [v10 availableCountryCodes];
          v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v23;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v23 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                if (![*(*(&v22 + 1) + 8 * j) caseInsensitiveCompare:v3])
                {
                  [v5 addObject:v10];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v15);
          }
        }

        else
        {
          [v5 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v18 = [v5 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_221DECAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DECC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DED54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DEE0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DEFF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DF16E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DF34C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DF37F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DF6DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DF7BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL ACHRequestAwardsProfileExtensionWithError(void *a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1 profileExtensionsConformingToProtocol:&unk_28356FE58];
  v7 = [v6 firstObject];
  if (v7)
  {
    v5[2](v5, v7);
  }

  else
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ACHRequestAwardsProfileExtensionWithError_cold_1(v8);
    }

    v9 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Activity Awards plugin is nil";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.ActivityAchievements" code:1 userInfo:v10];

    v12 = v11;
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

void sub_221DF8D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DF9848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DF9E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFA450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFA664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFA920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFAB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFAE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFB09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221DFB664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFBAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFBCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFBF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFC2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221DFC720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFCAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221DFCE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFD234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFD5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id ACHMonthlyChallengeTemplateFromCacheValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:@"_"];
  v5 = [v4 firstObject];
  ACHMonthlyChallengeTypeFromMonthlyChallengeName();

  v6 = [v4 objectAtIndexedSubscript:1];
  [v6 integerValue];

  v7 = [v4 objectAtIndexedSubscript:2];
  [v7 integerValue];

  v8 = [v4 objectAtIndexedSubscript:3];
  [v8 integerValue];

  v9 = ACHDateComponentsForYearMonthDay();
  v10 = [v3 dateFromComponents:v9];
  v11 = [v3 hk_startOfMonthForDate:v10];

  v12 = [v3 hk_startOfMonthForDate:v11 addingMonths:1];
  v13 = [v3 hk_startOfDateBySubtractingDays:1 fromDate:v12];
  v14 = *MEMORY[0x277CE8B28];
  v15 = [v3 components:*MEMORY[0x277CE8B28] fromDate:v11];
  v16 = [v3 components:v14 fromDate:v13];

  v17 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v15 endDateComponents:v16];
  v18 = ACHMonthlyChallengeTemplate();
  if ([v4 count] >= 5)
  {
    v19 = [v4 objectAtIndexedSubscript:4];
    [v19 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    v24 = v12;
    v21 = v20 = v9;

    v22 = [v21 componentsSeparatedByString:@"|"];
    [v18 setAvailableSuffixes:v22];

    v9 = v20;
    v12 = v24;
  }

  return v18;
}

void sub_221DFE564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ACHExperienceTypeForDateWithHealthStore(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v15 = 0;
  v9 = [a1 dateOfBirthComponentsWithError:&v15];
  v10 = v15;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      if (a4)
      {
        v13 = v10;
        v12 = 0;
        *a4 = v11;
        goto LABEL_8;
      }

      _HKLogDroppedError();
    }

    v12 = 0;
    goto LABEL_8;
  }

  v12 = FIExperienceTypeForBirthDateComponentsWithCurrentDateAndCalendar();
LABEL_8:

  return v12;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DFFCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E00E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E01820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E019F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E01C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch(char a1)
{
  if (a1)
  {
    return 1;
  }

  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 isStandalonePhoneFitnessMode];

  return v3;
}

double ACHGizmoHistoricalEvaluationPolicy@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_221E5E790;
  *(a1 + 16) = 0;
  return result;
}

void ACHTinkerHistoricalEvaluationPolicy(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
}

int64x2_t ACHCompanionHistoricalEvaluationPolicy@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(2uLL);
  *a1 = result;
  a1[1].i16[0] = 257;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ACHEvaluationDateIntervalFor(void *a1)
{
  v1 = a1;
  v2 = [v1 endDate];
  v3 = [v1 startDate];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4 timeIntervalSinceReferenceDate];
  if (v6 <= v7)
  {
    v13 = v1;
    v8 = v2;
  }

  else
  {
    v8 = v4;

    [v3 timeIntervalSinceReferenceDate];
    v10 = v9;
    [v8 timeIntervalSinceReferenceDate];
    if (v10 > v11)
    {
      v12 = v8;

      v3 = v12;
    }

    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v3 endDate:v8];
  }

  return v13;
}

void sub_221E055A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E06B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E0812C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E08338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E085F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E08910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E08CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E08F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E0923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E094E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E09750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E099FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E09DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E0A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E0ABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E0ADF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ACHComparisonForEarnedInstances(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1 duplicateRemovalStrategy];
  if ((v10 - 3) < 2)
  {
LABEL_4:
    v11 = [v8 earnedDateComponents];
    v12 = [v7 dateFromComponents:v11];

    v13 = [v9 earnedDateComponents];
    v14 = [v7 dateFromComponents:v13];

    v15 = v14;
    v16 = v12;
    goto LABEL_5;
  }

  if (v10 != 2)
  {
    if (v10 != 1)
    {
LABEL_6:
      v18 = [v8 externalIdentifier];
      if (!v18 || (v19 = v18, [v9 externalIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
      {
        v21 = [v8 externalIdentifier];
        if (v21)
        {

LABEL_10:
          v22 = [v9 createdDate];
          v23 = [v8 createdDate];
          v17 = [v22 compare:v23];

          goto LABEL_21;
        }

        v25 = [v9 externalIdentifier];

        if (!v25)
        {
          goto LABEL_10;
        }

LABEL_20:
        v17 = -1;
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_4;
  }

  v24 = [v8 value];
  if (v24)
  {
  }

  else
  {
    v26 = [v9 value];

    if (!v26)
    {
      goto LABEL_6;
    }
  }

  v27 = [v8 value];

  if (!v27)
  {
    goto LABEL_20;
  }

  v28 = [v9 value];

  if (!v28)
  {
LABEL_19:
    v17 = 1;
    goto LABEL_21;
  }

  v12 = [v8 value];
  v14 = [v9 value];
  v15 = v12;
  v16 = v14;
LABEL_5:
  v17 = [v15 compare:v16];

  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_21:

  return v17;
}

id ACHDateComponentsForPackedDateComponents(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = ACHDateComponentsForYearMonthDay();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_221E0C9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E0CDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E0D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E0DB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E107C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E1383C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_221E13E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E144B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E14B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E150C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E15490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E15998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E168E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_221E19EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E1AB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E1C114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E1CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 32);
  v5 = *(*a2 + 8);
  return result;
}

void sub_221E1ECD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E1F110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E20298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E20504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E20834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E20D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_221E21E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E221E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E227E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E22B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E22DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E230BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E23380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E235C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E23A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E23BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E24F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E2527C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E25440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id ACHAllTemplateDatabaseKeys()
{
  v3[38] = *MEMORY[0x277D85DE8];
  v3[0] = @"unique_name";
  v3[1] = @"version";
  v3[2] = @"minimum_engine_version";
  v3[3] = @"created_date";
  v3[4] = @"creator_device";
  v3[5] = @"source_name";
  v3[6] = @"predicate";
  v3[7] = @"grace_predicate";
  v3[8] = @"value_expression";
  v3[9] = @"grace_value_expression";
  v3[10] = @"progress_expression";
  v3[11] = @"grace_progress_expression";
  v3[12] = @"goal_expression";
  v3[13] = @"grace_goal_expression";
  v3[14] = @"triggers";
  v3[15] = @"earn_limit";
  v3[16] = @"visibility_predicate";
  v3[17] = @"grace_visibility_predicate";
  v3[18] = @"visibility_start_date";
  v3[19] = @"visibility_end_date";
  v3[20] = @"availability_predicate";
  v3[21] = @"availability_start_date";
  v3[22] = @"availability_end_date";
  v3[23] = @"available_country_codes";
  v3[24] = @"alertability_predicate";
  v3[25] = @"alert_dates";
  v3[26] = @"duplicateremoval_strategy";
  v3[27] = @"duplicateremoval_calendar_unit";
  v3[28] = @"earn_date";
  v3[29] = @"display_order";
  v3[30] = @"displays_earned_instance_count";
  v3[31] = @"canonical_unit";
  v3[32] = @"sync_provenance";
  v3[33] = @"sync_identity";
  v3[34] = @"available_suffixes";
  v3[35] = @"daily_target";
  v3[36] = @"daily_target_canonical_unit";
  v3[37] = @"prerequisite_template_name";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:38];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id ACHTemplateSyncIdentityFromTemplate(void *a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v8 syncIdentityManager];
  v11 = [v10 legacySyncIdentity];

  v12 = [v9 syncIdentity];

  v13 = healthSyncIdentity(v12);

  v14 = [v8 syncIdentityManager];

  if (a2 && v13)
  {
    v19 = 0;
    v15 = [v14 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v7 error:&v19];
    v16 = v19;

    if (!v15)
    {
      v17 = ACHLogDatabase();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        ACHTemplateSyncIdentityFromTemplate_cold_1();
      }
    }
  }

  else
  {
    v15 = [v14 currentSyncIdentity];
  }

  return v15;
}

void sub_221E28CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E296CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_221E29FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E2AD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E2B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E2EB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ACHCanonicalUnitForGoalType_block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_283555BA8;
  v0 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v8[0] = v0;
  v7[1] = &unk_283555BC0;
  v1 = [MEMORY[0x277CCDAB0] minuteUnit];
  v8[1] = v1;
  v7[2] = &unk_283555BD8;
  v2 = [MEMORY[0x277CCDAB0] minuteUnit];
  v8[2] = v2;
  v7[3] = &unk_283555BF0;
  v3 = [MEMORY[0x277CCDAB0] countUnit];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = ACHCanonicalUnitForGoalType_unitByGoalType;
  ACHCanonicalUnitForGoalType_unitByGoalType = v4;

  v6 = *MEMORY[0x277D85DE8];
}

__CFString *ACHGoalDisplayName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Move";
  }

  else
  {
    return off_2784929C8[a1 - 1];
  }
}

void sub_221E31C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E32158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E33A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E349E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E34BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E34D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E358B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E35B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E365C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E36888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E36B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E36DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E37020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E374E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E379CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_221E380FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_221E3834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E386DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E38B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E3A5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_221E3B4A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

id ACHHistoricalEvaluationStartDateForPolicy(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *a1;
  if (*a1 == 2)
  {
    if (!v6)
    {
LABEL_10:
      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:410227200.0];
      goto LABEL_11;
    }

    v10 = [v6 validThroughDate];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v15 = ACHLogAwardEngine();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ACHHistoricalEvaluationStartDateForPolicy_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:410227200.0];
    }

    v13 = v12;
  }

  else
  {
    if (v8 == 1)
    {
      if (v5)
      {
        v9 = v5;
LABEL_11:
        v13 = v9;
        goto LABEL_20;
      }

      v14 = ACHLogAwardEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "Policy requested last known end date, but no known end date exists", v24, 2u);
      }
    }

    else if (!v8)
    {
      goto LABEL_10;
    }

    v13 = 0;
  }

LABEL_20:

  return v13;
}

id ACHHistoricalEvaluationEndDateForPolicy(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 8);
  if (v7 == 2)
  {
    v8 = [a2 hk_startOfDateBySubtractingDays:2 fromDate:v5];
    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = v5;
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

uint64_t *OUTLINED_FUNCTION_7@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_221E3BD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E3C99C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_221E3D67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E3DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3E9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E3ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3F088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3F47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3FCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id achSyncIdentity(void *a1)
{
  v1 = a1;
  v2 = [v1 hardwareIdentifier];
  v3 = [v2 hk_dataForUUIDBytes];

  v4 = [v1 databaseIdentifier];
  v5 = [v4 hk_dataForUUIDBytes];

  if (v3 && v5)
  {
    v6 = [v1 instanceDiscriminator];
    v7 = v6;
    v8 = &stru_283541ED8;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [objc_alloc(MEMORY[0x277CE8D48]) initWithHardwareIdentifier:v3 databaseIdentifier:v5 instanceDiscriminator:v9];
  }

  else
  {
    v11 = ACHLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      achSyncIdentity_cold_1(v11);
    }

    v10 = 0;
  }

  return v10;
}

id healthSyncIdentity(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCAD78];
  v3 = [v1 hardwareIdentifier];
  v4 = [v2 hk_UUIDWithData:v3];

  v5 = MEMORY[0x277CCAD78];
  v6 = [v1 databaseIdentifier];
  v7 = [v5 hk_UUIDWithData:v6];

  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = ACHLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      healthSyncIdentity_cold_1(v9);
    }

    v10 = 0;
  }

  else
  {
    v11 = [v1 instanceDiscriminator];
    v12 = v11;
    v13 = &stru_283541ED8;
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v10 = [objc_alloc(MEMORY[0x277D108E0]) initWithHardwareIdentifier:v4 databaseIdentifier:v7 instanceDiscriminator:v14];
  }

  return v10;
}

id ACHDatabaseContextWithAccessibilityAssertion(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277D10788]);
  v3 = [v1 assertion];

  if (v3)
  {
    v4 = [v1 assertion];
    [v2 addAccessibilityAssertion:v4];
  }

  return v2;
}

double sub_221E40158()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E401F0(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40288()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40320(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E403B8()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40450(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E404E8()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40580(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40618()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E406B0(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40748()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E407E0(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40878()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40910(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E409A8()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40A40(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ACHFastestDistanceResult.init()()
{
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_best5KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_best10KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  v2.super_class = ACHFastestDistanceResult;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_221E40BCC(char a1)
{
  v2 = [objc_opt_self() kilometers];
  sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
  v3 = qword_221E5EFC8[a1];

  return sub_221E56E00();
}

uint64_t sub_221E40C60(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_221E40BCC(*a1);
  sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8);
  v7 = sub_221E56F50();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_221E40D94(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 4;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 4;
    }
  }

  return v7;
}

uint64_t sub_221E40E14()
{
  v1 = *v0;
  sub_221E57120();
  MEMORY[0x223DAA880](v1);
  return sub_221E57150();
}

uint64_t sub_221E40E88()
{
  v1 = *v0;
  sub_221E57120();
  MEMORY[0x223DAA880](v1);
  return sub_221E57150();
}

unint64_t sub_221E40ECC()
{
  v1 = 0x6F6C694B65766966;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6D6F6C694B6E6574;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_221E40F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221E4D558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221E40FAC(uint64_t a1)
{
  v2 = sub_221E51688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E40FE8(uint64_t a1)
{
  v2 = sub_221E51688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41024(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA970, &qword_221E5EB88);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA978, &qword_221E5EB90);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA980, &qword_221E5EB98);
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA988, &qword_221E5EBA0);
  v27 = *(v14 - 8);
  v15 = *(v27 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEA990, &qword_221E5EBA8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221E51688();
  sub_221E57170();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_221E5177C();
      sub_221E570D0();
      (*(v30 + 8))(v9, v31);
    }

    else
    {
      v39 = 3;
      sub_221E51728();
      v24 = v32;
      sub_221E570D0();
      (*(v33 + 8))(v24, v34);
    }
  }

  else if (v35)
  {
    v37 = 1;
    sub_221E517D0();
    sub_221E570D0();
    (*(v28 + 8))(v13, v29);
  }

  else
  {
    v36 = 0;
    sub_221E51824();
    sub_221E570D0();
    (*(v27 + 8))(v17, v14);
  }

  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_221E4146C(uint64_t a1)
{
  v2 = sub_221E51824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E414A8(uint64_t a1)
{
  v2 = sub_221E51824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E414E4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_221E41520(uint64_t a1)
{
  v2 = sub_221E5177C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E4155C(uint64_t a1)
{
  v2 = sub_221E5177C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41598(uint64_t a1)
{
  v2 = sub_221E51728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E415D4(uint64_t a1)
{
  v2 = sub_221E51728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41610(uint64_t a1)
{
  v2 = sub_221E517D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E4164C(uint64_t a1)
{
  v2 = sub_221E517D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41688(char *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  LOBYTE(a2) = *a2;
  sub_221E40BCC(*a1);
  sub_221E40BCC(a2);
  sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8);
  LOBYTE(a2) = sub_221E56F50();
  v12 = *(v5 + 8);
  v12(v9, v4);
  v12(v11, v4);
  return a2 & 1;
}

uint64_t sub_221E41800()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = *v0;
  sub_221E57120();
  sub_221E40BCC(v6);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8);
  sub_221E56F10();
  (*(v2 + 8))(v5, v1);
  return sub_221E57150();
}

uint64_t sub_221E41934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - v4;
  sub_221E40BCC(*v0);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8);
  sub_221E56F10();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_221E41A58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = *v0;
  sub_221E57120();
  sub_221E40BCC(v6);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8);
  sub_221E56F10();
  (*(v2 + 8))(v5, v1);
  return sub_221E57150();
}

uint64_t sub_221E41B98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[2] = a1;
  v4 = sub_221E40D94(sub_221E51614, v7, &unk_2835409A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a2 = v4;
  return result;
}

uint64_t sub_221E41C4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221E4D6DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_221E41CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceSample(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = a2 + v10;
    v12 = *(v6 + 72);
    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    do
    {
      sub_221E50BBC(v11, v8, type metadata accessor for DistanceSample);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_221E45790(0, v13[2] + 1, 1, v13, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
      }

      v16 = v13[2];
      v15 = v13[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v13 = sub_221E45790(v15 > 1, v16 + 1, 1, v13, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
      }

      v13[2] = v17;
      sub_221E50CF4(v8, v13 + v10 + v16 * v12, type metadata accessor for DistanceSample);
      if (v17 == a1)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_221E4596C(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_221E4596C((v18 > 1), v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        v14[v19 + 4] = v13;

        v13 = MEMORY[0x277D84F90];
      }

      v11 += v12;
      --v9;
    }

    while (v9);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
  }

  if (v13[2])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_221E4596C(0, v14[2] + 1, 1, v14);
    }

    v21 = v14[2];
    v20 = v14[3];
    if (v21 >= v20 >> 1)
    {
      v14 = sub_221E4596C((v20 > 1), v21 + 1, 1, v14);
    }

    v14[2] = v21 + 1;
    v14[v21 + 4] = v13;
  }

  else
  {
  }

  return v14;
}

id sub_221E41FA4()
{
  result = [type metadata accessor for UnitPace() baseUnit];
  qword_27CFEA9B8 = result;
  return result;
}

id sub_221E4208C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v2 = objc_allocWithZone(v0);
  v3 = sub_221E56F60();
  v4 = [v2 initWithSymbol:v3 converter:v1];

  return v4;
}

id sub_221E42150()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnitPace();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221E42188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_221E42360(&v11 - v6);
  if (qword_27CFEA9B0 != -1)
  {
    swift_once();
  }

  sub_221E56E40();
  sub_221E56E10();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = [objc_opt_self() metersPerSecond];
  sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
  sub_221E56E00();
  return (v8)(v7, v0);
}

uint64_t sub_221E42360@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v12 = *(v11 + 28);
  v13 = [objc_opt_self() meters];
  sub_221E56E40();

  sub_221E56E10();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  if (v15 > 0.0)
  {
    v16 = *(v11 + 32);
    v17 = [objc_opt_self() seconds];
    sub_221E56E40();

    sub_221E56E10();
    (*(v2 + 8))(v5, v1);
  }

  if (qword_27CFEA9B0 != -1)
  {
    swift_once();
  }

  v18 = qword_27CFEA9B8;
  type metadata accessor for UnitPace();
  v19 = v18;
  return sub_221E56E00();
}

uint64_t sub_221E425F8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x223DAA890](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x223DAA890](*&v2);
  v3 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v4 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8);
  sub_221E56F10();
  v5 = v0 + v3[7];
  sub_221E56F10();
  v6 = v3[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  sub_221E51574(&qword_27CFEA870, &qword_27CFEA858, &unk_221E5E860);
  return sub_221E56F10();
}

uint64_t sub_221E42748()
{
  sub_221E57120();
  sub_221E425F8();
  return sub_221E57150();
}

uint64_t sub_221E4278C()
{
  sub_221E57120();
  sub_221E425F8();
  return sub_221E57150();
}

uint64_t sub_221E427C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_221E42360(&v11 - v6);
  sub_221E42360(v5);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980);
  v8 = sub_221E56F30();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

BOOL sub_221E4293C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_221E42360(&v11 - v6);
  sub_221E42360(v5);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980);
  v8 = sub_221E56F30();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return (v8 & 1) == 0;
}

BOOL sub_221E42AB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_221E42360(&v11 - v6);
  sub_221E42360(v5);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980);
  v8 = sub_221E56F30();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return (v8 & 1) == 0;
}

uint64_t sub_221E42C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_221E42360(&v11 - v6);
  sub_221E42360(v5);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980);
  v8 = sub_221E56F30();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_221E42DA4()
{
  v0 = sub_221E56F00();
  __swift_allocate_value_buffer(v0, qword_280FAFE98);
  __swift_project_value_buffer(v0, qword_280FAFE98);
  return sub_221E56EF0();
}

id sub_221E42E34(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore_];

  return v2;
}

id sub_221E42E7C(uint64_t a1)
{
  *(v1 + OBJC_IVAR___ACHFastestDistanceCalculator_healthStore) = a1;
  v3.super_class = ACHFastestDistanceCalculator;
  return objc_msgSendSuper2(&v3, sel_init);
}

void __swiftcall ACHFastestDistanceCalculator.fastestDistances(for:)(ACHFastestDistanceResult *__return_ptr retstr, HKWorkout a2)
{
  v3 = v2;
  v175 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v174 = *(v175 - 8);
  v5 = *(v174 + 64);
  v6 = MEMORY[0x28223BE20](v175);
  v169 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v171 = &v161 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v170 = &v161 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v172 = &v161 - v13;
  MEMORY[0x28223BE20](v12);
  v173 = &v161 - v14;
  v15 = sub_221E56ED0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v194 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v193 = &v161 - v19;
  v191 = sub_221E56EA0();
  v20 = *(v191 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v191);
  v190 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA848, &qword_221E5E850);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v192 = &v161 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v161 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v180 = &v161 - v34;
  MEMORY[0x28223BE20](v33);
  v184 = &v161 - v35;
  v36 = type metadata accessor for DistanceSample(0);
  v185 = *(v36 - 8);
  v37 = *(v185 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v189 = &v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v199 = &v161 - v41;
  MEMORY[0x28223BE20](v40);
  v183 = &v161 - v42;
  if (qword_280FAFE90 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v43 = sub_221E56F00();
    v44 = __swift_project_value_buffer(v43, qword_280FAFE98);
    v45 = a2.super.super.super.isa;
    v179 = v44;
    v46 = sub_221E56EE0();
    v47 = sub_221E56FD0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&dword_221DDC000, v46, v47, "Finding fastest Distances for workout: %@", v48, 0xCu);
      sub_221E5128C(v49, &qword_27CFEA850, &qword_221E5E858);
      MEMORY[0x223DABCD0](v49, -1, -1);
      MEMORY[0x223DABCD0](v48, -1, -1);
    }

    v51 = [objc_allocWithZone(ACHFastestDistanceResult) init];
    if (![v3 isAwardable_])
    {
      v87 = v45;
      v88 = sub_221E56EE0();
      v89 = sub_221E56FD0();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v90 = 138412290;
        *(v90 + 4) = v87;
        *v91 = v87;
        v92 = v87;
        v93 = "Workout not a run or wheelchair run: %@";
LABEL_20:
        _os_log_impl(&dword_221DDC000, v88, v89, v93, v90, 0xCu);
        sub_221E5128C(v91, &qword_27CFEA850, &qword_221E5E858);
        MEMORY[0x223DABCD0](v91, -1, -1);
        MEMORY[0x223DABCD0](v90, -1, -1);
      }

LABEL_21:

      return;
    }

    [(objc_class *)v45 duration];
    if (v52 <= 600.0)
    {
      v94 = v45;
      v88 = sub_221E56EE0();
      v89 = sub_221E56FD0();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v90 = 138412290;
        *(v90 + 4) = v94;
        *v91 = v94;
        v95 = v94;
        v93 = "Workout duration too short: %@";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v53 = [v3 quantityTypeIdentifierForDistance_];
    v54 = [(objc_class *)v45 statisticsForType:v53];

    v196 = v20;
    if (v54)
    {
      v55 = [v54 sumQuantity];
      if (v55)
      {
        v56 = v55;
        v57 = [objc_opt_self() meterUnit];
        v198 = v56;
        [v56 doubleValueForUnit_];
        v59 = v58;

        v60 = sub_221E56EE0();
        v61 = sub_221E56FD0();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = v36;
          v63 = v32;
          v64 = v45;
          v65 = v51;
          v66 = swift_slowAlloc();
          *v66 = 134217984;
          *(v66 + 4) = v59;
          _os_log_impl(&dword_221DDC000, v60, v61, "Workout distance: %f meters", v66, 0xCu);
          v67 = v66;
          v51 = v65;
          v45 = v64;
          v32 = v63;
          v36 = v62;
          MEMORY[0x223DABCD0](v67, -1, -1);
        }
      }
    }

    v165 = v51;
    v68 = dispatch_group_create();
    dispatch_group_enter(v68);
    v168 = [objc_opt_self() predicateForObjectsFromWorkout_];
    v69 = swift_allocObject();
    v166 = v69;
    *(v69 + 16) = MEMORY[0x277D84F90];
    v167 = (v69 + 16);
    v70 = sub_221E56EE0();
    v71 = sub_221E56FD0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_221DDC000, v70, v71, "Querying for Quantity Series Samples", v72, 2u);
      MEMORY[0x223DABCD0](v72, -1, -1);
    }

    v162 = v45;
    v73 = [v3 quantityTypeIdentifierForDistance_];
    v74 = swift_allocObject();
    v75 = v166;
    *(v74 + 16) = v68;
    *(v74 + 24) = v75;
    v76 = objc_allocWithZone(MEMORY[0x277CCD828]);
    aBlock[4] = sub_221E45AA0;
    aBlock[5] = v74;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221E453A8;
    aBlock[3] = &block_descriptor;
    v77 = _Block_copy(aBlock);
    v78 = v68;

    v79 = [v76 initWithQuantityType:v73 predicate:v168 quantityHandler:v77];

    _Block_release(v77);

    [v79 setOrderByQuantitySampleStartDate_];
    v80 = [v3 healthStore];
    [v80 executeQuery_];

    v164 = v78;
    sub_221E56FF0();

    v81 = sub_221E56EE0();
    v82 = sub_221E56FD0();
    v83 = os_log_type_enabled(v81, v82);
    v163 = v79;
    if (v83)
    {
      v84 = swift_slowAlloc();
      *v84 = 134217984;
      v85 = v167;
      swift_beginAccess();
      *(v84 + 4) = *(*(v75 + 16) + 16);

      _os_log_impl(&dword_221DDC000, v81, v82, "Samples processed: %ld", v84, 0xCu);
      MEMORY[0x223DABCD0](v84, -1, -1);

      v86 = v180;
    }

    else
    {

      v86 = v180;
      v85 = v167;
    }

    swift_beginAccess();
    sub_221E44F80(v85);
    swift_endAccess();
    v96 = *v85;
    v97 = ceil(*(*v85 + 2) / 1000.0);
    v98 = v165;
    if (v97 == INFINITY)
    {
      break;
    }

    if (v97 <= -9.22337204e18)
    {
      goto LABEL_85;
    }

    if (v97 >= 9.22337204e18)
    {
      goto LABEL_86;
    }

    v99 = v97;
    if (v97 < 2)
    {
      v121 = v166;

      v122 = sub_221E56EE0();
      v123 = sub_221E56FD0();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 134217984;
        *(v124 + 4) = *(*(v121 + 16) + 16);

        _os_log_impl(&dword_221DDC000, v122, v123, "Samples not reduced -> %ld", v124, 0xCu);
        MEMORY[0x223DABCD0](v124, -1, -1);
      }

      else
      {
      }

      v125 = v167;
      goto LABEL_54;
    }

    v100 = *v85;

    v101 = sub_221E41CB4(v99, v96);

    v178 = v101[2];
    if (!v178)
    {
      a2.super.super.super.isa = MEMORY[0x277D84F90];
LABEL_50:

      v126 = v166;

      isa = a2.super.super.super.isa;
      v128 = sub_221E56EE0();
      v129 = sub_221E56FD0();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 134218240;
        *(v130 + 4) = *(*(v126 + 16) + 16);

        *(v130 + 12) = 2048;
        *(v130 + 14) = *(isa + 2);

        _os_log_impl(&dword_221DDC000, v128, v129, "Samples reduced: %ld -> %ld", v130, 0x16u);
        MEMORY[0x223DABCD0](v130, -1, -1);
      }

      else
      {
      }

      v98 = v165;
      v125 = v167;
      v131 = *v167;
      *v167 = isa;

LABEL_54:
      v132 = *v125;

      v134 = sub_221E4DE48(v133);

      v135 = [(objc_class *)v162 workoutActivityType];
      if (!*(v134 + 16))
      {
        goto LABEL_77;
      }

      v136 = v135;
      v137 = sub_221E4621C(0);
      if (v138)
      {
        v139 = *(*(v134 + 56) + 8 * v137);
        if (*(v139 + 16))
        {
          v140 = v173;
          sub_221E50BBC(v139 + ((*(v174 + 80) + 32) & ~*(v174 + 80)), v173, type metadata accessor for DistanceSampleIntervalRecord);
          v141 = *(v175 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          v142 = &selRef_setBestWheelchair5KDuration_;
          if (v136 != 71)
          {
            v142 = &selRef_setBest5KDuration_;
          }

          [v98 *v142];
          sub_221E50C24(v140, type metadata accessor for DistanceSampleIntervalRecord);
        }
      }

      if (!*(v134 + 16))
      {
        goto LABEL_77;
      }

      v143 = sub_221E4621C(1);
      if (v144)
      {
        v145 = *(*(v134 + 56) + 8 * v143);
        if (*(v145 + 16))
        {
          v146 = v172;
          sub_221E50BBC(v145 + ((*(v174 + 80) + 32) & ~*(v174 + 80)), v172, type metadata accessor for DistanceSampleIntervalRecord);
          v147 = *(v175 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          v148 = &selRef_setBestWheelchair10KDuration_;
          if (v136 != 71)
          {
            v148 = &selRef_setBest10KDuration_;
          }

          [v98 *v148];
          sub_221E50C24(v146, type metadata accessor for DistanceSampleIntervalRecord);
        }
      }

      if (!*(v134 + 16))
      {
        goto LABEL_77;
      }

      v149 = sub_221E4621C(2);
      if (v150)
      {
        v151 = *(*(v134 + 56) + 8 * v149);
        if (*(v151 + 16))
        {
          v152 = v170;
          sub_221E50BBC(v151 + ((*(v174 + 80) + 32) & ~*(v174 + 80)), v170, type metadata accessor for DistanceSampleIntervalRecord);
          v153 = *(v175 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          v154 = &selRef_setBestWheelchairHalfMarathonDuration_;
          if (v136 != 71)
          {
            v154 = &selRef_setBestHalfMarathonDuration_;
          }

          [v98 *v154];
          sub_221E50C24(v152, type metadata accessor for DistanceSampleIntervalRecord);
        }
      }

      if (*(v134 + 16) && (v155 = sub_221E4621C(3), (v156 & 1) != 0))
      {
        v157 = *(*(v134 + 56) + 8 * v155);

        if (*(v157 + 16))
        {
          v158 = v169;
          sub_221E50BBC(v157 + ((*(v174 + 80) + 32) & ~*(v174 + 80)), v169, type metadata accessor for DistanceSampleIntervalRecord);

          sub_221E50CF4(v158, v171, type metadata accessor for DistanceSampleIntervalRecord);
          v159 = *(v175 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          if (v136 == 71)
          {
            [v98 setBestWheelchairMarathonDuration_];
          }

          else
          {
            [v98 setBestMarathonDuration_];
          }

          sub_221E50C24(v171, type metadata accessor for DistanceSampleIntervalRecord);

          return;
        }

        v160 = &v200;
      }

      else
      {
LABEL_77:

        v160 = &v195;
      }

      return;
    }

    v102 = 0;
    v176 = v101 + 4;
    v197 = (v185 + 48);
    v198 = (v185 + 56);
    a2.super.super.super.isa = MEMORY[0x277D84F90];
    v20 = &qword_221E5E850;
    v187 = (v196 + 4);
    v103 = v192;
    v3 = v199;
    v188 = v27;
    v177 = v101;
    while (v102 < v101[2])
    {
      v186 = v102;
      v104 = v176[v102];
      v196 = *v198;
      (v196)(v86, 1, 1, v36);
      sub_221E512EC(v86, v32, &qword_27CFEA848, &qword_221E5E850);
      v105 = v104;
      v106 = *(v104 + 16);
      if (v106)
      {
        v182 = a2.super.super.super.isa;
        v107 = v185;
        v108 = v105 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
        v181 = v105;

        v195 = *(v107 + 72);
        do
        {
          sub_221E50BBC(v108, v3, type metadata accessor for DistanceSample);
          sub_221E512EC(v32, v27, &qword_27CFEA848, &qword_221E5E850);
          if ((*v197)(v27, 1, v36) == 1)
          {
            sub_221E5128C(v27, &qword_27CFEA848, &qword_221E5E850);
            sub_221E56E90();
            sub_221E56E70();
            v20 = &qword_221E5E850;
            sub_221E56E80();
            sub_221E5128C(v32, &qword_27CFEA848, &qword_221E5E850);
            v109 = *(v36 + 20);
            v110 = *&v3[v109];
            *(v103 + v109) = v110;
            (v196)(v103, 0, 1, v36);
            v111 = v110;
          }

          else
          {
            v112 = v189;
            sub_221E50CF4(v27, v189, type metadata accessor for DistanceSample);
            sub_221E56E90();
            sub_221E56E70();
            v113 = v190;
            v103 = v192;
            sub_221E56E80();
            v114 = [*(v112 + *(v36 + 20)) _quantityByAddingQuantity_];
            sub_221E5128C(v32, &qword_27CFEA848, &qword_221E5E850);
            v115 = v113;
            v27 = v188;
            (*v187)(v103, v115, v191);
            *(v103 + *(v36 + 20)) = v114;
            v116 = v112;
            v3 = v199;
            v20 = &qword_221E5E850;
            sub_221E50C24(v116, type metadata accessor for DistanceSample);
            (v196)(v103, 0, 1, v36);
          }

          sub_221E50C24(v3, type metadata accessor for DistanceSample);
          sub_221E50C84(v103, v32);
          v108 += v195;
          --v106;
        }

        while (v106);

        v86 = v180;
        a2.super.super.super.isa = v182;
      }

      sub_221E5128C(v86, &qword_27CFEA848, &qword_221E5E850);
      v117 = v184;
      sub_221E50C84(v32, v184);
      if ((*v197)(v117, 1, v36) == 1)
      {
        sub_221E5128C(v117, &qword_27CFEA848, &qword_221E5E850);
      }

      else
      {
        sub_221E50CF4(v117, v183, type metadata accessor for DistanceSample);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2.super.super.super.isa = sub_221E45790(0, *(a2.super.super.super.isa + 2) + 1, 1, a2.super.super.super.isa, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
        }

        v119 = *(a2.super.super.super.isa + 2);
        v118 = *(a2.super.super.super.isa + 3);
        v120 = a2.super.super.super.isa;
        if (v119 >= v118 >> 1)
        {
          v120 = sub_221E45790(v118 > 1, v119 + 1, 1, a2.super.super.super.isa, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
        }

        *(v120 + 2) = v119 + 1;
        a2.super.super.super.isa = v120;
        sub_221E50CF4(v183, v120 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v119, type metadata accessor for DistanceSample);
      }

      v102 = v186 + 1;
      v101 = v177;
      if (v186 + 1 == v178)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_83:
    swift_once();
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
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

void sub_221E447FC(void *a1, uint64_t a2, char a3, void *a4, NSObject *a5, uint64_t a6)
{
  v61 = a5;
  v11 = type metadata accessor for DistanceSample(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA920, &qword_221E5E9E8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57 - v21;
  v23 = sub_221E56EA0();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_280FAFE90 != -1)
    {
      swift_once();
    }

    v29 = sub_221E56F00();
    __swift_project_value_buffer(v29, qword_280FAFE98);
    v30 = a4;
    v31 = sub_221E56EE0();
    v32 = sub_221E56FC0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = a4;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_221DDC000, v31, v32, "Received error %{public}@ from sample query.", v33, 0xCu);
      sub_221E5128C(v34, &qword_27CFEA850, &qword_221E5E858);
      MEMORY[0x223DABCD0](v34, -1, -1);
      MEMORY[0x223DABCD0](v33, -1, -1);
    }

    v37 = v61;

    dispatch_group_leave(v37);
    return;
  }

  v60 = v18;
  if (!a1)
  {
    goto LABEL_12;
  }

  v59 = v28;
  v38 = v25;
  v39 = a2;
  v40 = v26;
  sub_221E512EC(v39, v22, &qword_27CFEA920, &qword_221E5E9E8);
  if ((*(v40 + 48))(v22, 1, v38) == 1)
  {
    sub_221E5128C(v22, &qword_27CFEA920, &qword_221E5E9E8);
LABEL_12:
    if (a3)
    {
      if (qword_280FAFE90 != -1)
      {
        swift_once();
      }

      v41 = sub_221E56F00();
      __swift_project_value_buffer(v41, qword_280FAFE98);
      v42 = sub_221E56EE0();
      v43 = sub_221E56FD0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_221DDC000, v42, v43, "No quantity or date interval and done", v44, 2u);
        MEMORY[0x223DABCD0](v44, -1, -1);
      }

      dispatch_group_leave(v61);
    }

    return;
  }

  v45 = v59;
  (*(v40 + 32))(v59, v22, v38);
  v57 = v38;
  v58 = v40;
  v46 = *(v40 + 16);
  v47 = v60;
  v46(v60, v45, v38);
  *(v47 + *(v11 + 20)) = a1;
  sub_221E50BBC(v47, v16, type metadata accessor for DistanceSample);
  swift_beginAccess();
  v48 = *(a6 + 16);
  v49 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_221E45790(0, v48[2] + 1, 1, v48, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
    *(a6 + 16) = v48;
  }

  v52 = v48[2];
  v51 = v48[3];
  if (v52 >= v51 >> 1)
  {
    v48 = sub_221E45790(v51 > 1, v52 + 1, 1, v48, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
  }

  v48[2] = v52 + 1;
  sub_221E50CF4(v16, v48 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v52, type metadata accessor for DistanceSample);
  *(a6 + 16) = v48;
  swift_endAccess();
  if (a3)
  {
    if (qword_280FAFE90 != -1)
    {
      swift_once();
    }

    v53 = sub_221E56F00();
    __swift_project_value_buffer(v53, qword_280FAFE98);
    v54 = sub_221E56EE0();
    v55 = sub_221E56FD0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_221DDC000, v54, v55, "We are done", v56, 2u);
      MEMORY[0x223DABCD0](v56, -1, -1);
    }

    dispatch_group_leave(v61);
  }

  sub_221E50C24(v60, type metadata accessor for DistanceSample);
  (*(v58 + 8))(v59, v57);
}

uint64_t sub_221E44EAC(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_221E4D364(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_221E46698(v10, type metadata accessor for DistanceSampleIntervalRecord, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_221E44F80(void **a1)
{
  v2 = *(type metadata accessor for DistanceSample(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_221E4D3B0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_221E46698(v6, type metadata accessor for DistanceSample, sub_221E49ACC, sub_221E474D4);
  *a1 = v3;
  return result;
}

uint64_t sub_221E450C8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for DistanceAccumulator(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_221E4CFB0(0, v11, 0);
  v12 = v22;
  v13 = (a3 + 32);
  while (1)
  {
    v14 = *v13++;
    v21 = v14;
    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_221E4CFB0(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_221E50CF4(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for DistanceAccumulator);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221E4526C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

id _sSo24ACHFastestDistanceResultC26ActivityAchievementsDaemonEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_221E453A8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6, void *a7)
{
  v27 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA920, &qword_221E5E9E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (a4)
  {
    sub_221E56E60();
    v19 = sub_221E56EA0();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v20 = sub_221E56EA0();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  v21 = a2;
  v22 = a3;
  v23 = a5;
  v24 = a7;
  v17(v21, a3, v16, a5, v27, a7);

  return sub_221E5128C(v16, &qword_27CFEA920, &qword_221E5E9E8);
}

void *sub_221E45558(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA900, &qword_221E5E9D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA908, &qword_221E5E9D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221E4568C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8E8, &qword_221E5E9B8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_221E45790(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_221E4596C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8A8, &qword_221E5E990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B0, &qword_221E5E998);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221E45AD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221E45BA0(v11, 0, 0, 1, a1, a2);
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
    sub_221E51230(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_221E45BA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_221E45CAC(a5, a6);
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
    result = sub_221E57040();
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

uint64_t sub_221E45CAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_221E45CF8(a1, a2);
  sub_221E45E28(&unk_2835409F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_221E45CF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_221E45F14(v5, 0);
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

  result = sub_221E57040();
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
        v10 = sub_221E56F90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221E45F14(v10, 0);
        result = sub_221E57000();
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

uint64_t sub_221E45E28(uint64_t result)
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

  result = sub_221E45F88(result, v12, 1, v3);
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

void *sub_221E45F14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8F8, &qword_221E5E9C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_221E45F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8F8, &qword_221E5E9C8);
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

void sub_221E4607C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8D0, &qword_221E5E9B0);
      v7 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
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
        v13 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
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

unint64_t sub_221E4621C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + 40);
  sub_221E57120();
  sub_221E40BCC(a1);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8);
  sub_221E56F10();
  (*(v4 + 8))(v7, v3);
  v9 = sub_221E57150();
  return sub_221E46370(a1, v9);
}

unint64_t sub_221E46370(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v30 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v37 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v35 = &v30 - v14;
  v39 = v2;
  v15 = -1 << *(v2 + 32);
  v16 = a2 & ~v15;
  v34 = v2 + 64;
  if ((*(v2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = ~v15;
    v31 = (v13 + 8);
    v32 = (v13 + 32);
    v33 = a1;
    do
    {
      v17 = *(*(v39 + 48) + v16);
      v18 = [objc_opt_self() kilometers];
      sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
      v19 = qword_221E5EFC8[v17];
      v20 = v37;
      sub_221E56E00();
      v21 = *v32;
      v22 = v35;
      (*v32)(v35, v20, v5);
      v23 = qword_221E5EFC8[v33];
      v24 = [objc_opt_self() kilometers];
      v25 = v38;
      sub_221E56E00();
      v26 = v36;
      v21(v36, v25, v5);
      sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8);
      v27 = sub_221E56F50();
      v28 = *v31;
      (*v31)(v26, v5);
      v28(v22, v5);
      if (v27)
      {
        break;
      }

      v16 = (v16 + 1) & v30;
    }

    while (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

uint64_t sub_221E46698(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_221E570E0();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_221E56FA0();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_221E467E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v111 = a4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v7 = *(v103 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v84[-v9];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v10 = *(v115 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v84[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v101 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v113 = &v84[-v19];
  MEMORY[0x28223BE20](v18);
  v100 = &v84[-v20];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  v21 = *(v99 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v99);
  v98 = &v84[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v112 = &v84[-v25];
  v116 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v26 = *(v116 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v116);
  v93 = &v84[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  result = MEMORY[0x28223BE20](v30);
  v104 = &v84[-v33];
  v90 = a3;
  v86 = a2;
  if (a3 != a2)
  {
    v34 = v32;
    v35 = *v111;
    v36 = objc_opt_self();
    v110 = (v10 + 8);
    v111 = v36;
    v37 = *(v26 + 72);
    v95 = (v7 + 8);
    v109 = (v14 + 8);
    v94 = (v21 + 8);
    v38 = v35 + v37 * (v90 - 1);
    v91 = -v37;
    v39 = a1 - v90;
    v92 = v35;
    v85 = v37;
    v40 = v35 + v37 * v90;
    v97 = v13;
    v96 = v34;
LABEL_5:
    v87 = v40;
    v88 = v39;
    v89 = v38;
    v41 = v116;
    v42 = v104;
    while (1)
    {
      v107 = v39;
      v108 = v40;
      sub_221E50BBC(v40, v42, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50BBC(v38, v34, type metadata accessor for DistanceSampleIntervalRecord);
      v43 = *(v41 + 28);
      v44 = [v111 meters];
      v46 = v114;
      v45 = v115;
      sub_221E56E40();

      sub_221E56E10();
      v48 = v47;
      v106 = *v110;
      v106(v46, v45);
      if (v48 > 0.0)
      {
        v49 = *(v41 + 32);
        v50 = [objc_opt_self() seconds];
        v52 = v102;
        v51 = v103;
        sub_221E56E40();

        sub_221E56E10();
        (*v95)(v52, v51);
      }

      v53 = v100;
      if (qword_27CFEA9B0 != -1)
      {
        swift_once();
      }

      v54 = qword_27CFEA9B8;
      v55 = type metadata accessor for UnitPace();
      v56 = v54;
      v105 = v55;
      sub_221E56E00();
      if (qword_27CFEA9B0 != -1)
      {
        swift_once();
      }

      v57 = v113;
      sub_221E56E40();
      sub_221E56E10();
      v58 = *v109;
      (*v109)(v57, v13);
      v59 = [objc_opt_self() metersPerSecond];
      sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
      sub_221E56E00();
      v58(v53, v13);
      v60 = *(v116 + 28);
      v61 = [v111 meters];
      v62 = v96;
      v64 = v114;
      v63 = v115;
      sub_221E56E40();

      sub_221E56E10();
      v66 = v65;
      v106(v64, v63);
      if (v66 > 0.0)
      {
        v67 = *(v116 + 32);
        v68 = [objc_opt_self() seconds];
        v69 = v102;
        v70 = v103;
        sub_221E56E40();

        sub_221E56E10();
        (*v95)(v69, v70);
      }

      v71 = v56;
      v72 = v101;
      sub_221E56E00();
      v73 = v113;
      v13 = v97;
      sub_221E56E40();
      sub_221E56E10();
      v58(v73, v13);
      v74 = [objc_opt_self() metersPerSecond];
      v75 = v98;
      sub_221E56E00();
      v58(v72, v13);
      sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0);
      v76 = v112;
      v77 = v99;
      v78 = sub_221E56F20();
      v79 = *v94;
      (*v94)(v75, v77);
      v79(v76, v77);
      sub_221E50C24(v62, type metadata accessor for DistanceSampleIntervalRecord);
      v42 = v104;
      result = sub_221E50C24(v104, type metadata accessor for DistanceSampleIntervalRecord);
      v41 = v116;
      v34 = v62;
      v81 = v107;
      v80 = v108;
      if ((v78 & 1) == 0)
      {
LABEL_4:
        v38 = v89 + v85;
        v39 = v88 - 1;
        v40 = v87 + v85;
        if (++v90 == v86)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v92)
      {
        break;
      }

      v82 = v93;
      sub_221E50CF4(v108, v93, type metadata accessor for DistanceSampleIntervalRecord);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_221E50CF4(v82, v38, type metadata accessor for DistanceSampleIntervalRecord);
      v38 += v91;
      v40 = v80 + v91;
      v83 = __CFADD__(v81, 1);
      v39 = v81 + 1;
      if (v83)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_221E4722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v39);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
    v19 = *(v8 + 72);
    v20 = v18 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = v18;
    v30 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v34 = v20;
    v35 = a3;
    v32 = v23;
    v33 = v22;
    v24 = v22;
    v25 = v39;
    while (1)
    {
      sub_221E50BBC(v23, v17, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50BBC(v20, v14, type metadata accessor for DistanceSampleIntervalRecord);
      v26 = *(v25 + 32);
      sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860);
      LOBYTE(v26) = sub_221E56F30();
      sub_221E50C24(v14, type metadata accessor for DistanceSampleIntervalRecord);
      result = sub_221E50C24(v17, type metadata accessor for DistanceSampleIntervalRecord);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v20 = v34 + v30;
        v22 = v33 - 1;
        v23 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_221E50CF4(v23, v37, type metadata accessor for DistanceSampleIntervalRecord);
      v25 = v39;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_221E50CF4(v27, v20, type metadata accessor for DistanceSampleIntervalRecord);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_221E474D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = sub_221E56ED0();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  v50 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v35 - v12;
  v45 = type metadata accessor for DistanceSample(0);
  v13 = *(*(v45 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v35 - v17;
  result = MEMORY[0x28223BE20](v16);
  v47 = &v35 - v20;
  v37 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v46 = (v8 + 8);
    v23 = v21 + v22 * (a3 - 1);
    v42 = -v22;
    v43 = v21;
    v24 = a1 - a3;
    v36 = v22;
    v25 = v21 + v22 * a3;
    v26 = v48;
LABEL_5:
    v40 = v23;
    v41 = a3;
    v38 = v25;
    v39 = v24;
    v52 = v24;
    while (1)
    {
      v27 = v47;
      sub_221E50BBC(v25, v47, type metadata accessor for DistanceSample);
      sub_221E50BBC(v23, v26, type metadata accessor for DistanceSample);
      v28 = v49;
      sub_221E56E90();
      v29 = v50;
      sub_221E56E90();
      v53 = sub_221E56EC0();
      v30 = *v46;
      v31 = v29;
      v32 = v51;
      (*v46)(v31, v51);
      v30(v28, v32);
      sub_221E50C24(v26, type metadata accessor for DistanceSample);
      result = sub_221E50C24(v27, type metadata accessor for DistanceSample);
      if ((v53 & 1) == 0)
      {
LABEL_4:
        a3 = v41 + 1;
        v23 = v40 + v36;
        v24 = v39 - 1;
        v25 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v33 = v44;
      sub_221E50CF4(v25, v44, type metadata accessor for DistanceSample);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_221E50CF4(v33, v23, type metadata accessor for DistanceSample);
      v23 += v42;
      v25 += v42;
      if (__CFADD__(v52++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_221E47838(int64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v223 = a4;
  v224 = a1;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v5 = *(v253 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v253);
  v252 = &v218 - v7;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v8 = *(v267 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v267);
  v266 = &v218 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v248 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v247 = &v218 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v232 = &v218 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v265 = &v218 - v21;
  MEMORY[0x28223BE20](v20);
  v231 = &v218 - v22;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  v23 = *(v255 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v255);
  v246 = &v218 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v262 = &v218 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v230 = &v218 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v240 = &v218 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v220 = &v218 - v34;
  MEMORY[0x28223BE20](v33);
  v219 = &v218 - v35;
  v36 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v236 = *(v36 - 8);
  v37 = *(v236 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v228 = &v218 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v245 = &v218 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v218 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v256 = &v218 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v48 = MEMORY[0x28223BE20](v47);
  v235 = &v218 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v222 = &v218 - v51;
  result = MEMORY[0x28223BE20](v50);
  v221 = &v218 - v54;
  v238 = a3;
  v55 = a3[1];
  if (v55 < 1)
  {
    v57 = MEMORY[0x277D84F90];
LABEL_111:
    v111 = *v224;
    if (!*v224)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_113:
      v269 = v57;
      v213 = *(v57 + 2);
      if (v213 >= 2)
      {
        while (*v238)
        {
          v214 = *&v57[16 * v213];
          v215 = *&v57[16 * v213 + 24];
          v216 = v242;
          sub_221E4A5F4(&(*v238)[*(v236 + 72) * v214], &(*v238)[*(v236 + 72) * *&v57[16 * v213 + 16]], &(*v238)[*(v236 + 72) * v215], v111);
          v242 = v216;
          if (v216)
          {
          }

          if (v215 < v214)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_221E4C5CC(v57);
          }

          if (v213 - 2 >= *(v57 + 2))
          {
            goto LABEL_137;
          }

          v217 = &v57[16 * v213];
          *v217 = v214;
          *(v217 + 1) = v215;
          v269 = v57;
          result = sub_221E4C540(v213 - 1);
          v57 = v269;
          v213 = *(v269 + 2);
          if (v213 <= 1)
          {
          }
        }

        goto LABEL_147;
      }
    }

LABEL_143:
    result = sub_221E4C5CC(v57);
    v57 = result;
    goto LABEL_113;
  }

  v239 = v53;
  v254 = (v23 + 8);
  v264 = (v8 + 8);
  v249 = (v5 + 8);
  v56 = 0;
  v263 = (v12 + 8);
  v57 = MEMORY[0x277D84F90];
  v250 = v11;
  v268 = v36;
  v251 = v44;
  while (1)
  {
    v58 = v56;
    v237 = v57;
    if (v56 + 1 >= v55)
    {
      v111 = v56 + 1;
      v110 = v223;
      v71 = v256;
    }

    else
    {
      v241 = v55;
      v59 = *v238;
      v60 = *(v236 + 72);
      v261 = &(*v238)[v60 * (v56 + 1)];
      v61 = v60;
      v244 = v60;
      v62 = v59;
      v260 = v59;
      v225 = v58;
      sub_221E50BBC(v261, v221, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50BBC(v62 + v61 * v58, v222, type metadata accessor for DistanceSampleIntervalRecord);
      v63 = v219;
      sub_221E42188();
      v64 = v220;
      sub_221E42188();
      v65 = sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0);
      v66 = v255;
      v234 = v65;
      LODWORD(v243) = sub_221E56F20();
      v67 = *v254;
      (*v254)(v64, v66);
      v68 = v63;
      v69 = v261;
      v233 = v67;
      (v67)(v68, v66);
      sub_221E50C24(v222, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50C24(v221, type metadata accessor for DistanceSampleIntervalRecord);
      v70 = v225 + 2;
      result = &v260[v244 * (v225 + 2)];
      v71 = v256;
      v72 = v235;
      while (v241 != v70)
      {
        v260 = result;
        sub_221E50BBC(result, v72, type metadata accessor for DistanceSampleIntervalRecord);
        v261 = v69;
        sub_221E50BBC(v69, v239, type metadata accessor for DistanceSampleIntervalRecord);
        v82 = *(v36 + 28);
        v259 = objc_opt_self();
        v83 = [v259 meters];
        v85 = v266;
        v84 = v267;
        sub_221E56E40();

        sub_221E56E10();
        v87 = v86;
        v258 = *v264;
        (v258)(v85, v84);
        if (v87 > 0.0)
        {
          v88 = *(v36 + 32);
          v89 = [objc_opt_self() seconds];
          v91 = v252;
          v90 = v253;
          sub_221E56E40();

          sub_221E56E10();
          (*v249)(v91, v90);
        }

        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v92 = qword_27CFEA9B8;
        v93 = type metadata accessor for UnitPace();
        v94 = v92;
        v95 = v231;
        v257 = v93;
        sub_221E56E00();
        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v96 = v265;
        sub_221E56E40();
        sub_221E56E10();
        v97 = *v263;
        (*v263)(v96, v11);
        v98 = [objc_opt_self() metersPerSecond];
        sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
        sub_221E56E00();
        v97(v95, v11);
        v99 = *(v268 + 28);
        v100 = [v259 meters];
        v101 = v239;
        v103 = v266;
        v102 = v267;
        sub_221E56E40();

        sub_221E56E10();
        v105 = v104;
        (v258)(v103, v102);
        if (v105 > 0.0)
        {
          v106 = *(v268 + 32);
          v107 = [objc_opt_self() seconds];
          v108 = v252;
          v109 = v253;
          sub_221E56E40();

          sub_221E56E10();
          (*v249)(v108, v109);
        }

        v73 = v94;
        v74 = v232;
        sub_221E56E00();
        v75 = v265;
        v11 = v250;
        sub_221E56E40();
        sub_221E56E10();
        v97(v75, v11);
        v76 = [objc_opt_self() metersPerSecond];
        v77 = v230;
        sub_221E56E00();
        v97(v74, v11);
        v78 = v240;
        v79 = v255;
        v80 = sub_221E56F20() & 1;
        v81 = v233;
        (v233)(v77, v79);
        v81(v78, v79);
        sub_221E50C24(v101, type metadata accessor for DistanceSampleIntervalRecord);
        v72 = v235;
        sub_221E50C24(v235, type metadata accessor for DistanceSampleIntervalRecord);
        ++v70;
        result = &v260[v244];
        v69 = &v261[v244];
        v57 = v237;
        v36 = v268;
        v71 = v256;
        if ((v243 & 1) != v80)
        {
          v111 = v70 - 1;
          goto LABEL_19;
        }
      }

      v111 = v241;
LABEL_19:
      v110 = v223;
      v44 = v251;
      v58 = v225;
      if (v243)
      {
        if (v111 < v225)
        {
          goto LABEL_140;
        }

        if (v225 < v111)
        {
          v112 = v111;
          v113 = v244 * (v111 - 1);
          v114 = v112 * v244;
          v241 = v112;
          v115 = v225;
          v116 = v225 * v244;
          do
          {
            if (v115 != --v112)
            {
              v117 = *v238;
              if (!*v238)
              {
                goto LABEL_146;
              }

              sub_221E50CF4(&v117[v116], v228, type metadata accessor for DistanceSampleIntervalRecord);
              if (v116 < v113 || &v117[v116] >= &v117[v114])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v116 != v113)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_221E50CF4(v228, &v117[v113], type metadata accessor for DistanceSampleIntervalRecord);
              v57 = v237;
            }

            ++v115;
            v113 -= v244;
            v114 -= v244;
            v116 += v244;
          }

          while (v115 < v112);
          v110 = v223;
          v44 = v251;
          v71 = v256;
          v111 = v241;
          v58 = v225;
        }
      }
    }

    v118 = v238[1];
    if (v111 >= v118)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v111, v58))
    {
      goto LABEL_139;
    }

    if (v111 - v58 >= v110)
    {
LABEL_41:
      v56 = v111;
      if (v111 < v58)
      {
        goto LABEL_138;
      }

      goto LABEL_42;
    }

    if (__OFADD__(v58, v110))
    {
      goto LABEL_141;
    }

    if (v58 + v110 < v118)
    {
      v118 = v58 + v110;
    }

    if (v118 < v58)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v227 = v118;
    if (v111 == v118)
    {
      goto LABEL_41;
    }

    v165 = *v238;
    v261 = objc_opt_self();
    v166 = *(v236 + 72);
    v167 = &v165[v166 * (v111 - 1)];
    v243 = -v166;
    v225 = v58;
    v168 = (v58 - v111);
    v244 = v165;
    v226 = v166;
    v169 = &v165[v111 * v166];
LABEL_94:
    v241 = v111;
    v229 = v169;
    v233 = v168;
    v170 = v168;
    v234 = v167;
    v171 = v167;
LABEL_95:
    v257 = v169;
    v258 = v170;
    sub_221E50BBC(v169, v71, type metadata accessor for DistanceSampleIntervalRecord);
    sub_221E50BBC(v171, v44, type metadata accessor for DistanceSampleIntervalRecord);
    v172 = *(v36 + 28);
    v173 = [v261 meters];
    v175 = v266;
    v174 = v267;
    sub_221E56E40();

    sub_221E56E10();
    v177 = v176;
    v260 = *v264;
    (v260)(v175, v174);
    if (v177 > 0.0)
    {
      v178 = *(v36 + 32);
      v179 = [objc_opt_self() seconds];
      v181 = v252;
      v180 = v253;
      sub_221E56E40();

      sub_221E56E10();
      (*v249)(v181, v180);
    }

    v182 = v247;
    if (qword_27CFEA9B0 != -1)
    {
      swift_once();
    }

    v183 = qword_27CFEA9B8;
    v184 = type metadata accessor for UnitPace();
    v185 = v183;
    v259 = v184;
    sub_221E56E00();
    if (qword_27CFEA9B0 != -1)
    {
      swift_once();
    }

    v186 = v265;
    sub_221E56E40();
    sub_221E56E10();
    v187 = *v263;
    (*v263)(v186, v11);
    v188 = [objc_opt_self() metersPerSecond];
    sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
    sub_221E56E00();
    v187(v182, v11);
    v189 = *(v268 + 28);
    v190 = [v261 meters];
    v191 = v251;
    v192 = v266;
    v193 = v267;
    sub_221E56E40();

    sub_221E56E10();
    v195 = v194;
    (v260)(v192, v193);
    if (v195 > 0.0)
    {
      v196 = *(v268 + 32);
      v197 = [objc_opt_self() seconds];
      v199 = v252;
      v198 = v253;
      sub_221E56E40();

      sub_221E56E10();
      (*v249)(v199, v198);
    }

    v200 = v185;
    v201 = v248;
    sub_221E56E00();
    v202 = v265;
    v11 = v250;
    sub_221E56E40();
    sub_221E56E10();
    v187(v202, v11);
    v203 = [objc_opt_self() metersPerSecond];
    v204 = v246;
    sub_221E56E00();
    v187(v201, v11);
    sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0);
    v205 = v262;
    v206 = v255;
    v207 = sub_221E56F20();
    v208 = *v254;
    (*v254)(v204, v206);
    v208(v205, v206);
    sub_221E50C24(v191, type metadata accessor for DistanceSampleIntervalRecord);
    v71 = v256;
    result = sub_221E50C24(v256, type metadata accessor for DistanceSampleIntervalRecord);
    v44 = v191;
    if (v207)
    {
      break;
    }

    v36 = v268;
LABEL_93:
    v111 = v241 + 1;
    v167 = v234 + v226;
    v168 = v233 - 1;
    v169 = v229 + v226;
    if (v241 + 1 != v227)
    {
      goto LABEL_94;
    }

    v57 = v237;
    v58 = v225;
    v56 = v227;
    if (v227 < v225)
    {
      goto LABEL_138;
    }

LABEL_42:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221E4568C(0, *(v57 + 2) + 1, 1, v57);
      v57 = result;
    }

    v111 = *(v57 + 2);
    v119 = *(v57 + 3);
    v120 = v111 + 1;
    if (v111 >= v119 >> 1)
    {
      result = sub_221E4568C((v119 > 1), v111 + 1, 1, v57);
      v57 = result;
    }

    *(v57 + 2) = v120;
    v121 = &v57[16 * v111];
    *(v121 + 4) = v58;
    *(v121 + 5) = v56;
    v122 = *v224;
    if (!*v224)
    {
      goto LABEL_148;
    }

    if (v111)
    {
      while (2)
      {
        v123 = v120 - 1;
        if (v120 >= 4)
        {
          v128 = &v57[16 * v120 + 32];
          v129 = *(v128 - 64);
          v130 = *(v128 - 56);
          v134 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          if (v134)
          {
            goto LABEL_125;
          }

          v133 = *(v128 - 48);
          v132 = *(v128 - 40);
          v134 = __OFSUB__(v132, v133);
          v126 = v132 - v133;
          v127 = v134;
          if (v134)
          {
            goto LABEL_126;
          }

          v135 = &v57[16 * v120];
          v137 = *v135;
          v136 = *(v135 + 1);
          v134 = __OFSUB__(v136, v137);
          v138 = v136 - v137;
          if (v134)
          {
            goto LABEL_128;
          }

          v134 = __OFADD__(v126, v138);
          v139 = v126 + v138;
          if (v134)
          {
            goto LABEL_131;
          }

          if (v139 >= v131)
          {
            v157 = &v57[16 * v123 + 32];
            v159 = *v157;
            v158 = *(v157 + 1);
            v134 = __OFSUB__(v158, v159);
            v160 = v158 - v159;
            if (v134)
            {
              goto LABEL_135;
            }

            if (v126 < v160)
            {
              v123 = v120 - 2;
            }
          }

          else
          {
LABEL_61:
            if (v127)
            {
              goto LABEL_127;
            }

            v140 = &v57[16 * v120];
            v142 = *v140;
            v141 = *(v140 + 1);
            v143 = __OFSUB__(v141, v142);
            v144 = v141 - v142;
            v145 = v143;
            if (v143)
            {
              goto LABEL_130;
            }

            v146 = &v57[16 * v123 + 32];
            v148 = *v146;
            v147 = *(v146 + 1);
            v134 = __OFSUB__(v147, v148);
            v149 = v147 - v148;
            if (v134)
            {
              goto LABEL_133;
            }

            if (__OFADD__(v144, v149))
            {
              goto LABEL_134;
            }

            if (v144 + v149 < v126)
            {
              goto LABEL_75;
            }

            if (v126 < v149)
            {
              v123 = v120 - 2;
            }
          }
        }

        else
        {
          if (v120 == 3)
          {
            v124 = *(v57 + 4);
            v125 = *(v57 + 5);
            v134 = __OFSUB__(v125, v124);
            v126 = v125 - v124;
            v127 = v134;
            goto LABEL_61;
          }

          v150 = &v57[16 * v120];
          v152 = *v150;
          v151 = *(v150 + 1);
          v134 = __OFSUB__(v151, v152);
          v144 = v151 - v152;
          v145 = v134;
LABEL_75:
          if (v145)
          {
            goto LABEL_129;
          }

          v153 = &v57[16 * v123];
          v155 = *(v153 + 4);
          v154 = *(v153 + 5);
          v134 = __OFSUB__(v154, v155);
          v156 = v154 - v155;
          if (v134)
          {
            goto LABEL_132;
          }

          if (v156 < v144)
          {
            break;
          }
        }

        v111 = v123 - 1;
        if (v123 - 1 >= v120)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v238)
        {
          goto LABEL_145;
        }

        v161 = *&v57[16 * v111 + 32];
        v162 = *&v57[16 * v123 + 40];
        v163 = v242;
        sub_221E4A5F4(&(*v238)[*(v236 + 72) * v161], &(*v238)[*(v236 + 72) * *&v57[16 * v123 + 32]], &(*v238)[*(v236 + 72) * v162], v122);
        v242 = v163;
        if (v163)
        {
        }

        if (v162 < v161)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_221E4C5CC(v57);
        }

        if (v111 >= *(v57 + 2))
        {
          goto LABEL_124;
        }

        v164 = &v57[16 * v111];
        *(v164 + 4) = v161;
        *(v164 + 5) = v162;
        v269 = v57;
        result = sub_221E4C540(v123);
        v57 = v269;
        v120 = *(v269 + 2);
        v44 = v251;
        if (v120 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v55 = v238[1];
    if (v56 >= v55)
    {
      goto LABEL_111;
    }
  }

  v36 = v268;
  v209 = v258;
  if (v244)
  {
    v210 = v257;
    v211 = v245;
    sub_221E50CF4(v257, v245, type metadata accessor for DistanceSampleIntervalRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_221E50CF4(v211, v171, type metadata accessor for DistanceSampleIntervalRecord);
    v171 += v243;
    v169 = v210 + v243;
    v212 = __CFADD__(v209, 1);
    v170 = v209 + 1;
    if (v212)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_221E490EC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v114 = a1;
  v8 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v123 = *(v8 - 8);
  v9 = *(v123 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v119 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v126 = &v110 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v110 - v15;
  result = MEMORY[0x28223BE20](v14);
  v127 = &v110 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_97:
    v21 = *v114;
    if (!*v114)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_99:
      v130 = v20;
      v106 = *(v20 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v20[16 * v106];
          v108 = *&v20[16 * v106 + 24];
          sub_221E4B8D8(*a3 + *(v123 + 72) * v107, *a3 + *(v123 + 72) * *&v20[16 * v106 + 16], *a3 + *(v123 + 72) * v108, v21);
          if (v5)
          {
          }

          if (v108 < v107)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_221E4C5CC(v20);
          }

          if (v106 - 2 >= *(v20 + 2))
          {
            goto LABEL_123;
          }

          v109 = &v20[16 * v106];
          *v109 = v107;
          *(v109 + 1) = v108;
          v130 = v20;
          result = sub_221E4C540(v106 - 1);
          v20 = v130;
          v106 = *(v130 + 2);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_221E4C5CC(v20);
    v20 = result;
    goto LABEL_99;
  }

  v112 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v129 = v8;
  v116 = a3;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v39 = v19 + 1;
    }

    else
    {
      v124 = v18;
      v113 = v5;
      v22 = *a3;
      v23 = v8;
      v24 = *(v123 + 72);
      v25 = v19;
      v115 = v19;
      v26 = v22 + v24 * (v19 + 1);
      v27 = v22;
      v120 = v22;
      v28 = v127;
      sub_221E50BBC(v26, v127, type metadata accessor for DistanceSampleIntervalRecord);
      v29 = v128;
      sub_221E50BBC(v27 + v24 * v25, v128, type metadata accessor for DistanceSampleIntervalRecord);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
      v30 = *(v23 + 32);
      v121 = sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860);
      LODWORD(v122) = sub_221E56F30();
      sub_221E50C24(v29, type metadata accessor for DistanceSampleIntervalRecord);
      result = sub_221E50C24(v28, type metadata accessor for DistanceSampleIntervalRecord);
      v31 = v115 + 2;
      v125 = v24;
      v32 = v120 + v24 * (v115 + 2);
      while (v124 != v31)
      {
        v33 = v127;
        sub_221E50BBC(v32, v127, type metadata accessor for DistanceSampleIntervalRecord);
        v34 = v128;
        sub_221E50BBC(v26, v128, type metadata accessor for DistanceSampleIntervalRecord);
        v35 = *(v129 + 32);
        v36 = v20;
        v37 = sub_221E56F30() & 1;
        sub_221E50C24(v34, type metadata accessor for DistanceSampleIntervalRecord);
        result = sub_221E50C24(v33, type metadata accessor for DistanceSampleIntervalRecord);
        ++v31;
        v32 += v125;
        v26 += v125;
        v38 = (v122 & 1) == v37;
        v20 = v36;
        if (!v38)
        {
          v39 = v31 - 1;
          goto LABEL_11;
        }
      }

      v39 = v124;
LABEL_11:
      v5 = v113;
      v21 = v115;
      a3 = v116;
      if ((v122 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v39 < v115)
      {
        goto LABEL_126;
      }

      if (v115 < v39)
      {
        v111 = v20;
        v40 = v125 * (v39 - 1);
        v41 = v39 * v125;
        v42 = v39;
        v43 = v115;
        v44 = v115 * v125;
        do
        {
          if (v43 != --v39)
          {
            v45 = *a3;
            if (!v45)
            {
              goto LABEL_132;
            }

            sub_221E50CF4(v45 + v44, v119, type metadata accessor for DistanceSampleIntervalRecord);
            if (v44 < v40 || v45 + v44 >= (v45 + v41))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_221E50CF4(v119, v45 + v40, type metadata accessor for DistanceSampleIntervalRecord);
            a3 = v116;
          }

          ++v43;
          v40 -= v125;
          v41 -= v125;
          v44 += v125;
        }

        while (v43 < v39);
        v5 = v113;
        v20 = v111;
        v8 = v129;
        v21 = v115;
        v39 = v42;
      }

      else
      {
LABEL_24:
        v8 = v129;
      }
    }

    v46 = a3[1];
    if (v39 >= v46)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v39, v21))
    {
      goto LABEL_125;
    }

    if (v39 - v21 >= v112)
    {
LABEL_35:
      v19 = v39;
      if (v39 < v21)
      {
        goto LABEL_124;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v21, v112))
    {
      goto LABEL_127;
    }

    if (v21 + v112 >= v46)
    {
      v47 = a3[1];
    }

    else
    {
      v47 = v21 + v112;
    }

    if (v47 < v21)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v39 == v47)
    {
      goto LABEL_35;
    }

    v111 = v20;
    v113 = v5;
    v94 = *a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
    v95 = *(v123 + 72);
    v96 = v94 + v95 * (v39 - 1);
    v97 = -v95;
    v115 = v21;
    v98 = v21 - v39;
    v125 = v94;
    v117 = v95;
    v118 = v47;
    v99 = v94 + v39 * v95;
LABEL_88:
    v124 = v39;
    v120 = v99;
    v121 = v98;
    v122 = v96;
    v100 = v96;
LABEL_89:
    v101 = v127;
    sub_221E50BBC(v99, v127, type metadata accessor for DistanceSampleIntervalRecord);
    v102 = v128;
    sub_221E50BBC(v100, v128, type metadata accessor for DistanceSampleIntervalRecord);
    v103 = *(v8 + 32);
    sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860);
    LOBYTE(v103) = sub_221E56F30();
    sub_221E50C24(v102, type metadata accessor for DistanceSampleIntervalRecord);
    result = sub_221E50C24(v101, type metadata accessor for DistanceSampleIntervalRecord);
    if (v103)
    {
      break;
    }

    v8 = v129;
LABEL_87:
    v39 = v124 + 1;
    v19 = v118;
    v96 = v122 + v117;
    v98 = v121 - 1;
    v99 = v120 + v117;
    if (v124 + 1 != v118)
    {
      goto LABEL_88;
    }

    v5 = v113;
    v21 = v115;
    a3 = v116;
    v20 = v111;
    if (v118 < v115)
    {
      goto LABEL_124;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221E4568C(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v49 = *(v20 + 2);
    v48 = *(v20 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_221E4568C((v48 > 1), v49 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v50;
    v51 = &v20[16 * v49];
    *(v51 + 4) = v21;
    *(v51 + 5) = v19;
    v52 = *v114;
    if (!*v114)
    {
      goto LABEL_134;
    }

    if (v49)
    {
      while (2)
      {
        v21 = v50 - 1;
        if (v50 >= 4)
        {
          v57 = &v20[16 * v50 + 32];
          v58 = *(v57 - 64);
          v59 = *(v57 - 56);
          v63 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          if (v63)
          {
            goto LABEL_111;
          }

          v62 = *(v57 - 48);
          v61 = *(v57 - 40);
          v63 = __OFSUB__(v61, v62);
          v55 = v61 - v62;
          v56 = v63;
          if (v63)
          {
            goto LABEL_112;
          }

          v64 = &v20[16 * v50];
          v66 = *v64;
          v65 = *(v64 + 1);
          v63 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v63)
          {
            goto LABEL_114;
          }

          v63 = __OFADD__(v55, v67);
          v68 = v55 + v67;
          if (v63)
          {
            goto LABEL_117;
          }

          if (v68 >= v60)
          {
            v86 = &v20[16 * v21 + 32];
            v88 = *v86;
            v87 = *(v86 + 1);
            v63 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v63)
            {
              goto LABEL_121;
            }

            if (v55 < v89)
            {
              v21 = v50 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v56)
            {
              goto LABEL_113;
            }

            v69 = &v20[16 * v50];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_116;
            }

            v75 = &v20[16 * v21 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_120;
            }

            if (v73 + v78 < v55)
            {
              goto LABEL_69;
            }

            if (v55 < v78)
            {
              v21 = v50 - 2;
            }
          }
        }

        else
        {
          if (v50 == 3)
          {
            v53 = *(v20 + 4);
            v54 = *(v20 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
            goto LABEL_55;
          }

          v79 = &v20[16 * v50];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_69:
          if (v74)
          {
            goto LABEL_115;
          }

          v82 = &v20[16 * v21];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v85 < v73)
          {
            break;
          }
        }

        v90 = v21 - 1;
        if (v21 - 1 >= v50)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v91 = *&v20[16 * v90 + 32];
        v92 = *&v20[16 * v21 + 40];
        sub_221E4B8D8(*a3 + *(v123 + 72) * v91, *a3 + *(v123 + 72) * *&v20[16 * v21 + 32], *a3 + *(v123 + 72) * v92, v52);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_221E4C5CC(v20);
        }

        if (v90 >= *(v20 + 2))
        {
          goto LABEL_110;
        }

        v93 = &v20[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v130 = v20;
        result = sub_221E4C540(v21);
        v20 = v130;
        v50 = *(v130 + 2);
        v8 = v129;
        if (v50 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    if (v19 >= v18)
    {
      goto LABEL_97;
    }
  }

  if (v125)
  {
    v104 = v126;
    sub_221E50CF4(v99, v126, type metadata accessor for DistanceSampleIntervalRecord);
    v8 = v129;
    swift_arrayInitWithTakeFrontToBack();
    sub_221E50CF4(v104, v100, type metadata accessor for DistanceSampleIntervalRecord);
    v100 += v97;
    v99 += v97;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_221E49ACC(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v131 = a1;
  v148 = sub_221E56ED0();
  v8 = *(v148 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v148);
  v147 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = &v125 - v12;
  v143 = type metadata accessor for DistanceSample(0);
  v13 = *(v143 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v143);
  v17 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v142 = &v125 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v125 - v21;
  result = MEMORY[0x28223BE20](v20);
  v149 = &v125 - v23;
  v24 = *(a3 + 1);
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
    v27 = a3;
LABEL_95:
    v17 = *v131;
    if (!*v131)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_221E4C5CC(v26);
      v26 = result;
    }

    v152 = v26;
    v119 = *(v26 + 2);
    if (v119 >= 2)
    {
      while (1)
      {
        v120 = *v27;
        if (!*v27)
        {
          goto LABEL_131;
        }

        v121 = v26;
        v26 = v27;
        v27 = (v119 - 1);
        v122 = *&v121[16 * v119];
        v123 = *&v121[16 * v119 + 24];
        sub_221E4BEA0(v120 + *(v13 + 72) * v122, (v120 + *(v13 + 72) * *&v121[16 * v119 + 16]), v120 + *(v13 + 72) * v123, v17);
        if (v5)
        {
        }

        if (v123 < v122)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_221E4C5CC(v121);
        }

        if (v119 - 2 >= *(v121 + 2))
        {
          goto LABEL_121;
        }

        v124 = &v121[16 * v119];
        *v124 = v122;
        *(v124 + 1) = v123;
        v152 = v121;
        result = sub_221E4C540(v27);
        v119 = *(v152 + 2);
        v27 = v26;
        v26 = v152;
        if (v119 <= 1)
        {
        }
      }
    }
  }

  v126 = a4;
  v25 = 0;
  v144 = (v8 + 8);
  v26 = MEMORY[0x277D84F90];
  v27 = a3;
  v128 = a3;
  v129 = v13;
  v127 = v17;
  while (1)
  {
    v138 = v26;
    if (v25 + 1 >= v24)
    {
      v40 = v25 + 1;
    }

    else
    {
      v139 = v24;
      v130 = v5;
      v28 = *v27;
      v29 = *v27 + *(v13 + 72) * (v25 + 1);
      v150 = *(v13 + 72);
      v30 = v150;
      v151 = v28;
      v31 = v28;
      v132 = v25;
      v32 = v29;
      sub_221E50BBC(v29, v149, type metadata accessor for DistanceSample);
      v33 = v145;
      sub_221E50BBC(v31 + v30 * v25, v145, type metadata accessor for DistanceSample);
      v34 = v146;
      sub_221E56E90();
      v35 = v147;
      sub_221E56E90();
      LODWORD(v141) = sub_221E56EC0();
      v36 = *v144;
      v37 = v148;
      (*v144)(v35, v148);
      v140 = v36;
      v36(v34, v37);
      sub_221E50C24(v33, type metadata accessor for DistanceSample);
      result = sub_221E50C24(v149, type metadata accessor for DistanceSample);
      v38 = v132 + 2;
      v39 = v151 + v150 * (v132 + 2);
      while (1)
      {
        v40 = v139;
        if (v139 == v38)
        {
          break;
        }

        sub_221E50BBC(v39, v149, type metadata accessor for DistanceSample);
        v41 = v145;
        sub_221E50BBC(v32, v145, type metadata accessor for DistanceSample);
        v42 = v146;
        sub_221E56E90();
        v43 = v147;
        sub_221E56E90();
        LOBYTE(v151) = sub_221E56EC0() & 1;
        LODWORD(v151) = v151;
        v44 = v148;
        v45 = v140;
        (v140)(v43, v148);
        v46 = v44;
        v26 = v138;
        v45(v42, v46);
        sub_221E50C24(v41, type metadata accessor for DistanceSample);
        result = sub_221E50C24(v149, type metadata accessor for DistanceSample);
        ++v38;
        v39 += v150;
        v32 += v150;
        if ((v141 & 1) != v151)
        {
          v40 = v38 - 1;
          break;
        }
      }

      v5 = v130;
      v13 = v129;
      v17 = v127;
      v27 = v128;
      v25 = v132;
      if (v141)
      {
        if (v40 < v132)
        {
          goto LABEL_124;
        }

        if (v132 < v40)
        {
          v47 = v40;
          v48 = v150 * (v40 - 1);
          v49 = v40 * v150;
          v139 = v40;
          v50 = v132;
          v51 = v132 * v150;
          do
          {
            if (v50 != --v47)
            {
              v52 = *v27;
              if (!*v27)
              {
                goto LABEL_130;
              }

              sub_221E50CF4(v52 + v51, v17, type metadata accessor for DistanceSample);
              if (v51 < v48 || v52 + v51 >= (v52 + v49))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v51 != v48)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_221E50CF4(v17, v52 + v48, type metadata accessor for DistanceSample);
              v26 = v138;
            }

            ++v50;
            v48 -= v150;
            v49 -= v150;
            v51 += v150;
          }

          while (v50 < v47);
          v5 = v130;
          v13 = v129;
          v25 = v132;
          v40 = v139;
        }
      }
    }

    v53 = *(v27 + 1);
    if (v40 < v53)
    {
      if (__OFSUB__(v40, v25))
      {
        goto LABEL_123;
      }

      if (v40 - v25 < v126)
      {
        if (__OFADD__(v25, v126))
        {
          goto LABEL_125;
        }

        if (v25 + v126 >= v53)
        {
          v54 = *(v27 + 1);
        }

        else
        {
          v54 = v25 + v126;
        }

        if (v54 < v25)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v40 != v54)
        {
          break;
        }
      }
    }

    v55 = v40;
    if (v40 < v25)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221E4568C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v57 = *(v26 + 2);
    v56 = *(v26 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_221E4568C((v56 > 1), v57 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v58;
    v59 = &v26[16 * v57];
    *(v59 + 4) = v25;
    *(v59 + 5) = v55;
    v60 = *v131;
    if (!*v131)
    {
      goto LABEL_132;
    }

    v134 = v55;
    if (v57)
    {
      v17 = v60;
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v26 + 4);
          v63 = *(v26 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_53:
          if (v65)
          {
            goto LABEL_111;
          }

          v78 = &v26[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_114;
          }

          v84 = &v26[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_118;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v88 = &v26[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_67:
        if (v83)
        {
          goto LABEL_113;
        }

        v91 = &v26[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_116;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_74:
        v99 = v61 - 1;
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v27)
        {
          goto LABEL_129;
        }

        v100 = *&v26[16 * v99 + 32];
        v101 = *&v26[16 * v61 + 40];
        sub_221E4BEA0(*v27 + *(v13 + 72) * v100, (*v27 + *(v13 + 72) * *&v26[16 * v61 + 32]), *v27 + *(v13 + 72) * v101, v17);
        if (v5)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_221E4C5CC(v26);
        }

        if (v99 >= *(v26 + 2))
        {
          goto LABEL_108;
        }

        v102 = &v26[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v152 = v26;
        result = sub_221E4C540(v61);
        v26 = v152;
        v58 = *(v152 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v26[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_109;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_110;
      }

      v73 = &v26[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_112;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_115;
      }

      if (v77 >= v69)
      {
        v95 = &v26[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_119;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v24 = *(v27 + 1);
    v25 = v134;
    if (v134 >= v24)
    {
      goto LABEL_95;
    }
  }

  v130 = v5;
  v103 = *v27;
  v104 = *(v13 + 72);
  v105 = *v27 + v104 * (v40 - 1);
  v140 = -v104;
  v141 = v103;
  v132 = v25;
  v133 = v104;
  v106 = v25 - v40;
  v107 = v103 + v40 * v104;
  v134 = v54;
LABEL_86:
  v139 = v40;
  v135 = v107;
  v136 = v106;
  v108 = v107;
  v109 = v106;
  v137 = v105;
  v110 = v105;
  while (1)
  {
    v150 = v109;
    v111 = v149;
    sub_221E50BBC(v108, v149, type metadata accessor for DistanceSample);
    v112 = v145;
    sub_221E50BBC(v110, v145, type metadata accessor for DistanceSample);
    v113 = v146;
    sub_221E56E90();
    v114 = v147;
    sub_221E56E90();
    LODWORD(v151) = sub_221E56EC0();
    v115 = *v144;
    v116 = v114;
    v17 = v148;
    (*v144)(v116, v148);
    v115(v113, v17);
    sub_221E50C24(v112, type metadata accessor for DistanceSample);
    result = sub_221E50C24(v111, type metadata accessor for DistanceSample);
    if ((v151 & 1) == 0)
    {
LABEL_85:
      v40 = v139 + 1;
      v55 = v134;
      v105 = v137 + v133;
      v106 = v136 - 1;
      v107 = v135 + v133;
      if (v139 + 1 != v134)
      {
        goto LABEL_86;
      }

      v5 = v130;
      v27 = v128;
      v13 = v129;
      v26 = v138;
      v25 = v132;
      if (v134 < v132)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    v117 = v150;
    if (!v141)
    {
      break;
    }

    v17 = v142;
    sub_221E50CF4(v108, v142, type metadata accessor for DistanceSample);
    swift_arrayInitWithTakeFrontToBack();
    sub_221E50CF4(v17, v110, type metadata accessor for DistanceSample);
    v110 += v140;
    v108 += v140;
    v118 = __CFADD__(v117, 1);
    v109 = v117 + 1;
    if (v118)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_221E4A5F4(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v8 = *(v160 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v160);
  v159 = &v144 - v10;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v11 = *(v174 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v144 - v13;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v14 = *(v172 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v172);
  v150 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v144 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v144 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v171 = &v144 - v23;
  MEMORY[0x28223BE20](v22);
  v155 = &v144 - v24;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  v170 = *(v158 - 8);
  v25 = *(v170 + 64);
  v26 = MEMORY[0x28223BE20](v158);
  v148 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v166 = &v144 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v154 = &v144 - v31;
  MEMORY[0x28223BE20](v30);
  v167 = &v144 - v32;
  v33 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v153 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v151 = (&v144 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  result = MEMORY[0x28223BE20](v39);
  v44 = *(v43 + 72);
  if (!v44)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_77;
  }

  v45 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_78;
  }

  v46 = (a2 - a1) / v44;
  v178 = a1;
  v177 = a4;
  v175 = v33;
  v157 = v44;
  if (v46 >= v45 / v44)
  {
    v163 = v14;
    v167 = v11;
    v48 = v45 / v44 * v44;
    if (a4 < a2 || a2 + v48 <= a4)
    {
      v49 = v8;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v49 = v8;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v93 = a2;
    v94 = a4 + v48;
    if (v48 >= 1)
    {
      v95 = -v157;
      v164 = (v167 + 8);
      v147 = (v49 + 8);
      ++v163;
      v146 = (v170 + 8);
      v96 = (a4 + v48);
      v97 = v153;
      v98 = v151;
      v168 = a4;
      v169 = a1;
      v165 = -v157;
      do
      {
        v145 = v94;
        v99 = v93 + v95;
        v170 = v93 + v95;
        v154 = v93;
        while (1)
        {
          v167 = a3;
          if (v93 <= a1)
          {
            v178 = v93;
            v176 = v145;
            goto LABEL_75;
          }

          v152 = v94;
          v162 = v96;
          v155 = &v96[v95];
          sub_221E50BBC(&v96[v95], v98, type metadata accessor for DistanceSampleIntervalRecord);
          sub_221E50BBC(v99, v97, type metadata accessor for DistanceSampleIntervalRecord);
          v101 = *(v33 + 28);
          v161 = objc_opt_self();
          v102 = [v161 meters];
          v103 = v173;
          v104 = v174;
          sub_221E56E40();

          sub_221E56E10();
          v106 = v105;
          v107 = *v164;
          (*v164)(v103, v104);
          v157 = v107;
          if (v106 > 0.0)
          {
            v108 = *(v33 + 32);
            v109 = [objc_opt_self() seconds];
            v110 = v159;
            v111 = v160;
            sub_221E56E40();

            sub_221E56E10();
            (*v147)(v110, v111);
          }

          if (qword_27CFEA9B0 != -1)
          {
            swift_once();
          }

          v112 = qword_27CFEA9B8;
          type metadata accessor for UnitPace();
          v113 = v112;
          v114 = v149;
          sub_221E56E00();
          if (qword_27CFEA9B0 != -1)
          {
            swift_once();
          }

          v116 = v171;
          v115 = v172;
          sub_221E56E40();
          sub_221E56E10();
          v117 = *v163;
          (*v163)(v116, v115);
          v118 = [objc_opt_self() metersPerSecond];
          v156 = sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
          sub_221E56E00();
          v117(v114, v115);
          v119 = *(v175 + 28);
          v120 = [v161 meters];
          v121 = v153;
          v122 = v173;
          v123 = v174;
          sub_221E56E40();

          sub_221E56E10();
          v125 = v124;
          (v157)(v122, v123);
          if (v125 > 0.0)
          {
            v126 = *(v175 + 32);
            v127 = [objc_opt_self() seconds];
            v128 = v159;
            v129 = v160;
            sub_221E56E40();

            sub_221E56E10();
            (*v147)(v128, v129);
          }

          v130 = v113;
          v131 = v150;
          sub_221E56E00();
          v133 = v171;
          v132 = v172;
          sub_221E56E40();
          sub_221E56E10();
          v117(v133, v132);
          v134 = [objc_opt_self() metersPerSecond];
          v135 = v148;
          sub_221E56E00();
          v136 = v167;
          a3 = &v167[v165];
          v117(v131, v132);
          sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0);
          v137 = v166;
          v138 = v158;
          v139 = sub_221E56F20();
          v140 = *v146;
          (*v146)(v135, v138);
          v140(v137, v138);
          sub_221E50C24(v121, type metadata accessor for DistanceSampleIntervalRecord);
          v98 = v151;
          sub_221E50C24(v151, type metadata accessor for DistanceSampleIntervalRecord);
          v97 = v121;
          if (v139)
          {
            break;
          }

          v141 = v155;
          v94 = v155;
          v50 = v136 >= v162;
          a1 = v169;
          v99 = v170;
          v142 = v168;
          v33 = v175;
          if (v50 && a3 < v162)
          {
            if (v167 != v162)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          v96 = v94;
          v100 = v141 > v142;
          v95 = v165;
          v93 = v154;
          if (!v100)
          {
            goto LABEL_73;
          }
        }

        v50 = v136 >= v154;
        a1 = v169;
        v143 = v168;
        v33 = v175;
        if (v50 && a3 < v154)
        {
          v93 = v170;
          v94 = v152;
          if (v167 != v154)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v93 = v170;
          swift_arrayInitWithTakeFrontToBack();
          v94 = v152;
        }

        v96 = v162;
        v95 = v165;
      }

      while (v162 > v143);
    }

LABEL_73:
    v178 = v93;
    v176 = v94;
  }

  else
  {
    v47 = v46 * v44;
    v165 = &v144 - v41;
    v166 = v42;
    if (a4 < a1 || a1 + v47 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v153 = (a4 + v47);
    v176 = a4 + v47;
    v50 = v47 < 1 || a2 >= a3;
    if (!v50)
    {
      v164 = (v11 + 8);
      v151 = (v8 + 8);
      v163 = (v14 + 8);
      v150 = (v170 + 8);
      v152 = a3;
      do
      {
        v169 = a1;
        sub_221E50BBC(a2, v165, type metadata accessor for DistanceSampleIntervalRecord);
        sub_221E50BBC(a4, v166, type metadata accessor for DistanceSampleIntervalRecord);
        v51 = *(v33 + 28);
        v52 = objc_opt_self();
        v53 = [v52 meters];
        v55 = v173;
        v54 = v174;
        sub_221E56E40();

        sub_221E56E10();
        v57 = v56;
        v162 = *v164;
        (v162)(v55, v54);
        v170 = a2;
        if (v57 > 0.0)
        {
          v58 = *(v33 + 32);
          v59 = [objc_opt_self() seconds];
          v60 = v159;
          v61 = v160;
          sub_221E56E40();

          sub_221E56E10();
          (*v151)(v60, v61);
        }

        v62 = v155;
        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v168 = a4;
        v63 = qword_27CFEA9B8;
        type metadata accessor for UnitPace();
        v64 = v63;
        sub_221E56E00();
        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v66 = v171;
        v65 = v172;
        sub_221E56E40();
        sub_221E56E10();
        v67 = *v163;
        (*v163)(v66, v65);
        v68 = [objc_opt_self() metersPerSecond];
        v161 = sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
        sub_221E56E00();
        v67(v62, v65);
        v69 = *(v175 + 28);
        v70 = [v52 meters];
        v71 = v166;
        v72 = v173;
        v73 = v174;
        sub_221E56E40();

        sub_221E56E10();
        v75 = v74;
        (v162)(v72, v73);
        if (v75 > 0.0)
        {
          v76 = *(v175 + 32);
          v77 = [objc_opt_self() seconds];
          v78 = v159;
          v79 = v160;
          sub_221E56E40();

          sub_221E56E10();
          (*v151)(v78, v79);
        }

        v80 = v64;
        v81 = v156;
        sub_221E56E00();
        v83 = v171;
        v82 = v172;
        sub_221E56E40();
        sub_221E56E10();
        v67(v83, v82);
        v84 = [objc_opt_self() metersPerSecond];
        v85 = v154;
        sub_221E56E00();
        v67(v81, v82);
        sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0);
        v86 = v167;
        v87 = v158;
        v88 = sub_221E56F20();
        v89 = *v150;
        (*v150)(v85, v87);
        v89(v86, v87);
        sub_221E50C24(v71, type metadata accessor for DistanceSampleIntervalRecord);
        sub_221E50C24(v165, type metadata accessor for DistanceSampleIntervalRecord);
        v90 = v169;
        if (v88)
        {
          v91 = v157;
          a2 = v170 + v157;
          a4 = v168;
          v33 = v175;
          v92 = v152;
          if (v169 < v170 || v169 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v169 != v170)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v91 = v157;
          a4 = v168 + v157;
          a2 = v170;
          v33 = v175;
          v92 = v152;
          if (v169 < v168 || v169 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v169 != v168)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v177 = a4;
        }

        a1 = v90 + v91;
        v178 = a1;
      }

      while (a4 < v153 && a2 < v92);
    }
  }

LABEL_75:
  sub_221E4C5E0(&v178, &v177, &v176, type metadata accessor for DistanceSampleIntervalRecord);
  return 1;
}

uint64_t sub_221E4B8D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v50 = &v43 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v56 = a1;
  v55 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v18;
    if (v18 >= 1)
    {
      v46 = a4;
      v31 = -v14;
      v32 = a4 + v18;
      v52 = a1;
      v47 = -v14;
      do
      {
        v44 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v48 = a2;
        v49 = a2 + v31;
        while (1)
        {
          if (v33 <= a1)
          {
            v56 = v33;
            v54 = v44;
            goto LABEL_59;
          }

          v36 = a3;
          v45 = v30;
          a3 += v31;
          v37 = v32 + v31;
          v38 = v50;
          sub_221E50BBC(v37, v50, type metadata accessor for DistanceSampleIntervalRecord);
          v39 = v51;
          sub_221E50BBC(v34, v51, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          v40 = *(v53 + 32);
          sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860);
          v41 = sub_221E56F30();
          sub_221E50C24(v39, type metadata accessor for DistanceSampleIntervalRecord);
          sub_221E50C24(v38, type metadata accessor for DistanceSampleIntervalRecord);
          if (v41)
          {
            break;
          }

          v30 = v37;
          if (v36 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v49;
          }

          else
          {
            v34 = v49;
            if (v36 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v37;
          v35 = v37 > v46;
          a1 = v52;
          v31 = v47;
          v33 = v48;
          if (!v35)
          {
            a2 = v48;
            goto LABEL_58;
          }
        }

        if (v36 < v48 || a3 >= v48)
        {
          a2 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v45;
          v31 = v47;
        }

        else
        {
          v42 = v36 == v48;
          a2 = v49;
          v30 = v45;
          v31 = v47;
          if (!v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v52;
      }

      while (v32 > v46);
    }

LABEL_58:
    v56 = a2;
    v54 = v30;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v17;
    v54 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = v14;
      v48 = a3;
      v20 = v51;
      do
      {
        v52 = a1;
        v21 = v50;
        sub_221E50BBC(a2, v50, type metadata accessor for DistanceSampleIntervalRecord);
        v22 = a2;
        sub_221E50BBC(a4, v20, type metadata accessor for DistanceSampleIntervalRecord);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
        v23 = a4;
        v24 = *(v53 + 32);
        sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860);
        v25 = sub_221E56F30();
        sub_221E50C24(v20, type metadata accessor for DistanceSampleIntervalRecord);
        sub_221E50C24(v21, type metadata accessor for DistanceSampleIntervalRecord);
        if (v25)
        {
          v26 = v47;
          v27 = v52;
          a4 = v23;
          if (v52 < v22 || v52 >= v22 + v47)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22 + v26;
            v28 = v48;
          }

          else
          {
            v28 = v48;
            if (v52 != v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v22 + v26;
          }
        }

        else
        {
          v26 = v47;
          a4 = v23 + v47;
          v27 = v52;
          v29 = v23;
          if (v52 < v23 || v52 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v48;
            a2 = v22;
          }

          else
          {
            v28 = v48;
            a2 = v22;
            if (v52 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v55 = a4;
        }

        a1 = v27 + v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v28);
    }
  }

LABEL_59:
  sub_221E4C5E0(&v56, &v55, &v54, type metadata accessor for DistanceSampleIntervalRecord);
  return 1;
}

uint64_t sub_221E4BEA0(unint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v66 = a4;
  v62 = sub_221E56ED0();
  v7 = *(v62 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v62);
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v50 - v11;
  v58 = type metadata accessor for DistanceSample(0);
  v12 = *(*(v58 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v58);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v64 = &v50 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if ((a2 - a1) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v20 = (a2 - a1) / v18;
  v69 = a1;
  v68 = v66;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (v66 < a2 || a2 + v22 <= v66)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v66 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a2;
    v36 = v66 + v22;
    if (v22 >= 1)
    {
      v37 = -v18;
      v53 = (v7 + 8);
      v54 = v37;
      v38 = v66 + v22;
      v65 = a1;
      v39 = v60;
      do
      {
        v51 = v36;
        v40 = v55;
        v55 = (v55 + v37);
        v56 = v40;
        while (1)
        {
          if (v40 <= a1)
          {
            v69 = v40;
            v67 = v51;
            goto LABEL_58;
          }

          v41 = a3;
          v52 = v36;
          v63 = a3 + v37;
          v42 = v38 + v37;
          sub_221E50BBC(v38 + v37, v64, type metadata accessor for DistanceSample);
          v43 = v59;
          sub_221E50BBC(v55, v59, type metadata accessor for DistanceSample);
          v44 = v38;
          sub_221E56E90();
          v45 = v61;
          sub_221E56E90();
          LODWORD(v57) = sub_221E56EC0();
          v46 = *v53;
          v47 = v45;
          v48 = v62;
          (*v53)(v47, v62);
          v46(v39, v48);
          sub_221E50C24(v43, type metadata accessor for DistanceSample);
          sub_221E50C24(v64, type metadata accessor for DistanceSample);
          if (v57)
          {
            break;
          }

          v36 = v42;
          a3 = v63;
          if (v41 < v44 || v63 >= v44)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v65;
          }

          else
          {
            a1 = v65;
            if (v41 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v42;
          v37 = v54;
          v40 = v56;
          if (v42 <= v66)
          {
            v55 = v56;
            goto LABEL_57;
          }
        }

        v49 = v44;
        a3 = v63;
        if (v41 < v56 || v63 >= v56)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v65;
          v36 = v52;
          v37 = v54;
          v38 = v49;
        }

        else
        {
          a1 = v65;
          v36 = v52;
          v37 = v54;
          v38 = v49;
          if (v41 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v38 > v66);
    }

LABEL_57:
    v69 = v55;
    v67 = v36;
  }

  else
  {
    v21 = v20 * v18;
    if (v66 < a1 || a1 + v21 <= v66)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v66 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = v66 + v21;
    v67 = v66 + v21;
    v63 = a3;
    if (v21 >= 1 && a2 < a3)
    {
      v55 = (v7 + 8);
      v56 = v18;
      v24 = v59;
      do
      {
        v65 = a1;
        v25 = v64;
        sub_221E50BBC(a2, v64, type metadata accessor for DistanceSample);
        sub_221E50BBC(v66, v24, type metadata accessor for DistanceSample);
        v26 = a2;
        v27 = v60;
        sub_221E56E90();
        v28 = v61;
        sub_221E56E90();
        v29 = sub_221E56EC0();
        v30 = *v55;
        v31 = v28;
        v32 = v62;
        (*v55)(v31, v62);
        v30(v27, v32);
        sub_221E50C24(v24, type metadata accessor for DistanceSample);
        sub_221E50C24(v25, type metadata accessor for DistanceSample);
        if (v29)
        {
          v33 = v56;
          a2 = (v56 + v26);
          v34 = v65;
          if (v65 < v26 || v65 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v65 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v34 = v65;
          v33 = v56;
          v35 = v56 + v66;
          if (v65 < v66 || v65 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v65 != v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = v35;
          v66 = v35;
        }

        a1 = v33 + v34;
        v69 = a1;
      }

      while (v66 < v57 && a2 < v63);
    }
  }

LABEL_58:
  sub_221E4C5E0(&v69, &v68, &v67, type metadata accessor for DistanceSample);
  return 1;
}

uint64_t sub_221E4C540(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_221E4C5CC(v3);
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

uint64_t sub_221E4C5E0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_221E4C6C8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a3;

  v10 = sub_221E4621C(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_221E4CB80(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_221E4621C(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_221E57110();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_221E4CA24();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8F0, &qword_221E5E9C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + v10) = v7;
  *(v22[7] + 8 * v10) = v8;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_221E57010();
    MEMORY[0x223DAA6D0](0xD00000000000001BLL, 0x8000000221E65490);
    sub_221E57050();
    MEMORY[0x223DAA6D0](39, 0xE100000000000000);
    sub_221E57060();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v7 = *(v6 - 8);
      v8 = *v6;
      v26 = *a3;

      v27 = sub_221E4621C(v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_221E4CB80(v31, 1);
        v32 = *a3;
        v27 = sub_221E4621C(v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + v27) = v7;
      *(v34[7] + 8 * v27) = v8;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_221E4CA24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
  v2 = *v0;
  v3 = sub_221E57070();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_221E4CB80(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v44 - v10;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
  v51 = a2;
  result = sub_221E57080();
  v14 = result;
  if (*(v11 + 16))
  {
    v44 = v3;
    v45 = v11;
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
    v46 = (v6 + 8);
    v47 = (v6 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v11 + 48) + v26);
      v28 = *(*(v11 + 56) + 8 * v26);
      if ((v51 & 1) == 0)
      {
      }

      v29 = *(v14 + 40);
      sub_221E57120();
      v30 = qword_221E5EFC8[v27];
      v31 = [objc_opt_self() kilometers];
      sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
      v32 = v49;
      sub_221E56E00();
      v33 = v48;
      v34 = v32;
      v35 = v50;
      (*v47)(v48, v34, v50);
      sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8);
      sub_221E56F10();
      (*v46)(v33, v35);
      result = sub_221E57150();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + v22) = v27;
      *(*(v14 + 56) + 8 * v22) = v28;
      ++*(v14 + 16);
      v11 = v45;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v14;
  return result;
}

size_t sub_221E4CFB0(size_t a1, int64_t a2, char a3)
{
  result = sub_221E4D038(a1, a2, a3, *v3, &qword_27CFEA918, &qword_221E5E9E0, type metadata accessor for DistanceAccumulator);
  *v3 = result;
  return result;
}

size_t sub_221E4CFF4(size_t a1, int64_t a2, char a3)
{
  result = sub_221E4D038(a1, a2, a3, *v3, &qword_27CFEA8D0, &qword_221E5E9B0, type metadata accessor for DistanceSampleIntervalRecord);
  *v3 = result;
  return result;
}

size_t sub_221E4D038(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_221E4D214(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_221E45790(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_27CFEA8D0, &qword_221E5E9B0, type metadata accessor for DistanceSampleIntervalRecord);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for DistanceSampleIntervalRecord(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_221E4D3FC(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v2 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v3 = v2[6];
  sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8);
  if ((sub_221E56F50() & 1) == 0)
  {
    return 0;
  }

  v4 = v2[7];
  if ((sub_221E56F50() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v5 = v2[8];
  sub_221E51574(&qword_27CFEA890, &qword_27CFEA858, &unk_221E5E860);
  return sub_221E56F50() & 1;
}

uint64_t sub_221E4D558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C694B65766966 && a2 == 0xEE0073726574656DLL;
  if (v4 || (sub_221E570F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F6C694B6E6574 && a2 == 0xED00007372657465 || (sub_221E570F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000221E65520 == a2 || (sub_221E570F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000221E65540 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_221E570F0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_221E4D6DC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA940, &qword_221E5EB58);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA948, &qword_221E5EB60);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA950, &qword_221E5EB68);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA958, &qword_221E5EB70);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA960, &qword_221E5EB78);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_221E51688();
  v26 = v56;
  sub_221E57160();
  if (v26)
  {
    goto LABEL_16;
  }

  v45 = v15;
  v46 = v23;
  v28 = v54;
  v27 = v55;
  v56 = v20;
  v29 = sub_221E570C0();
  v30 = *(v29 + 16);
  if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
  {
    v33 = sub_221E57030();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA968, &qword_221E5EB80) + 48);
    *v35 = &type metadata for DistanceReference;
    v37 = v46;
    sub_221E570B0();
    sub_221E57020();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v56 + 8))(v37, v19);
    swift_unknownObjectRelease();
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    return 0;
  }

  v58 = *(v29 + 32);
  if (v31 > 1)
  {
    v39 = v56;
    if (v31 == 2)
    {
      v61 = 2;
      sub_221E5177C();
      v40 = v28;
      v41 = v46;
      sub_221E570A0();
      (*(v51 + 8))(v40, v50);
      (*(v39 + 8))(v41, v19);
    }

    else
    {
      v62 = 3;
      sub_221E51728();
      v42 = v46;
      sub_221E570A0();
      (*(v53 + 8))(v27, v52);
      (*(v39 + 8))(v42, v19);
    }
  }

  else
  {
    if (v31)
    {
      v60 = 1;
      sub_221E517D0();
      v38 = v46;
      sub_221E570A0();
      (*(v49 + 8))(v14, v48);
    }

    else
    {
      v59 = 0;
      sub_221E51824();
      v38 = v46;
      sub_221E570A0();
      (*(v47 + 8))(v18, v45);
    }

    (*(v56 + 8))(v38, v19);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  return v58;
}

unint64_t sub_221E4DD54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
    v3 = sub_221E57090();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_221E4621C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_221E4DE48(uint64_t a1)
{
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v2 = *(v374 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v374);
  v6 = &v307 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v373 = &v307 - v8;
  MEMORY[0x28223BE20](v7);
  v362 = &v307 - v9;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  *&v387 = *(v372 - 8);
  v10 = *(v387 + 64);
  v11 = MEMORY[0x28223BE20](v372);
  v364 = &v307 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v361 = &v307 - v13;
  v376 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v321 = *(v376 - 8);
  v14 = *(v321 + 64);
  v15 = MEMORY[0x28223BE20](v376);
  v345 = &v307 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v375 = &v307 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v318 = &v307 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v344 = &v307 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v369 = &v307 - v24;
  MEMORY[0x28223BE20](v23);
  v316 = &v307 - v25;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v26 = *(v377 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v377);
  v317 = &v307 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v363 = &v307 - v31;
  MEMORY[0x28223BE20](v30);
  v315 = &v307 - v32;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v33 = *(v386 - 1);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v386);
  v323 = &v307 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v322 = &v307 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v333 = &v307 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v325 = &v307 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v355 = &v307 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v346 = &v307 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v382 = &v307 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v385 = &v307 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v383 = &v307 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v338 = &v307 - v54;
  MEMORY[0x28223BE20](v53);
  v337 = &v307 - v55;
  v352 = sub_221E56ED0();
  v56 = *(v352 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v352);
  v320 = &v307 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v319 = &v307 - v61;
  MEMORY[0x28223BE20](v60);
  v348 = &v307 - v62;
  v63 = type metadata accessor for DistanceAccumulator(0);
  v342 = *(v63 - 1);
  v64 = *(v342 + 64);
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v307 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65);
  v368 = &v307 - v69;
  MEMORY[0x28223BE20](v68);
  v328 = &v307 - v70;
  v379 = type metadata accessor for DistanceSample(0);
  v71 = *(*(v379 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v379);
  v73 = MEMORY[0x28223BE20](v72);
  v334 = &v307 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v347 = &v307 - v76;
  MEMORY[0x28223BE20](v75);
  v80 = &v307 - v77;
  v81 = *(a1 + 16);
  if (!v81)
  {
    v276 = MEMORY[0x277D84F90];

    return sub_221E4DD54(v276);
  }

  v332 = v79;
  v308 = v67;
  v326 = v78;
  v335 = a1 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
  v82 = sub_221E50BBC(v335, &v307 - v77, type metadata accessor for DistanceSample);
  MEMORY[0x28223BE20](v82);
  *(&v307 - 2) = v80;
  v83 = sub_221E450C8(sub_221E510A8, (&v307 - 4), &unk_283540A18);
  v324 = 0;
  v84 = 0;
  v350 = (v56 + 8);
  v336 = (v33 + 16);
  v85 = (v33 + 8);
  v381 = (v33 + 32);
  v314 = (v26 + 16);
  v367 = (v26 + 8);
  v371 = (v2 + 8);
  v370 = (v387 + 8);
  v313 = xmmword_221E5E840;
  v86 = -1;
  v87 = v81 - 1;
  v339 = v80;
  v88 = v83;
  v89 = v328;
  v310 = v81 - 1;
  v354 = v63;
  v380 = v81;
  v388 = v85;
  v360 = v6;
  while (1)
  {
    v90 = v84 >= v87 ? v87 : v84;
    v378 = v90;
    v91 = v86 + 1;
    v92 = v88[2];
    v311 = v86 + 1;
    if (v92)
    {
      break;
    }

    v88 = MEMORY[0x277D84F90];
LABEL_3:
    ++v84;
    v86 = v311;
    v87 = v310;
    if (v311 == v81)
    {
      goto LABEL_104;
    }
  }

  v309 = v84;
  v390 = MEMORY[0x277D84F90];
  sub_221E4CFB0(0, v92, 0);
  v93 = v348;
  v94 = 0;
  v95 = v390;
  v340 = (*(v342 + 80) + 32) & ~*(v342 + 80);
  v341 = v88 + v340;
  if (v87 >= v91)
  {
    v96 = v91;
  }

  else
  {
    v96 = v87;
  }

  v353 = v96;
  v329 = v88;
  v327 = v92;
  while (1)
  {
    v97 = v88[2];
    if (v94 >= v97)
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v358 = v95;
    v98 = *(v342 + 72);
    v359 = v94;
    v357 = v98;
    v99 = v368;
    sub_221E50BBC(&v341[v98 * v94], v368, type metadata accessor for DistanceAccumulator);
    v356 = objc_autoreleasePoolPush();
    sub_221E56E90();
    v100 = *(v99 + *(v63 + 7));
    v97 = &v385;
    if (v100 >= v353)
    {
      (*v350)(v93, v352);
      sub_221E50BBC(v99, v89, type metadata accessor for DistanceAccumulator);
      goto LABEL_92;
    }

    if (v353 < 0)
    {
      goto LABEL_130;
    }

    v101 = *(v326 + 72);
    v102 = v335;
    v365 = (v335 + v101 * v353);
    sub_221E50BBC(v365, v347, type metadata accessor for DistanceSample);
    v103 = v100 + 1;
    v88 = objc_opt_self();
    v63 = &off_278493000;
    v104 = [v88 meters];
    v105 = sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
    v106 = v338;
    v384 = v105;
    sub_221E56E00();
    v351 = *v336;
    (v351)(v383, v106, v386);
    v107 = objc_opt_self();
    v109 = v102 + v101 * v103;
    *&v387 = v88;
    while (1)
    {
      if (v103 >= v380)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        v329 = v88;
        v278 = v88[2];
        if (!v278)
        {
          goto LABEL_123;
        }

        v279 = 0;
        v385 = v278 - 1;
        v386 = MEMORY[0x277D84F90];
        p_cache = ACHActivitySummaryIterator.cache;
        v281 = qword_280FAFE98;
        *&v108 = 136315138;
        v387 = v108;
        v388 = v278;
LABEL_106:
        v282 = v279;
        v283 = v308;
        while (1)
        {
          v97 = v329[2];
          if (v282 >= v97)
          {
            break;
          }

          sub_221E50BBC(v329 + ((*(v342 + 80) + 32) & ~*(v342 + 80)) + *(v342 + 72) * v282, v283, type metadata accessor for DistanceAccumulator);
          v279 = v282 + 1;
          v284 = *v283;
          if (*(*&v283[*(v63 + 11)] + 16))
          {
            v390 = *&v283[*(v63 + 11)];

            v296 = v324;
            sub_221E44EAC(&v390, sub_221E47838, sub_221E467E8);
            v297 = &v356;
            v324 = v296;
            if (v296)
            {
              goto LABEL_137;
            }

            v298 = v390;
            sub_221E50C24(v308, type metadata accessor for DistanceAccumulator);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v386 = sub_221E45558(0, v386[2] + 1, 1, v386);
            }

            v300 = v386[2];
            v299 = v386[3];
            if (v300 >= v299 >> 1)
            {
              v386 = sub_221E45558((v299 > 1), v300 + 1, 1, v386);
            }

            v301 = v386;
            v386[2] = v300 + 1;
            v302 = &v301[2 * v300];
            *(v302 + 32) = v284;
            v302[5] = v298;
            if (v385 != v282)
            {
              goto LABEL_106;
            }

            goto LABEL_124;
          }

          if (p_cache[466] != -1)
          {
            swift_once();
          }

          v285 = sub_221E56F00();
          __swift_project_value_buffer(v285, v281);
          v286 = sub_221E56EE0();
          v287 = sub_221E56FD0();
          if (os_log_type_enabled(v286, v287))
          {
            v288 = swift_slowAlloc();
            v289 = v281;
            v290 = p_cache;
            v291 = swift_slowAlloc();
            v390 = v291;
            *v288 = v387;
            LOBYTE(v389) = v284;
            v292 = sub_221E56F70();
            v294 = sub_221E45AD4(v292, v293, &v390);

            *(v288 + 4) = v294;
            _os_log_impl(&dword_221DDC000, v286, v287, "Best records empty for %s", v288, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v291);
            v295 = v291;
            p_cache = v290;
            v281 = v289;
            v278 = v388;
            MEMORY[0x223DABCD0](v295, -1, -1);
            MEMORY[0x223DABCD0](v288, -1, -1);
          }

          v283 = v308;
          sub_221E50C24(v308, type metadata accessor for DistanceAccumulator);
          ++v282;
          if (v278 == v279)
          {
            goto LABEL_124;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:

        __break(1u);
LABEL_137:

        __break(1u);
        goto LABEL_138;
      }

      v110 = *(v109 + *(v379 + 20));
      v111 = [v107 meterUnit];
      [v110 doubleValueForUnit_];

      v112 = [v88 v63[106]];
      v113 = v382;
      sub_221E56E00();
      v114 = v385;
      v115 = v383;
      sub_221E56E20();
      v116 = *v388;
      v117 = v386;
      (*v388)(v113, v386);
      v116(v115, v117);
      v118 = *v381;
      (*v381)(v115, v114, v117);
      if (v378 == v103)
      {
        break;
      }

      v109 += v101;
      v119 = __OFADD__(v103++, 1);
      v63 = &off_278493000;
      v88 = v387;
      if (v119)
      {
        goto LABEL_103;
      }
    }

    v120 = v386;
    v116(v338, v386);
    v118(v337, v383, v120);
    v121 = v354;
    v122 = v368;
    v123 = &v368[v354[10]];
    sub_221E56E20();
    v366 = v121[9];
    sub_221E56E20();
    v124 = *v122;
    v125 = v382;
    sub_221E40BCC(*v122);
    v126 = [v387 meters];
    v127 = v385;
    sub_221E56E40();

    v116(v125, v120);
    v366 = sub_221E51574(&qword_27CFEA8C8, &qword_27CFEA860, &qword_221E5E8A8);
    LOBYTE(v125) = sub_221E56F40();
    v116(v127, v120);
    v343 = v124;
    if ((v125 & 1) == 0)
    {
      break;
    }

    sub_221E50BBC(v365, v334, type metadata accessor for DistanceSample);
    v128 = v368;
    v129 = *&v368[v354[6] + *(v379 + 20)];
    v130 = [v107 meterUnit];
    [v129 doubleValueForUnit_];

    v131 = [v387 meters];
    sub_221E56E00();
    v97 = *(v128 + 8);
    v132 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      goto LABEL_131;
    }

    v97 = v380;
    if (v132 >= v380)
    {
      goto LABEL_132;
    }

    v330 = v132;
    sub_221E50BBC(v335 + v132 * v101, v332, type metadata accessor for DistanceSample);
    sub_221E56E30();
    v133 = v382;
    v134 = v343;
    sub_221E40BCC(v343);
    v135 = [v387 meters];
    v136 = v385;
    v137 = v386;
    sub_221E56E40();

    v116(v133, v137);
    v138 = sub_221E56F40();
    v116(v136, v137);
    if (v138)
    {
      sub_221E40BCC(v134);
      v139 = [v387 &_OBJC_LABEL_PROTOCOL___HDDatabaseProtectedDataObserver + 1];
      sub_221E56E40();

      v116(v136, v137);
      v140 = v319;
      sub_221E56E70();
      v141 = v320;
      sub_221E56E90();
      sub_221E56EB0();
      v142 = *v350;
      v143 = v141;
      v144 = v352;
      (*v350)(v143, v352);
      v142(v140, v144);
      sub_221E56E10();
      v145 = [v387 meters];
      sub_221E56E40();

      sub_221E56E10();
      v116(v136, v137);
      v349 = objc_opt_self();
      v146 = [v349 seconds];
      sub_221E511E8(0, &qword_280FAFD10, 0x277CCADD0);
      v147 = v315;
      sub_221E56E00();
      sub_221E56E90();
      sub_221E56EB0();
      v149 = v148;
      v150 = v352;
      v142(v140, v352);
      sub_221E56E70();
      sub_221E56EB0();
      v152 = v151;
      v312 = v142;
      v142(v140, v150);
      v153 = v376;
      v154 = v316;
      v155 = &v316[*(v376 + 24)];
      sub_221E56E30();
      (v351)(&v154[*(v153 + 28)], v322, v137);
      (*v314)(&v154[*(v153 + 32)], v147, v377);
      *v154 = v149;
      *(v154 + 1) = v152;
      v156 = *&v368[v354[11]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8D0, &qword_221E5E9B0);
      v157 = (*(v321 + 80) + 32) & ~*(v321 + 80);
      v384 = *(v321 + 72);
      v158 = swift_allocObject();
      *(v158 + 16) = v313;
      sub_221E50BBC(v154, v158 + v157, type metadata accessor for DistanceSampleIntervalRecord);
      v389 = v156;

      sub_221E4D214(v158);
      v159 = v389;
      v160 = v369;
      v366 = v389[2];
      if (v366)
      {
        v161 = 0;
        v331 = v157;
        v162 = v389 + v157;
        v351 = MEMORY[0x277D84F90];
        v365 = v389;
        while (1)
        {
          if (v161 >= v159[2])
          {
            goto LABEL_122;
          }

          sub_221E50BBC(v162, v160, type metadata accessor for DistanceSampleIntervalRecord);
          v163 = *(v153 + 28);
          v164 = [v387 meters];
          v165 = v385;
          v166 = v386;
          sub_221E56E40();

          sub_221E56E10();
          v168 = v167;
          v116(v165, v166);
          if (v168 <= 0.0)
          {
            break;
          }

          v169 = *(v153 + 32);
          v170 = [v349 seconds];
          v171 = v363;
          v172 = v377;
          sub_221E56E40();

          sub_221E56E10();
          (*v367)(v171, v172);
          if (qword_27CFEA9B0 != -1)
          {
            goto LABEL_33;
          }

LABEL_35:
          v173 = qword_27CFEA9B8;
          type metadata accessor for UnitPace();
          v174 = v173;
          v175 = v362;
          sub_221E56E00();
          if (qword_27CFEA9B0 != -1)
          {
            swift_once();
          }

          v176 = v373;
          v177 = v374;
          sub_221E56E40();
          sub_221E56E10();
          v178 = *v371;
          (*v371)(v176, v177);
          v179 = [objc_opt_self() metersPerSecond];
          sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
          v180 = v361;
          sub_221E56E00();
          v178(v175, v177);
          v181 = v372;
          sub_221E56E10();
          v183 = v182;
          (*v370)(v180, v181);
          v153 = v376;
          v160 = v369;
          if (v183 >= 14.0 || (v184 = &v369[*(v376 + 32)], sub_221E56E10(), v185 <= 0.0))
          {
            sub_221E50C24(v160, type metadata accessor for DistanceSampleIntervalRecord);
            v159 = v365;
          }

          else
          {
            sub_221E50CF4(v160, v344, type metadata accessor for DistanceSampleIntervalRecord);
            v186 = v351;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v389 = v186;
            v159 = v365;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_221E4CFF4(0, v186[2] + 1, 1);
              v186 = v389;
            }

            v189 = v186[2];
            v188 = v186[3];
            if (v189 >= v188 >> 1)
            {
              sub_221E4CFF4(v188 > 1, v189 + 1, 1);
              v186 = v389;
            }

            v186[2] = v189 + 1;
            v351 = v186;
            sub_221E50CF4(v344, v186 + v331 + v189 * v384, type metadata accessor for DistanceSampleIntervalRecord);
            v160 = v369;
          }

          ++v161;
          v162 += v384;
          if (v366 == v161)
          {
            goto LABEL_79;
          }
        }

        if (qword_27CFEA9B0 == -1)
        {
          goto LABEL_35;
        }

LABEL_33:
        swift_once();
        goto LABEL_35;
      }

      v351 = MEMORY[0x277D84F90];
LABEL_79:

      v389 = v351;

      v262 = v324;
      sub_221E44EAC(&v389, sub_221E490EC, sub_221E4722C);
      v97 = &v356;
      v324 = v262;
      if (v262)
      {
        goto LABEL_136;
      }

      v266 = sub_221E4526C(1, v389);
      if ((v265 & 1) == 0)
      {
LABEL_81:
        sub_221E4607C(v266, v263, v264, v265);
        v248 = v267;
        v88 = v329;
        v268 = v355;
        goto LABEL_88;
      }

      v269 = v265;
      v270 = v264;
      v271 = v263;
      sub_221E57100();
      swift_unknownObjectRetain_n();
      v272 = swift_dynamicCastClass();
      if (!v272)
      {
        swift_unknownObjectRelease();
        v272 = MEMORY[0x277D84F90];
      }

      v273 = *(v272 + 16);

      v97 = ((v269 >> 1) - v270);
      if (__OFSUB__(v269 >> 1, v270))
      {
        goto LABEL_134;
      }

      if (v273 != v97)
      {
        swift_unknownObjectRelease();
        v265 = v269;
        v264 = v270;
        v263 = v271;
        goto LABEL_81;
      }

      v248 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v88 = v329;
      v268 = v355;
      if (!v248)
      {
        v248 = MEMORY[0x277D84F90];
LABEL_88:
        swift_unknownObjectRelease();
      }

      sub_221E50C24(v316, type metadata accessor for DistanceSampleIntervalRecord);
      (*v367)(v315, v377);
      v137 = v386;
      v116(v322, v386);
      v116(v325, v137);
      v116(v268, v137);
      v116(v337, v137);
      sub_221E50C24(v347, type metadata accessor for DistanceSample);
      v312(v348, v352);
      v63 = v354;
    }

    else
    {
      v116(v325, v137);
      v116(v355, v137);
      v116(v337, v137);
      sub_221E50C24(v347, type metadata accessor for DistanceSample);
      (*v350)(v348, v352);
      v63 = v354;
      v248 = *&v368[v354[11]];

      v88 = v329;
    }

    v89 = v328;
    v118(&v328[*(v63 + 10)], v346, v137);
    *v89 = v343;
    *(v89 + 8) = v330;
    sub_221E50CF4(v332, v89 + *(v63 + 6), type metadata accessor for DistanceSample);
    *(v89 + *(v63 + 7)) = v353;
    sub_221E50CF4(v334, v89 + *(v63 + 8), type metadata accessor for DistanceSample);
    v118((v89 + *(v63 + 9)), v333, v137);
    *(v89 + *(v63 + 11)) = v248;
    v93 = v348;
    v99 = v368;
LABEL_91:
    v92 = v327;
LABEL_92:
    objc_autoreleasePoolPop(v356);
    sub_221E50C24(v99, type metadata accessor for DistanceAccumulator);
    v95 = v358;
    v390 = v358;
    v275 = v358[2];
    v274 = v358[3];
    if (v275 >= v274 >> 1)
    {
      sub_221E4CFB0(v274 > 1, v275 + 1, 1);
      v93 = v348;
      v95 = v390;
    }

    v94 = v359 + 1;
    v95[2] = v275 + 1;
    sub_221E50CF4(v89, v95 + v340 + v275 * v357, type metadata accessor for DistanceAccumulator);
    if (v94 == v92)
    {

      v88 = v95;
      v81 = v380;
      v84 = v309;
      goto LABEL_3;
    }
  }

  v331 = &v368[v354[6]];
  v190 = v382;
  sub_221E40BCC(v124);
  v191 = [v387 meters];
  v192 = v385;
  sub_221E56E40();

  v116(v190, v120);
  LOBYTE(v190) = sub_221E56F40();
  v116(v192, v120);
  v193 = v120;
  if ((v190 & 1) == 0)
  {
    v116(v337, v120);
    (*v350)(v348, v352);
    v63 = v354;
    v99 = v368;
    v245 = *&v368[v354[11]];

    v246 = v193;
    v247 = v331;
LABEL_77:
    v260 = *(v99 + 8);
    v261 = v328;
    sub_221E50BBC(v247, &v328[*(v63 + 6)], type metadata accessor for DistanceSample);
    sub_221E50CF4(v347, &v261[*(v63 + 8)], type metadata accessor for DistanceSample);
    v89 = v261;
    v118(&v261[*(v63 + 9)], v355, v246);
    v118(&v261[*(v63 + 10)], v346, v246);
    *v261 = v343;
    *(v261 + 1) = v260;
    *&v261[*(v63 + 7)] = v353;
    *&v261[*(v63 + 11)] = v245;
    v88 = v329;
    v93 = v348;
    goto LABEL_91;
  }

  v194 = v385;
  sub_221E40BCC(v124);
  v195 = [v387 meters];
  sub_221E56E40();

  v116(v194, v193);
  v196 = v319;
  sub_221E56E70();
  v197 = v320;
  sub_221E56E90();
  sub_221E56EB0();
  v198 = *v350;
  v199 = v352;
  (*v350)(v197, v352);
  v198(v196, v199);
  sub_221E56E10();
  v200 = [v387 meters];
  sub_221E56E40();

  sub_221E56E10();
  v116(v194, v193);
  v349 = objc_opt_self();
  v201 = [v349 seconds];
  sub_221E511E8(0, &qword_280FAFD10, 0x277CCADD0);
  v202 = v317;
  sub_221E56E00();
  sub_221E56E90();
  sub_221E56EB0();
  v204 = v203;
  v205 = v352;
  v198(v196, v352);
  sub_221E56E70();
  sub_221E56EB0();
  v207 = v206;
  v312 = v198;
  v198(v196, v205);
  v208 = v376;
  v209 = v318;
  v210 = &v318[*(v376 + 24)];
  sub_221E56E30();
  (v351)(&v209[*(v208 + 28)], v323, v193);
  (*v314)(&v209[*(v208 + 32)], v202, v377);
  *v209 = v204;
  *(v209 + 1) = v207;
  v211 = *&v368[v354[11]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8D0, &qword_221E5E9B0);
  v212 = (*(v321 + 80) + 32) & ~*(v321 + 80);
  v384 = *(v321 + 72);
  v213 = swift_allocObject();
  *(v213 + 16) = v313;
  sub_221E50BBC(v209, v213 + v212, type metadata accessor for DistanceSampleIntervalRecord);
  v389 = v211;

  sub_221E4D214(v213);
  v214 = v389;
  v366 = v389[2];
  if (!v366)
  {
    v351 = MEMORY[0x277D84F90];
LABEL_66:

    v389 = v351;

    v249 = v324;
    sub_221E44EAC(&v389, sub_221E490EC, sub_221E4722C);
    v97 = &v356;
    v324 = v249;
    if (v249)
    {
      goto LABEL_136;
    }

    v253 = sub_221E4526C(1, v389);
    if (v252)
    {
      v255 = v252;
      v256 = v251;
      v257 = v250;
      sub_221E57100();
      swift_unknownObjectRetain_n();
      v258 = swift_dynamicCastClass();
      if (!v258)
      {
        swift_unknownObjectRelease();
        v258 = MEMORY[0x277D84F90];
      }

      v259 = *(v258 + 16);

      v97 = ((v255 >> 1) - v256);
      if (__OFSUB__(v255 >> 1, v256))
      {
        goto LABEL_133;
      }

      if (v259 == v97)
      {
        v245 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v247 = v331;
        if (v245)
        {
LABEL_76:
          sub_221E50C24(v318, type metadata accessor for DistanceSampleIntervalRecord);
          (*v367)(v317, v377);
          v246 = v386;
          v116(v323, v386);
          v116(v337, v246);
          v312(v348, v352);
          v63 = v354;
          v99 = v368;
          goto LABEL_77;
        }

        v245 = MEMORY[0x277D84F90];
LABEL_75:
        swift_unknownObjectRelease();
        goto LABEL_76;
      }

      swift_unknownObjectRelease();
      v252 = v255;
      v251 = v256;
      v250 = v257;
    }

    sub_221E4607C(v253, v250, v251, v252);
    v245 = v254;
    v247 = v331;
    goto LABEL_75;
  }

  v215 = 0;
  v330 = v212;
  v216 = v389 + v212;
  v351 = MEMORY[0x277D84F90];
  v365 = v389;
  while (v215 < v214[2])
  {
    sub_221E50BBC(v216, v375, type metadata accessor for DistanceSampleIntervalRecord);
    v217 = *(v208 + 28);
    v218 = [v387 meters];
    v219 = v385;
    v220 = v386;
    sub_221E56E40();

    sub_221E56E10();
    v222 = v221;
    v116(v219, v220);
    if (v222 <= 0.0)
    {
      if (qword_27CFEA9B0 == -1)
      {
        goto LABEL_54;
      }

LABEL_52:
      swift_once();
      goto LABEL_54;
    }

    v223 = *(v208 + 32);
    v224 = [v349 seconds];
    v225 = v363;
    v226 = v377;
    sub_221E56E40();

    sub_221E56E10();
    (*v367)(v225, v226);
    if (qword_27CFEA9B0 != -1)
    {
      goto LABEL_52;
    }

LABEL_54:
    v227 = qword_27CFEA9B8;
    type metadata accessor for UnitPace();
    v228 = v227;
    v229 = v360;
    sub_221E56E00();
    if (qword_27CFEA9B0 != -1)
    {
      swift_once();
    }

    v230 = v373;
    v231 = v374;
    sub_221E56E40();
    sub_221E56E10();
    v232 = *v371;
    (*v371)(v230, v231);
    v233 = [objc_opt_self() metersPerSecond];
    sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
    v234 = v364;
    sub_221E56E00();
    v232(v229, v231);
    v235 = v372;
    sub_221E56E10();
    v237 = v236;
    (*v370)(v234, v235);
    v208 = v376;
    v238 = v375;
    if (v237 >= 14.0 || (v239 = v375 + *(v376 + 32), sub_221E56E10(), v240 <= 0.0))
    {
      sub_221E50C24(v238, type metadata accessor for DistanceSampleIntervalRecord);
    }

    else
    {
      sub_221E50CF4(v238, v345, type metadata accessor for DistanceSampleIntervalRecord);
      v241 = v351;
      v242 = swift_isUniquelyReferenced_nonNull_native();
      v389 = v241;
      if ((v242 & 1) == 0)
      {
        sub_221E4CFF4(0, v241[2] + 1, 1);
        v241 = v389;
      }

      v244 = v241[2];
      v243 = v241[3];
      if (v244 >= v243 >> 1)
      {
        sub_221E4CFF4(v243 > 1, v244 + 1, 1);
        v241 = v389;
      }

      v241[2] = v244 + 1;
      v351 = v241;
      sub_221E50CF4(v345, v241 + v330 + v244 * v384, type metadata accessor for DistanceSampleIntervalRecord);
    }

    ++v215;
    v216 += v384;
    v214 = v365;
    if (v366 == v215)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  v386 = MEMORY[0x277D84F90];
LABEL_124:

  if (v386[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
    v303 = sub_221E57090();
  }

  else
  {
    v303 = MEMORY[0x277D84F98];
  }

  v304 = v339;
  v390 = v303;
  v305 = v324;
  sub_221E4C6C8(v386, 1, &v390);
  if (!v305)
  {
    v306 = v390;
    sub_221E50C24(v304, type metadata accessor for DistanceSample);
    return v306;
  }

LABEL_138:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}